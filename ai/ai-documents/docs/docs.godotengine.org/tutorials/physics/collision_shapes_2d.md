---
title: Collision shapes (2D) — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/physics/collision_shapes_2d.html
crawled_at: "2026-08-13T10:33:07+12:00"
content_hash: 5762da791597eab258e22244b473086a4cace0672b7c0e9d4268a8738d0fc115
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Physics](index.md)
  - Collision shapes (2D)
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/physics/collision_shapes_2d.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Collision shapes (2D)

This guide explains:

- The types of collision shapes available in 2D in Godot.

- Using an image converted to a polygon as a collision shape.

- Performance considerations regarding 2D collisions.


Godot provides many kinds of collision shapes, with different performance and
accuracy tradeoffs.

You can define the shape of a [PhysicsBody2D](../../classes/class_physicsbody2d.md#class-physicsbody2d) by adding one or more
[CollisionShape2Ds](../../classes/class_collisionshape2d.md#class-collisionshape2d) or
[CollisionPolygon2Ds](../../classes/class_collisionpolygon2d.md#class-collisionpolygon2d) as _direct_ child nodes.
Indirect child nodes (i.e. children of child nodes) will be ignored and won't be
used as collision shapes. Also, note that you must add a [Shape2D](../../classes/class_shape2d.md#class-shape2d) _resource_ to collision shape nodes in the Inspector dock.

Note

When you add multiple collision shapes to a single PhysicsBody2D, you don't
have to worry about them overlapping. They won't "collide" with each other.

## Primitive collision shapes

Godot provides the following primitive collision shape types:

- [RectangleShape2D](../../classes/class_rectangleshape2d.md#class-rectangleshape2d)

- [CircleShape2D](../../classes/class_circleshape2d.md#class-circleshape2d)

- [CapsuleShape2D](../../classes/class_capsuleshape2d.md#class-capsuleshape2d)

- [SegmentShape2D](../../classes/class_segmentshape2d.md#class-segmentshape2d)

- [SeparationRayShape2D](../../classes/class_separationrayshape2d.md#class-separationrayshape2d) (designed for characters)

- [WorldBoundaryShape2D](../../classes/class_worldboundaryshape2d.md#class-worldboundaryshape2d) (infinite plane)


You can represent the collision of most smaller objects using one or more
primitive shapes. However, for more complex objects, such as a large ship or a
whole level, you may need convex or concave shapes instead. More on that below.

We recommend favoring primitive shapes for dynamic objects such as RigidBodies
and CharacterBodies as their behavior is the most reliable. They often provide
better performance as well.

## Convex collision shapes

Warning

Godot currently doesn't offer a built-in way to create 2D convex collision
shapes. This section is mainly here for reference purposes.

[Convex collision shapes](../../classes/class_convexpolygonshape2d.md#class-convexpolygonshape2d) are a compromise
between primitive collision shapes and concave collision shapes. They can
represent shapes of any complexity, but with an important caveat. As their name
implies, an individual shape can only represent a _convex_ shape. For instance,
a pyramid is _convex_, but a hollow box is _concave_. To define a concave object
with a single collision shape, you need to use a concave collision shape.

Depending on the object's complexity, you may get better performance by using
multiple convex shapes instead of a concave collision shape. Godot lets you use
_convex decomposition_ to generate convex shapes that roughly match a hollow
object. Note this performance advantage no longer applies after a certain amount
of convex shapes. For large and complex objects such as a whole level, we
recommend using concave shapes instead.

## Concave or trimesh collision shapes

[Concave collision shapes](../../classes/class_concavepolygonshape2d.md#class-concavepolygonshape2d), also called trimesh
collision shapes, can take any form, from a few triangles to thousands of
triangles. Concave shapes are the slowest option but are also the most accurate
in Godot. **You can only use concave shapes within StaticBodies.** They will not
work with CharacterBodies or RigidBodies unless the RigidBody's mode is Static.

Note

Even though concave shapes offer the most accurate _collision_, contact
reporting can be less precise than primitive shapes.

When not using TileMaps for level design, concave shapes are the best approach
for a level's collision.

You can configure the CollisionPolygon2D node's _build mode_ in the inspector.
If it is set to **Solids** (the default), collisions will include the polygon
and its contained area. If it is set to **Segments**, collisions will only
include the polygon edges.

You can generate a concave collision shape from the editor by selecting a Sprite2D
and using the **Sprite2D** menu at the top of the 2D viewport. The Sprite2D menu
dropdown exposes an option called **Create CollisionPolygon2D Sibling**.
Once you click it, it displays a menu with 3 settings:

- **Simplification:** Higher values will result in a less detailed shape, which
improves performance at the cost of accuracy.

- **Shrink (Pixels):** Higher values will shrink the generated collision polygon
relative to the sprite's edges.

- **Grow (Pixels):** Higher values will grow the generated collision polygon
relative to the sprite's edges. Note that setting Grow and Shrink to equal
values may yield different results than leaving both of them on 0.


Note

If you have an image with many small details, it's recommended to create a
simplified version and use it to generate the collision polygon. This
can result in better performance and game feel, since the player won't
be blocked by small, decorative details.

To use a separate image for collision polygon generation, create another
Sprite2D, generate a collision polygon sibling from it then remove the Sprite2D
node. This way, you can exclude small details from the generated collision.

## Performance caveats

You aren't limited to a single collision shape per PhysicsBody. Still, we
recommend keeping the number of shapes as low as possible to improve
performance, especially for dynamic objects like RigidBodies and
CharacterBodies. On top of that, avoid translating, rotating, or scaling
CollisionShapes to benefit from the physics engine's internal optimizations.

When using a single non-transformed collision shape in a StaticBody, the
engine's _broad phase_ algorithm can discard inactive PhysicsBodies. The _narrow_
_phase_ will then only have to take into account the active bodies' shapes. If a
StaticBody has many collision shapes, the broad phase will fail. The narrow
phase, which is slower, must then perform a collision check against each shape.

If you run into performance issues, you may have to make tradeoffs in terms of
accuracy. Most games out there don't have a 100% accurate collision. They find
creative ways to hide it or otherwise make it unnoticeable during normal
gameplay.

[Previous](soft_body.md "Using SoftBody3D") [Next](collision_shapes_3d.md "Collision shapes (3D)")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](soft_body.md "Using SoftBody3D") [Next](collision_shapes_3d.md "Collision shapes (3D)")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).