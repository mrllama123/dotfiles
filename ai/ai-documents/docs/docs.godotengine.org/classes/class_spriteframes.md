---
title: SpriteFrames — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_spriteframes.html
crawled_at: "2026-08-13T10:40:27+12:00"
content_hash: de4c6f615af0a14b4babd7a6b9b480d6dbfbb98c7d915dc5f71b0a553483ea96
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SpriteFrames

* * *

# SpriteFrames

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Sprite frame library for AnimatedSprite2D and AnimatedSprite3D.

## Description

Sprite frame library for an [AnimatedSprite2D](class_animatedsprite2d.md#class-animatedsprite2d) or [AnimatedSprite3D](class_animatedsprite3d.md#class-animatedsprite3d) node. Contains frames and animation data for playback.

## Methods

|     |     |
| --- | --- |
| void | [add\_animation](#class-spriteframes-method-add-animation)(anim: [StringName](class_stringname.md#class-stringname)) |
| void | [add\_frame](#class-spriteframes-method-add-frame)(anim: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d), duration: [float](class_float.md#class-float) = 1.0, at\_position: [int](class_int.md#class-int) = -1) |
| void | [clear](#class-spriteframes-method-clear)(anim: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_all](#class-spriteframes-method-clear-all)() |
| void | [duplicate\_animation](#class-spriteframes-method-duplicate-animation)(anim\_from: [StringName](class_stringname.md#class-stringname), anim\_to: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [get\_animation\_loop](#class-spriteframes-method-get-animation-loop)(anim: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_animation\_names](#class-spriteframes-method-get-animation-names)() const |
| [float](class_float.md#class-float) | [get\_animation\_speed](#class-spriteframes-method-get-animation-speed)(anim: [StringName](class_stringname.md#class-stringname)) const |
| [int](class_int.md#class-int) | [get\_frame\_count](#class-spriteframes-method-get-frame-count)(anim: [StringName](class_stringname.md#class-stringname)) const |
| [float](class_float.md#class-float) | [get\_frame\_duration](#class-spriteframes-method-get-frame-duration)(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_frame\_texture](#class-spriteframes-method-get-frame-texture)(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_animation](#class-spriteframes-method-has-animation)(anim: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_animation](#class-spriteframes-method-remove-animation)(anim: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_frame](#class-spriteframes-method-remove-frame)(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) |
| void | [rename\_animation](#class-spriteframes-method-rename-animation)(anim: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_animation\_loop](#class-spriteframes-method-set-animation-loop)(anim: [StringName](class_stringname.md#class-stringname), loop: [bool](class_bool.md#class-bool)) |
| void | [set\_animation\_speed](#class-spriteframes-method-set-animation-speed)(anim: [StringName](class_stringname.md#class-stringname), fps: [float](class_float.md#class-float)) |
| void | [set\_frame](#class-spriteframes-method-set-frame)(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d), duration: [float](class_float.md#class-float) = 1.0) |

* * *

## Method Descriptions

void **add\_animation**(anim: [StringName](class_stringname.md#class-stringname)) [🔗](#class-spriteframes-method-add-animation)

Adds a new `anim` animation to the library.

* * *

void **add\_frame**(anim: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d), duration: [float](class_float.md#class-float) = 1.0, at\_position: [int](class_int.md#class-int) = -1) [🔗](#class-spriteframes-method-add-frame)

Adds a frame to the `anim` animation. If `at_position` is `-1`, the frame will be added to the end of the animation. `duration` specifies the relative duration, see [get\_frame\_duration()](#class-spriteframes-method-get-frame-duration) for details.

* * *

void **clear**(anim: [StringName](class_stringname.md#class-stringname)) [🔗](#class-spriteframes-method-clear)

Removes all frames from the `anim` animation.

* * *

void **clear\_all**() [🔗](#class-spriteframes-method-clear-all)

Removes all animations. An empty `default` animation will be created.

* * *

void **duplicate\_animation**(anim\_from: [StringName](class_stringname.md#class-stringname), anim\_to: [StringName](class_stringname.md#class-stringname)) [🔗](#class-spriteframes-method-duplicate-animation)

Duplicates the animation `anim_from` to a new animation named `anim_to`. Fails if `anim_to` already exists, or if `anim_from` does not exist.

* * *

[bool](class_bool.md#class-bool) **get\_animation\_loop**(anim: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-spriteframes-method-get-animation-loop)

Returns `true` if the given animation is configured to loop when it finishes playing. Otherwise, returns `false`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_animation\_names**() const [🔗](#class-spriteframes-method-get-animation-names)

Returns an array containing the names associated to each animation. Values are placed in alphabetical order.

* * *

[float](class_float.md#class-float) **get\_animation\_speed**(anim: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-spriteframes-method-get-animation-speed)

Returns the speed in frames per second for the `anim` animation.

* * *

[int](class_int.md#class-int) **get\_frame\_count**(anim: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-spriteframes-method-get-frame-count)

Returns the number of frames for the `anim` animation.

* * *

[float](class_float.md#class-float) **get\_frame\_duration**(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) const [🔗](#class-spriteframes-method-get-frame-duration)

Returns a relative duration of the frame `idx` in the `anim` animation (defaults to `1.0`). For example, a frame with a duration of `2.0` is displayed twice as long as a frame with a duration of `1.0`. You can calculate the absolute duration (in seconds) of a frame using the following formula:

```
absolute_duration = relative_duration / (animation_fps * abs(playing_speed))

```

In this example, `playing_speed` refers to either [AnimatedSprite2D.get\_playing\_speed()](class_animatedsprite2d.md#class-animatedsprite2d-method-get-playing-speed) or [AnimatedSprite3D.get\_playing\_speed()](class_animatedsprite3d.md#class-animatedsprite3d-method-get-playing-speed).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_frame\_texture**(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) const [🔗](#class-spriteframes-method-get-frame-texture)

Returns the texture of the frame `idx` in the `anim` animation.

* * *

[bool](class_bool.md#class-bool) **has\_animation**(anim: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-spriteframes-method-has-animation)

Returns `true` if the `anim` animation exists.

* * *

void **remove\_animation**(anim: [StringName](class_stringname.md#class-stringname)) [🔗](#class-spriteframes-method-remove-animation)

Removes the `anim` animation.

* * *

void **remove\_frame**(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int)) [🔗](#class-spriteframes-method-remove-frame)

Removes the `anim` animation's frame `idx`.

* * *

void **rename\_animation**(anim: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) [🔗](#class-spriteframes-method-rename-animation)

Changes the `anim` animation's name to `newname`.

* * *

void **set\_animation\_loop**(anim: [StringName](class_stringname.md#class-stringname), loop: [bool](class_bool.md#class-bool)) [🔗](#class-spriteframes-method-set-animation-loop)

If `loop` is `true`, the `anim` animation will loop when it reaches the end, or the start if it is played in reverse.

* * *

void **set\_animation\_speed**(anim: [StringName](class_stringname.md#class-stringname), fps: [float](class_float.md#class-float)) [🔗](#class-spriteframes-method-set-animation-speed)

Sets the speed for the `anim` animation in frames per second.

* * *

void **set\_frame**(anim: [StringName](class_stringname.md#class-stringname), idx: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d), duration: [float](class_float.md#class-float) = 1.0) [🔗](#class-spriteframes-method-set-frame)

Sets the `texture` and the `duration` of the frame `idx` in the `anim` animation. `duration` specifies the relative duration, see [get\_frame\_duration()](#class-spriteframes-method-get-frame-duration) for details.

[Previous](class_sphereshape3d.md "SphereShape3D") [Next](class_standardmaterial3d.md "StandardMaterial3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sphereshape3d.md "SphereShape3D") [Next](class_standardmaterial3d.md "StandardMaterial3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).