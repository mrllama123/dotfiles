---
title: OpenXRDpadBindingModifier — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrdpadbindingmodifier.html
crawled_at: "2026-08-13T10:34:13+12:00"
content_hash: f1973f8172388c787c39fc25022558406fcd85d2a814f4b012a515e4a22743fd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRDpadBindingModifier

* * *

# OpenXRDpadBindingModifier

**Inherits:** [OpenXRIPBindingModifier](class_openxripbindingmodifier.md#class-openxripbindingmodifier) **<** [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

The DPad binding modifier converts an axis input to a dpad output.

## Description

The DPad binding modifier converts an axis input to a dpad output, emulating a DPad. New input paths for each dpad direction will be added to the interaction profile. When bound to actions the DPad emulation will be activated. You should **not** combine dpad inputs with normal inputs in the same action set for the same control, this will result in an error being returned when suggested bindings are submitted to OpenXR.

See [XR\_EXT\_dpad\_binding](https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding) for in-depth details.

**Note:** If the DPad binding modifier extension is enabled, all dpad binding paths will be available in the action map. Adding the modifier to an interaction profile allows you to further customize the behavior.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpenXRActionSet](class_openxractionset.md#class-openxractionset) | [action\_set](#class-openxrdpadbindingmodifier-property-action-set) |  |
| [float](class_float.md#class-float) | [center\_region](#class-openxrdpadbindingmodifier-property-center-region) | `0.1` |
| [String](class_string.md#class-string) | [input\_path](#class-openxrdpadbindingmodifier-property-input-path) | `""` |
| [bool](class_bool.md#class-bool) | [is\_sticky](#class-openxrdpadbindingmodifier-property-is-sticky) | `false` |
| [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) | [off\_haptic](#class-openxrdpadbindingmodifier-property-off-haptic) |  |
| [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) | [on\_haptic](#class-openxrdpadbindingmodifier-property-on-haptic) |  |
| [float](class_float.md#class-float) | [threshold](#class-openxrdpadbindingmodifier-property-threshold) | `0.6` |
| [float](class_float.md#class-float) | [threshold\_released](#class-openxrdpadbindingmodifier-property-threshold-released) | `0.4` |
| [float](class_float.md#class-float) | [wedge\_angle](#class-openxrdpadbindingmodifier-property-wedge-angle) | `1.5707964` |

* * *

## Property Descriptions

[OpenXRActionSet](class_openxractionset.md#class-openxractionset) **action\_set** [🔗](#class-openxrdpadbindingmodifier-property-action-set)

- void **set\_action\_set**(value: [OpenXRActionSet](class_openxractionset.md#class-openxractionset))

- [OpenXRActionSet](class_openxractionset.md#class-openxractionset) **get\_action\_set**()


Action set for which this dpad binding modifier is active.

* * *

[float](class_float.md#class-float) **center\_region** = `0.1` [🔗](#class-openxrdpadbindingmodifier-property-center-region)

- void **set\_center\_region**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_center\_region**()


Center region in which our center position of our dpad return `true`.

* * *

[String](class_string.md#class-string) **input\_path** = `""` [🔗](#class-openxrdpadbindingmodifier-property-input-path)

- void **set\_input\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_input\_path**()


Input path for this dpad binding modifier.

* * *

[bool](class_bool.md#class-bool) **is\_sticky** = `false` [🔗](#class-openxrdpadbindingmodifier-property-is-sticky)

- void **set\_is\_sticky**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_is\_sticky**()


If `false`, when the joystick enters a new dpad zone this becomes `true`.

If `true`, when the joystick remains in active dpad zone, this remains `true` even if we overlap with another zone.

* * *

[OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **off\_haptic** [🔗](#class-openxrdpadbindingmodifier-property-off-haptic)

- void **set\_off\_haptic**(value: [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase))

- [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **get\_off\_haptic**()


Haptic pulse to emit when the user releases the input.

* * *

[OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **on\_haptic** [🔗](#class-openxrdpadbindingmodifier-property-on-haptic)

- void **set\_on\_haptic**(value: [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase))

- [OpenXRHapticBase](class_openxrhapticbase.md#class-openxrhapticbase) **get\_on\_haptic**()


Haptic pulse to emit when the user presses the input.

* * *

[float](class_float.md#class-float) **threshold** = `0.6` [🔗](#class-openxrdpadbindingmodifier-property-threshold)

- void **set\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_threshold**()


When our input value is equal or larger than this value, our dpad in that direction becomes `true`. It stays `true` until it falls under the [threshold\_released](#class-openxrdpadbindingmodifier-property-threshold-released) value.

* * *

[float](class_float.md#class-float) **threshold\_released** = `0.4` [🔗](#class-openxrdpadbindingmodifier-property-threshold-released)

- void **set\_threshold\_released**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_threshold\_released**()


When our input value falls below this, our output becomes `false`.

* * *

[float](class_float.md#class-float) **wedge\_angle** = `1.5707964` [🔗](#class-openxrdpadbindingmodifier-property-wedge-angle)

- void **set\_wedge\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wedge\_angle**()


The angle of each wedge that identifies the 4 directions of the emulated dpad.

[Previous](class_openxrbindingmodifier.md "OpenXRBindingModifier") [Next](class_openxrhapticbase.md "OpenXRHapticBase")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrbindingmodifier.md "OpenXRBindingModifier") [Next](class_openxrhapticbase.md "OpenXRHapticBase")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).