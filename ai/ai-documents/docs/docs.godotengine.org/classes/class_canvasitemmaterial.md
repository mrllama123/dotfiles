---
title: CanvasItemMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_canvasitemmaterial.html
crawled_at: "2026-08-13T10:31:07+12:00"
content_hash: c694aabb241e6fcbc5d2fdbb96c492528c70afb2ad35c5d0af6dc8d9aef139a5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CanvasItemMaterial

* * *

# CanvasItemMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material for [CanvasItem](class_canvasitem.md#class-canvasitem) s.

## Description

**CanvasItemMaterial** s provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) to more fully customize a material's interactions with a [CanvasItem](class_canvasitem.md#class-canvasitem).

## Properties

|     |     |     |
| --- | --- | --- |
| [BlendMode](#enum-canvasitemmaterial-blendmode) | [blend\_mode](#class-canvasitemmaterial-property-blend-mode) | `0` |
| [LightMode](#enum-canvasitemmaterial-lightmode) | [light\_mode](#class-canvasitemmaterial-property-light-mode) | `0` |
| [int](class_int.md#class-int) | [particles\_anim\_h\_frames](#class-canvasitemmaterial-property-particles-anim-h-frames) |  |
| [bool](class_bool.md#class-bool) | [particles\_anim\_loop](#class-canvasitemmaterial-property-particles-anim-loop) |  |
| [int](class_int.md#class-int) | [particles\_anim\_v\_frames](#class-canvasitemmaterial-property-particles-anim-v-frames) |  |
| [bool](class_bool.md#class-bool) | [particles\_animation](#class-canvasitemmaterial-property-particles-animation) | `false` |

* * *

## Enumerations

enum **BlendMode**: [🔗](#enum-canvasitemmaterial-blendmode)

[BlendMode](#enum-canvasitemmaterial-blendmode) **BLEND\_MODE\_MIX** = `0`

Mix blending mode. Colors are assumed to be independent of the alpha (opacity) value.

[BlendMode](#enum-canvasitemmaterial-blendmode) **BLEND\_MODE\_ADD** = `1`

Additive blending mode.

[BlendMode](#enum-canvasitemmaterial-blendmode) **BLEND\_MODE\_SUB** = `2`

Subtractive blending mode.

[BlendMode](#enum-canvasitemmaterial-blendmode) **BLEND\_MODE\_MUL** = `3`

Multiplicative blending mode.

[BlendMode](#enum-canvasitemmaterial-blendmode) **BLEND\_MODE\_PREMULT\_ALPHA** = `4`

Mix blending mode. Colors are assumed to be premultiplied by the alpha (opacity) value.

* * *

enum **LightMode**: [🔗](#enum-canvasitemmaterial-lightmode)

[LightMode](#enum-canvasitemmaterial-lightmode) **LIGHT\_MODE\_NORMAL** = `0`

Render the material using both light and non-light sensitive material properties.

[LightMode](#enum-canvasitemmaterial-lightmode) **LIGHT\_MODE\_UNSHADED** = `1`

Render the material as if there were no light.

[LightMode](#enum-canvasitemmaterial-lightmode) **LIGHT\_MODE\_LIGHT\_ONLY** = `2`

Render the material as if there were only light.

* * *

## Property Descriptions

[BlendMode](#enum-canvasitemmaterial-blendmode) **blend\_mode** = `0` [🔗](#class-canvasitemmaterial-property-blend-mode)

- void **set\_blend\_mode**(value: [BlendMode](#enum-canvasitemmaterial-blendmode))

- [BlendMode](#enum-canvasitemmaterial-blendmode) **get\_blend\_mode**()


The manner in which a material's rendering is applied to underlying textures.

* * *

[LightMode](#enum-canvasitemmaterial-lightmode) **light\_mode** = `0` [🔗](#class-canvasitemmaterial-property-light-mode)

- void **set\_light\_mode**(value: [LightMode](#enum-canvasitemmaterial-lightmode))

- [LightMode](#enum-canvasitemmaterial-lightmode) **get\_light\_mode**()


The manner in which material reacts to lighting.

* * *

[int](class_int.md#class-int) **particles\_anim\_h\_frames** [🔗](#class-canvasitemmaterial-property-particles-anim-h-frames)

- void **set\_particles\_anim\_h\_frames**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_particles\_anim\_h\_frames**()


The number of columns in the spritesheet assigned as [Texture2D](class_texture2d.md#class-texture2d) for a [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) or [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d).

**Note:** This property is only used and visible in the editor if [particles\_animation](#class-canvasitemmaterial-property-particles-animation) is `true`.

* * *

[bool](class_bool.md#class-bool) **particles\_anim\_loop** [🔗](#class-canvasitemmaterial-property-particles-anim-loop)

- void **set\_particles\_anim\_loop**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particles\_anim\_loop**()


If `true`, the particles animation will loop.

**Note:** This property is only used and visible in the editor if [particles\_animation](#class-canvasitemmaterial-property-particles-animation) is `true`.

* * *

[int](class_int.md#class-int) **particles\_anim\_v\_frames** [🔗](#class-canvasitemmaterial-property-particles-anim-v-frames)

- void **set\_particles\_anim\_v\_frames**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_particles\_anim\_v\_frames**()


The number of rows in the spritesheet assigned as [Texture2D](class_texture2d.md#class-texture2d) for a [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) or [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d).

**Note:** This property is only used and visible in the editor if [particles\_animation](#class-canvasitemmaterial-property-particles-animation) is `true`.

* * *

[bool](class_bool.md#class-bool) **particles\_animation** = `false` [🔗](#class-canvasitemmaterial-property-particles-animation)

- void **set\_particles\_animation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_particles\_animation**()


If `true`, enable spritesheet-based animation features when assigned to [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) and [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d) nodes. The [ParticleProcessMaterial.anim\_speed\_max](class_particleprocessmaterial.md#class-particleprocessmaterial-property-anim-speed-max) or [CPUParticles2D.anim\_speed\_max](class_cpuparticles2d.md#class-cpuparticles2d-property-anim-speed-max) should also be set to a positive value for the animation to play.

This property (and other `particles_anim_*` properties that depend on it) has no effect on other types of nodes.

[Previous](class_cameratexture.md "CameraTexture") [Next](class_canvastexture.md "CanvasTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cameratexture.md "CameraTexture") [Next](class_canvastexture.md "CanvasTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).