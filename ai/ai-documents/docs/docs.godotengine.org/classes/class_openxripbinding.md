---
title: OpenXRIPBinding — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxripbinding.html
crawled_at: "2026-08-13T10:21:40+12:00"
content_hash: 9a4892b57e98eb8071f919a03ace2ae89dd518c18de626bb3f39da9949d05d2c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRIPBinding

* * *

# OpenXRIPBinding

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Defines a binding between an [OpenXRAction](class_openxraction.md#class-openxraction) and an XR input or output.

## Description

This binding resource binds an [OpenXRAction](class_openxraction.md#class-openxraction) to an input or output. As most controllers have left hand and right versions that are handled by the same interaction profile we can specify multiple bindings. For instance an action "Fire" could be bound to both "/user/hand/left/input/trigger" and "/user/hand/right/input/trigger". This would require two binding entries.

## Properties

|     |     |     |
| --- | --- | --- |
| [OpenXRAction](class_openxraction.md#class-openxraction) | [action](#class-openxripbinding-property-action) |  |
| [Array](class_array.md#class-array) | [binding\_modifiers](#class-openxripbinding-property-binding-modifiers) | `[]` |
| [String](class_string.md#class-string) | [binding\_path](#class-openxripbinding-property-binding-path) | `""` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [paths](#class-openxripbinding-property-paths) |  |

## Methods

|     |     |
| --- | --- |
| void | [add\_path](#class-openxripbinding-method-add-path)(path: [String](class_string.md#class-string)) |
| [OpenXRActionBindingModifier](class_openxractionbindingmodifier.md#class-openxractionbindingmodifier) | [get\_binding\_modifier](#class-openxripbinding-method-get-binding-modifier)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_binding\_modifier\_count](#class-openxripbinding-method-get-binding-modifier-count)() const |
| [int](class_int.md#class-int) | [get\_path\_count](#class-openxripbinding-method-get-path-count)() const |
| [bool](class_bool.md#class-bool) | [has\_path](#class-openxripbinding-method-has-path)(path: [String](class_string.md#class-string)) const |
| void | [remove\_path](#class-openxripbinding-method-remove-path)(path: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[OpenXRAction](class_openxraction.md#class-openxraction) **action** [🔗](#class-openxripbinding-property-action)

- void **set\_action**(value: [OpenXRAction](class_openxraction.md#class-openxraction))

- [OpenXRAction](class_openxraction.md#class-openxraction) **get\_action**()


[OpenXRAction](class_openxraction.md#class-openxraction) that is bound to [binding\_path](#class-openxripbinding-property-binding-path).

* * *

[Array](class_array.md#class-array) **binding\_modifiers** = `[]` [🔗](#class-openxripbinding-property-binding-modifiers)

- void **set\_binding\_modifiers**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_binding\_modifiers**()


Binding modifiers for this binding.

* * *

[String](class_string.md#class-string) **binding\_path** = `""` [🔗](#class-openxripbinding-property-binding-path)

- void **set\_binding\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_binding\_path**()


Binding path that defines the input or output bound to [action](#class-openxripbinding-property-action).

**Note:** Binding paths are suggestions, an XR runtime may choose to bind the action to a different input or output emulating this input or output.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **paths** [🔗](#class-openxripbinding-property-paths)

- void **set\_paths**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_paths**()


**Deprecated:** Use [binding\_path](#class-openxripbinding-property-binding-path) instead.

Paths that define the inputs or outputs bound on the device.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

## Method Descriptions

void **add\_path**(path: [String](class_string.md#class-string)) [🔗](#class-openxripbinding-method-add-path)

**Deprecated:** Binding is for a single path.

Add an input/output path to this binding.

* * *

[OpenXRActionBindingModifier](class_openxractionbindingmodifier.md#class-openxractionbindingmodifier) **get\_binding\_modifier**(index: [int](class_int.md#class-int)) const [🔗](#class-openxripbinding-method-get-binding-modifier)

Get the [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) at this index.

* * *

[int](class_int.md#class-int) **get\_binding\_modifier\_count**() const [🔗](#class-openxripbinding-method-get-binding-modifier-count)

Get the number of binding modifiers for this binding.

* * *

[int](class_int.md#class-int) **get\_path\_count**() const [🔗](#class-openxripbinding-method-get-path-count)

**Deprecated:** Binding is for a single path.

Get the number of input/output paths in this binding.

* * *

[bool](class_bool.md#class-bool) **has\_path**(path: [String](class_string.md#class-string)) const [🔗](#class-openxripbinding-method-has-path)

**Deprecated:** Binding is for a single path.

Returns `true` if this input/output path is part of this binding.

* * *

void **remove\_path**(path: [String](class_string.md#class-string)) [🔗](#class-openxripbinding-method-remove-path)

**Deprecated:** Binding is for a single path.

Removes this input/output path from this binding.

[Previous](class_openxrinteractionprofile.md "OpenXRInteractionProfile") [Next](class_openxripbindingmodifier.md "OpenXRIPBindingModifier")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrinteractionprofile.md "OpenXRInteractionProfile") [Next](class_openxripbindingmodifier.md "OpenXRIPBindingModifier")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).