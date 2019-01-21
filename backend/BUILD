package(default_visibility = [ "//visibility:public" ])

load("@io_bazel_rules_dotnet//dotnet:defs.bzl", 
     "net_library", 
     "net_binary", 
     "net_import_library",
     "DOTNET_NET_FRAMEWORKS",
     "net_xunit_test"
)

[net_library(
    name = "backend-net_{}".format(framework),
    srcs = [
        "implementation/program.cs",
    ],
    dotnet_context_data = "@io_bazel_rules_dotnet//:net_context_data_{}".format(framework),
    visibility = ["//visibility:public"],
    deps = [
        "@newtonsoft.json//:{}_net".format(framework),
    ],
) for framework in DOTNET_NET_FRAMEWORKS]