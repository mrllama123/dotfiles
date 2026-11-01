---
title: PropertyTweener — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_propertytweener.html
crawled_at: "2026-08-13T10:32:14+12:00"
content_hash: 5fd165f1e652eb727262e56e6a8023761be4f46ae5fd78445d1ed553c6a45697
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PropertyTweener

* * *

# PropertyTweener

**Inherits:** [Tweener](class_tweener.md#class-tweener) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Interpolates an [Object](class_object.md#class-object)'s property over time.

## Description

**PropertyTweener** is used to interpolate a property in an object. See [Tween.tween\_property()](class_tween.md#class-tween-method-tween-property) for more usage information.

The tweener will finish automatically if the target object is freed.

**Note:** [Tween.tween\_property()](class_tween.md#class-tween-method-tween-property) is the only correct way to create **PropertyTweener**. Any **PropertyTweener** created manually will not function correctly.

## Methods

|     |     |
| --- | --- |
| [PropertyTweener](#class-propertytweener) | [as\_relative](#class-propertytweener-method-as-relative)() |
| [PropertyTweener](#class-propertytweener) | [from](#class-propertytweener-method-from)(value: [Variant](class_variant.md#class-variant)) |
| [PropertyTweener](#class-propertytweener) | [from\_current](#class-propertytweener-method-from-current)() |
| [PropertyTweener](#class-propertytweener) | [set\_custom\_interpolator](#class-propertytweener-method-set-custom-interpolator)(interpolator\_method: [Callable](class_callable.md#class-callable)) |
| [PropertyTweener](#class-propertytweener) | [set\_delay](#class-propertytweener-method-set-delay)(delay: [float](class_float.md#class-float)) |
| [PropertyTweener](#class-propertytweener) | [set\_ease](#class-propertytweener-method-set-ease)(ease: [EaseType](class_tween.md#enum-tween-easetype)) |
| [PropertyTweener](#class-propertytweener) | [set\_trans](#class-propertytweener-method-set-trans)(trans: [TransitionType](class_tween.md#enum-tween-transitiontype)) |

* * *

## Method Descriptions

[PropertyTweener](#class-propertytweener) **as\_relative**() [🔗](#class-propertytweener-method-as-relative)

When called, the final value will be used as a relative value instead.

**Example:** Move the node by `100` pixels to the right.

GDScriptC#

```
var tween = get_tree().create_tween()
tween.tween_property(self, "position", Vector2.RIGHT * 100, 1).as_relative()

```

```
Tween tween = GetTree().CreateTween();
tween.TweenProperty(this, "position", Vector2.Right * 100.0f, 1.0f).AsRelative();

```

* * *

[PropertyTweener](#class-propertytweener) **from**(value: [Variant](class_variant.md#class-variant)) [🔗](#class-propertytweener-method-from)

Sets a custom initial value to the **PropertyTweener**.

**Example:** Move the node from position `(100, 100)` to `(200, 100)`.

GDScriptC#

```
var tween = get_tree().create_tween()
tween.tween_property(self, "position", Vector2(200, 100), 1).from(Vector2(100, 100))

```

```
Tween tween = GetTree().CreateTween();
tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(new Vector2(100.0f, 100.0f));

```

* * *

[PropertyTweener](#class-propertytweener) **from\_current**() [🔗](#class-propertytweener-method-from-current)

Makes the **PropertyTweener** use the current property value (i.e. at the time of creating this **PropertyTweener**) as a starting point. This is equivalent of using [from()](#class-propertytweener-method-from) with the current value. These two calls will do the same:

GDScriptC#

```
tween.tween_property(self, "position", Vector2(200, 100), 1).from(position)
tween.tween_property(self, "position", Vector2(200, 100), 1).from_current()

```

```
tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).From(Position);
tween.TweenProperty(this, "position", new Vector2(200.0f, 100.0f), 1.0f).FromCurrent();

```

* * *

[PropertyTweener](#class-propertytweener) **set\_custom\_interpolator**(interpolator\_method: [Callable](class_callable.md#class-callable)) [🔗](#class-propertytweener-method-set-custom-interpolator)

Allows interpolating the value with a custom easing function. The provided `interpolator_method` will be called with a value ranging from `0.0` to `1.0` and is expected to return a value within the same range (values outside the range can be used for overshoot). The return value of the method is then used for interpolation between initial and final value. Note that the parameter passed to the method is still subject to the tweener's own easing.

GDScriptC#

```
@export var curve: Curve

func _ready():
    var tween = create_tween()
    # Interpolate the value using a custom curve.
    tween.tween_property(self, "position:x", 300, 1).as_relative().set_custom_interpolator(tween_curve)

func tween_curve(v):
    return curve.sample_baked(v)

```

```
[Export]
public Curve Curve { get; set; }

public override void _Ready()
{
    Tween tween = CreateTween();
    // Interpolate the value using a custom curve.
    Callable tweenCurveCallable = Callable.From<float, float>(TweenCurve);
    tween.TweenProperty(this, "position:x", 300.0f, 1.0f).AsRelative().SetCustomInterpolator(tweenCurveCallable);
}

private float TweenCurve(float value)
{
    return Curve.SampleBaked(value);
}

```

* * *

[PropertyTweener](#class-propertytweener) **set\_delay**(delay: [float](class_float.md#class-float)) [🔗](#class-propertytweener-method-set-delay)

Sets the time in seconds after which the **PropertyTweener** will start interpolating. By default there's no delay.

* * *

[PropertyTweener](#class-propertytweener) **set\_ease**(ease: [EaseType](class_tween.md#enum-tween-easetype)) [🔗](#class-propertytweener-method-set-ease)

Sets the type of used easing from [EaseType](class_tween.md#enum-tween-easetype). If not set, the default easing is used from the [Tween](class_tween.md#class-tween) that contains this Tweener.

* * *

[PropertyTweener](#class-propertytweener) **set\_trans**(trans: [TransitionType](class_tween.md#enum-tween-transitiontype)) [🔗](#class-propertytweener-method-set-trans)

Sets the type of used transition from [TransitionType](class_tween.md#enum-tween-transitiontype). If not set, the default transition is used from the [Tween](class_tween.md#class-tween) that contains this Tweener.

[Previous](class_projectsettings.md "ProjectSettings") [Next](class_randomnumbergenerator.md "RandomNumberGenerator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_projectsettings.md "ProjectSettings") [Next](class_randomnumbergenerator.md "RandomNumberGenerator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).