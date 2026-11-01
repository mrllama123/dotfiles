---
title: GLTFState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfstate.html
crawled_at: "2026-08-13T10:25:10+12:00"
content_hash: f1106df219c38896c8b01ab18fc67f9b3003141821ced777a675a58dffa5449e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFState

* * *

# GLTFState

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [FBXState](class_fbxstate.md#class-fbxstate)

Represents all data of a glTF file.

## Description

Contains all nodes and resources of a glTF file. This is used by [GLTFDocument](class_gltfdocument.md#class-gltfdocument) as data storage, which allows [GLTFDocument](class_gltfdocument.md#class-gltfdocument) and all [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes to remain stateless.

GLTFState can be populated by [GLTFDocument](class_gltfdocument.md#class-gltfdocument) reading a file or by converting a Godot scene. Then the data can either be used to create a Godot scene or save to a glTF file. The code that converts to/from a Godot scene can be intercepted at arbitrary points by [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes. This allows for custom data to be stored in the glTF file or for custom data to be converted to/from Godot nodes.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [glTF asset header schema](https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/schema/asset.schema.json)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bake\_fps](#class-gltfstate-property-bake-fps) | `30.0` |
| [String](class_string.md#class-string) | [base\_path](#class-gltfstate-property-base-path) | `""` |
| [Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\] | [buffers](#class-gltfstate-property-buffers) | `[]` |
| [String](class_string.md#class-string) | [copyright](#class-gltfstate-property-copyright) | `""` |
| [bool](class_bool.md#class-bool) | [create\_animations](#class-gltfstate-property-create-animations) | `true` |
| [String](class_string.md#class-string) | [filename](#class-gltfstate-property-filename) | `""` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [glb\_data](#class-gltfstate-property-glb-data) | `PackedByteArray()` |
| [bool](class_bool.md#class-bool) | [import\_as\_skeleton\_bones](#class-gltfstate-property-import-as-skeleton-bones) | `false` |
| [Dictionary](class_dictionary.md#class-dictionary) | [json](#class-gltfstate-property-json) | `{}` |
| [int](class_int.md#class-int) | [major\_version](#class-gltfstate-property-major-version) | `0` |
| [int](class_int.md#class-int) | [minor\_version](#class-gltfstate-property-minor-version) | `0` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [root\_nodes](#class-gltfstate-property-root-nodes) | `PackedInt32Array()` |
| [String](class_string.md#class-string) | [scene\_name](#class-gltfstate-property-scene-name) | `""` |
| [bool](class_bool.md#class-bool) | [use\_named\_skin\_binds](#class-gltfstate-property-use-named-skin-binds) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_used\_extension](#class-gltfstate-method-add-used-extension)(extension\_name: [String](class_string.md#class-string), required: [bool](class_bool.md#class-bool)) |
| [int](class_int.md#class-int) | [append\_data\_to\_buffers](#class-gltfstate-method-append-data-to-buffers)(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), deduplication: [bool](class_bool.md#class-bool)) |
| [int](class_int.md#class-int) | [append\_gltf\_node](#class-gltfstate-method-append-gltf-node)(gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), godot\_scene\_node: [Node](class_node.md#class-node), parent\_node\_index: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array)\[ [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor)\] | [get\_accessors](#class-gltfstate-method-get-accessors)() |
| [Variant](class_variant.md#class-variant) | [get\_additional\_data](#class-gltfstate-method-get-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname)) |
| [AnimationPlayer](class_animationplayer.md#class-animationplayer) | [get\_animation\_player](#class-gltfstate-method-get-animation-player)(idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_animation\_players\_count](#class-gltfstate-method-get-animation-players-count)(idx: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array)\[ [GLTFAnimation](class_gltfanimation.md#class-gltfanimation)\] | [get\_animations](#class-gltfstate-method-get-animations)() |
| [Array](class_array.md#class-array)\[ [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview)\] | [get\_buffer\_views](#class-gltfstate-method-get-buffer-views)() |
| [Array](class_array.md#class-array)\[ [GLTFCamera](class_gltfcamera.md#class-gltfcamera)\] | [get\_cameras](#class-gltfstate-method-get-cameras)() |
| [int](class_int.md#class-int) | [get\_handle\_binary\_image](#class-gltfstate-method-get-handle-binary-image)() |
| [Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\] | [get\_images](#class-gltfstate-method-get-images)() |
| [Array](class_array.md#class-array)\[ [GLTFLight](class_gltflight.md#class-gltflight)\] | [get\_lights](#class-gltfstate-method-get-lights)() |
| [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\] | [get\_materials](#class-gltfstate-method-get-materials)() |
| [Array](class_array.md#class-array)\[ [GLTFMesh](class_gltfmesh.md#class-gltfmesh)\] | [get\_meshes](#class-gltfstate-method-get-meshes)() |
| [int](class_int.md#class-int) | [get\_node\_index](#class-gltfstate-method-get-node-index)(scene\_node: [Node](class_node.md#class-node)) |
| [Array](class_array.md#class-array)\[ [GLTFNode](class_gltfnode.md#class-gltfnode)\] | [get\_nodes](#class-gltfstate-method-get-nodes)() |
| [Node](class_node.md#class-node) | [get\_scene\_node](#class-gltfstate-method-get-scene-node)(idx: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array)\[ [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton)\] | [get\_skeletons](#class-gltfstate-method-get-skeletons)() |
| [Array](class_array.md#class-array)\[ [GLTFSkin](class_gltfskin.md#class-gltfskin)\] | [get\_skins](#class-gltfstate-method-get-skins)() |
| [Array](class_array.md#class-array)\[ [GLTFTextureSampler](class_gltftexturesampler.md#class-gltftexturesampler)\] | [get\_texture\_samplers](#class-gltfstate-method-get-texture-samplers)() |
| [Array](class_array.md#class-array)\[ [GLTFTexture](class_gltftexture.md#class-gltftexture)\] | [get\_textures](#class-gltfstate-method-get-textures)() |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [get\_unique\_animation\_names](#class-gltfstate-method-get-unique-animation-names)() |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [get\_unique\_names](#class-gltfstate-method-get-unique-names)() |
| void | [set\_accessors](#class-gltfstate-method-set-accessors)(accessors: [Array](class_array.md#class-array)\[ [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor)\]) |
| void | [set\_additional\_data](#class-gltfstate-method-set-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) |
| void | [set\_animations](#class-gltfstate-method-set-animations)(animations: [Array](class_array.md#class-array)\[ [GLTFAnimation](class_gltfanimation.md#class-gltfanimation)\]) |
| void | [set\_buffer\_views](#class-gltfstate-method-set-buffer-views)(buffer\_views: [Array](class_array.md#class-array)\[ [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview)\]) |
| void | [set\_cameras](#class-gltfstate-method-set-cameras)(cameras: [Array](class_array.md#class-array)\[ [GLTFCamera](class_gltfcamera.md#class-gltfcamera)\]) |
| void | [set\_handle\_binary\_image](#class-gltfstate-method-set-handle-binary-image)(method: [int](class_int.md#class-int)) |
| void | [set\_images](#class-gltfstate-method-set-images)(images: [Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\]) |
| void | [set\_lights](#class-gltfstate-method-set-lights)(lights: [Array](class_array.md#class-array)\[ [GLTFLight](class_gltflight.md#class-gltflight)\]) |
| void | [set\_materials](#class-gltfstate-method-set-materials)(materials: [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\]) |
| void | [set\_meshes](#class-gltfstate-method-set-meshes)(meshes: [Array](class_array.md#class-array)\[ [GLTFMesh](class_gltfmesh.md#class-gltfmesh)\]) |
| void | [set\_nodes](#class-gltfstate-method-set-nodes)(nodes: [Array](class_array.md#class-array)\[ [GLTFNode](class_gltfnode.md#class-gltfnode)\]) |
| void | [set\_skeletons](#class-gltfstate-method-set-skeletons)(skeletons: [Array](class_array.md#class-array)\[ [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton)\]) |
| void | [set\_skins](#class-gltfstate-method-set-skins)(skins: [Array](class_array.md#class-array)\[ [GLTFSkin](class_gltfskin.md#class-gltfskin)\]) |
| void | [set\_texture\_samplers](#class-gltfstate-method-set-texture-samplers)(texture\_samplers: [Array](class_array.md#class-array)\[ [GLTFTextureSampler](class_gltftexturesampler.md#class-gltftexturesampler)\]) |
| void | [set\_textures](#class-gltfstate-method-set-textures)(textures: [Array](class_array.md#class-array)\[ [GLTFTexture](class_gltftexture.md#class-gltftexture)\]) |
| void | [set\_unique\_animation\_names](#class-gltfstate-method-set-unique-animation-names)(unique\_animation\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) |
| void | [set\_unique\_names](#class-gltfstate-method-set-unique-names)(unique\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) |

* * *

## Constants

**HANDLE\_BINARY\_DISCARD\_TEXTURES** = `0` [🔗](#class-gltfstate-constant-handle-binary-discard-textures)

Discards all embedded textures and uses untextured materials.

**HANDLE\_BINARY\_EXTRACT\_TEXTURES** = `1` [🔗](#class-gltfstate-constant-handle-binary-extract-textures)

Extracts embedded textures to be reimported and compressed. Editor only. Acts as uncompressed at runtime.

**HANDLE\_BINARY\_EMBED\_AS\_BASISU** = `2` [🔗](#class-gltfstate-constant-handle-binary-embed-as-basisu)

Embeds textures VRAM compressed with Basis Universal into the generated scene.

**HANDLE\_BINARY\_EMBED\_AS\_UNCOMPRESSED** = `3` [🔗](#class-gltfstate-constant-handle-binary-embed-as-uncompressed)

Embeds textures compressed losslessly into the generated scene, matching old behavior.

* * *

## Property Descriptions

[float](class_float.md#class-float) **bake\_fps** = `30.0` [🔗](#class-gltfstate-property-bake-fps)

- void **set\_bake\_fps**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bake\_fps**()


The baking fps of the animation for either import or export.

* * *

[String](class_string.md#class-string) **base\_path** = `""` [🔗](#class-gltfstate-property-base-path)

- void **set\_base\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_base\_path**()


The folder path associated with this glTF data. This is used to find other files the glTF file references, like images or binary buffers. This will be set during import when appending from a file, and will be set during export when writing to a file.

* * *

[Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\] **buffers** = `[]` [🔗](#class-gltfstate-property-buffers)

- void **set\_buffers**(value: [Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\])

- [Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\] **get\_buffers**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **copyright** = `""` [🔗](#class-gltfstate-property-copyright)

- void **set\_copyright**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_copyright**()


The copyright string in the asset header of the glTF file. This is set during import if present and export if non-empty. See the glTF asset header documentation for more information.

* * *

[bool](class_bool.md#class-bool) **create\_animations** = `true` [🔗](#class-gltfstate-property-create-animations)

- void **set\_create\_animations**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_create\_animations**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **filename** = `""` [🔗](#class-gltfstate-property-filename)

- void **set\_filename**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_filename**()


The file name associated with this glTF data. If it ends with `.gltf`, this is text-based glTF, otherwise this is binary GLB. This will be set during import when appending from a file, and will be set during export when writing to a file. If writing to a buffer, this will be an empty string.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **glb\_data** = `PackedByteArray()` [🔗](#class-gltfstate-property-glb-data)

- void **set\_glb\_data**(value: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_glb\_data**()


The binary buffer attached to a .glb file.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[bool](class_bool.md#class-bool) **import\_as\_skeleton\_bones** = `false` [🔗](#class-gltfstate-property-import-as-skeleton-bones)

- void **set\_import\_as\_skeleton\_bones**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_import\_as\_skeleton\_bones**()


If `true`, forces all GLTFNodes in the document to be bones of a single [Skeleton3D](class_skeleton3d.md#class-skeleton3d) Godot node.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **json** = `{}` [🔗](#class-gltfstate-property-json)

- void **set\_json**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_json**()


The original raw JSON document corresponding to this GLTFState.

* * *

[int](class_int.md#class-int) **major\_version** = `0` [🔗](#class-gltfstate-property-major-version)

- void **set\_major\_version**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_major\_version**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **minor\_version** = `0` [🔗](#class-gltfstate-property-minor-version)

- void **set\_minor\_version**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_minor\_version**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **root\_nodes** = `PackedInt32Array()` [🔗](#class-gltfstate-property-root-nodes)

- void **set\_root\_nodes**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_root\_nodes**()


The root nodes of the glTF file. Typically, a glTF file will only have one scene, and therefore one root node. However, a glTF file may have multiple scenes and therefore multiple root nodes, which will be generated as siblings of each other and as children of the root node of the generated Godot scene.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[String](class_string.md#class-string) **scene\_name** = `""` [🔗](#class-gltfstate-property-scene-name)

- void **set\_scene\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_scene\_name**()


The name of the scene. When importing, if not specified, this will be the file name. When exporting, if specified, the scene name will be saved to the glTF file.

* * *

[bool](class_bool.md#class-bool) **use\_named\_skin\_binds** = `false` [🔗](#class-gltfstate-property-use-named-skin-binds)

- void **set\_use\_named\_skin\_binds**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_named\_skin\_binds**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

void **add\_used\_extension**(extension\_name: [String](class_string.md#class-string), required: [bool](class_bool.md#class-bool)) [🔗](#class-gltfstate-method-add-used-extension)

Appends an extension to the list of extensions used by this glTF file during serialization. If `required` is `true`, the extension will also be added to the list of required extensions. Do not run this in [GLTFDocumentExtension.\_export\_post()](class_gltfdocumentextension.md#class-gltfdocumentextension-private-method-export-post), as that stage is too late to add extensions. The final list is sorted alphabetically.

* * *

[int](class_int.md#class-int) **append\_data\_to\_buffers**(data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), deduplication: [bool](class_bool.md#class-bool)) [🔗](#class-gltfstate-method-append-data-to-buffers)

Appends the given byte array `data` to the buffers and creates a [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview) for it. The index of the destination [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview) is returned. If `deduplication` is `true`, the buffers are first searched for duplicate data, otherwise new bytes are always appended.

* * *

[int](class_int.md#class-int) **append\_gltf\_node**(gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), godot\_scene\_node: [Node](class_node.md#class-node), parent\_node\_index: [int](class_int.md#class-int)) [🔗](#class-gltfstate-method-append-gltf-node)

Appends the given [GLTFNode](class_gltfnode.md#class-gltfnode) to the state, and returns its new index. This can be used to export one Godot node as multiple glTF nodes, or inject new glTF nodes at import time. On import, this must be called before [GLTFDocumentExtension.\_generate\_scene\_node()](class_gltfdocumentextension.md#class-gltfdocumentextension-private-method-generate-scene-node) finishes for the parent node. On export, this must be called before [GLTFDocumentExtension.\_export\_node()](class_gltfdocumentextension.md#class-gltfdocumentextension-private-method-export-node) runs for the parent node.

The `godot_scene_node` parameter is the Godot scene node that corresponds to this glTF node. This is highly recommended to be set to a valid node, but may be `null` if there is no corresponding Godot scene node. One Godot scene node may be used for multiple glTF nodes, so if exporting multiple glTF nodes for one Godot scene node, use the same Godot scene node for each.

The `parent_node_index` parameter is the index of the parent [GLTFNode](class_gltfnode.md#class-gltfnode) in the state. If `-1`, the node will be a root node, otherwise the new node will be added to the parent's list of children. The index will also be written to the [GLTFNode.parent](class_gltfnode.md#class-gltfnode-property-parent) property of the new node.

* * *

[Array](class_array.md#class-array)\[ [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor)\] **get\_accessors**() [🔗](#class-gltfstate-method-get-accessors)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **get\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltfstate-method-get-additional-data)

Gets additional arbitrary data in this **GLTFState** instance. This can be used to keep per-file state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.

* * *

[AnimationPlayer](class_animationplayer.md#class-animationplayer) **get\_animation\_player**(idx: [int](class_int.md#class-int)) [🔗](#class-gltfstate-method-get-animation-player)

Returns the [AnimationPlayer](class_animationplayer.md#class-animationplayer) node with the given index. These nodes are only used during the export process when converting Godot [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes to glTF animations.

* * *

[int](class_int.md#class-int) **get\_animation\_players\_count**(idx: [int](class_int.md#class-int)) [🔗](#class-gltfstate-method-get-animation-players-count)

Returns the number of [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes in this **GLTFState**. These nodes are only used during the export process when converting Godot [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes to glTF animations.

* * *

[Array](class_array.md#class-array)\[ [GLTFAnimation](class_gltfanimation.md#class-gltfanimation)\] **get\_animations**() [🔗](#class-gltfstate-method-get-animations)

Returns an array of all [GLTFAnimation](class_gltfanimation.md#class-gltfanimation) s in the glTF file. When importing, these will be generated as animations in an [AnimationPlayer](class_animationplayer.md#class-animationplayer) node. When exporting, these will be generated from Godot [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes.

* * *

[Array](class_array.md#class-array)\[ [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview)\] **get\_buffer\_views**() [🔗](#class-gltfstate-method-get-buffer-views)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [GLTFCamera](class_gltfcamera.md#class-gltfcamera)\] **get\_cameras**() [🔗](#class-gltfstate-method-get-cameras)

Returns an array of all [GLTFCamera](class_gltfcamera.md#class-gltfcamera) s in the glTF file. These are the cameras that the [GLTFNode.camera](class_gltfnode.md#class-gltfnode-property-camera) index refers to.

* * *

[int](class_int.md#class-int) **get\_handle\_binary\_image**() [🔗](#class-gltfstate-method-get-handle-binary-image)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\] **get\_images**() [🔗](#class-gltfstate-method-get-images)

Gets the images of the glTF file as an array of [Texture2D](class_texture2d.md#class-texture2d) s. These are the images that the [GLTFTexture.src\_image](class_gltftexture.md#class-gltftexture-property-src-image) index refers to.

* * *

[Array](class_array.md#class-array)\[ [GLTFLight](class_gltflight.md#class-gltflight)\] **get\_lights**() [🔗](#class-gltfstate-method-get-lights)

Returns an array of all [GLTFLight](class_gltflight.md#class-gltflight) s in the glTF file. These are the lights that the [GLTFNode.light](class_gltfnode.md#class-gltfnode-property-light) index refers to.

* * *

[Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\] **get\_materials**() [🔗](#class-gltfstate-method-get-materials)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [GLTFMesh](class_gltfmesh.md#class-gltfmesh)\] **get\_meshes**() [🔗](#class-gltfstate-method-get-meshes)

Returns an array of all [GLTFMesh](class_gltfmesh.md#class-gltfmesh) es in the glTF file. These are the meshes that the [GLTFNode.mesh](class_gltfnode.md#class-gltfnode-property-mesh) index refers to.

* * *

[int](class_int.md#class-int) **get\_node\_index**(scene\_node: [Node](class_node.md#class-node)) [🔗](#class-gltfstate-method-get-node-index)

Returns the index of the [GLTFNode](class_gltfnode.md#class-gltfnode) corresponding to this Godot scene node. This is the inverse of [get\_scene\_node()](#class-gltfstate-method-get-scene-node). Useful during the export process.

**Note:** Not every Godot scene node will have a corresponding [GLTFNode](class_gltfnode.md#class-gltfnode), and not every [GLTFNode](class_gltfnode.md#class-gltfnode) will have a scene node generated. If there is no [GLTFNode](class_gltfnode.md#class-gltfnode) index for this scene node, `-1` is returned.

* * *

[Array](class_array.md#class-array)\[ [GLTFNode](class_gltfnode.md#class-gltfnode)\] **get\_nodes**() [🔗](#class-gltfstate-method-get-nodes)

Returns an array of all [GLTFNode](class_gltfnode.md#class-gltfnode) s in the glTF file. These are the nodes that [GLTFNode.children](class_gltfnode.md#class-gltfnode-property-children) and [root\_nodes](#class-gltfstate-property-root-nodes) refer to. This includes nodes that may not be generated in the Godot scene, or nodes that may generate multiple Godot scene nodes.

* * *

[Node](class_node.md#class-node) **get\_scene\_node**(idx: [int](class_int.md#class-int)) [🔗](#class-gltfstate-method-get-scene-node)

Returns the Godot scene node that corresponds to the same index as the [GLTFNode](class_gltfnode.md#class-gltfnode) it was generated from. This is the inverse of [get\_node\_index()](#class-gltfstate-method-get-node-index). Useful during the import process.

**Note:** Not every [GLTFNode](class_gltfnode.md#class-gltfnode) will have a scene node generated, and not every generated scene node will have a corresponding [GLTFNode](class_gltfnode.md#class-gltfnode). If there is no scene node for this [GLTFNode](class_gltfnode.md#class-gltfnode) index, `null` is returned.

* * *

[Array](class_array.md#class-array)\[ [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton)\] **get\_skeletons**() [🔗](#class-gltfstate-method-get-skeletons)

Returns an array of all [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton) s in the glTF file. These are the skeletons that the [GLTFNode.skeleton](class_gltfnode.md#class-gltfnode-property-skeleton) index refers to.

* * *

[Array](class_array.md#class-array)\[ [GLTFSkin](class_gltfskin.md#class-gltfskin)\] **get\_skins**() [🔗](#class-gltfstate-method-get-skins)

Returns an array of all [GLTFSkin](class_gltfskin.md#class-gltfskin) s in the glTF file. These are the skins that the [GLTFNode.skin](class_gltfnode.md#class-gltfnode-property-skin) index refers to.

* * *

[Array](class_array.md#class-array)\[ [GLTFTextureSampler](class_gltftexturesampler.md#class-gltftexturesampler)\] **get\_texture\_samplers**() [🔗](#class-gltfstate-method-get-texture-samplers)

Retrieves the array of texture samplers that are used by the textures contained in the glTF.

* * *

[Array](class_array.md#class-array)\[ [GLTFTexture](class_gltftexture.md#class-gltftexture)\] **get\_textures**() [🔗](#class-gltfstate-method-get-textures)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_unique\_animation\_names**() [🔗](#class-gltfstate-method-get-unique-animation-names)

Returns an array of unique animation names. This is only used during the import process.

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_unique\_names**() [🔗](#class-gltfstate-method-get-unique-names)

Returns an array of unique node names. This is used in both the import process and export process.

* * *

void **set\_accessors**(accessors: [Array](class_array.md#class-array)\[ [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor)\]) [🔗](#class-gltfstate-method-set-accessors)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) [🔗](#class-gltfstate-method-set-additional-data)

Sets additional arbitrary data in this **GLTFState** instance. This can be used to keep per-file state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The first argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.

* * *

void **set\_animations**(animations: [Array](class_array.md#class-array)\[ [GLTFAnimation](class_gltfanimation.md#class-gltfanimation)\]) [🔗](#class-gltfstate-method-set-animations)

Sets the [GLTFAnimation](class_gltfanimation.md#class-gltfanimation) s in the state. When importing, these will be generated as animations in an [AnimationPlayer](class_animationplayer.md#class-animationplayer) node. When exporting, these will be generated from Godot [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes.

* * *

void **set\_buffer\_views**(buffer\_views: [Array](class_array.md#class-array)\[ [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview)\]) [🔗](#class-gltfstate-method-set-buffer-views)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_cameras**(cameras: [Array](class_array.md#class-array)\[ [GLTFCamera](class_gltfcamera.md#class-gltfcamera)\]) [🔗](#class-gltfstate-method-set-cameras)

Sets the [GLTFCamera](class_gltfcamera.md#class-gltfcamera) s in the state. These are the cameras that the [GLTFNode.camera](class_gltfnode.md#class-gltfnode-property-camera) index refers to.

* * *

void **set\_handle\_binary\_image**(method: [int](class_int.md#class-int)) [🔗](#class-gltfstate-method-set-handle-binary-image)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_images**(images: [Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\]) [🔗](#class-gltfstate-method-set-images)

Sets the images in the state stored as an array of [Texture2D](class_texture2d.md#class-texture2d) s. This can be used during export. These are the images that the [GLTFTexture.src\_image](class_gltftexture.md#class-gltftexture-property-src-image) index refers to.

* * *

void **set\_lights**(lights: [Array](class_array.md#class-array)\[ [GLTFLight](class_gltflight.md#class-gltflight)\]) [🔗](#class-gltfstate-method-set-lights)

Sets the [GLTFLight](class_gltflight.md#class-gltflight) s in the state. These are the lights that the [GLTFNode.light](class_gltfnode.md#class-gltfnode-property-light) index refers to.

* * *

void **set\_materials**(materials: [Array](class_array.md#class-array)\[ [Material](class_material.md#class-material)\]) [🔗](#class-gltfstate-method-set-materials)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_meshes**(meshes: [Array](class_array.md#class-array)\[ [GLTFMesh](class_gltfmesh.md#class-gltfmesh)\]) [🔗](#class-gltfstate-method-set-meshes)

Sets the [GLTFMesh](class_gltfmesh.md#class-gltfmesh) es in the state. These are the meshes that the [GLTFNode.mesh](class_gltfnode.md#class-gltfnode-property-mesh) index refers to.

* * *

void **set\_nodes**(nodes: [Array](class_array.md#class-array)\[ [GLTFNode](class_gltfnode.md#class-gltfnode)\]) [🔗](#class-gltfstate-method-set-nodes)

Sets the [GLTFNode](class_gltfnode.md#class-gltfnode) s in the state. These are the nodes that [GLTFNode.children](class_gltfnode.md#class-gltfnode-property-children) and [root\_nodes](#class-gltfstate-property-root-nodes) refer to. Some of the nodes set here may not be generated in the Godot scene, or may generate multiple Godot scene nodes.

* * *

void **set\_skeletons**(skeletons: [Array](class_array.md#class-array)\[ [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton)\]) [🔗](#class-gltfstate-method-set-skeletons)

Sets the [GLTFSkeleton](class_gltfskeleton.md#class-gltfskeleton) s in the state. These are the skeletons that the [GLTFNode.skeleton](class_gltfnode.md#class-gltfnode-property-skeleton) index refers to.

* * *

void **set\_skins**(skins: [Array](class_array.md#class-array)\[ [GLTFSkin](class_gltfskin.md#class-gltfskin)\]) [🔗](#class-gltfstate-method-set-skins)

Sets the [GLTFSkin](class_gltfskin.md#class-gltfskin) s in the state. These are the skins that the [GLTFNode.skin](class_gltfnode.md#class-gltfnode-property-skin) index refers to.

* * *

void **set\_texture\_samplers**(texture\_samplers: [Array](class_array.md#class-array)\[ [GLTFTextureSampler](class_gltftexturesampler.md#class-gltftexturesampler)\]) [🔗](#class-gltfstate-method-set-texture-samplers)

Sets the array of texture samplers that are used by the textures contained in the glTF.

* * *

void **set\_textures**(textures: [Array](class_array.md#class-array)\[ [GLTFTexture](class_gltftexture.md#class-gltftexture)\]) [🔗](#class-gltfstate-method-set-textures)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_unique\_animation\_names**(unique\_animation\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) [🔗](#class-gltfstate-method-set-unique-animation-names)

Sets the unique animation names in the state. This is only used during the import process.

* * *

void **set\_unique\_names**(unique\_names: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) [🔗](#class-gltfstate-method-set-unique-names)

Sets the unique node names in the state. This is used in both the import process and export process.

[Previous](class_gltfspecgloss.md "GLTFSpecGloss") [Next](class_gltftexture.md "GLTFTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfspecgloss.md "GLTFSpecGloss") [Next](class_gltftexture.md "GLTFTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).