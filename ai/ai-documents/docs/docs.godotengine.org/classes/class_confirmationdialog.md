---
title: ConfirmationDialog — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_confirmationdialog.html
crawled_at: "2026-08-13T10:35:35+12:00"
content_hash: 55f240096b064e920b1605b4e4f093e21878d83677ab09f5a1d38a7301596c89
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ConfirmationDialog

* * *

# ConfirmationDialog

**Inherits:** [AcceptDialog](class_acceptdialog.md#class-acceptdialog) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorCommandPalette](class_editorcommandpalette.md#class-editorcommandpalette), [EditorFileDialog](class_editorfiledialog.md#class-editorfiledialog), [FileDialog](class_filedialog.md#class-filedialog), [ScriptCreateDialog](class_scriptcreatedialog.md#class-scriptcreatedialog)

A dialog used for confirmation of actions.

## Description

A dialog used for confirmation of actions. This window is similar to [AcceptDialog](class_acceptdialog.md#class-acceptdialog), but pressing its Cancel button can have a different outcome from pressing the OK button. The order of the two buttons varies depending on the host OS.

To get cancel action, you can use:

GDScriptC#

```
get_cancel_button().pressed.connect(_on_canceled)

```

```
GetCancelButton().Pressed += OnCanceled;

```

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [cancel\_button\_text](#class-confirmationdialog-property-cancel-button-text) | `"Cancel"` |
| [Vector2i](class_vector2i.md#class-vector2i) | min\_size | `Vector2i(200, 70)` (overrides [Window](class_window.md#class-window-property-min-size)) |
| [Vector2i](class_vector2i.md#class-vector2i) | size | `Vector2i(200, 100)` (overrides [Window](class_window.md#class-window-property-size)) |
| [String](class_string.md#class-string) | title | `"Please Confirm..."` (overrides [Window](class_window.md#class-window-property-title)) |

## Methods

|     |     |
| --- | --- |
| [Button](class_button.md#class-button) | [get\_cancel\_button](#class-confirmationdialog-method-get-cancel-button)() |

* * *

## Property Descriptions

[String](class_string.md#class-string) **cancel\_button\_text** = `"Cancel"` [🔗](#class-confirmationdialog-property-cancel-button-text)

- void **set\_cancel\_button\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_cancel\_button\_text**()


The text displayed by the cancel button (see [get\_cancel\_button()](#class-confirmationdialog-method-get-cancel-button)).

* * *

## Method Descriptions

[Button](class_button.md#class-button) **get\_cancel\_button**() [🔗](#class-confirmationdialog-method-get-cancel-button)

Returns the cancel button.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

[Previous](class_conetwistjoint3d.md "ConeTwistJoint3D") [Next](class_container.md "Container")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_conetwistjoint3d.md "ConeTwistJoint3D") [Next](class_container.md "Container")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).