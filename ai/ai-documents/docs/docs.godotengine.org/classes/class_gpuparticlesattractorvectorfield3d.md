---
title: GPUParticlesAttractorVectorField3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlesattractorvectorfield3d.html
crawled_at: "2026-08-13T10:32:38+12:00"
content_hash: cce6590edff53a4c1ea1136a294911bbc5491c5e8537f27eb26f5999d4034253
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesAttractorVectorField3D

* * *

# GPUParticlesAttractorVectorField3D

**Inherits:** [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A box-shaped attractor with varying directions and strengths defined in it that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A box-shaped attractor with varying directions and strengths defined in it that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

Unlike [GPUParticlesAttractorBox3D](class_gpuparticlesattractorbox3d.md#class-gpuparticlesattractorbox3d), **GPUParticlesAttractorVectorField3D** uses a [texture](#class-gpuparticlesattractorvectorfield3d-property-texture) to affect attraction strength within the box. This can be used to create complex attraction scenarios where particles travel in different directions depending on their location. This can be useful for weather effects such as sandstorms.

Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.

**Note:** Particle attractors only affect [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gpuparticlesattractorvectorfield3d-property-size) | `Vector3(2, 2, 2)` |
| [Texture3D](class_texture3d.md#class-texture3d) | [texture](#class-gpuparticlesattractorvectorfield3d-property-texture) |  |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-gpuparticlesattractorvectorfield3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The size of the vector field box in 3D units.

* * *

[Texture3D](class_texture3d.md#class-texture3d) **texture** [🔗](#class-gpuparticlesattractorvectorfield3d-property-texture)

- void **set\_texture**(value: [Texture3D](class_texture3d.md#class-texture3d))

- [Texture3D](class_texture3d.md#class-texture3d) **get\_texture**()


The 3D texture to be used. Values are linearly interpolated between the texture's pixels.

**Note:** To get better performance, the 3D texture's resolution should reflect the [size](#class-gpuparticlesattractorvectorfield3d-property-size) of the attractor. Since particle attraction is usually low-frequency data, the texture can be kept at a low resolution such as 64×64×64.

[Previous](class_gpuparticlesattractorsphere3d.md "GPUParticlesAttractorSphere3D") [Next](class_gpuparticlescollision3d.md "GPUParticlesCollision3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlesattractorsphere3d.md "GPUParticlesAttractorSphere3D") [Next](class_gpuparticlescollision3d.md "GPUParticlesCollision3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).