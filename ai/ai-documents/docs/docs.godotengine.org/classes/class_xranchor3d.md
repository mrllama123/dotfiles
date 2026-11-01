---
title: XRAnchor3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xranchor3d.html
crawled_at: "2026-08-13T10:36:09+12:00"
content_hash: 085a4df1599f6d4121446934b956ac8adc48197c2d95c95137a3caccb492c071
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRAnchor3D

* * *

# XRAnchor3D

**Inherits:** [XRNode3D](class_xrnode3d.md#class-xrnode3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An anchor point in AR space.

## Description

The **XRAnchor3D** point is an [XRNode3D](class_xrnode3d.md#class-xrnode3d) that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc.) and create anchors for them.

This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on `(0, 0, 0)` until a plane is recognized.

Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Methods

|     |     |
| --- | --- |
| [Plane](class_plane.md#class-plane) | [get\_plane](#class-xranchor3d-method-get-plane)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_size](#class-xranchor3d-method-get-size)() const |

* * *

## Method Descriptions

[Plane](class_plane.md#class-plane) **get\_plane**() const [🔗](#class-xranchor3d-method-get-plane)

Returns a plane aligned with our anchor; handy for intersection testing.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_size**() const [🔗](#class-xranchor3d-method-get-size)

Returns the estimated size of the plane that was detected. Say when the anchor relates to a table in the real world, this is the estimated size of the surface of that table.

[Previous](class_worldenvironment.md "WorldEnvironment") [Next](class_xrbodymodifier3d.md "XRBodyModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_worldenvironment.md "WorldEnvironment") [Next](class_xrbodymodifier3d.md "XRBodyModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).