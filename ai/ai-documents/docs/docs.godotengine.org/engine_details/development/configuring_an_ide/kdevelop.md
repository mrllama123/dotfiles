---
title: KDevelop — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/configuring_an_ide/kdevelop.html
crawled_at: "2026-08-13T10:39:51+12:00"
content_hash: c1b5fcce29c250c6039448f698bda592e699feb58a550b7fea8796582dba7834
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Configuring an IDE](index.md)
  - KDevelop
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/configuring_an_ide/kdevelop.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# KDevelop

[KDevelop](https://www.kdevelop.org) is a free, open source IDE for all desktop platforms.

## Importing the project

- From the KDevelop's main screen select **Open Project**.


![../../../_images/kdevelop_newproject.webp](../../../_images/kdevelop_newproject.webp)

KDevelop's main screen.

- Navigate to the Godot root folder and select it.

- On the next screen, choose **Custom Build System** for the **Project Manager**.


![../../../_images/kdevelop_custombuild.webp](../../../_images/kdevelop_custombuild.webp)

- After the project has been imported, open the project configuration by right-clicking
on it in the **Projects** panel and selecting **Open Configuration..** option.


![../../../_images/kdevelop_openconfig.webp](../../../_images/kdevelop_openconfig.webp)

- Under **Language Support** open the **Includes/Imports** tab and add the following paths:





```
.  // A dot, to indicate the root of the Godot project
core/
core/os/
core/math/
drivers/
platform/<your_platform>/  // Replace <your_platform> with a folder
                                corresponding to your current platform

```


![../../../_images/kdevelop_addincludes.webp](../../../_images/kdevelop_addincludes.webp)

- Apply the changes.

- Under **Custom Build System** add a new build configuration with the following settings:


|     |     |
| --- | --- |
| Build Directory | _blank_ |
| Enable | **True** |
| Executable | **scons** |
| Arguments | See [Introduction to the buildsystem](../compiling/introduction_to_the_buildsystem.md#doc-introduction-to-the-buildsystem) for a full list of arguments. |


![../../../_images/kdevelop_buildconfig.webp](../../../_images/kdevelop_buildconfig.webp)

- Apply the changes and close the configuration window.


## Debugging the project

- Select **Run > Configure Launches...** from the top menu.


![../../../_images/kdevelop_configlaunches.webp](../../../_images/kdevelop_configlaunches.webp)

- Click **Add** to create a new launch configuration.

- Select **Executable** option and specify the path to your executable located in
the `<Godot root directory>/bin` folder. The name depends on your build configuration,
e.g. `godot.linuxbsd.editor.dev.x86_64` for 64-bit LinuxBSD platform with
`platform=linuxbsd`, `target=editor`, and `dev_build=yes`.


![../../../_images/kdevelop_configlaunches2.webp](../../../_images/kdevelop_configlaunches2.webp)

If you run into any issues, ask for help in one of
[Godot's community channels](https://godotengine.org/community).

[Previous](code_blocks.md "Code::Blocks") [Next](qt_creator.md "Qt Creator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](code_blocks.md "Code::Blocks") [Next](qt_creator.md "Qt Creator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).