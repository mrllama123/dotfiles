---
title: MultiMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multimesh.html
crawled_at: "2026-08-13T10:34:52+12:00"
content_hash: a9b92165ebc2a0a12d4d78ad87e06c6ce457329b0f63f220f65a40a81fd21415
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiMesh

* * *

# MultiMesh

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides high-performance drawing of a mesh multiple times using GPU instancing.

## Description

MultiMesh provides low-level mesh instancing. Drawing thousands of [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) nodes can be slow, since each object is submitted to the GPU then drawn individually.

MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead.

As a drawback, if the instances are too far away from each other, performance may be reduced as every single instance will always render (they are spatially indexed as one, for the whole object).

Since instances may have any behavior, the AABB used for visibility must be provided by the user.

**Note:** A MultiMesh is a single object, therefore the same maximum lights per object restriction applies. This means, that once the maximum lights are consumed by one or more instances, the rest of the MultiMesh instances will **not** receive any lighting.

**Note:** Blend Shapes will be ignored if used in a MultiMesh.

## Tutorials

- [Using MultiMeshInstance](../tutorials/3d/using_multi_mesh_instance.md)

- [Optimization using MultiMeshes](../tutorials/performance/using_multimesh.md)

- [Animating thousands of fish with MultiMeshInstance](../tutorials/performance/vertex_animation/animating_thousands_of_fish.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [buffer](#class-multimesh-property-buffer) | `PackedFloat32Array()` |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [color\_array](#class-multimesh-property-color-array) |  |
| [AABB](class_aabb.md#class-aabb) | [custom\_aabb](#class-multimesh-property-custom-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [custom\_data\_array](#class-multimesh-property-custom-data-array) |  |
| [int](class_int.md#class-int) | [instance\_count](#class-multimesh-property-instance-count) | `0` |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-multimesh-property-mesh) |  |
| [PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality) | [physics\_interpolation\_quality](#class-multimesh-property-physics-interpolation-quality) | `0` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [transform\_2d\_array](#class-multimesh-property-transform-2d-array) |  |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [transform\_array](#class-multimesh-property-transform-array) |  |
| [TransformFormat](#enum-multimesh-transformformat) | [transform\_format](#class-multimesh-property-transform-format) | `0` |
| [bool](class_bool.md#class-bool) | [use\_colors](#class-multimesh-property-use-colors) | `false` |
| [bool](class_bool.md#class-bool) | [use\_custom\_data](#class-multimesh-property-use-custom-data) | `false` |
| [int](class_int.md#class-int) | [visible\_instance\_count](#class-multimesh-property-visible-instance-count) | `-1` |

## Methods

|     |     |
| --- | --- |
| [AABB](class_aabb.md#class-aabb) | [get\_aabb](#class-multimesh-method-get-aabb)() const |
| [Color](class_color.md#class-color) | [get\_instance\_color](#class-multimesh-method-get-instance-color)(instance: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_instance\_custom\_data](#class-multimesh-method-get-instance-custom-data)(instance: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_instance\_transform](#class-multimesh-method-get-instance-transform)(instance: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_instance\_transform\_2d](#class-multimesh-method-get-instance-transform-2d)(instance: [int](class_int.md#class-int)) const |
| void | [reset\_instance\_physics\_interpolation](#class-multimesh-method-reset-instance-physics-interpolation)(instance: [int](class_int.md#class-int)) |
| void | [set\_buffer\_interpolated](#class-multimesh-method-set-buffer-interpolated)(buffer\_curr: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), buffer\_prev: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| void | [set\_instance\_color](#class-multimesh-method-set-instance-color)(instance: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_instance\_custom\_data](#class-multimesh-method-set-instance-custom-data)(instance: [int](class_int.md#class-int), custom\_data: [Color](class_color.md#class-color)) |
| void | [set\_instance\_transform](#class-multimesh-method-set-instance-transform)(instance: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [set\_instance\_transform\_2d](#class-multimesh-method-set-instance-transform-2d)(instance: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |

* * *

## Enumerations

enum **TransformFormat**: [🔗](#enum-multimesh-transformformat)

[TransformFormat](#enum-multimesh-transformformat) **TRANSFORM\_2D** = `0`

Use this when using 2D transforms.

[TransformFormat](#enum-multimesh-transformformat) **TRANSFORM\_3D** = `1`

Use this when using 3D transforms.

* * *

enum **PhysicsInterpolationQuality**: [🔗](#enum-multimesh-physicsinterpolationquality)

[PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality) **INTERP\_QUALITY\_FAST** = `0`

Always interpolate using Basis lerping, which can produce warping artifacts in some situations.

[PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality) **INTERP\_QUALITY\_HIGH** = `1`

Attempt to interpolate using Basis slerping (spherical linear interpolation) where possible, otherwise fall back to lerping.

* * *

## Property Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **buffer** = `PackedFloat32Array()` [🔗](#class-multimesh-property-buffer)

- void **set\_buffer**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_buffer**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **color\_array** [🔗](#class-multimesh-property-color-array)

**Deprecated:** Accessing this property is very slow. Use [set\_instance\_color()](#class-multimesh-method-set-instance-color) and [get\_instance\_color()](#class-multimesh-method-get-instance-color) instead.

Array containing each [Color](class_color.md#class-color) used by all instances of this mesh.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

[AABB](class_aabb.md#class-aabb) **custom\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-multimesh-property-custom-aabb)

- void **set\_custom\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_custom\_aabb**()


Custom AABB for this MultiMesh resource. Setting this manually prevents costly runtime AABB recalculations.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **custom\_data\_array** [🔗](#class-multimesh-property-custom-data-array)

**Deprecated:** Accessing this property is very slow. Use [set\_instance\_custom\_data()](#class-multimesh-method-set-instance-custom-data) and [get\_instance\_custom\_data()](#class-multimesh-method-get-instance-custom-data) instead.

Array containing each custom data value used by all instances of this mesh, as a [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

[int](class_int.md#class-int) **instance\_count** = `0` [🔗](#class-multimesh-property-instance-count)

- void **set\_instance\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_instance\_count**()


Number of instances that will get drawn. This clears and (re)sizes the buffers. Setting data format or flags afterwards will have no effect.

By default, all instances are drawn but you can limit this with [visible\_instance\_count](#class-multimesh-property-visible-instance-count).

* * *

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-multimesh-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


[Mesh](class_mesh.md#class-mesh) resource to be instanced.

The looks of the individual instances can be modified using [set\_instance\_color()](#class-multimesh-method-set-instance-color) and [set\_instance\_custom\_data()](#class-multimesh-method-set-instance-custom-data).

* * *

[PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality) **physics\_interpolation\_quality** = `0` [🔗](#class-multimesh-property-physics-interpolation-quality)

- void **set\_physics\_interpolation\_quality**(value: [PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality))

- [PhysicsInterpolationQuality](#enum-multimesh-physicsinterpolationquality) **get\_physics\_interpolation\_quality**()


Choose whether to use an interpolation method that favors speed or quality.

When using low physics tick rates (typically below 20) or high rates of object rotation, you may get better results from the high quality setting.

**Note:** Fast quality does not equate to low quality. Except in the special cases mentioned above, the quality should be comparable to high quality.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **transform\_2d\_array** [🔗](#class-multimesh-property-transform-2d-array)

**Deprecated:** Accessing this property is very slow. Use [set\_instance\_transform\_2d()](#class-multimesh-method-set-instance-transform-2d) and [get\_instance\_transform\_2d()](#class-multimesh-method-get-instance-transform-2d) instead.

Array containing each [Transform2D](class_transform2d.md#class-transform2d) value used by all instances of this mesh, as a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array). Each transform is divided into 3 [Vector2](class_vector2.md#class-vector2) values corresponding to the transforms' `x`, `y`, and `origin`.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **transform\_array** [🔗](#class-multimesh-property-transform-array)

**Deprecated:** Accessing this property is very slow. Use [set\_instance\_transform()](#class-multimesh-method-set-instance-transform) and [get\_instance\_transform()](#class-multimesh-method-get-instance-transform) instead.

Array containing each [Transform3D](class_transform3d.md#class-transform3d) value used by all instances of this mesh, as a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array). Each transform is divided into 4 [Vector3](class_vector3.md#class-vector3) values corresponding to the transforms' `x`, `y`, `z`, and `origin`.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

[TransformFormat](#enum-multimesh-transformformat) **transform\_format** = `0` [🔗](#class-multimesh-property-transform-format)

- void **set\_transform\_format**(value: [TransformFormat](#enum-multimesh-transformformat))

- [TransformFormat](#enum-multimesh-transformformat) **get\_transform\_format**()


Format of transform used to transform mesh, either 2D or 3D.

* * *

[bool](class_bool.md#class-bool) **use\_colors** = `false` [🔗](#class-multimesh-property-use-colors)

- void **set\_use\_colors**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_colors**()


If `true`, the **MultiMesh** will use color data (see [set\_instance\_color()](#class-multimesh-method-set-instance-color)). Can only be set when [instance\_count](#class-multimesh-property-instance-count) is `0` or less. This means that you need to call this method before setting the instance count, or temporarily reset it to `0`.

* * *

[bool](class_bool.md#class-bool) **use\_custom\_data** = `false` [🔗](#class-multimesh-property-use-custom-data)

- void **set\_use\_custom\_data**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_custom\_data**()


If `true`, the **MultiMesh** will use custom data (see [set\_instance\_custom\_data()](#class-multimesh-method-set-instance-custom-data)). Can only be set when [instance\_count](#class-multimesh-property-instance-count) is `0` or less. This means that you need to call this method before setting the instance count, or temporarily reset it to `0`.

* * *

[int](class_int.md#class-int) **visible\_instance\_count** = `-1` [🔗](#class-multimesh-property-visible-instance-count)

- void **set\_visible\_instance\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_visible\_instance\_count**()


Limits the number of instances drawn, -1 draws all instances. Changing this does not change the sizes of the buffers.

* * *

## Method Descriptions

[AABB](class_aabb.md#class-aabb) **get\_aabb**() const [🔗](#class-multimesh-method-get-aabb)

Returns the visibility axis-aligned bounding box in local space.

* * *

[Color](class_color.md#class-color) **get\_instance\_color**(instance: [int](class_int.md#class-int)) const [🔗](#class-multimesh-method-get-instance-color)

Gets a specific instance's color multiplier.

* * *

[Color](class_color.md#class-color) **get\_instance\_custom\_data**(instance: [int](class_int.md#class-int)) const [🔗](#class-multimesh-method-get-instance-custom-data)

Returns the custom data that has been set for a specific instance.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_instance\_transform**(instance: [int](class_int.md#class-int)) const [🔗](#class-multimesh-method-get-instance-transform)

Returns the [Transform3D](class_transform3d.md#class-transform3d) of a specific instance.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_instance\_transform\_2d**(instance: [int](class_int.md#class-int)) const [🔗](#class-multimesh-method-get-instance-transform-2d)

Returns the [Transform2D](class_transform2d.md#class-transform2d) of a specific instance.

* * *

void **reset\_instance\_physics\_interpolation**(instance: [int](class_int.md#class-int)) [🔗](#class-multimesh-method-reset-instance-physics-interpolation)

When using _physics interpolation_, this function allows you to prevent interpolation on an instance in the current physics tick.

This allows you to move instances instantaneously, and should usually be used when initially placing an instance such as a bullet to prevent graphical glitches.

* * *

void **set\_buffer\_interpolated**(buffer\_curr: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), buffer\_prev: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-multimesh-method-set-buffer-interpolated)

An alternative to setting the [buffer](#class-multimesh-property-buffer) property, which can be used with _physics interpolation_. This method takes two arrays, and can set the data for the current and previous tick in one go. The renderer will automatically interpolate the data at each frame.

This is useful for situations where the order of instances may change from physics tick to tick, such as particle systems.

When the order of instances is coherent, the simpler alternative of setting [buffer](#class-multimesh-property-buffer) can still be used with interpolation.

* * *

void **set\_instance\_color**(instance: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-multimesh-method-set-instance-color)

Sets the color of a specific instance by _multiplying_ the mesh's existing vertex colors. This allows for different color tinting per instance.

**Note:** Each component is stored in 32 bits in the Forward+ and Mobile rendering methods, but is packed into 16 bits in the Compatibility rendering method.

For the color to take effect, ensure that [use\_colors](#class-multimesh-property-use-colors) is `true` on the **MultiMesh** and [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) is `true` on the material. If you intend to set an absolute color instead of tinting, make sure the material's albedo color is set to pure white ( `Color(1, 1, 1)`).

* * *

void **set\_instance\_custom\_data**(instance: [int](class_int.md#class-int), custom\_data: [Color](class_color.md#class-color)) [🔗](#class-multimesh-method-set-instance-custom-data)

Sets custom data for a specific instance. `custom_data` is a [Color](class_color.md#class-color) type only to contain 4 floating-point numbers.

**Note:** Each number is stored in 32 bits in the Forward+ and Mobile rendering methods, but is packed into 16 bits in the Compatibility rendering method.

For the custom data to be used, ensure that [use\_custom\_data](#class-multimesh-property-use-custom-data) is `true`.

This custom instance data has to be manually accessed in your custom shader using `INSTANCE_CUSTOM`.

* * *

void **set\_instance\_transform**(instance: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-multimesh-method-set-instance-transform)

Sets the [Transform3D](class_transform3d.md#class-transform3d) for a specific instance.

* * *

void **set\_instance\_transform\_2d**(instance: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-multimesh-method-set-instance-transform-2d)

Sets the [Transform2D](class_transform2d.md#class-transform2d) for a specific instance.

[Previous](class_missingresource.md "MissingResource") [Next](class_navigationmesh.md "NavigationMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_missingresource.md "MissingResource") [Next](class_navigationmesh.md "NavigationMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).