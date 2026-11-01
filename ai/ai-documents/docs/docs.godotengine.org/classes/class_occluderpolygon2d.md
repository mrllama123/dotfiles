---
title: OccluderPolygon2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_occluderpolygon2d.html
crawled_at: "2026-08-13T10:25:24+12:00"
content_hash: 12f942d25d413d847281ab184208c98816a468f90511e6b6eaa21f13a0ad71d8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OccluderPolygon2D

* * *

# OccluderPolygon2D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Defines a 2D polygon for LightOccluder2D.

## Description

Editor facility that helps you draw a 2D polygon used as resource for [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [closed](#class-occluderpolygon2d-property-closed) | `true` |
| [CullMode](#enum-occluderpolygon2d-cullmode) | [cull\_mode](#class-occluderpolygon2d-property-cull-mode) | `0` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-occluderpolygon2d-property-polygon) | `PackedVector2Array()` |

* * *

## Enumerations

enum **CullMode**: [🔗](#enum-occluderpolygon2d-cullmode)

[CullMode](#enum-occluderpolygon2d-cullmode) **CULL\_DISABLED** = `0`

Culling is disabled. See [cull\_mode](#class-occluderpolygon2d-property-cull-mode).

[CullMode](#enum-occluderpolygon2d-cullmode) **CULL\_CLOCKWISE** = `1`

Culling is performed in the clockwise direction. See [cull\_mode](#class-occluderpolygon2d-property-cull-mode).

[CullMode](#enum-occluderpolygon2d-cullmode) **CULL\_COUNTER\_CLOCKWISE** = `2`

Culling is performed in the counterclockwise direction. See [cull\_mode](#class-occluderpolygon2d-property-cull-mode).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **closed** = `true` [🔗](#class-occluderpolygon2d-property-closed)

- void **set\_closed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_closed**()


If `true`, closes the polygon. A closed OccluderPolygon2D occludes the light coming from any direction. An opened OccluderPolygon2D occludes the light only at its outline's direction.

* * *

[CullMode](#enum-occluderpolygon2d-cullmode) **cull\_mode** = `0` [🔗](#class-occluderpolygon2d-property-cull-mode)

- void **set\_cull\_mode**(value: [CullMode](#enum-occluderpolygon2d-cullmode))

- [CullMode](#enum-occluderpolygon2d-cullmode) **get\_cull\_mode**()


The culling mode to use.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array()` [🔗](#class-occluderpolygon2d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


A [Vector2](class_vector2.md#class-vector2) array with the index for polygon's vertices positions.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

[Previous](class_occluder3d.md "Occluder3D") [Next](class_oggpacketsequence.md "OggPacketSequence")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_occluder3d.md "Occluder3D") [Next](class_oggpacketsequence.md "OggPacketSequence")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).