---
title: GPUParticlesCollisionBox3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlescollisionbox3d.html
crawled_at: "2026-08-13T10:39:01+12:00"
content_hash: 034a19499153caa7e8b8025ddd9a7a8414244cb3912cc850d994befa7405c7be
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesCollisionBox3D

* * *

# GPUParticlesCollisionBox3D

**Inherits:** [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A box-shaped 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A box-shaped 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

Particle collision shapes work in real-time and can be moved, rotated and scaled during gameplay. Unlike attractors, non-uniform scaling of collision shapes is _not_ supported.

**Note:** [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) must be [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact) on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d)'s process material for collision to work.

**Note:** Particle collision only affects [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gpuparticlescollisionbox3d-property-size) | `Vector3(2, 2, 2)` |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-gpuparticlescollisionbox3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The collision box's size in 3D units.

[Previous](class_gpuparticlescollision3d.md "GPUParticlesCollision3D") [Next](class_gpuparticlescollisionheightfield3d.md "GPUParticlesCollisionHeightField3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlescollision3d.md "GPUParticlesCollision3D") [Next](class_gpuparticlescollisionheightfield3d.md "GPUParticlesCollisionHeightField3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).