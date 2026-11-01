---
title: RID — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rid.html
crawled_at: "2026-08-13T10:19:54+12:00"
content_hash: c0658685a9fc12c407e8071e357914e9b7c2ef38486b86a0528ad3c007c6ea95
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RID

* * *

# RID

A handle for a [Resource](class_resource.md#class-resource)'s unique identifier.

## Description

The RID [Variant](class_variant.md#class-variant) type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as [DisplayServer](class_displayserver.md#class-displayserver), [RenderingServer](class_renderingserver.md#class-renderingserver), [TextServer](class_textserver.md#class-textserver), etc.

A low-level resource may correspond to a high-level [Resource](class_resource.md#class-resource), such as [Texture](class_texture.md#class-texture) or [Mesh](class_mesh.md#class-mesh).

**Note:** RIDs are only useful during the current session. It won't correspond to a similar resource if sent over a network, or loaded from a file at a later time.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Constructors

|     |     |
| --- | --- |
| [RID](#class-rid) | [RID](#class-rid-constructor-rid)() |
| [RID](#class-rid) | [RID](#class-rid-constructor-rid)(from: [RID](#class-rid)) |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_id](#class-rid-method-get-id)() const |
| [bool](class_bool.md#class-bool) | [is\_valid](#class-rid-method-is-valid)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-rid-operator-neq-rid)(right: [RID](#class-rid)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-rid-operator-lt-rid)(right: [RID](#class-rid)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-rid-operator-lte-rid)(right: [RID](#class-rid)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-rid-operator-eq-rid)(right: [RID](#class-rid)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-rid-operator-gt-rid)(right: [RID](#class-rid)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-rid-operator-gte-rid)(right: [RID](#class-rid)) |

* * *

## Constructor Descriptions

[RID](#class-rid) **RID**() [🔗](#class-rid-constructor-rid)

Constructs an empty **RID** with the invalid ID `0`.

* * *

[RID](#class-rid) **RID**(from: [RID](#class-rid))

Constructs an **RID** as a copy of the given **RID**.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_id**() const [🔗](#class-rid-method-get-id)

Returns the ID of the referenced low-level resource.

* * *

[bool](class_bool.md#class-bool) **is\_valid**() const [🔗](#class-rid-method-is-valid)

Returns `true` if the **RID** is not `0`.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [RID](#class-rid)) [🔗](#class-rid-operator-neq-rid)

Returns `true` if the **RID** s are not equal.

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [RID](#class-rid)) [🔗](#class-rid-operator-lt-rid)

Returns `true` if the **RID**'s ID is less than `right`'s ID.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [RID](#class-rid)) [🔗](#class-rid-operator-lte-rid)

Returns `true` if the **RID**'s ID is less than or equal to `right`'s ID.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [RID](#class-rid)) [🔗](#class-rid-operator-eq-rid)

Returns `true` if both **RID** s are equal, which means they both refer to the same low-level resource.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [RID](#class-rid)) [🔗](#class-rid-operator-gt-rid)

Returns `true` if the **RID**'s ID is greater than `right`'s ID.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [RID](#class-rid)) [🔗](#class-rid-operator-gte-rid)

Returns `true` if the **RID**'s ID is greater than or equal to `right`'s ID.

[Previous](class_rect2i.md "Rect2i") [Next](class_signal.md "Signal")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rect2i.md "Rect2i") [Next](class_signal.md "Signal")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).