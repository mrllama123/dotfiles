---
title: AnimationNodeBlendSpace2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeblendspace2d.html
crawled_at: "2026-08-13T10:37:10+12:00"
content_hash: a5cc3722ab5e56b3a6a51a5af94af03b84e92fa53d643ac0037a3b8eb5dd1e6b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeBlendSpace2D

* * *

# AnimationNodeBlendSpace2D

**Inherits:** [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A set of [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s placed on 2D coordinates, crossfading between the three adjacent ones. Used by [AnimationTree](class_animationtree.md#class-animationtree).

## Description

A resource used by [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

**AnimationNodeBlendSpace2D** represents a virtual 2D space on which [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s are placed. Outputs the linear blend of the three adjacent animations using a [Vector2](class_vector2.md#class-vector2) weight. Adjacent in this context means the three [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s making up the triangle that contains the current value.

You can add vertices to the blend space with [add\_blend\_point()](#class-animationnodeblendspace2d-method-add-blend-point) and automatically triangulate it by setting [auto\_triangles](#class-animationnodeblendspace2d-property-auto-triangles) to `true`. Otherwise, use [add\_triangle()](#class-animationnodeblendspace2d-method-add-triangle) and [remove\_triangle()](#class-animationnodeblendspace2d-method-remove-triangle) to triangulate the blend space by hand.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [auto\_triangles](#class-animationnodeblendspace2d-property-auto-triangles) | `true` |
| [BlendMode](#enum-animationnodeblendspace2d-blendmode) | [blend\_mode](#class-animationnodeblendspace2d-property-blend-mode) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [max\_space](#class-animationnodeblendspace2d-property-max-space) | `Vector2(1, 1)` |
| [Vector2](class_vector2.md#class-vector2) | [min\_space](#class-animationnodeblendspace2d-property-min-space) | `Vector2(-1, -1)` |
| [Vector2](class_vector2.md#class-vector2) | [snap](#class-animationnodeblendspace2d-property-snap) | `Vector2(0.1, 0.1)` |
| [bool](class_bool.md#class-bool) | [sync](#class-animationnodeblendspace2d-property-sync) | `false` |
| [String](class_string.md#class-string) | [x\_label](#class-animationnodeblendspace2d-property-x-label) | `"x"` |
| [String](class_string.md#class-string) | [y\_label](#class-animationnodeblendspace2d-property-y-label) | `"y"` |

## Methods

|     |     |
| --- | --- |
| void | [add\_blend\_point](#class-animationnodeblendspace2d-method-add-blend-point)(node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), pos: [Vector2](class_vector2.md#class-vector2), at\_index: [int](class_int.md#class-int) = -1) |
| void | [add\_triangle](#class-animationnodeblendspace2d-method-add-triangle)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int), at\_index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_blend\_point\_count](#class-animationnodeblendspace2d-method-get-blend-point-count)() const |
| [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) | [get\_blend\_point\_node](#class-animationnodeblendspace2d-method-get-blend-point-node)(point: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_blend\_point\_position](#class-animationnodeblendspace2d-method-get-blend-point-position)(point: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_triangle\_count](#class-animationnodeblendspace2d-method-get-triangle-count)() const |
| [int](class_int.md#class-int) | [get\_triangle\_point](#class-animationnodeblendspace2d-method-get-triangle-point)(triangle: [int](class_int.md#class-int), point: [int](class_int.md#class-int)) |
| void | [remove\_blend\_point](#class-animationnodeblendspace2d-method-remove-blend-point)(point: [int](class_int.md#class-int)) |
| void | [remove\_triangle](#class-animationnodeblendspace2d-method-remove-triangle)(triangle: [int](class_int.md#class-int)) |
| void | [set\_blend\_point\_node](#class-animationnodeblendspace2d-method-set-blend-point-node)(point: [int](class_int.md#class-int), node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode)) |
| void | [set\_blend\_point\_position](#class-animationnodeblendspace2d-method-set-blend-point-position)(point: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**triangles\_updated**() [🔗](#class-animationnodeblendspace2d-signal-triangles-updated)

Emitted every time the blend space's triangles are created, removed, or when one of their vertices changes position.

* * *

## Enumerations

enum **BlendMode**: [🔗](#enum-animationnodeblendspace2d-blendmode)

[BlendMode](#enum-animationnodeblendspace2d-blendmode) **BLEND\_MODE\_INTERPOLATED** = `0`

The interpolation between animations is linear.

[BlendMode](#enum-animationnodeblendspace2d-blendmode) **BLEND\_MODE\_DISCRETE** = `1`

The blend space plays the animation of the animation node which blending position is closest to. Useful for frame-by-frame 2D animations.

[BlendMode](#enum-animationnodeblendspace2d-blendmode) **BLEND\_MODE\_DISCRETE\_CARRY** = `2`

Similar to [BLEND\_MODE\_DISCRETE](#class-animationnodeblendspace2d-constant-blend-mode-discrete), but starts the new animation at the last animation's playback position.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **auto\_triangles** = `true` [🔗](#class-animationnodeblendspace2d-property-auto-triangles)

- void **set\_auto\_triangles**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_auto\_triangles**()


If `true`, the blend space is triangulated automatically. The mesh updates every time you add or remove points with [add\_blend\_point()](#class-animationnodeblendspace2d-method-add-blend-point) and [remove\_blend\_point()](#class-animationnodeblendspace2d-method-remove-blend-point).

* * *

[BlendMode](#enum-animationnodeblendspace2d-blendmode) **blend\_mode** = `0` [🔗](#class-animationnodeblendspace2d-property-blend-mode)

- void **set\_blend\_mode**(value: [BlendMode](#enum-animationnodeblendspace2d-blendmode))

- [BlendMode](#enum-animationnodeblendspace2d-blendmode) **get\_blend\_mode**()


Controls the interpolation between animations.

* * *

[Vector2](class_vector2.md#class-vector2) **max\_space** = `Vector2(1, 1)` [🔗](#class-animationnodeblendspace2d-property-max-space)

- void **set\_max\_space**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_max\_space**()


The blend space's X and Y axes' upper limit for the points' position. See [add\_blend\_point()](#class-animationnodeblendspace2d-method-add-blend-point).

* * *

[Vector2](class_vector2.md#class-vector2) **min\_space** = `Vector2(-1, -1)` [🔗](#class-animationnodeblendspace2d-property-min-space)

- void **set\_min\_space**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_min\_space**()


The blend space's X and Y axes' lower limit for the points' position. See [add\_blend\_point()](#class-animationnodeblendspace2d-method-add-blend-point).

* * *

[Vector2](class_vector2.md#class-vector2) **snap** = `Vector2(0.1, 0.1)` [🔗](#class-animationnodeblendspace2d-property-snap)

- void **set\_snap**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_snap**()


Position increment to snap to when moving a point.

* * *

[bool](class_bool.md#class-bool) **sync** = `false` [🔗](#class-animationnodeblendspace2d-property-sync)

- void **set\_use\_sync**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_sync**()


If `false`, the blended animations' frame are stopped when the blend value is `0`.

If `true`, forcing the blended animations to advance frame.

* * *

[String](class_string.md#class-string) **x\_label** = `"x"` [🔗](#class-animationnodeblendspace2d-property-x-label)

- void **set\_x\_label**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_x\_label**()


Name of the blend space's X axis.

* * *

[String](class_string.md#class-string) **y\_label** = `"y"` [🔗](#class-animationnodeblendspace2d-property-y-label)

- void **set\_y\_label**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_y\_label**()


Name of the blend space's Y axis.

* * *

## Method Descriptions

void **add\_blend\_point**(node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), pos: [Vector2](class_vector2.md#class-vector2), at\_index: [int](class_int.md#class-int) = -1) [🔗](#class-animationnodeblendspace2d-method-add-blend-point)

Adds a new point that represents a `node` at the position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.

* * *

void **add\_triangle**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int), z: [int](class_int.md#class-int), at\_index: [int](class_int.md#class-int) = -1) [🔗](#class-animationnodeblendspace2d-method-add-triangle)

Creates a new triangle using three points `x`, `y`, and `z`. Triangles can overlap. You can insert the triangle at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.

* * *

[int](class_int.md#class-int) **get\_blend\_point\_count**() const [🔗](#class-animationnodeblendspace2d-method-get-blend-point-count)

Returns the number of points in the blend space.

* * *

[AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **get\_blend\_point\_node**(point: [int](class_int.md#class-int)) const [🔗](#class-animationnodeblendspace2d-method-get-blend-point-node)

Returns the [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) referenced by the point at index `point`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_blend\_point\_position**(point: [int](class_int.md#class-int)) const [🔗](#class-animationnodeblendspace2d-method-get-blend-point-position)

Returns the position of the point at index `point`.

* * *

[int](class_int.md#class-int) **get\_triangle\_count**() const [🔗](#class-animationnodeblendspace2d-method-get-triangle-count)

Returns the number of triangles in the blend space.

* * *

[int](class_int.md#class-int) **get\_triangle\_point**(triangle: [int](class_int.md#class-int), point: [int](class_int.md#class-int)) [🔗](#class-animationnodeblendspace2d-method-get-triangle-point)

Returns the position of the point at index `point` in the triangle of index `triangle`.

* * *

void **remove\_blend\_point**(point: [int](class_int.md#class-int)) [🔗](#class-animationnodeblendspace2d-method-remove-blend-point)

Removes the point at index `point` from the blend space.

* * *

void **remove\_triangle**(triangle: [int](class_int.md#class-int)) [🔗](#class-animationnodeblendspace2d-method-remove-triangle)

Removes the triangle at index `triangle` from the blend space.

* * *

void **set\_blend\_point\_node**(point: [int](class_int.md#class-int), node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode)) [🔗](#class-animationnodeblendspace2d-method-set-blend-point-node)

Changes the [AnimationNode](class_animationnode.md#class-animationnode) referenced by the point at index `point`.

* * *

void **set\_blend\_point\_position**(point: [int](class_int.md#class-int), pos: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-animationnodeblendspace2d-method-set-blend-point-position)

Updates the position of the point at index `point` in the blend space.

[Previous](class_animationnodeblendspace1d.md "AnimationNodeBlendSpace1D") [Next](class_animationnodeblendtree.md "AnimationNodeBlendTree")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeblendspace1d.md "AnimationNodeBlendSpace1D") [Next](class_animationnodeblendtree.md "AnimationNodeBlendTree")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).