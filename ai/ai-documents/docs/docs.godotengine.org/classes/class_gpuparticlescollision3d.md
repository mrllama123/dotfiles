---
title: GPUParticlesCollision3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlescollision3d.html
crawled_at: "2026-08-13T10:41:11+12:00"
content_hash: 50318fac66e23606caa5924c2b055c098a39830d9cf48f62fc5b328c840dd624
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesCollision3D

* * *

# GPUParticlesCollision3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [GPUParticlesCollisionBox3D](class_gpuparticlescollisionbox3d.md#class-gpuparticlescollisionbox3d), [GPUParticlesCollisionHeightField3D](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d), [GPUParticlesCollisionSDF3D](class_gpuparticlescollisionsdf3d.md#class-gpuparticlescollisionsdf3d), [GPUParticlesCollisionSphere3D](class_gpuparticlescollisionsphere3d.md#class-gpuparticlescollisionsphere3d)

Abstract base class for 3D particle collision shapes affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

Particle collision shapes can be used to make particles stop or bounce against them.

Particle collision shapes work in real-time and can be moved, rotated and scaled during gameplay. Unlike attractors, non-uniform scaling of collision shapes is _not_ supported.

Particle collision shapes can be temporarily disabled by hiding them.

**Note:** [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) must be [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact) on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d)'s process material for collision to work.

**Note:** Particle collision only affects [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

**Note:** Particles pushed by a collider that is being moved will not be interpolated, which can result in visible stuttering. This can be alleviated by setting [GPUParticles3D.fixed\_fps](class_gpuparticles3d.md#class-gpuparticles3d-property-fixed-fps) to `0` or a value that matches or exceeds the target framerate.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [cull\_mask](#class-gpuparticlescollision3d-property-cull-mask) | `4294967295` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **cull\_mask** = `4294967295` [🔗](#class-gpuparticlescollision3d-property-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


The particle rendering layers ( [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers)) that will be affected by the collision shape. By default, all particles that have [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) set to [ParticleProcessMaterial.COLLISION\_RIGID](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-rigid) or [ParticleProcessMaterial.COLLISION\_HIDE\_ON\_CONTACT](class_particleprocessmaterial.md#class-particleprocessmaterial-constant-collision-hide-on-contact) will be affected by a collision shape.

After configuring particle nodes accordingly, specific layers can be unchecked to prevent certain particles from being affected by colliders. For example, this can be used if you're using a collider as part of a spell effect but don't want the collider to affect unrelated weather particles at the same position.

Particle collision can also be disabled on a per-process material basis by setting [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) node.

[Previous](class_gpuparticlesattractorvectorfield3d.md "GPUParticlesAttractorVectorField3D") [Next](class_gpuparticlescollisionbox3d.md "GPUParticlesCollisionBox3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlesattractorvectorfield3d.md "GPUParticlesAttractorVectorField3D") [Next](class_gpuparticlescollisionbox3d.md "GPUParticlesCollisionBox3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).