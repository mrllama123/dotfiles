---
title: VisualShaderNodeParticleMeshEmitter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparticlemeshemitter.html
crawled_at: "2026-08-13T10:30:00+12:00"
content_hash: 78f3af9d2fe81a5e2d84c6a8b01f095dd1e01749755e6246b6e788ed346fa99b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParticleMeshEmitter

* * *

# VisualShaderNodeParticleMeshEmitter

**Inherits:** [VisualShaderNodeParticleEmitter](class_visualshadernodeparticleemitter.md#class-visualshadernodeparticleemitter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node that makes particles emitted in a shape defined by a [Mesh](class_mesh.md#class-mesh).

## Description

[VisualShaderNodeParticleEmitter](class_visualshadernodeparticleemitter.md#class-visualshadernodeparticleemitter) that makes the particles emitted in a shape of the assigned [mesh](#class-visualshadernodeparticlemeshemitter-property-mesh). It will emit from the mesh's surfaces, either all or only the specified one.

## Properties

|     |     |     |
| --- | --- | --- |
| [Mesh](class_mesh.md#class-mesh) | [mesh](#class-visualshadernodeparticlemeshemitter-property-mesh) |  |
| [int](class_int.md#class-int) | [surface\_index](#class-visualshadernodeparticlemeshemitter-property-surface-index) | `0` |
| [bool](class_bool.md#class-bool) | [use\_all\_surfaces](#class-visualshadernodeparticlemeshemitter-property-use-all-surfaces) | `true` |

* * *

## Property Descriptions

[Mesh](class_mesh.md#class-mesh) **mesh** [🔗](#class-visualshadernodeparticlemeshemitter-property-mesh)

- void **set\_mesh**(value: [Mesh](class_mesh.md#class-mesh))

- [Mesh](class_mesh.md#class-mesh) **get\_mesh**()


The [Mesh](class_mesh.md#class-mesh) that defines emission shape.

* * *

[int](class_int.md#class-int) **surface\_index** = `0` [🔗](#class-visualshadernodeparticlemeshemitter-property-surface-index)

- void **set\_surface\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_surface\_index**()


Index of the surface that emits particles. [use\_all\_surfaces](#class-visualshadernodeparticlemeshemitter-property-use-all-surfaces) must be `false` for this to take effect.

* * *

[bool](class_bool.md#class-bool) **use\_all\_surfaces** = `true` [🔗](#class-visualshadernodeparticlemeshemitter-property-use-all-surfaces)

- void **set\_use\_all\_surfaces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_use\_all\_surfaces**()


If `true`, the particles will emit from all surfaces of the mesh.

[Previous](class_visualshadernodeparticleemitter.md "VisualShaderNodeParticleEmitter") [Next](class_visualshadernodeparticlemultiplybyaxisangle.md "VisualShaderNodeParticleMultiplyByAxisAngle")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeparticleemitter.md "VisualShaderNodeParticleEmitter") [Next](class_visualshadernodeparticlemultiplybyaxisangle.md "VisualShaderNodeParticleMultiplyByAxisAngle")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).