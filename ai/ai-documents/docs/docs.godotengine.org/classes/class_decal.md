---
title: Decal — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_decal.html
crawled_at: "2026-08-13T10:41:46+12:00"
content_hash: 870d52769ce10eb6a2fe77d9de36b3c59cfea07561354629528e120af8ad36a9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Decal

* * *

# Decal

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Node that projects a texture onto a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d).

## Description

**Decal** s are used to project a texture onto a [Mesh](class_mesh.md#class-mesh) in the scene. Use Decals to add detail to a scene without affecting the underlying [Mesh](class_mesh.md#class-mesh). They are often used to add weathering to building, add dirt or mud to the ground, or add variety to props. Decals can be moved at any time, making them suitable for things like blob shadows or laser sight dots.

They are made of an [AABB](class_aabb.md#class-aabb) and a group of [Texture2D](class_texture2d.md#class-texture2d) s specifying [Color](class_color.md#class-color), normal, ORM (ambient occlusion, roughness, metallic), and emission. Decals are projected within their [AABB](class_aabb.md#class-aabb) so altering the orientation of the Decal affects the direction in which they are projected. By default, Decals are projected down (i.e. from positive Y to negative Y).

The [Texture2D](class_texture2d.md#class-texture2d) s associated with the Decal are automatically stored in a texture atlas which is used for drawing the decals so all decals can be drawn at once. Godot uses clustered decals, meaning they are stored in cluster data and drawn when the mesh is drawn, they are not drawn as a post-processing effect after.

**Note:** Decals cannot affect an underlying material's transparency, regardless of its transparency mode (alpha blend, alpha scissor, alpha hash, opaque pre-pass). This means translucent or transparent areas of a material will remain translucent or transparent even if an opaque decal is applied on them.

**Note:** Decals are only supported in the Forward+ and Mobile rendering methods, not Compatibility. When using the Mobile rendering method, only 8 decals can be displayed on each mesh resource. Attempting to display more than 8 decals on a single mesh resource will result in decals flickering in and out as the camera moves.

**Note:** When using the Mobile rendering method, decals will only correctly affect meshes whose visibility AABB intersects with the decal's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, [GeometryInstance3D.extra\_cull\_margin](class_geometryinstance3d.md#class-geometryinstance3d-property-extra-cull-margin) must be increased on the mesh. Otherwise, the decal may not be visible on the mesh.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [albedo\_mix](#class-decal-property-albedo-mix) | `1.0` |
| [int](class_int.md#class-int) | [cull\_mask](#class-decal-property-cull-mask) | `1048575` |
| [float](class_float.md#class-float) | [distance\_fade\_begin](#class-decal-property-distance-fade-begin) | `40.0` |
| [bool](class_bool.md#class-bool) | [distance\_fade\_enabled](#class-decal-property-distance-fade-enabled) | `false` |
| [float](class_float.md#class-float) | [distance\_fade\_length](#class-decal-property-distance-fade-length) | `10.0` |
| [float](class_float.md#class-float) | [emission\_energy](#class-decal-property-emission-energy) | `1.0` |
| [float](class_float.md#class-float) | [lower\_fade](#class-decal-property-lower-fade) | `0.3` |
| [Color](class_color.md#class-color) | [modulate](#class-decal-property-modulate) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [normal\_fade](#class-decal-property-normal-fade) | `0.0` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-decal-property-size) | `Vector3(2, 2, 2)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_albedo](#class-decal-property-texture-albedo) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_emission](#class-decal-property-texture-emission) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_normal](#class-decal-property-texture-normal) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_orm](#class-decal-property-texture-orm) |  |
| [float](class_float.md#class-float) | [upper\_fade](#class-decal-property-upper-fade) | `0.3` |

## Methods

|     |     |
| --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_texture](#class-decal-method-get-texture)(type: [DecalTexture](#enum-decal-decaltexture)) const |
| void | [set\_texture](#class-decal-method-set-texture)(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d)) |

* * *

## Enumerations

enum **DecalTexture**: [🔗](#enum-decal-decaltexture)

[DecalTexture](#enum-decal-decaltexture) **TEXTURE\_ALBEDO** = `0`

[Texture2D](class_texture2d.md#class-texture2d) corresponding to [texture\_albedo](#class-decal-property-texture-albedo).

[DecalTexture](#enum-decal-decaltexture) **TEXTURE\_NORMAL** = `1`

[Texture2D](class_texture2d.md#class-texture2d) corresponding to [texture\_normal](#class-decal-property-texture-normal).

[DecalTexture](#enum-decal-decaltexture) **TEXTURE\_ORM** = `2`

[Texture2D](class_texture2d.md#class-texture2d) corresponding to [texture\_orm](#class-decal-property-texture-orm).

[DecalTexture](#enum-decal-decaltexture) **TEXTURE\_EMISSION** = `3`

[Texture2D](class_texture2d.md#class-texture2d) corresponding to [texture\_emission](#class-decal-property-texture-emission).

[DecalTexture](#enum-decal-decaltexture) **TEXTURE\_MAX** = `4`

Max size of [DecalTexture](#enum-decal-decaltexture) enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **albedo\_mix** = `1.0` [🔗](#class-decal-property-albedo-mix)

- void **set\_albedo\_mix**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_albedo\_mix**()


Blends the albedo [Color](class_color.md#class-color) of the decal with albedo [Color](class_color.md#class-color) of the underlying mesh. This can be set to `0.0` to create a decal that only affects normal or ORM. In this case, an albedo texture is still required as its alpha channel will determine where the normal and ORM will be overridden. See also [modulate](#class-decal-property-modulate).

* * *

[int](class_int.md#class-int) **cull\_mask** = `1048575` [🔗](#class-decal-property-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


Specifies which [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) this decal will project on. By default, Decals affect all layers. This is used so you can specify which types of objects receive the Decal and which do not. This is especially useful so you can ensure that dynamic objects don't accidentally receive a Decal intended for the terrain under them.

* * *

[float](class_float.md#class-float) **distance\_fade\_begin** = `40.0` [🔗](#class-decal-property-distance-fade-begin)

- void **set\_distance\_fade\_begin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_begin**()


The distance from the camera at which the Decal begins to fade away (in 3D units).

* * *

[bool](class_bool.md#class-bool) **distance\_fade\_enabled** = `false` [🔗](#class-decal-property-distance-fade-enabled)

- void **set\_enable\_distance\_fade**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_distance\_fade\_enabled**()


If `true`, decals will smoothly fade away when far from the active [Camera3D](class_camera3d.md#class-camera3d) starting at [distance\_fade\_begin](#class-decal-property-distance-fade-begin). The Decal will fade out over [distance\_fade\_begin](#class-decal-property-distance-fade-begin) \+ [distance\_fade\_length](#class-decal-property-distance-fade-length), after which it will be culled and not sent to the shader at all. Use this to reduce the number of active Decals in a scene and thus improve performance.

* * *

[float](class_float.md#class-float) **distance\_fade\_length** = `10.0` [🔗](#class-decal-property-distance-fade-length)

- void **set\_distance\_fade\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_distance\_fade\_length**()


The distance over which the Decal fades (in 3D units). The Decal becomes slowly more transparent over this distance and is completely invisible at the end. Higher values result in a smoother fade-out transition, which is more suited when the camera moves fast.

* * *

[float](class_float.md#class-float) **emission\_energy** = `1.0` [🔗](#class-decal-property-emission-energy)

- void **set\_emission\_energy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_emission\_energy**()


Energy multiplier for the emission texture. This will make the decal emit light at a higher or lower intensity, independently of the albedo color. See also [modulate](#class-decal-property-modulate).

* * *

[float](class_float.md#class-float) **lower\_fade** = `0.3` [🔗](#class-decal-property-lower-fade)

- void **set\_lower\_fade**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_lower\_fade**()


Sets the curve over which the decal will fade as the surface gets further from the center of the [AABB](class_aabb.md#class-aabb). Only positive values are valid (negative values will be clamped to `0.0`). See also [upper\_fade](#class-decal-property-upper-fade).

* * *

[Color](class_color.md#class-color) **modulate** = `Color(1, 1, 1, 1)` [🔗](#class-decal-property-modulate)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


Changes the [Color](class_color.md#class-color) of the Decal by multiplying the albedo and emission colors with this value. The alpha component is only taken into account when multiplying the albedo color, not the emission color. See also [emission\_energy](#class-decal-property-emission-energy) and [albedo\_mix](#class-decal-property-albedo-mix) to change the emission and albedo intensity independently of each other.

* * *

[float](class_float.md#class-float) **normal\_fade** = `0.0` [🔗](#class-decal-property-normal-fade)

- void **set\_normal\_fade**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_normal\_fade**()


Fades the Decal if the angle between the Decal's [AABB](class_aabb.md#class-aabb) and the target surface becomes too large. A value of `0` projects the Decal regardless of angle, a value of `1` limits the Decal to surfaces that are nearly perpendicular.

**Note:** Setting [normal\_fade](#class-decal-property-normal-fade) to a value greater than `0.0` has a small performance cost due to the added normal angle computations.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-decal-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


Sets the size of the [AABB](class_aabb.md#class-aabb) used by the decal. All dimensions must be set to a value greater than zero (they will be clamped to `0.001` if this is not the case). The AABB goes from `-size/2` to `size/2`.

**Note:** To improve culling efficiency of "hard surface" decals, set their [upper\_fade](#class-decal-property-upper-fade) and [lower\_fade](#class-decal-property-lower-fade) to `0.0` and set the Y component of the [size](#class-decal-property-size) as low as possible. This will reduce the decals' AABB size without affecting their appearance.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_albedo** [🔗](#class-decal-property-texture-albedo)

- void **set\_texture**(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(type: [DecalTexture](#enum-decal-decaltexture)) const


[Texture2D](class_texture2d.md#class-texture2d) with the base [Color](class_color.md#class-color) of the Decal. Either this or the [texture\_emission](#class-decal-property-texture-emission) must be set for the Decal to be visible. Use the alpha channel like a mask to smoothly blend the edges of the decal with the underlying object.

**Note:** Unlike [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_emission** [🔗](#class-decal-property-texture-emission)

- void **set\_texture**(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(type: [DecalTexture](#enum-decal-decaltexture)) const


[Texture2D](class_texture2d.md#class-texture2d) with the emission [Color](class_color.md#class-color) of the Decal. Either this or the [texture\_albedo](#class-decal-property-texture-albedo) must be set for the Decal to be visible. Use the alpha channel like a mask to smoothly blend the edges of the decal with the underlying object.

**Note:** Unlike [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_normal** [🔗](#class-decal-property-texture-normal)

- void **set\_texture**(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(type: [DecalTexture](#enum-decal-decaltexture)) const


[Texture2D](class_texture2d.md#class-texture2d) with the per-pixel normal map for the decal. Use this to add extra detail to decals.

**Note:** Unlike [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter).

**Note:** Setting this texture alone will not result in a visible decal, as [texture\_albedo](#class-decal-property-texture-albedo) must also be set. To create a normal-only decal, load an albedo texture into [texture\_albedo](#class-decal-property-texture-albedo) and set [albedo\_mix](#class-decal-property-albedo-mix) to `0.0`. The albedo texture's alpha channel will be used to determine where the underlying surface's normal map should be overridden (and its intensity).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_orm** [🔗](#class-decal-property-texture-orm)

- void **set\_texture**(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(type: [DecalTexture](#enum-decal-decaltexture)) const


[Texture2D](class_texture2d.md#class-texture2d) storing ambient occlusion, roughness, and metallic for the decal. Use this to add extra detail to decals.

**Note:** Unlike [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) whose filter mode can be adjusted on a per-material basis, the filter mode for **Decal** textures is set globally with [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter).

**Note:** Setting this texture alone will not result in a visible decal, as [texture\_albedo](#class-decal-property-texture-albedo) must also be set. To create an ORM-only decal, load an albedo texture into [texture\_albedo](#class-decal-property-texture-albedo) and set [albedo\_mix](#class-decal-property-albedo-mix) to `0.0`. The albedo texture's alpha channel will be used to determine where the underlying surface's ORM map should be overridden (and its intensity).

* * *

[float](class_float.md#class-float) **upper\_fade** = `0.3` [🔗](#class-decal-property-upper-fade)

- void **set\_upper\_fade**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_upper\_fade**()


Sets the curve over which the decal will fade as the surface gets further from the center of the [AABB](class_aabb.md#class-aabb). Only positive values are valid (negative values will be clamped to `0.0`). See also [lower\_fade](#class-decal-property-lower-fade).

* * *

## Method Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **get\_texture**(type: [DecalTexture](#enum-decal-decaltexture)) const [🔗](#class-decal-method-get-texture)

Returns the [Texture2D](class_texture2d.md#class-texture2d) associated with the specified [DecalTexture](#enum-decal-decaltexture). This is a convenience method, in most cases you should access the texture directly.

For example, instead of `albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)`, use `albedo_tex = $Decal.texture_albedo`.

One case where this is better than accessing the texture directly is when you want to copy one Decal's textures to another. For example:

GDScriptC#

```
for i in Decal.TEXTURE_MAX:
    $NewDecal.set_texture(i, $OldDecal.get_texture(i))

```

```
for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
{
    GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
}

```

* * *

void **set\_texture**(type: [DecalTexture](#enum-decal-decaltexture), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-decal-method-set-texture)

Sets the [Texture2D](class_texture2d.md#class-texture2d) associated with the specified [DecalTexture](#enum-decal-decaltexture). This is a convenience method, in most cases you should access the texture directly.

For example, instead of `$Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)`, use `$Decal.texture_albedo = albedo_tex`.

One case where this is better than accessing the texture directly is when you want to copy one Decal's textures to another. For example:

GDScriptC#

```
for i in Decal.TEXTURE_MAX:
    $NewDecal.set_texture(i, $OldDecal.get_texture(i))

```

```
for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
{
    GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
}

```

[Previous](class_dampedspringjoint2d.md "DampedSpringJoint2D") [Next](class_directionallight2d.md "DirectionalLight2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_dampedspringjoint2d.md "DampedSpringJoint2D") [Next](class_directionallight2d.md "DirectionalLight2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).