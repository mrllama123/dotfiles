---
title: UniformSetCacheRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_uniformsetcacherd.html
crawled_at: "2026-08-13T10:28:06+12:00"
content_hash: 11e274e399b34b065cc10de6ec0f37738fc8ec8825f73230d0cabd7afd1d5b8d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - UniformSetCacheRD

* * *

# UniformSetCacheRD

**Inherits:** [Object](class_object.md#class-object)

Uniform set cache manager for Rendering Device based renderers.

## Description

Uniform set cache manager for Rendering Device based renderers. Provides a way to create a uniform set and reuse it in subsequent calls for as long as the uniform set exists. Uniform set will automatically be cleaned up when dependent objects are freed.

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_cache](#class-uniformsetcacherd-method-get-cache)(shader: [RID](class_rid.md#class-rid), set: [int](class_int.md#class-int), uniforms: [Array](class_array.md#class-array)\[ [RDUniform](class_rduniform.md#class-rduniform)\]) static |

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_cache**(shader: [RID](class_rid.md#class-rid), set: [int](class_int.md#class-int), uniforms: [Array](class_array.md#class-array)\[ [RDUniform](class_rduniform.md#class-rduniform)\]) static [🔗](#class-uniformsetcacherd-method-get-cache)

Creates/returns a cached uniform set based on the provided uniforms for a given shader.

[Previous](class_undoredo.md "UndoRedo") [Next](class_upnp.md "UPNP")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_undoredo.md "UndoRedo") [Next](class_upnp.md "UPNP")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).