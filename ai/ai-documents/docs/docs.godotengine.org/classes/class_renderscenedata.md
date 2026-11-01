---
title: RenderSceneData — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenedata.html
crawled_at: "2026-08-13T10:21:10+12:00"
content_hash: 821fb622d2fabe0be7b78ff44059e776d74e790f3011af77898edd3768ca18db
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneData

* * *

# RenderSceneData

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [RenderSceneDataExtension](class_renderscenedataextension.md#class-renderscenedataextension), [RenderSceneDataRD](class_renderscenedatard.md#class-renderscenedatard)

Abstract render data object, holds scene data related to rendering a single frame of a viewport.

## Description

Abstract scene data object, exists for the duration of rendering a single viewport.

**Note:** This is an internal rendering server object, do not instantiate this from script.

## Methods

|     |     |
| --- | --- |
| [Projection](class_projection.md#class-projection) | [get\_cam\_projection](#class-renderscenedata-method-get-cam-projection)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_cam\_transform](#class-renderscenedata-method-get-cam-transform)() const |
| [RID](class_rid.md#class-rid) | [get\_uniform\_buffer](#class-renderscenedata-method-get-uniform-buffer)() const |
| [int](class_int.md#class-int) | [get\_view\_count](#class-renderscenedata-method-get-view-count)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_view\_eye\_offset](#class-renderscenedata-method-get-view-eye-offset)(view: [int](class_int.md#class-int)) const |
| [Projection](class_projection.md#class-projection) | [get\_view\_projection](#class-renderscenedata-method-get-view-projection)(view: [int](class_int.md#class-int)) const |

* * *

## Method Descriptions

[Projection](class_projection.md#class-projection) **get\_cam\_projection**() const [🔗](#class-renderscenedata-method-get-cam-projection)

Returns the camera projection used to render this frame.

**Note:** If more than one view is rendered, this will return a combined projection.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_cam\_transform**() const [🔗](#class-renderscenedata-method-get-cam-transform)

Returns the camera transform used to render this frame.

**Note:** If more than one view is rendered, this will return a centered transform.

* * *

[RID](class_rid.md#class-rid) **get\_uniform\_buffer**() const [🔗](#class-renderscenedata-method-get-uniform-buffer)

Return the [RID](class_rid.md#class-rid) of the uniform buffer containing the scene data as a UBO.

* * *

[int](class_int.md#class-int) **get\_view\_count**() const [🔗](#class-renderscenedata-method-get-view-count)

Returns the number of views being rendered.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_view\_eye\_offset**(view: [int](class_int.md#class-int)) const [🔗](#class-renderscenedata-method-get-view-eye-offset)

Returns the eye offset per view used to render this frame. This is the offset between our camera transform and the eye transform.

* * *

[Projection](class_projection.md#class-projection) **get\_view\_projection**(view: [int](class_int.md#class-int)) const [🔗](#class-renderscenedata-method-get-view-projection)

Returns the view projection per view used to render this frame.

**Note:** If a single view is rendered, this returns the camera projection. If more than one view is rendered, this will return a projection for the given view including the eye offset.

[Previous](class_renderscenebuffersrd.md "RenderSceneBuffersRD") [Next](class_renderscenedataextension.md "RenderSceneDataExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderscenebuffersrd.md "RenderSceneBuffersRD") [Next](class_renderscenedataextension.md "RenderSceneDataExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).