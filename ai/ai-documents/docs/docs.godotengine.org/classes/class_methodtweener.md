---
title: MethodTweener — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_methodtweener.html
crawled_at: "2026-08-13T10:33:42+12:00"
content_hash: 3dad5cf18961791f502273036c34a27cbf6e350b102f0eaa6f7a307da5fe78c0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MethodTweener

* * *

# MethodTweener

**Inherits:** [Tweener](class_tweener.md#class-tweener) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Interpolates an abstract value and supplies it to a method called over time.

## Description

**MethodTweener** is similar to a combination of [CallbackTweener](class_callbacktweener.md#class-callbacktweener) and [PropertyTweener](class_propertytweener.md#class-propertytweener). It calls a method providing an interpolated value as a parameter. See [Tween.tween\_method()](class_tween.md#class-tween-method-tween-method) for more usage information.

The tweener will finish automatically if the callback's target object is freed.

**Note:** [Tween.tween\_method()](class_tween.md#class-tween-method-tween-method) is the only correct way to create **MethodTweener**. Any **MethodTweener** created manually will not function correctly.

## Methods

|     |     |
| --- | --- |
| [MethodTweener](#class-methodtweener) | [set\_delay](#class-methodtweener-method-set-delay)(delay: [float](class_float.md#class-float)) |
| [MethodTweener](#class-methodtweener) | [set\_ease](#class-methodtweener-method-set-ease)(ease: [EaseType](class_tween.md#enum-tween-easetype)) |
| [MethodTweener](#class-methodtweener) | [set\_trans](#class-methodtweener-method-set-trans)(trans: [TransitionType](class_tween.md#enum-tween-transitiontype)) |

* * *

## Method Descriptions

[MethodTweener](#class-methodtweener) **set\_delay**(delay: [float](class_float.md#class-float)) [🔗](#class-methodtweener-method-set-delay)

Sets the time in seconds after which the **MethodTweener** will start interpolating. By default there's no delay.

* * *

[MethodTweener](#class-methodtweener) **set\_ease**(ease: [EaseType](class_tween.md#enum-tween-easetype)) [🔗](#class-methodtweener-method-set-ease)

Sets the type of used easing from [EaseType](class_tween.md#enum-tween-easetype). If not set, the default easing is used from the [Tween](class_tween.md#class-tween) that contains this Tweener.

* * *

[MethodTweener](#class-methodtweener) **set\_trans**(trans: [TransitionType](class_tween.md#enum-tween-transitiontype)) [🔗](#class-methodtweener-method-set-trans)

Sets the type of used transition from [TransitionType](class_tween.md#enum-tween-transitiontype). If not set, the default transition is used from the [Tween](class_tween.md#class-tween) that contains this Tweener.

[Previous](class_meshdatatool.md "MeshDataTool") [Next](class_mobilevrinterface.md "MobileVRInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshdatatool.md "MeshDataTool") [Next](class_mobilevrinterface.md "MobileVRInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).