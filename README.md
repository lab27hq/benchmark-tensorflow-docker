# benchmark-tensorflow-docker
TensorFlow Benchmark Docker Image

## Introduction
This is a simple image that executes the `https://github.com/tensorflow/benchmarks` in the `https://hub.docker.com/r/tensorflow/tensorflow` image with the available benchmark models.
An easy way to validate and performance test a new gpu instance.

GitHub Repo: https://github.com/lab27hq/benchmark-tensorflow-docker

## Quickstart
Simply run the image with the following command:

`docker run --gpus all --rm -it lab27/benchmark-tensorflow:latest-gpu`

The following benchmark models will be executed:
* resnet50
* resnet101
* resnet152 
* inception3 
* inception4 
* vgg11 
* vgg16 
* vgg19 
* lenet 
* googlenet 
* overfeat 
* alexnet

You can also run a specific model by simply adding the model name:

`docker run --gpus all --rm -it lab27/benchmark-tensorflow:latest-gpu resnet50`

## Host Prerequisites
* Docker 19.03, native device support for GPUs in the Docker runtime.
* GPU Drivers (e.g. Nvidia http://www.linuxandubuntu.com/home/how-to-install-latest-nvidia-drivers-in-linux)


## Issues and Contributing

* Please let us know by [filing a new issue](https://github.com/lab27hq/benchmark-tensorflow-docker/issues/new)
* You can contribute by opening a [pull request](https://help.github.com/articles/using-pull-requests/)

## Build
```
docker build --tag lab27/benchmark-tensorflow:latest-gpu .
docker push lab27/benchmark-tensorflow:latest-gpu
```
