---
title: PhysicsServer2DManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver2dmanager.html
crawled_at: "2026-08-13T10:29:40+12:00"
content_hash: 498becad1405b1139c0342e1a36c27813211647adaafa26c12800a8e79664423
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer2DManager

* * *

# PhysicsServer2DManager

**Inherits:** [Object](class_object.md#class-object)

A singleton for managing [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) implementations.

## Description

**PhysicsServer2DManager** is the API for registering [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) implementations and for setting the default implementation.

**Note:** It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.

## Methods

|     |     |
| --- | --- |
| void | [register\_server](#class-physicsserver2dmanager-method-register-server)(name: [String](class_string.md#class-string), create\_callback: [Callable](class_callable.md#class-callable)) |
| void | [set\_default\_server](#class-physicsserver2dmanager-method-set-default-server)(name: [String](class_string.md#class-string), priority: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

void **register\_server**(name: [String](class_string.md#class-string), create\_callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver2dmanager-method-register-server)

Register a [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) implementation by passing a `name` and a [Callable](class_callable.md#class-callable) that returns a [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) object.

* * *

void **set\_default\_server**(name: [String](class_string.md#class-string), priority: [int](class_int.md#class-int)) [🔗](#class-physicsserver2dmanager-method-set-default-server)

Set the default [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) implementation to the one identified by `name`, if `priority` is greater than the priority of the current default implementation.

[Previous](class_physicsserver2dextension.md "PhysicsServer2DExtension") [Next](class_physicsserver3d.md "PhysicsServer3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver2dextension.md "PhysicsServer2DExtension") [Next](class_physicsserver3d.md "PhysicsServer3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).