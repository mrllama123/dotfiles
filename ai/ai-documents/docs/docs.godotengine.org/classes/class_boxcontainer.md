---
title: BoxContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_boxcontainer.html
crawled_at: "2026-08-13T10:22:03+12:00"
content_hash: d3ef6b9d91661f847b368b9625174a2620671946fbbfeccfba79358aa566a124
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BoxContainer

* * *

# BoxContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer), [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer)

A container that arranges its child controls horizontally or vertically.

## Description

A container that arranges its child controls horizontally or vertically, rearranging them automatically when their minimum size changes.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [AlignmentMode](#enum-boxcontainer-alignmentmode) | [alignment](#class-boxcontainer-property-alignment) | `0` |
| [bool](class_bool.md#class-bool) | [vertical](#class-boxcontainer-property-vertical) | `false` |

## Methods

|     |     |
| --- | --- |
| [Control](class_control.md#class-control) | [add\_spacer](#class-boxcontainer-method-add-spacer)(begin: [bool](class_bool.md#class-bool)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [separation](#class-boxcontainer-theme-constant-separation) | `4` |

* * *

## Enumerations

enum **AlignmentMode**: [🔗](#enum-boxcontainer-alignmentmode)

[AlignmentMode](#enum-boxcontainer-alignmentmode) **ALIGNMENT\_BEGIN** = `0`

The child controls will be arranged at the beginning of the container, i.e. top if orientation is vertical, left if orientation is horizontal (right for RTL layout).

[AlignmentMode](#enum-boxcontainer-alignmentmode) **ALIGNMENT\_CENTER** = `1`

The child controls will be centered in the container.

[AlignmentMode](#enum-boxcontainer-alignmentmode) **ALIGNMENT\_END** = `2`

The child controls will be arranged at the end of the container, i.e. bottom if orientation is vertical, right if orientation is horizontal (left for RTL layout).

* * *

## Property Descriptions

[AlignmentMode](#enum-boxcontainer-alignmentmode) **alignment** = `0` [🔗](#class-boxcontainer-property-alignment)

- void **set\_alignment**(value: [AlignmentMode](#enum-boxcontainer-alignmentmode))

- [AlignmentMode](#enum-boxcontainer-alignmentmode) **get\_alignment**()


The alignment of the container's children (must be one of [ALIGNMENT\_BEGIN](#class-boxcontainer-constant-alignment-begin), [ALIGNMENT\_CENTER](#class-boxcontainer-constant-alignment-center), or [ALIGNMENT\_END](#class-boxcontainer-constant-alignment-end)).

* * *

[bool](class_bool.md#class-bool) **vertical** = `false` [🔗](#class-boxcontainer-property-vertical)

- void **set\_vertical**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_vertical**()


If `true`, the **BoxContainer** will arrange its children vertically, rather than horizontally.

Can't be changed when using [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) and [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer).

* * *

## Method Descriptions

[Control](class_control.md#class-control) **add\_spacer**(begin: [bool](class_bool.md#class-bool)) [🔗](#class-boxcontainer-method-add-spacer)

Adds a [Control](class_control.md#class-control) node to the box as a spacer. If `begin` is `true`, it will insert the [Control](class_control.md#class-control) node in front of all other children.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **separation** = `4` [🔗](#class-boxcontainer-theme-constant-separation)

The space between the **BoxContainer**'s elements, in pixels.

[Previous](class_boneconstraint3d.md "BoneConstraint3D") [Next](class_button.md "Button")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_boneconstraint3d.md "BoneConstraint3D") [Next](class_button.md "Button")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).