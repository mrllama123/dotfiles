---
title: OpenXRHapticVibration — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrhapticvibration.html
crawled_at: "2026-08-13T10:28:15+12:00"
content_hash: e52d3f9105bd8cd332c5e7214d1e982b9e32a8d79e2ea1b5429277aeb3315465
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRHapticVibration

* * *

# OpenXRHapticVibration

**Inherits:** [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Vibration haptic feedback.

## Description

This haptic feedback resource makes it possible to define a vibration based haptic feedback pulse that can be triggered through actions in the OpenXR action map.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [amplitude](#class-openxrhapticvibration-property-amplitude) | `1.0` |
| [int](class_int.md#class-int) | [duration](#class-openxrhapticvibration-property-duration) | `-1` |
| [float](class_float.md#class-float) | [frequency](#class-openxrhapticvibration-property-frequency) | `0.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **amplitude** = `1.0` [🔗](#class-openxrhapticvibration-property-amplitude)

- void **set\_amplitude**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_amplitude**()


The amplitude of the pulse between `0.0` and `1.0`.

* * *

[int](class_int.md#class-int) **duration** = `-1` [🔗](#class-openxrhapticvibration-property-duration)

- void **set\_duration**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_duration**()


The duration of the pulse in nanoseconds. Use `-1` for a minimum duration pulse for the current XR runtime.

* * *

[float](class_float.md#class-float) **frequency** = `0.0` [🔗](#class-openxrhapticvibration-property-frequency)

- void **set\_frequency**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_frequency**()


The frequency of the pulse in Hz. `0.0` will let the XR runtime chose an optimal frequency for the device used.

[Previous](class_openxrhapticbase.md "OpenXRHapticBase") [Next](class_openxrinteractionprofile.md "OpenXRInteractionProfile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrhapticbase.md "OpenXRHapticBase") [Next](class_openxrinteractionprofile.md "OpenXRInteractionProfile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).