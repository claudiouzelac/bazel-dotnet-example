# Bazel Commands

## Bazel Build (compile)

### Command Line Input

```
bazel build //...
```

NOTE: The `...` shown above will operate upon all files in the Bazel WORKSPACE.  For example, if the command is `build` then all compilation units will be built.  If `test` then
all tests will be ran.

### Command Line Output

```
bazel build //...
INFO: Invocation ID: 17af9dfd-2d92-46f8-82b1-9a0f4b97fad9
INFO: Analysed 34 targets (0 packages loaded, 0 targets configured).
INFO: Found 34 targets...
INFO: Elapsed time: 1.156s, Critical Path: 0.01s
INFO: 0 processes.
INFO: Build completed successfully, 1 total action
```

## Bazel Test

### Command Line Input

```
bazel test //...
```

### Command Line Output

```
bazel test //...
INFO: Invocation ID: 8fb43b4d-f7dd-4533-9aa3-9684c095884a
INFO: Analysed 34 targets (0 packages loaded, 0 targets configured).
INFO: Found 17 targets and 17 test targets...
INFO: Elapsed time: 5.693s, Critical Path: 1.49s
INFO: 17 processes: 17 processwrapper-sandbox.
INFO: Build completed successfully, 18 total actions
//backend:backend_nunit-net_net45                                        PASSED in 0.7s
//backend:backend_nunit-net_net451                                       PASSED in 1.3s
//backend:backend_nunit-net_net452                                       PASSED in 0.7s
//backend:backend_nunit-net_net46                                        PASSED in 0.9s
//backend:backend_nunit-net_net461                                       PASSED in 0.8s
//backend:backend_nunit-net_net462                                       PASSED in 0.6s
//backend:backend_nunit-net_net47                                        PASSED in 0.7s
//backend:backend_nunit-net_net471                                       PASSED in 0.6s
//backend:backend_nunit-net_net472                                       PASSED in 0.7s
//backend:backend_nunit-net_netstandard1.0                               PASSED in 0.7s
//backend:backend_nunit-net_netstandard1.1                               PASSED in 0.7s
//backend:backend_nunit-net_netstandard1.2                               PASSED in 0.7s
//backend:backend_nunit-net_netstandard1.3                               PASSED in 0.6s
//backend:backend_nunit-net_netstandard1.4                               PASSED in 0.6s
//backend:backend_nunit-net_netstandard1.5                               PASSED in 1.1s
//backend:backend_nunit-net_netstandard1.6                               PASSED in 0.7s
//backend:backend_nunit-net_netstandard2.0                               PASSED in 0.7s

INFO: Build completed successfully, 18 total actions
```

## Show All Dependencies

### Command Line Input
```
bazel query 'deps(//...)'
```

