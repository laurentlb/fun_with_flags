# Generating C compiler defines from starlark flags

In a project, I wanted access to a string-valued config setting in C++
code. It turns out this is fairly straightforward, using Skylib.

```
$ bazel run //:test
...
42
$ bazel run //:test --flag_name=23
...
23
```

This repo is a fork of https://github.com/dfr/fun_with_flags, using a newer feature of Skylib to simplify the code.
