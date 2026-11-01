---
title: EditorResourcePicker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorresourcepicker.html
crawled_at: "2026-08-13T10:38:23+12:00"
content_hash: 63316babeed14decdc4a7ff734a50d5d774aa41a096bf206b4135851d35fa570
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorResourcePicker

* * *

# EditorResourcePicker

**Inherits:** [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorScriptPicker](class_editorscriptpicker.md#class-editorscriptpicker)

Godot editor's control for selecting [Resource](class_resource.md#class-resource) type properties.

## Description

This [Control](class_control.md#class-control) node is used in the editor's Inspector dock to allow editing of [Resource](class_resource.md#class-resource) type properties. It provides options for creating, loading, saving and converting resources. Can be used with [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin) to recreate the same behavior.

**Note:** This [Control](class_control.md#class-control) does not include any editor for the resource, as editing is controlled by the Inspector dock itself or sub-Inspectors.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [base\_type](#class-editorresourcepicker-property-base-type) | `""` |
| [bool](class_bool.md#class-bool) | [editable](#class-editorresourcepicker-property-editable) | `true` |
| [Resource](class_resource.md#class-resource) | [edited\_resource](#class-editorresourcepicker-property-edited-resource) |  |
| [bool](class_bool.md#class-bool) | [toggle\_mode](#class-editorresourcepicker-property-toggle-mode) | `false` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_handle\_menu\_selected](#class-editorresourcepicker-private-method-handle-menu-selected)(id: [int](class_int.md#class-int)) virtual |
| void | [\_set\_create\_options](#class-editorresourcepicker-private-method-set-create-options)(menu\_node: [Object](class_object.md#class-object)) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_allowed\_types](#class-editorresourcepicker-method-get-allowed-types)() const |
| void | [set\_toggle\_pressed](#class-editorresourcepicker-method-set-toggle-pressed)(pressed: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**resource\_changed**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-editorresourcepicker-signal-resource-changed)

Emitted when the value of the edited resource was changed.

* * *

**resource\_selected**(resource: [Resource](class_resource.md#class-resource), inspect: [bool](class_bool.md#class-bool)) [🔗](#class-editorresourcepicker-signal-resource-selected)

Emitted when the resource value was set and user clicked to edit it. When `inspect` is `true`, the signal was caused by the context menu "Edit" or "Inspect" option.

* * *

## Property Descriptions

[String](class_string.md#class-string) **base\_type** = `""` [🔗](#class-editorresourcepicker-property-base-type)

- void **set\_base\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_base\_type**()


The base type of allowed resource types. Can be a comma-separated list of several options.

* * *

[bool](class_bool.md#class-bool) **editable** = `true` [🔗](#class-editorresourcepicker-property-editable)

- void **set\_editable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editable**()


If `true`, the value can be selected and edited.

* * *

[Resource](class_resource.md#class-resource) **edited\_resource** [🔗](#class-editorresourcepicker-property-edited-resource)

- void **set\_edited\_resource**(value: [Resource](class_resource.md#class-resource))

- [Resource](class_resource.md#class-resource) **get\_edited\_resource**()


The edited resource value.

* * *

[bool](class_bool.md#class-bool) **toggle\_mode** = `false` [🔗](#class-editorresourcepicker-property-toggle-mode)

- void **set\_toggle\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_toggle\_mode**()


If `true`, the main button with the resource preview works in the toggle mode. Use [set\_toggle\_pressed()](#class-editorresourcepicker-method-set-toggle-pressed) to manually set the state.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_handle\_menu\_selected**(id: [int](class_int.md#class-int)) virtual [🔗](#class-editorresourcepicker-private-method-handle-menu-selected)

This virtual method can be implemented to handle context menu items not handled by default. See [\_set\_create\_options()](#class-editorresourcepicker-private-method-set-create-options).

* * *

void **\_set\_create\_options**(menu\_node: [Object](class_object.md#class-object)) virtual [🔗](#class-editorresourcepicker-private-method-set-create-options)

This virtual method is called when updating the context menu of **EditorResourcePicker**. Implement this method to override the "New ..." items with your own options. `menu_node` is a reference to the [PopupMenu](class_popupmenu.md#class-popupmenu) node.

**Note:** Implement [\_handle\_menu\_selected()](#class-editorresourcepicker-private-method-handle-menu-selected) to handle these custom items.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_allowed\_types**() const [🔗](#class-editorresourcepicker-method-get-allowed-types)

Returns a list of all allowed types and subtypes corresponding to the [base\_type](#class-editorresourcepicker-property-base-type). If the [base\_type](#class-editorresourcepicker-property-base-type) is empty, an empty list is returned.

* * *

void **set\_toggle\_pressed**(pressed: [bool](class_bool.md#class-bool)) [🔗](#class-editorresourcepicker-method-set-toggle-pressed)

Sets the toggle mode state for the main button. Works only if [toggle\_mode](#class-editorresourcepicker-property-toggle-mode) is set to `true`.

[Previous](class_editorproperty.md "EditorProperty") [Next](class_editorresourcepreview.md "EditorResourcePreview")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorproperty.md "EditorProperty") [Next](class_editorresourcepreview.md "EditorResourcePreview")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).