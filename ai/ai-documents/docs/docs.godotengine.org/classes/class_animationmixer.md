---
title: AnimationMixer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationmixer.html
crawled_at: "2026-08-13T10:21:24+12:00"
content_hash: 9e19649abaab345133a7e9f24a873573a440ad9efa0deb693fbbffd74cd71d49
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationMixer

* * *

# AnimationMixer

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimationPlayer](class_animationplayer.md#class-animationplayer), [AnimationTree](class_animationtree.md#class-animationtree)

Base class for [AnimationPlayer](class_animationplayer.md#class-animationplayer) and [AnimationTree](class_animationtree.md#class-animationtree).

## Description

Base class for [AnimationPlayer](class_animationplayer.md#class-animationplayer) and [AnimationTree](class_animationtree.md#class-animationtree) to manage animation lists. It also has general properties and methods for playback and blending.

After instantiating the playback information data within the extended class, the blending is processed by the **AnimationMixer**.

## Tutorials

- [Migrating Animations from Godot 4.0 to 4.3](https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [active](#class-animationmixer-property-active) | `true` |
| [int](class_int.md#class-int) | [audio\_max\_polyphony](#class-animationmixer-property-audio-max-polyphony) | `32` |
| [AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) | [callback\_mode\_discrete](#class-animationmixer-property-callback-mode-discrete) | `1` |
| [AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod) | [callback\_mode\_method](#class-animationmixer-property-callback-mode-method) | `0` |
| [AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) | [callback\_mode\_process](#class-animationmixer-property-callback-mode-process) | `1` |
| [bool](class_bool.md#class-bool) | [deterministic](#class-animationmixer-property-deterministic) | `false` |
| [bool](class_bool.md#class-bool) | [reset\_on\_save](#class-animationmixer-property-reset-on-save) | `true` |
| [bool](class_bool.md#class-bool) | [root\_motion\_local](#class-animationmixer-property-root-motion-local) | `false` |
| [NodePath](class_nodepath.md#class-nodepath) | [root\_motion\_track](#class-animationmixer-property-root-motion-track) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [root\_node](#class-animationmixer-property-root-node) | `NodePath("..")` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [\_post\_process\_key\_value](#class-animationmixer-private-method-post-process-key-value)(animation: [Animation](class_animation.md#class-animation), track: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), object\_id: [int](class_int.md#class-int), object\_sub\_idx: [int](class_int.md#class-int)) virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_animation\_library](#class-animationmixer-method-add-animation-library)(name: [StringName](class_stringname.md#class-stringname), library: [AnimationLibrary](class_animationlibrary.md#class-animationlibrary)) |
| void | [advance](#class-animationmixer-method-advance)(delta: [float](class_float.md#class-float)) |
| void | [capture](#class-animationmixer-method-capture)(name: [StringName](class_stringname.md#class-stringname), duration: [float](class_float.md#class-float), trans\_type: [TransitionType](class_tween.md#enum-tween-transitiontype) = 0, ease\_type: [EaseType](class_tween.md#enum-tween-easetype) = 0) |
| void | [clear\_caches](#class-animationmixer-method-clear-caches)() |
| [StringName](class_stringname.md#class-stringname) | [find\_animation](#class-animationmixer-method-find-animation)(animation: [Animation](class_animation.md#class-animation)) const |
| [StringName](class_stringname.md#class-stringname) | [find\_animation\_library](#class-animationmixer-method-find-animation-library)(animation: [Animation](class_animation.md#class-animation)) const |
| [Animation](class_animation.md#class-animation) | [get\_animation](#class-animationmixer-method-get-animation)(name: [StringName](class_stringname.md#class-stringname)) const |
| [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) | [get\_animation\_library](#class-animationmixer-method-get-animation-library)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_animation\_library\_list](#class-animationmixer-method-get-animation-library-list)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_animation\_list](#class-animationmixer-method-get-animation-list)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_root\_motion\_position](#class-animationmixer-method-get-root-motion-position)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_root\_motion\_position\_accumulator](#class-animationmixer-method-get-root-motion-position-accumulator)() const |
| [Quaternion](class_quaternion.md#class-quaternion) | [get\_root\_motion\_rotation](#class-animationmixer-method-get-root-motion-rotation)() const |
| [Quaternion](class_quaternion.md#class-quaternion) | [get\_root\_motion\_rotation\_accumulator](#class-animationmixer-method-get-root-motion-rotation-accumulator)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_root\_motion\_scale](#class-animationmixer-method-get-root-motion-scale)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_root\_motion\_scale\_accumulator](#class-animationmixer-method-get-root-motion-scale-accumulator)() const |
| [bool](class_bool.md#class-bool) | [has\_animation](#class-animationmixer-method-has-animation)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_animation\_library](#class-animationmixer-method-has-animation-library)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_animation\_library](#class-animationmixer-method-remove-animation-library)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_animation\_library](#class-animationmixer-method-rename-animation-library)(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) |

* * *

## Signals

**animation\_finished**(anim\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationmixer-signal-animation-finished)

Notifies when an animation finished playing.

**Note:** This signal is not emitted if an animation is looping.

* * *

**animation\_libraries\_updated**() [🔗](#class-animationmixer-signal-animation-libraries-updated)

Notifies when the animation libraries have changed.

* * *

**animation\_list\_changed**() [🔗](#class-animationmixer-signal-animation-list-changed)

Notifies when an animation list is changed.

* * *

**animation\_started**(anim\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationmixer-signal-animation-started)

Notifies when an animation starts playing.

**Note:** This signal is not emitted if an animation is looping.

* * *

**caches\_cleared**() [🔗](#class-animationmixer-signal-caches-cleared)

Notifies when the caches have been cleared, either automatically, or manually via [clear\_caches()](#class-animationmixer-method-clear-caches).

* * *

**mixer\_applied**() [🔗](#class-animationmixer-signal-mixer-applied)

Notifies when the blending result related have been applied to the target objects.

* * *

**mixer\_updated**() [🔗](#class-animationmixer-signal-mixer-updated)

Notifies when the property related process have been updated.

* * *

## Enumerations

enum **AnimationCallbackModeProcess**: [🔗](#enum-animationmixer-animationcallbackmodeprocess)

[AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) **ANIMATION\_CALLBACK\_MODE\_PROCESS\_PHYSICS** = `0`

Process animation during physics frames (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)). This is especially useful when animating physics bodies.

[AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) **ANIMATION\_CALLBACK\_MODE\_PROCESS\_IDLE** = `1`

Process animation during process frames (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

[AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) **ANIMATION\_CALLBACK\_MODE\_PROCESS\_MANUAL** = `2`

Do not process animation. Use [advance()](#class-animationmixer-method-advance) to process the animation manually.

* * *

enum **AnimationCallbackModeMethod**: [🔗](#enum-animationmixer-animationcallbackmodemethod)

[AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod) **ANIMATION\_CALLBACK\_MODE\_METHOD\_DEFERRED** = `0`

Batch method calls during the animation process, then do the calls after events are processed. This avoids bugs involving deleting nodes or modifying the AnimationPlayer while playing.

[AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod) **ANIMATION\_CALLBACK\_MODE\_METHOD\_IMMEDIATE** = `1`

Make method calls immediately when reached in the animation.

* * *

enum **AnimationCallbackModeDiscrete**: [🔗](#enum-animationmixer-animationcallbackmodediscrete)

[AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) **ANIMATION\_CALLBACK\_MODE\_DISCRETE\_DOMINANT** = `0`

An [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete) track value takes precedence when blending [Animation.UPDATE\_CONTINUOUS](class_animation.md#class-animation-constant-update-continuous) or [Animation.UPDATE\_CAPTURE](class_animation.md#class-animation-constant-update-capture) track values and [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete) track values.

[AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) **ANIMATION\_CALLBACK\_MODE\_DISCRETE\_RECESSIVE** = `1`

An [Animation.UPDATE\_CONTINUOUS](class_animation.md#class-animation-constant-update-continuous) or [Animation.UPDATE\_CAPTURE](class_animation.md#class-animation-constant-update-capture) track value takes precedence when blending the [Animation.UPDATE\_CONTINUOUS](class_animation.md#class-animation-constant-update-continuous) or [Animation.UPDATE\_CAPTURE](class_animation.md#class-animation-constant-update-capture) track values and the [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete) track values. This is the default behavior for [AnimationPlayer](class_animationplayer.md#class-animationplayer).

[AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) **ANIMATION\_CALLBACK\_MODE\_DISCRETE\_FORCE\_CONTINUOUS** = `2`

Always treat the [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete) track value as [Animation.UPDATE\_CONTINUOUS](class_animation.md#class-animation-constant-update-continuous) with [Animation.INTERPOLATION\_NEAREST](class_animation.md#class-animation-constant-interpolation-nearest). This is the default behavior for [AnimationTree](class_animationtree.md#class-animationtree).

If a value track has un-interpolatable type key values, it is internally converted to use [ANIMATION\_CALLBACK\_MODE\_DISCRETE\_RECESSIVE](#class-animationmixer-constant-animation-callback-mode-discrete-recessive) with [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete).

Un-interpolatable type list:

- [@GlobalScope.TYPE\_NIL](class_@globalscope.md#class-globalscope-constant-type-nil)

- [@GlobalScope.TYPE\_NODE\_PATH](class_@globalscope.md#class-globalscope-constant-type-node-path)

- [@GlobalScope.TYPE\_RID](class_@globalscope.md#class-globalscope-constant-type-rid)

- [@GlobalScope.TYPE\_OBJECT](class_@globalscope.md#class-globalscope-constant-type-object)

- [@GlobalScope.TYPE\_CALLABLE](class_@globalscope.md#class-globalscope-constant-type-callable)

- [@GlobalScope.TYPE\_SIGNAL](class_@globalscope.md#class-globalscope-constant-type-signal)

- [@GlobalScope.TYPE\_DICTIONARY](class_@globalscope.md#class-globalscope-constant-type-dictionary)

- [@GlobalScope.TYPE\_PACKED\_BYTE\_ARRAY](class_@globalscope.md#class-globalscope-constant-type-packed-byte-array)


[@GlobalScope.TYPE\_BOOL](class_@globalscope.md#class-globalscope-constant-type-bool) and [@GlobalScope.TYPE\_INT](class_@globalscope.md#class-globalscope-constant-type-int) are treated as [@GlobalScope.TYPE\_FLOAT](class_@globalscope.md#class-globalscope-constant-type-float) during blending and rounded when the result is retrieved.

It is same for arrays and vectors with them such as [@GlobalScope.TYPE\_PACKED\_INT32\_ARRAY](class_@globalscope.md#class-globalscope-constant-type-packed-int32-array) or [@GlobalScope.TYPE\_VECTOR2I](class_@globalscope.md#class-globalscope-constant-type-vector2i), they are treated as [@GlobalScope.TYPE\_PACKED\_FLOAT32\_ARRAY](class_@globalscope.md#class-globalscope-constant-type-packed-float32-array) or [@GlobalScope.TYPE\_VECTOR2](class_@globalscope.md#class-globalscope-constant-type-vector2). Also note that for arrays, the size is also interpolated.

[@GlobalScope.TYPE\_STRING](class_@globalscope.md#class-globalscope-constant-type-string) and [@GlobalScope.TYPE\_STRING\_NAME](class_@globalscope.md#class-globalscope-constant-type-string-name) are interpolated between character codes and lengths, but note that there is a difference in algorithm between interpolation between keys and interpolation by blending.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **active** = `true` [🔗](#class-animationmixer-property-active)

- void **set\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_active**()


If `true`, the **AnimationMixer** will be processing.

* * *

[int](class_int.md#class-int) **audio\_max\_polyphony** = `32` [🔗](#class-animationmixer-property-audio-max-polyphony)

- void **set\_audio\_max\_polyphony**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_audio\_max\_polyphony**()


The number of possible simultaneous sounds for each of the assigned AudioStreamPlayers.

For example, if this value is `32` and the animation has two audio tracks, the two [AudioStreamPlayer](class_audiostreamplayer.md#class-audiostreamplayer) s assigned can play simultaneously up to `32` voices each.

* * *

[AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) **callback\_mode\_discrete** = `1` [🔗](#class-animationmixer-property-callback-mode-discrete)

- void **set\_callback\_mode\_discrete**(value: [AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete))

- [AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete) **get\_callback\_mode\_discrete**()


Ordinarily, tracks can be set to [Animation.UPDATE\_DISCRETE](class_animation.md#class-animation-constant-update-discrete) to update infrequently, usually when using nearest interpolation.

However, when blending with [Animation.UPDATE\_CONTINUOUS](class_animation.md#class-animation-constant-update-continuous) several results are considered. The [callback\_mode\_discrete](#class-animationmixer-property-callback-mode-discrete) specify it explicitly. See also [AnimationCallbackModeDiscrete](#enum-animationmixer-animationcallbackmodediscrete).

To make the blended results look good, it is recommended to set this to [ANIMATION\_CALLBACK\_MODE\_DISCRETE\_FORCE\_CONTINUOUS](#class-animationmixer-constant-animation-callback-mode-discrete-force-continuous) to update every frame during blending. Other values exist for compatibility and they are fine if there is no blending, but not so, may produce artifacts.

* * *

[AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod) **callback\_mode\_method** = `0` [🔗](#class-animationmixer-property-callback-mode-method)

- void **set\_callback\_mode\_method**(value: [AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod))

- [AnimationCallbackModeMethod](#enum-animationmixer-animationcallbackmodemethod) **get\_callback\_mode\_method**()


The call mode used for "Call Method" tracks.

* * *

[AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) **callback\_mode\_process** = `1` [🔗](#class-animationmixer-property-callback-mode-process)

- void **set\_callback\_mode\_process**(value: [AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess))

- [AnimationCallbackModeProcess](#enum-animationmixer-animationcallbackmodeprocess) **get\_callback\_mode\_process**()


The process notification in which to update animations.

* * *

[bool](class_bool.md#class-bool) **deterministic** = `false` [🔗](#class-animationmixer-property-deterministic)

- void **set\_deterministic**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deterministic**()


If `true`, the blending uses the deterministic algorithm. The total weight is not normalized and the result is accumulated with an initial value ( `0` or a `"RESET"` animation if present).

This means that if the total amount of blending is `0.0`, the result is equal to the `"RESET"` animation.

If the number of tracks between the blended animations is different, the animation with the missing track is treated as if it had the initial value.

If `false`, The blend does not use the deterministic algorithm. The total weight is normalized and always `1.0`. If the number of tracks between the blended animations is different, nothing is done about the animation that is missing a track.

**Note:** In [AnimationTree](class_animationtree.md#class-animationtree), the blending with [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2), [AnimationNodeAdd3](class_animationnodeadd3.md#class-animationnodeadd3), [AnimationNodeSub2](class_animationnodesub2.md#class-animationnodesub2) or the weight greater than `1.0` may produce unexpected results.

For example, if [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2) blends two nodes with the amount `1.0`, then total weight is `2.0` but it will be normalized to make the total amount `1.0` and the result will be equal to [AnimationNodeBlend2](class_animationnodeblend2.md#class-animationnodeblend2) with the amount `0.5`.

* * *

[bool](class_bool.md#class-bool) **reset\_on\_save** = `true` [🔗](#class-animationmixer-property-reset-on-save)

- void **set\_reset\_on\_save\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_reset\_on\_save\_enabled**()


This is used by the editor. If set to `true`, the scene will be saved with the effects of the reset animation (the animation with the key `"RESET"`) applied as if it had been seeked to time 0, with the editor keeping the values that the scene had before saving.

This makes it more convenient to preview and edit animations in the editor, as changes to the scene will not be saved as long as they are set in the reset animation.

* * *

[bool](class_bool.md#class-bool) **root\_motion\_local** = `false` [🔗](#class-animationmixer-property-root-motion-local)

- void **set\_root\_motion\_local**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_root\_motion\_local**()


If `true`, [get\_root\_motion\_position()](#class-animationmixer-method-get-root-motion-position) value is extracted as a local translation value before blending. In other words, it is treated like the translation is done after the rotation.

* * *

[NodePath](class_nodepath.md#class-nodepath) **root\_motion\_track** = `NodePath("")` [🔗](#class-animationmixer-property-root-motion-track)

- void **set\_root\_motion\_track**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_root\_motion\_track**()


The path to the Animation track used for root motion. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. The [root\_motion\_track](#class-animationmixer-property-root-motion-track) uses the same format as [Animation.track\_set\_path()](class_animation.md#class-animation-method-track-set-path), but note that a bone must be specified.

If the track has type [Animation.TYPE\_POSITION\_3D](class_animation.md#class-animation-constant-type-position-3d), [Animation.TYPE\_ROTATION\_3D](class_animation.md#class-animation-constant-type-rotation-3d), or [Animation.TYPE\_SCALE\_3D](class_animation.md#class-animation-constant-type-scale-3d) the transformation will be canceled visually, and the animation will appear to stay in place. See also [get\_root\_motion\_position()](#class-animationmixer-method-get-root-motion-position), [get\_root\_motion\_rotation()](#class-animationmixer-method-get-root-motion-rotation), [get\_root\_motion\_scale()](#class-animationmixer-method-get-root-motion-scale), and [RootMotionView](class_rootmotionview.md#class-rootmotionview).

* * *

[NodePath](class_nodepath.md#class-nodepath) **root\_node** = `NodePath("..")` [🔗](#class-animationmixer-property-root-node)

- void **set\_root\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_root\_node**()


The node which node path references will travel from.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **\_post\_process\_key\_value**(animation: [Animation](class_animation.md#class-animation), track: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), object\_id: [int](class_int.md#class-int), object\_sub\_idx: [int](class_int.md#class-int)) virtualconst [🔗](#class-animationmixer-private-method-post-process-key-value)

A virtual function for processing after getting a key during playback.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **add\_animation\_library**(name: [StringName](class_stringname.md#class-stringname), library: [AnimationLibrary](class_animationlibrary.md#class-animationlibrary)) [🔗](#class-animationmixer-method-add-animation-library)

Adds `library` to the animation player, under the key `name`.

AnimationMixer has a global library by default with an empty string as key. For adding an animation to the global library:

GDScript

```
var global_library = mixer.get_animation_library("")
global_library.add_animation("animation_name", animation_resource)

```

* * *

void **advance**(delta: [float](class_float.md#class-float)) [🔗](#class-animationmixer-method-advance)

Manually advance the animations by the specified time (in seconds).

* * *

void **capture**(name: [StringName](class_stringname.md#class-stringname), duration: [float](class_float.md#class-float), trans\_type: [TransitionType](class_tween.md#enum-tween-transitiontype) = 0, ease\_type: [EaseType](class_tween.md#enum-tween-easetype) = 0) [🔗](#class-animationmixer-method-capture)

If the animation track specified by `name` has an option [Animation.UPDATE\_CAPTURE](class_animation.md#class-animation-constant-update-capture), stores current values of the objects indicated by the track path as a cache. If there is already a captured cache, the old cache is discarded.

After this it will interpolate with current animation blending result during the playback process for the time specified by `duration`, working like a crossfade.

You can specify `trans_type` as the curve for the interpolation. For better results, it may be appropriate to specify [Tween.TRANS\_LINEAR](class_tween.md#class-tween-constant-trans-linear) for cases where the first key of the track begins with a non-zero value or where the key value does not change, and [Tween.TRANS\_QUAD](class_tween.md#class-tween-constant-trans-quad) for cases where the key value changes linearly.

* * *

void **clear\_caches**() [🔗](#class-animationmixer-method-clear-caches)

**AnimationMixer** caches animated nodes. It may not notice if a node disappears; [clear\_caches()](#class-animationmixer-method-clear-caches) forces it to update the cache again.

* * *

[StringName](class_stringname.md#class-stringname) **find\_animation**(animation: [Animation](class_animation.md#class-animation)) const [🔗](#class-animationmixer-method-find-animation)

Returns the key of `animation` or an empty [StringName](class_stringname.md#class-stringname) if not found.

* * *

[StringName](class_stringname.md#class-stringname) **find\_animation\_library**(animation: [Animation](class_animation.md#class-animation)) const [🔗](#class-animationmixer-method-find-animation-library)

Returns the key for the [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) that contains `animation` or an empty [StringName](class_stringname.md#class-stringname) if not found.

* * *

[Animation](class_animation.md#class-animation) **get\_animation**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationmixer-method-get-animation)

Returns the [Animation](class_animation.md#class-animation) with the key `name`. If the animation does not exist, `null` is returned and an error is logged.

* * *

[AnimationLibrary](class_animationlibrary.md#class-animationlibrary) **get\_animation\_library**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationmixer-method-get-animation-library)

Returns the first [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) with key `name` or `null` if not found.

To get the **AnimationMixer**'s global animation library, use `get_animation_library("")`.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_animation\_library\_list**() const [🔗](#class-animationmixer-method-get-animation-library-list)

Returns the list of stored library keys.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_animation\_list**() const [🔗](#class-animationmixer-method-get-animation-list)

Returns the list of stored animation keys.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_root\_motion\_position**() const [🔗](#class-animationmixer-method-get-root-motion-position)

Retrieve the motion delta of position with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Vector3](class_vector3.md#class-vector3) that can be used elsewhere.

If [root\_motion\_track](#class-animationmixer-property-root-motion-track) is not a path to a track of type [Animation.TYPE\_POSITION\_3D](class_animation.md#class-animation-constant-type-position-3d), returns `Vector3(0, 0, 0)`.

See also [root\_motion\_track](#class-animationmixer-property-root-motion-track) and [RootMotionView](class_rootmotionview.md#class-rootmotionview).

The most basic example is applying position to [CharacterBody3D](class_characterbody3d.md#class-characterbody3d):

GDScript

```
var current_rotation

func _process(delta):
    if Input.is_action_just_pressed("animate"):
        current_rotation = get_quaternion()
        state_machine.travel("Animate")
    var velocity = current_rotation * animation_tree.get_root_motion_position() / delta
    set_velocity(velocity)
    move_and_slide()

```

By using this in combination with [get\_root\_motion\_rotation\_accumulator()](#class-animationmixer-method-get-root-motion-rotation-accumulator), you can apply the root motion position more correctly to account for the rotation of the node.

GDScript

```
func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
    var velocity = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
    set_velocity(velocity)
    move_and_slide()

```

If [root\_motion\_local](#class-animationmixer-property-root-motion-local) is `true`, returns the pre-multiplied translation value with the inverted rotation.

In this case, the code can be written as follows:

GDScript

```
func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
    var velocity = get_quaternion() * animation_tree.get_root_motion_position() / delta
    set_velocity(velocity)
    move_and_slide()

```

* * *

[Vector3](class_vector3.md#class-vector3) **get\_root\_motion\_position\_accumulator**() const [🔗](#class-animationmixer-method-get-root-motion-position-accumulator)

Retrieve the blended value of the position tracks with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Vector3](class_vector3.md#class-vector3) that can be used elsewhere.

This is useful in cases where you want to respect the initial key values of the animation.

For example, if an animation with only one key `Vector3(0, 0, 0)` is played in the previous frame and then an animation with only one key `Vector3(1, 0, 1)` is played in the next frame, the difference can be calculated as follows:

GDScript

```
var prev_root_motion_position_accumulator

func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    var current_root_motion_position_accumulator = animation_tree.get_root_motion_position_accumulator()
    var difference = current_root_motion_position_accumulator - prev_root_motion_position_accumulator
    prev_root_motion_position_accumulator = current_root_motion_position_accumulator
    transform.origin += difference

```

However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.

* * *

[Quaternion](class_quaternion.md#class-quaternion) **get\_root\_motion\_rotation**() const [🔗](#class-animationmixer-method-get-root-motion-rotation)

Retrieve the motion delta of rotation with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Quaternion](class_quaternion.md#class-quaternion) that can be used elsewhere.

If [root\_motion\_track](#class-animationmixer-property-root-motion-track) is not a path to a track of type [Animation.TYPE\_ROTATION\_3D](class_animation.md#class-animation-constant-type-rotation-3d), returns `Quaternion(0, 0, 0, 1)`.

See also [root\_motion\_track](#class-animationmixer-property-root-motion-track) and [RootMotionView](class_rootmotionview.md#class-rootmotionview).

The most basic example is applying rotation to [CharacterBody3D](class_characterbody3d.md#class-characterbody3d):

GDScript

```
func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())

```

* * *

[Quaternion](class_quaternion.md#class-quaternion) **get\_root\_motion\_rotation\_accumulator**() const [🔗](#class-animationmixer-method-get-root-motion-rotation-accumulator)

Retrieve the blended value of the rotation tracks with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Quaternion](class_quaternion.md#class-quaternion) that can be used elsewhere.

This is necessary to apply the root motion position correctly, taking rotation into account. See also [get\_root\_motion\_position()](#class-animationmixer-method-get-root-motion-position).

Also, this is useful in cases where you want to respect the initial key values of the animation.

For example, if an animation with only one key `Quaternion(0, 0, 0, 1)` is played in the previous frame and then an animation with only one key `Quaternion(0, 0.707, 0, 0.707)` is played in the next frame, the difference can be calculated as follows:

GDScript

```
var prev_root_motion_rotation_accumulator

func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    var current_root_motion_rotation_accumulator = animation_tree.get_root_motion_rotation_accumulator()
    var difference = prev_root_motion_rotation_accumulator.inverse() * current_root_motion_rotation_accumulator
    prev_root_motion_rotation_accumulator = current_root_motion_rotation_accumulator
    transform.basis *=  Basis(difference)

```

However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_root\_motion\_scale**() const [🔗](#class-animationmixer-method-get-root-motion-scale)

Retrieve the motion delta of scale with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Vector3](class_vector3.md#class-vector3) that can be used elsewhere.

If [root\_motion\_track](#class-animationmixer-property-root-motion-track) is not a path to a track of type [Animation.TYPE\_SCALE\_3D](class_animation.md#class-animation-constant-type-scale-3d), returns `Vector3(0, 0, 0)`.

See also [root\_motion\_track](#class-animationmixer-property-root-motion-track) and [RootMotionView](class_rootmotionview.md#class-rootmotionview).

The most basic example is applying scale to [CharacterBody3D](class_characterbody3d.md#class-characterbody3d):

GDScript

```
var current_scale = Vector3(1, 1, 1)
var scale_accum = Vector3(1, 1, 1)

func _process(delta):
    if Input.is_action_just_pressed("animate"):
        current_scale = get_scale()
        scale_accum = Vector3(1, 1, 1)
        state_machine.travel("Animate")
    scale_accum += animation_tree.get_root_motion_scale()
    set_scale(current_scale * scale_accum)

```

* * *

[Vector3](class_vector3.md#class-vector3) **get\_root\_motion\_scale\_accumulator**() const [🔗](#class-animationmixer-method-get-root-motion-scale-accumulator)

Retrieve the blended value of the scale tracks with the [root\_motion\_track](#class-animationmixer-property-root-motion-track) as a [Vector3](class_vector3.md#class-vector3) that can be used elsewhere.

For example, if an animation with only one key `Vector3(1, 1, 1)` is played in the previous frame and then an animation with only one key `Vector3(2, 2, 2)` is played in the next frame, the difference can be calculated as follows:

GDScript

```
var prev_root_motion_scale_accumulator

func _process(delta):
    if Input.is_action_just_pressed("animate"):
        state_machine.travel("Animate")
    var current_root_motion_scale_accumulator = animation_tree.get_root_motion_scale_accumulator()
    var difference = current_root_motion_scale_accumulator - prev_root_motion_scale_accumulator
    prev_root_motion_scale_accumulator = current_root_motion_scale_accumulator
    transform.basis = transform.basis.scaled(difference)

```

However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.

* * *

[bool](class_bool.md#class-bool) **has\_animation**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationmixer-method-has-animation)

Returns `true` if the **AnimationMixer** stores an [Animation](class_animation.md#class-animation) with key `name`.

* * *

[bool](class_bool.md#class-bool) **has\_animation\_library**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationmixer-method-has-animation-library)

Returns `true` if the **AnimationMixer** stores an [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) with key `name`.

* * *

void **remove\_animation\_library**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationmixer-method-remove-animation-library)

Removes the [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) associated with the key `name`.

* * *

void **rename\_animation\_library**(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationmixer-method-rename-animation-library)

Moves the [AnimationLibrary](class_animationlibrary.md#class-animationlibrary) associated with the key `name` to the key `newname`.

[Previous](class_animatedsprite3d.md "AnimatedSprite3D") [Next](class_animationplayer.md "AnimationPlayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animatedsprite3d.md "AnimatedSprite3D") [Next](class_animationplayer.md "AnimationPlayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).