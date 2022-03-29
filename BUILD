load("@bazel_skylib//rules:common_settings.bzl", "string_flag")
load("defs.bzl", "define_from_flag")

cc_binary(
    name = "test",
    srcs = ["test.cpp"],
    deps = [":flag"],
)

define_from_flag(
    name = "flag",
    value = ":foo",
)

string_flag(
    name = "foo",
    build_setting_default = "42",
)
