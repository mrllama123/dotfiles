---
title: EditorResourceTooltipPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorresourcetooltipplugin.html
crawled_at: "2026-08-13T10:26:03+12:00"
content_hash: 8ae403af15326830e6ada9b86daf68d20c8d04f39a72ab1179cfff7b384ca5f7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorResourceTooltipPlugin

* * *

# EditorResourceTooltipPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A plugin that advanced tooltip for its handled resource type.

## Description

Resource tooltip plugins are used by [FileSystemDock](class_filesystemdock.md#class-filesystemdock) to generate customized tooltips for specific resources. E.g. tooltip for a [Texture2D](class_texture2d.md#class-texture2d) displays a bigger preview and the texture's dimensions.

A plugin must be first registered with [FileSystemDock.add\_resource\_tooltip\_plugin()](class_filesystemdock.md#class-filesystemdock-method-add-resource-tooltip-plugin). When the user hovers a resource in filesystem dock which is handled by the plugin, [\_make\_tooltip\_for\_path()](#class-editorresourcetooltipplugin-private-method-make-tooltip-for-path) is called to create the tooltip. It works similarly to [Control.\_make\_custom\_tooltip()](class_control.md#class-control-private-method-make-custom-tooltip).

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_handles](#class-editorresourcetooltipplugin-private-method-handles)(type: [String](class_string.md#class-string)) virtualconst |
| [Control](class_control.md#class-control) | [\_make\_tooltip\_for\_path](#class-editorresourcetooltipplugin-private-method-make-tooltip-for-path)(path: [String](class_string.md#class-string), metadata: [Dictionary](class_dictionary.md#class-dictionary), base: [Control](class_control.md#class-control)) virtualconst |
| void | [request\_thumbnail](#class-editorresourcetooltipplugin-method-request-thumbnail)(path: [String](class_string.md#class-string), control: [TextureRect](class_texturerect.md#class-texturerect)) const |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_handles**(type: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorresourcetooltipplugin-private-method-handles)

Return `true` if the plugin is going to handle the given [Resource](class_resource.md#class-resource) `type`.

* * *

[Control](class_control.md#class-control) **\_make\_tooltip\_for\_path**(path: [String](class_string.md#class-string), metadata: [Dictionary](class_dictionary.md#class-dictionary), base: [Control](class_control.md#class-control)) virtualconst [🔗](#class-editorresourcetooltipplugin-private-method-make-tooltip-for-path)

Create and return a tooltip that will be displayed when the user hovers a resource under the given `path` in filesystem dock.

The `metadata` dictionary is provided by preview generator (see [EditorResourcePreviewGenerator.\_generate()](class_editorresourcepreviewgenerator.md#class-editorresourcepreviewgenerator-private-method-generate)).

`base` is the base default tooltip, which is a [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) with a file name, type and size labels. If another plugin handled the same file type, `base` will be output from the previous plugin. For best result, make sure the base tooltip is part of the returned [Control](class_control.md#class-control).

**Note:** It's unadvised to use [ResourceLoader.load()](class_resourceloader.md#class-resourceloader-method-load), especially with heavy resources like models or textures, because it will make the editor unresponsive when creating the tooltip. You can use [request\_thumbnail()](#class-editorresourcetooltipplugin-method-request-thumbnail) if you want to display a preview in your tooltip.

**Note:** If you decide to discard the `base`, make sure to call [Node.queue\_free()](class_node.md#class-node-method-queue-free), because it's not freed automatically.

```
func _make_tooltip_for_path(path, metadata, base):
    var t_rect = TextureRect.new()
    request_thumbnail(path, t_rect)
    base.add_child(t_rect) # The TextureRect will appear at the bottom of the tooltip.
    return base

```

* * *

void **request\_thumbnail**(path: [String](class_string.md#class-string), control: [TextureRect](class_texturerect.md#class-texturerect)) const [🔗](#class-editorresourcetooltipplugin-method-request-thumbnail)

Requests a thumbnail for the given [TextureRect](class_texturerect.md#class-texturerect). The thumbnail is created asynchronously by [EditorResourcePreview](class_editorresourcepreview.md#class-editorresourcepreview) and automatically set when available.

[Previous](class_editorresourcepreviewgenerator.md "EditorResourcePreviewGenerator") [Next](class_editorsceneformatimporter.md "EditorSceneFormatImporter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorresourcepreviewgenerator.md "EditorResourcePreviewGenerator") [Next](class_editorsceneformatimporter.md "EditorSceneFormatImporter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).