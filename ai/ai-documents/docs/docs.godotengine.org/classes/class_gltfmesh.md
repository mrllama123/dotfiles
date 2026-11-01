---
title: GLTFMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfmesh.html
crawled_at: "2026-08-13T10:35:47+12:00"
content_hash: 4ca2fe6db11a7d7ec0229e26cab2ea2c1c27c06ff6f1dfcfc9e7d8911b10192b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFMesh

* * *

# GLTFMesh

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

GLTFMesh represents a glTF mesh.

## Description

GLTFMesh handles 3D mesh data imported from glTF files. It includes properties for blend channels, blend weights, instance materials, and the mesh itself.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [blend\_weights](#class-gltfmesh-property-blend-weights) | `PackedFloat32Array()` |
| [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\] | [instance\_materials](#class-gltfmesh-property-instance-materials) | `[]` |
| [ImporterMesh](class_importermesh.md#class-importermesh) | [mesh](#class-gltfmesh-property-mesh) |  |
| [String](class_string.md#class-string) | [original\_name](#class-gltfmesh-property-original-name) | `""` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_additional\_data](#class-gltfmesh-method-get-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_additional\_data](#class-gltfmesh-method-set-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) |

* * *

## Property Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **blend\_weights** = `PackedFloat32Array()` [🔗](#class-gltfmesh-property-blend-weights)

- void **set\_blend\_weights**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_blend\_weights**()


An array of floats representing the blend weights of the mesh.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

[Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\] **instance\_materials** = `[]` [🔗](#class-gltfmesh-property-instance-materials)

- void **set\_instance\_materials**(value: [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\])

- [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\] **get\_instance\_materials**()


An array of Material objects representing the materials used in the mesh.

* * *

[ImporterMesh](class_importermesh.md#class-importermesh) **mesh** [🔗](#class-gltfmesh-property-mesh)

- void **set\_mesh**(value: [ImporterMesh](class_importermesh.md#class-importermesh))

- [ImporterMesh](class_importermesh.md#class-importermesh) **get\_mesh**()


The [ImporterMesh](class_importermesh.md#class-importermesh) object representing the mesh itself.

* * *

[String](class_string.md#class-string) **original\_name** = `""` [🔗](#class-gltfmesh-property-original-name)

- void **set\_original\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_name**()


The original name of the mesh.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltfmesh-method-get-additional-data)

Gets additional arbitrary data in this **GLTFMesh** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.

* * *

void **set\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) [🔗](#class-gltfmesh-method-set-additional-data)

Sets additional arbitrary data in this **GLTFMesh** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The first argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.

[Previous](class_gltflight.md "GLTFLight") [Next](class_gltfnode.md "GLTFNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltflight.md "GLTFLight") [Next](class_gltfnode.md "GLTFNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).