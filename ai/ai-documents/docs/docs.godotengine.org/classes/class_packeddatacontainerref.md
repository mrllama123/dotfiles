---
title: PackedDataContainerRef — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packeddatacontainerref.html
crawled_at: "2026-08-13T10:26:26+12:00"
content_hash: 293efdc8726ee3c940fc6dd684337622016f881a0d29bd4251a32d8ca91c6de5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedDataContainerRef

* * *

# PackedDataContainerRef

**Deprecated:** Use [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) or [FileAccess.store\_var()](class_fileaccess.md#class-fileaccess-method-store-var) instead. To enable data compression, use [PackedByteArray.compress()](class_packedbytearray.md#class-packedbytearray-method-compress) or [FileAccess.open\_compressed()](class_fileaccess.md#class-fileaccess-method-open-compressed).

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An internal class used by [PackedDataContainer](class_packeddatacontainer.md#class-packeddatacontainer) to pack nested arrays and dictionaries.

## Description

When packing nested containers using [PackedDataContainer](class_packeddatacontainer.md#class-packeddatacontainer), they are recursively packed into **PackedDataContainerRef** (only applies to [Array](class_array.md#class-array) and [Dictionary](class_dictionary.md#class-dictionary)). Their data can be retrieved the same way as from [PackedDataContainer](class_packeddatacontainer.md#class-packeddatacontainer).

```
var packed = PackedDataContainer.new()
packed.pack([1, 2, 3, ["nested1", "nested2"], 4, 5, 6])

for element in packed:
    if element is PackedDataContainerRef:
        for subelement in element:
            print("::", subelement)
    else:
        print(element)

```

Prints:

```
1
2
3
::nested1
::nested2
4
5
6

```

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [size](#class-packeddatacontainerref-method-size)() const |

* * *

## Method Descriptions

[int](class_int.md#class-int) **size**() const [🔗](#class-packeddatacontainerref-method-size)

Returns the size of the packed container (see [Array.size()](class_array.md#class-array-method-size) and [Dictionary.size()](class_dictionary.md#class-dictionary-method-size)).

[Previous](class_os.md "OS") [Next](class_packetpeer.md "PacketPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_os.md "OS") [Next](class_packetpeer.md "PacketPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).