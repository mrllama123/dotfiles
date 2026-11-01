---
title: SpringBoneCollision3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_springbonecollision3d.html
crawled_at: "2026-08-13T10:37:53+12:00"
content_hash: cd0d273650ea733c6b2d5642a2257c4d7bd3491a65c9263d504e8f8d268bf831
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpringBoneCollision3D

* * *

# SpringBoneCollision3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [SpringBoneCollisionCapsule3D](class_springbonecollisioncapsule3d.md#class-springbonecollisioncapsule3d), [SpringBoneCollisionPlane3D](class_springbonecollisionplane3d.md#class-springbonecollisionplane3d), [SpringBoneCollisionSphere3D](class_springbonecollisionsphere3d.md#class-springbonecollisionsphere3d)

A base class of the collision that interacts with [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d).

## Description

A collision can be a child of [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d). If it is not a child of [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d), it has no effect.

The colliding and sliding are done in the [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d)'s modification process in order of its collision list which is set by [SpringBoneSimulator3D.set\_collision\_path()](class_springbonesimulator3d.md#class-springbonesimulator3d-method-set-collision-path). If [SpringBoneSimulator3D.are\_all\_child\_collisions\_enabled()](class_springbonesimulator3d.md#class-springbonesimulator3d-method-are-all-child-collisions-enabled) is `true`, the order matches [SceneTree](class_scenetree.md#class-scenetree).

If [bone](#class-springbonecollision3d-property-bone) is set, it synchronizes with the bone pose of the ancestor [Skeleton3D](class_skeleton3d.md#class-skeleton3d), which is done in before the [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d)'s modification process as the pre-process.

**Warning:** A scaled **SpringBoneCollision3D** will likely not behave as expected. Make sure that the parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) and its bones are not scaled.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bone](#class-springbonecollision3d-property-bone) | `-1` |
| [String](class_string.md#class-string) | [bone\_name](#class-springbonecollision3d-property-bone-name) | `""` |
| [Vector3](class_vector3.md#class-vector3) | [position\_offset](#class-springbonecollision3d-property-position-offset) |  |
| [Quaternion](class_quaternion.md#class-quaternion) | [rotation\_offset](#class-springbonecollision3d-property-rotation-offset) |  |

## Methods

|     |     |
| --- | --- |
| [Skeleton3D](class_skeleton3d.md#class-skeleton3d) | [get\_skeleton](#class-springbonecollision3d-method-get-skeleton)() const |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bone** = `-1` [🔗](#class-springbonecollision3d-property-bone)

- void **set\_bone**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bone**()


The index of the attached bone.

* * *

[String](class_string.md#class-string) **bone\_name** = `""` [🔗](#class-springbonecollision3d-property-bone-name)

- void **set\_bone\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_bone\_name**()


The name of the attached bone.

* * *

[Vector3](class_vector3.md#class-vector3) **position\_offset** [🔗](#class-springbonecollision3d-property-position-offset)

- void **set\_position\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_position\_offset**()


The offset of the position from [Skeleton3D](class_skeleton3d.md#class-skeleton3d)'s [bone](#class-springbonecollision3d-property-bone) pose position.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **rotation\_offset** [🔗](#class-springbonecollision3d-property-rotation-offset)

- void **set\_rotation\_offset**(value: [Quaternion](class_quaternion.md#class-quaternion))

- [Quaternion](class_quaternion.md#class-quaternion) **get\_rotation\_offset**()


The offset of the rotation from [Skeleton3D](class_skeleton3d.md#class-skeleton3d)'s [bone](#class-springbonecollision3d-property-bone) pose rotation.

* * *

## Method Descriptions

[Skeleton3D](class_skeleton3d.md#class-skeleton3d) **get\_skeleton**() const [🔗](#class-springbonecollision3d-method-get-skeleton)

Get parent [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node of the parent [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d) if found.

[Previous](class_springarm3d.md "SpringArm3D") [Next](class_springbonecollisioncapsule3d.md "SpringBoneCollisionCapsule3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_springarm3d.md "SpringArm3D") [Next](class_springbonecollisioncapsule3d.md "SpringBoneCollisionCapsule3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).