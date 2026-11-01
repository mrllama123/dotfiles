---
title: FoldableGroup — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_foldablegroup.html
crawled_at: "2026-08-13T10:20:12+12:00"
content_hash: e8d3542e9a7221975856065cc231e8804fdfe2cb0b380e6bdc03c5c50d0291a3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FoldableGroup

* * *

# FoldableGroup

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A group of foldable containers that doesn't allow more than one container to be expanded at a time.

## Description

A group of [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer)-derived nodes. Only one container can be expanded at a time.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_folding\_all](#class-foldablegroup-property-allow-folding-all) | `false` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `true` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer)\] | [get\_containers](#class-foldablegroup-method-get-containers)() const |
| [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer) | [get\_expanded\_container](#class-foldablegroup-method-get-expanded-container)() const |

* * *

## Signals

**expanded**(container: [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer)) [🔗](#class-foldablegroup-signal-expanded)

Emitted when one of the containers of the group is expanded.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_folding\_all** = `false` [🔗](#class-foldablegroup-property-allow-folding-all)

- void **set\_allow\_folding\_all**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_folding\_all**()


If `true`, it is possible to fold all containers in this FoldableGroup.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer)\] **get\_containers**() const [🔗](#class-foldablegroup-method-get-containers)

Returns an [Array](class_array.md#class-array) of [FoldableContainer](class_foldablecontainer.md#class-foldablecontainer) s that have this as their FoldableGroup (see [FoldableContainer.foldable\_group](class_foldablecontainer.md#class-foldablecontainer-property-foldable-group)). This is equivalent to [ButtonGroup](class_buttongroup.md#class-buttongroup) but for FoldableContainers.

* * *

[FoldableContainer](class_foldablecontainer.md#class-foldablecontainer) **get\_expanded\_container**() const [🔗](#class-foldablegroup-method-get-expanded-container)

Returns the current expanded container.

[Previous](class_fogmaterial.md "FogMaterial") [Next](class_font.md "Font")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fogmaterial.md "FogMaterial") [Next](class_font.md "Font")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).