---
title: WeakRef — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_weakref.html
crawled_at: "2026-08-13T10:20:46+12:00"
content_hash: fb9f9491183ac56f8b2804f82c9173677b221834a70d70f0516706f68ca18d5a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WeakRef

* * *

# WeakRef

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds an [Object](class_object.md#class-object). If the object is [RefCounted](class_refcounted.md#class-refcounted), it doesn't update the reference count.

## Description

A weakref can hold a [RefCounted](class_refcounted.md#class-refcounted) without contributing to the reference counter. A weakref can be created from an [Object](class_object.md#class-object) using [@GlobalScope.weakref()](class_@globalscope.md#class-globalscope-method-weakref). If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_ref](#class-weakref-method-get-ref)() const |

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_ref**() const [🔗](#class-weakref-method-get-ref)

Returns the [Object](class_object.md#class-object) this weakref is referring to. Returns `null` if that object no longer exists.

[Previous](class_upnpdevice.md "UPNPDevice") [Next](class_webrtcdatachannel.md "WebRTCDataChannel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_upnpdevice.md "UPNPDevice") [Next](class_webrtcdatachannel.md "WebRTCDataChannel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).