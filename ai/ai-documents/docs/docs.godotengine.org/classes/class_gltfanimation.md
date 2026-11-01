---
title: GLTFAnimation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfanimation.html
crawled_at: "2026-08-13T10:31:51+12:00"
content_hash: f97eef1839f7b323a435f82174b94ca45a23339a1bce81885ac177333533972d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFAnimation

* * *

# GLTFAnimation

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [loop](#class-gltfanimation-property-loop) | `false` |
| [String](class_string.md#class-string) | [original\_name](#class-gltfanimation-property-original-name) | `""` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_additional\_data](#class-gltfanimation-method-get-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_additional\_data](#class-gltfanimation-method-set-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **loop** = `false` [🔗](#class-gltfanimation-property-loop)

- void **set\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_loop**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **original\_name** = `""` [🔗](#class-gltfanimation-property-original-name)

- void **set\_original\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_name**()


The original name of the animation.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltfanimation-method-get-additional-data)

Gets additional arbitrary data in this **GLTFAnimation** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.

* * *

void **set\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) [🔗](#class-gltfanimation-method-set-additional-data)

Sets additional arbitrary data in this **GLTFAnimation** instance. This can be used to keep per-node state data in [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) classes, which is important because they are stateless.

The first argument should be the [GLTFDocumentExtension](class_gltfdocumentextension.md#class-gltfdocumentextension) name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.

[Previous](class_gltfaccessor.md "GLTFAccessor") [Next](class_gltfbufferview.md "GLTFBufferView")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfaccessor.md "GLTFAccessor") [Next](class_gltfbufferview.md "GLTFBufferView")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).