---
title: ThemeDB — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_themedb.html
crawled_at: "2026-08-13T10:20:06+12:00"
content_hash: 8b580ec0e58efc2b0f671739fed9ee80f4db2d5d220ee0e7be829dd006cd9928
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ThemeDB

* * *

# ThemeDB

**Inherits:** [Object](class_object.md#class-object)

A singleton that provides access to static information about [Theme](class_theme.md#class-theme) resources used by the engine and by your project.

## Description

This singleton provides access to static information about [Theme](class_theme.md#class-theme) resources used by the engine and by your projects. You can fetch the default engine theme, as well as your project configured theme.

**ThemeDB** also contains fallback values for theme properties.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [fallback\_base\_scale](#class-themedb-property-fallback-base-scale) | `1.0` |
| [Font](class_font.md#class-font) | [fallback\_font](#class-themedb-property-fallback-font) |  |
| [int](class_int.md#class-int) | [fallback\_font\_size](#class-themedb-property-fallback-font-size) | `16` |
| [Texture2D](class_texture2d.md#class-texture2d) | [fallback\_icon](#class-themedb-property-fallback-icon) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [fallback\_stylebox](#class-themedb-property-fallback-stylebox) |  |

## Methods

|     |     |
| --- | --- |
| [Theme](class_theme.md#class-theme) | [get\_default\_theme](#class-themedb-method-get-default-theme)() |
| [Theme](class_theme.md#class-theme) | [get\_project\_theme](#class-themedb-method-get-project-theme)() |

* * *

## Signals

**fallback\_changed**() [🔗](#class-themedb-signal-fallback-changed)

Emitted when one of the fallback values had been changed. Use it to refresh the look of controls that may rely on the fallback theme items.

* * *

## Property Descriptions

[float](class_float.md#class-float) **fallback\_base\_scale** = `1.0` [🔗](#class-themedb-property-fallback-base-scale)

- void **set\_fallback\_base\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fallback\_base\_scale**()


The fallback base scale factor of every [Control](class_control.md#class-control) node and [Theme](class_theme.md#class-theme) resource. Used when no other value is available to the control.

See also [Theme.default\_base\_scale](class_theme.md#class-theme-property-default-base-scale).

* * *

[Font](class_font.md#class-font) **fallback\_font** [🔗](#class-themedb-property-fallback-font)

- void **set\_fallback\_font**(value: [Font](class_font.md#class-font))

- [Font](class_font.md#class-font) **get\_fallback\_font**()


The fallback font of every [Control](class_control.md#class-control) node and [Theme](class_theme.md#class-theme) resource. Used when no other value is available to the control.

See also [Theme.default\_font](class_theme.md#class-theme-property-default-font).

* * *

[int](class_int.md#class-int) **fallback\_font\_size** = `16` [🔗](#class-themedb-property-fallback-font-size)

- void **set\_fallback\_font\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fallback\_font\_size**()


The fallback font size of every [Control](class_control.md#class-control) node and [Theme](class_theme.md#class-theme) resource. Used when no other value is available to the control.

See also [Theme.default\_font\_size](class_theme.md#class-theme-property-default-font-size).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **fallback\_icon** [🔗](#class-themedb-property-fallback-icon)

- void **set\_fallback\_icon**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_fallback\_icon**()


The fallback icon of every [Control](class_control.md#class-control) node and [Theme](class_theme.md#class-theme) resource. Used when no other value is available to the control.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **fallback\_stylebox** [🔗](#class-themedb-property-fallback-stylebox)

- void **set\_fallback\_stylebox**(value: [StyleBox](class_stylebox.md#class-stylebox))

- [StyleBox](class_stylebox.md#class-stylebox) **get\_fallback\_stylebox**()


The fallback stylebox of every [Control](class_control.md#class-control) node and [Theme](class_theme.md#class-theme) resource. Used when no other value is available to the control.

* * *

## Method Descriptions

[Theme](class_theme.md#class-theme) **get\_default\_theme**() [🔗](#class-themedb-method-get-default-theme)

Returns a reference to the default engine [Theme](class_theme.md#class-theme). This theme resource is responsible for the out-of-the-box look of [Control](class_control.md#class-control) nodes and cannot be overridden.

* * *

[Theme](class_theme.md#class-theme) **get\_project\_theme**() [🔗](#class-themedb-method-get-project-theme)

Returns a reference to the custom project [Theme](class_theme.md#class-theme). This theme resources allows to override the default engine theme for every control node in the project.

To set the project theme, see [ProjectSettings.gui/theme/custom](class_projectsettings.md#class-projectsettings-property-gui-theme-custom).

[Previous](class_textservermanager.md "TextServerManager") [Next](class_thread.md "Thread")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textservermanager.md "TextServerManager") [Next](class_thread.md "Thread")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).