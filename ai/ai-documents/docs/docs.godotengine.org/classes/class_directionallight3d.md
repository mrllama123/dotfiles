---
title: DirectionalLight3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_directionallight3d.html
crawled_at: "2026-08-13T10:42:27+12:00"
content_hash: 9f60852a28966c438ef9554049449ce26916549d1491a5e4ac77175c1dd609ea
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DirectionalLight3D

* * *

# DirectionalLight3D

**Inherits:** [Light3D](class_light3d.md#class-light3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Directional light from a distance, as from the Sun.

## Description

A directional light is a type of [Light3D](class_light3d.md#class-light3d) node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight.

Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see [Vector3.FORWARD](class_vector3.md#class-vector3-constant-forward) and [Vector3.MODEL\_FRONT](class_vector3.md#class-vector3-constant-model-front)). The position of the node is ignored; only the basis is used to determine light direction.

## Tutorials

- [3D lights and shadows](../tutorials/3d/lights_and_shadows.md)

- [Faking global illumination](../tutorials/3d/global_illumination/faking_global_illumination.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [directional\_shadow\_blend\_splits](#class-directionallight3d-property-directional-shadow-blend-splits) | `false` |
| [float](class_float.md#class-float) | [directional\_shadow\_fade\_start](#class-directionallight3d-property-directional-shadow-fade-start) | `0.8` |
| [float](class_float.md#class-float) | [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance) | `100.0` |
| [ShadowMode](#enum-directionallight3d-shadowmode) | [directional\_shadow\_mode](#class-directionallight3d-property-directional-shadow-mode) | `2` |
| [float](class_float.md#class-float) | [directional\_shadow\_pancake\_size](#class-directionallight3d-property-directional-shadow-pancake-size) | `20.0` |
| [float](class_float.md#class-float) | [directional\_shadow\_split\_1](#class-directionallight3d-property-directional-shadow-split-1) | `0.1` |
| [float](class_float.md#class-float) | [directional\_shadow\_split\_2](#class-directionallight3d-property-directional-shadow-split-2) | `0.2` |
| [float](class_float.md#class-float) | [directional\_shadow\_split\_3](#class-directionallight3d-property-directional-shadow-split-3) | `0.5` |
| [SkyMode](#enum-directionallight3d-skymode) | [sky\_mode](#class-directionallight3d-property-sky-mode) | `0` |

* * *

## Enumerations

enum **ShadowMode**: [🔗](#enum-directionallight3d-shadowmode)

[ShadowMode](#enum-directionallight3d-shadowmode) **SHADOW\_ORTHOGONAL** = `0`

Renders the entire scene's shadow map from an orthogonal point of view. This is the fastest directional shadow mode. May result in blurrier shadows on close objects.

[ShadowMode](#enum-directionallight3d-shadowmode) **SHADOW\_PARALLEL\_2\_SPLITS** = `1`

Splits the view frustum in 2 areas, each with its own shadow map. This shadow mode is a compromise between [SHADOW\_ORTHOGONAL](#class-directionallight3d-constant-shadow-orthogonal) and [SHADOW\_PARALLEL\_4\_SPLITS](#class-directionallight3d-constant-shadow-parallel-4-splits) in terms of performance.

[ShadowMode](#enum-directionallight3d-shadowmode) **SHADOW\_PARALLEL\_4\_SPLITS** = `2`

Splits the view frustum in 4 areas, each with its own shadow map. This is the slowest directional shadow mode.

* * *

enum **SkyMode**: [🔗](#enum-directionallight3d-skymode)

[SkyMode](#enum-directionallight3d-skymode) **SKY\_MODE\_LIGHT\_AND\_SKY** = `0`

Makes the light visible in both scene lighting and sky rendering.

[SkyMode](#enum-directionallight3d-skymode) **SKY\_MODE\_LIGHT\_ONLY** = `1`

Makes the light visible in scene lighting only (including direct lighting and global illumination). When using this mode, the light will not be visible from sky shaders.

[SkyMode](#enum-directionallight3d-skymode) **SKY\_MODE\_SKY\_ONLY** = `2`

Makes the light visible to sky shaders only. When using this mode the light will not cast light into the scene (either through direct lighting or through global illumination), but can be accessed through sky shaders. This can be useful, for example, when you want to control sky effects without illuminating the scene (during a night cycle, for example).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **directional\_shadow\_blend\_splits** = `false` [🔗](#class-directionallight3d-property-directional-shadow-blend-splits)

- void **set\_blend\_splits**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_blend\_splits\_enabled**()


If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits. Enabling shadow blend splitting also has a moderate performance cost. This is ignored when [directional\_shadow\_mode](#class-directionallight3d-property-directional-shadow-mode) is [SHADOW\_ORTHOGONAL](#class-directionallight3d-constant-shadow-orthogonal).

* * *

[float](class_float.md#class-float) **directional\_shadow\_fade\_start** = `0.8` [🔗](#class-directionallight3d-property-directional-shadow-fade-start)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


Proportion of [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance) at which point the shadow starts to fade. At [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance), the shadow will disappear. The default value is a balance between smooth fading and distant shadow visibility. If the camera moves fast and the [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance) is low, consider lowering [directional\_shadow\_fade\_start](#class-directionallight3d-property-directional-shadow-fade-start) below `0.8` to make shadow transitions less noticeable. On the other hand, if you tuned [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance) to cover the entire scene, you can set [directional\_shadow\_fade\_start](#class-directionallight3d-property-directional-shadow-fade-start) to `1.0` to prevent the shadow from fading in the distance (it will suddenly cut off instead).

* * *

[float](class_float.md#class-float) **directional\_shadow\_max\_distance** = `100.0` [🔗](#class-directionallight3d-property-directional-shadow-max-distance)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


The maximum distance for shadow splits. Increasing this value will make directional shadows visible from further away, at the cost of lower overall shadow detail and performance (since more objects need to be included in the directional shadow rendering).

* * *

[ShadowMode](#enum-directionallight3d-shadowmode) **directional\_shadow\_mode** = `2` [🔗](#class-directionallight3d-property-directional-shadow-mode)

- void **set\_shadow\_mode**(value: [ShadowMode](#enum-directionallight3d-shadowmode))

- [ShadowMode](#enum-directionallight3d-shadowmode) **get\_shadow\_mode**()


The light's shadow rendering algorithm.

* * *

[float](class_float.md#class-float) **directional\_shadow\_pancake\_size** = `20.0` [🔗](#class-directionallight3d-property-directional-shadow-pancake-size)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


Sets the size of the directional shadow pancake. The pancake offsets the start of the shadow's camera frustum to provide a higher effective depth resolution for the shadow. However, a high pancake size can cause artifacts in the shadows of large objects that are close to the edge of the frustum. Reducing the pancake size can help. Setting the size to `0` turns off the pancaking effect.

* * *

[float](class_float.md#class-float) **directional\_shadow\_split\_1** = `0.1` [🔗](#class-directionallight3d-property-directional-shadow-split-1)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


The distance from camera to shadow split 1. Relative to [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance). Only used when [directional\_shadow\_mode](#class-directionallight3d-property-directional-shadow-mode) is [SHADOW\_PARALLEL\_2\_SPLITS](#class-directionallight3d-constant-shadow-parallel-2-splits) or [SHADOW\_PARALLEL\_4\_SPLITS](#class-directionallight3d-constant-shadow-parallel-4-splits).

* * *

[float](class_float.md#class-float) **directional\_shadow\_split\_2** = `0.2` [🔗](#class-directionallight3d-property-directional-shadow-split-2)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


The distance from shadow split 1 to split 2. Relative to [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance). Only used when [directional\_shadow\_mode](#class-directionallight3d-property-directional-shadow-mode) is [SHADOW\_PARALLEL\_4\_SPLITS](#class-directionallight3d-constant-shadow-parallel-4-splits).

* * *

[float](class_float.md#class-float) **directional\_shadow\_split\_3** = `0.5` [🔗](#class-directionallight3d-property-directional-shadow-split-3)

- void **set\_param**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_param**()


The distance from shadow split 2 to split 3. Relative to [directional\_shadow\_max\_distance](#class-directionallight3d-property-directional-shadow-max-distance). Only used when [directional\_shadow\_mode](#class-directionallight3d-property-directional-shadow-mode) is [SHADOW\_PARALLEL\_4\_SPLITS](#class-directionallight3d-constant-shadow-parallel-4-splits).

* * *

[SkyMode](#enum-directionallight3d-skymode) **sky\_mode** = `0` [🔗](#class-directionallight3d-property-sky-mode)

- void **set\_sky\_mode**(value: [SkyMode](#enum-directionallight3d-skymode))

- [SkyMode](#enum-directionallight3d-skymode) **get\_sky\_mode**()


Whether this **DirectionalLight3D** is visible in the sky, in the scene, or both in the sky and in the scene.

[Previous](class_directionallight2d.md "DirectionalLight2D") [Next](class_editorcommandpalette.md "EditorCommandPalette")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_directionallight2d.md "DirectionalLight2D") [Next](class_editorcommandpalette.md "EditorCommandPalette")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).