---
title: InstancePlaceholder — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_instanceplaceholder.html
crawled_at: "2026-08-13T10:25:25+12:00"
content_hash: 33200a5aed63acf02031587f65502e9361414d1d01bdcb0167d401e2388c8518
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InstancePlaceholder

* * *

# InstancePlaceholder

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Placeholder for the root [Node](class_node.md#class-node) of a [PackedScene](class_packedscene.md#class-packedscene).

## Description

Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an **InstancePlaceholder** when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling [create\_instance()](#class-instanceplaceholder-method-create-instance). This is useful to avoid loading large scenes all at once by loading parts of it selectively.

**Note:** Like [Node](class_node.md#class-node), **InstancePlaceholder** does not have a transform. This causes any child nodes to be positioned relatively to the [Viewport](class_viewport.md#class-viewport) origin, rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.

## Methods

|     |     |
| --- | --- |
| [Node](class_node.md#class-node) | [create\_instance](#class-instanceplaceholder-method-create-instance)(replace: [bool](class_bool.md#class-bool) = false, custom\_scene: [PackedScene](class_packedscene.md#class-packedscene) = null) |
| [String](class_string.md#class-string) | [get\_instance\_path](#class-instanceplaceholder-method-get-instance-path)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_stored\_values](#class-instanceplaceholder-method-get-stored-values)(with\_order: [bool](class_bool.md#class-bool) = false) |

* * *

## Method Descriptions

[Node](class_node.md#class-node) **create\_instance**(replace: [bool](class_bool.md#class-bool) = false, custom\_scene: [PackedScene](class_packedscene.md#class-packedscene) = null) [🔗](#class-instanceplaceholder-method-create-instance)

Call this method to actually load in the node. The created node will be placed as a sibling _above_ the **InstancePlaceholder** in the scene tree. The [Node](class_node.md#class-node)'s reference is also returned for convenience.

**Note:** [create\_instance()](#class-instanceplaceholder-method-create-instance) is not thread-safe. Use [Object.call\_deferred()](class_object.md#class-object-method-call-deferred) if calling from a thread.

* * *

[String](class_string.md#class-string) **get\_instance\_path**() const [🔗](#class-instanceplaceholder-method-get-instance-path)

Gets the path to the [PackedScene](class_packedscene.md#class-packedscene) resource file that is loaded by default when calling [create\_instance()](#class-instanceplaceholder-method-create-instance). Not thread-safe. Use [Object.call\_deferred()](class_object.md#class-object-method-call-deferred) if calling from a thread.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_stored\_values**(with\_order: [bool](class_bool.md#class-bool) = false) [🔗](#class-instanceplaceholder-method-get-stored-values)

Returns the list of properties that will be applied to the node when [create\_instance()](#class-instanceplaceholder-method-create-instance) is called.

If `with_order` is `true`, a key named `.order` (note the leading period) is added to the dictionary. This `.order` key is an [Array](class_array.md#class-array) of [String](class_string.md#class-string) property names specifying the order in which properties will be applied (with index 0 being the first).

[Previous](class_importermeshinstance3d.md "ImporterMeshInstance3D") [Next](class_itemlist.md "ItemList")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_importermeshinstance3d.md "ImporterMeshInstance3D") [Next](class_itemlist.md "ItemList")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).