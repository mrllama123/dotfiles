---
title: GLTFPhysicsShape — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfphysicsshape.html
crawled_at: "2026-08-13T10:42:46+12:00"
content_hash: 65bb76ce668d9a8b40e1b27c2c44593951ca59e887a9680433bd8c24e88eff53
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFPhysicsShape

* * *

# GLTFPhysicsShape

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF physics shape.

## Description

Represents a physics shape as defined by the `OMI_physics_shape` or `OMI_collider` glTF extensions. This class is an intermediary between the glTF data and Godot's nodes, and it's abstracted in a way that allows adding support for different glTF physics extensions in the future.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [OMI\_physics\_shape glTF extension](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape)

- [OMI\_collider glTF extension](https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-gltfphysicsshape-property-height) | `2.0` |
| [ImporterMesh](class_importermesh.md#class-importermesh) | [importer\_mesh](#class-gltfphysicsshape-property-importer-mesh) |  |
| [bool](class_bool.md#class-bool) | [is\_trigger](#class-gltfphysicsshape-property-is-trigger) | `false` |
| [int](class_int.md#class-int) | [mesh\_index](#class-gltfphysicsshape-property-mesh-index) | `-1` |
| [float](class_float.md#class-float) | [radius](#class-gltfphysicsshape-property-radius) | `0.5` |
| [String](class_string.md#class-string) | [shape\_type](#class-gltfphysicsshape-property-shape-type) | `""` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gltfphysicsshape-property-size) | `Vector3(1, 1, 1)` |

## Methods

|     |     |
| --- | --- |
| [GLTFPhysicsShape](#class-gltfphysicsshape) | [from\_dictionary](#class-gltfphysicsshape-method-from-dictionary)(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static |
| [GLTFPhysicsShape](#class-gltfphysicsshape) | [from\_node](#class-gltfphysicsshape-method-from-node)(shape\_node: [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d)) static |
| [GLTFPhysicsShape](#class-gltfphysicsshape) | [from\_resource](#class-gltfphysicsshape-method-from-resource)(shape\_resource: [Shape3D](class_shape3d.md#class-shape3d)) static |
| [Dictionary](class_dictionary.md#class-dictionary) | [to\_dictionary](#class-gltfphysicsshape-method-to-dictionary)() const |
| [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) | [to\_node](#class-gltfphysicsshape-method-to-node)(cache\_shapes: [bool](class_bool.md#class-bool) = false) |
| [Shape3D](class_shape3d.md#class-shape3d) | [to\_resource](#class-gltfphysicsshape-method-to-resource)(cache\_shapes: [bool](class_bool.md#class-bool) = false) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-gltfphysicsshape-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


The height of the shape, in meters. This is only used when the shape type is `"capsule"` or `"cylinder"`. This value should not be negative, and for `"capsule"` it should be at least twice the radius.

* * *

[ImporterMesh](class_importermesh.md#class-importermesh) **importer\_mesh** [🔗](#class-gltfphysicsshape-property-importer-mesh)

- void **set\_importer\_mesh**(value: [ImporterMesh](class_importermesh.md#class-importermesh))

- [ImporterMesh](class_importermesh.md#class-importermesh) **get\_importer\_mesh**()


The [ImporterMesh](class_importermesh.md#class-importermesh) resource of the shape. This is only used when the shape type is `"hull"` (convex hull) or `"trimesh"` (concave trimesh).

* * *

[bool](class_bool.md#class-bool) **is\_trigger** = `false` [🔗](#class-gltfphysicsshape-property-is-trigger)

- void **set\_is\_trigger**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_is\_trigger**()


If `true`, indicates that this shape is a trigger. For Godot, this means that the shape should be a child of an [Area3D](class_area3d.md#class-area3d) node.

This is the only variable not used in the [to\_node()](#class-gltfphysicsshape-method-to-node) method, it's intended to be used alongside when deciding where to add the generated node as a child.

* * *

[int](class_int.md#class-int) **mesh\_index** = `-1` [🔗](#class-gltfphysicsshape-property-mesh-index)

- void **set\_mesh\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_mesh\_index**()


The index of the shape's mesh in the glTF file. This is only used when the shape type is `"hull"` (convex hull) or `"trimesh"` (concave trimesh).

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-gltfphysicsshape-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the shape, in meters. This is only used when the shape type is `"capsule"`, `"cylinder"`, or `"sphere"`. This value should not be negative.

* * *

[String](class_string.md#class-string) **shape\_type** = `""` [🔗](#class-gltfphysicsshape-property-shape-type)

- void **set\_shape\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_shape\_type**()


The type of shape this shape represents. Valid values are `"box"`, `"capsule"`, `"cylinder"`, `"sphere"`, `"hull"`, and `"trimesh"`.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(1, 1, 1)` [🔗](#class-gltfphysicsshape-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The size of the shape, in meters. This is only used when the shape type is `"box"`, and it represents the `"diameter"` of the box. This value should not be negative.

* * *

## Method Descriptions

[GLTFPhysicsShape](#class-gltfphysicsshape) **from\_dictionary**(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static [🔗](#class-gltfphysicsshape-method-from-dictionary)

Creates a new GLTFPhysicsShape instance by parsing the given [Dictionary](class_dictionary.md#class-dictionary).

* * *

[GLTFPhysicsShape](#class-gltfphysicsshape) **from\_node**(shape\_node: [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d)) static [🔗](#class-gltfphysicsshape-method-from-node)

Creates a new GLTFPhysicsShape instance from the given Godot [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) node.

* * *

[GLTFPhysicsShape](#class-gltfphysicsshape) **from\_resource**(shape\_resource: [Shape3D](class_shape3d.md#class-shape3d)) static [🔗](#class-gltfphysicsshape-method-from-resource)

Creates a new GLTFPhysicsShape instance from the given Godot [Shape3D](class_shape3d.md#class-shape3d) resource.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **to\_dictionary**() const [🔗](#class-gltfphysicsshape-method-to-dictionary)

Serializes this GLTFPhysicsShape instance into a [Dictionary](class_dictionary.md#class-dictionary) in the format defined by `OMI_physics_shape`.

* * *

[CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) **to\_node**(cache\_shapes: [bool](class_bool.md#class-bool) = false) [🔗](#class-gltfphysicsshape-method-to-node)

Converts this GLTFPhysicsShape instance into a Godot [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) node.

* * *

[Shape3D](class_shape3d.md#class-shape3d) **to\_resource**(cache\_shapes: [bool](class_bool.md#class-bool) = false) [🔗](#class-gltfphysicsshape-method-to-resource)

Converts this GLTFPhysicsShape instance into a Godot [Shape3D](class_shape3d.md#class-shape3d) resource.

[Previous](class_gltfphysicsbody.md "GLTFPhysicsBody") [Next](class_gltfskeleton.md "GLTFSkeleton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfphysicsbody.md "GLTFPhysicsBody") [Next](class_gltfskeleton.md "GLTFSkeleton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).