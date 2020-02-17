#!/bin/bash

green='\033[0;32m'
light_green='\033[1;32m'
nc='\033[0m'

models=(resnet50 resnet101 resnet152 inception3 inception4 vgg11 vgg16 vgg19 lenet googlenet overfeat alexnet)

if [ ! -z "$1" ] && [[ " ${models[@]} " =~ " $1 " ]]; then
  echo -e "${green}Using model ${light_green}$1${nc}"
  models=($1)
elif [ ! -z "$1" ]; then
  echo -e "${green}Unknown model: ${light_green}$1${nc}"
  echo -e "${green}Available models: ${light_green}${models[*]}${nc}"
  exit 1
else
  echo -e "${green}Using models ${light_green}${models[*]}${nc}"
fi

cd /benchmarks/scripts/tf_cnn_benchmarks/

for model in ${models[*]}
do
  echo -e "${green}> Running TensorFlow Benchmark with model ${light_green}${model}${nc}\n"
  python tf_cnn_benchmarks.py --batch_size=64 --model=${model} --variable_update=parameter_server
done
