---
title: Texture2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texture2d.html
crawled_at: "2026-08-13T10:31:38+12:00"
content_hash: a73257d1c39a1e74fa09d05d2dacba670330dc101f89bca3dade892b17264034
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Texture2D

* * *

# Texture2D

**Inherits:** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimatedTexture](class_animatedtexture.md#class-animatedtexture), [AtlasTexture](class_atlastexture.md#class-atlastexture), [CameraTexture](class_cameratexture.md#class-cameratexture), [CanvasTexture](class_canvastexture.md#class-canvastexture), [CompressedTexture2D](class_compressedtexture2d.md#class-compressedtexture2d), [CurveTexture](class_curvetexture.md#class-curvetexture), [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture), [DPITexture](class_dpitexture.md#class-dpitexture), [ExternalTexture](class_externaltexture.md#class-externaltexture), [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d), [GradientTexture2D](class_gradienttexture2d.md#class-gradienttexture2d), [ImageTexture](class_imagetexture.md#class-imagetexture), [MeshTexture](class_meshtexture.md#class-meshtexture), [NoiseTexture2D](class_noisetexture2d.md#class-noisetexture2d), [PlaceholderTexture2D](class_placeholdertexture2d.md#class-placeholdertexture2d), [PortableCompressedTexture2D](class_portablecompressedtexture2d.md#class-portablecompressedtexture2d), [Texture2DRD](class_texture2drd.md#class-texture2drd), [ViewportTexture](class_viewporttexture.md#class-viewporttexture)

Texture for 2D and 3D.

## Description

A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D [Sprite2D](class_sprite2d.md#class-sprite2d) or GUI [Control](class_control.md#class-control).

Textures are often created by loading them from a file. See [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load).

**Texture2D** is a base for other resources. It cannot be used directly.

**Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations. Larger textures may fail to import.

## Methods

|     |     |
| --- | --- |
| void | [\_draw](#class-texture2d-private-method-draw)(to\_canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool)) virtualconst |
| void | [\_draw\_rect](#class-texture2d-private-method-draw-rect)(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool)) virtualconst |
| void | [\_draw\_rect\_region](#class-texture2d-private-method-draw-rect-region)(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool), clip\_uv: [bool](class_bool.md#class-bool)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_height](#class-texture2d-private-method-get-height)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_width](#class-texture2d-private-method-get-width)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_alpha](#class-texture2d-private-method-has-alpha)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_pixel\_opaque](#class-texture2d-private-method-is-pixel-opaque)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) virtualconst |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-texture2d-method-create-placeholder)() const |
| void | [draw](#class-texture2d-method-draw)(canvas\_item: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) const |
| void | [draw\_rect](#class-texture2d-method-draw-rect)(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) const |
| void | [draw\_rect\_region](#class-texture2d-method-draw-rect-region)(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [get\_height](#class-texture2d-method-get-height)() const |
| [Image](class_image.md#class-image) | [get\_image](#class-texture2d-method-get-image)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_size](#class-texture2d-method-get-size)() const |
| [int](class_int.md#class-int) | [get\_width](#class-texture2d-method-get-width)() const |
| [bool](class_bool.md#class-bool) | [has\_alpha](#class-texture2d-method-has-alpha)() const |

* * *

## Method Descriptions

void **\_draw**(to\_canvas\_item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-texture2d-private-method-draw)

Called when the entire **Texture2D** is requested to be drawn over a [CanvasItem](class_canvasitem.md#class-canvasitem), with the top-left offset specified in `pos`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).

**Note:** This is only used in 2D rendering, not 3D.

* * *

void **\_draw\_rect**(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-texture2d-private-method-draw-rect)

Called when the **Texture2D** is requested to be drawn onto [CanvasItem](class_canvasitem.md#class-canvasitem)'s specified `rect`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).

**Note:** This is only used in 2D rendering, not 3D.

* * *

void **\_draw\_rect\_region**(to\_canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color), transpose: [bool](class_bool.md#class-bool), clip\_uv: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-texture2d-private-method-draw-rect-region)

Called when a part of the **Texture2D** specified by `src_rect`'s coordinates is requested to be drawn onto [CanvasItem](class_canvasitem.md#class-canvasitem)'s specified `rect`. `modulate` specifies a multiplier for the colors being drawn, while `transpose` specifies whether drawing should be performed in column-major order instead of row-major order (resulting in 90-degree clockwise rotation).

**Note:** This is only used in 2D rendering, not 3D.

* * *

[int](class_int.md#class-int) **\_get\_height**() virtualrequiredconst [🔗](#class-texture2d-private-method-get-height)

Called when the **Texture2D**'s height is queried.

* * *

[int](class_int.md#class-int) **\_get\_width**() virtualrequiredconst [🔗](#class-texture2d-private-method-get-width)

Called when the **Texture2D**'s width is queried.

* * *

[bool](class_bool.md#class-bool) **\_has\_alpha**() virtualconst [🔗](#class-texture2d-private-method-has-alpha)

Called when the presence of an alpha channel in the **Texture2D** is queried.

* * *

[bool](class_bool.md#class-bool) **\_is\_pixel\_opaque**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) virtualconst [🔗](#class-texture2d-private-method-is-pixel-opaque)

Called when a pixel's opaque state in the **Texture2D** is queried at the specified `(x, y)` position.

* * *

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-texture2d-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderTexture2D](class_placeholdertexture2d.md#class-placeholdertexture2d)).

* * *

void **draw**(canvas\_item: [RID](class_rid.md#class-rid), position: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) const [🔗](#class-texture2d-method-draw)

Draws the texture using a [CanvasItem](class_canvasitem.md#class-canvasitem) with the [RenderingServer](class_renderingserver.md#class-renderingserver) API at the specified `position`.

* * *

void **draw\_rect**(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) const [🔗](#class-texture2d-method-draw-rect)

Draws the texture using a [CanvasItem](class_canvasitem.md#class-canvasitem) with the [RenderingServer](class_renderingserver.md#class-renderingserver) API.

* * *

void **draw\_rect\_region**(canvas\_item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) const [🔗](#class-texture2d-method-draw-rect-region)

Draws a part of the texture using a [CanvasItem](class_canvasitem.md#class-canvasitem) with the [RenderingServer](class_renderingserver.md#class-renderingserver) API.

* * *

[int](class_int.md#class-int) **get\_height**() const [🔗](#class-texture2d-method-get-height)

Returns the texture height in pixels.

* * *

[Image](class_image.md#class-image) **get\_image**() const [🔗](#class-texture2d-method-get-image)

Returns an [Image](class_image.md#class-image) that is a copy of data from this **Texture2D** (a new [Image](class_image.md#class-image) is created each time). [Image](class_image.md#class-image) s can be accessed and manipulated directly.

**Note:** This will return `null` if this **Texture2D** is invalid.

**Note:** This will fetch the texture data from the GPU, which might cause performance problems when overused. Avoid calling [get\_image()](#class-texture2d-method-get-image) every frame, especially on large textures.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_size**() const [🔗](#class-texture2d-method-get-size)

Returns the texture size in pixels.

* * *

[int](class_int.md#class-int) **get\_width**() const [🔗](#class-texture2d-method-get-width)

Returns the texture width in pixels.

* * *

[bool](class_bool.md#class-bool) **has\_alpha**() const [🔗](#class-texture2d-method-has-alpha)

Returns `true` if this **Texture2D** has an alpha channel.

[Previous](class_texture.md "Texture") [Next](class_texture2darray.md "Texture2DArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texture.md "Texture") [Next](class_texture2darray.md "Texture2DArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).