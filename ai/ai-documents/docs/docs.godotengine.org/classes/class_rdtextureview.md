---
title: RDTextureView — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdtextureview.html
crawled_at: "2026-08-13T10:35:39+12:00"
content_hash: cbb98e3942da3af9b446540065a8326a1c82f64fa57b4b64c7654bec817c8566
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDTextureView

* * *

# RDTextureView

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture view (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) | [format\_override](#class-rdtextureview-property-format-override) | `232` |
| [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) | [swizzle\_a](#class-rdtextureview-property-swizzle-a) | `6` |
| [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) | [swizzle\_b](#class-rdtextureview-property-swizzle-b) | `5` |
| [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) | [swizzle\_g](#class-rdtextureview-property-swizzle-g) | `4` |
| [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) | [swizzle\_r](#class-rdtextureview-property-swizzle-r) | `3` |

* * *

## Property Descriptions

[DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **format\_override** = `232` [🔗](#class-rdtextureview-property-format-override)

- void **set\_format\_override**(value: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat))

- [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **get\_format\_override**()


Optional override for the data format to return sampled values in. The corresponding [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) must have had this added as a shareable format. The default value of [RenderingDevice.DATA\_FORMAT\_MAX](class_renderingdevice.md#class-renderingdevice-constant-data-format-max) does not override the format.

* * *

[TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **swizzle\_a** = `6` [🔗](#class-rdtextureview-property-swizzle-a)

- void **set\_swizzle\_a**(value: [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle))

- [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **get\_swizzle\_a**()


The channel to sample when sampling the alpha channel.

* * *

[TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **swizzle\_b** = `5` [🔗](#class-rdtextureview-property-swizzle-b)

- void **set\_swizzle\_b**(value: [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle))

- [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **get\_swizzle\_b**()


The channel to sample when sampling the blue color channel.

* * *

[TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **swizzle\_g** = `4` [🔗](#class-rdtextureview-property-swizzle-g)

- void **set\_swizzle\_g**(value: [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle))

- [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **get\_swizzle\_g**()


The channel to sample when sampling the green color channel.

* * *

[TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **swizzle\_r** = `3` [🔗](#class-rdtextureview-property-swizzle-r)

- void **set\_swizzle\_r**(value: [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle))

- [TextureSwizzle](class_renderingdevice.md#enum-renderingdevice-textureswizzle) **get\_swizzle\_r**()


The channel to sample when sampling the red color channel.

[Previous](class_rdtextureformat.md "RDTextureFormat") [Next](class_rduniform.md "RDUniform")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdtextureformat.md "RDTextureFormat") [Next](class_rduniform.md "RDUniform")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).