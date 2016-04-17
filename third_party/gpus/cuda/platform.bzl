CUDA_VERSION = "7.5"
CUDNN_VERSION = "4.0"
PLATFORM = "Darwin"

def cuda_sdk_version():
    return CUDA_VERSION

def cudnn_sdk_version():
    return CUDNN_VERSION

def platform_libs_dir():
    if PLATFORM == "Darwin":
        return "lib"
    else:
        return "lib64"

def cuda_library_path(name, version = cuda_sdk_version()):
    if PLATFORM == "Darwin":
        return "lib/lib{}.{}.dylib".format(name, version)
    else:
        return "lib64/lib{}.so.{}".format(name, version)

def cuda_static_library_path(name):
    if PLATFORM == "Darwin":
        return "lib/lib{}_static.a".format(name)
    else:
        return "lib64/lib{}_static.a".format(name)

def cudnn_library_path(version = cudnn_sdk_version()):
    if PLATFORM == "Darwin":
        return "lib/libcudnn.{}.dylib".format(version)
    else:
        return "lib64/libcudnn.so.{}".format(version)

def cuda_extras_dir(name):
    if PLATFORM = "Darwin":
        return "extras/{}".format(name)
    else:
        return "extras/{}".format(name)

def extras_library_dir(name):
    if PLATFORM = "Darwin":
        return "{}/lib".format(cuda_extras_dir(name))
    else:
        return "{}/lib64".format(cuda_extras_dir(name))

def extras_library_path(name, version = cuda_sdk_version()):
    if PLATFORM = "Darwin":
        return "{}/lib{}.{}.dylib".format(extras_library_dir(name), name.lower(), version)
    else:
        return "{}/lib{}i.so{}".format(extras_library_dir(name), name.lower(), version)

def cupti_dir():
    return cuda_extras_dir("CUPTI")

def cupti_library_path():
    return extras_library_path("CUPTI")

def readlink_command():
    if PLATFORM == "Darwin":
        return "greadlink"
    else:
        return "readlink"
