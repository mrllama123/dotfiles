---
title: Material — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_material.html
crawled_at: "2026-08-13T10:28:56+12:00"
content_hash: ad843a4bce0030e11e5947c30b08f870a1754c59016107ab26b260647c3bbe2f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Material

* * *

# Material

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial), [FogMaterial](class_fogmaterial.md#class-fogmaterial), [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial), [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial), [PhysicalSkyMaterial](class_physicalskymaterial.md#class-physicalskymaterial), [PlaceholderMaterial](class_placeholdermaterial.md#class-placeholdermaterial), [ProceduralSkyMaterial](class_proceduralskymaterial.md#class-proceduralskymaterial), [ShaderMaterial](class_shadermaterial.md#class-shadermaterial)

Virtual base class for applying visual properties to an object, such as color and roughness.

## Description

**Material** is a base resource used for coloring and shading geometry. All materials inherit from it and almost all [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) derived nodes carry a **Material**. A few flags and parameters are shared between all material types and are configured here.

Importantly, you can inherit from **Material** to create your own custom material type in script or in GDExtension.

## Tutorials

- [3D Material Testers Demo](https://godotengine.org/asset-library/asset/2742)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |
| --- | --- |
| [Material](#class-material) | [next\_pass](#class-material-property-next-pass) |
| [int](class_int.md#class-int) | [render\_priority](#class-material-property-render-priority) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_can\_do\_next\_pass](#class-material-private-method-can-do-next-pass)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_can\_use\_render\_priority](#class-material-private-method-can-use-render-priority)() virtualconst |
| [Mode](class_shader.md#enum-shader-mode) | [\_get\_shader\_mode](#class-material-private-method-get-shader-mode)() virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_get\_shader\_rid](#class-material-private-method-get-shader-rid)() virtualrequiredconst |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-material-method-create-placeholder)() const |
| void | [inspect\_native\_shader\_code](#class-material-method-inspect-native-shader-code)() |

* * *

## Constants

**RENDER\_PRIORITY\_MAX** = `127` [🔗](#class-material-constant-render-priority-max)

Maximum value for the [render\_priority](#class-material-property-render-priority) parameter.

**RENDER\_PRIORITY\_MIN** = `-128` [🔗](#class-material-constant-render-priority-min)

Minimum value for the [render\_priority](#class-material-property-render-priority) parameter.

* * *

## Property Descriptions

[Material](#class-material) **next\_pass** [🔗](#class-material-property-next-pass)

- void **set\_next\_pass**(value: [Material](#class-material))

- [Material](#class-material) **get\_next\_pass**()


Sets the **Material** to be used for the next pass. This renders the object again using a different material.

**Note:** [next\_pass](#class-material-property-next-pass) materials are not necessarily drawn immediately after the source **Material**. Draw order is determined by material properties, [render\_priority](#class-material-property-render-priority), and distance to camera.

**Note:** This only applies to [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d) s and [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) s with type "Spatial".

* * *

[int](class_int.md#class-int) **render\_priority** [🔗](#class-material-property-render-priority)

- void **set\_render\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_render\_priority**()


Sets the render priority for objects in 3D scenes. Higher priority objects will be sorted in front of lower priority objects. In other words, all objects with [render\_priority](#class-material-property-render-priority) `1` will render on top of all objects with [render\_priority](#class-material-property-render-priority) `0`.

**Note:** This only applies to [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d) s and [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) s with type "Spatial".

**Note:** This will not impact how transparent objects are sorted relative to opaque objects or how dynamic meshes will be sorted relative to other opaque meshes. This is because all transparent objects are drawn after all opaque objects and all dynamic opaque meshes are drawn before other opaque meshes.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_can\_do\_next\_pass**() virtualconst [🔗](#class-material-private-method-can-do-next-pass)

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if [next\_pass](#class-material-property-next-pass) should be shown in the editor or not.

* * *

[bool](class_bool.md#class-bool) **\_can\_use\_render\_priority**() virtualconst [🔗](#class-material-private-method-can-use-render-priority)

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally to determine if [render\_priority](#class-material-property-render-priority) should be shown in the editor or not.

* * *

[Mode](class_shader.md#enum-shader-mode) **\_get\_shader\_mode**() virtualrequiredconst [🔗](#class-material-private-method-get-shader-mode)

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools.

* * *

[RID](class_rid.md#class-rid) **\_get\_shader\_rid**() virtualrequiredconst [🔗](#class-material-private-method-get-shader-rid)

Only exposed for the purpose of overriding. You cannot call this function directly. Used internally by various editor tools. Used to access the RID of the **Material**'s [Shader](class_shader.md#class-shader).

* * *

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-material-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderMaterial](class_placeholdermaterial.md#class-placeholdermaterial)).

* * *

void **inspect\_native\_shader\_code**() [🔗](#class-material-method-inspect-native-shader-code)

Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code. See also [Shader.inspect\_native\_shader\_code()](class_shader.md#class-shader-method-inspect-native-shader-code).

[Previous](class_lightmapgidata.md "LightmapGIData") [Next](class_mesh.md "Mesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightmapgidata.md "LightmapGIData") [Next](class_mesh.md "Mesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).