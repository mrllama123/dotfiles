---
title: OpenXRActionMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxractionmap.html
crawled_at: "2026-08-13T10:42:59+12:00"
content_hash: 05aba5ee3b40b7bbbdc5b2f278bb57d62f01d20ddb0d3f4a0279adbe874bdba7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRActionMap

* * *

# OpenXRActionMap

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Collection of [OpenXRActionSet](class_openxractionset.md#class-openxractionset) and [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) resources for the OpenXR module.

## Description

OpenXR uses an action system similar to Godots Input map system to bind inputs and outputs on various types of XR controllers to named actions. OpenXR specifies more detail on these inputs and outputs than Godot supports.

Another important distinction is that OpenXR offers no control over these bindings. The bindings we register are suggestions, it is up to the XR runtime to offer users the ability to change these bindings. This allows the XR runtime to fill in the gaps if new hardware becomes available.

The action map therefore needs to be loaded at startup and can't be changed afterwards. This resource is a container for the entire action map.

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array) | [action\_sets](#class-openxractionmap-property-action-sets) | `[]` |
| [Array](class_array.md#class-array) | [interaction\_profiles](#class-openxractionmap-property-interaction-profiles) | `[]` |

## Methods

|     |     |
| --- | --- |
| void | [add\_action\_set](#class-openxractionmap-method-add-action-set)(action\_set: [OpenXRActionSet](class_openxractionset.md#class-openxractionset)) |
| void | [add\_interaction\_profile](#class-openxractionmap-method-add-interaction-profile)(interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) |
| void | [create\_default\_action\_sets](#class-openxractionmap-method-create-default-action-sets)() |
| [OpenXRActionSet](class_openxractionset.md#class-openxractionset) | [find\_action\_set](#class-openxractionmap-method-find-action-set)(name: [String](class_string.md#class-string)) const |
| [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) | [find\_interaction\_profile](#class-openxractionmap-method-find-interaction-profile)(name: [String](class_string.md#class-string)) const |
| [OpenXRActionSet](class_openxractionset.md#class-openxractionset) | [get\_action\_set](#class-openxractionmap-method-get-action-set)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_action\_set\_count](#class-openxractionmap-method-get-action-set-count)() const |
| [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) | [get\_interaction\_profile](#class-openxractionmap-method-get-interaction-profile)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_interaction\_profile\_count](#class-openxractionmap-method-get-interaction-profile-count)() const |
| void | [remove\_action\_set](#class-openxractionmap-method-remove-action-set)(action\_set: [OpenXRActionSet](class_openxractionset.md#class-openxractionset)) |
| void | [remove\_interaction\_profile](#class-openxractionmap-method-remove-interaction-profile)(interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) |

* * *

## Property Descriptions

[Array](class_array.md#class-array) **action\_sets** = `[]` [🔗](#class-openxractionmap-property-action-sets)

- void **set\_action\_sets**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_action\_sets**()


Collection of [OpenXRActionSet](class_openxractionset.md#class-openxractionset) s that are part of this action map.

* * *

[Array](class_array.md#class-array) **interaction\_profiles** = `[]` [🔗](#class-openxractionmap-property-interaction-profiles)

- void **set\_interaction\_profiles**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_interaction\_profiles**()


Collection of [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) s that are part of this action map.

* * *

## Method Descriptions

void **add\_action\_set**(action\_set: [OpenXRActionSet](class_openxractionset.md#class-openxractionset)) [🔗](#class-openxractionmap-method-add-action-set)

Add an action set.

* * *

void **add\_interaction\_profile**(interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) [🔗](#class-openxractionmap-method-add-interaction-profile)

Add an interaction profile.

* * *

void **create\_default\_action\_sets**() [🔗](#class-openxractionmap-method-create-default-action-sets)

Setup this action set with our default actions.

* * *

[OpenXRActionSet](class_openxractionset.md#class-openxractionset) **find\_action\_set**(name: [String](class_string.md#class-string)) const [🔗](#class-openxractionmap-method-find-action-set)

Retrieve an action set by name.

* * *

[OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) **find\_interaction\_profile**(name: [String](class_string.md#class-string)) const [🔗](#class-openxractionmap-method-find-interaction-profile)

Find an interaction profile by its name (path).

* * *

[OpenXRActionSet](class_openxractionset.md#class-openxractionset) **get\_action\_set**(idx: [int](class_int.md#class-int)) const [🔗](#class-openxractionmap-method-get-action-set)

Retrieve the action set at this index.

* * *

[int](class_int.md#class-int) **get\_action\_set\_count**() const [🔗](#class-openxractionmap-method-get-action-set-count)

Retrieve the number of actions sets in our action map.

* * *

[OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile) **get\_interaction\_profile**(idx: [int](class_int.md#class-int)) const [🔗](#class-openxractionmap-method-get-interaction-profile)

Get the interaction profile at this index.

* * *

[int](class_int.md#class-int) **get\_interaction\_profile\_count**() const [🔗](#class-openxractionmap-method-get-interaction-profile-count)

Retrieve the number of interaction profiles in our action map.

* * *

void **remove\_action\_set**(action\_set: [OpenXRActionSet](class_openxractionset.md#class-openxractionset)) [🔗](#class-openxractionmap-method-remove-action-set)

Remove an action set.

* * *

void **remove\_interaction\_profile**(interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) [🔗](#class-openxractionmap-method-remove-interaction-profile)

Remove an interaction profile.

[Previous](class_openxractionbindingmodifier.md "OpenXRActionBindingModifier") [Next](class_openxractionset.md "OpenXRActionSet")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxractionbindingmodifier.md "OpenXRActionBindingModifier") [Next](class_openxractionset.md "OpenXRActionSet")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).