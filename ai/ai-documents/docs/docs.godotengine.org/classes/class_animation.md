---
title: Animation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animation.html
crawled_at: "2026-08-13T10:25:41+12:00"
content_hash: 3a1b843ba9b0c8affae366e32ac084dfb6760c5310eabdb45f5c96700a76ac9d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Animation

* * *

# Animation

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds data that can be used to animate anything in the engine.

## Description

This resource holds data that can be used to animate anything in the engine. Animations are divided into tracks and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.

GDScriptC#

```
# This creates an animation that makes the node "Enemy" move to the right by
# 100 pixels in 2.0 seconds.
var animation = Animation.new()
var track_index = animation.add_track(Animation.TYPE_VALUE)
animation.track_set_path(track_index, "Enemy:position:x")
animation.track_insert_key(track_index, 0.0, 0)
animation.track_insert_key(track_index, 2.0, 100)
animation.length = 2.0

```

```
// This creates an animation that makes the node "Enemy" move to the right by
// 100 pixels in 2.0 seconds.
var animation = new Animation();
int trackIndex = animation.AddTrack(Animation.TrackType.Value);
animation.TrackSetPath(trackIndex, "Enemy:position:x");
animation.TrackInsertKey(trackIndex, 0.0f, 0);
animation.TrackInsertKey(trackIndex, 2.0f, 100);
animation.Length = 2.0f;

```

