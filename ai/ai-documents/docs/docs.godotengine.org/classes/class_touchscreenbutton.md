---
title: TouchScreenButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_touchscreenbutton.html
crawled_at: "2026-08-13T10:40:35+12:00"
content_hash: 7fe25df1a53fde4a670dcb056e6ba830223211744b381afc0d25cc279115d332
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TouchScreenButton

* * *

# TouchScreenButton

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Button for touch screen devices for gameplay use.

## Description

TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike [Button](class_button.md#class-button), TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input.

This node inherits from [Node2D](class_node2d.md#class-node2d). Unlike with [Control](class_control.md#class-control) nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use [Button](class_button.md#class-button) nodes instead. To make button nodes react to touch events, you can enable [ProjectSettings.input\_devices/pointing/emulate\_mouse\_from\_touch](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-mouse-from-touch) in the Project Settings.

You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [action](#class-touchscreenbutton-property-action) | `""` |
| [BitMap](class_bitmap.md#class-bitmap) | [bitmask](#class-touchscreenbutton-property-bitmask) |  |
| [bool](class_bool.md#class-bool) | [passby\_press](#class-touchscreenbutton-property-passby-press) | `false` |
| [Shape2D](class_shape2d.md#class-shape2d) | [shape](#class-touchscreenbutton-property-shape) |  |
| [bool](class_bool.md#class-bool) | [shape\_centered](#class-touchscreenbutton-property-shape-centered) | `true` |
| [bool](class_bool.md#class-bool) | [shape\_visible](#class-touchscreenbutton-property-shape-visible) | `true` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_normal](#class-touchscreenbutton-property-texture-normal) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_pressed](#class-touchscreenbutton-property-texture-pressed) |  |
| [VisibilityMode](#enum-touchscreenbutton-visibilitymode) | [visibility\_mode](#class-touchscreenbutton-property-visibility-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_pressed](#class-touchscreenbutton-method-is-pressed)() const |

* * *

## Signals

**pressed**() [🔗](#class-touchscreenbutton-signal-pressed)

Emitted when the button is pressed (down).

* * *

**released**() [🔗](#class-touchscreenbutton-signal-released)

Emitted when the button is released (up).

* * *

## Enumerations

enum **VisibilityMode**: [🔗](#enum-touchscreenbutton-visibilitymode)

[VisibilityMode](#enum-touchscreenbutton-visibilitymode) **VISIBILITY\_ALWAYS** = `0`

Always visible.

[VisibilityMode](#enum-touchscreenbutton-visibilitymode) **VISIBILITY\_TOUCHSCREEN\_ONLY** = `1`

Visible on touch screens only.

* * *

## Property Descriptions

[String](class_string.md#class-string) **action** = `""` [🔗](#class-touchscreenbutton-property-action)

- void **set\_action**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_action**()


The button's action. Actions can be handled with [InputEventAction](class_inputeventaction.md#class-inputeventaction).

* * *

[BitMap](class_bitmap.md#class-bitmap) **bitmask** [🔗](#class-touchscreenbutton-property-bitmask)

- void **set\_bitmask**(value: [BitMap](class_bitmap.md#class-bitmap))

- [BitMap](class_bitmap.md#class-bitmap) **get\_bitmask**()


The button's bitmask.

* * *

[bool](class_bool.md#class-bool) **passby\_press** = `false` [🔗](#class-touchscreenbutton-property-passby-press)

- void **set\_passby\_press**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_passby\_press\_enabled**()


If `true`, the [pressed](#class-touchscreenbutton-signal-pressed) and [released](#class-touchscreenbutton-signal-released) signals are emitted whenever a pressed finger goes in and out of the button, even if the pressure started outside the active area of the button.

**Note:** This is a "pass-by" (not "bypass") press mode.

* * *

[Shape2D](class_shape2d.md#class-shape2d) **shape** [🔗](#class-touchscreenbutton-property-shape)

- void **set\_shape**(value: [Shape2D](class_shape2d.md#class-shape2d))

- [Shape2D](class_shape2d.md#class-shape2d) **get\_shape**()


The button's shape.

* * *

[bool](class_bool.md#class-bool) **shape\_centered** = `true` [🔗](#class-touchscreenbutton-property-shape-centered)

- void **set\_shape\_centered**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shape\_centered**()


If `true`, the button's shape is centered in the provided texture. If no texture is used, this property has no effect.

* * *

[bool](class_bool.md#class-bool) **shape\_visible** = `true` [🔗](#class-touchscreenbutton-property-shape-visible)

- void **set\_shape\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shape\_visible**()


If `true`, the button's shape is visible in the editor.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_normal** [🔗](#class-touchscreenbutton-property-texture-normal)

- void **set\_texture\_normal**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_normal**()


The button's texture for the normal state.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_pressed** [🔗](#class-touchscreenbutton-property-texture-pressed)

- void **set\_texture\_pressed**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_pressed**()


The button's texture for the pressed state.

* * *

[VisibilityMode](#enum-touchscreenbutton-visibilitymode) **visibility\_mode** = `0` [🔗](#class-touchscreenbutton-property-visibility-mode)

- void **set\_visibility\_mode**(value: [VisibilityMode](#enum-touchscreenbutton-visibilitymode))

- [VisibilityMode](#enum-touchscreenbutton-visibilitymode) **get\_visibility\_mode**()


The button's visibility mode.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_pressed**() const [🔗](#class-touchscreenbutton-method-is-pressed)

Returns `true` if this button is currently pressed.

[Previous](class_timer.md "Timer") [Next](class_tree.md "Tree")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_timer.md "Timer") [Next](class_tree.md "Tree")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).