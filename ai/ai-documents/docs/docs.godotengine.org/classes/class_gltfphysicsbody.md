---
title: GLTFPhysicsBody — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfphysicsbody.html
crawled_at: "2026-08-13T10:39:20+12:00"
content_hash: 2fed1115e27dd766f9bb9f54935deefc67600f76531a0d6bacaf422276f0a295
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFPhysicsBody

* * *

# GLTFPhysicsBody

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF physics body.

## Description

Represents a physics body as an intermediary between the `OMI_physics_body` glTF data and Godot's nodes, and it's abstracted in a way that allows adding support for different glTF physics extensions in the future.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [OMI\_physics\_body glTF extension](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_body)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [angular\_velocity](#class-gltfphysicsbody-property-angular-velocity) | `Vector3(0, 0, 0)` |
| [String](class_string.md#class-string) | [body\_type](#class-gltfphysicsbody-property-body-type) | `"rigid"` |
| [Vector3](class_vector3.md#class-vector3) | [center\_of\_mass](#class-gltfphysicsbody-property-center-of-mass) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [inertia\_diagonal](#class-gltfphysicsbody-property-inertia-diagonal) | `Vector3(0, 0, 0)` |
| [Quaternion](class_quaternion.md#class-quaternion) | [inertia\_orientation](#class-gltfphysicsbody-property-inertia-orientation) | `Quaternion(0, 0, 0, 1)` |
| [Basis](class_basis.md#class-basis) | [inertia\_tensor](#class-gltfphysicsbody-property-inertia-tensor) | `Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [linear\_velocity](#class-gltfphysicsbody-property-linear-velocity) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [mass](#class-gltfphysicsbody-property-mass) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [GLTFPhysicsBody](#class-gltfphysicsbody) | [from\_dictionary](#class-gltfphysicsbody-method-from-dictionary)(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static |
| [GLTFPhysicsBody](#class-gltfphysicsbody) | [from\_node](#class-gltfphysicsbody-method-from-node)(body\_node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) static |
| [Dictionary](class_dictionary.md#class-dictionary) | [to\_dictionary](#class-gltfphysicsbody-method-to-dictionary)() const |
| [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) | [to\_node](#class-gltfphysicsbody-method-to-node)() const |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **angular\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-gltfphysicsbody-property-angular-velocity)

- void **set\_angular\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_angular\_velocity**()


The angular velocity of the physics body, in radians per second. This is only used when the body type is "rigid" or "vehicle".

* * *

[String](class_string.md#class-string) **body\_type** = `"rigid"` [🔗](#class-gltfphysicsbody-property-body-type)

- void **set\_body\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_body\_type**()


The type of the body.

When importing, this controls what type of [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) node Godot should generate. Valid values are `"static"`, `"animatable"`, `"character"`, `"rigid"`, `"vehicle"`, and `"trigger"`.

When exporting, this will be squashed down to one of `"static"`, `"kinematic"`, or `"dynamic"` motion types, or the `"trigger"` property.

* * *

[Vector3](class_vector3.md#class-vector3) **center\_of\_mass** = `Vector3(0, 0, 0)` [🔗](#class-gltfphysicsbody-property-center-of-mass)

- void **set\_center\_of\_mass**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_center\_of\_mass**()


The center of mass of the body, in meters. This is in local space relative to the body. By default, the center of the mass is the body's origin.

* * *

[Vector3](class_vector3.md#class-vector3) **inertia\_diagonal** = `Vector3(0, 0, 0)` [🔗](#class-gltfphysicsbody-property-inertia-diagonal)

- void **set\_inertia\_diagonal**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_inertia\_diagonal**()


The inertia strength of the physics body, in kilogram meter squared (kg⋅m²). This represents the inertia around the principle axes, the diagonal of the inertia tensor matrix. This is only used when the body type is "rigid" or "vehicle".

When converted to a Godot [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node, if this value is zero, then the inertia will be calculated automatically.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **inertia\_orientation** = `Quaternion(0, 0, 0, 1)` [🔗](#class-gltfphysicsbody-property-inertia-orientation)

- void **set\_inertia\_orientation**(value: [Quaternion](class_quaternion.md#class-quaternion))

- [Quaternion](class_quaternion.md#class-quaternion) **get\_inertia\_orientation**()


The inertia orientation of the physics body. This defines the rotation of the inertia's principle axes relative to the object's local axes. This is only used when the body type is "rigid" or "vehicle" and [inertia\_diagonal](#class-gltfphysicsbody-property-inertia-diagonal) is set to a non-zero value.

* * *

[Basis](class_basis.md#class-basis) **inertia\_tensor** = `Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)` [🔗](#class-gltfphysicsbody-property-inertia-tensor)

- void **set\_inertia\_tensor**(value: [Basis](class_basis.md#class-basis))

- [Basis](class_basis.md#class-basis) **get\_inertia\_tensor**()


**Deprecated:** This property may be changed or removed in future versions.

The inertia tensor of the physics body, in kilogram meter squared (kg⋅m²). This is only used when the body type is "rigid" or "vehicle".

When converted to a Godot [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d) node, if this value is zero, then the inertia will be calculated automatically.

* * *

[Vector3](class_vector3.md#class-vector3) **linear\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-gltfphysicsbody-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_linear\_velocity**()


The linear velocity of the physics body, in meters per second. This is only used when the body type is "rigid" or "vehicle".

* * *

[float](class_float.md#class-float) **mass** = `1.0` [🔗](#class-gltfphysicsbody-property-mass)

- void **set\_mass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mass**()


The mass of the physics body, in kilograms. This is only used when the body type is "rigid" or "vehicle".

* * *

## Method Descriptions

[GLTFPhysicsBody](#class-gltfphysicsbody) **from\_dictionary**(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static [🔗](#class-gltfphysicsbody-method-from-dictionary)

Creates a new GLTFPhysicsBody instance by parsing the given [Dictionary](class_dictionary.md#class-dictionary) in the `OMI_physics_body` glTF extension format.

* * *

[GLTFPhysicsBody](#class-gltfphysicsbody) **from\_node**(body\_node: [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d)) static [🔗](#class-gltfphysicsbody-method-from-node)

Creates a new GLTFPhysicsBody instance from the given Godot [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) node.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **to\_dictionary**() const [🔗](#class-gltfphysicsbody-method-to-dictionary)

Serializes this GLTFPhysicsBody instance into a [Dictionary](class_dictionary.md#class-dictionary). It will be in the format expected by the `OMI_physics_body` glTF extension.

* * *

[CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **to\_node**() const [🔗](#class-gltfphysicsbody-method-to-node)

Converts this GLTFPhysicsBody instance into a Godot [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) node.

[Previous](class_gltfnode.md "GLTFNode") [Next](class_gltfphysicsshape.md "GLTFPhysicsShape")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfnode.md "GLTFNode") [Next](class_gltfphysicsshape.md "GLTFPhysicsShape")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).