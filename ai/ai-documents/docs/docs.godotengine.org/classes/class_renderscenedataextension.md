---
title: RenderSceneDataExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenedataextension.html
crawled_at: "2026-08-13T10:19:32+12:00"
content_hash: 1cfe8c0cca1baa06d9cb1d4e23ef1135c87ec151683919b5c01a1afcb64b6c29
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneDataExtension

* * *

# RenderSceneDataExtension

**Inherits:** [RenderSceneData](class_renderscenedata.md#class-renderscenedata) **<** [Object](class_object.md#class-object)

This class allows for a RenderSceneData implementation to be made in GDExtension.

## Description

This class allows for a RenderSceneData implementation to be made in GDExtension.

## Methods

|     |     |
| --- | --- |
| [Projection](class_projection.md#class-projection) | [\_get\_cam\_projection](#class-renderscenedataextension-private-method-get-cam-projection)() virtualconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_cam\_transform](#class-renderscenedataextension-private-method-get-cam-transform)() virtualconst |
| [RID](class_rid.md#class-rid) | [\_get\_uniform\_buffer](#class-renderscenedataextension-private-method-get-uniform-buffer)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_view\_count](#class-renderscenedataextension-private-method-get-view-count)() virtualconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_view\_eye\_offset](#class-renderscenedataextension-private-method-get-view-eye-offset)(view: [int](class_int.md#class-int)) virtualconst |
| [Projection](class_projection.md#class-projection) | [\_get\_view\_projection](#class-renderscenedataextension-private-method-get-view-projection)(view: [int](class_int.md#class-int)) virtualconst |

* * *

## Method Descriptions

[Projection](class_projection.md#class-projection) **\_get\_cam\_projection**() virtualconst [🔗](#class-renderscenedataextension-private-method-get-cam-projection)

Implement this in GDExtension to return the camera [Projection](class_projection.md#class-projection).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_cam\_transform**() virtualconst [🔗](#class-renderscenedataextension-private-method-get-cam-transform)

Implement this in GDExtension to return the camera [Transform3D](class_transform3d.md#class-transform3d).

* * *

[RID](class_rid.md#class-rid) **\_get\_uniform\_buffer**() virtualconst [🔗](#class-renderscenedataextension-private-method-get-uniform-buffer)

Implement this in GDExtension to return the [RID](class_rid.md#class-rid) of the uniform buffer containing the scene data as a UBO.

* * *

[int](class_int.md#class-int) **\_get\_view\_count**() virtualconst [🔗](#class-renderscenedataextension-private-method-get-view-count)

Implement this in GDExtension to return the view count.

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_view\_eye\_offset**(view: [int](class_int.md#class-int)) virtualconst [🔗](#class-renderscenedataextension-private-method-get-view-eye-offset)

Implement this in GDExtension to return the eye offset for the given `view`.

* * *

[Projection](class_projection.md#class-projection) **\_get\_view\_projection**(view: [int](class_int.md#class-int)) virtualconst [🔗](#class-renderscenedataextension-private-method-get-view-projection)

Implement this in GDExtension to return the view [Projection](class_projection.md#class-projection) for the given `view`.

[Previous](class_renderscenedata.md "RenderSceneData") [Next](class_renderscenedatard.md "RenderSceneDataRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderscenedata.md "RenderSceneData") [Next](class_renderscenedatard.md "RenderSceneDataRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).