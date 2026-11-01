---
title: Shape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shape2d.html
crawled_at: "2026-08-13T10:35:46+12:00"
content_hash: cb59a082813e4e2ce01fdf8eb41bdf16fe5c9c0ca429e569ed51469b653710f0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Shape2D

* * *

# Shape2D

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CapsuleShape2D](class_capsuleshape2d.md#class-capsuleshape2d), [CircleShape2D](class_circleshape2d.md#class-circleshape2d), [ConcavePolygonShape2D](class_concavepolygonshape2d.md#class-concavepolygonshape2d), [ConvexPolygonShape2D](class_convexpolygonshape2d.md#class-convexpolygonshape2d), [RectangleShape2D](class_rectangleshape2d.md#class-rectangleshape2d), [SegmentShape2D](class_segmentshape2d.md#class-segmentshape2d), [SeparationRayShape2D](class_separationrayshape2d.md#class-separationrayshape2d), [WorldBoundaryShape2D](class_worldboundaryshape2d.md#class-worldboundaryshape2d)

Abstract base class for 2D shapes used for physics collision.

## Description

Abstract base class for all 2D shapes, intended for use in physics.

**Performance:** Primitive shapes, especially [CircleShape2D](class_circleshape2d.md#class-circleshape2d), are fast to check collisions against. [ConvexPolygonShape2D](class_convexpolygonshape2d.md#class-convexpolygonshape2d) is slower, and [ConcavePolygonShape2D](class_concavepolygonshape2d.md#class-concavepolygonshape2d) is the slowest.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [custom\_solver\_bias](#class-shape2d-property-custom-solver-bias) | `0.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [collide](#class-shape2d-method-collide)(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [collide\_and\_get\_contacts](#class-shape2d-method-collide-and-get-contacts)(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d)) |
| [bool](class_bool.md#class-bool) | [collide\_with\_motion](#class-shape2d-method-collide-with-motion)(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), local\_motion: [Vector2](class_vector2.md#class-vector2), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), shape\_motion: [Vector2](class_vector2.md#class-vector2)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [collide\_with\_motion\_and\_get\_contacts](#class-shape2d-method-collide-with-motion-and-get-contacts)(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), local\_motion: [Vector2](class_vector2.md#class-vector2), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), shape\_motion: [Vector2](class_vector2.md#class-vector2)) |
| void | [draw](#class-shape2d-method-draw)(canvas\_item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| [Rect2](class_rect2.md#class-rect2) | [get\_rect](#class-shape2d-method-get-rect)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **custom\_solver\_bias** = `0.0` [🔗](#class-shape2d-property-custom-solver-bias)

- void **set\_custom\_solver\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_custom\_solver\_bias**()


The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to `0`, the default value from [ProjectSettings.physics/2d/solver/default\_contact\_bias](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-default-contact-bias) is used.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **collide**(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-shape2d-method-collide)

Returns `true` if this shape is colliding with another.

This method needs the transformation matrix for this shape ( `local_xform`), the shape to check collisions with ( `with_shape`), and the transformation matrix of that shape ( `shape_xform`).

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **collide\_and\_get\_contacts**(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-shape2d-method-collide-and-get-contacts)

Returns a list of contact point pairs where this shape touches another.

If there are no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of `with_shape`.

A collision pair A, B can be used to calculate the collision normal with `(B - A).normalized()`, and the collision depth with `(B - A).length()`. This information is typically used to separate shapes, particularly in collision solvers.

This method needs the transformation matrix for this shape ( `local_xform`), the shape to check collisions with ( `with_shape`), and the transformation matrix of that shape ( `shape_xform`).

* * *

[bool](class_bool.md#class-bool) **collide\_with\_motion**(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), local\_motion: [Vector2](class_vector2.md#class-vector2), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), shape\_motion: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-shape2d-method-collide-with-motion)

Returns whether this shape would collide with another, if a given movement was applied.

This method needs the transformation matrix for this shape ( `local_xform`), the movement to test on this shape ( `local_motion`), the shape to check collisions with ( `with_shape`), the transformation matrix of that shape ( `shape_xform`), and the movement to test onto the other object ( `shape_motion`).

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **collide\_with\_motion\_and\_get\_contacts**(local\_xform: [Transform2D](class_transform2d.md#class-transform2d), local\_motion: [Vector2](class_vector2.md#class-vector2), with\_shape: [Shape2D](#class-shape2d), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), shape\_motion: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-shape2d-method-collide-with-motion-and-get-contacts)

Returns a list of contact point pairs where this shape would touch another, if a given movement was applied.

If there would be no collisions, the returned list is empty. Otherwise, the returned list contains contact points arranged in pairs, with entries alternating between points on the boundary of this shape and points on the boundary of `with_shape`.

A collision pair A, B can be used to calculate the collision normal with `(B - A).normalized()`, and the collision depth with `(B - A).length()`. This information is typically used to separate shapes, particularly in collision solvers.

This method needs the transformation matrix for this shape ( `local_xform`), the movement to test on this shape ( `local_motion`), the shape to check collisions with ( `with_shape`), the transformation matrix of that shape ( `shape_xform`), and the movement to test onto the other object ( `shape_motion`).

* * *

void **draw**(canvas\_item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-shape2d-method-draw)

Draws a solid shape onto a [CanvasItem](class_canvasitem.md#class-canvasitem) with the [RenderingServer](class_renderingserver.md#class-renderingserver) API filled with the specified `color`. The exact drawing method is specific for each shape and cannot be configured.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_rect**() const [🔗](#class-shape2d-method-get-rect)

Returns a [Rect2](class_rect2.md#class-rect2) representing the shapes boundary.

[Previous](class_shadermaterial.md "ShaderMaterial") [Next](class_shape3d.md "Shape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shadermaterial.md "ShaderMaterial") [Next](class_shape3d.md "Shape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).