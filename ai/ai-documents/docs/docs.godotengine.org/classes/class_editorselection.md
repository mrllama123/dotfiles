---
title: EditorSelection — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorselection.html
crawled_at: "2026-08-13T10:26:22+12:00"
content_hash: e37c2ba45cef913a566ade6a162721f3ec065bc0441405f6824c9d4499d8c6fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSelection

* * *

# EditorSelection

**Inherits:** [Object](class_object.md#class-object)

Manages the SceneTree selection in the editor.

## Description

This object manages the SceneTree selection in the editor.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_selection()](class_editorinterface.md#class-editorinterface-method-get-selection).

## Methods

|     |     |
| --- | --- |
| void | [add\_node](#class-editorselection-method-add-node)(node: [Node](class_node.md#class-node)) |
| void | [clear](#class-editorselection-method-clear)() |
| [Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] | [get\_selected\_nodes](#class-editorselection-method-get-selected-nodes)() |
| [Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] | [get\_top\_selected\_nodes](#class-editorselection-method-get-top-selected-nodes)() |
| [Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] | [get\_transformable\_selected\_nodes](#class-editorselection-method-get-transformable-selected-nodes)() |
| void | [remove\_node](#class-editorselection-method-remove-node)(node: [Node](class_node.md#class-node)) |

* * *

## Signals

**selection\_changed**() [🔗](#class-editorselection-signal-selection-changed)

Emitted when the selection changes.

* * *

## Method Descriptions

void **add\_node**(node: [Node](class_node.md#class-node)) [🔗](#class-editorselection-method-add-node)

Adds a node to the selection.

**Note:** The newly selected node will not be automatically edited in the inspector. If you want to edit a node, use [EditorInterface.edit\_node()](class_editorinterface.md#class-editorinterface-method-edit-node).

* * *

void **clear**() [🔗](#class-editorselection-method-clear)

Clear the selection.

* * *

[Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] **get\_selected\_nodes**() [🔗](#class-editorselection-method-get-selected-nodes)

Returns the list of selected nodes.

* * *

[Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] **get\_top\_selected\_nodes**() [🔗](#class-editorselection-method-get-top-selected-nodes)

Returns the list of top selected nodes only, excluding any children. This is useful for performing transform operations (moving them, rotating, etc.).

For example, if there is a node A with a child B and a sibling C, then selecting all three will cause this method to return only A and C. Changing the global transform of A will affect the global transform of B, so there is no need to change B separately.

* * *

[Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] **get\_transformable\_selected\_nodes**() [🔗](#class-editorselection-method-get-transformable-selected-nodes)

**Deprecated:** Use [get\_top\_selected\_nodes()](#class-editorselection-method-get-top-selected-nodes) instead.

Returns the list of top selected nodes only, excluding any children. This is useful for performing transform operations (moving them, rotating, etc.). See [get\_top\_selected\_nodes()](#class-editorselection-method-get-top-selected-nodes).

* * *

void **remove\_node**(node: [Node](class_node.md#class-node)) [🔗](#class-editorselection-method-remove-node)

Removes a node from the selection.

[Previous](class_editorscript.md "EditorScript") [Next](class_editortranslationparserplugin.md "EditorTranslationParserPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorscript.md "EditorScript") [Next](class_editortranslationparserplugin.md "EditorTranslationParserPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).