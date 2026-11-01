---
title: RenderData — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderdata.html
crawled_at: "2026-08-13T10:22:38+12:00"
content_hash: 34101f8c62b6d52184ccfedabcbe3d4deaf43b6ad521ebb5e099eebb229334a5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderData

* * *

# RenderData

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [RenderDataExtension](class_renderdataextension.md#class-renderdataextension), [RenderDataRD](class_renderdatard.md#class-renderdatard)

Abstract render data object, holds frame data related to rendering a single frame of a viewport.

## Description

Abstract render data object, exists for the duration of rendering a single viewport.

**Note:** This is an internal rendering server object, do not instantiate this from script.

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_camera\_attributes](#class-renderdata-method-get-camera-attributes)() const |
| [RID](class_rid.md#class-rid) | [get\_environment](#class-renderdata-method-get-environment)() const |
| [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) | [get\_render\_scene\_buffers](#class-renderdata-method-get-render-scene-buffers)() const |
| [RenderSceneData](class_renderscenedata.md#class-renderscenedata) | [get\_render\_scene\_data](#class-renderdata-method-get-render-scene-data)() const |

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_camera\_attributes**() const [🔗](#class-renderdata-method-get-camera-attributes)

Returns the [RID](class_rid.md#class-rid) of the camera attributes object in the [RenderingServer](class_renderingserver.md#class-renderingserver) being used to render this viewport.

* * *

[RID](class_rid.md#class-rid) **get\_environment**() const [🔗](#class-renderdata-method-get-environment)

Returns the [RID](class_rid.md#class-rid) of the environment object in the [RenderingServer](class_renderingserver.md#class-renderingserver) being used to render this viewport.

* * *

[RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) **get\_render\_scene\_buffers**() const [🔗](#class-renderdata-method-get-render-scene-buffers)

Returns the [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) object managing the scene buffers for rendering this viewport.

* * *

[RenderSceneData](class_renderscenedata.md#class-renderscenedata) **get\_render\_scene\_data**() const [🔗](#class-renderdata-method-get-render-scene-data)

Returns the [RenderSceneData](class_renderscenedata.md#class-renderscenedata) object managing this frames scene data.

[Previous](class_regexmatch.md "RegExMatch") [Next](class_renderdataextension.md "RenderDataExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_regexmatch.md "RegExMatch") [Next](class_renderdataextension.md "RenderDataExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).