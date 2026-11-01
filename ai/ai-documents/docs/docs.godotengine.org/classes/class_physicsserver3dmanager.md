---
title: PhysicsServer3DManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver3dmanager.html
crawled_at: "2026-08-13T10:32:55+12:00"
content_hash: 636ab77109ec8c743f4bd12822bec7191e7812d47bdeb5eb8707875b76b1f231
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer3DManager

* * *

# PhysicsServer3DManager

**Inherits:** [Object](class_object.md#class-object)

A singleton for managing [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) implementations.

## Description

**PhysicsServer3DManager** is the API for registering [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) implementations and for setting the default implementation.

**Note:** It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.

## Methods

|     |     |
| --- | --- |
| void | [register\_server](#class-physicsserver3dmanager-method-register-server)(name: [String](class_string.md#class-string), create\_callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_default\_server](#class-physicsserver3dmanager-method-set-default-server)(name: [String](class_string.md#class-string), priority: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

void **register\_server**(name: [String](class_string.md#class-string), create\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver3dmanager-method-register-server)

Register a [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) implementation by passing a `name` and a [Callable](class_callable.md#class-callable) that returns a [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) object.

* * *

void **set\_default\_server**(name: [String](class_string.md#class-string), priority: [int](class_int.md#class-int)) [🔗](#class-physicsserver3dmanager-method-set-default-server)

Set the default [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) implementation to the one identified by `name`, if `priority` is greater than the priority of the current default implementation.

[Previous](class_physicsserver3dextension.md "PhysicsServer3DExtension") [Next](class_physicsserver3drenderingserverhandler.md "PhysicsServer3DRenderingServerHandler")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver3dextension.md "PhysicsServer3DExtension") [Next](class_physicsserver3drenderingserverhandler.md "PhysicsServer3DRenderingServerHandler")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).