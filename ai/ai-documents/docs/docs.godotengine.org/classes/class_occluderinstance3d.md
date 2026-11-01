---
title: OccluderInstance3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_occluderinstance3d.html
crawled_at: "2026-08-13T10:42:03+12:00"
content_hash: 9a346c16bce579a93ab7dc35c2b4340f8ad35c19cddea32c57ff79703f875911
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OccluderInstance3D

* * *

# OccluderInstance3D

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Provides occlusion culling for 3D nodes, which improves performance in closed areas.

## Description

Occlusion culling can improve rendering performance in closed/semi-open areas by hiding geometry that is occluded by other objects.

The occlusion culling system is mostly static. **OccluderInstance3D** s can be moved or hidden at run-time, but doing so will trigger a background recomputation that can take several frames. It is recommended to only move **OccluderInstance3D** s sporadically (e.g. for procedural generation purposes), rather than doing so every frame.

The occlusion culling system works by rendering the occluders on the CPU in parallel using [Embree](https://www.embree.org/), drawing the result to a low-resolution buffer then using this to cull 3D nodes individually. In the 3D editor, you can preview the occlusion culling buffer by choosing **Perspective > Display Advanced... > Occlusion Culling Buffer** in the top-left corner of the 3D viewport. The occlusion culling buffer quality can be adjusted in the Project Settings.

**Baking:** Select an **OccluderInstance3D** node, then use the **Bake Occluders** button at the top of the 3D editor. Only opaque materials will be taken into account; transparent materials (alpha-blended or alpha-tested) will be ignored by the occluder generation.

**Note:** Occlusion culling is only effective if [ProjectSettings.rendering/occlusion\_culling/use\_occlusion\_culling](class_projectsettings.md#class-projectsettings-property-rendering-occlusion-culling-use-occlusion-culling) is `true`. Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges ( [GeometryInstance3D.visibility\_range\_begin](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-begin) and [GeometryInstance3D.visibility\_range\_end](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-end)) compared to occlusion culling.

**Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with `module_raycast_enabled=yes`.

## Tutorials

- [Occlusion culling](../tutorials/3d/occlusion_culling.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [bake\_mask](#class-occluderinstance3d-property-bake-mask) | `4294967295` |
| [float](class_float.md#class-float) | [bake\_simplification\_distance](#class-occluderinstance3d-property-bake-simplification-distance) | `0.1` |
| [Occluder3D](class_occluder3d.md#class-occluder3d) | [occluder](#class-occluderinstance3d-property-occluder) |  |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_bake\_mask\_value](#class-occluderinstance3d-method-get-bake-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| void | [set\_bake\_mask\_value](#class-occluderinstance3d-method-set-bake-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **bake\_mask** = `4294967295` [🔗](#class-occluderinstance3d-property-bake-mask)

- void **set\_bake\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_bake\_mask**()


The visual layers to account for when baking for occluders. Only [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) s whose [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) match with this [bake\_mask](#class-occluderinstance3d-property-bake-mask) will be included in the generated occluder mesh. By default, all objects with _opaque_ materials are taken into account for the occluder baking.

To improve performance and avoid artifacts, it is recommended to exclude dynamic objects, small objects and fixtures from the baking process by moving them to a separate visual layer and excluding this layer in [bake\_mask](#class-occluderinstance3d-property-bake-mask).

* * *

[float](class_float.md#class-float) **bake\_simplification\_distance** = `0.1` [🔗](#class-occluderinstance3d-property-bake-simplification-distance)

- void **set\_bake\_simplification\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bake\_simplification\_distance**()


The simplification distance to use for simplifying the generated occluder polygon (in 3D units). Higher values result in a less detailed occluder mesh, which improves performance but reduces culling accuracy.

The occluder geometry is rendered on the CPU, so it is important to keep its geometry as simple as possible. Since the buffer is rendered at a low resolution, less detailed occluder meshes generally still work well. The default value is fairly aggressive, so you may have to decrease it if you run into false negatives (objects being occluded even though they are visible by the camera). A value of `0.01` will act conservatively, and will keep geometry _perceptually_ unaffected in the occlusion culling buffer. Depending on the scene, a value of `0.01` may still simplify the mesh noticeably compared to disabling simplification entirely.

Setting this to `0.0` disables simplification entirely, but vertices in the exact same position will still be merged. The mesh will also be re-indexed to reduce both the number of vertices and indices.

**Note:** This uses the [meshoptimizer](https://meshoptimizer.org/) library under the hood, similar to LOD generation.

* * *

[Occluder3D](class_occluder3d.md#class-occluder3d) **occluder** [🔗](#class-occluderinstance3d-property-occluder)

- void **set\_occluder**(value: [Occluder3D](class_occluder3d.md#class-occluder3d))

- [Occluder3D](class_occluder3d.md#class-occluder3d) **get\_occluder**()


The occluder resource for this **OccluderInstance3D**. You can generate an occluder resource by selecting an **OccluderInstance3D** node then using the **Bake Occluders** button at the top of the editor.

You can also draw your own 2D occluder polygon by adding a new [PolygonOccluder3D](class_polygonoccluder3d.md#class-polygonoccluder3d) resource to the [occluder](#class-occluderinstance3d-property-occluder) property in the Inspector.

Alternatively, you can select a primitive occluder to use: [QuadOccluder3D](class_quadoccluder3d.md#class-quadoccluder3d), [BoxOccluder3D](class_boxoccluder3d.md#class-boxoccluder3d) or [SphereOccluder3D](class_sphereoccluder3d.md#class-sphereoccluder3d).

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_bake\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-occluderinstance3d-method-get-bake-mask-value)

Returns whether or not the specified layer of the [bake\_mask](#class-occluderinstance3d-property-bake-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

void **set\_bake\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-occluderinstance3d-method-set-bake-mask-value)

Based on `value`, enables or disables the specified layer in the [bake\_mask](#class-occluderinstance3d-property-bake-mask), given a `layer_number` between 1 and 32.

[Previous](class_node3d.md "Node3D") [Next](class_omnilight3d.md "OmniLight3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_node3d.md "Node3D") [Next](class_omnilight3d.md "OmniLight3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).