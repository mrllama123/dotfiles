---
title: WorldBoundaryShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_worldboundaryshape3d.html
crawled_at: "2026-08-13T10:30:32+12:00"
content_hash: a37c3592bb3df643d30ed4c152ee43771f7da75da76bfc26eca5b84a3fee7287
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WorldBoundaryShape3D

* * *

# WorldBoundaryShape3D

**Inherits:** [Shape3D](class_shape3d.md#class-shape3d) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 3D world boundary (half-space) shape used for physics collision.

## Description

A 3D world boundary shape, intended for use in physics. **WorldBoundaryShape3D** works like an infinite plane that forces all physics bodies to stay above it. The [plane](#class-worldboundaryshape3d-property-plane)'s normal determines which direction is considered as "above" and in the editor, the line over the plane represents this direction. It can for example be used for endless flat floors.

**Note:** When the physics engine is set to **Jolt Physics** in the project settings ( [ProjectSettings.physics/3d/physics\_engine](class_projectsettings.md#class-projectsettings-property-physics-3d-physics-engine)), **WorldBoundaryShape3D** has a finite size (centered at the shape's origin). It can be adjusted by changing [ProjectSettings.physics/jolt\_physics\_3d/limits/world\_boundary\_shape\_size](class_projectsettings.md#class-projectsettings-property-physics-jolt-physics-3d-limits-world-boundary-shape-size).

## Properties

|     |     |     |
| --- | --- | --- |
| [Plane](class_plane.md#class-plane) | [plane](#class-worldboundaryshape3d-property-plane) | `Plane(0, 1, 0, 0)` |

* * *

## Property Descriptions

[Plane](class_plane.md#class-plane) **plane** = `Plane(0, 1, 0, 0)` [🔗](#class-worldboundaryshape3d-property-plane)

- void **set\_plane**(value: [Plane](class_plane.md#class-plane))

- [Plane](class_plane.md#class-plane) **get\_plane**()


The [Plane](class_plane.md#class-plane) used by the **WorldBoundaryShape3D** for collision.

[Previous](class_worldboundaryshape2d.md "WorldBoundaryShape2D") [Next](class_x509certificate.md "X509Certificate")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_worldboundaryshape2d.md "WorldBoundaryShape2D") [Next](class_x509certificate.md "X509Certificate")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).