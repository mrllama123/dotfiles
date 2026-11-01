---
title: BackBufferCopy — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_backbuffercopy.html
crawled_at: "2026-08-13T10:35:13+12:00"
content_hash: 11eb28ab041e195acf744ae67967f7a6b6a1ea7eb1e056bf6ebacf7079d6bee2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BackBufferCopy

* * *

# BackBufferCopy

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node that copies a region of the screen to a buffer for access in shader code.

## Description

Node for back-buffering the currently-displayed screen. The region defined in the **BackBufferCopy** node is buffered with the content of the screen it covers, or the entire screen according to the [copy\_mode](#class-backbuffercopy-property-copy-mode). It can be accessed in shader scripts using the screen texture (i.e. a uniform sampler with `hint_screen_texture`).

**Note:** Since this node inherits from [Node2D](class_node2d.md#class-node2d) (and not [Control](class_control.md#class-control)), anchors and margins won't apply to child [Control](class_control.md#class-control)-derived nodes. This can be problematic when resizing the window. To avoid this, add [Control](class_control.md#class-control)-derived nodes as _siblings_ to the **BackBufferCopy** node instead of adding them as children.

## Tutorials

- [Screen-reading shaders](../tutorials/shaders/screen-reading_shaders.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [CopyMode](#enum-backbuffercopy-copymode) | [copy\_mode](#class-backbuffercopy-property-copy-mode) | `1` |
| [Rect2](class_rect2.md#class-rect2) | [rect](#class-backbuffercopy-property-rect) | `Rect2(-100, -100, 200, 200)` |

* * *

## Enumerations

enum **CopyMode**: [🔗](#enum-backbuffercopy-copymode)

[CopyMode](#enum-backbuffercopy-copymode) **COPY\_MODE\_DISABLED** = `0`

Disables the buffering mode. This means the **BackBufferCopy** node will directly use the portion of screen it covers.

[CopyMode](#enum-backbuffercopy-copymode) **COPY\_MODE\_RECT** = `1`

**BackBufferCopy** buffers a rectangular region.

[CopyMode](#enum-backbuffercopy-copymode) **COPY\_MODE\_VIEWPORT** = `2`

**BackBufferCopy** buffers the entire screen.

* * *

## Property Descriptions

[CopyMode](#enum-backbuffercopy-copymode) **copy\_mode** = `1` [🔗](#class-backbuffercopy-property-copy-mode)

- void **set\_copy\_mode**(value: [CopyMode](#enum-backbuffercopy-copymode))

- [CopyMode](#enum-backbuffercopy-copymode) **get\_copy\_mode**()


Buffer mode.

* * *

[Rect2](class_rect2.md#class-rect2) **rect** = `Rect2(-100, -100, 200, 200)` [🔗](#class-backbuffercopy-property-rect)

- void **set\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_rect**()


The area covered by the **BackBufferCopy**. Only used if [copy\_mode](#class-backbuffercopy-property-copy-mode) is [COPY\_MODE\_RECT](#class-backbuffercopy-constant-copy-mode-rect).

[Previous](class_audiostreamplayer3d.md "AudioStreamPlayer3D") [Next](class_basebutton.md "BaseButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostreamplayer3d.md "AudioStreamPlayer3D") [Next](class_basebutton.md "BaseButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).