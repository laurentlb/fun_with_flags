load("@bazel_skylib//rules:common_settings.bzl", "string_flag")

string_flag(
    name = "flag_name",
    make_variable = "ABC",
    build_setting_default = "42",
)

cc_binary(
    name = "test",
    srcs = ["test.cpp"],
    local_defines = ['FLAG=$(ABC)'],
    toolchains = [":flag_name"],
)
