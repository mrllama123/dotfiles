---
title: GLTFBufferView — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfbufferview.html
crawled_at: "2026-08-13T10:28:12+12:00"
content_hash: 06c173d4045bf70a72eaf5eb5de82243393646dce992fc82e8d895c4b1020880
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFBufferView

* * *

# GLTFBufferView

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF buffer view.

## Description

GLTFBufferView is a data structure representing a glTF `bufferView` that would be found in the `"bufferViews"` array. A buffer is a blob of binary data. A buffer view is a slice of a buffer that can be used to identify and extract data from the buffer.

Most custom uses of buffers only need to use the [buffer](#class-gltfbufferview-property-buffer), [byte\_length](#class-gltfbufferview-property-byte-length), and [byte\_offset](#class-gltfbufferview-property-byte-offset). The [byte\_stride](#class-gltfbufferview-property-byte-stride) and [indices](#class-gltfbufferview-property-indices) properties are for more advanced use cases such as interleaved mesh data encoded for the GPU.

## Tutorials

- [Buffers, BufferViews, and Accessors in Khronos glTF specification](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md)

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [buffer](#class-gltfbufferview-property-buffer) | `-1` |
| [int](class_int.md#class-int) | [byte\_length](#class-gltfbufferview-property-byte-length) | `0` |
| [int](class_int.md#class-int) | [byte\_offset](#class-gltfbufferview-property-byte-offset) | `0` |
| [int](class_int.md#class-int) | [byte\_stride](#class-gltfbufferview-property-byte-stride) | `-1` |
| [bool](class_bool.md#class-bool) | [indices](#class-gltfbufferview-property-indices) | `false` |
| [bool](class_bool.md#class-bool) | [vertex\_attributes](#class-gltfbufferview-property-vertex-attributes) | `false` |

## Methods

|     |     |
| --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [load\_buffer\_view\_data](#class-gltfbufferview-method-load-buffer-view-data)(state: [GLTFState](class_gltfstate.md#class-gltfstate)) const |

* * *

## Property Descriptions

[int](class_int.md#class-int) **buffer** = `-1` [🔗](#class-gltfbufferview-property-buffer)

- void **set\_buffer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_buffer**()


The index of the buffer this buffer view is referencing. If `-1`, this buffer view is not referencing any buffer.

* * *

[int](class_int.md#class-int) **byte\_length** = `0` [🔗](#class-gltfbufferview-property-byte-length)

- void **set\_byte\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_byte\_length**()


The length, in bytes, of this buffer view. If `0`, this buffer view is empty.

* * *

[int](class_int.md#class-int) **byte\_offset** = `0` [🔗](#class-gltfbufferview-property-byte-offset)

- void **set\_byte\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_byte\_offset**()


The offset, in bytes, from the start of the buffer to the start of this buffer view.

* * *

[int](class_int.md#class-int) **byte\_stride** = `-1` [🔗](#class-gltfbufferview-property-byte-stride)

- void **set\_byte\_stride**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_byte\_stride**()


The stride, in bytes, between interleaved data. If `-1`, this buffer view is not interleaved.

* * *

[bool](class_bool.md#class-bool) **indices** = `false` [🔗](#class-gltfbufferview-property-indices)

- void **set\_indices**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_indices**()


`true` if the GLTFBufferView's OpenGL GPU buffer type is an `ELEMENT_ARRAY_BUFFER` used for vertex indices (integer constant `34963`). `false` if the buffer type is any other value. See [Buffers, BufferViews, and Accessors](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md) for possible values. This property is set on import and used on export.

* * *

[bool](class_bool.md#class-bool) **vertex\_attributes** = `false` [🔗](#class-gltfbufferview-property-vertex-attributes)

- void **set\_vertex\_attributes**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_vertex\_attributes**()


`true` if the GLTFBufferView's OpenGL GPU buffer type is an `ARRAY_BUFFER` used for vertex attributes (integer constant `34962`). `false` if the buffer type is any other value. See [Buffers, BufferViews, and Accessors](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md) for possible values. This property is set on import and used on export.

* * *

## Method Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **load\_buffer\_view\_data**(state: [GLTFState](class_gltfstate.md#class-gltfstate)) const [🔗](#class-gltfbufferview-method-load-buffer-view-data)

Loads the buffer view data from the buffer referenced by this buffer view in the given [GLTFState](class_gltfstate.md#class-gltfstate). Interleaved data with a byte stride is not yet supported by this method. The data is returned as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

[Previous](class_gltfanimation.md "GLTFAnimation") [Next](class_gltfcamera.md "GLTFCamera")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfanimation.md "GLTFAnimation") [Next](class_gltfcamera.md "GLTFCamera")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).