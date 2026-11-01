---
title: AcceptDialog — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_acceptdialog.html
crawled_at: "2026-08-13T10:33:31+12:00"
content_hash: 4c13ea793388603803c2c1361424abfcf2559aafe01ba03583f31d3dac58aa24
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AcceptDialog

* * *

# AcceptDialog

**Inherits:** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [ConfirmationDialog](class_confirmationdialog.md#class-confirmationdialog)

A base dialog used for user notification.

## Description

The default use of **AcceptDialog** is to allow it to only be accepted or closed, with the same result. However, the [confirmed](#class-acceptdialog-signal-confirmed) and [canceled](#class-acceptdialog-signal-canceled) signals allow to make the two actions different, and the [add\_button()](#class-acceptdialog-method-add-button) method allows to add custom buttons and actions.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [dialog\_autowrap](#class-acceptdialog-property-dialog-autowrap) | `false` |
| [bool](class_bool.md#class-bool) | [dialog\_close\_on\_escape](#class-acceptdialog-property-dialog-close-on-escape) | `true` |
| [bool](class_bool.md#class-bool) | [dialog\_hide\_on\_ok](#class-acceptdialog-property-dialog-hide-on-ok) | `true` |
| [String](class_string.md#class-string) | [dialog\_text](#class-acceptdialog-property-dialog-text) | `""` |
| [bool](class_bool.md#class-bool) | exclusive | `true` (overrides [Window](class_window.md#class-window-property-exclusive)) |
| [bool](class_bool.md#class-bool) | keep\_title\_visible | `true` (overrides [Window](class_window.md#class-window-property-keep-title-visible)) |
| [bool](class_bool.md#class-bool) | maximize\_disabled | `true` (overrides [Window](class_window.md#class-window-property-maximize-disabled)) |
| [bool](class_bool.md#class-bool) | minimize\_disabled | `true` (overrides [Window](class_window.md#class-window-property-minimize-disabled)) |
| [String](class_string.md#class-string) | [ok\_button\_text](#class-acceptdialog-property-ok-button-text) | `""` |
| [String](class_string.md#class-string) | title | `"Alert!"` (overrides [Window](class_window.md#class-window-property-title)) |
| [bool](class_bool.md#class-bool) | transient | `true` (overrides [Window](class_window.md#class-window-property-transient)) |
| [bool](class_bool.md#class-bool) | visible | `false` (overrides [Window](class_window.md#class-window-property-visible)) |
| [bool](class_bool.md#class-bool) | wrap\_controls | `true` (overrides [Window](class_window.md#class-window-property-wrap-controls)) |

## Methods

|     |     |
| --- | --- |
| [Button](class_button.md#class-button) | [add\_button](#class-acceptdialog-method-add-button)(text: [String](class_string.md#class-string), right: [bool](class_bool.md#class-bool) = false, action: [String](class_string.md#class-string) = "") |
| [Button](class_button.md#class-button) | [add\_cancel\_button](#class-acceptdialog-method-add-cancel-button)(name: [String](class_string.md#class-string)) |
| [Label](class_label.md#class-label) | [get\_label](#class-acceptdialog-method-get-label)() |
| [Button](class_button.md#class-button) | [get\_ok\_button](#class-acceptdialog-method-get-ok-button)() |
| void | [register\_text\_enter](#class-acceptdialog-method-register-text-enter)(line\_edit: [LineEdit](class_lineedit.md#class-lineedit)) |
| void | [remove\_button](#class-acceptdialog-method-remove-button)(button: [Button](class_button.md#class-button)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [buttons\_min\_height](#class-acceptdialog-theme-constant-buttons-min-height) | `0` |
| [int](class_int.md#class-int) | [buttons\_min\_width](#class-acceptdialog-theme-constant-buttons-min-width) | `0` |
| [int](class_int.md#class-int) | [buttons\_separation](#class-acceptdialog-theme-constant-buttons-separation) | `10` |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-acceptdialog-theme-style-panel) |  |

* * *

## Signals

**canceled**() [🔗](#class-acceptdialog-signal-canceled)

Emitted when the dialog is closed or the button created with [add\_cancel\_button()](#class-acceptdialog-method-add-cancel-button) is pressed.

* * *

**confirmed**() [🔗](#class-acceptdialog-signal-confirmed)

Emitted when the dialog is accepted, i.e. the OK button is pressed.

* * *

**custom\_action**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-acceptdialog-signal-custom-action)

Emitted when a custom button with an action is pressed. See [add\_button()](#class-acceptdialog-method-add-button).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **dialog\_autowrap** = `false` [🔗](#class-acceptdialog-property-dialog-autowrap)

- void **set\_autowrap**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_autowrap**()


Sets autowrapping for the text in the dialog.

* * *

[bool](class_bool.md#class-bool) **dialog\_close\_on\_escape** = `true` [🔗](#class-acceptdialog-property-dialog-close-on-escape)

- void **set\_close\_on\_escape**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_close\_on\_escape**()


If `true`, the dialog will be hidden when the `ui_cancel` action is pressed (by default, this action is bound to [@GlobalScope.KEY\_ESCAPE](class_@globalscope.md#class-globalscope-constant-key-escape)).

* * *

[bool](class_bool.md#class-bool) **dialog\_hide\_on\_ok** = `true` [🔗](#class-acceptdialog-property-dialog-hide-on-ok)

- void **set\_hide\_on\_ok**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_hide\_on\_ok**()


If `true`, the dialog is hidden when the OK button is pressed. You can set it to `false` if you want to do e.g. input validation when receiving the [confirmed](#class-acceptdialog-signal-confirmed) signal, and handle hiding the dialog in your own logic.

**Note:** Some nodes derived from this class can have a different default value, and potentially their own built-in logic overriding this setting. For example [FileDialog](class_filedialog.md#class-filedialog) defaults to `false`, and has its own input validation code that is called when you press OK, which eventually hides the dialog if the input is valid. As such, this property can't be used in [FileDialog](class_filedialog.md#class-filedialog) to disable hiding the dialog when pressing OK.

* * *

[String](class_string.md#class-string) **dialog\_text** = `""` [🔗](#class-acceptdialog-property-dialog-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The text displayed by the dialog.

* * *

[String](class_string.md#class-string) **ok\_button\_text** = `""` [🔗](#class-acceptdialog-property-ok-button-text)

- void **set\_ok\_button\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_ok\_button\_text**()


The text displayed by the OK button (see [get\_ok\_button()](#class-acceptdialog-method-get-ok-button)). If empty, a default text will be used.

* * *

## Method Descriptions

[Button](class_button.md#class-button) **add\_button**(text: [String](class_string.md#class-string), right: [bool](class_bool.md#class-bool) = false, action: [String](class_string.md#class-string) = "") [🔗](#class-acceptdialog-method-add-button)

Adds a button with label `text` and a custom `action` to the dialog and returns the created button.

If `action` is not empty, pressing the button will emit the [custom\_action](#class-acceptdialog-signal-custom-action) signal with the specified action string.

If `true`, `right` will place the button to the right of any sibling buttons.

You can use [remove\_button()](#class-acceptdialog-method-remove-button) method to remove a button created with this method from the dialog.

* * *

[Button](class_button.md#class-button) **add\_cancel\_button**(name: [String](class_string.md#class-string)) [🔗](#class-acceptdialog-method-add-cancel-button)

Adds a button with label `name` and a cancel action to the dialog and returns the created button.

You can use [remove\_button()](#class-acceptdialog-method-remove-button) method to remove a button created with this method from the dialog.

* * *

[Label](class_label.md#class-label) **get\_label**() [🔗](#class-acceptdialog-method-get-label)

Returns the label used for built-in text.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[Button](class_button.md#class-button) **get\_ok\_button**() [🔗](#class-acceptdialog-method-get-ok-button)

Returns the OK [Button](class_button.md#class-button) instance.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

void **register\_text\_enter**(line\_edit: [LineEdit](class_lineedit.md#class-lineedit)) [🔗](#class-acceptdialog-method-register-text-enter)

Registers a [LineEdit](class_lineedit.md#class-lineedit) in the dialog. When the enter key is pressed, the dialog will be accepted.

* * *

void **remove\_button**(button: [Button](class_button.md#class-button)) [🔗](#class-acceptdialog-method-remove-button)

Removes the `button` from the dialog. Does NOT free the `button`. The `button` must be a [Button](class_button.md#class-button) added with [add\_button()](#class-acceptdialog-method-add-button) or [add\_cancel\_button()](#class-acceptdialog-method-add-cancel-button) method. After removal, pressing the `button` will no longer emit this dialog's [custom\_action](#class-acceptdialog-signal-custom-action) or [canceled](#class-acceptdialog-signal-canceled) signals.

* * *

## Theme Property Descriptions

[int](class_int.md#class-int) **buttons\_min\_height** = `0` [🔗](#class-acceptdialog-theme-constant-buttons-min-height)

The minimum height of each button in the bottom row (such as OK/Cancel) in pixels. This can be increased to make buttons with short texts easier to click/tap.

* * *

[int](class_int.md#class-int) **buttons\_min\_width** = `0` [🔗](#class-acceptdialog-theme-constant-buttons-min-width)

The minimum width of each button in the bottom row (such as OK/Cancel) in pixels. This can be increased to make buttons with short texts easier to click/tap.

* * *

[int](class_int.md#class-int) **buttons\_separation** = `10` [🔗](#class-acceptdialog-theme-constant-buttons-separation)

The size of the vertical space between the dialog's content and the button row.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-acceptdialog-theme-style-panel)

The panel that fills the background of the window.

[Previous](class_node.md "Node") [Next](class_aimmodifier3d.md "AimModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_node.md "Node") [Next](class_aimmodifier3d.md "AimModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).