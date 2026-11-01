---
title: JavaScriptObject — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_javascriptobject.html
crawled_at: "2026-08-13T10:40:26+12:00"
content_hash: 75fbe3a61f1f54f27ac184f07c6fa2cdf474390f19b228f1270f1d0a5215ece8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JavaScriptObject

* * *

# JavaScriptObject

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A wrapper class for web native JavaScript objects.

## Description

JavaScriptObject is used to interact with JavaScript objects retrieved or created via [JavaScriptBridge.get\_interface()](class_javascriptbridge.md#class-javascriptbridge-method-get-interface), [JavaScriptBridge.create\_object()](class_javascriptbridge.md#class-javascriptbridge-method-create-object), or [JavaScriptBridge.create\_callback()](class_javascriptbridge.md#class-javascriptbridge-method-create-callback).

```
extends Node

var _my_js_callback = JavaScriptBridge.create_callback(myCallback) # This reference must be kept
var console = JavaScriptBridge.get_interface("console")

func _init():
    var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
    print(buf) # Prints [JavaScriptObject:OBJECT_ID]
    var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # new Uint8Array(buf)
    uint8arr[1] = 255
    prints(uint8arr[1], uint8arr.byteLength) # Prints "255 10"

    # Prints "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]" in the browser's console.
    console.log(uint8arr)

    # Equivalent of JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
    JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)

func myCallback(args):
    # Will be called with the parameters passed to the "forEach" callback
    # [0, 0, [JavaScriptObject:1173]]
    # [255, 1, [JavaScriptObject:1173]]
    # ...
    # [0, 9, [JavaScriptObject:1180]]
    print(args)

```

**Note:** Only available in the Web platform.

[Previous](class_javascriptbridge.md "JavaScriptBridge") [Next](class_jnisingleton.md "JNISingleton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_javascriptbridge.md "JavaScriptBridge") [Next](class_jnisingleton.md "JNISingleton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).