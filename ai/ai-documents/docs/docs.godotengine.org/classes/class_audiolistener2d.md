---
title: AudioListener2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiolistener2d.html
crawled_at: "2026-08-13T10:30:36+12:00"
content_hash: bdad7529a93b871090c2d9fad511fe3f01a1eb32c355188175485796b3c10703
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioListener2D

* * *

# AudioListener2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Overrides the location sounds are heard from.

## Description

Once added to the scene tree and enabled using [make\_current()](#class-audiolistener2d-method-make-current), this node will override the location sounds are heard from. Only one **AudioListener2D** can be current. Using [make\_current()](#class-audiolistener2d-method-make-current) will disable the previous **AudioListener2D**.

If there is no active **AudioListener2D** in the current [Viewport](class_viewport.md#class-viewport), center of the screen will be used as a hearing point for the audio. **AudioListener2D** needs to be inside [SceneTree](class_scenetree.md#class-scenetree) to function.

## Methods

|     |     |
| --- | --- |
| void | [clear\_current](#class-audiolistener2d-method-clear-current)() |
| [bool](class_bool.md#class-bool) | [is\_current](#class-audiolistener2d-method-is-current)() const |
| void | [make\_current](#class-audiolistener2d-method-make-current)() |

* * *

## Method Descriptions

void **clear\_current**() [🔗](#class-audiolistener2d-method-clear-current)

Disables the **AudioListener2D**. If it's not set as current, this method will have no effect.

* * *

[bool](class_bool.md#class-bool) **is\_current**() const [🔗](#class-audiolistener2d-method-is-current)

Returns `true` if this **AudioListener2D** is currently active.

* * *

void **make\_current**() [🔗](#class-audiolistener2d-method-make-current)

Makes the **AudioListener2D** active, setting it as the hearing point for the sounds. If there is already another active **AudioListener2D**, it will be disabled.

This method will have no effect if the **AudioListener2D** is not added to [SceneTree](class_scenetree.md#class-scenetree).

[Previous](class_aspectratiocontainer.md "AspectRatioContainer") [Next](class_audiolistener3d.md "AudioListener3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_aspectratiocontainer.md "AspectRatioContainer") [Next](class_audiolistener3d.md "AudioListener3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).