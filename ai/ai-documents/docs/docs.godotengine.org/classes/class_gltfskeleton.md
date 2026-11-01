---
title: GLTFSkeleton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfskeleton.html
crawled_at: "2026-08-13T10:37:52+12:00"
content_hash: d318c2c1cc6671ec80bc56cd4ebd669cf7e0c6d3e2d98748ac0c8c503df34fab
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFSkeleton

* * *

# GLTFSkeleton

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [joints](#class-gltfskeleton-property-joints) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [roots](#class-gltfskeleton-property-roots) | `PackedInt32Array()` |

## Methods

|     |     |
| --- | --- |
| [BoneAttachment3D](class_boneattachment3d.md#class-boneattachment3d) | [get\_bone\_attachment](#class-gltfskeleton-method-get-bone-attachment)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_bone\_attachment\_count](#class-gltfskeleton-method-get-bone-attachment-count)() |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_godot\_bone\_node](#class-gltfskeleton-method-get-godot-bone-node)() |
| [Skeleton3D](class_skeleton3d.md#class-skeleton3d) | [get\_godot\_skeleton](#class-gltfskeleton-method-get-godot-skeleton)() |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [get\_unique\_names](#class-gltfskeleton-method-get-unique-names)() |
| void | [set\_godot\_bone\_node](#class-gltfskeleton-method-set-godot-bone-node)(godot\_bone\_node: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [set\_unique\_names](#class-gltfskeleton-method-set-unique-names)(unique\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) |

* * *

## Property Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **joints** = `PackedInt32Array()` [🔗](#class-gltfskeleton-property-joints)

- void **set\_joints**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_joints**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **roots** = `PackedInt32Array()` [🔗](#class-gltfskeleton-property-roots)

- void **set\_roots**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_roots**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

## Method Descriptions

[BoneAttachment3D](class_boneattachment3d.md#class-boneattachment3d) **get\_bone\_attachment**(idx: [int](class_int.md#class-int)) [🔗](#class-gltfskeleton-method-get-bone-attachment)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **get\_bone\_attachment\_count**() [🔗](#class-gltfskeleton-method-get-bone-attachment-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_godot\_bone\_node**() [🔗](#class-gltfskeleton-method-get-godot-bone-node)

Returns a [Dictionary](class_dictionary.md#class-dictionary) that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.

* * *

[Skeleton3D](class_skeleton3d.md#class-skeleton3d) **get\_godot\_skeleton**() [🔗](#class-gltfskeleton-method-get-godot-skeleton)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_unique\_names**() [🔗](#class-gltfskeleton-method-get-unique-names)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_godot\_bone\_node**(godot\_bone\_node: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-gltfskeleton-method-set-godot-bone-node)

Sets a [Dictionary](class_dictionary.md#class-dictionary) that maps skeleton bone indices to the indices of glTF nodes. This property is unused during import, and only set during export. In a glTF file, a bone is a node, so Godot converts skeleton bones to glTF nodes.

* * *

void **set\_unique\_names**(unique\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) [🔗](#class-gltfskeleton-method-set-unique-names)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_gltfphysicsshape.md "GLTFPhysicsShape") [Next](class_gltfskin.md "GLTFSkin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfphysicsshape.md "GLTFPhysicsShape") [Next](class_gltfskin.md "GLTFSkin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).