---
title: GPUParticlesAttractorSphere3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlesattractorsphere3d.html
crawled_at: "2026-08-13T10:26:18+12:00"
content_hash: 643ab398876f36461245f5109c4fca8f11c83d39056e523451446672d2b57437
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesAttractorSphere3D

* * *

# GPUParticlesAttractorSphere3D

**Inherits:** [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A spheroid-shaped attractor that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A spheroid-shaped attractor that influences particles from [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes. Can be used to attract particles towards its origin, or to push them away from its origin.

Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported.

**Note:** Particle attractors only affect [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [radius](#class-gpuparticlesattractorsphere3d-property-radius) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **radius** = `1.0` [🔗](#class-gpuparticlesattractorsphere3d-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The attractor sphere's radius in 3D units.

**Note:** Stretched ellipses can be obtained by using non-uniform scaling on the **GPUParticlesAttractorSphere3D** node.

[Previous](class_gpuparticlesattractorbox3d.md "GPUParticlesAttractorBox3D") [Next](class_gpuparticlesattractorvectorfield3d.md "GPUParticlesAttractorVectorField3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlesattractorbox3d.md "GPUParticlesAttractorBox3D") [Next](class_gpuparticlesattractorvectorfield3d.md "GPUParticlesAttractorVectorField3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).