---
title: ParticleProcessMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_particleprocessmaterial.html
crawled_at: "2026-08-13T10:32:49+12:00"
content_hash: 89eedf2e0b0d4884387a7dae74340216e34b5f717740169e21ef6d918ac4ccc6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ParticleProcessMaterial

* * *

# ParticleProcessMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds a particle configuration for [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) or [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

**ParticleProcessMaterial** defines particle properties and behavior. It is used in the `process_material` of the [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) and [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes. Some of this material's properties are applied to each particle when emitted, while others can have a [CurveTexture](class_curvetexture.md#class-curvetexture) or a [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) applied to vary numerical or color values over the lifetime of the particle.

## Properties

|     |     |     |
| --- | --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [alpha\_curve](#class-particleprocessmaterial-property-alpha-curve) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [angle\_curve](#class-particleprocessmaterial-property-angle-curve) |  |
| [float](class_float.md#class-float) | [angle\_max](#class-particleprocessmaterial-property-angle-max) | `0.0` |
| [float](class_float.md#class-float) | [angle\_min](#class-particleprocessmaterial-property-angle-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [angular\_velocity\_curve](#class-particleprocessmaterial-property-angular-velocity-curve) |  |
| [float](class_float.md#class-float) | [angular\_velocity\_max](#class-particleprocessmaterial-property-angular-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [angular\_velocity\_min](#class-particleprocessmaterial-property-angular-velocity-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [anim\_offset\_curve](#class-particleprocessmaterial-property-anim-offset-curve) |  |
| [float](class_float.md#class-float) | [anim\_offset\_max](#class-particleprocessmaterial-property-anim-offset-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_offset\_min](#class-particleprocessmaterial-property-anim-offset-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [anim\_speed\_curve](#class-particleprocessmaterial-property-anim-speed-curve) |  |
| [float](class_float.md#class-float) | [anim\_speed\_max](#class-particleprocessmaterial-property-anim-speed-max) | `0.0` |
| [float](class_float.md#class-float) | [anim\_speed\_min](#class-particleprocessmaterial-property-anim-speed-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [attractor\_interaction\_enabled](#class-particleprocessmaterial-property-attractor-interaction-enabled) | `true` |
| [float](class_float.md#class-float) | [collision\_bounce](#class-particleprocessmaterial-property-collision-bounce) |  |
| [float](class_float.md#class-float) | [collision\_friction](#class-particleprocessmaterial-property-collision-friction) |  |
| [CollisionMode](#enum-particleprocessmaterial-collisionmode) | [collision\_mode](#class-particleprocessmaterial-property-collision-mode) | `0` |
| [bool](class_bool.md#class-bool) | [collision\_use\_scale](#class-particleprocessmaterial-property-collision-use-scale) | `false` |
| [Color](class_color.md#class-color) | [color](#class-particleprocessmaterial-property-color) | `Color(1, 1, 1, 1)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [color\_initial\_ramp](#class-particleprocessmaterial-property-color-initial-ramp) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [color\_ramp](#class-particleprocessmaterial-property-color-ramp) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [damping\_curve](#class-particleprocessmaterial-property-damping-curve) |  |
| [float](class_float.md#class-float) | [damping\_max](#class-particleprocessmaterial-property-damping-max) | `0.0` |
| [float](class_float.md#class-float) | [damping\_min](#class-particleprocessmaterial-property-damping-min) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [direction](#class-particleprocessmaterial-property-direction) | `Vector3(1, 0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [directional\_velocity\_curve](#class-particleprocessmaterial-property-directional-velocity-curve) |  |
| [float](class_float.md#class-float) | [directional\_velocity\_max](#class-particleprocessmaterial-property-directional-velocity-max) |  |
| [float](class_float.md#class-float) | [directional\_velocity\_min](#class-particleprocessmaterial-property-directional-velocity-min) |  |
| [Vector3](class_vector3.md#class-vector3) | [emission\_box\_extents](#class-particleprocessmaterial-property-emission-box-extents) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [emission\_color\_texture](#class-particleprocessmaterial-property-emission-color-texture) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [emission\_curve](#class-particleprocessmaterial-property-emission-curve) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [emission\_normal\_texture](#class-particleprocessmaterial-property-emission-normal-texture) |  |
| [int](class_int.md#class-int) | [emission\_point\_count](#class-particleprocessmaterial-property-emission-point-count) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [emission\_point\_texture](#class-particleprocessmaterial-property-emission-point-texture) |  |
| [Vector3](class_vector3.md#class-vector3) | [emission\_ring\_axis](#class-particleprocessmaterial-property-emission-ring-axis) |  |
| [float](class_float.md#class-float) | [emission\_ring\_cone\_angle](#class-particleprocessmaterial-property-emission-ring-cone-angle) |  |
| [float](class_float.md#class-float) | [emission\_ring\_height](#class-particleprocessmaterial-property-emission-ring-height) |  |
| [float](class_float.md#class-float) | [emission\_ring\_inner\_radius](#class-particleprocessmaterial-property-emission-ring-inner-radius) |  |
| [float](class_float.md#class-float) | [emission\_ring\_radius](#class-particleprocessmaterial-property-emission-ring-radius) |  |
| [EmissionShape](#enum-particleprocessmaterial-emissionshape) | [emission\_shape](#class-particleprocessmaterial-property-emission-shape) | `0` |
| [Vector3](class_vector3.md#class-vector3) | [emission\_shape\_offset](#class-particleprocessmaterial-property-emission-shape-offset) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [emission\_shape\_scale](#class-particleprocessmaterial-property-emission-shape-scale) | `Vector3(1, 1, 1)` |
| [float](class_float.md#class-float) | [emission\_sphere\_radius](#class-particleprocessmaterial-property-emission-sphere-radius) |  |
| [float](class_float.md#class-float) | [flatness](#class-particleprocessmaterial-property-flatness) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [gravity](#class-particleprocessmaterial-property-gravity) | `Vector3(0, -9.8, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [hue\_variation\_curve](#class-particleprocessmaterial-property-hue-variation-curve) |  |
| [float](class_float.md#class-float) | [hue\_variation\_max](#class-particleprocessmaterial-property-hue-variation-max) | `0.0` |
| [float](class_float.md#class-float) | [hue\_variation\_min](#class-particleprocessmaterial-property-hue-variation-min) | `0.0` |
| [float](class_float.md#class-float) | [inherit\_velocity\_ratio](#class-particleprocessmaterial-property-inherit-velocity-ratio) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_max](#class-particleprocessmaterial-property-initial-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [initial\_velocity\_min](#class-particleprocessmaterial-property-initial-velocity-min) | `0.0` |
| [float](class_float.md#class-float) | [lifetime\_randomness](#class-particleprocessmaterial-property-lifetime-randomness) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [linear\_accel\_curve](#class-particleprocessmaterial-property-linear-accel-curve) |  |
| [float](class_float.md#class-float) | [linear\_accel\_max](#class-particleprocessmaterial-property-linear-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [linear\_accel\_min](#class-particleprocessmaterial-property-linear-accel-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [orbit\_velocity\_curve](#class-particleprocessmaterial-property-orbit-velocity-curve) |  |
| [float](class_float.md#class-float) | [orbit\_velocity\_max](#class-particleprocessmaterial-property-orbit-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [orbit\_velocity\_min](#class-particleprocessmaterial-property-orbit-velocity-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_align\_y](#class-particleprocessmaterial-property-particle-flag-align-y) | `false` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_damping\_as\_friction](#class-particleprocessmaterial-property-particle-flag-damping-as-friction) | `false` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_disable\_z](#class-particleprocessmaterial-property-particle-flag-disable-z) | `false` |
| [bool](class_bool.md#class-bool) | [particle\_flag\_rotate\_y](#class-particleprocessmaterial-property-particle-flag-rotate-y) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [radial\_accel\_curve](#class-particleprocessmaterial-property-radial-accel-curve) |  |
| [float](class_float.md#class-float) | [radial\_accel\_max](#class-particleprocessmaterial-property-radial-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [radial\_accel\_min](#class-particleprocessmaterial-property-radial-accel-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [radial\_velocity\_curve](#class-particleprocessmaterial-property-radial-velocity-curve) |  |
| [float](class_float.md#class-float) | [radial\_velocity\_max](#class-particleprocessmaterial-property-radial-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [radial\_velocity\_min](#class-particleprocessmaterial-property-radial-velocity-min) | `0.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [scale\_curve](#class-particleprocessmaterial-property-scale-curve) |  |
| [float](class_float.md#class-float) | [scale\_max](#class-particleprocessmaterial-property-scale-max) | `1.0` |
| [float](class_float.md#class-float) | [scale\_min](#class-particleprocessmaterial-property-scale-min) | `1.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve) |  |
| [float](class_float.md#class-float) | [scale\_over\_velocity\_max](#class-particleprocessmaterial-property-scale-over-velocity-max) | `0.0` |
| [float](class_float.md#class-float) | [scale\_over\_velocity\_min](#class-particleprocessmaterial-property-scale-over-velocity-min) | `0.0` |
| [float](class_float.md#class-float) | [spread](#class-particleprocessmaterial-property-spread) | `45.0` |
| [int](class_int.md#class-int) | [sub\_emitter\_amount\_at\_collision](#class-particleprocessmaterial-property-sub-emitter-amount-at-collision) |  |
| [int](class_int.md#class-int) | [sub\_emitter\_amount\_at\_end](#class-particleprocessmaterial-property-sub-emitter-amount-at-end) |  |
| [int](class_int.md#class-int) | [sub\_emitter\_amount\_at\_start](#class-particleprocessmaterial-property-sub-emitter-amount-at-start) |  |
| [float](class_float.md#class-float) | [sub\_emitter\_frequency](#class-particleprocessmaterial-property-sub-emitter-frequency) |  |
| [bool](class_bool.md#class-bool) | [sub\_emitter\_keep\_velocity](#class-particleprocessmaterial-property-sub-emitter-keep-velocity) | `false` |
| [SubEmitterMode](#enum-particleprocessmaterial-subemittermode) | [sub\_emitter\_mode](#class-particleprocessmaterial-property-sub-emitter-mode) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [tangential\_accel\_curve](#class-particleprocessmaterial-property-tangential-accel-curve) |  |
| [float](class_float.md#class-float) | [tangential\_accel\_max](#class-particleprocessmaterial-property-tangential-accel-max) | `0.0` |
| [float](class_float.md#class-float) | [tangential\_accel\_min](#class-particleprocessmaterial-property-tangential-accel-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [turbulence\_enabled](#class-particleprocessmaterial-property-turbulence-enabled) | `false` |
| [float](class_float.md#class-float) | [turbulence\_influence\_max](#class-particleprocessmaterial-property-turbulence-influence-max) | `0.1` |
| [float](class_float.md#class-float) | [turbulence\_influence\_min](#class-particleprocessmaterial-property-turbulence-influence-min) | `0.1` |
| [Texture2D](class_texture2d.md#class-texture2d) | [turbulence\_influence\_over\_life](#class-particleprocessmaterial-property-turbulence-influence-over-life) |  |
| [float](class_float.md#class-float) | [turbulence\_initial\_displacement\_max](#class-particleprocessmaterial-property-turbulence-initial-displacement-max) | `0.0` |
| [float](class_float.md#class-float) | [turbulence\_initial\_displacement\_min](#class-particleprocessmaterial-property-turbulence-initial-displacement-min) | `0.0` |
| [float](class_float.md#class-float) | [turbulence\_noise\_scale](#class-particleprocessmaterial-property-turbulence-noise-scale) | `9.0` |
| [Vector3](class_vector3.md#class-vector3) | [turbulence\_noise\_speed](#class-particleprocessmaterial-property-turbulence-noise-speed) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [turbulence\_noise\_speed\_random](#class-particleprocessmaterial-property-turbulence-noise-speed-random) | `0.2` |
| [float](class_float.md#class-float) | [turbulence\_noise\_strength](#class-particleprocessmaterial-property-turbulence-noise-strength) | `1.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) |  |
| [Vector3](class_vector3.md#class-vector3) | [velocity\_pivot](#class-particleprocessmaterial-property-velocity-pivot) | `Vector3(0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [get\_param](#class-particleprocessmaterial-method-get-param)(param: [Parameter](#enum-particleprocessmaterial-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_max](#class-particleprocessmaterial-method-get-param-max)(param: [Parameter](#enum-particleprocessmaterial-parameter)) const |
| [float](class_float.md#class-float) | [get\_param\_min](#class-particleprocessmaterial-method-get-param-min)(param: [Parameter](#enum-particleprocessmaterial-parameter)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_param\_texture](#class-particleprocessmaterial-method-get-param-texture)(param: [Parameter](#enum-particleprocessmaterial-parameter)) const |
| [bool](class_bool.md#class-bool) | [get\_particle\_flag](#class-particleprocessmaterial-method-get-particle-flag)(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const |
| void | [set\_param](#class-particleprocessmaterial-method-set-param)(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_param\_max](#class-particleprocessmaterial-method-set-param-max)(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_param\_min](#class-particleprocessmaterial-method-set-param-min)(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float)) |
| void | [set\_param\_texture](#class-particleprocessmaterial-method-set-param-texture)(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_particle\_flag](#class-particleprocessmaterial-method-set-particle-flag)(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**emission\_shape\_changed**() [🔗](#class-particleprocessmaterial-signal-emission-shape-changed)

Emitted when this material's emission shape is changed in any way. This includes changes to [emission\_shape](#class-particleprocessmaterial-property-emission-shape), [emission\_shape\_scale](#class-particleprocessmaterial-property-emission-shape-scale), or [emission\_sphere\_radius](#class-particleprocessmaterial-property-emission-sphere-radius), and any other property that affects the emission shape's offset, size, scale, or orientation.

**Note:** This signal is only emitted inside the editor for performance reasons.

* * *

## Enumerations

enum **Parameter**: [🔗](#enum-particleprocessmaterial-parameter)

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_INITIAL\_LINEAR\_VELOCITY** = `0`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set initial velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_ANGULAR\_VELOCITY** = `1`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set angular velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_ORBIT\_VELOCITY** = `2`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set orbital velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_LINEAR\_ACCEL** = `3`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set linear acceleration properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_RADIAL\_ACCEL** = `4`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set radial acceleration properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_TANGENTIAL\_ACCEL** = `5`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set tangential acceleration properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_DAMPING** = `6`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set damping properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_ANGLE** = `7`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set angle properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_SCALE** = `8`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set scale properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_HUE\_VARIATION** = `9`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set hue variation properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_ANIM\_SPEED** = `10`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set animation speed properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_ANIM\_OFFSET** = `11`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set animation offset properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_RADIAL\_VELOCITY** = `15`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set radial velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_DIRECTIONAL\_VELOCITY** = `16`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set directional velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_SCALE\_OVER\_VELOCITY** = `17`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min), [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max), and [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set scale over velocity properties.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_MAX** = `18`

Represents the size of the [Parameter](#enum-particleprocessmaterial-parameter) enum.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_TURB\_VEL\_INFLUENCE** = `13`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min) and [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max) to set the turbulence minimum und maximum influence on each particles velocity.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_TURB\_INIT\_DISPLACEMENT** = `14`

Use with [set\_param\_min()](#class-particleprocessmaterial-method-set-param-min) and [set\_param\_max()](#class-particleprocessmaterial-method-set-param-max) to set the turbulence minimum and maximum displacement of the particles spawn position.

[Parameter](#enum-particleprocessmaterial-parameter) **PARAM\_TURB\_INFLUENCE\_OVER\_LIFE** = `12`

Use with [set\_param\_texture()](#class-particleprocessmaterial-method-set-param-texture) to set the turbulence influence over the particles life time.

* * *

enum **ParticleFlags**: [🔗](#enum-particleprocessmaterial-particleflags)

[ParticleFlags](#enum-particleprocessmaterial-particleflags) **PARTICLE\_FLAG\_ALIGN\_Y\_TO\_VELOCITY** = `0`

Use with [set\_particle\_flag()](#class-particleprocessmaterial-method-set-particle-flag) to set [particle\_flag\_align\_y](#class-particleprocessmaterial-property-particle-flag-align-y).

[ParticleFlags](#enum-particleprocessmaterial-particleflags) **PARTICLE\_FLAG\_ROTATE\_Y** = `1`

Use with [set\_particle\_flag()](#class-particleprocessmaterial-method-set-particle-flag) to set [particle\_flag\_rotate\_y](#class-particleprocessmaterial-property-particle-flag-rotate-y).

[ParticleFlags](#enum-particleprocessmaterial-particleflags) **PARTICLE\_FLAG\_DISABLE\_Z** = `2`

Use with [set\_particle\_flag()](#class-particleprocessmaterial-method-set-particle-flag) to set [particle\_flag\_disable\_z](#class-particleprocessmaterial-property-particle-flag-disable-z).

[ParticleFlags](#enum-particleprocessmaterial-particleflags) **PARTICLE\_FLAG\_DAMPING\_AS\_FRICTION** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticleFlags](#enum-particleprocessmaterial-particleflags) **PARTICLE\_FLAG\_MAX** = `4`

Represents the size of the [ParticleFlags](#enum-particleprocessmaterial-particleflags) enum.

* * *

enum **EmissionShape**: [🔗](#enum-particleprocessmaterial-emissionshape)

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_POINT** = `0`

All particles will be emitted from a single point.

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_SPHERE** = `1`

Particles will be emitted in the volume of a sphere.

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_SPHERE\_SURFACE** = `2`

Particles will be emitted on the surface of a sphere.

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_BOX** = `3`

Particles will be emitted in the volume of a box.

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_POINTS** = `4`

Particles will be emitted at a position determined by sampling a random point on the [emission\_point\_texture](#class-particleprocessmaterial-property-emission-point-texture). Particle color will be modulated by [emission\_color\_texture](#class-particleprocessmaterial-property-emission-color-texture).

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_DIRECTED\_POINTS** = `5`

Particles will be emitted at a position determined by sampling a random point on the [emission\_point\_texture](#class-particleprocessmaterial-property-emission-point-texture). Particle velocity and rotation will be set based on [emission\_normal\_texture](#class-particleprocessmaterial-property-emission-normal-texture). Particle color will be modulated by [emission\_color\_texture](#class-particleprocessmaterial-property-emission-color-texture).

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_RING** = `6`

Particles will be emitted in a ring or cylinder.

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **EMISSION\_SHAPE\_MAX** = `7`

Represents the size of the [EmissionShape](#enum-particleprocessmaterial-emissionshape) enum.

* * *

enum **SubEmitterMode**: [🔗](#enum-particleprocessmaterial-subemittermode)

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_DISABLED** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_CONSTANT** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_AT\_END** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_AT\_COLLISION** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_AT\_START** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **SUB\_EMITTER\_MAX** = `5`

Represents the size of the [SubEmitterMode](#enum-particleprocessmaterial-subemittermode) enum.

* * *

enum **CollisionMode**: [🔗](#enum-particleprocessmaterial-collisionmode)

[CollisionMode](#enum-particleprocessmaterial-collisionmode) **COLLISION\_DISABLED** = `0`

No collision for particles. Particles will go through [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) nodes.

[CollisionMode](#enum-particleprocessmaterial-collisionmode) **COLLISION\_RIGID** = `1`

[RigidBody3D](class_rigidbody3d.md#class-rigidbody3d)-style collision for particles using [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) nodes.

[CollisionMode](#enum-particleprocessmaterial-collisionmode) **COLLISION\_HIDE\_ON\_CONTACT** = `2`

Hide particles instantly when colliding with a [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) node. This can be combined with a subemitter that uses the [COLLISION\_RIGID](#class-particleprocessmaterial-constant-collision-rigid) collision mode to "replace" the parent particle with the subemitter on impact.

[CollisionMode](#enum-particleprocessmaterial-collisionmode) **COLLISION\_MAX** = `3`

Represents the size of the [CollisionMode](#enum-particleprocessmaterial-collisionmode) enum.

* * *

## Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **alpha\_curve** [🔗](#class-particleprocessmaterial-property-alpha-curve)

- void **set\_alpha\_curve**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_alpha\_curve**()


The alpha value of each particle's color will be multiplied by this [CurveTexture](class_curvetexture.md#class-curvetexture) over its lifetime.

**Note:** [alpha\_curve](#class-particleprocessmaterial-property-alpha-curve) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [alpha\_curve](#class-particleprocessmaterial-property-alpha-curve) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **angle\_curve** [🔗](#class-particleprocessmaterial-property-angle-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's rotation will be animated along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **angle\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-angle-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum initial rotation applied to each particle, in degrees.

Only applied when [particle\_flag\_disable\_z](#class-particleprocessmaterial-property-particle-flag-disable-z) or [particle\_flag\_rotate\_y](#class-particleprocessmaterial-property-particle-flag-rotate-y) are `true` or the [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) being used to draw the particle is using [BaseMaterial3D.BILLBOARD\_PARTICLES](class_basematerial3d.md#class-basematerial3d-constant-billboard-particles).

* * *

[float](class_float.md#class-float) **angle\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-angle-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [angle\_max](#class-particleprocessmaterial-property-angle-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **angular\_velocity\_curve** [🔗](#class-particleprocessmaterial-property-angular-velocity-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's angular velocity (rotation speed) will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture) over its lifetime.

* * *

[float](class_float.md#class-float) **angular\_velocity\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-angular-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum initial angular velocity (rotation speed) applied to each particle in _degrees_ per second.

Only applied when [particle\_flag\_disable\_z](#class-particleprocessmaterial-property-particle-flag-disable-z) or [particle\_flag\_rotate\_y](#class-particleprocessmaterial-property-particle-flag-rotate-y) are `true` or the [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) being used to draw the particle is using [BaseMaterial3D.BILLBOARD\_PARTICLES](class_basematerial3d.md#class-basematerial3d-constant-billboard-particles).

* * *

[float](class_float.md#class-float) **angular\_velocity\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-angular-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [angular\_velocity\_max](#class-particleprocessmaterial-property-angular-velocity-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **anim\_offset\_curve** [🔗](#class-particleprocessmaterial-property-anim-offset-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's animation offset will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **anim\_offset\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-anim-offset-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum animation offset that corresponds to frame index in the texture. `0` is the first frame, `1` is the last one. See [CanvasItemMaterial.particles\_animation](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-animation).

* * *

[float](class_float.md#class-float) **anim\_offset\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-anim-offset-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [anim\_offset\_max](#class-particleprocessmaterial-property-anim-offset-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **anim\_speed\_curve** [🔗](#class-particleprocessmaterial-property-anim-speed-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's animation speed will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **anim\_speed\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-anim-speed-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum particle animation speed. Animation speed of `1` means that the particles will make full `0` to `1` offset cycle during lifetime, `2` means `2` cycles etc.

With animation speed greater than `1`, remember to enable [CanvasItemMaterial.particles\_anim\_loop](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-anim-loop) property if you want the animation to repeat.

* * *

[float](class_float.md#class-float) **anim\_speed\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-anim-speed-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [anim\_speed\_max](#class-particleprocessmaterial-property-anim-speed-max).

* * *

[bool](class_bool.md#class-bool) **attractor\_interaction\_enabled** = `true` [🔗](#class-particleprocessmaterial-property-attractor-interaction-enabled)

- void **set\_attractor\_interaction\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_attractor\_interaction\_enabled**()


If `true`, interaction with particle attractors is enabled. In 3D, attraction only occurs within the area defined by the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) node's [GPUParticles3D.visibility\_aabb](class_gpuparticles3d.md#class-gpuparticles3d-property-visibility-aabb).

* * *

[float](class_float.md#class-float) **collision\_bounce** [🔗](#class-particleprocessmaterial-property-collision-bounce)

- void **set\_collision\_bounce**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_bounce**()


The particles' bounciness. Values range from `0` (no bounce) to `1` (full bounciness). Only effective if [collision\_mode](#class-particleprocessmaterial-property-collision-mode) is [COLLISION\_RIGID](#class-particleprocessmaterial-constant-collision-rigid).

* * *

[float](class_float.md#class-float) **collision\_friction** [🔗](#class-particleprocessmaterial-property-collision-friction)

- void **set\_collision\_friction**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_friction**()


The particles' friction. Values range from `0` (frictionless) to `1` (maximum friction). Only effective if [collision\_mode](#class-particleprocessmaterial-property-collision-mode) is [COLLISION\_RIGID](#class-particleprocessmaterial-constant-collision-rigid).

* * *

[CollisionMode](#enum-particleprocessmaterial-collisionmode) **collision\_mode** = `0` [🔗](#class-particleprocessmaterial-property-collision-mode)

- void **set\_collision\_mode**(value: [CollisionMode](#enum-particleprocessmaterial-collisionmode))

- [CollisionMode](#enum-particleprocessmaterial-collisionmode) **get\_collision\_mode**()


The particles' collision mode.

**Note:** 3D Particles can only collide with [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) nodes, not [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) nodes. To make particles collide with various objects, you can add [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) nodes as children of [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) nodes. In 3D, collisions only occur within the area defined by the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) node's [GPUParticles3D.visibility\_aabb](class_gpuparticles3d.md#class-gpuparticles3d-property-visibility-aabb).

**Note:** 2D Particles can only collide with [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) nodes, not [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) nodes.

* * *

[bool](class_bool.md#class-bool) **collision\_use\_scale** = `false` [🔗](#class-particleprocessmaterial-property-collision-use-scale)

- void **set\_collision\_use\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_collision\_using\_scale**()


If `true`, [GPUParticles3D.collision\_base\_size](class_gpuparticles3d.md#class-gpuparticles3d-property-collision-base-size) is multiplied by the particle's effective scale (see [scale\_min](#class-particleprocessmaterial-property-scale-min), [scale\_max](#class-particleprocessmaterial-property-scale-max), [scale\_curve](#class-particleprocessmaterial-property-scale-curve), and [scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve)).

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-particleprocessmaterial-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


Each particle's initial color. If the [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d)'s `texture` is defined, it will be multiplied by this color.

**Note:** [color](#class-particleprocessmaterial-property-color) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color](#class-particleprocessmaterial-property-color) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **color\_initial\_ramp** [🔗](#class-particleprocessmaterial-property-color-initial-ramp)

- void **set\_color\_initial\_ramp**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_color\_initial\_ramp**()


Each particle's initial color will vary along this [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) (multiplied with [color](#class-particleprocessmaterial-property-color)).

**Note:** [color\_initial\_ramp](#class-particleprocessmaterial-property-color-initial-ramp) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color\_initial\_ramp](#class-particleprocessmaterial-property-color-initial-ramp) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **color\_ramp** [🔗](#class-particleprocessmaterial-property-color-ramp)

- void **set\_color\_ramp**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_color\_ramp**()


Each particle's color will vary along this [GradientTexture1D](class_gradienttexture1d.md#class-gradienttexture1d) over its lifetime (multiplied with [color](#class-particleprocessmaterial-property-color)).

**Note:** [color\_ramp](#class-particleprocessmaterial-property-color-ramp) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [color\_ramp](#class-particleprocessmaterial-property-color-ramp) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **damping\_curve** [🔗](#class-particleprocessmaterial-property-damping-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Damping will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **damping\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-damping-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


The maximum rate at which particles lose velocity. For example value of `100` means that the particle will go from `100` velocity to `0` in `1` second.

* * *

[float](class_float.md#class-float) **damping\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-damping-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [damping\_max](#class-particleprocessmaterial-property-damping-max).

* * *

[Vector3](class_vector3.md#class-vector3) **direction** = `Vector3(1, 0, 0)` [🔗](#class-particleprocessmaterial-property-direction)

- void **set\_direction**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_direction**()


Unit vector specifying the particles' emission direction.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **directional\_velocity\_curve** [🔗](#class-particleprocessmaterial-property-directional-velocity-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


A curve that specifies the velocity along each of the axes of the particle system along its lifetime.

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **directional\_velocity\_max** [🔗](#class-particleprocessmaterial-property-directional-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum directional velocity value, which is multiplied by [directional\_velocity\_curve](#class-particleprocessmaterial-property-directional-velocity-curve).

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **directional\_velocity\_min** [🔗](#class-particleprocessmaterial-property-directional-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum directional velocity value, which is multiplied by [directional\_velocity\_curve](#class-particleprocessmaterial-property-directional-velocity-curve).

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_box\_extents** [🔗](#class-particleprocessmaterial-property-emission-box-extents)

- void **set\_emission\_box\_extents**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_box\_extents**()


The box's extents if [emission\_shape](#class-particleprocessmaterial-property-emission-shape) is set to [EMISSION\_SHAPE\_BOX](#class-particleprocessmaterial-constant-emission-shape-box).

**Note:** [emission\_box\_extents](#class-particleprocessmaterial-property-emission-box-extents) starts from the center point and applies the X, Y, and Z values in both directions. The size is twice the area of the extents.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **emission\_color\_texture** [🔗](#class-particleprocessmaterial-property-emission-color-texture)

- void **set\_emission\_color\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_emission\_color\_texture**()


Particle color will be modulated by color determined by sampling this texture at the same point as the [emission\_point\_texture](#class-particleprocessmaterial-property-emission-point-texture).

**Note:** [emission\_color\_texture](#class-particleprocessmaterial-property-emission-color-texture) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [emission\_color\_texture](#class-particleprocessmaterial-property-emission-color-texture) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **emission\_curve** [🔗](#class-particleprocessmaterial-property-emission-curve)

- void **set\_emission\_curve**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_emission\_curve**()


Each particle's color will be multiplied by this [CurveTexture](class_curvetexture.md#class-curvetexture) over its lifetime.

**Note:** [emission\_curve](#class-particleprocessmaterial-property-emission-curve) multiplies the particle mesh's vertex colors. To have a visible effect on a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) _must_ be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function. Otherwise, [emission\_curve](#class-particleprocessmaterial-property-emission-curve) will have no visible effect.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **emission\_normal\_texture** [🔗](#class-particleprocessmaterial-property-emission-normal-texture)

- void **set\_emission\_normal\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_emission\_normal\_texture**()


Particle velocity and rotation will be set by sampling this texture at the same point as the [emission\_point\_texture](#class-particleprocessmaterial-property-emission-point-texture). Used only in [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-particleprocessmaterial-constant-emission-shape-directed-points). Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.

* * *

[int](class_int.md#class-int) **emission\_point\_count** [🔗](#class-particleprocessmaterial-property-emission-point-count)

- void **set\_emission\_point\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_emission\_point\_count**()


The number of emission points if [emission\_shape](#class-particleprocessmaterial-property-emission-shape) is set to [EMISSION\_SHAPE\_POINTS](#class-particleprocessmaterial-constant-emission-shape-points) or [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-particleprocessmaterial-constant-emission-shape-directed-points).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **emission\_point\_texture** [🔗](#class-particleprocessmaterial-property-emission-point-texture)

- void **set\_emission\_point\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_emission\_point\_texture**()


Particles will be emitted at positions determined by sampling this texture at a random position. Used with [EMISSION\_SHAPE\_POINTS](#class-particleprocessmaterial-constant-emission-shape-points) and [EMISSION\_SHAPE\_DIRECTED\_POINTS](#class-particleprocessmaterial-constant-emission-shape-directed-points). Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_ring\_axis** [🔗](#class-particleprocessmaterial-property-emission-ring-axis)

- void **set\_emission\_ring\_axis**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_ring\_axis**()


The axis of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-particleprocessmaterial-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_cone\_angle** [🔗](#class-particleprocessmaterial-property-emission-ring-cone-angle)

- void **set\_emission\_ring\_cone\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_cone\_angle**()


The angle of the cone when using the emitter [EMISSION\_SHAPE\_RING](#class-particleprocessmaterial-constant-emission-shape-ring). The default angle of 90 degrees results in a ring, while an angle of 0 degrees results in a cone. Intermediate values will result in a ring where one end is larger than the other.

**Note:** Depending on [emission\_ring\_height](#class-particleprocessmaterial-property-emission-ring-height), the angle may be clamped if the ring's end is reached to form a perfect cone.

* * *

[float](class_float.md#class-float) **emission\_ring\_height** [🔗](#class-particleprocessmaterial-property-emission-ring-height)

- void **set\_emission\_ring\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_height**()


The height of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-particleprocessmaterial-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_inner\_radius** [🔗](#class-particleprocessmaterial-property-emission-ring-inner-radius)

- void **set\_emission\_ring\_inner\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_inner\_radius**()


The inner radius of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-particleprocessmaterial-constant-emission-shape-ring).

* * *

[float](class_float.md#class-float) **emission\_ring\_radius** [🔗](#class-particleprocessmaterial-property-emission-ring-radius)

- void **set\_emission\_ring\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_ring\_radius**()


The radius of the ring when using the emitter [EMISSION\_SHAPE\_RING](#class-particleprocessmaterial-constant-emission-shape-ring).

* * *

[EmissionShape](#enum-particleprocessmaterial-emissionshape) **emission\_shape** = `0` [🔗](#class-particleprocessmaterial-property-emission-shape)

- void **set\_emission\_shape**(value: [EmissionShape](#enum-particleprocessmaterial-emissionshape))

- [EmissionShape](#enum-particleprocessmaterial-emissionshape) **get\_emission\_shape**()


Particles will be emitted inside this region.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_shape\_offset** = `Vector3(0, 0, 0)` [🔗](#class-particleprocessmaterial-property-emission-shape-offset)

- void **set\_emission\_shape\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_shape\_offset**()


The offset for the [emission\_shape](#class-particleprocessmaterial-property-emission-shape), in local space.

* * *

[Vector3](class_vector3.md#class-vector3) **emission\_shape\_scale** = `Vector3(1, 1, 1)` [🔗](#class-particleprocessmaterial-property-emission-shape-scale)

- void **set\_emission\_shape\_scale**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_emission\_shape\_scale**()


The scale of the [emission\_shape](#class-particleprocessmaterial-property-emission-shape), in local space.

* * *

[float](class_float.md#class-float) **emission\_sphere\_radius** [🔗](#class-particleprocessmaterial-property-emission-sphere-radius)

- void **set\_emission\_sphere\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_sphere\_radius**()


The sphere's radius if [emission\_shape](#class-particleprocessmaterial-property-emission-shape) is set to [EMISSION\_SHAPE\_SPHERE](#class-particleprocessmaterial-constant-emission-shape-sphere).

* * *

[float](class_float.md#class-float) **flatness** = `0.0` [🔗](#class-particleprocessmaterial-property-flatness)

- void **set\_flatness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_flatness**()


Amount of [spread](#class-particleprocessmaterial-property-spread) along the Y axis.

* * *

[Vector3](class_vector3.md#class-vector3) **gravity** = `Vector3(0, -9.8, 0)` [🔗](#class-particleprocessmaterial-property-gravity)

- void **set\_gravity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_gravity**()


Gravity applied to every particle.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **hue\_variation\_curve** [🔗](#class-particleprocessmaterial-property-hue-variation-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's hue will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **hue\_variation\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-hue-variation-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum initial hue variation applied to each particle. It will shift the particle color's hue.

* * *

[float](class_float.md#class-float) **hue\_variation\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-hue-variation-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [hue\_variation\_max](#class-particleprocessmaterial-property-hue-variation-max).

* * *

[float](class_float.md#class-float) **inherit\_velocity\_ratio** = `0.0` [🔗](#class-particleprocessmaterial-property-inherit-velocity-ratio)

- void **set\_inherit\_velocity\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_inherit\_velocity\_ratio**()


Percentage of the velocity of the respective [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) or [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) inherited by each particle when spawning.

* * *

[float](class_float.md#class-float) **initial\_velocity\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-initial-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum initial velocity magnitude for each particle. Direction comes from [direction](#class-particleprocessmaterial-property-direction) and [spread](#class-particleprocessmaterial-property-spread).

* * *

[float](class_float.md#class-float) **initial\_velocity\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-initial-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [initial\_velocity\_max](#class-particleprocessmaterial-property-initial-velocity-max).

* * *

[float](class_float.md#class-float) **lifetime\_randomness** = `0.0` [🔗](#class-particleprocessmaterial-property-lifetime-randomness)

- void **set\_lifetime\_randomness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime\_randomness**()


Particle lifetime randomness ratio. The equation for the lifetime of a particle is `lifetime * (1.0 - randf() * lifetime_randomness)`. For example, a [lifetime\_randomness](#class-particleprocessmaterial-property-lifetime-randomness) of `0.4` scales the lifetime between `0.6` to `1.0` of its original value.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **linear\_accel\_curve** [🔗](#class-particleprocessmaterial-property-linear-accel-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's linear acceleration will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **linear\_accel\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-linear-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum linear acceleration applied to each particle in the direction of motion.

* * *

[float](class_float.md#class-float) **linear\_accel\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-linear-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [linear\_accel\_max](#class-particleprocessmaterial-property-linear-accel-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **orbit\_velocity\_curve** [🔗](#class-particleprocessmaterial-property-orbit-velocity-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's orbital velocity will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

**Note:** For 3D orbital velocity, use a [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture).

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **orbit\_velocity\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-orbit-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum orbital velocity applied to each particle. Makes the particles circle around origin. Specified in number of full rotations around origin per second.

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **orbit\_velocity\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-orbit-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [orbit\_velocity\_max](#class-particleprocessmaterial-property-orbit-velocity-max).

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_align\_y** = `false` [🔗](#class-particleprocessmaterial-property-particle-flag-align-y)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const


Align Y axis of particle with the direction of its velocity.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_damping\_as\_friction** = `false` [🔗](#class-particleprocessmaterial-property-particle-flag-damping-as-friction)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const


Changes the behavior of the damping properties from a linear deceleration to a deceleration based on speed percentage.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_disable\_z** = `false` [🔗](#class-particleprocessmaterial-property-particle-flag-disable-z)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const


If `true`, particles will not move on the z axis.

* * *

[bool](class_bool.md#class-bool) **particle\_flag\_rotate\_y** = `false` [🔗](#class-particleprocessmaterial-property-particle-flag-rotate-y)

- void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const


If `true`, particles rotate around Y axis by [angle\_min](#class-particleprocessmaterial-property-angle-min).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radial\_accel\_curve** [🔗](#class-particleprocessmaterial-property-radial-accel-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's radial acceleration will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **radial\_accel\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-radial-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum radial acceleration applied to each particle. Makes particle accelerate away from the origin or towards it if negative.

* * *

[float](class_float.md#class-float) **radial\_accel\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-radial-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [radial\_accel\_max](#class-particleprocessmaterial-property-radial-accel-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **radial\_velocity\_curve** [🔗](#class-particleprocessmaterial-property-radial-velocity-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


A [CurveTexture](class_curvetexture.md#class-curvetexture) that defines the velocity over the particle's lifetime away (or toward) the [velocity\_pivot](#class-particleprocessmaterial-property-velocity-pivot).

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **radial\_velocity\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-radial-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum radial velocity applied to each particle. Makes particles move away from the [velocity\_pivot](#class-particleprocessmaterial-property-velocity-pivot), or toward it if negative.

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[float](class_float.md#class-float) **radial\_velocity\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-radial-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum radial velocity applied to each particle. Makes particles move away from the [velocity\_pivot](#class-particleprocessmaterial-property-velocity-pivot), or toward it if negative.

**Note:** Animated velocities will not be affected by damping, use [velocity\_limit\_curve](#class-particleprocessmaterial-property-velocity-limit-curve) instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **scale\_curve** [🔗](#class-particleprocessmaterial-property-scale-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's scale will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture) over its lifetime. If a [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture) is supplied instead, the scale will be separated per-axis.

* * *

[float](class_float.md#class-float) **scale\_max** = `1.0` [🔗](#class-particleprocessmaterial-property-scale-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum initial scale applied to each particle.

* * *

[float](class_float.md#class-float) **scale\_min** = `1.0` [🔗](#class-particleprocessmaterial-property-scale-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [scale\_max](#class-particleprocessmaterial-property-scale-max).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **scale\_over\_velocity\_curve** [🔗](#class-particleprocessmaterial-property-scale-over-velocity-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Either a [CurveTexture](class_curvetexture.md#class-curvetexture) or a [CurveXYZTexture](class_curvexyztexture.md#class-curvexyztexture) that scales each particle based on its velocity.

* * *

[float](class_float.md#class-float) **scale\_over\_velocity\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-scale-over-velocity-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum velocity value reference for [scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve).

[scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve) will be interpolated between [scale\_over\_velocity\_min](#class-particleprocessmaterial-property-scale-over-velocity-min) and [scale\_over\_velocity\_max](#class-particleprocessmaterial-property-scale-over-velocity-max).

* * *

[float](class_float.md#class-float) **scale\_over\_velocity\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-scale-over-velocity-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum velocity value reference for [scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve).

[scale\_over\_velocity\_curve](#class-particleprocessmaterial-property-scale-over-velocity-curve) will be interpolated between [scale\_over\_velocity\_min](#class-particleprocessmaterial-property-scale-over-velocity-min) and [scale\_over\_velocity\_max](#class-particleprocessmaterial-property-scale-over-velocity-max).

* * *

[float](class_float.md#class-float) **spread** = `45.0` [🔗](#class-particleprocessmaterial-property-spread)

- void **set\_spread**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_spread**()


Each particle's initial direction range from `+spread` to `-spread` degrees.

* * *

[int](class_int.md#class-int) **sub\_emitter\_amount\_at\_collision** [🔗](#class-particleprocessmaterial-property-sub-emitter-amount-at-collision)

- void **set\_sub\_emitter\_amount\_at\_collision**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sub\_emitter\_amount\_at\_collision**()


The amount of particles to spawn from the subemitter node when a collision occurs. When combined with [COLLISION\_HIDE\_ON\_CONTACT](#class-particleprocessmaterial-constant-collision-hide-on-contact) on the main particles material, this can be used to achieve effects such as raindrops hitting the ground.

**Note:** This value shouldn't exceed [GPUParticles2D.amount](class_gpuparticles2d.md#class-gpuparticles2d-property-amount) or [GPUParticles3D.amount](class_gpuparticles3d.md#class-gpuparticles3d-property-amount) defined on the _subemitter node_ (not the main node), relative to the subemitter's particle lifetime. If the number of particles is exceeded, no new particles will spawn from the subemitter until enough particles have expired.

* * *

[int](class_int.md#class-int) **sub\_emitter\_amount\_at\_end** [🔗](#class-particleprocessmaterial-property-sub-emitter-amount-at-end)

- void **set\_sub\_emitter\_amount\_at\_end**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sub\_emitter\_amount\_at\_end**()


The amount of particles to spawn from the subemitter node when the particle expires.

**Note:** This value shouldn't exceed [GPUParticles2D.amount](class_gpuparticles2d.md#class-gpuparticles2d-property-amount) or [GPUParticles3D.amount](class_gpuparticles3d.md#class-gpuparticles3d-property-amount) defined on the _subemitter node_ (not the main node), relative to the subemitter's particle lifetime. If the number of particles is exceeded, no new particles will spawn from the subemitter until enough particles have expired.

* * *

[int](class_int.md#class-int) **sub\_emitter\_amount\_at\_start** [🔗](#class-particleprocessmaterial-property-sub-emitter-amount-at-start)

- void **set\_sub\_emitter\_amount\_at\_start**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sub\_emitter\_amount\_at\_start**()


The amount of particles to spawn from the subemitter node when the particle spawns.

**Note:** This value shouldn't exceed [GPUParticles2D.amount](class_gpuparticles2d.md#class-gpuparticles2d-property-amount) or [GPUParticles3D.amount](class_gpuparticles3d.md#class-gpuparticles3d-property-amount) defined on the _subemitter node_ (not the main node), relative to the subemitter's particle lifetime. If the number of particles is exceeded, no new particles will spawn from the subemitter until enough particles have expired.

* * *

[float](class_float.md#class-float) **sub\_emitter\_frequency** [🔗](#class-particleprocessmaterial-property-sub-emitter-frequency)

- void **set\_sub\_emitter\_frequency**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sub\_emitter\_frequency**()


The frequency at which particles should be emitted from the subemitter node. One particle will be spawned every [sub\_emitter\_frequency](#class-particleprocessmaterial-property-sub-emitter-frequency) seconds.

**Note:** This value shouldn't exceed [GPUParticles2D.amount](class_gpuparticles2d.md#class-gpuparticles2d-property-amount) or [GPUParticles3D.amount](class_gpuparticles3d.md#class-gpuparticles3d-property-amount) defined on the _subemitter node_ (not the main node), relative to the subemitter's particle lifetime. If the number of particles is exceeded, no new particles will spawn from the subemitter until enough particles have expired.

* * *

[bool](class_bool.md#class-bool) **sub\_emitter\_keep\_velocity** = `false` [🔗](#class-particleprocessmaterial-property-sub-emitter-keep-velocity)

- void **set\_sub\_emitter\_keep\_velocity**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_sub\_emitter\_keep\_velocity**()


If `true`, the subemitter inherits the parent particle's velocity when it spawns.

* * *

[SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **sub\_emitter\_mode** = `0` [🔗](#class-particleprocessmaterial-property-sub-emitter-mode)

- void **set\_sub\_emitter\_mode**(value: [SubEmitterMode](#enum-particleprocessmaterial-subemittermode))

- [SubEmitterMode](#enum-particleprocessmaterial-subemittermode) **get\_sub\_emitter\_mode**()


The particle subemitter mode (see [GPUParticles2D.sub\_emitter](class_gpuparticles2d.md#class-gpuparticles2d-property-sub-emitter) and [GPUParticles3D.sub\_emitter](class_gpuparticles3d.md#class-gpuparticles3d-property-sub-emitter)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **tangential\_accel\_curve** [🔗](#class-particleprocessmaterial-property-tangential-accel-curve)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's tangential acceleration will vary along this [CurveTexture](class_curvetexture.md#class-curvetexture).

* * *

[float](class_float.md#class-float) **tangential\_accel\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-tangential-accel-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity giving the particles a swirling motion.

* * *

[float](class_float.md#class-float) **tangential\_accel\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-tangential-accel-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum equivalent of [tangential\_accel\_max](#class-particleprocessmaterial-property-tangential-accel-max).

* * *

[bool](class_bool.md#class-bool) **turbulence\_enabled** = `false` [🔗](#class-particleprocessmaterial-property-turbulence-enabled)

- void **set\_turbulence\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_turbulence\_enabled**()


If `true`, enables turbulence for the particle system. Turbulence can be used to vary particle movement according to its position (based on a 3D noise pattern). In 3D, [GPUParticlesAttractorVectorField3D](class_gpuparticlesattractorvectorfield3d.md#class-gpuparticlesattractorvectorfield3d) with [NoiseTexture3D](class_noisetexture3d.md#class-noisetexture3d) can be used as an alternative to turbulence that works in world space and with multiple particle systems reacting in the same way.

**Note:** Enabling turbulence has a high performance cost on the GPU. Only enable turbulence on a few particle systems at once at most, and consider disabling it when targeting mobile/web platforms.

* * *

[float](class_float.md#class-float) **turbulence\_influence\_max** = `0.1` [🔗](#class-particleprocessmaterial-property-turbulence-influence-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum turbulence influence on each particle.

The actual amount of turbulence influence on each particle is calculated as a random value between [turbulence\_influence\_min](#class-particleprocessmaterial-property-turbulence-influence-min) and [turbulence\_influence\_max](#class-particleprocessmaterial-property-turbulence-influence-max) and multiplied by the amount of turbulence influence from [turbulence\_influence\_over\_life](#class-particleprocessmaterial-property-turbulence-influence-over-life).

* * *

[float](class_float.md#class-float) **turbulence\_influence\_min** = `0.1` [🔗](#class-particleprocessmaterial-property-turbulence-influence-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum turbulence influence on each particle.

The actual amount of turbulence influence on each particle is calculated as a random value between [turbulence\_influence\_min](#class-particleprocessmaterial-property-turbulence-influence-min) and [turbulence\_influence\_max](#class-particleprocessmaterial-property-turbulence-influence-max) and multiplied by the amount of turbulence influence from [turbulence\_influence\_over\_life](#class-particleprocessmaterial-property-turbulence-influence-over-life).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **turbulence\_influence\_over\_life** [🔗](#class-particleprocessmaterial-property-turbulence-influence-over-life)

- void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Each particle's amount of turbulence will be influenced along this [CurveTexture](class_curvetexture.md#class-curvetexture) over its life time.

* * *

[float](class_float.md#class-float) **turbulence\_initial\_displacement\_max** = `0.0` [🔗](#class-particleprocessmaterial-property-turbulence-initial-displacement-max)

- void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Maximum displacement of each particle's spawn position by the turbulence.

The actual amount of displacement will be a factor of the underlying turbulence multiplied by a random value between [turbulence\_initial\_displacement\_min](#class-particleprocessmaterial-property-turbulence-initial-displacement-min) and [turbulence\_initial\_displacement\_max](#class-particleprocessmaterial-property-turbulence-initial-displacement-max).

* * *

[float](class_float.md#class-float) **turbulence\_initial\_displacement\_min** = `0.0` [🔗](#class-particleprocessmaterial-property-turbulence-initial-displacement-min)

- void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const


Minimum displacement of each particle's spawn position by the turbulence.

The actual amount of displacement will be a factor of the underlying turbulence multiplied by a random value between [turbulence\_initial\_displacement\_min](#class-particleprocessmaterial-property-turbulence-initial-displacement-min) and [turbulence\_initial\_displacement\_max](#class-particleprocessmaterial-property-turbulence-initial-displacement-max).

* * *

[float](class_float.md#class-float) **turbulence\_noise\_scale** = `9.0` [🔗](#class-particleprocessmaterial-property-turbulence-noise-scale)

- void **set\_turbulence\_noise\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_turbulence\_noise\_scale**()


This value controls the overall scale/frequency of the turbulence noise pattern.

A small scale will result in smaller features with more detail while a high scale will result in smoother noise with larger features.

* * *

[Vector3](class_vector3.md#class-vector3) **turbulence\_noise\_speed** = `Vector3(0, 0, 0)` [🔗](#class-particleprocessmaterial-property-turbulence-noise-speed)

- void **set\_turbulence\_noise\_speed**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_turbulence\_noise\_speed**()


A scrolling velocity for the turbulence field. This sets a directional trend for the pattern to move in over time.

The default value of `Vector3(0, 0, 0)` turns off the scrolling.

* * *

[float](class_float.md#class-float) **turbulence\_noise\_speed\_random** = `0.2` [🔗](#class-particleprocessmaterial-property-turbulence-noise-speed-random)

- void **set\_turbulence\_noise\_speed\_random**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_turbulence\_noise\_speed\_random**()


The in-place rate of change of the turbulence field. This defines how quickly the noise pattern varies over time.

A value of 0.0 will result in a fixed pattern.

* * *

[float](class_float.md#class-float) **turbulence\_noise\_strength** = `1.0` [🔗](#class-particleprocessmaterial-property-turbulence-noise-strength)

- void **set\_turbulence\_noise\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_turbulence\_noise\_strength**()


The turbulence noise strength. Increasing this will result in a stronger, more contrasting, flow pattern.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **velocity\_limit\_curve** [🔗](#class-particleprocessmaterial-property-velocity-limit-curve)

- void **set\_velocity\_limit\_curve**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_velocity\_limit\_curve**()


A [CurveTexture](class_curvetexture.md#class-curvetexture) that defines the maximum velocity of a particle during its lifetime.

* * *

[Vector3](class_vector3.md#class-vector3) **velocity\_pivot** = `Vector3(0, 0, 0)` [🔗](#class-particleprocessmaterial-property-velocity-pivot)

- void **set\_velocity\_pivot**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_velocity\_pivot**()


A pivot point used to calculate radial and orbital velocity of particles.

* * *

## Method Descriptions

[Vector2](class_vector2.md#class-vector2) **get\_param**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const [🔗](#class-particleprocessmaterial-method-get-param)

Returns the minimum and maximum values of the given `param` as a vector.

The `x` component of the returned vector corresponds to minimum and the `y` component corresponds to maximum.

* * *

[float](class_float.md#class-float) **get\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const [🔗](#class-particleprocessmaterial-method-get-param-max)

Returns the maximum value range for the given parameter.

* * *

[float](class_float.md#class-float) **get\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const [🔗](#class-particleprocessmaterial-method-get-param-min)

Returns the minimum value range for the given parameter.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter)) const [🔗](#class-particleprocessmaterial-method-get-param-texture)

Returns the [Texture2D](class_texture2d.md#class-texture2d) used by the specified parameter.

* * *

[bool](class_bool.md#class-bool) **get\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags)) const [🔗](#class-particleprocessmaterial-method-get-particle-flag)

Returns `true` if the specified particle flag is enabled.

* * *

void **set\_param**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-particleprocessmaterial-method-set-param)

Sets the minimum and maximum values of the given `param`.

The `x` component of the argument vector corresponds to minimum and the `y` component corresponds to maximum.

* * *

void **set\_param\_max**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float)) [🔗](#class-particleprocessmaterial-method-set-param-max)

Sets the maximum value range for the given parameter.

* * *

void **set\_param\_min**(param: [Parameter](#enum-particleprocessmaterial-parameter), value: [float](class_float.md#class-float)) [🔗](#class-particleprocessmaterial-method-set-param-min)

Sets the minimum value range for the given parameter.

* * *

void **set\_param\_texture**(param: [Parameter](#enum-particleprocessmaterial-parameter), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-particleprocessmaterial-method-set-param-texture)

Sets the [Texture2D](class_texture2d.md#class-texture2d) for the specified [Parameter](#enum-particleprocessmaterial-parameter).

* * *

void **set\_particle\_flag**(particle\_flag: [ParticleFlags](#enum-particleprocessmaterial-particleflags), enable: [bool](class_bool.md#class-bool)) [🔗](#class-particleprocessmaterial-method-set-particle-flag)

Sets the `particle_flag` to `enable`.

[Previous](class_panoramaskymaterial.md "PanoramaSkyMaterial") [Next](class_physicalskymaterial.md "PhysicalSkyMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_panoramaskymaterial.md "PanoramaSkyMaterial") [Next](class_physicalskymaterial.md "PhysicalSkyMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).