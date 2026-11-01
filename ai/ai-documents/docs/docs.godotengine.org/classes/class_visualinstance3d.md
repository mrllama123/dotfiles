---
title: VisualInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualinstance3d.html
crawled_at: "2026-08-13T10:34:27+12:00"
content_hash: 6112a307d4f075c207a4442acf991925e7acbae531a619155bc05a8ce788d0b5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualInstance3D

* * *

# VisualInstance3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [Decal](class_decal.md#class-decal), [FogVolume](class_fogvolume.md#class-fogvolume), [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d), [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d), [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d), [Light3D](class_light3d.md#class-light3d), [LightmapGI](class_lightmapgi.md#class-lightmapgi), [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d), [OpenXRVisibilityMask](class_openxrvisibilitymask.md#class-openxrvisibilitymask), [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe), [RootMotionView](class_rootmotionview.md#class-rootmotionview), [VisibleOnScreenNotifier3D](class_visibleonscreennotifier3d.md#class-visibleonscreennotifier3d), [VoxelGI](class_voxelgi.md#class-voxelgi)

Parent of all visual 3D nodes.

## Description

The **VisualInstance3D** is used to connect a resource to a visual representation. All visual 3D nodes inherit from the **VisualInstance3D**. In general, you should not access the **VisualInstance3D** properties directly as they are accessed and managed by the nodes that inherit from **VisualInstance3D**. **VisualInstance3D** is the node representation of the [RenderingServer](class_renderingserver.md#class-renderingserver) instance.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [layers](#class-visualinstance3d-property-layers) | `1` |
| [float](class_float.md#class-float) | [sorting\_offset](#class-visualinstance3d-property-sorting-offset) | `0.0` |
| [bool](class_bool.md#class-bool) | [sorting\_use\_aabb\_center](#class-visualinstance3d-property-sorting-use-aabb-center) |  |

## Methods

|     |     |
| --- | --- |
| [AABB](class_aabb.md#class-aabb) | [\_get\_aabb](#class-visualinstance3d-private-method-get-aabb)() virtualconst |
| [AABB](class_aabb.md#class-aabb) | [get\_aabb](#class-visualinstance3d-method-get-aabb)() const |
| [RID](class_rid.md#class-rid) | [get\_base](#class-visualinstance3d-method-get-base)() const |
| [RID](class_rid.md#class-rid) | [get\_instance](#class-visualinstance3d-method-get-instance)() const |
| [bool](class_bool.md#class-bool) | [get\_layer\_mask\_value](#class-visualinstance3d-method-get-layer-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| void | [set\_base](#class-visualinstance3d-method-set-base)(base: [RID](class_rid.md#class-rid)) |
| void | [set\_layer\_mask\_value](#class-visualinstance3d-method-set-layer-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **layers** = `1` [🔗](#class-visualinstance3d-property-layers)

- void **set\_layer\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_layer\_mask**()


The render layer(s) this **VisualInstance3D** is drawn on.

This object will only be visible for [Camera3D](class_camera3d.md#class-camera3d) s whose cull mask includes any of the render layers this **VisualInstance3D** is set to.

For [Light3D](class_light3d.md#class-light3d) s, this can be used to control which **VisualInstance3D** s are affected by a specific light. For [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d), this can be used to control which particles are effected by a specific attractor. For [Decal](class_decal.md#class-decal) s, this can be used to control which **VisualInstance3D** s are affected by a specific decal.

To adjust [layers](#class-visualinstance3d-property-layers) more easily using a script, use [get\_layer\_mask\_value()](#class-visualinstance3d-method-get-layer-mask-value) and [set\_layer\_mask\_value()](#class-visualinstance3d-method-set-layer-mask-value).

**Note:** [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI and [LightmapGI](class_lightmapgi.md#class-lightmapgi) will always take all layers into account to determine what contributes to global illumination. If this is an issue, set [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) to [GeometryInstance3D.GI\_MODE\_DISABLED](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-disabled) for meshes and [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode) to [Light3D.BAKE\_DISABLED](class_light3d.md#class-light3d-constant-bake-disabled) for lights to exclude them from global illumination.

* * *

[float](class_float.md#class-float) **sorting\_offset** = `0.0` [🔗](#class-visualinstance3d-property-sorting-offset)

- void **set\_sorting\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_sorting\_offset**()


The amount by which the depth of this **VisualInstance3D** will be adjusted when sorting by depth. Uses the same units as the engine (which are typically meters). Adjusting it to a higher value will make the **VisualInstance3D** reliably draw on top of other **VisualInstance3D** s that are otherwise positioned at the same spot. To ensure it always draws on top of other objects around it (not positioned at the same spot), set the value to be greater than the distance between this **VisualInstance3D** and the other nearby **VisualInstance3D** s.

* * *

[bool](class_bool.md#class-bool) **sorting\_use\_aabb\_center** [🔗](#class-visualinstance3d-property-sorting-use-aabb-center)

- void **set\_sorting\_use\_aabb\_center**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sorting\_use\_aabb\_center**()


If `true`, the object is sorted based on the [AABB](class_aabb.md#class-aabb) center. The object will be sorted based on the global position otherwise.

The [AABB](class_aabb.md#class-aabb) center based sorting is generally more accurate for 3D models. The position based sorting instead allows to better control the drawing order when working with [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) and [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d).

* * *

## Method Descriptions

[AABB](class_aabb.md#class-aabb) **\_get\_aabb**() virtualconst [🔗](#class-visualinstance3d-private-method-get-aabb)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[AABB](class_aabb.md#class-aabb) **get\_aabb**() const [🔗](#class-visualinstance3d-method-get-aabb)

Returns the [AABB](class_aabb.md#class-aabb) (also known as the bounding box) for this **VisualInstance3D**.

* * *

[RID](class_rid.md#class-rid) **get\_base**() const [🔗](#class-visualinstance3d-method-get-base)

Returns the RID of the resource associated with this **VisualInstance3D**. For example, if the Node is a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d), this will return the RID of the associated [Mesh](class_mesh.md#class-mesh).

* * *

[RID](class_rid.md#class-rid) **get\_instance**() const [🔗](#class-visualinstance3d-method-get-instance)

Returns the RID of this instance. This RID is the same as the RID returned by [RenderingServer.instance\_create()](class_renderingserver.md#class-renderingserver-method-instance-create). This RID is needed if you want to call [RenderingServer](class_renderingserver.md#class-renderingserver) functions directly on this **VisualInstance3D**.

* * *

[bool](class_bool.md#class-bool) **get\_layer\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-visualinstance3d-method-get-layer-mask-value)

Returns whether or not the specified layer of the [layers](#class-visualinstance3d-property-layers) is enabled, given a `layer_number` between 1 and 20.

* * *

void **set\_base**(base: [RID](class_rid.md#class-rid)) [🔗](#class-visualinstance3d-method-set-base)

Sets the resource that is instantiated by this **VisualInstance3D**, which changes how the engine handles the **VisualInstance3D** under the hood. Equivalent to [RenderingServer.instance\_set\_base()](class_renderingserver.md#class-renderingserver-method-instance-set-base).

* * *

void **set\_layer\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-visualinstance3d-method-set-layer-mask-value)

Based on `value`, enables or disables the specified layer in the [layers](#class-visualinstance3d-property-layers), given a `layer_number` between 1 and 20.

[Previous](class_visibleonscreennotifier3d.md "VisibleOnScreenNotifier3D") [Next](class_voxelgi.md "VoxelGI")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visibleonscreennotifier3d.md "VisibleOnScreenNotifier3D") [Next](class_voxelgi.md "VoxelGI")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).