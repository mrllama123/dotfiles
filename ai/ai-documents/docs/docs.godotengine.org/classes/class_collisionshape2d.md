---
title: CollisionShape2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_collisionshape2d.html
crawled_at: "2026-08-13T10:38:57+12:00"
content_hash: 21c9c119ffc27b6bccbdb29dd068b75559127eb19ea1e7f37d4974d72f29118d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CollisionShape2D

* * *

# CollisionShape2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node that provides a [Shape2D](class_shape2d.md#class-shape2d) to a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) parent.

## Description

A node that provides a [Shape2D](class_shape2d.md#class-shape2d) to a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) parent and allows to edit it. This can give a detection shape to an [Area2D](class_area2d.md#class-area2d) or turn a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) into a solid object.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [2D Pong Demo](https://godotengine.org/asset-library/asset/2728)

- [2D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2719)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [debug\_color](#class-collisionshape2d-property-debug-color) | `Color(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [disabled](#class-collisionshape2d-property-disabled) | `false` |
| [bool](class_bool.md#class-bool) | [one\_way\_collision](#class-collisionshape2d-property-one-way-collision) | `false` |
| [float](class_float.md#class-float) | [one\_way\_collision\_margin](#class-collisionshape2d-property-one-way-collision-margin) | `1.0` |
| [Shape2D](class_shape2d.md#class-shape2d) | [shape](#class-collisionshape2d-property-shape) |  |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **debug\_color** = `Color(0, 0, 0, 0)` [🔗](#class-collisionshape2d-property-debug-color)

- void **set\_debug\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_color**()


The collision shape color that is displayed in the editor, or in the running project if **Debug > Visible Collision Shapes** is checked at the top of the editor.

**Note:** The default value is [ProjectSettings.debug/shapes/collision/shape\_color](class_projectsettings.md#class-projectsettings-property-debug-shapes-collision-shape-color). The `Color(0, 0, 0, 0)` value documented here is a placeholder, and not the actual default debug color.

* * *

[bool](class_bool.md#class-bool) **disabled** = `false` [🔗](#class-collisionshape2d-property-disabled)

- void **set\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_disabled**()


A disabled collision shape has no effect in the world. This property should be changed with [Object.set\_deferred()](class_object.md#class-object-method-set-deferred).

* * *

[bool](class_bool.md#class-bool) **one\_way\_collision** = `false` [🔗](#class-collisionshape2d-property-one-way-collision)

- void **set\_one\_way\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_one\_way\_collision\_enabled**()


Sets whether this collision shape should only detect collision on one side (top or bottom).

**Note:** This property has no effect if this **CollisionShape2D** is a child of an [Area2D](class_area2d.md#class-area2d) node.

* * *

[float](class_float.md#class-float) **one\_way\_collision\_margin** = `1.0` [🔗](#class-collisionshape2d-property-one-way-collision-margin)

- void **set\_one\_way\_collision\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_one\_way\_collision\_margin**()


The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the shape at a high velocity.

* * *

[Shape2D](class_shape2d.md#class-shape2d) **shape** [🔗](#class-collisionshape2d-property-shape)

- void **set\_shape**(value: [Shape2D](class_shape2d.md#class-shape2d))

- [Shape2D](class_shape2d.md#class-shape2d) **get\_shape**()


The actual shape owned by this collision shape.

[Previous](class_collisionpolygon3d.md "CollisionPolygon3D") [Next](class_collisionshape3d.md "CollisionShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_collisionpolygon3d.md "CollisionPolygon3D") [Next](class_collisionshape3d.md "CollisionShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).