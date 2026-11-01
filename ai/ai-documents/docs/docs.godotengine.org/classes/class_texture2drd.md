---
title: Texture2DRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texture2drd.html
crawled_at: "2026-08-13T10:22:00+12:00"
content_hash: 707d3ee7cb512df2be781a38f4e6f9d2a3043a729ec5aa9f34a7e271cfb7732a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Texture2DRD

* * *

# Texture2DRD

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture for 2D that is bound to a texture created on the [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Description

This texture class allows you to use a 2D texture created directly on the [RenderingDevice](class_renderingdevice.md#class-renderingdevice) as a texture for materials, meshes, etc.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [RID](class_rid.md#class-rid) | [texture\_rd\_rid](#class-texture2drd-property-texture-rd-rid) |  |

* * *

## Property Descriptions

[RID](class_rid.md#class-rid) **texture\_rd\_rid** [🔗](#class-texture2drd-property-texture-rd-rid)

- void **set\_texture\_rd\_rid**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_texture\_rd\_rid**()


The RID of the texture object created on the [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

[Previous](class_texture2darrayrd.md "Texture2DArrayRD") [Next](class_texture3d.md "Texture3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texture2darrayrd.md "Texture2DArrayRD") [Next](class_texture3d.md "Texture3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).