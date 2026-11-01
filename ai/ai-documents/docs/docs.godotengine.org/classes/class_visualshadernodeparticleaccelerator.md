---
title: VisualShaderNodeParticleAccelerator — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparticleaccelerator.html
crawled_at: "2026-08-13T10:20:02+12:00"
content_hash: 2e8eef37c0c41e3e779bc1242408cdcb2f3753a3c27e8be59af8d023496c3030
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParticleAccelerator

* * *

# VisualShaderNodeParticleAccelerator

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A visual shader node that accelerates particles.

## Description

Particle accelerator can be used in "process" step of particle shader. It will accelerate the particles. Connect it to the Velocity output port.

## Properties

|     |     |     |
| --- | --- | --- |
| [Mode](#enum-visualshadernodeparticleaccelerator-mode) | [mode](#class-visualshadernodeparticleaccelerator-property-mode) | `0` |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-visualshadernodeparticleaccelerator-mode)

[Mode](#enum-visualshadernodeparticleaccelerator-mode) **MODE\_LINEAR** = `0`

The particles will be accelerated based on their velocity.

[Mode](#enum-visualshadernodeparticleaccelerator-mode) **MODE\_RADIAL** = `1`

The particles will be accelerated towards or away from the center.

[Mode](#enum-visualshadernodeparticleaccelerator-mode) **MODE\_TANGENTIAL** = `2`

The particles will be accelerated tangentially to the radius vector from center to their position.

[Mode](#enum-visualshadernodeparticleaccelerator-mode) **MODE\_MAX** = `3`

Represents the size of the [Mode](#enum-visualshadernodeparticleaccelerator-mode) enum.

* * *

## Property Descriptions

[Mode](#enum-visualshadernodeparticleaccelerator-mode) **mode** = `0` [🔗](#class-visualshadernodeparticleaccelerator-property-mode)

- void **set\_mode**(value: [Mode](#enum-visualshadernodeparticleaccelerator-mode))

- [Mode](#enum-visualshadernodeparticleaccelerator-mode) **get\_mode**()


Defines in what manner the particles will be accelerated.

[Previous](class_visualshadernodeparameterref.md "VisualShaderNodeParameterRef") [Next](class_visualshadernodeparticleboxemitter.md "VisualShaderNodeParticleBoxEmitter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeparameterref.md "VisualShaderNodeParameterRef") [Next](class_visualshadernodeparticleboxemitter.md "VisualShaderNodeParticleBoxEmitter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).