---
title: OpenXRInteractionProfile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrinteractionprofile.html
crawled_at: "2026-08-13T10:24:08+12:00"
content_hash: c9e3eb5c99b116cbc26528f031570eef3ac310394b603f99a51b9613a51f2171
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRInteractionProfile

* * *

# OpenXRInteractionProfile

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Suggested bindings object for OpenXR.

## Description

This object stores suggested bindings for an interaction profile. Interaction profiles define the metadata for a tracked XR device such as an XR controller.

For more information see the [interaction profiles info in the OpenXR specification](https://www.khronos.org/registry/OpenXR/specs/1.0/html/xrspec.html#semantic-path-interaction-profiles).

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array) | [binding\_modifiers](#class-openxrinteractionprofile-property-binding-modifiers) | `[]` |
| [Array](class_array.md#class-array) | [bindings](#class-openxrinteractionprofile-property-bindings) | `[]` |
| [String](class_string.md#class-string) | [interaction\_profile\_path](#class-openxrinteractionprofile-property-interaction-profile-path) | `""` |

## Methods

|     |     |
| --- | --- |
| [OpenXRIPBinding](class_openxripbinding.md#class-openxripbinding) | [get\_binding](#class-openxrinteractionprofile-method-get-binding)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_binding\_count](#class-openxrinteractionprofile-method-get-binding-count)() const |
| [OpenXRIPBindingModifier](class_openxripbindingmodifier.md#class-openxripbindingmodifier) | [get\_binding\_modifier](#class-openxrinteractionprofile-method-get-binding-modifier)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_binding\_modifier\_count](#class-openxrinteractionprofile-method-get-binding-modifier-count)() const |

* * *

## Property Descriptions

[Array](class_array.md#class-array) **binding\_modifiers** = `[]` [🔗](#class-openxrinteractionprofile-property-binding-modifiers)

- void **set\_binding\_modifiers**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_binding\_modifiers**()


Binding modifiers for this interaction profile.

* * *

[Array](class_array.md#class-array) **bindings** = `[]` [🔗](#class-openxrinteractionprofile-property-bindings)

- void **set\_bindings**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_bindings**()


Action bindings for this interaction profile.

* * *

[String](class_string.md#class-string) **interaction\_profile\_path** = `""` [🔗](#class-openxrinteractionprofile-property-interaction-profile-path)

- void **set\_interaction\_profile\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_interaction\_profile\_path**()


The interaction profile path identifying the XR device.

* * *

## Method Descriptions

[OpenXRIPBinding](class_openxripbinding.md#class-openxripbinding) **get\_binding**(index: [int](class_int.md#class-int)) const [🔗](#class-openxrinteractionprofile-method-get-binding)

Retrieve the binding at this index.

* * *

[int](class_int.md#class-int) **get\_binding\_count**() const [🔗](#class-openxrinteractionprofile-method-get-binding-count)

Get the number of bindings in this interaction profile.

* * *

[OpenXRIPBindingModifier](class_openxripbindingmodifier.md#class-openxripbindingmodifier) **get\_binding\_modifier**(index: [int](class_int.md#class-int)) const [🔗](#class-openxrinteractionprofile-method-get-binding-modifier)

Get the [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) at this index.

* * *

[int](class_int.md#class-int) **get\_binding\_modifier\_count**() const [🔗](#class-openxrinteractionprofile-method-get-binding-modifier-count)

Get the number of binding modifiers in this interaction profile.

[Previous](class_openxrhapticvibration.md "OpenXRHapticVibration") [Next](class_openxripbinding.md "OpenXRIPBinding")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrhapticvibration.md "OpenXRHapticVibration") [Next](class_openxripbinding.md "OpenXRIPBinding")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).