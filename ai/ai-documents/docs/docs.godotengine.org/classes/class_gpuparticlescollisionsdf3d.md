---
title: GPUParticlesCollisionSDF3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlescollisionsdf3d.html
crawled_at: "2026-08-13T10:37:35+12:00"
content_hash: 3ada76f7a74839980b90194ebd98224b4db66f82f6e784aec4a4910491104b20
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesCollisionSDF3D

* * *

# GPUParticlesCollisionSDF3D

**Inherits:** [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A baked signed distance field 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A baked signed distance field 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

Signed distance fields (SDF) allow for efficiently representing approximate collision shapes for convex and concave objects of any shape. This is more flexible than [GPUParticlesCollisionHeightField3D](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d), but it requires a baking step.

**Baking:** The signed distance field texture can be baked by selecting the **GPUParticlesCollisionSDF3D** node in the editor, then clicking **Bake SDF** at the top of the 3D viewport. Any _visible_ [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) s within the [size](#class-gpuparticlescollisionsdf3d-property-size) will be taken into account for baking, regardless of their [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode).

**Note:** Baking a **GPUParticlesCollisionSDF3D**'s [texture](#class-gpuparticlescollisionsdf3d-property-texture) is only possible within the editor, as there is no bake method exposed for use in exported projects. However, it's still possible to load pre-baked [Texture3D](class_texture3d.md#class-texture3d) s into its [texture](#class-gpuparticlescollisionsdf3d-property-texture) property in an exported project.

**Note:** [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) must be [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact) on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d)'s process material for collision to work.

**Note:** Particle collision only affects [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bake\_mask](#class-gpuparticlescollisionsdf3d-property-bake-mask) | `4294967295` |
| [Resolution](#enum-gpuparticlescollisionsdf3d-resolution) | [resolution](#class-gpuparticlescollisionsdf3d-property-resolution) | `2` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gpuparticlescollisionsdf3d-property-size) | `Vector3(2, 2, 2)` |
| [Texture3D](class_texture3d.md#class-texture3d) | [texture](#class-gpuparticlescollisionsdf3d-property-texture) |  |
| [float](class_float.md#class-float) | [thickness](#class-gpuparticlescollisionsdf3d-property-thickness) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_bake\_mask\_value](#class-gpuparticlescollisionsdf3d-method-get-bake-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| void | [set\_bake\_mask\_value](#class-gpuparticlescollisionsdf3d-method-set-bake-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **Resolution**: [🔗](#enum-gpuparticlescollisionsdf3d-resolution)

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_16** = `0`

Bake a 16×16×16 signed distance field. This is the fastest option, but also the least precise.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_32** = `1`

Bake a 32×32×32 signed distance field.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_64** = `2`

Bake a 64×64×64 signed distance field.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_128** = `3`

Bake a 128×128×128 signed distance field.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_256** = `4`

Bake a 256×256×256 signed distance field.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_512** = `5`

Bake a 512×512×512 signed distance field. This is the slowest option, but also the most precise.

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **RESOLUTION\_MAX** = `6`

Represents the size of the [Resolution](#enum-gpuparticlescollisionsdf3d-resolution) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **bake\_mask** = `4294967295` [🔗](#class-gpuparticlescollisionsdf3d-property-bake-mask)

- void **set\_bake\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bake\_mask**()


The visual layers to account for when baking the particle collision SDF. Only [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) s whose [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) match with this [bake\_mask](#class-gpuparticlescollisionsdf3d-property-bake-mask) will be included in the generated particle collision SDF. By default, all objects are taken into account for the particle collision SDF baking.

* * *

[Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **resolution** = `2` [🔗](#class-gpuparticlescollisionsdf3d-property-resolution)

- void **set\_resolution**(value: [Resolution](#enum-gpuparticlescollisionsdf3d-resolution))

- [Resolution](#enum-gpuparticlescollisionsdf3d-resolution) **get\_resolution**()


The bake resolution to use for the signed distance field [texture](#class-gpuparticlescollisionsdf3d-property-texture). The texture must be baked again for changes to the [resolution](#class-gpuparticlescollisionsdf3d-property-resolution) property to be effective. Higher resolutions have a greater performance cost and take more time to bake. Higher resolutions also result in larger baked textures, leading to increased VRAM and storage space requirements. To improve performance and reduce bake times, use the lowest resolution possible for the object you're representing the collision of.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-gpuparticlescollisionsdf3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The collision SDF's size in 3D units. To improve SDF quality, the [size](#class-gpuparticlescollisionsdf3d-property-size) should be set as small as possible while covering the parts of the scene you need.

* * *

[Texture3D](class_texture3d.md#class-texture3d) **texture** [🔗](#class-gpuparticlescollisionsdf3d-property-texture)

- void **set\_texture**(value: [Texture3D](class_texture3d.md#class-texture3d))

- [Texture3D](class_texture3d.md#class-texture3d) **get\_texture**()


The 3D texture representing the signed distance field.

* * *

[float](class_float.md#class-float) **thickness** = `1.0` [🔗](#class-gpuparticlescollisionsdf3d-property-thickness)

- void **set\_thickness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_thickness**()


The collision shape's thickness. Unlike other particle colliders, **GPUParticlesCollisionSDF3D** is actually hollow on the inside. [thickness](#class-gpuparticlescollisionsdf3d-property-thickness) can be increased to prevent particles from tunneling through the collision shape at high speeds, or when the **GPUParticlesCollisionSDF3D** is moved.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_bake\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-gpuparticlescollisionsdf3d-method-get-bake-mask-value)

Returns whether or not the specified layer of the [bake\_mask](#class-gpuparticlescollisionsdf3d-property-bake-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

void **set\_bake\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-gpuparticlescollisionsdf3d-method-set-bake-mask-value)

Based on `value`, enables or disables the specified layer in the [bake\_mask](#class-gpuparticlescollisionsdf3d-property-bake-mask), given a `layer_number` between 1 and 32.

[Previous](class_gpuparticlescollisionheightfield3d.md "GPUParticlesCollisionHeightField3D") [Next](class_gpuparticlescollisionsphere3d.md "GPUParticlesCollisionSphere3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlescollisionheightfield3d.md "GPUParticlesCollisionHeightField3D") [Next](class_gpuparticlescollisionsphere3d.md "GPUParticlesCollisionSphere3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).