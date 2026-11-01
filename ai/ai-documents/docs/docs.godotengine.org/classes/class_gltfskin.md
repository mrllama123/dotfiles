---
title: GLTFSkin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfskin.html
crawled_at: "2026-08-13T10:41:43+12:00"
content_hash: db11cffd1b11572686f65e7ff41f3fd7619866f1e9655860d2519c1b10b4519b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFSkin

* * *

# GLTFSkin

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Skin](class_skin.md#class-skin) | [godot\_skin](#class-gltfskin-property-godot-skin) |  |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [joints](#class-gltfskin-property-joints) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [joints\_original](#class-gltfskin-property-joints-original) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [non\_joints](#class-gltfskin-property-non-joints) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [roots](#class-gltfskin-property-roots) | `PackedInt32Array()` |
| [int](class_int.md#class-int) | [skeleton](#class-gltfskin-property-skeleton) | `-1` |
| [int](class_int.md#class-int) | [skin\_root](#class-gltfskin-property-skin-root) | `-1` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\] | [get\_inverse\_binds](#class-gltfskin-method-get-inverse-binds)() |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_joint\_i\_to\_bone\_i](#class-gltfskin-method-get-joint-i-to-bone-i)() |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_joint\_i\_to\_name](#class-gltfskin-method-get-joint-i-to-name)() |
| void | [set\_inverse\_binds](#class-gltfskin-method-set-inverse-binds)(inverse\_binds: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\]) |
| void | [set\_joint\_i\_to\_bone\_i](#class-gltfskin-method-set-joint-i-to-bone-i)(joint\_i\_to\_bone\_i: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [set\_joint\_i\_to\_name](#class-gltfskin-method-set-joint-i-to-name)(joint\_i\_to\_name: [Dictionary](class_dictionary.md#class-dictionary)) |

* * *

## Property Descriptions

[Skin](class_skin.md#class-skin) **godot\_skin** [🔗](#class-gltfskin-property-godot-skin)

- void **set\_godot\_skin**(value: [Skin](class_skin.md#class-skin))

- [Skin](class_skin.md#class-skin) **get\_godot\_skin**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **joints** = `PackedInt32Array()` [🔗](#class-gltfskin-property-joints)

- void **set\_joints**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_joints**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **joints\_original** = `PackedInt32Array()` [🔗](#class-gltfskin-property-joints-original)

- void **set\_joints\_original**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_joints\_original**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **non\_joints** = `PackedInt32Array()` [🔗](#class-gltfskin-property-non-joints)

- void **set\_non\_joints**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_non\_joints**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **roots** = `PackedInt32Array()` [🔗](#class-gltfskin-property-roots)

- void **set\_roots**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_roots**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[int](class_int.md#class-int) **skeleton** = `-1` [🔗](#class-gltfskin-property-skeleton)

- void **set\_skeleton**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_skeleton**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **skin\_root** = `-1` [🔗](#class-gltfskin-property-skin-root)

- void **set\_skin\_root**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_skin\_root**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\] **get\_inverse\_binds**() [🔗](#class-gltfskin-method-get-inverse-binds)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_joint\_i\_to\_bone\_i**() [🔗](#class-gltfskin-method-get-joint-i-to-bone-i)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_joint\_i\_to\_name**() [🔗](#class-gltfskin-method-get-joint-i-to-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_inverse\_binds**(inverse\_binds: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\]) [🔗](#class-gltfskin-method-set-inverse-binds)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_joint\_i\_to\_bone\_i**(joint\_i\_to\_bone\_i: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-gltfskin-method-set-joint-i-to-bone-i)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_joint\_i\_to\_name**(joint\_i\_to\_name: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-gltfskin-method-set-joint-i-to-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_gltfskeleton.md "GLTFSkeleton") [Next](class_gltfspecgloss.md "GLTFSpecGloss")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfskeleton.md "GLTFSkeleton") [Next](class_gltfspecgloss.md "GLTFSpecGloss")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).