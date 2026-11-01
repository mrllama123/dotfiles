---
title: OpenXRCompositionLayerCylinder — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrcompositionlayercylinder.html
crawled_at: "2026-08-13T10:26:48+12:00"
content_hash: 3c0081dfbaab752a99e7381d9669ec7e1fcd19cdfba123f4d849f5602d0a63a2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRCompositionLayerCylinder

* * *

# OpenXRCompositionLayerCylinder

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An OpenXR composition layer that is rendered as an internal slice of a cylinder.

## Description

An OpenXR composition layer that allows rendering a [SubViewport](class_subviewport.md#class-subviewport) on an internal slice of a cylinder.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [aspect\_ratio](#class-openxrcompositionlayercylinder-property-aspect-ratio) | `1.0` |
| [float](class_float.md#class-float) | [central\_angle](#class-openxrcompositionlayercylinder-property-central-angle) | `1.5707964` |
| [int](class_int.md#class-int) | [fallback\_segments](#class-openxrcompositionlayercylinder-property-fallback-segments) | `10` |
| [float](class_float.md#class-float) | [radius](#class-openxrcompositionlayercylinder-property-radius) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **aspect\_ratio** = `1.0` [🔗](#class-openxrcompositionlayercylinder-property-aspect-ratio)

- void **set\_aspect\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_aspect\_ratio**()


The aspect ratio of the slice. Used to set the height relative to the width.

* * *

[float](class_float.md#class-float) **central\_angle** = `1.5707964` [🔗](#class-openxrcompositionlayercylinder-property-central-angle)

- void **set\_central\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_central\_angle**()


The central angle of the cylinder. Used to set the width.

* * *

[int](class_int.md#class-int) **fallback\_segments** = `10` [🔗](#class-openxrcompositionlayercylinder-property-fallback-segments)

- void **set\_fallback\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fallback\_segments**()


The number of segments to use in the fallback mesh.

* * *

[float](class_float.md#class-float) **radius** = `1.0` [🔗](#class-openxrcompositionlayercylinder-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the cylinder.

[Previous](class_openxrcompositionlayer.md "OpenXRCompositionLayer") [Next](class_openxrcompositionlayerequirect.md "OpenXRCompositionLayerEquirect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrcompositionlayer.md "OpenXRCompositionLayer") [Next](class_openxrcompositionlayerequirect.md "OpenXRCompositionLayerEquirect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).