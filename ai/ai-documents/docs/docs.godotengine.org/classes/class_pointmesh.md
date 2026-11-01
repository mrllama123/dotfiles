---
title: PointMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pointmesh.html
crawled_at: "2026-08-13T10:40:28+12:00"
content_hash: b668b2f4f7548dc3d66a421ae328721e97841f75570c43c5d0f28b4e37684be2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PointMesh

* * *

# PointMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Mesh with a single point primitive.

## Description

A **PointMesh** is a primitive mesh composed of a single point. Instead of relying on triangles, points are rendered as a single rectangle on the screen with a constant size. They are intended to be used with particle systems, but can also be used as a cheap way to render billboarded sprites (for example in a point cloud).

In order to be displayed, point meshes must be used with a material that has a point size. The point size can be accessed in a shader with the `POINT_SIZE` built-in, or in a [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) by setting the [BaseMaterial3D.use\_point\_size](class_basematerial3d.md#class-basematerial3d-property-use-point-size) and [BaseMaterial3D.point\_size](class_basematerial3d.md#class-basematerial3d-property-point-size) properties.

**Note:** When using point meshes, properties that normally affect vertices will be ignored, including [BaseMaterial3D.billboard\_mode](class_basematerial3d.md#class-basematerial3d-property-billboard-mode), [BaseMaterial3D.grow](class_basematerial3d.md#class-basematerial3d-property-grow), and [BaseMaterial3D.cull\_mode](class_basematerial3d.md#class-basematerial3d-property-cull-mode).

[Previous](class_planemesh.md "PlaneMesh") [Next](class_polygonoccluder3d.md "PolygonOccluder3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_planemesh.md "PlaneMesh") [Next](class_polygonoccluder3d.md "PolygonOccluder3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).