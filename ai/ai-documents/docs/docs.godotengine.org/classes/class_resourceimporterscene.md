---
title: ResourceImporterScene — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporterscene.html
crawled_at: "2026-08-13T10:22:30+12:00"
content_hash: efd0688960de12faec51718628a74c38e12b83bcfed82cf115ebfaead84ef74d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporterScene

* * *

# ResourceImporterScene

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Imports a glTF, FBX, COLLADA, or Blender 3D scene.

## Description

See also [ResourceImporterOBJ](class_resourceimporterobj.md#class-resourceimporterobj), which is used for OBJ models that can be imported as an independent [Mesh](class_mesh.md#class-mesh) or a scene.

Additional options (such as extracting individual meshes or materials to files) are available in the **Advanced Import Settings** dialog. This dialog can be accessed by double-clicking a 3D scene in the FileSystem dock or by selecting a 3D scene in the FileSystem dock, going to the Import dock and choosing **Advanced**.

**Note:** **ResourceImporterScene** is _not_ used for [PackedScene](class_packedscene.md#class-packedscene) s, such as `.tscn` and `.scn` files.

## Tutorials

- [Importing 3D scenes](../tutorials/assets_pipeline/importing_3d_scenes/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_subresources](#class-resourceimporterscene-property-subresources) | `{}` |
| [float](class_float.md#class-float) | [animation/fps](#class-resourceimporterscene-property-animation-fps) | `30` |
| [bool](class_bool.md#class-bool) | [animation/import](#class-resourceimporterscene-property-animation-import) | `true` |
| [bool](class_bool.md#class-bool) | [animation/import\_rest\_as\_RESET](#class-resourceimporterscene-property-animation-import-rest-as-reset) | `false` |
| [bool](class_bool.md#class-bool) | [animation/remove\_immutable\_tracks](#class-resourceimporterscene-property-animation-remove-immutable-tracks) | `true` |
| [bool](class_bool.md#class-bool) | [animation/trimming](#class-resourceimporterscene-property-animation-trimming) | `false` |
| [String](class_string.md#class-string) | [import\_script/path](#class-resourceimporterscene-property-import-script-path) | `""` |
| [int](class_int.md#class-int) | [materials/extract](#class-resourceimporterscene-property-materials-extract) | `0` |
| [int](class_int.md#class-int) | [materials/extract\_format](#class-resourceimporterscene-property-materials-extract-format) | `0` |
| [String](class_string.md#class-string) | [materials/extract\_path](#class-resourceimporterscene-property-materials-extract-path) | `""` |
| [bool](class_bool.md#class-bool) | [meshes/create\_shadow\_meshes](#class-resourceimporterscene-property-meshes-create-shadow-meshes) | `true` |
| [bool](class_bool.md#class-bool) | [meshes/ensure\_tangents](#class-resourceimporterscene-property-meshes-ensure-tangents) | `true` |
| [bool](class_bool.md#class-bool) | [meshes/force\_disable\_compression](#class-resourceimporterscene-property-meshes-force-disable-compression) | `false` |
| [bool](class_bool.md#class-bool) | [meshes/generate\_lods](#class-resourceimporterscene-property-meshes-generate-lods) | `true` |
| [int](class_int.md#class-int) | [meshes/light\_baking](#class-resourceimporterscene-property-meshes-light-baking) | `1` |
| [float](class_float.md#class-float) | [meshes/lightmap\_texel\_size](#class-resourceimporterscene-property-meshes-lightmap-texel-size) | `0.2` |
| [bool](class_bool.md#class-bool) | [nodes/apply\_root\_scale](#class-resourceimporterscene-property-nodes-apply-root-scale) | `true` |
| [bool](class_bool.md#class-bool) | [nodes/import\_as\_skeleton\_bones](#class-resourceimporterscene-property-nodes-import-as-skeleton-bones) | `false` |
| [String](class_string.md#class-string) | [nodes/root\_name](#class-resourceimporterscene-property-nodes-root-name) | `""` |
| [float](class_float.md#class-float) | [nodes/root\_scale](#class-resourceimporterscene-property-nodes-root-scale) | `1.0` |
| [Script](class_script.md#class-script) | [nodes/root\_script](#class-resourceimporterscene-property-nodes-root-script) | `null` |
| [String](class_string.md#class-string) | [nodes/root\_type](#class-resourceimporterscene-property-nodes-root-type) | `""` |
| [bool](class_bool.md#class-bool) | [nodes/use\_name\_suffixes](#class-resourceimporterscene-property-nodes-use-name-suffixes) | `true` |
| [bool](class_bool.md#class-bool) | [nodes/use\_node\_type\_suffixes](#class-resourceimporterscene-property-nodes-use-node-type-suffixes) | `true` |
| [bool](class_bool.md#class-bool) | [skins/use\_named\_skins](#class-resourceimporterscene-property-skins-use-named-skins) | `true` |

* * *

## Property Descriptions

[Dictionary](class_dictionary.md#class-dictionary) **\_subresources** = `{}` [🔗](#class-resourceimporterscene-property-subresources)

Contains properties for the scene's subresources. This is an internal option which is not visible in the Import dock.

* * *

[float](class_float.md#class-float) **animation/fps** = `30` [🔗](#class-resourceimporterscene-property-animation-fps)

The number of frames per second to use for baking animation curves to a series of points with linear interpolation. It's recommended to configure this value to match the value you're using as a baseline in your 3D modeling software. Higher values result in more precise animation with fast movement changes, at the cost of higher file sizes and memory usage. Thanks to interpolation, there is usually not much benefit in going above 30 FPS (as the animation will still appear smooth at higher rendering framerates).

* * *

[bool](class_bool.md#class-bool) **animation/import** = `true` [🔗](#class-resourceimporterscene-property-animation-import)

If `true`, import animations from the 3D scene.

* * *

[bool](class_bool.md#class-bool) **animation/import\_rest\_as\_RESET** = `false` [🔗](#class-resourceimporterscene-property-animation-import-rest-as-reset)

If `true`, adds an [Animation](class_animation.md#class-animation) named `RESET`, containing the [Skeleton3D.get\_bone\_rest()](class_skeleton3d.md#class-skeleton3d-method-get-bone-rest) from [Skeleton3D](class_skeleton3d.md#class-skeleton3d) nodes. This can be useful to extract an animation in the reference pose.

* * *

[bool](class_bool.md#class-bool) **animation/remove\_immutable\_tracks** = `true` [🔗](#class-resourceimporterscene-property-animation-remove-immutable-tracks)

If `true`, remove animation tracks that only contain default values. This can reduce output file size and memory usage with certain 3D scenes, depending on the contents of their animation tracks.

* * *

[bool](class_bool.md#class-bool) **animation/trimming** = `false` [🔗](#class-resourceimporterscene-property-animation-trimming)

If `true`, trim the beginning and end of animations if there are no keyframe changes. This can reduce output file size and memory usage with certain 3D scenes, depending on the contents of their animation tracks.

* * *

[String](class_string.md#class-string) **import\_script/path** = `""` [🔗](#class-resourceimporterscene-property-import-script-path)

Path to an import script, which can run code after the import process has completed for custom processing. See [Using import scripts for automation](../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.md#using-import-scripts-for-automation) for more information.

* * *

[int](class_int.md#class-int) **materials/extract** = `0` [🔗](#class-resourceimporterscene-property-materials-extract)

Material extraction mode.

- `0 (Keep Internal)`, materials are not extracted.

- `1 (Extract Once)`, materials are extracted once and reused on subsequent import.

- `2 (Extract and Overwrite)`, materials are extracted and overwritten on every import.


* * *

[int](class_int.md#class-int) **materials/extract\_format** = `0` [🔗](#class-resourceimporterscene-property-materials-extract-format)

Extracted material file format.

- `0 (Text)`, text file format ( `*.tres`).

- `1 (Binary)`, binary file format ( `*.res`).

- `2 (Material)`, binary file format ( `*.material`).


* * *

[String](class_string.md#class-string) **materials/extract\_path** = `""` [🔗](#class-resourceimporterscene-property-materials-extract-path)

Path extracted materials are saved to. If empty, source scene path is used.

* * *

[bool](class_bool.md#class-bool) **meshes/create\_shadow\_meshes** = `true` [🔗](#class-resourceimporterscene-property-meshes-create-shadow-meshes)

If `true`, enables the generation of shadow meshes on import. This optimizes shadow rendering without reducing quality by welding vertices together when possible. This in turn reduces the memory bandwidth required to render shadows. Shadow mesh generation currently doesn't support using a lower detail level than the source mesh (but shadow rendering will make use of LODs when relevant).

* * *

[bool](class_bool.md#class-bool) **meshes/ensure\_tangents** = `true` [🔗](#class-resourceimporterscene-property-meshes-ensure-tangents)

If `true`, generate vertex tangents using [Mikktspace](http://www.mikktspace.com/) if the input meshes don't have tangent data. When possible, it's recommended to let the 3D modeling software generate tangents on export instead on relying on this option. Tangents are required for correct display of normal and height maps, along with any material/shader features that require tangents.

If you don't need material features that require tangents, disabling this can reduce output file size and speed up importing if the source 3D file doesn't contain tangents.

* * *

[bool](class_bool.md#class-bool) **meshes/force\_disable\_compression** = `false` [🔗](#class-resourceimporterscene-property-meshes-force-disable-compression)

If `true`, mesh compression will not be used. Consider enabling if you notice blocky artifacts in your mesh normals or UVs, or if you have meshes that are larger than a few thousand meters in each direction.

* * *

[bool](class_bool.md#class-bool) **meshes/generate\_lods** = `true` [🔗](#class-resourceimporterscene-property-meshes-generate-lods)

If `true`, generates lower detail variants of the mesh which will be displayed in the distance to improve rendering performance. Not all meshes benefit from LOD, especially if they are never rendered from far away. Disabling this can reduce output file size and speed up importing. See [Mesh level of detail (LOD)](../tutorials/3d/mesh_lod.md#doc-mesh-lod) for more information.

* * *

[int](class_int.md#class-int) **meshes/light\_baking** = `1` [🔗](#class-resourceimporterscene-property-meshes-light-baking)

Configures the meshes' [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) in the 3D scene. If set to **Static Lightmaps**, sets the meshes' GI mode to Static and generates UV2 on import for [LightmapGI](class_lightmapgi.md#class-lightmapgi) baking.

* * *

[float](class_float.md#class-float) **meshes/lightmap\_texel\_size** = `0.2` [🔗](#class-resourceimporterscene-property-meshes-lightmap-texel-size)

Controls the size of each texel on the baked lightmap. A smaller value results in more precise lightmaps, at the cost of larger lightmap sizes and longer bake times.

**Note:** Only effective if [meshes/light\_baking](#class-resourceimporterscene-property-meshes-light-baking) is set to **Static Lightmaps**.

* * *

[bool](class_bool.md#class-bool) **nodes/apply\_root\_scale** = `true` [🔗](#class-resourceimporterscene-property-nodes-apply-root-scale)

If `true`, [nodes/root\_scale](#class-resourceimporterscene-property-nodes-root-scale) will be applied to the descendant nodes, meshes, animations, bones, etc. This means that if you add a child node later on within the imported scene, it won't be scaled. If `false`, [nodes/root\_scale](#class-resourceimporterscene-property-nodes-root-scale) will multiply the scale of the root node instead.

* * *

[bool](class_bool.md#class-bool) **nodes/import\_as\_skeleton\_bones** = `false` [🔗](#class-resourceimporterscene-property-nodes-import-as-skeleton-bones)

Treat all nodes in the imported scene as if they are bones within a single [Skeleton3D](class_skeleton3d.md#class-skeleton3d). Can be used to guarantee that imported animations target skeleton bones rather than nodes. May also be used to assign the `"Root"` bone in a [BoneMap](class_bonemap.md#class-bonemap). See [Retargeting 3D Skeletons](../tutorials/assets_pipeline/retargeting_3d_skeletons.md) for more information.

* * *

[String](class_string.md#class-string) **nodes/root\_name** = `""` [🔗](#class-resourceimporterscene-property-nodes-root-name)

Override for the root node name. If empty, the root node will use what the scene specifies, or the file name if the scene does not specify a root name.

* * *

[float](class_float.md#class-float) **nodes/root\_scale** = `1.0` [🔗](#class-resourceimporterscene-property-nodes-root-scale)

The uniform scale to use for the scene root. The default value of `1.0` will not perform any rescaling. See [nodes/apply\_root\_scale](#class-resourceimporterscene-property-nodes-apply-root-scale) for details of how this scale is applied.

* * *

[Script](class_script.md#class-script) **nodes/root\_script** = `null` [🔗](#class-resourceimporterscene-property-nodes-root-script)

If set to a valid script, attaches the script to the root node of the imported scene. If the type of the root node is not compatible with the script, the root node will be replaced with a type that is compatible with the script. This setting can also be used on other non-mesh nodes in the scene to attach scripts to them.

* * *

[String](class_string.md#class-string) **nodes/root\_type** = `""` [🔗](#class-resourceimporterscene-property-nodes-root-type)

Override for the root node type. If empty, the root node will use what the scene specifies, or [Node3D](class_node3d.md#class-node3d) if the scene does not specify a root type. Using a node type that inherits from [Node3D](class_node3d.md#class-node3d) is recommended. Otherwise, you'll lose the ability to position the node directly in the 3D editor.

* * *

[bool](class_bool.md#class-bool) **nodes/use\_name\_suffixes** = `true` [🔗](#class-resourceimporterscene-property-nodes-use-name-suffixes)

If `true`, will use suffixes in the names of imported objects such as nodes and resources to determine types and properties, such as `-noimp` to skip import of a node or animation, `-alpha` to enable alpha transparency on a material, and `-vcol` to enable vertex colors on a material. Disabling this makes editor-imported files more similar to the original files, and more similar to files imported at runtime. See [Node type customization using name suffixes](../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization.md) for more information.

* * *

[bool](class_bool.md#class-bool) **nodes/use\_node\_type\_suffixes** = `true` [🔗](#class-resourceimporterscene-property-nodes-use-node-type-suffixes)

If `true`, will use suffixes in the node names to determine the node type, such as `-col` for collision shapes. This is only used when [nodes/use\_name\_suffixes](#class-resourceimporterscene-property-nodes-use-name-suffixes) is `true`. Disabling this makes editor-imported files more similar to the original files, and more similar to files imported at runtime. See [Node type customization using name suffixes](../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization.md) for more information.

* * *

[bool](class_bool.md#class-bool) **skins/use\_named\_skins** = `true` [🔗](#class-resourceimporterscene-property-skins-use-named-skins)

If checked, use named [Skin](class_skin.md#class-skin) s for animation. The [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) node contains 3 properties of relevance here: a skeleton [NodePath](class_nodepath.md#class-nodepath) pointing to the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node (usually `..`), a mesh, and a skin:

- The [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node contains a list of bones with names, their pose and rest, a name and a parent bone.

- The mesh is all of the raw vertex data needed to display a mesh. In terms of the mesh, it knows how vertices are weight-painted and uses some internal numbering often imported from 3D modeling software.

- The skin contains the information necessary to bind this mesh onto this Skeleton3D. For every one of the internal bone IDs chosen by the 3D modeling software, it contains two things. Firstly, a matrix known as the Bind Pose Matrix, Inverse Bind Matrix, or IBM for short. Secondly, the [Skin](class_skin.md#class-skin) contains each bone's name (if [skins/use\_named\_skins](#class-resourceimporterscene-property-skins-use-named-skins) is `true`), or the bone's index within the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) list (if [skins/use\_named\_skins](#class-resourceimporterscene-property-skins-use-named-skins) is `false`).


Together, this information is enough to tell Godot how to use the bone poses in the [Skeleton3D](class_skeleton3d.md#class-skeleton3d) node to render the mesh from each [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d). Note that each [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) may share binds, as is common in models exported from Blender, or each [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) may use a separate [Skin](class_skin.md#class-skin) object, as is common in models exported from other tools such as Maya.

[Previous](class_resourceimporteroggvorbis.md "ResourceImporterOggVorbis") [Next](class_resourceimportershaderfile.md "ResourceImporterShaderFile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporteroggvorbis.md "ResourceImporterOggVorbis") [Next](class_resourceimportershaderfile.md "ResourceImporterShaderFile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).