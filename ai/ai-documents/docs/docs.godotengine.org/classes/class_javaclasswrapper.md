---
title: JavaClassWrapper — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_javaclasswrapper.html
crawled_at: "2026-08-13T10:36:08+12:00"
content_hash: 34760efcfe26342a38f753bc03437059c5a5304e4556b572bfdd16d088e7a6bc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JavaClassWrapper

* * *

# JavaClassWrapper

**Inherits:** [Object](class_object.md#class-object)

Provides access to the Java Native Interface.

## Description

The JavaClassWrapper singleton provides a way for the Godot application to send and receive data through the [Java Native Interface](https://developer.android.com/training/articles/perf-jni) (JNI).

**Note:** This singleton is only available in Android builds.

```
var LocalDateTime = JavaClassWrapper.wrap("java.time.LocalDateTime")
var DateTimeFormatter = JavaClassWrapper.wrap("java.time.format.DateTimeFormatter")

var datetime = LocalDateTime.now()
var formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")

print(datetime.format(formatter))

```

**Warning:** When calling Java methods, be sure to check [get\_exception()](#class-javaclasswrapper-method-get-exception) to check if the method threw an exception.

## Tutorials

- [Integrating with Android APIs](../tutorials/platform/android/javaclasswrapper_and_androidruntimeplugin.md)


## Methods

|     |     |
| --- | --- |
| [JavaObject](class_javaobject.md#class-javaobject) | [get\_exception](#class-javaclasswrapper-method-get-exception)() |
| [JavaClass](class_javaclass.md#class-javaclass) | [wrap](#class-javaclasswrapper-method-wrap)(name: [String](class_string.md#class-string)) |

* * *

## Method Descriptions

[JavaObject](class_javaobject.md#class-javaobject) **get\_exception**() [🔗](#class-javaclasswrapper-method-get-exception)

Returns the Java exception from the last call into a Java class. If there was no exception, it will return `null`.

**Note:** This method only works on Android. On every other platform, this method will always return `null`.

* * *

[JavaClass](class_javaclass.md#class-javaclass) **wrap**(name: [String](class_string.md#class-string)) [🔗](#class-javaclasswrapper-method-wrap)

Wraps a class defined in Java, and returns it as a [JavaClass](class_javaclass.md#class-javaclass) [Object](class_object.md#class-object) type that Godot can interact with.

When wrapping inner (nested) classes, use `$` instead of `.` to separate them. For example, `JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")` wraps the **WindowManager.LayoutParams** class.

**Note:** To invoke a constructor, call a method with the same name as the class. For example:

```
var Intent = JavaClassWrapper.wrap("android.content.Intent")
var intent = Intent.Intent()

```

**Note:** This method only works on Android. On every other platform, this method does nothing and returns an empty [JavaClass](class_javaclass.md#class-javaclass).

[Previous](class_javaclass.md "JavaClass") [Next](class_javaobject.md "JavaObject")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_javaclass.md "JavaClass") [Next](class_javaobject.md "JavaObject")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).