---
title: FlowContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_flowcontainer.html
crawled_at: "2026-08-13T10:33:20+12:00"
content_hash: a1ab5984d53bde7270323cbe26c4cf0fd745397fa95680028256d7e51e0695ba
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FlowContainer

* * *

# FlowContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HFlowContainer](class_hflowcontainer.md#class-hflowcontainer), [VFlowContainer](class_vflowcontainer.md#class-vflowcontainer)

A container that arranges its child controls horizontally or vertically and wraps them around at the borders.

## Description

A container that arranges its child controls horizontally or vertically and wraps them around at the borders. This is similar to how text in a book wraps around when no more words can fit on a line.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [AlignmentMode](#enum-flowcontainer-alignmentmode) | [alignment](#class-flowcontainer-property-alignment) | `0` |
| [LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) | [last\_wrap\_alignment](#class-flowcontainer-property-last-wrap-alignment) | `0` |
| [bool](class_bool.md#class-bool) | [reverse\_fill](#class-flowcontainer-property-reverse-fill) | `false` |
| [bool](class_bool.md#class-bool) | [vertical](#class-flowcontainer-property-vertical) | `false` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_line\_count](#class-flowcontainer-method-get-line-count)() const |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [h\_separation](#class-flowcontainer-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [v\_separation](#class-flowcontainer-theme-constant-v-separation) | `4` |

* * *

## Enumerations

enum **AlignmentMode**: [🔗](#enum-flowcontainer-alignmentmode)

[AlignmentMode](#enum-flowcontainer-alignmentmode) **ALIGNMENT\_BEGIN** = `0`

The child controls will be arranged at the beginning of the container, i.e. top if orientation is vertical, left if orientation is horizontal (right for RTL layout).

[AlignmentMode](#enum-flowcontainer-alignmentmode) **ALIGNMENT\_CENTER** = `1`

The child controls will be centered in the container.

[AlignmentMode](#enum-flowcontainer-alignmentmode) **ALIGNMENT\_END** = `2`

The child controls will be arranged at the end of the container, i.e. bottom if orientation is vertical, right if orientation is horizontal (left for RTL layout).

* * *

enum **LastWrapAlignmentMode**: [🔗](#enum-flowcontainer-lastwrapalignmentmode)

[LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **LAST\_WRAP\_ALIGNMENT\_INHERIT** = `0`

The last partially filled row or column will wrap aligned to the previous row or column in accordance with [alignment](#class-flowcontainer-property-alignment).

[LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **LAST\_WRAP\_ALIGNMENT\_BEGIN** = `1`

The last partially filled row or column will wrap aligned to the beginning of the previous row or column.

[LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **LAST\_WRAP\_ALIGNMENT\_CENTER** = `2`

The last partially filled row or column will wrap aligned to the center of the previous row or column.

[LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **LAST\_WRAP\_ALIGNMENT\_END** = `3`

The last partially filled row or column will wrap aligned to the end of the previous row or column.

* * *

## Property Descriptions

[AlignmentMode](#enum-flowcontainer-alignmentmode) **alignment** = `0` [🔗](#class-flowcontainer-property-alignment)

- void **set\_alignment**(value: [AlignmentMode](#enum-flowcontainer-alignmentmode))

- [AlignmentMode](#enum-flowcontainer-alignmentmode) **get\_alignment**()


The alignment of the container's children (must be one of [ALIGNMENT\_BEGIN](#class-flowcontainer-constant-alignment-begin), [ALIGNMENT\_CENTER](#class-flowcontainer-constant-alignment-center), or [ALIGNMENT\_END](#class-flowcontainer-constant-alignment-end)).

* * *

[LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **last\_wrap\_alignment** = `0` [🔗](#class-flowcontainer-property-last-wrap-alignment)

- void **set\_last\_wrap\_alignment**(value: [LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode))

- [LastWrapAlignmentMode](#enum-flowcontainer-lastwrapalignmentmode) **get\_last\_wrap\_alignment**()


The wrap behavior of the last, partially filled row or column (must be one of [LAST\_WRAP\_ALIGNMENT\_INHERIT](#class-flowcontainer-constant-last-wrap-alignment-inherit), [LAST\_WRAP\_ALIGNMENT\_BEGIN](#class-flowcontainer-constant-last-wrap-alignment-begin), [LAST\_WRAP\_ALIGNMENT\_CENTER](#class-flowcontainer-constant-last-wrap-alignment-center), or [LAST\_WRAP\_ALIGNMENT\_END](#class-flowcontainer-constant-last-wrap-alignment-end)).

* * *

[bool](class_bool.md#class-bool) **reverse\_fill** = `false` [🔗](#class-flowcontainer-property-reverse-fill)

- void **set\_reverse\_fill**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_reverse\_fill**()


If `true`, reverses fill direction. Horizontal **FlowContainer** s will fill rows bottom to top, vertical **FlowContainer** s will fill columns right to left.

When using a vertical **FlowContainer** with a right to left [Control.layout\_direction](class_control.md#class-control-property-layout-direction), columns will fill left to right instead.

* * *

[bool](class_bool.md#class-bool) **vertical** = `false` [🔗](#class-flowcontainer-property-vertical)

- void **set\_vertical**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_vertical**()


If `true`, the **FlowContainer** will arrange its children vertically, rather than horizontally.

Can't be changed when using [HFlowContainer](class_hflowcontainer.md#class-hflowcontainer) and [VFlowContainer](class_vflowcontainer.md#class-vflowcontainer).

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_line\_count**() const [🔗](#class-flowcontainer-method-get-line-count)

Returns the current line count.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-flowcontainer-theme-constant-h-separation)

The horizontal separation of child nodes.

* * *

[int](class_int.md#class-int) **v\_separation** = `4` [🔗](#class-flowcontainer-theme-constant-v-separation)

The vertical separation of child nodes.

[Previous](class_filesystemdock.md "FileSystemDock") [Next](class_fogvolume.md "FogVolume")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_filesystemdock.md "FileSystemDock") [Next](class_fogvolume.md "FogVolume")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).