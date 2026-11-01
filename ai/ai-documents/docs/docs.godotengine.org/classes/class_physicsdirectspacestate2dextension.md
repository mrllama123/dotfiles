---
title: PhysicsDirectSpaceState2DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectspacestate2dextension.html
crawled_at: "2026-08-13T10:33:16+12:00"
content_hash: 60b27a740f1d5d0a34aace0381855f04d6df8f0f9f5830125c9d524234c2cad1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectSpaceState2DExtension

* * *

# PhysicsDirectSpaceState2DExtension

**Inherits:** [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) implementations.

## Description

This class extends [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d).

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_cast\_motion](#class-physicsdirectspacestate2dextension-private-method-cast-motion)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), closest\_safe: `float*`, closest\_unsafe: `float*`) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_collide\_shape](#class-physicsdirectspacestate2dextension-private-method-collide-shape)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `void*`, max\_results: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired |
| [int](class_int.md#class-int) | [\_intersect\_point](#class-physicsdirectspacestate2dextension-private-method-intersect-point)(position: [Vector2](class_vector2.md#class-vector2), canvas\_instance\_id: [int](class_int.md#class-int), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `PhysicsServer2DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_intersect\_ray](#class-physicsdirectspacestate2dextension-private-method-intersect-ray)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), hit\_from\_inside: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionRayResult*`) virtualrequired |
| [int](class_int.md#class-int) | [\_intersect\_shape](#class-physicsdirectspacestate2dextension-private-method-intersect-shape)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_rest\_info](#class-physicsdirectspacestate2dextension-private-method-rest-info)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), rest\_info: `PhysicsServer2DExtensionShapeRestInfo*`) virtualrequired |
| [bool](class_bool.md#class-bool) | [is\_body\_excluded\_from\_query](#class-physicsdirectspacestate2dextension-method-is-body-excluded-from-query)(body: [RID](class_rid.md#class-rid)) const |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_cast\_motion**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), closest\_safe: `float*`, closest\_unsafe: `float*`) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-cast-motion)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_collide\_shape**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `void*`, max\_results: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-collide-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_intersect\_point**(position: [Vector2](class_vector2.md#class-vector2), canvas\_instance\_id: [int](class_int.md#class-int), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `PhysicsServer2DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-intersect-point)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_intersect\_ray**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), hit\_from\_inside: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionRayResult*`) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-intersect-ray)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_intersect\_shape**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-intersect-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_rest\_info**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), rest\_info: `PhysicsServer2DExtensionShapeRestInfo*`) virtualrequired [🔗](#class-physicsdirectspacestate2dextension-private-method-rest-info)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **is\_body\_excluded\_from\_query**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsdirectspacestate2dextension-method-is-body-excluded-from-query)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_physicsdirectspacestate2d.md "PhysicsDirectSpaceState2D") [Next](class_physicsdirectspacestate3d.md "PhysicsDirectSpaceState3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectspacestate2d.md "PhysicsDirectSpaceState2D") [Next](class_physicsdirectspacestate3d.md "PhysicsDirectSpaceState3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).