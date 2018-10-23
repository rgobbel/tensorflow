#!/usr/bin/env bash

export PYTHON_BIN_PATH=`which python`
export PYTHON_LIB_PATH=${VIRTUAL_ENV}/lib/python3.6/site-packages
export TF_NEED_IGNITE=0
export TF_ENABLE_XLA=1
export TF_NEED_OPENCL_SYCL=0
export TF_NEED_ROCM=0
export TF_NEED_CUDA=1
export TF_CUDA_VERSION=10.0
export CUDA_TOOLKIT_PATH=/usr/local/cuda
export TF_CUDNN_VERSION=7.3.0
export CUDNN_INSTALL_PATH=/usr/lib/tensorflow/aarch64-linux-gnu
export TF_CUDA_COMPUTE_CAPABILITIES=7.2
export TF_NEED_MPI=0
export TF_NEED_TENSORRT=1
export TENSORRT_INSTALL_PATH=/usr/lib/tensorflow/aarch64-linux-gnu
export TF_NCCL_VERSION=1
export TF_CUDA_CLANG=0
export GCC_HOST_COMPILER_PATH=/usr/bin/gcc
export CC_OPT_FLAGS='-march=native'
export TF_SET_ANDROID_WORKSPACE=0