Animations are just data containers, and must be added to nodes such as an [AnimationPlayer](class_animationplayer.md#class-animationplayer) to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check [TrackType](#enum-animation-tracktype) to see available types.

**Note:** For 3D position/rotation/scale, using the dedicated [TYPE\_POSITION\_3D](#class-animation-constant-type-position-3d), [TYPE\_ROTATION\_3D](#class-animation-constant-type-rotation-3d) and [TYPE\_SCALE\_3D](#class-animation-constant-type-scale-3d) track types instead of [TYPE\_VALUE](#class-animation-constant-type-value) is recommended for performance reasons.

## Tutorials

- [Animation documentation index](../tutorials/animation/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [capture\_included](#class-animation-property-capture-included) | `false` |
| [float](class_float.md#class-float) | [length](#class-animation-property-length) | `1.0` |
| [LoopMode](#enum-animation-loopmode) | [loop\_mode](#class-animation-property-loop-mode) | `0` |
| [float](class_float.md#class-float) | [step](#class-animation-property-step) | `0.033333335` |

## Methods

|     |     |
| --- | --- |
| void | [add\_marker](#class-animation-method-add-marker)(name: [StringName](class_stringname.md#class-stringname), time: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [add\_track](#class-animation-method-add-track)(type: [TrackType](#enum-animation-tracktype), at\_position: [int](class_int.md#class-int) = -1) |
| [StringName](class_stringname.md#class-stringname) | [animation\_track\_get\_key\_animation](#class-animation-method-animation-track-get-key-animation)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [animation\_track\_insert\_key](#class-animation-method-animation-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), animation: [StringName](class_stringname.md#class-stringname)) |
| void | [animation\_track\_set\_key\_animation](#class-animation-method-animation-track-set-key-animation)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), animation: [StringName](class_stringname.md#class-stringname)) |
| [float](class_float.md#class-float) | [audio\_track\_get\_key\_end\_offset](#class-animation-method-audio-track-get-key-end-offset)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [audio\_track\_get\_key\_start\_offset](#class-animation-method-audio-track-get-key-start-offset)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [Resource](class_resource.md#class-resource) | [audio\_track\_get\_key\_stream](#class-animation-method-audio-track-get-key-stream)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [audio\_track\_insert\_key](#class-animation-method-audio-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), stream: [Resource](class_resource.md#class-resource), start\_offset: [float](class_float.md#class-float) = 0, end\_offset: [float](class_float.md#class-float) = 0) |
| [bool](class_bool.md#class-bool) | [audio\_track\_is\_use\_blend](#class-animation-method-audio-track-is-use-blend)(track\_idx: [int](class_int.md#class-int)) const |
| void | [audio\_track\_set\_key\_end\_offset](#class-animation-method-audio-track-set-key-end-offset)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) |
| void | [audio\_track\_set\_key\_start\_offset](#class-animation-method-audio-track-set-key-start-offset)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) |
| void | [audio\_track\_set\_key\_stream](#class-animation-method-audio-track-set-key-stream)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), stream: [Resource](class_resource.md#class-resource)) |
| void | [audio\_track\_set\_use\_blend](#class-animation-method-audio-track-set-use-blend)(track\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| [Vector2](class_vector2.md#class-vector2) | [bezier\_track\_get\_key\_in\_handle](#class-animation-method-bezier-track-get-key-in-handle)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [bezier\_track\_get\_key\_out\_handle](#class-animation-method-bezier-track-get-key-out-handle)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [bezier\_track\_get\_key\_value](#class-animation-method-bezier-track-get-key-value)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [bezier\_track\_insert\_key](#class-animation-method-bezier-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), value: [float](class_float.md#class-float), in\_handle: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), out\_handle: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| [float](class_float.md#class-float) | [bezier\_track\_interpolate](#class-animation-method-bezier-track-interpolate)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) const |
| void | [bezier\_track\_set\_key\_in\_handle](#class-animation-method-bezier-track-set-key-in-handle)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), in\_handle: [Vector2](class_vector2.md#class-vector2), balanced\_value\_time\_ratio: [float](class_float.md#class-float) = 1.0) |
| void | [bezier\_track\_set\_key\_out\_handle](#class-animation-method-bezier-track-set-key-out-handle)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), out\_handle: [Vector2](class_vector2.md#class-vector2), balanced\_value\_time\_ratio: [float](class_float.md#class-float) = 1.0) |
| void | [bezier\_track\_set\_key\_value](#class-animation-method-bezier-track-set-key-value)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [blend\_shape\_track\_insert\_key](#class-animation-method-blend-shape-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), amount: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [blend\_shape\_track\_interpolate](#class-animation-method-blend-shape-track-interpolate)(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const |
| void | [clear](#class-animation-method-clear)() |
| void | [compress](#class-animation-method-compress)(page\_size: [int](class_int.md#class-int) = 8192, fps: [int](class_int.md#class-int) = 120, split\_tolerance: [float](class_float.md#class-float) = 4.0) |
| void | [copy\_track](#class-animation-method-copy-track)(track\_idx: [int](class_int.md#class-int), to\_animation: [Animation](#class-animation)) |
| [int](class_int.md#class-int) | [find\_track](#class-animation-method-find-track)(path: [NodePath](class_nodepath.md#class-nodepath), type: [TrackType](#enum-animation-tracktype)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_marker\_at\_time](#class-animation-method-get-marker-at-time)(time: [float](class_float.md#class-float)) const |
| [Color](class_color.md#class-color) | [get\_marker\_color](#class-animation-method-get-marker-color)(name: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_marker\_names](#class-animation-method-get-marker-names)() const |
| [float](class_float.md#class-float) | [get\_marker\_time](#class-animation-method-get-marker-time)(name: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_next\_marker](#class-animation-method-get-next-marker)(time: [float](class_float.md#class-float)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_prev\_marker](#class-animation-method-get-prev-marker)(time: [float](class_float.md#class-float)) const |
| [int](class_int.md#class-int) | [get\_track\_count](#class-animation-method-get-track-count)() const |
| [bool](class_bool.md#class-bool) | [has\_marker](#class-animation-method-has-marker)(name: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [method\_track\_get\_name](#class-animation-method-method-track-get-name)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [method\_track\_get\_params](#class-animation-method-method-track-get-params)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| void | [optimize](#class-animation-method-optimize)(allowed\_velocity\_err: [float](class_float.md#class-float) = 0.01, allowed\_angular\_err: [float](class_float.md#class-float) = 0.01, precision: [int](class_int.md#class-int) = 3) |
| [int](class_int.md#class-int) | [position\_track\_insert\_key](#class-animation-method-position-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), position: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3](class_vector3.md#class-vector3) | [position\_track\_interpolate](#class-animation-method-position-track-interpolate)(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const |
| void | [remove\_marker](#class-animation-method-remove-marker)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_track](#class-animation-method-remove-track)(track\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [rotation\_track\_insert\_key](#class-animation-method-rotation-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), rotation: [Quaternion](class_quaternion.md#class-quaternion)) |
| [Quaternion](class_quaternion.md#class-quaternion) | [rotation\_track\_interpolate](#class-animation-method-rotation-track-interpolate)(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [scale\_track\_insert\_key](#class-animation-method-scale-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), scale: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3](class_vector3.md#class-vector3) | [scale\_track\_interpolate](#class-animation-method-scale-track-interpolate)(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const |
| void | [set\_marker\_color](#class-animation-method-set-marker-color)(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) |
| [int](class_int.md#class-int) | [track\_find\_key](#class-animation-method-track-find-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), find\_mode: [FindMode](#enum-animation-findmode) = 0, limit: [bool](class_bool.md#class-bool) = false, backward: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [track\_get\_interpolation\_loop\_wrap](#class-animation-method-track-get-interpolation-loop-wrap)(track\_idx: [int](class_int.md#class-int)) const |
| [InterpolationType](#enum-animation-interpolationtype) | [track\_get\_interpolation\_type](#class-animation-method-track-get-interpolation-type)(track\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [track\_get\_key\_count](#class-animation-method-track-get-key-count)(track\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [track\_get\_key\_time](#class-animation-method-track-get-key-time)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [track\_get\_key\_transition](#class-animation-method-track-get-key-transition)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [track\_get\_key\_value](#class-animation-method-track-get-key-value)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [track\_get\_path](#class-animation-method-track-get-path)(track\_idx: [int](class_int.md#class-int)) const |
| [TrackType](#enum-animation-tracktype) | [track\_get\_type](#class-animation-method-track-get-type)(track\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [track\_insert\_key](#class-animation-method-track-insert-key)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), key: [Variant](class_variant.md#class-variant), transition: [float](class_float.md#class-float) = 1) |
| [bool](class_bool.md#class-bool) | [track\_is\_compressed](#class-animation-method-track-is-compressed)(track\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [track\_is\_enabled](#class-animation-method-track-is-enabled)(track\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [track\_is\_imported](#class-animation-method-track-is-imported)(track\_idx: [int](class_int.md#class-int)) const |
| void | [track\_move\_down](#class-animation-method-track-move-down)(track\_idx: [int](class_int.md#class-int)) |
| void | [track\_move\_to](#class-animation-method-track-move-to)(track\_idx: [int](class_int.md#class-int), to\_idx: [int](class_int.md#class-int)) |
| void | [track\_move\_up](#class-animation-method-track-move-up)(track\_idx: [int](class_int.md#class-int)) |
| void | [track\_remove\_key](#class-animation-method-track-remove-key)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) |
| void | [track\_remove\_key\_at\_time](#class-animation-method-track-remove-key-at-time)(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) |
| void | [track\_set\_enabled](#class-animation-method-track-set-enabled)(track\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [track\_set\_imported](#class-animation-method-track-set-imported)(track\_idx: [int](class_int.md#class-int), imported: [bool](class_bool.md#class-bool)) |
| void | [track\_set\_interpolation\_loop\_wrap](#class-animation-method-track-set-interpolation-loop-wrap)(track\_idx: [int](class_int.md#class-int), interpolation: [bool](class_bool.md#class-bool)) |
| void | [track\_set\_interpolation\_type](#class-animation-method-track-set-interpolation-type)(track\_idx: [int](class_int.md#class-int), interpolation: [InterpolationType](#enum-animation-interpolationtype)) |
| void | [track\_set\_key\_time](#class-animation-method-track-set-key-time)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) |
| void | [track\_set\_key\_transition](#class-animation-method-track-set-key-transition)(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), transition: [float](class_float.md#class-float)) |
| void | [track\_set\_key\_value](#class-animation-method-track-set-key-value)(track\_idx: [int](class_int.md#class-int), key: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant)) |
| void | [track\_set\_path](#class-animation-method-track-set-path)(track\_idx: [int](class_int.md#class-int), path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [track\_swap](#class-animation-method-track-swap)(track\_idx: [int](class_int.md#class-int), with\_idx: [int](class_int.md#class-int)) |
| [UpdateMode](#enum-animation-updatemode) | [value\_track\_get\_update\_mode](#class-animation-method-value-track-get-update-mode)(track\_idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [value\_track\_interpolate](#class-animation-method-value-track-interpolate)(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const |
| void | [value\_track\_set\_update\_mode](#class-animation-method-value-track-set-update-mode)(track\_idx: [int](class_int.md#class-int), mode: [UpdateMode](#enum-animation-updatemode)) |

* * *

## Enumerations

enum **TrackType**: [🔗](#enum-animation-tracktype)

[TrackType](#enum-animation-tracktype) **TYPE\_VALUE** = `0`

Value tracks set values in node properties, but only those which can be interpolated. For 3D position/rotation/scale, using the dedicated [TYPE\_POSITION\_3D](#class-animation-constant-type-position-3d), [TYPE\_ROTATION\_3D](#class-animation-constant-type-rotation-3d) and [TYPE\_SCALE\_3D](#class-animation-constant-type-scale-3d) track types instead of [TYPE\_VALUE](#class-animation-constant-type-value) is recommended for performance reasons.

[TrackType](#enum-animation-tracktype) **TYPE\_POSITION\_3D** = `1`

3D position track (values are stored in [Vector3](class_vector3.md#class-vector3) s).

[TrackType](#enum-animation-tracktype) **TYPE\_ROTATION\_3D** = `2`

3D rotation track (values are stored in [Quaternion](class_quaternion.md#class-quaternion) s).

[TrackType](#enum-animation-tracktype) **TYPE\_SCALE\_3D** = `3`

3D scale track (values are stored in [Vector3](class_vector3.md#class-vector3) s).

[TrackType](#enum-animation-tracktype) **TYPE\_BLEND\_SHAPE** = `4`

Blend shape track.

[TrackType](#enum-animation-tracktype) **TYPE\_METHOD** = `5`

Method tracks call functions with given arguments per key.

[TrackType](#enum-animation-tracktype) **TYPE\_BEZIER** = `6`

Bezier tracks are used to interpolate a value using custom curves. They can also be used to animate sub-properties of vectors and colors (e.g. alpha value of a [Color](class_color.md#class-color)).

[TrackType](#enum-animation-tracktype) **TYPE\_AUDIO** = `7`

Audio tracks are used to play an audio stream with either type of [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer). The stream can be trimmed and previewed in the animation.

[TrackType](#enum-animation-tracktype) **TYPE\_ANIMATION** = `8`

Animation tracks play animations in other [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes.

* * *

enum **InterpolationType**: [🔗](#enum-animation-interpolationtype)

[InterpolationType](#enum-animation-interpolationtype) **INTERPOLATION\_NEAREST** = `0`

No interpolation (nearest value).

[InterpolationType](#enum-animation-interpolationtype) **INTERPOLATION\_LINEAR** = `1`

Linear interpolation.

[InterpolationType](#enum-animation-interpolationtype) **INTERPOLATION\_CUBIC** = `2`

Cubic interpolation. This looks smoother than linear interpolation, but is more expensive to interpolate. Stick to [INTERPOLATION\_LINEAR](#class-animation-constant-interpolation-linear) for complex 3D animations imported from external software, even if it requires using a higher animation framerate in return.

[InterpolationType](#enum-animation-interpolationtype) **INTERPOLATION\_LINEAR\_ANGLE** = `3`

Linear interpolation with shortest path rotation.

**Note:** The result value is always normalized and may not match the key value.

[InterpolationType](#enum-animation-interpolationtype) **INTERPOLATION\_CUBIC\_ANGLE** = `4`

Cubic interpolation with shortest path rotation.

**Note:** The result value is always normalized and may not match the key value.

* * *

enum **UpdateMode**: [🔗](#enum-animation-updatemode)

[UpdateMode](#enum-animation-updatemode) **UPDATE\_CONTINUOUS** = `0`

Update between keyframes and hold the value.

[UpdateMode](#enum-animation-updatemode) **UPDATE\_DISCRETE** = `1`

Update at the keyframes.

[UpdateMode](#enum-animation-updatemode) **UPDATE\_CAPTURE** = `2`

Same as [UPDATE\_CONTINUOUS](#class-animation-constant-update-continuous) but works as a flag to capture the value of the current object and perform interpolation in some methods. See also [AnimationMixer.capture()](class_animationmixer.md#class-animationmixer-method-capture), [AnimationPlayer.playback\_auto\_capture](class_animationplayer.md#class-animationplayer-property-playback-auto-capture), and [AnimationPlayer.play\_with\_capture()](class_animationplayer.md#class-animationplayer-method-play-with-capture).

* * *

enum **LoopMode**: [🔗](#enum-animation-loopmode)

[LoopMode](#enum-animation-loopmode) **LOOP\_NONE** = `0`

At both ends of the animation, the animation will stop playing.

[LoopMode](#enum-animation-loopmode) **LOOP\_LINEAR** = `1`

At both ends of the animation, the animation will be repeated without changing the playback direction.

[LoopMode](#enum-animation-loopmode) **LOOP\_PINGPONG** = `2`

Repeats playback and reverse playback at both ends of the animation.

* * *

enum **LoopedFlag**: [🔗](#enum-animation-loopedflag)

[LoopedFlag](#enum-animation-loopedflag) **LOOPED\_FLAG\_NONE** = `0`

This flag indicates that the animation proceeds without any looping.

[LoopedFlag](#enum-animation-loopedflag) **LOOPED\_FLAG\_END** = `1`

This flag indicates that the animation has reached the end of the animation and just after loop processed.

[LoopedFlag](#enum-animation-loopedflag) **LOOPED\_FLAG\_START** = `2`

This flag indicates that the animation has reached the start of the animation and just after loop processed.

* * *

enum **FindMode**: [🔗](#enum-animation-findmode)

[FindMode](#enum-animation-findmode) **FIND\_MODE\_NEAREST** = `0`

Finds the nearest time key.

[FindMode](#enum-animation-findmode) **FIND\_MODE\_APPROX** = `1`

Finds only the key with approximating the time.

[FindMode](#enum-animation-findmode) **FIND\_MODE\_EXACT** = `2`

Finds only the key with matching the time.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **capture\_included** = `false` [🔗](#class-animation-property-capture-included)

- [bool](class_bool.md#class-bool) **is\_capture\_included**()


Returns `true` if the capture track is included. This is a cached readonly value for performance.

* * *

[float](class_float.md#class-float) **length** = `1.0` [🔗](#class-animation-property-length)

- void **set\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_length**()


The total length of the animation (in seconds).

**Note:** Length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.

* * *

[LoopMode](#enum-animation-loopmode) **loop\_mode** = `0` [🔗](#class-animation-property-loop-mode)

- void **set\_loop\_mode**(value: [LoopMode](#enum-animation-loopmode))

- [LoopMode](#enum-animation-loopmode) **get\_loop\_mode**()


Determines the behavior of both ends of the animation timeline during animation playback. This indicates whether and how the animation should be restarted, and is also used to correctly interpolate animation cycles.

* * *

[float](class_float.md#class-float) **step** = `0.033333335` [🔗](#class-animation-property-step)

- void **set\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_step**()


The animation step value.

* * *

## Method Descriptions

void **add\_marker**(name: [StringName](class_stringname.md#class-stringname), time: [float](class_float.md#class-float)) [🔗](#class-animation-method-add-marker)

Adds a marker to this Animation.

* * *

[int](class_int.md#class-int) **add\_track**(type: [TrackType](#enum-animation-tracktype), at\_position: [int](class_int.md#class-int) = -1) [🔗](#class-animation-method-add-track)

Adds a track to the Animation.

* * *

[StringName](class_stringname.md#class-stringname) **animation\_track\_get\_key\_animation**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-animation-track-get-key-animation)

Returns the animation name at the key identified by `key_idx`. The `track_idx` must be the index of an Animation Track.

* * *

[int](class_int.md#class-int) **animation\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), animation: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animation-method-animation-track-insert-key)

Inserts a key with value `animation` at the given `time` (in seconds). The `track_idx` must be the index of an Animation Track.

* * *

void **animation\_track\_set\_key\_animation**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), animation: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animation-method-animation-track-set-key-animation)

Sets the key identified by `key_idx` to value `animation`. The `track_idx` must be the index of an Animation Track.

* * *

[float](class_float.md#class-float) **audio\_track\_get\_key\_end\_offset**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-audio-track-get-key-end-offset)

Returns the end offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.

End offset is the number of seconds cut off at the ending of the audio stream.

* * *

[float](class_float.md#class-float) **audio\_track\_get\_key\_start\_offset**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-audio-track-get-key-start-offset)

Returns the start offset of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.

Start offset is the number of seconds cut off at the beginning of the audio stream.

* * *

[Resource](class_resource.md#class-resource) **audio\_track\_get\_key\_stream**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-audio-track-get-key-stream)

Returns the audio stream of the key identified by `key_idx`. The `track_idx` must be the index of an Audio Track.

* * *

[int](class_int.md#class-int) **audio\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), stream: [Resource](class_resource.md#class-resource), start\_offset: [float](class_float.md#class-float) = 0, end\_offset: [float](class_float.md#class-float) = 0) [🔗](#class-animation-method-audio-track-insert-key)

Inserts an Audio Track key at the given `time` in seconds. The `track_idx` must be the index of an Audio Track.

`stream` is the [AudioStream](class_audiostream.md#class-audiostream) resource to play. `start_offset` is the number of seconds cut off at the beginning of the audio stream, while `end_offset` is at the ending.

* * *

[bool](class_bool.md#class-bool) **audio\_track\_is\_use\_blend**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-audio-track-is-use-blend)

Returns `true` if the track at `track_idx` will be blended with other animations.

* * *

void **audio\_track\_set\_key\_end\_offset**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) [🔗](#class-animation-method-audio-track-set-key-end-offset)

Sets the end offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.

* * *

void **audio\_track\_set\_key\_start\_offset**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), offset: [float](class_float.md#class-float)) [🔗](#class-animation-method-audio-track-set-key-start-offset)

Sets the start offset of the key identified by `key_idx` to value `offset`. The `track_idx` must be the index of an Audio Track.

* * *

void **audio\_track\_set\_key\_stream**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), stream: [Resource](class_resource.md#class-resource)) [🔗](#class-animation-method-audio-track-set-key-stream)

Sets the stream of the key identified by `key_idx` to value `stream`. The `track_idx` must be the index of an Audio Track.

* * *

void **audio\_track\_set\_use\_blend**(track\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-animation-method-audio-track-set-use-blend)

Sets whether the track will be blended with other animations. If `true`, the audio playback volume changes depending on the blend value.

* * *

[Vector2](class_vector2.md#class-vector2) **bezier\_track\_get\_key\_in\_handle**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-bezier-track-get-key-in-handle)

Returns the in handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.

* * *

[Vector2](class_vector2.md#class-vector2) **bezier\_track\_get\_key\_out\_handle**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-bezier-track-get-key-out-handle)

Returns the out handle of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.

* * *

[float](class_float.md#class-float) **bezier\_track\_get\_key\_value**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-bezier-track-get-key-value)

Returns the value of the key identified by `key_idx`. The `track_idx` must be the index of a Bezier Track.

* * *

[int](class_int.md#class-int) **bezier\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), value: [float](class_float.md#class-float), in\_handle: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0), out\_handle: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-animation-method-bezier-track-insert-key)

Inserts a Bezier Track key at the given `time` in seconds. The `track_idx` must be the index of a Bezier Track.

`in_handle` is the left-side weight of the added Bezier curve point, `out_handle` is the right-side one, while `value` is the actual value at this point.

* * *

[float](class_float.md#class-float) **bezier\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) const [🔗](#class-animation-method-bezier-track-interpolate)

Returns the interpolated value at the given `time` (in seconds). The `track_idx` must be the index of a Bezier Track.

* * *

void **bezier\_track\_set\_key\_in\_handle**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), in\_handle: [Vector2](class_vector2.md#class-vector2), balanced\_value\_time\_ratio: [float](class_float.md#class-float) = 1.0) [🔗](#class-animation-method-bezier-track-set-key-in-handle)

Sets the in handle of the key identified by `key_idx` to value `in_handle`. The `track_idx` must be the index of a Bezier Track.

* * *

void **bezier\_track\_set\_key\_out\_handle**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), out\_handle: [Vector2](class_vector2.md#class-vector2), balanced\_value\_time\_ratio: [float](class_float.md#class-float) = 1.0) [🔗](#class-animation-method-bezier-track-set-key-out-handle)

Sets the out handle of the key identified by `key_idx` to value `out_handle`. The `track_idx` must be the index of a Bezier Track.

* * *

void **bezier\_track\_set\_key\_value**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-animation-method-bezier-track-set-key-value)

Sets the value of the key identified by `key_idx` to the given value. The `track_idx` must be the index of a Bezier Track.

* * *

[int](class_int.md#class-int) **blend\_shape\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), amount: [float](class_float.md#class-float)) [🔗](#class-animation-method-blend-shape-track-insert-key)

Inserts a key in a given blend shape track. Returns the key index.

* * *

[float](class_float.md#class-float) **blend\_shape\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-blend-shape-track-interpolate)

Returns the interpolated blend shape value at the given time (in seconds). The `track_idx` must be the index of a blend shape track.

* * *

void **clear**() [🔗](#class-animation-method-clear)

Clear the animation (clear all tracks and reset all).

* * *

void **compress**(page\_size: [int](class_int.md#class-int) = 8192, fps: [int](class_int.md#class-int) = 120, split\_tolerance: [float](class_float.md#class-float) = 4.0) [🔗](#class-animation-method-compress)

Compress the animation and all its tracks in-place. This will make [track\_is\_compressed()](#class-animation-method-track-is-compressed) return `true` once called on this **Animation**. Compressed tracks require less memory to be played, and are designed to be used for complex 3D animations (such as cutscenes) imported from external 3D software. Compression is lossy, but the difference is usually not noticeable in real world conditions.

**Note:** Compressed tracks have various limitations (such as not being editable from the editor), so only use compressed animations if you actually need them.

* * *

void **copy\_track**(track\_idx: [int](class_int.md#class-int), to\_animation: [Animation](#class-animation)) [🔗](#class-animation-method-copy-track)

Adds a new track to `to_animation` that is a copy of the given track from this animation.

* * *

[int](class_int.md#class-int) **find\_track**(path: [NodePath](class_nodepath.md#class-nodepath), type: [TrackType](#enum-animation-tracktype)) const [🔗](#class-animation-method-find-track)

Returns the index of the specified track. If the track is not found, return -1.

* * *

[StringName](class_stringname.md#class-stringname) **get\_marker\_at\_time**(time: [float](class_float.md#class-float)) const [🔗](#class-animation-method-get-marker-at-time)

Returns the name of the marker located at the given time.

* * *

[Color](class_color.md#class-color) **get\_marker\_color**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animation-method-get-marker-color)

Returns the given marker's color.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_marker\_names**() const [🔗](#class-animation-method-get-marker-names)

Returns every marker in this Animation, sorted ascending by time.

* * *

[float](class_float.md#class-float) **get\_marker\_time**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animation-method-get-marker-time)

Returns the given marker's time.

* * *

[StringName](class_stringname.md#class-stringname) **get\_next\_marker**(time: [float](class_float.md#class-float)) const [🔗](#class-animation-method-get-next-marker)

Returns the closest marker that comes after the given time. If no such marker exists, an empty string is returned.

* * *

[StringName](class_stringname.md#class-stringname) **get\_prev\_marker**(time: [float](class_float.md#class-float)) const [🔗](#class-animation-method-get-prev-marker)

Returns the closest marker that comes before the given time. If no such marker exists, an empty string is returned.

* * *

[int](class_int.md#class-int) **get\_track\_count**() const [🔗](#class-animation-method-get-track-count)

Returns the amount of tracks in the animation.

* * *

[bool](class_bool.md#class-bool) **has\_marker**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animation-method-has-marker)

Returns `true` if this Animation contains a marker with the given name.

* * *

[StringName](class_stringname.md#class-stringname) **method\_track\_get\_name**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-method-track-get-name)

Returns the method name of a method track.

* * *

[Array](class_array.md#class-array) **method\_track\_get\_params**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-method-track-get-params)

Returns the arguments values to be called on a method track for a given key in a given track.

* * *

void **optimize**(allowed\_velocity\_err: [float](class_float.md#class-float) = 0.01, allowed\_angular\_err: [float](class_float.md#class-float) = 0.01, precision: [int](class_int.md#class-int) = 3) [🔗](#class-animation-method-optimize)

Optimize the animation and all its tracks in-place. This will preserve only as many keys as are necessary to keep the animation within the specified bounds.

* * *

[int](class_int.md#class-int) **position\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-animation-method-position-track-insert-key)

Inserts a key in a given 3D position track. Returns the key index.

* * *

[Vector3](class_vector3.md#class-vector3) **position\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-position-track-interpolate)

Returns the interpolated position value at the given time (in seconds). The `track_idx` must be the index of a 3D position track.

* * *

void **remove\_marker**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animation-method-remove-marker)

Removes the marker with the given name from this Animation.

* * *

void **remove\_track**(track\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-remove-track)

Removes a track by specifying the track index.

* * *

[int](class_int.md#class-int) **rotation\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), rotation: [Quaternion](class_quaternion.md#class-quaternion)) [🔗](#class-animation-method-rotation-track-insert-key)

Inserts a key in a given 3D rotation track. Returns the key index.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **rotation\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-rotation-track-interpolate)

Returns the interpolated rotation value at the given time (in seconds). The `track_idx` must be the index of a 3D rotation track.

* * *

[int](class_int.md#class-int) **scale\_track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), scale: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-animation-method-scale-track-insert-key)

Inserts a key in a given 3D scale track. Returns the key index.

* * *

[Vector3](class_vector3.md#class-vector3) **scale\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-scale-track-interpolate)

Returns the interpolated scale value at the given time (in seconds). The `track_idx` must be the index of a 3D scale track.

* * *

void **set\_marker\_color**(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) [🔗](#class-animation-method-set-marker-color)

Sets the given marker's color.

* * *

[int](class_int.md#class-int) **track\_find\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), find\_mode: [FindMode](#enum-animation-findmode) = 0, limit: [bool](class_bool.md#class-bool) = false, backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-track-find-key)

Finds the key index by time in a given track. Optionally, only find it if the approx/exact time is given.

If `limit` is `true`, it does not return keys outside the animation range.

If `backward` is `true`, the direction is reversed in methods that rely on one directional processing.

For example, in case `find_mode` is [FIND\_MODE\_NEAREST](#class-animation-constant-find-mode-nearest), if there is no key in the current position just after seeked, the first key found is retrieved by searching before the position, but if `backward` is `true`, the first key found is retrieved after the position.

* * *

[bool](class_bool.md#class-bool) **track\_get\_interpolation\_loop\_wrap**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-interpolation-loop-wrap)

Returns `true` if the track at `track_idx` wraps the interpolation loop. New tracks wrap the interpolation loop by default.

* * *

[InterpolationType](#enum-animation-interpolationtype) **track\_get\_interpolation\_type**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-interpolation-type)

Returns the interpolation type of a given track.

* * *

[int](class_int.md#class-int) **track\_get\_key\_count**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-key-count)

Returns the number of keys in a given track.

* * *

[float](class_float.md#class-float) **track\_get\_key\_time**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-key-time)

Returns the time at which the key is located.

* * *

[float](class_float.md#class-float) **track\_get\_key\_transition**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-key-transition)

Returns the transition curve (easing) for a specific key (see the built-in math function [@GlobalScope.ease()](class_@globalscope.md#class-globalscope-method-ease)).

* * *

[Variant](class_variant.md#class-variant) **track\_get\_key\_value**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-key-value)

Returns the value of a given key in a given track.

* * *

[NodePath](class_nodepath.md#class-nodepath) **track\_get\_path**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-path)

Gets the path of a track. For more information on the path format, see [track\_set\_path()](#class-animation-method-track-set-path).

* * *

[TrackType](#enum-animation-tracktype) **track\_get\_type**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-get-type)

Gets the type of a track.

* * *

[int](class_int.md#class-int) **track\_insert\_key**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float), key: [Variant](class_variant.md#class-variant), transition: [float](class_float.md#class-float) = 1) [🔗](#class-animation-method-track-insert-key)

Inserts a generic key in a given track. Returns the key index.

* * *

[bool](class_bool.md#class-bool) **track\_is\_compressed**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-is-compressed)

Returns `true` if the track is compressed, `false` otherwise. See also [compress()](#class-animation-method-compress).

* * *

[bool](class_bool.md#class-bool) **track\_is\_enabled**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-is-enabled)

Returns `true` if the track at index `track_idx` is enabled.

* * *

[bool](class_bool.md#class-bool) **track\_is\_imported**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-track-is-imported)

Returns `true` if the given track is imported. Else, return `false`.

* * *

void **track\_move\_down**(track\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-track-move-down)

Moves a track down.

* * *

void **track\_move\_to**(track\_idx: [int](class_int.md#class-int), to\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-track-move-to)

Changes the index position of track `track_idx` to the one defined in `to_idx`.

* * *

void **track\_move\_up**(track\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-track-move-up)

Moves a track up.

* * *

void **track\_remove\_key**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-track-remove-key)

Removes a key by index in a given track.

* * *

void **track\_remove\_key\_at\_time**(track\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) [🔗](#class-animation-method-track-remove-key-at-time)

Removes a key at `time` in a given track.

* * *

void **track\_set\_enabled**(track\_idx: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-animation-method-track-set-enabled)

Enables/disables the given track. Tracks are enabled by default.

* * *

void **track\_set\_imported**(track\_idx: [int](class_int.md#class-int), imported: [bool](class_bool.md#class-bool)) [🔗](#class-animation-method-track-set-imported)

Sets the given track as imported or not.

* * *

void **track\_set\_interpolation\_loop\_wrap**(track\_idx: [int](class_int.md#class-int), interpolation: [bool](class_bool.md#class-bool)) [🔗](#class-animation-method-track-set-interpolation-loop-wrap)

If `true`, the track at `track_idx` wraps the interpolation loop.

* * *

void **track\_set\_interpolation\_type**(track\_idx: [int](class_int.md#class-int), interpolation: [InterpolationType](#enum-animation-interpolationtype)) [🔗](#class-animation-method-track-set-interpolation-type)

Sets the interpolation type of a given track.

* * *

void **track\_set\_key\_time**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), time: [float](class_float.md#class-float)) [🔗](#class-animation-method-track-set-key-time)

Sets the time of an existing key.

* * *

void **track\_set\_key\_transition**(track\_idx: [int](class_int.md#class-int), key\_idx: [int](class_int.md#class-int), transition: [float](class_float.md#class-float)) [🔗](#class-animation-method-track-set-key-transition)

Sets the transition curve (easing) for a specific key (see the built-in math function [@GlobalScope.ease()](class_@globalscope.md#class-globalscope-method-ease)).

* * *

void **track\_set\_key\_value**(track\_idx: [int](class_int.md#class-int), key: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant)) [🔗](#class-animation-method-track-set-key-value)

Sets the value of an existing key.

* * *

void **track\_set\_path**(track\_idx: [int](class_int.md#class-int), path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-animation-method-track-set-path)

Sets the path of a track. Paths must be valid scene-tree paths to a node and must be specified starting from the [AnimationMixer.root\_node](class_animationmixer.md#class-animationmixer-property-root-node) that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by `":"`.

For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.

* * *

void **track\_swap**(track\_idx: [int](class_int.md#class-int), with\_idx: [int](class_int.md#class-int)) [🔗](#class-animation-method-track-swap)

Swaps the track `track_idx`'s index position with the track `with_idx`.

* * *

[UpdateMode](#enum-animation-updatemode) **value\_track\_get\_update\_mode**(track\_idx: [int](class_int.md#class-int)) const [🔗](#class-animation-method-value-track-get-update-mode)

Returns the update mode of a value track.

* * *

[Variant](class_variant.md#class-variant) **value\_track\_interpolate**(track\_idx: [int](class_int.md#class-int), time\_sec: [float](class_float.md#class-float), backward: [bool](class_bool.md#class-bool) = false) const [🔗](#class-animation-method-value-track-interpolate)

Returns the interpolated value at the given time (in seconds). The `track_idx` must be the index of a value track.

A `backward` mainly affects the direction of key retrieval of the track with [UPDATE\_DISCRETE](#class-animation-constant-update-discrete) converted by [AnimationMixer.ANIMATION\_CALLBACK\_MODE\_DISCRETE\_FORCE\_CONTINUOUS](class_animationmixer.md#class-animationmixer-constant-animation-callback-mode-discrete-force-continuous) to match the result with [track\_find\_key()](#class-animation-method-track-find-key).

* * *

void **value\_track\_set\_update\_mode**(track\_idx: [int](class_int.md#class-int), mode: [UpdateMode](#enum-animation-updatemode)) [🔗](#class-animation-method-value-track-set-update-mode)

Sets the update mode of a value track.

[Previous](class_animatedtexture.md "AnimatedTexture") [Next](class_animationlibrary.md "AnimationLibrary")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animatedtexture.md "AnimatedTexture") [Next](class_animationlibrary.md "AnimationLibrary")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).