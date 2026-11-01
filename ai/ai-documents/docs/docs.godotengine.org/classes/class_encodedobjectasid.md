---
title: EncodedObjectAsID — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_encodedobjectasid.html
crawled_at: "2026-08-13T10:30:25+12:00"
content_hash: f95218bfa92d9b315cd3e22cf7dde15a3754dc84b659aab081646e26e65f43d9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EncodedObjectAsID

* * *

# EncodedObjectAsID

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Holds a reference to an [Object](class_object.md#class-object)'s instance ID.

## Description

Utility class which holds a reference to the internal identifier of an [Object](class_object.md#class-object) instance, as given by [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id). This ID can then be used to retrieve the object instance with [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id).

This class is used internally by the editor inspector and script debugger, but can also be used in plugins to pass and display objects as their IDs.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [object\_id](#class-encodedobjectasid-property-object-id) | `0` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **object\_id** = `0` [🔗](#class-encodedobjectasid-property-object-id)

- void **set\_object\_id**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_object\_id**()


The [Object](class_object.md#class-object) identifier stored in this **EncodedObjectAsID** instance. The object instance can be retrieved with [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id).

[Previous](class_editorvcsinterface.md "EditorVCSInterface") [Next](class_enetconnection.md "ENetConnection")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorvcsinterface.md "EditorVCSInterface") [Next](class_enetconnection.md "ENetConnection")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).