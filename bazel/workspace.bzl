load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@io_bazel_rules_dotnet//dotnet:defs.bzl", "nuget_package")

def init_nuget_dependencies():
    nuget_package(
        name = "newtonsoft.json",
        package = "newtonsoft.json",
        version = "11.0.2",
        # core_lib = {
        #     "netcoreapp2.0": "lib/netstandard2.0/Newtonsoft.Json.dll",
        #     "netcoreapp2.1": "lib/netstandard2.0/Newtonsoft.Json.dll",
        # },
        net_lib = {
            # "net45": "lib/net45/Newtonsoft.Json.dll",
            # "net451": "lib/net45/Newtonsoft.Json.dll",
            # "net452": "lib/net45/Newtonsoft.Json.dll",
            # "net46": "lib/net45/Newtonsoft.Json.dll",
            # "net461": "lib/net45/Newtonsoft.Json.dll",
            # "net462": "lib/net45/Newtonsoft.Json.dll",
            # "net47": "lib/net45/Newtonsoft.Json.dll",
            # "net471": "lib/net45/Newtonsoft.Json.dll",
            "net472": "lib/net45/Newtonsoft.Json.dll",
            # "netstandard1.0": "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "netstandard1.1": "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "netstandard1.2": "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "netstandard1.3": "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "netstandard1.4": "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "netstandard1.5": "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "netstandard1.6": "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "netstandard2.0": "lib/netstandard2.0/Newtonsoft.Json.dll",
        },
        # mono_lib = "lib/net45/Newtonsoft.Json.dll",
        core_files = {
            # "netcoreapp2.0": [
            # "lib/netstandard2.0/Newtonsoft.Json.dll",
            # "lib/netstandard2.0/Newtonsoft.Json.xml",
            # ],
            # "netcoreapp2.1": [
            # "lib/netstandard2.0/Newtonsoft.Json.dll",
            # "lib/netstandard2.0/Newtonsoft.Json.xml",
            # ],
        },
        net_files = {
            # "net45": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net451": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net452": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net46": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net461": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net462": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net47": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            # "net471": [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
            # ],
            "net472": [
            "lib/net45/Newtonsoft.Json.dll",
            "lib/net45/Newtonsoft.Json.xml",
            ],
            # "netstandard1.0": [
            # "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "lib/netstandard1.0/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.1": [
            # "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "lib/netstandard1.0/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.2": [
            # "lib/netstandard1.0/Newtonsoft.Json.dll",
            # "lib/netstandard1.0/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.3": [
            # "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "lib/netstandard1.3/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.4": [
            # "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "lib/netstandard1.3/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.5": [
            # "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "lib/netstandard1.3/Newtonsoft.Json.xml",
            # ],
            # "netstandard1.6": [
            # "lib/netstandard1.3/Newtonsoft.Json.dll",
            # "lib/netstandard1.3/Newtonsoft.Json.xml",
            # ],
            # "netstandard2.0": [
            # "lib/netstandard2.0/Newtonsoft.Json.dll",
            # "lib/netstandard2.0/Newtonsoft.Json.xml",
            # ],
        },
        mono_files = [
            # "lib/net45/Newtonsoft.Json.dll",
            # "lib/net45/Newtonsoft.Json.xml",
        ],
    )