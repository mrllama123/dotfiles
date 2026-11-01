---
title: Using MultiMeshInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/3d/using_multi_mesh_instance.html
crawled_at: "2026-08-13T10:21:04+12:00"
content_hash: 1679230d9d423663ee1ddaeb2197d4db479c8751bef95834b2bb48f6bdd8669b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [3D](index.md)
  - Using MultiMeshInstance3D
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/3d/using_multi_mesh_instance.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

Work in progress

The content of this page was not yet updated for Godot
`4.5`
and may be **outdated**. If you know how to improve this page or you can confirm
that it's up to date, feel free to [open a pull request](https://github.com/godotengine/godot-docs).


# Using MultiMeshInstance3D

## Introduction

In a normal scenario, you would use a [MeshInstance3D](../../classes/class_meshinstance3d.md#class-meshinstance3d)
node to display a 3D mesh like a human model for the main character, but in some
cases, you would like to create multiple instances of the same mesh in a scene.
You _could_ duplicate the same node multiple times and adjust the transforms
manually. This may be a tedious process and the result may look mechanical.
Also, this method is not conducive to rapid iterations.
[MultiMeshInstance3D](../../classes/class_multimeshinstance3d.md#class-multimeshinstance3d) is one of the possible
solutions to this problem.

MultiMeshInstance3D, as the name suggests, creates multiple copies of a
MeshInstance over a surface of a specific mesh. An example would be having a
tree mesh populate a landscape mesh with trees of random scales and orientations.

## Setting up the nodes

The basic setup requires three nodes: the MultiMeshInstance3D node
and two MeshInstance3D nodes.

One node is used as the target, the surface mesh that you want to place multiple meshes
on. In the tree example, this would be the landscape.

The other node is used as the source, the mesh that you want to have duplicated.
In the tree case, this would be the tree itself.

In our example, we would use a [Node3D](../../classes/class_node3d.md#class-node3d) node as the root node of
the scene. Your scene tree would look like this:

![../../_images/multimesh_scene_tree.png](../../_images/multimesh_scene_tree.png)

Note

For simplicity's sake, this tutorial uses built-in primitives.

Now you have everything ready. Select the MultiMeshInstance3D node and look at the
toolbar, you should see an extra button called `MultiMesh` next to `View`.
Click it and select _Populate surface_ in the dropdown menu. A new window titled
_Populate MultiMesh_ will pop up.

![../../_images/multimesh_toolbar.png](../../_images/multimesh_toolbar.png)![../../_images/multimesh_settings.png](../../_images/multimesh_settings.png)

## MultiMesh settings

Below are descriptions of the options.

### Target Surface

The mesh used as the target surface on which to place copies of your
source mesh.

### Source Mesh

The mesh you want duplicated on the target surface.

### Mesh Up Axis

The axis used as the up axis of the source mesh.

### Random Rotation

Randomizing the rotation around the up axis of the source mesh.

### Random Tilt

Randomizing the overall rotation of the source mesh.

### Random Scale

Randomizing the scale of the source mesh.

### Scale

The scale of the source mesh that will be placed over the target surface.

### Amount

The amount of mesh instances placed over the target surface.

Select the target surface. In the tree case, this should be the landscape node.
The source mesh should be the tree node. Adjust the other parameters
according to your preference. Press `Populate` and multiple copies of the
source mesh will be placed over the target mesh. If you are satisfied with the
result, you can delete the mesh instance used as the source mesh.

The end result should look like this:

![../../_images/multimesh_result.png](../../_images/multimesh_result.png)

To change the result, repeat the previous steps with different parameters.

[Previous](3d_antialiasing.md "3D antialiasing") [Next](mesh_lod.md "Mesh level of detail (LOD)")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](3d_antialiasing.md "3D antialiasing") [Next](mesh_lod.md "Mesh level of detail (LOD)")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).