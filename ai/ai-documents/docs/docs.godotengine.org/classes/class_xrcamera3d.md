---
title: XRCamera3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrcamera3d.html
crawled_at: "2026-08-13T10:39:08+12:00"
content_hash: 84faa4ebb734e1c95bd53e6ddaf4bb4dbb0e3d8fb2deb9f9d3d5a94a2803e70b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRCamera3D

* * *

# XRCamera3D

**Inherits:** [Camera3D](class_camera3d.md#class-camera3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A camera node with a few overrules for AR/VR applied, such as location tracking.

## Description

This is a helper 3D node for our camera. Note that, if stereoscopic rendering is applicable (VR-HMD), most of the camera properties are ignored, as the HMD information overrides them. The only properties that can be trusted are the near and far planes.

The position and orientation of this node is automatically updated by the XR Server to represent the location of the HMD if such tracking is available and can thus be used by game logic. Note that, in contrast to the XR Controller, the render thread has access to the most up-to-date tracking data of the HMD and the location of the XRCamera3D can lag a few milliseconds behind what is used for rendering as a result.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |

[Previous](class_xrbodymodifier3d.md "XRBodyModifier3D") [Next](class_xrcontroller3d.md "XRController3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrbodymodifier3d.md "XRBodyModifier3D") [Next](class_xrcontroller3d.md "XRController3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).