---
title: PhysicsMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsmaterial.html
crawled_at: "2026-08-13T10:19:10+12:00"
content_hash: 6a9910b9b28a15b7b1cc236f827cf3884fba6f485404ac45841f0d99a8bcd70a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsMaterial

* * *

# PhysicsMaterial

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds physics-related properties of a surface, namely its roughness and bounciness.

## Description

Holds physics-related properties of a surface, namely its roughness and bounciness. This class is used to apply these properties to a physics body.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [absorbent](#class-physicsmaterial-property-absorbent) | `false` |
| [float](class_float.md#class-float) | [bounce](#class-physicsmaterial-property-bounce) | `0.0` |
| [float](class_float.md#class-float) | [friction](#class-physicsmaterial-property-friction) | `1.0` |
| [bool](class_bool.md#class-bool) | [rough](#class-physicsmaterial-property-rough) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **absorbent** = `false` [🔗](#class-physicsmaterial-property-absorbent)

- void **set\_absorbent**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_absorbent**()


If `true`, subtracts the bounciness from the colliding object's bounciness instead of adding it.

* * *

[float](class_float.md#class-float) **bounce** = `0.0` [🔗](#class-physicsmaterial-property-bounce)

- void **set\_bounce**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bounce**()


The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).

**Note:** Even with [bounce](#class-physicsmaterial-property-bounce) set to `1.0`, some energy will be lost over time due to linear and angular damping. To have a physics body that preserves all its energy over time, set [bounce](#class-physicsmaterial-property-bounce) to `1.0`, the body's linear damp mode to **Replace** (if applicable), its linear damp to `0.0`, its angular damp mode to **Replace** (if applicable), and its angular damp to `0.0`.

* * *

[float](class_float.md#class-float) **friction** = `1.0` [🔗](#class-physicsmaterial-property-friction)

- void **set\_friction**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_friction**()


The body's friction. Values range from `0` (frictionless) to `1` (maximum friction).

* * *

[bool](class_bool.md#class-bool) **rough** = `false` [🔗](#class-physicsmaterial-property-rough)

- void **set\_rough**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_rough**()


If `true`, the physics engine will use the friction of the object marked as "rough" when two objects collide. If `false`, the physics engine will use the lowest friction of all colliding objects instead. If `true` for both colliding objects, the physics engine will use the highest friction.

[Previous](class_physicalskymaterial.md "PhysicalSkyMaterial") [Next](class_placeholdercubemap.md "PlaceholderCubemap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicalskymaterial.md "PhysicalSkyMaterial") [Next](class_placeholdercubemap.md "PlaceholderCubemap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).