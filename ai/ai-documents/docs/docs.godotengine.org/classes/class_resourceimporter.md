---
title: ResourceImporter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceimporter.html
crawled_at: "2026-08-13T10:25:45+12:00"
content_hash: ec2d84628fc378bb9cc396c44fce14d14918e419c02193624a307a69a425c9f3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceImporter

* * *

# ResourceImporter

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin), [ResourceImporterBitMap](class_resourceimporterbitmap.md#class-resourceimporterbitmap), [ResourceImporterBMFont](class_resourceimporterbmfont.md#class-resourceimporterbmfont), [ResourceImporterCSVTranslation](class_resourceimportercsvtranslation.md#class-resourceimportercsvtranslation), [ResourceImporterDynamicFont](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont), [ResourceImporterImage](class_resourceimporterimage.md#class-resourceimporterimage), [ResourceImporterImageFont](class_resourceimporterimagefont.md#class-resourceimporterimagefont), [ResourceImporterLayeredTexture](class_resourceimporterlayeredtexture.md#class-resourceimporterlayeredtexture), [ResourceImporterMP3](class_resourceimportermp3.md#class-resourceimportermp3), [ResourceImporterOBJ](class_resourceimporterobj.md#class-resourceimporterobj), [ResourceImporterOggVorbis](class_resourceimporteroggvorbis.md#class-resourceimporteroggvorbis), [ResourceImporterScene](class_resourceimporterscene.md#class-resourceimporterscene), [ResourceImporterShaderFile](class_resourceimportershaderfile.md#class-resourceimportershaderfile), [ResourceImporterSVG](class_resourceimportersvg.md#class-resourceimportersvg), [ResourceImporterTexture](class_resourceimportertexture.md#class-resourceimportertexture), [ResourceImporterTextureAtlas](class_resourceimportertextureatlas.md#class-resourceimportertextureatlas), [ResourceImporterWAV](class_resourceimporterwav.md#class-resourceimporterwav)

Base class for resource importers.

## Description

This is the base class for Godot's resource importers. To implement your own resource importers using editor plugins, see [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin).

## Tutorials

- [Import plugins](../tutorials/plugins/editor/import_plugins.md)


## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_build\_dependencies](#class-resourceimporter-private-method-get-build-dependencies)(path: [String](class_string.md#class-string)) virtualconst |

* * *

## Enumerations

enum **ImportOrder**: [🔗](#enum-resourceimporter-importorder)

[ImportOrder](#enum-resourceimporter-importorder) **IMPORT\_ORDER\_DEFAULT** = `0`

The default import order.

[ImportOrder](#enum-resourceimporter-importorder) **IMPORT\_ORDER\_SCENE** = `100`

The import order for scenes, which ensures scenes are imported _after_ all other core resources such as textures. Custom importers should generally have an import order lower than `100` to avoid issues when importing scenes that rely on custom resources.

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_build\_dependencies**(path: [String](class_string.md#class-string)) virtualconst [🔗](#class-resourceimporter-private-method-get-build-dependencies)

Called when the engine compilation profile editor wants to check what build options an imported resource needs. For example, [ResourceImporterDynamicFont](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont) has a property called [ResourceImporterDynamicFont.multichannel\_signed\_distance\_field](class_resourceimporterdynamicfont.md#class-resourceimporterdynamicfont-property-multichannel-signed-distance-field), that depends on the engine to be build with the "msdfgen" module. If that resource happened to be a custom one, it would be handled like this:

```
func _get_build_dependencies(path):
    var resource = load(path)
    var dependencies = PackedStringArray()

    if resource.multichannel_signed_distance_field:
        dependencies.push_back("module_msdfgen_enabled")

    return dependencies

```

[Previous](class_resourceformatsaver.md "ResourceFormatSaver") [Next](class_resourceimporterbitmap.md "ResourceImporterBitMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceformatsaver.md "ResourceFormatSaver") [Next](class_resourceimporterbitmap.md "ResourceImporterBitMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).