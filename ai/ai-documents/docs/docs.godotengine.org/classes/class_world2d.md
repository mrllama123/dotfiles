---
title: World2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_world2d.html
crawled_at: "2026-08-13T10:21:58+12:00"
content_hash: 9d0144c7b70351870f21fbb3ea3c4fade66d66702b231e63418d15bd0827aa0d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - World2D

* * *

# World2D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A resource that holds all components of a 2D world, such as a canvas and a physics space.

## Description

Class that has everything pertaining to a 2D world: A physics space, a canvas, and a sound space. 2D nodes register their resources into the current 2D world.

## Tutorials

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Properties

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [canvas](#class-world2d-property-canvas) |
| [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) | [direct\_space\_state](#class-world2d-property-direct-space-state) |
| [RID](class_rid.md#class-rid) | [navigation\_map](#class-world2d-property-navigation-map) |
| [RID](class_rid.md#class-rid) | [space](#class-world2d-property-space) |

* * *

## Property Descriptions

[RID](class_rid.md#class-rid) **canvas** [🔗](#class-world2d-property-canvas)

- [RID](class_rid.md#class-rid) **get\_canvas**()


The [RID](class_rid.md#class-rid) of this world's canvas resource. Used by the [RenderingServer](class_renderingserver.md#class-renderingserver) for 2D drawing.

* * *

[PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **direct\_space\_state** [🔗](#class-world2d-property-direct-space-state)

- [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **get\_direct\_space\_state**()


Direct access to the world's physics 2D space state. Used for querying current and potential collisions. When using multi-threaded physics, access is limited to [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) in the main thread.

* * *

[RID](class_rid.md#class-rid) **navigation\_map** [🔗](#class-world2d-property-navigation-map)

- [RID](class_rid.md#class-rid) **get\_navigation\_map**()


The [RID](class_rid.md#class-rid) of this world's navigation map. Used by the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

* * *

[RID](class_rid.md#class-rid) **space** [🔗](#class-world2d-property-space)

- [RID](class_rid.md#class-rid) **get\_space**()


The [RID](class_rid.md#class-rid) of this world's physics space resource. Used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) for 2D physics, treating it as both a space and an area.

[Previous](class_voxelgidata.md "VoxelGIData") [Next](class_world3d.md "World3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_voxelgidata.md "VoxelGIData") [Next](class_world3d.md "World3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).