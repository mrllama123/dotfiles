---
title: PhysicsServer3DRenderingServerHandler — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver3drenderingserverhandler.html
crawled_at: "2026-08-13T10:43:01+12:00"
content_hash: 0d2479ff1b3fb77060f77bd45ded9eb001a039469131964672ebd1bc34cd353d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer3DRenderingServerHandler

* * *

# PhysicsServer3DRenderingServerHandler

**Inherits:** [Object](class_object.md#class-object)

A class used to provide [PhysicsServer3DExtension.\_soft\_body\_update\_rendering\_server()](class_physicsserver3dextension.md#class-physicsserver3dextension-private-method-soft-body-update-rendering-server) with a rendering handler for soft bodies.

## Methods

|     |     |
| --- | --- |
| void | [\_set\_aabb](#class-physicsserver3drenderingserverhandler-private-method-set-aabb)(aabb: [AABB](class_aabb.md#class-aabb)) virtualrequired |
| void | [\_set\_normal](#class-physicsserver3drenderingserverhandler-private-method-set-normal)(vertex\_id: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_set\_vertex](#class-physicsserver3drenderingserverhandler-private-method-set-vertex)(vertex\_id: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [set\_aabb](#class-physicsserver3drenderingserverhandler-method-set-aabb)(aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [set\_normal](#class-physicsserver3drenderingserverhandler-method-set-normal)(vertex\_id: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_vertex](#class-physicsserver3drenderingserverhandler-method-set-vertex)(vertex\_id: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) |

* * *

## Method Descriptions

void **\_set\_aabb**(aabb: [AABB](class_aabb.md#class-aabb)) virtualrequired [🔗](#class-physicsserver3drenderingserverhandler-private-method-set-aabb)

Called by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) to set the bounding box for the [SoftBody3D](class_softbody3d.md#class-softbody3d).

* * *

void **\_set\_normal**(vertex\_id: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3drenderingserverhandler-private-method-set-normal)

Called by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) to set the normal for the [SoftBody3D](class_softbody3d.md#class-softbody3d) vertex at the index specified by `vertex_id`.

**Note:** The `normal` parameter used to be of type `const void*` prior to Godot 4.2.

* * *

void **\_set\_vertex**(vertex\_id: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3drenderingserverhandler-private-method-set-vertex)

Called by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) to set the position for the [SoftBody3D](class_softbody3d.md#class-softbody3d) vertex at the index specified by `vertex_id`.

**Note:** The `vertex` parameter used to be of type `const void*` prior to Godot 4.2.

* * *

void **set\_aabb**(aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-physicsserver3drenderingserverhandler-method-set-aabb)

Sets the bounding box for the [SoftBody3D](class_softbody3d.md#class-softbody3d).

* * *

void **set\_normal**(vertex\_id: [int](class_int.md#class-int), normal: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3drenderingserverhandler-method-set-normal)

Sets the normal for the [SoftBody3D](class_softbody3d.md#class-softbody3d) vertex at the index specified by `vertex_id`.

* * *

void **set\_vertex**(vertex\_id: [int](class_int.md#class-int), vertex: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3drenderingserverhandler-method-set-vertex)

Sets the position for the [SoftBody3D](class_softbody3d.md#class-softbody3d) vertex at the index specified by `vertex_id`.

[Previous](class_physicsserver3dmanager.md "PhysicsServer3DManager") [Next](class_physicsshapequeryparameters2d.md "PhysicsShapeQueryParameters2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver3dmanager.md "PhysicsServer3DManager") [Next](class_physicsshapequeryparameters2d.md "PhysicsShapeQueryParameters2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).