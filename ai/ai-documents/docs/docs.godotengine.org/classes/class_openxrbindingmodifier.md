---
title: OpenXRBindingModifier — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrbindingmodifier.html
crawled_at: "2026-08-13T10:22:58+12:00"
content_hash: c633dec113d7d9cef972173e460ff7c073b0e7760df3274010c2766b13b46a9c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRBindingModifier

* * *

# OpenXRBindingModifier

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [OpenXRActionBindingModifier](class_openxractionbindingmodifier.md#class-openxractionbindingmodifier), [OpenXRIPBindingModifier](class_openxripbindingmodifier.md#class-openxripbindingmodifier)

Binding modifier base class.

## Description

Binding modifier base class. Subclasses implement various modifiers that alter how an OpenXR runtime processes inputs.

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [\_get\_description](#class-openxrbindingmodifier-private-method-get-description)() virtualrequiredconst |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [\_get\_ip\_modification](#class-openxrbindingmodifier-private-method-get-ip-modification)() virtualrequired |

* * *

## Method Descriptions

[String](class_string.md#class-string) **\_get\_description**() virtualrequiredconst [🔗](#class-openxrbindingmodifier-private-method-get-description)

Return the description of this class that is used for the title bar of the binding modifier editor.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **\_get\_ip\_modification**() virtualrequired [🔗](#class-openxrbindingmodifier-private-method-get-ip-modification)

Returns the data that is sent to OpenXR when submitting the suggested interacting bindings this modifier is a part of.

**Note:** This must be data compatible with an `XrBindingModificationBaseHeaderKHR` structure.

[Previous](class_openxranalogthresholdmodifier.md "OpenXRAnalogThresholdModifier") [Next](class_openxrdpadbindingmodifier.md "OpenXRDpadBindingModifier")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxranalogthresholdmodifier.md "OpenXRAnalogThresholdModifier") [Next](class_openxrdpadbindingmodifier.md "OpenXRDpadBindingModifier")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).