### Sample Command Line Output
```
INFO: Invocation ID: 7a12fff5-daff-4db7-aec1-c49d7b54b7a7
//backend:backend-net_netstandard2.0
@io_bazel_rules_dotnet//:net_context_data_netstandard2.0
@net_sdk_netstandard2.0//:tools
@net_sdk_netstandard2.0//:tagetframework
@net_sdk_netstandard2.0//:targetframework.cs
@net_sdk_netstandard2.0//:mono_bin
@net_sdk_netstandard2.0//:mcs_bin
@net_sdk_netstandard2.0//:lib
//backend:backend-net_netstandard1.6
@io_bazel_rules_dotnet//:net_context_data_netstandard1.6
@net_sdk_netstandard1.6//:tools
@net_sdk_netstandard1.6//:tagetframework
@net_sdk_netstandard1.6//:targetframework.cs
@net_sdk_netstandard1.6//:mono_bin
@net_sdk_netstandard1.6//:mcs_bin
@net_sdk_netstandard1.6//:lib
//backend:backend-net_netstandard1.5
@io_bazel_rules_dotnet//:net_context_data_netstandard1.5
@net_sdk_netstandard1.5//:tools
@net_sdk_netstandard1.5//:tagetframework
@net_sdk_netstandard1.5//:targetframework.cs
@net_sdk_netstandard1.5//:mono_bin
@net_sdk_netstandard1.5//:mcs_bin
@net_sdk_netstandard1.5//:lib
//backend:backend-net_netstandard1.4
@io_bazel_rules_dotnet//:net_context_data_netstandard1.4
@net_sdk_netstandard1.4//:tools
@net_sdk_netstandard1.4//:tagetframework
@net_sdk_netstandard1.4//:targetframework.cs
@net_sdk_netstandard1.4//:mono_bin
@net_sdk_netstandard1.4//:mcs_bin
@net_sdk_netstandard1.4//:lib
//backend:backend-net_netstandard1.3
@io_bazel_rules_dotnet//:net_context_data_netstandard1.3
@net_sdk_netstandard1.3//:tools
@net_sdk_netstandard1.3//:tagetframework
@net_sdk_netstandard1.3//:targetframework.cs
@net_sdk_netstandard1.3//:mono_bin
@net_sdk_netstandard1.3//:mcs_bin
@net_sdk_netstandard1.3//:lib
//backend:backend-net_netstandard1.2
@io_bazel_rules_dotnet//:net_context_data_netstandard1.2
@net_sdk_netstandard1.2//:tools
@net_sdk_netstandard1.2//:tagetframework
@net_sdk_netstandard1.2//:targetframework.cs
@net_sdk_netstandard1.2//:mono_bin
@net_sdk_netstandard1.2//:mcs_bin
@net_sdk_netstandard1.2//:lib
//backend:backend-net_netstandard1.1
@io_bazel_rules_dotnet//:net_context_data_netstandard1.1
@net_sdk_netstandard1.1//:tools
@net_sdk_netstandard1.1//:tagetframework
@net_sdk_netstandard1.1//:targetframework.cs
@net_sdk_netstandard1.1//:mono_bin
@net_sdk_netstandard1.1//:mcs_bin
@net_sdk_netstandard1.1//:lib
//backend:backend-net_netstandard1.0
@io_bazel_rules_dotnet//:net_context_data_netstandard1.0
@net_sdk_netstandard1.0//:tools
@net_sdk_netstandard1.0//:tagetframework
@net_sdk_netstandard1.0//:targetframework.cs
@net_sdk_netstandard1.0//:mono_bin
@net_sdk_netstandard1.0//:mcs_bin
@net_sdk_netstandard1.0//:lib
//backend:backend-net_net472
@io_bazel_rules_dotnet//:net_context_data_net472
@net_sdk_net472//:tools
@net_sdk_net472//:tagetframework
@net_sdk_net472//:targetframework.cs
@net_sdk_net472//:mono_bin
@net_sdk_net472//:mcs_bin
@net_sdk_net472//:lib
//backend:backend-net_net471
@io_bazel_rules_dotnet//:net_context_data_net471
@net_sdk_net471//:tools
@net_sdk_net471//:tagetframework
@net_sdk_net471//:targetframework.cs
@net_sdk_net471//:mono_bin
@net_sdk_net471//:mcs_bin
@net_sdk_net471//:lib
//backend:backend-net_net47
@io_bazel_rules_dotnet//:net_context_data_net47
@net_sdk_net47//:tools
@net_sdk_net47//:tagetframework
@net_sdk_net47//:targetframework.cs
@net_sdk_net47//:mono_bin
@net_sdk_net47//:mcs_bin
@net_sdk_net47//:lib
//backend:backend-net_net462
@io_bazel_rules_dotnet//:net_context_data_net462
@net_sdk_net462//:tools
@net_sdk_net462//:tagetframework
@net_sdk_net462//:targetframework.cs
@net_sdk_net462//:mono_bin
@net_sdk_net462//:mcs_bin
@net_sdk_net462//:lib
//backend:backend-net_net461
@io_bazel_rules_dotnet//:net_context_data_net461
@net_sdk_net461//:tools
@net_sdk_net461//:tagetframework
@net_sdk_net461//:targetframework.cs
@net_sdk_net461//:mono_bin
@net_sdk_net461//:mcs_bin
@net_sdk_net461//:lib
//backend:backend-net_net46
@io_bazel_rules_dotnet//:net_context_data_net46
@net_sdk_net46//:tools
@net_sdk_net46//:tagetframework
@net_sdk_net46//:targetframework.cs
@net_sdk_net46//:mono_bin
@net_sdk_net46//:mcs_bin
@net_sdk_net46//:lib
//backend:backend-net_net452
@io_bazel_rules_dotnet//:net_context_data_net452
@net_sdk_net452//:tools
@net_sdk_net452//:tagetframework
@net_sdk_net452//:targetframework.cs
@net_sdk_net452//:mono_bin
@net_sdk_net452//:mcs_bin
@net_sdk_net452//:lib
//backend:backend-net_net451
@io_bazel_rules_dotnet//:net_context_data_net451
@net_sdk_net451//:tools
@net_sdk_net451//:tagetframework
@net_sdk_net451//:targetframework.cs
@net_sdk_net451//:mono_bin
@net_sdk_net451//:mcs_bin
@net_sdk_net451//:lib
//backend:backend-net_net45
@io_bazel_rules_dotnet//:net_context_data_net45
@net_sdk_net45//:tools
@net_sdk_net45//:tagetframework
@net_sdk_net45//:targetframework.cs
@net_sdk_net45//:mono_bin
@net_sdk_net45//:mcs_bin
@net_sdk_net45//:lib
//backend:program.cs
Loading: 0 packages loaded
```

