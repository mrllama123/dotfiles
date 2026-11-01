---
title: EditorSceneFormatImporterBlend — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorsceneformatimporterblend.html
crawled_at: "2026-08-13T10:38:59+12:00"
content_hash: 07bc33871d7b75bd398ac30ecffe9d2216b8b89913b8feed5b325e9a985a36bf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSceneFormatImporterBlend

* * *

# EditorSceneFormatImporterBlend

**Inherits:** [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Importer for Blender's `.blend` scene file format.

## Description

Imports Blender scenes in the `.blend` file format through the glTF 2.0 3D import pipeline. This importer requires Blender to be installed by the user, so that it can be used to export the scene as glTF 2.0.

The location of the Blender binary is set via the [EditorSettings.filesystem/import/blender/blender\_path](class_editorsettings.md#class-editorsettings-property-filesystem-import-blender-blender-path) setting.

This importer is only used if [ProjectSettings.filesystem/import/blender/enabled](class_projectsettings.md#class-projectsettings-property-filesystem-import-blender-enabled) is enabled, otherwise `.blend` files present in the project folder are not imported.

Blend import requires Blender 3.0.

Internally, the EditorSceneFormatImporterBlend uses the Blender glTF "Use Original" mode to reference external textures.

[Previous](class_editorsceneformatimporter.md "EditorSceneFormatImporter") [Next](class_editorsceneformatimporterfbx2gltf.md "EditorSceneFormatImporterFBX2GLTF")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorsceneformatimporter.md "EditorSceneFormatImporter") [Next](class_editorsceneformatimporterfbx2gltf.md "EditorSceneFormatImporterFBX2GLTF")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).