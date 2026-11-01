---
title: GDScript warning system — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/gdscript/warning_system.html
crawled_at: "2026-08-13T10:38:33+12:00"
content_hash: 9b14e4a23b18bc672527389022f4ba927d9781ec3a4214dc6d70521cf89be5ee
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - [GDScript](index.md)
  - GDScript warning system
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/gdscript/warning_system.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# GDScript warning system

The GDScript warning system complements [static typing](static_typing.md#doc-gdscript-static-typing)
(but it can work without static typing too). It's here to help you avoid
mistakes that are hard to spot during development, and that may lead
to runtime errors.

You can configure warnings in the Project Settings under the section
called **GDScript**:

![../../../_images/typed_gdscript_warning_system_settings.webp](../../../_images/typed_gdscript_warning_system_settings.webp)

Note

You must enable **Advanced Settings** in order to see the
GDScript section in the sidebar. You can also search for "GDScript" when
Advanced Settings is off.

You can find a list of warnings for the active GDScript file in the
script editor's status bar. The example below has 2 warnings:

![../../../_images/typed_gdscript_warning_example.webp](../../../_images/typed_gdscript_warning_example.webp)

To ignore single warnings within a file, use the
[@warning\_ignore](../../../classes/class_@gdscript.md#class-gdscript-annotation-warning-ignore) annotation.
You can click on the ignore link to the left of the warning's description.
Godot will add an annotation above the corresponding line and the code
won't trigger the corresponding warning anymore:

![../../../_images/typed_gdscript_warning_system_ignore.webp](../../../_images/typed_gdscript_warning_system_ignore.webp)

To ignore multiple warnings in a region within a file, use the
[@warning\_ignore\_start](../../../classes/class_@gdscript.md#class-gdscript-annotation-warning-ignore-start)
and [@warning\_ignore\_restore](../../../classes/class_@gdscript.md#class-gdscript-annotation-warning-ignore-restore)
annotations. You can omit `@warning_ignore_restore` if you want to ignore
the specified warning types until the end of the file.

Warnings won't prevent the game from running, but you can turn them into
errors if you'd like. This way your game won't compile unless you fix
all warnings. Head to the `GDScript` section of the Project Settings to
turn on this option to the warning that you want. Here's the same file as
the previous example with the warning `unused_variable` as an error turned on:

![../../../_images/typed_gdscript_warning_system_errors.webp](../../../_images/typed_gdscript_warning_system_errors.webp)

[Previous](static_typing.md "Static typing in GDScript") [Next](gdscript_format_string.md "GDScript format strings")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](static_typing.md "Static typing in GDScript") [Next](gdscript_format_string.md "GDScript format strings")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).