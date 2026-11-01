---
title: ShaderIncludeDB — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shaderincludedb.html
crawled_at: "2026-08-13T10:35:32+12:00"
content_hash: d970540bcf28f397122d006bdbf1a9357546b78949bba8b595a51c24f8c5f44c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShaderIncludeDB

* * *

# ShaderIncludeDB

**Inherits:** [Object](class_object.md#class-object)

Internal database of built in shader include files.

## Description

This object contains shader fragments from Godot's internal shaders. These can be used when access to internal uniform buffers and/or internal functions is required for instance when composing compositor effects or compute shaders. Only fragments for the current rendering device are loaded.

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_built\_in\_include\_file](#class-shaderincludedb-method-get-built-in-include-file)(filename: [String](class_string.md#class-string)) static |
| [bool](class_bool.md#class-bool) | [has\_built\_in\_include\_file](#class-shaderincludedb-method-has-built-in-include-file)(filename: [String](class_string.md#class-string)) static |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [list\_built\_in\_include\_files](#class-shaderincludedb-method-list-built-in-include-files)() static |

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_built\_in\_include\_file**(filename: [String](class_string.md#class-string)) static [🔗](#class-shaderincludedb-method-get-built-in-include-file)

Returns the code for the built-in shader fragment. You can also access this in your shader code through `#include "filename"`.

* * *

[bool](class_bool.md#class-bool) **has\_built\_in\_include\_file**(filename: [String](class_string.md#class-string)) static [🔗](#class-shaderincludedb-method-has-built-in-include-file)

Returns `true` if an include file with this name exists.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **list\_built\_in\_include\_files**() static [🔗](#class-shaderincludedb-method-list-built-in-include-files)

Returns a list of built-in include files that are currently registered.

[Previous](class_semaphore.md "Semaphore") [Next](class_skinreference.md "SkinReference")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_semaphore.md "Semaphore") [Next](class_skinreference.md "SkinReference")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).