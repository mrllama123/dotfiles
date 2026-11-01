---
title: GDExtensionManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gdextensionmanager.html
crawled_at: "2026-08-13T10:30:24+12:00"
content_hash: 09b45c58603ac0b671d64f81b9db10c94d81e9b0e1c5aecbb9a401c3eb06b481
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GDExtensionManager

* * *

# GDExtensionManager

**Inherits:** [Object](class_object.md#class-object)

Provides access to GDExtension functionality.

## Description

The GDExtensionManager loads, initializes, and keeps track of all available [GDExtension](class_gdextension.md#class-gdextension) libraries in the project.

**Note:** Do not worry about GDExtension unless you know what you are doing.

## Tutorials

- [GDExtension overview](../tutorials/scripting/gdextension/what_is_gdextension.md)

- [GDExtension example in C++](../tutorials/scripting/cpp/gdextension_cpp_example.md)


## Methods

|     |     |
| --- | --- |
| [GDExtension](class_gdextension.md#class-gdextension) | [get\_extension](#class-gdextensionmanager-method-get-extension)(path: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_loaded\_extensions](#class-gdextensionmanager-method-get-loaded-extensions)() const |
| [bool](class_bool.md#class-bool) | [is\_extension\_loaded](#class-gdextensionmanager-method-is-extension-loaded)(path: [String](class_string.md#class-string)) const |
| [LoadStatus](#enum-gdextensionmanager-loadstatus) | [load\_extension](#class-gdextensionmanager-method-load-extension)(path: [String](class_string.md#class-string)) |
| [LoadStatus](#enum-gdextensionmanager-loadstatus) | [reload\_extension](#class-gdextensionmanager-method-reload-extension)(path: [String](class_string.md#class-string)) |
| [LoadStatus](#enum-gdextensionmanager-loadstatus) | [unload\_extension](#class-gdextensionmanager-method-unload-extension)(path: [String](class_string.md#class-string)) |

* * *

## Signals

**extension\_loaded**(extension: [GDExtension](class_gdextension.md#class-gdextension)) [🔗](#class-gdextensionmanager-signal-extension-loaded)

Emitted after the editor has finished loading a new extension.

**Note:** This signal is only emitted in editor builds.

* * *

**extension\_unloading**(extension: [GDExtension](class_gdextension.md#class-gdextension)) [🔗](#class-gdextensionmanager-signal-extension-unloading)

Emitted before the editor starts unloading an extension.

**Note:** This signal is only emitted in editor builds.

* * *

**extensions\_reloaded**() [🔗](#class-gdextensionmanager-signal-extensions-reloaded)

Emitted after the editor has finished reloading one or more extensions.

* * *

## Enumerations

enum **LoadStatus**: [🔗](#enum-gdextensionmanager-loadstatus)

[LoadStatus](#enum-gdextensionmanager-loadstatus) **LOAD\_STATUS\_OK** = `0`

The extension has loaded successfully.

[LoadStatus](#enum-gdextensionmanager-loadstatus) **LOAD\_STATUS\_FAILED** = `1`

The extension has failed to load, possibly because it does not exist or has missing dependencies.

[LoadStatus](#enum-gdextensionmanager-loadstatus) **LOAD\_STATUS\_ALREADY\_LOADED** = `2`

The extension has already been loaded.

[LoadStatus](#enum-gdextensionmanager-loadstatus) **LOAD\_STATUS\_NOT\_LOADED** = `3`

The extension has not been loaded.

[LoadStatus](#enum-gdextensionmanager-loadstatus) **LOAD\_STATUS\_NEEDS\_RESTART** = `4`

The extension requires the application to restart to fully load.

* * *

## Method Descriptions

[GDExtension](class_gdextension.md#class-gdextension) **get\_extension**(path: [String](class_string.md#class-string)) [🔗](#class-gdextensionmanager-method-get-extension)

Returns the [GDExtension](class_gdextension.md#class-gdextension) at the given file `path`, or `null` if it has not been loaded or does not exist.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_loaded\_extensions**() const [🔗](#class-gdextensionmanager-method-get-loaded-extensions)

Returns the file paths of all currently loaded extensions.

* * *

[bool](class_bool.md#class-bool) **is\_extension\_loaded**(path: [String](class_string.md#class-string)) const [🔗](#class-gdextensionmanager-method-is-extension-loaded)

Returns `true` if the extension at the given file `path` has already been loaded successfully. See also [get\_loaded\_extensions()](#class-gdextensionmanager-method-get-loaded-extensions).

* * *

[LoadStatus](#enum-gdextensionmanager-loadstatus) **load\_extension**(path: [String](class_string.md#class-string)) [🔗](#class-gdextensionmanager-method-load-extension)

Loads an extension by absolute file path. The `path` needs to point to a valid [GDExtension](class_gdextension.md#class-gdextension). Returns [LOAD\_STATUS\_OK](#class-gdextensionmanager-constant-load-status-ok) if successful.

* * *

[LoadStatus](#enum-gdextensionmanager-loadstatus) **reload\_extension**(path: [String](class_string.md#class-string)) [🔗](#class-gdextensionmanager-method-reload-extension)

Reloads the extension at the given file path. The `path` needs to point to a valid [GDExtension](class_gdextension.md#class-gdextension), otherwise this method may return either [LOAD\_STATUS\_NOT\_LOADED](#class-gdextensionmanager-constant-load-status-not-loaded) or [LOAD\_STATUS\_FAILED](#class-gdextensionmanager-constant-load-status-failed).

**Note:** You can only reload extensions in the editor. In release builds, this method always fails and returns [LOAD\_STATUS\_FAILED](#class-gdextensionmanager-constant-load-status-failed).

* * *

[LoadStatus](#enum-gdextensionmanager-loadstatus) **unload\_extension**(path: [String](class_string.md#class-string)) [🔗](#class-gdextensionmanager-method-unload-extension)

Unloads an extension by file path. The `path` needs to point to an already loaded [GDExtension](class_gdextension.md#class-gdextension), otherwise this method returns [LOAD\_STATUS\_NOT\_LOADED](#class-gdextensionmanager-constant-load-status-not-loaded).

[Previous](class_framebuffercacherd.md "FramebufferCacheRD") [Next](class_geometry2d.md "Geometry2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_framebuffercacherd.md "FramebufferCacheRD") [Next](class_geometry2d.md "Geometry2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).