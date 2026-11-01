---
title: ResourceUID — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceuid.html
crawled_at: "2026-08-13T10:42:12+12:00"
content_hash: ec384eedb6c3b64353ca5c122e09339bbbbf5e834ee1a27a57341959579b2990
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceUID

* * *

# ResourceUID

**Inherits:** [Object](class_object.md#class-object)

A singleton that manages the unique identifiers of all resources within a project.

## Description

Resource UIDs (Unique IDentifiers) allow the engine to keep references between resources intact, even if files are renamed or moved. They can be accessed with `uid://`.

**ResourceUID** keeps track of all registered resource UIDs in a project, generates new UIDs, and converts between their string and integer representations.

## Methods

|     |     |
| --- | --- |
| void | [add\_id](#class-resourceuid-method-add-id)(id: [int](class_int.md#class-int), path: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [create\_id](#class-resourceuid-method-create-id)() |
| [int](class_int.md#class-int) | [create\_id\_for\_path](#class-resourceuid-method-create-id-for-path)(path: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [ensure\_path](#class-resourceuid-method-ensure-path)(path\_or\_uid: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [get\_id\_path](#class-resourceuid-method-get-id-path)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_id](#class-resourceuid-method-has-id)(id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [id\_to\_text](#class-resourceuid-method-id-to-text)(id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [path\_to\_uid](#class-resourceuid-method-path-to-uid)(path: [String](class_string.md#class-string)) static |
| void | [remove\_id](#class-resourceuid-method-remove-id)(id: [int](class_int.md#class-int)) |
| void | [set\_id](#class-resourceuid-method-set-id)(id: [int](class_int.md#class-int), path: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [text\_to\_id](#class-resourceuid-method-text-to-id)(text\_id: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [uid\_to\_path](#class-resourceuid-method-uid-to-path)(uid: [String](class_string.md#class-string)) static |

* * *

## Constants

**INVALID\_ID** = `-1` [🔗](#class-resourceuid-constant-invalid-id)

The value to use for an invalid UID, for example if the resource could not be loaded.

Its text representation is `uid://<invalid>`.

* * *

## Method Descriptions

void **add\_id**(id: [int](class_int.md#class-int), path: [String](class_string.md#class-string)) [🔗](#class-resourceuid-method-add-id)

Adds a new UID value which is mapped to the given resource path.

Fails with an error if the UID already exists, so be sure to check [has\_id()](#class-resourceuid-method-has-id) beforehand, or use [set\_id()](#class-resourceuid-method-set-id) instead.

* * *

[int](class_int.md#class-int) **create\_id**() [🔗](#class-resourceuid-method-create-id)

Generates a random resource UID which is guaranteed to be unique within the list of currently loaded UIDs.

In order for this UID to be registered, you must call [add\_id()](#class-resourceuid-method-add-id) or [set\_id()](#class-resourceuid-method-set-id).

* * *

[int](class_int.md#class-int) **create\_id\_for\_path**(path: [String](class_string.md#class-string)) [🔗](#class-resourceuid-method-create-id-for-path)

Like [create\_id()](#class-resourceuid-method-create-id), but the UID is seeded with the provided `path` and project name. UIDs generated for that path will be always the same within the current project.

* * *

[String](class_string.md#class-string) **ensure\_path**(path\_or\_uid: [String](class_string.md#class-string)) static [🔗](#class-resourceuid-method-ensure-path)

Returns a path, converting `path_or_uid` if necessary. Prints an error if provided an invalid UID.

* * *

[String](class_string.md#class-string) **get\_id\_path**(id: [int](class_int.md#class-int)) const [🔗](#class-resourceuid-method-get-id-path)

Returns the path that the given UID value refers to.

Fails with an error if the UID does not exist, so be sure to check [has\_id()](#class-resourceuid-method-has-id) beforehand.

* * *

[bool](class_bool.md#class-bool) **has\_id**(id: [int](class_int.md#class-int)) const [🔗](#class-resourceuid-method-has-id)

Returns whether the given UID value is known to the cache.

* * *

[String](class_string.md#class-string) **id\_to\_text**(id: [int](class_int.md#class-int)) const [🔗](#class-resourceuid-method-id-to-text)

Converts the given UID to a `uid://` string value.

* * *

[String](class_string.md#class-string) **path\_to\_uid**(path: [String](class_string.md#class-string)) static [🔗](#class-resourceuid-method-path-to-uid)

Converts the provided resource `path` to a UID. Returns the unchanged path if it has no associated UID.

* * *

void **remove\_id**(id: [int](class_int.md#class-int)) [🔗](#class-resourceuid-method-remove-id)

Removes a loaded UID value from the cache.

Fails with an error if the UID does not exist, so be sure to check [has\_id()](#class-resourceuid-method-has-id) beforehand.

* * *

void **set\_id**(id: [int](class_int.md#class-int), path: [String](class_string.md#class-string)) [🔗](#class-resourceuid-method-set-id)

Updates the resource path of an existing UID.

Fails with an error if the UID does not exist, so be sure to check [has\_id()](#class-resourceuid-method-has-id) beforehand, or use [add\_id()](#class-resourceuid-method-add-id) instead.

* * *

[int](class_int.md#class-int) **text\_to\_id**(text\_id: [String](class_string.md#class-string)) const [🔗](#class-resourceuid-method-text-to-id)

Extracts the UID value from the given `uid://` string.

* * *

[String](class_string.md#class-string) **uid\_to\_path**(uid: [String](class_string.md#class-string)) static [🔗](#class-resourceuid-method-uid-to-path)

Converts the provided `uid` to a path. Prints an error if the UID is invalid.

[Previous](class_resourcesaver.md "ResourceSaver") [Next](class_scenemultiplayer.md "SceneMultiplayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourcesaver.md "ResourceSaver") [Next](class_scenemultiplayer.md "SceneMultiplayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).