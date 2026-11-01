---
title: CPUParticles2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cpuparticles2d.html
crawled_at: "2026-08-13T10:38:56+12:00"
content_hash: a557048e128eaa9fad6296eeeb63a3bbf2f952b3dcce1999bb63ddfd67afb7cd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CPUParticles2D

* * *

# CPUParticles2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A CPU-based 2D particle emitter.

## Description

CPU-based 2D particle node used to create a variety of particle systems and effects.

See also [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d), which provides the same functionality with hardware acceleration, but may not run on older devices.

## Tutorials

- [Particle systems (2D)](../tutorials/2d/particle_systems_2d.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [amount](#class-cpuparticles2d-property-amount) | `8` |
| [Curve](class_curve.md#class-curve) | [angle\_curve](#class-cpuparticles2d-property-angle-curve) |  |
| [float](class_float.md#class-float) | [angle\_max](#class-cpuparticles2d-property-angle-max) | `0.0` |
| [float](class_float.md#class-float) | [angle\_min](#class-cpuparticles2d-property-angle-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [angular\_velocity\_curve](#class-cpuparticles2d-property-angular-velocity-curve) |  |
| [float](class_float.md#class-float) | [angular\_velocity\_max](#class-cpuparticles2d-property-angular-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [angular\_velocity\_min](#class-cpuparticles2d-property-angular-velocity-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [anim\_offset\_curve](#class-cpuparticles2d-property-anim-offset-curve) |  |
| [float](class_float.md#class-float) | [anim\_offset\_max](#class-cpuparticles2d-property-anim-offset-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_offset\_min](#class-cpuparticles2d-property-anim-offset-min) | `0.0` |
| [Curve](class_curve.md#class-curve) | [anim\_speed\_curve](#class-cpuparticles2d-property-anim-speed-curve) |  |
| [float](class_float.md#class-float) | [anim\_speed\_max](#class-cpuparticles2d-property-anim-speed-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_speed\_min](#class-cpuparticles2d-property-anim-speed-min) | `0.0` |
| [Color](class_color.md#class-color) | [color](#class-cpuparticles2d-property-color) | `Color(1, 1, 1, 1)` |
| [Gradient](class_gradient.md#class-gradient) | [color\_initial\_ramp](#class-cpuparticles2d-property-color-initial-ramp) |  |
| [Gradient](class_gradient.md#class-gradient) | [color\_ramp](#class-cpuparticles2d-property-color-ramp) |  |
| [Curve](class_curve.md#class-curve) | [damping\_curve](#class-cpuparticles2d-property-damping-curve) |  |
| [float](class_float.md#class-float) | [damping\_max](#class-cpuparticles2d-property-damping-max) | `0.0` |
| [float](class_float.md#class-float) | [damping\_min](#class-cpuparticles2d-property-damping-min) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [direction](#class-cpuparticles2d-property-direction) | `Vector2(1, 0)` |
| [DrawOrder](#enum-cpuparticles2d-draworder) | [draw\_order](#class-cpuparticles2d-property-draw-order) | `0` |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [emission\_colors](#class-cpuparticles2d-property-emission-colors) |  |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [emission\_normals](#class-cpuparticles2d-property-emission-normals) |  |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [emission\_points](#class-cpuparticles2d-property-emission-points) |  |
| [Vector2](class_vector2.md#class-vector2) | [emission\_rect\_extents](#class-cpuparticles2d-property-emission-rect-extents) |  |
| [EmissionShape](#enum-cpuparticles2d-emissionshape) | [emission\_shape](#class-cpuparticles2d-property-emission-shape) | `0` |
| [float](class_float.md#class-float) | [emission\_sphere\_radius](#class-cpuparticles2d-property-emission-sphere-radius) |  |
| [bool](class_bool.md#class-bool) | [emitting](#class-cpuparticles2d-property-emitting) | `true` |
| [float](class_float.md#class-float) | [explosiveness](#class-cpuparticles2d-property-explosiveness) | `0.0` |
| [int](class_int.md#class-int) | [fixed\_fps](#class-cpuparticles2d-property-fixed-fps) | `0` |
| [bool](class_bool.md#class-bool) | [fract\_delta](#class-cpuparticles2d-property-fract-delta) | `true` |
| [Vector2](class_vector2.md#class-vector2) | [gravity](#class-cpuparticles2d-property-gravity) | `Vector2(0, 980)` |
| [Curve](class_curve.md#class-curve) | [hue\_variation\_curve](#class-cpuparticles2d-property-hue-variation-curve) |  |
| [float](class_float.md#class-float) | [hue\_variation\_max](#class-cpuparticles2d-property-hue-variation-max) | `0.0` |
| [float](class_float.md#class-float) | [hue\_variation\_min](#class-cpuparticles2d-property-hue-variation-min) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_max](#class-cpuparticles2d-property-initial-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_min](#class-cpuparticles2d-property-initial-velocity-min) | `0.0` |
| [float](class_float.md#class-float) | [lifetime](#class-cpuparticles2d-property-lifetime) | `1.0` |
| [float](class_float.md#class-float) | [lifetime\_randomness](#class-cpuparticles2d-property-lifetime-randomness) | `0.0` |
| [Curve](class_curve.md#class-curve) | [linear\_accel\_curve](#class-cpuparticles2d-property-linear-accel-curve) |  |
| [float](class_float.md#class-float) | [linear\_accel\_max](#class-cpuparticles2d-property-linear-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [linear\_accel\_min](#class-cpuparticles2d-property-linear-accel-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [local\_coords](#class-cpuparticles2d-property-local-coords) | `false` |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-cpuparticles2d-property-one-shot) | `false` |
| [Curve](class_curve.md#class-curve) | [orbit\_velocity\_curve](#class-cpuparticles2d-property-orbit-velocity-curve) |  |
| [float](class_float.md#class-float) | [orbit\_velocity\_max](#class-cpuparticles2d-property-orbit-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [orbit\_velocity\_min](#class-cpuparticles2d-property-orbit-velocity-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_align\_y](#class-cpuparticles2d-property-particle-flag-align-y) | `false` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [float](class_float.md#class-float) | [preprocess](#class-cpuparticles2d-property-preprocess) | `0.0` |
| [Curve](class_curve.md#class-curve) | [radial\_accel\_curve](#class-cpuparticles2d-property-radial-accel-curve) |  |
| [float](class_float.md#class-float) | [radial\_accel\_max](#class-cpuparticles2d-property-radial-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [radial\_accel\_min](#class-cpuparticles2d-property-radial-accel-min) | `0.0` |
| [float](class_float.md#class-float) | [randomness](#class-cpuparticles2d-property-randomness) | `0.0` |
| [Curve](class_curve.md#class-curve) | [scale\_amount\_curve](#class-cpuparticles2d-property-scale-amount-curve) |  |
| [float](class_float.md#class-float) | [scale\_amount\_max](#class-cpuparticles2d-property-scale-amount-max) | `1.0` |
| [float](class_float.md#class-float) | [scale\_amount\_min](#class-cpuparticles2d-property-scale-amount-min) | `1.0` |
| [Curve](class_curve.md#class-curve) | [scale\_curve\_x](#class-cpuparticles2d-property-scale-curve-x) |  |
| [Curve](class_curve.md#class-curve) | [scale\_curve\_y](#class-cpuparticles2d-property-scale-curve-y) |  |
| [int](class_int.md#class-int) | [seed](#class-cpuparticles2d-property-seed) | `0` |
| [float](class_float.md#class-float) | [speed\_scale](#class-cpuparticles2d-property-speed-scale) | `1.0` |
| [bool](class_bool.md#class-bool) | [split\_scale](#class-cpuparticles2d-property-split-scale) | `false` |
| [float](class_float.md#class-float) | [spread](#class-cpuparticles2d-property-spread) | `45.0` |
| [Curve](class_curve.md#class-curve) | [tangential\_accel\_curve](#class-cpuparticles2d-property-tangential-accel-curve) |  |
| [float](class_float.md#class-float) | [tangential\_accel\_max](#class-cpuparticles2d-property-tangential-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [tangential\_accel\_min](#class-cpuparticles2d-property-tangential-accel-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-cpuparticles2d-property-texture) |  |
| [bool](class_bool.md#class-bool) | [use\_fixed\_seed](#class-cpuparticles2d-property-use-fixed-seed) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [convert\_from\_particles](#class-cpuparticles2d-method-convert-from-particles)(particles: [Node](class_node.md#class-node)) |
| [Curve](class_curve.md#class-curve) | [get\_param\_curve](#class-cpuparticles2d-method-get-param-curve)(param: [Parameter](#enum-cpuparticles2d-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_max](#class-cpuparticles2d-method-get-param-max)(param: [Parameter](#enum-cpuparticles2d-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_min](#class-cpuparticles2d-method-get-param-min)(param: [Parameter](#enum-cpuparticles2d-parameter)) const |
| [bool](class_bool.md#class-bool) | [get\_particle\_flag](#class-cpuparticles2d-method-get-particle-flag)(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags)) const |
| void | [request\_particles\_process](#class-cpuparticles2d-method-request-particles-process)(process\_time: [float](class_float.md#class-float)) |
| void | [restart](#class-cpuparticles2d-method-restart)(keep\_seed: [bool](class_bool.md#class-bool) = false) |
| void | [set\_param\_curve](#class-cpuparticles2d-method-set-param-curve)(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve)) |
| void | [set\_param\_max](#class-cpuparticles2d-method-set-param-max)(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_param\_min](#class-cpuparticles2d-method-set-param-min)(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_particle\_flag](#class-cpuparticles2d-method-set-particle-flag)(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags), enable: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**finished**() [🔗](#class-cpuparticles2d-signal-finished)

Emitted when all active particles have finished processing. When [one\_shot](#class-cpuparticles2d-property-one-shot) is disabled, particles will process continuously, so this is never emitted.

* * *

## Enumerations

enum **DrawOrder**: [🔗](#enum-cpuparticles2d-draworder)

[DrawOrder](#enum-cpuparticles2d-draworder) **DRAW\_ORDER\_INDEX** = `0`

Particles are drawn in the order emitted.

[DrawOrder](#enum-cpuparticles2d-draworder) **DRAW\_ORDER\_LIFETIME** = `1`

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

* * *

enum **Parameter**: [🔗](#enum-cpuparticles2d-parameter)

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_INITIAL\_LINEAR\_VELOCITY** = `0`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set initial velocity properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_ANGULAR\_VELOCITY** = `1`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set angular velocity properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_ORBIT\_VELOCITY** = `2`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set orbital velocity properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_LINEAR\_ACCEL** = `3`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set linear acceleration properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_RADIAL\_ACCEL** = `4`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set radial acceleration properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_TANGENTIAL\_ACCEL** = `5`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set tangential acceleration properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_DAMPING** = `6`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set damping properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_ANGLE** = `7`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set angle properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_SCALE** = `8`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set scale properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_HUE\_VARIATION** = `9`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set hue variation properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_ANIM\_SPEED** = `10`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set animation speed properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_ANIM\_OFFSET** = `11`

Use with [set\_param\_min()](#class-cpuparticles2d-method-set-param-min), [set\_param\_max()](#class-cpuparticles2d-method-set-param-max), and [set\_param\_curve()](#class-cpuparticles2d-method-set-param-curve) to set animation offset properties.

[Parameter](#enum-cpuparticles2d-parameter) **PARAM\_MAX** = `12`

Represents the size of the [Parameter](#enum-cpuparticles2d-parameter) enum.

* * *

enum **ParticleFlags**: [🔗](#enum-cpuparticles2d-particleflags)

[ParticleFlags](#enum-cpuparticles2d-particleflags) **PARTICLE\_FLAG\_ALIGN\_Y\_TO\_VELOCITY** = `0`

Use with [set\_particle\_flag()](#class-cpuparticles2d-method-set-particle-flag) to set [particle\_flag\_align\_y](#class-cpuparticles2d-property-particle-flag-align-y).

[ParticleFlags](#enum-cpuparticles2d-particleflags) **PARTICLE\_FLAG\_ROTATE\_Y** = `1`

Present for consistency with 3D particle nodes, not used in 2D.

[ParticleFlags](#enum-cpuparticles2d-particleflags) **PARTICLE\_FLAG\_DISABLE\_Z** = `2`

Present for consistency with 3D particle nodes, not used in 2D.

[ParticleFlags](#enum-cpuparticles2d-particleflags) **PARTICLE\_FLAG\_MAX** = `3`

Represents the size of the [ParticleFlags](#enum-cpuparticles2d-particleflags) enum.

* * *

enum **EmissionShape**: [🔗](#enum-cpuparticles2d-emissionshape)

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_POINT** = `0`

All particles will be emitted from a single point.

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_SPHERE** = `1`

Particles will be emitted in the volume of a sphere flattened to two dimensions.

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_SPHERE\_SURFACE** = `2`

Particles will be emitted on the surface of a sphere flattened to two dimensions.

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_RECTANGLE** = `3`

Particles will be emitted in the area of a rectangle.

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_POINTS** = `4`

Particles will be emitted at a position chosen randomly among [emission\_points](#class-cpuparticles2d-property-emission-points). Particle color will be modulated by [emission\_colors](#class-cpuparticles2d-property-emission-colors).

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_DIRECTED\_POINTS** = `5`

Particles will be emitted at a position chosen randomly among [emission\_points](#class-cpuparticles2d-property-emission-points). Particle velocity and rotation will be set based on [emission\_normals](#class-cpuparticles2d-property-emission-normals). Particle color will be modulated by [emission\_colors](#class-cpuparticles2d-property-emission-colors).

[EmissionShape](#enum-cpuparticles2d-emissionshape) **EMISSION\_SHAPE\_MAX** = `6`

Represents the size of the [EmissionShape](#enum-cpuparticles2d-emissionshape) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **amount** = `8` [🔗](#class-cpuparticles2d-property-amount)

- void **set\_amount**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_amount**()


Number of particles emitted in one emission cycle.

* * *

[Curve](class_curve.md#class-curve) **angle\_curve** [🔗](#class-cpuparticles2d-property-angle-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's rotation will be animated along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **angle\_max** = `0.0` [🔗](#class-cpuparticles2d-property-angle-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum initial rotation applied to each particle, in degrees.

* * *

[float](class_float.md#class-float) **angle\_min** = `0.0` [🔗](#class-cpuparticles2d-property-angle-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [angle\_max](#class-cpuparticles2d-property-angle-max).

* * *

[Curve](class_curve.md#class-curve) **angular\_velocity\_curve** [🔗](#class-cpuparticles2d-property-angular-velocity-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's angular velocity will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **angular\_velocity\_max** = `0.0` [🔗](#class-cpuparticles2d-property-angular-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.

* * *

[float](class_float.md#class-float) **angular\_velocity\_min** = `0.0` [🔗](#class-cpuparticles2d-property-angular-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [angular\_velocity\_max](#class-cpuparticles2d-property-angular-velocity-max).

* * *

[Curve](class_curve.md#class-curve) **anim\_offset\_curve** [🔗](#class-cpuparticles2d-property-anim-offset-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's animation offset will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **anim\_offset\_max** = `0.0` [🔗](#class-cpuparticles2d-property-anim-offset-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum animation offset that corresponds to frame index in the texture. `0` is the first frame, `1` is the last one. See [CanvasItemMaterial.particles\_animation](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-animation).

* * *

[float](class_float.md#class-float) **anim\_offset\_min** = `0.0` [🔗](#class-cpuparticles2d-property-anim-offset-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [anim\_offset\_max](#class-cpuparticles2d-property-anim-offset-max).

* * *

[Curve](class_curve.md#class-curve) **anim\_speed\_curve** [🔗](#class-cpuparticles2d-property-anim-speed-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's animation speed will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **anim\_speed\_max** = `0.0` [🔗](#class-cpuparticles2d-property-anim-speed-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum particle animation speed. Animation speed of `1` means that the particles will make full `0` to `1` offset cycle during lifetime, `2` means `2` cycles etc.

With animation speed greater than `1`, remember to enable [CanvasItemMaterial.particles\_anim\_loop](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-anim-loop) property if you want the animation to repeat.

* * *

[float](class_float.md#class-float) **anim\_speed\_min** = `0.0` [🔗](#class-cpuparticles2d-property-anim-speed-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [anim\_speed\_max](#class-cpuparticles2d-property-anim-speed-max).

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-cpuparticles2d-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


Each particle's initial color. If [texture](#class-cpuparticles2d-property-texture) is defined, it will be multiplied by this color.

* * *

[Gradient](class_gradient.md#class-gradient) **color\_initial\_ramp** [🔗](#class-cpuparticles2d-property-color-initial-ramp)

- void **set\_color\_initial\_ramp**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_color\_initial\_ramp**()


Each particle's initial color will vary along this [Gradient](class_gradient.md#class-gradient) (multiplied with [color](#class-cpuparticles2d-property-color)).

* * *

[Gradient](class_gradient.md#class-gradient) **color\_ramp** [🔗](#class-cpuparticles2d-property-color-ramp)

- void **set\_color\_ramp**(value: [Gradient](class_gradient.md#class-gradient))

- [Gradient](class_gradient.md#class-gradient) **get\_color\_ramp**()


Each particle's color will vary along this [Gradient](class_gradient.md#class-gradient) over its lifetime (multiplied with [color](#class-cpuparticles2d-property-color)).

* * *

[Curve](class_curve.md#class-curve) **damping\_curve** [🔗](#class-cpuparticles2d-property-damping-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Damping will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **damping\_max** = `0.0` [🔗](#class-cpuparticles2d-property-damping-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


The maximum rate at which particles lose velocity. For example value of `100` means that the particle will go from `100` velocity to `0` in `1` second.

* * *

[float](class_float.md#class-float) **damping\_min** = `0.0` [🔗](#class-cpuparticles2d-property-damping-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [damping\_max](#class-cpuparticles2d-property-damping-max).

* * *

[Vector2](class_vector2.md#class-vector2) **direction** = `Vector2(1, 0)` [🔗](#class-cpuparticles2d-property-direction)

- void **set\_direction**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_direction**()


Unit vector specifying the particles' emission direction.

* * *

[DrawOrder](#enum-cpuparticles2d-draworder) **draw\_order** = `0` [🔗](#class-cpuparticles2d-property-draw-order)

- void **set\_draw\_order**(value: [DrawOrder](#enum-cpuparticles2d-draworder))

- [DrawOrder](#enum-cpuparticles2d-draworder) **get\_draw\_order**()


Particle draw order.

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **emission\_colors** [🔗](#class-cpuparticles2d-property-emission-colors)

- void **set\_emission\_colors**(value: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray))

- [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **get\_emission\_colors**()


Sets the [Color](class_color.md#class-color) s to modulate particles by when using [EMISSION\_SHAPE\_POINTS](#class-cpuparticles2d-constant-emission-shape-points) or [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles2d-constant-emission-shape-directed-points).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) for more details.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **emission\_normals** [🔗](#class-cpuparticles2d-property-emission-normals)

- void **set\_emission\_normals**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_emission\_normals**()


Sets the direction the particles will be emitted in when using [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles2d-constant-emission-shape-directed-points).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **emission\_points** [🔗](#class-cpuparticles2d-property-emission-points)

- void **set\_emission\_points**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_emission\_points**()


Sets the initial positions to spawn particles when using [EMISSION\_SHAPE\_POINTS](#class-cpuparticles2d-constant-emission-shape-points) or [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-cpuparticles2d-constant-emission-shape-directed-points).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[Vector2](class_vector2.md#class-vector2) **emission\_rect\_extents** [🔗](#class-cpuparticles2d-property-emission-rect-extents)

- void **set\_emission\_rect\_extents**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_emission\_rect\_extents**()


The rectangle's extents if [emission\_shape](#class-cpuparticles2d-property-emission-shape) is set to [EMISSION\_SHAPE\_RECTANGLE](#class-cpuparticles2d-constant-emission-shape-rectangle).

* * *

[EmissionShape](#enum-cpuparticles2d-emissionshape) **emission\_shape** = `0` [🔗](#class-cpuparticles2d-property-emission-shape)

- void **set\_emission\_shape**(value: [EmissionShape](#enum-cpuparticles2d-emissionshape))

- [EmissionShape](#enum-cpuparticles2d-emissionshape) **get\_emission\_shape**()


Particles will be emitted inside this region.

* * *

[float](class_float.md#class-float) **emission\_sphere\_radius** [🔗](#class-cpuparticles2d-property-emission-sphere-radius)

- void **set\_emission\_sphere\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_sphere\_radius**()


The sphere's radius if [emission\_shape](#class-cpuparticles2d-property-emission-shape) is set to [EMISSION\_SHAPE\_SPHERE](#class-cpuparticles2d-constant-emission-shape-sphere).

* * *

[bool](class_bool.md#class-bool) **emitting** = `true` [🔗](#class-cpuparticles2d-property-emitting)

- void **set\_emitting**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emitting**()


If `true`, particles are being emitted. [emitting](#class-cpuparticles2d-property-emitting) can be used to start and stop particles from emitting. However, if [one\_shot](#class-cpuparticles2d-property-one-shot) is `true` setting [emitting](#class-cpuparticles2d-property-emitting) to `true` will not restart the emission cycle until after all active particles finish processing. You can use the [finished](#class-cpuparticles2d-signal-finished) signal to be notified once all active particles finish processing.

* * *

[float](class_float.md#class-float) **explosiveness** = `0.0` [🔗](#class-cpuparticles2d-property-explosiveness)

- void **set\_explosiveness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_explosiveness\_ratio**()


How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.

* * *

[int](class_int.md#class-int) **fixed\_fps** = `0` [🔗](#class-cpuparticles2d-property-fixed-fps)

- void **set\_fixed\_fps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_fps**()


The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.

* * *

[bool](class_bool.md#class-bool) **fract\_delta** = `true` [🔗](#class-cpuparticles2d-property-fract-delta)

- void **set\_fractional\_delta**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_fractional\_delta**()


If `true`, results in fractional delta calculation which has a smoother particles display effect.

* * *

[Vector2](class_vector2.md#class-vector2) **gravity** = `Vector2(0, 980)` [🔗](#class-cpuparticles2d-property-gravity)

- void **set\_gravity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_gravity**()


Gravity applied to every particle.

* * *

[Curve](class_curve.md#class-curve) **hue\_variation\_curve** [🔗](#class-cpuparticles2d-property-hue-variation-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's hue will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **hue\_variation\_max** = `0.0` [🔗](#class-cpuparticles2d-property-hue-variation-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum initial hue variation applied to each particle. It will shift the particle color's hue.

* * *

[float](class_float.md#class-float) **hue\_variation\_min** = `0.0` [🔗](#class-cpuparticles2d-property-hue-variation-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [hue\_variation\_max](#class-cpuparticles2d-property-hue-variation-max).

* * *

[float](class_float.md#class-float) **initial\_velocity\_max** = `0.0` [🔗](#class-cpuparticles2d-property-initial-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum initial velocity magnitude for each particle. Direction comes from [direction](#class-cpuparticles2d-property-direction) and [spread](#class-cpuparticles2d-property-spread).

* * *

[float](class_float.md#class-float) **initial\_velocity\_min** = `0.0` [🔗](#class-cpuparticles2d-property-initial-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [initial\_velocity\_max](#class-cpuparticles2d-property-initial-velocity-max).

* * *

[float](class_float.md#class-float) **lifetime** = `1.0` [🔗](#class-cpuparticles2d-property-lifetime)

- void **set\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime**()


Amount of time each particle will exist.

* * *

[float](class_float.md#class-float) **lifetime\_randomness** = `0.0` [🔗](#class-cpuparticles2d-property-lifetime-randomness)

- void **set\_lifetime\_randomness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime\_randomness**()


Particle lifetime randomness ratio.

* * *

[Curve](class_curve.md#class-curve) **linear\_accel\_curve** [🔗](#class-cpuparticles2d-property-linear-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's linear acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **linear\_accel\_max** = `0.0` [🔗](#class-cpuparticles2d-property-linear-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum linear acceleration applied to each particle in the direction of motion.

* * *

[float](class_float.md#class-float) **linear\_accel\_min** = `0.0` [🔗](#class-cpuparticles2d-property-linear-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [linear\_accel\_max](#class-cpuparticles2d-property-linear-accel-max).

* * *

[bool](class_bool.md#class-bool) **local\_coords** = `false` [🔗](#class-cpuparticles2d-property-local-coords)

- void **set\_use\_local\_coordinates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_local\_coordinates**()


If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the **CPUParticles2D** node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the **CPUParticles2D** node (and its parents) when it is moved or rotated.

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-cpuparticles2d-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_one\_shot**()


If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.

* * *

[Curve](class_curve.md#class-curve) **orbit\_velocity\_curve** [🔗](#class-cpuparticles2d-property-orbit-velocity-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's orbital velocity will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **orbit\_velocity\_max** = `0.0` [🔗](#class-cpuparticles2d-property-orbit-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum orbital velocity applied to each particle. Makes the particles circle around origin. Specified in number of full rotations around origin per second.

* * *

[float](class_float.md#class-float) **orbit\_velocity\_min** = `0.0` [🔗](#class-cpuparticles2d-property-orbit-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [orbit\_velocity\_max](#class-cpuparticles2d-property-orbit-velocity-max).

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_align\_y** = `false` [🔗](#class-cpuparticles2d-property-particle-flag-align-y)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags)) const


Align Y axis of particle with the direction of its velocity.

* * *

[float](class_float.md#class-float) **preprocess** = `0.0` [🔗](#class-cpuparticles2d-property-preprocess)

- void **set\_pre\_process\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_process\_time**()


Particle system starts as if it had already run for this many seconds.

* * *

[Curve](class_curve.md#class-curve) **radial\_accel\_curve** [🔗](#class-cpuparticles2d-property-radial-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's radial acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **radial\_accel\_max** = `0.0` [🔗](#class-cpuparticles2d-property-radial-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum radial acceleration applied to each particle. Makes particle accelerate away from the origin or towards it if negative.

* * *

[float](class_float.md#class-float) **radial\_accel\_min** = `0.0` [🔗](#class-cpuparticles2d-property-radial-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [radial\_accel\_max](#class-cpuparticles2d-property-radial-accel-max).

* * *

[float](class_float.md#class-float) **randomness** = `0.0` [🔗](#class-cpuparticles2d-property-randomness)

- void **set\_randomness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_randomness\_ratio**()


Emission lifetime randomness ratio.

* * *

[Curve](class_curve.md#class-curve) **scale\_amount\_curve** [🔗](#class-cpuparticles2d-property-scale-amount-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's scale will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **scale\_amount\_max** = `1.0` [🔗](#class-cpuparticles2d-property-scale-amount-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum initial scale applied to each particle.

* * *

[float](class_float.md#class-float) **scale\_amount\_min** = `1.0` [🔗](#class-cpuparticles2d-property-scale-amount-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [scale\_amount\_max](#class-cpuparticles2d-property-scale-amount-max).

* * *

[Curve](class_curve.md#class-curve) **scale\_curve\_x** [🔗](#class-cpuparticles2d-property-scale-curve-x)

- void **set\_scale\_curve\_x**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_scale\_curve\_x**()


Each particle's horizontal scale will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

[split\_scale](#class-cpuparticles2d-property-split-scale) must be enabled.

* * *

[Curve](class_curve.md#class-curve) **scale\_curve\_y** [🔗](#class-cpuparticles2d-property-scale-curve-y)

- void **set\_scale\_curve\_y**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_scale\_curve\_y**()


Each particle's vertical scale will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

[split\_scale](#class-cpuparticles2d-property-split-scale) must be enabled.

* * *

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-cpuparticles2d-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


Sets the random seed used by the particle system. Only effective if [use\_fixed\_seed](#class-cpuparticles2d-property-use-fixed-seed) is `true`.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-cpuparticles2d-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.

* * *

[bool](class_bool.md#class-bool) **split\_scale** = `false` [🔗](#class-cpuparticles2d-property-split-scale)

- void **set\_split\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_split\_scale**()


If `true`, the scale curve will be split into x and y components. See [scale\_curve\_x](#class-cpuparticles2d-property-scale-curve-x) and [scale\_curve\_y](#class-cpuparticles2d-property-scale-curve-y).

* * *

[float](class_float.md#class-float) **spread** = `45.0` [🔗](#class-cpuparticles2d-property-spread)

- void **set\_spread**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_spread**()


Each particle's initial direction range from `+spread` to `-spread` degrees.

* * *

[Curve](class_curve.md#class-curve) **tangential\_accel\_curve** [🔗](#class-cpuparticles2d-property-tangential-accel-curve)

- void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Each particle's tangential acceleration will vary along this [Curve](class_curve.md#class-curve). Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **tangential\_accel\_max** = `0.0` [🔗](#class-cpuparticles2d-property-tangential-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Maximum tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity giving the particles a swirling motion.

* * *

[float](class_float.md#class-float) **tangential\_accel\_min** = `0.0` [🔗](#class-cpuparticles2d-property-tangential-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const


Minimum equivalent of [tangential\_accel\_max](#class-cpuparticles2d-property-tangential-accel-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-cpuparticles2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


Particle texture. If `null`, particles will be squares.

* * *

[bool](class_bool.md#class-bool) **use\_fixed\_seed** = `false` [🔗](#class-cpuparticles2d-property-use-fixed-seed)

- void **set\_use\_fixed\_seed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_fixed\_seed**()


If `true`, particles will use the same seed for every simulation using the seed defined in [seed](#class-cpuparticles2d-property-seed). This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

* * *

## Method Descriptions

void **convert\_from\_particles**(particles: [Node](class_node.md#class-node)) [🔗](#class-cpuparticles2d-method-convert-from-particles)

Sets this node's properties to match a given [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) node with an assigned [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial).

* * *

[Curve](class_curve.md#class-curve) **get\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter)) const [🔗](#class-cpuparticles2d-method-get-param-curve)

Returns the [Curve](class_curve.md#class-curve) of the parameter specified by [Parameter](#enum-cpuparticles2d-parameter).

* * *

[float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter)) const [🔗](#class-cpuparticles2d-method-get-param-max)

Returns the maximum value range for the given parameter.

* * *

[float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter)) const [🔗](#class-cpuparticles2d-method-get-param-min)

Returns the minimum value range for the given parameter.

* * *

[bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags)) const [🔗](#class-cpuparticles2d-method-get-particle-flag)

Returns the enabled state of the given particle flag.

* * *

void **request\_particles\_process**(process\_time: [float](class_float.md#class-float)) [🔗](#class-cpuparticles2d-method-request-particles-process)

Requests the particles to process for extra process time during a single frame.

Useful for particle playback, if used in combination with [use\_fixed\_seed](#class-cpuparticles2d-property-use-fixed-seed) or by calling [restart()](#class-cpuparticles2d-method-restart) with parameter `keep_seed` set to `true`.

* * *

void **restart**(keep\_seed: [bool](class_bool.md#class-bool) = false) [🔗](#class-cpuparticles2d-method-restart)

Restarts the particle emitter.

If `keep_seed` is `true`, the current random seed will be preserved. Useful for seeking and playback.

* * *

void **set\_param\_curve**(param: [Parameter](#enum-cpuparticles2d-parameter), curve: [Curve](class_curve.md#class-curve)) [🔗](#class-cpuparticles2d-method-set-param-curve)

Sets the [Curve](class_curve.md#class-curve) of the parameter specified by [Parameter](#enum-cpuparticles2d-parameter). Should be a unit [Curve](class_curve.md#class-curve).

* * *

void **set\_param\_max**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float)) [🔗](#class-cpuparticles2d-method-set-param-max)

Sets the maximum value for the given parameter.

* * *

void **set\_param\_min**(param: [Parameter](#enum-cpuparticles2d-parameter), value: [float](class_float.md#class-float)) [🔗](#class-cpuparticles2d-method-set-param-min)

Sets the minimum value for the given parameter.

* * *

void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-cpuparticles2d-particleflags), enable: [bool](class_bool.md#class-bool)) [🔗](#class-cpuparticles2d-method-set-particle-flag)

Enables or disables the given particle flag.

[Previous](class_copytransformmodifier3d.md "CopyTransformModifier3D") [Next](class_cpuparticles3d.md "CPUParticles3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_copytransformmodifier3d.md "CopyTransformModifier3D") [Next](class_cpuparticles3d.md "CPUParticles3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).