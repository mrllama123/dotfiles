---
title: CPUParticles3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cpuparticles3d.html
crawled_at: "2026-08-13T10:38:51+12:00"
content_hash: c7cb5cde4b4ee3c623a870f90c59a3052dc755954a13f33d40426841bc76cf85
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CPUParticles3D

* * *

# CPUParticles3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CPU-based 3D particle emitter.

## Description

CPU-based 3D particle node used to create a variety of particle systems and effects.

See also [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), which provides the same functionality with hardware acceleration, but may not run on older devices.

## Tutorials

- [Particle systems (3D)](../tutorials/3d/particles/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [amount](#class-cpuparticles3d-property-amount) | `8` |
| [Curve](class_curve.md#class-curve) | [angle\_curve](#class-cpuparticles3d-property-angle-curve) |  |
| [float](class_float.md#class-float) | [angle\_max](#class-cpuparticles3d-property-angle-max) | `0.0` |
| [float](class_float.md#class-float) | [angle\_min](#class-cpuparticles3d-property-angle-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [angular\_velocity\_curve](#class-cpuparticles3d-property-angular-velocity-curve) |  |
| [float](class_float.md#class-float) | [angular\_velocity\_max](#class-cpuparticles3d-property-angular-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [angular\_velocity\_min](#class-cpuparticles3d-property-angular-velocity-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [anim\_offset\_curve](#class-cpuparticles3d-property-anim-offset-curve) |  |
| [float](class_float.md#class-float) | [anim\_offset\_max](#class-cpuparticles3d-property-anim-offset-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_offset\_min](#class-cpuparticles3d-property-anim-offset-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [anim\_speed\_curve](#class-cpuparticles3d-property-anim-speed-curve) |  |
| [float](class_float.md#class-float) | [anim\_speed\_max](#class-cpuparticles3d-property-anim-speed-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_speed\_min](#class-cpuparticles3d-property-anim-speed-min) | `0.0` |
| [Color](class_color.md#class-color) | [color](#class-cpuparticles3d-property-color) | `Color(1, 1, 1, 1)` |
| [Gradient](class_gradient.md#class-gradient) | [color\_initial\_ramp](#class-cpuparticles3d-property-color-initial-ramp) |  |
| [Gradient](class_gradient.md#class-gradient) | [color\_ramp](#class-cpuparticles3d-property-color-ramp) |  |
| [Curve](class_curve.md#class-curve) | [damping\_curve](#class-cpuparticles3d-property-damping-curve) |  |
| [float](class_float.md#class-float) | [damping\_max](#class-cpuparticles3d-property-damping-max) | `0.0` |
| [float](class_float.md#class-float) | [damping\_min](#class-cpuparticles3d-property-damping-min) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [direction](#class-cpuparticles3d-property-direction) | `Vector3(1, 0, 0)` |
| [DrawOrder](#enum-cpuparticles3d-draworder) | [draw\_order](#class-cpuparticles3d-property-draw-order) | `0` |
| [Vector3](class_vector3.md#class-vector3) | [emission\_box\_extents](#class-cpuparticles3d-property-emission-box-extents) |  |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [emission\_colors](#class-cpuparticles3d-property-emission-colors) | `PackedColorArray()` |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [emission\_normals](#class-cpuparticles3d-property-emission-normals) |  |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [emission\_points](#class-cpuparticles3d-property-emission-points) |  |
| [Vector3](class_vector3.md#class-vector3) | [emission\_ring\_axis](#class-cpuparticles3d-property-emission-ring-axis) |  |
| [float](class_float.md#class-float) | [emission\_ring\_cone\_angle](#class-cpuparticles3d-property-emission-ring-cone-angle) |  |
| [float](class_float.md#class-float) | [emission\_ring\_height](#class-cpuparticles3d-property-emission-ring-height) |  |
| [float](class_float.md#class-float) | [emission\_ring\_inner\_radius](#class-cpuparticles3d-property-emission-ring-inner-radius) |  |
| [float](class_float.md#class-float) | [emission\_ring\_radius](#class-cpuparticles3d-property-emission-ring-radius) |  |
| [EmissionShape](#enum-cpuparticles3d-emissionshape) | [emission\_shape](#class-cpuparticles3d-property-emission-shape) | `0` |
| [float](class_float.md#class-float) | [emission\_sphere\_radius](#class-cpuparticles3d-property-emission-sphere-radius) |  |
| [bool](class_bool.md#class-bool) | [emitting](#class-cpuparticles3d-property-emitting) | `true` |
| [float](class_float.md#class-float) | [explosiveness](#class-cpuparticles3d-property-explosiveness) | `0.0` |
| [int](class_int.md#class-int) | [fixed\_fps](#class-cpuparticles3d-property-fixed-fps) | `0` |
| [float](class_float.md#class-float) | [flatness](#class-cpuparticles3d-property-flatness) | `0.0` |
| [bool](class_bool.md#class-bool) | [fract\_delta](#class-cpuparticles3d-property-fract-delta) | `true` |
| [Vector3](class_vector3.md#class-vector3) | [gravity](#class-cpuparticles3d-property-gravity) | `Vector3(0, -9.8, 0)` |
| [Curve](class_curve.md#class-curve) | [hue\_variation\_curve](#class-cpuparticles3d-property-hue-variation-curve) |  |
| [float](class_float.md#class-float) | [hue\_variation\_max](#class-cpuparticles3d-property-hue-variation-max) | `0.0` |
| [float](class_float.md#class-float) | [hue\_variation\_min](#class-cpuparticles3d-property-hue-variation-min) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_max](#class-cpuparticles3d-property-initial-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_min](#class-cpuparticles3d-property-initial-velocity-min) | `0.0` |
| [float](class_float.md#class-float) | [lifetime](#class-cpuparticles3d-property-lifetime) | `1.0` |
| [float](class_float.md#class-float) | [lifetime\_randomness](#class-cpuparticles3d-property-lifetime-randomness) | `0.0` |
| [Curve](class_curve.md#class-curve) | [linear\_accel\_curve](#class-cpuparticles3d-property-linear-accel-curve) |  |
| [float](class_float.md#class-float) | [linear\_accel\_max](#class-cpuparticles3d-property-linear-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [linear\_accel\_min](#class-cpuparticles3d-property-linear-accel-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [local\_coords](#class-cpuparticles3d-property-local-coords) | `false` |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-cpuparticles3d-property-mesh) |  |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-cpuparticles3d-property-one-shot) | `false` |
| [Curve](class_curve.md#class-curve) | [orbit\_velocity\_curve](#class-cpuparticles3d-property-orbit-velocity-curve) |  |
| [float](class_float.md#class-float) | [orbit\_velocity\_max](#class-cpuparticles3d-property-orbit-velocity-max) |  |
| [float](class_float.md#class-float) | [orbit\_velocity\_min](#class-cpuparticles3d-property-orbit-velocity-min) |  |
| [bool](class_bool.md#class-bool) | [particle\_flag\_align\_y](#class-cpuparticles3d-property-particle-flag-align-y) | `false` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_disable\_z](#class-cpuparticles3d-property-particle-flag-disable-z) | `false` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_rotate\_y](#class-cpuparticles3d-property-particle-flag-rotate-y) | `false` |
| [float](class_float.md#class-float) | [preprocess](#class-cpuparticles3d-property-preprocess) | `0.0` |
| [Curve](class_curve.md#class-curve) | [radial\_accel\_curve](#class-cpuparticles3d-property-radial-accel-curve) |  |
| [float](class_float.md#class-float) | [radial\_accel\_max](#class-cpuparticles3d-property-radial-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [radial\_accel\_min](#class-cpuparticles3d-property-radial-accel-min) | `0.0` |
| [float](class_float.md#class-float) | [randomness](#class-cpuparticles3d-property-randomness) | `0.0` |
| [Curve](class_curve.md#class-curve) | [scale\_amount\_curve](#class-cpuparticles3d-property-scale-amount-curve) |  |
| [float](class_float.md#class-float) | [scale\_amount\_max](#class-cpuparticles3d-property-scale-amount-max) | `1.0` |
| [float](class_float.md#class-float) | [scale\_amount\_min](#class-cpuparticles3d-property-scale-amount-min) | `1.0` |
| [Curve](class_curve.md#class-curve) | [scale\_curve\_x](#class-cpuparticles3d-property-scale-curve-x) |  |
| [Curve](class_curve.md#class-curve) | [scale\_curve\_y](#class-cpuparticles3d-property-scale-curve-y) |  |
| [Curve](class_curve.md#class-curve) | [scale\_curve\_z](#class-cpuparticles3d-property-scale-curve-z) |  |
| [int](class_int.md#class-int) | [seed](#class-cpuparticles3d-property-seed) | `0` |
| [float](class_float.md#class-float) | [speed\_scale](#class-cpuparticles3d-property-speed-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [split\_scale](#class-cpuparticles3d-property-split-scale) | `false` |
| [float](class_float.md#class-float) | [spread](#class-cpuparticles3d-property-spread) | `45.0` |
| [Curve](class_curve.md#class-curve) | [tangential\_accel\_curve](#class-cpuparticles3d-property-tangential-accel-curve) |  |
| [float](class_float.md#class-float) | [tangential\_accel\_max](#class-cpuparticles3d-property-tangential-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [tangential\_accel\_min](#class-cpuparticles3d-property-tangential-accel-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [use\_fixed\_seed](#class-cpuparticles3d-property-use-fixed-seed) | `false` |
| [AABB](class_aabb.md#class-aabb) | [visibility\_aabb](#class-cpuparticles3d-property-visibility-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| [AABB](class_aabb.md#class-aabb) | [capture\_aabb](#class-cpuparticles3d-method-capture-aabb)() const |
| void | [convert\_from\_particles](#class-cpuparticles3d-method-convert-from-particles)(particles: [Node](class_node.md#class-node)) |
| [Curve](class_curve.md#class-curve) | [get\_param\_curve](#class-cpuparticles3d-method-get-param-curve)(param: [Parameter](#enum-cpuparticles3d-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_max](#class-cpuparticles3d-method-get-param-max)(param: [Parameter](#enum-cpuparticles3d-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_min](#class-cpuparticles3d-method-get-param-min)(param: [Parameter](#enum-cpuparticles3d-parameter)) const |
| [bool](class_bool.md#class-bool) | [get\_particle\_flag](#class-cpuparticles3d-method-get-particle-flag)(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags)) const |
| void | [request\_particles\_process](#class-cpuparticles3d-method-request-particles-process)(process\_time: [float](class_float.md#class-float)) |
| void | [restart](#class-cpuparticles3d-method-restart)(keep\_seed: [bool](class_bool.md#class-bool) = false) |
| void | [set\_param\_curve](#class-cpuparticles3d-method-set-param-curve)(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve)) |
| void | [set\_param\_max](#class-cpuparticles3d-method-set-param-max)(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_param\_min](#class-cpuparticles3d-method-set-param-min)(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_particle\_flag](#class-cpuparticles3d-method-set-particle-flag)(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags), enable: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**finished**() [🔗](#class-cpuparticles3d-signal-finished)

Emitted when all active particles have finished processing. When [one\_shot](#class-cpuparticles3d-property-one-shot) is disabled, particles will process continuously, so this is never emitted.

* * *

## Enumerations

enum **DrawOrder**: [🔗](#enum-cpuparticles3d-draworder)

[DrawOrder](#enum-cpuparticles3d-draworder) **DRAW\_ORDER\_INDEX** = `0`

Particles are drawn in the order emitted.

[DrawOrder](#enum-cpuparticles3d-draworder) **DRAW\_ORDER\_LIFETIME** = `1`

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

[DrawOrder](#enum-cpuparticles3d-draworder) **DRAW\_ORDER\_VIEW\_DEPTH** = `2`

Particles are drawn in order of depth.

* * *

enum **Parameter**: [🔗](#enum-cpuparticles3d-parameter)

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_INITIAL\_LINEAR\_VELOCITY** = `0`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set initial velocity properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_ANGULAR\_VELOCITY** = `1`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set angular velocity properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_ORBIT\_VELOCITY** = `2`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set orbital velocity properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_LINEAR\_ACCEL** = `3`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set linear acceleration properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_RADIAL\_ACCEL** = `4`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set radial acceleration properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_TANGENTIAL\_ACCEL** = `5`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set tangential acceleration properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_DAMPING** = `6`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set damping properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_ANGLE** = `7`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set angle properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_SCALE** = `8`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set scale properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_HUE\_VARIATION** = `9`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set hue variation properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_ANIM\_SPEED** = `10`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set animation speed properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_ANIM\_OFFSET** = `11`

Use with [set\_param\_min()](#class-cpuparticles3d-method-set-param-min), [set\_param\_max()](#class-cpuparticles3d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles3d-method-set-param-curve) to set animation offset properties.

[Parameter](#enum-cpuparticles3d-parameter) **PARAM\_MAX** = `12`

Represents the size of the [Parameter](#enum-cpuparticles3d-parameter) enum.

* * *

enum **ParticleFlags**: [🔗](#enum-cpuparticles3d-particleflags)

[ParticleFlags](#enum-cpuparticles3d-particleflags) **PARTICLE\_FLAG\_ALIGN\_Y\_TO\_VELOCITY** = `0`

Use with [set\_particle\_flag()](#class-cpuparticles3d-method-set-particle-flag) to set [particle\_flag\_align\_y](#class-cpuparticles3d-property-particle-flag-align-y).

[ParticleFlags](#enum-cpuparticles3d-particleflags) **PARTICLE\_FLAG\_ROTATE\_Y** = `1`

Use with [set\_particle\_flag()](#class-cpuparticles3d-method-set-particle-flag) to set [particle\_flag\_rotate\_y](#class-cpuparticles3d-property-particle-flag-rotate-y).

[ParticleFlags](#enum-cpuparticles3d-particleflags) **PARTICLE\_FLAG\_DISABLE\_Z** = `2`

Use with [set\_particle\_flag()](#class-cpuparticles3d-method-set-particle-flag) to set [particle\_flag\_disable\_z](#class-cpuparticles3d-property-particle-flag-disable-z).

[ParticleFlags](#enum-cpuparticles3d-particleflags) **PARTICLE\_FLAG\_MAX** = `3`

Represents the size of the [ParticleFlags](#enum-cpuparticles3d-particleflags) enum.

* * *

enum **EmissionShape**: [🔗](#enum-cpuparticles3d-emissionshape)

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_POINT** = `0`

All particles will be emitted from a single point.

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_SPHERE** = `1`

Particles will be emitted in the volume of a sphere.

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_SPHERE\_SURFACE** = `2`

Particles will be emitted on the surface of a sphere.

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_BOX** = `3`

Particles will be emitted in the volume of a box.

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_POINTS** = `4`

Particles will be emitted at a position chosen randomly among [emission\_points](#class-cpuparticles3d-property-emission-points). Particle color will be modulated by [emission\_colors](#class-cpuparticles3d-property-emission-colors).

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_DIRECTED\_POINTS** = `5`

Particles will be emitted at a position chosen randomly among [emission\_points](#class-cpuparticles3d-property-emission-points). Particle velocity and rotation will be set based on [emission\_normals](#class-cpuparticles3d-property-emission-normals). Particle color will be modulated by [emission\_colors](#class-cpuparticles3d-property-emission-colors).

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_RING** = `6`

Particles will be emitted in a ring or cylinder.

[EmissionShape](#enum-cpuparticles3d-emissionshape) **EMISSION\_SHAPE\_MAX** = `7`

Represents the size of the [EmissionShape](#enum-cpuparticles3d-emissionshape) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **amount** = `8` [🔗](#class-cpuparticles3d-property-amount)

- void **set\_amount**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_amount**()


Number of particles emitted in one emission cycle.

* * *

[Curve](class_curve.md#class-curve) **angle\_curve** [🔗](#class-cpuparticles3d-property-angle-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's rotation will be animated along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **angle\_max** = `0.0` [🔗](#class-cpuparticles3d-property-angle-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum angle.

* * *

[float](class_float.md#class-float) **angle\_min** = `0.0` [🔗](#class-cpuparticles3d-property-angle-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum angle.

* * *

[Curve](class_curve.md#class-curve) **angular\_velocity\_curve** [🔗](#class-cpuparticles3d-property-angular-velocity-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's angular velocity (rotation speed) will vary along this [Curve](class_curve.md#class-curve) over its lifetime. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **angular\_velocity\_max** = `0.0` [🔗](#class-cpuparticles3d-property-angular-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.

* * *

[float](class_float.md#class-float) **angular\_velocity\_min** = `0.0` [🔗](#class-cpuparticles3d-property-angular-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.

* * *

[Curve](class_curve.md#class-curve) **anim\_offset\_curve** [🔗](#class-cpuparticles3d-property-anim-offset-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's animation offset will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **anim\_offset\_max** = `0.0` [🔗](#class-cpuparticles3d-property-anim-offset-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum animation offset.

* * *

[float](class_float.md#class-float) **anim\_offset\_min** = `0.0` [🔗](#class-cpuparticles3d-property-anim-offset-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum animation offset.

* * *

[Curve](class_curve.md#class-curve) **anim\_speed\_curve** [🔗](#class-cpuparticles3d-property-anim-speed-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's animation speed will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **anim\_speed\_max** = `0.0` [🔗](#class-cpuparticles3d-property-anim-speed-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum particle animation speed.

* * *

[float](class_float.md#class-float) **anim\_speed\_min** = `0.0` [🔗](#class-cpuparticles3d-property-anim-speed-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum particle animation speed.

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-cpuparticles3d-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


Each particle's initial color.

**Note:** [color](#class-cpuparticles3d-property-color) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color](#class-cpuparticles3d-property-color) will have no visible effect.

* * *

[Gradient](class_gradient.md#class-gradient) **color\_initial\_ramp** [🔗](#class-cpuparticles3d-property-color-initial-ramp)

- void **set\_color\_initial\_ramp**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_color\_initial\_ramp**()


Each particle's initial color will vary along this [Gradient](class_gradient.md#class-gradient) (multiplied with [color](#class-cpuparticles3d-property-color)).

**Note:** [color\_initial\_ramp](#class-cpuparticles3d-property-color-initial-ramp) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color\_initial\_ramp](#class-cpuparticles3d-property-color-initial-ramp) will have no visible effect.

* * *

[Gradient](class_gradient.md#class-gradient) **color\_ramp** [🔗](#class-cpuparticles3d-property-color-ramp)

- void **set\_color\_ramp**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_color\_ramp**()


Each particle's color will vary along this [Gradient](class_gradient.md#class-gradient) over its lifetime (multiplied with [color](#class-cpuparticles3d-property-color)).

**Note:** [color\_ramp](#class-cpuparticles3d-property-color-ramp) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color\_ramp](#class-cpuparticles3d-property-color-ramp) will have no visible effect.

* * *

[Curve](class_curve.md#class-curve) **damping\_curve** [🔗](#class-cpuparticles3d-property-damping-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Damping will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **damping\_max** = `0.0` [🔗](#class-cpuparticles3d-property-damping-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum damping.

* * *

[float](class_float.md#class-float) **damping\_min** = `0.0` [🔗](#class-cpuparticles3d-property-damping-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum damping.

* * *

[Vector3](class_vector3.md#class-vector3) **direction** = `Vector3(1, 0, 0)` [🔗](#class-cpuparticles3d-property-direction)

- void **set\_direction**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_direction**()


Unit vector specifying the particles' emission direction.

* * *

[DrawOrder](#enum-cpuparticles3d-draworder) **draw\_order** = `0` [🔗](#class-cpuparticles3d-property-draw-order)

- void **set\_draw\_order**(value: [DrawOrder](#enum-cpuparticles3d-draworder))

- [DrawOrder](#enum-cpuparticles3d-draworder) **get\_draw\_order**()


Particle draw order.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_box\_extents** [🔗](#class-cpuparticles3d-property-emission-box-extents)

- void **set\_emission\_box\_extents**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_box\_extents**()


The rectangle's extents if [emission\_shape](#class-cpuparticles3d-property-emission-shape) is set to [EMISSION\_SHAPE\_BOX](#class-cpuparticles3d-constant-emission-shape-box).

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **emission\_colors** = `PackedColorArray()` [🔗](#class-cpuparticles3d-property-emission-colors)

- void **set\_emission\_colors**(value: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray))

- [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_emission\_colors**()


Sets the [Color](class_color.md#class-color) s to modulate particles by when using [EMISSION\_SHAPE\_POINTS](#class-cpuparticles3d-constant-emission-shape-points) or [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles3d-constant-emission-shape-directed-points).

**Note:** [emission\_colors](#class-cpuparticles3d-property-emission-colors) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [emission\_colors](#class-cpuparticles3d-property-emission-colors) will have no visible effect.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **emission\_normals** [🔗](#class-cpuparticles3d-property-emission-normals)

- void **set\_emission\_normals**(value: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array))

- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_emission\_normals**()


Sets the direction the particles will be emitted in when using [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles3d-constant-emission-shape-directed-points).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **emission\_points** [🔗](#class-cpuparticles3d-property-emission-points)

- void **set\_emission\_points**(value: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array))

- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_emission\_points**()


Sets the initial positions to spawn particles when using [EMISSION\_SHAPE\_POINTS](#class-cpuparticles3d-constant-emission-shape-points) or [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles3d-constant-emission-shape-directed-points).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_ring\_axis** [🔗](#class-cpuparticles3d-property-emission-ring-axis)

- void **set\_emission\_ring\_axis**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_ring\_axis**()


The axis of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-cpuparticles3d-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_cone\_angle** [🔗](#class-cpuparticles3d-property-emission-ring-cone-angle)

- void **set\_emission\_ring\_cone\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_cone\_angle**()


The angle of the cone when using the emitter [EMISSION\_SHAPE\_RING](#class-cpuparticles3d-constant-emission-shape-ring). The default angle of 90 degrees results in a ring, while an angle of 0 degrees results in a cone. Intermediate values will result in a ring where one end is larger than the other.

**Note:** Depending on [emission\_ring\_height](#class-cpuparticles3d-property-emission-ring-height), the angle may be clamped if the ring's end is reached to form a perfect cone.

* * *

[float](class_float.md#class-float) **emission\_ring\_height** [🔗](#class-cpuparticles3d-property-emission-ring-height)

- void **set\_emission\_ring\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_height**()


The height of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-cpuparticles3d-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_inner\_radius** [🔗](#class-cpuparticles3d-property-emission-ring-inner-radius)

- void **set\_emission\_ring\_inner\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_inner\_radius**()


The inner radius of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-cpuparticles3d-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_radius** [🔗](#class-cpuparticles3d-property-emission-ring-radius)

- void **set\_emission\_ring\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_radius**()


The radius of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-cpuparticles3d-constant-emission-shape-ring).

* * *

[EmissionShape](#enum-cpuparticles3d-emissionshape) **emission\_shape** = `0` [🔗](#class-cpuparticles3d-property-emission-shape)

- void **set\_emission\_shape**(value: [EmissionShape](#enum-cpuparticles3d-emissionshape))

- [EmissionShape](#enum-cpuparticles3d-emissionshape) **get\_emission\_shape**()


Particles will be emitted inside this region.

* * *

[float](class_float.md#class-float) **emission\_sphere\_radius** [🔗](#class-cpuparticles3d-property-emission-sphere-radius)

- void **set\_emission\_sphere\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_sphere\_radius**()


The sphere's radius if [EmissionShape](#enum-cpuparticles3d-emissionshape) is set to [EMISSION\_SHAPE\_SPHERE](#class-cpuparticles3d-constant-emission-shape-sphere).

* * *

[bool](class_bool.md#class-bool) **emitting** = `true` [🔗](#class-cpuparticles3d-property-emitting)

- void **set\_emitting**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emitting**()


If `true`, particles are being emitted. [emitting](#class-cpuparticles3d-property-emitting) can be used to start and stop particles from emitting. However, if [one\_shot](#class-cpuparticles3d-property-one-shot) is `true` setting [emitting](#class-cpuparticles3d-property-emitting) to `true` will not restart the emission cycle until after all active particles finish processing. You can use the [finished](#class-cpuparticles3d-signal-finished) signal to be notified once all active particles finish processing.

* * *

[float](class_float.md#class-float) **explosiveness** = `0.0` [🔗](#class-cpuparticles3d-property-explosiveness)

- void **set\_explosiveness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_explosiveness\_ratio**()


How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.

* * *

[int](class_int.md#class-int) **fixed\_fps** = `0` [🔗](#class-cpuparticles3d-property-fixed-fps)

- void **set\_fixed\_fps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_fps**()


The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the particle system itself.

* * *

[float](class_float.md#class-float) **flatness** = `0.0` [🔗](#class-cpuparticles3d-property-flatness)

- void **set\_flatness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_flatness**()


Amount of [spread](#class-cpuparticles3d-property-spread) in Y/Z plane. A value of `1` restricts particles to X/Z plane.

* * *

[bool](class_bool.md#class-bool) **fract\_delta** = `true` [🔗](#class-cpuparticles3d-property-fract-delta)

- void **set\_fractional\_delta**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_fractional\_delta**()


If `true`, results in fractional delta calculation which has a smoother particles display effect.

* * *

[Vector3](class_vector3.md#class-vector3) **gravity** = `Vector3(0, -9.8, 0)` [🔗](#class-cpuparticles3d-property-gravity)

- void **set\_gravity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_gravity**()


Gravity applied to every particle.

* * *

[Curve](class_curve.md#class-curve) **hue\_variation\_curve** [🔗](#class-cpuparticles3d-property-hue-variation-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's hue will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **hue\_variation\_max** = `0.0` [🔗](#class-cpuparticles3d-property-hue-variation-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum hue variation.

* * *

[float](class_float.md#class-float) **hue\_variation\_min** = `0.0` [🔗](#class-cpuparticles3d-property-hue-variation-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum hue variation.

* * *

[float](class_float.md#class-float) **initial\_velocity\_max** = `0.0` [🔗](#class-cpuparticles3d-property-initial-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum value of the initial velocity.

* * *

[float](class_float.md#class-float) **initial\_velocity\_min** = `0.0` [🔗](#class-cpuparticles3d-property-initial-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum value of the initial velocity.

* * *

[float](class_float.md#class-float) **lifetime** = `1.0` [🔗](#class-cpuparticles3d-property-lifetime)

- void **set\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime**()


Amount of time each particle will exist.

* * *

[float](class_float.md#class-float) **lifetime\_randomness** = `0.0` [🔗](#class-cpuparticles3d-property-lifetime-randomness)

- void **set\_lifetime\_randomness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime\_randomness**()


Particle lifetime randomness ratio.

* * *

[Curve](class_curve.md#class-curve) **linear\_accel\_curve** [🔗](#class-cpuparticles3d-property-linear-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's linear acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **linear\_accel\_max** = `0.0` [🔗](#class-cpuparticles3d-property-linear-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum linear acceleration.

* * *

[float](class_float.md#class-float) **linear\_accel\_min** = `0.0` [🔗](#class-cpuparticles3d-property-linear-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum linear acceleration.

* * *

[bool](class_bool.md#class-bool) **local\_coords** = `false` [🔗](#class-cpuparticles3d-property-local-coords)

- void **set\_use\_local\_coordinates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_local\_coordinates**()


If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the **CPUParticles3D** node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the **CPUParticles3D** node (and its parents) when it is moved or rotated.

* * *

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-cpuparticles3d-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


The [Mesh](class_mesh.md#class-mesh) used for each particle. If `null`, particles will be spheres.

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-cpuparticles3d-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_one\_shot**()


If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.

* * *

[Curve](class_curve.md#class-curve) **orbit\_velocity\_curve** [🔗](#class-cpuparticles3d-property-orbit-velocity-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's orbital velocity will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **orbit\_velocity\_max** [🔗](#class-cpuparticles3d-property-orbit-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum orbit velocity.

* * *

[float](class_float.md#class-float) **orbit\_velocity\_min** [🔗](#class-cpuparticles3d-property-orbit-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum orbit velocity.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_align\_y** = `false` [🔗](#class-cpuparticles3d-property-particle-flag-align-y)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags)) const


Align Y axis of particle with the direction of its velocity.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_disable\_z** = `false` [🔗](#class-cpuparticles3d-property-particle-flag-disable-z)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags)) const


If `true`, particles will not move on the Z axis.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_rotate\_y** = `false` [🔗](#class-cpuparticles3d-property-particle-flag-rotate-y)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags)) const


If `true`, particles rotate around Y axis by [angle\_min](#class-cpuparticles3d-property-angle-min).

* * *

[float](class_float.md#class-float) **preprocess** = `0.0` [🔗](#class-cpuparticles3d-property-preprocess)

- void **set\_pre\_process\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_process\_time**()


Particle system starts as if it had already run for this many seconds.

* * *

[Curve](class_curve.md#class-curve) **radial\_accel\_curve** [🔗](#class-cpuparticles3d-property-radial-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's radial acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **radial\_accel\_max** = `0.0` [🔗](#class-cpuparticles3d-property-radial-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum radial acceleration.

* * *

[float](class_float.md#class-float) **radial\_accel\_min** = `0.0` [🔗](#class-cpuparticles3d-property-radial-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum radial acceleration.

* * *

[float](class_float.md#class-float) **randomness** = `0.0` [🔗](#class-cpuparticles3d-property-randomness)

- void **set\_randomness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_randomness\_ratio**()


Emission lifetime randomness ratio.

* * *

[Curve](class_curve.md#class-curve) **scale\_amount\_curve** [🔗](#class-cpuparticles3d-property-scale-amount-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's scale will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **scale\_amount\_max** = `1.0` [🔗](#class-cpuparticles3d-property-scale-amount-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum scale.

* * *

[float](class_float.md#class-float) **scale\_amount\_min** = `1.0` [🔗](#class-cpuparticles3d-property-scale-amount-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum scale.

* * *

[Curve](class_curve.md#class-curve) **scale\_curve\_x** [🔗](#class-cpuparticles3d-property-scale-curve-x)

- void **set\_scale\_curve\_x**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_scale\_curve\_x**()


Curve for the scale over life, along the x axis.

* * *

[Curve](class_curve.md#class-curve) **scale\_curve\_y** [🔗](#class-cpuparticles3d-property-scale-curve-y)

- void **set\_scale\_curve\_y**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_scale\_curve\_y**()


Curve for the scale over life, along the y axis.

* * *

[Curve](class_curve.md#class-curve) **scale\_curve\_z** [🔗](#class-cpuparticles3d-property-scale-curve-z)

- void **set\_scale\_curve\_z**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_scale\_curve\_z**()


Curve for the scale over life, along the z axis.

* * *

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-cpuparticles3d-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


Sets the random seed used by the particle system. Only effective if [use\_fixed\_seed](#class-cpuparticles3d-property-use-fixed-seed) is `true`.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-cpuparticles3d-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.

* * *

[bool](class_bool.md#class-bool) **split\_scale** = `false` [🔗](#class-cpuparticles3d-property-split-scale)

- void **set\_split\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_split\_scale**()


If set to `true`, three different scale curves can be specified, one per scale axis.

* * *

[float](class_float.md#class-float) **spread** = `45.0` [🔗](#class-cpuparticles3d-property-spread)

- void **set\_spread**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_spread**()


Each particle's initial direction range from `+spread` to `-spread` degrees. Applied to X/Z plane and Y/Z planes.

* * *

[Curve](class_curve.md#class-curve) **tangential\_accel\_curve** [🔗](#class-cpuparticles3d-property-tangential-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Each particle's tangential acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **tangential\_accel\_max** = `0.0` [🔗](#class-cpuparticles3d-property-tangential-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Maximum tangent acceleration.

* * *

[float](class_float.md#class-float) **tangential\_accel\_min** = `0.0` [🔗](#class-cpuparticles3d-property-tangential-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const


Minimum tangent acceleration.

* * *

[bool](class_bool.md#class-bool) **use\_fixed\_seed** = `false` [🔗](#class-cpuparticles3d-property-use-fixed-seed)

- void **set\_use\_fixed\_seed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_fixed\_seed**()


If `true`, particles will use the same seed for every simulation using the seed defined in [seed](#class-cpuparticles3d-property-seed). This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

* * *

[AABB](class_aabb.md#class-aabb) **visibility\_aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-cpuparticles3d-property-visibility-aabb)

- void **set\_visibility\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_visibility\_aabb**()


The [AABB](class_aabb.md#class-aabb) that determines the node's region which needs to be visible on screen for the particle system to be active.

Grow the box if particles suddenly appear/disappear when the node enters/exits the screen. The [AABB](class_aabb.md#class-aabb) can be grown via code or with the **Particles → Generate AABB** editor tool.

* * *

## Method Descriptions

[AABB](class_aabb.md#class-aabb) **capture\_aabb**() const [🔗](#class-cpuparticles3d-method-capture-aabb)

Returns the axis-aligned bounding box that contains all the particles that are active in the current frame.

* * *

void **convert\_from\_particles**(particles: [Node](class_node.md#class-node)) [🔗](#class-cpuparticles3d-method-convert-from-particles)

Sets this node's properties to match a given [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) node with an assigned [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial).

* * *

[Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter)) const [🔗](#class-cpuparticles3d-method-get-param-curve)

Returns the [Curve](class_curve.md#class-curve) of the parameter specified by [Parameter](#enum-cpuparticles3d-parameter).

* * *

[float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter)) const [🔗](#class-cpuparticles3d-method-get-param-max)

Returns the maximum value range for the given parameter.

* * *

[float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter)) const [🔗](#class-cpuparticles3d-method-get-param-min)

Returns the minimum value range for the given parameter.

* * *

[bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags)) const [🔗](#class-cpuparticles3d-method-get-particle-flag)

Returns the enabled state of the given particle flag.

* * *

void **request\_particles\_process**(process\_time: [float](class_float.md#class-float)) [🔗](#class-cpuparticles3d-method-request-particles-process)

Requests the particles to process for extra process time during a single frame.

Useful for particle playback, if used in combination with [use\_fixed\_seed](#class-cpuparticles3d-property-use-fixed-seed) or by calling [restart()](#class-cpuparticles3d-method-restart) with parameter `keep_seed` set to `true`.

* * *

void **restart**(keep\_seed: [bool](class_bool.md#class-bool) = false) [🔗](#class-cpuparticles3d-method-restart)

Restarts the particle emitter.

If `keep_seed` is `true`, the current random seed will be preserved. Useful for seeking and playback.

* * *

void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles3d-parameter), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-cpuparticles3d-method-set-param-curve)

Sets the [Curve](class_curve.md#class-curve) of the parameter specified by [Parameter](#enum-cpuparticles3d-parameter). Should be a unit [Curve](class_curve.md#class-curve).

* * *

void **set\_param\_max**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float)) [🔗](#class-cpuparticles3d-method-set-param-max)

Sets the maximum value for the given parameter.

* * *

void **set\_param\_min**(param: [Parameter](#enum-cpuparticles3d-parameter), value: [float](class_float.md#class-float)) [🔗](#class-cpuparticles3d-method-set-param-min)

Sets the minimum value for the given parameter.

* * *

void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles3d-particleflags), enable: [bool](class_bool.md#class-bool)) [🔗](#class-cpuparticles3d-method-set-particle-flag)

Enables or disables the given particle flag.

[Previous](class_cpuparticles2d.md "CPUParticles2D") [Next](class_csgbox3d.md "CSGBox3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cpuparticles2d.md "CPUParticles2D") [Next](class_csgbox3d.md "CSGBox3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).