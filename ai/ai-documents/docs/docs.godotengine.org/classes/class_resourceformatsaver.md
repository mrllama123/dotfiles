---
title: ResourceFormatSaver — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceformatsaver.html
crawled_at: "2026-08-13T10:18:46+12:00"
content_hash: 063e0a52cc7458afd3e5bf3e56c68f2ce95b62d20f0cb381e7b6d341b0517a3e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceFormatSaver

* * *

# ResourceFormatSaver

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Saves a specific resource type to a file.

## Description

The engine can save resources when you do it from the editor, or when you use the [ResourceSaver](class_resourcesaver.md#class-resourcesaver) singleton. This is accomplished thanks to multiple **ResourceFormatSaver** s, each handling its own format and called automatically by the engine.

By default, Godot saves resources as `.tres` (text-based), `.res` (binary) or another built-in format, but you can choose to create your own format by extending this class. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatSavers, it will be called automatically when saving resources of its recognized type(s). You may also implement a [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader).

## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_recognized\_extensions](#class-resourceformatsaver-private-method-get-recognized-extensions)(resource: [Resource](class_resource.md#class-resource)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_recognize](#class-resourceformatsaver-private-method-recognize)(resource: [Resource](class_resource.md#class-resource)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_recognize\_path](#class-resourceformatsaver-private-method-recognize-path)(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string)) virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_save](#class-resourceformatsaver-private-method-save)(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_set\_uid](#class-resourceformatsaver-private-method-set-uid)(path: [String](class_string.md#class-string), uid: [int](class_int.md#class-int)) virtual |

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_recognized\_extensions**(resource: [Resource](class_resource.md#class-resource)) virtualconst [🔗](#class-resourceformatsaver-private-method-get-recognized-extensions)

Returns the list of extensions available for saving the resource object, provided it is recognized (see [\_recognize()](#class-resourceformatsaver-private-method-recognize)).

* * *

[bool](class_bool.md#class-bool) **\_recognize**(resource: [Resource](class_resource.md#class-resource)) virtualconst [🔗](#class-resourceformatsaver-private-method-recognize)

Returns whether the given resource object can be saved by this saver.

* * *

[bool](class_bool.md#class-bool) **\_recognize\_path**(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string)) virtualconst [🔗](#class-resourceformatsaver-private-method-recognize-path)

Returns `true` if this saver handles a given save path and `false` otherwise.

If this method is not implemented, the default behavior returns whether the path's extension is within the ones provided by [\_get\_recognized\_extensions()](#class-resourceformatsaver-private-method-get-recognized-extensions).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_save**(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int)) virtual [🔗](#class-resourceformatsaver-private-method-save)

Saves the given resource object to a file at the target `path`. `flags` is a bitmask composed with [SaverFlags](class_resourcesaver.md#enum-resourcesaver-saverflags) constants.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or an [Error](class_@globalscope.md#enum-globalscope-error) constant in case of failure.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_set\_uid**(path: [String](class_string.md#class-string), uid: [int](class_int.md#class-int)) virtual [🔗](#class-resourceformatsaver-private-method-set-uid)

Sets a new UID for the resource at the given `path`. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or an [Error](class_@globalscope.md#enum-globalscope-error) constant in case of failure.

[Previous](class_resourceformatloader.md "ResourceFormatLoader") [Next](class_resourceimporter.md "ResourceImporter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceformatloader.md "ResourceFormatLoader") [Next](class_resourceimporter.md "ResourceImporter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).