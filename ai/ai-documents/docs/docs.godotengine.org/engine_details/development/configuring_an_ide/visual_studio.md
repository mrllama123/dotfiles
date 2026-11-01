---
title: Visual Studio — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/configuring_an_ide/visual_studio.html
crawled_at: "2026-08-13T10:21:39+12:00"
content_hash: 1c9e4943b624da2863761dd17017db5f493947bfaedece717690a8f8d3dc6490
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Configuring an IDE](index.md)
  - Visual Studio
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/configuring_an_ide/visual_studio.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Visual Studio

[Visual Studio Community](https://visualstudio.microsoft.com) is a Windows-only IDE
by [Microsoft](https://microsoft.com) that's free for individual use or non-commercial use within organizations.
It has many useful features, such as memory view, performance view, source
control and more.

Note

This documentation is for contributions to the game engine, and not using
Visual Studio as a C# editor. To code C# in an external editor, see
[the C# guide to configure an external editor](../../../tutorials/scripting/c_sharp/c_sharp_basics.md#doc-c-sharp-setup-external-editor).

## Importing the project

Visual Studio requires a solution file to work on a project. While Godot does not come
with the solution file, it can be generated using SCons.

- Navigate to the Godot root folder and open a Command Prompt or PowerShell window.

- Run `scons platform=windows vsproj=yes dev_build=yes` to generate the solution with debug symbols.



The `vsproj` parameter signals that you want Visual Studio solution generated.



The `dev_build` parameter makes sure the debug symbols are included, allowing to e.g. step through code using breakpoints.

- You can now open the project by double-clicking on the `godot.sln` in the project root
or by using the **Open a project or solution** option inside of the Visual Studio.

- Use the **Build** top menu to build the project.


Warning

Visual Studio must be configured with the C++ package. It can be selected
in the installer:

![../../../_images/vs_1_install_cpp_package.png](../../../_images/vs_1_install_cpp_package.png)

## Debugging the project

Visual Studio features a powerful debugger. This allows the user to examine Godot's
source code, stop at specific points in the code, inspect the current execution context,
and make live changes to the codebase.

You can launch the project with the debugger attached using the **Debug > Start Debugging**
option from the top menu. However, unless you want to debug the Project Manager specifically,
you'd need to configure debugging options first. This is due to the fact that when the Godot
Project Manager opens a project, the initial process is terminated and the debugger gets detached.

- To configure the launch options to use with the debugger use **Project > Properties**
from the top menu:


![../../../_images/vs_2_project_properties.png](../../../_images/vs_2_project_properties.png)

- Open the **Debugging** section and under **Command Arguments** add two new arguments:
the `-e` flag opens the editor instead of the Project Manager, and the `--path` argument
tells the executable to open the specified project (must be provided as an _absolute_ path
to the project root, not the `project.godot` file; if the path contains spaces be sure to pass it inside double quotation marks).


![../../../_images/vs_3_debug_command_line.webp](../../../_images/vs_3_debug_command_line.webp)

To learn more about command line arguments, refer to the
[command line tutorial](../../../tutorials/editor/command_line_tutorial.md#doc-command-line-tutorial).

Even if you start the project without a debugger attached it can still be connected to the running
process using **Debug > Attach to Process...** menu.

To check that everything is working, put a breakpoint in `main.cpp` and press `F5` to
start debugging.

![../../../_images/vs_4_debugging_main.png](../../../_images/vs_4_debugging_main.png)

If you run into any issues, ask for help in one of
[Godot's community channels](https://godotengine.org/community).

[Previous](rider.md "JetBrains Rider") [Next](visual_studio_code.md "Visual Studio Code")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](rider.md "JetBrains Rider") [Next](visual_studio_code.md "Visual Studio Code")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).