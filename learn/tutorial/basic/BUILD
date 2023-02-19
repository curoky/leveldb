load("//learn/bazel:copts.bzl", "CPP_COPTS", "LINKOPTS")

cc_test(
    name = "main",
    srcs = ["main.cc"],
    copts = CPP_COPTS,
    linkopts = LINKOPTS,
    deps = [
        "//:leveldb",
        "@fmt",
        "@gflags",
        "@spdlog",
        "@catch2//:catch2_main",
    ],
)
