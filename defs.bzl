load("@bazel_skylib//rules:common_settings.bzl", "BuildSettingInfo")

def _format_flag_value_impl(ctx):
    return CcInfo(
        compilation_context = cc_common.create_compilation_context(
            defines = depset([
                "FLAG=\"{}\"".format(
                    ctx.attr.value[BuildSettingInfo].value,
                ),
            ]),
        ),
    )

format_flag_value = rule(
    implementation = _format_flag_value_impl,
    attrs = {
        "value": attr.label(),
    },
)
