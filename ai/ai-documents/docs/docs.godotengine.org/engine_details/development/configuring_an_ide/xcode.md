---
title: Xcode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/configuring_an_ide/xcode.html
crawled_at: "2026-08-13T10:23:00+12:00"
content_hash: 6a6f27405e14f8480cdccc75d2470f6bca860162ad5d2083b5d800977e205c78
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Configuring an IDE](index.md)
  - Xcode
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/configuring_an_ide/xcode.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Xcode

[Xcode](https://developer.apple.com/xcode) is a free macOS-only IDE. You can
download it from the Mac App Store.

## Importing the project

- From Xcode's main screen create a new project using the **Other > External Build System** template.


![../../../_images/xcode_1_create_external_build_project.webp](../../../_images/xcode_1_create_external_build_project.webp)

- Now choose a name for your project and set the path to scons executable in build tool (to find the path you can type `where scons` in a terminal).


![../../../_images/xcode_2_set_external_build_project_parameters.webp](../../../_images/xcode_2_set_external_build_project_parameters.webp)

- Open the main target from the **Targets** section and select the **Info** tab.


![../../../_images/xcode_3_configure_scons.webp](../../../_images/xcode_3_configure_scons.webp)

- Fill out the form with the following settings:


|     |     |
| --- | --- |
| Arguments | See [Introduction to the buildsystem](../compiling/introduction_to_the_buildsystem.md#doc-introduction-to-the-buildsystem) for a full list of arguments. |
| Directory | A full path to the Godot root folder |

- Add a Command Line Tool target which will be used for indexing the project by
choosing **File > New > Target...**.


![../../../_images/xcode_4_add_new_target.webp](../../../_images/xcode_4_add_new_target.webp)

- Select **macOS > Application > Command Line Tool**.


![../../../_images/xcode_5_select_command_line_target.webp](../../../_images/xcode_5_select_command_line_target.webp)

Note

Name it something so you know not to compile with this target (e.g. `GodotXcodeIndex`).

- For this target open the **Build Settings** tab and look for **Header Search Paths**.

- Set **Header Search Paths** to the absolute path to the Godot root folder. You need to
include subdirectories as well. To achieve that, add two two asterisks ( `**`) to the
end of the path, e.g. `/Users/me/repos/godot-source/**`.

- Add the Godot source to the project by dragging and dropping it into the project file browser.

- Select **Create groups** for the **Added folders** option and check _only_
your command line indexing target in the **Add to targets** section.


![../../../_images/xcode_6_after_add_godot_source_to_project.webp](../../../_images/xcode_6_after_add_godot_source_to_project.webp)

- Xcode will now index the files. This may take a few minutes.

- Once Xcode is done indexing, you should have jump-to-definition,
autocompletion, and full syntax highlighting.


## Debugging the project

To enable debugging support you need to edit the external build target's build and run schemes.

- Open the scheme editor of the external build target.

- Locate the **Build > Post Actions** section.

- Add a new script run action

- Under **Provide build settings from** select your project. This allows to reference
the project directory within the script.

- Create a script that will give the binary a name that Xcode can recognize, e.g.:


```
ln -f ${PROJECT_DIR}/godot/bin/godot.macos.tools.64 ${PROJECT_DIR}/godot/bin/godot

```

![../../../_images/xcode_7_setup_build_post_action.webp](../../../_images/xcode_7_setup_build_post_action.webp)

- Build the external build target.

- Open the scheme editor again and select **Run**.


![../../../_images/xcode_8_setup_run_scheme.webp](../../../_images/xcode_8_setup_run_scheme.webp)

- Set the **Executable** to the file you linked in your post-build action script.

- Check **Debug executable**.

- You can add two arguments on the **Arguments** tab:
the `-e` flag opens the editor instead of the Project Manager, and the `--path` argument
tells the executable to open the specified project (must be provided as an _absolute_ path
to the project root, not the `project.godot` file).


To check that everything is working, put a breakpoint in `platform/macos/godot_main_macos.mm` and
run the project.

If you run into any issues, ask for help in one of
[Godot's community channels](https://godotengine.org/community).

[Previous](visual_studio_code.md "Visual Studio Code") [Next](../compiling/index.md "Building from source")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](visual_studio_code.md "Visual Studio Code") [Next](../compiling/index.md "Building from source")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).