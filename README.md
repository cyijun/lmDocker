# lmDocker

[![Docker Image CI](https://github.com/cyijun/lmDocker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/cyijun/lmDocker/actions/workflows/docker-image.yml)

用于构建热门语言模型项目的运行环境容器，使用非root用户，WSL2测试可用。

Building docker images of popular language model running environment. WSL2 compatible.

## Usage

#### 参考对应项目的目录结构和用法，把检查点或Huggingface仓库放到主机合适的位置，然后挂载到容器相应的目录。容器启动命令如下所示。

### langchain-ChatGLM

`docker run  --runtime=nvidia -n langchain_ChatGLM -p 7860:7860 -v /your_path/GanymedeNil/:/app/langchain-ChatGLM/GanymedeNil/ -v /your_path/THUDM/:/app/langchain-ChatGLM/THUDM/ cyijun/lm_dockers:latest-lc`

### stable-diffusion-webui

`docker run  --runtime=nvidia -n stable_diffusion_webui -p 7860:7860 -v /your_path/:/app/stable-diffusion-webui/models cyijun/lm_dockers:latest-sdw`
