---
title: GLTFSpecGloss — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfspecgloss.html
crawled_at: "2026-08-13T10:39:05+12:00"
content_hash: 1ce80983c4e154aeaca177c2ea9f24c4113d1af99d92d269a9ac5e3a0c866070
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFSpecGloss

* * *

# GLTFSpecGloss

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Archived glTF extension for specular/glossy materials.

## Description

KHR\_materials\_pbrSpecularGlossiness is an archived glTF extension. This means that it is deprecated and not recommended for new files. However, it is still supported for loading old files.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [KHR\_materials\_pbrSpecularGlossiness glTF extension spec](https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Archived/KHR_materials_pbrSpecularGlossiness)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [diffuse\_factor](#class-gltfspecgloss-property-diffuse-factor) | `Color(1, 1, 1, 1)` |
| [Image](class_image.md#class-image) | [diffuse\_img](#class-gltfspecgloss-property-diffuse-img) |  |
| [float](class_float.md#class-float) | [gloss\_factor](#class-gltfspecgloss-property-gloss-factor) | `1.0` |
| [Image](class_image.md#class-image) | [spec\_gloss\_img](#class-gltfspecgloss-property-spec-gloss-img) |  |
| [Color](class_color.md#class-color) | [specular\_factor](#class-gltfspecgloss-property-specular-factor) | `Color(1, 1, 1, 1)` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **diffuse\_factor** = `Color(1, 1, 1, 1)` [🔗](#class-gltfspecgloss-property-diffuse-factor)

- void **set\_diffuse\_factor**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_diffuse\_factor**()


The reflected diffuse factor of the material.

* * *

[Image](class_image.md#class-image) **diffuse\_img** [🔗](#class-gltfspecgloss-property-diffuse-img)

- void **set\_diffuse\_img**(value: [Image](class_image.md#class-image))

- [Image](class_image.md#class-image) **get\_diffuse\_img**()


The diffuse texture.

* * *

[float](class_float.md#class-float) **gloss\_factor** = `1.0` [🔗](#class-gltfspecgloss-property-gloss-factor)

- void **set\_gloss\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gloss\_factor**()


The glossiness or smoothness of the material.

* * *

[Image](class_image.md#class-image) **spec\_gloss\_img** [🔗](#class-gltfspecgloss-property-spec-gloss-img)

- void **set\_spec\_gloss\_img**(value: [Image](class_image.md#class-image))

- [Image](class_image.md#class-image) **get\_spec\_gloss\_img**()


The specular-glossiness texture.

* * *

[Color](class_color.md#class-color) **specular\_factor** = `Color(1, 1, 1, 1)` [🔗](#class-gltfspecgloss-property-specular-factor)

- void **set\_specular\_factor**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_specular\_factor**()


The specular RGB color of the material. The alpha channel is unused.

[Previous](class_gltfskin.md "GLTFSkin") [Next](class_gltfstate.md "GLTFState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfskin.md "GLTFSkin") [Next](class_gltfstate.md "GLTFState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).