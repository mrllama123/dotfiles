---
title: LightmapperRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lightmapperrd.html
crawled_at: "2026-08-13T10:24:47+12:00"
content_hash: bb79f756c4345298d70b01a1614a2f15a4f020082c5f47e723e51d6255555d7a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LightmapperRD

* * *

# LightmapperRD

**Inherits:** [Lightmapper](class_lightmapper.md#class-lightmapper) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

The built-in GPU-based lightmapper for use with [LightmapGI](class_lightmapgi.md#class-lightmapgi).

## Description

LightmapperRD ("RD" stands for [RenderingDevice](class_renderingdevice.md#class-renderingdevice)) is the built-in GPU-based lightmapper for use with [LightmapGI](class_lightmapgi.md#class-lightmapgi). On most dedicated GPUs, it can bake lightmaps much faster than most CPU-based lightmappers. LightmapperRD uses compute shaders to bake lightmaps, so it does not require CUDA or OpenCL libraries to be installed to be usable.

**Note:** Only usable when using the RenderingDevice backend (Forward+ or Mobile renderers), not Compatibility.

[Previous](class_lightmapper.md "Lightmapper") [Next](class_logger.md "Logger")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightmapper.md "Lightmapper") [Next](class_logger.md "Logger")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).