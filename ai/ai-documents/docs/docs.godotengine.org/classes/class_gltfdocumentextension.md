---
title: GLTFDocumentExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfdocumentextension.html
crawled_at: "2026-08-13T10:20:47+12:00"
content_hash: 4a06b823d47d80a7b205b33d0e8babaf0ac2daef5d15c3eb8d196298f4c8d8f4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFDocumentExtension

* * *

# GLTFDocumentExtension

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [GLTFDocumentExtensionConvertImporterMesh](class_gltfdocumentextensionconvertimportermesh.md#class-gltfdocumentextensionconvertimportermesh)

[GLTFDocument](class_gltfdocument.md#class-gltfdocument) extension class.

## Description

Extends the functionality of the [GLTFDocument](class_gltfdocument.md#class-gltfdocument) class by allowing you to run arbitrary code at various stages of glTF import or export.

To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using [GLTFDocument.register\_gltf\_document\_extension()](class_gltfdocument.md#class-gltfdocument-method-register-gltf-document-extension).

**Note:** Like GLTFDocument itself, all GLTFDocumentExtension classes must be stateless in order to function properly. If you need to store data, use the `set_additional_data` and `get_additional_data` methods in [GLTFState](class_gltfstate.md#class-gltfstate) or [GLTFNode](class_gltfnode.md#class-gltfnode).

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Methods

|     |     |
| --- | --- |
| void | [\_convert\_scene\_node](#class-gltfdocumentextension-private-method-convert-scene-node)(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), scene\_node: [Node](class_node.md#class-node)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_node](#class-gltfdocumentextension-private-method-export-node)(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), json: [Dictionary](class_dictionary.md#class-dictionary), node: [Node](class_node.md#class-node)) virtual |
| [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) | [\_export\_object\_model\_property](#class-gltfdocumentextension-private-method-export-object-model-property)(state: [GLTFState](class_gltfstate.md#class-gltfstate), node\_path: [NodePath](class_nodepath.md#class-nodepath), godot\_node: [Node](class_node.md#class-node), gltf\_node\_index: [int](class_int.md#class-int), target\_object: [Object](class_object.md#class-object), target\_depth: [int](class_int.md#class-int)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_post](#class-gltfdocumentextension-private-method-export-post)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_post\_convert](#class-gltfdocumentextension-private-method-export-post-convert)(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_preflight](#class-gltfdocumentextension-private-method-export-preflight)(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_preserialize](#class-gltfdocumentextension-private-method-export-preserialize)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual |
| [Node3D](class_node3d.md#class-node3d) | [\_generate\_scene\_node](#class-gltfdocumentextension-private-method-generate-scene-node)(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), scene\_parent: [Node](class_node.md#class-node)) virtual |
| [String](class_string.md#class-string) | [\_get\_image\_file\_extension](#class-gltfdocumentextension-private-method-get-image-file-extension)() virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_saveable\_image\_formats](#class-gltfdocumentextension-private-method-get-saveable-image-formats)() virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_supported\_extensions](#class-gltfdocumentextension-private-method-get-supported-extensions)() virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import\_node](#class-gltfdocumentextension-private-method-import-node)(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), json: [Dictionary](class_dictionary.md#class-dictionary), node: [Node](class_node.md#class-node)) virtual |
| [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) | [\_import\_object\_model\_property](#class-gltfdocumentextension-private-method-import-object-model-property)(state: [GLTFState](class_gltfstate.md#class-gltfstate), split\_json\_pointer: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), partial\_paths: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\]) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import\_post](#class-gltfdocumentextension-private-method-import-post)(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import\_post\_parse](#class-gltfdocumentextension-private-method-import-post-parse)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import\_pre\_generate](#class-gltfdocumentextension-private-method-import-pre-generate)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import\_preflight](#class-gltfdocumentextension-private-method-import-preflight)(state: [GLTFState](class_gltfstate.md#class-gltfstate), extensions: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_parse\_image\_data](#class-gltfdocumentextension-private-method-parse-image-data)(state: [GLTFState](class_gltfstate.md#class-gltfstate), image\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), mime\_type: [String](class_string.md#class-string), ret\_image: [Image](class_image.md#class-image)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_parse\_node\_extensions](#class-gltfdocumentextension-private-method-parse-node-extensions)(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), extensions: [Dictionary](class_dictionary.md#class-dictionary)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_parse\_texture\_json](#class-gltfdocumentextension-private-method-parse-texture-json)(state: [GLTFState](class_gltfstate.md#class-gltfstate), texture\_json: [Dictionary](class_dictionary.md#class-dictionary), ret\_gltf\_texture: [GLTFTexture](class_gltftexture.md#class-gltftexture)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_save\_image\_at\_path](#class-gltfdocumentextension-private-method-save-image-at-path)(state: [GLTFState](class_gltfstate.md#class-gltfstate), image: [Image](class_image.md#class-image), file\_path: [String](class_string.md#class-string), image\_format: [String](class_string.md#class-string), lossy\_quality: [float](class_float.md#class-float)) virtual |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [\_serialize\_image\_to\_bytes](#class-gltfdocumentextension-private-method-serialize-image-to-bytes)(state: [GLTFState](class_gltfstate.md#class-gltfstate), image: [Image](class_image.md#class-image), image\_dict: [Dictionary](class_dictionary.md#class-dictionary), image\_format: [String](class_string.md#class-string), lossy\_quality: [float](class_float.md#class-float)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_serialize\_texture\_json](#class-gltfdocumentextension-private-method-serialize-texture-json)(state: [GLTFState](class_gltfstate.md#class-gltfstate), texture\_json: [Dictionary](class_dictionary.md#class-dictionary), gltf\_texture: [GLTFTexture](class_gltftexture.md#class-gltftexture), image\_format: [String](class_string.md#class-string)) virtual |

* * *

## Method Descriptions

void **\_convert\_scene\_node**(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), scene\_node: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-convert-scene-node)

Part of the export process. This method is run after [\_export\_preflight()](#class-gltfdocumentextension-private-method-export-preflight) and before [\_export\_post\_convert()](#class-gltfdocumentextension-private-method-export-post-convert).

Runs when converting the data from a Godot scene node. This method can be used to process the Godot scene node data into a format that can be used by [\_export\_node()](#class-gltfdocumentextension-private-method-export-node).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_node**(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), json: [Dictionary](class_dictionary.md#class-dictionary), node: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-export-node)

Part of the export process. This method is run after [\_get\_saveable\_image\_formats()](#class-gltfdocumentextension-private-method-get-saveable-image-formats) and before [\_export\_post()](#class-gltfdocumentextension-private-method-export-post). If this **GLTFDocumentExtension** is used for exporting images, this runs after [\_serialize\_texture\_json()](#class-gltfdocumentextension-private-method-serialize-texture-json).

This method can be used to modify the final JSON of each node. Data should be primarily stored in `gltf_node` prior to serializing the JSON, but the original Godot [Node](class_node.md#class-node) is also provided if available. `node` may be `null` if not available, such as when exporting glTF data not generated from a Godot scene.

* * *

[GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) **\_export\_object\_model\_property**(state: [GLTFState](class_gltfstate.md#class-gltfstate), node\_path: [NodePath](class_nodepath.md#class-nodepath), godot\_node: [Node](class_node.md#class-node), gltf\_node\_index: [int](class_int.md#class-int), target\_object: [Object](class_object.md#class-object), target\_depth: [int](class_int.md#class-int)) virtual [🔗](#class-gltfdocumentextension-private-method-export-object-model-property)

Part of the export process. Allows GLTFDocumentExtension classes to provide mappings for properties of nodes in the Godot scene tree, to JSON pointers to glTF properties, as defined by the glTF object model.

Returns a [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) instance that defines how the property should be mapped. If your extension can't handle the property, return `null` or an instance without any JSON pointers (see [GLTFObjectModelProperty.has\_json\_pointers()](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-method-has-json-pointers)). You should use [GLTFObjectModelProperty.set\_types()](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-method-set-types) to set the types, and set the JSON pointer(s) using the [GLTFObjectModelProperty.json\_pointers](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-property-json-pointers) property.

The parameters provide context for the property, including the NodePath, the Godot node, the GLTF node index, and the target object. The `target_object` will be equal to `godot_node` if no sub-object can be found, otherwise it will point to a sub-object. For example, if the path is `^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"`, it will get the node, then the mesh, and then the material, so `target_object` will be the [Material](class_material.md#class-material) resource, and `target_depth` will be 2 because 2 levels were traversed to get to the target.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_post**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual [🔗](#class-gltfdocumentextension-private-method-export-post)

Part of the export process. This method is run last, after all other parts of the export process.

This method can be used to modify the final JSON of the generated glTF file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_post\_convert**(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-export-post-convert)

Part of the export process. This method is run after [\_convert\_scene\_node()](#class-gltfdocumentextension-private-method-convert-scene-node) and before [\_export\_preserialize()](#class-gltfdocumentextension-private-method-export-preserialize).

This method can be used to modify the converted node data structures before serialization with any additional data from the scene tree.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_preflight**(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-export-preflight)

Part of the export process. This method is run first, before all other parts of the export process.

The return value is used to determine if this **GLTFDocumentExtension** instance should be used for exporting a given glTF file. If [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok), the export will use this **GLTFDocumentExtension** instance. If not overridden, [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) is returned.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_preserialize**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual [🔗](#class-gltfdocumentextension-private-method-export-preserialize)

Part of the export process. This method is run after [\_export\_post\_convert()](#class-gltfdocumentextension-private-method-export-post-convert) and before [\_get\_saveable\_image\_formats()](#class-gltfdocumentextension-private-method-get-saveable-image-formats).

This method can be used to alter the state before performing serialization. It runs every time when generating a buffer with [GLTFDocument.generate\_buffer()](class_gltfdocument.md#class-gltfdocument-method-generate-buffer) or writing to the file system with [GLTFDocument.write\_to\_filesystem()](class_gltfdocument.md#class-gltfdocument-method-write-to-filesystem).

* * *

[Node3D](class_node3d.md#class-node3d) **\_generate\_scene\_node**(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), scene\_parent: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-generate-scene-node)

Part of the import process. This method is run after [\_import\_pre\_generate()](#class-gltfdocumentextension-private-method-import-pre-generate) and before [\_import\_node()](#class-gltfdocumentextension-private-method-import-node).

Runs when generating a Godot scene node from a GLTFNode. The returned node will be added to the scene tree. Multiple nodes can be generated in this step if they are added as a child of the returned node.

**Note:** The `scene_parent` parameter may be `null` if this is the single root node.

* * *

[String](class_string.md#class-string) **\_get\_image\_file\_extension**() virtual [🔗](#class-gltfdocumentextension-private-method-get-image-file-extension)

Returns the file extension to use for saving image data into, for example, `".png"`. If defined, when this extension is used to handle images, and the images are saved to a separate file, the image bytes will be copied to a file with this extension. If this is set, there should be a [ResourceImporter](class_resourceimporter.md#class-resourceimporter) class able to import the file. If not defined or empty, Godot will save the image into a PNG file.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_saveable\_image\_formats**() virtual [🔗](#class-gltfdocumentextension-private-method-get-saveable-image-formats)

Part of the export process. This method is run after [\_convert\_scene\_node()](#class-gltfdocumentextension-private-method-convert-scene-node) and before [\_export\_node()](#class-gltfdocumentextension-private-method-export-node).

Returns an array of the image formats that can be saved/exported by this extension. This extension will only be selected as the image exporter if the [GLTFDocument](class_gltfdocument.md#class-gltfdocument)'s [GLTFDocument.image\_format](class_gltfdocument.md#class-gltfdocument-property-image-format) is in this array. If this **GLTFDocumentExtension** is selected as the image exporter, one of the [\_save\_image\_at\_path()](#class-gltfdocumentextension-private-method-save-image-at-path) or [\_serialize\_image\_to\_bytes()](#class-gltfdocumentextension-private-method-serialize-image-to-bytes) methods will run next, otherwise [\_export\_node()](#class-gltfdocumentextension-private-method-export-node) will run next. If the format name contains `"Lossy"`, the lossy quality slider will be displayed.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_supported\_extensions**() virtual [🔗](#class-gltfdocumentextension-private-method-get-supported-extensions)

Part of the import process. This method is run after [\_import\_preflight()](#class-gltfdocumentextension-private-method-import-preflight) and before [\_parse\_node\_extensions()](#class-gltfdocumentextension-private-method-parse-node-extensions).

Returns an array of the glTF extensions supported by this GLTFDocumentExtension class. This is used to validate if a glTF file with required extensions can be loaded.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import\_node**(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), json: [Dictionary](class_dictionary.md#class-dictionary), node: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-import-node)

Part of the import process. This method is run after [\_generate\_scene\_node()](#class-gltfdocumentextension-private-method-generate-scene-node) and before [\_import\_post()](#class-gltfdocumentextension-private-method-import-post).

This method can be used to make modifications to each of the generated Godot scene nodes.

* * *

[GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) **\_import\_object\_model\_property**(state: [GLTFState](class_gltfstate.md#class-gltfstate), split\_json\_pointer: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), partial\_paths: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\]) virtual [🔗](#class-gltfdocumentextension-private-method-import-object-model-property)

Part of the import process. Allows GLTFDocumentExtension classes to provide mappings for JSON pointers to glTF properties, as defined by the glTF object model, to properties of nodes in the Godot scene tree.

Returns a [GLTFObjectModelProperty](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty) instance that defines how the property should be mapped. If your extension can't handle the property, return `null` or an instance without any NodePaths (see [GLTFObjectModelProperty.has\_node\_paths()](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-method-has-node-paths)). You should use [GLTFObjectModelProperty.set\_types()](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-method-set-types) to set the types, and [GLTFObjectModelProperty.append\_path\_to\_property()](class_gltfobjectmodelproperty.md#class-gltfobjectmodelproperty-method-append-path-to-property) function is useful for most simple cases.

In many cases, `partial_paths` will contain the start of a path, allowing the extension to complete the path. For example, for `/nodes/3/extensions/MY_ext/prop`, Godot will pass you a NodePath that leads to node 3, so the GLTFDocumentExtension class only needs to resolve the last `MY_ext/prop` part of the path. In this example, the extension should check `split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"` at the start of the function to check if this JSON pointer applies to it, then it can use `partial_paths` and handle `split[4]`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import\_post**(state: [GLTFState](class_gltfstate.md#class-gltfstate), root: [Node](class_node.md#class-node)) virtual [🔗](#class-gltfdocumentextension-private-method-import-post)

Part of the import process. This method is run last, after all other parts of the import process.

This method can be used to modify the final Godot scene generated by the import process.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import\_post\_parse**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual [🔗](#class-gltfdocumentextension-private-method-import-post-parse)

Part of the import process. This method is run after [\_parse\_node\_extensions()](#class-gltfdocumentextension-private-method-parse-node-extensions) and before [\_import\_pre\_generate()](#class-gltfdocumentextension-private-method-import-pre-generate).

This method can be used to modify any of the data imported so far after parsing each node, but before generating the scene or any of its nodes.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import\_pre\_generate**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) virtual [🔗](#class-gltfdocumentextension-private-method-import-pre-generate)

Part of the import process. This method is run after [\_import\_post\_parse()](#class-gltfdocumentextension-private-method-import-post-parse) and before [\_generate\_scene\_node()](#class-gltfdocumentextension-private-method-generate-scene-node).

This method can be used to modify or read from any of the processed data structures, before generating the nodes and then running the final per-node import step.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import\_preflight**(state: [GLTFState](class_gltfstate.md#class-gltfstate), extensions: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual [🔗](#class-gltfdocumentextension-private-method-import-preflight)

Part of the import process. This method is run first, before all other parts of the import process.

The return value is used to determine if this **GLTFDocumentExtension** instance should be used for importing a given glTF file. If [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok), the import will use this **GLTFDocumentExtension** instance. If not overridden, [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) is returned.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_parse\_image\_data**(state: [GLTFState](class_gltfstate.md#class-gltfstate), image\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), mime\_type: [String](class_string.md#class-string), ret\_image: [Image](class_image.md#class-image)) virtual [🔗](#class-gltfdocumentextension-private-method-parse-image-data)

Part of the import process. This method is run after [\_parse\_node\_extensions()](#class-gltfdocumentextension-private-method-parse-node-extensions) and before [\_parse\_texture\_json()](#class-gltfdocumentextension-private-method-parse-texture-json).

Runs when parsing image data from a glTF file. The data could be sourced from a separate file, a URI, or a buffer, and then is passed as a byte array.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_parse\_node\_extensions**(state: [GLTFState](class_gltfstate.md#class-gltfstate), gltf\_node: [GLTFNode](class_gltfnode.md#class-gltfnode), extensions: [Dictionary](class_dictionary.md#class-dictionary)) virtual [🔗](#class-gltfdocumentextension-private-method-parse-node-extensions)

Part of the import process. This method is run after [\_get\_supported\_extensions()](#class-gltfdocumentextension-private-method-get-supported-extensions) and before [\_import\_post\_parse()](#class-gltfdocumentextension-private-method-import-post-parse).

Runs when parsing the node extensions of a GLTFNode. This method can be used to process the extension JSON data into a format that can be used by [\_generate\_scene\_node()](#class-gltfdocumentextension-private-method-generate-scene-node). The return value should be a member of the [Error](class_@globalscope.md#enum-globalscope-error) enum.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_parse\_texture\_json**(state: [GLTFState](class_gltfstate.md#class-gltfstate), texture\_json: [Dictionary](class_dictionary.md#class-dictionary), ret\_gltf\_texture: [GLTFTexture](class_gltftexture.md#class-gltftexture)) virtual [🔗](#class-gltfdocumentextension-private-method-parse-texture-json)

Part of the import process. This method is run after [\_parse\_image\_data()](#class-gltfdocumentextension-private-method-parse-image-data) and before [\_generate\_scene\_node()](#class-gltfdocumentextension-private-method-generate-scene-node).

Runs when parsing the texture JSON from the glTF textures array. This can be used to set the source image index to use as the texture.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_save\_image\_at\_path**(state: [GLTFState](class_gltfstate.md#class-gltfstate), image: [Image](class_image.md#class-image), file\_path: [String](class_string.md#class-string), image\_format: [String](class_string.md#class-string), lossy\_quality: [float](class_float.md#class-float)) virtual [🔗](#class-gltfdocumentextension-private-method-save-image-at-path)

Part of the export process. This method is run after [\_get\_saveable\_image\_formats()](#class-gltfdocumentextension-private-method-get-saveable-image-formats) and before [\_serialize\_texture\_json()](#class-gltfdocumentextension-private-method-serialize-texture-json).

This method is run when saving images separately from the glTF file. When images are embedded, [\_serialize\_image\_to\_bytes()](#class-gltfdocumentextension-private-method-serialize-image-to-bytes) runs instead. Note that these methods only run when this **GLTFDocumentExtension** is selected as the image exporter.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **\_serialize\_image\_to\_bytes**(state: [GLTFState](class_gltfstate.md#class-gltfstate), image: [Image](class_image.md#class-image), image\_dict: [Dictionary](class_dictionary.md#class-dictionary), image\_format: [String](class_string.md#class-string), lossy\_quality: [float](class_float.md#class-float)) virtual [🔗](#class-gltfdocumentextension-private-method-serialize-image-to-bytes)

Part of the export process. This method is run after [\_get\_saveable\_image\_formats()](#class-gltfdocumentextension-private-method-get-saveable-image-formats) and before [\_serialize\_texture\_json()](#class-gltfdocumentextension-private-method-serialize-texture-json).

This method is run when embedding images in the glTF file. When images are saved separately, [\_save\_image\_at\_path()](#class-gltfdocumentextension-private-method-save-image-at-path) runs instead. Note that these methods only run when this **GLTFDocumentExtension** is selected as the image exporter.

This method must set the image MIME type in the `image_dict` with the `"mimeType"` key. For example, for a PNG image, it would be set to `"image/png"`. The return value must be a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) containing the image data.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_serialize\_texture\_json**(state: [GLTFState](class_gltfstate.md#class-gltfstate), texture\_json: [Dictionary](class_dictionary.md#class-dictionary), gltf\_texture: [GLTFTexture](class_gltftexture.md#class-gltftexture), image\_format: [String](class_string.md#class-string)) virtual [🔗](#class-gltfdocumentextension-private-method-serialize-texture-json)

Part of the export process. This method is run after [\_save\_image\_at\_path()](#class-gltfdocumentextension-private-method-save-image-at-path) or [\_serialize\_image\_to\_bytes()](#class-gltfdocumentextension-private-method-serialize-image-to-bytes), and before [\_export\_node()](#class-gltfdocumentextension-private-method-export-node). Note that this method only runs when this **GLTFDocumentExtension** is selected as the image exporter.

This method can be used to set up the extensions for the texture JSON by editing `texture_json`. The extension must also be added as used extension with [GLTFState.add\_used\_extension()](class_gltfstate.md#class-gltfstate-method-add-used-extension), be sure to set `required` to `true` if you are not providing a fallback.

[Previous](class_gltfdocument.md "GLTFDocument") [Next](class_gltfdocumentextensionconvertimportermesh.md "GLTFDocumentExtensionConvertImporterMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfdocument.md "GLTFDocument") [Next](class_gltfdocumentextensionconvertimportermesh.md "GLTFDocumentExtensionConvertImporterMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).