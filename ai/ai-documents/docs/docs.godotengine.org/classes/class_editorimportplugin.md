---
title: EditorImportPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorimportplugin.html
crawled_at: "2026-08-13T10:22:56+12:00"
content_hash: 406bfe145780f58e54a14fc601998f8fd39f454c4253b7900e8546d1a8e3ff54
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorImportPlugin

* * *

# EditorImportPlugin

**Inherits:** [ResourceImporter](class_resourceimporter.md#class-resourceimporter) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Registers a custom resource importer in the editor. Use the class to parse any file and import it as a new resource type.

## Description

**EditorImportPlugin** s provide a way to extend the editor's resource import functionality. Use them to import resources from custom files or to provide alternatives to the editor's existing importers.

EditorImportPlugins work by associating with specific file extensions and a resource type. See [\_get\_recognized\_extensions()](#class-editorimportplugin-private-method-get-recognized-extensions) and [\_get\_resource\_type()](#class-editorimportplugin-private-method-get-resource-type). They may optionally specify some import presets that affect the import process. EditorImportPlugins are responsible for creating the resources and saving them in the `.godot/imported` directory (see [ProjectSettings.application/config/use\_hidden\_project\_data\_directory](class_projectsettings.md#class-projectsettings-property-application-config-use-hidden-project-data-directory)).

Below is an example EditorImportPlugin that imports a [Mesh](class_mesh.md#class-mesh) from a file with the extension ".special" or ".spec":

GDScriptC#

```
@tool
extends EditorImportPlugin

func _get_importer_name():
    return "my.special.plugin"

func _get_visible_name():
    return "Special Mesh"

func _get_recognized_extensions():
    return ["special", "spec"]

func _get_save_extension():
    return "mesh"

func _get_resource_type():
    return "Mesh"

func _get_preset_count():
    return 1

func _get_preset_name(preset_index):
    return "Default"

func _get_import_options(path, preset_index):
    return [{"name": "my_option", "default_value": false}]

func _import(source_file, save_path, options, platform_variants, gen_files):
    var file = FileAccess.open(source_file, FileAccess.READ)
    if file == null:
        return FAILED
    var mesh = ArrayMesh.new()
    # Fill the Mesh with data read in "file", left as an exercise to the reader.

    var filename = save_path + "." + _get_save_extension()
    return ResourceSaver.save(mesh, filename)

```

```
using Godot;

public partial class MySpecialPlugin : EditorImportPlugin
{
    public override string _GetImporterName()
    {
        return "my.special.plugin";
    }

    public override string _GetVisibleName()
    {
        return "Special Mesh";
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["special", "spec"];
    }

    public override string _GetSaveExtension()
    {
        return "mesh";
    }

    public override string _GetResourceType()
    {
        return "Mesh";
    }

    public override int _GetPresetCount()
    {
        return 1;
    }

    public override string _GetPresetName(int presetIndex)
    {
        return "Default";
    }

    public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetImportOptions(string path, int presetIndex)
    {
        return
        [
            new Godot.Collections.Dictionary
            {
                { "name", "myOption" },
                { "default_value", false },
            },
        ];
    }

    public override Error _Import(string sourceFile, string savePath, Godot.Collections.Dictionary options, Godot.Collections.Array<string> platformVariants, Godot.Collections.Array<string> genFiles)
    {
        using var file = FileAccess.Open(sourceFile, FileAccess.ModeFlags.Read);
        if (file.GetError() != Error.Ok)
        {
            return Error.Failed;
        }

        var mesh = new ArrayMesh();
        // Fill the Mesh with data read in "file", left as an exercise to the reader.
        string filename = $"{savePath}.{_GetSaveExtension()}";
        return ResourceSaver.Save(mesh, filename);
    }
}

```

To use **EditorImportPlugin**, register it using the [EditorPlugin.add\_import\_plugin()](class_editorplugin.md#class-editorplugin-method-add-import-plugin) method first.

## Tutorials

- [Import plugins](../tutorials/plugins/editor/import_plugins.md)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_can\_import\_threaded](#class-editorimportplugin-private-method-can-import-threaded)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_format\_version](#class-editorimportplugin-private-method-get-format-version)() virtualconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_import\_options](#class-editorimportplugin-private-method-get-import-options)(path: [String](class_string.md#class-string), preset\_index: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_import\_order](#class-editorimportplugin-private-method-get-import-order)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_importer\_name](#class-editorimportplugin-private-method-get-importer-name)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_get\_option\_visibility](#class-editorimportplugin-private-method-get-option-visibility)(path: [String](class_string.md#class-string), option\_name: [StringName](class_stringname.md#class-stringname), options: [Dictionary](class_dictionary.md#class-dictionary)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_preset\_count](#class-editorimportplugin-private-method-get-preset-count)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_preset\_name](#class-editorimportplugin-private-method-get-preset-name)(preset\_index: [int](class_int.md#class-int)) virtualconst |
| [float](class_float.md#class-float) | [\_get\_priority](#class-editorimportplugin-private-method-get-priority)() virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_recognized\_extensions](#class-editorimportplugin-private-method-get-recognized-extensions)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_resource\_type](#class-editorimportplugin-private-method-get-resource-type)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_save\_extension](#class-editorimportplugin-private-method-get-save-extension)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_visible\_name](#class-editorimportplugin-private-method-get-visible-name)() virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_import](#class-editorimportplugin-private-method-import)(source\_file: [String](class_string.md#class-string), save\_path: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary), platform\_variants: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], gen\_files: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [append\_import\_external\_resource](#class-editorimportplugin-method-append-import-external-resource)(path: [String](class_string.md#class-string), custom\_options: [Dictionary](class_dictionary.md#class-dictionary) = {}, custom\_importer: [String](class_string.md#class-string) = "", generator\_parameters: [Variant](class_variant.md#class-variant) = null) |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_can\_import\_threaded**() virtualconst [🔗](#class-editorimportplugin-private-method-can-import-threaded)

Tells whether this importer can be run in parallel on threads, or, on the contrary, it's only safe for the editor to call it from the main thread, for one file at a time.

If this method is not overridden, it will return `false` by default.

If this importer's implementation is thread-safe and can be run in parallel, override this with `true` to optimize for concurrency.

* * *

[int](class_int.md#class-int) **\_get\_format\_version**() virtualconst [🔗](#class-editorimportplugin-private-method-get-format-version)

Gets the format version of this importer. Increment this version when making incompatible changes to the format of the imported resources.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_import\_options**(path: [String](class_string.md#class-string), preset\_index: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorimportplugin-private-method-get-import-options)

Gets the options and default values for the preset at this index. Returns an Array of Dictionaries with the following keys: `name`, `default_value`, `property_hint` (optional), `hint_string` (optional), `usage` (optional).

* * *

[int](class_int.md#class-int) **\_get\_import\_order**() virtualconst [🔗](#class-editorimportplugin-private-method-get-import-order)

Gets the order of this importer to be run when importing resources. Importers with _lower_ import orders will be called first, and higher values will be called later. Use this to ensure the importer runs after the dependencies are already imported. The default import order is `0` unless overridden by a specific importer. See [ImportOrder](class_resourceimporter.md#enum-resourceimporter-importorder) for some predefined values.

* * *

[String](class_string.md#class-string) **\_get\_importer\_name**() virtualconst [🔗](#class-editorimportplugin-private-method-get-importer-name)

Gets the unique name of the importer.

* * *

[bool](class_bool.md#class-bool) **\_get\_option\_visibility**(path: [String](class_string.md#class-string), option\_name: [StringName](class_stringname.md#class-stringname), options: [Dictionary](class_dictionary.md#class-dictionary)) virtualconst [🔗](#class-editorimportplugin-private-method-get-option-visibility)

Gets whether the import option specified by `option_name` should be visible in the Import dock. The default implementation always returns `true`, making all options visible. This is mainly useful for hiding options that depend on others if one of them is disabled.

GDScriptC#

```
func _get_option_visibility(path, option_name, options):
    # Only show the lossy quality setting if the compression mode is set to "Lossy".
    if option_name == "compress/lossy_quality" and options.has("compress/mode"):
        return int(options["compress/mode"]) == COMPRESS_LOSSY # This is a constant that you set

    return true

```

```
public override bool _GetOptionVisibility(string path, StringName optionName, Godot.Collections.Dictionary options)
{
    // Only show the lossy quality setting if the compression mode is set to "Lossy".
    if (optionName == "compress/lossy_quality" && options.ContainsKey("compress/mode"))
    {
        return (int)options["compress/mode"] == CompressLossy; // This is a constant you set
    }

    return true;
}

```

* * *

[int](class_int.md#class-int) **\_get\_preset\_count**() virtualconst [🔗](#class-editorimportplugin-private-method-get-preset-count)

Gets the number of initial presets defined by the plugin. Use [\_get\_import\_options()](#class-editorimportplugin-private-method-get-import-options) to get the default options for the preset and [\_get\_preset\_name()](#class-editorimportplugin-private-method-get-preset-name) to get the name of the preset.

* * *

[String](class_string.md#class-string) **\_get\_preset\_name**(preset\_index: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorimportplugin-private-method-get-preset-name)

Gets the name of the options preset at this index.

* * *

[float](class_float.md#class-float) **\_get\_priority**() virtualconst [🔗](#class-editorimportplugin-private-method-get-priority)

Gets the priority of this plugin for the recognized extension. Higher priority plugins will be preferred. The default priority is `1.0`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_recognized\_extensions**() virtualconst [🔗](#class-editorimportplugin-private-method-get-recognized-extensions)

Gets the list of file extensions to associate with this loader (case-insensitive). e.g. `["obj"]`.

* * *

[String](class_string.md#class-string) **\_get\_resource\_type**() virtualconst [🔗](#class-editorimportplugin-private-method-get-resource-type)

Gets the Godot resource type associated with this loader. e.g. `"Mesh"` or `"Animation"`.

* * *

[String](class_string.md#class-string) **\_get\_save\_extension**() virtualconst [🔗](#class-editorimportplugin-private-method-get-save-extension)

Gets the extension used to save this resource in the `.godot/imported` directory (see [ProjectSettings.application/config/use\_hidden\_project\_data\_directory](class_projectsettings.md#class-projectsettings-property-application-config-use-hidden-project-data-directory)).

* * *

[String](class_string.md#class-string) **\_get\_visible\_name**() virtualconst [🔗](#class-editorimportplugin-private-method-get-visible-name)

Gets the name to display in the import window. You should choose this name as a continuation to "Import as", e.g. "Import as Special Mesh".

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_import**(source\_file: [String](class_string.md#class-string), save\_path: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary), platform\_variants: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], gen\_files: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\]) virtualconst [🔗](#class-editorimportplugin-private-method-import)

Imports `source_file` with the import `options` specified. Should return [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the import is successful, other values indicate failure.

The imported resource is expected to be saved to `save_path + "." + _get_save_extension()`. If a different variant is preferred for a [feature tag](../tutorials/export/feature_tags.md), save the variant to `save_path + "." + tag + "." + _get_save_extension()` and add the feature tag to `platform_variants`.

If additional resource files are generated in the resource filesystem ( `res://`), add their full path to `gen_files` so that the editor knows they depend on `source_file`.

This method must be overridden to do the actual importing work. See this class' description for an example of overriding this method.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **append\_import\_external\_resource**(path: [String](class_string.md#class-string), custom\_options: [Dictionary](class_dictionary.md#class-dictionary) = {}, custom\_importer: [String](class_string.md#class-string) = "", generator\_parameters: [Variant](class_variant.md#class-variant) = null) [🔗](#class-editorimportplugin-method-append-import-external-resource)

This function can only be called during the [\_import()](#class-editorimportplugin-private-method-import) callback and it allows manually importing resources from it. This is useful when the imported file generates external resources that require importing (as example, images). Custom parameters for the ".import" file can be passed via the `custom_options`. Additionally, in cases where multiple importers can handle a file, the `custom_importer` can be specified to force a specific one. This function performs a resource import and returns immediately with a success or error code. `generator_parameters` defines optional extra metadata which will be stored as `generator_parameters` in the `remap` section of the `.import` file, for example to store a md5 hash of the source data.

[Previous](class_editorfilesystemimportformatsupportquery.md "EditorFileSystemImportFormatSupportQuery") [Next](class_editorinspectorplugin.md "EditorInspectorPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorfilesystemimportformatsupportquery.md "EditorFileSystemImportFormatSupportQuery") [Next](class_editorinspectorplugin.md "EditorInspectorPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).