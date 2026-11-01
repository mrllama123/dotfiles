---
title: ProceduralSkyMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_proceduralskymaterial.html
crawled_at: "2026-08-13T10:20:56+12:00"
content_hash: ef3e457163408fac86d11b48fdd29685ac7082a802badc8a689843b97d55caaa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ProceduralSkyMaterial

* * *

# ProceduralSkyMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material that defines a simple sky for a [Sky](class_sky.md#class-sky) resource.

## Description

**ProceduralSkyMaterial** provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are defined by a main color, a color at the horizon, and an easing curve to interpolate between them. Suns are described by a position in the sky, a color, and a max angle from the sun at which the easing curve ends. The max angle therefore defines the size of the sun in the sky.

**ProceduralSkyMaterial** supports up to 4 suns, using the color, and energy, direction, and angular distance of the first four [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) nodes in the scene. This means that the suns are defined individually by the properties of their corresponding [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s and globally by [sun\_angle\_max](#class-proceduralskymaterial-property-sun-angle-max) and [sun\_curve](#class-proceduralskymaterial-property-sun-curve).

**ProceduralSkyMaterial** uses a lightweight shader to draw the sky and is therefore suited for real-time updates. This makes it a great option for a sky that is simple and computationally cheap, but unrealistic. If you need a more realistic procedural option, use [PhysicalSkyMaterial](class_physicalskymaterial.md#class-physicalskymaterial).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [energy\_multiplier](#class-proceduralskymaterial-property-energy-multiplier) | `1.0` |
| [Color](class_color.md#class-color) | [ground\_bottom\_color](#class-proceduralskymaterial-property-ground-bottom-color) | `Color(0.2, 0.169, 0.133, 1)` |
| [float](class_float.md#class-float) | [ground\_curve](#class-proceduralskymaterial-property-ground-curve) | `0.02` |
| [float](class_float.md#class-float) | [ground\_energy\_multiplier](#class-proceduralskymaterial-property-ground-energy-multiplier) | `1.0` |
| [Color](class_color.md#class-color) | [ground\_horizon\_color](#class-proceduralskymaterial-property-ground-horizon-color) | `Color(0.6463, 0.6558, 0.6708, 1)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [sky\_cover](#class-proceduralskymaterial-property-sky-cover) |  |
| [Color](class_color.md#class-color) | [sky\_cover\_modulate](#class-proceduralskymaterial-property-sky-cover-modulate) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [sky\_curve](#class-proceduralskymaterial-property-sky-curve) | `0.15` |
| [float](class_float.md#class-float) | [sky\_energy\_multiplier](#class-proceduralskymaterial-property-sky-energy-multiplier) | `1.0` |
| [Color](class_color.md#class-color) | [sky\_horizon\_color](#class-proceduralskymaterial-property-sky-horizon-color) | `Color(0.6463, 0.6558, 0.6708, 1)` |
| [Color](class_color.md#class-color) | [sky\_top\_color](#class-proceduralskymaterial-property-sky-top-color) | `Color(0.385, 0.454, 0.55, 1)` |
| [float](class_float.md#class-float) | [sun\_angle\_max](#class-proceduralskymaterial-property-sun-angle-max) | `30.0` |
| [float](class_float.md#class-float) | [sun\_curve](#class-proceduralskymaterial-property-sun-curve) | `0.15` |
| [bool](class_bool.md#class-bool) | [use\_debanding](#class-proceduralskymaterial-property-use-debanding) | `true` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **energy\_multiplier** = `1.0` [🔗](#class-proceduralskymaterial-property-energy-multiplier)

- void **set\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_energy\_multiplier**()


The sky's overall brightness multiplier. Higher values result in a brighter sky.

* * *

[Color](class_color.md#class-color) **ground\_bottom\_color** = `Color(0.2, 0.169, 0.133, 1)` [🔗](#class-proceduralskymaterial-property-ground-bottom-color)

- void **set\_ground\_bottom\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_ground\_bottom\_color**()


Color of the ground at the bottom. Blends with [ground\_horizon\_color](#class-proceduralskymaterial-property-ground-horizon-color).

* * *

[float](class_float.md#class-float) **ground\_curve** = `0.02` [🔗](#class-proceduralskymaterial-property-ground-curve)

- void **set\_ground\_curve**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ground\_curve**()


How quickly the [ground\_horizon\_color](#class-proceduralskymaterial-property-ground-horizon-color) fades into the [ground\_bottom\_color](#class-proceduralskymaterial-property-ground-bottom-color).

* * *

[float](class_float.md#class-float) **ground\_energy\_multiplier** = `1.0` [🔗](#class-proceduralskymaterial-property-ground-energy-multiplier)

- void **set\_ground\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_ground\_energy\_multiplier**()


Multiplier for ground color. A higher value will make the ground brighter.

* * *

[Color](class_color.md#class-color) **ground\_horizon\_color** = `Color(0.6463, 0.6558, 0.6708, 1)` [🔗](#class-proceduralskymaterial-property-ground-horizon-color)

- void **set\_ground\_horizon\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_ground\_horizon\_color**()


Color of the ground at the horizon. Blends with [ground\_bottom\_color](#class-proceduralskymaterial-property-ground-bottom-color).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **sky\_cover** [🔗](#class-proceduralskymaterial-property-sky-cover)

- void **set\_sky\_cover**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_sky\_cover**()


The sky cover texture to use. This texture must use an equirectangular projection (similar to [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial)). The texture's colors will be _added_ to the existing sky color, and will be multiplied by [sky\_energy\_multiplier](#class-proceduralskymaterial-property-sky-energy-multiplier) and [sky\_cover\_modulate](#class-proceduralskymaterial-property-sky-cover-modulate). This is mainly suited to displaying stars at night, but it can also be used to display clouds at day or night (with a non-physically-accurate look).

* * *

[Color](class_color.md#class-color) **sky\_cover\_modulate** = `Color(1, 1, 1, 1)` [🔗](#class-proceduralskymaterial-property-sky-cover-modulate)

- void **set\_sky\_cover\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_sky\_cover\_modulate**()


The tint to apply to the [sky\_cover](#class-proceduralskymaterial-property-sky-cover) texture. This can be used to change the sky cover's colors or opacity independently of the sky energy, which is useful for day/night or weather transitions. Only effective if a texture is defined in [sky\_cover](#class-proceduralskymaterial-property-sky-cover).

* * *

[float](class_float.md#class-float) **sky\_curve** = `0.15` [🔗](#class-proceduralskymaterial-property-sky-curve)

- void **set\_sky\_curve**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sky\_curve**()


How quickly the [sky\_horizon\_color](#class-proceduralskymaterial-property-sky-horizon-color) fades into the [sky\_top\_color](#class-proceduralskymaterial-property-sky-top-color).

* * *

[float](class_float.md#class-float) **sky\_energy\_multiplier** = `1.0` [🔗](#class-proceduralskymaterial-property-sky-energy-multiplier)

- void **set\_sky\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sky\_energy\_multiplier**()


Multiplier for sky color. A higher value will make the sky brighter.

* * *

[Color](class_color.md#class-color) **sky\_horizon\_color** = `Color(0.6463, 0.6558, 0.6708, 1)` [🔗](#class-proceduralskymaterial-property-sky-horizon-color)

- void **set\_sky\_horizon\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_sky\_horizon\_color**()


Color of the sky at the horizon. Blends with [sky\_top\_color](#class-proceduralskymaterial-property-sky-top-color).

* * *

[Color](class_color.md#class-color) **sky\_top\_color** = `Color(0.385, 0.454, 0.55, 1)` [🔗](#class-proceduralskymaterial-property-sky-top-color)

- void **set\_sky\_top\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_sky\_top\_color**()


Color of the sky at the top. Blends with [sky\_horizon\_color](#class-proceduralskymaterial-property-sky-horizon-color).

* * *

[float](class_float.md#class-float) **sun\_angle\_max** = `30.0` [🔗](#class-proceduralskymaterial-property-sun-angle-max)

- void **set\_sun\_angle\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sun\_angle\_max**()


Distance from center of sun where it fades out completely.

* * *

[float](class_float.md#class-float) **sun\_curve** = `0.15` [🔗](#class-proceduralskymaterial-property-sun-curve)

- void **set\_sun\_curve**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sun\_curve**()


How quickly the sun fades away between the edge of the sun disk and [sun\_angle\_max](#class-proceduralskymaterial-property-sun-angle-max).

* * *

[bool](class_bool.md#class-bool) **use\_debanding** = `true` [🔗](#class-proceduralskymaterial-property-use-debanding)

- void **set\_use\_debanding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_debanding**()


If `true`, enables debanding. Debanding adds a small amount of noise which helps reduce banding that appears from the smooth changes in color in the sky.

[Previous](class_prismmesh.md "PrismMesh") [Next](class_quadmesh.md "QuadMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_prismmesh.md "PrismMesh") [Next](class_quadmesh.md "QuadMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).