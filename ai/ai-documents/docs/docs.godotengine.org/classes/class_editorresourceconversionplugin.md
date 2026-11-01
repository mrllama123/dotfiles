---
title: EditorResourceConversionPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorresourceconversionplugin.html
crawled_at: "2026-08-13T10:22:39+12:00"
content_hash: e9ad0b2b13bcadcb9d31b9b18526c9690060edbcb7b178c165546a0570806522
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorResourceConversionPlugin

* * *

# EditorResourceConversionPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plugin for adding custom converters from one resource format to another in the editor resource picker context menu; for example, converting a [StandardMaterial3D](class_standardmaterial3d.md#class-standardmaterial3d) to a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

## Description

**EditorResourceConversionPlugin** is invoked when the context menu is brought up for a resource in the editor inspector. Relevant conversion plugins will appear as menu options to convert the given resource to a target type.

Below shows an example of a basic plugin that will convert an [ImageTexture](class_imagetexture.md#class-imagetexture) to a [PortableCompressedTexture2D](class_portablecompressedtexture2d.md#class-portablecompressedtexture2d).

GDScript

```
extends EditorResourceConversionPlugin

func _handles(resource: Resource):
    return resource is ImageTexture

func _converts_to():
    return "PortableCompressedTexture2D"

func _convert(itex: Resource):
    var ptex = PortableCompressedTexture2D.new()
    ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
    return ptex

```

To use an **EditorResourceConversionPlugin**, register it using the [EditorPlugin.add\_resource\_conversion\_plugin()](class_editorplugin.md#class-editorplugin-method-add-resource-conversion-plugin) method first.

## Methods

|     |     |
| --- | --- |
| [Resource](class_resource.md#class-resource) | [\_convert](#class-editorresourceconversionplugin-private-method-convert)(resource: [Resource](class_resource.md#class-resource)) virtualconst |
| [String](class_string.md#class-string) | [\_converts\_to](#class-editorresourceconversionplugin-private-method-converts-to)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_handles](#class-editorresourceconversionplugin-private-method-handles)(resource: [Resource](class_resource.md#class-resource)) virtualconst |

* * *

## Method Descriptions

[Resource](class_resource.md#class-resource) **\_convert**(resource: [Resource](class_resource.md#class-resource)) virtualconst [🔗](#class-editorresourceconversionplugin-private-method-convert)

Takes an input [Resource](class_resource.md#class-resource) and converts it to the type given in [\_converts\_to()](#class-editorresourceconversionplugin-private-method-converts-to). The returned [Resource](class_resource.md#class-resource) is the result of the conversion, and the input [Resource](class_resource.md#class-resource) remains unchanged.

* * *

[String](class_string.md#class-string) **\_converts\_to**() virtualconst [🔗](#class-editorresourceconversionplugin-private-method-converts-to)

Returns the class name of the target type of [Resource](class_resource.md#class-resource) that this plugin converts source resources to.

* * *

[bool](class_bool.md#class-bool) **\_handles**(resource: [Resource](class_resource.md#class-resource)) virtualconst [🔗](#class-editorresourceconversionplugin-private-method-handles)

Called to determine whether a particular [Resource](class_resource.md#class-resource) can be converted to the target resource type by this plugin.

[Previous](class_editorpaths.md "EditorPaths") [Next](class_editorresourcepreviewgenerator.md "EditorResourcePreviewGenerator")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorpaths.md "EditorPaths") [Next](class_editorresourcepreviewgenerator.md "EditorResourcePreviewGenerator")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).