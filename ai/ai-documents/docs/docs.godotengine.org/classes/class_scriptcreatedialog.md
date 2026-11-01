---
title: ScriptCreateDialog — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scriptcreatedialog.html
crawled_at: "2026-08-13T10:39:58+12:00"
content_hash: e4876e243dce821ce9069a15e713fbe45abc275d8e49dc46bd1e779cef6cf20a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptCreateDialog

* * *

# ScriptCreateDialog

**Inherits:** [ConfirmationDialog](class_confirmationdialog.md#class-confirmationdialog) **<** [AcceptDialog](class_acceptdialog.md#class-acceptdialog) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's popup dialog for creating new [Script](class_script.md#class-script) files.

## Description

The **ScriptCreateDialog** creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling one of the [Window.popup()](class_window.md#class-window-method-popup) methods.

GDScriptC#

```
func _ready():
    var dialog = ScriptCreateDialog.new();
    dialog.config("Node", "res://new_node.gd") # For in-engine types.
    dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # For script types.
    dialog.popup_centered()

```

```
public override void _Ready()
{
    var dialog = new ScriptCreateDialog();
    dialog.Config("Node", "res://NewNode.cs"); // For in-engine types.
    dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // For script types.
    dialog.PopupCentered();
}

```

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | dialog\_hide\_on\_ok | `false` (overrides [AcceptDialog](class_acceptdialog.md#class-acceptdialog-property-dialog-hide-on-ok)) |
| [String](class_string.md#class-string) | ok\_button\_text | `"Create"` (overrides [AcceptDialog](class_acceptdialog.md#class-acceptdialog-property-ok-button-text)) |
| [String](class_string.md#class-string) | title | `"Attach Node Script"` (overrides [Window](class_window.md#class-window-property-title)) |

## Methods

|     |     |
| --- | --- |
| void | [config](#class-scriptcreatedialog-method-config)(inherits: [String](class_string.md#class-string), path: [String](class_string.md#class-string), built\_in\_enabled: [bool](class_bool.md#class-bool) = true, load\_enabled: [bool](class_bool.md#class-bool) = true) |

* * *

## Signals

**script\_created**(script: [Script](class_script.md#class-script)) [🔗](#class-scriptcreatedialog-signal-script-created)

Emitted when the user clicks the OK button.

* * *

## Method Descriptions

void **config**(inherits: [String](class_string.md#class-string), path: [String](class_string.md#class-string), built\_in\_enabled: [bool](class_bool.md#class-bool) = true, load\_enabled: [bool](class_bool.md#class-bool) = true) [🔗](#class-scriptcreatedialog-method-config)

Prefills required fields to configure the ScriptCreateDialog for use.

[Previous](class_rootmotionview.md "RootMotionView") [Next](class_scripteditor.md "ScriptEditor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rootmotionview.md "RootMotionView") [Next](class_scripteditor.md "ScriptEditor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).