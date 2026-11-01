---
title: TriangleMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_trianglemesh.html
crawled_at: "2026-08-13T10:42:56+12:00"
content_hash: b64788868853e99d0f7285ad4cdae3d7759fe5a6d51684e38fa0106079ac0b78
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TriangleMesh

* * *

# TriangleMesh

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Triangle geometry for efficient, physicsless intersection queries.

## Description

Creates a bounding volume hierarchy (BVH) tree structure around triangle geometry.

The triangle BVH tree can be used for efficient intersection queries without involving a physics engine.

For example, this can be used in editor tools to select objects with complex shapes based on the mouse cursor position.

**Performance:** Creating the BVH tree for complex geometry is a slow process and best done in a background thread.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [create\_from\_faces](#class-trianglemesh-method-create-from-faces)(faces: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_faces](#class-trianglemesh-method-get-faces)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [intersect\_ray](#class-trianglemesh-method-intersect-ray)(begin: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [intersect\_segment](#class-trianglemesh-method-intersect-segment)(begin: [Vector3](class_vector3.md#class-vector3), end: [Vector3](class_vector3.md#class-vector3)) const |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **create\_from\_faces**(faces: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array)) [🔗](#class-trianglemesh-method-create-from-faces)

Creates the BVH tree from an array of faces. Each 3 vertices of the input `faces` array represent one triangle (face).

Returns `true` if the tree is successfully built, `false` otherwise.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_faces**() const [🔗](#class-trianglemesh-method-get-faces)

Returns a copy of the geometry faces. Each 3 vertices of the array represent one triangle (face).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **intersect\_ray**(begin: [Vector3](class_vector3.md#class-vector3), dir: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-trianglemesh-method-intersect-ray)

Tests for intersection with a ray starting at `begin` and facing `dir` and extending toward infinity.

If an intersection with a triangle happens, returns a [Dictionary](class_dictionary.md#class-dictionary) with the following fields:

`position`: The position on the intersected triangle.

`normal`: The normal of the intersected triangle.

`face_index`: The index of the intersected triangle.

Returns an empty [Dictionary](class_dictionary.md#class-dictionary) if no intersection happens.

See also [intersect\_segment()](#class-trianglemesh-method-intersect-segment), which is similar but uses a finite-length segment.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **intersect\_segment**(begin: [Vector3](class_vector3.md#class-vector3), end: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-trianglemesh-method-intersect-segment)

Tests for intersection with a segment going from `begin` to `end`.

If an intersection with a triangle happens returns a [Dictionary](class_dictionary.md#class-dictionary) with the following fields:

`position`: The position on the intersected triangle.

`normal`: The normal of the intersected triangle.

`face_index`: The index of the intersected triangle.

Returns an empty [Dictionary](class_dictionary.md#class-dictionary) if no intersection happens.

See also [intersect\_ray()](#class-trianglemesh-method-intersect-ray), which is similar but uses an infinite-length ray.

[Previous](class_treeitem.md "TreeItem") [Next](class_tween.md "Tween")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_treeitem.md "TreeItem") [Next](class_tween.md "Tween")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).