load("@bazel_skylib//rules:common_settings.bzl", "BuildSettingInfo")

def _define_from_flag_impl(ctx):
    return CcInfo(
        compilation_context = cc_common.create_compilation_context(
            defines = depset([
                "FLAG=\"{}\"".format(
                    ctx.attr.value[BuildSettingInfo].value,
                ),
            ]),
        ),
    )

define_from_flag = rule(
    implementation = _define_from_flag_impl,
    attrs = {
        "value": attr.label(),
    },
)
