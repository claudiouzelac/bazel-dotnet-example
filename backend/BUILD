package(default_visibility = [ "//visibility:public" ])

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", 
     "net_library", 
     "net_binary", 
     "net_import_library",
     "DOTNET_NET_FRAMEWORKS",
)

[net_library(
    name = "backend-net_{}".format(framework),
    srcs = [
        "program.cs",
    ],
    dotnet_context_data = "@io_bazel_rules_dotnet//:net_context_data_{}".format(framework),
    visibility = ["//visibility:public"],
    deps = [
    ],
) for framework in DOTNET_NET_FRAMEWORKS]