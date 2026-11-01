---
title: AnimationNodeOneShot — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeoneshot.html
crawled_at: "2026-08-13T10:35:48+12:00"
content_hash: 46422858c8159aad47739cc9495da4ad23eb62ca1f536c9411cc7945815e1771
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeOneShot

* * *

# AnimationNodeOneShot

**Inherits:** [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plays an animation once in an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

## Description

A resource to add to an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). This animation node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.

After setting the request and changing the animation playback, the one-shot node automatically clears the request on the next process frame by setting its `request` value to [ONE\_SHOT\_REQUEST\_NONE](#class-animationnodeoneshot-constant-one-shot-request-none).

GDScriptC#

```
# Play child animation connected to "shot" port.
animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
# Alternative syntax (same result as above).
animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE

# Abort child animation connected to "shot" port.
animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT)
# Alternative syntax (same result as above).
animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_ABORT

# Abort child animation with fading out connected to "shot" port.
animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT)
# Alternative syntax (same result as above).
animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FADE_OUT

# Get current state (read-only).
animation_tree.get("parameters/OneShot/active")
# Alternative syntax (same result as above).
animation_tree["parameters/OneShot/active"]

# Get current internal state (read-only).
animation_tree.get("parameters/OneShot/internal_active")
# Alternative syntax (same result as above).
animation_tree["parameters/OneShot/internal_active"]

```

```
// Play child animation connected to "shot" port.
animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Fire);

// Abort child animation connected to "shot" port.
animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.Abort);

// Abort child animation with fading out connected to "shot" port.
animationTree.Set("parameters/OneShot/request", (int)AnimationNodeOneShot.OneShotRequest.FadeOut);

// Get current state (read-only).
animationTree.Get("parameters/OneShot/active");

// Get current internal state (read-only).
animationTree.Get("parameters/OneShot/internal_active");

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [autorestart](#class-animationnodeoneshot-property-autorestart) | `false` |
| [float](class_float.md#class-float) | [autorestart\_delay](#class-animationnodeoneshot-property-autorestart-delay) | `1.0` |
| [float](class_float.md#class-float) | [autorestart\_random\_delay](#class-animationnodeoneshot-property-autorestart-random-delay) | `0.0` |
| [bool](class_bool.md#class-bool) | [break\_loop\_at\_end](#class-animationnodeoneshot-property-break-loop-at-end) | `false` |
| [Curve](class_curve.md#class-curve) | [fadein\_curve](#class-animationnodeoneshot-property-fadein-curve) |  |
| [float](class_float.md#class-float) | [fadein\_time](#class-animationnodeoneshot-property-fadein-time) | `0.0` |
| [Curve](class_curve.md#class-curve) | [fadeout\_curve](#class-animationnodeoneshot-property-fadeout-curve) |  |
| [float](class_float.md#class-float) | [fadeout\_time](#class-animationnodeoneshot-property-fadeout-time) | `0.0` |
| [MixMode](#enum-animationnodeoneshot-mixmode) | [mix\_mode](#class-animationnodeoneshot-property-mix-mode) | `0` |

* * *

## Enumerations

enum **OneShotRequest**: [🔗](#enum-animationnodeoneshot-oneshotrequest)

[OneShotRequest](#enum-animationnodeoneshot-oneshotrequest) **ONE\_SHOT\_REQUEST\_NONE** = `0`

The default state of the request. Nothing is done.

[OneShotRequest](#enum-animationnodeoneshot-oneshotrequest) **ONE\_SHOT\_REQUEST\_FIRE** = `1`

The request to play the animation connected to "shot" port.

[OneShotRequest](#enum-animationnodeoneshot-oneshotrequest) **ONE\_SHOT\_REQUEST\_ABORT** = `2`

The request to stop the animation connected to "shot" port.

[OneShotRequest](#enum-animationnodeoneshot-oneshotrequest) **ONE\_SHOT\_REQUEST\_FADE\_OUT** = `3`

The request to fade out the animation connected to "shot" port.

* * *

enum **MixMode**: [🔗](#enum-animationnodeoneshot-mixmode)

[MixMode](#enum-animationnodeoneshot-mixmode) **MIX\_MODE\_BLEND** = `0`

Blends two animations. See also [AnimationNodeBlend2](class_animationnodeblend2.md#class-animationnodeblend2).

[MixMode](#enum-animationnodeoneshot-mixmode) **MIX\_MODE\_ADD** = `1`

Blends two animations additively. See also [AnimationNodeAdd2](class_animationnodeadd2.md#class-animationnodeadd2).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **autorestart** = `false` [🔗](#class-animationnodeoneshot-property-autorestart)

- void **set\_autorestart**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_autorestart**()


If `true`, the sub-animation will restart automatically after finishing.

In other words, to start auto restarting, the animation must be played once with the [ONE\_SHOT\_REQUEST\_FIRE](#class-animationnodeoneshot-constant-one-shot-request-fire) request. The [ONE\_SHOT\_REQUEST\_ABORT](#class-animationnodeoneshot-constant-one-shot-request-abort) request stops the auto restarting, but it does not disable the [autorestart](#class-animationnodeoneshot-property-autorestart) itself. So, the [ONE\_SHOT\_REQUEST\_FIRE](#class-animationnodeoneshot-constant-one-shot-request-fire) request will start auto restarting again.

* * *

[float](class_float.md#class-float) **autorestart\_delay** = `1.0` [🔗](#class-animationnodeoneshot-property-autorestart-delay)

- void **set\_autorestart\_delay**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_autorestart\_delay**()


The delay after which the automatic restart is triggered, in seconds.

* * *

[float](class_float.md#class-float) **autorestart\_random\_delay** = `0.0` [🔗](#class-animationnodeoneshot-property-autorestart-random-delay)

- void **set\_autorestart\_random\_delay**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_autorestart\_random\_delay**()


If [autorestart](#class-animationnodeoneshot-property-autorestart) is `true`, a random additional delay (in seconds) between 0 and this value will be added to [autorestart\_delay](#class-animationnodeoneshot-property-autorestart-delay).

* * *

[bool](class_bool.md#class-bool) **break\_loop\_at\_end** = `false` [🔗](#class-animationnodeoneshot-property-break-loop-at-end)

- void **set\_break\_loop\_at\_end**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_loop\_broken\_at\_end**()


If `true`, breaks the loop at the end of the loop cycle for transition, even if the animation is looping.

* * *

[Curve](class_curve.md#class-curve) **fadein\_curve** [🔗](#class-animationnodeoneshot-property-fadein-curve)

- void **set\_fadein\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_fadein\_curve**()


Determines how cross-fading between animations is eased. If empty, the transition will be linear. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **fadein\_time** = `0.0` [🔗](#class-animationnodeoneshot-property-fadein-time)

- void **set\_fadein\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fadein\_time**()


The fade-in duration. For example, setting this to `1.0` for a 5 second length animation will produce a cross-fade that starts at 0 second and ends at 1 second during the animation.

**Note:** **AnimationNodeOneShot** transitions the current state after the fading has finished.

* * *

[Curve](class_curve.md#class-curve) **fadeout\_curve** [🔗](#class-animationnodeoneshot-property-fadeout-curve)

- void **set\_fadeout\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_fadeout\_curve**()


Determines how cross-fading between animations is eased. If empty, the transition will be linear. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **fadeout\_time** = `0.0` [🔗](#class-animationnodeoneshot-property-fadeout-time)

- void **set\_fadeout\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fadeout\_time**()


The fade-out duration. For example, setting this to `1.0` for a 5 second length animation will produce a cross-fade that starts at 4 second and ends at 5 second during the animation.

**Note:** **AnimationNodeOneShot** transitions the current state after the fading has finished.

* * *

[MixMode](#enum-animationnodeoneshot-mixmode) **mix\_mode** = `0` [🔗](#class-animationnodeoneshot-property-mix-mode)

- void **set\_mix\_mode**(value: [MixMode](#enum-animationnodeoneshot-mixmode))

- [MixMode](#enum-animationnodeoneshot-mixmode) **get\_mix\_mode**()


The blend type.

[Previous](class_animationnodeextension.md "AnimationNodeExtension") [Next](class_animationnodeoutput.md "AnimationNodeOutput")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeextension.md "AnimationNodeExtension") [Next](class_animationnodeoutput.md "AnimationNodeOutput")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).