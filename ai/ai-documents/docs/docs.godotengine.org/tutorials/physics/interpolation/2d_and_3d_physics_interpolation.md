---
title: 2D and 3D physics interpolation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/physics/interpolation/2d_and_3d_physics_interpolation.html
crawled_at: "2026-08-13T10:31:03+12:00"
content_hash: 852389c4a774f09dcda82f5cc1ad1aef81e3341702089c505b1a27f555d8f71e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Physics](../index.md)
  - [Physics Interpolation](index.md)
  - 2D and 3D physics interpolation
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/physics/interpolation/2d_and_3d_physics_interpolation.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# 2D and 3D physics interpolation

Generally 2D and 3D physics interpolation work in very similar ways. However, there
are a few differences, which will be described here.

## Global versus local interpolation

- In 3D, physics interpolation is performed _independently_ on the **global**
**transform** of each 3D instance.

- In 2D by contrast, physics interpolation is performed on the **local transform**
of each 2D instance.


This has some implications:

- In 3D, it is easy to turn interpolation on and off at the level of each `Node`,
via the [physics\_interpolation\_mode](../../../classes/class_node.md#class-node-property-physics-interpolation-mode)
property in the Inspector, which can be set to `On`, `Off`, or `Inherited`.


![../../../_images/physics_interpolation_mode.webp](../../../_images/physics_interpolation_mode.webp)

- However this means that in 3D, pivots that occur in the `SceneTree` (due to
parent child relationships) can only be interpolated **approximately** over the
physics tick. In most cases this will not matter, but in some situations the
interpolation can look slightly wrong.

- In 2D, interpolated local transforms are passed down to children during
rendering. This means that if a parent has `physics_interpolation_mode` set to
`On`, but the child is set to `Off`, the child will still be interpolated if
the parent is moving. _Only the child's local transform is uninterpolated._
Controlling the on / off behavior of 2D nodes therefore requires a little more
thought and planning.

- On the positive side, pivot behavior in the scene tree is perfectly preserved
during interpolation in 2D, which gives super smooth behavior.


## Resetting physics interpolation

Whenever objects are moved to a completely new position, and interpolation is not
desired (so as to prevent a "streaking" artefact), it is the responsibility of the
user to call `reset_physics_interpolation()`.

The good news is that in 2D, this is automatically done for you when nodes first
enter the tree. This reduces boiler plate, and reduces the effort required to get
an existing project working.

Note

If you move objects _after_ adding to the scene tree, you will still need
to call `reset_physics_interpolation()` as with 3D.

## 2D Particles

Currently only `CPUParticles2D` are supported for physics interpolation in 2D. It
is recommended to use a physics tick rate of at least 20-30 ticks per second to
keep particles looking fluid.

`Particles2D` (GPU particles) are not yet interpolated, so for now it is
recommended to convert to `CPUParticles2D` (but keep a backup of your
`Particles2D` in case we get these working).

## Other

- `get_global_transform_interpolated()` is currently only available for 3D.

- `MultiMeshes` are supported in both 2D and 3D.


[Previous](advanced_physics_interpolation.md "Advanced physics interpolation") [Next](../troubleshooting_physics_issues.md "Troubleshooting physics issues")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](advanced_physics_interpolation.md "Advanced physics interpolation") [Next](../troubleshooting_physics_issues.md "Troubleshooting physics issues")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).