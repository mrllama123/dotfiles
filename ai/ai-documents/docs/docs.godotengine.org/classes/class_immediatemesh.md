---
title: ImmediateMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_immediatemesh.html
crawled_at: "2026-08-13T10:29:20+12:00"
content_hash: edbf40b5c246104093cf12919c0d3f68b20cc26d985c5cfb39c40d3d54f30769
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImmediateMesh

* * *

# ImmediateMesh

**Inherits:** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Mesh optimized for creating geometry manually.

## Description

A mesh type optimized for creating geometry manually, similar to OpenGL 1.x immediate mode.

Here's a sample on how to generate a triangular face:

GDScriptC#

```
var mesh = ImmediateMesh.new()
mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)
mesh.surface_add_vertex(Vector3.LEFT)
mesh.surface_add_vertex(Vector3.FORWARD)
mesh.surface_add_vertex(Vector3.ZERO)
mesh.surface_end()

```

```
var mesh = new ImmediateMesh();
mesh.SurfaceBegin(Mesh.PrimitiveType.Triangles);
mesh.SurfaceAddVertex(Vector3.Left);
mesh.SurfaceAddVertex(Vector3.Forward);
mesh.SurfaceAddVertex(Vector3.Zero);
mesh.SurfaceEnd();

```

**Note:** Generating complex geometries with **ImmediateMesh** is highly inefficient. Instead, it is designed to generate simple geometry that changes often.

## Tutorials

- [Using ImmediateMesh](../tutorials/3d/procedural_geometry/immediatemesh.md)


## Methods

|     |     |
| --- | --- |
| void | [clear\_surfaces](#class-immediatemesh-method-clear-surfaces)() |
| void | [surface\_add\_vertex](#class-immediatemesh-method-surface-add-vertex)(vertex: [Vector3](class_vector3.md#class-vector3)) |
| void | [surface\_add\_vertex\_2d](#class-immediatemesh-method-surface-add-vertex-2d)(vertex: [Vector2](class_vector2.md#class-vector2)) |
| void | [surface\_begin](#class-immediatemesh-method-surface-begin)(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), material: [Material](class_material.md#class-material) = null) |
| void | [surface\_end](#class-immediatemesh-method-surface-end)() |
| void | [surface\_set\_color](#class-immediatemesh-method-surface-set-color)(color: [Color](class_color.md#class-color)) |
| void | [surface\_set\_normal](#class-immediatemesh-method-surface-set-normal)(normal: [Vector3](class_vector3.md#class-vector3)) |
| void | [surface\_set\_tangent](#class-immediatemesh-method-surface-set-tangent)(tangent: [Plane](class_plane.md#class-plane)) |
| void | [surface\_set\_uv](#class-immediatemesh-method-surface-set-uv)(uv: [Vector2](class_vector2.md#class-vector2)) |
| void | [surface\_set\_uv2](#class-immediatemesh-method-surface-set-uv2)(uv2: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Method Descriptions

void **clear\_surfaces**() [🔗](#class-immediatemesh-method-clear-surfaces)

Clear all surfaces.

* * *

void **surface\_add\_vertex**(vertex: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-immediatemesh-method-surface-add-vertex)

Add a 3D vertex using the current attributes previously set.

* * *

void **surface\_add\_vertex\_2d**(vertex: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-immediatemesh-method-surface-add-vertex-2d)

Add a 2D vertex using the current attributes previously set.

* * *

void **surface\_begin**(primitive: [PrimitiveType](class_mesh.md#enum-mesh-primitivetype), material: [Material](class_material.md#class-material) = null) [🔗](#class-immediatemesh-method-surface-begin)

Begin a new surface.

* * *

void **surface\_end**() [🔗](#class-immediatemesh-method-surface-end)

End and commit current surface. Note that surface being created will not be visible until this function is called.

* * *

void **surface\_set\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-immediatemesh-method-surface-set-color)

Set the color attribute that will be pushed with the next vertex.

* * *

void **surface\_set\_normal**(normal: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-immediatemesh-method-surface-set-normal)

Set the normal attribute that will be pushed with the next vertex.

* * *

void **surface\_set\_tangent**(tangent: [Plane](class_plane.md#class-plane)) [🔗](#class-immediatemesh-method-surface-set-tangent)

Set the tangent attribute that will be pushed with the next vertex.

* * *

void **surface\_set\_uv**(uv: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-immediatemesh-method-surface-set-uv)

Set the UV attribute that will be pushed with the next vertex.

* * *

void **surface\_set\_uv2**(uv2: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-immediatemesh-method-surface-set-uv2)

Set the UV2 attribute that will be pushed with the next vertex.

[Previous](class_imagetexturelayered.md "ImageTextureLayered") [Next](class_importermesh.md "ImporterMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_imagetexturelayered.md "ImageTextureLayered") [Next](class_importermesh.md "ImporterMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).