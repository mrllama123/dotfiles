---
title: VisibleOnScreenEnabler3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visibleonscreenenabler3d.html
crawled_at: "2026-08-13T10:33:30+12:00"
content_hash: 90da83dc6baac385ae829e57948feeb2845cffe0f6c8f461d5beee2ed926caf0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisibleOnScreenEnabler3D

* * *

# VisibleOnScreenEnabler3D

**Inherits:** [VisibleOnScreenNotifier3D](class_visibleonscreennotifier3d.md#class-visibleonscreennotifier3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A box-shaped region of 3D space that, when visible on screen, enables a target node.

## Description

**VisibleOnScreenEnabler3D** contains a box-shaped region of 3D space and a target node. The target node will be automatically enabled (via its [Node.process\_mode](class_node.md#class-node-property-process-mode) property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them.

See [VisibleOnScreenNotifier3D](class_visibleonscreennotifier3d.md#class-visibleonscreennotifier3d) if you only want to be notified when the region is visible on screen.

**Note:** **VisibleOnScreenEnabler3D** uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless [Node3D.visible](class_node3d.md#class-node3d-property-visible) is set to `true`.

## Properties

|     |     |     |
| --- | --- | --- |
| [EnableMode](#enum-visibleonscreenenabler3d-enablemode) | [enable\_mode](#class-visibleonscreenenabler3d-property-enable-mode) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [enable\_node\_path](#class-visibleonscreenenabler3d-property-enable-node-path) | `NodePath("..")` |

* * *

## Enumerations

enum **EnableMode**: [🔗](#enum-visibleonscreenenabler3d-enablemode)

[EnableMode](#enum-visibleonscreenenabler3d-enablemode) **ENABLE\_MODE\_INHERIT** = `0`

Corresponds to [Node.PROCESS\_MODE\_INHERIT](class_node.md#class-node-constant-process-mode-inherit).

[EnableMode](#enum-visibleonscreenenabler3d-enablemode) **ENABLE\_MODE\_ALWAYS** = `1`

Corresponds to [Node.PROCESS\_MODE\_ALWAYS](class_node.md#class-node-constant-process-mode-always).

[EnableMode](#enum-visibleonscreenenabler3d-enablemode) **ENABLE\_MODE\_WHEN\_PAUSED** = `2`

Corresponds to [Node.PROCESS\_MODE\_WHEN\_PAUSED](class_node.md#class-node-constant-process-mode-when-paused).

* * *

## Property Descriptions

[EnableMode](#enum-visibleonscreenenabler3d-enablemode) **enable\_mode** = `0` [🔗](#class-visibleonscreenenabler3d-property-enable-mode)

- void **set\_enable\_mode**(value: [EnableMode](#enum-visibleonscreenenabler3d-enablemode))

- [EnableMode](#enum-visibleonscreenenabler3d-enablemode) **get\_enable\_mode**()


Determines how the target node is enabled. Corresponds to [ProcessMode](class_node.md#enum-node-processmode). When the node is disabled, it always uses [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled).

* * *

[NodePath](class_nodepath.md#class-nodepath) **enable\_node\_path** = `NodePath("..")` [🔗](#class-visibleonscreenenabler3d-property-enable-node-path)

- void **set\_enable\_node\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_enable\_node\_path**()


The path to the target node, relative to the **VisibleOnScreenEnabler3D**. The target node is cached; it's only assigned when setting this property (if the **VisibleOnScreenEnabler3D** is inside the scene tree) and every time the **VisibleOnScreenEnabler3D** enters the scene tree. If the path is empty, no node will be affected. If the path is invalid, an error is also generated.

[Previous](class_visibleonscreenenabler2d.md "VisibleOnScreenEnabler2D") [Next](class_visibleonscreennotifier2d.md "VisibleOnScreenNotifier2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visibleonscreenenabler2d.md "VisibleOnScreenEnabler2D") [Next](class_visibleonscreennotifier2d.md "VisibleOnScreenNotifier2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).