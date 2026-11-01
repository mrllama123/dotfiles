---
title: PhysicsDirectSpaceState3DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectspacestate3dextension.html
crawled_at: "2026-08-13T10:18:58+12:00"
content_hash: 2e7ffc1f6f0875d872afa7fe80f6fcb7efd91210fee289e2ecf1059581c5cfbe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectSpaceState3DExtension

* * *

# PhysicsDirectSpaceState3DExtension

**Inherits:** [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) implementations.

## Description

This class extends [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d).

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_cast\_motion](#class-physicsdirectspacestate3dextension-private-method-cast-motion)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), closest\_safe: `float*`, closest\_unsafe: `float*`, info: `PhysicsServer3DExtensionShapeRestInfo*`) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_collide\_shape](#class-physicsdirectspacestate3dextension-private-method-collide-shape)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `void*`, max\_results: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_closest\_point\_to\_object\_volume](#class-physicsdirectspacestate3dextension-private-method-get-closest-point-to-object-volume)(object: [RID](class_rid.md#class-rid), point: [Vector3](class_vector3.md#class-vector3)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_intersect\_point](#class-physicsdirectspacestate3dextension-private-method-intersect-point)(position: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `PhysicsServer3DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_intersect\_ray](#class-physicsdirectspacestate3dextension-private-method-intersect-ray)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), hit\_from\_inside: [bool](class_bool.md#class-bool), hit\_back\_faces: [bool](class_bool.md#class-bool), pick\_ray: [bool](class_bool.md#class-bool), result: `PhysicsServer3DExtensionRayResult*`) virtualrequired |
| [int](class_int.md#class-int) | [\_intersect\_shape](#class-physicsdirectspacestate3dextension-private-method-intersect-shape)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), result\_count: `PhysicsServer3DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_rest\_info](#class-physicsdirectspacestate3dextension-private-method-rest-info)(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), rest\_info: `PhysicsServer3DExtensionShapeRestInfo*`) virtualrequired |
| [bool](class_bool.md#class-bool) | [is\_body\_excluded\_from\_query](#class-physicsdirectspacestate3dextension-method-is-body-excluded-from-query)(body: [RID](class_rid.md#class-rid)) const |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_cast\_motion**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), closest\_safe: `float*`, closest\_unsafe: `float*`, info: `PhysicsServer3DExtensionShapeRestInfo*`) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-cast-motion)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_collide\_shape**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `void*`, max\_results: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-collide-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_closest\_point\_to\_object\_volume**(object: [RID](class_rid.md#class-rid), point: [Vector3](class_vector3.md#class-vector3)) virtualrequiredconst [🔗](#class-physicsdirectspacestate3dextension-private-method-get-closest-point-to-object-volume)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_intersect\_point**(position: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), results: `PhysicsServer3DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-intersect-point)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_intersect\_ray**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), hit\_from\_inside: [bool](class_bool.md#class-bool), hit\_back\_faces: [bool](class_bool.md#class-bool), pick\_ray: [bool](class_bool.md#class-bool), result: `PhysicsServer3DExtensionRayResult*`) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-intersect-ray)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_intersect\_shape**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), result\_count: `PhysicsServer3DExtensionShapeResult*`, max\_results: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-intersect-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_rest\_info**(shape\_rid: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), collision\_mask: [int](class_int.md#class-int), collide\_with\_bodies: [bool](class_bool.md#class-bool), collide\_with\_areas: [bool](class_bool.md#class-bool), rest\_info: `PhysicsServer3DExtensionShapeRestInfo*`) virtualrequired [🔗](#class-physicsdirectspacestate3dextension-private-method-rest-info)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **is\_body\_excluded\_from\_query**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsdirectspacestate3dextension-method-is-body-excluded-from-query)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_physicsdirectspacestate3d.md "PhysicsDirectSpaceState3D") [Next](class_physicspointqueryparameters2d.md "PhysicsPointQueryParameters2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectspacestate3d.md "PhysicsDirectSpaceState3D") [Next](class_physicspointqueryparameters2d.md "PhysicsPointQueryParameters2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).