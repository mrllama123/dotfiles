---
title: Image — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_image.html
crawled_at: "2026-08-13T10:26:29+12:00"
content_hash: 4bf4a93a61b420016af2f122023f9b52804dce36d03c81b9a298fd9eab3cdc90
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Image

* * *

# Image

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Image datatype.

## Description

Native image datatype. Contains image data which can be converted to an [ImageTexture](class_imagetexture.md#class-imagetexture) and provides commonly used _image processing_ methods. The maximum width and height for an **Image** are [MAX\_WIDTH](#class-image-constant-max-width) and [MAX\_HEIGHT](#class-image-constant-max-height).

An **Image** cannot be assigned to a texture property of an object directly (such as [Sprite2D.texture](class_sprite2d.md#class-sprite2d-property-texture)), and has to be converted manually to an [ImageTexture](class_imagetexture.md#class-imagetexture) first.

**Note:** The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images may fail to import.

## Tutorials

- [Importing images](../tutorials/assets_pipeline/importing_images.md)

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Dictionary](class_dictionary.md#class-dictionary) | [data](#class-image-property-data) | `{ "data": PackedByteArray(), "format": "Lum8", "height": 0, "mipmaps": false, "width": 0 }` |

## Methods

|     |     |
| --- | --- |
| void | [adjust\_bcs](#class-image-method-adjust-bcs)(brightness: [float](class_float.md#class-float), contrast: [float](class_float.md#class-float), saturation: [float](class_float.md#class-float)) |
| void | [blend\_rect](#class-image-method-blend-rect)(src: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [blend\_rect\_mask](#class-image-method-blend-rect-mask)(src: [Image](#class-image), mask: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [blit\_rect](#class-image-method-blit-rect)(src: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [blit\_rect\_mask](#class-image-method-blit-rect-mask)(src: [Image](#class-image), mask: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [bump\_map\_to\_normal\_map](#class-image-method-bump-map-to-normal-map)(bump\_scale: [float](class_float.md#class-float) = 1.0) |
| void | [clear\_mipmaps](#class-image-method-clear-mipmaps)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [compress](#class-image-method-compress)(mode: [CompressMode](#enum-image-compressmode), source: [CompressSource](#enum-image-compresssource) = 0, astc\_format: [ASTCFormat](#enum-image-astcformat) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [compress\_from\_channels](#class-image-method-compress-from-channels)(mode: [CompressMode](#enum-image-compressmode), channels: [UsedChannels](#enum-image-usedchannels), astc\_format: [ASTCFormat](#enum-image-astcformat) = 0) |
| [Dictionary](class_dictionary.md#class-dictionary) | [compute\_image\_metrics](#class-image-method-compute-image-metrics)(compared\_image: [Image](#class-image), use\_luma: [bool](class_bool.md#class-bool)) |
| void | [convert](#class-image-method-convert)(format: [Format](#enum-image-format)) |
| void | [copy\_from](#class-image-method-copy-from)(src: [Image](#class-image)) |
| [Image](#class-image) | [create](#class-image-method-create)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format)) static |
| [Image](#class-image) | [create\_empty](#class-image-method-create-empty)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format)) static |
| [Image](#class-image) | [create\_from\_data](#class-image-method-create-from-data)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static |
| void | [crop](#class-image-method-crop)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [decompress](#class-image-method-decompress)() |
| [AlphaMode](#enum-image-alphamode) | [detect\_alpha](#class-image-method-detect-alpha)() const |
| [UsedChannels](#enum-image-usedchannels) | [detect\_used\_channels](#class-image-method-detect-used-channels)(source: [CompressSource](#enum-image-compresssource) = 0) const |
| void | [fill](#class-image-method-fill)(color: [Color](class_color.md#class-color)) |
| void | [fill\_rect](#class-image-method-fill-rect)(rect: [Rect2i](class_rect2i.md#class-rect2i), color: [Color](class_color.md#class-color)) |
| void | [fix\_alpha\_edges](#class-image-method-fix-alpha-edges)() |
| void | [flip\_x](#class-image-method-flip-x)() |
| void | [flip\_y](#class-image-method-flip-y)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [generate\_mipmaps](#class-image-method-generate-mipmaps)(renormalize: [bool](class_bool.md#class-bool) = false) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_data](#class-image-method-get-data)() const |
| [int](class_int.md#class-int) | [get\_data\_size](#class-image-method-get-data-size)() const |
| [Format](#enum-image-format) | [get\_format](#class-image-method-get-format)() const |
| [int](class_int.md#class-int) | [get\_height](#class-image-method-get-height)() const |
| [int](class_int.md#class-int) | [get\_mipmap\_count](#class-image-method-get-mipmap-count)() const |
| [int](class_int.md#class-int) | [get\_mipmap\_offset](#class-image-method-get-mipmap-offset)(mipmap: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_pixel](#class-image-method-get-pixel)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_pixelv](#class-image-method-get-pixelv)(point: [Vector2i](class_vector2i.md#class-vector2i)) const |
| [Image](#class-image) | [get\_region](#class-image-method-get-region)(region: [Rect2i](class_rect2i.md#class-rect2i)) const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_size](#class-image-method-get-size)() const |
| [Rect2i](class_rect2i.md#class-rect2i) | [get\_used\_rect](#class-image-method-get-used-rect)() const |
| [int](class_int.md#class-int) | [get\_width](#class-image-method-get-width)() const |
| [bool](class_bool.md#class-bool) | [has\_mipmaps](#class-image-method-has-mipmaps)() const |
| [bool](class_bool.md#class-bool) | [is\_compressed](#class-image-method-is-compressed)() const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-image-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [is\_invisible](#class-image-method-is-invisible)() const |
| void | [linear\_to\_srgb](#class-image-method-linear-to-srgb)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-image-method-load)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_bmp\_from\_buffer](#class-image-method-load-bmp-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_dds\_from\_buffer](#class-image-method-load-dds-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Image](#class-image) | [load\_from\_file](#class-image-method-load-from-file)(path: [String](class_string.md#class-string)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_jpg\_from\_buffer](#class-image-method-load-jpg-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_ktx\_from\_buffer](#class-image-method-load-ktx-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_png\_from\_buffer](#class-image-method-load-png-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_svg\_from\_buffer](#class-image-method-load-svg-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), scale: [float](class_float.md#class-float) = 1.0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_svg\_from\_string](#class-image-method-load-svg-from-string)(svg\_str: [String](class_string.md#class-string), scale: [float](class_float.md#class-float) = 1.0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_tga\_from\_buffer](#class-image-method-load-tga-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_webp\_from\_buffer](#class-image-method-load-webp-from-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [normal\_map\_to\_xy](#class-image-method-normal-map-to-xy)() |
| void | [premultiply\_alpha](#class-image-method-premultiply-alpha)() |
| void | [resize](#class-image-method-resize)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), interpolation: [Interpolation](#enum-image-interpolation) = 1) |
| void | [resize\_to\_po2](#class-image-method-resize-to-po2)(square: [bool](class_bool.md#class-bool) = false, interpolation: [Interpolation](#enum-image-interpolation) = 1) |
| [Image](#class-image) | [rgbe\_to\_srgb](#class-image-method-rgbe-to-srgb)() |
| void | [rotate\_90](#class-image-method-rotate-90)(direction: [ClockDirection](class_@globalscope.md#enum-globalscope-clockdirection)) |
| void | [rotate\_180](#class-image-method-rotate-180)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_dds](#class-image-method-save-dds)(path: [String](class_string.md#class-string)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [save\_dds\_to\_buffer](#class-image-method-save-dds-to-buffer)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_exr](#class-image-method-save-exr)(path: [String](class_string.md#class-string), grayscale: [bool](class_bool.md#class-bool) = false) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [save\_exr\_to\_buffer](#class-image-method-save-exr-to-buffer)(grayscale: [bool](class_bool.md#class-bool) = false) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_jpg](#class-image-method-save-jpg)(path: [String](class_string.md#class-string), quality: [float](class_float.md#class-float) = 0.75) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [save\_jpg\_to\_buffer](#class-image-method-save-jpg-to-buffer)(quality: [float](class_float.md#class-float) = 0.75) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_png](#class-image-method-save-png)(path: [String](class_string.md#class-string)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [save\_png\_to\_buffer](#class-image-method-save-png-to-buffer)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_webp](#class-image-method-save-webp)(path: [String](class_string.md#class-string), lossy: [bool](class_bool.md#class-bool) = false, quality: [float](class_float.md#class-float) = 0.75) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [save\_webp\_to\_buffer](#class-image-method-save-webp-to-buffer)(lossy: [bool](class_bool.md#class-bool) = false, quality: [float](class_float.md#class-float) = 0.75) const |
| void | [set\_data](#class-image-method-set-data)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [set\_pixel](#class-image-method-set-pixel)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_pixelv](#class-image-method-set-pixelv)(point: [Vector2i](class_vector2i.md#class-vector2i), color: [Color](class_color.md#class-color)) |
| void | [shrink\_x2](#class-image-method-shrink-x2)() |
| void | [srgb\_to\_linear](#class-image-method-srgb-to-linear)() |

* * *

## Enumerations

enum **Format**: [🔗](#enum-image-format)

[Format](#enum-image-format) **FORMAT\_L8** = `0`

Texture format with a single 8-bit depth representing luminance.

[Format](#enum-image-format) **FORMAT\_LA8** = `1`

OpenGL texture format with two values, luminance and alpha each stored with 8 bits.

[Format](#enum-image-format) **FORMAT\_R8** = `2`

OpenGL texture format `RED` with a single component and a bitdepth of 8.

[Format](#enum-image-format) **FORMAT\_RG8** = `3`

OpenGL texture format `RG` with two components and a bitdepth of 8 for each.

[Format](#enum-image-format) **FORMAT\_RGB8** = `4`

OpenGL texture format `RGB` with three components, each with a bitdepth of 8.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_RGBA8** = `5`

OpenGL texture format `RGBA` with four components, each with a bitdepth of 8.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_RGBA4444** = `6`

OpenGL texture format `RGBA` with four components, each with a bitdepth of 4.

[Format](#enum-image-format) **FORMAT\_RGB565** = `7`

OpenGL texture format `RGB` with three components. Red and blue have a bitdepth of 5, and green has a bitdepth of 6.

[Format](#enum-image-format) **FORMAT\_RF** = `8`

OpenGL texture format `GL_R32F` where there's one component, a 32-bit floating-point value.

[Format](#enum-image-format) **FORMAT\_RGF** = `9`

OpenGL texture format `GL_RG32F` where there are two components, each a 32-bit floating-point values.

[Format](#enum-image-format) **FORMAT\_RGBF** = `10`

OpenGL texture format `GL_RGB32F` where there are three components, each a 32-bit floating-point values.

[Format](#enum-image-format) **FORMAT\_RGBAF** = `11`

OpenGL texture format `GL_RGBA32F` where there are four components, each a 32-bit floating-point values.

[Format](#enum-image-format) **FORMAT\_RH** = `12`

OpenGL texture format `GL_R16F` where there's one component, a 16-bit "half-precision" floating-point value.

[Format](#enum-image-format) **FORMAT\_RGH** = `13`

OpenGL texture format `GL_RG16F` where there are two components, each a 16-bit "half-precision" floating-point value.

[Format](#enum-image-format) **FORMAT\_RGBH** = `14`

OpenGL texture format `GL_RGB16F` where there are three components, each a 16-bit "half-precision" floating-point value.

[Format](#enum-image-format) **FORMAT\_RGBAH** = `15`

OpenGL texture format `GL_RGBA16F` where there are four components, each a 16-bit "half-precision" floating-point value.

[Format](#enum-image-format) **FORMAT\_RGBE9995** = `16`

A special OpenGL texture format where the three color components have 9 bits of precision and all three share a single 5-bit exponent.

[Format](#enum-image-format) **FORMAT\_DXT1** = `17`

The [S3TC](https://en.wikipedia.org/wiki/S3_Texture_Compression) texture format that uses Block Compression 1, and is the smallest variation of S3TC, only providing 1 bit of alpha and color data being premultiplied with alpha.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_DXT3** = `18`

The [S3TC](https://en.wikipedia.org/wiki/S3_Texture_Compression) texture format that uses Block Compression 2, and color data is interpreted as not having been premultiplied by alpha. Well suited for images with sharp alpha transitions between translucent and opaque areas.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_DXT5** = `19`

The [S3TC](https://en.wikipedia.org/wiki/S3_Texture_Compression) texture format also known as Block Compression 3 or BC3 that contains 64 bits of alpha channel data followed by 64 bits of DXT1-encoded color data. Color data is not premultiplied by alpha, same as DXT3. DXT5 generally produces superior results for transparent gradients compared to DXT3.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_RGTC\_R** = `20`

Texture format that uses [Red Green Texture Compression](https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression), normalizing the red channel data using the same compression algorithm that DXT5 uses for the alpha channel.

[Format](#enum-image-format) **FORMAT\_RGTC\_RG** = `21`

Texture format that uses [Red Green Texture Compression](https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression), normalizing the red and green channel data using the same compression algorithm that DXT5 uses for the alpha channel.

[Format](#enum-image-format) **FORMAT\_BPTC\_RGBA** = `22`

Texture format that uses [BPTC](https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression) compression with unsigned normalized RGBA components.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_BPTC\_RGBF** = `23`

Texture format that uses [BPTC](https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression) compression with signed floating-point RGB components.

[Format](#enum-image-format) **FORMAT\_BPTC\_RGBFU** = `24`

Texture format that uses [BPTC](https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression) compression with unsigned floating-point RGB components.

[Format](#enum-image-format) **FORMAT\_ETC** = `25`

[Ericsson Texture Compression format 1](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC1), also referred to as "ETC1", and is part of the OpenGL ES graphics standard. This format cannot store an alpha channel.

[Format](#enum-image-format) **FORMAT\_ETC2\_R11** = `26`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `R11_EAC` variant), which provides one channel of unsigned data.

[Format](#enum-image-format) **FORMAT\_ETC2\_R11S** = `27`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `SIGNED_R11_EAC` variant), which provides one channel of signed data.

[Format](#enum-image-format) **FORMAT\_ETC2\_RG11** = `28`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `RG11_EAC` variant), which provides two channels of unsigned data.

[Format](#enum-image-format) **FORMAT\_ETC2\_RG11S** = `29`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `SIGNED_RG11_EAC` variant), which provides two channels of signed data.

[Format](#enum-image-format) **FORMAT\_ETC2\_RGB8** = `30`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `RGB8` variant), which is a follow-up of ETC1 and compresses RGB888 data.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_ETC2\_RGBA8** = `31`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `RGBA8` variant), which compresses RGBA8888 data with full alpha support.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_ETC2\_RGB8A1** = `32`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `RGB8_PUNCHTHROUGH_ALPHA1` variant), which compresses RGBA data to make alpha either fully transparent or fully opaque.

**Note:** When creating an [ImageTexture](class_imagetexture.md#class-imagetexture), an sRGB to linear color space conversion is performed.

[Format](#enum-image-format) **FORMAT\_ETC2\_RA\_AS\_RG** = `33`

[Ericsson Texture Compression format 2](https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC) ( `RGBA8` variant), which compresses RA data and interprets it as two channels (red and green). See also [FORMAT\_ETC2\_RGBA8](#class-image-constant-format-etc2-rgba8).

[Format](#enum-image-format) **FORMAT\_DXT5\_RA\_AS\_RG** = `34`

The [S3TC](https://en.wikipedia.org/wiki/S3_Texture_Compression) texture format also known as Block Compression 3 or BC3, which compresses RA data and interprets it as two channels (red and green). See also [FORMAT\_DXT5](#class-image-constant-format-dxt5).

[Format](#enum-image-format) **FORMAT\_ASTC\_4x4** = `35`

[Adaptive Scalable Texture Compression](https://en.wikipedia.org/wiki/Adaptive_scalable_texture_compression). This implements the 4×4 (high quality) mode.

[Format](#enum-image-format) **FORMAT\_ASTC\_4x4\_HDR** = `36`

Same format as [FORMAT\_ASTC\_4x4](#class-image-constant-format-astc-4x4), but with the hint to let the GPU know it is used for HDR.

[Format](#enum-image-format) **FORMAT\_ASTC\_8x8** = `37`

[Adaptive Scalable Texture Compression](https://en.wikipedia.org/wiki/Adaptive_scalable_texture_compression). This implements the 8×8 (low quality) mode.

[Format](#enum-image-format) **FORMAT\_ASTC\_8x8\_HDR** = `38`

Same format as [FORMAT\_ASTC\_8x8](#class-image-constant-format-astc-8x8), but with the hint to let the GPU know it is used for HDR.

[Format](#enum-image-format) **FORMAT\_MAX** = `39`

Represents the size of the [Format](#enum-image-format) enum.

* * *

enum **Interpolation**: [🔗](#enum-image-interpolation)

[Interpolation](#enum-image-interpolation) **INTERPOLATE\_NEAREST** = `0`

Performs nearest-neighbor interpolation. If the image is resized, it will be pixelated.

[Interpolation](#enum-image-interpolation) **INTERPOLATE\_BILINEAR** = `1`

Performs bilinear interpolation. If the image is resized, it will be blurry. This mode is faster than [INTERPOLATE\_CUBIC](#class-image-constant-interpolate-cubic), but it results in lower quality.

[Interpolation](#enum-image-interpolation) **INTERPOLATE\_CUBIC** = `2`

Performs cubic interpolation. If the image is resized, it will be blurry. This mode often gives better results compared to [INTERPOLATE\_BILINEAR](#class-image-constant-interpolate-bilinear), at the cost of being slower.

[Interpolation](#enum-image-interpolation) **INTERPOLATE\_TRILINEAR** = `3`

Performs bilinear separately on the two most-suited mipmap levels, then linearly interpolates between them.

It's slower than [INTERPOLATE\_BILINEAR](#class-image-constant-interpolate-bilinear), but produces higher-quality results with far fewer aliasing artifacts.

If the image does not have mipmaps, they will be generated and used internally, but no mipmaps will be generated on the resulting image.

**Note:** If you intend to scale multiple copies of the original image, it's better to call [generate\_mipmaps()](#class-image-method-generate-mipmaps)\] on it in advance, to avoid wasting processing power in generating them again and again.

On the other hand, if the image already has mipmaps, they will be used, and a new set will be generated for the resulting image.

[Interpolation](#enum-image-interpolation) **INTERPOLATE\_LANCZOS** = `4`

Performs Lanczos interpolation. This is the slowest image resizing mode, but it typically gives the best results, especially when downscaling images.

* * *

enum **AlphaMode**: [🔗](#enum-image-alphamode)

[AlphaMode](#enum-image-alphamode) **ALPHA\_NONE** = `0`

Image does not have alpha.

[AlphaMode](#enum-image-alphamode) **ALPHA\_BIT** = `1`

Image stores alpha in a single bit.

[AlphaMode](#enum-image-alphamode) **ALPHA\_BLEND** = `2`

Image uses alpha.

* * *

enum **CompressMode**: [🔗](#enum-image-compressmode)

[CompressMode](#enum-image-compressmode) **COMPRESS\_S3TC** = `0`

Use S3TC compression.

[CompressMode](#enum-image-compressmode) **COMPRESS\_ETC** = `1`

Use ETC compression.

[CompressMode](#enum-image-compressmode) **COMPRESS\_ETC2** = `2`

Use ETC2 compression.

[CompressMode](#enum-image-compressmode) **COMPRESS\_BPTC** = `3`

Use BPTC compression.

[CompressMode](#enum-image-compressmode) **COMPRESS\_ASTC** = `4`

Use ASTC compression.

[CompressMode](#enum-image-compressmode) **COMPRESS\_MAX** = `5`

Represents the size of the [CompressMode](#enum-image-compressmode) enum.

* * *

enum **UsedChannels**: [🔗](#enum-image-usedchannels)

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_L** = `0`

The image only uses one channel for luminance (grayscale).

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_LA** = `1`

The image uses two channels for luminance and alpha, respectively.

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_R** = `2`

The image only uses the red channel.

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_RG** = `3`

The image uses two channels for red and green.

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_RGB** = `4`

The image uses three channels for red, green, and blue.

[UsedChannels](#enum-image-usedchannels) **USED\_CHANNELS\_RGBA** = `5`

The image uses four channels for red, green, blue, and alpha.

* * *

enum **CompressSource**: [🔗](#enum-image-compresssource)

[CompressSource](#enum-image-compresssource) **COMPRESS\_SOURCE\_GENERIC** = `0`

Source texture (before compression) is a regular texture. Default for all textures.

[CompressSource](#enum-image-compresssource) **COMPRESS\_SOURCE\_SRGB** = `1`

Source texture (before compression) is in sRGB space.

[CompressSource](#enum-image-compresssource) **COMPRESS\_SOURCE\_NORMAL** = `2`

Source texture (before compression) is a normal texture (e.g. it can be compressed into two channels).

* * *

enum **ASTCFormat**: [🔗](#enum-image-astcformat)

[ASTCFormat](#enum-image-astcformat) **ASTC\_FORMAT\_4x4** = `0`

Hint to indicate that the high quality 4×4 ASTC compression format should be used.

[ASTCFormat](#enum-image-astcformat) **ASTC\_FORMAT\_8x8** = `1`

Hint to indicate that the low quality 8×8 ASTC compression format should be used.

* * *

## Constants

**MAX\_WIDTH** = `16777216` [🔗](#class-image-constant-max-width)

The maximal width allowed for **Image** resources.

**MAX\_HEIGHT** = `16777216` [🔗](#class-image-constant-max-height)

The maximal height allowed for **Image** resources.

* * *

## Property Descriptions

[Dictionary](class_dictionary.md#class-dictionary) **data** = `{ "data": PackedByteArray(), "format": "Lum8", "height": 0, "mipmaps": false, "width": 0 }` [🔗](#class-image-property-data)

Holds all the image's color data in a given format. See [Format](#enum-image-format) constants.

* * *

## Method Descriptions

void **adjust\_bcs**(brightness: [float](class_float.md#class-float), contrast: [float](class_float.md#class-float), saturation: [float](class_float.md#class-float)) [🔗](#class-image-method-adjust-bcs)

Adjusts this image's `brightness`, `contrast`, and `saturation` by the given values. Does not work if the image is compressed (see [is\_compressed()](#class-image-method-is-compressed)).

* * *

void **blend\_rect**(src: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-image-method-blend-rect)

Alpha-blends `src_rect` from `src` image to this image at coordinates `dst`, clipped accordingly to both image bounds. This image and `src` image **must** have the same format. `src_rect` with non-positive size is treated as empty.

* * *

void **blend\_rect\_mask**(src: [Image](#class-image), mask: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-image-method-blend-rect-mask)

Alpha-blends `src_rect` from `src` image to this image using `mask` image at coordinates `dst`, clipped accordingly to both image bounds. Alpha channels are required for both `src` and `mask`. `dst` pixels and `src` pixels will blend if the corresponding mask pixel's alpha value is not 0. This image and `src` image **must** have the same format. `src` image and `mask` image **must** have the same size (width and height) but they can have different formats. `src_rect` with non-positive size is treated as empty.

* * *

void **blit\_rect**(src: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-image-method-blit-rect)

Copies `src_rect` from `src` image to this image at coordinates `dst`, clipped accordingly to both image bounds. This image and `src` image **must** have the same format. `src_rect` with non-positive size is treated as empty.

**Note:** The alpha channel data in `src` will overwrite the corresponding data in this image at the target position. To blend alpha channels, use [blend\_rect()](#class-image-method-blend-rect) instead.

* * *

void **blit\_rect\_mask**(src: [Image](#class-image), mask: [Image](#class-image), src\_rect: [Rect2i](class_rect2i.md#class-rect2i), dst: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-image-method-blit-rect-mask)

Blits `src_rect` area from `src` image to this image at the coordinates given by `dst`, clipped accordingly to both image bounds. `src` pixel is copied onto `dst` if the corresponding `mask` pixel's alpha value is not 0. This image and `src` image **must** have the same format. `src` image and `mask` image **must** have the same size (width and height) but they can have different formats. `src_rect` with non-positive size is treated as empty.

* * *

void **bump\_map\_to\_normal\_map**(bump\_scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-image-method-bump-map-to-normal-map)

Converts a bump map to a normal map. A bump map provides a height offset per-pixel, while a normal map provides a normal direction per pixel.

* * *

void **clear\_mipmaps**() [🔗](#class-image-method-clear-mipmaps)

Removes the image's mipmaps.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **compress**(mode: [CompressMode](#enum-image-compressmode), source: [CompressSource](#enum-image-compresssource) = 0, astc\_format: [ASTCFormat](#enum-image-astcformat) = 0) [🔗](#class-image-method-compress)

Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available.

The `source` parameter helps to pick the best compression method for DXT and ETC2 formats. It is ignored for ASTC compression.

For ASTC compression, the `astc_format` parameter must be supplied.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **compress\_from\_channels**(mode: [CompressMode](#enum-image-compressmode), channels: [UsedChannels](#enum-image-usedchannels), astc\_format: [ASTCFormat](#enum-image-astcformat) = 0) [🔗](#class-image-method-compress-from-channels)

Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available.

This is an alternative to [compress()](#class-image-method-compress) that lets the user supply the channels used in order for the compressor to pick the best DXT and ETC2 formats. For other formats (non DXT or ETC2), this argument is ignored.

For ASTC compression, the `astc_format` parameter must be supplied.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **compute\_image\_metrics**(compared\_image: [Image](#class-image), use\_luma: [bool](class_bool.md#class-bool)) [🔗](#class-image-method-compute-image-metrics)

Compute image metrics on the current image and the compared image.

The dictionary contains `max`, `mean`, `mean_squared`, `root_mean_squared` and `peak_snr`.

* * *

void **convert**(format: [Format](#enum-image-format)) [🔗](#class-image-method-convert)

Converts this image's format to the given `format`.

* * *

void **copy\_from**(src: [Image](#class-image)) [🔗](#class-image-method-copy-from)

Copies `src` image to this image.

* * *

[Image](#class-image) **create**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format)) static [🔗](#class-image-method-create)

**Deprecated:** Use [create\_empty()](#class-image-method-create-empty).

Creates an empty image of the given size and format. If `use_mipmaps` is `true`, generates mipmaps for this image. See the [generate\_mipmaps()](#class-image-method-generate-mipmaps).

* * *

[Image](#class-image) **create\_empty**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format)) static [🔗](#class-image-method-create-empty)

Creates an empty image of the given size and format. If `use_mipmaps` is `true`, generates mipmaps for this image. See the [generate\_mipmaps()](#class-image-method-generate-mipmaps).

* * *

[Image](#class-image) **create\_from\_data**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) static [🔗](#class-image-method-create-from-data)

Creates a new image of the given size and format. Fills the image with the given raw data. If `use_mipmaps` is `true`, loads the mipmaps for this image from `data`. See [generate\_mipmaps()](#class-image-method-generate-mipmaps).

* * *

void **crop**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) [🔗](#class-image-method-crop)

Crops the image to the given `width` and `height`. If the specified size is larger than the current size, the extra area is filled with black pixels.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **decompress**() [🔗](#class-image-method-decompress)

Decompresses the image if it is VRAM compressed in a supported format. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the format is supported, otherwise [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable).

**Note:** The following formats can be decompressed: DXT, RGTC, BPTC. The formats ETC1 and ETC2 are not supported.

* * *

[AlphaMode](#enum-image-alphamode) **detect\_alpha**() const [🔗](#class-image-method-detect-alpha)

Returns [ALPHA\_BLEND](#class-image-constant-alpha-blend) if the image has data for alpha values. Returns [ALPHA\_BIT](#class-image-constant-alpha-bit) if all the alpha values are stored in a single bit. Returns [ALPHA\_NONE](#class-image-constant-alpha-none) if no data for alpha values is found.

* * *

[UsedChannels](#enum-image-usedchannels) **detect\_used\_channels**(source: [CompressSource](#enum-image-compresssource) = 0) const [🔗](#class-image-method-detect-used-channels)

Returns the color channels used by this image. If the image is compressed, the original `source` must be specified.

* * *

void **fill**(color: [Color](class_color.md#class-color)) [🔗](#class-image-method-fill)

Fills the image with `color`.

* * *

void **fill\_rect**(rect: [Rect2i](class_rect2i.md#class-rect2i), color: [Color](class_color.md#class-color)) [🔗](#class-image-method-fill-rect)

Fills `rect` with `color`.

* * *

void **fix\_alpha\_edges**() [🔗](#class-image-method-fix-alpha-edges)

Blends low-alpha pixels with nearby pixels.

* * *

void **flip\_x**() [🔗](#class-image-method-flip-x)

Flips the image horizontally.

* * *

void **flip\_y**() [🔗](#class-image-method-flip-y)

Flips the image vertically.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **generate\_mipmaps**(renormalize: [bool](class_bool.md#class-bool) = false) [🔗](#class-image-method-generate-mipmaps)

Generates mipmaps for the image. Mipmaps are precalculated lower-resolution copies of the image that are automatically used if the image needs to be scaled down when rendered. They help improve image quality and performance when rendering. This method returns an error if the image is compressed, in a custom format, or if the image's width/height is `0`. Enabling `renormalize` when generating mipmaps for normal map textures will make sure all resulting vector values are normalized.

It is possible to check if the image has mipmaps by calling [has\_mipmaps()](#class-image-method-has-mipmaps) or [get\_mipmap\_count()](#class-image-method-get-mipmap-count). Calling [generate\_mipmaps()](#class-image-method-generate-mipmaps) on an image that already has mipmaps will replace existing mipmaps in the image.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_data**() const [🔗](#class-image-method-get-data)

Returns a copy of the image's raw data.

* * *

[int](class_int.md#class-int) **get\_data\_size**() const [🔗](#class-image-method-get-data-size)

Returns size (in bytes) of the image's raw data.

* * *

[Format](#enum-image-format) **get\_format**() const [🔗](#class-image-method-get-format)

Returns this image's format.

* * *

[int](class_int.md#class-int) **get\_height**() const [🔗](#class-image-method-get-height)

Returns the image's height.

* * *

[int](class_int.md#class-int) **get\_mipmap\_count**() const [🔗](#class-image-method-get-mipmap-count)

Returns the number of mipmap levels or 0 if the image has no mipmaps. The largest main level image is not counted as a mipmap level by this method, so if you want to include it you can add 1 to this count.

* * *

[int](class_int.md#class-int) **get\_mipmap\_offset**(mipmap: [int](class_int.md#class-int)) const [🔗](#class-image-method-get-mipmap-offset)

Returns the offset where the image's mipmap with index `mipmap` is stored in the [data](#class-image-property-data) dictionary.

* * *

[Color](class_color.md#class-color) **get\_pixel**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) const [🔗](#class-image-method-get-pixel)

Returns the color of the pixel at `(x, y)`.

This is the same as [get\_pixelv()](#class-image-method-get-pixelv), but with two integer arguments instead of a [Vector2i](class_vector2i.md#class-vector2i) argument.

* * *

[Color](class_color.md#class-color) **get\_pixelv**(point: [Vector2i](class_vector2i.md#class-vector2i)) const [🔗](#class-image-method-get-pixelv)

Returns the color of the pixel at `point`.

This is the same as [get\_pixel()](#class-image-method-get-pixel), but with a [Vector2i](class_vector2i.md#class-vector2i) argument instead of two integer arguments.

* * *

[Image](#class-image) **get\_region**(region: [Rect2i](class_rect2i.md#class-rect2i)) const [🔗](#class-image-method-get-region)

Returns a new **Image** that is a copy of this **Image**'s area specified with `region`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_size**() const [🔗](#class-image-method-get-size)

Returns the image's size (width and height).

* * *

[Rect2i](class_rect2i.md#class-rect2i) **get\_used\_rect**() const [🔗](#class-image-method-get-used-rect)

Returns a [Rect2i](class_rect2i.md#class-rect2i) enclosing the visible portion of the image, considering each pixel with a non-zero alpha channel as visible.

* * *

[int](class_int.md#class-int) **get\_width**() const [🔗](#class-image-method-get-width)

Returns the image's width.

* * *

[bool](class_bool.md#class-bool) **has\_mipmaps**() const [🔗](#class-image-method-has-mipmaps)

Returns `true` if the image has generated mipmaps.

* * *

[bool](class_bool.md#class-bool) **is\_compressed**() const [🔗](#class-image-method-is-compressed)

Returns `true` if the image is compressed.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-image-method-is-empty)

Returns `true` if the image has no data.

* * *

[bool](class_bool.md#class-bool) **is\_invisible**() const [🔗](#class-image-method-is-invisible)

Returns `true` if all the image's pixels have an alpha value of 0. Returns `false` if any pixel has an alpha value higher than 0.

* * *

void **linear\_to\_srgb**() [🔗](#class-image-method-linear-to-srgb)

Converts the entire image from the linear colorspace to the sRGB colorspace. Only works on images with [FORMAT\_RGB8](#class-image-constant-format-rgb8) or [FORMAT\_RGBA8](#class-image-constant-format-rgba8) formats.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-image-method-load)

Loads an image from file `path`. See [Supported image formats](../tutorials/assets_pipeline/importing_images.md#supported-image-formats) for a list of supported image formats and limitations.

**Warning:** This method should only be used in the editor or in cases when you need to load external images at run-time, such as images located at the `user://` directory, and may not work in exported projects.

See also [ImageTexture](class_imagetexture.md#class-imagetexture) description for usage examples.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_bmp\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-bmp-from-buffer)

Loads an image from the binary contents of a BMP file.

**Note:** Godot's BMP module doesn't support 16-bit per pixel images. Only 1-bit, 4-bit, 8-bit, 24-bit, and 32-bit per pixel images are supported.

**Note:** This method is only available in engine builds with the BMP module enabled. By default, the BMP module is enabled, but it can be disabled at build-time using the `module_bmp_enabled=no` SCons option.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_dds\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-dds-from-buffer)

Loads an image from the binary contents of a DDS file.

**Note:** This method is only available in engine builds with the DDS module enabled. By default, the DDS module is enabled, but it can be disabled at build-time using the `module_dds_enabled=no` SCons option.

* * *

[Image](#class-image) **load\_from\_file**(path: [String](class_string.md#class-string)) static [🔗](#class-image-method-load-from-file)

Creates a new **Image** and loads data from the specified file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_jpg\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-jpg-from-buffer)

Loads an image from the binary contents of a JPEG file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_ktx\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-ktx-from-buffer)

Loads an image from the binary contents of a [KTX](https://github.com/KhronosGroup/KTX-Software) file. Unlike most image formats, KTX can store VRAM-compressed data and embed mipmaps.

**Note:** Godot's libktx implementation only supports 2D images. Cubemaps, texture arrays, and de-padding are not supported.

**Note:** This method is only available in engine builds with the KTX module enabled. By default, the KTX module is enabled, but it can be disabled at build-time using the `module_ktx_enabled=no` SCons option.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_png\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-png-from-buffer)

Loads an image from the binary contents of a PNG file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_svg\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-image-method-load-svg-from-buffer)

Loads an image from the UTF-8 binary contents of an **uncompressed** SVG file ( **.svg**).

**Note:** Beware when using compressed SVG files (like **.svgz**), they need to be `decompressed` before loading.

**Note:** This method is only available in engine builds with the SVG module enabled. By default, the SVG module is enabled, but it can be disabled at build-time using the `module_svg_enabled=no` SCons option.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_svg\_from\_string**(svg\_str: [String](class_string.md#class-string), scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-image-method-load-svg-from-string)

Loads an image from the string contents of an SVG file ( **.svg**).

**Note:** This method is only available in engine builds with the SVG module enabled. By default, the SVG module is enabled, but it can be disabled at build-time using the `module_svg_enabled=no` SCons option.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_tga\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-tga-from-buffer)

Loads an image from the binary contents of a TGA file.

**Note:** This method is only available in engine builds with the TGA module enabled. By default, the TGA module is enabled, but it can be disabled at build-time using the `module_tga_enabled=no` SCons option.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_webp\_from\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-load-webp-from-buffer)

Loads an image from the binary contents of a WebP file.

* * *

void **normal\_map\_to\_xy**() [🔗](#class-image-method-normal-map-to-xy)

Converts the image's data to represent coordinates on a 3D plane. This is used when the image represents a normal map. A normal map can add lots of detail to a 3D surface without increasing the polygon count.

* * *

void **premultiply\_alpha**() [🔗](#class-image-method-premultiply-alpha)

Multiplies color values with alpha values. Resulting color values for a pixel are `(color * alpha)/256`. See also [CanvasItemMaterial.blend\_mode](class_canvasitemmaterial.md#class-canvasitemmaterial-property-blend-mode).

* * *

void **resize**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), interpolation: [Interpolation](#enum-image-interpolation) = 1) [🔗](#class-image-method-resize)

Resizes the image to the given `width` and `height`. New pixels are calculated using the `interpolation` mode defined via [Interpolation](#enum-image-interpolation) constants.

* * *

void **resize\_to\_po2**(square: [bool](class_bool.md#class-bool) = false, interpolation: [Interpolation](#enum-image-interpolation) = 1) [🔗](#class-image-method-resize-to-po2)

Resizes the image to the nearest power of 2 for the width and height. If `square` is `true`, sets width and height to be the same. New pixels are calculated using the `interpolation` mode defined via [Interpolation](#enum-image-interpolation) constants.

* * *

[Image](#class-image) **rgbe\_to\_srgb**() [🔗](#class-image-method-rgbe-to-srgb)

Converts a standard RGBE (Red Green Blue Exponent) image to an sRGB image.

* * *

void **rotate\_90**(direction: [ClockDirection](class_@globalscope.md#enum-globalscope-clockdirection)) [🔗](#class-image-method-rotate-90)

Rotates the image in the specified `direction` by `90` degrees. The width and height of the image must be greater than `1`. If the width and height are not equal, the image will be resized.

* * *

void **rotate\_180**() [🔗](#class-image-method-rotate-180)

Rotates the image by `180` degrees. The width and height of the image must be greater than `1`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_dds**(path: [String](class_string.md#class-string)) const [🔗](#class-image-method-save-dds)

Saves the image as a DDS (DirectDraw Surface) file to `path`. DDS is a container format that can store textures in various compression formats, such as DXT1, DXT5, or BC7. This function will return [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) if Godot was compiled without the DDS module.

**Note:** The DDS module may be disabled in certain builds, which means [save\_dds()](#class-image-method-save-dds) will return [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) when it is called from an exported project.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **save\_dds\_to\_buffer**() const [🔗](#class-image-method-save-dds-to-buffer)

Saves the image as a DDS (DirectDraw Surface) file to a byte array. DDS is a container format that can store textures in various compression formats, such as DXT1, DXT5, or BC7. This function will return an empty byte array if Godot was compiled without the DDS module.

**Note:** The DDS module may be disabled in certain builds, which means [save\_dds\_to\_buffer()](#class-image-method-save-dds-to-buffer) will return an empty byte array when it is called from an exported project.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_exr**(path: [String](class_string.md#class-string), grayscale: [bool](class_bool.md#class-bool) = false) const [🔗](#class-image-method-save-exr)

Saves the image as an EXR file to `path`. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) if Godot was compiled without the TinyEXR module.

**Note:** The TinyEXR module is disabled in non-editor builds, which means [save\_exr()](#class-image-method-save-exr) will return [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) when it is called from an exported project.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **save\_exr\_to\_buffer**(grayscale: [bool](class_bool.md#class-bool) = false) const [🔗](#class-image-method-save-exr-to-buffer)

Saves the image as an EXR file to a byte array. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return an empty byte array if Godot was compiled without the TinyEXR module.

**Note:** The TinyEXR module is disabled in non-editor builds, which means [save\_exr\_to\_buffer()](#class-image-method-save-exr-to-buffer) will return an empty byte array when it is called from an exported project.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_jpg**(path: [String](class_string.md#class-string), quality: [float](class_float.md#class-float) = 0.75) const [🔗](#class-image-method-save-jpg)

Saves the image as a JPEG file to `path` with the specified `quality` between `0.01` and `1.0` (inclusive). Higher `quality` values result in better-looking output at the cost of larger file sizes. Recommended `quality` values are between `0.75` and `0.90`. Even at quality `1.00`, JPEG compression remains lossy.

**Note:** JPEG does not save an alpha channel. If the **Image** contains an alpha channel, the image will still be saved, but the resulting JPEG file won't contain the alpha channel.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **save\_jpg\_to\_buffer**(quality: [float](class_float.md#class-float) = 0.75) const [🔗](#class-image-method-save-jpg-to-buffer)

Saves the image as a JPEG file to a byte array with the specified `quality` between `0.01` and `1.0` (inclusive). Higher `quality` values result in better-looking output at the cost of larger byte array sizes (and therefore memory usage). Recommended `quality` values are between `0.75` and `0.90`. Even at quality `1.00`, JPEG compression remains lossy.

**Note:** JPEG does not save an alpha channel. If the **Image** contains an alpha channel, the image will still be saved, but the resulting byte array won't contain the alpha channel.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_png**(path: [String](class_string.md#class-string)) const [🔗](#class-image-method-save-png)

Saves the image as a PNG file to the file at `path`.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **save\_png\_to\_buffer**() const [🔗](#class-image-method-save-png-to-buffer)

Saves the image as a PNG file to a byte array.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_webp**(path: [String](class_string.md#class-string), lossy: [bool](class_bool.md#class-bool) = false, quality: [float](class_float.md#class-float) = 0.75) const [🔗](#class-image-method-save-webp)

Saves the image as a WebP (Web Picture) file to the file at `path`. By default it will save lossless. If `lossy` is `true`, the image will be saved lossy, using the `quality` setting between `0.0` and `1.0` (inclusive). Lossless WebP offers more efficient compression than PNG.

**Note:** The WebP format is limited to a size of 16383×16383 pixels, while PNG can save larger images.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **save\_webp\_to\_buffer**(lossy: [bool](class_bool.md#class-bool) = false, quality: [float](class_float.md#class-float) = 0.75) const [🔗](#class-image-method-save-webp-to-buffer)

Saves the image as a WebP (Web Picture) file to a byte array. By default it will save lossless. If `lossy` is `true`, the image will be saved lossy, using the `quality` setting between `0.0` and `1.0` (inclusive). Lossless WebP offers more efficient compression than PNG.

**Note:** The WebP format is limited to a size of 16383×16383 pixels, while PNG can save larger images.

* * *

void **set\_data**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), format: [Format](#enum-image-format), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-image-method-set-data)

Overwrites data of an existing **Image**. Non-static equivalent of [create\_from\_data()](#class-image-method-create-from-data).

* * *

void **set\_pixel**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-image-method-set-pixel)

Sets the [Color](class_color.md#class-color) of the pixel at `(x, y)` to `color`.

GDScriptC#

```
var img_width = 10
var img_height = 5
var img = Image.create(img_width, img_height, false, Image.FORMAT_RGBA8)

img.set_pixel(1, 2, Color.RED) # Sets the color at (1, 2) to red.

```

```
int imgWidth = 10;
int imgHeight = 5;
var img = Image.Create(imgWidth, imgHeight, false, Image.Format.Rgba8);

img.SetPixel(1, 2, Colors.Red); // Sets the color at (1, 2) to red.

```

This is the same as [set\_pixelv()](#class-image-method-set-pixelv), but with a two integer arguments instead of a [Vector2i](class_vector2i.md#class-vector2i) argument.

* * *

void **set\_pixelv**(point: [Vector2i](class_vector2i.md#class-vector2i), color: [Color](class_color.md#class-color)) [🔗](#class-image-method-set-pixelv)

Sets the [Color](class_color.md#class-color) of the pixel at `point` to `color`.

GDScriptC#

```
var img_width = 10
var img_height = 5
var img = Image.create(img_width, img_height, false, Image.FORMAT_RGBA8)

img.set_pixelv(Vector2i(1, 2), Color.RED) # Sets the color at (1, 2) to red.

```

```
int imgWidth = 10;
int imgHeight = 5;
var img = Image.Create(imgWidth, imgHeight, false, Image.Format.Rgba8);

img.SetPixelv(new Vector2I(1, 2), Colors.Red); // Sets the color at (1, 2) to red.

```

This is the same as [set\_pixel()](#class-image-method-set-pixel), but with a [Vector2i](class_vector2i.md#class-vector2i) argument instead of two integer arguments.

* * *

void **shrink\_x2**() [🔗](#class-image-method-shrink-x2)

Shrinks the image by a factor of 2 on each axis (this divides the pixel count by 4).

* * *

void **srgb\_to\_linear**() [🔗](#class-image-method-srgb-to-linear)

Converts the raw data from the sRGB colorspace to a linear scale. Only works on images with [FORMAT\_RGB8](#class-image-constant-format-rgb8) or [FORMAT\_RGBA8](#class-image-constant-format-rgba8) formats.

[Previous](class_heightmapshape3d.md "HeightMapShape3D") [Next](class_imagetexture.md "ImageTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_heightmapshape3d.md "HeightMapShape3D") [Next](class_imagetexture.md "ImageTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).