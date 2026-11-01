---
title: MarginContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_margincontainer.html
crawled_at: "2026-08-13T10:42:49+12:00"
content_hash: a241ade328f32ed8c97c458cc1fa13d18805e45e4fdd6e01b24ec142d403596d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MarginContainer

* * *

# MarginContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container that keeps a margin around its child controls.

## Description

**MarginContainer** adds an adjustable margin on each side of its child controls. The margins are added around all children, not around each individual one. To control the **MarginContainer**'s margins, use the `margin_*` theme properties listed below.

**Note:** The margin sizes are theme overrides, not normal properties. This is an example of how to change them in code:

GDScriptC#

```
# This code sample assumes the current script is extending MarginContainer.
var margin_value = 100
add_theme_constant_override("margin_top", margin_value)
add_theme_constant_override("margin_left", margin_value)
add_theme_constant_override("margin_bottom", margin_value)
add_theme_constant_override("margin_right", margin_value)

```

```
// This code sample assumes the current script is extending MarginContainer.
int marginValue = 100;
AddThemeConstantOverride("margin_top", marginValue);
AddThemeConstantOverride("margin_left", marginValue);
AddThemeConstantOverride("margin_bottom", marginValue);
AddThemeConstantOverride("margin_right", marginValue);

```

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [margin\_bottom](#class-margincontainer-theme-constant-margin-bottom) | `0` |
| [int](class_int.md#class-int) | [margin\_left](#class-margincontainer-theme-constant-margin-left) | `0` |
| [int](class_int.md#class-int) | [margin\_right](#class-margincontainer-theme-constant-margin-right) | `0` |
| [int](class_int.md#class-int) | [margin\_top](#class-margincontainer-theme-constant-margin-top) | `0` |

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **margin\_bottom** = `0` [🔗](#class-margincontainer-theme-constant-margin-bottom)

Offsets towards the inside direct children of the container by this amount of pixels from the bottom.

* * *

[int](class_int.md#class-int) **margin\_left** = `0` [🔗](#class-margincontainer-theme-constant-margin-left)

Offsets towards the inside direct children of the container by this amount of pixels from the left.

* * *

[int](class_int.md#class-int) **margin\_right** = `0` [🔗](#class-margincontainer-theme-constant-margin-right)

Offsets towards the inside direct children of the container by this amount of pixels from the right.

* * *

[int](class_int.md#class-int) **margin\_top** = `0` [🔗](#class-margincontainer-theme-constant-margin-top)

Offsets towards the inside direct children of the container by this amount of pixels from the top.

[Previous](class_lookatmodifier3d.md "LookAtModifier3D") [Next](class_marker2d.md "Marker2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lookatmodifier3d.md "LookAtModifier3D") [Next](class_marker2d.md "Marker2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).