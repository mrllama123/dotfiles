---
title: ButtonGroup — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_buttongroup.html
crawled_at: "2026-08-13T10:42:35+12:00"
content_hash: b9a70f60f3adf64e204c6974a0a85df0c77243fa0586938273e523d9d86f3957
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ButtonGroup

* * *

# ButtonGroup

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A group of buttons that doesn't allow more than one button to be pressed at a time.

## Description

A group of [BaseButton](class_basebutton.md#class-basebutton)-derived buttons. The buttons in a **ButtonGroup** are treated like radio buttons: No more than one button can be pressed at a time. Some types of buttons (such as [CheckBox](class_checkbox.md#class-checkbox)) may have a special appearance in this state.

Every member of a **ButtonGroup** should have [BaseButton.toggle\_mode](class_basebutton.md#class-basebutton-property-toggle-mode) set to `true`.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_unpress](#class-buttongroup-property-allow-unpress) | `false` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `true` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [BaseButton](class_basebutton.md#class-basebutton)\] | [get\_buttons](#class-buttongroup-method-get-buttons)() |
| [BaseButton](class_basebutton.md#class-basebutton) | [get\_pressed\_button](#class-buttongroup-method-get-pressed-button)() |

* * *

## Signals

**pressed**(button: [BaseButton](class_basebutton.md#class-basebutton)) [🔗](#class-buttongroup-signal-pressed)

Emitted when one of the buttons of the group is pressed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_unpress** = `false` [🔗](#class-buttongroup-property-allow-unpress)

- void **set\_allow\_unpress**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_allow\_unpress**()


If `true`, it is possible to unpress all buttons in this **ButtonGroup**.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [BaseButton](class_basebutton.md#class-basebutton)\] **get\_buttons**() [🔗](#class-buttongroup-method-get-buttons)

Returns an [Array](class_array.md#class-array) of [Button](class_button.md#class-button) s who have this as their **ButtonGroup** (see [BaseButton.button\_group](class_basebutton.md#class-basebutton-property-button-group)).

* * *

[BaseButton](class_basebutton.md#class-basebutton) **get\_pressed\_button**() [🔗](#class-buttongroup-method-get-pressed-button)

Returns the current pressed button.

[Previous](class_boxshape3d.md "BoxShape3D") [Next](class_cameraattributes.md "CameraAttributes")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_boxshape3d.md "BoxShape3D") [Next](class_cameraattributes.md "CameraAttributes")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).