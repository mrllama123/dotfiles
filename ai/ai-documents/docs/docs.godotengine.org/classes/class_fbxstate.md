---
title: FBXState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fbxstate.html
crawled_at: "2026-08-13T10:31:56+12:00"
content_hash: 0cf11a8579381d85df3a90ba2769576c913d1a680e0460a3e8ec7bf656ac644f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FBXState

* * *

# FBXState

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [GLTFState](class_gltfstate.md#class-gltfstate) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

## Description

The FBXState handles the state data imported from FBX files.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_geometry\_helper\_nodes](#class-fbxstate-property-allow-geometry-helper-nodes) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_geometry\_helper\_nodes** = `false` [🔗](#class-fbxstate-property-allow-geometry-helper-nodes)

- void **set\_allow\_geometry\_helper\_nodes**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_allow\_geometry\_helper\_nodes**()


If `true`, the import process used auxiliary nodes called geometry helper nodes. These nodes help preserve the pivots and transformations of the original 3D model during import.

[Previous](class_fbxdocument.md "FBXDocument") [Next](class_fogmaterial.md "FogMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_fbxdocument.md "FBXDocument") [Next](class_fogmaterial.md "FogMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).