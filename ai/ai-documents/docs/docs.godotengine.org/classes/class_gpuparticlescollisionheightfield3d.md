---
title: GPUParticlesCollisionHeightField3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gpuparticlescollisionheightfield3d.html
crawled_at: "2026-08-13T10:29:48+12:00"
content_hash: 19ace665fb229384b105f25d07fc60be3502fb5014611e285b26d0b08537c995
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GPUParticlesCollisionHeightField3D

* * *

# GPUParticlesCollisionHeightField3D

**Inherits:** [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A real-time heightmap-shaped 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

## Description

A real-time heightmap-shaped 3D particle collision shape affecting [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

Heightmap shapes allow for efficiently representing collisions for convex and concave objects with a single "floor" (such as terrain). This is less flexible than [GPUParticlesCollisionSDF3D](class_gpuparticlescollisionsdf3d.md#class-gpuparticlescollisionsdf3d), but it doesn't require a baking step.

**GPUParticlesCollisionHeightField3D** can also be regenerated in real-time when it is moved, when the camera moves, or even continuously. This makes **GPUParticlesCollisionHeightField3D** a good choice for weather effects such as rain and snow and games with highly dynamic geometry. However, this class is limited since heightmaps cannot represent overhangs (e.g. indoors or caves).

**Note:** [ParticleProcessMaterial.collision\_mode](class_particleprocessmaterial.md#class-particleprocessmaterial-property-collision-mode) must be `true` on the [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d)'s process material for collision to work.

**Note:** Particle collision only affects [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), not [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [follow\_camera\_enabled](#class-gpuparticlescollisionheightfield3d-property-follow-camera-enabled) | `false` |
| [int](class_int.md#class-int) | [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) | `1048575` |
| [Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) | [resolution](#class-gpuparticlescollisionheightfield3d-property-resolution) | `2` |
| [Vector3](class_vector3.md#class-vector3) | [size](#class-gpuparticlescollisionheightfield3d-property-size) | `Vector3(2, 2, 2)` |
| [UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode) | [update\_mode](#class-gpuparticlescollisionheightfield3d-property-update-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_heightfield\_mask\_value](#class-gpuparticlescollisionheightfield3d-method-get-heightfield-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| void | [set\_heightfield\_mask\_value](#class-gpuparticlescollisionheightfield3d-method-set-heightfield-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **Resolution**: [🔗](#enum-gpuparticlescollisionheightfield3d-resolution)

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_256** = `0`

Generate a 256×256 heightmap. Intended for small-scale scenes, or larger scenes with no distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_512** = `1`

Generate a 512×512 heightmap. Intended for medium-scale scenes, or larger scenes with no distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_1024** = `2`

Generate a 1024×1024 heightmap. Intended for large scenes with distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_2048** = `3`

Generate a 2048×2048 heightmap. Intended for very large scenes with distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_4096** = `4`

Generate a 4096×4096 heightmap. Intended for huge scenes with distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_8192** = `5`

Generate a 8192×8192 heightmap. Intended for gigantic scenes with distant particles.

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **RESOLUTION\_MAX** = `6`

Represents the size of the [Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) enum.

* * *

enum **UpdateMode**: [🔗](#enum-gpuparticlescollisionheightfield3d-updatemode)

[UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode) **UPDATE\_MODE\_WHEN\_MOVED** = `0`

Only update the heightmap when the **GPUParticlesCollisionHeightField3D** node is moved, or when the camera moves if [follow\_camera\_enabled](#class-gpuparticlescollisionheightfield3d-property-follow-camera-enabled) is `true`. An update can be forced by slightly moving the **GPUParticlesCollisionHeightField3D** in any direction, or by calling [RenderingServer.particles\_collision\_height\_field\_update()](class_renderingserver.md#class-renderingserver-method-particles-collision-height-field-update).

[UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode) **UPDATE\_MODE\_ALWAYS** = `1`

Update the heightmap every frame. This has a significant performance cost. This update should only be used when geometry that particles can collide with changes significantly during gameplay.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **follow\_camera\_enabled** = `false` [🔗](#class-gpuparticlescollisionheightfield3d-property-follow-camera-enabled)

- void **set\_follow\_camera\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_follow\_camera\_enabled**()


If `true`, the **GPUParticlesCollisionHeightField3D** will follow the current camera in global space. The **GPUParticlesCollisionHeightField3D** does not need to be a child of the [Camera3D](class_camera3d.md#class-camera3d) node for this to work.

Following the camera has a performance cost, as it will force the heightmap to update whenever the camera moves. Consider lowering [resolution](#class-gpuparticlescollisionheightfield3d-property-resolution) to improve performance if [follow\_camera\_enabled](#class-gpuparticlescollisionheightfield3d-property-follow-camera-enabled) is `true`.

* * *

[int](class_int.md#class-int) **heightfield\_mask** = `1048575` [🔗](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask)

- void **set\_heightfield\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_heightfield\_mask**()


The visual layers to account for when updating the heightmap. Only [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) s whose [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) match with this [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) will be included in the heightmap collision update. By default, all 20 user-visible layers are taken into account for updating the heightmap collision.

**Note:** Since the [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) allows for 32 layers to be stored in total, there are an additional 12 layers that are only used internally by the engine and aren't exposed in the editor. Setting [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) using a script allows you to toggle those reserved layers, which can be useful for editor plugins.

To adjust [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) more easily using a script, use [get\_heightfield\_mask\_value()](#class-gpuparticlescollisionheightfield3d-method-get-heightfield-mask-value) and [set\_heightfield\_mask\_value()](#class-gpuparticlescollisionheightfield3d-method-set-heightfield-mask-value).

* * *

[Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **resolution** = `2` [🔗](#class-gpuparticlescollisionheightfield3d-property-resolution)

- void **set\_resolution**(value: [Resolution](#enum-gpuparticlescollisionheightfield3d-resolution))

- [Resolution](#enum-gpuparticlescollisionheightfield3d-resolution) **get\_resolution**()


Higher resolutions can represent small details more accurately in large scenes, at the cost of lower performance. If [update\_mode](#class-gpuparticlescollisionheightfield3d-property-update-mode) is [UPDATE\_MODE\_ALWAYS](#class-gpuparticlescollisionheightfield3d-constant-update-mode-always), consider using the lowest resolution possible.

* * *

[Vector3](class_vector3.md#class-vector3) **size** = `Vector3(2, 2, 2)` [🔗](#class-gpuparticlescollisionheightfield3d-property-size)

- void **set\_size**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_size**()


The collision heightmap's size in 3D units. To improve heightmap quality, [size](#class-gpuparticlescollisionheightfield3d-property-size) should be set as small as possible while covering the parts of the scene you need.

* * *

[UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode) **update\_mode** = `0` [🔗](#class-gpuparticlescollisionheightfield3d-property-update-mode)

- void **set\_update\_mode**(value: [UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode))

- [UpdateMode](#enum-gpuparticlescollisionheightfield3d-updatemode) **get\_update\_mode**()


The update policy to use for the generated heightmap.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_heightfield\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-gpuparticlescollisionheightfield3d-method-get-heightfield-mask-value)

Returns `true` if the specified layer of the [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask) is enabled, given a `layer_number` between `1` and `20`, inclusive.

* * *

void **set\_heightfield\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-gpuparticlescollisionheightfield3d-method-set-heightfield-mask-value)

Based on `value`, enables or disables the specified layer in the [heightfield\_mask](#class-gpuparticlescollisionheightfield3d-property-heightfield-mask), given a `layer_number` between `1` and `20`, inclusive.

[Previous](class_gpuparticlescollisionbox3d.md "GPUParticlesCollisionBox3D") [Next](class_gpuparticlescollisionsdf3d.md "GPUParticlesCollisionSDF3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlescollisionbox3d.md "GPUParticlesCollisionBox3D") [Next](class_gpuparticlescollisionsdf3d.md "GPUParticlesCollisionSDF3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).