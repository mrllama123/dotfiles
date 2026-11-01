---
title: EditorScript — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorscript.html
crawled_at: "2026-08-13T10:37:39+12:00"
content_hash: eddb820793db72bc8256dc75c194f4911260671f117bb2ee3443c1c0a4db1ac7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorScript

* * *

# EditorScript

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base script that can be used to add extension functions to the editor.

## Description

Scripts extending this class and implementing its [\_run()](#class-editorscript-private-method-run) method can be executed from the Script Editor's **File > Run** menu option (or by pressing `Ctrl + Shift + X`) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using [EditorPlugin](class_editorplugin.md#class-editorplugin) s instead.

If a script extending this class also has a global class name, it will be included in the editor's command palette.

**Note:** Extending scripts need to have `tool` mode enabled.

**Example:** Running the following script prints "Hello from the Godot Editor!":

GDScriptC#

```
@tool
extends EditorScript

func _run():
    print("Hello from the Godot Editor!")

```

```
using Godot;

[Tool]
public partial class HelloEditor : EditorScript
{
    public override void _Run()
    {
        GD.Print("Hello from the Godot Editor!");
    }
}

```

**Note:** EditorScript is [RefCounted](class_refcounted.md#class-refcounted), meaning it is destroyed when nothing references it. This can cause errors during asynchronous operations if there are no references to the script.

## Methods

|     |     |
| --- | --- |
| void | [\_run](#class-editorscript-private-method-run)() virtualrequired |
| void | [add\_root\_node](#class-editorscript-method-add-root-node)(node: [Node](class_node.md#class-node)) |
| [EditorInterface](class_editorinterface.md#class-editorinterface) | [get\_editor\_interface](#class-editorscript-method-get-editor-interface)() const |
| [Node](class_node.md#class-node) | [get\_scene](#class-editorscript-method-get-scene)() const |

* * *

## Method Descriptions

void **\_run**() virtualrequired [🔗](#class-editorscript-private-method-run)

This method is executed by the Editor when **File > Run** is used.

* * *

void **add\_root\_node**(node: [Node](class_node.md#class-node)) [🔗](#class-editorscript-method-add-root-node)

Makes `node` root of the currently opened scene. Only works if the scene is empty. If the `node` is a scene instance, an inheriting scene will be created.

* * *

[EditorInterface](class_editorinterface.md#class-editorinterface) **get\_editor\_interface**() const [🔗](#class-editorscript-method-get-editor-interface)

**Deprecated:** [EditorInterface](class_editorinterface.md#class-editorinterface) is a global singleton and can be accessed directly by its name.

Returns the [EditorInterface](class_editorinterface.md#class-editorinterface) singleton instance.

* * *

[Node](class_node.md#class-node) **get\_scene**() const [🔗](#class-editorscript-method-get-scene)

Returns the edited (current) scene's root [Node](class_node.md#class-node). Equivalent of [EditorInterface.get\_edited\_scene\_root()](class_editorinterface.md#class-editorinterface-method-get-edited-scene-root).

[Previous](class_editorscenepostimportplugin.md "EditorScenePostImportPlugin") [Next](class_editorselection.md "EditorSelection")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorscenepostimportplugin.md "EditorScenePostImportPlugin") [Next](class_editorselection.md "EditorSelection")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).