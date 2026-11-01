---
title: RDUniform — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rduniform.html
crawled_at: "2026-08-13T10:26:09+12:00"
content_hash: ba9d680be4eb6c4c385e2b96740cbfdc182e84de5f28599fa7b1a2a8d7c45cb6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDUniform

* * *

# RDUniform

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Shader uniform (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [binding](#class-rduniform-property-binding) | `0` |
| [UniformType](class_renderingdevice.md#enum-renderingdevice-uniformtype) | [uniform\_type](#class-rduniform-property-uniform-type) | `3` |

## Methods

|     |     |
| --- | --- |
| void | [add\_id](#class-rduniform-method-add-id)(id: [RID](class_rid.md#class-rid)) |
| void | [clear\_ids](#class-rduniform-method-clear-ids)() |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [get\_ids](#class-rduniform-method-get-ids)() const |

* * *

## Property Descriptions

[int](class_int.md#class-int) **binding** = `0` [🔗](#class-rduniform-property-binding)

- void **set\_binding**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_binding**()


The uniform's binding.

* * *

[UniformType](class_renderingdevice.md#enum-renderingdevice-uniformtype) **uniform\_type** = `3` [🔗](#class-rduniform-property-uniform-type)

- void **set\_uniform\_type**(value: [UniformType](class_renderingdevice.md#enum-renderingdevice-uniformtype))

- [UniformType](class_renderingdevice.md#enum-renderingdevice-uniformtype) **get\_uniform\_type**()


The uniform's data type.

* * *

## Method Descriptions

void **add\_id**(id: [RID](class_rid.md#class-rid)) [🔗](#class-rduniform-method-add-id)

Binds the given id to the uniform. The data associated with the id is then used when the uniform is passed to a shader.

* * *

void **clear\_ids**() [🔗](#class-rduniform-method-clear-ids)

Unbinds all ids currently bound to the uniform.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_ids**() const [🔗](#class-rduniform-method-get-ids)

Returns an array of all ids currently bound to the uniform.

[Previous](class_rdtextureview.md "RDTextureView") [Next](class_rdvertexattribute.md "RDVertexAttribute")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdtextureview.md "RDTextureView") [Next](class_rdvertexattribute.md "RDVertexAttribute")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).