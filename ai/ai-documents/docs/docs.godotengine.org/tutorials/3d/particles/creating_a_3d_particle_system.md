---
title: Creating a 3D particle system — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/3d/particles/creating_a_3d_particle_system.html
crawled_at: "2026-08-13T10:18:08+12:00"
content_hash: 703484edcc2c5f2cc05cd7cf5ec8f6bec2646cd5e89226cd3cb624be4173e17f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [3D](../index.md)
  - [Particle systems (3D)](index.md)
  - Creating a 3D particle system
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/3d/particles/creating_a_3d_particle_system.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Creating a 3D particle system

![../../../_images/particle_node_new.webp](../../../_images/particle_node_new.webp)

Required particle node properties

To get started with particles, the first thing we need to do is add a `GPUParticles3D`
node to the scene. Before we can actually see any particles, we have to set up two parameters on the node:
the `Process Material` and at least one `Draw Pass`.

## The process material

To add a process material to your particles node, go to `Process Material` in the inspector panel.
Click on the box next to `Process Material` and from the dropdown menu select `New ParticleProcessMaterial`.

![../../../_images/particle_new_process_material.webp](../../../_images/particle_new_process_material.webp)

Creating a process material

[ParticleProcessMaterial](../../../classes/class_particleprocessmaterial.md#class-particleprocessmaterial) is a special kind of material. We don't use it to draw any objects.
We use it to update particle data and behavior on the GPU instead of the CPU, which comes with a massive performance
boost. A click on the newly added material displays a long list of properties that you can set to
control each particle's behavior.

## Draw passes

![../../../_images/particle_first_draw_pass.webp](../../../_images/particle_first_draw_pass.webp)

At least one draw pass is required

In order to render any particles, at least one draw pass needs to be defined. To do that, go to
`Draw Passes` in the inspector panel. Click on the box next to `Pass 1` and select `New QuadMesh`
from the dropdown menu. After that, click on the mesh and set its `Size` to 0.1 for both `x`
and `y`. Reducing the mesh's size makes it a little easier to tell the individual particle
meshes apart at this stage.

You can use up to 4 draw passes per particle system. Each pass can render a different
mesh with its own unique material. All draw passes use the data that is computed by the process material,
which is an efficient method for composing complex effects: Compute particle
behavior once and feed it to multiple render passes.

![../../../_images/particle_two_draw_passes.webp](../../../_images/particle_two_draw_passes.webp)

Using multiple draw passes: yellow rectangles (pass1) and blue spheres (pass 2)

If you followed the steps above, your particle system should now be emitting particles in a waterfall-like fashion,
making them move downwards and disappear after a few seconds. This is the foundation for all
particle effects. Take a look at the documentation for [particle](properties.md#doc-3d-particles-properties) and
[particle material](process_material_properties.md#doc-process-material-properties) properties to
learn how to make particle effects more interesting.

![../../../_images/particle_basic_system.webp](../../../_images/particle_basic_system.webp)

## Particle conversion

![../../../_images/particle_convert_cpu.webp](../../../_images/particle_convert_cpu.webp)

Turning GPU into CPU particles

You can convert GPU particles to CPU particles at any time using the entry in the viewport
menu. When you do so, keep in mind that not every feature of GPU particles is available for
CPU particles, so the resulting particle system will look and behave differently from the
original.

You can also convert CPU particles to GPU particles if you no longer need to use CPU particles.
This is also done from the viewport menu.

Some of the most notable features that are lost during the conversion include:

- multiple draw passes

- turbulence

- sub-emitters

- trails

- attractors

- collision


You also lose the following properties:

- `Amount Ratio`

- `Interp to End`

- `Damping as Friction`

- `Emission Shape Offset`

- `Emission Shape Scale`

- `Inherit Velocity Ratio`

- `Velocity Pivot`

- `Directional Velocity`

- `Radial Velocity`

- `Velocity Limit`

- `Scale Over Velocity`


Converting GPU particles to CPU particles can become necessary when you want to release a game
on older devices that don't support modern graphics APIs.

[Previous](index.md "Particle systems (3D)") [Next](properties.md "3D Particle system properties")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Particle systems (3D)") [Next](properties.md "3D Particle system properties")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).