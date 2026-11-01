---
title: Particle shaders — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/shaders/shader_reference/particle_shader.html
crawled_at: "2026-08-13T10:24:03+12:00"
content_hash: f2b83b934c10459f4c843f0af34a1aa740d135747d9fd395680be9c9d97f0bab
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Shaders](../index.md)
  - [Shading reference](index.md)
  - Particle shaders
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/shaders/shader_reference/particle_shader.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Particle shaders

Particle shaders are a special type of shader that runs before the object is
drawn. They are used for calculating material properties such as color,
position, and rotation. They are drawn with any regular material for CanvasItem
or Spatial, depending on whether they are 2D or 3D.

Particle shaders are unique because they are not used to draw the object itself;
they are used to calculate particle properties, which are then used by a
[CanvasItem](canvas_item_shader.md#doc-canvas-item-shader) or [Spatial](spatial_shader.md#doc-spatial-shader)
shader. They contain two processor functions: `start()` and `process()`.

Unlike other shader types, particle shaders keep the data that was output the
previous frame. Therefore, particle shaders can be used for complex effects that
take place over multiple frames.

Note

Particle shaders are only available with GPU-based particle nodes
( [GPUParticles2D](../../../classes/class_gpuparticles2d.md#class-gpuparticles2d) and [GPUParticles3D](../../../classes/class_gpuparticles3d.md#class-gpuparticles3d)).

CPU-based particle nodes ( [CPUParticles2D](../../../classes/class_cpuparticles2d.md#class-cpuparticles2d) and
[CPUParticles3D](../../../classes/class_cpuparticles3d.md#class-cpuparticles3d)) are _rendered_ on the GPU (which means they can
use custom CanvasItem or Spatial shaders), but their motion is _simulated_
on the CPU.

## Render modes

| Render mode | Description |
| --- | --- |
| **keep\_data** | Do not clear previous data on restart. |
| **disable\_force** | Disable attractor force. |
| **disable\_velocity** | Ignore `VELOCITY` value. |
| **collision\_use\_scale** | Scale the particle's size for collisions. |

## Built-ins

Values marked as `in` are read-only. Values marked as `out` can optionally be written to and will
not necessarily contain sensible values. Values marked as `inout` provide a sensible default
value, and can optionally be written to. Samplers cannot be written to so they are not marked.

## Global built-ins

Global built-ins are available everywhere, including custom functions.

| Built-in | Description |
| --- | --- |
| in float **TIME** | Global time since the engine has started, in seconds. It repeats after every `3,600`<br>seconds (which can be changed with the<br>[rollover](../../../classes/class_projectsettings.md#class-projectsettings-property-rendering-limits-time-time-rollover-secs)<br>setting). It's affected by<br>[time\_scale](../../../classes/class_engine.md#class-engine-property-time-scale) but not by pausing. If you need a<br>`TIME` variable that is not affected by time scale, add your own<br>[global shader uniform](shading_language.md#doc-shading-language-global-uniforms) and update it each<br>frame. |
| in float **PI** | A `PI` constant ( `3.141592`).<br>A ratio of a circle's circumference to its diameter and amount of radians in half turn. |
| in float **TAU** | A `TAU` constant ( `6.283185`).<br>An equivalent of `PI * 2` and amount of radians in full turn. |
| in float **E** | An `E` constant ( `2.718281`). Euler's number and a base of the natural logarithm. |

## Start and Process built-ins

These properties can be accessed from both the `start()` and `process()` functions.

| Function | Description |
| --- | --- |
| in float **LIFETIME** | Particle lifetime. |
| in float **DELTA** | Delta process time. |
| in uint **NUMBER** | Unique number since emission start. |
| in uint **INDEX** | Particle index (from total particles). |
| in mat4 **EMISSION\_TRANSFORM** | Emitter transform (used for non-local systems). |
| in uint **RANDOM\_SEED** | Random seed used as base for random. |
| inout bool **ACTIVE** | `true` when the particle is active, can be set `false`. |
| inout vec4 **COLOR** | Particle color, can be written to and accessed in mesh's vertex function. |
| inout vec3 **VELOCITY** | Particle velocity, can be modified. |
| inout mat4 **TRANSFORM** | Particle transform. |
| inout vec4 **CUSTOM** | Custom particle data. Accessible from shader of mesh as `INSTANCE_CUSTOM`. |
| inout float **MASS** | Particle mass, intended to be used with attractors. Equals `1.0` by default. |
| in vec4 **USERDATAX** | Vector that enables the integration of supplementary user-defined data into the particle process shader.<br>`USERDATAX` are six built-ins identified by number, `X` can be numbers between 1 and 6, for example `USERDATA3`. |
| in uint **FLAG\_EMIT\_POSITION** | A flag for using on the last argument of `emit_subparticle()` function to assign a position to a new particle's transform. |
| in uint **FLAG\_EMIT\_ROT\_SCALE** | A flag for using on the last argument of `emit_subparticle()` function to assign the rotation and scale to a new particle's transform. |
| in uint **FLAG\_EMIT\_VELOCITY** | A flag for using on the last argument of `emit_subparticle()` function to assign a velocity to a new particle. |
| in uint **FLAG\_EMIT\_COLOR** | A flag for using on the last argument of `emit_subparticle()` function to assign a color to a new particle. |
| in uint **FLAG\_EMIT\_CUSTOM** | A flag for using on the last argument of `emit_subparticle()` function to assign a custom data vector to a new particle. |
| in vec3 **EMITTER\_VELOCITY** | Velocity of the [Particles2D](../../../classes/class_gpuparticles2d.md#class-gpuparticles2d) ( [3D](../../../classes/class_gpuparticles3d.md#class-gpuparticles3d)) node. |
| in float **INTERPOLATE\_TO\_END** | Value of [interp\_to\_end](../../../classes/class_gpuparticles2d.md#class-gpuparticles2d-property-interp-to-end)<br>( [3D](../../../classes/class_gpuparticles3d.md#class-gpuparticles3d-property-interp-to-end)) property of Particles node. |
| in uint **AMOUNT\_RATIO** | Value of [amount\_ratio](../../../classes/class_gpuparticles2d.md#class-gpuparticles2d-property-amount-ratio)<br>( [3D](../../../classes/class_gpuparticles3d.md#class-gpuparticles3d-property-amount-ratio)) property of Particles node. |

Note

In order to use the `COLOR` variable in a StandardMaterial3D, set `vertex_color_use_as_albedo`
to `true`. In a ShaderMaterial, access it with the `COLOR` variable.

## Start built-ins

| Built-in | Description |
| --- | --- |
| in bool **RESTART\_POSITION** | `true` if particle is restarted, or emitted without a custom position (i.e. this particle was created by `emit_subparticle()` without the `FLAG_EMIT_POSITION` flag). |
| in bool **RESTART\_ROT\_SCALE** | `true` if particle is restarted, or emitted without a custom rotation or scale (i.e. this particle was created by `emit_subparticle()` without the `FLAG_EMIT_ROT_SCALE` flag). |
| in bool **RESTART\_VELOCITY** | `true` if particle is restarted, or emitted without a custom velocity (i.e. this particle was created by `emit_subparticle()` without the `FLAG_EMIT_VELOCITY` flag). |
| in bool **RESTART\_COLOR** | `true` if particle is restarted, or emitted without a custom color (i.e. this particle was created by `emit_subparticle()` without the `FLAG_EMIT_COLOR` flag). |
| in bool **RESTART\_CUSTOM** | `true` if particle is restarted, or emitted without a custom property (i.e. this particle was created by `emit_subparticle()` without the `FLAG_EMIT_CUSTOM` flag). |

## Process built-ins

| Built-in | Description |
| --- | --- |
| in bool **RESTART** | `true` if the current process frame is first for the particle. |
| in bool **COLLIDED** | `true` when the particle has collided with a particle collider. |
| in vec3 **COLLISION\_NORMAL** | A normal of the last collision. If there is no collision detected it is equal to `(0.0, 0.0, 0.0)`. |
| in float **COLLISION\_DEPTH** | A length of normal of the last collision. If there is no collision detected it is equal to `0.0`. |
| in vec3 **ATTRACTOR\_FORCE** | A combined force of the attractors at the moment on that particle. |

## Process functions

`emit_subparticle()` is currently the only custom function supported by
particles shaders. It allows users to add a new particle with specified
parameters from a sub-emitter. The newly created particle will only use the
properties that match the `flags` parameter. For example, the
following code will emit a particle with a specified position, velocity, and
color, but unspecified rotation, scale, and custom value:

```
mat4 custom_transform = mat4(1.0);
custom_transform[3].xyz = vec3(10.5, 0.0, 4.0);
emit_subparticle(custom_transform, vec3(1.0, 0.5, 1.0), vec4(1.0, 0.0, 0.0, 1.0), vec4(1.0), FLAG_EMIT_POSITION | FLAG_EMIT_VELOCITY | FLAG_EMIT_COLOR);

```

| Function | Description |
| --- | --- |
| bool **emit\_subparticle** (mat4 xform, vec3 velocity, vec4 color, vec4 custom, uint flags) | Emits a particle from a sub-emitter. |

[Previous](canvas_item_shader.md "CanvasItem shaders") [Next](sky_shader.md "Sky shaders")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](canvas_item_shader.md "CanvasItem shaders") [Next](sky_shader.md "Sky shaders")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).