---
title: Sprite2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_sprite2d.html
crawled_at: "2026-08-13T10:23:39+12:00"
content_hash: df313f02d6689622660c9fb18240d2ab2fe041e104a6d5d958748279e544bea9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Sprite2D

* * *

# Sprite2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

General-purpose sprite node.

## Description

A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.

## Tutorials

- [Instancing Demo](https://godotengine.org/asset-library/asset/2716)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [centered](#class-sprite2d-property-centered) | `true` |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-sprite2d-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-sprite2d-property-flip-v) | `false` |
| [int](class_int.md#class-int) | [frame](#class-sprite2d-property-frame) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [frame\_coords](#class-sprite2d-property-frame-coords) | `Vector2i(0, 0)` |
| [int](class_int.md#class-int) | [hframes](#class-sprite2d-property-hframes) | `1` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-sprite2d-property-offset) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [region\_enabled](#class-sprite2d-property-region-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [region\_filter\_clip\_enabled](#class-sprite2d-property-region-filter-clip-enabled) | `false` |
| [Rect2](class_rect2.md#class-rect2) | [region\_rect](#class-sprite2d-property-region-rect) | `Rect2(0, 0, 0, 0)` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-sprite2d-property-texture) |  |
| [int](class_int.md#class-int) | [vframes](#class-sprite2d-property-vframes) | `1` |

## Methods

|     |     |
| --- | --- |
| [Rect2](class_rect2.md#class-rect2) | [get\_rect](#class-sprite2d-method-get-rect)() const |
| [bool](class_bool.md#class-bool) | [is\_pixel\_opaque](#class-sprite2d-method-is-pixel-opaque)(pos: [Vector2](class_vector2.md#class-vector2)) const |

* * *

## Signals

**frame\_changed**() [🔗](#class-sprite2d-signal-frame-changed)

Emitted when the [frame](#class-sprite2d-property-frame) changes.

* * *

**texture\_changed**() [🔗](#class-sprite2d-signal-texture-changed)

Emitted when the [texture](#class-sprite2d-property-texture) changes.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **centered** = `true` [🔗](#class-sprite2d-property-centered)

- void **set\_centered**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_centered**()


If `true`, texture is centered.

**Note:** For games with a pixel art aesthetic, textures may appear deformed when centered. This is caused by their position being between pixels. To prevent this, set this property to `false`, or consider enabling [ProjectSettings.rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel) and [ProjectSettings.rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel).

* * *

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-sprite2d-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_h**()


If `true`, texture is flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-sprite2d-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_v**()


If `true`, texture is flipped vertically.

* * *

[int](class_int.md#class-int) **frame** = `0` [🔗](#class-sprite2d-property-frame)

- void **set\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_frame**()


Current frame to display from sprite sheet. [hframes](#class-sprite2d-property-hframes) or [vframes](#class-sprite2d-property-vframes) must be greater than 1. This property is automatically adjusted when [hframes](#class-sprite2d-property-hframes) or [vframes](#class-sprite2d-property-vframes) are changed to keep pointing to the same visual frame (same column and row). If that's impossible, this value is reset to `0`.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **frame\_coords** = `Vector2i(0, 0)` [🔗](#class-sprite2d-property-frame-coords)

- void **set\_frame\_coords**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_frame\_coords**()


Coordinates of the frame to display from sprite sheet. This is as an alias for the [frame](#class-sprite2d-property-frame) property. [hframes](#class-sprite2d-property-hframes) or [vframes](#class-sprite2d-property-vframes) must be greater than 1.

* * *

[int](class_int.md#class-int) **hframes** = `1` [🔗](#class-sprite2d-property-hframes)

- void **set\_hframes**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_hframes**()


The number of columns in the sprite sheet. When this property is changed, [frame](#class-sprite2d-property-frame) is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, [frame](#class-sprite2d-property-frame) is reset to `0`.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-sprite2d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The texture's drawing offset.

**Note:** When you increase [offset](#class-sprite2d-property-offset).y in Sprite2D, the sprite moves downward on screen (i.e., +Y is down).

* * *

[bool](class_bool.md#class-bool) **region\_enabled** = `false` [🔗](#class-sprite2d-property-region-enabled)

- void **set\_region\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_region\_enabled**()


If `true`, texture is cut from a larger atlas texture. See [region\_rect](#class-sprite2d-property-region-rect).

**Note:** When using a custom [Shader](class_shader.md#class-shader) on a **Sprite2D**, the `UV` shader built-in will refer to the entire texture space. Use the `REGION_RECT` built-in to get the currently visible region defined in [region\_rect](#class-sprite2d-property-region-rect) instead. See [CanvasItem shaders](../tutorials/shaders/shader_reference/canvas_item_shader.md) for details.

* * *

[bool](class_bool.md#class-bool) **region\_filter\_clip\_enabled** = `false` [🔗](#class-sprite2d-property-region-filter-clip-enabled)

- void **set\_region\_filter\_clip\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_region\_filter\_clip\_enabled**()


If `true`, the area outside of the [region\_rect](#class-sprite2d-property-region-rect) is clipped to avoid bleeding of the surrounding texture pixels. [region\_enabled](#class-sprite2d-property-region-enabled) must be `true`.

* * *

[Rect2](class_rect2.md#class-rect2) **region\_rect** = `Rect2(0, 0, 0, 0)` [🔗](#class-sprite2d-property-region-rect)

- void **set\_region\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_region\_rect**()


The region of the atlas texture to display. [region\_enabled](#class-sprite2d-property-region-enabled) must be `true`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-sprite2d-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


[Texture2D](class_texture2d.md#class-texture2d) object to draw.

* * *

[int](class_int.md#class-int) **vframes** = `1` [🔗](#class-sprite2d-property-vframes)

- void **set\_vframes**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_vframes**()


The number of rows in the sprite sheet. When this property is changed, [frame](#class-sprite2d-property-frame) is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, [frame](#class-sprite2d-property-frame) is reset to `0`.

* * *

## Method Descriptions

[Rect2](class_rect2.md#class-rect2) **get\_rect**() const [🔗](#class-sprite2d-method-get-rect)

Returns a [Rect2](class_rect2.md#class-rect2) representing the Sprite2D's boundary in local coordinates.

**Example:** Detect if the Sprite2D was clicked:

GDScriptC#

```
func _input(event):
    if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
        if get_rect().has_point(to_local(event.position)):
            print("A click!")

```

```
public override void _Input(InputEvent @event)
{
    if (@event is InputEventMouseButton inputEventMouse)
    {
        if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left)
        {
            if (GetRect().HasPoint(ToLocal(inputEventMouse.Position)))
            {
                GD.Print("A click!");
            }
        }
    }
}

```

* * *

[bool](class_bool.md#class-bool) **is\_pixel\_opaque**(pos: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-sprite2d-method-is-pixel-opaque)

Returns `true`, if the pixel at the given position is opaque and `false` in other case. The position is in local coordinates.

**Note:** It also returns `false`, if the sprite's texture is `null` or if the given position is invalid.

[Previous](class_springbonesimulator3d.md "SpringBoneSimulator3D") [Next](class_sprite3d.md "Sprite3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_springbonesimulator3d.md "SpringBoneSimulator3D") [Next](class_sprite3d.md "Sprite3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).