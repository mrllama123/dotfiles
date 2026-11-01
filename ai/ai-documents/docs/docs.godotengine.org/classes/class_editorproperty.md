---
title: EditorProperty — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorproperty.html
crawled_at: "2026-08-13T10:38:06+12:00"
content_hash: 1316d09c901126c3a20e9039ec6059500a78ba8433a74745b1e5e86f738988ed
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorProperty

* * *

# EditorProperty

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Custom control for editing properties that can be added to the [EditorInspector](class_editorinspector.md#class-editorinspector).

## Description

A custom control for editing properties that can be added to the [EditorInspector](class_editorinspector.md#class-editorinspector). It is added via [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [checkable](#class-editorproperty-property-checkable) | `false` |
| [bool](class_bool.md#class-bool) | [checked](#class-editorproperty-property-checked) | `false` |
| [bool](class_bool.md#class-bool) | [deletable](#class-editorproperty-property-deletable) | `false` |
| [bool](class_bool.md#class-bool) | [draw\_background](#class-editorproperty-property-draw-background) | `true` |
| [bool](class_bool.md#class-bool) | [draw\_label](#class-editorproperty-property-draw-label) | `true` |
| [bool](class_bool.md#class-bool) | [draw\_warning](#class-editorproperty-property-draw-warning) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [keying](#class-editorproperty-property-keying) | `false` |
| [String](class_string.md#class-string) | [label](#class-editorproperty-property-label) | `""` |
| [float](class_float.md#class-float) | [name\_split\_ratio](#class-editorproperty-property-name-split-ratio) | `0.5` |
| [bool](class_bool.md#class-bool) | [read\_only](#class-editorproperty-property-read-only) | `false` |
| [bool](class_bool.md#class-bool) | [selectable](#class-editorproperty-property-selectable) | `true` |
| [bool](class_bool.md#class-bool) | [use\_folding](#class-editorproperty-property-use-folding) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [\_set\_read\_only](#class-editorproperty-private-method-set-read-only)(read\_only: [bool](class_bool.md#class-bool)) virtual |
| void | [\_update\_property](#class-editorproperty-private-method-update-property)() virtual |
| void | [add\_focusable](#class-editorproperty-method-add-focusable)(control: [Control](class_control.md#class-control)) |
| void | [deselect](#class-editorproperty-method-deselect)() |
| void | [emit\_changed](#class-editorproperty-method-emit-changed)(property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant), field: [StringName](class_stringname.md#class-stringname) = &"", changing: [bool](class_bool.md#class-bool) = false) |
| [Object](class_object.md#class-object) | [get\_edited\_object](#class-editorproperty-method-get-edited-object)() |
| [StringName](class_stringname.md#class-stringname) | [get\_edited\_property](#class-editorproperty-method-get-edited-property)() const |
| [bool](class_bool.md#class-bool) | [is\_selected](#class-editorproperty-method-is-selected)() const |
| void | [select](#class-editorproperty-method-select)(focusable: [int](class_int.md#class-int) = -1) |
| void | [set\_bottom\_editor](#class-editorproperty-method-set-bottom-editor)(editor: [Control](class_control.md#class-control)) |
| void | [set\_label\_reference](#class-editorproperty-method-set-label-reference)(control: [Control](class_control.md#class-control)) |
| void | [set\_object\_and\_property](#class-editorproperty-method-set-object-and-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname)) |
| void | [update\_property](#class-editorproperty-method-update-property)() |

* * *

## Signals

**multiple\_properties\_changed**(properties: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), value: [Array](class_array.md#class-array)) [🔗](#class-editorproperty-signal-multiple-properties-changed)

Emit it if you want multiple properties modified at the same time. Do not use if added via [EditorInspectorPlugin.\_parse\_property()](class_editorinspectorplugin.md#class-editorinspectorplugin-private-method-parse-property).

* * *

**object\_id\_selected**(property: [StringName](class_stringname.md#class-stringname), id: [int](class_int.md#class-int)) [🔗](#class-editorproperty-signal-object-id-selected)

Used by sub-inspectors. Emit it if what was selected was an Object ID.

* * *

**property\_can\_revert\_changed**(property: [StringName](class_stringname.md#class-stringname), can\_revert: [bool](class_bool.md#class-bool)) [🔗](#class-editorproperty-signal-property-can-revert-changed)

Emitted when the revertability (i.e., whether it has a non-default value and thus is displayed with a revert icon) of a property has changed.

* * *

**property\_changed**(property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant), field: [StringName](class_stringname.md#class-stringname), changing: [bool](class_bool.md#class-bool)) [🔗](#class-editorproperty-signal-property-changed)

Do not emit this manually, use the [emit\_changed()](#class-editorproperty-method-emit-changed) method instead.

* * *

**property\_checked**(property: [StringName](class_stringname.md#class-stringname), checked: [bool](class_bool.md#class-bool)) [🔗](#class-editorproperty-signal-property-checked)

Emitted when a property was checked. Used internally.

* * *

**property\_deleted**(property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-editorproperty-signal-property-deleted)

Emitted when a property was deleted. Used internally.

* * *

**property\_favorited**(property: [StringName](class_stringname.md#class-stringname), favorited: [bool](class_bool.md#class-bool)) [🔗](#class-editorproperty-signal-property-favorited)

Emit it if you want to mark a property as favorited, making it appear at the top of the inspector.

* * *

**property\_keyed**(property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-editorproperty-signal-property-keyed)

Emit it if you want to add this value as an animation key (check for keying being enabled first).

* * *

**property\_keyed\_with\_value**(property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorproperty-signal-property-keyed-with-value)

Emit it if you want to key a property with a single value.

* * *

**property\_overridden**() [🔗](#class-editorproperty-signal-property-overridden)

Emitted when a setting override for the current project is requested.

* * *

**property\_pinned**(property: [StringName](class_stringname.md#class-stringname), pinned: [bool](class_bool.md#class-bool)) [🔗](#class-editorproperty-signal-property-pinned)

Emit it if you want to mark (or unmark) the value of a property for being saved regardless of being equal to the default value.

The default value is the one the property will get when the node is just instantiated and can come from an ancestor scene in the inheritance/instantiation chain, a script or a builtin class.

* * *

**resource\_selected**(path: [String](class_string.md#class-string), resource: [Resource](class_resource.md#class-resource)) [🔗](#class-editorproperty-signal-resource-selected)

If you want a sub-resource to be edited, emit this signal with the resource.

* * *

**selected**(path: [String](class_string.md#class-string), focusable\_idx: [int](class_int.md#class-int)) [🔗](#class-editorproperty-signal-selected)

Emitted when selected. Used internally.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **checkable** = `false` [🔗](#class-editorproperty-property-checkable)

- void **set\_checkable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_checkable**()


Used by the inspector, set to `true` when the property is checkable.

* * *

[bool](class_bool.md#class-bool) **checked** = `false` [🔗](#class-editorproperty-property-checked)

- void **set\_checked**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_checked**()


Used by the inspector, set to `true` when the property is checked.

* * *

[bool](class_bool.md#class-bool) **deletable** = `false` [🔗](#class-editorproperty-property-deletable)

- void **set\_deletable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deletable**()


Used by the inspector, set to `true` when the property can be deleted by the user.

* * *

[bool](class_bool.md#class-bool) **draw\_background** = `true` [🔗](#class-editorproperty-property-draw-background)

- void **set\_draw\_background**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_background**()


Used by the inspector, set to `true` when the property background is drawn.

* * *

[bool](class_bool.md#class-bool) **draw\_label** = `true` [🔗](#class-editorproperty-property-draw-label)

- void **set\_draw\_label**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_label**()


Used by the inspector, set to `true` when the property label is drawn.

* * *

[bool](class_bool.md#class-bool) **draw\_warning** = `false` [🔗](#class-editorproperty-property-draw-warning)

- void **set\_draw\_warning**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_warning**()


Used by the inspector, set to `true` when the property is drawn with the editor theme's warning color. This is used for editable children's properties.

* * *

[bool](class_bool.md#class-bool) **keying** = `false` [🔗](#class-editorproperty-property-keying)

- void **set\_keying**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_keying**()


Used by the inspector, set to `true` when the property can add keys for animation.

* * *

[String](class_string.md#class-string) **label** = `""` [🔗](#class-editorproperty-property-label)

- void **set\_label**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_label**()


Set this property to change the label (if you want to show one).

* * *

[float](class_float.md#class-float) **name\_split\_ratio** = `0.5` [🔗](#class-editorproperty-property-name-split-ratio)

- void **set\_name\_split\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_name\_split\_ratio**()


Space distribution ratio between the label and the editing field.

* * *

[bool](class_bool.md#class-bool) **read\_only** = `false` [🔗](#class-editorproperty-property-read-only)

- void **set\_read\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_read\_only**()


Used by the inspector, set to `true` when the property is read-only.

* * *

[bool](class_bool.md#class-bool) **selectable** = `true` [🔗](#class-editorproperty-property-selectable)

- void **set\_selectable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selectable**()


Used by the inspector, set to `true` when the property is selectable.

* * *

[bool](class_bool.md#class-bool) **use\_folding** = `false` [🔗](#class-editorproperty-property-use-folding)

- void **set\_use\_folding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_folding**()


Used by the inspector, set to `true` when the property is using folding.

* * *

## Method Descriptions

void **\_set\_read\_only**(read\_only: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editorproperty-private-method-set-read-only)

Called when the read-only status of the property is changed. It may be used to change custom controls into a read-only or modifiable state.

* * *

void **\_update\_property**() virtual [🔗](#class-editorproperty-private-method-update-property)

When this virtual function is called, you must update your editor.

* * *

void **add\_focusable**(control: [Control](class_control.md#class-control)) [🔗](#class-editorproperty-method-add-focusable)

If any of the controls added can gain keyboard focus, add it here. This ensures that focus will be restored if the inspector is refreshed.

* * *

void **deselect**() [🔗](#class-editorproperty-method-deselect)

Draw property as not selected. Used by the inspector.

* * *

void **emit\_changed**(property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant), field: [StringName](class_stringname.md#class-stringname) = &"", changing: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorproperty-method-emit-changed)

If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).

* * *

[Object](class_object.md#class-object) **get\_edited\_object**() [🔗](#class-editorproperty-method-get-edited-object)

Returns the edited object.

**Note:** This method could return `null` if the editor has not yet been associated with a property. However, in [\_update\_property()](#class-editorproperty-private-method-update-property) and [\_set\_read\_only()](#class-editorproperty-private-method-set-read-only), this value is _guaranteed_ to be non- `null`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_edited\_property**() const [🔗](#class-editorproperty-method-get-edited-property)

Returns the edited property. If your editor is for a single property (added via [EditorInspectorPlugin.\_parse\_property()](class_editorinspectorplugin.md#class-editorinspectorplugin-private-method-parse-property)), then this will return the property.

**Note:** This method could return `null` if the editor has not yet been associated with a property. However, in [\_update\_property()](#class-editorproperty-private-method-update-property) and [\_set\_read\_only()](#class-editorproperty-private-method-set-read-only), this value is _guaranteed_ to be non- `null`.

* * *

[bool](class_bool.md#class-bool) **is\_selected**() const [🔗](#class-editorproperty-method-is-selected)

Returns `true` if property is drawn as selected. Used by the inspector.

* * *

void **select**(focusable: [int](class_int.md#class-int) = -1) [🔗](#class-editorproperty-method-select)

Draw property as selected. Used by the inspector.

* * *

void **set\_bottom\_editor**(editor: [Control](class_control.md#class-control)) [🔗](#class-editorproperty-method-set-bottom-editor)

Puts the `editor` control below the property label. The control must be previously added using [Node.add\_child()](class_node.md#class-node-method-add-child).

* * *

void **set\_label\_reference**(control: [Control](class_control.md#class-control)) [🔗](#class-editorproperty-method-set-label-reference)

Used by the inspector, set to a control that will be used as a reference to calculate the size of the label.

* * *

void **set\_object\_and\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-editorproperty-method-set-object-and-property)

Assigns object and property to edit.

* * *

void **update\_property**() [🔗](#class-editorproperty-method-update-property)

Forces a refresh of the property display.

[Previous](class_editorplugin.md "EditorPlugin") [Next](class_editorresourcepicker.md "EditorResourcePicker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorplugin.md "EditorPlugin") [Next](class_editorresourcepicker.md "EditorResourcePicker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).