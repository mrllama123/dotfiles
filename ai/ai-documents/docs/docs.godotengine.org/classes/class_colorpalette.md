---
title: ColorPalette — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_colorpalette.html
crawled_at: "2026-08-13T10:35:19+12:00"
content_hash: c4a9e45920d4b49440fd2912d0e2118b1e2a69ae1805ecae66777507239bb8d2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ColorPalette

* * *

# ColorPalette

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A resource class for managing a palette of colors, which can be loaded and saved using [ColorPicker](class_colorpicker.md#class-colorpicker).

## Description

The **ColorPalette** resource is designed to store and manage a collection of colors. This resource is useful in scenarios where a predefined set of colors is required, such as for creating themes, designing user interfaces, or managing game assets. The built-in [ColorPicker](class_colorpicker.md#class-colorpicker) control can also make use of **ColorPalette** without additional code.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [colors](#class-colorpalette-property-colors) | `PackedColorArray()` |

* * *

## Property Descriptions

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **colors** = `PackedColorArray()` [🔗](#class-colorpalette-property-colors)

- void **set\_colors**(value: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray))

- [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_colors**()


A [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) containing the colors in the palette.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

[Previous](class_codehighlighter.md "CodeHighlighter") [Next](class_compositor.md "Compositor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_codehighlighter.md "CodeHighlighter") [Next](class_compositor.md "Compositor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).