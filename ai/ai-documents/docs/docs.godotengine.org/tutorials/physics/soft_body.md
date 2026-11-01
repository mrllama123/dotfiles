---
title: Using SoftBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/physics/soft_body.html
crawled_at: "2026-08-13T10:29:56+12:00"
content_hash: f584fb1692be097a33d5b3828b2e4caaeeecb3c0f3e453a072b8a07b46b3d655
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Physics](index.md)
  - Using SoftBody3D
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/physics/soft_body.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

Work in progress

The content of this page was not yet updated for Godot
`4.5`
and may be **outdated**. If you know how to improve this page or you can confirm
that it's up to date, feel free to [open a pull request](https://github.com/godotengine/godot-docs).


# Using SoftBody3D

Soft bodies (or _soft-body dynamics_) simulate movement, changing shape and other physical properties of deformable objects.
This can for example be used to simulate cloth or to create more realistic characters.

## Basic set-up

A [SoftBody3D](../../classes/class_softbody3d.md#class-softbody3d) node is used for soft body simulations.

We will create a bouncy cube to demonstrate the setup of a soft body.

Create a new scene with a `Node3D` node as root. Then, create a `SoftBody3D` node. Add a `CubeMesh` in the `mesh` property of the node in the inspector and increase the subdivision of the mesh for simulation.

![../../_images/softbody_cube.png](../../_images/softbody_cube.png)

Set the parameters to obtain the type of soft body you aim for. Try to keep the `Simulation Precision` above 5, otherwise, the soft body may collapse.

![../../_images/softbody_cube_menu.png](../../_images/softbody_cube_menu.png)

Note

Handle some parameters with care, as some value can lead to strange results. For example, if the shape is not completely closed and you set pressure to more than 0, the softbody will fly around like a plastic bag under strong wind.

Play the scene to view the simulation.

Tip

To improve the simulation's result, increase the `Simulation Precision`, this will give significant improvement at the cost of performance.

## Cloak simulation

Let's make a cloak in the Platformer3D demo.

Note

You can download the Platformer3D demo on [GitHub](https://github.com/godotengine/godot-demo-projects/tree/master/3d/platformer) or [the Asset Library](https://godotengine.org/asset-library/asset/2748).

Open the `Player` scene, add a `SoftBody3D` node and assign a `PlaneMesh` to it.

Open the `PlaneMesh` properties and set the size(x: 0.5 y: 1) then set `Subdivide Width` and `Subdivide Depth` to 5. Adjust the `SoftBody3D`'s position. You should end up with something like this:

![../../_images/softbody_cloak_subdivide.png](../../_images/softbody_cloak_subdivide.png)

Tip

Subdivision generates a more tessellated mesh for better simulations.

Add a [BoneAttachment3D](../../classes/class_boneattachment3d.md#class-boneattachment3d) node under the skeleton node and select the Neck bone to attach the cloak to the character skeleton.

Note

`BoneAttachment3D` node is to attach objects to a bone of an armature. The attached object will follow the bone's movement, weapon of a character can be attached this way.

![../../_images/softbody_cloak_bone_attach.png](../../_images/softbody_cloak_bone_attach.png)

To create pinned joints, select the upper vertices in the `SoftBody3D` node:

![../../_images/softbody_cloak_pinned.png](../../_images/softbody_cloak_pinned.png)

The pinned joints can be found in `SoftBody3D`'s `Attachments` property, choose the `BoneAttachment` as the `SpatialAttachment` for each pinned joints, the pinned joints are now attached to the neck.

![../../_images/softbody_cloak_pinned_attach.png](../../_images/softbody_cloak_pinned_attach.png)

Last step is to avoid clipping by adding the Kinematic Body Player to `Parent Collision Ignore` of the `SoftBody3D`.

![../../_images/softbody_cloak_ignore.png](../../_images/softbody_cloak_ignore.png)

Play the scene and the cloak should simulate correctly.

![../../_images/softbody_cloak_finish.png](../../_images/softbody_cloak_finish.png)

This covers the basic settings of softbody, experiment with the parameters to achieve the effect you are aiming for when making your game.

## Using Imported Meshes

The **Save to File** option in the Advanced Import Settings dialog allows you
to save a mesh to a standalone resource file that you can then attach to
`SoftBody3D` nodes.

You may also want to disable LOD generation or change the LOD generation options
when importing a mesh for use with `SoftBody3D`. The default import settings
will produce an LOD that merges adjacent faces that are nearly flat with
respect to each other, even at very close render distances. This works well for
static meshes, but is often undesirable for use with `SoftBody3D` if you want
these faces to be able to bend and move with respect to each other, instead of
being rendered as a single plane.

See [Import configuration](../assets_pipeline/importing_3d_scenes/import_configuration.md#doc-importing-3d-scenes-import-configuration) and [Mesh level of detail (LOD)](../3d/mesh_lod.md#doc-mesh-lod)
for more details.

[Previous](kinematic_character_2d.md "Kinematic character (2D)") [Next](collision_shapes_2d.md "Collision shapes (2D)")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](kinematic_character_2d.md "Kinematic character (2D)") [Next](collision_shapes_2d.md "Collision shapes (2D)")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).