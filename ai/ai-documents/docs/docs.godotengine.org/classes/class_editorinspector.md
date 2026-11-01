---
title: EditorInspector — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorinspector.html
crawled_at: "2026-08-13T10:20:14+12:00"
content_hash: 62836d703bbaf1e01c68624439762a6c10de1eef95db46a291e0afdbda942e3c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorInspector

* * *

# EditorInspector

**Inherits:** [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control used to edit properties of an object.

## Description

This is the control that implements property editing in the editor's Settings dialogs, the Inspector dock, etc. To get the **EditorInspector** used in the editor's Inspector dock, use [EditorInterface.get\_inspector()](class_editorinterface.md#class-editorinterface-method-get-inspector).

**EditorInspector** will show properties in the same order as the array returned by [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list).

If a property's name is path-like (i.e. if it contains forward slashes), **EditorInspector** will create nested sections for "directories" along the path. For example, if a property is named `highlighting/gdscript/node_path_color`, it will be shown as "Node Path Color" inside the "GDScript" section nested inside the "Highlighting" section.

If a property has [@GlobalScope.PROPERTY\_USAGE\_GROUP](class_@globalscope.md#class-globalscope-constant-property-usage-group) usage, it will group subsequent properties whose name starts with the property's hint string. The group ends when a property does not start with that hint string or when a new group starts. An empty group name effectively ends the current group. **EditorInspector** will create a top-level section for each group. For example, if a property with group usage is named `Collide With` and its hint string is `collide_with_`, a subsequent `collide_with_area` property will be shown as "Area" inside the "Collide With" section. There is also a special case: when the hint string contains the name of a property, that property is grouped too. This is mainly to help grouping properties like `font`, `font_color` and `font_size` (using the hint string `font_`).

If a property has [@GlobalScope.PROPERTY\_USAGE\_SUBGROUP](class_@globalscope.md#class-globalscope-constant-property-usage-subgroup) usage, a subgroup will be created in the same way as a group, and a second-level section will be created for each subgroup.

**Note:** Unlike sections created from path-like property names, **EditorInspector** won't capitalize the name for sections created from groups. So properties with group usage usually use capitalized names instead of snake\_cased names.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | draw\_focus\_border | `true` (overrides [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer-property-draw-focus-border)) |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | follow\_focus | `true` (overrides [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer-property-follow-focus)) |
| [ScrollMode](class_scrollcontainer.md#enum-scrollcontainer-scrollmode) | horizontal\_scroll\_mode | `0` (overrides [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer-property-horizontal-scroll-mode)) |

## Methods

|     |     |
| --- | --- |
| void | [edit](#class-editorinspector-method-edit)(object: [Object](class_object.md#class-object)) |
| [Object](class_object.md#class-object) | [get\_edited\_object](#class-editorinspector-method-get-edited-object)() |
| [String](class_string.md#class-string) | [get\_selected\_path](#class-editorinspector-method-get-selected-path)() const |
| [EditorProperty](class_editorproperty.md#class-editorproperty) | [instantiate\_property\_editor](#class-editorinspector-method-instantiate-property-editor)(object: [Object](class_object.md#class-object), type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), path: [String](class_string.md#class-string), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint), hint\_text: [String](class_string.md#class-string), usage: [int](class_int.md#class-int), wide: [bool](class_bool.md#class-bool) = false) static |

* * *

## Signals

**edited\_object\_changed**() [🔗](#class-editorinspector-signal-edited-object-changed)

Emitted when the object being edited by the inspector has changed.

* * *

**object\_id\_selected**(id: [int](class_int.md#class-int)) [🔗](#class-editorinspector-signal-object-id-selected)

Emitted when the Edit button of an [Object](class_object.md#class-object) has been pressed in the inspector. This is mainly used in the remote scene tree Inspector.

* * *

**property\_deleted**(property: [String](class_string.md#class-string)) [🔗](#class-editorinspector-signal-property-deleted)

Emitted when a property is removed from the inspector.

* * *

**property\_edited**(property: [String](class_string.md#class-string)) [🔗](#class-editorinspector-signal-property-edited)

Emitted when a property is edited in the inspector.

* * *

**property\_keyed**(property: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant), advance: [bool](class_bool.md#class-bool)) [🔗](#class-editorinspector-signal-property-keyed)

Emitted when a property is keyed in the inspector. Properties can be keyed by clicking the "key" icon next to a property when the Animation panel is toggled.

* * *

**property\_selected**(property: [String](class_string.md#class-string)) [🔗](#class-editorinspector-signal-property-selected)

Emitted when a property is selected in the inspector.

* * *

**property\_toggled**(property: [String](class_string.md#class-string), checked: [bool](class_bool.md#class-bool)) [🔗](#class-editorinspector-signal-property-toggled)

Emitted when a boolean property is toggled in the inspector.

**Note:** This signal is never emitted if the internal `autoclear` property enabled. Since this property is always enabled in the editor inspector, this signal is never emitted by the editor itself.

* * *

**resource\_selected**(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string)) [🔗](#class-editorinspector-signal-resource-selected)

Emitted when a resource is selected in the inspector.

* * *

**restart\_requested**() [🔗](#class-editorinspector-signal-restart-requested)

Emitted when a property that requires a restart to be applied is edited in the inspector. This is only used in the Project Settings and Editor Settings.

* * *

## Method Descriptions

void **edit**(object: [Object](class_object.md#class-object)) [🔗](#class-editorinspector-method-edit)

Shows the properties of the given `object` in this inspector for editing. To clear the inspector, call this method with `null`.

**Note:** If you want to edit an object in the editor's main inspector, use the `edit_*` methods in [EditorInterface](class_editorinterface.md#class-editorinterface) instead.

* * *

[Object](class_object.md#class-object) **get\_edited\_object**() [🔗](#class-editorinspector-method-get-edited-object)

Returns the object currently selected in this inspector.

* * *

[String](class_string.md#class-string) **get\_selected\_path**() const [🔗](#class-editorinspector-method-get-selected-path)

Gets the path of the currently selected property.

* * *

[EditorProperty](class_editorproperty.md#class-editorproperty) **instantiate\_property\_editor**(object: [Object](class_object.md#class-object), type: [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type), path: [String](class_string.md#class-string), hint: [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint), hint\_text: [String](class_string.md#class-string), usage: [int](class_int.md#class-int), wide: [bool](class_bool.md#class-bool) = false) static [🔗](#class-editorinspector-method-instantiate-property-editor)

Creates a property editor that can be used by plugin UI to edit the specified property of an `object`.

[Previous](class_editorfilesystem.md "EditorFileSystem") [Next](class_editorplugin.md "EditorPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorfilesystem.md "EditorFileSystem") [Next](class_editorplugin.md "EditorPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).