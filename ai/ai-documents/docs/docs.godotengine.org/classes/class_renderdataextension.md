---
title: RenderDataExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderdataextension.html
crawled_at: "2026-08-13T10:41:50+12:00"
content_hash: 48800222f75fdde382a720d3a80719b38b16a95c32af43d4fb2161c3462d40a8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderDataExtension

* * *

# RenderDataExtension

**Inherits:** [RenderData](class_renderdata.md#class-renderdata) **<** [Object](class_object.md#class-object)

This class allows for a RenderData implementation to be made in GDExtension.

## Description

This class allows for a RenderData implementation to be made in GDExtension.

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [\_get\_camera\_attributes](#class-renderdataextension-private-method-get-camera-attributes)() virtualconst |
| [RID](class_rid.md#class-rid) | [\_get\_environment](#class-renderdataextension-private-method-get-environment)() virtualconst |
| [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) | [\_get\_render\_scene\_buffers](#class-renderdataextension-private-method-get-render-scene-buffers)() virtualconst |
| [RenderSceneData](class_renderscenedata.md#class-renderscenedata) | [\_get\_render\_scene\_data](#class-renderdataextension-private-method-get-render-scene-data)() virtualconst |

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **\_get\_camera\_attributes**() virtualconst [🔗](#class-renderdataextension-private-method-get-camera-attributes)

Implement this in GDExtension to return the [RID](class_rid.md#class-rid) for the implementation's camera attributes object.

* * *

[RID](class_rid.md#class-rid) **\_get\_environment**() virtualconst [🔗](#class-renderdataextension-private-method-get-environment)

Implement this in GDExtension to return the [RID](class_rid.md#class-rid) of the implementation's environment object.

* * *

[RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) **\_get\_render\_scene\_buffers**() virtualconst [🔗](#class-renderdataextension-private-method-get-render-scene-buffers)

Implement this in GDExtension to return the implementation's [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) object.

* * *

[RenderSceneData](class_renderscenedata.md#class-renderscenedata) **\_get\_render\_scene\_data**() virtualconst [🔗](#class-renderdataextension-private-method-get-render-scene-data)

Implement this in GDExtension to return the implementation's [RenderSceneDataExtension](class_renderscenedataextension.md#class-renderscenedataextension) object.

[Previous](class_renderdata.md "RenderData") [Next](class_renderdatard.md "RenderDataRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderdata.md "RenderData") [Next](class_renderdatard.md "RenderDataRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).