# Written by Mutlu Polatcan
# 21.10.2019

import yaml
import sys


class Constants:
    KEY_CONFIG_FILES = "config_files"
    KEY_BASE_DOCKERFILE_TEMPLATE = "base_dockerfile_template"
    KEY_CONFIG_LOADER_SH_TEMPLATE = "config_loader_sh_template"
    KEY_OUTPUT_DIR = "output_dir"
    KEY_PATH = "path"
    KEY_FILENAME = "filename"
    KEY_CONFIG_TYPE = "config_type"
    DOCKER_ENV_VAR_FMT = "\t{env_var_name}=\"{env_var_value}\" \\"
    CONFIG_LOADER_STD_STATEMENT_FMT = "load_config \"{property}\" ${{{env_var_name}}} \"{config_filename}\" \"{config_type}\""


class BaseSetupGenerator:
    def __init__(self, config_filename):
        self.__config = yaml.safe_load(open(config_filename, "r"))

    def __get_infos(self, data, config_filename, config_type, prefix=None):
        docker_env_vars, load_fn_calls = [], []

        for property, value in data.items():
            property_name = prefix + "." + property if prefix else property

            if isinstance(value, dict):
                _docker_env_vars, _load_fn_calls = self.__get_infos(value, config_filename, config_type, property_name)
                docker_env_vars.extend(_docker_env_vars)
                load_fn_calls.extend(_load_fn_calls)
            else:
                property_name = property_name[:-1] if property_name[-1] == "." else property_name
                env_var_name = property_name.upper().replace(".", "_").replace("-", "_")

                docker_env_vars.append(Constants.DOCKER_ENV_VAR_FMT.format(env_var_name=env_var_name, env_var_value=value))
                load_fn_calls.append(Constants.CONFIG_LOADER_STD_STATEMENT_FMT.format(
                    property=property_name, env_var_name=env_var_name, config_filename=config_filename, config_type=config_type)
                )

        return docker_env_vars, load_fn_calls

    def generate(self):
        docker_env_vars, load_fn_calls = [], []

        for config_info in self.__config[Constants.KEY_CONFIG_FILES]:
            config_file_path, config_filename, config_type = config_info[Constants.KEY_PATH], config_info[Constants.KEY_FILENAME], config_info[Constants.KEY_CONFIG_TYPE]

            _docker_env_vars, _load_fn_calls = self.__get_infos(yaml.safe_load(open(config_file_path, "r")), config_filename, config_type)
            docker_env_vars.extend(_docker_env_vars)

            load_fn_calls.extend(_load_fn_calls)

        docker_env_vars.append(docker_env_vars.pop(len(docker_env_vars)-1).replace(" \\", ""))

        open("{loc}/Dockerfile".format(loc=self.__config[Constants.KEY_OUTPUT_DIR]), "w").write(self.__config[Constants.KEY_BASE_DOCKERFILE_TEMPLATE].format(
            env_vars="\n".join(docker_env_vars)
        ))
        open("{loc}/config_loader.sh".format(loc=self.__config[Constants.KEY_OUTPUT_DIR]), "w").write(
            self.__config[Constants.KEY_CONFIG_LOADER_SH_TEMPLATE].format(load_fn_calls="\n".join(load_fn_calls))
        )


if __name__ == "__main__":
    BaseSetupGenerator(sys.argv[1]).generate()
