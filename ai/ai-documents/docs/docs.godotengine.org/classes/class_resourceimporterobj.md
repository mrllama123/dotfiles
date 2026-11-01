---
title: ResourceImporterOBJ — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterobj.html
crawled_at: "2026-08-13T10:34:48+12:00"
content_hash: c433f7ae155186d517a9b131a788ce7e8913aa6976fff0c79a3ed80de72db22f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterOBJ

* * *

# ResourceImporterOBJ

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports an OBJ 3D model as an independent [Mesh](class_mesh.md#class-mesh) or scene.

## Description

Unlike [ResourceImporterScene](class_resourceimporterscene.md#class-resourceimporterscene), **ResourceImporterOBJ** will import a single [Mesh](class_mesh.md#class-mesh) resource by default instead of importing a [PackedScene](class_packedscene.md#class-packedscene). This makes it easier to use the [Mesh](class_mesh.md#class-mesh) resource in nodes that expect direct [Mesh](class_mesh.md#class-mesh) resources, such as [GridMap](class_gridmap.md#class-gridmap), [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) or [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d). Note that it is still possible to save mesh resources from 3D scenes using the **Advanced Import Settings** dialog, regardless of the source format.

See also [ResourceImporterScene](class_resourceimporterscene.md#class-resourceimporterscene), which is used for more advanced 3D formats such as glTF.

## Tutorials

- [Importing 3D scenes](../tutorials/assets_pipeline/importing_3d_scenes/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [force\_disable\_mesh\_compression](#class-resourceimporterobj-property-force-disable-mesh-compression) | `false` |
| [bool](class_bool.md#class-bool) | [generate\_lightmap\_uv2](#class-resourceimporterobj-property-generate-lightmap-uv2) | `false` |
| [float](class_float.md#class-float) | [generate\_lightmap\_uv2\_texel\_size](#class-resourceimporterobj-property-generate-lightmap-uv2-texel-size) | `0.2` |
| [bool](class_bool.md#class-bool) | [generate\_lods](#class-resourceimporterobj-property-generate-lods) | `true` |
| [bool](class_bool.md#class-bool) | [generate\_shadow\_mesh](#class-resourceimporterobj-property-generate-shadow-mesh) | `true` |
| [bool](class_bool.md#class-bool) | [generate\_tangents](#class-resourceimporterobj-property-generate-tangents) | `true` |
| [Vector3](class_vector3.md#class-vector3) | [offset\_mesh](#class-resourceimporterobj-property-offset-mesh) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [scale\_mesh](#class-resourceimporterobj-property-scale-mesh) | `Vector3(1, 1, 1)` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **force\_disable\_mesh\_compression** = `false` [🔗](#class-resourceimporterobj-property-force-disable-mesh-compression)

If `true`, mesh compression will not be used. Consider enabling if you notice blocky artifacts in your mesh normals or UVs, or if you have meshes that are larger than a few thousand meters in each direction.

* * *

[bool](class_bool.md#class-bool) **generate\_lightmap\_uv2** = `false` [🔗](#class-resourceimporterobj-property-generate-lightmap-uv2)

If `true`, generates UV2 on import for [LightmapGI](class_lightmapgi.md#class-lightmapgi) baking.

* * *

[float](class_float.md#class-float) **generate\_lightmap\_uv2\_texel\_size** = `0.2` [🔗](#class-resourceimporterobj-property-generate-lightmap-uv2-texel-size)

Controls the size of each texel on the baked lightmap. A smaller value results in more precise lightmaps, at the cost of larger lightmap sizes and longer bake times.

**Note:** Only effective if [generate\_lightmap\_uv2](#class-resourceimporterobj-property-generate-lightmap-uv2) is `true`.

* * *

[bool](class_bool.md#class-bool) **generate\_lods** = `true` [🔗](#class-resourceimporterobj-property-generate-lods)

If `true`, generates lower detail variants of the mesh which will be displayed in the distance to improve rendering performance. Not all meshes benefit from LOD, especially if they are never rendered from far away. Disabling this can reduce output file size and speed up importing. See [Mesh level of detail (LOD)](../tutorials/3d/mesh_lod.md#doc-mesh-lod) for more information.

* * *

[bool](class_bool.md#class-bool) **generate\_shadow\_mesh** = `true` [🔗](#class-resourceimporterobj-property-generate-shadow-mesh)

If `true`, enables the generation of shadow meshes on import. This optimizes shadow rendering without reducing quality by welding vertices together when possible. This in turn reduces the memory bandwidth required to render shadows. Shadow mesh generation currently doesn't support using a lower detail level than the source mesh (but shadow rendering will make use of LODs when relevant).

* * *

[bool](class_bool.md#class-bool) **generate\_tangents** = `true` [🔗](#class-resourceimporterobj-property-generate-tangents)

If `true`, generate vertex tangents using [Mikktspace](http://www.mikktspace.com/) if the source mesh doesn't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead on relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

* * *

[Vector3](class_vector3.md#class-vector3) **offset\_mesh** = `Vector3(0, 0, 0)` [🔗](#class-resourceimporterobj-property-offset-mesh)

Offsets the mesh's data by the specified value. This can be used to work around misaligned meshes without having to modify the source file.

* * *

[Vector3](class_vector3.md#class-vector3) **scale\_mesh** = `Vector3(1, 1, 1)` [🔗](#class-resourceimporterobj-property-scale-mesh)

Scales the mesh's data by the specified value. This can be used to work around misscaled meshes without having to modify the source file.

[Previous](class_resourceimportermp3.md "ResourceImporterMP3") [Next](class_resourceimporteroggvorbis.md "ResourceImporterOggVorbis")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimportermp3.md "ResourceImporterMP3") [Next](class_resourceimporteroggvorbis.md "ResourceImporterOggVorbis")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).