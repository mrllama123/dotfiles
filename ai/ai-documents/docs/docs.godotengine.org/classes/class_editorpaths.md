---
title: EditorPaths — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorpaths.html
crawled_at: "2026-08-13T10:20:01+12:00"
content_hash: b1cb844748a3acf306b5f23b6b0b6ae01ecc2ebab6c4c6f4aa78ef1958cef4fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorPaths

* * *

# EditorPaths

**Inherits:** [Object](class_object.md#class-object)

Editor-only singleton that returns paths to various OS-specific data folders and files.

## Description

This editor-only singleton returns OS-specific paths to various data folders and files. It can be used in editor plugins to ensure files are saved in the correct location on each operating system.

**Note:** This singleton is not accessible in exported projects. Attempting to access it in an exported project will result in a script error as the singleton won't be declared. To prevent script errors in exported projects, use [Engine.has\_singleton()](class_engine.md#class-engine-method-has-singleton) to check whether the singleton is available before using it.

**Note:** On the Linux/BSD platform, Godot complies with the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html). You can override environment variables following the specification to change the editor and project data paths.

## Tutorials

- [File paths in Godot projects](../tutorials/io/data_paths.md)


## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_cache\_dir](#class-editorpaths-method-get-cache-dir)() const |
| [String](class_string.md#class-string) | [get\_config\_dir](#class-editorpaths-method-get-config-dir)() const |
| [String](class_string.md#class-string) | [get\_data\_dir](#class-editorpaths-method-get-data-dir)() const |
| [String](class_string.md#class-string) | [get\_project\_settings\_dir](#class-editorpaths-method-get-project-settings-dir)() const |
| [String](class_string.md#class-string) | [get\_self\_contained\_file](#class-editorpaths-method-get-self-contained-file)() const |
| [bool](class_bool.md#class-bool) | [is\_self\_contained](#class-editorpaths-method-is-self-contained)() const |

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_cache\_dir**() const [🔗](#class-editorpaths-method-get-cache-dir)

Returns the absolute path to the user's cache folder. This folder should be used for temporary data that can be removed safely whenever the editor is closed (such as generated resource thumbnails).

**Default paths per platform:**

```
- Windows: %LOCALAPPDATA%\Godot\
- macOS: ~/Library/Caches/Godot/
- Linux: ~/.cache/godot/

```

* * *

[String](class_string.md#class-string) **get\_config\_dir**() const [🔗](#class-editorpaths-method-get-config-dir)

Returns the absolute path to the user's configuration folder. This folder should be used for _persistent_ user configuration files.

**Default paths per platform:**

```
- Windows: %APPDATA%\Godot\                    (same as `get_data_dir()`)
- macOS: ~/Library/Application Support/Godot/  (same as `get_data_dir()`)
- Linux: ~/.config/godot/

```

* * *

[String](class_string.md#class-string) **get\_data\_dir**() const [🔗](#class-editorpaths-method-get-data-dir)

Returns the absolute path to the user's data folder. This folder should be used for _persistent_ user data files such as installed export templates.

**Default paths per platform:**

```
- Windows: %APPDATA%\Godot\                    (same as `get_config_dir()`)
- macOS: ~/Library/Application Support/Godot/  (same as `get_config_dir()`)
- Linux: ~/.local/share/godot/

```

* * *

[String](class_string.md#class-string) **get\_project\_settings\_dir**() const [🔗](#class-editorpaths-method-get-project-settings-dir)

Returns the project-specific editor settings path. Projects all have a unique subdirectory inside the settings path where project-specific editor settings are saved.

* * *

[String](class_string.md#class-string) **get\_self\_contained\_file**() const [🔗](#class-editorpaths-method-get-self-contained-file)

Returns the absolute path to the self-contained file that makes the current Godot editor instance be considered as self-contained. Returns an empty string if the current Godot editor instance isn't self-contained. See also [is\_self\_contained()](#class-editorpaths-method-is-self-contained).

* * *

[bool](class_bool.md#class-bool) **is\_self\_contained**() const [🔗](#class-editorpaths-method-is-self-contained)

Returns `true` if the editor is marked as self-contained, `false` otherwise. When self-contained mode is enabled, user configuration, data and cache files are saved in an `editor_data/` folder next to the editor binary. This makes portable usage easier and ensures the Godot editor minimizes file writes outside its own folder. Self-contained mode is not available for exported projects.

Self-contained mode can be enabled by creating a file named `._sc_` or `_sc_` in the same folder as the editor binary or macOS .app bundle while the editor is not running. See also [get\_self\_contained\_file()](#class-editorpaths-method-get-self-contained-file).

**Note:** On macOS, quarantine flag should be manually removed before using self-contained mode, see [Running on macOS](https://docs.godotengine.org/en/stable/tutorials/export/running_on_macos.html).

**Note:** On macOS, placing `_sc_` or any other file inside .app bundle will break digital signature and make it non-portable, consider placing it in the same folder as the .app bundle instead.

**Note:** The Steam release of Godot uses self-contained mode by default.

[Previous](class_editornode3dgizmo.md "EditorNode3DGizmo") [Next](class_editorresourceconversionplugin.md "EditorResourceConversionPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editornode3dgizmo.md "EditorNode3DGizmo") [Next](class_editorresourceconversionplugin.md "EditorResourceConversionPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).