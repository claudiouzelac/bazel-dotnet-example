workspace(name = "dotnet_bazel_example")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# The Bazel buildtools repo contains tools like the BUILD file formatter, buildifier
# This commit matches the version of buildifier in angular/ngcontainer
# If you change this, also check if it matches the version in the angular/ngcontainer
# version in /.circleci/config.yml
BAZEL_BUILDTOOLS_VERSION = "49a6c199e3fbf5d94534b2771868677d3f9c6de9"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    url = "https://github.com/bazelbuild/buildtools/archive/%s.zip" % BAZEL_BUILDTOOLS_VERSION,
    strip_prefix = "buildtools-%s" % BAZEL_BUILDTOOLS_VERSION,
    sha256 = "edf39af5fc257521e4af4c40829fffe8fba6d0ebff9f4dd69a6f8f1223ae047b",
)

git_repository(
    name = "io_bazel_rules_dotnet",
    remote = "https://github.com/bazelbuild/rules_dotnet",
    commit = "fb2c02eb093464f403859616cbf2225409512a8d",
)


load("@io_bazel_rules_dotnet//dotnet:defs.bzl", 
     "dotnet_register_toolchains", 
     "dotnet_repositories", 
     "nuget_package", 
     "net_register_sdk", 
     "DOTNET_NET_FRAMEWORKS"
)

load("//bazel:workspace.bzl", "init_nuget_dependencies")

dotnet_repositories()
dotnet_register_toolchains()

# NOTE: Supported frameworks are available at:
# https://github.com/bazelbuild/rules_dotnet/blob/master/dotnet/platform/list.bzl
[net_register_sdk(
    framework
) for framework in DOTNET_NET_FRAMEWORKS]

dotnet_register_toolchains("host")

init_nuget_dependencies()