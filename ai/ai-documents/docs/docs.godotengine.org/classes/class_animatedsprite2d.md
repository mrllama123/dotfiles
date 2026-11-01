---
title: AnimatedSprite2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animatedsprite2d.html
crawled_at: "2026-08-13T10:40:01+12:00"
content_hash: b4fd378cfcdd9e6f8fa3897a292050966b75c427dbc2c8d9aa41e18298110463
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimatedSprite2D

* * *

# AnimatedSprite2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Sprite node that contains multiple textures as frames to play for animation.

## Description

**AnimatedSprite2D** is similar to the [Sprite2D](class_sprite2d.md#class-sprite2d) node, except it carries multiple textures as animation frames. Animations are created using a [SpriteFrames](class_spriteframes.md#class-spriteframes) resource, which allows you to import image files (or a folder containing said files) to provide the animation frames for the sprite. The [SpriteFrames](class_spriteframes.md#class-spriteframes) resource can be configured in the editor via the SpriteFrames bottom panel.

## Tutorials

- [2D Sprite animation](../tutorials/2d/2d_sprite_animation.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [StringName](class_stringname.md#class-stringname) | [animation](#class-animatedsprite2d-property-animation) | `&"default"` |
| [String](class_string.md#class-string) | [autoplay](#class-animatedsprite2d-property-autoplay) | `""` |
| [bool](class_bool.md#class-bool) | [centered](#class-animatedsprite2d-property-centered) | `true` |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-animatedsprite2d-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-animatedsprite2d-property-flip-v) | `false` |
| [int](class_int.md#class-int) | [frame](#class-animatedsprite2d-property-frame) | `0` |
| [float](class_float.md#class-float) | [frame\_progress](#class-animatedsprite2d-property-frame-progress) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-animatedsprite2d-property-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [speed\_scale](#class-animatedsprite2d-property-speed-scale) | `1.0` |
| [SpriteFrames](class_spriteframes.md#class-spriteframes) | [sprite\_frames](#class-animatedsprite2d-property-sprite-frames) |  |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_playing\_speed](#class-animatedsprite2d-method-get-playing-speed)() const |
| [bool](class_bool.md#class-bool) | [is\_playing](#class-animatedsprite2d-method-is-playing)() const |
| void | [pause](#class-animatedsprite2d-method-pause)() |
| void | [play](#class-animatedsprite2d-method-play)(name: [StringName](class_stringname.md#class-stringname) = &"", custom\_speed: [float](class_float.md#class-float) = 1.0, from\_end: [bool](class_bool.md#class-bool) = false) |
| void | [play\_backwards](#class-animatedsprite2d-method-play-backwards)(name: [StringName](class_stringname.md#class-stringname) = &"") |
| void | [set\_frame\_and\_progress](#class-animatedsprite2d-method-set-frame-and-progress)(frame: [int](class_int.md#class-int), progress: [float](class_float.md#class-float)) |
| void | [stop](#class-animatedsprite2d-method-stop)() |

* * *

## Signals

**animation\_changed**() [🔗](#class-animatedsprite2d-signal-animation-changed)

Emitted when [animation](#class-animatedsprite2d-property-animation) changes.

* * *

**animation\_finished**() [🔗](#class-animatedsprite2d-signal-animation-finished)

Emitted when the animation reaches the end, or the start if it is played in reverse. When the animation finishes, it pauses the playback.

**Note:** This signal is not emitted if an animation is looping.

* * *

**animation\_looped**() [🔗](#class-animatedsprite2d-signal-animation-looped)

Emitted when the animation loops.

* * *

**frame\_changed**() [🔗](#class-animatedsprite2d-signal-frame-changed)

Emitted when [frame](#class-animatedsprite2d-property-frame) changes.

* * *

**sprite\_frames\_changed**() [🔗](#class-animatedsprite2d-signal-sprite-frames-changed)

Emitted when [sprite\_frames](#class-animatedsprite2d-property-sprite-frames) changes.

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **animation** = `&"default"` [🔗](#class-animatedsprite2d-property-animation)

- void **set\_animation**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_animation**()


The current animation from the [sprite\_frames](#class-animatedsprite2d-property-sprite-frames) resource. If this value is changed, the [frame](#class-animatedsprite2d-property-frame) counter and the [frame\_progress](#class-animatedsprite2d-property-frame-progress) are reset.

* * *

[String](class_string.md#class-string) **autoplay** = `""` [🔗](#class-animatedsprite2d-property-autoplay)

- void **set\_autoplay**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_autoplay**()


The key of the animation to play when the scene loads.

* * *

[bool](class_bool.md#class-bool) **centered** = `true` [🔗](#class-animatedsprite2d-property-centered)

- void **set\_centered**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_centered**()


If `true`, texture will be centered.

**Note:** For games with a pixel art aesthetic, textures may appear deformed when centered. This is caused by their position being between pixels. To prevent this, set this property to `false`, or consider enabling [ProjectSettings.rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel) and [ProjectSettings.rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel).

* * *

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-animatedsprite2d-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_h**()


If `true`, texture is flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-animatedsprite2d-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_v**()


If `true`, texture is flipped vertically.

* * *

[int](class_int.md#class-int) **frame** = `0` [🔗](#class-animatedsprite2d-property-frame)

- void **set\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_frame**()


The displayed animation frame's index. Setting this property also resets [frame\_progress](#class-animatedsprite2d-property-frame-progress). If this is not desired, use [set\_frame\_and\_progress()](#class-animatedsprite2d-method-set-frame-and-progress).

* * *

[float](class_float.md#class-float) **frame\_progress** = `0.0` [🔗](#class-animatedsprite2d-property-frame-progress)

- void **set\_frame\_progress**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_frame\_progress**()


The progress value between `0.0` and `1.0` until the current frame transitions to the next frame. If the animation is playing backwards, the value transitions from `1.0` to `0.0`.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-animatedsprite2d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The texture's drawing offset.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-animatedsprite2d-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


The speed scaling ratio. For example, if this value is `1`, then the animation plays at normal speed. If it's `0.5`, then it plays at half speed. If it's `2`, then it plays at double speed.

If set to a negative value, the animation is played in reverse. If set to `0`, the animation will not advance.

* * *

[SpriteFrames](class_spriteframes.md#class-spriteframes) **sprite\_frames** [🔗](#class-animatedsprite2d-property-sprite-frames)

- void **set\_sprite\_frames**(value: [SpriteFrames](class_spriteframes.md#class-spriteframes))

- [SpriteFrames](class_spriteframes.md#class-spriteframes) **get\_sprite\_frames**()


The [SpriteFrames](class_spriteframes.md#class-spriteframes) resource containing the animation(s). Allows you the option to load, edit, clear, make unique and save the states of the [SpriteFrames](class_spriteframes.md#class-spriteframes) resource.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_playing\_speed**() const [🔗](#class-animatedsprite2d-method-get-playing-speed)

Returns the actual playing speed of current animation or `0` if not playing. This speed is the [speed\_scale](#class-animatedsprite2d-property-speed-scale) property multiplied by `custom_speed` argument specified when calling the [play()](#class-animatedsprite2d-method-play) method.

Returns a negative value if the current animation is playing backwards.

* * *

[bool](class_bool.md#class-bool) **is\_playing**() const [🔗](#class-animatedsprite2d-method-is-playing)

Returns `true` if an animation is currently playing (even if [speed\_scale](#class-animatedsprite2d-property-speed-scale) and/or `custom_speed` are `0`).

* * *

void **pause**() [🔗](#class-animatedsprite2d-method-pause)

Pauses the currently playing animation. The [frame](#class-animatedsprite2d-property-frame) and [frame\_progress](#class-animatedsprite2d-property-frame-progress) will be kept and calling [play()](#class-animatedsprite2d-method-play) or [play\_backwards()](#class-animatedsprite2d-method-play-backwards) without arguments will resume the animation from the current playback position.

See also [stop()](#class-animatedsprite2d-method-stop).

* * *

void **play**(name: [StringName](class_stringname.md#class-stringname) = &"", custom\_speed: [float](class_float.md#class-float) = 1.0, from\_end: [bool](class_bool.md#class-bool) = false) [🔗](#class-animatedsprite2d-method-play)

Plays the animation with key `name`. If `custom_speed` is negative and `from_end` is `true`, the animation will play backwards (which is equivalent to calling [play\_backwards()](#class-animatedsprite2d-method-play-backwards)).

If this method is called with that same animation `name`, or with no `name` parameter, the assigned animation will resume playing if it was paused.

* * *

void **play\_backwards**(name: [StringName](class_stringname.md#class-stringname) = &"") [🔗](#class-animatedsprite2d-method-play-backwards)

Plays the animation with key `name` in reverse.

This method is a shorthand for [play()](#class-animatedsprite2d-method-play) with `custom_speed = -1.0` and `from_end = true`, so see its description for more information.

* * *

void **set\_frame\_and\_progress**(frame: [int](class_int.md#class-int), progress: [float](class_float.md#class-float)) [🔗](#class-animatedsprite2d-method-set-frame-and-progress)

Sets [frame](#class-animatedsprite2d-property-frame) and [frame\_progress](#class-animatedsprite2d-property-frame-progress) to the given values. Unlike setting [frame](#class-animatedsprite2d-property-frame), this method does not reset the [frame\_progress](#class-animatedsprite2d-property-frame-progress) to `0.0` implicitly.

**Example:** Change the animation while keeping the same [frame](#class-animatedsprite2d-property-frame) and [frame\_progress](#class-animatedsprite2d-property-frame-progress):

GDScript

```
var current_frame = animated_sprite.get_frame()
var current_progress = animated_sprite.get_frame_progress()
animated_sprite.play("walk_another_skin")
animated_sprite.set_frame_and_progress(current_frame, current_progress)

```

* * *

void **stop**() [🔗](#class-animatedsprite2d-method-stop)

Stops the currently playing animation. The animation position is reset to `0` and the `custom_speed` is reset to `1.0`. See also [pause()](#class-animatedsprite2d-method-pause).

[Previous](class_animatablebody3d.md "AnimatableBody3D") [Next](class_animatedsprite3d.md "AnimatedSprite3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animatablebody3d.md "AnimatableBody3D") [Next](class_animatedsprite3d.md "AnimatedSprite3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).