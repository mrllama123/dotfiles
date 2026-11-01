---
title: GPUParticles3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticles3d.html
crawled_at: "2026-08-13T10:27:46+12:00"
content_hash: 2766e203972a792d08d952314597f9189cab31a1b3d00c391f5b126f7a777f51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticles3D

* * *

# GPUParticles3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D particle emitter.

## Description

3D particle node used to create a variety of particle systems and effects. **GPUParticles3D** features an emitter that generates some number of particles at a given rate.

Use [process\_material](#class-gpuparticles3d-property-process-material) to add a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial) to configure particle appearance and behavior. Alternatively, you can add a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) which will be applied to all particles.

## Tutorials

- [Particle systems (3D)](../tutorials/3d/particles/index.md)

- [Controlling thousands of fish with Particles](../tutorials/performance/vertex_animation/controlling_thousands_of_fish.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [amount](#class-gpuparticles3d-property-amount) | `8` |
| [float](class_float.md#class-float) | [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) | `1.0` |
| [float](class_float.md#class-float) | [collision\_base\_size](#class-gpuparticles3d-property-collision-base-size) | `0.01` |
| [DrawOrder](#enum-gpuparticles3d-draworder) | [draw\_order](#class-gpuparticles3d-property-draw-order) | `0` |
| [Mesh](class_mesh.md#class-mesh) | [draw\_pass\_1](#class-gpuparticles3d-property-draw-pass-1) |  |
| [Mesh](class_mesh.md#class-mesh) | [draw\_pass\_2](#class-gpuparticles3d-property-draw-pass-2) |  |
| [Mesh](class_mesh.md#class-mesh) | [draw\_pass\_3](#class-gpuparticles3d-property-draw-pass-3) |  |
| [Mesh](class_mesh.md#class-mesh) | [draw\_pass\_4](#class-gpuparticles3d-property-draw-pass-4) |  |
| [int](class_int.md#class-int) | [draw\_passes](#class-gpuparticles3d-property-draw-passes) | `1` |
| [Skin](class_skin.md#class-skin) | [draw\_skin](#class-gpuparticles3d-property-draw-skin) |  |
| [bool](class_bool.md#class-bool) | [emitting](#class-gpuparticles3d-property-emitting) | `true` |
| [float](class_float.md#class-float) | [explosiveness](#class-gpuparticles3d-property-explosiveness) | `0.0` |
| [int](class_int.md#class-int) | [fixed\_fps](#class-gpuparticles3d-property-fixed-fps) | `30` |
| [bool](class_bool.md#class-bool) | [fract\_delta](#class-gpuparticles3d-property-fract-delta) | `true` |
| [float](class_float.md#class-float) | [interp\_to\_end](#class-gpuparticles3d-property-interp-to-end) | `0.0` |
| [bool](class_bool.md#class-bool) | [interpolate](#class-gpuparticles3d-property-interpolate) | `true` |
| [float](class_float.md#class-float) | [lifetime](#class-gpuparticles3d-property-lifetime) | `1.0` |
| [bool](class_bool.md#class-bool) | [local\_coords](#class-gpuparticles3d-property-local-coords) | `false` |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-gpuparticles3d-property-one-shot) | `false` |
| [float](class_float.md#class-float) | [preprocess](#class-gpuparticles3d-property-preprocess) | `0.0` |
| [Material](class_material.md#class-material) | [process\_material](#class-gpuparticles3d-property-process-material) |  |
| [float](class_float.md#class-float) | [randomness](#class-gpuparticles3d-property-randomness) | `0.0` |
| [int](class_int.md#class-int) | [seed](#class-gpuparticles3d-property-seed) | `0` |
| [float](class_float.md#class-float) | [speed\_scale](#class-gpuparticles3d-property-speed-scale) | `1.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [sub\_emitter](#class-gpuparticles3d-property-sub-emitter) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [trail\_enabled](#class-gpuparticles3d-property-trail-enabled) | `false` |
| [float](class_float.md#class-float) | [trail\_lifetime](#class-gpuparticles3d-property-trail-lifetime) | `0.3` |
| [TransformAlign](#enum-gpuparticles3d-transformalign) | [transform\_align](#class-gpuparticles3d-property-transform-align) | `0` |
| [bool](class_bool.md#class-bool) | [use\_fixed\_seed](#class-gpuparticles3d-property-use-fixed-seed) | `false` |
| [AABB](class_aabb.md#class-aabb) | [visibility\_aabb](#class-gpuparticles3d-property-visibility-aabb) | `AABB(-4, -4, -4, 8, 8, 8)` |

## Methods

|     |     |
| --- | --- |
| [AABB](class_aabb.md#class-aabb) | [capture\_aabb](#class-gpuparticles3d-method-capture-aabb)() const |
| void | [convert\_from\_particles](#class-gpuparticles3d-method-convert-from-particles)(particles: [Node](class_node.md#class-node)) |
| void | [emit\_particle](#class-gpuparticles3d-method-emit-particle)(xform: [Transform3D](class_transform3d.md#class-transform3d), velocity: [Vector3](class_vector3.md#class-vector3), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), flags: [int](class_int.md#class-int)) |
| [Mesh](class_mesh.md#class-mesh) | [get\_draw\_pass\_mesh](#class-gpuparticles3d-method-get-draw-pass-mesh)(pass: [int](class_int.md#class-int)) const |
| void | [request\_particles\_process](#class-gpuparticles3d-method-request-particles-process)(process\_time: [float](class_float.md#class-float)) |
| void | [restart](#class-gpuparticles3d-method-restart)(keep\_seed: [bool](class_bool.md#class-bool) = false) |
| void | [set\_draw\_pass\_mesh](#class-gpuparticles3d-method-set-draw-pass-mesh)(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh)) |

* * *

## Signals

**finished**() [🔗](#class-gpuparticles3d-signal-finished)

Emitted when all active particles have finished processing. To immediately restart the emission cycle, call [restart()](#class-gpuparticles3d-method-restart).

This signal is never emitted when [one\_shot](#class-gpuparticles3d-property-one-shot) is disabled, as particles will be emitted and processed continuously.

**Note:** For [one\_shot](#class-gpuparticles3d-property-one-shot) emitters, due to the particles being computed on the GPU, there may be a short period after receiving the signal during which setting [emitting](#class-gpuparticles3d-property-emitting) to `true` will not restart the emission cycle. This delay is avoided by instead calling [restart()](#class-gpuparticles3d-method-restart).

* * *

## Enumerations

enum **DrawOrder**: [🔗](#enum-gpuparticles3d-draworder)

[DrawOrder](#enum-gpuparticles3d-draworder) **DRAW\_ORDER\_INDEX** = `0`

Particles are drawn in the order emitted.

[DrawOrder](#enum-gpuparticles3d-draworder) **DRAW\_ORDER\_LIFETIME** = `1`

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

[DrawOrder](#enum-gpuparticles3d-draworder) **DRAW\_ORDER\_REVERSE\_LIFETIME** = `2`

Particles are drawn in reverse order of remaining lifetime. In other words, the particle with the lowest lifetime is drawn at the front.

[DrawOrder](#enum-gpuparticles3d-draworder) **DRAW\_ORDER\_VIEW\_DEPTH** = `3`

Particles are drawn in order of depth.

* * *

enum **EmitFlags**: [🔗](#enum-gpuparticles3d-emitflags)

[EmitFlags](#enum-gpuparticles3d-emitflags) **EMIT\_FLAG\_POSITION** = `1`

Particle starts at the specified position.

[EmitFlags](#enum-gpuparticles3d-emitflags) **EMIT\_FLAG\_ROTATION\_SCALE** = `2`

Particle starts with specified rotation and scale.

[EmitFlags](#enum-gpuparticles3d-emitflags) **EMIT\_FLAG\_VELOCITY** = `4`

Particle starts with the specified velocity vector, which defines the emission direction and speed.

[EmitFlags](#enum-gpuparticles3d-emitflags) **EMIT\_FLAG\_COLOR** = `8`

Particle starts with specified color.

[EmitFlags](#enum-gpuparticles3d-emitflags) **EMIT\_FLAG\_CUSTOM** = `16`

Particle starts with specified `CUSTOM` data.

* * *

enum **TransformAlign**: [🔗](#enum-gpuparticles3d-transformalign)

[TransformAlign](#enum-gpuparticles3d-transformalign) **TRANSFORM\_ALIGN\_DISABLED** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[TransformAlign](#enum-gpuparticles3d-transformalign) **TRANSFORM\_ALIGN\_Z\_BILLBOARD** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[TransformAlign](#enum-gpuparticles3d-transformalign) **TRANSFORM\_ALIGN\_Y\_TO\_VELOCITY** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[TransformAlign](#enum-gpuparticles3d-transformalign) **TRANSFORM\_ALIGN\_Z\_BILLBOARD\_Y\_TO\_VELOCITY** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Constants

**MAX\_DRAW\_PASSES** = `4` [🔗](#class-gpuparticles3d-constant-max-draw-passes)

Maximum number of draw passes supported.

* * *

## Property Descriptions

[int](class_int.md#class-int) **amount** = `8` [🔗](#class-gpuparticles3d-property-amount)

- void **set\_amount**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_amount**()


The number of particles to emit in one emission cycle. The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second. Higher values will increase GPU requirements, even if not all particles are visible at a given time or if [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) is decreased.

**Note:** Changing this value will cause the particle system to restart. To avoid this, change [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) instead.

* * *

[float](class_float.md#class-float) **amount\_ratio** = `1.0` [🔗](#class-gpuparticles3d-property-amount-ratio)

- void **set\_amount\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_amount\_ratio**()


The ratio of particles that should actually be emitted. If set to a value lower than `1.0`, this will set the amount of emitted particles throughout the lifetime to `amount * amount_ratio`. Unlike changing [amount](#class-gpuparticles3d-property-amount), changing [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) while emitting does not affect already-emitted particles and doesn't cause the particle system to restart. [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) can be used to create effects that make the number of emitted particles vary over time.

**Note:** Reducing the [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) has no performance benefit, since resources need to be allocated and processed for the total [amount](#class-gpuparticles3d-property-amount) of particles regardless of the [amount\_ratio](#class-gpuparticles3d-property-amount-ratio). If you don't intend to change the number of particles emitted while the particles are emitting, make sure [amount\_ratio](#class-gpuparticles3d-property-amount-ratio) is set to `1` and change [amount](#class-gpuparticles3d-property-amount) to your liking instead.

* * *

[float](class_float.md#class-float) **collision\_base\_size** = `0.01` [🔗](#class-gpuparticles3d-property-collision-base-size)

- void **set\_collision\_base\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_base\_size**()


The base diameter for particle collision in meters. If particles appear to sink into the ground when colliding, increase this value. If particles appear to float when colliding, decrease this value. Only effective if [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) is [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact).

**Note:** Particles always have a spherical collision shape.

* * *

[DrawOrder](#enum-gpuparticles3d-draworder) **draw\_order** = `0` [🔗](#class-gpuparticles3d-property-draw-order)

- void **set\_draw\_order**(value: [DrawOrder](#enum-gpuparticles3d-draworder))

- [DrawOrder](#enum-gpuparticles3d-draworder) **get\_draw\_order**()


Particle draw order.

**Note:** [DRAW\_ORDER\_INDEX](#class-gpuparticles3d-constant-draw-order-index) is the only option that supports motion vectors for effects like TAA. It is suggested to use this draw order if the particles are opaque to fix ghosting artifacts.

* * *

[Mesh](class_mesh.md#class-mesh) **draw\_pass\_1** [🔗](#class-gpuparticles3d-property-draw-pass-1)

- void **set\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int)) const


[Mesh](class_mesh.md#class-mesh) that is drawn for the first draw pass.

* * *

[Mesh](class_mesh.md#class-mesh) **draw\_pass\_2** [🔗](#class-gpuparticles3d-property-draw-pass-2)

- void **set\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int)) const


[Mesh](class_mesh.md#class-mesh) that is drawn for the second draw pass.

* * *

[Mesh](class_mesh.md#class-mesh) **draw\_pass\_3** [🔗](#class-gpuparticles3d-property-draw-pass-3)

- void **set\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int)) const


[Mesh](class_mesh.md#class-mesh) that is drawn for the third draw pass.

* * *

[Mesh](class_mesh.md#class-mesh) **draw\_pass\_4** [🔗](#class-gpuparticles3d-property-draw-pass-4)

- void **set\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int)) const


[Mesh](class_mesh.md#class-mesh) that is drawn for the fourth draw pass.

* * *

[int](class_int.md#class-int) **draw\_passes** = `1` [🔗](#class-gpuparticles3d-property-draw-passes)

- void **set\_draw\_passes**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_draw\_passes**()


The number of draw passes when rendering particles.

* * *

[Skin](class_skin.md#class-skin) **draw\_skin** [🔗](#class-gpuparticles3d-property-draw-skin)

- void **set\_skin**(value: [Skin](class_skin.md#class-skin))

- [Skin](class_skin.md#class-skin) **get\_skin**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **emitting** = `true` [🔗](#class-gpuparticles3d-property-emitting)

- void **set\_emitting**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emitting**()


If `true`, particles are being emitted. [emitting](#class-gpuparticles3d-property-emitting) can be used to start and stop particles from emitting. However, if [one\_shot](#class-gpuparticles3d-property-one-shot) is `true` setting [emitting](#class-gpuparticles3d-property-emitting) to `true` will not restart the emission cycle unless all active particles have finished processing. Use the [finished](#class-gpuparticles3d-signal-finished) signal to be notified once all active particles finish processing.

**Note:** For [one\_shot](#class-gpuparticles3d-property-one-shot) emitters, due to the particles being computed on the GPU, there may be a short period after receiving the [finished](#class-gpuparticles3d-signal-finished) signal during which setting this to `true` will not restart the emission cycle.

**Tip:** If your [one\_shot](#class-gpuparticles3d-property-one-shot) emitter needs to immediately restart emitting particles once [finished](#class-gpuparticles3d-signal-finished) signal is received, consider calling [restart()](#class-gpuparticles3d-method-restart) instead of setting [emitting](#class-gpuparticles3d-property-emitting).

* * *

[float](class_float.md#class-float) **explosiveness** = `0.0` [🔗](#class-gpuparticles3d-property-explosiveness)

- void **set\_explosiveness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_explosiveness\_ratio**()


Time ratio between each emission. If `0`, particles are emitted continuously. If `1`, all particles are emitted simultaneously.

* * *

[int](class_int.md#class-int) **fixed\_fps** = `30` [🔗](#class-gpuparticles3d-property-fixed-fps)

- void **set\_fixed\_fps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_fps**()


The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.

* * *

[bool](class_bool.md#class-bool) **fract\_delta** = `true` [🔗](#class-gpuparticles3d-property-fract-delta)

- void **set\_fractional\_delta**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_fractional\_delta**()


If `true`, results in fractional delta calculation which has a smoother particles display effect.

* * *

[float](class_float.md#class-float) **interp\_to\_end** = `0.0` [🔗](#class-gpuparticles3d-property-interp-to-end)

- void **set\_interp\_to\_end**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_interp\_to\_end**()


Causes all the particles in this node to interpolate towards the end of their lifetime.

**Note:** This only works when used with a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial). It needs to be manually implemented for custom process shaders.

* * *

[bool](class_bool.md#class-bool) **interpolate** = `true` [🔗](#class-gpuparticles3d-property-interpolate)

- void **set\_interpolate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_interpolate**()


Enables particle interpolation, which makes the particle movement smoother when their [fixed\_fps](#class-gpuparticles3d-property-fixed-fps) is lower than the screen refresh rate.

* * *

[float](class_float.md#class-float) **lifetime** = `1.0` [🔗](#class-gpuparticles3d-property-lifetime)

- void **set\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime**()


The amount of time each particle will exist (in seconds). The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second.

* * *

[bool](class_bool.md#class-bool) **local\_coords** = `false` [🔗](#class-gpuparticles3d-property-local-coords)

- void **set\_use\_local\_coordinates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_local\_coordinates**()


If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the **GPUParticles3D** node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the **GPUParticles3D** node (and its parents) when it is moved or rotated.

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-gpuparticles3d-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_one\_shot**()


If `true`, only the number of particles equal to [amount](#class-gpuparticles3d-property-amount) will be emitted.

* * *

[float](class_float.md#class-float) **preprocess** = `0.0` [🔗](#class-gpuparticles3d-property-preprocess)

- void **set\_pre\_process\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_process\_time**()


Amount of time to preprocess the particles before animation starts. Lets you start the animation some time after particles have started emitting.

**Note:** This can be very expensive if set to a high number as it requires running the particle shader a number of times equal to the [fixed\_fps](#class-gpuparticles3d-property-fixed-fps) (or 30, if [fixed\_fps](#class-gpuparticles3d-property-fixed-fps) is 0) for every second. In extreme cases it can even lead to a GPU crash due to the volume of work done in a single frame.

* * *

[Material](class_material.md#class-material) **process\_material** [🔗](#class-gpuparticles3d-property-process-material)

- void **set\_process\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_process\_material**()


[Material](class_material.md#class-material) for processing particles. Can be a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial) or a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

* * *

[float](class_float.md#class-float) **randomness** = `0.0` [🔗](#class-gpuparticles3d-property-randomness)

- void **set\_randomness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_randomness\_ratio**()


Emission randomness ratio.

* * *

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-gpuparticles3d-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


Sets the random seed used by the particle system. Only effective if [use\_fixed\_seed](#class-gpuparticles3d-property-use-fixed-seed) is `true`.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-gpuparticles3d-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


Speed scaling ratio. A value of `0` can be used to pause the particles.

* * *

[NodePath](class_nodepath.md#class-nodepath) **sub\_emitter** = `NodePath("")` [🔗](#class-gpuparticles3d-property-sub-emitter)

- void **set\_sub\_emitter**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_sub\_emitter**()


Path to another **GPUParticles3D** node that will be used as a subemitter (see [ParticleProcessMaterial.sub\_emitter\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-sub-emitter-mode)). Subemitters can be used to achieve effects such as fireworks, sparks on collision, bubbles popping into water drops, and more.

**Note:** When [sub\_emitter](#class-gpuparticles3d-property-sub-emitter) is set, the target **GPUParticles3D** node will no longer emit particles on its own.

* * *

[bool](class_bool.md#class-bool) **trail\_enabled** = `false` [🔗](#class-gpuparticles3d-property-trail-enabled)

- void **set\_trail\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_trail\_enabled**()


If `true`, enables particle trails using a mesh skinning system. Designed to work with [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh) and [TubeTrailMesh](class_tubetrailmesh.md#class-tubetrailmesh).

**Note:** [BaseMaterial3D.use\_particle\_trails](class_basematerial3d.md#class-basematerial3d-property-use-particle-trails) must also be enabled on the particle mesh's material. Otherwise, setting [trail\_enabled](#class-gpuparticles3d-property-trail-enabled) to `true` will have no effect.

**Note:** Unlike [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d), the number of trail sections and subdivisions is set in the [RibbonTrailMesh](class_ribbontrailmesh.md#class-ribbontrailmesh) or the [TubeTrailMesh](class_tubetrailmesh.md#class-tubetrailmesh)'s properties.

* * *

[float](class_float.md#class-float) **trail\_lifetime** = `0.3` [🔗](#class-gpuparticles3d-property-trail-lifetime)

- void **set\_trail\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_trail\_lifetime**()


The amount of time the particle's trail should represent (in seconds). Only effective if [trail\_enabled](#class-gpuparticles3d-property-trail-enabled) is `true`.

* * *

[TransformAlign](#enum-gpuparticles3d-transformalign) **transform\_align** = `0` [🔗](#class-gpuparticles3d-property-transform-align)

- void **set\_transform\_align**(value: [TransformAlign](#enum-gpuparticles3d-transformalign))

- [TransformAlign](#enum-gpuparticles3d-transformalign) **get\_transform\_align**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **use\_fixed\_seed** = `false` [🔗](#class-gpuparticles3d-property-use-fixed-seed)

- void **set\_use\_fixed\_seed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_fixed\_seed**()


If `true`, particles will use the same seed for every simulation using the seed defined in [seed](#class-gpuparticles3d-property-seed). This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

* * *

[AABB](class_aabb.md#class-aabb) **visibility\_aabb** = `AABB(-4, -4, -4, 8, 8, 8)` [🔗](#class-gpuparticles3d-property-visibility-aabb)

- void **set\_visibility\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_visibility\_aabb**()


The [AABB](class_aabb.md#class-aabb) that determines the node's region which needs to be visible on screen for the particle system to be active. [GeometryInstance3D.extra\_cull\_margin](class_geometryinstance3d.md#class-geometryinstance3d-property-extra-cull-margin) is added on each of the AABB's axes. Particle collisions and attraction will only occur within this area.

Grow the box if particles suddenly appear/disappear when the node enters/exits the screen. The [AABB](class_aabb.md#class-aabb) can be grown via code or with the **Particles → Generate AABB** editor tool.

**Note:** [visibility\_aabb](#class-gpuparticles3d-property-visibility-aabb) is overridden by [GeometryInstance3D.custom\_aabb](class_geometryinstance3d.md#class-geometryinstance3d-property-custom-aabb) if that property is set to a non-default value.

* * *

## Method Descriptions

[AABB](class_aabb.md#class-aabb) **capture\_aabb**() const [🔗](#class-gpuparticles3d-method-capture-aabb)

Returns the axis-aligned bounding box that contains all the particles that are active in the current frame.

* * *

void **convert\_from\_particles**(particles: [Node](class_node.md#class-node)) [🔗](#class-gpuparticles3d-method-convert-from-particles)

Sets this node's properties to match a given [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d) node.

* * *

void **emit\_particle**(xform: [Transform3D](class_transform3d.md#class-transform3d), velocity: [Vector3](class_vector3.md#class-vector3), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), flags: [int](class_int.md#class-int)) [🔗](#class-gpuparticles3d-method-emit-particle)

Emits a single particle. Whether `xform`, `velocity`, `color` and `custom` are applied depends on the value of `flags`. See [EmitFlags](#enum-gpuparticles3d-emitflags).

The default ParticleProcessMaterial will overwrite `color` and use the contents of `custom` as `(rotation, age, animation, lifetime)`.

**Note:** [emit\_particle()](#class-gpuparticles3d-method-emit-particle) is only supported on the Forward+ and Mobile rendering methods, not Compatibility.

* * *

[Mesh](class_mesh.md#class-mesh) **get\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int)) const [🔗](#class-gpuparticles3d-method-get-draw-pass-mesh)

Returns the [Mesh](class_mesh.md#class-mesh) that is drawn at index `pass`.

* * *

void **request\_particles\_process**(process\_time: [float](class_float.md#class-float)) [🔗](#class-gpuparticles3d-method-request-particles-process)

Requests the particles to process for extra process time during a single frame.

Useful for particle playback, if used in combination with [use\_fixed\_seed](#class-gpuparticles3d-property-use-fixed-seed) or by calling [restart()](#class-gpuparticles3d-method-restart) with parameter `keep_seed` set to `true`.

* * *

void **restart**(keep\_seed: [bool](class_bool.md#class-bool) = false) [🔗](#class-gpuparticles3d-method-restart)

Restarts the particle emission cycle, clearing existing particles. To avoid particles vanishing from the viewport, wait for the [finished](#class-gpuparticles3d-signal-finished) signal before calling.

**Note:** The [finished](#class-gpuparticles3d-signal-finished) signal is only emitted by [one\_shot](#class-gpuparticles3d-property-one-shot) emitters.

If `keep_seed` is `true`, the current random seed will be preserved. Useful for seeking and playback.

* * *

void **set\_draw\_pass\_mesh**(pass: [int](class_int.md#class-int), mesh: [Mesh](class_mesh.md#class-mesh)) [🔗](#class-gpuparticles3d-method-set-draw-pass-mesh)

Sets the [Mesh](class_mesh.md#class-mesh) that is drawn at index `pass`.

[Previous](class_gpuparticles2d.md "GPUParticles2D") [Next](class_gpuparticlesattractor3d.md "GPUParticlesAttractor3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticles2d.md "GPUParticles2D") [Next](class_gpuparticlesattractor3d.md "GPUParticlesAttractor3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).