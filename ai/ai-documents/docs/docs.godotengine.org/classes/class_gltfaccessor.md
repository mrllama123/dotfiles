---
title: GLTFAccessor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfaccessor.html
crawled_at: "2026-08-13T10:39:21+12:00"
content_hash: b31c90c76ca21d7957c59ba3cbb29812695884083a753cd331b0130697ad0f89
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFAccessor

* * *

# GLTFAccessor

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF accessor.

## Description

GLTFAccessor is a data structure representing a glTF `accessor` that would be found in the `"accessors"` array. A buffer is a blob of binary data. A buffer view is a slice of a buffer. An accessor is a typed interpretation of the data in a buffer view.

Most custom data stored in glTF does not need accessors, only buffer views (see [GLTFBufferView](class_gltfbufferview.md#class-gltfbufferview)). Accessors are for more advanced use cases such as interleaved mesh data encoded for the GPU.

## Tutorials

- [Buffers, BufferViews, and Accessors in Khronos glTF specification](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md)

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) | [accessor\_type](#class-gltfaccessor-property-accessor-type) | `0` |
| [int](class_int.md#class-int) | [buffer\_view](#class-gltfaccessor-property-buffer-view) | `-1` |
| [int](class_int.md#class-int) | [byte\_offset](#class-gltfaccessor-property-byte-offset) | `0` |
| [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) | [component\_type](#class-gltfaccessor-property-component-type) | `0` |
| [int](class_int.md#class-int) | [count](#class-gltfaccessor-property-count) | `0` |
| [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) | [max](#class-gltfaccessor-property-max) | `PackedFloat64Array()` |
| [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) | [min](#class-gltfaccessor-property-min) | `PackedFloat64Array()` |
| [bool](class_bool.md#class-bool) | [normalized](#class-gltfaccessor-property-normalized) | `false` |
| [int](class_int.md#class-int) | [sparse\_count](#class-gltfaccessor-property-sparse-count) | `0` |
| [int](class_int.md#class-int) | [sparse\_indices\_buffer\_view](#class-gltfaccessor-property-sparse-indices-buffer-view) | `0` |
| [int](class_int.md#class-int) | [sparse\_indices\_byte\_offset](#class-gltfaccessor-property-sparse-indices-byte-offset) | `0` |
| [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) | [sparse\_indices\_component\_type](#class-gltfaccessor-property-sparse-indices-component-type) | `0` |
| [int](class_int.md#class-int) | [sparse\_values\_buffer\_view](#class-gltfaccessor-property-sparse-values-buffer-view) | `0` |
| [int](class_int.md#class-int) | [sparse\_values\_byte\_offset](#class-gltfaccessor-property-sparse-values-byte-offset) | `0` |
| [int](class_int.md#class-int) | [type](#class-gltfaccessor-property-type) |  |

* * *

## Enumerations

enum **GLTFAccessorType**: [🔗](#enum-gltfaccessor-gltfaccessortype)

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_SCALAR** = `0`

Accessor type "SCALAR". For the glTF object model, this can be used to map to a single float, int, or bool value, or a float array.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_VEC2** = `1`

Accessor type "VEC2". For the glTF object model, this maps to "float2", represented in the glTF JSON as an array of two floats.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_VEC3** = `2`

Accessor type "VEC3". For the glTF object model, this maps to "float3", represented in the glTF JSON as an array of three floats.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_VEC4** = `3`

Accessor type "VEC4". For the glTF object model, this maps to "float4", represented in the glTF JSON as an array of four floats.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_MAT2** = `4`

Accessor type "MAT2". For the glTF object model, this maps to "float2x2", represented in the glTF JSON as an array of four floats.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_MAT3** = `5`

Accessor type "MAT3". For the glTF object model, this maps to "float3x3", represented in the glTF JSON as an array of nine floats.

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **TYPE\_MAT4** = `6`

Accessor type "MAT4". For the glTF object model, this maps to "float4x4", represented in the glTF JSON as an array of sixteen floats.

* * *

enum **GLTFComponentType**: [🔗](#enum-gltfaccessor-gltfcomponenttype)

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_NONE** = `0`

Component type "NONE". This is not a valid component type, and is used to indicate that the component type is not set.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_SIGNED\_BYTE** = `5120`

Component type "BYTE". The value is `0x1400` which comes from OpenGL. This indicates data is stored in 1-byte or 8-bit signed integers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_UNSIGNED\_BYTE** = `5121`

Component type "UNSIGNED\_BYTE". The value is `0x1401` which comes from OpenGL. This indicates data is stored in 1-byte or 8-bit unsigned integers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_SIGNED\_SHORT** = `5122`

Component type "SHORT". The value is `0x1402` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit signed integers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_UNSIGNED\_SHORT** = `5123`

Component type "UNSIGNED\_SHORT". The value is `0x1403` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit unsigned integers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_SIGNED\_INT** = `5124`

Component type "INT". The value is `0x1404` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit signed integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_UNSIGNED\_INT** = `5125`

Component type "UNSIGNED\_INT". The value is `0x1405` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit unsigned integers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_SINGLE\_FLOAT** = `5126`

Component type "FLOAT". The value is `0x1406` which comes from OpenGL. This indicates data is stored in 4-byte or 32-bit floating-point numbers. This is a core part of the glTF specification.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_DOUBLE\_FLOAT** = `5130`

Component type "DOUBLE". The value is `0x140A` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit floating-point numbers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_HALF\_FLOAT** = `5131`

Component type "HALF\_FLOAT". The value is `0x140B` which comes from OpenGL. This indicates data is stored in 2-byte or 16-bit floating-point numbers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_SIGNED\_LONG** = `5134`

Component type "LONG". The value is `0x140E` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit signed integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **COMPONENT\_TYPE\_UNSIGNED\_LONG** = `5135`

Component type "UNSIGNED\_LONG". The value is `0x140F` which comes from OpenGL. This indicates data is stored in 8-byte or 64-bit unsigned integers. This is NOT a core part of the glTF specification, and may not be supported by all glTF importers. May be used by some extensions including `KHR_interactivity`.

* * *

## Property Descriptions

[GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **accessor\_type** = `0` [🔗](#class-gltfaccessor-property-accessor-type)

- void **set\_accessor\_type**(value: [GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype))

- [GLTFAccessorType](#enum-gltfaccessor-gltfaccessortype) **get\_accessor\_type**()


The glTF accessor type, as an enum.

* * *

[int](class_int.md#class-int) **buffer\_view** = `-1` [🔗](#class-gltfaccessor-property-buffer-view)

- void **set\_buffer\_view**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_buffer\_view**()


The index of the buffer view this accessor is referencing. If `-1`, this accessor is not referencing any buffer view.

* * *

[int](class_int.md#class-int) **byte\_offset** = `0` [🔗](#class-gltfaccessor-property-byte-offset)

- void **set\_byte\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_byte\_offset**()


The offset relative to the start of the buffer view in bytes.

* * *

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **component\_type** = `0` [🔗](#class-gltfaccessor-property-component-type)

- void **set\_component\_type**(value: [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype))

- [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **get\_component\_type**()


The glTF component type as an enum. See [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) for possible values. Within the core glTF specification, a value of 5125 or "UNSIGNED\_INT" must not be used for any accessor that is not referenced by mesh.primitive.indices.

* * *

[int](class_int.md#class-int) **count** = `0` [🔗](#class-gltfaccessor-property-count)

- void **set\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_count**()


The number of elements referenced by this accessor.

* * *

[PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **max** = `PackedFloat64Array()` [🔗](#class-gltfaccessor-property-max)

- void **set\_max**(value: [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array))

- [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **get\_max**()


Maximum value of each component in this accessor.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) for more details.

* * *

[PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **min** = `PackedFloat64Array()` [🔗](#class-gltfaccessor-property-min)

- void **set\_min**(value: [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array))

- [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **get\_min**()


Minimum value of each component in this accessor.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) for more details.

* * *

[bool](class_bool.md#class-bool) **normalized** = `false` [🔗](#class-gltfaccessor-property-normalized)

- void **set\_normalized**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_normalized**()


Specifies whether integer data values are normalized before usage.

* * *

[int](class_int.md#class-int) **sparse\_count** = `0` [🔗](#class-gltfaccessor-property-sparse-count)

- void **set\_sparse\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sparse\_count**()


Number of deviating accessor values stored in the sparse array.

* * *

[int](class_int.md#class-int) **sparse\_indices\_buffer\_view** = `0` [🔗](#class-gltfaccessor-property-sparse-indices-buffer-view)

- void **set\_sparse\_indices\_buffer\_view**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sparse\_indices\_buffer\_view**()


The index of the buffer view with sparse indices. The referenced buffer view MUST NOT have its target or byteStride properties defined. The buffer view and the optional byteOffset MUST be aligned to the componentType byte length.

* * *

[int](class_int.md#class-int) **sparse\_indices\_byte\_offset** = `0` [🔗](#class-gltfaccessor-property-sparse-indices-byte-offset)

- void **set\_sparse\_indices\_byte\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sparse\_indices\_byte\_offset**()


The offset relative to the start of the buffer view in bytes.

* * *

[GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **sparse\_indices\_component\_type** = `0` [🔗](#class-gltfaccessor-property-sparse-indices-component-type)

- void **set\_sparse\_indices\_component\_type**(value: [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype))

- [GLTFComponentType](#enum-gltfaccessor-gltfcomponenttype) **get\_sparse\_indices\_component\_type**()


The indices component data type as an enum. Possible values are 5121 for "UNSIGNED\_BYTE", 5123 for "UNSIGNED\_SHORT", and 5125 for "UNSIGNED\_INT".

* * *

[int](class_int.md#class-int) **sparse\_values\_buffer\_view** = `0` [🔗](#class-gltfaccessor-property-sparse-values-buffer-view)

- void **set\_sparse\_values\_buffer\_view**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sparse\_values\_buffer\_view**()


The index of the bufferView with sparse values. The referenced buffer view MUST NOT have its target or byteStride properties defined.

* * *

[int](class_int.md#class-int) **sparse\_values\_byte\_offset** = `0` [🔗](#class-gltfaccessor-property-sparse-values-byte-offset)

- void **set\_sparse\_values\_byte\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sparse\_values\_byte\_offset**()


The offset relative to the start of the bufferView in bytes.

* * *

[int](class_int.md#class-int) **type** [🔗](#class-gltfaccessor-property-type)

- void **set\_type**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_type**()


**Deprecated:** Use [accessor\_type](#class-gltfaccessor-property-accessor-type) instead.

The glTF accessor type, as an [int](class_int.md#class-int). Possible values are `0` for "SCALAR", `1` for "VEC2", `2` for "VEC3", `3` for "VEC4", `4` for "MAT2", `5` for "MAT3", and `6` for "MAT4".

[Previous](class_gdscriptsyntaxhighlighter.md "GDScriptSyntaxHighlighter") [Next](class_gltfanimation.md "GLTFAnimation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gdscriptsyntaxhighlighter.md "GDScriptSyntaxHighlighter") [Next](class_gltfanimation.md "GLTFAnimation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).