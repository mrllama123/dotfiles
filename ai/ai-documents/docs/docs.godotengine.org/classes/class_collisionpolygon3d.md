---
title: CollisionPolygon3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_collisionpolygon3d.html
crawled_at: "2026-08-13T10:39:29+12:00"
content_hash: 598b64a2c05e2e6aba45aeff43bad89acf2ad790fdafc5b37dc9d9b7138eec29
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CollisionPolygon3D

* * *

# CollisionPolygon3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node that provides a thickened polygon shape (a prism) to a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) parent.

## Description

A node that provides a thickened polygon shape (a prism) to a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) parent and allows to edit it. The polygon can be concave or convex. This can give a detection shape to an [Area3D](class_area3d.md#class-area3d) or turn [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) into a solid object.

**Warning:** A non-uniformly scaled [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its shape resource instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [debug\_color](#class-collisionpolygon3d-property-debug-color) | `Color(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [debug\_fill](#class-collisionpolygon3d-property-debug-fill) | `true` |
| [float](class_float.md#class-float) | [depth](#class-collisionpolygon3d-property-depth) | `1.0` |
| [bool](class_bool.md#class-bool) | [disabled](#class-collisionpolygon3d-property-disabled) | `false` |
| [float](class_float.md#class-float) | [margin](#class-collisionpolygon3d-property-margin) | `0.04` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [polygon](#class-collisionpolygon3d-property-polygon) | `PackedVector2Array()` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **debug\_color** = `Color(0, 0, 0, 0)` [🔗](#class-collisionpolygon3d-property-debug-color)

- void **set\_debug\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_debug\_color**()


The collision shape color that is displayed in the editor, or in the running project if **Debug > Visible Collision Shapes** is checked at the top of the editor.

**Note:** The default value is [ProjectSettings.debug/shapes/collision/shape\_color](class_projectsettings.md#class-projectsettings-property-debug-shapes-collision-shape-color). The `Color(0, 0, 0, 0)` value documented here is a placeholder, and not the actual default debug color.

* * *

[bool](class_bool.md#class-bool) **debug\_fill** = `true` [🔗](#class-collisionpolygon3d-property-debug-fill)

- void **set\_enable\_debug\_fill**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_debug\_fill**()


If `true`, when the shape is displayed, it will show a solid fill color in addition to its wireframe.

* * *

[float](class_float.md#class-float) **depth** = `1.0` [🔗](#class-collisionpolygon3d-property-depth)

- void **set\_depth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth**()


Length that the resulting collision extends in either direction perpendicular to its 2D polygon.

* * *

[bool](class_bool.md#class-bool) **disabled** = `false` [🔗](#class-collisionpolygon3d-property-disabled)

- void **set\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_disabled**()


If `true`, no collision will be produced. This property should be changed with [Object.set\_deferred()](class_object.md#class-object-method-set-deferred).

* * *

[float](class_float.md#class-float) **margin** = `0.04` [🔗](#class-collisionpolygon3d-property-margin)

- void **set\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_margin**()


The collision margin for the generated [Shape3D](class_shape3d.md#class-shape3d). See [Shape3D.margin](class_shape3d.md#class-shape3d-property-margin) for more details.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **polygon** = `PackedVector2Array()` [🔗](#class-collisionpolygon3d-property-polygon)

- void **set\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_polygon**()


Array of vertices which define the 2D polygon in the local XY plane.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

[Previous](class_collisionpolygon2d.md "CollisionPolygon2D") [Next](class_collisionshape2d.md "CollisionShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_collisionpolygon2d.md "CollisionPolygon2D") [Next](class_collisionshape2d.md "CollisionShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).