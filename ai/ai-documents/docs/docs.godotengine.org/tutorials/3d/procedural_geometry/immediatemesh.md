---
title: Using ImmediateMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/3d/procedural_geometry/immediatemesh.html
crawled_at: "2026-08-13T10:31:52+12:00"
content_hash: 1df152e78e0e6d94d553677fceadf3a6bd8d52fd33e5b68e8905e6e4351f83b7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [3D](../index.md)
  - [Procedural geometry](index.md)
  - Using ImmediateMesh
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/3d/procedural_geometry/immediatemesh.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using ImmediateMesh

The [ImmediateMesh](../../../classes/class_immediatemesh.md#class-immediatemesh) is a convenient tool to create
dynamic geometry using an OpenGL 1.x-style API. Which makes it both approachable
to use and efficient for meshes which need to be updated every frame.

Generating complex geometry (several thousand vertices) with this tool is inefficient, even if it's
done only once. Instead, it is designed to generate simple geometry that changes every frame.

First, you need to create a [MeshInstance3D](../../../classes/class_meshinstance3d.md#class-meshinstance3d) and add
an [ImmediateMesh](../../../classes/class_immediatemesh.md#class-immediatemesh) to it in the Inspector.

Next, add a script to the MeshInstance3D. The code for the ImmediateMesh should
go in the `_process()` function if you want it to update each frame, or in the
`_ready()` function if you want to create the mesh once and not update it. If
you only generate a surface once, the ImmediateMesh is just as efficient as any
other kind of mesh as the generated mesh is cached and reused.

To begin generating geometry you must call `surface_begin()`.
`surface_begin()` takes a `PrimitiveType` as an argument. `PrimitiveType`
instructs the GPU how to arrange the primitive based on the vertices given
whether it is triangles, lines, points, etc. A complete list can be found under
the [Mesh](../../../classes/class_mesh.md#class-mesh) class reference page.

Once you have called `surface_begin()` you are ready to start adding vertices.
You add vertices one at a time. First you add vertex specific attributes such as
normals or UVs using `surface_set_****()` (e.g. `surface_set_normal()`).
Then you call `surface_add_vertex()` to add a vertex with those attributes.
For example:

GDScript

```
# Add a vertex with normal and uv.
surface_set_normal(Vector3(0, 1, 0))
surface_set_uv(Vector2(1, 1))
surface_add_vertex(Vector3(0, 0, 1))

```

Only attributes added before the call to `surface_add_vertex()` will be
included in that vertex. If you add an attribute twice before calling
`surface_add_vertex()`, only the second call will be used.

Finally, once you have added all your vertices call `surface_end()` to signal
that you have finished generating the surface. You can call `surface_begin()`
and `surface_end()` multiple times to generate multiple surfaces for the mesh.

The example code below draws a single triangle in the `_ready()` function.

GDScript

```
extends MeshInstance3D

func _ready():
    # Begin draw.
    mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)

    # Prepare attributes for add_vertex.
    mesh.surface_set_normal(Vector3(0, 0, 1))
    mesh.surface_set_uv(Vector2(0, 0))
    # Call last for each vertex, adds the above attributes.
    mesh.surface_add_vertex(Vector3(-1, -1, 0))

    mesh.surface_set_normal(Vector3(0, 0, 1))
    mesh.surface_set_uv(Vector2(0, 1))
    mesh.surface_add_vertex(Vector3(-1, 1, 0))

    mesh.surface_set_normal(Vector3(0, 0, 1))
    mesh.surface_set_uv(Vector2(1, 1))
    mesh.surface_add_vertex(Vector3(1, 1, 0))

    # End drawing.
    mesh.surface_end()

```

The ImmediateMesh can also be used across frames. Each time you call
`surface_begin()` and `surface_end()`, you are adding a new surface to the
ImmediateMesh. If you want to recreate the mesh from scratch each frame, call
`clear_surfaces()` before calling `surface_begin()`.

GDScript

```
extends MeshInstance3D

func _process(delta):

    # Clean up before drawing.
    mesh.clear_surfaces()

    # Begin draw.
    mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)

    # Draw mesh.

    # End drawing.
    mesh.surface_end()

```

The above code will dynamically create and draw a single surface each frame.

[Previous](surfacetool.md "Using the SurfaceTool") [Next](../3d_text.md "3D text")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](surfacetool.md "Using the SurfaceTool") [Next](../3d_text.md "3D text")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).