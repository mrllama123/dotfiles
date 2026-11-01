---
title: VisualShaderNodeParticleEmitter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparticleemitter.html
crawled_at: "2026-08-13T10:29:26+12:00"
content_hash: 8227ea2780b1cd9ab014f0e7d6674d6fbbae791174bcd87584d7bd5652194701
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParticleEmitter

* * *

# VisualShaderNodeParticleEmitter

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeParticleBoxEmitter](class_visualshadernodeparticleboxemitter.md#class-visualshadernodeparticleboxemitter), [VisualShaderNodeParticleMeshEmitter](class_visualshadernodeparticlemeshemitter.md#class-visualshadernodeparticlemeshemitter), [VisualShaderNodeParticleRingEmitter](class_visualshadernodeparticleringemitter.md#class-visualshadernodeparticleringemitter), [VisualShaderNodeParticleSphereEmitter](class_visualshadernodeparticlesphereemitter.md#class-visualshadernodeparticlesphereemitter)

A base class for particle emitters.

## Description

Particle emitter nodes can be used in "start" step of particle shaders and they define the starting position of the particles. Connect them to the Position output port.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [mode\_2d](#class-visualshadernodeparticleemitter-property-mode-2d) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **mode\_2d** = `false` [🔗](#class-visualshadernodeparticleemitter-property-mode-2d)

- void **set\_mode\_2d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_mode\_2d**()


If `true`, the result of this emitter is projected to 2D space. By default it is `false` and meant for use in 3D space.

[Previous](class_visualshadernodeparticleemit.md "VisualShaderNodeParticleEmit") [Next](class_visualshadernodeparticlemeshemitter.md "VisualShaderNodeParticleMeshEmitter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeparticleemit.md "VisualShaderNodeParticleEmit") [Next](class_visualshadernodeparticlemeshemitter.md "VisualShaderNodeParticleMeshEmitter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).