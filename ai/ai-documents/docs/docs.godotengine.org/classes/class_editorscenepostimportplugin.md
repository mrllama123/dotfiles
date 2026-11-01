---
title: EditorScenePostImportPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorscenepostimportplugin.html
crawled_at: "2026-08-13T10:25:40+12:00"
content_hash: a8aa413c883141c9c54f7543c57461786fa1293d92fe2bcff28113a7aa575664
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorScenePostImportPlugin

* * *

# EditorScenePostImportPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plugin to control and modifying the process of importing a scene.

## Description

This plugin type exists to modify the process of importing scenes, allowing to change the content as well as add importer options at every stage of the process.

## Methods

|     |     |
| --- | --- |
| void | [\_get\_import\_options](#class-editorscenepostimportplugin-private-method-get-import-options)(path: [String](class_string.md#class-string)) virtual |
| void | [\_get\_internal\_import\_options](#class-editorscenepostimportplugin-private-method-get-internal-import-options)(category: [int](class_int.md#class-int)) virtual |
| [Variant](class_variant.md#class-variant) | [\_get\_internal\_option\_update\_view\_required](#class-editorscenepostimportplugin-private-method-get-internal-option-update-view-required)(category: [int](class_int.md#class-int), option: [String](class_string.md#class-string)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_internal\_option\_visibility](#class-editorscenepostimportplugin-private-method-get-internal-option-visibility)(category: [int](class_int.md#class-int), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_option\_visibility](#class-editorscenepostimportplugin-private-method-get-option-visibility)(path: [String](class_string.md#class-string), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst |
| void | [\_internal\_process](#class-editorscenepostimportplugin-private-method-internal-process)(category: [int](class_int.md#class-int), base\_node: [Node](class_node.md#class-node), node: [Node](class_node.md#class-node), resource: [Resource](class_resource.md#class-resource)) virtual |
| void | [\_post\_process](#class-editorscenepostimportplugin-private-method-post-process)(scene: [Node](class_node.md#class-node)) virtual |
| void | [\_pre\_process](#class-editorscenepostimportplugin-private-method-pre-process)(scene: [Node](class_node.md#class-node)) virtual |
| void | [add\_import\_option](#class-editorscenepostimportplugin-method-add-import-option)(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_import\_option\_advanced](#class-editorscenepostimportplugin-method-add-import-option-advanced)(type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint) = 0, hint\_string: [String](class_string.md#class-string) = "", usage\_flags: [int](class_int.md#class-int) = 6) |
| [Variant](class_variant.md#class-variant) | [get\_option\_value](#class-editorscenepostimportplugin-method-get-option-value)(name: [StringName](class_stringname.md#class-stringname)) const |

* * *

## Enumerations

enum **InternalImportCategory**: [🔗](#enum-editorscenepostimportplugin-internalimportcategory)

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_NODE** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_MESH\_3D\_NODE** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_MESH** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_MATERIAL** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_ANIMATION** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_ANIMATION\_NODE** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_SKELETON\_3D\_NODE** = `6`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[InternalImportCategory](#enum-editorscenepostimportplugin-internalimportcategory) **INTERNAL\_IMPORT\_CATEGORY\_MAX** = `7`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

void **\_get\_import\_options**(path: [String](class_string.md#class-string)) virtual [🔗](#class-editorscenepostimportplugin-private-method-get-import-options)

Override to add general import options. These will appear in the main import dock on the editor. Add options via [add\_import\_option()](#class-editorscenepostimportplugin-method-add-import-option) and [add\_import\_option\_advanced()](#class-editorscenepostimportplugin-method-add-import-option-advanced).

* * *

void **\_get\_internal\_import\_options**(category: [int](class_int.md#class-int)) virtual [🔗](#class-editorscenepostimportplugin-private-method-get-internal-import-options)

Override to add internal import options. These will appear in the 3D scene import dialog. Add options via [add\_import\_option()](#class-editorscenepostimportplugin-method-add-import-option) and [add\_import\_option\_advanced()](#class-editorscenepostimportplugin-method-add-import-option-advanced).

* * *

[Variant](class_variant.md#class-variant) **\_get\_internal\_option\_update\_view\_required**(category: [int](class_int.md#class-int), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorscenepostimportplugin-private-method-get-internal-option-update-view-required)

Should return `true` if the 3D view of the import dialog needs to update when changing the given option.

* * *

[Variant](class_variant.md#class-variant) **\_get\_internal\_option\_visibility**(category: [int](class_int.md#class-int), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorscenepostimportplugin-private-method-get-internal-option-visibility)

Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.

* * *

[Variant](class_variant.md#class-variant) **\_get\_option\_visibility**(path: [String](class_string.md#class-string), for\_animation: [bool](class_bool.md#class-bool), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorscenepostimportplugin-private-method-get-option-visibility)

Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.

* * *

void **\_internal\_process**(category: [int](class_int.md#class-int), base\_node: [Node](class_node.md#class-node), node: [Node](class_node.md#class-node), resource: [Resource](class_resource.md#class-resource)) virtual [🔗](#class-editorscenepostimportplugin-private-method-internal-process)

Process a specific node or resource for a given category.

* * *

void **\_post\_process**(scene: [Node](class_node.md#class-node)) virtual [🔗](#class-editorscenepostimportplugin-private-method-post-process)

Post-process the scene. This function is called after the final scene has been configured.

* * *

void **\_pre\_process**(scene: [Node](class_node.md#class-node)) virtual [🔗](#class-editorscenepostimportplugin-private-method-pre-process)

Pre-process the scene. This function is called right after the scene format loader loaded the scene and no changes have been made.

Pre-process may be used to adjust internal import options in the `"nodes"`, `"meshes"`, `"animations"` or `"materials"` keys inside `get_option_value("_subresources")`.

* * *

void **add\_import\_option**(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorscenepostimportplugin-method-add-import-option)

Add a specific import option (name and default value only). This function can only be called from [\_get\_import\_options()](#class-editorscenepostimportplugin-private-method-get-import-options) and [\_get\_internal\_import\_options()](#class-editorscenepostimportplugin-private-method-get-internal-import-options).

* * *

void **add\_import\_option\_advanced**(type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), default\_value: [Variant](class_variant.md#class-variant), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint) = 0, hint\_string: [String](class_string.md#class-string) = "", usage\_flags: [int](class_int.md#class-int) = 6) [🔗](#class-editorscenepostimportplugin-method-add-import-option-advanced)

Add a specific import option. This function can only be called from [\_get\_import\_options()](#class-editorscenepostimportplugin-private-method-get-import-options) and [\_get\_internal\_import\_options()](#class-editorscenepostimportplugin-private-method-get-internal-import-options).

* * *

[Variant](class_variant.md#class-variant) **get\_option\_value**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorscenepostimportplugin-method-get-option-value)

Query the value of an option. This function can only be called from those querying visibility, or processing.

[Previous](class_editorscenepostimport.md "EditorScenePostImport") [Next](class_editorscript.md "EditorScript")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorscenepostimport.md "EditorScenePostImport") [Next](class_editorscript.md "EditorScript")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).