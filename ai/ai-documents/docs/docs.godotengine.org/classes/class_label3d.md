---
title: Label3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_label3d.html
crawled_at: "2026-08-13T10:40:37+12:00"
content_hash: fed64c1b93ce09a71a53175f71873eb1116a8680fe51c01e971c39cd2e47a35b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Label3D

* * *

# Label3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node for displaying plain text in 3D space.

## Description

A node for displaying plain text in 3D space. By adjusting various properties of this node, you can configure things such as the text's appearance and whether it always faces the camera.

## Tutorials

- [3D text](../tutorials/3d/3d_text.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [alpha\_antialiasing\_edge](#class-label3d-property-alpha-antialiasing-edge) | `0.0` |
| [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) | [alpha\_antialiasing\_mode](#class-label3d-property-alpha-antialiasing-mode) | `0` |
| [AlphaCutMode](#enum-label3d-alphacutmode) | [alpha\_cut](#class-label3d-property-alpha-cut) | `0` |
| [float](class_float.md#class-float) | [alpha\_hash\_scale](#class-label3d-property-alpha-hash-scale) | `1.0` |
| [float](class_float.md#class-float) | [alpha\_scissor\_threshold](#class-label3d-property-alpha-scissor-threshold) | `0.5` |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-label3d-property-autowrap-mode) | `0` |
| BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] | [autowrap\_trim\_flags](#class-label3d-property-autowrap-trim-flags) | `192` |
| [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) | [billboard](#class-label3d-property-billboard) | `0` |
| [ShadowCastingSetting](class_geometryinstance3d.md#enum-geometryinstance3d-shadowcastingsetting) | cast\_shadow | `0` (overrides [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d-property-cast-shadow)) |
| [bool](class_bool.md#class-bool) | [double\_sided](#class-label3d-property-double-sided) | `true` |
| [bool](class_bool.md#class-bool) | [fixed\_size](#class-label3d-property-fixed-size) | `false` |
| [Font](class_font.md#class-font) | [font](#class-label3d-property-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-label3d-property-font-size) | `32` |
| [GIMode](class_geometryinstance3d.md#enum-geometryinstance3d-gimode) | gi\_mode | `0` (overrides [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode)) |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [horizontal\_alignment](#class-label3d-property-horizontal-alignment) | `1` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [justification\_flags](#class-label3d-property-justification-flags) | `163` |
| [String](class_string.md#class-string) | [language](#class-label3d-property-language) | `""` |
| [float](class_float.md#class-float) | [line\_spacing](#class-label3d-property-line-spacing) | `0.0` |
| [Color](class_color.md#class-color) | [modulate](#class-label3d-property-modulate) | `Color(1, 1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [no\_depth\_test](#class-label3d-property-no-depth-test) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-label3d-property-offset) | `Vector2(0, 0)` |
| [Color](class_color.md#class-color) | [outline\_modulate](#class-label3d-property-outline-modulate) | `Color(0, 0, 0, 1)` |
| [int](class_int.md#class-int) | [outline\_render\_priority](#class-label3d-property-outline-render-priority) | `-1` |
| [int](class_int.md#class-int) | [outline\_size](#class-label3d-property-outline-size) | `12` |
| [float](class_float.md#class-float) | [pixel\_size](#class-label3d-property-pixel-size) | `0.005` |
| [int](class_int.md#class-int) | [render\_priority](#class-label3d-property-render-priority) | `0` |
| [bool](class_bool.md#class-bool) | [shaded](#class-label3d-property-shaded) | `false` |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-label3d-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-label3d-property-structured-text-bidi-override-options) | `[]` |
| [String](class_string.md#class-string) | [text](#class-label3d-property-text) | `""` |
| [Direction](class_textserver.md#enum-textserver-direction) | [text\_direction](#class-label3d-property-text-direction) | `0` |
| [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) | [texture\_filter](#class-label3d-property-texture-filter) | `3` |
| [bool](class_bool.md#class-bool) | [uppercase](#class-label3d-property-uppercase) | `false` |
| [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) | [vertical\_alignment](#class-label3d-property-vertical-alignment) | `1` |
| [float](class_float.md#class-float) | [width](#class-label3d-property-width) | `500.0` |

## Methods

|     |     |
| --- | --- |
| [TriangleMesh](class_trianglemesh.md#class-trianglemesh) | [generate\_triangle\_mesh](#class-label3d-method-generate-triangle-mesh)() const |
| [bool](class_bool.md#class-bool) | [get\_draw\_flag](#class-label3d-method-get-draw-flag)(flag: [DrawFlags](#enum-label3d-drawflags)) const |
| void | [set\_draw\_flag](#class-label3d-method-set-draw-flag)(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **DrawFlags**: [🔗](#enum-label3d-drawflags)

[DrawFlags](#enum-label3d-drawflags) **FLAG\_SHADED** = `0`

If set, lights in the environment affect the label.

[DrawFlags](#enum-label3d-drawflags) **FLAG\_DOUBLE\_SIDED** = `1`

If set, text can be seen from the back as well. If not, the text is invisible when looking at it from behind.

[DrawFlags](#enum-label3d-drawflags) **FLAG\_DISABLE\_DEPTH\_TEST** = `2`

Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.

[DrawFlags](#enum-label3d-drawflags) **FLAG\_FIXED\_SIZE** = `3`

Label is scaled by depth so that it always appears the same size on screen.

[DrawFlags](#enum-label3d-drawflags) **FLAG\_MAX** = `4`

Represents the size of the [DrawFlags](#enum-label3d-drawflags) enum.

* * *

enum **AlphaCutMode**: [🔗](#enum-label3d-alphacutmode)

[AlphaCutMode](#enum-label3d-alphacutmode) **ALPHA\_CUT\_DISABLED** = `0`

This mode performs standard alpha blending. It can display translucent areas, but transparency sorting issues may be visible when multiple transparent materials are overlapping. [GeometryInstance3D.cast\_shadow](class_geometryinstance3d.md#class-geometryinstance3d-property-cast-shadow) has no effect when this transparency mode is used; the **Label3D** will never cast shadows.

[AlphaCutMode](#enum-label3d-alphacutmode) **ALPHA\_CUT\_DISCARD** = `1`

This mode only allows fully transparent or fully opaque pixels. Harsh edges will be visible unless some form of screen-space antialiasing is enabled (see [ProjectSettings.rendering/anti\_aliasing/quality/screen\_space\_aa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa)). This mode is also known as _alpha testing_ or _1-bit transparency_.

**Note:** This mode might have issues with anti-aliased fonts and outlines, try adjusting [alpha\_scissor\_threshold](#class-label3d-property-alpha-scissor-threshold) or using MSDF font.

**Note:** When using text with overlapping glyphs (e.g., cursive scripts), this mode might have transparency sorting issues between the main text and the outline.

[AlphaCutMode](#enum-label3d-alphacutmode) **ALPHA\_CUT\_OPAQUE\_PREPASS** = `2`

This mode draws fully opaque pixels in the depth prepass. This is slower than [ALPHA\_CUT\_DISABLED](#class-label3d-constant-alpha-cut-disabled) or [ALPHA\_CUT\_DISCARD](#class-label3d-constant-alpha-cut-discard), but it allows displaying translucent areas and smooth edges while using proper sorting.

**Note:** When using text with overlapping glyphs (e.g., cursive scripts), this mode might have transparency sorting issues between the main text and the outline.

[AlphaCutMode](#enum-label3d-alphacutmode) **ALPHA\_CUT\_HASH** = `3`

This mode draws cuts off all values below a spatially-deterministic threshold, the rest will remain opaque.

* * *

## Property Descriptions

[float](class_float.md#class-float) **alpha\_antialiasing\_edge** = `0.0` [🔗](#class-label3d-property-alpha-antialiasing-edge)

- void **set\_alpha\_antialiasing\_edge**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_antialiasing\_edge**()


Threshold at which antialiasing will be applied on the alpha channel.

* * *

[AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) **alpha\_antialiasing\_mode** = `0` [🔗](#class-label3d-property-alpha-antialiasing-mode)

- void **set\_alpha\_antialiasing**(value: [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing))

- [AlphaAntiAliasing](class_basematerial3d.md#enum-basematerial3d-alphaantialiasing) **get\_alpha\_antialiasing**()


The type of alpha antialiasing to apply.

* * *

[AlphaCutMode](#enum-label3d-alphacutmode) **alpha\_cut** = `0` [🔗](#class-label3d-property-alpha-cut)

- void **set\_alpha\_cut\_mode**(value: [AlphaCutMode](#enum-label3d-alphacutmode))

- [AlphaCutMode](#enum-label3d-alphacutmode) **get\_alpha\_cut\_mode**()


The alpha cutting mode to use for the sprite.

* * *

[float](class_float.md#class-float) **alpha\_hash\_scale** = `1.0` [🔗](#class-label3d-property-alpha-hash-scale)

- void **set\_alpha\_hash\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_hash\_scale**()


The hashing scale for Alpha Hash. Recommended values between `0` and `2`.

* * *

[float](class_float.md#class-float) **alpha\_scissor\_threshold** = `0.5` [🔗](#class-label3d-property-alpha-scissor-threshold)

- void **set\_alpha\_scissor\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_alpha\_scissor\_threshold**()


Threshold at which the alpha scissor will discard values.

* * *

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `0` [🔗](#class-label3d-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

* * *

BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **autowrap\_trim\_flags** = `192` [🔗](#class-label3d-property-autowrap-trim-flags)

- void **set\_autowrap\_trim\_flags**(value: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\])

- BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **get\_autowrap\_trim\_flags**()


Autowrap space trimming flags. See [TextServer.BREAK\_TRIM\_START\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-start-edge-spaces) and [TextServer.BREAK\_TRIM\_END\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-end-edge-spaces) for more info.

* * *

[BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) **billboard** = `0` [🔗](#class-label3d-property-billboard)

- void **set\_billboard\_mode**(value: [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode))

- [BillboardMode](class_basematerial3d.md#enum-basematerial3d-billboardmode) **get\_billboard\_mode**()


The billboard mode to use for the label.

* * *

[bool](class_bool.md#class-bool) **double\_sided** = `true` [🔗](#class-label3d-property-double-sided)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags)) const


If `true`, text can be seen from the back as well, if `false`, it is invisible when looking at it from behind.

* * *

[bool](class_bool.md#class-bool) **fixed\_size** = `false` [🔗](#class-label3d-property-fixed-size)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags)) const


If `true`, the label is rendered at the same size regardless of distance. The label's size on screen is the same as if the camera was `1.0` units away from the label's origin, regardless of the actual distance from the camera. The [Camera3D](class_camera3d.md#class-camera3d)'s field of view (or [Camera3D.size](class_camera3d.md#class-camera3d-property-size) when in orthogonal/frustum mode) still affects the size the label is drawn at.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-label3d-property-font)

- void **set\_font**(value: [Font](class_font.md#class-font))

- [Font](class_font.md#class-font) **get\_font**()


Font configuration used to display text.

* * *

[int](class_int.md#class-int) **font\_size** = `32` [🔗](#class-label3d-property-font-size)

- void **set\_font\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_size**()


Font size of the **Label3D**'s text. To make the font look more detailed when up close, increase [font\_size](#class-label3d-property-font-size) while decreasing [pixel\_size](#class-label3d-property-pixel-size) at the same time.

Higher font sizes require more time to render new characters, which can cause stuttering during gameplay.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **horizontal\_alignment** = `1` [🔗](#class-label3d-property-horizontal-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Controls the text's horizontal alignment. Supports left, center, right, and fill (also known as justify).

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **justification\_flags** = `163` [🔗](#class-label3d-property-justification-flags)

- void **set\_justification\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_justification\_flags**()


Line fill alignment rules.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-label3d-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[float](class_float.md#class-float) **line\_spacing** = `0.0` [🔗](#class-label3d-property-line-spacing)

- void **set\_line\_spacing**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_line\_spacing**()


Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[Color](class_color.md#class-color) **modulate** = `Color(1, 1, 1, 1)` [🔗](#class-label3d-property-modulate)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


Text [Color](class_color.md#class-color) of the **Label3D**.

* * *

[bool](class_bool.md#class-bool) **no\_depth\_test** = `false` [🔗](#class-label3d-property-no-depth-test)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags)) const


If `true`, depth testing is disabled and the object will be drawn in render order.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-label3d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The text drawing offset (in pixels).

* * *

[Color](class_color.md#class-color) **outline\_modulate** = `Color(0, 0, 0, 1)` [🔗](#class-label3d-property-outline-modulate)

- void **set\_outline\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_outline\_modulate**()


The tint of text outline.

* * *

[int](class_int.md#class-int) **outline\_render\_priority** = `-1` [🔗](#class-label3d-property-outline-render-priority)

- void **set\_outline\_render\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_outline\_render\_priority**()


Sets the render priority for the text outline. Higher priority objects will be sorted in front of lower priority objects.

**Note:** This only applies if [alpha\_cut](#class-label3d-property-alpha-cut) is set to [ALPHA\_CUT\_DISABLED](#class-label3d-constant-alpha-cut-disabled) (default value).

**Note:** This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).

* * *

[int](class_int.md#class-int) **outline\_size** = `12` [🔗](#class-label3d-property-outline-size)

- void **set\_outline\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_outline\_size**()


Text outline size.

* * *

[float](class_float.md#class-float) **pixel\_size** = `0.005` [🔗](#class-label3d-property-pixel-size)

- void **set\_pixel\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pixel\_size**()


The size of one pixel's width on the label to scale it in 3D. To make the font look more detailed when up close, increase [font\_size](#class-label3d-property-font-size) while decreasing [pixel\_size](#class-label3d-property-pixel-size) at the same time.

* * *

[int](class_int.md#class-int) **render\_priority** = `0` [🔗](#class-label3d-property-render-priority)

- void **set\_render\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_render\_priority**()


Sets the render priority for the text. Higher priority objects will be sorted in front of lower priority objects.

**Note:** This only applies if [alpha\_cut](#class-label3d-property-alpha-cut) is set to [ALPHA\_CUT\_DISABLED](#class-label3d-constant-alpha-cut-disabled) (default value).

**Note:** This only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).

* * *

[bool](class_bool.md#class-bool) **shaded** = `false` [🔗](#class-label3d-property-shaded)

- void **set\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags)) const


If `true`, the [Light3D](class_light3d.md#class-light3d) in the [Environment](class_environment.md#class-environment) has effects on the label.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-label3d-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-label3d-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-label3d-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The text to display on screen.

* * *

[Direction](class_textserver.md#enum-textserver-direction) **text\_direction** = `0` [🔗](#class-label3d-property-text-direction)

- void **set\_text\_direction**(value: [Direction](class_textserver.md#enum-textserver-direction))

- [Direction](class_textserver.md#enum-textserver-direction) **get\_text\_direction**()


Base text writing direction.

* * *

[TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) **texture\_filter** = `3` [🔗](#class-label3d-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter))

- [TextureFilter](class_basematerial3d.md#enum-basematerial3d-texturefilter) **get\_texture\_filter**()


Filter flags for the texture.

* * *

[bool](class_bool.md#class-bool) **uppercase** = `false` [🔗](#class-label3d-property-uppercase)

- void **set\_uppercase**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_uppercase**()


If `true`, all the text displays as UPPERCASE.

* * *

[VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **vertical\_alignment** = `1` [🔗](#class-label3d-property-vertical-alignment)

- void **set\_vertical\_alignment**(value: [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment))

- [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **get\_vertical\_alignment**()


Controls the text's vertical alignment. Supports top, center, and bottom.

* * *

[float](class_float.md#class-float) **width** = `500.0` [🔗](#class-label3d-property-width)

- void **set\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_width**()


Text width (in pixels), used for autowrap and fill alignment.

* * *

## Method Descriptions

[TriangleMesh](class_trianglemesh.md#class-trianglemesh) **generate\_triangle\_mesh**() const [🔗](#class-label3d-method-generate-triangle-mesh)

Returns a [TriangleMesh](class_trianglemesh.md#class-trianglemesh) with the label's vertices following its current configuration (such as its [pixel\_size](#class-label3d-property-pixel-size)).

* * *

[bool](class_bool.md#class-bool) **get\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags)) const [🔗](#class-label3d-method-get-draw-flag)

Returns the value of the specified flag.

* * *

void **set\_draw\_flag**(flag: [DrawFlags](#enum-label3d-drawflags), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-label3d-method-set-draw-flag)

If `true`, the specified `flag` will be enabled.

[Previous](class_label.md "Label") [Next](class_light2d.md "Light2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_label.md "Label") [Next](class_light2d.md "Light2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).