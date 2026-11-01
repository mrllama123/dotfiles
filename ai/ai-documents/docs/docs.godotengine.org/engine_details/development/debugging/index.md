---
title: Debugging and profiling — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/debugging/index.html
crawled_at: "2026-08-13T10:36:49+12:00"
content_hash: 52958ce449a34b32759d44d16fc4e56d1a1c0e3fa047f86cf12b003d962c1d9a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - Debugging and profiling
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/debugging/index.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Debugging and profiling

This section contains pages that provide guidance if you're looking at the
engine code trying to find an underlying issue or an optimization possibility.

- [Using C++ profilers](using_cpp_profilers.md)
- [Using sanitizers](using_sanitizers.md)
- [Debugging on macOS](macos_debug.md)
- [Vulkan](vulkan/index.md)

## Debugging the editor

When working on the Godot editor keep in mind that by default the executable
will start in the Project Manager mode. Opening a project from the Project
Manager spawns a new process, which stops the debugging session. To avoid that
you should launch directly into the project using `-e` and `--path` launch
options.

For example, using `gdb` directly, you may do this:

```
gdb godot
> run -e --path ~/myproject

```

You can also run the editor directly from your project's folder. In that case,
only the `-e` option is required.

```
cd ~/myproject
gdb godot
> run -e

```

You can learn more about these launch options and other command line arguments
in the [command line tutorial](../../../tutorials/editor/command_line_tutorial.md#doc-command-line-tutorial).

If you're using a code editor or an IDE to debug Godot, check out our
[configuration guides](../configuring_an_ide/index.md#doc-configuring-an-ide), which cover the setup
process for building and debugging with your particular editor.

[Previous](../compiling/optimizing_for_size.md "Optimizing a build for size") [Next](using_cpp_profilers.md "Using C++ profilers")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).