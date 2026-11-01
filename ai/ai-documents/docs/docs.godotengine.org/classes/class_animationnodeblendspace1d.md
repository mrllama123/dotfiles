---
title: AnimationNodeBlendSpace1D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeblendspace1d.html
crawled_at: "2026-08-13T10:23:33+12:00"
content_hash: 871899df7a8e72f6e45f59246c18ac7b2c648cb431d911b48104a965820c1d8c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeBlendSpace1D

* * *

# AnimationNodeBlendSpace1D

**Inherits:** [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A set of [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s placed on a virtual axis, crossfading between the two adjacent ones. Used by [AnimationTree](class_animationtree.md#class-animationtree).

## Description

A resource used by [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

**AnimationNodeBlendSpace1D** represents a virtual axis on which any type of [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s can be added using [add\_blend\_point()](#class-animationnodeblendspace1d-method-add-blend-point). Outputs the linear blend of the two [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) s adjacent to the current value.

You can set the extents of the axis with [min\_space](#class-animationnodeblendspace1d-property-min-space) and [max\_space](#class-animationnodeblendspace1d-property-max-space).

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [BlendMode](#enum-animationnodeblendspace1d-blendmode) | [blend\_mode](#class-animationnodeblendspace1d-property-blend-mode) | `0` |
| [float](class_float.md#class-float) | [max\_space](#class-animationnodeblendspace1d-property-max-space) | `1.0` |
| [float](class_float.md#class-float) | [min\_space](#class-animationnodeblendspace1d-property-min-space) | `-1.0` |
| [float](class_float.md#class-float) | [snap](#class-animationnodeblendspace1d-property-snap) | `0.1` |
| [bool](class_bool.md#class-bool) | [sync](#class-animationnodeblendspace1d-property-sync) | `false` |
| [String](class_string.md#class-string) | [value\_label](#class-animationnodeblendspace1d-property-value-label) | `"value"` |

## Methods

|     |     |
| --- | --- |
| void | [add\_blend\_point](#class-animationnodeblendspace1d-method-add-blend-point)(node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), pos: [float](class_float.md#class-float), at\_index: [int](class_int.md#class-int) = -1) |
| [int](class_int.md#class-int) | [get\_blend\_point\_count](#class-animationnodeblendspace1d-method-get-blend-point-count)() const |
| [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) | [get\_blend\_point\_node](#class-animationnodeblendspace1d-method-get-blend-point-node)(point: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_blend\_point\_position](#class-animationnodeblendspace1d-method-get-blend-point-position)(point: [int](class_int.md#class-int)) const |
| void | [remove\_blend\_point](#class-animationnodeblendspace1d-method-remove-blend-point)(point: [int](class_int.md#class-int)) |
| void | [set\_blend\_point\_node](#class-animationnodeblendspace1d-method-set-blend-point-node)(point: [int](class_int.md#class-int), node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode)) |
| void | [set\_blend\_point\_position](#class-animationnodeblendspace1d-method-set-blend-point-position)(point: [int](class_int.md#class-int), pos: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **BlendMode**: [🔗](#enum-animationnodeblendspace1d-blendmode)

[BlendMode](#enum-animationnodeblendspace1d-blendmode) **BLEND\_MODE\_INTERPOLATED** = `0`

The interpolation between animations is linear.

[BlendMode](#enum-animationnodeblendspace1d-blendmode) **BLEND\_MODE\_DISCRETE** = `1`

The blend space plays the animation of the animation node which blending position is closest to. Useful for frame-by-frame 2D animations.

[BlendMode](#enum-animationnodeblendspace1d-blendmode) **BLEND\_MODE\_DISCRETE\_CARRY** = `2`

Similar to [BLEND\_MODE\_DISCRETE](#class-animationnodeblendspace1d-constant-blend-mode-discrete), but starts the new animation at the last animation's playback position.

* * *

## Property Descriptions

[BlendMode](#enum-animationnodeblendspace1d-blendmode) **blend\_mode** = `0` [🔗](#class-animationnodeblendspace1d-property-blend-mode)

- void **set\_blend\_mode**(value: [BlendMode](#enum-animationnodeblendspace1d-blendmode))

- [BlendMode](#enum-animationnodeblendspace1d-blendmode) **get\_blend\_mode**()


Controls the interpolation between animations.

* * *

[float](class_float.md#class-float) **max\_space** = `1.0` [🔗](#class-animationnodeblendspace1d-property-max-space)

- void **set\_max\_space**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_space**()


The blend space's axis's upper limit for the points' position. See [add\_blend\_point()](#class-animationnodeblendspace1d-method-add-blend-point).

* * *

[float](class_float.md#class-float) **min\_space** = `-1.0` [🔗](#class-animationnodeblendspace1d-property-min-space)

- void **set\_min\_space**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_space**()


The blend space's axis's lower limit for the points' position. See [add\_blend\_point()](#class-animationnodeblendspace1d-method-add-blend-point).

* * *

[float](class_float.md#class-float) **snap** = `0.1` [🔗](#class-animationnodeblendspace1d-property-snap)

- void **set\_snap**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_snap**()


Position increment to snap to when moving a point on the axis.

* * *

[bool](class_bool.md#class-bool) **sync** = `false` [🔗](#class-animationnodeblendspace1d-property-sync)

- void **set\_use\_sync**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_sync**()


If `false`, the blended animations' frame are stopped when the blend value is `0`.

If `true`, forcing the blended animations to advance frame.

* * *

[String](class_string.md#class-string) **value\_label** = `"value"` [🔗](#class-animationnodeblendspace1d-property-value-label)

- void **set\_value\_label**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_value\_label**()


Label of the virtual axis of the blend space.

* * *

## Method Descriptions

void **add\_blend\_point**(node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), pos: [float](class_float.md#class-float), at\_index: [int](class_int.md#class-int) = -1) [🔗](#class-animationnodeblendspace1d-method-add-blend-point)

Adds a new point that represents a `node` on the virtual axis at a given position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.

* * *

[int](class_int.md#class-int) **get\_blend\_point\_count**() const [🔗](#class-animationnodeblendspace1d-method-get-blend-point-count)

Returns the number of points on the blend axis.

* * *

[AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **get\_blend\_point\_node**(point: [int](class_int.md#class-int)) const [🔗](#class-animationnodeblendspace1d-method-get-blend-point-node)

Returns the [AnimationNode](class_animationnode.md#class-animationnode) referenced by the point at index `point`.

* * *

[float](class_float.md#class-float) **get\_blend\_point\_position**(point: [int](class_int.md#class-int)) const [🔗](#class-animationnodeblendspace1d-method-get-blend-point-position)

Returns the position of the point at index `point`.

* * *

void **remove\_blend\_point**(point: [int](class_int.md#class-int)) [🔗](#class-animationnodeblendspace1d-method-remove-blend-point)

Removes the point at index `point` from the blend axis.

* * *

void **set\_blend\_point\_node**(point: [int](class_int.md#class-int), node: [AnimationRootNode](class_animationrootnode.md#class-animationrootnode)) [🔗](#class-animationnodeblendspace1d-method-set-blend-point-node)

Changes the [AnimationNode](class_animationnode.md#class-animationnode) referenced by the point at index `point`.

* * *

void **set\_blend\_point\_position**(point: [int](class_int.md#class-int), pos: [float](class_float.md#class-float)) [🔗](#class-animationnodeblendspace1d-method-set-blend-point-position)

Updates the position of the point at index `point` on the blend axis.

[Previous](class_animationnodeblend3.md "AnimationNodeBlend3") [Next](class_animationnodeblendspace2d.md "AnimationNodeBlendSpace2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeblend3.md "AnimationNodeBlend3") [Next](class_animationnodeblendspace2d.md "AnimationNodeBlendSpace2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).