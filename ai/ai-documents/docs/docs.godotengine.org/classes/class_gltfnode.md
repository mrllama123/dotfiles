---
title: GLTFNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfnode.html
crawled_at: "2026-08-13T10:24:02+12:00"
content_hash: 695b25e8e47ef55b85e70e25bad2d496979f2293432c3e6a87a007e46659405c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFNode

* * *

# GLTFNode

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

glTF node class.

## Description

Represents a glTF node. glTF nodes may have names, transforms, children (other glTF nodes), and more specialized properties (represented by their own classes).

glTF nodes generally exist inside of [GLTFState](class_gltfstate.md#class-gltfstate) which represents all data of a glTF file. Most of GLTFNode's properties are indices of other data in the glTF file. You can extend a glTF node with additional properties by using [get\_additional\_data()](#class-gltfnode-method-get-additional-data) and [set\_additional\_data()](#class-gltfnode-method-set-additional-data).

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [glTF scene and node spec](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_004_ScenesNodes.md")


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [camera](#class-gltfnode-property-camera) | `-1` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [children](#class-gltfnode-property-children) | `PackedInt32Array()` |
| [int](class_int.md#class-int) | [height](#class-gltfnode-property-height) | `-1` |
| [int](class_int.md#class-int) | [light](#class-gltfnode-property-light) | `-1` |
| [int](class_int.md#class-int) | [mesh](#class-gltfnode-property-mesh) | `-1` |
| [String](class_string.md#class-string) | [original\_name](#class-gltfnode-property-original-name) | `""` |
| [int](class_int.md#class-int) | [parent](#class-gltfnode-property-parent) | `-1` |
| [Vector3](class_vector3.md#class-vector3) | [position](#class-gltfnode-property-position) | `Vector3(0, 0, 0)` |
| [Quaternion](class_quaternion.md#class-quaternion) | [rotation](#class-gltfnode-property-rotation) | `Quaternion(0, 0, 0, 1)` |
| [Vector3](class_vector3.md#class-vector3) | [scale](#class-gltfnode-property-scale) | `Vector3(1, 1, 1)` |
| [int](class_int.md#class-int) | [skeleton](#class-gltfnode-property-skeleton) | `-1` |
| [int](class_int.md#class-int) | [skin](#class-gltfnode-property-skin) | `-1` |
| [bool](class_bool.md#class-bool) | [visible](#class-gltfnode-property-visible) | `true` |
| [Transform3D](class_transform3d.md#class-transform3d) | [xform](#class-gltfnode-property-xform) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [append\_child\_index](#class-gltfnode-method-append-child-index)(child\_index: [int](class_int.md#class-int)) |
| [Variant](class_variant.md#class-variant) | [get\_additional\_data](#class-gltfnode-method-get-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname)) |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_scene\_node\_path](#class-gltfnode-method-get-scene-node-path)(gltf\_state: [GLTFState](class_gltfstate.md#class-gltfstate), handle\_skeletons: [bool](class_bool.md#class-bool) = true) |
| void | [set\_additional\_data](#class-gltfnode-method-set-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **camera** = `-1` [🔗](#class-gltfnode-property-camera)

- void **set\_camera**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_camera**()


If this glTF node is a camera, the index of the [GLTFCamera](class_gltfcamera.md#class-gltfcamera) in the [GLTFState](class_gltfstate.md#class-gltfstate) that describes the camera's properties. If `-1`, this node is not a camera.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **children** = `PackedInt32Array()` [🔗](#class-gltfnode-property-children)

- void **set\_children**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_children**()


The indices of the child nodes in the [GLTFState](class_gltfstate.md#class-gltfstate). If this glTF node has no children, this will be an empty array.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[int](class_int.md#class-int) **height** = `-1` [🔗](#class-gltfnode-property-height)

- void **set\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_height**()


How deep into the node hierarchy this node is. A root node will have a height of 0, its children will have a height of 1, and so on. If -1, the height has not been calculated.

* * *

[int](class_int.md#class-int) **light** = `-1` [🔗](#class-gltfnode-property-light)

- void **set\_light**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_light**()


If this glTF node is a light, the index of the [GLTFLight](class_gltflight.md#class-gltflight) in the [GLTFState](class_gltfstate.md#class-gltfstate) that describes the light's properties. If -1, this node is not a light.

* * *

[int](class_int.md#class-int) **mesh** = `-1` [🔗](#class-gltfnode-property-mesh)

- void **set\_mesh**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_mesh**()


If this glTF node is a mesh, the index of the [GLTFMesh](class_gltfmesh.md#class-gltfmesh) in the [GLTFState](class_gltfstate.md#class-gltfstate) that describes the mesh's properties. If -1, this node is not a mesh.

* * *

[String](class_string.md#class-string) **original\_name** = `""` [🔗](#class-gltfnode-property-original-name)

- void **set\_original\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_name**()


The original name of the node.

* * *

[int](class_int.md#class-int) **parent** = `-1` [🔗](#class-gltfnode-property-parent)

- void **set\_parent**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_parent**()


The index of the parent node in the [GLTFState](class_gltfstate.md#class-gltfstate). If -1, this node is a root node.

* * *

[Vector3](class_vector3.md#class-vector3) **position** = `Vector3(0, 0, 0)` [🔗](#class-gltfnode-property-position)

- void **set\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_position**()


The position of the glTF node relative to its parent.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **rotation** = `Quaternion(0, 0, 0, 1)` [🔗](#class-gltfnode-property-rotation)

- void **set\_rotation**(value: [Quaternion](class_quaternion.md#class-quaternion))

- [Quaternion](class_quaternion.md#class-quaternion) **get\_rotation**()


The rotation of the glTF node relative to its parent.

* * *

[Vector3](class_vector3.md#class-vector3) **scale** = `Vector3(1, 1, 1)` [🔗](#class-gltfnode-property-scale)

- void **set\_scale**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_scale**()


The scale of the glTF node relative to its parent.

* * *

[int](class_int.md#class-int) **skeleton** = `-1` [🔗](#class-gltfnode-property-skeleton)

- void **set\_skeleton**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_skeleton**()


If this glTF node has a skeleton, the index of the [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton) in the [GLTFState](class_gltfstate.md#class-gltfstate) that describes the skeleton's properties. If -1, this node does not have a skeleton.

* * *

[int](class_int.md#class-int) **skin** = `-1` [🔗](#class-gltfnode-property-skin)

- void **set\_skin**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_skin**()


If this glTF node has a skin, the index of the [GLTFSkin](class_gltfskin.md#class-gltfskin) in the [GLTFState](class_gltfstate.md#class-gltfstate) that describes the skin's properties. If -1, this node does not have a skin.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-gltfnode-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_visible**()


If `true`, the GLTF node is visible. If `false`, the GLTF node is not visible. This is translated to the [Node3D.visible](class_node3d.md#class-node3d-property-visible) property in the Godot scene, and is exported to `KHR_node_visibility` when `false`.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **xform** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-gltfnode-property-xform)

- void **set\_xform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_xform**()


The transform of the glTF node relative to its parent. This property is usually unused since the position, rotation, and scale properties are preferred.

* * *

## Method Descriptions

void **append\_child\_index**(child\_index: [int](class_int.md#class-int)) [🔗](#class-gltfnode-method-append-child-index)

Appends the given child node index to the [children](#class-gltfnode-property-children) array.

* * *

[Variant](class_variant.md#class-variant) **get\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltfnode-method-get-additional-data)

Gets additional arbitrary data in this **GLTFNode** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_scene\_node\_path**(gltf\_state: [GLTFState](class_gltfstate.md#class-gltfstate), handle\_skeletons: [bool](class_bool.md#class-bool) = true) [🔗](#class-gltfnode-method-get-scene-node-path)

Returns the [NodePath](class_nodepath.md#class-nodepath) that this GLTF node will have in the Godot scene tree after being imported. This is useful when importing glTF object model pointers with [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty), for handling extensions such as `KHR_animation_pointer` or `KHR_interactivity`.

If `handle_skeletons` is `true`, paths to skeleton bone glTF nodes will be resolved properly. For example, a path that would be `^"A/B/C/Bone1/Bone2/Bone3"` if `false` will become `^"A/B/C/Skeleton3D:Bone3"`.

* * *

void **set\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) [🔗](#class-gltfnode-method-set-additional-data)

Sets additional arbitrary data in this **GLTFNode** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The first argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.

[Previous](class_gltfmesh.md "GLTFMesh") [Next](class_gltfphysicsbody.md "GLTFPhysicsBody")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfmesh.md "GLTFMesh") [Next](class_gltfphysicsbody.md "GLTFPhysicsBody")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).