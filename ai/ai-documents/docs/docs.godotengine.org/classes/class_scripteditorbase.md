---
title: ScriptEditorBase — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scripteditorbase.html
crawled_at: "2026-08-13T10:24:50+12:00"
content_hash: bedd90d6afc4a2e884c5f8cb3feb289e72501b85d7b71cb03b5c43074b2748b7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptEditorBase

* * *

# ScriptEditorBase

**Inherits:** [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Base editor for editing scripts in the [ScriptEditor](class_scripteditor.md#class-scripteditor).

## Description

Base editor for editing scripts in the [ScriptEditor](class_scripteditor.md#class-scripteditor). This does not include documentation items.

## Methods

|     |     |
| --- | --- |
| void | [add\_syntax\_highlighter](#class-scripteditorbase-method-add-syntax-highlighter)(highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) |
| [Control](class_control.md#class-control) | [get\_base\_editor](#class-scripteditorbase-method-get-base-editor)() const |

* * *

## Signals

**edited\_script\_changed**() [🔗](#class-scripteditorbase-signal-edited-script-changed)

Emitted after script validation.

* * *

**go\_to\_help**(what: [String](class_string.md#class-string)) [🔗](#class-scripteditorbase-signal-go-to-help)

Emitted when the user requests a specific documentation page.

* * *

**go\_to\_method**(script: [Object](class_object.md#class-object), method: [String](class_string.md#class-string)) [🔗](#class-scripteditorbase-signal-go-to-method)

Emitted when the user requests to view a specific method of a script, similar to [request\_open\_script\_at\_line](#class-scripteditorbase-signal-request-open-script-at-line).

* * *

**name\_changed**() [🔗](#class-scripteditorbase-signal-name-changed)

Emitted after script validation or when the edited resource has changed.

* * *

**replace\_in\_files\_requested**(text: [String](class_string.md#class-string)) [🔗](#class-scripteditorbase-signal-replace-in-files-requested)

Emitted when the user request to find and replace text in the file system.

* * *

**request\_help**(topic: [String](class_string.md#class-string)) [🔗](#class-scripteditorbase-signal-request-help)

Emitted when the user requests contextual help.

* * *

**request\_open\_script\_at\_line**(script: [Object](class_object.md#class-object), line: [int](class_int.md#class-int)) [🔗](#class-scripteditorbase-signal-request-open-script-at-line)

Emitted when the user requests to view a specific line of a script, similar to [go\_to\_method](#class-scripteditorbase-signal-go-to-method).

* * *

**request\_save\_history**() [🔗](#class-scripteditorbase-signal-request-save-history)

Emitted when the user contextual goto and the item is in the same script.

* * *

**request\_save\_previous\_state**(state: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-scripteditorbase-signal-request-save-previous-state)

Emitted when the user changes current script or moves caret by 10 or more columns within the same script.

* * *

**search\_in\_files\_requested**(text: [String](class_string.md#class-string)) [🔗](#class-scripteditorbase-signal-search-in-files-requested)

Emitted when the user request to search text in the file system.

* * *

## Method Descriptions

void **add\_syntax\_highlighter**(highlighter: [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)) [🔗](#class-scripteditorbase-method-add-syntax-highlighter)

Adds an [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) to the open script.

* * *

[Control](class_control.md#class-control) **get\_base\_editor**() const [🔗](#class-scripteditorbase-method-get-base-editor)

Returns the underlying [Control](class_control.md#class-control) used for editing scripts. For text scripts, this is a [CodeEdit](class_codeedit.md#class-codeedit).

[Previous](class_scripteditor.md "ScriptEditor") [Next](class_scrollbar.md "ScrollBar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scripteditor.md "ScriptEditor") [Next](class_scrollbar.md "ScrollBar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).