## Generate a Dependency Graph (text form)

Now grab an example project from the above.  These start with double slashes, `//`, in the above output lists.  For this example, we will take `//backend:backend-net_net45` and generate the dependency graph.

### Command Line Input

```
bazel query 'deps(//backend:backend-net_net472)' --output graph
```

### Sample Command Line Output

```
bazel query 'deps(//backend:backend-net_net472)' --output graph
INFO: Invocation ID: c5228bff-5ba0-44c1-b599-5ff7782b9fa5
digraph mygraph {
  node [shape=box];
"//backend:backend-net_net472"
"//backend:backend-net_net472" -> "//backend:implementation/program.cs"
"//backend:backend-net_net472" -> "@io_bazel_rules_dotnet//:net_context_data_net472"
"@io_bazel_rules_dotnet//:net_context_data_net472"
"@io_bazel_rules_dotnet//:net_context_data_net472" -> "@net_sdk_net472//:lib\n@net_sdk_net472//:mono_bin\n@net_sdk_net472//:mcs_bin\n@net_sdk_net472//:tools"
"@io_bazel_rules_dotnet//:net_context_data_net472" -> "@net_sdk_net472//:tagetframework"
"@net_sdk_net472//:tagetframework"
"@net_sdk_net472//:tagetframework" -> "@net_sdk_net472//:targetframework.cs"
"//backend:implementation/program.cs"
"@net_sdk_net472//:targetframework.cs"
"@net_sdk_net472//:lib\n@net_sdk_net472//:mono_bin\n@net_sdk_net472//:mcs_bin\n@net_sdk_net472//:tools"
}
Loading: 0 packages loaded
```

## Generating a Dependency Graph (visual form)

This command requires `graphviz` to be installed.  You can install this with `apt-get install -y graphviz`.  This demo uses `graphviz version 2.38.0 (20140413.2041)`.

```
bazel query 'deps(//backend:backend-net_net45)' --output graph > graph.in
dot -Tpng < graph.in > graph.png
```

This yeilds:

![Alt text](dependencies.png?raw=true "Dependency Graph")