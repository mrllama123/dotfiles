---
title: XRVRS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrvrs.html
crawled_at: "2026-08-13T10:30:30+12:00"
content_hash: 02595a82a7bcd07b8900f1b87cdab537cdb69dabcfe6ce6e6692849abf5977aa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRVRS

* * *

# XRVRS

**Inherits:** [Object](class_object.md#class-object)

Helper class for XR interfaces that generates VRS images.

## Description

This class is used by various XR interfaces to generate VRS textures that can be used to speed up rendering.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [vrs\_min\_radius](#class-xrvrs-property-vrs-min-radius) | `20.0` |
| [Rect2i](class_rect2i.md#class-rect2i) | [vrs\_render\_region](#class-xrvrs-property-vrs-render-region) | `Rect2i(0, 0, 0, 0)` |
| [float](class_float.md#class-float) | [vrs\_strength](#class-xrvrs-property-vrs-strength) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [make\_vrs\_texture](#class-xrvrs-method-make-vrs-texture)(target\_size: [Vector2](class_vector2.md#class-vector2), eye\_foci: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **vrs\_min\_radius** = `20.0` [🔗](#class-xrvrs-property-vrs-min-radius)

- void **set\_vrs\_min\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_min\_radius**()


The minimum radius around the focal point where full quality is guaranteed if VRS is used as a percentage of screen size.

* * *

[Rect2i](class_rect2i.md#class-rect2i) **vrs\_render\_region** = `Rect2i(0, 0, 0, 0)` [🔗](#class-xrvrs-property-vrs-render-region)

- void **set\_vrs\_render\_region**(value: [Rect2i](class_rect2i.md#class-rect2i))

- [Rect2i](class_rect2i.md#class-rect2i) **get\_vrs\_render\_region**()


The render region that the VRS texture will be scaled to when generated.

* * *

[float](class_float.md#class-float) **vrs\_strength** = `1.0` [🔗](#class-xrvrs-property-vrs-strength)

- void **set\_vrs\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_strength**()


The strength used to calculate the VRS density map. The greater this value, the more noticeable VRS is.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **make\_vrs\_texture**(target\_size: [Vector2](class_vector2.md#class-vector2), eye\_foci: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array)) [🔗](#class-xrvrs-method-make-vrs-texture)

Generates the VRS texture based on a render `target_size` adjusted by our VRS tile size. For each eyes focal point passed in `eye_foci` a layer is created. Focal point should be in NDC.

The result will be cached, requesting a VRS texture with unchanged parameters and settings will return the cached RID.

[Previous](class_xrtracker.md "XRTracker") [Next](class_zippacker.md "ZIPPacker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrtracker.md "XRTracker") [Next](class_zippacker.md "ZIPPacker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).