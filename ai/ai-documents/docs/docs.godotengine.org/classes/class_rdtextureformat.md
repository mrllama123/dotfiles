---
title: RDTextureFormat — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdtextureformat.html
crawled_at: "2026-08-13T10:34:41+12:00"
content_hash: 386a1312a642eed294fab50d82ad95099309191ba02b98047a255af67cccd2d1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDTextureFormat

* * *

# RDTextureFormat

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture format (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [array\_layers](#class-rdtextureformat-property-array-layers) | `1` |
| [int](class_int.md#class-int) | [depth](#class-rdtextureformat-property-depth) | `1` |
| [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) | [format](#class-rdtextureformat-property-format) | `8` |
| [int](class_int.md#class-int) | [height](#class-rdtextureformat-property-height) | `1` |
| [bool](class_bool.md#class-bool) | [is\_discardable](#class-rdtextureformat-property-is-discardable) | `false` |
| [bool](class_bool.md#class-bool) | [is\_resolve\_buffer](#class-rdtextureformat-property-is-resolve-buffer) | `false` |
| [int](class_int.md#class-int) | [mipmaps](#class-rdtextureformat-property-mipmaps) | `1` |
| [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) | [samples](#class-rdtextureformat-property-samples) | `0` |
| [TextureType](class_renderingdevice.md#enum-renderingdevice-texturetype) | [texture\_type](#class-rdtextureformat-property-texture-type) | `1` |
| BitField\[ [TextureUsageBits](class_renderingdevice.md#enum-renderingdevice-textureusagebits)\] | [usage\_bits](#class-rdtextureformat-property-usage-bits) | `0` |
| [int](class_int.md#class-int) | [width](#class-rdtextureformat-property-width) | `1` |

## Methods

|     |     |
| --- | --- |
| void | [add\_shareable\_format](#class-rdtextureformat-method-add-shareable-format)(format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat)) |
| void | [remove\_shareable\_format](#class-rdtextureformat-method-remove-shareable-format)(format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **array\_layers** = `1` [🔗](#class-rdtextureformat-property-array-layers)

- void **set\_array\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_array\_layers**()


The number of layers in the texture. Only relevant for 2D texture arrays.

* * *

[int](class_int.md#class-int) **depth** = `1` [🔗](#class-rdtextureformat-property-depth)

- void **set\_depth**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_depth**()


The texture's depth (in pixels). This is always `1` for 2D textures.

* * *

[DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **format** = `8` [🔗](#class-rdtextureformat-property-format)

- void **set\_format**(value: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat))

- [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **get\_format**()


The texture's pixel data format.

* * *

[int](class_int.md#class-int) **height** = `1` [🔗](#class-rdtextureformat-property-height)

- void **set\_height**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_height**()


The texture's height (in pixels).

* * *

[bool](class_bool.md#class-bool) **is\_discardable** = `false` [🔗](#class-rdtextureformat-property-is-discardable)

- void **set\_is\_discardable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_is\_discardable**()


If a texture is discardable, its contents do not need to be preserved between frames. This flag is only relevant when the texture is used as target in a draw list.

This information is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice) to figure out if a texture's contents can be discarded, eliminating unnecessary writes to memory and boosting performance.

* * *

[bool](class_bool.md#class-bool) **is\_resolve\_buffer** = `false` [🔗](#class-rdtextureformat-property-is-resolve-buffer)

- void **set\_is\_resolve\_buffer**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_is\_resolve\_buffer**()


The texture will be used as the destination of a resolve operation.

* * *

[int](class_int.md#class-int) **mipmaps** = `1` [🔗](#class-rdtextureformat-property-mipmaps)

- void **set\_mipmaps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_mipmaps**()


The number of mipmaps available in the texture.

* * *

[TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **samples** = `0` [🔗](#class-rdtextureformat-property-samples)

- void **set\_samples**(value: [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples))

- [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **get\_samples**()


The number of samples used when sampling the texture.

* * *

[TextureType](class_renderingdevice.md#enum-renderingdevice-texturetype) **texture\_type** = `1` [🔗](#class-rdtextureformat-property-texture-type)

- void **set\_texture\_type**(value: [TextureType](class_renderingdevice.md#enum-renderingdevice-texturetype))

- [TextureType](class_renderingdevice.md#enum-renderingdevice-texturetype) **get\_texture\_type**()


The texture type.

* * *

BitField\[ [TextureUsageBits](class_renderingdevice.md#enum-renderingdevice-textureusagebits)\] **usage\_bits** = `0` [🔗](#class-rdtextureformat-property-usage-bits)

- void **set\_usage\_bits**(value: BitField\[ [TextureUsageBits](class_renderingdevice.md#enum-renderingdevice-textureusagebits)\])

- BitField\[ [TextureUsageBits](class_renderingdevice.md#enum-renderingdevice-textureusagebits)\] **get\_usage\_bits**()


The texture's usage bits, which determine what can be done using the texture.

* * *

[int](class_int.md#class-int) **width** = `1` [🔗](#class-rdtextureformat-property-width)

- void **set\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_width**()


The texture's width (in pixels).

* * *

## Method Descriptions

void **add\_shareable\_format**(format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat)) [🔗](#class-rdtextureformat-method-add-shareable-format)

Adds `format` as a valid format for the corresponding [RDTextureView](class_rdtextureview.md#class-rdtextureview)'s [RDTextureView.format\_override](class_rdtextureview.md#class-rdtextureview-property-format-override) property. If any format is added as shareable, then the main [format](#class-rdtextureformat-property-format) must also be added.

* * *

void **remove\_shareable\_format**(format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat)) [🔗](#class-rdtextureformat-method-remove-shareable-format)

Removes `format` from the list of valid formats that the corresponding [RDTextureView](class_rdtextureview.md#class-rdtextureview)'s [RDTextureView.format\_override](class_rdtextureview.md#class-rdtextureview-property-format-override) property can be set to.

[Previous](class_rdshadersource.md "RDShaderSource") [Next](class_rdtextureview.md "RDTextureView")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdshadersource.md "RDShaderSource") [Next](class_rdtextureview.md "RDTextureView")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).