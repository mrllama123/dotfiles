---
title: RenderSceneBuffers — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenebuffers.html
crawled_at: "2026-08-13T10:34:20+12:00"
content_hash: 87b2b9e86b21ba0124140f234e54dcc9f26669cb99524e44b2b79227e4b50064
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneBuffers

* * *

# RenderSceneBuffers

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [RenderSceneBuffersExtension](class_renderscenebuffersextension.md#class-renderscenebuffersextension), [RenderSceneBuffersRD](class_renderscenebuffersrd.md#class-renderscenebuffersrd)

Abstract scene buffers object, created for each viewport for which 3D rendering is done.

## Description

Abstract scene buffers object, created for each viewport for which 3D rendering is done. It manages any additional buffers used during rendering and will discard buffers when the viewport is resized.

**Note:** This is an internal rendering server object, do not instantiate this from script.

## Methods

|     |     |
| --- | --- |
| void | [configure](#class-renderscenebuffers-method-configure)(config: [RenderSceneBuffersConfiguration](class_renderscenebuffersconfiguration.md#class-renderscenebuffersconfiguration)) |

* * *

## Method Descriptions

void **configure**(config: [RenderSceneBuffersConfiguration](class_renderscenebuffersconfiguration.md#class-renderscenebuffersconfiguration)) [🔗](#class-renderscenebuffers-method-configure)

This method is called by the rendering server when the associated viewport's configuration is changed. It will discard the old buffers and recreate the internal buffers used.

[Previous](class_renderingserver.md "RenderingServer") [Next](class_renderscenebuffersconfiguration.md "RenderSceneBuffersConfiguration")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderingserver.md "RenderingServer") [Next](class_renderscenebuffersconfiguration.md "RenderSceneBuffersConfiguration")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).