---
title: XROrigin3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrorigin3d.html
crawled_at: "2026-08-13T10:19:26+12:00"
content_hash: ec819d217e99765c80d85f9ef138e4d670c40cf1decbd56094a1a551abec36bd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XROrigin3D

* * *

# XROrigin3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

The origin point in AR/VR.

## Description

This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.

Multiple origin points can be added to the scene tree, but only one can used at a time. All the [XRCamera3D](class_xrcamera3d.md#class-xrcamera3d), [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d), and [XRAnchor3D](class_xranchor3d.md#class-xranchor3d) nodes should be direct children of this node for spatial tracking to work correctly.

It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.

For example, if your character is driving a car, the **XROrigin3D** node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [current](#class-xrorigin3d-property-current) | `false` |
| [float](class_float.md#class-float) | [world\_scale](#class-xrorigin3d-property-world-scale) | `1.0` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **current** = `false` [🔗](#class-xrorigin3d-property-current)

- void **set\_current**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_current**()


If `true`, this origin node is currently being used by the [XRServer](class_xrserver.md#class-xrserver). Only one origin point can be used at a time.

* * *

[float](class_float.md#class-float) **world\_scale** = `1.0` [🔗](#class-xrorigin3d-property-world-scale)

- void **set\_world\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_world\_scale**()


The scale of the game world compared to the real world. This is the same as [XRServer.world\_scale](class_xrserver.md#class-xrserver-property-world-scale). By default, most AR/VR platforms assume that 1 game unit corresponds to 1 real world meter.

[Previous](class_xrnode3d.md "XRNode3D") [Next](class_resource.md "Resource")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrnode3d.md "XRNode3D") [Next](class_resource.md "Resource")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).