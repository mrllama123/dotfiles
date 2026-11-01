---
title: PackedDataContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packeddatacontainer.html
crawled_at: "2026-08-13T10:38:55+12:00"
content_hash: 1c264008d130e5e6f55573c84889f15820f256a7b4ff91b2b87e8ef2f294ee6d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedDataContainer

* * *

# PackedDataContainer

**Deprecated:** Use [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) or [FileAccess.store\_var()](class_fileaccess.md#class-fileaccess-method-store-var) instead. To enable data compression, use [PackedByteArray.compress()](class_packedbytearray.md#class-packedbytearray-method-compress) or [FileAccess.open\_compressed()](class_fileaccess.md#class-fileaccess-method-open-compressed).

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Efficiently packs and serializes [Array](class_array.md#class-array) or [Dictionary](class_dictionary.md#class-dictionary).

## Description

**PackedDataContainer** can be used to efficiently store data from untyped containers. The data is packed into raw bytes and can be saved to file. Only [Array](class_array.md#class-array) and [Dictionary](class_dictionary.md#class-dictionary) can be stored this way.

You can retrieve the data by iterating on the container, which will work as if iterating on the packed data itself. If the packed container is a [Dictionary](class_dictionary.md#class-dictionary), the data can be retrieved by key names ( [String](class_string.md#class-string)/ [StringName](class_stringname.md#class-stringname) only).

```
var data = { "key": "value", "another_key": 123, "lock": Vector2() }
var packed = PackedDataContainer.new()
packed.pack(data)
ResourceSaver.save(packed, "packed_data.res")

```

```
var container = load("packed_data.res")
for key in container:
    prints(key, container[key])

```

Prints:

```
key value
lock (0, 0)
another_key 123

```

Nested containers will be packed recursively. While iterating, they will be returned as [PackedDataContainerRef](class_packeddatacontainerref.md#class-packeddatacontainerref).

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [pack](#class-packeddatacontainer-method-pack)(value: [Variant](class_variant.md#class-variant)) |
| [int](class_int.md#class-int) | [size](#class-packeddatacontainer-method-size)() const |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **pack**(value: [Variant](class_variant.md#class-variant)) [🔗](#class-packeddatacontainer-method-pack)

Packs the given container into a binary representation. The `value` must be either [Array](class_array.md#class-array) or [Dictionary](class_dictionary.md#class-dictionary), any other type will result in invalid data error.

**Note:** Subsequent calls to this method will overwrite the existing data.

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-packeddatacontainer-method-size)

Returns the size of the packed container (see [Array.size()](class_array.md#class-array-method-size) and [Dictionary.size()](class_dictionary.md#class-dictionary-method-size)).

[Previous](class_ormmaterial3d.md "ORMMaterial3D") [Next](class_packedscene.md "PackedScene")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_ormmaterial3d.md "ORMMaterial3D") [Next](class_packedscene.md "PackedScene")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).