---
title: VisibleOnScreenEnabler2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visibleonscreenenabler2d.html
crawled_at: "2026-08-13T10:18:48+12:00"
content_hash: 0293f39dc7569c20070b16a2c7f1d56ca8b5ac073891d4794e271b9761c5ef5a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisibleOnScreenEnabler2D

* * *

# VisibleOnScreenEnabler2D

**Inherits:** [VisibleOnScreenNotifier2D](class_visibleonscreennotifier2d.md#class-visibleonscreennotifier2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A rectangular region of 2D space that, when visible on screen, enables a target node.

## Description

**VisibleOnScreenEnabler2D** contains a rectangular region of 2D space and a target node. The target node will be automatically enabled (via its [Node.process\_mode](class_node.md#class-node-property-process-mode) property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them.

See [VisibleOnScreenNotifier2D](class_visibleonscreennotifier2d.md#class-visibleonscreennotifier2d) if you only want to be notified when the region is visible on screen.

**Note:** **VisibleOnScreenEnabler2D** uses the render culling code to determine whether it's visible on screen, so it won't function unless [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) is set to `true`.

## Properties

|     |     |     |
| --- | --- | --- |
| [EnableMode](#enum-visibleonscreenenabler2d-enablemode) | [enable\_mode](#class-visibleonscreenenabler2d-property-enable-mode) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [enable\_node\_path](#class-visibleonscreenenabler2d-property-enable-node-path) | `NodePath("..")` |

* * *

## Enumerations

enum **EnableMode**: [🔗](#enum-visibleonscreenenabler2d-enablemode)

[EnableMode](#enum-visibleonscreenenabler2d-enablemode) **ENABLE\_MODE\_INHERIT** = `0`

Corresponds to [Node.PROCESS\_MODE\_INHERIT](class_node.md#class-node-constant-process-mode-inherit).

[EnableMode](#enum-visibleonscreenenabler2d-enablemode) **ENABLE\_MODE\_ALWAYS** = `1`

Corresponds to [Node.PROCESS\_MODE\_ALWAYS](class_node.md#class-node-constant-process-mode-always).

[EnableMode](#enum-visibleonscreenenabler2d-enablemode) **ENABLE\_MODE\_WHEN\_PAUSED** = `2`

Corresponds to [Node.PROCESS\_MODE\_WHEN\_PAUSED](class_node.md#class-node-constant-process-mode-when-paused).

* * *

## Property Descriptions

[EnableMode](#enum-visibleonscreenenabler2d-enablemode) **enable\_mode** = `0` [🔗](#class-visibleonscreenenabler2d-property-enable-mode)

- void **set\_enable\_mode**(value: [EnableMode](#enum-visibleonscreenenabler2d-enablemode))

- [EnableMode](#enum-visibleonscreenenabler2d-enablemode) **get\_enable\_mode**()


Determines how the target node is enabled. Corresponds to [ProcessMode](class_node.md#enum-node-processmode). When the node is disabled, it always uses [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled).

* * *

[NodePath](class_nodepath.md#class-nodepath) **enable\_node\_path** = `NodePath("..")` [🔗](#class-visibleonscreenenabler2d-property-enable-node-path)

- void **set\_enable\_node\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_enable\_node\_path**()


The path to the target node, relative to the **VisibleOnScreenEnabler2D**. The target node is cached; it's only assigned when setting this property (if the **VisibleOnScreenEnabler2D** is inside the scene tree) and every time the **VisibleOnScreenEnabler2D** enters the scene tree. If the path is empty, no node will be affected. If the path is invalid, an error is also generated.

[Previous](class_viewport.md "Viewport") [Next](class_visibleonscreenenabler3d.md "VisibleOnScreenEnabler3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_viewport.md "Viewport") [Next](class_visibleonscreenenabler3d.md "VisibleOnScreenEnabler3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).