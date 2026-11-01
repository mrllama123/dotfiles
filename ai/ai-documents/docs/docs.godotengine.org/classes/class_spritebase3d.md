---
title: SpriteBase3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_spritebase3d.html
crawled_at: "2026-08-13T10:31:16+12:00"
content_hash: 600d5ad64336e9247870e9de9221ca34e8c4dcd68da189c57a4a9aa3f59d1c03
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpriteBase3D

* * *

# SpriteBase3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimatedSprite3D](class_animatedsprite3d.md#class-animatedsprite3d), [Sprite3D](class_sprite3d.md#class-sprite3d)

2D sprite node in 3D environment.

## Description

A node that displays 2D texture information in a 3D environment. See also [Sprite3D](class_sprite3d.md#class-sprite3d) where many other properties are defined.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [alpha\_antialiasing\_edge](#class-spritebase3d-property-alpha-antialiasing-edge) | `0.0` |
| [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) | [alpha\_antialiasing\_mode](#class-spritebase3d-property-alpha-antialiasing-mode) | `0` |
| [AlphaCutMode](#enum-spritebase3d-alphacutmode) | [alpha\_cut](#class-spritebase3d-property-alpha-cut) | `0` |
| [float](class_float.md#class-float) | [alpha\_hash\_scale](#class-spritebase3d-property-alpha-hash-scale) | `1.0` |
| [float](class_float.md#class-float) | [alpha\_scissor\_threshold](#class-spritebase3d-property-alpha-scissor-threshold) | `0.5` |
| [Axis](class_vector3.md#enum-vector3-axis) | [axis](#class-spritebase3d-property-axis) | `2` |
| [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) | [billboard](#class-spritebase3d-property-billboard) | `0` |
| [bool](class_bool.md#class-bool) | [centered](#class-spritebase3d-property-centered) | `true` |
| [bool](class_bool.md#class-bool) | [double\_sided](#class-spritebase3d-property-double-sided) | `true` |
| [bool](class_bool.md#class-bool) | [fixed\_size](#class-spritebase3d-property-fixed-size) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-spritebase3d-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-spritebase3d-property-flip-v) | `false` |
| [Color](class_color.md#class-color) | [modulate](#class-spritebase3d-property-modulate) | `Color(1, 1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [no\_depth\_test](#class-spritebase3d-property-no-depth-test) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-spritebase3d-property-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [pixel\_size](#class-spritebase3d-property-pixel-size) | `0.01` |
| [int](class_int.md#class-int) | [render\_priority](#class-spritebase3d-property-render-priority) | `0` |
| [bool](class_bool.md#class-bool) | [shaded](#class-spritebase3d-property-shaded) | `false` |
| [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) | [texture\_filter](#class-spritebase3d-property-texture-filter) | `3` |
| [bool](class_bool.md#class-bool) | [transparent](#class-spritebase3d-property-transparent) | `true` |

## Methods

|     |     |
| --- | --- |
| [TriangleMesh](class_trianglemesh.md#class-trianglemesh) | [generate\_triangle\_mesh](#class-spritebase3d-method-generate-triangle-mesh)() const |
| [bool](class_bool.md#class-bool) | [get\_draw\_flag](#class-spritebase3d-method-get-draw-flag)(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_item\_rect](#class-spritebase3d-method-get-item-rect)() const |
| void | [set\_draw\_flag](#class-spritebase3d-method-set-draw-flag)(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **DrawFlags**: [🔗](#enum-spritebase3d-drawflags)

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_TRANSPARENT** = `0`

If set, the texture's transparency and the opacity are used to make those parts of the sprite invisible.

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_SHADED** = `1`

If set, lights in the environment affect the sprite.

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_DOUBLE\_SIDED** = `2`

If set, texture can be seen from the back as well. If not, the texture is invisible when looking at it from behind.

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_DISABLE\_DEPTH\_TEST** = `3`

Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_FIXED\_SIZE** = `4`

Label is scaled by depth so that it always appears the same size on screen.

[DrawFlags](#enum-spritebase3d-drawflags) **FLAG\_MAX** = `5`

Represents the size of the [DrawFlags](#enum-spritebase3d-drawflags) enum.

* * *

enum **AlphaCutMode**: [🔗](#enum-spritebase3d-alphacutmode)

[AlphaCutMode](#enum-spritebase3d-alphacutmode) **ALPHA\_CUT\_DISABLED** = `0`

This mode performs standard alpha blending. It can display translucent areas, but transparency sorting issues may be visible when multiple transparent materials are overlapping.

[AlphaCutMode](#enum-spritebase3d-alphacutmode) **ALPHA\_CUT\_DISCARD** = `1`

This mode only allows fully transparent or fully opaque pixels. Harsh edges will be visible unless some form of screen-space antialiasing is enabled (see [ProjectSettings.rendering/anti\_aliasing/quality/screen\_space\_aa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa)). On the bright side, this mode doesn't suffer from transparency sorting issues when multiple transparent materials are overlapping. This mode is also known as _alpha testing_ or _1-bit transparency_.

[AlphaCutMode](#enum-spritebase3d-alphacutmode) **ALPHA\_CUT\_OPAQUE\_PREPASS** = `2`

This mode draws fully opaque pixels in the depth prepass. This is slower than [ALPHA\_CUT\_DISABLED](#class-spritebase3d-constant-alpha-cut-disabled) or [ALPHA\_CUT\_DISCARD](#class-spritebase3d-constant-alpha-cut-discard), but it allows displaying translucent areas and smooth edges while using proper sorting.

[AlphaCutMode](#enum-spritebase3d-alphacutmode) **ALPHA\_CUT\_HASH** = `3`

This mode draws cuts off all values below a spatially-deterministic threshold, the rest will remain opaque.

* * *

## Property Descriptions

[float](class_float.md#class-float) **alpha\_antialiasing\_edge** = `0.0` [🔗](#class-spritebase3d-property-alpha-antialiasing-edge)

- void **set\_alpha\_antialiasing\_edge**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_antialiasing\_edge**()


Threshold at which antialiasing will be applied on the alpha channel.

* * *

[AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) **alpha\_antialiasing\_mode** = `0` [🔗](#class-spritebase3d-property-alpha-antialiasing-mode)

- void **set\_alpha\_antialiasing**(value: [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing))

- [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) **get\_alpha\_antialiasing**()


The type of alpha antialiasing to apply.

* * *

[AlphaCutMode](#enum-spritebase3d-alphacutmode) **alpha\_cut** = `0` [🔗](#class-spritebase3d-property-alpha-cut)

- void **set\_alpha\_cut\_mode**(value: [AlphaCutMode](#enum-spritebase3d-alphacutmode))

- [AlphaCutMode](#enum-spritebase3d-alphacutmode) **get\_alpha\_cut\_mode**()


The alpha cutting mode to use for the sprite.

* * *

[float](class_float.md#class-float) **alpha\_hash\_scale** = `1.0` [🔗](#class-spritebase3d-property-alpha-hash-scale)

- void **set\_alpha\_hash\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_hash\_scale**()


The hashing scale for Alpha Hash. Recommended values between `0` and `2`.

* * *

[float](class_float.md#class-float) **alpha\_scissor\_threshold** = `0.5` [🔗](#class-spritebase3d-property-alpha-scissor-threshold)

- void **set\_alpha\_scissor\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_scissor\_threshold**()


Threshold at which the alpha scissor will discard values.

* * *

[Axis](class_vector3.md#enum-vector3-axis) **axis** = `2` [🔗](#class-spritebase3d-property-axis)

- void **set\_axis**(value: [Axis](class_vector3.md#enum-vector3-axis))

- [Axis](class_vector3.md#enum-vector3-axis) **get\_axis**()


The direction in which the front of the texture faces.

* * *

[BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) **billboard** = `0` [🔗](#class-spritebase3d-property-billboard)

- void **set\_billboard\_mode**(value: [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode))

- [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) **get\_billboard\_mode**()


The billboard mode to use for the sprite.

**Note:** When billboarding is enabled and the material also casts shadows, billboards will face **the** camera in the scene when rendering shadows. In scenes with multiple cameras, the intended shadow cannot be determined and this will result in undefined behavior. See [GitHub Pull Request #72638](https://github.com/godotengine/godot/pull/72638) for details.

* * *

[bool](class_bool.md#class-bool) **centered** = `true` [🔗](#class-spritebase3d-property-centered)

- void **set\_centered**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_centered**()


If `true`, texture will be centered.

* * *

[bool](class_bool.md#class-bool) **double\_sided** = `true` [🔗](#class-spritebase3d-property-double-sided)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const


If `true`, texture can be seen from the back as well, if `false`, it is invisible when looking at it from behind.

* * *

[bool](class_bool.md#class-bool) **fixed\_size** = `false` [🔗](#class-spritebase3d-property-fixed-size)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const


If `true`, the texture is rendered at the same size regardless of distance. The texture's size on screen is the same as if the camera was `1.0` units away from the texture's origin, regardless of the actual distance from the camera. The [Camera3D](class_camera3d.md#class-camera3d)'s field of view (or [Camera3D.size](class_camera3d.md#class-camera3d-property-size) when in orthogonal/frustum mode) still affects the size the sprite is drawn at.

* * *

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-spritebase3d-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_h**()


If `true`, texture is flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-spritebase3d-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_v**()


If `true`, texture is flipped vertically.

* * *

[Color](class_color.md#class-color) **modulate** = `Color(1, 1, 1, 1)` [🔗](#class-spritebase3d-property-modulate)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


A color value used to _multiply_ the texture's colors. Can be used for mood-coloring or to simulate the color of ambient light.

**Note:** Unlike [CanvasItem.modulate](class_canvasitem.md#class-canvasitem-property-modulate) for 2D, colors with values above `1.0` (overbright) are not supported.

**Note:** If a [GeometryInstance3D.material\_override](class_geometryinstance3d.md#class-geometryinstance3d-property-material-override) is defined on the **SpriteBase3D**, the material override must be configured to take vertex colors into account for albedo. Otherwise, the color defined in [modulate](#class-spritebase3d-property-modulate) will be ignored. For a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d), [BaseMaterial3D.vertex\_color\_use\_as\_albedo](class_basematerial3d.md#class-basematerial3d-property-vertex-color-use-as-albedo) must be `true`. For a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), `ALBEDO *= COLOR.rgb;` must be inserted in the shader's `fragment()` function.

* * *

[bool](class_bool.md#class-bool) **no\_depth\_test** = `false` [🔗](#class-spritebase3d-property-no-depth-test)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const


If `true`, depth testing is disabled and the object will be drawn in render order.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-spritebase3d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The texture's drawing offset.

**Note:** When you increase [offset](#class-spritebase3d-property-offset).y in Sprite3D, the sprite moves upward in world space (i.e., +Y is up).

* * *

[float](class_float.md#class-float) **pixel\_size** = `0.01` [🔗](#class-spritebase3d-property-pixel-size)

- void **set\_pixel\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pixel\_size**()


The size of one pixel's width on the sprite to scale it in 3D.

* * *

[int](class_int.md#class-int) **render\_priority** = `0` [🔗](#class-spritebase3d-property-render-priority)

- void **set\_render\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_render\_priority**()


Sets the render priority for the sprite. Higher priority objects will be sorted in front of lower priority objects.

**Note:** This only applies if [alpha\_cut](#class-spritebase3d-property-alpha-cut) is set to [ALPHA\_CUT\_DISABLED](#class-spritebase3d-constant-alpha-cut-disabled) (default value).

**Note:** This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).

* * *

[bool](class_bool.md#class-bool) **shaded** = `false` [🔗](#class-spritebase3d-property-shaded)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const


If `true`, the [Light3D](class_light3d.md#class-light3d) in the [Environment](class_environment.md#class-environment) has effects on the sprite.

* * *

[TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) **texture\_filter** = `3` [🔗](#class-spritebase3d-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter))

- [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) **get\_texture\_filter**()


Filter flags for the texture.

**Note:** Linear filtering may cause artifacts around the edges, which are especially noticeable on opaque textures. To prevent this, use textures with transparent or identical colors around the edges.

* * *

[bool](class_bool.md#class-bool) **transparent** = `true` [🔗](#class-spritebase3d-property-transparent)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const


If `true`, the texture's transparency and the opacity are used to make those parts of the sprite invisible.

* * *

## Method Descriptions

[TriangleMesh](class_trianglemesh.md#class-trianglemesh) **generate\_triangle\_mesh**() const [🔗](#class-spritebase3d-method-generate-triangle-mesh)

Returns a [TriangleMesh](class_trianglemesh.md#class-trianglemesh) with the sprite's vertices following its current configuration (such as its [axis](#class-spritebase3d-property-axis) and [pixel\_size](#class-spritebase3d-property-pixel-size)).

* * *

[bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags)) const [🔗](#class-spritebase3d-method-get-draw-flag)

Returns the value of the specified flag.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_item\_rect**() const [🔗](#class-spritebase3d-method-get-item-rect)

Returns the rectangle representing this sprite.

* * *

void **set\_draw\_flag**(flag: [DrawFlags](#enum-spritebase3d-drawflags), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-spritebase3d-method-set-draw-flag)

If `true`, the specified flag will be enabled.

[Previous](class_sprite3d.md "Sprite3D") [Next](class_staticbody2d.md "StaticBody2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sprite3d.md "Sprite3D") [Next](class_staticbody2d.md "StaticBody2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).