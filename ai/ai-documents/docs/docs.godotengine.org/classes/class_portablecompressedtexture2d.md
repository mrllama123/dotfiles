---
title: PortableCompressedTexture2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_portablecompressedtexture2d.html
crawled_at: "2026-08-13T10:26:34+12:00"
content_hash: 077ad42fa8f00458989c17f07f8a52c1bddd742dd48502577f7c1dc29ac768bd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PortableCompressedTexture2D

* * *

# PortableCompressedTexture2D

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides a compressed texture for disk and/or VRAM in a way that is portable.

## Description

This class allows storing compressed textures as self contained (not imported) resources.

For 2D usage (compressed on disk, uncompressed on VRAM), the lossy and lossless modes are recommended. For 3D usage (compressed on VRAM) it depends on the target platform.

If you intend to only use desktop, S3TC or BPTC are recommended. For only mobile, ETC2 is recommended.

For portable, self contained 3D textures that work on both desktop and mobile, Basis Universal is recommended (although it has a small quality cost and longer compression time as a tradeoff).

This resource is intended to be created from code.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [keep\_compressed\_buffer](#class-portablecompressedtexture2d-property-keep-compressed-buffer) | `false` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [Vector2](class_vector2.md#class-vector2) | [size\_override](#class-portablecompressedtexture2d-property-size-override) | `Vector2(0, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [create\_from\_image](#class-portablecompressedtexture2d-method-create-from-image)(image: [Image](class_image.md#class-image), compression\_mode: [CompressionMode](#enum-portablecompressedtexture2d-compressionmode), normal\_map: [bool](class_bool.md#class-bool) = false, lossy\_quality: [float](class_float.md#class-float) = 0.8) |
| [CompressionMode](#enum-portablecompressedtexture2d-compressionmode) | [get\_compression\_mode](#class-portablecompressedtexture2d-method-get-compression-mode)() const |
| [Format](class_image.md#enum-image-format) | [get\_format](#class-portablecompressedtexture2d-method-get-format)() const |
| [bool](class_bool.md#class-bool) | [is\_keeping\_all\_compressed\_buffers](#class-portablecompressedtexture2d-method-is-keeping-all-compressed-buffers)() static |
| void | [set\_basisu\_compressor\_params](#class-portablecompressedtexture2d-method-set-basisu-compressor-params)(uastc\_level: [int](class_int.md#class-int), rdo\_quality\_loss: [float](class_float.md#class-float)) |
| void | [set\_keep\_all\_compressed\_buffers](#class-portablecompressedtexture2d-method-set-keep-all-compressed-buffers)(keep: [bool](class_bool.md#class-bool)) static |

* * *

## Enumerations

enum **CompressionMode**: [🔗](#enum-portablecompressedtexture2d-compressionmode)

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_LOSSLESS** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_LOSSY** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_BASIS\_UNIVERSAL** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_S3TC** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_ETC2** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_BPTC** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **COMPRESSION\_MODE\_ASTC** = `6`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **keep\_compressed\_buffer** = `false` [🔗](#class-portablecompressedtexture2d-property-keep-compressed-buffer)

- void **set\_keep\_compressed\_buffer**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_keeping\_compressed\_buffer**()


When running on the editor, this class will keep the source compressed data in memory. Otherwise, the source compressed data is lost after loading and the resource can't be re saved.

This flag allows to keep the compressed data in memory if you intend it to persist after loading.

**Note:** This must be set before [create\_from\_image()](#class-portablecompressedtexture2d-method-create-from-image) to take effect.

* * *

[Vector2](class_vector2.md#class-vector2) **size\_override** = `Vector2(0, 0)` [🔗](#class-portablecompressedtexture2d-property-size-override)

- void **set\_size\_override**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_size\_override**()


Allow overriding the texture size (for 2D only).

* * *

## Method Descriptions

void **create\_from\_image**(image: [Image](class_image.md#class-image), compression\_mode: [CompressionMode](#enum-portablecompressedtexture2d-compressionmode), normal\_map: [bool](class_bool.md#class-bool) = false, lossy\_quality: [float](class_float.md#class-float) = 0.8) [🔗](#class-portablecompressedtexture2d-method-create-from-image)

Initializes the compressed texture from a base image. The compression mode must be provided.

`normal_map` is recommended to ensure optimum quality if this image will be used as a normal map.

If lossy compression is requested, the quality setting can optionally be provided. This maps to Lossy WebP compression quality.

* * *

[CompressionMode](#enum-portablecompressedtexture2d-compressionmode) **get\_compression\_mode**() const [🔗](#class-portablecompressedtexture2d-method-get-compression-mode)

Return the compression mode used (valid after initialized).

* * *

[Format](class_image.md#enum-image-format) **get\_format**() const [🔗](#class-portablecompressedtexture2d-method-get-format)

Return the image format used (valid after initialized).

* * *

[bool](class_bool.md#class-bool) **is\_keeping\_all\_compressed\_buffers**() static [🔗](#class-portablecompressedtexture2d-method-is-keeping-all-compressed-buffers)

Return whether the flag is overridden for all textures of this type.

* * *

void **set\_basisu\_compressor\_params**(uastc\_level: [int](class_int.md#class-int), rdo\_quality\_loss: [float](class_float.md#class-float)) [🔗](#class-portablecompressedtexture2d-method-set-basisu-compressor-params)

Sets the compressor parameters for Basis Universal compression. See also the settings in [ResourceImporterTexture](class_resourceimportertexture.md#class-resourceimportertexture).

**Note:** This must be set before [create\_from\_image()](#class-portablecompressedtexture2d-method-create-from-image) to take effect.

* * *

void **set\_keep\_all\_compressed\_buffers**(keep: [bool](class_bool.md#class-bool)) static [🔗](#class-portablecompressedtexture2d-method-set-keep-all-compressed-buffers)

Overrides the flag globally for all textures of this type. This is used primarily by the editor.

[Previous](class_polygonpathfinder.md "PolygonPathFinder") [Next](class_primitivemesh.md "PrimitiveMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_polygonpathfinder.md "PolygonPathFinder") [Next](class_primitivemesh.md "PrimitiveMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).