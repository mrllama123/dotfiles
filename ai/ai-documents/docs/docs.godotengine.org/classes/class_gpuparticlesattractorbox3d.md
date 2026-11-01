---
title: GPUParticlesAttractorBox3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlesattractorbox3d.html
crawled_at: "2026-08-13T10:40:18+12:00"
content_hash: 3cd2b883de20b0eceb746a06f23f0fe035b3f5f9f51ad070fc1e321432022053
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesAttractorBox3D

* * *

# GPUParticlesAttractorBox3D

**Inherits:** [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A box-shaped attractor that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A box-shaped attractor that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes. Can be used to attract particles towards its origin, or to push them away from its origin.

Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.

**Note:** Particle attractors only affect [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gpuparticlesattractorbox3d-property-size) | `Vector3(2, 2, 2)` |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-gpuparticlesattractorbox3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The attractor box's size in 3D units.

[Previous](class_gpuparticlesattractor3d.md "GPUParticlesAttractor3D") [Next](class_gpuparticlesattractorsphere3d.md "GPUParticlesAttractorSphere3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlesattractor3d.md "GPUParticlesAttractor3D") [Next](class_gpuparticlesattractorsphere3d.md "GPUParticlesAttractorSphere3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).