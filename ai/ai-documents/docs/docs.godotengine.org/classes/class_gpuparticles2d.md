---
title: GPUParticles2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticles2d.html
crawled_at: "2026-08-13T10:26:50+12:00"
content_hash: d5571c67e85eac2ff1b101db87480a6d215313d7ae1bf9b2e41d31ad15e3b2d7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticles2D

* * *

# GPUParticles2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D particle emitter.

## Description

2D particle node used to create a variety of particle systems and effects. **GPUParticles2D** features an emitter that generates some number of particles at a given rate.

Use the [process\_material](#class-gpuparticles2d-property-process-material) property to add a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial) to configure particle appearance and behavior. Alternatively, you can add a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) which will be applied to all particles.

2D particles can optionally collide with [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d), but they don't collide with [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) nodes.

## Tutorials

- [Particle systems (2D)](../tutorials/2d/particle_systems_2d.md)

- [2D Particles Demo](https://godotengine.org/asset-library/asset/2724)

- [2D Dodge The Creeps Demo (uses GPUParticles2D for the trail behind the player)](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [amount](#class-gpuparticles2d-property-amount) | `8` |
| [float](class_float.md#class-float) | [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) | `1.0` |
| [float](class_float.md#class-float) | [collision\_base\_size](#class-gpuparticles2d-property-collision-base-size) | `1.0` |
| [DrawOrder](#enum-gpuparticles2d-draworder) | [draw\_order](#class-gpuparticles2d-property-draw-order) | `1` |
| [bool](class_bool.md#class-bool) | [emitting](#class-gpuparticles2d-property-emitting) | `true` |
| [float](class_float.md#class-float) | [explosiveness](#class-gpuparticles2d-property-explosiveness) | `0.0` |
| [int](class_int.md#class-int) | [fixed\_fps](#class-gpuparticles2d-property-fixed-fps) | `30` |
| [bool](class_bool.md#class-bool) | [fract\_delta](#class-gpuparticles2d-property-fract-delta) | `true` |
| [float](class_float.md#class-float) | [interp\_to\_end](#class-gpuparticles2d-property-interp-to-end) | `0.0` |
| [bool](class_bool.md#class-bool) | [interpolate](#class-gpuparticles2d-property-interpolate) | `true` |
| [float](class_float.md#class-float) | [lifetime](#class-gpuparticles2d-property-lifetime) | `1.0` |
| [bool](class_bool.md#class-bool) | [local\_coords](#class-gpuparticles2d-property-local-coords) | `false` |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-gpuparticles2d-property-one-shot) | `false` |
| [float](class_float.md#class-float) | [preprocess](#class-gpuparticles2d-property-preprocess) | `0.0` |
| [Material](class_material.md#class-material) | [process\_material](#class-gpuparticles2d-property-process-material) |  |
| [float](class_float.md#class-float) | [randomness](#class-gpuparticles2d-property-randomness) | `0.0` |
| [int](class_int.md#class-int) | [seed](#class-gpuparticles2d-property-seed) | `0` |
| [float](class_float.md#class-float) | [speed\_scale](#class-gpuparticles2d-property-speed-scale) | `1.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [sub\_emitter](#class-gpuparticles2d-property-sub-emitter) | `NodePath("")` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-gpuparticles2d-property-texture) |  |
| [bool](class_bool.md#class-bool) | [trail\_enabled](#class-gpuparticles2d-property-trail-enabled) | `false` |
| [float](class_float.md#class-float) | [trail\_lifetime](#class-gpuparticles2d-property-trail-lifetime) | `0.3` |
| [int](class_int.md#class-int) | [trail\_section\_subdivisions](#class-gpuparticles2d-property-trail-section-subdivisions) | `4` |
| [int](class_int.md#class-int) | [trail\_sections](#class-gpuparticles2d-property-trail-sections) | `8` |
| [bool](class_bool.md#class-bool) | [use\_fixed\_seed](#class-gpuparticles2d-property-use-fixed-seed) | `false` |
| [Rect2](class_rect2.md#class-rect2) | [visibility\_rect](#class-gpuparticles2d-property-visibility-rect) | `Rect2(-100, -100, 200, 200)` |

## Methods

|     |     |
| --- | --- |
| [Rect2](class_rect2.md#class-rect2) | [capture\_rect](#class-gpuparticles2d-method-capture-rect)() const |
| void | [convert\_from\_particles](#class-gpuparticles2d-method-convert-from-particles)(particles: [Node](class_node.md#class-node)) |
| void | [emit\_particle](#class-gpuparticles2d-method-emit-particle)(xform: [Transform2D](class_transform2d.md#class-transform2d), velocity: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), flags: [int](class_int.md#class-int)) |
| void | [request\_particles\_process](#class-gpuparticles2d-method-request-particles-process)(process\_time: [float](class_float.md#class-float)) |
| void | [restart](#class-gpuparticles2d-method-restart)(keep\_seed: [bool](class_bool.md#class-bool) = false) |

* * *

## Signals

**finished**() [🔗](#class-gpuparticles2d-signal-finished)

Emitted when all active particles have finished processing. To immediately restart the emission cycle, call [restart()](#class-gpuparticles2d-method-restart).

This signal is never emitted when [one\_shot](#class-gpuparticles2d-property-one-shot) is disabled, as particles will be emitted and processed continuously.

**Note:** For [one\_shot](#class-gpuparticles2d-property-one-shot) emitters, due to the particles being computed on the GPU, there may be a short period after receiving the signal during which setting [emitting](#class-gpuparticles2d-property-emitting) to `true` will not restart the emission cycle. This delay is avoided by instead calling [restart()](#class-gpuparticles2d-method-restart).

* * *

## Enumerations

enum **DrawOrder**: [🔗](#enum-gpuparticles2d-draworder)

[DrawOrder](#enum-gpuparticles2d-draworder) **DRAW\_ORDER\_INDEX** = `0`

Particles are drawn in the order emitted.

[DrawOrder](#enum-gpuparticles2d-draworder) **DRAW\_ORDER\_LIFETIME** = `1`

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

[DrawOrder](#enum-gpuparticles2d-draworder) **DRAW\_ORDER\_REVERSE\_LIFETIME** = `2`

Particles are drawn in reverse order of remaining lifetime. In other words, the particle with the lowest lifetime is drawn at the front.

* * *

enum **EmitFlags**: [🔗](#enum-gpuparticles2d-emitflags)

[EmitFlags](#enum-gpuparticles2d-emitflags) **EMIT\_FLAG\_POSITION** = `1`

Particle starts at the specified position.

[EmitFlags](#enum-gpuparticles2d-emitflags) **EMIT\_FLAG\_ROTATION\_SCALE** = `2`

Particle starts with specified rotation and scale.

[EmitFlags](#enum-gpuparticles2d-emitflags) **EMIT\_FLAG\_VELOCITY** = `4`

Particle starts with the specified velocity vector, which defines the emission direction and speed.

[EmitFlags](#enum-gpuparticles2d-emitflags) **EMIT\_FLAG\_COLOR** = `8`

Particle starts with specified color.

[EmitFlags](#enum-gpuparticles2d-emitflags) **EMIT\_FLAG\_CUSTOM** = `16`

Particle starts with specified `CUSTOM` data.

* * *

## Property Descriptions

[int](class_int.md#class-int) **amount** = `8` [🔗](#class-gpuparticles2d-property-amount)

- void **set\_amount**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_amount**()


The number of particles to emit in one emission cycle. The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second. Higher values will increase GPU requirements, even if not all particles are visible at a given time or if [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) is decreased.

**Note:** Changing this value will cause the particle system to restart. To avoid this, change [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) instead.

* * *

[float](class_float.md#class-float) **amount\_ratio** = `1.0` [🔗](#class-gpuparticles2d-property-amount-ratio)

- void **set\_amount\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_amount\_ratio**()


The ratio of particles that should actually be emitted. If set to a value lower than `1.0`, this will set the amount of emitted particles throughout the lifetime to `amount * amount_ratio`. Unlike changing [amount](#class-gpuparticles2d-property-amount), changing [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) while emitting does not affect already-emitted particles and doesn't cause the particle system to restart. [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) can be used to create effects that make the number of emitted particles vary over time.

**Note:** Reducing the [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) has no performance benefit, since resources need to be allocated and processed for the total [amount](#class-gpuparticles2d-property-amount) of particles regardless of the [amount\_ratio](#class-gpuparticles2d-property-amount-ratio). If you don't intend to change the number of particles emitted while the particles are emitting, make sure [amount\_ratio](#class-gpuparticles2d-property-amount-ratio) is set to `1` and change [amount](#class-gpuparticles2d-property-amount) to your liking instead.

* * *

[float](class_float.md#class-float) **collision\_base\_size** = `1.0` [🔗](#class-gpuparticles2d-property-collision-base-size)

- void **set\_collision\_base\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_base\_size**()


Multiplier for particle's collision radius. `1.0` corresponds to the size of the sprite. If particles appear to sink into the ground when colliding, increase this value. If particles appear to float when colliding, decrease this value. Only effective if [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) is [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact).

**Note:** Particles always have a spherical collision shape.

* * *

[DrawOrder](#enum-gpuparticles2d-draworder) **draw\_order** = `1` [🔗](#class-gpuparticles2d-property-draw-order)

- void **set\_draw\_order**(value: [DrawOrder](#enum-gpuparticles2d-draworder))

- [DrawOrder](#enum-gpuparticles2d-draworder) **get\_draw\_order**()


Particle draw order.

* * *

[bool](class_bool.md#class-bool) **emitting** = `true` [🔗](#class-gpuparticles2d-property-emitting)

- void **set\_emitting**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emitting**()


If `true`, particles are being emitted. [emitting](#class-gpuparticles2d-property-emitting) can be used to start and stop particles from emitting. However, if [one\_shot](#class-gpuparticles2d-property-one-shot) is `true` setting [emitting](#class-gpuparticles2d-property-emitting) to `true` will not restart the emission cycle unless all active particles have finished processing. Use the [finished](#class-gpuparticles2d-signal-finished) signal to be notified once all active particles finish processing.

**Note:** For [one\_shot](#class-gpuparticles2d-property-one-shot) emitters, due to the particles being computed on the GPU, there may be a short period after receiving the [finished](#class-gpuparticles2d-signal-finished) signal during which setting this to `true` will not restart the emission cycle.

**Tip:** If your [one\_shot](#class-gpuparticles2d-property-one-shot) emitter needs to immediately restart emitting particles once [finished](#class-gpuparticles2d-signal-finished) signal is received, consider calling [restart()](#class-gpuparticles2d-method-restart) instead of setting [emitting](#class-gpuparticles2d-property-emitting).

* * *

[float](class_float.md#class-float) **explosiveness** = `0.0` [🔗](#class-gpuparticles2d-property-explosiveness)

- void **set\_explosiveness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_explosiveness\_ratio**()


How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.

* * *

[int](class_int.md#class-int) **fixed\_fps** = `30` [🔗](#class-gpuparticles2d-property-fixed-fps)

- void **set\_fixed\_fps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fixed\_fps**()


The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.

* * *

[bool](class_bool.md#class-bool) **fract\_delta** = `true` [🔗](#class-gpuparticles2d-property-fract-delta)

- void **set\_fractional\_delta**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_fractional\_delta**()


If `true`, results in fractional delta calculation which has a smoother particles display effect.

* * *

[float](class_float.md#class-float) **interp\_to\_end** = `0.0` [🔗](#class-gpuparticles2d-property-interp-to-end)

- void **set\_interp\_to\_end**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_interp\_to\_end**()


Causes all the particles in this node to interpolate towards the end of their lifetime.

**Note:** This only works when used with a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial). It needs to be manually implemented for custom process shaders.

* * *

[bool](class_bool.md#class-bool) **interpolate** = `true` [🔗](#class-gpuparticles2d-property-interpolate)

- void **set\_interpolate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_interpolate**()


Enables particle interpolation, which makes the particle movement smoother when their [fixed\_fps](#class-gpuparticles2d-property-fixed-fps) is lower than the screen refresh rate.

* * *

[float](class_float.md#class-float) **lifetime** = `1.0` [🔗](#class-gpuparticles2d-property-lifetime)

- void **set\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lifetime**()


The amount of time each particle will exist (in seconds). The effective emission rate is `(amount * amount_ratio) / lifetime` particles per second.

* * *

[bool](class_bool.md#class-bool) **local\_coords** = `false` [🔗](#class-gpuparticles2d-property-local-coords)

- void **set\_use\_local\_coordinates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_local\_coordinates**()


If `true`, particles use the parent node's coordinate space (known as local coordinates). This will cause particles to move and rotate along the **GPUParticles2D** node (and its parents) when it is moved or rotated. If `false`, particles use global coordinates; they will not move or rotate along the **GPUParticles2D** node (and its parents) when it is moved or rotated.

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-gpuparticles2d-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_one\_shot**()


If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.

* * *

[float](class_float.md#class-float) **preprocess** = `0.0` [🔗](#class-gpuparticles2d-property-preprocess)

- void **set\_pre\_process\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pre\_process\_time**()


Particle system starts as if it had already run for this many seconds.

**Note:** This can be very expensive if set to a high number as it requires running the particle shader a number of times equal to the [fixed\_fps](#class-gpuparticles2d-property-fixed-fps) (or 30, if [fixed\_fps](#class-gpuparticles2d-property-fixed-fps) is 0) for every second. In extreme cases it can even lead to a GPU crash due to the volume of work done in a single frame.

* * *

[Material](class_material.md#class-material) **process\_material** [🔗](#class-gpuparticles2d-property-process-material)

- void **set\_process\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_process\_material**()


[Material](class_material.md#class-material) for processing particles. Can be a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial) or a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

* * *

[float](class_float.md#class-float) **randomness** = `0.0` [🔗](#class-gpuparticles2d-property-randomness)

- void **set\_randomness\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_randomness\_ratio**()


Emission lifetime randomness ratio.

* * *

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-gpuparticles2d-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


Sets the random seed used by the particle system. Only effective if [use\_fixed\_seed](#class-gpuparticles2d-property-use-fixed-seed) is `true`.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-gpuparticles2d-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.

* * *

[NodePath](class_nodepath.md#class-nodepath) **sub\_emitter** = `NodePath("")` [🔗](#class-gpuparticles2d-property-sub-emitter)

- void **set\_sub\_emitter**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_sub\_emitter**()


Path to another **GPUParticles2D** node that will be used as a subemitter (see [ParticleProcessMaterial.sub\_emitter\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-sub-emitter-mode)). Subemitters can be used to achieve effects such as fireworks, sparks on collision, bubbles popping into water drops, and more.

**Note:** When [sub\_emitter](#class-gpuparticles2d-property-sub-emitter) is set, the target **GPUParticles2D** node will no longer emit particles on its own.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-gpuparticles2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


Particle texture. If `null`, particles will be squares with a size of 1×1 pixels.

**Note:** To use a flipbook texture, assign a new [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial) to the **GPUParticles2D**'s [CanvasItem.material](class_canvasitem.md#class-canvasitem-property-material) property, then enable [CanvasItemMaterial.particles\_animation](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-animation) and set [CanvasItemMaterial.particles\_anim\_h\_frames](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-anim-h-frames), [CanvasItemMaterial.particles\_anim\_v\_frames](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-anim-v-frames), and [CanvasItemMaterial.particles\_anim\_loop](class_canvasitemmaterial.md#class-canvasitemmaterial-property-particles-anim-loop) to match the flipbook texture.

* * *

[bool](class_bool.md#class-bool) **trail\_enabled** = `false` [🔗](#class-gpuparticles2d-property-trail-enabled)

- void **set\_trail\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_trail\_enabled**()


If `true`, enables particle trails using a mesh skinning system.

**Note:** Unlike [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), the number of trail sections and subdivisions is set with the [trail\_sections](#class-gpuparticles2d-property-trail-sections) and [trail\_section\_subdivisions](#class-gpuparticles2d-property-trail-section-subdivisions) properties.

* * *

[float](class_float.md#class-float) **trail\_lifetime** = `0.3` [🔗](#class-gpuparticles2d-property-trail-lifetime)

- void **set\_trail\_lifetime**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_trail\_lifetime**()


The amount of time the particle's trail should represent (in seconds). Only effective if [trail\_enabled](#class-gpuparticles2d-property-trail-enabled) is `true`.

* * *

[int](class_int.md#class-int) **trail\_section\_subdivisions** = `4` [🔗](#class-gpuparticles2d-property-trail-section-subdivisions)

- void **set\_trail\_section\_subdivisions**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_trail\_section\_subdivisions**()


The number of subdivisions to use for the particle trail rendering. Higher values can result in smoother trail curves, at the cost of performance due to increased mesh complexity. See also [trail\_sections](#class-gpuparticles2d-property-trail-sections). Only effective if [trail\_enabled](#class-gpuparticles2d-property-trail-enabled) is `true`.

* * *

[int](class_int.md#class-int) **trail\_sections** = `8` [🔗](#class-gpuparticles2d-property-trail-sections)

- void **set\_trail\_sections**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_trail\_sections**()


The number of sections to use for the particle trail rendering. Higher values can result in smoother trail curves, at the cost of performance due to increased mesh complexity. See also [trail\_section\_subdivisions](#class-gpuparticles2d-property-trail-section-subdivisions). Only effective if [trail\_enabled](#class-gpuparticles2d-property-trail-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **use\_fixed\_seed** = `false` [🔗](#class-gpuparticles2d-property-use-fixed-seed)

- void **set\_use\_fixed\_seed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_fixed\_seed**()


If `true`, particles will use the same seed for every simulation using the seed defined in [seed](#class-gpuparticles2d-property-seed). This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

* * *

[Rect2](class_rect2.md#class-rect2) **visibility\_rect** = `Rect2(-100, -100, 200, 200)` [🔗](#class-gpuparticles2d-property-visibility-rect)

- void **set\_visibility\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_visibility\_rect**()


The [Rect2](class_rect2.md#class-rect2) that determines the node's region which needs to be visible on screen for the particle system to be active.

Grow the rect if particles suddenly appear/disappear when the node enters/exits the screen. The [Rect2](class_rect2.md#class-rect2) can be grown via code or with the **Particles → Generate Visibility Rect** editor tool.

* * *

## Method Descriptions

[Rect2](class_rect2.md#class-rect2) **capture\_rect**() const [🔗](#class-gpuparticles2d-method-capture-rect)

Returns a rectangle containing the positions of all existing particles.

**Note:** When using threaded rendering this method synchronizes the rendering thread. Calling it often may have a negative impact on performance.

* * *

void **convert\_from\_particles**(particles: [Node](class_node.md#class-node)) [🔗](#class-gpuparticles2d-method-convert-from-particles)

Sets this node's properties to match a given [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d) node.

* * *

void **emit\_particle**(xform: [Transform2D](class_transform2d.md#class-transform2d), velocity: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), flags: [int](class_int.md#class-int)) [🔗](#class-gpuparticles2d-method-emit-particle)

Emits a single particle. Whether `xform`, `velocity`, `color` and `custom` are applied depends on the value of `flags`. See [EmitFlags](#enum-gpuparticles2d-emitflags).

The default ParticleProcessMaterial will overwrite `color` and use the contents of `custom` as `(rotation, age, animation, lifetime)`.

**Note:** [emit\_particle()](#class-gpuparticles2d-method-emit-particle) is only supported on the Forward+ and Mobile rendering methods, not Compatibility.

* * *

void **request\_particles\_process**(process\_time: [float](class_float.md#class-float)) [🔗](#class-gpuparticles2d-method-request-particles-process)

Requests the particles to process for extra process time during a single frame.

Useful for particle playback, if used in combination with [use\_fixed\_seed](#class-gpuparticles2d-property-use-fixed-seed) or by calling [restart()](#class-gpuparticles2d-method-restart) with parameter `keep_seed` set to `true`.

* * *

void **restart**(keep\_seed: [bool](class_bool.md#class-bool) = false) [🔗](#class-gpuparticles2d-method-restart)

Restarts the particle emission cycle, clearing existing particles. To avoid particles vanishing from the viewport, wait for the [finished](#class-gpuparticles2d-signal-finished) signal before calling.

**Note:** The [finished](#class-gpuparticles2d-signal-finished) signal is only emitted by [one\_shot](#class-gpuparticles2d-property-one-shot) emitters.

If `keep_seed` is `true`, the current random seed will be preserved. Useful for seeking and playback.

[Previous](class_geometryinstance3d.md "GeometryInstance3D") [Next](class_gpuparticles3d.md "GPUParticles3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_geometryinstance3d.md "GeometryInstance3D") [Next](class_gpuparticles3d.md "GPUParticles3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).