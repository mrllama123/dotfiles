---
title: EditorFeatureProfile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorfeatureprofile.html
crawled_at: "2026-08-13T10:38:38+12:00"
content_hash: 8d078dd2436ced12079b207f19ab9f64e7582f76a497dacb38b24c670e1cd89a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorFeatureProfile

* * *

# EditorFeatureProfile

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An editor feature profile which can be used to disable specific features.

## Description

An editor feature profile can be used to disable specific features of the Godot editor. When disabled, the features won't appear in the editor, which makes the editor less cluttered. This is useful in education settings to reduce confusion or when working in a team. For example, artists and level designers could use a feature profile that disables the script editor to avoid accidentally making changes to files they aren't supposed to edit.

To manage editor feature profiles visually, use **Editor > Manage Feature Profiles...** at the top of the editor window.

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_feature\_name](#class-editorfeatureprofile-method-get-feature-name)(feature: [Feature](#enum-editorfeatureprofile-feature)) |
| [bool](class_bool.md#class-bool) | [is\_class\_disabled](#class-editorfeatureprofile-method-is-class-disabled)(class\_name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_class\_editor\_disabled](#class-editorfeatureprofile-method-is-class-editor-disabled)(class\_name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_class\_property\_disabled](#class-editorfeatureprofile-method-is-class-property-disabled)(class\_name: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_feature\_disabled](#class-editorfeatureprofile-method-is-feature-disabled)(feature: [Feature](#enum-editorfeatureprofile-feature)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_from\_file](#class-editorfeatureprofile-method-load-from-file)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_to\_file](#class-editorfeatureprofile-method-save-to-file)(path: [String](class_string.md#class-string)) |
| void | [set\_disable\_class](#class-editorfeatureprofile-method-set-disable-class)(class\_name: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) |
| void | [set\_disable\_class\_editor](#class-editorfeatureprofile-method-set-disable-class-editor)(class\_name: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) |
| void | [set\_disable\_class\_property](#class-editorfeatureprofile-method-set-disable-class-property)(class\_name: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) |
| void | [set\_disable\_feature](#class-editorfeatureprofile-method-set-disable-feature)(feature: [Feature](#enum-editorfeatureprofile-feature), disable: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **Feature**: [🔗](#enum-editorfeatureprofile-feature)

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_3D** = `0`

The 3D editor. If this feature is disabled, the 3D editor won't display but 3D nodes will still display in the Create New Node dialog.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_SCRIPT** = `1`

The Script tab, which contains the script editor and class reference browser. If this feature is disabled, the Script tab won't display.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_ASSET\_LIB** = `2`

The AssetLib tab. If this feature is disabled, the AssetLib tab won't display.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_SCENE\_TREE** = `3`

Scene tree editing. If this feature is disabled, the Scene tree dock will still be visible but will be read-only.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_NODE\_DOCK** = `4`

The Node dock. If this feature is disabled, signals and groups won't be visible and modifiable from the editor.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_FILESYSTEM\_DOCK** = `5`

The FileSystem dock. If this feature is disabled, the FileSystem dock won't be visible.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_IMPORT\_DOCK** = `6`

The Import dock. If this feature is disabled, the Import dock won't be visible.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_HISTORY\_DOCK** = `7`

The History dock. If this feature is disabled, the History dock won't be visible.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_GAME** = `8`

The Game tab, which allows embedding the game window and selecting nodes by clicking inside of it. If this feature is disabled, the Game tab won't display.

[Feature](#enum-editorfeatureprofile-feature) **FEATURE\_MAX** = `9`

Represents the size of the [Feature](#enum-editorfeatureprofile-feature) enum.

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_feature\_name**(feature: [Feature](#enum-editorfeatureprofile-feature)) [🔗](#class-editorfeatureprofile-method-get-feature-name)

Returns the specified `feature`'s human-readable name.

* * *

[bool](class_bool.md#class-bool) **is\_class\_disabled**(class\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorfeatureprofile-method-is-class-disabled)

Returns `true` if the class specified by `class_name` is disabled. When disabled, the class won't appear in the Create New Node dialog.

* * *

[bool](class_bool.md#class-bool) **is\_class\_editor\_disabled**(class\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorfeatureprofile-method-is-class-editor-disabled)

Returns `true` if editing for the class specified by `class_name` is disabled. When disabled, the class will still appear in the Create New Node dialog but the Inspector will be read-only when selecting a node that extends the class.

* * *

[bool](class_bool.md#class-bool) **is\_class\_property\_disabled**(class\_name: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorfeatureprofile-method-is-class-property-disabled)

Returns `true` if `property` is disabled in the class specified by `class_name`. When a property is disabled, it won't appear in the Inspector when selecting a node that extends the class specified by `class_name`.

* * *

[bool](class_bool.md#class-bool) **is\_feature\_disabled**(feature: [Feature](#enum-editorfeatureprofile-feature)) const [🔗](#class-editorfeatureprofile-method-is-feature-disabled)

Returns `true` if the `feature` is disabled. When a feature is disabled, it will disappear from the editor entirely.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_from\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorfeatureprofile-method-load-from-file)

Loads an editor feature profile from a file. The file must follow the JSON format obtained by using the feature profile manager's **Export** button or the [save\_to\_file()](#class-editorfeatureprofile-method-save-to-file) method.

**Note:** Feature profiles created via the user interface are loaded from the `feature_profiles` directory, as a file with the `.profile` extension. The editor configuration folder can be found by using [EditorPaths.get\_config\_dir()](class_editorpaths.md#class-editorpaths-method-get-config-dir).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_to\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorfeatureprofile-method-save-to-file)

Saves the editor feature profile to a file in JSON format. It can then be imported using the feature profile manager's **Import** button or the [load\_from\_file()](#class-editorfeatureprofile-method-load-from-file) method.

**Note:** Feature profiles created via the user interface are saved in the `feature_profiles` directory, as a file with the `.profile` extension. The editor configuration folder can be found by using [EditorPaths.get\_config\_dir()](class_editorpaths.md#class-editorpaths-method-get-config-dir).

* * *

void **set\_disable\_class**(class\_name: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) [🔗](#class-editorfeatureprofile-method-set-disable-class)

If `disable` is `true`, disables the class specified by `class_name`. When disabled, the class won't appear in the Create New Node dialog.

* * *

void **set\_disable\_class\_editor**(class\_name: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) [🔗](#class-editorfeatureprofile-method-set-disable-class-editor)

If `disable` is `true`, disables editing for the class specified by `class_name`. When disabled, the class will still appear in the Create New Node dialog but the Inspector will be read-only when selecting a node that extends the class.

* * *

void **set\_disable\_class\_property**(class\_name: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname), disable: [bool](class_bool.md#class-bool)) [🔗](#class-editorfeatureprofile-method-set-disable-class-property)

If `disable` is `true`, disables editing for `property` in the class specified by `class_name`. When a property is disabled, it won't appear in the Inspector when selecting a node that extends the class specified by `class_name`.

* * *

void **set\_disable\_feature**(feature: [Feature](#enum-editorfeatureprofile-feature), disable: [bool](class_bool.md#class-bool)) [🔗](#class-editorfeatureprofile-method-set-disable-feature)

If `disable` is `true`, disables the editor feature specified in `feature`. When a feature is disabled, it will disappear from the editor entirely.

[Previous](class_editorexportpreset.md "EditorExportPreset") [Next](class_editorfilesystemdirectory.md "EditorFileSystemDirectory")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportpreset.md "EditorExportPreset") [Next](class_editorfilesystemdirectory.md "EditorFileSystemDirectory")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).