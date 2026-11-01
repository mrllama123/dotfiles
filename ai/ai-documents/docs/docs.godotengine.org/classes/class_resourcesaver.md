---
title: ResourceSaver — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourcesaver.html
crawled_at: "2026-08-13T10:41:22+12:00"
content_hash: 1f670b4d933b30a3e706c1bb2b3df85c2cab5b3384113f87993bc4f6b10827f3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceSaver

* * *

# ResourceSaver

**Inherits:** [Object](class_object.md#class-object)

A singleton for saving [Resource](class_resource.md#class-resource) s to the filesystem.

## Description

A singleton for saving resource types to the filesystem.

It uses the many [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver) classes registered in the engine (either built-in or from a plugin) to save resource data to text-based (e.g. `.tres` or `.tscn`) or binary files (e.g. `.res` or `.scn`).

## Methods

|     |     |
| --- | --- |
| void | [add\_resource\_format\_saver](#class-resourcesaver-method-add-resource-format-saver)(format\_saver: [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver), at\_front: [bool](class_bool.md#class-bool) = false) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_recognized\_extensions](#class-resourcesaver-method-get-recognized-extensions)(type: [Resource](class_resource.md#class-resource)) |
| [int](class_int.md#class-int) | [get\_resource\_id\_for\_path](#class-resourcesaver-method-get-resource-id-for-path)(path: [String](class_string.md#class-string), generate: [bool](class_bool.md#class-bool) = false) |
| void | [remove\_resource\_format\_saver](#class-resourcesaver-method-remove-resource-format-saver)(format\_saver: [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save](#class-resourcesaver-method-save)(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string) = "", flags: BitField\[ [SaverFlags](#enum-resourcesaver-saverflags)\] = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_uid](#class-resourcesaver-method-set-uid)(resource: [String](class_string.md#class-string), uid: [int](class_int.md#class-int)) |

* * *

## Enumerations

flags **SaverFlags**: [🔗](#enum-resourcesaver-saverflags)

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_NONE** = `0`

No resource saving option.

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_RELATIVE\_PATHS** = `1`

Save the resource with a path relative to the scene which uses it.

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_BUNDLE\_RESOURCES** = `2`

Bundles external resources.

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_CHANGE\_PATH** = `4`

Changes the [Resource.resource\_path](class_resource.md#class-resource-property-resource-path) of the saved resource to match its new location.

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_OMIT\_EDITOR\_PROPERTIES** = `8`

Do not save editor-specific metadata (identified by their `__editor` prefix).

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_SAVE\_BIG\_ENDIAN** = `16`

Save as big endian (see [FileAccess.big\_endian](class_fileaccess.md#class-fileaccess-property-big-endian)).

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_COMPRESS** = `32`

Compress the resource on save using [FileAccess.COMPRESSION\_ZSTD](class_fileaccess.md#class-fileaccess-constant-compression-zstd). Only available for binary resource types.

[SaverFlags](#enum-resourcesaver-saverflags) **FLAG\_REPLACE\_SUBRESOURCE\_PATHS** = `64`

Take over the paths of the saved subresources (see [Resource.take\_over\_path()](class_resource.md#class-resource-method-take-over-path)).

* * *

## Method Descriptions

void **add\_resource\_format\_saver**(format\_saver: [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver), at\_front: [bool](class_bool.md#class-bool) = false) [🔗](#class-resourcesaver-method-add-resource-format-saver)

Registers a new [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver). The ResourceSaver will use the ResourceFormatSaver as described in [save()](#class-resourcesaver-method-save).

This method is performed implicitly for ResourceFormatSavers written in GDScript (see [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver) for more information).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_recognized\_extensions**(type: [Resource](class_resource.md#class-resource)) [🔗](#class-resourcesaver-method-get-recognized-extensions)

Returns the list of extensions available for saving a resource of a given type.

* * *

[int](class_int.md#class-int) **get\_resource\_id\_for\_path**(path: [String](class_string.md#class-string), generate: [bool](class_bool.md#class-bool) = false) [🔗](#class-resourcesaver-method-get-resource-id-for-path)

Returns the resource ID for the given path. If `generate` is `true`, a new resource ID will be generated if one for the path is not found. If `generate` is `false` and the path is not found, [ResourceUID.INVALID\_ID](class_resourceuid.md#class-resourceuid-constant-invalid-id) is returned.

* * *

void **remove\_resource\_format\_saver**(format\_saver: [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver)) [🔗](#class-resourcesaver-method-remove-resource-format-saver)

Unregisters the given [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save**(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string) = "", flags: BitField\[ [SaverFlags](#enum-resourcesaver-saverflags)\] = 0) [🔗](#class-resourcesaver-method-save)

Saves a resource to disk to the given path, using a [ResourceFormatSaver](class_resourceformatsaver.md#class-resourceformatsaver) that recognizes the resource object. If `path` is empty, **ResourceSaver** will try to use [Resource.resource\_path](class_resource.md#class-resource-property-resource-path).

The `flags` bitmask can be specified to customize the save behavior.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success.

**Note:** When the project is running, any generated UID associated with the resource will not be saved as the required code is only executed in editor mode.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_uid**(resource: [String](class_string.md#class-string), uid: [int](class_int.md#class-int)) [🔗](#class-resourcesaver-method-set-uid)

Sets the UID of the given `resource` path to `uid`. You can generate a new UID using [ResourceUID.create\_id()](class_resourceuid.md#class-resourceuid-method-create-id).

Since resources will normally get a UID automatically, this method is only useful in very specific cases.

[Previous](class_resourceloader.md "ResourceLoader") [Next](class_resourceuid.md "ResourceUID")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceloader.md "ResourceLoader") [Next](class_resourceuid.md "ResourceUID")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).