---
title: EditorFileDialog — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorfiledialog.html
crawled_at: "2026-08-13T10:30:19+12:00"
content_hash: f80892d8e4ea229fd0f31135bd6cfed15f371b919adecedb353e3c0c4862307f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorFileDialog

* * *

# EditorFileDialog

**Inherits:** [ConfirmationDialog](class_confirmationdialog.md#class-confirmationdialog) **<** [AcceptDialog](class_acceptdialog.md#class-acceptdialog) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A modified version of [FileDialog](class_filedialog.md#class-filedialog) used by the editor.

## Description

**EditorFileDialog** is an enhanced version of [FileDialog](class_filedialog.md#class-filedialog) available only to editor plugins. Additional features include list of favorited/recent files and the ability to see files as thumbnails grid instead of list.

Unlike [FileDialog](class_filedialog.md#class-filedialog), **EditorFileDialog** does not have a property for using native dialogs. Instead, native dialogs can be enabled globally via the [EditorSettings.interface/editor/use\_native\_file\_dialogs](class_editorsettings.md#class-editorsettings-property-interface-editor-use-native-file-dialogs) editor setting. They are also enabled automatically when running in sandbox (e.g. on macOS).

## Properties

|     |     |     |
| --- | --- | --- |
| [Access](#enum-editorfiledialog-access) | [access](#class-editorfiledialog-property-access) | `0` |
| [String](class_string.md#class-string) | [current\_dir](#class-editorfiledialog-property-current-dir) |  |
| [String](class_string.md#class-string) | [current\_file](#class-editorfiledialog-property-current-file) |  |
| [String](class_string.md#class-string) | [current\_path](#class-editorfiledialog-property-current-path) |  |
| [bool](class_bool.md#class-bool) | dialog\_hide\_on\_ok | `false` (overrides [AcceptDialog](class_acceptdialog.md#class-acceptdialog-property-dialog-hide-on-ok)) |
| [bool](class_bool.md#class-bool) | [disable\_overwrite\_warning](#class-editorfiledialog-property-disable-overwrite-warning) | `false` |
| [DisplayMode](#enum-editorfiledialog-displaymode) | [display\_mode](#class-editorfiledialog-property-display-mode) | `0` |
| [FileMode](#enum-editorfiledialog-filemode) | [file\_mode](#class-editorfiledialog-property-file-mode) | `4` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [filters](#class-editorfiledialog-property-filters) | `PackedStringArray()` |
| [int](class_int.md#class-int) | [option\_count](#class-editorfiledialog-property-option-count) | `0` |
| [bool](class_bool.md#class-bool) | [show\_hidden\_files](#class-editorfiledialog-property-show-hidden-files) | `false` |
| [String](class_string.md#class-string) | title | `"Save a File"` (overrides [Window](class_window.md#class-window-property-title)) |

## Methods

|     |     |
| --- | --- |
| void | [add\_filter](#class-editorfiledialog-method-add-filter)(filter: [String](class_string.md#class-string), description: [String](class_string.md#class-string) = "") |
| void | [add\_option](#class-editorfiledialog-method-add-option)(name: [String](class_string.md#class-string), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), default\_value\_index: [int](class_int.md#class-int)) |
| void | [add\_side\_menu](#class-editorfiledialog-method-add-side-menu)(menu: [Control](class_control.md#class-control), title: [String](class_string.md#class-string) = "") |
| void | [clear\_filename\_filter](#class-editorfiledialog-method-clear-filename-filter)() |
| void | [clear\_filters](#class-editorfiledialog-method-clear-filters)() |
| [String](class_string.md#class-string) | [get\_filename\_filter](#class-editorfiledialog-method-get-filename-filter)() const |
| [LineEdit](class_lineedit.md#class-lineedit) | [get\_line\_edit](#class-editorfiledialog-method-get-line-edit)() |
| [int](class_int.md#class-int) | [get\_option\_default](#class-editorfiledialog-method-get-option-default)(option: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_option\_name](#class-editorfiledialog-method-get-option-name)(option: [int](class_int.md#class-int)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_option\_values](#class-editorfiledialog-method-get-option-values)(option: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_selected\_options](#class-editorfiledialog-method-get-selected-options)() const |
| [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) | [get\_vbox](#class-editorfiledialog-method-get-vbox)() |
| void | [invalidate](#class-editorfiledialog-method-invalidate)() |
| void | [popup\_file\_dialog](#class-editorfiledialog-method-popup-file-dialog)() |
| void | [set\_filename\_filter](#class-editorfiledialog-method-set-filename-filter)(filter: [String](class_string.md#class-string)) |
| void | [set\_option\_default](#class-editorfiledialog-method-set-option-default)(option: [int](class_int.md#class-int), default\_value\_index: [int](class_int.md#class-int)) |
| void | [set\_option\_name](#class-editorfiledialog-method-set-option-name)(option: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_option\_values](#class-editorfiledialog-method-set-option-values)(option: [int](class_int.md#class-int), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |

* * *

## Signals

**dir\_selected**(dir: [String](class_string.md#class-string)) [🔗](#class-editorfiledialog-signal-dir-selected)

Emitted when a directory is selected.

* * *

**file\_selected**(path: [String](class_string.md#class-string)) [🔗](#class-editorfiledialog-signal-file-selected)

Emitted when a file is selected.

* * *

**filename\_filter\_changed**(filter: [String](class_string.md#class-string)) [🔗](#class-editorfiledialog-signal-filename-filter-changed)

Emitted when the filter for file names changes.

* * *

**files\_selected**(paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfiledialog-signal-files-selected)

Emitted when multiple files are selected.

* * *

## Enumerations

enum **FileMode**: [🔗](#enum-editorfiledialog-filemode)

[FileMode](#enum-editorfiledialog-filemode) **FILE\_MODE\_OPEN\_FILE** = `0`

The **EditorFileDialog** can select only one file. Accepting the window will open the file.

[FileMode](#enum-editorfiledialog-filemode) **FILE\_MODE\_OPEN\_FILES** = `1`

The **EditorFileDialog** can select multiple files. Accepting the window will open all files.

[FileMode](#enum-editorfiledialog-filemode) **FILE\_MODE\_OPEN\_DIR** = `2`

The **EditorFileDialog** can select only one directory. Accepting the window will open the directory.

[FileMode](#enum-editorfiledialog-filemode) **FILE\_MODE\_OPEN\_ANY** = `3`

The **EditorFileDialog** can select a file or directory. Accepting the window will open it.

[FileMode](#enum-editorfiledialog-filemode) **FILE\_MODE\_SAVE\_FILE** = `4`

The **EditorFileDialog** can select only one file. Accepting the window will save the file.

* * *

enum **Access**: [🔗](#enum-editorfiledialog-access)

[Access](#enum-editorfiledialog-access) **ACCESS\_RESOURCES** = `0`

The **EditorFileDialog** can only view `res://` directory contents.

[Access](#enum-editorfiledialog-access) **ACCESS\_USERDATA** = `1`

The **EditorFileDialog** can only view `user://` directory contents.

[Access](#enum-editorfiledialog-access) **ACCESS\_FILESYSTEM** = `2`

The **EditorFileDialog** can view the entire local file system.

* * *

enum **DisplayMode**: [🔗](#enum-editorfiledialog-displaymode)

[DisplayMode](#enum-editorfiledialog-displaymode) **DISPLAY\_THUMBNAILS** = `0`

The **EditorFileDialog** displays resources as thumbnails.

[DisplayMode](#enum-editorfiledialog-displaymode) **DISPLAY\_LIST** = `1`

The **EditorFileDialog** displays resources as a list of filenames.

* * *

## Property Descriptions

[Access](#enum-editorfiledialog-access) **access** = `0` [🔗](#class-editorfiledialog-property-access)

- void **set\_access**(value: [Access](#enum-editorfiledialog-access))

- [Access](#enum-editorfiledialog-access) **get\_access**()


The location from which the user may select a file, including `res://`, `user://`, and the local file system.

* * *

[String](class_string.md#class-string) **current\_dir** [🔗](#class-editorfiledialog-property-current-dir)

- void **set\_current\_dir**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_dir**()


The currently occupied directory.

* * *

[String](class_string.md#class-string) **current\_file** [🔗](#class-editorfiledialog-property-current-file)

- void **set\_current\_file**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_file**()


The currently selected file.

* * *

[String](class_string.md#class-string) **current\_path** [🔗](#class-editorfiledialog-property-current-path)

- void **set\_current\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_path**()


The file system path in the address bar.

* * *

[bool](class_bool.md#class-bool) **disable\_overwrite\_warning** = `false` [🔗](#class-editorfiledialog-property-disable-overwrite-warning)

- void **set\_disable\_overwrite\_warning**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_overwrite\_warning\_disabled**()


If `true`, the **EditorFileDialog** will not warn the user before overwriting files.

* * *

[DisplayMode](#enum-editorfiledialog-displaymode) **display\_mode** = `0` [🔗](#class-editorfiledialog-property-display-mode)

- void **set\_display\_mode**(value: [DisplayMode](#enum-editorfiledialog-displaymode))

- [DisplayMode](#enum-editorfiledialog-displaymode) **get\_display\_mode**()


The view format in which the **EditorFileDialog** displays resources to the user.

* * *

[FileMode](#enum-editorfiledialog-filemode) **file\_mode** = `4` [🔗](#class-editorfiledialog-property-file-mode)

- void **set\_file\_mode**(value: [FileMode](#enum-editorfiledialog-filemode))

- [FileMode](#enum-editorfiledialog-filemode) **get\_file\_mode**()


The dialog's open or save mode, which affects the selection behavior.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **filters** = `PackedStringArray()` [🔗](#class-editorfiledialog-property-filters)

- void **set\_filters**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_filters**()


The available file type filters. For example, this shows only `.png` and `.gd` files: `set_filters(PackedStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))`. Multiple file types can also be specified in a single filter. `"*.png, *.jpg, *.jpeg ; Supported Images"` will show both PNG and JPEG files when selected.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[int](class_int.md#class-int) **option\_count** = `0` [🔗](#class-editorfiledialog-property-option-count)

- void **set\_option\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_option\_count**()


The number of additional [OptionButton](class_optionbutton.md#class-optionbutton) s and [CheckBox](class_checkbox.md#class-checkbox) es in the dialog.

* * *

[bool](class_bool.md#class-bool) **show\_hidden\_files** = `false` [🔗](#class-editorfiledialog-property-show-hidden-files)

- void **set\_show\_hidden\_files**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_hidden\_files**()


If `true`, hidden files and directories will be visible in the **EditorFileDialog**. This property is synchronized with [EditorSettings.filesystem/file\_dialog/show\_hidden\_files](class_editorsettings.md#class-editorsettings-property-filesystem-file-dialog-show-hidden-files).

* * *

## Method Descriptions

void **add\_filter**(filter: [String](class_string.md#class-string), description: [String](class_string.md#class-string) = "") [🔗](#class-editorfiledialog-method-add-filter)

Adds a comma-separated file name `filter` option to the **EditorFileDialog** with an optional `description`, which restricts what files can be picked.

A `filter` should be of the form `"filename.extension"`, where filename and extension can be `*` to match any string. Filters starting with `.` (i.e. empty filenames) are not allowed.

For example, a `filter` of `"*.tscn, *.scn"` and a `description` of `"Scenes"` results in filter text "Scenes (\*.tscn, \*.scn)".

* * *

void **add\_option**(name: [String](class_string.md#class-string), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), default\_value\_index: [int](class_int.md#class-int)) [🔗](#class-editorfiledialog-method-add-option)

Adds an additional [OptionButton](class_optionbutton.md#class-optionbutton) to the file dialog. If `values` is empty, a [CheckBox](class_checkbox.md#class-checkbox) is added instead.

`default_value_index` should be an index of the value in the `values`. If `values` is empty it should be either `1` (checked), or `0` (unchecked).

* * *

void **add\_side\_menu**(menu: [Control](class_control.md#class-control), title: [String](class_string.md#class-string) = "") [🔗](#class-editorfiledialog-method-add-side-menu)

Adds the given `menu` to the side of the file dialog with the given `title` text on top. Only one side menu is allowed.

* * *

void **clear\_filename\_filter**() [🔗](#class-editorfiledialog-method-clear-filename-filter)

Clear the filter for file names.

* * *

void **clear\_filters**() [🔗](#class-editorfiledialog-method-clear-filters)

Removes all filters except for "All Files (\*.\*)".

* * *

[String](class_string.md#class-string) **get\_filename\_filter**() const [🔗](#class-editorfiledialog-method-get-filename-filter)

Returns the value of the filter for file names.

* * *

[LineEdit](class_lineedit.md#class-lineedit) **get\_line\_edit**() [🔗](#class-editorfiledialog-method-get-line-edit)

Returns the LineEdit for the selected file.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_option\_default**(option: [int](class_int.md#class-int)) const [🔗](#class-editorfiledialog-method-get-option-default)

Returns the default value index of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

[String](class_string.md#class-string) **get\_option\_name**(option: [int](class_int.md#class-int)) const [🔗](#class-editorfiledialog-method-get-option-name)

Returns the name of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_option\_values**(option: [int](class_int.md#class-int)) const [🔗](#class-editorfiledialog-method-get-option-values)

Returns an array of values of the [OptionButton](class_optionbutton.md#class-optionbutton) with index `option`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_selected\_options**() const [🔗](#class-editorfiledialog-method-get-selected-options)

Returns a [Dictionary](class_dictionary.md#class-dictionary) with the selected values of the additional [OptionButton](class_optionbutton.md#class-optionbutton) s and/or [CheckBox](class_checkbox.md#class-checkbox) es. [Dictionary](class_dictionary.md#class-dictionary) keys are names and values are selected value indices.

* * *

[VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **get\_vbox**() [🔗](#class-editorfiledialog-method-get-vbox)

Returns the [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) used to display the file system.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

void **invalidate**() [🔗](#class-editorfiledialog-method-invalidate)

Notify the **EditorFileDialog** that its view of the data is no longer accurate. Updates the view contents on next view update.

* * *

void **popup\_file\_dialog**() [🔗](#class-editorfiledialog-method-popup-file-dialog)

Shows the **EditorFileDialog** at the default size and position for file dialogs in the editor, and selects the file name if there is a current file.

* * *

void **set\_filename\_filter**(filter: [String](class_string.md#class-string)) [🔗](#class-editorfiledialog-method-set-filename-filter)

Sets the value of the filter for file names.

* * *

void **set\_option\_default**(option: [int](class_int.md#class-int), default\_value\_index: [int](class_int.md#class-int)) [🔗](#class-editorfiledialog-method-set-option-default)

Sets the default value index of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

void **set\_option\_name**(option: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-editorfiledialog-method-set-option-name)

Sets the name of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

void **set\_option\_values**(option: [int](class_int.md#class-int), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfiledialog-method-set-option-values)

Sets the option values of the [OptionButton](class_optionbutton.md#class-optionbutton) with index `option`.

[Previous](class_editorcommandpalette.md "EditorCommandPalette") [Next](class_editorfilesystem.md "EditorFileSystem")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorcommandpalette.md "EditorCommandPalette") [Next](class_editorfilesystem.md "EditorFileSystem")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).