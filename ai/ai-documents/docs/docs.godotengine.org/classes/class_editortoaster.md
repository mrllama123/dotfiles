---
title: EditorToaster — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editortoaster.html
crawled_at: "2026-08-13T10:33:05+12:00"
content_hash: 3eaad9b57a84d557701989ed939065dd22992ef122345599ce22322d1e8fb843
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorToaster

* * *

# EditorToaster

**Inherits:** [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Manages toast notifications within the editor.

## Description

This object manages the functionality and display of toast notifications within the editor, ensuring timely and informative alerts are presented to users.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_editor\_toaster()](class_editorinterface.md#class-editorinterface-method-get-editor-toaster).

## Methods

|     |     |
| --- | --- |
| void | [push\_toast](#class-editortoaster-method-push-toast)(message: [String](class_string.md#class-string), severity: [Severity](#enum-editortoaster-severity) = 0, tooltip: [String](class_string.md#class-string) = "") |

* * *

## Enumerations

enum **Severity**: [🔗](#enum-editortoaster-severity)

[Severity](#enum-editortoaster-severity) **SEVERITY\_INFO** = `0`

Toast will display with an INFO severity.

[Severity](#enum-editortoaster-severity) **SEVERITY\_WARNING** = `1`

Toast will display with a WARNING severity and have a corresponding color.

[Severity](#enum-editortoaster-severity) **SEVERITY\_ERROR** = `2`

Toast will display with an ERROR severity and have a corresponding color.

* * *

## Method Descriptions

void **push\_toast**(message: [String](class_string.md#class-string), severity: [Severity](#enum-editortoaster-severity) = 0, tooltip: [String](class_string.md#class-string) = "") [🔗](#class-editortoaster-method-push-toast)

Pushes a toast notification to the editor for display.

[Previous](class_editorspinslider.md "EditorSpinSlider") [Next](class_filedialog.md "FileDialog")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorspinslider.md "EditorSpinSlider") [Next](class_filedialog.md "FileDialog")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).