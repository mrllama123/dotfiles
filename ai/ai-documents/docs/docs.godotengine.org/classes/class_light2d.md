---
title: Light2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_light2d.html
crawled_at: "2026-08-13T10:26:59+12:00"
content_hash: 2eeef292178803a1e92a66d4cabd42a3f1cac6daac945882b3064a3538ca18b0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Light2D

* * *

# Light2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [DirectionalLight2D](class_directionallight2d.md#class-directionallight2d), [PointLight2D](class_pointlight2d.md#class-pointlight2d)

Casts light in a 2D environment.

## Description

Casts light in a 2D environment. A light is defined as a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).

## Tutorials

- [2D lights and shadows](../tutorials/2d/2d_lights_and_shadows.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [BlendMode](#enum-light2d-blendmode) | [blend\_mode](#class-light2d-property-blend-mode) | `0` |
| [Color](class_color.md#class-color) | [color](#class-light2d-property-color) | `Color(1, 1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [editor\_only](#class-light2d-property-editor-only) | `false` |
| [bool](class_bool.md#class-bool) | [enabled](#class-light2d-property-enabled) | `true` |
| [float](class_float.md#class-float) | [energy](#class-light2d-property-energy) | `1.0` |
| [int](class_int.md#class-int) | [range\_item\_cull\_mask](#class-light2d-property-range-item-cull-mask) | `1` |
| [int](class_int.md#class-int) | [range\_layer\_max](#class-light2d-property-range-layer-max) | `0` |
| [int](class_int.md#class-int) | [range\_layer\_min](#class-light2d-property-range-layer-min) | `0` |
| [int](class_int.md#class-int) | [range\_z\_max](#class-light2d-property-range-z-max) | `1024` |
| [int](class_int.md#class-int) | [range\_z\_min](#class-light2d-property-range-z-min) | `-1024` |
| [Color](class_color.md#class-color) | [shadow\_color](#class-light2d-property-shadow-color) | `Color(0, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [shadow\_enabled](#class-light2d-property-shadow-enabled) | `false` |
| [ShadowFilter](#enum-light2d-shadowfilter) | [shadow\_filter](#class-light2d-property-shadow-filter) | `0` |
| [float](class_float.md#class-float) | [shadow\_filter\_smooth](#class-light2d-property-shadow-filter-smooth) | `0.0` |
| [int](class_int.md#class-int) | [shadow\_item\_cull\_mask](#class-light2d-property-shadow-item-cull-mask) | `1` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_height](#class-light2d-method-get-height)() const |
| void | [set\_height](#class-light2d-method-set-height)(height: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **ShadowFilter**: [🔗](#enum-light2d-shadowfilter)

[ShadowFilter](#enum-light2d-shadowfilter) **SHADOW\_FILTER\_NONE** = `0`

No filter applies to the shadow map. This provides hard shadow edges and is the fastest to render. See [shadow\_filter](#class-light2d-property-shadow-filter).

[ShadowFilter](#enum-light2d-shadowfilter) **SHADOW\_FILTER\_PCF5** = `1`

Percentage closer filtering (5 samples) applies to the shadow map. This is slower compared to hard shadow rendering. See [shadow\_filter](#class-light2d-property-shadow-filter).

[ShadowFilter](#enum-light2d-shadowfilter) **SHADOW\_FILTER\_PCF13** = `2`

Percentage closer filtering (13 samples) applies to the shadow map. This is the slowest shadow filtering mode, and should be used sparingly. See [shadow\_filter](#class-light2d-property-shadow-filter).

* * *

enum **BlendMode**: [🔗](#enum-light2d-blendmode)

[BlendMode](#enum-light2d-blendmode) **BLEND\_MODE\_ADD** = `0`

Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behavior of a light.

[BlendMode](#enum-light2d-blendmode) **BLEND\_MODE\_SUB** = `1`

Subtracts the value of pixels corresponding to the Light2D to the values of pixels under it, resulting in inversed light effect.

[BlendMode](#enum-light2d-blendmode) **BLEND\_MODE\_MIX** = `2`

Mix the value of pixels corresponding to the Light2D to the values of pixels under it by linear interpolation.

* * *

## Property Descriptions

[BlendMode](#enum-light2d-blendmode) **blend\_mode** = `0` [🔗](#class-light2d-property-blend-mode)

- void **set\_blend\_mode**(value: [BlendMode](#enum-light2d-blendmode))

- [BlendMode](#enum-light2d-blendmode) **get\_blend\_mode**()


The Light2D's blend mode.

* * *

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-light2d-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The Light2D's [Color](class_color.md#class-color).

* * *

[bool](class_bool.md#class-bool) **editor\_only** = `false` [🔗](#class-light2d-property-editor-only)

- void **set\_editor\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editor\_only**()


If `true`, Light2D will only appear when editing the scene.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-light2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, Light2D will emit light.

* * *

[float](class_float.md#class-float) **energy** = `1.0` [🔗](#class-light2d-property-energy)

- void **set\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_energy**()


The Light2D's energy value. The larger the value, the stronger the light.

* * *

[int](class_int.md#class-int) **range\_item\_cull\_mask** = `1` [🔗](#class-light2d-property-range-item-cull-mask)

- void **set\_item\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_cull\_mask**()


The layer mask. Only objects with a matching [CanvasItem.light\_mask](class_canvasitem.md#class-canvasitem-property-light-mask) will be affected by the Light2D. See also [shadow\_item\_cull\_mask](#class-light2d-property-shadow-item-cull-mask), which affects which objects can cast shadows.

**Note:** [range\_item\_cull\_mask](#class-light2d-property-range-item-cull-mask) is ignored by [DirectionalLight2D](class_directionallight2d.md#class-directionallight2d), which will always light a 2D node regardless of the 2D node's [CanvasItem.light\_mask](class_canvasitem.md#class-canvasitem-property-light-mask).

* * *

[int](class_int.md#class-int) **range\_layer\_max** = `0` [🔗](#class-light2d-property-range-layer-max)

- void **set\_layer\_range\_max**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_layer\_range\_max**()


Maximum layer value of objects that are affected by the Light2D.

* * *

[int](class_int.md#class-int) **range\_layer\_min** = `0` [🔗](#class-light2d-property-range-layer-min)

- void **set\_layer\_range\_min**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_layer\_range\_min**()


Minimum layer value of objects that are affected by the Light2D.

* * *

[int](class_int.md#class-int) **range\_z\_max** = `1024` [🔗](#class-light2d-property-range-z-max)

- void **set\_z\_range\_max**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_z\_range\_max**()


Maximum `z` value of objects that are affected by the Light2D.

* * *

[int](class_int.md#class-int) **range\_z\_min** = `-1024` [🔗](#class-light2d-property-range-z-min)

- void **set\_z\_range\_min**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_z\_range\_min**()


Minimum `z` value of objects that are affected by the Light2D.

* * *

[Color](class_color.md#class-color) **shadow\_color** = `Color(0, 0, 0, 0)` [🔗](#class-light2d-property-shadow-color)

- void **set\_shadow\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_shadow\_color**()


[Color](class_color.md#class-color) of shadows cast by the Light2D.

* * *

[bool](class_bool.md#class-bool) **shadow\_enabled** = `false` [🔗](#class-light2d-property-shadow-enabled)

- void **set\_shadow\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shadow\_enabled**()


If `true`, the Light2D will cast shadows.

* * *

[ShadowFilter](#enum-light2d-shadowfilter) **shadow\_filter** = `0` [🔗](#class-light2d-property-shadow-filter)

- void **set\_shadow\_filter**(value: [ShadowFilter](#enum-light2d-shadowfilter))

- [ShadowFilter](#enum-light2d-shadowfilter) **get\_shadow\_filter**()


Shadow filter type.

* * *

[float](class_float.md#class-float) **shadow\_filter\_smooth** = `0.0` [🔗](#class-light2d-property-shadow-filter-smooth)

- void **set\_shadow\_smooth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_shadow\_smooth**()


Smoothing value for shadows. Higher values will result in softer shadows, at the cost of visible streaks that can appear in shadow rendering. [shadow\_filter\_smooth](#class-light2d-property-shadow-filter-smooth) only has an effect if [shadow\_filter](#class-light2d-property-shadow-filter) is [SHADOW\_FILTER\_PCF5](#class-light2d-constant-shadow-filter-pcf5) or [SHADOW\_FILTER\_PCF13](#class-light2d-constant-shadow-filter-pcf13).

* * *

[int](class_int.md#class-int) **shadow\_item\_cull\_mask** = `1` [🔗](#class-light2d-property-shadow-item-cull-mask)

- void **set\_item\_shadow\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_item\_shadow\_cull\_mask**()


The shadow mask. Used with [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) to cast shadows. Only occluders with a matching [CanvasItem.light\_mask](class_canvasitem.md#class-canvasitem-property-light-mask) will cast shadows. See also [range\_item\_cull\_mask](#class-light2d-property-range-item-cull-mask), which affects which objects can _receive_ the light.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_height**() const [🔗](#class-light2d-method-get-height)

Returns the light's height, which is used in 2D normal mapping. See [PointLight2D.height](class_pointlight2d.md#class-pointlight2d-property-height) and [DirectionalLight2D.height](class_directionallight2d.md#class-directionallight2d-property-height).

* * *

void **set\_height**(height: [float](class_float.md#class-float)) [🔗](#class-light2d-method-set-height)

Sets the light's height, which is used in 2D normal mapping. See [PointLight2D.height](class_pointlight2d.md#class-pointlight2d-property-height) and [DirectionalLight2D.height](class_directionallight2d.md#class-directionallight2d-property-height).

[Previous](class_label3d.md "Label3D") [Next](class_light3d.md "Light3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_label3d.md "Label3D") [Next](class_light3d.md "Light3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).