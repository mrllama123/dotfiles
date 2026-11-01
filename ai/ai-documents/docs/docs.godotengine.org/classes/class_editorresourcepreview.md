---
title: EditorResourcePreview — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorresourcepreview.html
crawled_at: "2026-08-13T10:38:28+12:00"
content_hash: fa83885e5f3cc812d9331705e08253c34d75ef0a0a4a6cca66376d6653d14e42
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorResourcePreview

* * *

# EditorResourcePreview

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to generate previews of resources or files.

## Description

This node is used to generate previews for resources or files.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_resource\_previewer()](class_editorinterface.md#class-editorinterface-method-get-resource-previewer).

## Methods

|     |     |
| --- | --- |
| void | [add\_preview\_generator](#class-editorresourcepreview-method-add-preview-generator)(generator: [EditorResourcePreviewGenerator](class_editorresourcepreviewgenerator.md#class-editorresourcepreviewgenerator)) |
| void | [check\_for\_invalidation](#class-editorresourcepreview-method-check-for-invalidation)(path: [String](class_string.md#class-string)) |
| void | [queue\_edited\_resource\_preview](#class-editorresourcepreview-method-queue-edited-resource-preview)(resource: [Resource](class_resource.md#class-resource), receiver: [Object](class_object.md#class-object), receiver\_func: [StringName](class_stringname.md#class-stringname), userdata: [Variant](class_variant.md#class-variant)) |
| void | [queue\_resource\_preview](#class-editorresourcepreview-method-queue-resource-preview)(path: [String](class_string.md#class-string), receiver: [Object](class_object.md#class-object), receiver\_func: [StringName](class_stringname.md#class-stringname), userdata: [Variant](class_variant.md#class-variant)) |
| void | [remove\_preview\_generator](#class-editorresourcepreview-method-remove-preview-generator)(generator: [EditorResourcePreviewGenerator](class_editorresourcepreviewgenerator.md#class-editorresourcepreviewgenerator)) |

* * *

## Signals

**preview\_invalidated**(path: [String](class_string.md#class-string)) [🔗](#class-editorresourcepreview-signal-preview-invalidated)

Emitted if a preview was invalidated (changed). `path` corresponds to the path of the preview.

* * *

## Method Descriptions

void **add\_preview\_generator**(generator: [EditorResourcePreviewGenerator](class_editorresourcepreviewgenerator.md#class-editorresourcepreviewgenerator)) [🔗](#class-editorresourcepreview-method-add-preview-generator)

Create an own, custom preview generator.

* * *

void **check\_for\_invalidation**(path: [String](class_string.md#class-string)) [🔗](#class-editorresourcepreview-method-check-for-invalidation)

Check if the resource changed, if so, it will be invalidated and the corresponding signal emitted.

* * *

void **queue\_edited\_resource\_preview**(resource: [Resource](class_resource.md#class-resource), receiver: [Object](class_object.md#class-object), receiver\_func: [StringName](class_stringname.md#class-stringname), userdata: [Variant](class_variant.md#class-variant)) [🔗](#class-editorresourcepreview-method-queue-edited-resource-preview)

Queue the `resource` being edited for preview. Once the preview is ready, the `receiver`'s `receiver_func` will be called. The `receiver_func` must take the following four arguments: [String](class_string.md#class-string) path, [Texture2D](class_texture2d.md#class-texture2d) preview, [Texture2D](class_texture2d.md#class-texture2d) thumbnail\_preview, [Variant](class_variant.md#class-variant) userdata. `userdata` can be anything, and will be returned when `receiver_func` is called.

**Note:** If it was not possible to create the preview the `receiver_func` will still be called, but the preview will be `null`.

* * *

void **queue\_resource\_preview**(path: [String](class_string.md#class-string), receiver: [Object](class_object.md#class-object), receiver\_func: [StringName](class_stringname.md#class-stringname), userdata: [Variant](class_variant.md#class-variant)) [🔗](#class-editorresourcepreview-method-queue-resource-preview)

Queue a resource file located at `path` for preview. Once the preview is ready, the `receiver`'s `receiver_func` will be called. The `receiver_func` must take the following four arguments: [String](class_string.md#class-string) path, [Texture2D](class_texture2d.md#class-texture2d) preview, [Texture2D](class_texture2d.md#class-texture2d) thumbnail\_preview, [Variant](class_variant.md#class-variant) userdata. `userdata` can be anything, and will be returned when `receiver_func` is called.

**Note:** If it was not possible to create the preview the `receiver_func` will still be called, but the preview will be `null`.

* * *

void **remove\_preview\_generator**(generator: [EditorResourcePreviewGenerator](class_editorresourcepreviewgenerator.md#class-editorresourcepreviewgenerator)) [🔗](#class-editorresourcepreview-method-remove-preview-generator)

Removes a custom preview generator.

[Previous](class_editorresourcepicker.md "EditorResourcePicker") [Next](class_editorscriptpicker.md "EditorScriptPicker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorresourcepicker.md "EditorResourcePicker") [Next](class_editorscriptpicker.md "EditorScriptPicker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).