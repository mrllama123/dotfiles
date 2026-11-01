---
title: EditorInspectorPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorinspectorplugin.html
crawled_at: "2026-08-13T10:21:28+12:00"
content_hash: d74a19fe6dfb22f62d07646c1d2f10f650c403e448ca6443bd4243595efc2da9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorInspectorPlugin

* * *

# EditorInspectorPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plugin for adding custom property editors on the inspector.

## Description

**EditorInspectorPlugin** allows adding custom property editors to [EditorInspector](class_editorinspector.md#class-editorinspector).

When an object is edited, the [\_can\_handle()](#class-editorinspectorplugin-private-method-can-handle) function is called and must return `true` if the object type is supported.

If supported, the function [\_parse\_begin()](#class-editorinspectorplugin-private-method-parse-begin) will be called, allowing to place custom controls at the beginning of the class.

Subsequently, the [\_parse\_category()](#class-editorinspectorplugin-private-method-parse-category) and [\_parse\_property()](#class-editorinspectorplugin-private-method-parse-property) are called for every category and property. They offer the ability to add custom controls to the inspector too.

Finally, [\_parse\_end()](#class-editorinspectorplugin-private-method-parse-end) will be called.

On each of these calls, the "add" functions can be called.

To use **EditorInspectorPlugin**, register it using the [EditorPlugin.add\_inspector\_plugin()](class_editorplugin.md#class-editorplugin-method-add-inspector-plugin) method first.

## Tutorials

- [Inspector plugins](../tutorials/plugins/editor/inspector_plugins.md)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_can\_handle](#class-editorinspectorplugin-private-method-can-handle)(object: [Object](class_object.md#class-object)) virtualconst |
| void | [\_parse\_begin](#class-editorinspectorplugin-private-method-parse-begin)(object: [Object](class_object.md#class-object)) virtual |
| void | [\_parse\_category](#class-editorinspectorplugin-private-method-parse-category)(object: [Object](class_object.md#class-object), category: [String](class_string.md#class-string)) virtual |
| void | [\_parse\_end](#class-editorinspectorplugin-private-method-parse-end)(object: [Object](class_object.md#class-object)) virtual |
| void | [\_parse\_group](#class-editorinspectorplugin-private-method-parse-group)(object: [Object](class_object.md#class-object), group: [String](class_string.md#class-string)) virtual |
| [bool](class_bool.md#class-bool) | [\_parse\_property](#class-editorinspectorplugin-private-method-parse-property)(object: [Object](class_object.md#class-object), type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), hint\_type: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint), hint\_string: [String](class_string.md#class-string), usage\_flags: BitField\[ [PropertyUsageFlags](class_@globalscope.md#enum-globalscope-propertyusageflags)\], wide: [bool](class_bool.md#class-bool)) virtual |
| void | [add\_custom\_control](#class-editorinspectorplugin-method-add-custom-control)(control: [Control](class_control.md#class-control)) |
| void | [add\_property\_editor](#class-editorinspectorplugin-method-add-property-editor)(property: [String](class_string.md#class-string), editor: [Control](class_control.md#class-control), add\_to\_end: [bool](class_bool.md#class-bool) = false, label: [String](class_string.md#class-string) = "") |
| void | [add\_property\_editor\_for\_multiple\_properties](#class-editorinspectorplugin-method-add-property-editor-for-multiple-properties)(label: [String](class_string.md#class-string), properties: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), editor: [Control](class_control.md#class-control)) |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_can\_handle**(object: [Object](class_object.md#class-object)) virtualconst [🔗](#class-editorinspectorplugin-private-method-can-handle)

Returns `true` if this object can be handled by this plugin.

* * *

void **\_parse\_begin**(object: [Object](class_object.md#class-object)) virtual [🔗](#class-editorinspectorplugin-private-method-parse-begin)

Called to allow adding controls at the beginning of the property list for `object`.

* * *

void **\_parse\_category**(object: [Object](class_object.md#class-object), category: [String](class_string.md#class-string)) virtual [🔗](#class-editorinspectorplugin-private-method-parse-category)

Called to allow adding controls at the beginning of a category in the property list for `object`.

* * *

void **\_parse\_end**(object: [Object](class_object.md#class-object)) virtual [🔗](#class-editorinspectorplugin-private-method-parse-end)

Called to allow adding controls at the end of the property list for `object`.

* * *

void **\_parse\_group**(object: [Object](class_object.md#class-object), group: [String](class_string.md#class-string)) virtual [🔗](#class-editorinspectorplugin-private-method-parse-group)

Called to allow adding controls at the beginning of a group or a sub-group in the property list for `object`.

* * *

[bool](class_bool.md#class-bool) **\_parse\_property**(object: [Object](class_object.md#class-object), type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), name: [String](class_string.md#class-string), hint\_type: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint), hint\_string: [String](class_string.md#class-string), usage\_flags: BitField\[ [PropertyUsageFlags](class_@globalscope.md#enum-globalscope-propertyusageflags)\], wide: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editorinspectorplugin-private-method-parse-property)

Called to allow adding property-specific editors to the property list for `object`. The added editor control must extend [EditorProperty](class_editorproperty.md#class-editorproperty). Returning `true` removes the built-in editor for this property, otherwise allows to insert a custom editor before the built-in one.

* * *

void **add\_custom\_control**(control: [Control](class_control.md#class-control)) [🔗](#class-editorinspectorplugin-method-add-custom-control)

Adds a custom control, which is not necessarily a property editor.

* * *

void **add\_property\_editor**(property: [String](class_string.md#class-string), editor: [Control](class_control.md#class-control), add\_to\_end: [bool](class_bool.md#class-bool) = false, label: [String](class_string.md#class-string) = "") [🔗](#class-editorinspectorplugin-method-add-property-editor)

Adds a property editor for an individual property. The `editor` control must extend [EditorProperty](class_editorproperty.md#class-editorproperty).

There can be multiple property editors for a property. If `add_to_end` is `true`, this newly added editor will be displayed after all the other editors of the property whose `add_to_end` is `false`. For example, the editor uses this parameter to add an "Edit Region" button for [Sprite2D.region\_rect](class_sprite2d.md#class-sprite2d-property-region-rect) below the regular [Rect2](class_rect2.md#class-rect2) editor.

`label` can be used to choose a custom label for the property editor in the inspector. If left empty, the label is computed from the name of the property instead.

* * *

void **add\_property\_editor\_for\_multiple\_properties**(label: [String](class_string.md#class-string), properties: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), editor: [Control](class_control.md#class-control)) [🔗](#class-editorinspectorplugin-method-add-property-editor-for-multiple-properties)

Adds an editor that allows modifying multiple properties. The `editor` control must extend [EditorProperty](class_editorproperty.md#class-editorproperty).

[Previous](class_editorimportplugin.md "EditorImportPlugin") [Next](class_editorinterface.md "EditorInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorimportplugin.md "EditorImportPlugin") [Next](class_editorinterface.md "EditorInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).