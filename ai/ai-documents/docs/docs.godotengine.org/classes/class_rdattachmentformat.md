---
title: RDAttachmentFormat — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdattachmentformat.html
crawled_at: "2026-08-13T10:29:00+12:00"
content_hash: e9be94dcbfd890734d0e1c94f68a4bc3740a7ffc00e55098ee3d83104491af9c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDAttachmentFormat

* * *

# RDAttachmentFormat

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Attachment format (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) | [format](#class-rdattachmentformat-property-format) | `36` |
| [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) | [samples](#class-rdattachmentformat-property-samples) | `0` |
| [int](class_int.md#class-int) | [usage\_flags](#class-rdattachmentformat-property-usage-flags) | `0` |

* * *

## Property Descriptions

[DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **format** = `36` [🔗](#class-rdattachmentformat-property-format)

- void **set\_format**(value: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat))

- [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **get\_format**()


The attachment's data format.

* * *

[TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **samples** = `0` [🔗](#class-rdattachmentformat-property-samples)

- void **set\_samples**(value: [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples))

- [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **get\_samples**()


The number of samples used when sampling the attachment.

* * *

[int](class_int.md#class-int) **usage\_flags** = `0` [🔗](#class-rdattachmentformat-property-usage-flags)

- void **set\_usage\_flags**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_usage\_flags**()


The attachment's usage flags, which determine what can be done with it.

[Previous](class_randomnumbergenerator.md "RandomNumberGenerator") [Next](class_rdframebufferpass.md "RDFramebufferPass")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_randomnumbergenerator.md "RandomNumberGenerator") [Next](class_rdframebufferpass.md "RDFramebufferPass")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).