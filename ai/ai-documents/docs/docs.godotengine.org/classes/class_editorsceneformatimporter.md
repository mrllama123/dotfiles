---
title: EditorSceneFormatImporter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorsceneformatimporter.html
crawled_at: "2026-08-13T10:26:58+12:00"
content_hash: 29d3c89b54162b38cbd8a0937b0899ec947691258f927b77c8087a5768e44352
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSceneFormatImporter

* * *

# EditorSceneFormatImporter

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorSceneFormatImporterBlend](class_editorsceneformatimporterblend.md#class-editorsceneformatimporterblend), [EditorSceneFormatImporterFBX2GLTF](class_editorsceneformatimporterfbx2gltf.md#class-editorsceneformatimporterfbx2gltf), [EditorSceneFormatImporterGLTF](class_editorsceneformatimportergltf.md#class-editorsceneformatimportergltf), [EditorSceneFormatImporterUFBX](class_editorsceneformatimporterufbx.md#class-editorsceneformatimporterufbx)

Imports scenes from third-parties' 3D files.

## Description

**EditorSceneFormatImporter** allows to define an importer script for a third-party 3D format.

To use **EditorSceneFormatImporter**, register it using the [EditorPlugin.add\_scene\_format\_importer\_plugin()](class_editorplugin.md#class-editorplugin-method-add-scene-format-importer-plugin) method first.

## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_extensions](#class-editorsceneformatimporter-private-method-get-extensions)() virtualconst |
| void | [\_get\_import\_options](#class-editorsceneformatimporter-private-method-get-import-options)(path: [String](class_string.md#class-string)) virtual |
| [Variant](class_variant.md#class-variant) | [\_get\_option\_visibility](#class-editorsceneformatimporter-private-method-get-option-visibility)(path: [String](class_string.md#class-string), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst |
| [Object](class_object.md#class-object) | [\_import\_scene](#class-editorsceneformatimporter-private-method-import-scene)(path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int), options: [Dictionary](class_dictionary.md#class-dictionary)) virtual |
| void | [add\_import\_option](#class-editorsceneformatimporter-method-add-import-option)(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_import\_option\_advanced](#class-editorsceneformatimporter-method-add-import-option-advanced)(type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint) = 0, hint\_string: [String](class_string.md#class-string) = "", usage\_flags: [int](class_int.md#class-int) = 6) |

* * *

## Constants

**IMPORT\_SCENE** = `1` [🔗](#class-editorsceneformatimporter-constant-import-scene)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_ANIMATION** = `2` [🔗](#class-editorsceneformatimporter-constant-import-animation)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_FAIL\_ON\_MISSING\_DEPENDENCIES** = `4` [🔗](#class-editorsceneformatimporter-constant-import-fail-on-missing-dependencies)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_GENERATE\_TANGENT\_ARRAYS** = `8` [🔗](#class-editorsceneformatimporter-constant-import-generate-tangent-arrays)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_USE\_NAMED\_SKIN\_BINDS** = `16` [🔗](#class-editorsceneformatimporter-constant-import-use-named-skin-binds)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_DISCARD\_MESHES\_AND\_MATERIALS** = `32` [🔗](#class-editorsceneformatimporter-constant-import-discard-meshes-and-materials)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**IMPORT\_FORCE\_DISABLE\_MESH\_COMPRESSION** = `64` [🔗](#class-editorsceneformatimporter-constant-import-force-disable-mesh-compression)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_extensions**() virtualconst [🔗](#class-editorsceneformatimporter-private-method-get-extensions)

Return supported file extensions for this scene importer.

* * *

void **\_get\_import\_options**(path: [String](class_string.md#class-string)) virtual [🔗](#class-editorsceneformatimporter-private-method-get-import-options)

Override to add general import options. These will appear in the main import dock on the editor. Add options via [add\_import\_option()](#class-editorsceneformatimporter-method-add-import-option) and [add\_import\_option\_advanced()](#class-editorsceneformatimporter-method-add-import-option-advanced).

**Note:** All **EditorSceneFormatImporter** and [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin) instances will add options for all files. It is good practice to check the file extension when `path` is non-empty.

When the user is editing project settings, `path` will be empty. It is recommended to add all options when `path` is empty to allow the user to customize Import Defaults.

* * *

[Variant](class_variant.md#class-variant) **\_get\_option\_visibility**(path: [String](class_string.md#class-string), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorsceneformatimporter-private-method-get-option-visibility)

Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.

* * *

[Object](class_object.md#class-object) **\_import\_scene**(path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int), options: [Dictionary](class_dictionary.md#class-dictionary)) virtual [🔗](#class-editorsceneformatimporter-private-method-import-scene)

Perform the bulk of the scene import logic here, for example using [GLTFDocument](class_gltfdocument.md#class-gltfdocument) or [FBXDocument](class_fbxdocument.md#class-fbxdocument).

* * *

void **add\_import\_option**(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorsceneformatimporter-method-add-import-option)

Add a specific import option (name and default value only). This function can only be called from [\_get\_import\_options()](#class-editorsceneformatimporter-private-method-get-import-options).

* * *

void **add\_import\_option\_advanced**(type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint) = 0, hint\_string: [String](class_string.md#class-string) = "", usage\_flags: [int](class_int.md#class-int) = 6) [🔗](#class-editorsceneformatimporter-method-add-import-option-advanced)

Add a specific import option. This function can only be called from [\_get\_import\_options()](#class-editorsceneformatimporter-private-method-get-import-options).

[Previous](class_editorresourcetooltipplugin.md "EditorResourceTooltipPlugin") [Next](class_editorsceneformatimporterblend.md "EditorSceneFormatImporterBlend")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorresourcetooltipplugin.md "EditorResourceTooltipPlugin") [Next](class_editorsceneformatimporterblend.md "EditorSceneFormatImporterBlend")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).