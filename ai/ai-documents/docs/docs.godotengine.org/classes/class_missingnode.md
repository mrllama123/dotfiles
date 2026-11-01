---
title: MissingNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_missingnode.html
crawled_at: "2026-08-13T10:24:28+12:00"
content_hash: 8ad51c686458ebbdd2f760ee7674fccddb258d8b78fb17669f6f318c3d74ef80
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MissingNode

* * *

# MissingNode

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An internal editor class intended for keeping the data of unrecognized nodes.

## Description

This is an internal editor class intended for keeping data of nodes of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in a scene.

**Warning:** Ignore missing nodes unless you know what you are doing. Existing properties on a missing node can be freely modified in code, regardless of the type they are intended to be.

## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [original\_class](#class-missingnode-property-original-class) |
| [String](class_string.md#class-string) | [original\_scene](#class-missingnode-property-original-scene) |
| [bool](class_bool.md#class-bool) | [recording\_properties](#class-missingnode-property-recording-properties) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **original\_class** [🔗](#class-missingnode-property-original-class)

- void **set\_original\_class**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_class**()


The name of the class this node was supposed to be (see [Object.get\_class()](class_object.md#class-object-method-get-class)).

* * *

[String](class_string.md#class-string) **original\_scene** [🔗](#class-missingnode-property-original-scene)

- void **set\_original\_scene**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_scene**()


Returns the path of the scene this node was instance of originally.

* * *

[bool](class_bool.md#class-bool) **recording\_properties** [🔗](#class-missingnode-property-recording-properties)

- void **set\_recording\_properties**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_recording\_properties**()


If `true`, allows new properties to be set along with existing ones. If `false`, only existing properties' values can be set, and new properties cannot be added.

[Previous](class_meshinstance3d.md "MeshInstance3D") [Next](class_modifierbonetarget3d.md "ModifierBoneTarget3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshinstance3d.md "MeshInstance3D") [Next](class_modifierbonetarget3d.md "ModifierBoneTarget3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).