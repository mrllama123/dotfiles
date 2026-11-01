---
title: CameraTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cameratexture.html
crawled_at: "2026-08-13T10:37:41+12:00"
content_hash: 7c72d96ae309fce69644ae6a97e42813d6258842f01d7c100c08eee66e50c642
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraTexture

* * *

# CameraTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture provided by a [CameraFeed](class_camerafeed.md#class-camerafeed).

## Description

This texture gives access to the camera texture provided by a [CameraFeed](class_camerafeed.md#class-camerafeed).

**Note:** Many cameras supply YCbCr images which need to be converted in a shader.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [camera\_feed\_id](#class-cameratexture-property-camera-feed-id) | `0` |
| [bool](class_bool.md#class-bool) | [camera\_is\_active](#class-cameratexture-property-camera-is-active) | `false` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [FeedImage](class_cameraserver.md#enum-cameraserver-feedimage) | [which\_feed](#class-cameratexture-property-which-feed) | `0` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **camera\_feed\_id** = `0` [🔗](#class-cameratexture-property-camera-feed-id)

- void **set\_camera\_feed\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_camera\_feed\_id**()


The ID of the [CameraFeed](class_camerafeed.md#class-camerafeed) for which we want to display the image.

* * *

[bool](class_bool.md#class-bool) **camera\_is\_active** = `false` [🔗](#class-cameratexture-property-camera-is-active)

- void **set\_camera\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_camera\_active**()


Convenience property that gives access to the active property of the [CameraFeed](class_camerafeed.md#class-camerafeed).

* * *

[FeedImage](class_cameraserver.md#enum-cameraserver-feedimage) **which\_feed** = `0` [🔗](#class-cameratexture-property-which-feed)

- void **set\_which\_feed**(value: [FeedImage](class_cameraserver.md#enum-cameraserver-feedimage))

- [FeedImage](class_cameraserver.md#enum-cameraserver-feedimage) **get\_which\_feed**()


Which image within the [CameraFeed](class_camerafeed.md#class-camerafeed) we want access to, important if the camera image is split in a Y and CbCr component.

[Previous](class_cameraattributespractical.md "CameraAttributesPractical") [Next](class_canvasitemmaterial.md "CanvasItemMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cameraattributespractical.md "CameraAttributesPractical") [Next](class_canvasitemmaterial.md "CanvasItemMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).