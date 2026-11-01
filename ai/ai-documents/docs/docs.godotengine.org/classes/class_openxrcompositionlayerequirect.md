---
title: OpenXRCompositionLayerEquirect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrcompositionlayerequirect.html
crawled_at: "2026-08-13T10:34:03+12:00"
content_hash: 0b6ff7bed841699684c712e9fc9f1305eee592a91c8ee5fcc4664d046e6d59a6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRCompositionLayerEquirect

* * *

# OpenXRCompositionLayerEquirect

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An OpenXR composition layer that is rendered as an internal slice of a sphere.

## Description

An OpenXR composition layer that allows rendering a [SubViewport](class_subviewport.md#class-subviewport) on an internal slice of a sphere.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [central\_horizontal\_angle](#class-openxrcompositionlayerequirect-property-central-horizontal-angle) | `1.5707964` |
| [int](class_int.md#class-int) | [fallback\_segments](#class-openxrcompositionlayerequirect-property-fallback-segments) | `10` |
| [float](class_float.md#class-float) | [lower\_vertical\_angle](#class-openxrcompositionlayerequirect-property-lower-vertical-angle) | `0.7853982` |
| [float](class_float.md#class-float) | [radius](#class-openxrcompositionlayerequirect-property-radius) | `1.0` |
| [float](class_float.md#class-float) | [upper\_vertical\_angle](#class-openxrcompositionlayerequirect-property-upper-vertical-angle) | `0.7853982` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **central\_horizontal\_angle** = `1.5707964` [🔗](#class-openxrcompositionlayerequirect-property-central-horizontal-angle)

- void **set\_central\_horizontal\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_central\_horizontal\_angle**()


The central horizontal angle of the sphere. Used to set the width.

* * *

[int](class_int.md#class-int) **fallback\_segments** = `10` [🔗](#class-openxrcompositionlayerequirect-property-fallback-segments)

- void **set\_fallback\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fallback\_segments**()


The number of segments to use in the fallback mesh.

* * *

[float](class_float.md#class-float) **lower\_vertical\_angle** = `0.7853982` [🔗](#class-openxrcompositionlayerequirect-property-lower-vertical-angle)

- void **set\_lower\_vertical\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lower\_vertical\_angle**()


The lower vertical angle of the sphere. Used (together with [upper\_vertical\_angle](#class-openxrcompositionlayerequirect-property-upper-vertical-angle)) to set the height.

* * *

[float](class_float.md#class-float) **radius** = `1.0` [🔗](#class-openxrcompositionlayerequirect-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the sphere.

* * *

[float](class_float.md#class-float) **upper\_vertical\_angle** = `0.7853982` [🔗](#class-openxrcompositionlayerequirect-property-upper-vertical-angle)

- void **set\_upper\_vertical\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_upper\_vertical\_angle**()


The upper vertical angle of the sphere. Used (together with [lower\_vertical\_angle](#class-openxrcompositionlayerequirect-property-lower-vertical-angle)) to set the height.

[Previous](class_openxrcompositionlayercylinder.md "OpenXRCompositionLayerCylinder") [Next](class_openxrcompositionlayerquad.md "OpenXRCompositionLayerQuad")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrcompositionlayercylinder.md "OpenXRCompositionLayerCylinder") [Next](class_openxrcompositionlayerquad.md "OpenXRCompositionLayerQuad")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).