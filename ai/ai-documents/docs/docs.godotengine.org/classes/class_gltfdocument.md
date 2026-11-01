---
title: GLTFDocument — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfdocument.html
crawled_at: "2026-08-13T10:30:13+12:00"
content_hash: f29ba03c79c9812902f63a440bac847f1378ef6f293cb7e5ed6f0808021bfc4f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFDocument

* * *

# GLTFDocument

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [FBXDocument](class_fbxdocument.md#class-fbxdocument)

Class for importing and exporting glTF files in and out of Godot.

## Description

GLTFDocument supports reading data from a glTF file, buffer, or Godot scene. This data can then be written to the filesystem, buffer, or used to create a Godot scene.

All of the data in a glTF scene is stored in the [GLTFState](class_gltfstate.md#class-gltfstate) class. GLTFDocument processes state objects, but does not contain any scene data itself. GLTFDocument has member variables to store export configuration settings such as the image format, but is otherwise stateless. Multiple scenes can be processed with the same settings using the same GLTFDocument object and different [GLTFState](class_gltfstate.md#class-gltfstate) objects.

GLTFDocument can be extended with arbitrary functionality by extending the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) class and registering it with GLTFDocument via [register\_gltf\_document\_extension()](#class-gltfdocument-method-register-gltf-document-extension). This allows for custom data to be imported and exported.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [glTF 'What the duck?' guide](https://www.khronos.org/files/gltf20-reference-guide.pdf)

- [Khronos glTF specification](https://registry.khronos.org/glTF/)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [fallback\_image\_format](#class-gltfdocument-property-fallback-image-format) | `"None"` |
| [float](class_float.md#class-float) | [fallback\_image\_quality](#class-gltfdocument-property-fallback-image-quality) | `0.25` |
| [String](class_string.md#class-string) | [image\_format](#class-gltfdocument-property-image-format) | `"PNG"` |
| [float](class_float.md#class-float) | [lossy\_quality](#class-gltfdocument-property-lossy-quality) | `0.75` |
| [RootNodeMode](#enum-gltfdocument-rootnodemode) | [root\_node\_mode](#class-gltfdocument-property-root-node-mode) | `0` |
| [VisibilityMode](#enum-gltfdocument-visibilitymode) | [visibility\_mode](#class-gltfdocument-property-visibility-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [append\_from\_buffer](#class-gltfdocument-method-append-from-buffer)(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), base\_path: [String](class_string.md#class-string), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [append\_from\_file](#class-gltfdocument-method-append-from-file)(path: [String](class_string.md#class-string), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0, base\_path: [String](class_string.md#class-string) = "") |
| [Error](class_@globalscope.md#enum-globalscope-error) | [append\_from\_scene](#class-gltfdocument-method-append-from-scene)(node: [Node](class_node.md#class-node), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0) |
| [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) | [export\_object\_model\_property](#class-gltfdocument-method-export-object-model-property)(state: [GLTFState](class_gltfstate.md#class-gltfstate), node\_path: [NodePath](class_nodepath.md#class-nodepath), godot\_node: [Node](class_node.md#class-node), gltf\_node\_index: [int](class_int.md#class-int)) static |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [generate\_buffer](#class-gltfdocument-method-generate-buffer)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) |
| [Node](class_node.md#class-node) | [generate\_scene](#class-gltfdocument-method-generate-scene)(state: [GLTFState](class_gltfstate.md#class-gltfstate), bake\_fps: [float](class_float.md#class-float) = 30, trimming: [bool](class_bool.md#class-bool) = false, remove\_immutable\_tracks: [bool](class_bool.md#class-bool) = true) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_supported\_gltf\_extensions](#class-gltfdocument-method-get-supported-gltf-extensions)() static |
| [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) | [import\_object\_model\_property](#class-gltfdocument-method-import-object-model-property)(state: [GLTFState](class_gltfstate.md#class-gltfstate), json\_pointer: [String](class_string.md#class-string)) static |
| void | [register\_gltf\_document\_extension](#class-gltfdocument-method-register-gltf-document-extension)(extension: [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension), first\_priority: [bool](class_bool.md#class-bool) = false) static |
| void | [unregister\_gltf\_document\_extension](#class-gltfdocument-method-unregister-gltf-document-extension)(extension: [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [write\_to\_filesystem](#class-gltfdocument-method-write-to-filesystem)(state: [GLTFState](class_gltfstate.md#class-gltfstate), path: [String](class_string.md#class-string)) |

* * *

## Enumerations

enum **RootNodeMode**: [🔗](#enum-gltfdocument-rootnodemode)

[RootNodeMode](#enum-gltfdocument-rootnodemode) **ROOT\_NODE\_MODE\_SINGLE\_ROOT** = `0`

Treat the Godot scene's root node as the root node of the glTF file, and mark it as the single root node via the `GODOT_single_root` glTF extension. This will be parsed the same as [ROOT\_NODE\_MODE\_KEEP\_ROOT](#class-gltfdocument-constant-root-node-mode-keep-root) if the implementation does not support `GODOT_single_root`.

[RootNodeMode](#enum-gltfdocument-rootnodemode) **ROOT\_NODE\_MODE\_KEEP\_ROOT** = `1`

Treat the Godot scene's root node as the root node of the glTF file, but do not mark it as anything special. An extra root node will be generated when importing into Godot. This uses only vanilla glTF features. This is equivalent to the behavior in Godot 4.1 and earlier.

[RootNodeMode](#enum-gltfdocument-rootnodemode) **ROOT\_NODE\_MODE\_MULTI\_ROOT** = `2`

Treat the Godot scene's root node as the name of the glTF scene, and add all of its children as root nodes of the glTF file. This uses only vanilla glTF features. This avoids an extra root node, but only the name of the Godot scene's root node will be preserved, as it will not be saved as a node.

* * *

enum **VisibilityMode**: [🔗](#enum-gltfdocument-visibilitymode)

[VisibilityMode](#enum-gltfdocument-visibilitymode) **VISIBILITY\_MODE\_INCLUDE\_REQUIRED** = `0`

If the scene contains any non-visible nodes, include them, mark them as non-visible with `KHR_node_visibility`, and require that importers respect their non-visibility. Downside: If the importer does not support `KHR_node_visibility`, the file cannot be imported.

[VisibilityMode](#enum-gltfdocument-visibilitymode) **VISIBILITY\_MODE\_INCLUDE\_OPTIONAL** = `1`

If the scene contains any non-visible nodes, include them, mark them as non-visible with `KHR_node_visibility`, and do not impose any requirements on importers. Downside: If the importer does not support `KHR_node_visibility`, invisible objects will be visible.

[VisibilityMode](#enum-gltfdocument-visibilitymode) **VISIBILITY\_MODE\_EXCLUDE** = `2`

If the scene contains any non-visible nodes, do not include them in the export. This is the same as the behavior in Godot 4.4 and earlier. Downside: Invisible nodes will not exist in the exported file.

* * *

## Property Descriptions

[String](class_string.md#class-string) **fallback\_image\_format** = `"None"` [🔗](#class-gltfdocument-property-fallback-image-format)

- void **set\_fallback\_image\_format**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_fallback\_image\_format**()


The user-friendly name of the fallback image format. This is used when exporting the glTF file, including writing to a file and writing to a byte array.

This property may only be one of "None", "PNG", or "JPEG", and is only used when the [image\_format](#class-gltfdocument-property-image-format) is not one of "None", "PNG", or "JPEG". If having multiple extension image formats is desired, that can be done using a [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) class - this property only covers the use case of providing a base glTF fallback image when using a custom image format.

* * *

[float](class_float.md#class-float) **fallback\_image\_quality** = `0.25` [🔗](#class-gltfdocument-property-fallback-image-quality)

- void **set\_fallback\_image\_quality**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fallback\_image\_quality**()


The quality of the fallback image, if any. For PNG files, this downscales the image on both dimensions by this factor. For JPEG files, this is the lossy quality of the image. A low value is recommended, since including multiple high quality images in a glTF file defeats the file size gains of using a more efficient image format.

* * *

[String](class_string.md#class-string) **image\_format** = `"PNG"` [🔗](#class-gltfdocument-property-image-format)

- void **set\_image\_format**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_image\_format**()


The user-friendly name of the export image format. This is used when exporting the glTF file, including writing to a file and writing to a byte array.

By default, Godot allows the following options: "None", "PNG", "JPEG", "Lossless WebP", and "Lossy WebP". Support for more image formats can be added in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes. A single extension class can provide multiple options for the specific format to use, or even an option that uses multiple formats at once.

* * *

[float](class_float.md#class-float) **lossy\_quality** = `0.75` [🔗](#class-gltfdocument-property-lossy-quality)

- void **set\_lossy\_quality**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lossy\_quality**()


If [image\_format](#class-gltfdocument-property-image-format) is a lossy image format, this determines the lossy quality of the image. On a range of `0.0` to `1.0`, where `0.0` is the lowest quality and `1.0` is the highest quality. A lossy quality of `1.0` is not the same as lossless.

* * *

[RootNodeMode](#enum-gltfdocument-rootnodemode) **root\_node\_mode** = `0` [🔗](#class-gltfdocument-property-root-node-mode)

- void **set\_root\_node\_mode**(value: [RootNodeMode](#enum-gltfdocument-rootnodemode))

- [RootNodeMode](#enum-gltfdocument-rootnodemode) **get\_root\_node\_mode**()


How to process the root node during export. The default and recommended value is [ROOT\_NODE\_MODE\_SINGLE\_ROOT](#class-gltfdocument-constant-root-node-mode-single-root).

**Note:** Regardless of how the glTF file is exported, when importing, the root node type and name can be overridden in the scene import settings tab.

* * *

[VisibilityMode](#enum-gltfdocument-visibilitymode) **visibility\_mode** = `0` [🔗](#class-gltfdocument-property-visibility-mode)

- void **set\_visibility\_mode**(value: [VisibilityMode](#enum-gltfdocument-visibilitymode))

- [VisibilityMode](#enum-gltfdocument-visibilitymode) **get\_visibility\_mode**()


How to deal with node visibility during export. This setting does nothing if all nodes are visible. The default and recommended value is [VISIBILITY\_MODE\_INCLUDE\_REQUIRED](#class-gltfdocument-constant-visibility-mode-include-required), which uses the `KHR_node_visibility` extension.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **append\_from\_buffer**(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), base\_path: [String](class_string.md#class-string), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0) [🔗](#class-gltfdocument-method-append-from-buffer)

Takes a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) defining a glTF and imports the data to the given [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter.

**Note:** The `base_path` tells [append\_from\_buffer()](#class-gltfdocument-method-append-from-buffer) where to find dependencies and can be empty.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **append\_from\_file**(path: [String](class_string.md#class-string), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0, base\_path: [String](class_string.md#class-string) = "") [🔗](#class-gltfdocument-method-append-from-file)

Takes a path to a glTF file and imports the data at that file path to the given [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter.

**Note:** The `base_path` tells [append\_from\_file()](#class-gltfdocument-method-append-from-file) where to find dependencies and can be empty.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **append\_from\_scene**(node: [Node](class_node.md#class-node), state: [GLTFState](class_gltfstate.md#class-gltfstate), flags: [int](class_int.md#class-int) = 0) [🔗](#class-gltfdocument-method-append-from-scene)

Takes a Godot Engine scene node and exports it and its descendants to the given [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter.

* * *

[GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) **export\_object\_model\_property**(state: [GLTFState](class_gltfstate.md#class-gltfstate), node\_path: [NodePath](class_nodepath.md#class-nodepath), godot\_node: [Node](class_node.md#class-node), gltf\_node\_index: [int](class_int.md#class-int)) static [🔗](#class-gltfdocument-method-export-object-model-property)

Determines a mapping between the given Godot `node_path` and the corresponding glTF Object Model JSON pointer(s) in the generated glTF file. The details of this mapping are returned in a [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) object. Additional mappings can be supplied via the [GLTFDocumentExtension.\_import\_object\_model\_property()](class_gltfdocumentextension.md#class-gltfdocumentextension-private-method-import-object-model-property) callback method.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **generate\_buffer**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) [🔗](#class-gltfdocument-method-generate-buffer)

Takes a [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter and returns a glTF [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

* * *

[Node](class_node.md#class-node) **generate\_scene**(state: [GLTFState](class_gltfstate.md#class-gltfstate), bake\_fps: [float](class_float.md#class-float) = 30, trimming: [bool](class_bool.md#class-bool) = false, remove\_immutable\_tracks: [bool](class_bool.md#class-bool) = true) [🔗](#class-gltfdocument-method-generate-scene)

Takes a [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter and returns a Godot Engine scene node.

The `bake_fps` parameter overrides the bake\_fps in `state`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_supported\_gltf\_extensions**() static [🔗](#class-gltfdocument-method-get-supported-gltf-extensions)

Returns a list of all support glTF extensions, including extensions supported directly by the engine, and extensions supported by user plugins registering [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes.

**Note:** If this method is run before a GLTFDocumentExtension is registered, its extensions won't be included in the list. Be sure to only run this method after all extensions are registered. If you run this when the engine starts, consider waiting a frame before calling this method to ensure all extensions are registered.

* * *

[GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) **import\_object\_model\_property**(state: [GLTFState](class_gltfstate.md#class-gltfstate), json\_pointer: [String](class_string.md#class-string)) static [🔗](#class-gltfdocument-method-import-object-model-property)

Determines a mapping between the given glTF Object Model `json_pointer` and the corresponding Godot node path(s) in the generated Godot scene. The details of this mapping are returned in a [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) object. Additional mappings can be supplied via the [GLTFDocumentExtension.\_export\_object\_model\_property()](class_gltfdocumentextension.md#class-gltfdocumentextension-private-method-export-object-model-property) callback method.

* * *

void **register\_gltf\_document\_extension**(extension: [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension), first\_priority: [bool](class_bool.md#class-bool) = false) static [🔗](#class-gltfdocument-method-register-gltf-document-extension)

Registers the given [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) instance with GLTFDocument. If `first_priority` is `true`, this extension will be run first. Otherwise, it will be run last.

**Note:** Like GLTFDocument itself, all GLTFDocumentExtension classes must be stateless in order to function properly. If you need to store data, use the `set_additional_data` and `get_additional_data` methods in [GLTFState](class_gltfstate.md#class-gltfstate) or [GLTFNode](class_gltfnode.md#class-gltfnode).

* * *

void **unregister\_gltf\_document\_extension**(extension: [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension)) static [🔗](#class-gltfdocument-method-unregister-gltf-document-extension)

Unregisters the given [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) instance.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **write\_to\_filesystem**(state: [GLTFState](class_gltfstate.md#class-gltfstate), path: [String](class_string.md#class-string)) [🔗](#class-gltfdocument-method-write-to-filesystem)

Takes a [GLTFState](class_gltfstate.md#class-gltfstate) object through the `state` parameter and writes a glTF file to the filesystem.

**Note:** The extension of the glTF file determines if it is a .glb binary file or a .gltf text file.

[Previous](class_gltfcamera.md "GLTFCamera") [Next](class_gltfdocumentextension.md "GLTFDocumentExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfcamera.md "GLTFCamera") [Next](class_gltfdocumentextension.md "GLTFDocumentExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).