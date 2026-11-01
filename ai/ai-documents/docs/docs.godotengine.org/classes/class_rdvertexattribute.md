---
title: RDVertexAttribute — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdvertexattribute.html
crawled_at: "2026-08-13T10:25:57+12:00"
content_hash: 64234b6fc26d4e3576b707b3b9df1640441abe0d8adbba3c5cb018cba0523a4b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDVertexAttribute

* * *

# RDVertexAttribute

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Vertex attribute (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) | [format](#class-rdvertexattribute-property-format) | `232` |
| [VertexFrequency](class_renderingdevice.md#enum-renderingdevice-vertexfrequency) | [frequency](#class-rdvertexattribute-property-frequency) | `0` |
| [int](class_int.md#class-int) | [location](#class-rdvertexattribute-property-location) | `0` |
| [int](class_int.md#class-int) | [offset](#class-rdvertexattribute-property-offset) | `0` |
| [int](class_int.md#class-int) | [stride](#class-rdvertexattribute-property-stride) | `0` |

* * *

## Property Descriptions

[DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **format** = `232` [🔗](#class-rdvertexattribute-property-format)

- void **set\_format**(value: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat))

- [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat) **get\_format**()


The way that this attribute's data is interpreted when sent to a shader.

* * *

[VertexFrequency](class_renderingdevice.md#enum-renderingdevice-vertexfrequency) **frequency** = `0` [🔗](#class-rdvertexattribute-property-frequency)

- void **set\_frequency**(value: [VertexFrequency](class_renderingdevice.md#enum-renderingdevice-vertexfrequency))

- [VertexFrequency](class_renderingdevice.md#enum-renderingdevice-vertexfrequency) **get\_frequency**()


The rate at which this attribute is pulled from its vertex buffer.

* * *

[int](class_int.md#class-int) **location** = `0` [🔗](#class-rdvertexattribute-property-location)

- void **set\_location**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_location**()


The location in the shader that this attribute is bound to.

* * *

[int](class_int.md#class-int) **offset** = `0` [🔗](#class-rdvertexattribute-property-offset)

- void **set\_offset**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_offset**()


The number of bytes between the start of the vertex buffer and the first instance of this attribute.

* * *

[int](class_int.md#class-int) **stride** = `0` [🔗](#class-rdvertexattribute-property-stride)

- void **set\_stride**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stride**()


The number of bytes between the starts of consecutive instances of this attribute.

[Previous](class_rduniform.md "RDUniform") [Next](class_refcounted.md "RefCounted")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rduniform.md "RDUniform") [Next](class_refcounted.md "RefCounted")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).