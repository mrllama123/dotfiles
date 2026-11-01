---
title: JavaObject — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_javaobject.html
crawled_at: "2026-08-13T10:29:23+12:00"
content_hash: 75e7fc780c33e7693542e112313a9734906e4bf974dc0ae5ee6748c45c1710a4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JavaObject

* * *

# JavaObject

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents an object from the Java Native Interface.

## Description

Represents an object from the Java Native Interface. It can be returned from Java methods called on [JavaClass](class_javaclass.md#class-javaclass) or other **JavaObject** s. See [JavaClassWrapper](class_javaclasswrapper.md#class-javaclasswrapper) for an example.

**Note:** This class only works on Android. On any other platform, this class does nothing.

**Note:** This class is not to be confused with [JavaScriptObject](class_javascriptobject.md#class-javascriptobject).

## Methods

|     |     |
| --- | --- |
| [JavaClass](class_javaclass.md#class-javaclass) | [get\_java\_class](#class-javaobject-method-get-java-class)() const |

* * *

## Method Descriptions

[JavaClass](class_javaclass.md#class-javaclass) **get\_java\_class**() const [🔗](#class-javaobject-method-get-java-class)

Returns the [JavaClass](class_javaclass.md#class-javaclass) that this object is an instance of.

[Previous](class_javaclasswrapper.md "JavaClassWrapper") [Next](class_javascriptbridge.md "JavaScriptBridge")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_javaclasswrapper.md "JavaClassWrapper") [Next](class_javascriptbridge.md "JavaScriptBridge")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).