---
title: Feature tags — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/export/feature_tags.html
crawled_at: "2026-08-13T10:42:40+12:00"
content_hash: 82951d4774f5a7ba826f0e7b5fb26fb1ea989025b8cfdc6746f8390bc4ea430f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Export](index.md)
  - Feature tags
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/export/feature_tags.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Feature tags

## Introduction

Godot has a special system to tag availability of features.
Each _feature_ is represented as a string, which can refer to many of the following:

- Platform name.

- Platform architecture (64-bit or 32-bit, x86 or ARM).

- Platform type (desktop, mobile, Web).

- Supported texture compression algorithms on the platform.

- Whether a build is `debug` or `release` ( `debug` includes the editor).

- Whether the project is running from the editor or a "standalone" binary.

- Many more things.


Features can be queried at runtime from the singleton API by calling:

GDScriptC#

```
OS.has_feature(name)

```

```
OS.HasFeature(name);

```

OS feature tags are used by GDExtension to determine which libraries to load.
For example, a library for `linux.debug.editor.x86_64` will be
loaded only on a debug editor build for Linux x86\_64.

## Default features

Here is a list of most feature tags in Godot. Keep in mind they are **case-sensitive**:

| **Feature tag** | **Description** |
| --- | --- |
| **android** | Running on Android (but not within a Web browser) |
| **bsd** | Running on \*BSD (but not within a Web browser) |
| **linux** | Running on Linux (but not within a Web browser) |
| **macos** | Running on macOS (but not within a Web browser) |
| **ios** | Running on iOS (but not within a Web browser) |
| **visionos** | Running on visionOS (but not within a Web browser) |
| **windows** | Running on Windows |
| **linuxbsd** | Running on Linux or \*BSD |
| **debug** | Running on a debug build (including the editor) |
| **release** | Running on a release build |
| **editor** | Running on an editor build |
| **editor\_hint** | Running on an editor build, and inside the editor |
| **editor\_runtime** | Running on an editor build, and running the project |
| **template** | Running on a non-editor (export template) build |
| **double** | Running on a double-precision build |
| **single** | Running on a single-precision build |
| **64** | Running on a 64-bit build (any architecture) |
| **32** | Running on a 32-bit build (any architecture) |
| **x86\_64** | Running on a 64-bit x86 build |
| **x86\_32** | Running on a 32-bit x86 build |
| **x86** | Running on an x86 build (any bitness) |
| **arm64** | Running on a 64-bit ARM build |
| **arm32** | Running on a 32-bit ARM build |
| **arm** | Running on an ARM build (any bitness) |
| **rv64** | Running on a 64-bit RISC-V build |
| **riscv** | Running on a RISC-V build (any bitness) |
| **ppc64** | Running on a 64-bit PowerPC build |
| **ppc32** | Running on a 32-bit PowerPC build |
| **ppc** | Running on a PowerPC build (any bitness) |
| **wasm64** | Running on a 64-bit WebAssembly build (not yet possible) |
| **wasm32** | Running on a 32-bit WebAssembly build |
| **wasm** | Running on a WebAssembly build (any bitness) |
| **mobile** | Host OS is a mobile platform |
| **pc** | Host OS is a PC platform (desktop/laptop) |
| **web** | Host OS is a Web browser |
| **nothreads** | Running without threading support |
| **threads** | Running with threading support |
| **web\_android** | Host OS is a Web browser running on Android |
| **web\_ios** | Host OS is a Web browser running on iOS |
| **web\_linuxbsd** | Host OS is a Web browser running on Linux or \*BSD |
| **web\_macos** | Host OS is a Web browser running on macOS |
| **web\_windows** | Host OS is a Web browser running on Windows |
| **etc** | Textures using ETC1 compression are supported |
| **etc2** | Textures using ETC2 compression are supported |
| **s3tc** | Textures using S3TC (DXT/BC) compression are supported |
| **movie** | [Movie Maker mode](../animation/creating_movies.md#doc-creating-movies) is active |
| **shader\_baker** | Project was exported with [shader baking](../performance/pipeline_compilations.md#doc-pipeline-compilations-shader-baker)<br>enabled (only applies to the exported project, not when running in the editor) |
| **dedicated\_server** | Project was exported as a [dedicated server](exporting_for_dedicated_servers.md#doc-exporting-for-dedicated-servers)<br>(only applies to the exported project, not when running in the editor) |

Warning

With the exception of texture compression, `web_<platform>` and
`movie` feature tags, default feature tags are **immutable**.
This means that they will _not_ change depending on runtime conditions.
For example, `OS.has_feature("mobile")` will return `false`
when running a project exported to Web on a mobile device.

To check whether a project exported to Web is running on a mobile device,
use `OS.has_feature("web_android") or OS.has_feature("web_ios")`.

## Custom features

It is possible to add custom features to a build; use the relevant
field in the _export preset_ used to generate it:

![../../_images/feature_tags1.webp](../../_images/feature_tags1.webp)

Note

Custom feature tags are only used when running the exported project
(including with [One-click deploy](one-click_deploy.md#doc-one-click-deploy)). They are **not used** when
running the project from the editor, even if the export preset marked as
**Runnable** for your current platform has custom feature tags defined.

Custom feature tags are also not used in [EditorExportPlugin](../../classes/class_editorexportplugin.md#class-editorexportplugin)
scripts. Instead, feature tags in [EditorExportPlugin](../../classes/class_editorexportplugin.md#class-editorexportplugin)
will reflect the device the editor is currently running on.

## Overriding project settings

Features can be used to override specific configuration values in the _Project Settings_.
This allows you to better customize any configuration when doing a build.

In the following example, a different icon is added for the demo build of the game (which was
customized in a special export preset, which, in turn, includes only demo levels).

![The Project Settings panel](../../_images/feature_tags2.webp)

The desired configuration is selected, which effectively copies its properties to the panel above (1). The "demo\_build" feature tag is selected (2). The configuration is added to the project settings (3).

After overriding, a new field is added for this specific configuration.

![../../_images/feature_tags3.webp](../../_images/feature_tags3.webp)

Note

When using the
[project settings "override.cfg" functionality](../../classes/class_projectsettings.md#class-projectsettings)
(which is unrelated to feature tags), remember that feature tags still apply.
Therefore, make sure to _also_ override the setting with the desired feature
tag(s) if you want them to override base project settings on all platforms
and configurations.

## Default overrides

There are already a lot of settings that come with overrides by default; they can be found
in many sections of the project settings.

![../../_images/feature_tags4.webp](../../_images/feature_tags4.webp)

## Taking feature tags into account when reading project settings

By default, feature tags are **not** taken into account when reading project settings
using the typical approaches ( [ProjectSettings.get\_setting](../../classes/class_projectsettings.md#class-projectsettings-method-get-setting)
or [ProjectSettings.get](../../classes/class_object.md#class-object-private-method-get)).
Instead, you must use [ProjectSettings.get\_setting\_with\_override](../../classes/class_projectsettings.md#class-projectsettings-method-get-setting).

For example, with the following project settings:

```
[section]

subsection/example = "Release"
subsection/example.debug = "Debug"

```

Using `ProjectSettings.get_setting("section/subsection/example")` will return
`"Release"` regardless of whether a debug build is currently running. On the
other hand, `ProjectSettings.get_setting_with_override("section/subsection/example")`
will obey feature tags and will return `"Debug"` if using a debug build.

## Customizing the build

Feature tags can be used to customize a build process too, by writing a custom **ExportPlugin**.
They are also used to specify which shared library is loaded and exported in **GDExtension**.

[Previous](exporting_pcks.md "Exporting packs, patches, and mods") [Next](exporting_for_windows.md "Exporting for Windows")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](exporting_pcks.md "Exporting packs, patches, and mods") [Next](exporting_for_windows.md "Exporting for Windows")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).