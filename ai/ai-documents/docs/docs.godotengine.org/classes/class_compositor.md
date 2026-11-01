---
title: Compositor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compositor.html
crawled_at: "2026-08-13T10:40:42+12:00"
content_hash: 294be1750eb2d9c8aa5666b6a6b85c73936e4029142f90a6d267b8bb4b28293e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Compositor

* * *

# Compositor

**Experimental:** More customization of the rendering pipeline will be added in the future.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Stores attributes used to customize how a Viewport is rendered.

## Description

The compositor resource stores attributes used to customize how a [Viewport](class_viewport.md#class-viewport) is rendered.

## Tutorials

- [The Compositor](../tutorials/rendering/compositor.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array)\[ [CompositorEffect](class_compositoreffect.md#class-compositoreffect)\] | [compositor\_effects](#class-compositor-property-compositor-effects) | `[]` |

* * *

## Property Descriptions

[Array](class_array.md#class-array)\[ [CompositorEffect](class_compositoreffect.md#class-compositoreffect)\] **compositor\_effects** = `[]` [🔗](#class-compositor-property-compositor-effects)

- void **set\_compositor\_effects**(value: [Array](class_array.md#class-array)\[ [CompositorEffect](class_compositoreffect.md#class-compositoreffect)\])

- [Array](class_array.md#class-array)\[ [CompositorEffect](class_compositoreffect.md#class-compositoreffect)\] **get\_compositor\_effects**()


The custom [CompositorEffect](class_compositoreffect.md#class-compositoreffect) s that are applied during rendering of viewports using this compositor.

[Previous](class_colorpalette.md "ColorPalette") [Next](class_compositoreffect.md "CompositorEffect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_colorpalette.md "ColorPalette") [Next](class_compositoreffect.md "CompositorEffect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).