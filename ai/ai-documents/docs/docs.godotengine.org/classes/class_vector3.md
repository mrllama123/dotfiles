---
title: Vector3 — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_vector3.html
crawled_at: "2026-08-13T10:26:33+12:00"
content_hash: 979e5a22657e45f3ced56d48b3085c7a7a1651953769e07f38a5b7632d4c8354
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Vector3

* * *

# Vector3

A 3D vector using floating-point coordinates.

## Description

A 3-element structure that can be used to represent 3D coordinates or any other triplet of numeric values.

It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike [float](class_float.md#class-float) which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`.

See [Vector3i](class_vector3i.md#class-vector3i) for its integer counterpart.

**Note:** In a boolean context, a Vector3 will evaluate to `false` if it's equal to `Vector3(0, 0, 0)`. Otherwise, a Vector3 will always evaluate to `true`.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Vector math](../tutorials/math/vector_math.md)

- [Advanced vector math](../tutorials/math/vectors_advanced.md)

- [3Blue1Brown Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)

- [Matrix Transform Demo](https://godotengine.org/asset-library/asset/2787)

- [All 3D Demos](https://github.com/godotengine/godot-demo-projects/tree/master/3d)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [x](#class-vector3-property-x) | `0.0` |
| [float](class_float.md#class-float) | [y](#class-vector3-property-y) | `0.0` |
| [float](class_float.md#class-float) | [z](#class-vector3-property-z) | `0.0` |

## Constructors

|     |     |
| --- | --- |
| [Vector3](#class-vector3) | [Vector3](#class-vector3-constructor-vector3)() |
| [Vector3](#class-vector3) | [Vector3](#class-vector3-constructor-vector3)(from: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [Vector3](#class-vector3-constructor-vector3)(from: [Vector3i](class_vector3i.md#class-vector3i)) |
| [Vector3](#class-vector3) | [Vector3](#class-vector3-constructor-vector3)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float)) |

## Methods

|     |     |
| --- | --- |
| [Vector3](#class-vector3) | [abs](#class-vector3-method-abs)() const |
| [float](class_float.md#class-float) | [angle\_to](#class-vector3-method-angle-to)(to: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [bezier\_derivative](#class-vector3-method-bezier-derivative)(control\_1: [Vector3](#class-vector3), control\_2: [Vector3](#class-vector3), end: [Vector3](#class-vector3), t: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [bezier\_interpolate](#class-vector3-method-bezier-interpolate)(control\_1: [Vector3](#class-vector3), control\_2: [Vector3](#class-vector3), end: [Vector3](#class-vector3), t: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [bounce](#class-vector3-method-bounce)(n: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [ceil](#class-vector3-method-ceil)() const |
| [Vector3](#class-vector3) | [clamp](#class-vector3-method-clamp)(min: [Vector3](#class-vector3), max: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [clampf](#class-vector3-method-clampf)(min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [cross](#class-vector3-method-cross)(with: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [cubic\_interpolate](#class-vector3-method-cubic-interpolate)(b: [Vector3](#class-vector3), pre\_a: [Vector3](#class-vector3), post\_b: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [cubic\_interpolate\_in\_time](#class-vector3-method-cubic-interpolate-in-time)(b: [Vector3](#class-vector3), pre\_a: [Vector3](#class-vector3), post\_b: [Vector3](#class-vector3), weight: [float](class_float.md#class-float), b\_t: [float](class_float.md#class-float), pre\_a\_t: [float](class_float.md#class-float), post\_b\_t: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [direction\_to](#class-vector3-method-direction-to)(to: [Vector3](#class-vector3)) const |
| [float](class_float.md#class-float) | [distance\_squared\_to](#class-vector3-method-distance-squared-to)(to: [Vector3](#class-vector3)) const |
| [float](class_float.md#class-float) | [distance\_to](#class-vector3-method-distance-to)(to: [Vector3](#class-vector3)) const |
| [float](class_float.md#class-float) | [dot](#class-vector3-method-dot)(with: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [floor](#class-vector3-method-floor)() const |
| [Vector3](#class-vector3) | [inverse](#class-vector3-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-vector3-method-is-equal-approx)(to: [Vector3](#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-vector3-method-is-finite)() const |
| [bool](class_bool.md#class-bool) | [is\_normalized](#class-vector3-method-is-normalized)() const |
| [bool](class_bool.md#class-bool) | [is\_zero\_approx](#class-vector3-method-is-zero-approx)() const |
| [float](class_float.md#class-float) | [length](#class-vector3-method-length)() const |
| [float](class_float.md#class-float) | [length\_squared](#class-vector3-method-length-squared)() const |
| [Vector3](#class-vector3) | [lerp](#class-vector3-method-lerp)(to: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [limit\_length](#class-vector3-method-limit-length)(length: [float](class_float.md#class-float) = 1.0) const |
| [Vector3](#class-vector3) | [max](#class-vector3-method-max)(with: [Vector3](#class-vector3)) const |
| [int](class_int.md#class-int) | [max\_axis\_index](#class-vector3-method-max-axis-index)() const |
| [Vector3](#class-vector3) | [maxf](#class-vector3-method-maxf)(with: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [min](#class-vector3-method-min)(with: [Vector3](#class-vector3)) const |
| [int](class_int.md#class-int) | [min\_axis\_index](#class-vector3-method-min-axis-index)() const |
| [Vector3](#class-vector3) | [minf](#class-vector3-method-minf)(with: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [move\_toward](#class-vector3-method-move-toward)(to: [Vector3](#class-vector3), delta: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [normalized](#class-vector3-method-normalized)() const |
| [Vector3](#class-vector3) | [octahedron\_decode](#class-vector3-method-octahedron-decode)(uv: [Vector2](class_vector2.md#class-vector2)) static |
| [Vector2](class_vector2.md#class-vector2) | [octahedron\_encode](#class-vector3-method-octahedron-encode)() const |
| [Basis](class_basis.md#class-basis) | [outer](#class-vector3-method-outer)(with: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [posmod](#class-vector3-method-posmod)(mod: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [posmodv](#class-vector3-method-posmodv)(modv: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [project](#class-vector3-method-project)(b: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [reflect](#class-vector3-method-reflect)(n: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [rotated](#class-vector3-method-rotated)(axis: [Vector3](#class-vector3), angle: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [round](#class-vector3-method-round)() const |
| [Vector3](#class-vector3) | [sign](#class-vector3-method-sign)() const |
| [float](class_float.md#class-float) | [signed\_angle\_to](#class-vector3-method-signed-angle-to)(to: [Vector3](#class-vector3), axis: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [slerp](#class-vector3-method-slerp)(to: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const |
| [Vector3](#class-vector3) | [slide](#class-vector3-method-slide)(n: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [snapped](#class-vector3-method-snapped)(step: [Vector3](#class-vector3)) const |
| [Vector3](#class-vector3) | [snappedf](#class-vector3-method-snappedf)(step: [float](class_float.md#class-float)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-vector3-operator-neq-vector3)(right: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-basis)(right: [Basis](class_basis.md#class-basis)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-quaternion)(right: [Quaternion](class_quaternion.md#class-quaternion)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-transform3d)(right: [Transform3D](class_transform3d.md#class-transform3d)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-vector3)(right: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Vector3](#class-vector3) | [operator \*](#class-vector3-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Vector3](#class-vector3) | [operator +](#class-vector3-operator-sum-vector3)(right: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [operator -](#class-vector3-operator-dif-vector3)(right: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [operator /](#class-vector3-operator-div-vector3)(right: [Vector3](#class-vector3)) |
| [Vector3](#class-vector3) | [operator /](#class-vector3-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Vector3](#class-vector3) | [operator /](#class-vector3-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-vector3-operator-lt-vector3)(right: [Vector3](#class-vector3)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-vector3-operator-lte-vector3)(right: [Vector3](#class-vector3)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-vector3-operator-eq-vector3)(right: [Vector3](#class-vector3)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-vector3-operator-gt-vector3)(right: [Vector3](#class-vector3)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-vector3-operator-gte-vector3)(right: [Vector3](#class-vector3)) |
| [float](class_float.md#class-float) | [operator \[\]](#class-vector3-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Vector3](#class-vector3) | [operator unary+](#class-vector3-operator-unplus)() |
| [Vector3](#class-vector3) | [operator unary-](#class-vector3-operator-unminus)() |

* * *

## Enumerations

enum **Axis**: [🔗](#enum-vector3-axis)

[Axis](#enum-vector3-axis) **AXIS\_X** = `0`

Enumerated value for the X axis. Returned by [max\_axis\_index()](#class-vector3-method-max-axis-index) and [min\_axis\_index()](#class-vector3-method-min-axis-index).

[Axis](#enum-vector3-axis) **AXIS\_Y** = `1`

Enumerated value for the Y axis. Returned by [max\_axis\_index()](#class-vector3-method-max-axis-index) and [min\_axis\_index()](#class-vector3-method-min-axis-index).

[Axis](#enum-vector3-axis) **AXIS\_Z** = `2`

Enumerated value for the Z axis. Returned by [max\_axis\_index()](#class-vector3-method-max-axis-index) and [min\_axis\_index()](#class-vector3-method-min-axis-index).

* * *

## Constants

**ZERO** = `Vector3(0, 0, 0)` [🔗](#class-vector3-constant-zero)

Zero vector, a vector with all components set to `0`.

**ONE** = `Vector3(1, 1, 1)` [🔗](#class-vector3-constant-one)

One vector, a vector with all components set to `1`.

**INF** = `Vector3(inf, inf, inf)` [🔗](#class-vector3-constant-inf)

Infinity vector, a vector with all components set to [@GDScript.INF](class_@gdscript.md#class-gdscript-constant-inf).

**LEFT** = `Vector3(-1, 0, 0)` [🔗](#class-vector3-constant-left)

Left unit vector. Represents the local direction of left, and the global direction of west.

**RIGHT** = `Vector3(1, 0, 0)` [🔗](#class-vector3-constant-right)

Right unit vector. Represents the local direction of right, and the global direction of east.

**UP** = `Vector3(0, 1, 0)` [🔗](#class-vector3-constant-up)

Up unit vector.

**DOWN** = `Vector3(0, -1, 0)` [🔗](#class-vector3-constant-down)

Down unit vector.

**FORWARD** = `Vector3(0, 0, -1)` [🔗](#class-vector3-constant-forward)

Forward unit vector. Represents the local direction of forward, and the global direction of north. Keep in mind that the forward direction for lights, cameras, etc is different from 3D assets like characters, which face towards the camera by convention. Use [MODEL\_FRONT](#class-vector3-constant-model-front) and similar constants when working in 3D asset space.

**BACK** = `Vector3(0, 0, 1)` [🔗](#class-vector3-constant-back)

Back unit vector. Represents the local direction of back, and the global direction of south.

**MODEL\_LEFT** = `Vector3(1, 0, 0)` [🔗](#class-vector3-constant-model-left)

Unit vector pointing towards the left side of imported 3D assets.

**MODEL\_RIGHT** = `Vector3(-1, 0, 0)` [🔗](#class-vector3-constant-model-right)

Unit vector pointing towards the right side of imported 3D assets.

**MODEL\_TOP** = `Vector3(0, 1, 0)` [🔗](#class-vector3-constant-model-top)

Unit vector pointing towards the top side (up) of imported 3D assets.

**MODEL\_BOTTOM** = `Vector3(0, -1, 0)` [🔗](#class-vector3-constant-model-bottom)

Unit vector pointing towards the bottom side (down) of imported 3D assets.

**MODEL\_FRONT** = `Vector3(0, 0, 1)` [🔗](#class-vector3-constant-model-front)

Unit vector pointing towards the front side (facing forward) of imported 3D assets.

**MODEL\_REAR** = `Vector3(0, 0, -1)` [🔗](#class-vector3-constant-model-rear)

Unit vector pointing towards the rear side (back) of imported 3D assets.

* * *

## Property Descriptions

[float](class_float.md#class-float) **x** = `0.0` [🔗](#class-vector3-property-x)

The vector's X component. Also accessible by using the index position `[0]`.

* * *

[float](class_float.md#class-float) **y** = `0.0` [🔗](#class-vector3-property-y)

The vector's Y component. Also accessible by using the index position `[1]`.

* * *

[float](class_float.md#class-float) **z** = `0.0` [🔗](#class-vector3-property-z)

The vector's Z component. Also accessible by using the index position `[2]`.

* * *

## Constructor Descriptions

[Vector3](#class-vector3) **Vector3**() [🔗](#class-vector3-constructor-vector3)

Constructs a default-initialized **Vector3** with all components set to `0`.

* * *

[Vector3](#class-vector3) **Vector3**(from: [Vector3](#class-vector3))

Constructs a **Vector3** as a copy of the given **Vector3**.

* * *

[Vector3](#class-vector3) **Vector3**(from: [Vector3i](class_vector3i.md#class-vector3i))

Constructs a new **Vector3** from [Vector3i](class_vector3i.md#class-vector3i).

* * *

[Vector3](#class-vector3) **Vector3**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float), z: [float](class_float.md#class-float))

Returns a **Vector3** with the given components.

* * *

## Method Descriptions

[Vector3](#class-vector3) **abs**() const [🔗](#class-vector3-method-abs)

Returns a new vector with all components in absolute values (i.e. positive).

* * *

[float](class_float.md#class-float) **angle\_to**(to: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-angle-to)

Returns the unsigned minimum angle to the given vector, in radians.

* * *

[Vector3](#class-vector3) **bezier\_derivative**(control\_1: [Vector3](#class-vector3), control\_2: [Vector3](#class-vector3), end: [Vector3](#class-vector3), t: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-bezier-derivative)

Returns the derivative at the given `t` on the [Bézier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) defined by this vector and the given `control_1`, `control_2`, and `end` points.

* * *

[Vector3](#class-vector3) **bezier\_interpolate**(control\_1: [Vector3](#class-vector3), control\_2: [Vector3](#class-vector3), end: [Vector3](#class-vector3), t: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-bezier-interpolate)

Returns the point at the given `t` on the [Bézier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) defined by this vector and the given `control_1`, `control_2`, and `end` points.

* * *

[Vector3](#class-vector3) **bounce**(n: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-bounce)

Returns the vector "bounced off" from a plane defined by the given normal `n`.

**Note:** [bounce()](#class-vector3-method-bounce) performs the operation that most engines and frameworks call `reflect()`.

* * *

[Vector3](#class-vector3) **ceil**() const [🔗](#class-vector3-method-ceil)

Returns a new vector with all components rounded up (towards positive infinity).

* * *

[Vector3](#class-vector3) **clamp**(min: [Vector3](#class-vector3), max: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-clamp)

Returns a new vector with all components clamped between the components of `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Vector3](#class-vector3) **clampf**(min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-clampf)

Returns a new vector with all components clamped between `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Vector3](#class-vector3) **cross**(with: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-cross)

Returns the cross product of this vector and `with`.

This returns a vector perpendicular to both this and `with`, which would be the normal vector of the plane defined by the two vectors. As there are two such vectors, in opposite directions, this method returns the vector defined by a right-handed coordinate system. If the two vectors are parallel this returns an empty vector, making it useful for testing if two vectors are parallel.

* * *

[Vector3](#class-vector3) **cubic\_interpolate**(b: [Vector3](#class-vector3), pre\_a: [Vector3](#class-vector3), post\_b: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-cubic-interpolate)

Performs a cubic interpolation between this vector and `b` using `pre_a` and `post_b` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.

* * *

[Vector3](#class-vector3) **cubic\_interpolate\_in\_time**(b: [Vector3](#class-vector3), pre\_a: [Vector3](#class-vector3), post\_b: [Vector3](#class-vector3), weight: [float](class_float.md#class-float), b\_t: [float](class_float.md#class-float), pre\_a\_t: [float](class_float.md#class-float), post\_b\_t: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-cubic-interpolate-in-time)

Performs a cubic interpolation between this vector and `b` using `pre_a` and `post_b` as handles, and returns the result at position `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.

It can perform smoother interpolation than [cubic\_interpolate()](#class-vector3-method-cubic-interpolate) by the time values.

* * *

[Vector3](#class-vector3) **direction\_to**(to: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-direction-to)

Returns the normalized vector pointing from this vector to `to`. This is equivalent to using `(b - a).normalized()`.

* * *

[float](class_float.md#class-float) **distance\_squared\_to**(to: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-distance-squared-to)

Returns the squared distance between this vector and `to`.

This method runs faster than [distance\_to()](#class-vector3-method-distance-to), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[float](class_float.md#class-float) **distance\_to**(to: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-distance-to)

Returns the distance between this vector and `to`.

* * *

[float](class_float.md#class-float) **dot**(with: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-dot)

Returns the dot product of this vector and `with`. This can be used to compare the angle between two vectors. For example, this can be used to determine whether an enemy is facing the player.

The dot product will be `0` for a right angle (90 degrees), greater than 0 for angles narrower than 90 degrees and lower than 0 for angles wider than 90 degrees.

When using unit (normalized) vectors, the result will always be between `-1.0` (180 degree angle) when the vectors are facing opposite directions, and `1.0` (0 degree angle) when the vectors are aligned.

**Note:** `a.dot(b)` is equivalent to `b.dot(a)`.

* * *

[Vector3](#class-vector3) **floor**() const [🔗](#class-vector3-method-floor)

Returns a new vector with all components rounded down (towards negative infinity).

* * *

[Vector3](#class-vector3) **inverse**() const [🔗](#class-vector3-method-inverse)

Returns the inverse of the vector. This is the same as `Vector3(1.0 / v.x, 1.0 / v.y, 1.0 / v.z)`.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(to: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-is-equal-approx)

Returns `true` if this vector and `to` are approximately equal, by running [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-vector3-method-is-finite)

Returns `true` if this vector is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on each component.

* * *

[bool](class_bool.md#class-bool) **is\_normalized**() const [🔗](#class-vector3-method-is-normalized)

Returns `true` if the vector is normalized, i.e. its length is approximately equal to 1.

* * *

[bool](class_bool.md#class-bool) **is\_zero\_approx**() const [🔗](#class-vector3-method-is-zero-approx)

Returns `true` if this vector's values are approximately zero, by running [@GlobalScope.is\_zero\_approx()](class_@globalscope.md#class-globalscope-method-is-zero-approx) on each component.

This method is faster than using [is\_equal\_approx()](#class-vector3-method-is-equal-approx) with one value as a zero vector.

* * *

[float](class_float.md#class-float) **length**() const [🔗](#class-vector3-method-length)

Returns the length (magnitude) of this vector.

* * *

[float](class_float.md#class-float) **length\_squared**() const [🔗](#class-vector3-method-length-squared)

Returns the squared length (squared magnitude) of this vector.

This method runs faster than [length()](#class-vector3-method-length), so prefer it if you need to compare vectors or need the squared distance for some formula.

* * *

[Vector3](#class-vector3) **lerp**(to: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-lerp)

Returns the result of the linear interpolation between this vector and `to` by amount `weight`. `weight` is on the range of `0.0` to `1.0`, representing the amount of interpolation.

* * *

[Vector3](#class-vector3) **limit\_length**(length: [float](class_float.md#class-float) = 1.0) const [🔗](#class-vector3-method-limit-length)

Returns the vector with a maximum length by limiting its length to `length`. If the vector is non-finite, the result is undefined.

* * *

[Vector3](#class-vector3) **max**(with: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-max)

Returns the component-wise maximum of this and `with`, equivalent to `Vector3(maxf(x, with.x), maxf(y, with.y), maxf(z, with.z))`.

* * *

[int](class_int.md#class-int) **max\_axis\_index**() const [🔗](#class-vector3-method-max-axis-index)

Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_X](#class-vector3-constant-axis-x).

* * *

[Vector3](#class-vector3) **maxf**(with: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-maxf)

Returns the component-wise maximum of this and `with`, equivalent to `Vector3(maxf(x, with), maxf(y, with), maxf(z, with))`.

* * *

[Vector3](#class-vector3) **min**(with: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-min)

Returns the component-wise minimum of this and `with`, equivalent to `Vector3(minf(x, with.x), minf(y, with.y), minf(z, with.z))`.

* * *

[int](class_int.md#class-int) **min\_axis\_index**() const [🔗](#class-vector3-method-min-axis-index)

Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns [AXIS\_Z](#class-vector3-constant-axis-z).

* * *

[Vector3](#class-vector3) **minf**(with: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-minf)

Returns the component-wise minimum of this and `with`, equivalent to `Vector3(minf(x, with), minf(y, with), minf(z, with))`.

* * *

[Vector3](#class-vector3) **move\_toward**(to: [Vector3](#class-vector3), delta: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-move-toward)

Returns a new vector moved toward `to` by the fixed `delta` amount. Will not go past the final value.

* * *

[Vector3](#class-vector3) **normalized**() const [🔗](#class-vector3-method-normalized)

Returns the result of scaling the vector to unit length. Equivalent to `v / v.length()`. Returns `(0, 0, 0)` if `v.length() == 0`. See also [is\_normalized()](#class-vector3-method-is-normalized).

**Note:** This function may return incorrect values if the input vector length is near zero.

* * *

[Vector3](#class-vector3) **octahedron\_decode**(uv: [Vector2](class_vector2.md#class-vector2)) static [🔗](#class-vector3-method-octahedron-decode)

Returns the **Vector3** from an octahedral-compressed form created using [octahedron\_encode()](#class-vector3-method-octahedron-encode) (stored as a [Vector2](class_vector2.md#class-vector2)).

* * *

[Vector2](class_vector2.md#class-vector2) **octahedron\_encode**() const [🔗](#class-vector3-method-octahedron-encode)

Returns the octahedral-encoded (oct32) form of this **Vector3** as a [Vector2](class_vector2.md#class-vector2). Since a [Vector2](class_vector2.md#class-vector2) occupies 1/3 less memory compared to **Vector3**, this form of compression can be used to pass greater amounts of [normalized()](#class-vector3-method-normalized) **Vector3** s without increasing storage or memory requirements. See also [octahedron\_decode()](#class-vector3-method-octahedron-decode).

**Note:** [octahedron\_encode()](#class-vector3-method-octahedron-encode) can only be used for [normalized()](#class-vector3-method-normalized) vectors. [octahedron\_encode()](#class-vector3-method-octahedron-encode) does _not_ check whether this **Vector3** is normalized, and will return a value that does not decompress to the original value if the **Vector3** is not normalized.

**Note:** Octahedral compression is _lossy_, although visual differences are rarely perceptible in real world scenarios.

* * *

[Basis](class_basis.md#class-basis) **outer**(with: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-outer)

Returns the outer product with `with`.

* * *

[Vector3](#class-vector3) **posmod**(mod: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-posmod)

Returns a vector composed of the [@GlobalScope.fposmod()](class_@globalscope.md#class-globalscope-method-fposmod) of this vector's components and `mod`.

* * *

[Vector3](#class-vector3) **posmodv**(modv: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-posmodv)

Returns a vector composed of the [@GlobalScope.fposmod()](class_@globalscope.md#class-globalscope-method-fposmod) of this vector's components and `modv`'s components.

* * *

[Vector3](#class-vector3) **project**(b: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-project)

Returns a new vector resulting from projecting this vector onto the given vector `b`. The resulting new vector is parallel to `b`. See also [slide()](#class-vector3-method-slide).

**Note:** If the vector `b` is a zero vector, the components of the resulting new vector will be [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan).

* * *

[Vector3](#class-vector3) **reflect**(n: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-reflect)

Returns the result of reflecting the vector through a plane defined by the given normal vector `n`.

**Note:** [reflect()](#class-vector3-method-reflect) differs from what other engines and frameworks call `reflect()`. In other engines, `reflect()` returns the result of the vector reflected by the given plane. The reflection thus passes through the given normal. While in Godot the reflection passes through the plane and can be thought of as bouncing off the normal. See also [bounce()](#class-vector3-method-bounce) which does what most engines call `reflect()`.

* * *

[Vector3](#class-vector3) **rotated**(axis: [Vector3](#class-vector3), angle: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-rotated)

Returns the result of rotating this vector around a given axis by `angle` (in radians). The axis must be a normalized vector. See also [@GlobalScope.deg\_to\_rad()](class_@globalscope.md#class-globalscope-method-deg-to-rad).

* * *

[Vector3](#class-vector3) **round**() const [🔗](#class-vector3-method-round)

Returns a new vector with all components rounded to the nearest integer, with halfway cases rounded away from zero.

* * *

[Vector3](#class-vector3) **sign**() const [🔗](#class-vector3-method-sign)

Returns a new vector with each component set to `1.0` if it's positive, `-1.0` if it's negative, and `0.0` if it's zero. The result is identical to calling [@GlobalScope.sign()](class_@globalscope.md#class-globalscope-method-sign) on each component.

* * *

[float](class_float.md#class-float) **signed\_angle\_to**(to: [Vector3](#class-vector3), axis: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-signed-angle-to)

Returns the signed angle to the given vector, in radians. The sign of the angle is positive in a counter-clockwise direction and negative in a clockwise direction when viewed from the side specified by the `axis`.

* * *

[Vector3](#class-vector3) **slerp**(to: [Vector3](#class-vector3), weight: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-slerp)

Returns the result of spherical linear interpolation between this vector and `to`, by amount `weight`. `weight` is on the range of 0.0 to 1.0, representing the amount of interpolation.

This method also handles interpolating the lengths if the input vectors have different lengths. For the special case of one or both input vectors having zero length, this method behaves like [lerp()](#class-vector3-method-lerp).

* * *

[Vector3](#class-vector3) **slide**(n: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-slide)

Returns a new vector resulting from sliding this vector along a plane with normal `n`. The resulting new vector is perpendicular to `n`, and is equivalent to this vector minus its projection on `n`. See also [project()](#class-vector3-method-project).

**Note:** The vector `n` must be normalized. See also [normalized()](#class-vector3-method-normalized).

* * *

[Vector3](#class-vector3) **snapped**(step: [Vector3](#class-vector3)) const [🔗](#class-vector3-method-snapped)

Returns a new vector with each component snapped to the nearest multiple of the corresponding component in `step`. This can also be used to round the components to an arbitrary number of decimals.

* * *

[Vector3](#class-vector3) **snappedf**(step: [float](class_float.md#class-float)) const [🔗](#class-vector3-method-snappedf)

Returns a new vector with each component snapped to the nearest multiple of `step`. This can also be used to round the components to an arbitrary number of decimals.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-neq-vector3)

Returns `true` if the vectors are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-vector3-method-is-equal-approx) instead, which is more reliable.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[Vector3](#class-vector3) **operator \***(right: [Basis](class_basis.md#class-basis)) [🔗](#class-vector3-operator-mul-basis)

Inversely transforms (multiplies) the **Vector3** by the given [Basis](class_basis.md#class-basis) matrix, under the assumption that the basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).

`vector * basis` is equivalent to `basis.transposed() * vector`. See [Basis.transposed()](class_basis.md#class-basis-method-transposed).

For transforming by inverse of a non-orthonormal basis (e.g. with scaling) `basis.inverse() * vector` can be used instead. See [Basis.inverse()](class_basis.md#class-basis-method-inverse).

* * *

[Vector3](#class-vector3) **operator \***(right: [Quaternion](class_quaternion.md#class-quaternion)) [🔗](#class-vector3-operator-mul-quaternion)

Inversely transforms (multiplies) the **Vector3** by the given [Quaternion](class_quaternion.md#class-quaternion).

`vector * quaternion` is equivalent to `quaternion.inverse() * vector`. See [Quaternion.inverse()](class_quaternion.md#class-quaternion-method-inverse).

* * *

[Vector3](#class-vector3) **operator \***(right: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-vector3-operator-mul-transform3d)

Inversely transforms (multiplies) the **Vector3** by the given [Transform3D](class_transform3d.md#class-transform3d) transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).

`vector * transform` is equivalent to `transform.inverse() * vector`. See [Transform3D.inverse()](class_transform3d.md#class-transform3d-method-inverse).

For transforming by inverse of an affine transformation (e.g. with scaling) `transform.affine_inverse() * vector` can be used instead. See [Transform3D.affine\_inverse()](class_transform3d.md#class-transform3d-method-affine-inverse).

* * *

[Vector3](#class-vector3) **operator \***(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-mul-vector3)

Multiplies each component of the **Vector3** by the components of the given **Vector3**.

```
print(Vector3(10, 20, 30) * Vector3(3, 4, 5)) # Prints (30.0, 80.0, 150.0)

```

* * *

[Vector3](#class-vector3) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-vector3-operator-mul-float)

Multiplies each component of the **Vector3** by the given [float](class_float.md#class-float).

* * *

[Vector3](#class-vector3) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-vector3-operator-mul-int)

Multiplies each component of the **Vector3** by the given [int](class_int.md#class-int).

* * *

[Vector3](#class-vector3) **operator +**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-sum-vector3)

Adds each component of the **Vector3** by the components of the given **Vector3**.

```
print(Vector3(10, 20, 30) + Vector3(3, 4, 5)) # Prints (13.0, 24.0, 35.0)

```

* * *

[Vector3](#class-vector3) **operator -**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-dif-vector3)

Subtracts each component of the **Vector3** by the components of the given **Vector3**.

```
print(Vector3(10, 20, 30) - Vector3(3, 4, 5)) # Prints (7.0, 16.0, 25.0)

```

* * *

[Vector3](#class-vector3) **operator /**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-div-vector3)

Divides each component of the **Vector3** by the components of the given **Vector3**.

```
print(Vector3(10, 20, 30) / Vector3(2, 5, 3)) # Prints (5.0, 4.0, 10.0)

```

* * *

[Vector3](#class-vector3) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-vector3-operator-div-float)

Divides each component of the **Vector3** by the given [float](class_float.md#class-float).

* * *

[Vector3](#class-vector3) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-vector3-operator-div-int)

Divides each component of the **Vector3** by the given [int](class_int.md#class-int).

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-lt-vector3)

Compares two **Vector3** vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-lte-vector3)

Compares two **Vector3** vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-eq-vector3)

Returns `true` if the vectors are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-vector3-method-is-equal-approx) instead, which is more reliable.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-gt-vector3)

Compares two **Vector3** vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [Vector3](#class-vector3)) [🔗](#class-vector3-operator-gte-vector3)

Compares two **Vector3** vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors, and then with the Z values. This operator is useful for sorting vectors.

**Note:** Vectors with [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) elements don't behave the same as other vectors. Therefore, the results from this operator may not be accurate if NaNs are included.

* * *

[float](class_float.md#class-float) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-vector3-operator-idx-int)

Access vector components using their `index`. `v[0]` is equivalent to `v.x`, `v[1]` is equivalent to `v.y`, and `v[2]` is equivalent to `v.z`.

* * *

[Vector3](#class-vector3) **operator unary+**() [🔗](#class-vector3-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Vector3](#class-vector3) **operator unary-**() [🔗](#class-vector3-operator-unminus)

Returns the negative value of the **Vector3**. This is the same as writing `Vector3(-v.x, -v.y, -v.z)`. This operation flips the direction of the vector while keeping the same magnitude. With floats, the number zero can be either positive or negative.

[Previous](class_vector2i.md "Vector2i") [Next](class_vector3i.md "Vector3i")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vector2i.md "Vector2i") [Next](class_vector3i.md "Vector3i")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).