---
title: RemoteTransform2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_remotetransform2d.html
crawled_at: "2026-08-13T10:37:26+12:00"
content_hash: 32403ae183846f18d1a9008e6f75eba9b15976c4714171250404d631eaf48552
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RemoteTransform2D

* * *

# RemoteTransform2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

RemoteTransform2D pushes its own [Transform2D](class_transform2d.md#class-transform2d) to another [Node2D](class_node2d.md#class-node2d) derived node in the scene.

## Description

RemoteTransform2D pushes its own [Transform2D](class_transform2d.md#class-transform2d) to another [Node2D](class_node2d.md#class-node2d) derived node (called the remote node) in the scene.

It can be set to update another node's position, rotation and/or scale. It can use either global or local coordinates.

## Properties

|     |     |     |
| --- | --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [remote\_path](#class-remotetransform2d-property-remote-path) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [update\_position](#class-remotetransform2d-property-update-position) | `true` |
| [bool](class_bool.md#class-bool) | [update\_rotation](#class-remotetransform2d-property-update-rotation) | `true` |
| [bool](class_bool.md#class-bool) | [update\_scale](#class-remotetransform2d-property-update-scale) | `true` |
| [bool](class_bool.md#class-bool) | [use\_global\_coordinates](#class-remotetransform2d-property-use-global-coordinates) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [force\_update\_cache](#class-remotetransform2d-method-force-update-cache)() |

* * *

## Property Descriptions

[NodePath](class_nodepath.md#class-nodepath) **remote\_path** = `NodePath("")` [🔗](#class-remotetransform2d-property-remote-path)

- void **set\_remote\_node**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_remote\_node**()


The [NodePath](class_nodepath.md#class-nodepath) to the remote node, relative to the RemoteTransform2D's position in the scene.

* * *

[bool](class_bool.md#class-bool) **update\_position** = `true` [🔗](#class-remotetransform2d-property-update-position)

- void **set\_update\_position**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_update\_position**()


If `true`, the remote node's position is updated.

* * *

[bool](class_bool.md#class-bool) **update\_rotation** = `true` [🔗](#class-remotetransform2d-property-update-rotation)

- void **set\_update\_rotation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_update\_rotation**()


If `true`, the remote node's rotation is updated.

* * *

[bool](class_bool.md#class-bool) **update\_scale** = `true` [🔗](#class-remotetransform2d-property-update-scale)

- void **set\_update\_scale**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_update\_scale**()


If `true`, the remote node's scale is updated.

* * *

[bool](class_bool.md#class-bool) **use\_global\_coordinates** = `true` [🔗](#class-remotetransform2d-property-use-global-coordinates)

- void **set\_use\_global\_coordinates**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_global\_coordinates**()


If `true`, global coordinates are used. If `false`, local coordinates are used.

* * *

## Method Descriptions

void **force\_update\_cache**() [🔗](#class-remotetransform2d-method-force-update-cache)

**RemoteTransform2D** caches the remote node. It may not notice if the remote node disappears; [force\_update\_cache()](#class-remotetransform2d-method-force-update-cache) forces it to update the cache again.

[Previous](class_reflectionprobe.md "ReflectionProbe") [Next](class_remotetransform3d.md "RemoteTransform3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_reflectionprobe.md "ReflectionProbe") [Next](class_remotetransform3d.md "RemoteTransform3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).