---
title: CanvasItem — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_canvasitem.html
crawled_at: "2026-08-13T10:30:00+12:00"
content_hash: f2c915f506abb5bf4f0d00fbe2e8af50cc648e1a36ae1b47d0e92fda94b3e22a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CanvasItem

* * *

# CanvasItem

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [Control](class_control.md#class-control), [Node2D](class_node2d.md#class-node2d)

Abstract base class for everything in 2D space.

## Description

Abstract base class for everything in 2D space. Canvas items are laid out in a tree; children inherit and extend their parent's transform. **CanvasItem** is extended by [Control](class_control.md#class-control) for GUI-related nodes, and by [Node2D](class_node2d.md#class-node2d) for 2D game objects.

Any **CanvasItem** can draw. For this, [queue\_redraw()](#class-canvasitem-method-queue-redraw) is called by the engine, then [NOTIFICATION\_DRAW](#class-canvasitem-constant-notification-draw) will be received on idle time to request a redraw. Because of this, canvas items don't need to be redrawn on every frame, improving the performance significantly. Several functions for drawing on the **CanvasItem** are provided (see `draw_*` functions). However, they can only be used inside [\_draw()](#class-canvasitem-private-method-draw), its corresponding [Object.\_notification()](class_object.md#class-object-private-method-notification) or methods connected to the [draw](#class-canvasitem-signal-draw) signal.

Canvas items are drawn in tree order on their canvas layer. By default, children are on top of their parents, so a root **CanvasItem** will be drawn behind everything. This behavior can be changed on a per-item basis.

A **CanvasItem** can be hidden, which will also hide its children. By adjusting various other properties of a **CanvasItem**, you can also modulate its color (via [modulate](#class-canvasitem-property-modulate) or [self\_modulate](#class-canvasitem-property-self-modulate)), change its Z-index, blend mode, and more.

Note that properties like transform, modulation, and visibility are only propagated to _direct_ **CanvasItem** child nodes. If there is a non- **CanvasItem** node in between, like [Node](class_node.md#class-node) or [AnimationPlayer](class_animationplayer.md#class-animationplayer), the **CanvasItem** nodes below will have an independent position and [modulate](#class-canvasitem-property-modulate) chain. See also [top\_level](#class-canvasitem-property-top-level).

## Tutorials

- [Viewport and canvas transforms](../tutorials/2d/2d_transforms.md)

- [Custom drawing in 2D](../tutorials/2d/custom_drawing_in_2d.md)

- [Audio Spectrum Visualizer Demo](https://godotengine.org/asset-library/asset/2762)


## Properties

|     |     |     |
| --- | --- | --- |
| [ClipChildrenMode](#enum-canvasitem-clipchildrenmode) | [clip\_children](#class-canvasitem-property-clip-children) | `0` |
| [int](class_int.md#class-int) | [light\_mask](#class-canvasitem-property-light-mask) | `1` |
| [Material](class_material.md#class-material) | [material](#class-canvasitem-property-material) |  |
| [Color](class_color.md#class-color) | [modulate](#class-canvasitem-property-modulate) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [self\_modulate](#class-canvasitem-property-self-modulate) | `Color(1, 1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [show\_behind\_parent](#class-canvasitem-property-show-behind-parent) | `false` |
| [TextureFilter](#enum-canvasitem-texturefilter) | [texture\_filter](#class-canvasitem-property-texture-filter) | `0` |
| [TextureRepeat](#enum-canvasitem-texturerepeat) | [texture\_repeat](#class-canvasitem-property-texture-repeat) | `0` |
| [bool](class_bool.md#class-bool) | [top\_level](#class-canvasitem-property-top-level) | `false` |
| [bool](class_bool.md#class-bool) | [use\_parent\_material](#class-canvasitem-property-use-parent-material) | `false` |
| [int](class_int.md#class-int) | [visibility\_layer](#class-canvasitem-property-visibility-layer) | `1` |
| [bool](class_bool.md#class-bool) | [visible](#class-canvasitem-property-visible) | `true` |
| [bool](class_bool.md#class-bool) | [y\_sort\_enabled](#class-canvasitem-property-y-sort-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [z\_as\_relative](#class-canvasitem-property-z-as-relative) | `true` |
| [int](class_int.md#class-int) | [z\_index](#class-canvasitem-property-z-index) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [\_draw](#class-canvasitem-private-method-draw)() virtual |
| void | [draw\_animation\_slice](#class-canvasitem-method-draw-animation-slice)(animation\_length: [float](class_float.md#class-float), slice\_begin: [float](class_float.md#class-float), slice\_end: [float](class_float.md#class-float), offset: [float](class_float.md#class-float) = 0.0) |
| void | [draw\_arc](#class-canvasitem-method-draw-arc)(center: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), start\_angle: [float](class_float.md#class-float), end\_angle: [float](class_float.md#class-float), point\_count: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_char](#class-canvasitem-method-draw-char)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), char: [String](class_string.md#class-string), font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_char\_outline](#class-canvasitem-method-draw-char-outline)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), char: [String](class_string.md#class-string), font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_circle](#class-canvasitem-method-draw-circle)(position: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), filled: [bool](class_bool.md#class-bool) = true, width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_colored\_polygon](#class-canvasitem-method-draw-colored-polygon)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [draw\_dashed\_line](#class-canvasitem-method-draw-dashed-line)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, dash: [float](class_float.md#class-float) = 2.0, aligned: [bool](class_bool.md#class-bool) = true, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_end\_animation](#class-canvasitem-method-draw-end-animation)() |
| void | [draw\_lcd\_texture\_rect\_region](#class-canvasitem-method-draw-lcd-texture-rect-region)(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [draw\_line](#class-canvasitem-method-draw-line)(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_mesh](#class-canvasitem-method-draw-mesh)(mesh: [Mesh](class_mesh.md#class-mesh), texture: [Texture2D](class_texture2d.md#class-texture2d), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [draw\_msdf\_texture\_rect\_region](#class-canvasitem-method-draw-msdf-texture-rect-region)(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline: [float](class_float.md#class-float) = 0.0, pixel\_range: [float](class_float.md#class-float) = 4.0, scale: [float](class_float.md#class-float) = 1.0) |
| void | [draw\_multiline](#class-canvasitem-method-draw-multiline)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_multiline\_colors](#class-canvasitem-method-draw-multiline-colors)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_multiline\_string](#class-canvasitem-method-draw-multiline-string)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_multiline\_string\_outline](#class-canvasitem-method-draw-multiline-string-outline)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_multimesh](#class-canvasitem-method-draw-multimesh)(multimesh: [MultiMesh](class_multimesh.md#class-multimesh), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [draw\_polygon](#class-canvasitem-method-draw-polygon)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [draw\_polyline](#class-canvasitem-method-draw-polyline)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_polyline\_colors](#class-canvasitem-method-draw-polyline-colors)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_primitive](#class-canvasitem-method-draw-primitive)(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [draw\_rect](#class-canvasitem-method-draw-rect)(rect: [Rect2](class_rect2.md#class-rect2), color: [Color](class_color.md#class-color), filled: [bool](class_bool.md#class-bool) = true, width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_set\_transform](#class-canvasitem-method-draw-set-transform)(position: [Vector2](class_vector2.md#class-vector2), rotation: [float](class_float.md#class-float) = 0.0, scale: [Vector2](class_vector2.md#class-vector2) = Vector2(1, 1)) |
| void | [draw\_set\_transform\_matrix](#class-canvasitem-method-draw-set-transform-matrix)(xform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [draw\_string](#class-canvasitem-method-draw-string)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_string\_outline](#class-canvasitem-method-draw-string-outline)(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const |
| void | [draw\_style\_box](#class-canvasitem-method-draw-style-box)(style\_box: [StyleBox](class_stylebox.md#class-stylebox), rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [draw\_texture](#class-canvasitem-method-draw-texture)(texture: [Texture2D](class_texture2d.md#class-texture2d), position: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [draw\_texture\_rect](#class-canvasitem-method-draw-texture-rect)(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) |
| void | [draw\_texture\_rect\_region](#class-canvasitem-method-draw-texture-rect-region)(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) |
| void | [force\_update\_transform](#class-canvasitem-method-force-update-transform)() |
| [RID](class_rid.md#class-rid) | [get\_canvas](#class-canvasitem-method-get-canvas)() const |
| [RID](class_rid.md#class-rid) | [get\_canvas\_item](#class-canvasitem-method-get-canvas-item)() const |
| [CanvasLayer](class_canvaslayer.md#class-canvaslayer) | [get\_canvas\_layer\_node](#class-canvasitem-method-get-canvas-layer-node)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_canvas\_transform](#class-canvasitem-method-get-canvas-transform)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_global\_mouse\_position](#class-canvasitem-method-get-global-mouse-position)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_global\_transform](#class-canvasitem-method-get-global-transform)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_global\_transform\_with\_canvas](#class-canvasitem-method-get-global-transform-with-canvas)() const |
| [Variant](class_variant.md#class-variant) | [get\_instance\_shader\_parameter](#class-canvasitem-method-get-instance-shader-parameter)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_local\_mouse\_position](#class-canvasitem-method-get-local-mouse-position)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_screen\_transform](#class-canvasitem-method-get-screen-transform)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_transform](#class-canvasitem-method-get-transform)() const |
| [Rect2](class_rect2.md#class-rect2) | [get\_viewport\_rect](#class-canvasitem-method-get-viewport-rect)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_viewport\_transform](#class-canvasitem-method-get-viewport-transform)() const |
| [bool](class_bool.md#class-bool) | [get\_visibility\_layer\_bit](#class-canvasitem-method-get-visibility-layer-bit)(layer: [int](class_int.md#class-int)) const |
| [World2D](class_world2d.md#class-world2d) | [get\_world\_2d](#class-canvasitem-method-get-world-2d)() const |
| void | [hide](#class-canvasitem-method-hide)() |
| [bool](class_bool.md#class-bool) | [is\_local\_transform\_notification\_enabled](#class-canvasitem-method-is-local-transform-notification-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_transform\_notification\_enabled](#class-canvasitem-method-is-transform-notification-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_visible\_in\_tree](#class-canvasitem-method-is-visible-in-tree)() const |
| [Vector2](class_vector2.md#class-vector2) | [make\_canvas\_position\_local](#class-canvasitem-method-make-canvas-position-local)(viewport\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [InputEvent](class_inputevent.md#class-inputevent) | [make\_input\_local](#class-canvasitem-method-make-input-local)(event: [InputEvent](class_inputevent.md#class-inputevent)) const |
| void | [move\_to\_front](#class-canvasitem-method-move-to-front)() |
| void | [queue\_redraw](#class-canvasitem-method-queue-redraw)() |
| void | [set\_instance\_shader\_parameter](#class-canvasitem-method-set-instance-shader-parameter)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_notify\_local\_transform](#class-canvasitem-method-set-notify-local-transform)(enable: [bool](class_bool.md#class-bool)) |
| void | [set\_notify\_transform](#class-canvasitem-method-set-notify-transform)(enable: [bool](class_bool.md#class-bool)) |
| void | [set\_visibility\_layer\_bit](#class-canvasitem-method-set-visibility-layer-bit)(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [show](#class-canvasitem-method-show)() |

* * *

## Signals

**draw**() [🔗](#class-canvasitem-signal-draw)

Emitted when the **CanvasItem** must redraw, _after_ the related [NOTIFICATION\_DRAW](#class-canvasitem-constant-notification-draw) notification, and _before_ [\_draw()](#class-canvasitem-private-method-draw) is called.

**Note:** Deferred connections do not allow drawing through the `draw_*` methods.

* * *

**hidden**() [🔗](#class-canvasitem-signal-hidden)

Emitted when this node becomes hidden, i.e. it's no longer visible in the tree (see [is\_visible\_in\_tree()](#class-canvasitem-method-is-visible-in-tree)).

* * *

**item\_rect\_changed**() [🔗](#class-canvasitem-signal-item-rect-changed)

Emitted when the **CanvasItem**'s boundaries (position or size) change, or when an action took place that may have affected these boundaries (e.g. changing [Sprite2D.texture](class_sprite2d.md#class-sprite2d-property-texture)).

* * *

**visibility\_changed**() [🔗](#class-canvasitem-signal-visibility-changed)

Emitted when the **CanvasItem**'s visibility changes, either because its own [visible](#class-canvasitem-property-visible) property changed or because its visibility in the tree changed (see [is\_visible\_in\_tree()](#class-canvasitem-method-is-visible-in-tree)).

This signal is emitted _after_ the related [NOTIFICATION\_VISIBILITY\_CHANGED](#class-canvasitem-constant-notification-visibility-changed) notification.

* * *

## Enumerations

enum **TextureFilter**: [🔗](#enum-canvasitem-texturefilter)

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_PARENT\_NODE** = `0`

The **CanvasItem** will inherit the filter from its parent.

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_NEAREST** = `1`

The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_LINEAR** = `2`

The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS** = `3`

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look pixelated from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS** = `4`

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look smooth from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC** = `5`

The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS](#class-canvasitem-constant-texture-filter-nearest-with-mipmaps) is usually more appropriate in this case.

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC** = `6`

The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS](#class-canvasitem-constant-texture-filter-linear-with-mipmaps) is usually more appropriate in this case.

[TextureFilter](#enum-canvasitem-texturefilter) **TEXTURE\_FILTER\_MAX** = `7`

Represents the size of the [TextureFilter](#enum-canvasitem-texturefilter) enum.

* * *

enum **TextureRepeat**: [🔗](#enum-canvasitem-texturerepeat)

[TextureRepeat](#enum-canvasitem-texturerepeat) **TEXTURE\_REPEAT\_PARENT\_NODE** = `0`

The **CanvasItem** will inherit the filter from its parent.

[TextureRepeat](#enum-canvasitem-texturerepeat) **TEXTURE\_REPEAT\_DISABLED** = `1`

The texture does not repeat. Sampling the texture outside its extents will result in "stretching" of the edge pixels. You can avoid this by ensuring a 1-pixel fully transparent border on each side of the texture.

[TextureRepeat](#enum-canvasitem-texturerepeat) **TEXTURE\_REPEAT\_ENABLED** = `2`

The texture repeats when exceeding the texture's size.

[TextureRepeat](#enum-canvasitem-texturerepeat) **TEXTURE\_REPEAT\_MIRROR** = `3`

The texture repeats when the exceeding the texture's size in a "2×2 tiled mode". Repeated textures at even positions are mirrored.

[TextureRepeat](#enum-canvasitem-texturerepeat) **TEXTURE\_REPEAT\_MAX** = `4`

Represents the size of the [TextureRepeat](#enum-canvasitem-texturerepeat) enum.

* * *

enum **ClipChildrenMode**: [🔗](#enum-canvasitem-clipchildrenmode)

[ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **CLIP\_CHILDREN\_DISABLED** = `0`

Children are drawn over this node and are not clipped.

[ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **CLIP\_CHILDREN\_ONLY** = `1`

This node is used as a mask and is **not** drawn. The mask is based on this node's alpha channel: Opaque pixels are kept, transparent pixels are discarded, and semi-transparent pixels are blended in according to their opacity. Children are clipped to this node's drawn area.

[ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **CLIP\_CHILDREN\_AND\_DRAW** = `2`

This node is used as a mask and is also drawn. The mask is based on this node's alpha channel: Opaque pixels are kept, transparent pixels are discarded, and semi-transparent pixels are blended in according to their opacity. Children are clipped to the parent's drawn area.

[ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **CLIP\_CHILDREN\_MAX** = `3`

Represents the size of the [ClipChildrenMode](#enum-canvasitem-clipchildrenmode) enum.

* * *

## Constants

**NOTIFICATION\_TRANSFORM\_CHANGED** = `2000` [🔗](#class-canvasitem-constant-notification-transform-changed)

Notification received when this node's global transform changes, if [is\_transform\_notification\_enabled()](#class-canvasitem-method-is-transform-notification-enabled) is `true`. See also [set\_notify\_transform()](#class-canvasitem-method-set-notify-transform) and [get\_transform()](#class-canvasitem-method-get-transform).

**Note:** Many canvas items such as [Camera2D](class_camera2d.md#class-camera2d) or [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) automatically enable this in order to function correctly.

**NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED** = `35` [🔗](#class-canvasitem-constant-notification-local-transform-changed)

Notification received when this node's transform changes, if [is\_local\_transform\_notification\_enabled()](#class-canvasitem-method-is-local-transform-notification-enabled) is `true`. This is not received when a parent [Node2D](class_node2d.md#class-node2d)'s transform changes. See also [set\_notify\_local\_transform()](#class-canvasitem-method-set-notify-local-transform).

**Note:** Many canvas items such as [Camera2D](class_camera2d.md#class-camera2d) or [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) automatically enable this in order to function correctly.

**NOTIFICATION\_DRAW** = `30` [🔗](#class-canvasitem-constant-notification-draw)

The **CanvasItem** is requested to draw (see [\_draw()](#class-canvasitem-private-method-draw)).

**NOTIFICATION\_VISIBILITY\_CHANGED** = `31` [🔗](#class-canvasitem-constant-notification-visibility-changed)

Notification received when this node's visibility changes (see [visible](#class-canvasitem-property-visible) and [is\_visible\_in\_tree()](#class-canvasitem-method-is-visible-in-tree)).

This notification is received _before_ the related [visibility\_changed](#class-canvasitem-signal-visibility-changed) signal.

**NOTIFICATION\_ENTER\_CANVAS** = `32` [🔗](#class-canvasitem-constant-notification-enter-canvas)

The **CanvasItem** has entered the canvas.

**NOTIFICATION\_EXIT\_CANVAS** = `33` [🔗](#class-canvasitem-constant-notification-exit-canvas)

The **CanvasItem** has exited the canvas.

**NOTIFICATION\_WORLD\_2D\_CHANGED** = `36` [🔗](#class-canvasitem-constant-notification-world-2d-changed)

Notification received when this **CanvasItem** is registered to a new [World2D](class_world2d.md#class-world2d) (see [get\_world\_2d()](#class-canvasitem-method-get-world-2d)).

* * *

## Property Descriptions

[ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **clip\_children** = `0` [🔗](#class-canvasitem-property-clip-children)

- void **set\_clip\_children\_mode**(value: [ClipChildrenMode](#enum-canvasitem-clipchildrenmode))

- [ClipChildrenMode](#enum-canvasitem-clipchildrenmode) **get\_clip\_children\_mode**()


The mode in which this node clips its children, acting as a mask.

**Note:** Clipping nodes cannot be nested or placed within a [CanvasGroup](class_canvasgroup.md#class-canvasgroup). If an ancestor of this node clips its children or is a [CanvasGroup](class_canvasgroup.md#class-canvasgroup), then this node's clip mode should be set to [CLIP\_CHILDREN\_DISABLED](#class-canvasitem-constant-clip-children-disabled) to avoid unexpected behavior.

* * *

[int](class_int.md#class-int) **light\_mask** = `1` [🔗](#class-canvasitem-property-light-mask)

- void **set\_light\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_light\_mask**()


The rendering layers in which this **CanvasItem** responds to [Light2D](class_light2d.md#class-light2d) nodes.

* * *

[Material](class_material.md#class-material) **material** [🔗](#class-canvasitem-property-material)

- void **set\_material**(value: [Material](class_material.md#class-material))

- [Material](class_material.md#class-material) **get\_material**()


The material applied to this **CanvasItem**.

* * *

[Color](class_color.md#class-color) **modulate** = `Color(1, 1, 1, 1)` [🔗](#class-canvasitem-property-modulate)

- void **set\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_modulate**()


The color applied to this **CanvasItem**. This property does affect child **CanvasItem** s, unlike [self\_modulate](#class-canvasitem-property-self-modulate) which only affects the node itself.

* * *

[Color](class_color.md#class-color) **self\_modulate** = `Color(1, 1, 1, 1)` [🔗](#class-canvasitem-property-self-modulate)

- void **set\_self\_modulate**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_self\_modulate**()


The color applied to this **CanvasItem**. This property does **not** affect child **CanvasItem** s, unlike [modulate](#class-canvasitem-property-modulate) which affects both the node itself and its children.

**Note:** Internal children are also not affected by this property (see the `include_internal` parameter in [Node.add\_child()](class_node.md#class-node-method-add-child)). For built-in nodes this includes sliders in [ColorPicker](class_colorpicker.md#class-colorpicker), and the tab bar in [TabContainer](class_tabcontainer.md#class-tabcontainer).

* * *

[bool](class_bool.md#class-bool) **show\_behind\_parent** = `false` [🔗](#class-canvasitem-property-show-behind-parent)

- void **set\_draw\_behind\_parent**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_behind\_parent\_enabled**()


If `true`, this node draws behind its parent.

* * *

[TextureFilter](#enum-canvasitem-texturefilter) **texture\_filter** = `0` [🔗](#class-canvasitem-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](#enum-canvasitem-texturefilter))

- [TextureFilter](#enum-canvasitem-texturefilter) **get\_texture\_filter**()


The filtering mode used to render this **CanvasItem**'s texture(s).

* * *

[TextureRepeat](#enum-canvasitem-texturerepeat) **texture\_repeat** = `0` [🔗](#class-canvasitem-property-texture-repeat)

- void **set\_texture\_repeat**(value: [TextureRepeat](#enum-canvasitem-texturerepeat))

- [TextureRepeat](#enum-canvasitem-texturerepeat) **get\_texture\_repeat**()


The repeating mode used to render this **CanvasItem**'s texture(s). It affects what happens when the texture is sampled outside its extents, for example by setting a [Sprite2D.region\_rect](class_sprite2d.md#class-sprite2d-property-region-rect) that is larger than the texture or assigning [Polygon2D](class_polygon2d.md#class-polygon2d) UV points outside the texture.

**Note:** [TextureRect](class_texturerect.md#class-texturerect) is not affected by [texture\_repeat](#class-canvasitem-property-texture-repeat), as it uses its own texture repeating implementation.

* * *

[bool](class_bool.md#class-bool) **top\_level** = `false` [🔗](#class-canvasitem-property-top-level)

- void **set\_as\_top\_level**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_set\_as\_top\_level**()


If `true`, this **CanvasItem** will _not_ inherit its transform from parent **CanvasItem** s. Its draw order will also be changed to make it draw on top of other **CanvasItem** s that do not have [top\_level](#class-canvasitem-property-top-level) set to `true`. The **CanvasItem** will effectively act as if it was placed as a child of a bare [Node](class_node.md#class-node).

* * *

[bool](class_bool.md#class-bool) **use\_parent\_material** = `false` [🔗](#class-canvasitem-property-use-parent-material)

- void **set\_use\_parent\_material**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_parent\_material**()


If `true`, the parent **CanvasItem**'s [material](#class-canvasitem-property-material) is used as this node's material.

* * *

[int](class_int.md#class-int) **visibility\_layer** = `1` [🔗](#class-canvasitem-property-visibility-layer)

- void **set\_visibility\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_visibility\_layer**()


The rendering layer in which this **CanvasItem** is rendered by [Viewport](class_viewport.md#class-viewport) nodes. A [Viewport](class_viewport.md#class-viewport) will render a **CanvasItem** if it and all its parents share a layer with the [Viewport](class_viewport.md#class-viewport)'s canvas cull mask.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-canvasitem-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, this **CanvasItem** may be drawn. Whether this **CanvasItem** is actually drawn depends on the visibility of all of its **CanvasItem** ancestors. In other words: this **CanvasItem** will be drawn when [is\_visible\_in\_tree()](#class-canvasitem-method-is-visible-in-tree) returns `true` and all **CanvasItem** ancestors share at least one [visibility\_layer](#class-canvasitem-property-visibility-layer) with this **CanvasItem**.

**Note:** For controls that inherit [Popup](class_popup.md#class-popup), the correct way to make them visible is to call one of the multiple `popup*()` functions instead.

* * *

[bool](class_bool.md#class-bool) **y\_sort\_enabled** = `false` [🔗](#class-canvasitem-property-y-sort-enabled)

- void **set\_y\_sort\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_y\_sort\_enabled**()


If `true`, this and child **CanvasItem** nodes with a higher Y position are rendered in front of nodes with a lower Y position. If `false`, this and child **CanvasItem** nodes are rendered normally in scene tree order.

With Y-sorting enabled on a parent node ('A') but disabled on a child node ('B'), the child node ('B') is sorted but its children ('C1', 'C2', etc.) render together on the same Y position as the child node ('B'). This allows you to organize the render order of a scene without changing the scene tree.

Nodes sort relative to each other only if they are on the same [z\_index](#class-canvasitem-property-z-index).

* * *

[bool](class_bool.md#class-bool) **z\_as\_relative** = `true` [🔗](#class-canvasitem-property-z-as-relative)

- void **set\_z\_as\_relative**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_z\_relative**()


If `true`, this node's final Z index is relative to its parent's Z index.

For example, if [z\_index](#class-canvasitem-property-z-index) is `2` and its parent's final Z index is `3`, then this node's final Z index will be `5` ( `2 + 3`).

* * *

[int](class_int.md#class-int) **z\_index** = `0` [🔗](#class-canvasitem-property-z-index)

- void **set\_z\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_z\_index**()


The order in which this node is drawn. A node with a higher Z index will display in front of others. Must be between [RenderingServer.CANVAS\_ITEM\_Z\_MIN](class_renderingserver.md#class-renderingserver-constant-canvas-item-z-min) and [RenderingServer.CANVAS\_ITEM\_Z\_MAX](class_renderingserver.md#class-renderingserver-constant-canvas-item-z-max) (inclusive).

**Note:** The Z index does **not** affect the order in which **CanvasItem** nodes are processed or the way input events are handled. This is especially important to keep in mind for [Control](class_control.md#class-control) nodes.

* * *

## Method Descriptions

void **\_draw**() virtual [🔗](#class-canvasitem-private-method-draw)

Called when **CanvasItem** has been requested to redraw (after [queue\_redraw()](#class-canvasitem-method-queue-redraw) is called, either manually or by the engine).

Corresponds to the [NOTIFICATION\_DRAW](#class-canvasitem-constant-notification-draw) notification in [Object.\_notification()](class_object.md#class-object-private-method-notification).

* * *

void **draw\_animation\_slice**(animation\_length: [float](class_float.md#class-float), slice\_begin: [float](class_float.md#class-float), slice\_end: [float](class_float.md#class-float), offset: [float](class_float.md#class-float) = 0.0) [🔗](#class-canvasitem-method-draw-animation-slice)

Subsequent drawing commands will be ignored unless they fall within the specified animation slice. This is a faster way to implement animations that loop on background rather than redrawing constantly.

* * *

void **draw\_arc**(center: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), start\_angle: [float](class_float.md#class-float), end\_angle: [float](class_float.md#class-float), point\_count: [int](class_int.md#class-int), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-arc)

Draws an unfilled arc between the given angles with a uniform `color` and `width` and optional antialiasing (supported only for positive `width`). The larger the value of `point_count`, the smoother the curve. `center` is defined in local space. See also [draw\_circle()](#class-canvasitem-method-draw-circle).

If `width` is negative, it will be ignored and the arc will be drawn using [RenderingServer.PRIMITIVE\_LINE\_STRIP](class_renderingserver.md#class-renderingserver-constant-primitive-line-strip). This means that when the CanvasItem is scaled, the arc will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

The arc is drawn from `start_angle` towards the value of `end_angle` so in clockwise direction if `start_angle < end_angle` and counter-clockwise otherwise. Passing the same angles but in reversed order will produce the same arc. If absolute difference of `start_angle` and `end_angle` is greater than [@GDScript.TAU](class_@gdscript.md#class-gdscript-constant-tau) radians, then a full circle arc is drawn (i.e. arc will not overlap itself).

* * *

void **draw\_char**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), char: [String](class_string.md#class-string), font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-char)

Draws a string first character using a custom font. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used. `pos` is defined in local space.

* * *

void **draw\_char\_outline**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), char: [String](class_string.md#class-string), font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-char-outline)

Draws a string first character outline using a custom font. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used. `pos` is defined in local space.

* * *

void **draw\_circle**(position: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), filled: [bool](class_bool.md#class-bool) = true, width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-circle)

Draws a circle, with `position` defined in local space. See also [draw\_arc()](#class-canvasitem-method-draw-arc), [draw\_polyline()](#class-canvasitem-method-draw-polyline), and [draw\_polygon()](#class-canvasitem-method-draw-polygon).

If `filled` is `true`, the circle will be filled with the `color` specified. If `filled` is `false`, the circle will be drawn as a stroke with the `color` and `width` specified.

If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.

**Note:** `width` is only effective if `filled` is `false`.

* * *

void **draw\_colored\_polygon**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-canvasitem-method-draw-colored-polygon)

Draws a colored polygon of any number of points, convex or concave. The points in the `points` array are defined in local space. Unlike [draw\_polygon()](#class-canvasitem-method-draw-polygon), a single color must be specified for the whole polygon.

**Note:** If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with [Geometry2D.triangulate\_polygon()](class_geometry2d.md#class-geometry2d-method-triangulate-polygon) and using [draw\_mesh()](#class-canvasitem-method-draw-mesh), [draw\_multimesh()](#class-canvasitem-method-draw-multimesh), or [RenderingServer.canvas\_item\_add\_triangle\_array()](class_renderingserver.md#class-renderingserver-method-canvas-item-add-triangle-array).

* * *

void **draw\_dashed\_line**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, dash: [float](class_float.md#class-float) = 2.0, aligned: [bool](class_bool.md#class-bool) = true, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-dashed-line)

Draws a dashed line from a 2D point to another, with a given color and width. The `from` and `to` positions are defined in local space. See also [draw\_line()](#class-canvasitem-method-draw-line), [draw\_multiline()](#class-canvasitem-method-draw-multiline), and [draw\_polyline()](#class-canvasitem-method-draw-polyline).

If `width` is negative, then a two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the line parts will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

`dash` is the length of each dash in pixels, with the gap between each dash being the same length. If `aligned` is `true`, the length of the first and last dashes may be shortened or lengthened to allow the line to begin and end at the precise points defined by `from` and `to`. Both ends are always symmetrical when `aligned` is `true`. If `aligned` is `false`, all dashes will have the same length, but the line may appear incomplete at the end due to the dash length not dividing evenly into the line length. Only full dashes are drawn when `aligned` is `false`.

If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.

**Note:** `antialiased` is only effective if `width` is greater than `0.0`.

* * *

void **draw\_end\_animation**() [🔗](#class-canvasitem-method-draw-end-animation)

After submitting all animations slices via [draw\_animation\_slice()](#class-canvasitem-method-draw-animation-slice), this function can be used to revert drawing to its default state (all subsequent drawing commands will be visible). If you don't care about this particular use case, usage of this function after submitting the slices is not required.

* * *

void **draw\_lcd\_texture\_rect\_region**(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-canvasitem-method-draw-lcd-texture-rect-region)

Draws a textured rectangle region of the font texture with LCD subpixel anti-aliasing at a given position, optionally modulated by a color. The `rect` is defined in local space.

Texture is drawn using the following blend operation, blend mode of the [CanvasItemMaterial](class_canvasitemmaterial.md#class-canvasitemmaterial) is ignored:

```
dst.r = texture.r * modulate.r * modulate.a + dst.r * (1.0 - texture.r * modulate.a);
dst.g = texture.g * modulate.g * modulate.a + dst.g * (1.0 - texture.g * modulate.a);
dst.b = texture.b * modulate.b * modulate.a + dst.b * (1.0 - texture.b * modulate.a);
dst.a = modulate.a + dst.a * (1.0 - modulate.a);

```

* * *

void **draw\_line**(from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-line)

Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. The `from` and `to` positions are defined in local space. See also [draw\_dashed\_line()](#class-canvasitem-method-draw-dashed-line), [draw\_multiline()](#class-canvasitem-method-draw-multiline), and [draw\_polyline()](#class-canvasitem-method-draw-polyline).

If `width` is negative, then a two-point primitive will be drawn instead of a four-point one. This means that when the CanvasItem is scaled, the line will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

* * *

void **draw\_mesh**(mesh: [Mesh](class_mesh.md#class-mesh), texture: [Texture2D](class_texture2d.md#class-texture2d), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-canvasitem-method-draw-mesh)

Draws a [Mesh](class_mesh.md#class-mesh) in 2D, using the provided texture. See [MeshInstance2D](class_meshinstance2d.md#class-meshinstance2d) for related documentation. The `transform` is defined in local space.

* * *

void **draw\_msdf\_texture\_rect\_region**(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline: [float](class_float.md#class-float) = 0.0, pixel\_range: [float](class_float.md#class-float) = 4.0, scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-canvasitem-method-draw-msdf-texture-rect-region)

Draws a textured rectangle region of the multichannel signed distance field texture at a given position, optionally modulated by a color. The `rect` is defined in local space. See [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) for more information and caveats about MSDF font rendering.

If `outline` is positive, each alpha channel value of pixel in region is set to maximum value of true distance in the `outline` radius.

Value of the `pixel_range` should the same that was used during distance field texture generation.

* * *

void **draw\_multiline**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-multiline)

Draws multiple disconnected lines with a uniform `width` and `color`. Each line is defined by two consecutive points from `points` array in local space, i.e. i-th segment consists of `points[2 * i]`, `points[2 * i + 1]` endpoints. When drawing large amounts of lines, this is faster than using individual [draw\_line()](#class-canvasitem-method-draw-line) calls. To draw interconnected lines, use [draw\_polyline()](#class-canvasitem-method-draw-polyline) instead.

If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

**Note:** `antialiased` is only effective if `width` is greater than `0.0`.

* * *

void **draw\_multiline\_colors**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-multiline-colors)

Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Each segment is defined by two consecutive points from `points` array in local space and a corresponding color from `colors` array, i.e. i-th segment consists of `points[2 * i]`, `points[2 * i + 1]` endpoints and has `colors[i]` color. When drawing large amounts of lines, this is faster than using individual [draw\_line()](#class-canvasitem-method-draw-line) calls. To draw interconnected lines, use [draw\_polyline\_colors()](#class-canvasitem-method-draw-polyline-colors) instead.

If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

**Note:** `antialiased` is only effective if `width` is greater than `0.0`.

* * *

void **draw\_multiline\_string**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-multiline-string)

Breaks `text` into lines and draws it using the specified `font` at the `pos` in local space (top-left corner). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_multiline\_string\_outline**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, max\_lines: [int](class_int.md#class-int) = -1, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), brk\_flags: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] = 3, justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-multiline-string-outline)

Breaks `text` to the lines and draws text outline using the specified `font` at the `pos` in local space (top-left corner). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_multimesh**(multimesh: [MultiMesh](class_multimesh.md#class-multimesh), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-canvasitem-method-draw-multimesh)

Draws a [MultiMesh](class_multimesh.md#class-multimesh) in 2D with the provided texture. See [MultiMeshInstance2D](class_multimeshinstance2d.md#class-multimeshinstance2d) for related documentation.

* * *

void **draw\_polygon**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-canvasitem-method-draw-polygon)

Draws a solid polygon of any number of points, convex or concave. Unlike [draw\_colored\_polygon()](#class-canvasitem-method-draw-colored-polygon), each point's color can be changed individually. The `points` array is defined in local space. See also [draw\_polyline()](#class-canvasitem-method-draw-polyline) and [draw\_polyline\_colors()](#class-canvasitem-method-draw-polyline-colors). If you need more flexibility (such as being able to use bones), use [RenderingServer.canvas\_item\_add\_triangle\_array()](class_renderingserver.md#class-renderingserver-method-canvas-item-add-triangle-array) instead.

**Note:** If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with [Geometry2D.triangulate\_polygon()](class_geometry2d.md#class-geometry2d-method-triangulate-polygon) and using [draw\_mesh()](#class-canvasitem-method-draw-mesh), [draw\_multimesh()](#class-canvasitem-method-draw-multimesh), or [RenderingServer.canvas\_item\_add\_triangle\_array()](class_renderingserver.md#class-renderingserver-method-canvas-item-add-triangle-array).

* * *

void **draw\_polyline**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-polyline)

Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing (supported only for positive `width`). The `points` array is defined in local space. When drawing large amounts of lines, this is faster than using individual [draw\_line()](#class-canvasitem-method-draw-line) calls. To draw disconnected lines, use [draw\_multiline()](#class-canvasitem-method-draw-multiline) instead. See also [draw\_polygon()](#class-canvasitem-method-draw-polygon).

If `width` is negative, it will be ignored and the polyline will be drawn using [RenderingServer.PRIMITIVE\_LINE\_STRIP](class_renderingserver.md#class-renderingserver-constant-primitive-line-strip). This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

* * *

void **draw\_polyline\_colors**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-polyline-colors)

Draws interconnected line segments with a uniform `width`, point-by-point coloring, and optional antialiasing (supported only for positive `width`). Colors assigned to line points match by index between `points` and `colors`, i.e. each line segment is filled with a gradient between the colors of the endpoints. The `points` array is defined in local space. When drawing large amounts of lines, this is faster than using individual [draw\_line()](#class-canvasitem-method-draw-line) calls. To draw disconnected lines, use [draw\_multiline\_colors()](#class-canvasitem-method-draw-multiline-colors) instead. See also [draw\_polygon()](#class-canvasitem-method-draw-polygon).

If `width` is negative, it will be ignored and the polyline will be drawn using [RenderingServer.PRIMITIVE\_LINE\_STRIP](class_renderingserver.md#class-renderingserver-constant-primitive-line-strip). This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

* * *

void **draw\_primitive**(points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), texture: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-canvasitem-method-draw-primitive)

Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. The `points` array is defined in local space. See also [draw\_line()](#class-canvasitem-method-draw-line), [draw\_polyline()](#class-canvasitem-method-draw-polyline), [draw\_polygon()](#class-canvasitem-method-draw-polygon), and [draw\_rect()](#class-canvasitem-method-draw-rect).

* * *

void **draw\_rect**(rect: [Rect2](class_rect2.md#class-rect2), color: [Color](class_color.md#class-color), filled: [bool](class_bool.md#class-bool) = true, width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-rect)

Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. The `rect` is specified in local space. See also [draw\_texture\_rect()](#class-canvasitem-method-draw-texture-rect).

If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.

If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.

**Note:** `width` is only effective if `filled` is `false`.

**Note:** Unfilled rectangles drawn with a negative `width` may not display perfectly. For example, corners may be missing or brighter due to overlapping lines (for a translucent `color`).

* * *

void **draw\_set\_transform**(position: [Vector2](class_vector2.md#class-vector2), rotation: [float](class_float.md#class-float) = 0.0, scale: [Vector2](class_vector2.md#class-vector2) = Vector2(1, 1)) [🔗](#class-canvasitem-method-draw-set-transform)

Sets a custom local transform for drawing via components. Anything drawn afterwards will be transformed by this.

**Note:** [FontFile.oversampling](class_fontfile.md#class-fontfile-property-oversampling) does _not_ take `scale` into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling [ProjectSettings.gui/theme/default\_font\_multichannel\_signed\_distance\_field](class_projectsettings.md#class-projectsettings-property-gui-theme-default-font-multichannel-signed-distance-field) (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, [SystemFont.multichannel\_signed\_distance\_field](class_systemfont.md#class-systemfont-property-multichannel-signed-distance-field) can be enabled in the inspector.

* * *

void **draw\_set\_transform\_matrix**(xform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-canvasitem-method-draw-set-transform-matrix)

Sets a custom local transform for drawing via matrix. Anything drawn afterwards will be transformed by this.

* * *

void **draw\_string**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-string)

Draws `text` using the specified `font` at the `pos` in local space (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

**Example:** Draw "Hello world", using the project's default font:

GDScriptC#

```
# If using this method in a script that redraws constantly, move the
# `default_font` declaration to a member variable assigned in `_ready()`
# so the Control is only created once.
var default_font = ThemeDB.fallback_font
var default_font_size = ThemeDB.fallback_font_size
draw_string(default_font, Vector2(64, 64), "Hello world", HORIZONTAL_ALIGNMENT_LEFT, -1, default_font_size)

```

```
// If using this method in a script that redraws constantly, move the
// `default_font` declaration to a member variable assigned in `_Ready()`
// so the Control is only created once.
Font defaultFont = ThemeDB.FallbackFont;
int defaultFontSize = ThemeDB.FallbackFontSize;
DrawString(defaultFont, new Vector2(64, 64), "Hello world", HORIZONTAL_ALIGNMENT_LEFT, -1, defaultFontSize);

```

See also [Font.draw\_string()](class_font.md#class-font-method-draw-string).

* * *

void **draw\_string\_outline**(font: [Font](class_font.md#class-font), pos: [Vector2](class_vector2.md#class-vector2), text: [String](class_string.md#class-string), alignment: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) = 0, width: [float](class_float.md#class-float) = -1, font\_size: [int](class_int.md#class-int) = 16, size: [int](class_int.md#class-int) = 1, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), justification\_flags: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] = 3, direction: [Direction](class_textserver.md#enum-textserver-direction) = 0, orientation: [Orientation](class_textserver.md#enum-textserver-orientation) = 0, oversampling: [float](class_float.md#class-float) = 0.0) const [🔗](#class-canvasitem-method-draw-string-outline)

Draws `text` outline using the specified `font` at the `pos` in local space (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width. If `oversampling` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

* * *

void **draw\_style\_box**(style\_box: [StyleBox](class_stylebox.md#class-stylebox), rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-canvasitem-method-draw-style-box)

Draws a styled rectangle. The `rect` is defined in local space.

* * *

void **draw\_texture**(texture: [Texture2D](class_texture2d.md#class-texture2d), position: [Vector2](class_vector2.md#class-vector2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-canvasitem-method-draw-texture)

Draws a texture at a given position. The `position` is defined in local space.

* * *

void **draw\_texture\_rect**(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), tile: [bool](class_bool.md#class-bool), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) [🔗](#class-canvasitem-method-draw-texture-rect)

Draws a textured rectangle at a given position, optionally modulated by a color. The `rect` is defined in local space. If `transpose` is `true`, the texture will have its X and Y coordinates swapped. See also [draw\_rect()](#class-canvasitem-method-draw-rect) and [draw\_texture\_rect\_region()](#class-canvasitem-method-draw-texture-rect-region).

* * *

void **draw\_texture\_rect\_region**(texture: [Texture2D](class_texture2d.md#class-texture2d), rect: [Rect2](class_rect2.md#class-rect2), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) [🔗](#class-canvasitem-method-draw-texture-rect-region)

Draws a textured rectangle from a texture's region (specified by `src_rect`) at a given position in local space, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped. See also [draw\_texture\_rect()](#class-canvasitem-method-draw-texture-rect).

* * *

void **force\_update\_transform**() [🔗](#class-canvasitem-method-force-update-transform)

Forces the node's transform to update. Fails if the node is not inside the tree. See also [get\_transform()](#class-canvasitem-method-get-transform).

**Note:** For performance reasons, transform changes are usually accumulated and applied _once_ at the end of the frame. The update propagates through **CanvasItem** children, as well. Therefore, use this method only when you need an up-to-date transform (such as during physics operations).

* * *

[RID](class_rid.md#class-rid) **get\_canvas**() const [🔗](#class-canvasitem-method-get-canvas)

Returns the [RID](class_rid.md#class-rid) of the [World2D](class_world2d.md#class-world2d) canvas where this node is registered to, used by the [RenderingServer](class_renderingserver.md#class-renderingserver).

* * *

[RID](class_rid.md#class-rid) **get\_canvas\_item**() const [🔗](#class-canvasitem-method-get-canvas-item)

Returns the internal canvas item [RID](class_rid.md#class-rid) used by the [RenderingServer](class_renderingserver.md#class-renderingserver) for this node.

* * *

[CanvasLayer](class_canvaslayer.md#class-canvaslayer) **get\_canvas\_layer\_node**() const [🔗](#class-canvasitem-method-get-canvas-layer-node)

Returns the [CanvasLayer](class_canvaslayer.md#class-canvaslayer) that contains this node, or `null` if the node is not in any [CanvasLayer](class_canvaslayer.md#class-canvaslayer).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_canvas\_transform**() const [🔗](#class-canvasitem-method-get-canvas-transform)

Returns the transform of this node, converted from its registered canvas's coordinate system to its viewport's coordinate system. See also [Node.get\_viewport()](class_node.md#class-node-method-get-viewport).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_global\_mouse\_position**() const [🔗](#class-canvasitem-method-get-global-mouse-position)

Returns mouse cursor's global position relative to the [CanvasLayer](class_canvaslayer.md#class-canvaslayer) that contains this node.

**Note:** For screen-space coordinates (e.g. when using a non-embedded [Popup](class_popup.md#class-popup)), you can use [DisplayServer.mouse\_get\_position()](class_displayserver.md#class-displayserver-method-mouse-get-position).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_global\_transform**() const [🔗](#class-canvasitem-method-get-global-transform)

Returns the global transform matrix of this item, i.e. the combined transform up to the topmost **CanvasItem** node. The topmost item is a **CanvasItem** that either has no parent, has non- **CanvasItem** parent or it has [top\_level](#class-canvasitem-property-top-level) enabled.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_global\_transform\_with\_canvas**() const [🔗](#class-canvasitem-method-get-global-transform-with-canvas)

Returns the transform from the local coordinate system of this **CanvasItem** to the [Viewport](class_viewport.md#class-viewport) s coordinate system.

* * *

[Variant](class_variant.md#class-variant) **get\_instance\_shader\_parameter**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-canvasitem-method-get-instance-shader-parameter)

Get the value of a shader parameter as set on this instance.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_local\_mouse\_position**() const [🔗](#class-canvasitem-method-get-local-mouse-position)

Returns the mouse's position in this **CanvasItem** using the local coordinate system of this **CanvasItem**.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_screen\_transform**() const [🔗](#class-canvasitem-method-get-screen-transform)

Returns the transform of this **CanvasItem** in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.

Equals to [get\_global\_transform()](#class-canvasitem-method-get-global-transform) if the window is embedded (see [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows)).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_transform**() const [🔗](#class-canvasitem-method-get-transform)

Returns the transform matrix of this **CanvasItem**.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_viewport\_rect**() const [🔗](#class-canvasitem-method-get-viewport-rect)

Returns this node's viewport boundaries as a [Rect2](class_rect2.md#class-rect2). See also [Node.get\_viewport()](class_node.md#class-node-method-get-viewport).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_viewport\_transform**() const [🔗](#class-canvasitem-method-get-viewport-transform)

Returns the transform of this node, converted from its registered canvas's coordinate system to its viewport embedder's coordinate system. See also [Viewport.get\_final\_transform()](class_viewport.md#class-viewport-method-get-final-transform) and [Node.get\_viewport()](class_node.md#class-node-method-get-viewport).

* * *

[bool](class_bool.md#class-bool) **get\_visibility\_layer\_bit**(layer: [int](class_int.md#class-int)) const [🔗](#class-canvasitem-method-get-visibility-layer-bit)

Returns `true` if the layer at the given index is set in [visibility\_layer](#class-canvasitem-property-visibility-layer).

* * *

[World2D](class_world2d.md#class-world2d) **get\_world\_2d**() const [🔗](#class-canvasitem-method-get-world-2d)

Returns the [World2D](class_world2d.md#class-world2d) this node is registered to.

Usually, this is the same as this node's viewport (see [Node.get\_viewport()](class_node.md#class-node-method-get-viewport) and [Viewport.find\_world\_2d()](class_viewport.md#class-viewport-method-find-world-2d)).

* * *

void **hide**() [🔗](#class-canvasitem-method-hide)

Hide the **CanvasItem** if it's currently visible. This is equivalent to setting [visible](#class-canvasitem-property-visible) to `false`.

* * *

[bool](class_bool.md#class-bool) **is\_local\_transform\_notification\_enabled**() const [🔗](#class-canvasitem-method-is-local-transform-notification-enabled)

Returns `true` if the node receives [NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED](#class-canvasitem-constant-notification-local-transform-changed) whenever its local transform changes. This is enabled with [set\_notify\_local\_transform()](#class-canvasitem-method-set-notify-local-transform).

* * *

[bool](class_bool.md#class-bool) **is\_transform\_notification\_enabled**() const [🔗](#class-canvasitem-method-is-transform-notification-enabled)

Returns `true` if the node receives [NOTIFICATION\_TRANSFORM\_CHANGED](#class-canvasitem-constant-notification-transform-changed) whenever its global transform changes. This is enabled with [set\_notify\_transform()](#class-canvasitem-method-set-notify-transform).

* * *

[bool](class_bool.md#class-bool) **is\_visible\_in\_tree**() const [🔗](#class-canvasitem-method-is-visible-in-tree)

Returns `true` if the node is present in the [SceneTree](class_scenetree.md#class-scenetree), its [visible](#class-canvasitem-property-visible) property is `true` and all its ancestors are also visible. If any ancestor is hidden, this node will not be visible in the scene tree, and is therefore not drawn (see [\_draw()](#class-canvasitem-private-method-draw)).

Visibility is checked only in parent nodes that inherit from **CanvasItem**, [CanvasLayer](class_canvaslayer.md#class-canvaslayer), and [Window](class_window.md#class-window). If the parent is of any other type (such as [Node](class_node.md#class-node), [AnimationPlayer](class_animationplayer.md#class-animationplayer), or [Node3D](class_node3d.md#class-node3d)), it is assumed to be visible.

**Note:** This method does not take [visibility\_layer](#class-canvasitem-property-visibility-layer) into account, so even if this method returns `true`, the node might end up not being rendered.

* * *

[Vector2](class_vector2.md#class-vector2) **make\_canvas\_position\_local**(viewport\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-canvasitem-method-make-canvas-position-local)

Transforms `viewport_point` from the viewport's coordinates to this node's local coordinates.

For the opposite operation, use [get\_global\_transform\_with\_canvas()](#class-canvasitem-method-get-global-transform-with-canvas).

```
var viewport_point = get_global_transform_with_canvas() * local_point

```

* * *

[InputEvent](class_inputevent.md#class-inputevent) **make\_input\_local**(event: [InputEvent](class_inputevent.md#class-inputevent)) const [🔗](#class-canvasitem-method-make-input-local)

Returns a copy of the given `event` with its coordinates converted from global space to this **CanvasItem**'s local space. If not possible, returns the same [InputEvent](class_inputevent.md#class-inputevent) unchanged.

* * *

void **move\_to\_front**() [🔗](#class-canvasitem-method-move-to-front)

Moves this node below its siblings, usually causing the node to draw on top of its siblings. Does nothing if this node does not have a parent. See also [Node.move\_child()](class_node.md#class-node-method-move-child).

* * *

void **queue\_redraw**() [🔗](#class-canvasitem-method-queue-redraw)

Queues the **CanvasItem** to redraw. During idle time, if **CanvasItem** is visible, [NOTIFICATION\_DRAW](#class-canvasitem-constant-notification-draw) is sent and [\_draw()](#class-canvasitem-private-method-draw) is called. This only occurs **once** per frame, even if this method has been called multiple times.

* * *

void **set\_instance\_shader\_parameter**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-canvasitem-method-set-instance-shader-parameter)

Set the value of a shader uniform for this instance only ( [per-instance uniform](../tutorials/shaders/shader_reference/shading_language.md#per-instance-uniforms)). See also [ShaderMaterial.set\_shader\_parameter()](class_shadermaterial.md#class-shadermaterial-method-set-shader-parameter) to assign a uniform on all instances using the same [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

**Note:** For a shader uniform to be assignable on a per-instance basis, it _must_ be defined with `instance uniform ...` rather than `uniform ...` in the shader code.

**Note:** `name` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).

* * *

void **set\_notify\_local\_transform**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-canvasitem-method-set-notify-local-transform)

If `true`, the node will receive [NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED](#class-canvasitem-constant-notification-local-transform-changed) whenever its local transform changes.

**Note:** Many canvas items such as [Bone2D](class_bone2d.md#class-bone2d) or [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) automatically enable this in order to function correctly.

* * *

void **set\_notify\_transform**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-canvasitem-method-set-notify-transform)

If `true`, the node will receive [NOTIFICATION\_TRANSFORM\_CHANGED](#class-canvasitem-constant-notification-transform-changed) whenever global transform changes.

**Note:** Many canvas items such as [Camera2D](class_camera2d.md#class-camera2d) or [Light2D](class_light2d.md#class-light2d) automatically enable this in order to function correctly.

* * *

void **set\_visibility\_layer\_bit**(layer: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-canvasitem-method-set-visibility-layer-bit)

Set/clear individual bits on the rendering visibility layer. This simplifies editing this **CanvasItem**'s visibility layer.

* * *

void **show**() [🔗](#class-canvasitem-method-show)

Show the **CanvasItem** if it's currently hidden. This is equivalent to setting [visible](#class-canvasitem-property-visible) to `true`.

**Note:** For controls that inherit [Popup](class_popup.md#class-popup), the correct way to make them visible is to call one of the multiple `popup*()` functions instead.

[Previous](class_canvasgroup.md "CanvasGroup") [Next](class_canvaslayer.md "CanvasLayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_canvasgroup.md "CanvasGroup") [Next](class_canvaslayer.md "CanvasLayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).