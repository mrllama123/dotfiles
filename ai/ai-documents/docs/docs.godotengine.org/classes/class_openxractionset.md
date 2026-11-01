---
title: OpenXRActionSet — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxractionset.html
crawled_at: "2026-08-13T10:38:27+12:00"
content_hash: 4f4039c021caab615e1168d0fefac7a270a99d2240aa12e7dac39a07da80c755
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRActionSet

* * *

# OpenXRActionSet

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Collection of [OpenXRAction](class_openxraction.md#class-openxraction) resources that make up an action set.

## Description

Action sets in OpenXR define a collection of actions that can be activated in unison. This allows games to easily change between different states that require different inputs or need to reinterpret inputs. For instance we could have an action set that is active when a menu is open, an action set that is active when the player is freely walking around and an action set that is active when the player is controlling a vehicle.

Action sets can contain the same action with the same name, if such action sets are active at the same time the action set with the highest priority defines which binding is active.

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array) | [actions](#class-openxractionset-property-actions) | `[]` |
| [String](class_string.md#class-string) | [localized\_name](#class-openxractionset-property-localized-name) | `""` |
| [int](class_int.md#class-int) | [priority](#class-openxractionset-property-priority) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_action](#class-openxractionset-method-add-action)(action: [OpenXRAction](class_openxraction.md#class-openxraction)) |
| [int](class_int.md#class-int) | [get\_action\_count](#class-openxractionset-method-get-action-count)() const |
| void | [remove\_action](#class-openxractionset-method-remove-action)(action: [OpenXRAction](class_openxraction.md#class-openxraction)) |

* * *

## Property Descriptions

[Array](class_array.md#class-array) **actions** = `[]` [🔗](#class-openxractionset-property-actions)

- void **set\_actions**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_actions**()


Collection of actions for this action set.

* * *

[String](class_string.md#class-string) **localized\_name** = `""` [🔗](#class-openxractionset-property-localized-name)

- void **set\_localized\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_localized\_name**()


The localized name of this action set.

* * *

[int](class_int.md#class-int) **priority** = `0` [🔗](#class-openxractionset-property-priority)

- void **set\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_priority**()


The priority for this action set.

* * *

## Method Descriptions

void **add\_action**(action: [OpenXRAction](class_openxraction.md#class-openxraction)) [🔗](#class-openxractionset-method-add-action)

Add an action to this action set.

* * *

[int](class_int.md#class-int) **get\_action\_count**() const [🔗](#class-openxractionset-method-get-action-count)

Retrieve the number of actions in our action set.

* * *

void **remove\_action**(action: [OpenXRAction](class_openxraction.md#class-openxraction)) [🔗](#class-openxractionset-method-remove-action)

Remove an action from this action set.

[Previous](class_openxractionmap.md "OpenXRActionMap") [Next](class_openxranalogthresholdmodifier.md "OpenXRAnalogThresholdModifier")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxractionmap.md "OpenXRActionMap") [Next](class_openxranalogthresholdmodifier.md "OpenXRAnalogThresholdModifier")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).