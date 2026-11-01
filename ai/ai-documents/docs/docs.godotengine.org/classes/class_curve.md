---
title: Curve — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_curve.html
crawled_at: "2026-08-13T10:38:02+12:00"
content_hash: a5c9f54f574c8ddddddbd6cb5092cbffd54177ab3d84cabc0b950a773cc7ca27
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Curve

* * *

# Curve

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A mathematical curve.

## Description

This resource describes a mathematical curve by defining a set of points and tangents at each point. By default, it ranges between `0` and `1` on the X and Y axes, but these ranges can be changed.

Please note that many resources and nodes assume they are given _unit curves_. A unit curve is a curve whose domain (the X axis) is between `0` and `1`. Some examples of unit curve usage are [CPUParticles2D.angle\_curve](class_cpuparticles2d.md#class-cpuparticles2d-property-angle-curve) and [Line2D.width\_curve](class_line2d.md#class-line2d-property-width-curve).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bake\_resolution](#class-curve-property-bake-resolution) | `100` |
| [float](class_float.md#class-float) | [max\_domain](#class-curve-property-max-domain) | `1.0` |
| [float](class_float.md#class-float) | [max\_value](#class-curve-property-max-value) | `1.0` |
| [float](class_float.md#class-float) | [min\_domain](#class-curve-property-min-domain) | `0.0` |
| [float](class_float.md#class-float) | [min\_value](#class-curve-property-min-value) | `0.0` |
| [int](class_int.md#class-int) | [point\_count](#class-curve-property-point-count) | `0` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_point](#class-curve-method-add-point)(position: [Vector2](class_vector2.md#class-vector2), left\_tangent: [float](class_float.md#class-float) = 0, right\_tangent: [float](class_float.md#class-float) = 0, left\_mode: [TangentMode](#enum-curve-tangentmode) = 0, right\_mode: [TangentMode](#enum-curve-tangentmode) = 0) |
| void | [bake](#class-curve-method-bake)() |
| void | [clean\_dupes](#class-curve-method-clean-dupes)() |
| void | [clear\_points](#class-curve-method-clear-points)() |
| [float](class_float.md#class-float) | [get\_domain\_range](#class-curve-method-get-domain-range)() const |
| [TangentMode](#enum-curve-tangentmode) | [get\_point\_left\_mode](#class-curve-method-get-point-left-mode)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_point\_left\_tangent](#class-curve-method-get-point-left-tangent)(index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_point\_position](#class-curve-method-get-point-position)(index: [int](class_int.md#class-int)) const |
| [TangentMode](#enum-curve-tangentmode) | [get\_point\_right\_mode](#class-curve-method-get-point-right-mode)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_point\_right\_tangent](#class-curve-method-get-point-right-tangent)(index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_value\_range](#class-curve-method-get-value-range)() const |
| void | [remove\_point](#class-curve-method-remove-point)(index: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [sample](#class-curve-method-sample)(offset: [float](class_float.md#class-float)) const |
| [float](class_float.md#class-float) | [sample\_baked](#class-curve-method-sample-baked)(offset: [float](class_float.md#class-float)) const |
| void | [set\_point\_left\_mode](#class-curve-method-set-point-left-mode)(index: [int](class_int.md#class-int), mode: [TangentMode](#enum-curve-tangentmode)) |
| void | [set\_point\_left\_tangent](#class-curve-method-set-point-left-tangent)(index: [int](class_int.md#class-int), tangent: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [set\_point\_offset](#class-curve-method-set-point-offset)(index: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) |
| void | [set\_point\_right\_mode](#class-curve-method-set-point-right-mode)(index: [int](class_int.md#class-int), mode: [TangentMode](#enum-curve-tangentmode)) |
| void | [set\_point\_right\_tangent](#class-curve-method-set-point-right-tangent)(index: [int](class_int.md#class-int), tangent: [float](class_float.md#class-float)) |
| void | [set\_point\_value](#class-curve-method-set-point-value)(index: [int](class_int.md#class-int), y: [float](class_float.md#class-float)) |

* * *

## Signals

**domain\_changed**() [🔗](#class-curve-signal-domain-changed)

Emitted when [max\_domain](#class-curve-property-max-domain) or [min\_domain](#class-curve-property-min-domain) is changed.

* * *

**range\_changed**() [🔗](#class-curve-signal-range-changed)

Emitted when [max\_value](#class-curve-property-max-value) or [min\_value](#class-curve-property-min-value) is changed.

* * *

## Enumerations

enum **TangentMode**: [🔗](#enum-curve-tangentmode)

[TangentMode](#enum-curve-tangentmode) **TANGENT\_FREE** = `0`

The tangent on this side of the point is user-defined.

[TangentMode](#enum-curve-tangentmode) **TANGENT\_LINEAR** = `1`

The curve calculates the tangent on this side of the point as the slope halfway towards the adjacent point.

[TangentMode](#enum-curve-tangentmode) **TANGENT\_MODE\_COUNT** = `2`

The total number of available tangent modes.

* * *

## Property Descriptions

[int](class_int.md#class-int) **bake\_resolution** = `100` [🔗](#class-curve-property-bake-resolution)

- void **set\_bake\_resolution**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bake\_resolution**()


The number of points to include in the baked (i.e. cached) curve data.

* * *

[float](class_float.md#class-float) **max\_domain** = `1.0` [🔗](#class-curve-property-max-domain)

- void **set\_max\_domain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_domain**()


The maximum domain (x-coordinate) that points can have.

* * *

[float](class_float.md#class-float) **max\_value** = `1.0` [🔗](#class-curve-property-max-value)

- void **set\_max\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_value**()


The maximum value (y-coordinate) that points can have. Tangents can cause higher values between points.

* * *

[float](class_float.md#class-float) **min\_domain** = `0.0` [🔗](#class-curve-property-min-domain)

- void **set\_min\_domain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_domain**()


The minimum domain (x-coordinate) that points can have.

* * *

[float](class_float.md#class-float) **min\_value** = `0.0` [🔗](#class-curve-property-min-value)

- void **set\_min\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_value**()


The minimum value (y-coordinate) that points can have. Tangents can cause lower values between points.

* * *

[int](class_int.md#class-int) **point\_count** = `0` [🔗](#class-curve-property-point-count)

- void **set\_point\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_point\_count**()


The number of points describing the curve.

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_point**(position: [Vector2](class_vector2.md#class-vector2), left\_tangent: [float](class_float.md#class-float) = 0, right\_tangent: [float](class_float.md#class-float) = 0, left\_mode: [TangentMode](#enum-curve-tangentmode) = 0, right\_mode: [TangentMode](#enum-curve-tangentmode) = 0) [🔗](#class-curve-method-add-point)

Adds a point to the curve. For each side, if the `*_mode` is [TANGENT\_LINEAR](#class-curve-constant-tangent-linear), the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to [TANGENT\_FREE](#class-curve-constant-tangent-free).

* * *

void **bake**() [🔗](#class-curve-method-bake)

Recomputes the baked cache of points for the curve.

* * *

void **clean\_dupes**() [🔗](#class-curve-method-clean-dupes)

Removes duplicate points, i.e. points that are less than 0.00001 units (engine epsilon value) away from their neighbor on the curve.

* * *

void **clear\_points**() [🔗](#class-curve-method-clear-points)

Removes all points from the curve.

* * *

[float](class_float.md#class-float) **get\_domain\_range**() const [🔗](#class-curve-method-get-domain-range)

Returns the difference between [min\_domain](#class-curve-property-min-domain) and [max\_domain](#class-curve-property-max-domain).

* * *

[TangentMode](#enum-curve-tangentmode) **get\_point\_left\_mode**(index: [int](class_int.md#class-int)) const [🔗](#class-curve-method-get-point-left-mode)

Returns the left [TangentMode](#enum-curve-tangentmode) for the point at `index`.

* * *

[float](class_float.md#class-float) **get\_point\_left\_tangent**(index: [int](class_int.md#class-int)) const [🔗](#class-curve-method-get-point-left-tangent)

Returns the left tangent angle (in degrees) for the point at `index`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_point\_position**(index: [int](class_int.md#class-int)) const [🔗](#class-curve-method-get-point-position)

Returns the curve coordinates for the point at `index`.

* * *

[TangentMode](#enum-curve-tangentmode) **get\_point\_right\_mode**(index: [int](class_int.md#class-int)) const [🔗](#class-curve-method-get-point-right-mode)

Returns the right [TangentMode](#enum-curve-tangentmode) for the point at `index`.

* * *

[float](class_float.md#class-float) **get\_point\_right\_tangent**(index: [int](class_int.md#class-int)) const [🔗](#class-curve-method-get-point-right-tangent)

Returns the right tangent angle (in degrees) for the point at `index`.

* * *

[float](class_float.md#class-float) **get\_value\_range**() const [🔗](#class-curve-method-get-value-range)

Returns the difference between [min\_value](#class-curve-property-min-value) and [max\_value](#class-curve-property-max-value).

* * *

void **remove\_point**(index: [int](class_int.md#class-int)) [🔗](#class-curve-method-remove-point)

Removes the point at `index` from the curve.

* * *

[float](class_float.md#class-float) **sample**(offset: [float](class_float.md#class-float)) const [🔗](#class-curve-method-sample)

Returns the Y value for the point that would exist at the X position `offset` along the curve.

* * *

[float](class_float.md#class-float) **sample\_baked**(offset: [float](class_float.md#class-float)) const [🔗](#class-curve-method-sample-baked)

Returns the Y value for the point that would exist at the X position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.

* * *

void **set\_point\_left\_mode**(index: [int](class_int.md#class-int), mode: [TangentMode](#enum-curve-tangentmode)) [🔗](#class-curve-method-set-point-left-mode)

Sets the left [TangentMode](#enum-curve-tangentmode) for the point at `index` to `mode`.

* * *

void **set\_point\_left\_tangent**(index: [int](class_int.md#class-int), tangent: [float](class_float.md#class-float)) [🔗](#class-curve-method-set-point-left-tangent)

Sets the left tangent angle for the point at `index` to `tangent`.

* * *

[int](class_int.md#class-int) **set\_point\_offset**(index: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) [🔗](#class-curve-method-set-point-offset)

Sets the offset from `0.5`.

* * *

void **set\_point\_right\_mode**(index: [int](class_int.md#class-int), mode: [TangentMode](#enum-curve-tangentmode)) [🔗](#class-curve-method-set-point-right-mode)

Sets the right [TangentMode](#enum-curve-tangentmode) for the point at `index` to `mode`.

* * *

void **set\_point\_right\_tangent**(index: [int](class_int.md#class-int), tangent: [float](class_float.md#class-float)) [🔗](#class-curve-method-set-point-right-tangent)

Sets the right tangent angle for the point at `index` to `tangent`.

* * *

void **set\_point\_value**(index: [int](class_int.md#class-int), y: [float](class_float.md#class-float)) [🔗](#class-curve-method-set-point-value)

Assigns the vertical position `y` to the point at `index`.

[Previous](class_cubemaparray.md "CubemapArray") [Next](class_curve2d.md "Curve2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cubemaparray.md "CubemapArray") [Next](class_curve2d.md "Curve2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).