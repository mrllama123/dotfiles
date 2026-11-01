---
title: Tweener — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tweener.html
crawled_at: "2026-08-13T10:38:12+12:00"
content_hash: d94ed6fc2ffadc2d0f845b7f96ece423854d327ec2c9139a748b5f6c8c6087fe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Tweener

* * *

# Tweener

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CallbackTweener](class_callbacktweener.md#class-callbacktweener), [IntervalTweener](class_intervaltweener.md#class-intervaltweener), [MethodTweener](class_methodtweener.md#class-methodtweener), [PropertyTweener](class_propertytweener.md#class-propertytweener), [SubtweenTweener](class_subtweentweener.md#class-subtweentweener)

Abstract class for all Tweeners used by [Tween](class_tween.md#class-tween).

## Description

Tweeners are objects that perform a specific animating task, e.g. interpolating a property or calling a method at a given time. A **Tweener** can't be created manually, you need to use a dedicated method from [Tween](class_tween.md#class-tween).

* * *

## Signals

**finished**() [🔗](#class-tweener-signal-finished)

Emitted when the **Tweener** has just finished its job or became invalid (e.g. due to a freed object).

[Previous](class_tween.md "Tween") [Next](class_udpserver.md "UDPServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tween.md "Tween") [Next](class_udpserver.md "UDPServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).