---
title: GDScript — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gdscript.html
crawled_at: "2026-08-13T10:26:05+12:00"
content_hash: 7f74b0bcbfdf14e658502935130b0298bcb4eb4ac6dae86da9d91e9c86be7621
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GDScript

* * *

# GDScript

**Inherits:** [Script](class_script.md#class-script) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A script implemented in the GDScript programming language.

## Description

A script implemented in the GDScript programming language, saved with the `.gd` extension. The script extends the functionality of all objects that instantiate it.

Calling [new()](#class-gdscript-method-new) creates a new instance of the script. [Object.set\_script()](class_object.md#class-object-method-set-script) extends an existing object, if that object's class matches one of the script's base classes.

If you are looking for GDScript's built-in functions, see [@GDScript](class_@gdscript.md#class-gdscript) instead.

## Tutorials

- [GDScript documentation index](../tutorials/scripting/gdscript/index.md)


## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [new](#class-gdscript-method-new)(...) vararg |

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **new**(...) vararg [🔗](#class-gdscript-method-new)

Returns a new instance of the script.

```
var MyClass = load("myclass.gd")
var instance = MyClass.new()
print(instance.get_script() == MyClass) # Prints true

```

[Previous](class_gdextension.md "GDExtension") [Next](class_gdscriptsyntaxhighlighter.md "GDScriptSyntaxHighlighter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gdextension.md "GDExtension") [Next](class_gdscriptsyntaxhighlighter.md "GDScriptSyntaxHighlighter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).