---
title: ScriptEditor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scripteditor.html
crawled_at: "2026-08-13T10:21:54+12:00"
content_hash: b286e6bbbbd81f1fcf2c4f0250c0f13e35d1b3a31001f25f406a00b1a503611a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptEditor

* * *

# ScriptEditor

**Inherits:** [PanelContainer](class_panelcontainer.md#class-panelcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's script editor.

## Description

Godot editor's script editor.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_script\_editor()](class_editorinterface.md#class-editorinterface-method-get-script-editor).

## Methods

|     |     |
| --- | --- |
| void | [clear\_docs\_from\_script](#class-scripteditor-method-clear-docs-from-script)(script: [Script](class_script.md#class-script)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_breakpoints](#class-scripteditor-method-get-breakpoints)() |
| [ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase) | [get\_current\_editor](#class-scripteditor-method-get-current-editor)() const |
| [Script](class_script.md#class-script) | [get\_current\_script](#class-scripteditor-method-get-current-script)() |
| [Array](class_array.md#class-array)\[ [ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase)\] | [get\_open\_script\_editors](#class-scripteditor-method-get-open-script-editors)() const |
| [Array](class_array.md#class-array)\[ [Script](class_script.md#class-script)\] | [get\_open\_scripts](#class-scripteditor-method-get-open-scripts)() const |
| void | [goto\_help](#class-scripteditor-method-goto-help)(topic: [String](class_string.md#class-string)) |
| void | [goto\_line](#class-scripteditor-method-goto-line)(line\_number: [int](class_int.md#class-int)) |
| void | [open\_script\_create\_dialog](#class-scripteditor-method-open-script-create-dialog)(base\_name: [String](class_string.md#class-string), base\_path: [String](class_string.md#class-string)) |
| void | [register\_syntax\_highlighter](#class-scripteditor-method-register-syntax-highlighter)(syntax\_highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) |
| void | [unregister\_syntax\_highlighter](#class-scripteditor-method-unregister-syntax-highlighter)(syntax\_highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) |
| void | [update\_docs\_from\_script](#class-scripteditor-method-update-docs-from-script)(script: [Script](class_script.md#class-script)) |

* * *

## Signals

**editor\_script\_changed**(script: [Script](class_script.md#class-script)) [🔗](#class-scripteditor-signal-editor-script-changed)

Emitted when user changed active script. Argument is a freshly activated [Script](class_script.md#class-script).

* * *

**script\_close**(script: [Script](class_script.md#class-script)) [🔗](#class-scripteditor-signal-script-close)

Emitted when editor is about to close the active script. Argument is a [Script](class_script.md#class-script) that is going to be closed.

* * *

## Method Descriptions

void **clear\_docs\_from\_script**(script: [Script](class_script.md#class-script)) [🔗](#class-scripteditor-method-clear-docs-from-script)

Removes the documentation for the given `script`.

**Note:** This should be called whenever the script is changed to keep the open documentation state up to date.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_breakpoints**() [🔗](#class-scripteditor-method-get-breakpoints)

Returns array of breakpoints.

* * *

[ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase) **get\_current\_editor**() const [🔗](#class-scripteditor-method-get-current-editor)

Returns the [ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase) object that the user is currently editing.

* * *

[Script](class_script.md#class-script) **get\_current\_script**() [🔗](#class-scripteditor-method-get-current-script)

Returns a [Script](class_script.md#class-script) that is currently active in editor.

* * *

[Array](class_array.md#class-array)\[ [ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase)\] **get\_open\_script\_editors**() const [🔗](#class-scripteditor-method-get-open-script-editors)

Returns an array with all [ScriptEditorBase](class_scripteditorbase.md#class-scripteditorbase) objects which are currently open in editor.

* * *

[Array](class_array.md#class-array)\[ [Script](class_script.md#class-script)\] **get\_open\_scripts**() const [🔗](#class-scripteditor-method-get-open-scripts)

Returns an array with all [Script](class_script.md#class-script) objects which are currently open in editor.

* * *

void **goto\_help**(topic: [String](class_string.md#class-string)) [🔗](#class-scripteditor-method-goto-help)

Opens help for the given topic. The `topic` is an encoded string that controls which class, method, constant, signal, annotation, property, or theme item should be focused.

The supported `topic` formats include `class_name:class`, `class_method:class:method`, `class_constant:class:constant`, `class_signal:class:signal`, `class_annotation:class:@annotation`, `class_property:class:property`, and `class_theme_item:class:item`, where `class` is the class name, `method` is the method name, `constant` is the constant name, `signal` is the signal name, `annotation` is the annotation name, `property` is the property name, and `item` is the theme item.

```
# Shows help for the Node class.
class_name:Node
# Shows help for the global min function.
# Global objects are accessible in the `@GlobalScope` namespace, shown here.
class_method:@GlobalScope:min
# Shows help for get_viewport in the Node class.
class_method:Node:get_viewport
# Shows help for the Input constant MOUSE_BUTTON_MIDDLE.
class_constant:Input:MOUSE_BUTTON_MIDDLE
# Shows help for the BaseButton signal pressed.
class_signal:BaseButton:pressed
# Shows help for the CanvasItem property visible.
class_property:CanvasItem:visible
# Shows help for the GDScript annotation export.
# Annotations should be prefixed with the `@` symbol in the descriptor, as shown here.
class_annotation:@GDScript:@export
# Shows help for the GraphNode theme item named panel_selected.
class_theme_item:GraphNode:panel_selected

```

* * *

void **goto\_line**(line\_number: [int](class_int.md#class-int)) [🔗](#class-scripteditor-method-goto-line)

Goes to the specified line in the current script.

* * *

void **open\_script\_create\_dialog**(base\_name: [String](class_string.md#class-string), base\_path: [String](class_string.md#class-string)) [🔗](#class-scripteditor-method-open-script-create-dialog)

Opens the script create dialog. The script will extend `base_name`. The file extension can be omitted from `base_path`. It will be added based on the selected scripting language.

* * *

void **register\_syntax\_highlighter**(syntax\_highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) [🔗](#class-scripteditor-method-register-syntax-highlighter)

Registers the [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) to the editor, the [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) will be available on all open scripts.

**Note:** Does not apply to scripts that are already opened.

* * *

void **unregister\_syntax\_highlighter**(syntax\_highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) [🔗](#class-scripteditor-method-unregister-syntax-highlighter)

Unregisters the [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) from the editor.

**Note:** The [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) will still be applied to scripts that are already opened.

* * *

void **update\_docs\_from\_script**(script: [Script](class_script.md#class-script)) [🔗](#class-scripteditor-method-update-docs-from-script)

Updates the documentation for the given `script`.

**Note:** This should be called whenever the script is changed to keep the open documentation state up to date.

[Previous](class_scriptcreatedialog.md "ScriptCreateDialog") [Next](class_scripteditorbase.md "ScriptEditorBase")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scriptcreatedialog.md "ScriptCreateDialog") [Next](class_scripteditorbase.md "ScriptEditorBase")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).