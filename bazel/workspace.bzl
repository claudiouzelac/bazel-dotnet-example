load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "nuget_package")

# Nuget Versions
NEWTONSOFT_JSON_VERSION="11.0.2"
GRPC_CORE_VERSION="1.18.0"
GOOGLE_PROTOBUF_VERSION="3.6.1"

# Nuget Names
NEWTONSOFT_JSON_PACKAGE_NAME="Newtonsoft.Json"
GRPC_CORE_PACKAGE_NAME="Grpc.Core"
GOOGLE_PROTOBUF_PACKAGE_NAME="Google.Protobuf"

def init_nuget_dependencies():
    nuget_package(
        name = "newtonsoft.json",
        package = "newtonsoft.json",
        version = NEWTONSOFT_JSON_VERSION,
        core_lib = {
            "netcoreapp2.0": "lib/netstandard2.0/Newtonsoft.Json.dll",
            "netcoreapp2.1": "lib/netstandard2.0/Newtonsoft.Json.dll",
        },
        net_lib = {
            "net45": "lib/net45/Newtonsoft.Json.dll",
            "net451": "lib/net45/Newtonsoft.Json.dll",
            "net452": "lib/net45/Newtonsoft.Json.dll",
            "net46": "lib/net45/Newtonsoft.Json.dll",
            "net461": "lib/net45/Newtonsoft.Json.dll",
            "net462": "lib/net45/Newtonsoft.Json.dll",
            "net47": "lib/net45/Newtonsoft.Json.dll",
            "net471": "lib/net45/Newtonsoft.Json.dll",
            "net472": "lib/net45/Newtonsoft.Json.dll",
            "netstandard1.0": "lib/netstandard1.0/Newtonsoft.Json.dll",
            "netstandard1.1": "lib/netstandard1.0/Newtonsoft.Json.dll",
            "netstandard1.2": "lib/netstandard1.0/Newtonsoft.Json.dll",
            "netstandard1.3": "lib/netstandard1.3/Newtonsoft.Json.dll",
            "netstandard1.4": "lib/netstandard1.3/Newtonsoft.Json.dll",
            "netstandard1.5": "lib/netstandard1.3/Newtonsoft.Json.dll",
            "netstandard1.6": "lib/netstandard1.3/Newtonsoft.Json.dll",
            "netstandard2.0": "lib/netstandard2.0/Newtonsoft.Json.dll",
        },
        mono_lib = "lib/net45/Newtonsoft.Json.dll",
        core_files = {
            "netcoreapp2.0": [
                "lib/netstandard2.0/Newtonsoft.Json.dll",
                "lib/netstandard2.0/Newtonsoft.Json.xml",
            ],
            "netcoreapp2.1": [
                "lib/netstandard2.0/Newtonsoft.Json.dll",
                "lib/netstandard2.0/Newtonsoft.Json.xml",
            ],
        },
        net_files = {
            "net45": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net451": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net452": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net46": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net461": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net462": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net47": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net471": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "net472": [
                "lib/net45/Newtonsoft.Json.dll",
                "lib/net45/Newtonsoft.Json.xml",
            ],
            "netstandard1.0": [
                "lib/netstandard1.0/Newtonsoft.Json.dll",
                "lib/netstandard1.0/Newtonsoft.Json.xml",
            ],
            "netstandard1.1": [
                "lib/netstandard1.0/Newtonsoft.Json.dll",
                "lib/netstandard1.0/Newtonsoft.Json.xml",
            ],
            "netstandard1.2": [
                "lib/netstandard1.0/Newtonsoft.Json.dll",
                "lib/netstandard1.0/Newtonsoft.Json.xml",
            ],
            "netstandard1.3": [
                "lib/netstandard1.3/Newtonsoft.Json.dll",
                "lib/netstandard1.3/Newtonsoft.Json.xml",
            ],
            "netstandard1.4": [
                "lib/netstandard1.3/Newtonsoft.Json.dll",
                "lib/netstandard1.3/Newtonsoft.Json.xml",
            ],
            "netstandard1.5": [
                "lib/netstandard1.3/Newtonsoft.Json.dll",
                "lib/netstandard1.3/Newtonsoft.Json.xml",
            ],
            "netstandard1.6": [
                "lib/netstandard1.3/Newtonsoft.Json.dll",
                "lib/netstandard1.3/Newtonsoft.Json.xml",
            ],
            "netstandard2.0": [
                "lib/netstandard2.0/Newtonsoft.Json.dll",
                "lib/netstandard2.0/Newtonsoft.Json.xml",
            ],
        },
        mono_files = [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
        ],
    )

    nuget_package(
        name = "Grpc.Core",
        package = "Grpc.Core",
        version = GRPC_CORE_VERSION,
        core_lib = {
            "netcoreapp2.0": "lib/netstandard2.0/Grpc.Core.dll",
            "netcoreapp2.1": "lib/netstandard2.0/Grpc.Core.dll",
        },
        net_lib = {
            "net45": "lib/net45/Grpc.Core.dll",
            "net451": "lib/net45/Grpc.Core.dll",
            "net452": "lib/net45/Grpc.Core.dll",
            "net46": "lib/net45/Grpc.Core.dll",
            "net461": "lib/net45/Grpc.Core.dll",
            "net462": "lib/net45/Grpc.Core.dll",
            "net47": "lib/net45/Grpc.Core.dll",
            "net471": "lib/net45/Grpc.Core.dll",
            "net472": "lib/net45/Grpc.Core.dll",
            "netstandard1.0": "lib/netstandard1.0/Grpc.Core.dll",
            "netstandard1.1": "lib/netstandard1.0/Grpc.Core.dll",
            "netstandard1.2": "lib/netstandard1.0/Grpc.Core.dll",
            "netstandard1.3": "lib/netstandard1.3/Grpc.Core.dll",
            "netstandard1.4": "lib/netstandard1.3/Grpc.Core.dll",
            "netstandard1.5": "lib/netstandard1.3/Grpc.Core.dll",
            "netstandard1.6": "lib/netstandard1.3/Grpc.Core.dll",
            "netstandard2.0": "lib/netstandard2.0/Grpc.Core.dll",
        },
        mono_lib = "lib/net45/Grpc.Core.dll",
        core_files = {
            "netcoreapp2.0": [
                "lib/netstandard2.0/Grpc.Core.dll",
                "lib/netstandard2.0/Grpc.Core.xml",
            ],
            "netcoreapp2.1": [
                "lib/netstandard2.0/Grpc.Core.dll",
                "lib/netstandard2.0/Grpc.Core.xml",
            ],
        },
        net_files = {
            "net45": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net451": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net452": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net46": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net461": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net462": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net47": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net471": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "net472": [
                "lib/net45/Grpc.Core.dll",
                "lib/net45/Grpc.Core.xml",
            ],
            "netstandard1.0": [
                "lib/netstandard1.0/Grpc.Core.dll",
                "lib/netstandard1.0/Grpc.Core.xml",
            ],
            "netstandard1.1": [
                "lib/netstandard1.0/Grpc.Core.dll",
                "lib/netstandard1.0/Grpc.Core.xml",
            ],
            "netstandard1.2": [
                "lib/netstandard1.0/Grpc.Core.dll",
                "lib/netstandard1.0/Grpc.Core.xml",
            ],
            "netstandard1.3": [
                "lib/netstandard1.3/Grpc.Core.dll",
                "lib/netstandard1.3/Grpc.Core.xml",
            ],
            "netstandard1.4": [
                "lib/netstandard1.3/Grpc.Core.dll",
                "lib/netstandard1.3/Grpc.Core.xml",
            ],
            "netstandard1.5": [
                "lib/netstandard1.3/Grpc.Core.dll",
                "lib/netstandard1.3/Grpc.Core.xml",
            ],
            "netstandard1.6": [
                "lib/netstandard1.3/Grpc.Core.dll",
                "lib/netstandard1.3/Grpc.Core.xml",
            ],
            "netstandard2.0": [
                "lib/netstandard2.0/Grpc.Core.dll",
                "lib/netstandard2.0/Grpc.Core.xml",
            ],
        },
        mono_files = [
            "lib/net45/Grpc.Core.dll",
            "lib/net45/Grpc.Core.xml",
        ],
    )

    nuget_package(
        name = GOOGLE_PROTOBUF_PACKAGE_NAME,
        package = GOOGLE_PROTOBUF_PACKAGE_NAME,
        version = GOOGLE_PROTOBUF_VERSION,
        core_lib = {
            "netcoreapp2.0": "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netcoreapp2.1": "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
        },
        net_lib = {
            "net45": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net451": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net452": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net46": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net461": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net462": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net47": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net471": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "net472": "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.0": "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.1": "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.2": "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.3": "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.4": "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.5": "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard1.6": "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "netstandard2.0": "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
        },
        mono_lib = "lib/net45/{}.dll",
        core_files = {
            "netcoreapp2.0": [
                "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard2.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netcoreapp2.1": [
                "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard2.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
        },
        net_files = {
            "net45": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net451": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net452": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net46": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net461": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net462": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net47": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net471": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "net472": [
                "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.0": [
                "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.1": [
                "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.2": [
                "lib/netstandard1.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.3": [
                "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.3/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.4": [
                "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.3/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.5": [
                "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.3/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard1.6": [
                "lib/netstandard1.3/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard1.3/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
            "netstandard2.0": [
                "lib/netstandard2.0/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
                "lib/netstandard2.0/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            ],
        },
        mono_files = [
            "lib/net45/{}.dll".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
            "lib/net45/{}.xml".format(GOOGLE_PROTOBUF_PACKAGE_NAME),
        ],
    )