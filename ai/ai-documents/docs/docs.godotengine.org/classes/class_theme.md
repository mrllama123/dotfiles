---
title: Theme — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_theme.html
crawled_at: "2026-08-13T10:27:42+12:00"
content_hash: 461f95fc2b296beb3522f19e92601fb29158711b7e65113e7dd5c2c72373eb54
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Theme

* * *

# Theme

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A resource used for styling/skinning [Control](class_control.md#class-control) s and [Window](class_window.md#class-window) s.

## Description

A resource used for styling/skinning [Control](class_control.md#class-control) and [Window](class_window.md#class-window) nodes. While individual controls can be styled using their local theme overrides (see [Control.add\_theme\_color\_override()](class_control.md#class-control-method-add-theme-color-override)), theme resources allow you to store and apply the same settings across all controls sharing the same type (e.g. style all [Button](class_button.md#class-button) s the same). One theme resource can be used for the entire project, but you can also set a separate theme resource to a branch of control nodes. A theme resource assigned to a control applies to the control itself, as well as all of its direct and indirect children (as long as a chain of controls is uninterrupted).

Use [ProjectSettings.gui/theme/custom](class_projectsettings.md#class-projectsettings-property-gui-theme-custom) to set up a project-scope theme that will be available to every control in your project.

Use [Control.theme](class_control.md#class-control-property-theme) of any control node to set up a theme that will be available to that control and all of its direct and indirect children.

## Tutorials

- [GUI skinning](../tutorials/ui/gui_skinning.md)

- [Using the theme editor](../tutorials/ui/gui_using_theme_editor.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [default\_base\_scale](#class-theme-property-default-base-scale) | `0.0` |
| [Font](class_font.md#class-font) | [default\_font](#class-theme-property-default-font) |  |
| [int](class_int.md#class-int) | [default\_font\_size](#class-theme-property-default-font-size) | `-1` |

## Methods

|     |     |
| --- | --- |
| void | [add\_type](#class-theme-method-add-type)(theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear](#class-theme-method-clear)() |
| void | [clear\_color](#class-theme-method-clear-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_constant](#class-theme-method-clear-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_font](#class-theme-method-clear-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_font\_size](#class-theme-method-clear-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_icon](#class-theme-method-clear-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_stylebox](#class-theme-method-clear-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_theme\_item](#class-theme-method-clear-theme-item)(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_type\_variation](#class-theme-method-clear-type-variation)(theme\_type: [StringName](class_stringname.md#class-stringname)) |
| [Color](class_color.md#class-color) | [get\_color](#class-theme-method-get-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_color\_list](#class-theme-method-get-color-list)(theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_color\_type\_list](#class-theme-method-get-color-type-list)() const |
| [int](class_int.md#class-int) | [get\_constant](#class-theme-method-get-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_constant\_list](#class-theme-method-get-constant-list)(theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_constant\_type\_list](#class-theme-method-get-constant-type-list)() const |
| [Font](class_font.md#class-font) | [get\_font](#class-theme-method-get-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_font\_list](#class-theme-method-get-font-list)(theme\_type: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [get\_font\_size](#class-theme-method-get-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_font\_size\_list](#class-theme-method-get-font-size-list)(theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_font\_size\_type\_list](#class-theme-method-get-font-size-type-list)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_font\_type\_list](#class-theme-method-get-font-type-list)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_icon](#class-theme-method-get-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_icon\_list](#class-theme-method-get-icon-list)(theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_icon\_type\_list](#class-theme-method-get-icon-type-list)() const |
| [StyleBox](class_stylebox.md#class-stylebox) | [get\_stylebox](#class-theme-method-get-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_stylebox\_list](#class-theme-method-get-stylebox-list)(theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_stylebox\_type\_list](#class-theme-method-get-stylebox-type-list)() const |
| [Variant](class_variant.md#class-variant) | [get\_theme\_item](#class-theme-method-get-theme-item)(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_theme\_item\_list](#class-theme-method-get-theme-item-list)(data\_type: [DataType](#enum-theme-datatype), theme\_type: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_theme\_item\_type\_list](#class-theme-method-get-theme-item-type-list)(data\_type: [DataType](#enum-theme-datatype)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_type\_list](#class-theme-method-get-type-list)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_type\_variation\_base](#class-theme-method-get-type-variation-base)(theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_type\_variation\_list](#class-theme-method-get-type-variation-list)(base\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_color](#class-theme-method-has-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_constant](#class-theme-method-has-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_default\_base\_scale](#class-theme-method-has-default-base-scale)() const |
| [bool](class_bool.md#class-bool) | [has\_default\_font](#class-theme-method-has-default-font)() const |
| [bool](class_bool.md#class-bool) | [has\_default\_font\_size](#class-theme-method-has-default-font-size)() const |
| [bool](class_bool.md#class-bool) | [has\_font](#class-theme-method-has-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_font\_size](#class-theme-method-has-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_icon](#class-theme-method-has-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_stylebox](#class-theme-method-has-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_item](#class-theme-method-has-theme-item)(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_type\_variation](#class-theme-method-is-type-variation)(theme\_type: [StringName](class_stringname.md#class-stringname), base\_type: [StringName](class_stringname.md#class-stringname)) const |
| void | [merge\_with](#class-theme-method-merge-with)(other: [Theme](#class-theme)) |
| void | [remove\_type](#class-theme-method-remove-type)(theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_color](#class-theme-method-rename-color)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_constant](#class-theme-method-rename-constant)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_font](#class-theme-method-rename-font)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_font\_size](#class-theme-method-rename-font-size)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_icon](#class-theme-method-rename-icon)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_stylebox](#class-theme-method-rename-stylebox)(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_theme\_item](#class-theme-method-rename-theme-item)(data\_type: [DataType](#enum-theme-datatype), old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_type](#class-theme-method-rename-type)(old\_theme\_type: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_color](#class-theme-method-set-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) |
| void | [set\_constant](#class-theme-method-set-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) |
| void | [set\_font](#class-theme-method-set-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) |
| void | [set\_font\_size](#class-theme-method-set-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) |
| void | [set\_icon](#class-theme-method-set-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_stylebox](#class-theme-method-set-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), texture: [StyleBox](class_stylebox.md#class-stylebox)) |
| void | [set\_theme\_item](#class-theme-method-set-theme-item)(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_type\_variation](#class-theme-method-set-type-variation)(theme\_type: [StringName](class_stringname.md#class-stringname), base\_type: [StringName](class_stringname.md#class-stringname)) |

* * *

## Enumerations

enum **DataType**: [🔗](#enum-theme-datatype)

[DataType](#enum-theme-datatype) **DATA\_TYPE\_COLOR** = `0`

Theme's [Color](class_color.md#class-color) item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_CONSTANT** = `1`

Theme's constant item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_FONT** = `2`

Theme's [Font](class_font.md#class-font) item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_FONT\_SIZE** = `3`

Theme's font size item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_ICON** = `4`

Theme's icon [Texture2D](class_texture2d.md#class-texture2d) item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_STYLEBOX** = `5`

Theme's [StyleBox](class_stylebox.md#class-stylebox) item type.

[DataType](#enum-theme-datatype) **DATA\_TYPE\_MAX** = `6`

Maximum value for the DataType enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **default\_base\_scale** = `0.0` [🔗](#class-theme-property-default-base-scale)

- void **set\_default\_base\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_default\_base\_scale**()


The default base scale factor of this theme resource. Used by some controls to scale their visual properties based on the global scale factor. If this value is set to `0.0`, the global scale factor is used (see [ThemeDB.fallback\_base\_scale](class_themedb.md#class-themedb-property-fallback-base-scale)).

Use [has\_default\_base\_scale()](#class-theme-method-has-default-base-scale) to check if this value is valid.

* * *

[Font](class_font.md#class-font) **default\_font** [🔗](#class-theme-property-default-font)

- void **set\_default\_font**(value: [Font](class_font.md#class-font))

- [Font](class_font.md#class-font) **get\_default\_font**()


The default font of this theme resource. Used as the default value when trying to fetch a font resource that doesn't exist in this theme or is in invalid state. If the default font is also missing or invalid, the engine fallback value is used (see [ThemeDB.fallback\_font](class_themedb.md#class-themedb-property-fallback-font)).

Use [has\_default\_font()](#class-theme-method-has-default-font) to check if this value is valid.

* * *

[int](class_int.md#class-int) **default\_font\_size** = `-1` [🔗](#class-theme-property-default-font-size)

- void **set\_default\_font\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_default\_font\_size**()


The default font size of this theme resource. Used as the default value when trying to fetch a font size value that doesn't exist in this theme or is in invalid state. If the default font size is also missing or invalid, the engine fallback value is used (see [ThemeDB.fallback\_font\_size](class_themedb.md#class-themedb-property-fallback-font-size)).

Values below `1` are invalid and can be used to unset the property. Use [has\_default\_font\_size()](#class-theme-method-has-default-font-size) to check if this value is valid.

* * *

## Method Descriptions

void **add\_type**(theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-add-type)

Adds an empty theme type for every valid data type.

**Note:** Empty types are not saved with the theme. This method only exists to perform in-memory changes to the resource. Use available `set_*` methods to add theme items.

* * *

void **clear**() [🔗](#class-theme-method-clear)

Removes all the theme properties defined on the theme resource.

* * *

void **clear\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-color)

Removes the [Color](class_color.md#class-color) property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_color()](#class-theme-method-has-color) to check for existence.

* * *

void **clear\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-constant)

Removes the constant property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_constant()](#class-theme-method-has-constant) to check for existence.

* * *

void **clear\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-font)

Removes the [Font](class_font.md#class-font) property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_font()](#class-theme-method-has-font) to check for existence.

* * *

void **clear\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-font-size)

Removes the font size property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_font\_size()](#class-theme-method-has-font-size) to check for existence.

* * *

void **clear\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-icon)

Removes the icon property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_icon()](#class-theme-method-has-icon) to check for existence.

* * *

void **clear\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-stylebox)

Removes the [StyleBox](class_stylebox.md#class-stylebox) property defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_stylebox()](#class-theme-method-has-stylebox) to check for existence.

* * *

void **clear\_theme\_item**(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-theme-item)

Removes the theme property of `data_type` defined by `name` and `theme_type`, if it exists.

Fails if it doesn't exist. Use [has\_theme\_item()](#class-theme-method-has-theme-item) to check for existence.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

void **clear\_type\_variation**(theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-clear-type-variation)

Unmarks `theme_type` as being a variation of another theme type. See [set\_type\_variation()](#class-theme-method-set-type-variation).

* * *

[Color](class_color.md#class-color) **get\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-color)

Returns the [Color](class_color.md#class-color) property defined by `name` and `theme_type`, if it exists.

Returns the default color value if the property doesn't exist. Use [has\_color()](#class-theme-method-has-color) to check for existence.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_color\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-color-list)

Returns a list of names for [Color](class_color.md#class-color) properties defined with `theme_type`. Use [get\_color\_type\_list()](#class-theme-method-get-color-type-list) to get a list of possible theme type names.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_color\_type\_list**() const [🔗](#class-theme-method-get-color-type-list)

Returns a list of all unique theme type names for [Color](class_color.md#class-color) properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[int](class_int.md#class-int) **get\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-constant)

Returns the constant property defined by `name` and `theme_type`, if it exists.

Returns `0` if the property doesn't exist. Use [has\_constant()](#class-theme-method-has-constant) to check for existence.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_constant\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-constant-list)

Returns a list of names for constant properties defined with `theme_type`. Use [get\_constant\_type\_list()](#class-theme-method-get-constant-type-list) to get a list of possible theme type names.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_constant\_type\_list**() const [🔗](#class-theme-method-get-constant-type-list)

Returns a list of all unique theme type names for constant properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[Font](class_font.md#class-font) **get\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-font)

Returns the [Font](class_font.md#class-font) property defined by `name` and `theme_type`, if it exists.

Returns the default theme font if the property doesn't exist and the default theme font is set up (see [default\_font](#class-theme-property-default-font)). Use [has\_font()](#class-theme-method-has-font) to check for existence of the property and [has\_default\_font()](#class-theme-method-has-default-font) to check for existence of the default theme font.

Returns the engine fallback font value, if neither exist (see [ThemeDB.fallback\_font](class_themedb.md#class-themedb-property-fallback-font)).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_font\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-font-list)

Returns a list of names for [Font](class_font.md#class-font) properties defined with `theme_type`. Use [get\_font\_type\_list()](#class-theme-method-get-font-type-list) to get a list of possible theme type names.

* * *

[int](class_int.md#class-int) **get\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-font-size)

Returns the font size property defined by `name` and `theme_type`, if it exists.

Returns the default theme font size if the property doesn't exist and the default theme font size is set up (see [default\_font\_size](#class-theme-property-default-font-size)). Use [has\_font\_size()](#class-theme-method-has-font-size) to check for existence of the property and [has\_default\_font\_size()](#class-theme-method-has-default-font-size) to check for existence of the default theme font.

Returns the engine fallback font size value, if neither exist (see [ThemeDB.fallback\_font\_size](class_themedb.md#class-themedb-property-fallback-font-size)).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_font\_size\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-font-size-list)

Returns a list of names for font size properties defined with `theme_type`. Use [get\_font\_size\_type\_list()](#class-theme-method-get-font-size-type-list) to get a list of possible theme type names.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_font\_size\_type\_list**() const [🔗](#class-theme-method-get-font-size-type-list)

Returns a list of all unique theme type names for font size properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_font\_type\_list**() const [🔗](#class-theme-method-get-font-type-list)

Returns a list of all unique theme type names for [Font](class_font.md#class-font) properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-icon)

Returns the icon property defined by `name` and `theme_type`, if it exists.

Returns the engine fallback icon value if the property doesn't exist (see [ThemeDB.fallback\_icon](class_themedb.md#class-themedb-property-fallback-icon)). Use [has\_icon()](#class-theme-method-has-icon) to check for existence.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_icon\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-icon-list)

Returns a list of names for icon properties defined with `theme_type`. Use [get\_icon\_type\_list()](#class-theme-method-get-icon-type-list) to get a list of possible theme type names.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_icon\_type\_list**() const [🔗](#class-theme-method-get-icon-type-list)

Returns a list of all unique theme type names for icon properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **get\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-stylebox)

Returns the [StyleBox](class_stylebox.md#class-stylebox) property defined by `name` and `theme_type`, if it exists.

Returns the engine fallback stylebox value if the property doesn't exist (see [ThemeDB.fallback\_stylebox](class_themedb.md#class-themedb-property-fallback-stylebox)). Use [has\_stylebox()](#class-theme-method-has-stylebox) to check for existence.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_stylebox\_list**(theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-stylebox-list)

Returns a list of names for [StyleBox](class_stylebox.md#class-stylebox) properties defined with `theme_type`. Use [get\_stylebox\_type\_list()](#class-theme-method-get-stylebox-type-list) to get a list of possible theme type names.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_stylebox\_type\_list**() const [🔗](#class-theme-method-get-stylebox-type-list)

Returns a list of all unique theme type names for [StyleBox](class_stylebox.md#class-stylebox) properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

* * *

[Variant](class_variant.md#class-variant) **get\_theme\_item**(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-theme-item)

Returns the theme property of `data_type` defined by `name` and `theme_type`, if it exists.

Returns the engine fallback value if the property doesn't exist (see [ThemeDB](class_themedb.md#class-themedb)). Use [has\_theme\_item()](#class-theme-method-has-theme-item) to check for existence.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_theme\_item\_list**(data\_type: [DataType](#enum-theme-datatype), theme\_type: [String](class_string.md#class-string)) const [🔗](#class-theme-method-get-theme-item-list)

Returns a list of names for properties of `data_type` defined with `theme_type`. Use [get\_theme\_item\_type\_list()](#class-theme-method-get-theme-item-type-list) to get a list of possible theme type names.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_theme\_item\_type\_list**(data\_type: [DataType](#enum-theme-datatype)) const [🔗](#class-theme-method-get-theme-item-type-list)

Returns a list of all unique theme type names for `data_type` properties. Use [get\_type\_list()](#class-theme-method-get-type-list) to get a list of all unique theme types.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_type\_list**() const [🔗](#class-theme-method-get-type-list)

Returns a list of all unique theme type names. Use the appropriate `get_*_type_list` method to get a list of unique theme types for a single data type.

* * *

[StringName](class_stringname.md#class-stringname) **get\_type\_variation\_base**(theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-type-variation-base)

Returns the name of the base theme type if `theme_type` is a valid variation type. Returns an empty string otherwise.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_type\_variation\_list**(base\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-get-type-variation-list)

Returns a list of all type variations for the given `base_type`.

* * *

[bool](class_bool.md#class-bool) **has\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-color)

Returns `true` if the [Color](class_color.md#class-color) property defined by `name` and `theme_type` exists.

Returns `false` if it doesn't exist. Use [set\_color()](#class-theme-method-set-color) to define it.

* * *

[bool](class_bool.md#class-bool) **has\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-constant)

Returns `true` if the constant property defined by `name` and `theme_type` exists.

Returns `false` if it doesn't exist. Use [set\_constant()](#class-theme-method-set-constant) to define it.

* * *

[bool](class_bool.md#class-bool) **has\_default\_base\_scale**() const [🔗](#class-theme-method-has-default-base-scale)

Returns `true` if [default\_base\_scale](#class-theme-property-default-base-scale) has a valid value.

Returns `false` if it doesn't. The value must be greater than `0.0` to be considered valid.

* * *

[bool](class_bool.md#class-bool) **has\_default\_font**() const [🔗](#class-theme-method-has-default-font)

Returns `true` if [default\_font](#class-theme-property-default-font) has a valid value.

Returns `false` if it doesn't.

* * *

[bool](class_bool.md#class-bool) **has\_default\_font\_size**() const [🔗](#class-theme-method-has-default-font-size)

Returns `true` if [default\_font\_size](#class-theme-property-default-font-size) has a valid value.

Returns `false` if it doesn't. The value must be greater than `0` to be considered valid.

* * *

[bool](class_bool.md#class-bool) **has\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-font)

Returns `true` if the [Font](class_font.md#class-font) property defined by `name` and `theme_type` exists, or if the default theme font is set up (see [has\_default\_font()](#class-theme-method-has-default-font)).

Returns `false` if neither exist. Use [set\_font()](#class-theme-method-set-font) to define the property.

* * *

[bool](class_bool.md#class-bool) **has\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-font-size)

Returns `true` if the font size property defined by `name` and `theme_type` exists, or if the default theme font size is set up (see [has\_default\_font\_size()](#class-theme-method-has-default-font-size)).

Returns `false` if neither exist. Use [set\_font\_size()](#class-theme-method-set-font-size) to define the property.

* * *

[bool](class_bool.md#class-bool) **has\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-icon)

Returns `true` if the icon property defined by `name` and `theme_type` exists.

Returns `false` if it doesn't exist. Use [set\_icon()](#class-theme-method-set-icon) to define it.

* * *

[bool](class_bool.md#class-bool) **has\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-stylebox)

Returns `true` if the [StyleBox](class_stylebox.md#class-stylebox) property defined by `name` and `theme_type` exists.

Returns `false` if it doesn't exist. Use [set\_stylebox()](#class-theme-method-set-stylebox) to define it.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_item**(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-has-theme-item)

Returns `true` if the theme property of `data_type` defined by `name` and `theme_type` exists.

Returns `false` if it doesn't exist. Use [set\_theme\_item()](#class-theme-method-set-theme-item) to define it.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

[bool](class_bool.md#class-bool) **is\_type\_variation**(theme\_type: [StringName](class_stringname.md#class-stringname), base\_type: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-theme-method-is-type-variation)

Returns `true` if `theme_type` is marked as a variation of `base_type`.

* * *

void **merge\_with**(other: [Theme](#class-theme)) [🔗](#class-theme-method-merge-with)

Adds missing and overrides existing definitions with values from the `other` theme resource.

**Note:** This modifies the current theme. If you want to merge two themes together without modifying either one, create a new empty theme and merge the other two into it one after another.

* * *

void **remove\_type**(theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-remove-type)

Removes the theme type, gracefully discarding defined theme items. If the type is a variation, this information is also erased. If the type is a base for type variations, those variations lose their base.

* * *

void **rename\_color**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-color)

Renames the [Color](class_color.md#class-color) property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_color()](#class-theme-method-has-color) to check for existence, and [clear\_color()](#class-theme-method-clear-color) to remove the existing property.

* * *

void **rename\_constant**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-constant)

Renames the constant property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_constant()](#class-theme-method-has-constant) to check for existence, and [clear\_constant()](#class-theme-method-clear-constant) to remove the existing property.

* * *

void **rename\_font**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-font)

Renames the [Font](class_font.md#class-font) property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_font()](#class-theme-method-has-font) to check for existence, and [clear\_font()](#class-theme-method-clear-font) to remove the existing property.

* * *

void **rename\_font\_size**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-font-size)

Renames the font size property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_font\_size()](#class-theme-method-has-font-size) to check for existence, and [clear\_font\_size()](#class-theme-method-clear-font-size) to remove the existing property.

* * *

void **rename\_icon**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-icon)

Renames the icon property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_icon()](#class-theme-method-has-icon) to check for existence, and [clear\_icon()](#class-theme-method-clear-icon) to remove the existing property.

* * *

void **rename\_stylebox**(old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-stylebox)

Renames the [StyleBox](class_stylebox.md#class-stylebox) property defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_stylebox()](#class-theme-method-has-stylebox) to check for existence, and [clear\_stylebox()](#class-theme-method-clear-stylebox) to remove the existing property.

* * *

void **rename\_theme\_item**(data\_type: [DataType](#enum-theme-datatype), old\_name: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-theme-item)

Renames the theme property of `data_type` defined by `old_name` and `theme_type` to `name`, if it exists.

Fails if it doesn't exist, or if a similar property with the new name already exists. Use [has\_theme\_item()](#class-theme-method-has-theme-item) to check for existence, and [clear\_theme\_item()](#class-theme-method-clear-theme-item) to remove the existing property.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

void **rename\_type**(old\_theme\_type: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-rename-type)

Renames the theme type `old_theme_type` to `theme_type`, if the old type exists and the new one doesn't exist.

**Note:** Renaming a theme type to an empty name or a variation to a type associated with a built-in class removes type variation connections in a way that cannot be undone by reversing the rename alone.

* * *

void **set\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) [🔗](#class-theme-method-set-color)

Creates or changes the value of the [Color](class_color.md#class-color) property defined by `name` and `theme_type`. Use [clear\_color()](#class-theme-method-clear-color) to remove the property.

* * *

void **set\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) [🔗](#class-theme-method-set-constant)

Creates or changes the value of the constant property defined by `name` and `theme_type`. Use [clear\_constant()](#class-theme-method-clear-constant) to remove the property.

* * *

void **set\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) [🔗](#class-theme-method-set-font)

Creates or changes the value of the [Font](class_font.md#class-font) property defined by `name` and `theme_type`. Use [clear\_font()](#class-theme-method-clear-font) to remove the property.

* * *

void **set\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) [🔗](#class-theme-method-set-font-size)

Creates or changes the value of the font size property defined by `name` and `theme_type`. Use [clear\_font\_size()](#class-theme-method-clear-font-size) to remove the property.

* * *

void **set\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-theme-method-set-icon)

Creates or changes the value of the icon property defined by `name` and `theme_type`. Use [clear\_icon()](#class-theme-method-clear-icon) to remove the property.

* * *

void **set\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), texture: [StyleBox](class_stylebox.md#class-stylebox)) [🔗](#class-theme-method-set-stylebox)

Creates or changes the value of the [StyleBox](class_stylebox.md#class-stylebox) property defined by `name` and `theme_type`. Use [clear\_stylebox()](#class-theme-method-clear-stylebox) to remove the property.

* * *

void **set\_theme\_item**(data\_type: [DataType](#enum-theme-datatype), name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-theme-method-set-theme-item)

Creates or changes the value of the theme property of `data_type` defined by `name` and `theme_type`. Use [clear\_theme\_item()](#class-theme-method-clear-theme-item) to remove the property.

Fails if the `value` type is not accepted by `data_type`.

**Note:** This method is analogous to calling the corresponding data type specific method, but can be used for more generalized logic.

* * *

void **set\_type\_variation**(theme\_type: [StringName](class_stringname.md#class-stringname), base\_type: [StringName](class_stringname.md#class-stringname)) [🔗](#class-theme-method-set-type-variation)

Marks `theme_type` as a variation of `base_type`.

This adds `theme_type` as a suggested option for [Control.theme\_type\_variation](class_control.md#class-control-property-theme-type-variation) on a [Control](class_control.md#class-control) that is of the `base_type` class.

Variations can also be nested, i.e. `base_type` can be another variation. If a chain of variations ends with a `base_type` matching the class of the [Control](class_control.md#class-control), the whole chain is going to be suggested as options.

**Note:** Suggestions only show up if this theme resource is set as the project default theme. See [ProjectSettings.gui/theme/custom](class_projectsettings.md#class-projectsettings-property-gui-theme-custom).

[Previous](class_texturelayeredrd.md "TextureLayeredRD") [Next](class_tilemappattern.md "TileMapPattern")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_texturelayeredrd.md "TextureLayeredRD") [Next](class_tilemappattern.md "TileMapPattern")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).