---
title: SkinReference — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skinreference.html
crawled_at: "2026-08-13T10:18:57+12:00"
content_hash: 1211592436a1430609bf91224e02a059f098408fb46afdd0e37503a636a6567b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkinReference

* * *

# SkinReference

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A reference-counted holder object for a skeleton RID used in the [RenderingServer](class_renderingserver.md#class-renderingserver).

## Description

An internal object containing a mapping from a [Skin](class_skin.md#class-skin) used within the context of a particular [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) to refer to the skeleton's [RID](class_rid.md#class-rid) in the RenderingServer.

See also [MeshInstance3D.get\_skin\_reference()](class_meshinstance3d.md#class-meshinstance3d-method-get-skin-reference) and [RenderingServer.instance\_attach\_skeleton()](class_renderingserver.md#class-renderingserver-method-instance-attach-skeleton).

Note that despite the similar naming, the skeleton RID used in the [RenderingServer](class_renderingserver.md#class-renderingserver) does not have a direct one-to-one correspondence to a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node.

In particular, a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node with no [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) children may be unknown to the [RenderingServer](class_renderingserver.md#class-renderingserver).

On the other hand, a [Skeleton3D](class_skeleton3d.md#class-skeleton3d) with multiple [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) nodes which each have different [MeshInstance3D.skin](class_meshinstance3d.md#class-meshinstance3d-property-skin) objects may have multiple SkinReference instances (and hence, multiple skeleton [RID](class_rid.md#class-rid) s).

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_skeleton](#class-skinreference-method-get-skeleton)() const |
| [Skin](class_skin.md#class-skin) | [get\_skin](#class-skinreference-method-get-skin)() const |

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_skeleton**() const [🔗](#class-skinreference-method-get-skeleton)

Returns the [RID](class_rid.md#class-rid) owned by this SkinReference, as returned by [RenderingServer.skeleton\_create()](class_renderingserver.md#class-renderingserver-method-skeleton-create).

* * *

[Skin](class_skin.md#class-skin) **get\_skin**() const [🔗](#class-skinreference-method-get-skin)

Returns the [Skin](class_skin.md#class-skin) connected to this SkinReference. In the case of [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) with no [MeshInstance3D.skin](class_meshinstance3d.md#class-meshinstance3d-property-skin) assigned, this will reference an internal default [Skin](class_skin.md#class-skin) owned by that [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d).

Note that a single [Skin](class_skin.md#class-skin) may have more than one **SkinReference** in the case that it is shared by meshes across multiple [Skeleton3D](class_skeleton3d.md#class-skeleton3d) nodes.

[Previous](class_shaderincludedb.md "ShaderIncludeDB") [Next](class_streampeer.md "StreamPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shaderincludedb.md "ShaderIncludeDB") [Next](class_streampeer.md "StreamPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).