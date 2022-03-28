# Generating C compiler defines from starlark flags

In a project, I wanted access to a string-valued config setting in C++
code. It turns out this is fairly straightforward, defining a custom
rule that generates a CcInfo provider containing config setting value
wrapped in FLAG=value form.

```
$ bazel run //:test
...
42
$ bazel run //:test --foo=hello_world
...
hello_world
```
