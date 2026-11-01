---
title: EditorScriptPicker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorscriptpicker.html
crawled_at: "2026-08-13T10:21:37+12:00"
content_hash: c495c9c23b4ba31e9d4b777cb9408bf0bc53b2ae4a0fe12279e6dace94c9f91a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorScriptPicker

* * *

# EditorScriptPicker

**Inherits:** [EditorResourcePicker](class_editorresourcepicker.md#class-editorresourcepicker) **<** [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's control for selecting the `script` property of a [Node](class_node.md#class-node).

## Description

Similar to [EditorResourcePicker](class_editorresourcepicker.md#class-editorresourcepicker) this [Control](class_control.md#class-control) node is used in the editor's Inspector dock, but only to edit the `script` property of a [Node](class_node.md#class-node). Default options for creating new resources of all possible subtypes are replaced with dedicated buttons that open the "Attach Node Script" dialog. Can be used with [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin) to recreate the same behavior.

**Note:** You must set the [script\_owner](#class-editorscriptpicker-property-script-owner) for the custom context menu items to work.

## Properties

|     |     |
| --- | --- |
| [Node](class_node.md#class-node) | [script\_owner](#class-editorscriptpicker-property-script-owner) |

* * *

## Property Descriptions

[Node](class_node.md#class-node) **script\_owner** [🔗](#class-editorscriptpicker-property-script-owner)

- void **set\_script\_owner**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_script\_owner**()


The owner [Node](class_node.md#class-node) of the script property that holds the edited resource.

[Previous](class_editorresourcepreview.md "EditorResourcePreview") [Next](class_editorspinslider.md "EditorSpinSlider")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorresourcepreview.md "EditorResourcePreview") [Next](class_editorspinslider.md "EditorSpinSlider")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).