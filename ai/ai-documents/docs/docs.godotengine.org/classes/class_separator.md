---
title: Separator — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_separator.html
crawled_at: "2026-08-13T10:34:34+12:00"
content_hash: 75afa6d9e40081652e747b7984c1d503637107e14ca0dd3ab0f7eefe7c198f62
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Separator

* * *

# Separator

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HSeparator](class_hseparator.md#class-hseparator), [VSeparator](class_vseparator.md#class-vseparator)

Abstract base class for separators.

## Description

Abstract base class for separators, used for separating other controls. **Separator** s are purely visual and normally drawn as a [StyleBoxLine](class_styleboxline.md#class-styleboxline).

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [separation](#class-separator-theme-constant-separation) | `0` |
| [StyleBox](class_stylebox.md#class-stylebox) | [separator](#class-separator-theme-style-separator) |  |

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **separation** = `0` [🔗](#class-separator-theme-constant-separation)

The size of the area covered by the separator. Effectively works like a minimum width/height.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **separator** [🔗](#class-separator-theme-style-separator)

The style for the separator line. Works best with [StyleBoxLine](class_styleboxline.md#class-styleboxline) (remember to enable [StyleBoxLine.vertical](class_styleboxline.md#class-styleboxline-property-vertical) for [VSeparator](class_vseparator.md#class-vseparator)).

[Previous](class_scrollcontainer.md "ScrollContainer") [Next](class_shaderglobalsoverride.md "ShaderGlobalsOverride")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scrollcontainer.md "ScrollContainer") [Next](class_shaderglobalsoverride.md "ShaderGlobalsOverride")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).