---
title: EditorCommandPalette — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorcommandpalette.html
crawled_at: "2026-08-13T10:25:00+12:00"
content_hash: 509f21a0b993bce13c776f21e461838a416362f4b48a1b0bea4403a8a32b2e2f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorCommandPalette

* * *

# EditorCommandPalette

**Inherits:** [ConfirmationDialog](class_confirmationdialog.md#class-confirmationdialog) **<** [AcceptDialog](class_acceptdialog.md#class-acceptdialog) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's command palette.

## Description

Object that holds all the available Commands and their shortcuts text. These Commands can be accessed through **Editor > Command Palette** menu.

Command key names use slash delimiters to distinguish sections, for example: `"example/command1"` then `example` will be the section name.

GDScriptC#

```
var command_palette = EditorInterface.get_command_palette()
# external_command is a function that will be called with the command is executed.
var command_callable = Callable(self, "external_command").bind(arguments)
command_palette.add_command("command", "test/command",command_callable)

```

```
EditorCommandPalette commandPalette = EditorInterface.Singleton.GetCommandPalette();
// ExternalCommand is a function that will be called with the command is executed.
Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
commandPalette.AddCommand("command", "test/command", commandCallable)

```

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_command\_palette()](class_editorinterface.md#class-editorinterface-method-get-command-palette).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | dialog\_hide\_on\_ok | `false` (overrides [AcceptDialog](class_acceptdialog.md#class-acceptdialog-property-dialog-hide-on-ok)) |

## Methods

|     |     |
| --- | --- |
| void | [add\_command](#class-editorcommandpalette-method-add-command)(command\_name: [String](class_string.md#class-string), key\_name: [String](class_string.md#class-string), binded\_callable: [Callable](class_callable.md#class-callable), shortcut\_text: [String](class_string.md#class-string) = "None") |
| void | [remove\_command](#class-editorcommandpalette-method-remove-command)(key\_name: [String](class_string.md#class-string)) |

* * *

## Method Descriptions

void **add\_command**(command\_name: [String](class_string.md#class-string), key\_name: [String](class_string.md#class-string), binded\_callable: [Callable](class_callable.md#class-callable), shortcut\_text: [String](class_string.md#class-string) = "None") [🔗](#class-editorcommandpalette-method-add-command)

Adds a custom command to EditorCommandPalette.

- `command_name`: [String](class_string.md#class-string) (Name of the **Command**. This is displayed to the user.)

- `key_name`: [String](class_string.md#class-string) (Name of the key for a particular **Command**. This is used to uniquely identify the **Command**.)

- `binded_callable`: [Callable](class_callable.md#class-callable) (Callable of the **Command**. This will be executed when the **Command** is selected.)

- `shortcut_text`: [String](class_string.md#class-string) (Shortcut text of the **Command** if available.)


* * *

void **remove\_command**(key\_name: [String](class_string.md#class-string)) [🔗](#class-editorcommandpalette-method-remove-command)

Removes the custom command from EditorCommandPalette.

- `key_name`: [String](class_string.md#class-string) (Name of the key for a particular **Command**.)


[Previous](class_directionallight3d.md "DirectionalLight3D") [Next](class_editorfiledialog.md "EditorFileDialog")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_directionallight3d.md "DirectionalLight3D") [Next](class_editorfiledialog.md "EditorFileDialog")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).