---
title: GPUParticlesAttractor3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlesattractor3d.html
crawled_at: "2026-08-13T10:24:02+12:00"
content_hash: 0c0d2bca5dc182495e75ca7e9bf749174870c66f736b67ca89f26fbd6ca0ee0d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesAttractor3D

* * *

# GPUParticlesAttractor3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [GPUParticlesAttractorBox3D](class_gpuparticlesattractorbox3d.md#class-gpuparticlesattractorbox3d), [GPUParticlesAttractorSphere3D](class_gpuparticlesattractorsphere3d.md#class-gpuparticlesattractorsphere3d), [GPUParticlesAttractorVectorField3D](class_gpuparticlesattractorvectorfield3d.md#class-gpuparticlesattractorvectorfield3d)

Abstract base class for 3D particle attractors.

## Description

Particle attractors can be used to attract particles towards the attractor's origin, or to push them away from the attractor's origin.

Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.

Attractors can be temporarily disabled by hiding them, or by setting their [strength](#class-gpuparticlesattractor3d-property-strength) to `0.0`.

**Note:** Particle attractors only affect [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [attenuation](#class-gpuparticlesattractor3d-property-attenuation) | `1.0` |
| [int](class_int.md#class-int) | [cull\_mask](#class-gpuparticlesattractor3d-property-cull-mask) | `4294967295` |
| [float](class_float.md#class-float) | [directionality](#class-gpuparticlesattractor3d-property-directionality) | `0.0` |
| [float](class_float.md#class-float) | [strength](#class-gpuparticlesattractor3d-property-strength) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **attenuation** = `1.0` [🔗](#class-gpuparticlesattractor3d-property-attenuation)

- void **set\_attenuation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_attenuation**()


The particle attractor's attenuation. Higher values result in more gradual pushing of particles as they come closer to the attractor's origin. Zero or negative values will cause particles to be pushed very fast as soon as the touch the attractor's edges.

* * *

[int](class_int.md#class-int) **cull\_mask** = `4294967295` [🔗](#class-gpuparticlesattractor3d-property-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


The particle rendering layers ( [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers)) that will be affected by the attractor. By default, all particles are affected by an attractor.

After configuring particle nodes accordingly, specific layers can be unchecked to prevent certain particles from being affected by attractors. For example, this can be used if you're using an attractor as part of a spell effect but don't want the attractor to affect unrelated weather particles at the same position.

Particle attraction can also be disabled on a per-process material basis by setting [ParticleProcessMaterial.attractor\_interaction\_enabled](class_particleprocessmaterial.md#class-particleprocessmaterial-property-attractor-interaction-enabled) on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) node.

* * *

[float](class_float.md#class-float) **directionality** = `0.0` [🔗](#class-gpuparticlesattractor3d-property-directionality)

- void **set\_directionality**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_directionality**()


Adjusts how directional the attractor is. At `0.0`, the attractor is not directional at all: it will attract particles towards its center. At `1.0`, the attractor is fully directional: particles will always be pushed towards local -Z (or +Z if [strength](#class-gpuparticlesattractor3d-property-strength) is negative).

**Note:** If [directionality](#class-gpuparticlesattractor3d-property-directionality) is greater than `0.0`, the direction in which particles are pushed can be changed by rotating the **GPUParticlesAttractor3D** node.

* * *

[float](class_float.md#class-float) **strength** = `1.0` [🔗](#class-gpuparticlesattractor3d-property-strength)

- void **set\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_strength**()


Adjusts the strength of the attractor. If [strength](#class-gpuparticlesattractor3d-property-strength) is negative, particles will be pushed in the opposite direction. Particles will be pushed _away_ from the attractor's origin if [directionality](#class-gpuparticlesattractor3d-property-directionality) is `0.0`, or towards local +Z if [directionality](#class-gpuparticlesattractor3d-property-directionality) is greater than `0.0`.

[Previous](class_gpuparticles3d.md "GPUParticles3D") [Next](class_gpuparticlesattractorbox3d.md "GPUParticlesAttractorBox3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticles3d.md "GPUParticles3D") [Next](class_gpuparticlesattractorbox3d.md "GPUParticlesAttractorBox3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).