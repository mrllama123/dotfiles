---
title: AspectRatioContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_aspectratiocontainer.html
crawled_at: "2026-08-13T10:19:37+12:00"
content_hash: 8123a529ab9344f9dcc407b5d8bc94a4adc02920a70c50e01e90b5d7048e6a02
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AspectRatioContainer

* * *

# AspectRatioContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container that preserves the proportions of its child controls.

## Description

A container type that arranges its child controls in a way that preserves their proportions automatically when the container is resized. Useful when a container has a dynamic size and the child nodes must adjust their sizes accordingly without losing their aspect ratios.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [AlignmentMode](#enum-aspectratiocontainer-alignmentmode) | [alignment\_horizontal](#class-aspectratiocontainer-property-alignment-horizontal) | `1` |
| [AlignmentMode](#enum-aspectratiocontainer-alignmentmode) | [alignment\_vertical](#class-aspectratiocontainer-property-alignment-vertical) | `1` |
| [float](class_float.md#class-float) | [ratio](#class-aspectratiocontainer-property-ratio) | `1.0` |
| [StretchMode](#enum-aspectratiocontainer-stretchmode) | [stretch\_mode](#class-aspectratiocontainer-property-stretch-mode) | `2` |

* * *

## Enumerations

enum **StretchMode**: [🔗](#enum-aspectratiocontainer-stretchmode)

[StretchMode](#enum-aspectratiocontainer-stretchmode) **STRETCH\_WIDTH\_CONTROLS\_HEIGHT** = `0`

The height of child controls is automatically adjusted based on the width of the container.

[StretchMode](#enum-aspectratiocontainer-stretchmode) **STRETCH\_HEIGHT\_CONTROLS\_WIDTH** = `1`

The width of child controls is automatically adjusted based on the height of the container.

[StretchMode](#enum-aspectratiocontainer-stretchmode) **STRETCH\_FIT** = `2`

The bounding rectangle of child controls is automatically adjusted to fit inside the container while keeping the aspect ratio.

[StretchMode](#enum-aspectratiocontainer-stretchmode) **STRETCH\_COVER** = `3`

The width and height of child controls is automatically adjusted to make their bounding rectangle cover the entire area of the container while keeping the aspect ratio.

When the bounding rectangle of child controls exceed the container's size and [Control.clip\_contents](class_control.md#class-control-property-clip-contents) is enabled, this allows to show only the container's area restricted by its own bounding rectangle.

* * *

enum **AlignmentMode**: [🔗](#enum-aspectratiocontainer-alignmentmode)

[AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **ALIGNMENT\_BEGIN** = `0`

Aligns child controls with the beginning (left or top) of the container.

[AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **ALIGNMENT\_CENTER** = `1`

Aligns child controls with the center of the container.

[AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **ALIGNMENT\_END** = `2`

Aligns child controls with the end (right or bottom) of the container.

* * *

## Property Descriptions

[AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **alignment\_horizontal** = `1` [🔗](#class-aspectratiocontainer-property-alignment-horizontal)

- void **set\_alignment\_horizontal**(value: [AlignmentMode](#enum-aspectratiocontainer-alignmentmode))

- [AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **get\_alignment\_horizontal**()


Specifies the horizontal relative position of child controls.

* * *

[AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **alignment\_vertical** = `1` [🔗](#class-aspectratiocontainer-property-alignment-vertical)

- void **set\_alignment\_vertical**(value: [AlignmentMode](#enum-aspectratiocontainer-alignmentmode))

- [AlignmentMode](#enum-aspectratiocontainer-alignmentmode) **get\_alignment\_vertical**()


Specifies the vertical relative position of child controls.

* * *

[float](class_float.md#class-float) **ratio** = `1.0` [🔗](#class-aspectratiocontainer-property-ratio)

- void **set\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ratio**()


The aspect ratio to enforce on child controls. This is the width divided by the height. The ratio depends on the [stretch\_mode](#class-aspectratiocontainer-property-stretch-mode).

* * *

[StretchMode](#enum-aspectratiocontainer-stretchmode) **stretch\_mode** = `2` [🔗](#class-aspectratiocontainer-property-stretch-mode)

- void **set\_stretch\_mode**(value: [StretchMode](#enum-aspectratiocontainer-stretchmode))

- [StretchMode](#enum-aspectratiocontainer-stretchmode) **get\_stretch\_mode**()


The stretch mode used to align child controls.

[Previous](class_area3d.md "Area3D") [Next](class_audiolistener2d.md "AudioListener2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_area3d.md "Area3D") [Next](class_audiolistener2d.md "AudioListener2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).