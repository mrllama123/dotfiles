---
title: Shape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shape3d.html
crawled_at: "2026-08-13T10:29:10+12:00"
content_hash: 3c1931741650dc461f8df42af1a12b12c9adde9b8e7f796d4aa62642862a0e35
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Shape3D

* * *

# Shape3D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [BoxShape3D](class_boxshape3d.md#class-boxshape3d), [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d), [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d), [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d), [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d), [HeightMapShape3D](class_heightmapshape3d.md#class-heightmapshape3d), [SeparationRayShape3D](class_separationrayshape3d.md#class-separationrayshape3d), [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d), [WorldBoundaryShape3D](class_worldboundaryshape3d.md#class-worldboundaryshape3d)

Abstract base class for 3D shapes used for physics collision.

## Description

Abstract base class for all 3D shapes, intended for use in physics.

**Performance:** Primitive shapes, especially [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d), are fast to check collisions against. [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) and [HeightMapShape3D](class_heightmapshape3d.md#class-heightmapshape3d) are slower, and [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) is the slowest.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [custom\_solver\_bias](#class-shape3d-property-custom-solver-bias) | `0.0` |
| [float](class_float.md#class-float) | [margin](#class-shape3d-property-margin) | `0.04` |

## Methods

|     |     |
| --- | --- |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [get\_debug\_mesh](#class-shape3d-method-get-debug-mesh)() |

* * *

## Property Descriptions

[float](class_float.md#class-float) **custom\_solver\_bias** = `0.0` [🔗](#class-shape3d-property-custom-solver-bias)

- void **set\_custom\_solver\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_custom\_solver\_bias**()


The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to `0`, the default value from [ProjectSettings.physics/3d/solver/default\_contact\_bias](class_projectsettings.md#class-projectsettings-property-physics-3d-solver-default-contact-bias) is used.

* * *

[float](class_float.md#class-float) **margin** = `0.04` [🔗](#class-shape3d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the shape. This is not used in Godot Physics.

Collision margins allow collision detection to be more efficient by adding an extra shell around shapes. Collision algorithms are more expensive when objects overlap by more than their margin, so a higher value for margins is better for performance, at the cost of accuracy around edges as it makes them less sharp.

* * *

## Method Descriptions

[ArrayMesh](class_arraymesh.md#class-arraymesh) **get\_debug\_mesh**() [🔗](#class-shape3d-method-get-debug-mesh)

Returns the [ArrayMesh](class_arraymesh.md#class-arraymesh) used to draw the debug collision for this **Shape3D**.

[Previous](class_shape2d.md "Shape2D") [Next](class_shortcut.md "Shortcut")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shape2d.md "Shape2D") [Next](class_shortcut.md "Shortcut")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).