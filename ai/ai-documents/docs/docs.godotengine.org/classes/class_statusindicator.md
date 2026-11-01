---
title: StatusIndicator — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_statusindicator.html
crawled_at: "2026-08-13T10:39:27+12:00"
content_hash: de38d810f6a86be70505abc386f89e238beb90ca315162478e03ed037aee6b0f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StatusIndicator

* * *

# StatusIndicator

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Application status indicator (aka notification area icon).

**Note:** Status indicator is implemented on macOS and Windows.

## Properties

|     |     |     |
| --- | --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [icon](#class-statusindicator-property-icon) |  |
| [NodePath](class_nodepath.md#class-nodepath) | [menu](#class-statusindicator-property-menu) | `NodePath("")` |
| [String](class_string.md#class-string) | [tooltip](#class-statusindicator-property-tooltip) | `""` |
| [bool](class_bool.md#class-bool) | [visible](#class-statusindicator-property-visible) | `true` |

## Methods

|     |     |
| --- | --- |
| [Rect2](class_rect2.md#class-rect2) | [get\_rect](#class-statusindicator-method-get-rect)() const |

* * *

## Signals

**pressed**(mouse\_button: [int](class_int.md#class-int), mouse\_position: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-statusindicator-signal-pressed)

Emitted when the status indicator is pressed.

* * *

## Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **icon** [🔗](#class-statusindicator-property-icon)

- void **set\_icon**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_icon**()


Status indicator icon.

* * *

[NodePath](class_nodepath.md#class-nodepath) **menu** = `NodePath("")` [🔗](#class-statusindicator-property-menu)

- void **set\_menu**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_menu**()


Status indicator native popup menu. If this is set, the [pressed](#class-statusindicator-signal-pressed) signal is not emitted.

**Note:** Native popup is only supported if [NativeMenu](class_nativemenu.md#class-nativemenu) supports [NativeMenu.FEATURE\_POPUP\_MENU](class_nativemenu.md#class-nativemenu-constant-feature-popup-menu) feature.

* * *

[String](class_string.md#class-string) **tooltip** = `""` [🔗](#class-statusindicator-property-tooltip)

- void **set\_tooltip**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_tooltip**()


Status indicator tooltip.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-statusindicator-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, the status indicator is visible.

* * *

## Method Descriptions

[Rect2](class_rect2.md#class-rect2) **get\_rect**() const [🔗](#class-statusindicator-method-get-rect)

Returns the status indicator rectangle in screen coordinates. If this status indicator is not visible, returns an empty [Rect2](class_rect2.md#class-rect2).

[Previous](class_staticbody3d.md "StaticBody3D") [Next](class_subviewport.md "SubViewport")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_staticbody3d.md "StaticBody3D") [Next](class_subviewport.md "SubViewport")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).