---
title: CollisionShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_collisionshape3d.html
crawled_at: "2026-08-13T10:33:44+12:00"
content_hash: f107dc7db84e06835c8e49e5316b061ac2be568c9307666aeb672aaef2dd14dc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CollisionShape3D

* * *

# CollisionShape3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node that provides a [Shape3D](class_shape3d.md#class-shape3d) to a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) parent.

## Description

A node that provides a [Shape3D](class_shape3d.md#class-shape3d) to a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) parent and allows to edit it. This can give a detection shape to an [Area3D](class_area3d.md#class-area3d) or turn a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) into a solid object.

**Warning:** A non-uniformly scaled **CollisionShape3D** will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its [shape](#class-collisionshape3d-property-shape) resource instead.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [debug\_color](#class-collisionshape3d-property-debug-color) | `Color(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [debug\_fill](#class-collisionshape3d-property-debug-fill) | `true` |
| [bool](class_bool.md#class-bool) | [disabled](#class-collisionshape3d-property-disabled) | `false` |
| [Shape3D](class_shape3d.md#class-shape3d) | [shape](#class-collisionshape3d-property-shape) |  |

## Methods

|     |     |
| --- | --- |
| void | [make\_convex\_from\_siblings](#class-collisionshape3d-method-make-convex-from-siblings)() |
| void | [resource\_changed](#class-collisionshape3d-method-resource-changed)(resource: [Resource](class_resource.md#class-resource)) |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **debug\_color** = `Color(0, 0, 0, 0)` [🔗](#class-collisionshape3d-property-debug-color)

- void **set\_debug\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_color**()


The collision shape color that is displayed in the editor, or in the running project if **Debug > Visible Collision Shapes** is checked at the top of the editor.

**Note:** The default value is [ProjectSettings.debug/shapes/collision/shape\_color](class_projectsettings.md#class-projectsettings-property-debug-shapes-collision-shape-color). The `Color(0, 0, 0, 0)` value documented here is a placeholder, and not the actual default debug color.

* * *

[bool](class_bool.md#class-bool) **debug\_fill** = `true` [🔗](#class-collisionshape3d-property-debug-fill)

- void **set\_enable\_debug\_fill**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_debug\_fill**()


If `true`, when the shape is displayed, it will show a solid fill color in addition to its wireframe.

* * *

[bool](class_bool.md#class-bool) **disabled** = `false` [🔗](#class-collisionshape3d-property-disabled)

- void **set\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_disabled**()


A disabled collision shape has no effect in the world. This property should be changed with [Object.set\_deferred()](class_object.md#class-object-method-set-deferred).

* * *

[Shape3D](class_shape3d.md#class-shape3d) **shape** [🔗](#class-collisionshape3d-property-shape)

- void **set\_shape**(value: [Shape3D](class_shape3d.md#class-shape3d))

- [Shape3D](class_shape3d.md#class-shape3d) **get\_shape**()


The actual shape owned by this collision shape.

* * *

## Method Descriptions

void **make\_convex\_from\_siblings**() [🔗](#class-collisionshape3d-method-make-convex-from-siblings)

Sets the collision shape's shape to the addition of all its convexed [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) siblings geometry.

* * *

void **resource\_changed**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-collisionshape3d-method-resource-changed)

**Deprecated:** Use [Resource.changed](class_resource.md#class-resource-signal-changed) instead.

This method does nothing.

[Previous](class_collisionshape2d.md "CollisionShape2D") [Next](class_colorpicker.md "ColorPicker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_collisionshape2d.md "CollisionShape2D") [Next](class_colorpicker.md "ColorPicker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).