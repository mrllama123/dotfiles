---
title: JavaClass — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_javaclass.html
crawled_at: "2026-08-13T10:23:36+12:00"
content_hash: 41aa291c468703e13afaf09c253cd8f56347e38df4a39989a46a3573dc0b4d5b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JavaClass

* * *

# JavaClass

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a class from the Java Native Interface.

## Description

Represents a class from the Java Native Interface. It is returned from [JavaClassWrapper.wrap()](class_javaclasswrapper.md#class-javaclasswrapper-method-wrap).

**Note:** This class only works on Android. On any other platform, this class does nothing.

**Note:** This class is not to be confused with [JavaScriptObject](class_javascriptobject.md#class-javascriptobject).

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_java\_class\_name](#class-javaclass-method-get-java-class-name)() const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_java\_method\_list](#class-javaclass-method-get-java-method-list)() const |
| [JavaClass](#class-javaclass) | [get\_java\_parent\_class](#class-javaclass-method-get-java-parent-class)() const |

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_java\_class\_name**() const [🔗](#class-javaclass-method-get-java-class-name)

Returns the Java class name.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_java\_method\_list**() const [🔗](#class-javaclass-method-get-java-method-list)

Returns the object's Java methods and their signatures as an [Array](class_array.md#class-array) of dictionaries, in the same format as [Object.get\_method\_list()](class_object.md#class-object-method-get-method-list).

* * *

[JavaClass](#class-javaclass) **get\_java\_parent\_class**() const [🔗](#class-javaclass-method-get-java-parent-class)

Returns a **JavaClass** representing the Java parent class of this class.

[Previous](class_ip.md "IP") [Next](class_javaclasswrapper.md "JavaClassWrapper")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_ip.md "IP") [Next](class_javaclasswrapper.md "JavaClassWrapper")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).