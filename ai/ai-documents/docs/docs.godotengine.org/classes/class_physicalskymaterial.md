---
title: PhysicalSkyMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicalskymaterial.html
crawled_at: "2026-08-13T10:32:45+12:00"
content_hash: 17a6d3c0bea60c6bc1510a8b90ea431b9ea1d24774aa6ba53e3f4ec40dc15108
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicalSkyMaterial

* * *

# PhysicalSkyMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material that defines a sky for a [Sky](class_sky.md#class-sky) resource by a set of physical properties.

## Description

The **PhysicalSkyMaterial** uses the Preetham analytic daylight model to draw a sky based on physical properties. This results in a substantially more realistic sky than the [ProceduralSkyMaterial](class_proceduralskymaterial.md#class-proceduralskymaterial), but it is slightly slower and less flexible.

The **PhysicalSkyMaterial** only supports one sun. The color, energy, and direction of the sun are taken from the first [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) in the scene tree.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [energy\_multiplier](#class-physicalskymaterial-property-energy-multiplier) | `1.0` |
| [Color](class_color.md#class-color) | [ground\_color](#class-physicalskymaterial-property-ground-color) | `Color(0.1, 0.07, 0.034, 1)` |
| [float](class_float.md#class-float) | [mie\_coefficient](#class-physicalskymaterial-property-mie-coefficient) | `0.005` |
| [Color](class_color.md#class-color) | [mie\_color](#class-physicalskymaterial-property-mie-color) | `Color(0.69, 0.729, 0.812, 1)` |
| [float](class_float.md#class-float) | [mie\_eccentricity](#class-physicalskymaterial-property-mie-eccentricity) | `0.8` |
| [Texture2D](class_texture2d.md#class-texture2d) | [night\_sky](#class-physicalskymaterial-property-night-sky) |  |
| [float](class_float.md#class-float) | [rayleigh\_coefficient](#class-physicalskymaterial-property-rayleigh-coefficient) | `2.0` |
| [Color](class_color.md#class-color) | [rayleigh\_color](#class-physicalskymaterial-property-rayleigh-color) | `Color(0.3, 0.405, 0.6, 1)` |
| [float](class_float.md#class-float) | [sun\_disk\_scale](#class-physicalskymaterial-property-sun-disk-scale) | `1.0` |
| [float](class_float.md#class-float) | [turbidity](#class-physicalskymaterial-property-turbidity) | `10.0` |
| [bool](class_bool.md#class-bool) | [use\_debanding](#class-physicalskymaterial-property-use-debanding) | `true` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **energy\_multiplier** = `1.0` [🔗](#class-physicalskymaterial-property-energy-multiplier)

- void **set\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_energy\_multiplier**()


The sky's overall brightness multiplier. Higher values result in a brighter sky.

* * *

[Color](class_color.md#class-color) **ground\_color** = `Color(0.1, 0.07, 0.034, 1)` [🔗](#class-physicalskymaterial-property-ground-color)

- void **set\_ground\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_ground\_color**()


Modulates the [Color](class_color.md#class-color) on the bottom half of the sky to represent the ground.

* * *

[float](class_float.md#class-float) **mie\_coefficient** = `0.005` [🔗](#class-physicalskymaterial-property-mie-coefficient)

- void **set\_mie\_coefficient**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mie\_coefficient**()


Controls the strength of [Mie scattering](https://en.wikipedia.org/wiki/Mie_scattering) for the sky. Mie scattering results from light colliding with larger particles (like water). On earth, Mie scattering results in a whitish color around the sun and horizon.

* * *

[Color](class_color.md#class-color) **mie\_color** = `Color(0.69, 0.729, 0.812, 1)` [🔗](#class-physicalskymaterial-property-mie-color)

- void **set\_mie\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_mie\_color**()


Controls the [Color](class_color.md#class-color) of the [Mie scattering](https://en.wikipedia.org/wiki/Mie_scattering) effect. While not physically accurate, this allows for the creation of alien-looking planets.

* * *

[float](class_float.md#class-float) **mie\_eccentricity** = `0.8` [🔗](#class-physicalskymaterial-property-mie-eccentricity)

- void **set\_mie\_eccentricity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mie\_eccentricity**()


Controls the direction of the [Mie scattering](https://en.wikipedia.org/wiki/Mie_scattering). A value of `1` means that when light hits a particle it's passing through straight forward. A value of `-1` means that all light is scatter backwards.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **night\_sky** [🔗](#class-physicalskymaterial-property-night-sky)

- void **set\_night\_sky**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_night\_sky**()


[Texture2D](class_texture2d.md#class-texture2d) for the night sky. This is added to the sky, so if it is bright enough, it may be visible during the day.

* * *

[float](class_float.md#class-float) **rayleigh\_coefficient** = `2.0` [🔗](#class-physicalskymaterial-property-rayleigh-coefficient)

- void **set\_rayleigh\_coefficient**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rayleigh\_coefficient**()


Controls the strength of the [Rayleigh scattering](https://en.wikipedia.org/wiki/Rayleigh_scattering). Rayleigh scattering results from light colliding with small particles. It is responsible for the blue color of the sky.

* * *

[Color](class_color.md#class-color) **rayleigh\_color** = `Color(0.3, 0.405, 0.6, 1)` [🔗](#class-physicalskymaterial-property-rayleigh-color)

- void **set\_rayleigh\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_rayleigh\_color**()


Controls the [Color](class_color.md#class-color) of the [Rayleigh scattering](https://en.wikipedia.org/wiki/Rayleigh_scattering). While not physically accurate, this allows for the creation of alien-looking planets. For example, setting this to a red [Color](class_color.md#class-color) results in a Mars-looking atmosphere with a corresponding blue sunset.

* * *

[float](class_float.md#class-float) **sun\_disk\_scale** = `1.0` [🔗](#class-physicalskymaterial-property-sun-disk-scale)

- void **set\_sun\_disk\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sun\_disk\_scale**()


Sets the size of the sun disk. Default value is based on Sol's perceived size from Earth.

* * *

[float](class_float.md#class-float) **turbidity** = `10.0` [🔗](#class-physicalskymaterial-property-turbidity)

- void **set\_turbidity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_turbidity**()


Sets the thickness of the atmosphere. High turbidity creates a foggy-looking atmosphere, while a low turbidity results in a clearer atmosphere.

* * *

[bool](class_bool.md#class-bool) **use\_debanding** = `true` [🔗](#class-physicalskymaterial-property-use-debanding)

- void **set\_use\_debanding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_debanding**()


If `true`, enables debanding. Debanding adds a small amount of noise which helps reduce banding that appears from the smooth changes in color in the sky.

[Previous](class_particleprocessmaterial.md "ParticleProcessMaterial") [Next](class_physicsmaterial.md "PhysicsMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_particleprocessmaterial.md "ParticleProcessMaterial") [Next](class_physicsmaterial.md "PhysicsMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).