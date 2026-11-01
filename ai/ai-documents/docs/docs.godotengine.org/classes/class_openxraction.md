---
title: OpenXRAction — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxraction.html
crawled_at: "2026-08-13T10:34:44+12:00"
content_hash: c6cf3a06b12522eb386f7e783e25c40b6bc2dc5d308a311ad75c8b5be6611705
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRAction

* * *

# OpenXRAction

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An OpenXR action.

## Description

This resource defines an OpenXR action. Actions can be used both for inputs (buttons, joysticks, triggers, etc.) and outputs (haptics).

OpenXR performs automatic conversion between action type and input type whenever possible. An analog trigger bound to a boolean action will thus return `false` if the trigger is depressed and `true` if pressed fully.

Actions are not directly bound to specific devices, instead OpenXR recognizes a limited number of top level paths that identify devices by usage. We can restrict which devices an action can be bound to by these top level paths. For instance an action that should only be used for hand held controllers can have the top level paths "/user/hand/left" and "/user/hand/right" associated with them. See the [reserved path section in the OpenXR specification](https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-reserved) for more info on the top level paths.

Note that the name of the resource is used to register the action with.

## Properties

|     |     |     |
| --- | --- | --- |
| [ActionType](#enum-openxraction-actiontype) | [action\_type](#class-openxraction-property-action-type) | `1` |
| [String](class_string.md#class-string) | [localized\_name](#class-openxraction-property-localized-name) | `""` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [toplevel\_paths](#class-openxraction-property-toplevel-paths) | `PackedStringArray()` |

* * *

## Enumerations

enum **ActionType**: [🔗](#enum-openxraction-actiontype)

[ActionType](#enum-openxraction-actiontype) **OPENXR\_ACTION\_BOOL** = `0`

This action provides a boolean value.

[ActionType](#enum-openxraction-actiontype) **OPENXR\_ACTION\_FLOAT** = `1`

This action provides a float value between `0.0` and `1.0` for any analog input such as triggers.

[ActionType](#enum-openxraction-actiontype) **OPENXR\_ACTION\_VECTOR2** = `2`

This action provides a [Vector2](class_vector2.md#class-vector2) value and can be bound to embedded trackpads and joysticks.

[ActionType](#enum-openxraction-actiontype) **OPENXR\_ACTION\_POSE** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Property Descriptions

[ActionType](#enum-openxraction-actiontype) **action\_type** = `1` [🔗](#class-openxraction-property-action-type)

- void **set\_action\_type**(value: [ActionType](#enum-openxraction-actiontype))

- [ActionType](#enum-openxraction-actiontype) **get\_action\_type**()


The type of action.

* * *

[String](class_string.md#class-string) **localized\_name** = `""` [🔗](#class-openxraction-property-localized-name)

- void **set\_localized\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_localized\_name**()


The localized description of this action.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **toplevel\_paths** = `PackedStringArray()` [🔗](#class-openxraction-property-toplevel-paths)

- void **set\_toplevel\_paths**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_toplevel\_paths**()


A collections of toplevel paths to which this action can be bound.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

[Previous](class_oggpacketsequence.md "OggPacketSequence") [Next](class_openxractionbindingmodifier.md "OpenXRActionBindingModifier")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_oggpacketsequence.md "OggPacketSequence") [Next](class_openxractionbindingmodifier.md "OpenXRActionBindingModifier")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).