---
title: World3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_world3d.html
crawled_at: "2026-08-13T10:23:47+12:00"
content_hash: adba3675624783648d86a0e012ad5287926d8db8814863ec20b717b71135896b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - World3D

* * *

# World3D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A resource that holds all components of a 3D world, such as a visual scenario and a physics space.

## Description

Class that has everything pertaining to a world: A physics space, a visual scenario, and a sound space. 3D nodes register their resources into the current 3D world.

## Tutorials

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Properties

|     |     |
| --- | --- |
| [CameraAttributes](class_cameraattributes.md#class-cameraattributes) | [camera\_attributes](#class-world3d-property-camera-attributes) |
| [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) | [direct\_space\_state](#class-world3d-property-direct-space-state) |
| [Environment](class_environment.md#class-environment) | [environment](#class-world3d-property-environment) |
| [Environment](class_environment.md#class-environment) | [fallback\_environment](#class-world3d-property-fallback-environment) |
| [RID](class_rid.md#class-rid) | [navigation\_map](#class-world3d-property-navigation-map) |
| [RID](class_rid.md#class-rid) | [scenario](#class-world3d-property-scenario) |
| [RID](class_rid.md#class-rid) | [space](#class-world3d-property-space) |

* * *

## Property Descriptions

[CameraAttributes](class_cameraattributes.md#class-cameraattributes) **camera\_attributes** [🔗](#class-world3d-property-camera-attributes)

- void **set\_camera\_attributes**(value: [CameraAttributes](class_cameraattributes.md#class-cameraattributes))

- [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **get\_camera\_attributes**()


The default [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource to use if none set on the [Camera3D](class_camera3d.md#class-camera3d).

* * *

[PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **direct\_space\_state** [🔗](#class-world3d-property-direct-space-state)

- [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **get\_direct\_space\_state**()


Direct access to the world's physics 3D space state. Used for querying current and potential collisions. When using multi-threaded physics, access is limited to [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) in the main thread.

* * *

[Environment](class_environment.md#class-environment) **environment** [🔗](#class-world3d-property-environment)

- void **set\_environment**(value: [Environment](class_environment.md#class-environment))

- [Environment](class_environment.md#class-environment) **get\_environment**()


The World3D's [Environment](class_environment.md#class-environment).

* * *

[Environment](class_environment.md#class-environment) **fallback\_environment** [🔗](#class-world3d-property-fallback-environment)

- void **set\_fallback\_environment**(value: [Environment](class_environment.md#class-environment))

- [Environment](class_environment.md#class-environment) **get\_fallback\_environment**()


The World3D's fallback environment will be used if [environment](#class-world3d-property-environment) fails or is missing.

* * *

[RID](class_rid.md#class-rid) **navigation\_map** [🔗](#class-world3d-property-navigation-map)

- [RID](class_rid.md#class-rid) **get\_navigation\_map**()


The [RID](class_rid.md#class-rid) of this world's navigation map. Used by the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

* * *

[RID](class_rid.md#class-rid) **scenario** [🔗](#class-world3d-property-scenario)

- [RID](class_rid.md#class-rid) **get\_scenario**()


The World3D's visual scenario.

* * *

[RID](class_rid.md#class-rid) **space** [🔗](#class-world3d-property-space)

- [RID](class_rid.md#class-rid) **get\_space**()


The World3D's physics space.

[Previous](class_world2d.md "World2D") [Next](class_worldboundaryshape2d.md "WorldBoundaryShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_world2d.md "World2D") [Next](class_worldboundaryshape2d.md "WorldBoundaryShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).