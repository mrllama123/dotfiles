---
title: OpenXRAnalogThresholdModifier — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxranalogthresholdmodifier.html
crawled_at: "2026-08-13T10:34:35+12:00"
content_hash: 2b80fdf551f43cfaf0c211f9ef3a628cf8f127f983670aa3e6bae16127fac363
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRAnalogThresholdModifier

* * *

# OpenXRAnalogThresholdModifier

**Inherits:** [OpenXRActionBindingModifier](class_openxractionbindingmodifier.md#class-openxractionbindingmodifier) **<** [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.

## Description

The analog threshold binding modifier can modify a float input to a boolean input with specified thresholds.

See [XR\_VALVE\_analog\_threshold](https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_VALVE_analog_threshold) for in-depth details.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) | [off\_haptic](#class-openxranalogthresholdmodifier-property-off-haptic) |  |
| [float](class_float.md#class-float) | [off\_threshold](#class-openxranalogthresholdmodifier-property-off-threshold) | `0.4` |
| [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) | [on\_haptic](#class-openxranalogthresholdmodifier-property-on-haptic) |  |
| [float](class_float.md#class-float) | [on\_threshold](#class-openxranalogthresholdmodifier-property-on-threshold) | `0.6` |

* * *

## Property Descriptions

[OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **off\_haptic** [🔗](#class-openxranalogthresholdmodifier-property-off-haptic)

- void **set\_off\_haptic**(value: [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase))

- [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **get\_off\_haptic**()


Haptic pulse to emit when the user releases the input.

* * *

[float](class_float.md#class-float) **off\_threshold** = `0.4` [🔗](#class-openxranalogthresholdmodifier-property-off-threshold)

- void **set\_off\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_off\_threshold**()


When our input value falls below this, our output becomes `false`.

* * *

[OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **on\_haptic** [🔗](#class-openxranalogthresholdmodifier-property-on-haptic)

- void **set\_on\_haptic**(value: [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase))

- [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **get\_on\_haptic**()


Haptic pulse to emit when the user presses the input.

* * *

[float](class_float.md#class-float) **on\_threshold** = `0.6` [🔗](#class-openxranalogthresholdmodifier-property-on-threshold)

- void **set\_on\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_on\_threshold**()


When our input value is equal or larger than this value, our output becomes `true`. It stays `true` until it falls under the [off\_threshold](#class-openxranalogthresholdmodifier-property-off-threshold) value.

[Previous](class_openxractionset.md "OpenXRActionSet") [Next](class_openxrbindingmodifier.md "OpenXRBindingModifier")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxractionset.md "OpenXRActionSet") [Next](class_openxrbindingmodifier.md "OpenXRBindingModifier")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).