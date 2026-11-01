---
title: VisualShaderNodeParticleEmit — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparticleemit.html
crawled_at: "2026-08-13T10:24:58+12:00"
content_hash: eef2467ac056d826047f25c768d385a26c8e7cb76713791479456d605f8de362
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParticleEmit

* * *

# VisualShaderNodeParticleEmit

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node that forces to emit a particle from a sub-emitter.

## Description

This node internally calls `emit_subparticle` shader method. It will emit a particle from the configured sub-emitter and also allows to customize how its emitted. Requires a sub-emitter assigned to the particles node with this shader.

## Properties

|     |     |     |
| --- | --- | --- |
| [EmitFlags](#enum-visualshadernodeparticleemit-emitflags) | [flags](#class-visualshadernodeparticleemit-property-flags) | `31` |

* * *

## Enumerations

enum **EmitFlags**: [🔗](#enum-visualshadernodeparticleemit-emitflags)

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **EMIT\_FLAG\_POSITION** = `1`

If enabled, the particle starts with the position defined by this node.

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **EMIT\_FLAG\_ROT\_SCALE** = `2`

If enabled, the particle starts with the rotation and scale defined by this node.

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **EMIT\_FLAG\_VELOCITY** = `4`

If enabled,the particle starts with the velocity defined by this node.

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **EMIT\_FLAG\_COLOR** = `8`

If enabled, the particle starts with the color defined by this node.

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **EMIT\_FLAG\_CUSTOM** = `16`

If enabled, the particle starts with the `CUSTOM` data defined by this node.

* * *

## Property Descriptions

[EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **flags** = `31` [🔗](#class-visualshadernodeparticleemit-property-flags)

- void **set\_flags**(value: [EmitFlags](#enum-visualshadernodeparticleemit-emitflags))

- [EmitFlags](#enum-visualshadernodeparticleemit-emitflags) **get\_flags**()


Flags used to override the properties defined in the sub-emitter's process material.

[Previous](class_visualshadernodeparticleconevelocity.md "VisualShaderNodeParticleConeVelocity") [Next](class_visualshadernodeparticleemitter.md "VisualShaderNodeParticleEmitter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeparticleconevelocity.md "VisualShaderNodeParticleConeVelocity") [Next](class_visualshadernodeparticleemitter.md "VisualShaderNodeParticleEmitter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).