---
title: EditorScenePostImport — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorscenepostimport.html
crawled_at: "2026-08-13T10:36:39+12:00"
content_hash: de4600c9dd72aabc6706f088ba459bd952e4bb35c74adcd021eaefbd37c1d31a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorScenePostImport

* * *

# EditorScenePostImport

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Post-processes scenes after import.

## Description

Imported scenes can be automatically modified right after import by setting their **Custom Script** Import property to a `tool` script that inherits from this class.

The [\_post\_import()](#class-editorscenepostimport-private-method-post-import) callback receives the imported scene's root node and returns the modified version of the scene:

GDScriptC#

```
@tool # Needed so it runs in editor.
extends EditorScenePostImport

# This sample changes all node names.
# Called right after the scene is imported and gets the root node.
func _post_import(scene):
    # Change all node names to "modified_[oldnodename]"
    iterate(scene)
    return scene # Remember to return the imported scene

func iterate(node):
    if node != null:
        node.name = "modified_" + node.name
        for child in node.get_children():
            iterate(child)

```

```
using Godot;

// This sample changes all node names.
// Called right after the scene is imported and gets the root node.
[Tool]
public partial class NodeRenamer : EditorScenePostImport
{
    public override GodotObject _PostImport(Node scene)
    {
        // Change all node names to "modified_[oldnodename]"
        Iterate(scene);
        return scene; // Remember to return the imported scene
    }

    public void Iterate(Node node)
    {
        if (node != null)
        {
            node.Name = $"modified_{node.Name}";
            foreach (Node child in node.GetChildren())
            {
                Iterate(child);
            }
        }
    }
}

```

## Tutorials

- [Importing 3D scenes: Configuration: Using import scripts for automation](../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.md#using-import-scripts-for-automation)


## Methods

|     |     |
| --- | --- |
| [Object](class_object.md#class-object) | [\_post\_import](#class-editorscenepostimport-private-method-post-import)(scene: [Node](class_node.md#class-node)) virtual |
| [String](class_string.md#class-string) | [get\_source\_file](#class-editorscenepostimport-method-get-source-file)() const |

* * *

## Method Descriptions

[Object](class_object.md#class-object) **\_post\_import**(scene: [Node](class_node.md#class-node)) virtual [🔗](#class-editorscenepostimport-private-method-post-import)

Called after the scene was imported. This method must return the modified version of the scene.

* * *

[String](class_string.md#class-string) **get\_source\_file**() const [🔗](#class-editorscenepostimport-method-get-source-file)

Returns the source file path which got imported (e.g. `res://scene.dae`).

[Previous](class_editorsceneformatimporterufbx.md "EditorSceneFormatImporterUFBX") [Next](class_editorscenepostimportplugin.md "EditorScenePostImportPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorsceneformatimporterufbx.md "EditorSceneFormatImporterUFBX") [Next](class_editorscenepostimportplugin.md "EditorScenePostImportPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).