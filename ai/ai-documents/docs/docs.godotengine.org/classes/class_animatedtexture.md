---
title: AnimatedTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animatedtexture.html
crawled_at: "2026-08-13T10:22:24+12:00"
content_hash: f243b556e7c28866d30c97e962b1bbf7e35ca922baff317b16c7e400cdb28667
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimatedTexture

* * *

# AnimatedTexture

**Deprecated:** This class does not work properly in current versions and may be removed in the future. There is currently no equivalent workaround.

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Proxy texture for simple frame-based animations.

## Description

**AnimatedTexture** is a resource format for frame-based animations, where multiple textures can be chained automatically with a predefined delay for each frame. Unlike [AnimationPlayer](class_animationplayer.md#class-animationplayer) or [AnimatedSprite2D](class_animatedsprite2d.md#class-animatedsprite2d), it isn't a [Node](class_node.md#class-node), but has the advantage of being usable anywhere a [Texture2D](class_texture2d.md#class-texture2d) resource can be used, e.g. in a [TileSet](class_tileset.md#class-tileset).

The playback of the animation is controlled by the [speed\_scale](#class-animatedtexture-property-speed-scale) property, as well as each frame's duration (see [set\_frame\_duration()](#class-animatedtexture-method-set-frame-duration)). The animation loops, i.e. it will restart at frame 0 automatically after playing the last frame.

**AnimatedTexture** currently requires all frame textures to have the same size, otherwise the bigger ones will be cropped to match the smallest one.

**Note:** AnimatedTexture doesn't support using [AtlasTexture](class_atlastexture.md#class-atlastexture) s. Each frame needs to be a separate [Texture2D](class_texture2d.md#class-texture2d).

**Warning:** The current implementation is not efficient for the modern renderers.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [current\_frame](#class-animatedtexture-property-current-frame) |  |
| [int](class_int.md#class-int) | [frames](#class-animatedtexture-property-frames) | `1` |
| [bool](class_bool.md#class-bool) | [one\_shot](#class-animatedtexture-property-one-shot) | `false` |
| [bool](class_bool.md#class-bool) | [pause](#class-animatedtexture-property-pause) | `false` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [float](class_float.md#class-float) | [speed\_scale](#class-animatedtexture-property-speed-scale) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_frame\_duration](#class-animatedtexture-method-get-frame-duration)(frame: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_frame\_texture](#class-animatedtexture-method-get-frame-texture)(frame: [int](class_int.md#class-int)) const |
| void | [set\_frame\_duration](#class-animatedtexture-method-set-frame-duration)(frame: [int](class_int.md#class-int), duration: [float](class_float.md#class-float)) |
| void | [set\_frame\_texture](#class-animatedtexture-method-set-frame-texture)(frame: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) |

* * *

## Constants

**MAX\_FRAMES** = `256` [🔗](#class-animatedtexture-constant-max-frames)

The maximum number of frames supported by **AnimatedTexture**. If you need more frames in your animation, use [AnimationPlayer](class_animationplayer.md#class-animationplayer) or [AnimatedSprite2D](class_animatedsprite2d.md#class-animatedsprite2d).

* * *

## Property Descriptions

[int](class_int.md#class-int) **current\_frame** [🔗](#class-animatedtexture-property-current-frame)

- void **set\_current\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_current\_frame**()


Sets the currently visible frame of the texture. Setting this frame while playing resets the current frame time, so the newly selected frame plays for its whole configured frame duration.

* * *

[int](class_int.md#class-int) **frames** = `1` [🔗](#class-animatedtexture-property-frames)

- void **set\_frames**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_frames**()


Number of frames to use in the animation. While you can create the frames independently with [set\_frame\_texture()](#class-animatedtexture-method-set-frame-texture), you need to set this value for the animation to take new frames into account. The maximum number of frames is [MAX\_FRAMES](#class-animatedtexture-constant-max-frames).

* * *

[bool](class_bool.md#class-bool) **one\_shot** = `false` [🔗](#class-animatedtexture-property-one-shot)

- void **set\_one\_shot**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_one\_shot**()


If `true`, the animation will only play once and will not loop back to the first frame after reaching the end. Note that reaching the end will not set [pause](#class-animatedtexture-property-pause) to `true`.

* * *

[bool](class_bool.md#class-bool) **pause** = `false` [🔗](#class-animatedtexture-property-pause)

- void **set\_pause**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_pause**()


If `true`, the animation will pause where it currently is (i.e. at [current\_frame](#class-animatedtexture-property-current-frame)). The animation will continue from where it was paused when changing this property to `false`.

* * *

[float](class_float.md#class-float) **speed\_scale** = `1.0` [🔗](#class-animatedtexture-property-speed-scale)

- void **set\_speed\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_speed\_scale**()


The animation speed is multiplied by this value. If set to a negative value, the animation is played in reverse.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_frame\_duration**(frame: [int](class_int.md#class-int)) const [🔗](#class-animatedtexture-method-get-frame-duration)

Returns the given `frame`'s duration, in seconds.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_frame\_texture**(frame: [int](class_int.md#class-int)) const [🔗](#class-animatedtexture-method-get-frame-texture)

Returns the given frame's [Texture2D](class_texture2d.md#class-texture2d).

* * *

void **set\_frame\_duration**(frame: [int](class_int.md#class-int), duration: [float](class_float.md#class-float)) [🔗](#class-animatedtexture-method-set-frame-duration)

Sets the duration of any given `frame`. The final duration is affected by the [speed\_scale](#class-animatedtexture-property-speed-scale). If set to `0`, the frame is skipped during playback.

* * *

void **set\_frame\_texture**(frame: [int](class_int.md#class-int), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-animatedtexture-method-set-frame-texture)

Assigns a [Texture2D](class_texture2d.md#class-texture2d) to the given frame. Frame IDs start at 0, so the first frame has ID 0, and the last frame of the animation has ID [frames](#class-animatedtexture-property-frames) \- 1.

You can define any number of textures up to [MAX\_FRAMES](#class-animatedtexture-constant-max-frames), but keep in mind that only frames from 0 to [frames](#class-animatedtexture-property-frames) \- 1 will be part of the animation.

[Previous](class_resource.md "Resource") [Next](class_animation.md "Animation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resource.md "Resource") [Next](class_animation.md "Animation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).