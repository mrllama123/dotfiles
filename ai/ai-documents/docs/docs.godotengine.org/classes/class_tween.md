---
title: Tween — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tween.html
crawled_at: "2026-08-13T10:28:54+12:00"
content_hash: 27ba9f94130c3590e9157715a561af5eeabe29a876e72edf9906cf5df129a368
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Tween

* * *

# Tween

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Lightweight object used for general-purpose animation via script, using [Tweener](class_tweener.md#class-tweener) s.

## Description

Tweens are mostly useful for animations requiring a numerical property to be interpolated over a range of values. The name _tween_ comes from _in-betweening_, an animation technique where you specify _keyframes_ and the computer interpolates the frames that appear between them. Animating something with a **Tween** is called tweening.

**Tween** is more suited than [AnimationPlayer](class_animationplayer.md#class-animationplayer) for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a **Tween**; it would be difficult to do the same thing with an [AnimationPlayer](class_animationplayer.md#class-animationplayer) node. Tweens are also more light-weight than [AnimationPlayer](class_animationplayer.md#class-animationplayer), so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a "fire-and-forget" manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped [CallbackTweener](class_callbacktweener.md#class-callbacktweener) with a delay.

A **Tween** can be created by using either [SceneTree.create\_tween()](class_scenetree.md#class-scenetree-method-create-tween) or [Node.create\_tween()](class_node.md#class-node-method-create-tween). **Tween** s created manually (i.e. by using `Tween.new()`) are invalid and can't be used for tweening values.

A tween animation is created by adding [Tweener](class_tweener.md#class-tweener) s to the **Tween** object, using [tween\_property()](#class-tween-method-tween-property), [tween\_interval()](#class-tween-method-tween-interval), [tween\_callback()](#class-tween-method-tween-callback) or [tween\_method()](#class-tween-method-tween-method):

GDScriptC#

```
var tween = get_tree().create_tween()
tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
tween.tween_property($Sprite, "scale", Vector2(), 1.0)
tween.tween_callback($Sprite.queue_free)

```

```
Tween tween = GetTree().CreateTween();
tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));

```

This sequence will make the `$Sprite` node turn red, then shrink, before finally calling [Node.queue\_free()](class_node.md#class-node-method-queue-free) to free the sprite. [Tweener](class_tweener.md#class-tweener) s are executed one after another by default. This behavior can be changed using [parallel()](#class-tween-method-parallel) and [set\_parallel()](#class-tween-method-set-parallel).

When a [Tweener](class_tweener.md#class-tweener) is created with one of the `tween_*` methods, a chained method call can be used to tweak the properties of this [Tweener](class_tweener.md#class-tweener). For example, if you want to set a different transition type in the above example, you can use [set\_trans()](#class-tween-method-set-trans):

GDScriptC#

```
var tween = get_tree().create_tween()
tween.tween_property($Sprite, "modulate", Color.RED, 1.0).set_trans(Tween.TRANS_SINE)
tween.tween_property($Sprite, "scale", Vector2(), 1.0).set_trans(Tween.TRANS_BOUNCE)
tween.tween_callback($Sprite.queue_free)

```

```
Tween tween = GetTree().CreateTween();
tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f).SetTrans(Tween.TransitionType.Sine);
tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f).SetTrans(Tween.TransitionType.Bounce);
tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));

```

Most of the **Tween** methods can be chained this way too. In the following example the **Tween** is bound to the running script's node and a default transition is set for its [Tweener](class_tweener.md#class-tweener) s:

GDScriptC#

```
var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
tween.tween_property($Sprite, "modulate", Color.RED, 1.0)
tween.tween_property($Sprite, "scale", Vector2(), 1.0)
tween.tween_callback($Sprite.queue_free)

```

```
var tween = GetTree().CreateTween().BindNode(this).SetTrans(Tween.TransitionType.Elastic);
tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));

```

Another interesting use for **Tween** s is animating arbitrary sets of objects:

GDScriptC#

```
var tween = create_tween()
for sprite in get_children():
    tween.tween_property(sprite, "position", Vector2(0, 0), 1.0)

```

```
Tween tween = CreateTween();
foreach (Node sprite in GetChildren())
    tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);

```

In the example above, all children of a node are moved one after another to position `(0, 0)`.

You should avoid using more than one **Tween** per object's property. If two or more tweens animate one property at the same time, the last one created will take priority and assign the final value. If you want to interrupt and restart an animation, consider assigning the **Tween** to a variable:

GDScriptC#

```
var tween
func animate():
    if tween:
        tween.kill() # Abort the previous animation.
    tween = create_tween()

```

```
private Tween _tween;

public void Animate()
{
    if (_tween != null)
        _tween.Kill(); // Abort the previous animation
    _tween = CreateTween();
}

```

Some [Tweener](class_tweener.md#class-tweener) s use transitions and eases. The first accepts a [TransitionType](#enum-tween-transitiontype) constant, and refers to the way the timing of the animation is handled (see [easings.net](https://easings.net/) for some examples). The second accepts an [EaseType](#enum-tween-easetype) constant, and controls where the `trans_type` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different [TransitionType](#enum-tween-transitiontype) constants with [EASE\_IN\_OUT](#class-tween-constant-ease-in-out), and use the one that looks best.

[Tween easing and transition types cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.webp)

**Note:** Tweens are not designed to be reused and trying to do so results in an undefined behavior. Create a new Tween for each animation and every time you replay an animation from start. Keep in mind that Tweens start immediately, so only create a Tween when you want to start animating.

**Note:** The tween is processed after all of the nodes in the current frame, i.e. node's [Node.\_process()](class_node.md#class-node-private-method-process) method would be called before the tween (or [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) depending on the value passed to [set\_process\_mode()](#class-tween-method-set-process-mode)).

## Methods

|     |     |
| --- | --- |
| [Tween](#class-tween) | [bind\_node](#class-tween-method-bind-node)(node: [Node](class_node.md#class-node)) |
| [Tween](#class-tween) | [chain](#class-tween-method-chain)() |
| [bool](class_bool.md#class-bool) | [custom\_step](#class-tween-method-custom-step)(delta: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [get\_loops\_left](#class-tween-method-get-loops-left)() const |
| [float](class_float.md#class-float) | [get\_total\_elapsed\_time](#class-tween-method-get-total-elapsed-time)() const |
| [Variant](class_variant.md#class-variant) | [interpolate\_value](#class-tween-method-interpolate-value)(initial\_value: [Variant](class_variant.md#class-variant), delta\_value: [Variant](class_variant.md#class-variant), elapsed\_time: [float](class_float.md#class-float), duration: [float](class_float.md#class-float), trans\_type: [TransitionType](#enum-tween-transitiontype), ease\_type: [EaseType](#enum-tween-easetype)) static |
| [bool](class_bool.md#class-bool) | [is\_running](#class-tween-method-is-running)() |
| [bool](class_bool.md#class-bool) | [is\_valid](#class-tween-method-is-valid)() |
| void | [kill](#class-tween-method-kill)() |
| [Tween](#class-tween) | [parallel](#class-tween-method-parallel)() |
| void | [pause](#class-tween-method-pause)() |
| void | [play](#class-tween-method-play)() |
| [Tween](#class-tween) | [set\_ease](#class-tween-method-set-ease)(ease: [EaseType](#enum-tween-easetype)) |
| [Tween](#class-tween) | [set\_ignore\_time\_scale](#class-tween-method-set-ignore-time-scale)(ignore: [bool](class_bool.md#class-bool) = true) |
| [Tween](#class-tween) | [set\_loops](#class-tween-method-set-loops)(loops: [int](class_int.md#class-int) = 0) |
| [Tween](#class-tween) | [set\_parallel](#class-tween-method-set-parallel)(parallel: [bool](class_bool.md#class-bool) = true) |
| [Tween](#class-tween) | [set\_pause\_mode](#class-tween-method-set-pause-mode)(mode: [TweenPauseMode](#enum-tween-tweenpausemode)) |
| [Tween](#class-tween) | [set\_process\_mode](#class-tween-method-set-process-mode)(mode: [TweenProcessMode](#enum-tween-tweenprocessmode)) |
| [Tween](#class-tween) | [set\_speed\_scale](#class-tween-method-set-speed-scale)(speed: [float](class_float.md#class-float)) |
| [Tween](#class-tween) | [set\_trans](#class-tween-method-set-trans)(trans: [TransitionType](#enum-tween-transitiontype)) |
| void | [stop](#class-tween-method-stop)() |
| [CallbackTweener](class_callbacktweener.md#class-callbacktweener) | [tween\_callback](#class-tween-method-tween-callback)(callback: [Callable](class_callable.md#class-callable)) |
| [IntervalTweener](class_intervaltweener.md#class-intervaltweener) | [tween\_interval](#class-tween-method-tween-interval)(time: [float](class_float.md#class-float)) |
| [MethodTweener](class_methodtweener.md#class-methodtweener) | [tween\_method](#class-tween-method-tween-method)(method: [Callable](class_callable.md#class-callable), from: [Variant](class_variant.md#class-variant), to: [Variant](class_variant.md#class-variant), duration: [float](class_float.md#class-float)) |
| [PropertyTweener](class_propertytweener.md#class-propertytweener) | [tween\_property](#class-tween-method-tween-property)(object: [Object](class_object.md#class-object), property: [NodePath](class_nodepath.md#class-nodepath), final\_val: [Variant](class_variant.md#class-variant), duration: [float](class_float.md#class-float)) |
| [SubtweenTweener](class_subtweentweener.md#class-subtweentweener) | [tween\_subtween](#class-tween-method-tween-subtween)(subtween: [Tween](#class-tween)) |

* * *

## Signals

**finished**() [🔗](#class-tween-signal-finished)

Emitted when the **Tween** has finished all tweening. Never emitted when the **Tween** is set to infinite looping (see [set\_loops()](#class-tween-method-set-loops)).

* * *

**loop\_finished**(loop\_count: [int](class_int.md#class-int)) [🔗](#class-tween-signal-loop-finished)

Emitted when a full loop is complete (see [set\_loops()](#class-tween-method-set-loops)), providing the loop index. This signal is not emitted after the final loop, use [finished](#class-tween-signal-finished) instead for this case.

* * *

**step\_finished**(idx: [int](class_int.md#class-int)) [🔗](#class-tween-signal-step-finished)

Emitted when one step of the **Tween** is complete, providing the step index. One step is either a single [Tweener](class_tweener.md#class-tweener) or a group of [Tweener](class_tweener.md#class-tweener) s running in parallel.

* * *

## Enumerations

enum **TweenProcessMode**: [🔗](#enum-tween-tweenprocessmode)

[TweenProcessMode](#enum-tween-tweenprocessmode) **TWEEN\_PROCESS\_PHYSICS** = `0`

The **Tween** updates after each physics frame (see [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)).

[TweenProcessMode](#enum-tween-tweenprocessmode) **TWEEN\_PROCESS\_IDLE** = `1`

The **Tween** updates after each process frame (see [Node.\_process()](class_node.md#class-node-private-method-process)).

* * *

enum **TweenPauseMode**: [🔗](#enum-tween-tweenpausemode)

[TweenPauseMode](#enum-tween-tweenpausemode) **TWEEN\_PAUSE\_BOUND** = `0`

If the **Tween** has a bound node, it will process when that node can process (see [Node.process\_mode](class_node.md#class-node-property-process-mode)). Otherwise it's the same as [TWEEN\_PAUSE\_STOP](#class-tween-constant-tween-pause-stop).

[TweenPauseMode](#enum-tween-tweenpausemode) **TWEEN\_PAUSE\_STOP** = `1`

If [SceneTree](class_scenetree.md#class-scenetree) is paused, the **Tween** will also pause.

[TweenPauseMode](#enum-tween-tweenpausemode) **TWEEN\_PAUSE\_PROCESS** = `2`

The **Tween** will process regardless of whether [SceneTree](class_scenetree.md#class-scenetree) is paused.

* * *

enum **TransitionType**: [🔗](#enum-tween-transitiontype)

[TransitionType](#enum-tween-transitiontype) **TRANS\_LINEAR** = `0`

The animation is interpolated linearly.

[TransitionType](#enum-tween-transitiontype) **TRANS\_SINE** = `1`

The animation is interpolated using a sine function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_QUINT** = `2`

The animation is interpolated with a quintic (to the power of 5) function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_QUART** = `3`

The animation is interpolated with a quartic (to the power of 4) function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_QUAD** = `4`

The animation is interpolated with a quadratic (to the power of 2) function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_EXPO** = `5`

The animation is interpolated with an exponential (to the power of x) function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_ELASTIC** = `6`

The animation is interpolated with elasticity, wiggling around the edges.

[TransitionType](#enum-tween-transitiontype) **TRANS\_CUBIC** = `7`

The animation is interpolated with a cubic (to the power of 3) function.

[TransitionType](#enum-tween-transitiontype) **TRANS\_CIRC** = `8`

The animation is interpolated with a function using square roots.

[TransitionType](#enum-tween-transitiontype) **TRANS\_BOUNCE** = `9`

The animation is interpolated by bouncing at the end.

[TransitionType](#enum-tween-transitiontype) **TRANS\_BACK** = `10`

The animation is interpolated backing out at ends.

[TransitionType](#enum-tween-transitiontype) **TRANS\_SPRING** = `11`

The animation is interpolated like a spring towards the end.

* * *

enum **EaseType**: [🔗](#enum-tween-easetype)

[EaseType](#enum-tween-easetype) **EASE\_IN** = `0`

The interpolation starts slowly and speeds up towards the end.

[EaseType](#enum-tween-easetype) **EASE\_OUT** = `1`

The interpolation starts quickly and slows down towards the end.

[EaseType](#enum-tween-easetype) **EASE\_IN\_OUT** = `2`

A combination of [EASE\_IN](#class-tween-constant-ease-in) and [EASE\_OUT](#class-tween-constant-ease-out). The interpolation is slowest at both ends.

[EaseType](#enum-tween-easetype) **EASE\_OUT\_IN** = `3`

A combination of [EASE\_IN](#class-tween-constant-ease-in) and [EASE\_OUT](#class-tween-constant-ease-out). The interpolation is fastest at both ends.

* * *

## Method Descriptions

[Tween](#class-tween) **bind\_node**(node: [Node](class_node.md#class-node)) [🔗](#class-tween-method-bind-node)

Binds this **Tween** with the given `node`. **Tween** s are processed directly by the [SceneTree](class_scenetree.md#class-scenetree), so they run independently of the animated nodes. When you bind a [Node](class_node.md#class-node) with the **Tween**, the **Tween** will halt the animation when the object is not inside tree and the **Tween** will be automatically killed when the bound object is freed. Also [TWEEN\_PAUSE\_BOUND](#class-tween-constant-tween-pause-bound) will make the pausing behavior dependent on the bound node.

For a shorter way to create and bind a **Tween**, you can use [Node.create\_tween()](class_node.md#class-node-method-create-tween).

* * *

[Tween](#class-tween) **chain**() [🔗](#class-tween-method-chain)

Used to chain two [Tweener](class_tweener.md#class-tweener) s after [set\_parallel()](#class-tween-method-set-parallel) is called with `true`.

GDScriptC#

```
var tween = create_tween().set_parallel(true)
tween.tween_property(...)
tween.tween_property(...) # Will run parallelly with above.
tween.chain().tween_property(...) # Will run after two above are finished.

```

```
Tween tween = CreateTween().SetParallel(true);
tween.TweenProperty(...);
tween.TweenProperty(...); // Will run parallelly with above.
tween.Chain().TweenProperty(...); // Will run after two above are finished.

```

* * *

[bool](class_bool.md#class-bool) **custom\_step**(delta: [float](class_float.md#class-float)) [🔗](#class-tween-method-custom-step)

Processes the **Tween** by the given `delta` value, in seconds. This is mostly useful for manual control when the **Tween** is paused. It can also be used to end the **Tween** animation immediately, by setting `delta` longer than the whole duration of the **Tween** animation.

Returns `true` if the **Tween** still has [Tweener](class_tweener.md#class-tweener) s that haven't finished.

* * *

[int](class_int.md#class-int) **get\_loops\_left**() const [🔗](#class-tween-method-get-loops-left)

Returns the number of remaining loops for this **Tween** (see [set\_loops()](#class-tween-method-set-loops)). A return value of `-1` indicates an infinitely looping **Tween**, and a return value of `0` indicates that the **Tween** has already finished.

* * *

[float](class_float.md#class-float) **get\_total\_elapsed\_time**() const [🔗](#class-tween-method-get-total-elapsed-time)

Returns the total time in seconds the **Tween** has been animating (i.e. the time since it started, not counting pauses etc.). The time is affected by [set\_speed\_scale()](#class-tween-method-set-speed-scale), and [stop()](#class-tween-method-stop) will reset it to `0`.

**Note:** As it results from accumulating frame deltas, the time returned after the **Tween** has finished animating will be slightly greater than the actual **Tween** duration.

* * *

[Variant](class_variant.md#class-variant) **interpolate\_value**(initial\_value: [Variant](class_variant.md#class-variant), delta\_value: [Variant](class_variant.md#class-variant), elapsed\_time: [float](class_float.md#class-float), duration: [float](class_float.md#class-float), trans\_type: [TransitionType](#enum-tween-transitiontype), ease\_type: [EaseType](#enum-tween-easetype)) static [🔗](#class-tween-method-interpolate-value)

This method can be used for manual interpolation of a value, when you don't want **Tween** to do animating for you. It's similar to [@GlobalScope.lerp()](class_@globalscope.md#class-globalscope-method-lerp), but with support for custom transition and easing.

`initial_value` is the starting value of the interpolation.

`delta_value` is the change of the value in the interpolation, i.e. it's equal to `final_value - initial_value`.

`elapsed_time` is the time in seconds that passed after the interpolation started and it's used to control the position of the interpolation. E.g. when it's equal to half of the `duration`, the interpolated value will be halfway between initial and final values. This value can also be greater than `duration` or lower than 0, which will extrapolate the value.

`duration` is the total time of the interpolation.

**Note:** If `duration` is equal to `0`, the method will always return the final value, regardless of `elapsed_time` provided.

* * *

[bool](class_bool.md#class-bool) **is\_running**() [🔗](#class-tween-method-is-running)

Returns whether the **Tween** is currently running, i.e. it wasn't paused and it's not finished.

* * *

[bool](class_bool.md#class-bool) **is\_valid**() [🔗](#class-tween-method-is-valid)

Returns whether the **Tween** is valid. A valid **Tween** is a **Tween** contained by the scene tree (i.e. the array from [SceneTree.get\_processed\_tweens()](class_scenetree.md#class-scenetree-method-get-processed-tweens) will contain this **Tween**). A **Tween** might become invalid when it has finished tweening, is killed, or when created with `Tween.new()`. Invalid **Tween** s can't have [Tweener](class_tweener.md#class-tweener) s appended.

* * *

void **kill**() [🔗](#class-tween-method-kill)

Aborts all tweening operations and invalidates the **Tween**.

* * *

[Tween](#class-tween) **parallel**() [🔗](#class-tween-method-parallel)

Makes the next [Tweener](class_tweener.md#class-tweener) run parallelly to the previous one.

GDScriptC#

```
var tween = create_tween()
tween.tween_property(...)
tween.parallel().tween_property(...)
tween.parallel().tween_property(...)

```

```
Tween tween = CreateTween();
tween.TweenProperty(...);
tween.Parallel().TweenProperty(...);
tween.Parallel().TweenProperty(...);

```

All [Tweener](class_tweener.md#class-tweener) s in the example will run at the same time.

You can make the **Tween** parallel by default by using [set\_parallel()](#class-tween-method-set-parallel).

* * *

void **pause**() [🔗](#class-tween-method-pause)

Pauses the tweening. The animation can be resumed by using [play()](#class-tween-method-play).

**Note:** If a Tween is paused and not bound to any node, it will exist indefinitely until manually started or invalidated. If you lose a reference to such Tween, you can retrieve it using [SceneTree.get\_processed\_tweens()](class_scenetree.md#class-scenetree-method-get-processed-tweens).

* * *

void **play**() [🔗](#class-tween-method-play)

Resumes a paused or stopped **Tween**.

* * *

[Tween](#class-tween) **set\_ease**(ease: [EaseType](#enum-tween-easetype)) [🔗](#class-tween-method-set-ease)

Sets the default ease type for [PropertyTweener](class_propertytweener.md#class-propertytweener) s and [MethodTweener](class_methodtweener.md#class-methodtweener) s appended after this method.

Before this method is called, the default ease type is [EASE\_IN\_OUT](#class-tween-constant-ease-in-out).

```
var tween = create_tween()
tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Uses EASE_IN_OUT.
tween.set_ease(Tween.EASE_IN)
tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Uses EASE_IN.

```

* * *

[Tween](#class-tween) **set\_ignore\_time\_scale**(ignore: [bool](class_bool.md#class-bool) = true) [🔗](#class-tween-method-set-ignore-time-scale)

If `ignore` is `true`, the tween will ignore [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) and update with the real, elapsed time. This affects all [Tweener](class_tweener.md#class-tweener) s and their delays. Default value is `false`.

* * *

[Tween](#class-tween) **set\_loops**(loops: [int](class_int.md#class-int) = 0) [🔗](#class-tween-method-set-loops)

Sets the number of times the tweening sequence will be repeated, i.e. `set_loops(2)` will run the animation twice.

Calling this method without arguments will make the **Tween** run infinitely, until either it is killed with [kill()](#class-tween-method-kill), the **Tween**'s bound node is freed, or all the animated objects have been freed (which makes further animation impossible).

**Warning:** Make sure to always add some duration/delay when using infinite loops. To prevent the game freezing, 0-duration looped animations (e.g. a single [CallbackTweener](class_callbacktweener.md#class-callbacktweener) with no delay) are stopped after a small number of loops, which may produce unexpected results. If a **Tween**'s lifetime depends on some node, always use [bind\_node()](#class-tween-method-bind-node).

* * *

[Tween](#class-tween) **set\_parallel**(parallel: [bool](class_bool.md#class-bool) = true) [🔗](#class-tween-method-set-parallel)

If `parallel` is `true`, the [Tweener](class_tweener.md#class-tweener) s appended after this method will by default run simultaneously, as opposed to sequentially.

**Note:** Just like with [parallel()](#class-tween-method-parallel), the tweener added right before this method will also be part of the parallel step.

```
tween.tween_property(self, "position", Vector2(300, 0), 0.5)
tween.set_parallel()
tween.tween_property(self, "modulate", Color.GREEN, 0.5) # Runs together with the position tweener.

```

* * *

[Tween](#class-tween) **set\_pause\_mode**(mode: [TweenPauseMode](#enum-tween-tweenpausemode)) [🔗](#class-tween-method-set-pause-mode)

Determines the behavior of the **Tween** when the [SceneTree](class_scenetree.md#class-scenetree) is paused.

Default value is [TWEEN\_PAUSE\_BOUND](#class-tween-constant-tween-pause-bound).

* * *

[Tween](#class-tween) **set\_process\_mode**(mode: [TweenProcessMode](#enum-tween-tweenprocessmode)) [🔗](#class-tween-method-set-process-mode)

Determines whether the **Tween** should run after process frames (see [Node.\_process()](class_node.md#class-node-private-method-process)) or physics frames (see [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)).

Default value is [TWEEN\_PROCESS\_IDLE](#class-tween-constant-tween-process-idle).

* * *

[Tween](#class-tween) **set\_speed\_scale**(speed: [float](class_float.md#class-float)) [🔗](#class-tween-method-set-speed-scale)

Scales the speed of tweening. This affects all [Tweener](class_tweener.md#class-tweener) s and their delays.

* * *

[Tween](#class-tween) **set\_trans**(trans: [TransitionType](#enum-tween-transitiontype)) [🔗](#class-tween-method-set-trans)

Sets the default transition type for [PropertyTweener](class_propertytweener.md#class-propertytweener) s and [MethodTweener](class_methodtweener.md#class-methodtweener) s appended after this method.

Before this method is called, the default transition type is [TRANS\_LINEAR](#class-tween-constant-trans-linear).

```
var tween = create_tween()
tween.tween_property(self, "position", Vector2(300, 0), 0.5) # Uses TRANS_LINEAR.
tween.set_trans(Tween.TRANS_SINE)
tween.tween_property(self, "rotation_degrees", 45.0, 0.5) # Uses TRANS_SINE.

```

* * *

void **stop**() [🔗](#class-tween-method-stop)

Stops the tweening and resets the **Tween** to its initial state. This will not remove any appended [Tweener](class_tweener.md#class-tweener) s.

**Note:** This does _not_ reset targets of [PropertyTweener](class_propertytweener.md#class-propertytweener) s to their values when the **Tween** first started.

```
var tween = create_tween()

# Will move from 0 to 500 over 1 second.
position.x = 0.0
tween.tween_property(self, "position:x", 500, 1.0)

# Will be at (about) 250 when the timer finishes.
await get_tree().create_timer(0.5).timeout

# Will now move from (about) 250 to 500 over 1 second,
# thus at half the speed as before.
tween.stop()
tween.play()

```

**Note:** If a Tween is stopped and not bound to any node, it will exist indefinitely until manually started or invalidated. If you lose a reference to such Tween, you can retrieve it using [SceneTree.get\_processed\_tweens()](class_scenetree.md#class-scenetree-method-get-processed-tweens).

* * *

[CallbackTweener](class_callbacktweener.md#class-callbacktweener) **tween\_callback**(callback: [Callable](class_callable.md#class-callable)) [🔗](#class-tween-method-tween-callback)

Creates and appends a [CallbackTweener](class_callbacktweener.md#class-callbacktweener). This method can be used to call an arbitrary method in any object. Use [Callable.bind()](class_callable.md#class-callable-method-bind) to bind additional arguments for the call.

**Example:** Object that keeps shooting every 1 second:

GDScriptC#

```
var tween = get_tree().create_tween().set_loops()
tween.tween_callback(shoot).set_delay(1.0)

```

```
Tween tween = GetTree().CreateTween().SetLoops();
tween.TweenCallback(Callable.From(Shoot)).SetDelay(1.0f);

```

**Example:** Turning a sprite red and then blue, with 2 second delay:

GDScriptC#

```
var tween = get_tree().create_tween()
tween.tween_callback($Sprite.set_modulate.bind(Color.RED)).set_delay(2)
tween.tween_callback($Sprite.set_modulate.bind(Color.BLUE)).set_delay(2)

```

```
Tween tween = GetTree().CreateTween();
Sprite2D sprite = GetNode<Sprite2D>("Sprite");
tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Red)).SetDelay(2.0f);
tween.TweenCallback(Callable.From(() => sprite.Modulate = Colors.Blue)).SetDelay(2.0f);

```

* * *

[IntervalTweener](class_intervaltweener.md#class-intervaltweener) **tween\_interval**(time: [float](class_float.md#class-float)) [🔗](#class-tween-method-tween-interval)

Creates and appends an [IntervalTweener](class_intervaltweener.md#class-intervaltweener). This method can be used to create delays in the tween animation, as an alternative to using the delay in other [Tweener](class_tweener.md#class-tweener) s, or when there's no animation (in which case the **Tween** acts as a timer). `time` is the length of the interval, in seconds.

**Example:** Creating an interval in code execution:

GDScriptC#

```
# ... some code
await create_tween().tween_interval(2).finished
# ... more code

```

```
// ... some code
await ToSignal(CreateTween().TweenInterval(2.0f), Tween.SignalName.Finished);
// ... more code

```

**Example:** Creating an object that moves back and forth and jumps every few seconds:

GDScriptC#

```
var tween = create_tween().set_loops()
tween.tween_property($Sprite, "position:x", 200.0, 1.0).as_relative()
tween.tween_callback(jump)
tween.tween_interval(2)
tween.tween_property($Sprite, "position:x", -200.0, 1.0).as_relative()
tween.tween_callback(jump)
tween.tween_interval(2)

```

```
Tween tween = CreateTween().SetLoops();
tween.TweenProperty(GetNode("Sprite"), "position:x", 200.0f, 1.0f).AsRelative();
tween.TweenCallback(Callable.From(Jump));
tween.TweenInterval(2.0f);
tween.TweenProperty(GetNode("Sprite"), "position:x", -200.0f, 1.0f).AsRelative();
tween.TweenCallback(Callable.From(Jump));
tween.TweenInterval(2.0f);

```

* * *

[MethodTweener](class_methodtweener.md#class-methodtweener) **tween\_method**(method: [Callable](class_callable.md#class-callable), from: [Variant](class_variant.md#class-variant), to: [Variant](class_variant.md#class-variant), duration: [float](class_float.md#class-float)) [🔗](#class-tween-method-tween-method)

Creates and appends a [MethodTweener](class_methodtweener.md#class-methodtweener). This method is similar to a combination of [tween\_callback()](#class-tween-method-tween-callback) and [tween\_property()](#class-tween-method-tween-property). It calls a method over time with a tweened value provided as an argument. The value is tweened between `from` and `to` over the time specified by `duration`, in seconds. Use [Callable.bind()](class_callable.md#class-callable-method-bind) to bind additional arguments for the call. You can use [MethodTweener.set\_ease()](class_methodtweener.md#class-methodtweener-method-set-ease) and [MethodTweener.set\_trans()](class_methodtweener.md#class-methodtweener-method-set-trans) to tweak the easing and transition of the value or [MethodTweener.set\_delay()](class_methodtweener.md#class-methodtweener-method-set-delay) to delay the tweening.

**Example:** Making a 3D object look from one point to another point:

GDScriptC#

```
var tween = create_tween()
tween.tween_method(look_at.bind(Vector3.UP), Vector3(-1, 0, -1), Vector3(1, 0, -1), 1.0) # The look_at() method takes up vector as second argument.

```

```
Tween tween = CreateTween();
tween.TweenMethod(Callable.From((Vector3 target) => LookAt(target, Vector3.Up)), new Vector3(-1.0f, 0.0f, -1.0f), new Vector3(1.0f, 0.0f, -1.0f), 1.0f); // Use lambdas to bind additional arguments for the call.

```

**Example:** Setting the text of a [Label](class_label.md#class-label), using an intermediate method and after a delay:

GDScriptC#

```
func _ready():
    var tween = create_tween()
    tween.tween_method(set_label_text, 0, 10, 1.0).set_delay(1.0)

func set_label_text(value: int):
    $Label.text = "Counting " + str(value)

```

```
public override void _Ready()
{
    base._Ready();

    Tween tween = CreateTween();
    tween.TweenMethod(Callable.From<int>(SetLabelText), 0.0f, 10.0f, 1.0f).SetDelay(1.0f);
}

private void SetLabelText(int value)
{
    GetNode<Label>("Label").Text = $"Counting {value}";
}

```

* * *

[PropertyTweener](class_propertytweener.md#class-propertytweener) **tween\_property**(object: [Object](class_object.md#class-object), property: [NodePath](class_nodepath.md#class-nodepath), final\_val: [Variant](class_variant.md#class-variant), duration: [float](class_float.md#class-float)) [🔗](#class-tween-method-tween-property)

Creates and appends a [PropertyTweener](class_propertytweener.md#class-propertytweener). This method tweens a `property` of an `object` between an initial value and `final_val` in a span of time equal to `duration`, in seconds. The initial value by default is the property's value at the time the tweening of the [PropertyTweener](class_propertytweener.md#class-propertytweener) starts.

GDScriptC#

```
var tween = create_tween()
tween.tween_property($Sprite, "position", Vector2(100, 200), 1.0)
tween.tween_property($Sprite, "position", Vector2(200, 300), 1.0)

```

```
Tween tween = CreateTween();
tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(100.0f, 200.0f), 1.0f);
tween.TweenProperty(GetNode("Sprite"), "position", new Vector2(200.0f, 300.0f), 1.0f);

```

will move the sprite to position (100, 200) and then to (200, 300). If you use [PropertyTweener.from()](class_propertytweener.md#class-propertytweener-method-from) or [PropertyTweener.from\_current()](class_propertytweener.md#class-propertytweener-method-from-current), the starting position will be overwritten by the given value instead. See other methods in [PropertyTweener](class_propertytweener.md#class-propertytweener) to see how the tweening can be tweaked further.

**Note:** You can find the correct property name by hovering over the property in the Inspector. You can also provide the components of a property directly by using `"property:component"` (eg. `position:x`), where it would only apply to that particular component.

**Example:** Moving an object twice from the same position, with different transition types:

GDScriptC#

```
var tween = create_tween()
tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().set_trans(Tween.TRANS_SINE)
tween.tween_property($Sprite, "position", Vector2.RIGHT * 300, 1.0).as_relative().from_current().set_trans(Tween.TRANS_EXPO)

```

```
Tween tween = CreateTween();
tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().SetTrans(Tween.TransitionType.Sine);
tween.TweenProperty(GetNode("Sprite"), "position", Vector2.Right * 300.0f, 1.0f).AsRelative().FromCurrent().SetTrans(Tween.TransitionType.Expo);

```

* * *

[SubtweenTweener](class_subtweentweener.md#class-subtweentweener) **tween\_subtween**(subtween: [Tween](#class-tween)) [🔗](#class-tween-method-tween-subtween)

Creates and appends a [SubtweenTweener](class_subtweentweener.md#class-subtweentweener). This method can be used to nest `subtween` within this **Tween**, allowing for the creation of more complex and composable sequences.

```
# Subtween will rotate the object.
var subtween = create_tween()
subtween.tween_property(self, "rotation_degrees", 45.0, 1.0)
subtween.tween_property(self, "rotation_degrees", 0.0, 1.0)

# Parent tween will execute the subtween as one of its steps.
var tween = create_tween()
tween.tween_property(self, "position:x", 500, 3.0)
tween.tween_subtween(subtween)
tween.tween_property(self, "position:x", 300, 2.0)

```

**Note:** The methods [pause()](#class-tween-method-pause), [stop()](#class-tween-method-stop), and [set\_loops()](#class-tween-method-set-loops) can cause the parent **Tween** to get stuck on the subtween step; see the documentation for those methods for more information.

**Note:** The pause and process modes set by [set\_pause\_mode()](#class-tween-method-set-pause-mode) and [set\_process\_mode()](#class-tween-method-set-process-mode) on `subtween` will be overridden by the parent **Tween**'s settings.

[Previous](class_trianglemesh.md "TriangleMesh") [Next](class_tweener.md "Tweener")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_trianglemesh.md "TriangleMesh") [Next](class_tweener.md "Tweener")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).