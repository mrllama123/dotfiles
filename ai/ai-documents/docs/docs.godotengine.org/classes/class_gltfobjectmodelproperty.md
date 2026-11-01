---
title: GLTFObjectModelProperty — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfobjectmodelproperty.html
crawled_at: "2026-08-13T10:19:43+12:00"
content_hash: 47adee19174129419242571832e47fc937275a52f3d923bfbbac0f43871a55a2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFObjectModelProperty

* * *

# GLTFObjectModelProperty

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Describes how to access a property as defined in the glTF object model.

## Description

GLTFObjectModelProperty defines a mapping between a property in the glTF object model and a NodePath in the Godot scene tree. This can be used to animate properties in a glTF file using the `KHR_animation_pointer` extension, or to access them through an engine-agnostic script such as a behavior graph as defined by the `KHR_interactivity` extension.

The glTF property is identified by JSON pointer(s) stored in [json\_pointers](#class-gltfobjectmodelproperty-property-json-pointers), while the Godot property it maps to is defined by [node\_paths](#class-gltfobjectmodelproperty-property-node-paths). In most cases [json\_pointers](#class-gltfobjectmodelproperty-property-json-pointers) and [node\_paths](#class-gltfobjectmodelproperty-property-node-paths) will each only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties, or a single Godot property will be mapped to multiple glTF JSON pointers, or it might be a many-to-many relationship.

[Expression](class_expression.md#class-expression) objects can be used to define conversions between the data, such as when glTF defines an angle in radians and Godot uses degrees. The [object\_model\_type](#class-gltfobjectmodelproperty-property-object-model-type) property defines the type of data stored in the glTF file as defined by the object model, see [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) for possible values.

## Tutorials

- [GLTF Object Model](https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/ObjectModel.adoc)

- [KHR\_animation\_pointer GLTF extension](https://github.com/KhronosGroup/glTF/tree/main/extensions/2.0/Khronos/KHR_animation_pointer)


## Properties

|     |     |     |
| --- | --- | --- |
| [Expression](class_expression.md#class-expression) | [gltf\_to\_godot\_expression](#class-gltfobjectmodelproperty-property-gltf-to-godot-expression) |  |
| [Expression](class_expression.md#class-expression) | [godot\_to\_gltf\_expression](#class-gltfobjectmodelproperty-property-godot-to-gltf-expression) |  |
| [Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\] | [json\_pointers](#class-gltfobjectmodelproperty-property-json-pointers) | `[]` |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [node\_paths](#class-gltfobjectmodelproperty-property-node-paths) | `[]` |
| [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) | [object\_model\_type](#class-gltfobjectmodelproperty-property-object-model-type) | `0` |
| [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) | [variant\_type](#class-gltfobjectmodelproperty-property-variant-type) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [append\_node\_path](#class-gltfobjectmodelproperty-method-append-node-path)(node\_path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [append\_path\_to\_property](#class-gltfobjectmodelproperty-method-append-path-to-property)(node\_path: [NodePath](class_nodepath.md#class-nodepath), prop\_name: [StringName](class_stringname.md#class-stringname)) |
| [GLTFAccessorType](class_gltfaccessor.md#enum-gltfaccessor-gltfaccessortype) | [get\_accessor\_type](#class-gltfobjectmodelproperty-method-get-accessor-type)() const |
| [bool](class_bool.md#class-bool) | [has\_json\_pointers](#class-gltfobjectmodelproperty-method-has-json-pointers)() const |
| [bool](class_bool.md#class-bool) | [has\_node\_paths](#class-gltfobjectmodelproperty-method-has-node-paths)() const |
| void | [set\_types](#class-gltfobjectmodelproperty-method-set-types)(variant\_type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), obj\_model\_type: [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype)) |

* * *

## Enumerations

enum **GLTFObjectModelType**: [🔗](#enum-gltfobjectmodelproperty-gltfobjectmodeltype)

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_UNKNOWN** = `0`

Unknown or not set object model type. If the object model type is set to this value, the real type still needs to be determined.

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_BOOL** = `1`

Object model type "bool". Represented in the glTF JSON as a boolean, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "SCALAR". When encoded in an accessor, a value of `0` is `false`, and any other value is `true`.

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT** = `2`

Object model type "float". Represented in the glTF JSON as a number, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "SCALAR".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT\_ARRAY** = `3`

Object model type "float\[\]". Represented in the glTF JSON as an array of numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "SCALAR".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT2** = `4`

Object model type "float2". Represented in the glTF JSON as an array of two numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "VEC2".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT3** = `5`

Object model type "float3". Represented in the glTF JSON as an array of three numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "VEC3".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT4** = `6`

Object model type "float4". Represented in the glTF JSON as an array of four numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "VEC4".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT2X2** = `7`

Object model type "float2x2". Represented in the glTF JSON as an array of four numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "MAT2".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT3X3** = `8`

Object model type "float3x3". Represented in the glTF JSON as an array of nine numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "MAT3".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_FLOAT4X4** = `9`

Object model type "float4x4". Represented in the glTF JSON as an array of sixteen numbers, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "MAT4".

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **GLTF\_OBJECT\_MODEL\_TYPE\_INT** = `10`

Object model type "int". Represented in the glTF JSON as a number, and encoded in a [GLTFAccessor](class_gltfaccessor.md#class-gltfaccessor) as "SCALAR". The range of values is limited to signed integers. For `KHR_interactivity`, only 32-bit integers are supported.

* * *

## Property Descriptions

[Expression](class_expression.md#class-expression) **gltf\_to\_godot\_expression** [🔗](#class-gltfobjectmodelproperty-property-gltf-to-godot-expression)

- void **set\_gltf\_to\_godot\_expression**(value: [Expression](class_expression.md#class-expression))

- [Expression](class_expression.md#class-expression) **get\_gltf\_to\_godot\_expression**()


If set, this [Expression](class_expression.md#class-expression) will be used to convert the property value from the glTF object model to the value expected by the Godot property. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If `null`, the value will be copied as-is.

* * *

[Expression](class_expression.md#class-expression) **godot\_to\_gltf\_expression** [🔗](#class-gltfobjectmodelproperty-property-godot-to-gltf-expression)

- void **set\_godot\_to\_gltf\_expression**(value: [Expression](class_expression.md#class-expression))

- [Expression](class_expression.md#class-expression) **get\_godot\_to\_gltf\_expression**()


If set, this [Expression](class_expression.md#class-expression) will be used to convert the property value from the Godot property to the value expected by the glTF object model. This is useful when the glTF object model uses a different unit system, or when the data needs to be transformed in some way. If `null`, the value will be copied as-is.

* * *

[Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\] **json\_pointers** = `[]` [🔗](#class-gltfobjectmodelproperty-property-json-pointers)

- void **set\_json\_pointers**(value: [Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\])

- [Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\] **get\_json\_pointers**()


The glTF object model JSON pointers used to identify the property in the glTF object model. In most cases, there will be only one item in this array, but specific cases may require multiple pointers. The items are themselves arrays which represent the JSON pointer split into its components.

* * *

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **node\_paths** = `[]` [🔗](#class-gltfobjectmodelproperty-property-node-paths)

- void **set\_node\_paths**(value: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\])

- [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_node\_paths**()


An array of [NodePath](class_nodepath.md#class-nodepath) s that point to a property, or multiple properties, in the Godot scene tree. On import, this will either be set by [GLTFDocument](class_gltfdocument.md#class-gltfdocument), or by a [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) class. For simple cases, use [append\_path\_to\_property()](#class-gltfobjectmodelproperty-method-append-path-to-property) to add properties to this array.

In most cases [node\_paths](#class-gltfobjectmodelproperty-property-node-paths) will only have one item, but in some cases a single glTF JSON pointer will map to multiple Godot properties. For example, a [GLTFCamera](class_gltfcamera.md#class-gltfcamera) or [GLTFLight](class_gltflight.md#class-gltflight) used on multiple glTF nodes will be represented by multiple Godot nodes.

* * *

[GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **object\_model\_type** = `0` [🔗](#class-gltfobjectmodelproperty-property-object-model-type)

- void **set\_object\_model\_type**(value: [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype))

- [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) **get\_object\_model\_type**()


The type of data stored in the glTF file as defined by the object model. This is a superset of the available accessor types, and determines the accessor type.

* * *

[Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) **variant\_type** = `0` [🔗](#class-gltfobjectmodelproperty-property-variant-type)

- void **set\_variant\_type**(value: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type))

- [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) **get\_variant\_type**()


The type of data stored in the Godot property. This is the type of the property that the [node\_paths](#class-gltfobjectmodelproperty-property-node-paths) point to.

* * *

## Method Descriptions

void **append\_node\_path**(node\_path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-gltfobjectmodelproperty-method-append-node-path)

Appends a [NodePath](class_nodepath.md#class-nodepath) to [node\_paths](#class-gltfobjectmodelproperty-property-node-paths). This can be used by [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes to define how a glTF object model property maps to a Godot property, or multiple Godot properties. Prefer using [append\_path\_to\_property()](#class-gltfobjectmodelproperty-method-append-path-to-property) for simple cases. Be sure to also call [set\_types()](#class-gltfobjectmodelproperty-method-set-types) once (the order does not matter).

* * *

void **append\_path\_to\_property**(node\_path: [NodePath](class_nodepath.md#class-nodepath), prop\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltfobjectmodelproperty-method-append-path-to-property)

High-level wrapper over [append\_node\_path()](#class-gltfobjectmodelproperty-method-append-node-path) that handles the most common cases. It constructs a new [NodePath](class_nodepath.md#class-nodepath) using `node_path` as a base and appends `prop_name` to the subpath. Be sure to also call [set\_types()](#class-gltfobjectmodelproperty-method-set-types) once (the order does not matter).

* * *

[GLTFAccessorType](class_gltfaccessor.md#enum-gltfaccessor-gltfaccessortype) **get\_accessor\_type**() const [🔗](#class-gltfobjectmodelproperty-method-get-accessor-type)

The GLTF accessor type associated with this property's [object\_model\_type](#class-gltfobjectmodelproperty-property-object-model-type). See [GLTFAccessor.accessor\_type](class_gltfaccessor.md#class-gltfaccessor-property-accessor-type) for possible values, and see [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype) for how the object model type maps to accessor types.

* * *

[bool](class_bool.md#class-bool) **has\_json\_pointers**() const [🔗](#class-gltfobjectmodelproperty-method-has-json-pointers)

Returns `true` if [json\_pointers](#class-gltfobjectmodelproperty-property-json-pointers) is not empty. This is used during export to determine if a **GLTFObjectModelProperty** can handle converting a Godot property to a glTF object model property.

* * *

[bool](class_bool.md#class-bool) **has\_node\_paths**() const [🔗](#class-gltfobjectmodelproperty-method-has-node-paths)

Returns `true` if [node\_paths](#class-gltfobjectmodelproperty-property-node-paths) is not empty. This is used during import to determine if a **GLTFObjectModelProperty** can handle converting a glTF object model property to a Godot property.

* * *

void **set\_types**(variant\_type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), obj\_model\_type: [GLTFObjectModelType](#enum-gltfobjectmodelproperty-gltfobjectmodeltype)) [🔗](#class-gltfobjectmodelproperty-method-set-types)

Sets the [variant\_type](#class-gltfobjectmodelproperty-property-variant-type) and [object\_model\_type](#class-gltfobjectmodelproperty-property-object-model-type) properties. This is a convenience method to set both properties at once, since they are almost always known at the same time. This method should be called once. Calling it again with the same values will have no effect.

[Previous](class_geometry3d.md "Geometry3D") [Next](class_hashingcontext.md "HashingContext")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_geometry3d.md "Geometry3D") [Next](class_hashingcontext.md "HashingContext")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).