---
title: XRFaceModifier3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrfacemodifier3d.html
crawled_at: "2026-08-13T10:22:14+12:00"
content_hash: b2ae9b717ce5bba480c776bedb6685531ed0ddce05df9220e74a6a590b556fdb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRFaceModifier3D

* * *

# XRFaceModifier3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node for driving standard face meshes from [XRFaceTracker](class_xrfacetracker.md#class-xrfacetracker) weights.

## Description

This node applies weights from an [XRFaceTracker](class_xrfacetracker.md#class-xrfacetracker) to a mesh with supporting face blend shapes.

The [Unified Expressions](https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes) blend shapes are supported, as well as ARKit and SRanipal blend shapes.

The node attempts to identify blend shapes based on name matching. Blend shapes should match the names listed in the [Unified Expressions Compatibility](https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview) chart.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [StringName](class_stringname.md#class-stringname) | [face\_tracker](#class-xrfacemodifier3d-property-face-tracker) | `&"/user/face_tracker"` |
| [NodePath](class_nodepath.md#class-nodepath) | [target](#class-xrfacemodifier3d-property-target) | `NodePath("")` |

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **face\_tracker** = `&"/user/face_tracker"` [🔗](#class-xrfacemodifier3d-property-face-tracker)

- void **set\_face\_tracker**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_face\_tracker**()


The [XRFaceTracker](class_xrfacetracker.md#class-xrfacetracker) path.

* * *

[NodePath](class_nodepath.md#class-nodepath) **target** = `NodePath("")` [🔗](#class-xrfacemodifier3d-property-target)

- void **set\_target**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_target**()


The [NodePath](class_nodepath.md#class-nodepath) of the face [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d).

[Previous](class_xrcontroller3d.md "XRController3D") [Next](class_xrhandmodifier3d.md "XRHandModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrcontroller3d.md "XRController3D") [Next](class_xrhandmodifier3d.md "XRHandModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).