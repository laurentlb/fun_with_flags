load("@bazel_skylib//rules:common_settings.bzl", "string_flag")
load("defs.bzl", "format_flag_value")

cc_binary(
    name = "test",
    srcs = ["test.cpp"],
    deps = [":flag"],
)

format_flag_value(
    name = "flag",
    value = ":foo",
)

string_flag(
    name = "foo",
    build_setting_default = "42",
)
