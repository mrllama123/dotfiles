---
title: ResourcePreloader — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourcepreloader.html
crawled_at: "2026-08-13T10:26:06+12:00"
content_hash: 8002d14b22ce0d85857d3e122b9742cafb8d655ac2af215cbcc076f8e1e71d03
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourcePreloader

* * *

# ResourcePreloader

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to preload sub-resources inside a scene.

## Description

This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader. You can add the resources using the ResourcePreloader tab when the node is selected.

GDScript has a simplified [@GDScript.preload()](class_@gdscript.md#class-gdscript-method-preload) built-in method which can be used in most situations, leaving the use of **ResourcePreloader** for more advanced scenarios.

## Methods

|     |     |
| --- | --- |
| void | [add\_resource](#class-resourcepreloader-method-add-resource)(name: [StringName](class_stringname.md#class-stringname), resource: [Resource](class_resource.md#class-resource)) |
| [Resource](class_resource.md#class-resource) | [get\_resource](#class-resourcepreloader-method-get-resource)(name: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_resource\_list](#class-resourcepreloader-method-get-resource-list)() const |
| [bool](class_bool.md#class-bool) | [has\_resource](#class-resourcepreloader-method-has-resource)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_resource](#class-resourcepreloader-method-remove-resource)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_resource](#class-resourcepreloader-method-rename-resource)(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) |

* * *

## Method Descriptions

void **add\_resource**(name: [StringName](class_stringname.md#class-stringname), resource: [Resource](class_resource.md#class-resource)) [🔗](#class-resourcepreloader-method-add-resource)

Adds a resource to the preloader with the given `name`. If a resource with the given `name` already exists, the new resource will be renamed to " `name` N" where N is an incrementing number starting from 2.

* * *

[Resource](class_resource.md#class-resource) **get\_resource**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-resourcepreloader-method-get-resource)

Returns the resource associated to `name`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_resource\_list**() const [🔗](#class-resourcepreloader-method-get-resource-list)

Returns the list of resources inside the preloader.

* * *

[bool](class_bool.md#class-bool) **has\_resource**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-resourcepreloader-method-has-resource)

Returns `true` if the preloader contains a resource associated to `name`.

* * *

void **remove\_resource**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-resourcepreloader-method-remove-resource)

Removes the resource associated to `name` from the preloader.

* * *

void **rename\_resource**(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) [🔗](#class-resourcepreloader-method-rename-resource)

Renames a resource inside the preloader from `name` to `newname`.

[Previous](class_remotetransform3d.md "RemoteTransform3D") [Next](class_retargetmodifier3d.md "RetargetModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_remotetransform3d.md "RemoteTransform3D") [Next](class_retargetmodifier3d.md "RetargetModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).