---
title: ExternalTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_externaltexture.html
crawled_at: "2026-08-13T10:18:47+12:00"
content_hash: d2eae24f6f896b68a021f7ad47e65e34c0781c739f1dd1586cba555f22c38018
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ExternalTexture

* * *

# ExternalTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture which displays the content of an external buffer.

## Description

Displays the content of an external buffer provided by the platform.

Requires the [OES\_EGL\_image\_external](https://registry.khronos.org/OpenGL/extensions/OES/OES_EGL_image_external.txt) extension (OpenGL) or [VK\_ANDROID\_external\_memory\_android\_hardware\_buffer](https://registry.khronos.org/vulkan/specs/1.1-extensions/html/vkspec.html#VK_ANDROID_external_memory_android_hardware_buffer) extension (Vulkan).

**Note:** This is currently only supported in Android builds.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-externaltexture-property-size) | `Vector2(256, 256)` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_external\_texture\_id](#class-externaltexture-method-get-external-texture-id)() const |
| void | [set\_external\_buffer\_id](#class-externaltexture-method-set-external-buffer-id)(external\_buffer\_id: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(256, 256)` [🔗](#class-externaltexture-property-size)

- void **set\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


External texture size.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_external\_texture\_id**() const [🔗](#class-externaltexture-method-get-external-texture-id)

Returns the external texture ID.

Depending on your use case, you may need to pass this to platform APIs, for example, when creating an `android.graphics.SurfaceTexture` on Android.

* * *

void **set\_external\_buffer\_id**(external\_buffer\_id: [int](class_int.md#class-int)) [🔗](#class-externaltexture-method-set-external-buffer-id)

Sets the external buffer ID.

Depending on your use case, you may need to call this with data received from a platform API, for example, `SurfaceTexture.getHardwareBuffer()` on Android.

[Previous](class_environment.md "Environment") [Next](class_fastnoiselite.md "FastNoiseLite")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_environment.md "Environment") [Next](class_fastnoiselite.md "FastNoiseLite")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).