---
title: FramebufferCacheRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_framebuffercacherd.html
crawled_at: "2026-08-13T10:27:20+12:00"
content_hash: 1db4c3f0bdfc447fc891bddef84209e8bd5a2d7a2d888e7c9448be8b671b864e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FramebufferCacheRD

* * *

# FramebufferCacheRD

**Inherits:** [Object](class_object.md#class-object)

Framebuffer cache manager for Rendering Device based renderers.

## Description

Framebuffer cache manager for Rendering Device based renderers. Provides a way to create a framebuffer and reuse it in subsequent calls for as long as the used textures exists. Framebuffers will automatically be cleaned up when dependent objects are freed.

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_cache\_multipass](#class-framebuffercacherd-method-get-cache-multipass)(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], views: [int](class_int.md#class-int)) static |

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_cache\_multipass**(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], views: [int](class_int.md#class-int)) static [🔗](#class-framebuffercacherd-method-get-cache-multipass)

Creates, or obtains a cached, framebuffer. `textures` lists textures accessed. `passes` defines the subpasses and texture allocation, if left empty a single pass is created and textures are allocated depending on their usage flags. `views` defines the number of views used when rendering.

[Previous](class_fileaccess.md "FileAccess") [Next](class_gdextensionmanager.md "GDExtensionManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fileaccess.md "FileAccess") [Next](class_gdextensionmanager.md "GDExtensionManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).