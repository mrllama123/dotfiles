---
title: MissingResource — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_missingresource.html
crawled_at: "2026-08-13T10:36:27+12:00"
content_hash: e4a3139c00f2805a321c5f24a8480a4d26f4e537de6f780e47ac60673f043066
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MissingResource

* * *

# MissingResource

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An internal editor class intended for keeping the data of unrecognized resources.

## Description

This is an internal editor class intended for keeping data of resources of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in a scene.

**Warning:** Ignore missing resources unless you know what you are doing. Existing properties on a missing resource can be freely modified in code, regardless of the type they are intended to be.

## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [original\_class](#class-missingresource-property-original-class) |
| [bool](class_bool.md#class-bool) | [recording\_properties](#class-missingresource-property-recording-properties) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **original\_class** [🔗](#class-missingresource-property-original-class)

- void **set\_original\_class**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_original\_class**()


The name of the class this resource was supposed to be (see [Object.get\_class()](class_object.md#class-object-method-get-class)).

* * *

[bool](class_bool.md#class-bool) **recording\_properties** [🔗](#class-missingresource-property-recording-properties)

- void **set\_recording\_properties**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_recording\_properties**()


If set to `true`, allows new properties to be added on top of the existing ones with [Object.set()](class_object.md#class-object-method-set).

[Previous](class_meshtexture.md "MeshTexture") [Next](class_multimesh.md "MultiMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_meshtexture.md "MeshTexture") [Next](class_multimesh.md "MultiMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).