---
title: Basis — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_basis.html
crawled_at: "2026-08-13T10:28:36+12:00"
content_hash: 9b8d75a2cb1f7b03571fc007858ff539b1e33e9c6f55b8b941d6d617365ce872
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Basis

* * *

# Basis

A 3×3 matrix for representing 3D rotation and scale.

## Description

The **Basis** built-in [Variant](class_variant.md#class-variant) type is a 3×3 [matrix](https://en.wikipedia.org/wiki/Matrix_(mathematics)) used to represent 3D rotation, scale, and shear. It is frequently used within a [Transform3D](class_transform3d.md#class-transform3d).

A **Basis** is composed by 3 axis vectors, each representing a column of the matrix: [x](#class-basis-property-x), [y](#class-basis-property-y), and [z](#class-basis-property-z). The length of each axis ( [Vector3.length()](class_vector3.md#class-vector3-method-length)) influences the basis's scale, while the direction of all axes influence the rotation. Usually, these axes are perpendicular to one another. However, when you rotate any axis individually, the basis becomes sheared. Applying a sheared basis to a 3D model will make the model appear distorted.

A **Basis** is:

- **Orthogonal** if its axes are perpendicular to each other.

- **Normalized** if the length of every axis is `1.0`.

- **Uniform** if all axes share the same length (see [get\_scale()](#class-basis-method-get-scale)).

- **Orthonormal** if it is both orthogonal and normalized, which allows it to only represent rotations (see [orthonormalized()](#class-basis-method-orthonormalized)).

- **Conformal** if it is both orthogonal and uniform, which ensures it is not distorted.


For a general introduction, see the [Matrices and transforms](../tutorials/math/matrices_and_transforms.md) tutorial.

**Note:** Godot uses a [right-handed coordinate system](https://en.wikipedia.org/wiki/Right-hand_rule), which is a common standard. For directions, the convention for built-in types like [Camera3D](class_camera3d.md#class-camera3d) is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the [3D asset direction conventions](../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.md#d-asset-direction-conventions) tutorial.

**Note:** The basis matrices are exposed as [column-major](https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html) order, which is the same as OpenGL. However, they are stored internally in row-major order, which is the same as DirectX.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Math documentation index](../tutorials/math/index.md)

- [Matrices and transforms](../tutorials/math/matrices_and_transforms.md)

- [Using 3D transforms](../tutorials/3d/using_transforms.md)

- [Matrix Transform Demo](https://godotengine.org/asset-library/asset/2787)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)

- [2.5D Game Demo](https://godotengine.org/asset-library/asset/2783)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [x](#class-basis-property-x) | `Vector3(1, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [y](#class-basis-property-y) | `Vector3(0, 1, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [z](#class-basis-property-z) | `Vector3(0, 0, 1)` |

## Constructors

|     |     |
| --- | --- |
| [Basis](#class-basis) | [Basis](#class-basis-constructor-basis)() |
| [Basis](#class-basis) | [Basis](#class-basis-constructor-basis)(from: [Basis](#class-basis)) |
| [Basis](#class-basis) | [Basis](#class-basis-constructor-basis)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) |
| [Basis](#class-basis) | [Basis](#class-basis-constructor-basis)(from: [Quaternion](class_quaternion.md#class-quaternion)) |
| [Basis](#class-basis) | [Basis](#class-basis-constructor-basis)(x\_axis: [Vector3](class_vector3.md#class-vector3), y\_axis: [Vector3](class_vector3.md#class-vector3), z\_axis: [Vector3](class_vector3.md#class-vector3)) |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [determinant](#class-basis-method-determinant)() const |
| [Basis](#class-basis) | [from\_euler](#class-basis-method-from-euler)(euler: [Vector3](class_vector3.md#class-vector3), order: [int](class_int.md#class-int) = 2) static |
| [Basis](#class-basis) | [from\_scale](#class-basis-method-from-scale)(scale: [Vector3](class_vector3.md#class-vector3)) static |
| [Vector3](class_vector3.md#class-vector3) | [get\_euler](#class-basis-method-get-euler)(order: [int](class_int.md#class-int) = 2) const |
| [Quaternion](class_quaternion.md#class-quaternion) | [get\_rotation\_quaternion](#class-basis-method-get-rotation-quaternion)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_scale](#class-basis-method-get-scale)() const |
| [Basis](#class-basis) | [inverse](#class-basis-method-inverse)() const |
| [bool](class_bool.md#class-bool) | [is\_conformal](#class-basis-method-is-conformal)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-basis-method-is-equal-approx)(b: [Basis](#class-basis)) const |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-basis-method-is-finite)() const |
| [Basis](#class-basis) | [looking\_at](#class-basis-method-looking-at)(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) static |
| [Basis](#class-basis) | [orthonormalized](#class-basis-method-orthonormalized)() const |
| [Basis](#class-basis) | [rotated](#class-basis-method-rotated)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const |
| [Basis](#class-basis) | [scaled](#class-basis-method-scaled)(scale: [Vector3](class_vector3.md#class-vector3)) const |
| [Basis](#class-basis) | [scaled\_local](#class-basis-method-scaled-local)(scale: [Vector3](class_vector3.md#class-vector3)) const |
| [Basis](#class-basis) | [slerp](#class-basis-method-slerp)(to: [Basis](#class-basis), weight: [float](class_float.md#class-float)) const |
| [float](class_float.md#class-float) | [tdotx](#class-basis-method-tdotx)(with: [Vector3](class_vector3.md#class-vector3)) const |
| [float](class_float.md#class-float) | [tdoty](#class-basis-method-tdoty)(with: [Vector3](class_vector3.md#class-vector3)) const |
| [float](class_float.md#class-float) | [tdotz](#class-basis-method-tdotz)(with: [Vector3](class_vector3.md#class-vector3)) const |
| [Basis](#class-basis) | [transposed](#class-basis-method-transposed)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-basis-operator-neq-basis)(right: [Basis](#class-basis)) |
| [Basis](#class-basis) | [operator \*](#class-basis-operator-mul-basis)(right: [Basis](#class-basis)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \*](#class-basis-operator-mul-vector3)(right: [Vector3](class_vector3.md#class-vector3)) |
| [Basis](#class-basis) | [operator \*](#class-basis-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Basis](#class-basis) | [operator \*](#class-basis-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Basis](#class-basis) | [operator /](#class-basis-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Basis](#class-basis) | [operator /](#class-basis-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-basis-operator-eq-basis)(right: [Basis](#class-basis)) |
| [Vector3](class_vector3.md#class-vector3) | [operator \[\]](#class-basis-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constants

**IDENTITY** = `Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)` [🔗](#class-basis-constant-identity)

The identity **Basis**. This is an orthonormal basis with no rotation, no shear, and a scale of [Vector3.ONE](class_vector3.md#class-vector3-constant-one). This also means that:

- The [x](#class-basis-property-x) points right ( [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right));

- The [y](#class-basis-property-y) points up ( [Vector3.UP](class_vector3.md#class-vector3-constant-up));

- The [z](#class-basis-property-z) points back ( [Vector3.BACK](class_vector3.md#class-vector3-constant-back)).


```
var basis = Basis.IDENTITY
print("| X | Y | Z")
print("| %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x])
print("| %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y])
print("| %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z])
# Prints:
# | X | Y | Z
# | 1 | 0 | 0
# | 0 | 1 | 0
# | 0 | 0 | 1

```

If a [Vector3](class_vector3.md#class-vector3) or another **Basis** is transformed (multiplied) by this constant, no transformation occurs.

**Note:** In GDScript, this constant is equivalent to creating a [Basis](#class-basis-constructor-basis) without any arguments. It can be used to make your code clearer, and for consistency with C#.

**FLIP\_X** = `Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)` [🔗](#class-basis-constant-flip-x)

When any basis is multiplied by [FLIP\_X](#class-basis-constant-flip-x), it negates all components of the [x](#class-basis-property-x) axis (the X column).

When [FLIP\_X](#class-basis-constant-flip-x) is multiplied by any basis, it negates the [Vector3.x](class_vector3.md#class-vector3-property-x) component of all axes (the X row).

**FLIP\_Y** = `Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)` [🔗](#class-basis-constant-flip-y)

When any basis is multiplied by [FLIP\_Y](#class-basis-constant-flip-y), it negates all components of the [y](#class-basis-property-y) axis (the Y column).

When [FLIP\_Y](#class-basis-constant-flip-y) is multiplied by any basis, it negates the [Vector3.y](class_vector3.md#class-vector3-property-y) component of all axes (the Y row).

**FLIP\_Z** = `Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)` [🔗](#class-basis-constant-flip-z)

When any basis is multiplied by [FLIP\_Z](#class-basis-constant-flip-z), it negates all components of the [z](#class-basis-property-z) axis (the Z column).

When [FLIP\_Z](#class-basis-constant-flip-z) is multiplied by any basis, it negates the [Vector3.z](class_vector3.md#class-vector3-property-z) component of all axes (the Z row).

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **x** = `Vector3(1, 0, 0)` [🔗](#class-basis-property-x)

The basis's X axis, and the column `0` of the matrix.

On the identity basis, this vector points right ( [Vector3.RIGHT](class_vector3.md#class-vector3-constant-right)).

* * *

[Vector3](class_vector3.md#class-vector3) **y** = `Vector3(0, 1, 0)` [🔗](#class-basis-property-y)

The basis's Y axis, and the column `1` of the matrix.

On the identity basis, this vector points up ( [Vector3.UP](class_vector3.md#class-vector3-constant-up)).

* * *

[Vector3](class_vector3.md#class-vector3) **z** = `Vector3(0, 0, 1)` [🔗](#class-basis-property-z)

The basis's Z axis, and the column `2` of the matrix.

On the identity basis, this vector points back ( [Vector3.BACK](class_vector3.md#class-vector3-constant-back)).

* * *

## Constructor Descriptions

[Basis](#class-basis) **Basis**() [🔗](#class-basis-constructor-basis)

Constructs a **Basis** identical to [IDENTITY](#class-basis-constant-identity).

**Note:** In C#, this constructs a **Basis** with all of its components set to [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[Basis](#class-basis) **Basis**(from: [Basis](#class-basis))

Constructs a **Basis** as a copy of the given **Basis**.

* * *

[Basis](#class-basis) **Basis**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float))

Constructs a **Basis** that only represents rotation, rotated around the `axis` by the given `angle`, in radians. The axis must be a normalized vector.

**Note:** This is the same as using [rotated()](#class-basis-method-rotated) on the [IDENTITY](#class-basis-constant-identity) basis. With more than one angle consider using [from\_euler()](#class-basis-method-from-euler), instead.

* * *

[Basis](#class-basis) **Basis**(from: [Quaternion](class_quaternion.md#class-quaternion))

Constructs a **Basis** that only represents rotation from the given [Quaternion](class_quaternion.md#class-quaternion).

**Note:** Quaternions _only_ store rotation, not scale. Because of this, conversions from **Basis** to [Quaternion](class_quaternion.md#class-quaternion) cannot always be reversed.

* * *

[Basis](#class-basis) **Basis**(x\_axis: [Vector3](class_vector3.md#class-vector3), y\_axis: [Vector3](class_vector3.md#class-vector3), z\_axis: [Vector3](class_vector3.md#class-vector3))

Constructs a **Basis** from 3 axis vectors. These are the columns of the basis matrix.

* * *

## Method Descriptions

[float](class_float.md#class-float) **determinant**() const [🔗](#class-basis-method-determinant)

Returns the [determinant](https://en.wikipedia.org/wiki/Determinant) of this basis's matrix. For advanced math, this number can be used to determine a few attributes:

- If the determinant is exactly `0.0`, the basis is not invertible (see [inverse()](#class-basis-method-inverse)).

- If the determinant is a negative number, the basis represents a negative scale.


**Note:** If the basis's scale is the same for every axis, its determinant is always that scale by the power of 3.

* * *

[Basis](#class-basis) **from\_euler**(euler: [Vector3](class_vector3.md#class-vector3), order: [int](class_int.md#class-int) = 2) static [🔗](#class-basis-method-from-euler)

Constructs a new **Basis** that only represents rotation from the given [Vector3](class_vector3.md#class-vector3) of [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians.

- The [Vector3.x](class_vector3.md#class-vector3-property-x) should contain the angle around the [x](#class-basis-property-x) axis (pitch);

- The [Vector3.y](class_vector3.md#class-vector3-property-y) should contain the angle around the [y](#class-basis-property-y) axis (yaw);

- The [Vector3.z](class_vector3.md#class-vector3-property-z) should contain the angle around the [z](#class-basis-property-z) axis (roll).


GDScriptC#

```
# Creates a Basis whose z axis points down.
var my_basis = Basis.from_euler(Vector3(TAU / 4, 0, 0))

print(my_basis.z) # Prints (0.0, -1.0, 0.0)

```

```
// Creates a Basis whose z axis points down.
var myBasis = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

GD.Print(myBasis.Z); // Prints (0, -1, 0)

```

The order of each consecutive rotation can be changed with `order` (see [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) constants). By default, the YXZ convention is used ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)): the basis rotates first around the Y axis (yaw), then X (pitch), and lastly Z (roll). When using the opposite method [get\_euler()](#class-basis-method-get-euler), this order is reversed.

* * *

[Basis](#class-basis) **from\_scale**(scale: [Vector3](class_vector3.md#class-vector3)) static [🔗](#class-basis-method-from-scale)

Constructs a new **Basis** that only represents scale, with no rotation or shear, from the given `scale` vector.

GDScriptC#

```
var my_basis = Basis.from_scale(Vector3(2, 4, 8))

print(my_basis.x) # Prints (2.0, 0.0, 0.0)
print(my_basis.y) # Prints (0.0, 4.0, 0.0)
print(my_basis.z) # Prints (0.0, 0.0, 8.0)

```

```
var myBasis = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

GD.Print(myBasis.X); // Prints (2, 0, 0)
GD.Print(myBasis.Y); // Prints (0, 4, 0)
GD.Print(myBasis.Z); // Prints (0, 0, 8)

```

**Note:** In linear algebra, the matrix of this basis is also known as a [diagonal matrix](https://en.wikipedia.org/wiki/Diagonal_matrix).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_euler**(order: [int](class_int.md#class-int) = 2) const [🔗](#class-basis-method-get-euler)

Returns this basis's rotation as a [Vector3](class_vector3.md#class-vector3) of [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians. For the returned value:

- The [Vector3.x](class_vector3.md#class-vector3-property-x) contains the angle around the [x](#class-basis-property-x) axis (pitch);

- The [Vector3.y](class_vector3.md#class-vector3-property-y) contains the angle around the [y](#class-basis-property-y) axis (yaw);

- The [Vector3.z](class_vector3.md#class-vector3-property-z) contains the angle around the [z](#class-basis-property-z) axis (roll).


The order of each consecutive rotation can be changed with `order` (see [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) constants). By default, the YXZ convention is used ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)): Z (roll) is calculated first, then X (pitch), and lastly Y (yaw). When using the opposite method [from\_euler()](#class-basis-method-from-euler), this order is reversed.

**Note:** For this method to return correctly, the basis needs to be _orthonormal_ (see [orthonormalized()](#class-basis-method-orthonormalized)).

**Note:** Euler angles are much more intuitive but are not suitable for 3D math. Because of this, consider using the [get\_rotation\_quaternion()](#class-basis-method-get-rotation-quaternion) method instead, which returns a [Quaternion](class_quaternion.md#class-quaternion).

**Note:** In the Inspector dock, a basis's rotation is often displayed in Euler angles (in degrees), as is the case with the [Node3D.rotation](class_node3d.md#class-node3d-property-rotation) property.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **get\_rotation\_quaternion**() const [🔗](#class-basis-method-get-rotation-quaternion)

Returns this basis's rotation as a [Quaternion](class_quaternion.md#class-quaternion).

**Note:** Quaternions are much more suitable for 3D math but are less intuitive. For user interfaces, consider using the [get\_euler()](#class-basis-method-get-euler) method, which returns Euler angles.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_scale**() const [🔗](#class-basis-method-get-scale)

Returns the length of each axis of this basis, as a [Vector3](class_vector3.md#class-vector3). If the basis is not sheared, this value is the scaling factor. It is not affected by rotation.

GDScriptC#

```
var my_basis = Basis(
    Vector3(2, 0, 0),
    Vector3(0, 4, 0),
    Vector3(0, 0, 8)
)
# Rotating the Basis in any way preserves its scale.
my_basis = my_basis.rotated(Vector3.UP, TAU / 2)
my_basis = my_basis.rotated(Vector3.RIGHT, TAU / 4)

print(my_basis.get_scale()) # Prints (2.0, 4.0, 8.0)

```

```
var myBasis = new Basis(
    Vector3(2.0f, 0.0f, 0.0f),
    Vector3(0.0f, 4.0f, 0.0f),
    Vector3(0.0f, 0.0f, 8.0f)
);
// Rotating the Basis in any way preserves its scale.
myBasis = myBasis.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
myBasis = myBasis.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

GD.Print(myBasis.Scale); // Prints (2, 4, 8)

```

**Note:** If the value returned by [determinant()](#class-basis-method-determinant) is negative, the scale is also negative.

* * *

[Basis](#class-basis) **inverse**() const [🔗](#class-basis-method-inverse)

Returns the [inverse of this basis's matrix](https://en.wikipedia.org/wiki/Invertible_matrix).

* * *

[bool](class_bool.md#class-bool) **is\_conformal**() const [🔗](#class-basis-method-is-conformal)

Returns `true` if this basis is conformal. A conformal basis is both _orthogonal_ (the axes are perpendicular to each other) and _uniform_ (the axes share the same length). This method can be especially useful during physics calculations.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(b: [Basis](#class-basis)) const [🔗](#class-basis-method-is-equal-approx)

Returns `true` if this basis and `b` are approximately equal, by calling [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on all vector components.

* * *

[bool](class_bool.md#class-bool) **is\_finite**() const [🔗](#class-basis-method-is-finite)

Returns `true` if this basis is finite, by calling [@GlobalScope.is\_finite()](class_@globalscope.md#class-globalscope-method-is-finite) on all vector components.

* * *

[Basis](#class-basis) **looking\_at**(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) static [🔗](#class-basis-method-looking-at)

Creates a new **Basis** with a rotation such that the forward axis (-Z) points towards the `target` position.

By default, the -Z axis (camera forward) is treated as forward (implies +X is right). If `use_model_front` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position.

The up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the forward axis. The returned basis is orthonormalized (see [orthonormalized()](#class-basis-method-orthonormalized)).

The `target` and the `up` cannot be [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero), and shouldn't be colinear to avoid unintended rotation around local Z axis.

* * *

[Basis](#class-basis) **orthonormalized**() const [🔗](#class-basis-method-orthonormalized)

Returns the orthonormalized version of this basis. An orthonormal basis is both _orthogonal_ (the axes are perpendicular to each other) and _normalized_ (the axes have a length of `1.0`), which also means it can only represent a rotation.

It is often useful to call this method to avoid rounding errors on a rotating basis:

GDScriptC#

```
# Rotate this Node3D every frame.
func _process(delta):
    basis = basis.rotated(Vector3.UP, TAU * delta)
    basis = basis.rotated(Vector3.RIGHT, TAU * delta)
    basis = basis.orthonormalized()

```

```
// Rotate this Node3D every frame.
public override void _Process(double delta)
{
    Basis = Basis.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
            .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
            .Orthonormalized();
}

```

* * *

[Basis](#class-basis) **rotated**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) const [🔗](#class-basis-method-rotated)

Returns a copy of this basis rotated around the given `axis` by the given `angle` (in radians).

The `axis` must be a normalized vector (see [Vector3.normalized()](class_vector3.md#class-vector3-method-normalized)). If `angle` is positive, the basis is rotated counter-clockwise around the axis.

GDScriptC#

```
var my_basis = Basis.IDENTITY
var angle = TAU / 2

my_basis = my_basis.rotated(Vector3.UP, angle)    # Rotate around the up axis (yaw).
my_basis = my_basis.rotated(Vector3.RIGHT, angle) # Rotate around the right axis (pitch).
my_basis = my_basis.rotated(Vector3.BACK, angle)  # Rotate around the back axis (roll).

```

```
var myBasis = Basis.Identity;
var angle = Mathf.Tau / 2.0f;

myBasis = myBasis.Rotated(Vector3.Up, angle);    // Rotate around the up axis (yaw).
myBasis = myBasis.Rotated(Vector3.Right, angle); // Rotate around the right axis (pitch).
myBasis = myBasis.Rotated(Vector3.Back, angle);  // Rotate around the back axis (roll).

```

* * *

[Basis](#class-basis) **scaled**(scale: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-basis-method-scaled)

Returns this basis with each axis's components scaled by the given `scale`'s components.

The basis matrix's rows are multiplied by `scale`'s components. This operation is a global scale (relative to the parent).

GDScriptC#

```
var my_basis = Basis(
    Vector3(1, 1, 1),
    Vector3(2, 2, 2),
    Vector3(3, 3, 3)
)
my_basis = my_basis.scaled(Vector3(0, 2, -2))

print(my_basis.x) # Prints (0.0, 2.0, -2.0)
print(my_basis.y) # Prints (0.0, 4.0, -4.0)
print(my_basis.z) # Prints (0.0, 6.0, -6.0)

```

```
var myBasis = new Basis(
    new Vector3(1.0f, 1.0f, 1.0f),
    new Vector3(2.0f, 2.0f, 2.0f),
    new Vector3(3.0f, 3.0f, 3.0f)
);
myBasis = myBasis.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

GD.Print(myBasis.X); // Prints (0, 2, -2)
GD.Print(myBasis.Y); // Prints (0, 4, -4)
GD.Print(myBasis.Z); // Prints (0, 6, -6)

```

* * *

[Basis](#class-basis) **scaled\_local**(scale: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-basis-method-scaled-local)

Returns this basis with each axis scaled by the corresponding component in the given `scale`.

The basis matrix's columns are multiplied by `scale`'s components. This operation is a local scale (relative to self).

GDScriptC#

```
var my_basis = Basis(
    Vector3(1, 1, 1),
    Vector3(2, 2, 2),
    Vector3(3, 3, 3)
)
my_basis = my_basis.scaled_local(Vector3(0, 2, -2))

print(my_basis.x) # Prints (0.0, 0.0, 0.0)
print(my_basis.y) # Prints (4.0, 4.0, 4.0)
print(my_basis.z) # Prints (-6.0, -6.0, -6.0)

```

```
var myBasis = new Basis(
    new Vector3(1.0f, 1.0f, 1.0f),
    new Vector3(2.0f, 2.0f, 2.0f),
    new Vector3(3.0f, 3.0f, 3.0f)
);
myBasis = myBasis.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

GD.Print(myBasis.X); // Prints (0, 0, 0)
GD.Print(myBasis.Y); // Prints (4, 4, 4)
GD.Print(myBasis.Z); // Prints (-6, -6, -6)

```

* * *

[Basis](#class-basis) **slerp**(to: [Basis](#class-basis), weight: [float](class_float.md#class-float)) const [🔗](#class-basis-method-slerp)

Performs a spherical-linear interpolation with the `to` basis, given a `weight`. Both this basis and `to` should represent a rotation.

**Example:** Smoothly rotate a [Node3D](class_node3d.md#class-node3d) to the target basis over time, with a [Tween](class_tween.md#class-tween):

```
var start_basis = Basis.IDENTITY
var target_basis = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

func _ready():
    create_tween().tween_method(interpolate, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

func interpolate(weight):
    basis = start_basis.slerp(target_basis, weight)

```

* * *

[float](class_float.md#class-float) **tdotx**(with: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-basis-method-tdotx)

Returns the transposed dot product between `with` and the [x](#class-basis-property-x) axis (see [transposed()](#class-basis-method-transposed)).

This is equivalent to `basis.x.dot(vector)`.

* * *

[float](class_float.md#class-float) **tdoty**(with: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-basis-method-tdoty)

Returns the transposed dot product between `with` and the [y](#class-basis-property-y) axis (see [transposed()](#class-basis-method-transposed)).

This is equivalent to `basis.y.dot(vector)`.

* * *

[float](class_float.md#class-float) **tdotz**(with: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-basis-method-tdotz)

Returns the transposed dot product between `with` and the [z](#class-basis-property-z) axis (see [transposed()](#class-basis-method-transposed)).

This is equivalent to `basis.z.dot(vector)`.

* * *

[Basis](#class-basis) **transposed**() const [🔗](#class-basis-method-transposed)

Returns the transposed version of this basis. This turns the basis matrix's columns into rows, and its rows into columns.

GDScriptC#

```
var my_basis = Basis(
    Vector3(1, 2, 3),
    Vector3(4, 5, 6),
    Vector3(7, 8, 9)
)
my_basis = my_basis.transposed()

print(my_basis.x) # Prints (1.0, 4.0, 7.0)
print(my_basis.y) # Prints (2.0, 5.0, 8.0)
print(my_basis.z) # Prints (3.0, 6.0, 9.0)

```

```
var myBasis = new Basis(
    new Vector3(1.0f, 2.0f, 3.0f),
    new Vector3(4.0f, 5.0f, 6.0f),
    new Vector3(7.0f, 8.0f, 9.0f)
);
myBasis = myBasis.Transposed();

GD.Print(myBasis.X); // Prints (1, 4, 7)
GD.Print(myBasis.Y); // Prints (2, 5, 8)
GD.Print(myBasis.Z); // Prints (3, 6, 9)

```

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Basis](#class-basis)) [🔗](#class-basis-operator-neq-basis)

Returns `true` if the components of both **Basis** matrices are not equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-basis-method-is-equal-approx) instead, which is more reliable.

* * *

[Basis](#class-basis) **operator \***(right: [Basis](#class-basis)) [🔗](#class-basis-operator-mul-basis)

Transforms (multiplies) the `right` basis by this basis.

This is the operation performed between parent and child [Node3D](class_node3d.md#class-node3d) s.

* * *

[Vector3](class_vector3.md#class-vector3) **operator \***(right: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-basis-operator-mul-vector3)

Transforms (multiplies) the `right` vector by this basis, returning a [Vector3](class_vector3.md#class-vector3).

GDScriptC#

```
# Basis that swaps the X/Z axes and doubles the scale.
var my_basis = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
print(my_basis * Vector3(1, 2, 3)) # Prints (4.0, 2.0, 6.0)

```

```
// Basis that swaps the X/Z axes and doubles the scale.
var myBasis = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
GD.Print(myBasis * new Vector3(1, 2, 3)); // Prints (4, 2, 6)

```

* * *

[Basis](#class-basis) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-basis-operator-mul-float)

Multiplies all components of the **Basis** by the given [float](class_float.md#class-float). This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.

* * *

[Basis](#class-basis) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-basis-operator-mul-int)

Multiplies all components of the **Basis** by the given [int](class_int.md#class-int). This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.

* * *

[Basis](#class-basis) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-basis-operator-div-float)

Divides all components of the **Basis** by the given [float](class_float.md#class-float). This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.

* * *

[Basis](#class-basis) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-basis-operator-div-int)

Divides all components of the **Basis** by the given [int](class_int.md#class-int). This affects the basis's scale uniformly, resizing all 3 axes by the `right` value.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Basis](#class-basis)) [🔗](#class-basis-operator-eq-basis)

Returns `true` if the components of both **Basis** matrices are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-basis-method-is-equal-approx) instead, which is more reliable.

* * *

[Vector3](class_vector3.md#class-vector3) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-basis-operator-idx-int)

Accesses each axis (column) of this basis by their index. Index `0` is the same as [x](#class-basis-property-x), index `1` is the same as [y](#class-basis-property-y), and index `2` is the same as [z](#class-basis-property-z).

**Note:** In C++, this operator accesses the rows of the basis matrix, _not_ the columns. For the same behavior as scripting languages, use the `set_column` and `get_column` methods.

[Previous](class_array.md "Array") [Next](class_bool.md "bool")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_array.md "Array") [Next](class_bool.md "bool")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).