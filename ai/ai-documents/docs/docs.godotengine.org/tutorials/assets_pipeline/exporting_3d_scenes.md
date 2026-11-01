---
title: Exporting 3D scenes — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/assets_pipeline/exporting_3d_scenes.html
crawled_at: "2026-08-13T10:26:13+12:00"
content_hash: 3597ad2863e16edc1f6f2e9ba6afd63ab85e95f918de7ad89959a72704ff2bb4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Assets pipeline](index.md)
  - Exporting 3D scenes
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/assets_pipeline/exporting_3d_scenes.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Exporting 3D scenes

## Overview

In Godot, it is possible to export 3D scenes as a glTF 2.0 file. You can
export as a glTF binary ( `.glb` file) or glTF embedded with textures
( `gltf` \+ `.bin` \+ textures). This allows you to create scenes in Godot,
such as a CSG mesh blockout for a level, export it to clean it up in a
program such as Blender, and then bring it back into Godot.

Note

Only Blender 2.83 and newer can import glTF files exported by Godot.

To export a scene in the editor go to **Scene > Export As... > glTF 2.0 Scene...**

![../../_images/gltf_godot_export.png](../../_images/gltf_godot_export.png)

## Limitations

There are several limitations with glTF export.

- No support for exporting particles since their implementation varies across engines.

- ShaderMaterials cannot be exported.

- No support for exporting 2D scenes.


See also

3D scenes can be saved at runtime using
[runtime file loading and saving](../io/runtime_file_loading_and_saving.md#doc-runtime-file-loading-and-saving-3d-scenes),
including from an exported project.

[Previous](retargeting_3d_skeletons.md "Retargeting 3D Skeletons") [Next](escn_exporter/index.md "Blender ESCN exporter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](retargeting_3d_skeletons.md "Retargeting 3D Skeletons") [Next](escn_exporter/index.md "Blender ESCN exporter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).