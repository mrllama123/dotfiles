---
title: FileDialog — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_filedialog.html
crawled_at: "2026-08-13T10:34:37+12:00"
content_hash: daf844372a38004bf4f3fc551003b98ac5d6ae5b39bb3a23d12de5ee46c86ca8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FileDialog

* * *

# FileDialog

**Inherits:** [ConfirmationDialog](class_confirmationdialog.md#class-confirmationdialog) **<** [AcceptDialog](class_acceptdialog.md#class-acceptdialog) **<** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A dialog for selecting files or directories in the filesystem.

## Description

**FileDialog** is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. **FileDialog** automatically sets its window title according to the [file\_mode](#class-filedialog-property-file-mode). If you want to use a custom title, disable this by setting [mode\_overrides\_title](#class-filedialog-property-mode-overrides-title) to `false`.

## Properties

|     |     |     |
| --- | --- | --- |
| [Access](#enum-filedialog-access) | [access](#class-filedialog-property-access) | `0` |
| [String](class_string.md#class-string) | [current\_dir](#class-filedialog-property-current-dir) |  |
| [String](class_string.md#class-string) | [current\_file](#class-filedialog-property-current-file) |  |
| [String](class_string.md#class-string) | [current\_path](#class-filedialog-property-current-path) |  |
| [bool](class_bool.md#class-bool) | dialog\_hide\_on\_ok | `false` (overrides [AcceptDialog](class_acceptdialog.md#class-acceptdialog-property-dialog-hide-on-ok)) |
| [DisplayMode](#enum-filedialog-displaymode) | [display\_mode](#class-filedialog-property-display-mode) | `0` |
| [bool](class_bool.md#class-bool) | [favorites\_enabled](#class-filedialog-property-favorites-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [file\_filter\_toggle\_enabled](#class-filedialog-property-file-filter-toggle-enabled) | `true` |
| [FileMode](#enum-filedialog-filemode) | [file\_mode](#class-filedialog-property-file-mode) | `4` |
| [bool](class_bool.md#class-bool) | [file\_sort\_options\_enabled](#class-filedialog-property-file-sort-options-enabled) | `true` |
| [String](class_string.md#class-string) | [filename\_filter](#class-filedialog-property-filename-filter) | `""` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [filters](#class-filedialog-property-filters) | `PackedStringArray()` |
| [bool](class_bool.md#class-bool) | [folder\_creation\_enabled](#class-filedialog-property-folder-creation-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [hidden\_files\_toggle\_enabled](#class-filedialog-property-hidden-files-toggle-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [layout\_toggle\_enabled](#class-filedialog-property-layout-toggle-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [mode\_overrides\_title](#class-filedialog-property-mode-overrides-title) | `true` |
| [int](class_int.md#class-int) | [option\_count](#class-filedialog-property-option-count) | `0` |
| [bool](class_bool.md#class-bool) | [recent\_list\_enabled](#class-filedialog-property-recent-list-enabled) | `true` |
| [String](class_string.md#class-string) | [root\_subfolder](#class-filedialog-property-root-subfolder) | `""` |
| [bool](class_bool.md#class-bool) | [show\_hidden\_files](#class-filedialog-property-show-hidden-files) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | size | `Vector2i(640, 360)` (overrides [Window](class_window.md#class-window-property-size)) |
| [String](class_string.md#class-string) | title | `"Save a File"` (overrides [Window](class_window.md#class-window-property-title)) |
| [bool](class_bool.md#class-bool) | [use\_native\_dialog](#class-filedialog-property-use-native-dialog) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_filter](#class-filedialog-method-add-filter)(filter: [String](class_string.md#class-string), description: [String](class_string.md#class-string) = "") |
| void | [add\_option](#class-filedialog-method-add-option)(name: [String](class_string.md#class-string), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), default\_value\_index: [int](class_int.md#class-int)) |
| void | [clear\_filename\_filter](#class-filedialog-method-clear-filename-filter)() |
| void | [clear\_filters](#class-filedialog-method-clear-filters)() |
| void | [deselect\_all](#class-filedialog-method-deselect-all)() |
| [LineEdit](class_lineedit.md#class-lineedit) | [get\_line\_edit](#class-filedialog-method-get-line-edit)() |
| [int](class_int.md#class-int) | [get\_option\_default](#class-filedialog-method-get-option-default)(option: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_option\_name](#class-filedialog-method-get-option-name)(option: [int](class_int.md#class-int)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_option\_values](#class-filedialog-method-get-option-values)(option: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_selected\_options](#class-filedialog-method-get-selected-options)() const |
| [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) | [get\_vbox](#class-filedialog-method-get-vbox)() |
| void | [invalidate](#class-filedialog-method-invalidate)() |
| [bool](class_bool.md#class-bool) | [is\_customization\_flag\_enabled](#class-filedialog-method-is-customization-flag-enabled)(flag: [Customization](#enum-filedialog-customization)) const |
| void | [set\_customization\_flag\_enabled](#class-filedialog-method-set-customization-flag-enabled)(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_option\_default](#class-filedialog-method-set-option-default)(option: [int](class_int.md#class-int), default\_value\_index: [int](class_int.md#class-int)) |
| void | [set\_option\_name](#class-filedialog-method-set-option-name)(option: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_option\_values](#class-filedialog-method-set-option-values)(option: [int](class_int.md#class-int), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [file\_disabled\_color](#class-filedialog-theme-color-file-disabled-color) | `Color(1, 1, 1, 0.25)` |
| [Color](class_color.md#class-color) | [file\_icon\_color](#class-filedialog-theme-color-file-icon-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [folder\_icon\_color](#class-filedialog-theme-color-folder-icon-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [thumbnail\_size](#class-filedialog-theme-constant-thumbnail-size) | `64` |
| [Texture2D](class_texture2d.md#class-texture2d) | [back\_folder](#class-filedialog-theme-icon-back-folder) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [create\_folder](#class-filedialog-theme-icon-create-folder) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [favorite](#class-filedialog-theme-icon-favorite) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [favorite\_down](#class-filedialog-theme-icon-favorite-down) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [favorite\_up](#class-filedialog-theme-icon-favorite-up) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [file](#class-filedialog-theme-icon-file) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [file\_thumbnail](#class-filedialog-theme-icon-file-thumbnail) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folder](#class-filedialog-theme-icon-folder) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folder\_thumbnail](#class-filedialog-theme-icon-folder-thumbnail) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [forward\_folder](#class-filedialog-theme-icon-forward-folder) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [list\_mode](#class-filedialog-theme-icon-list-mode) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [parent\_folder](#class-filedialog-theme-icon-parent-folder) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [reload](#class-filedialog-theme-icon-reload) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [sort](#class-filedialog-theme-icon-sort) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [thumbnail\_mode](#class-filedialog-theme-icon-thumbnail-mode) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [toggle\_filename\_filter](#class-filedialog-theme-icon-toggle-filename-filter) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [toggle\_hidden](#class-filedialog-theme-icon-toggle-hidden) |  |

* * *

## Signals

**dir\_selected**(dir: [String](class_string.md#class-string)) [🔗](#class-filedialog-signal-dir-selected)

Emitted when the user selects a directory.

* * *

**file\_selected**(path: [String](class_string.md#class-string)) [🔗](#class-filedialog-signal-file-selected)

Emitted when the user selects a file by double-clicking it or pressing the **OK** button.

* * *

**filename\_filter\_changed**(filter: [String](class_string.md#class-string)) [🔗](#class-filedialog-signal-filename-filter-changed)

Emitted when the filter for file names changes.

* * *

**files\_selected**(paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-filedialog-signal-files-selected)

Emitted when the user selects multiple files.

* * *

## Enumerations

enum **FileMode**: [🔗](#enum-filedialog-filemode)

[FileMode](#enum-filedialog-filemode) **FILE\_MODE\_OPEN\_FILE** = `0`

The dialog allows selecting one, and only one file.

[FileMode](#enum-filedialog-filemode) **FILE\_MODE\_OPEN\_FILES** = `1`

The dialog allows selecting multiple files.

[FileMode](#enum-filedialog-filemode) **FILE\_MODE\_OPEN\_DIR** = `2`

The dialog only allows selecting a directory, disallowing the selection of any file.

[FileMode](#enum-filedialog-filemode) **FILE\_MODE\_OPEN\_ANY** = `3`

The dialog allows selecting one file or directory.

[FileMode](#enum-filedialog-filemode) **FILE\_MODE\_SAVE\_FILE** = `4`

The dialog will warn when a file exists.

* * *

enum **Access**: [🔗](#enum-filedialog-access)

[Access](#enum-filedialog-access) **ACCESS\_RESOURCES** = `0`

The dialog only allows accessing files under the [Resource](class_resource.md#class-resource) path ( `res://`).

[Access](#enum-filedialog-access) **ACCESS\_USERDATA** = `1`

The dialog only allows accessing files under user data path ( `user://`).

[Access](#enum-filedialog-access) **ACCESS\_FILESYSTEM** = `2`

The dialog allows accessing files on the whole file system.

* * *

enum **DisplayMode**: [🔗](#enum-filedialog-displaymode)

[DisplayMode](#enum-filedialog-displaymode) **DISPLAY\_THUMBNAILS** = `0`

The dialog displays files as a grid of thumbnails. Use [thumbnail\_size](#class-filedialog-theme-constant-thumbnail-size) to adjust their size.

[DisplayMode](#enum-filedialog-displaymode) **DISPLAY\_LIST** = `1`

The dialog displays files as a list of filenames.

* * *

enum **Customization**: [🔗](#enum-filedialog-customization)

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_HIDDEN\_FILES** = `0`

Toggles visibility of the favorite button, and the favorite list on the left side of the dialog.

Equivalent to [hidden\_files\_toggle\_enabled](#class-filedialog-property-hidden-files-toggle-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_CREATE\_FOLDER** = `1`

If enabled, shows the button for creating new directories (when using [FILE\_MODE\_OPEN\_DIR](#class-filedialog-constant-file-mode-open-dir), [FILE\_MODE\_OPEN\_ANY](#class-filedialog-constant-file-mode-open-any), or [FILE\_MODE\_SAVE\_FILE](#class-filedialog-constant-file-mode-save-file)).

Equivalent to [folder\_creation\_enabled](#class-filedialog-property-folder-creation-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_FILE\_FILTER** = `2`

If enabled, shows the toggle file filter button.

Equivalent to [file\_filter\_toggle\_enabled](#class-filedialog-property-file-filter-toggle-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_FILE\_SORT** = `3`

If enabled, shows the file sorting options button.

Equivalent to [file\_sort\_options\_enabled](#class-filedialog-property-file-sort-options-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_FAVORITES** = `4`

If enabled, shows the toggle favorite button and favorite list on the left side of the dialog.

Equivalent to [favorites\_enabled](#class-filedialog-property-favorites-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_RECENT** = `5`

If enabled, shows the recent directories list on the left side of the dialog.

Equivalent to [recent\_list\_enabled](#class-filedialog-property-recent-list-enabled).

[Customization](#enum-filedialog-customization) **CUSTOMIZATION\_LAYOUT** = `6`

If enabled, shows the layout switch buttons (list/thumbnails).

Equivalent to [layout\_toggle\_enabled](#class-filedialog-property-layout-toggle-enabled).

* * *

## Property Descriptions

[Access](#enum-filedialog-access) **access** = `0` [🔗](#class-filedialog-property-access)

- void **set\_access**(value: [Access](#enum-filedialog-access))

- [Access](#enum-filedialog-access) **get\_access**()


The file system access scope.

**Warning:** In Web builds, FileDialog cannot access the host file system. In sandboxed Linux and macOS environments, [use\_native\_dialog](#class-filedialog-property-use-native-dialog) is automatically used to allow limited access to host file system.

* * *

[String](class_string.md#class-string) **current\_dir** [🔗](#class-filedialog-property-current-dir)

- void **set\_current\_dir**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_dir**()


The current working directory of the file dialog.

**Note:** For native file dialogs, this property is only treated as a hint and may not be respected by specific OS implementations.

* * *

[String](class_string.md#class-string) **current\_file** [🔗](#class-filedialog-property-current-file)

- void **set\_current\_file**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_file**()


The currently selected file of the file dialog.

* * *

[String](class_string.md#class-string) **current\_path** [🔗](#class-filedialog-property-current-path)

- void **set\_current\_path**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_current\_path**()


The currently selected file path of the file dialog.

* * *

[DisplayMode](#enum-filedialog-displaymode) **display\_mode** = `0` [🔗](#class-filedialog-property-display-mode)

- void **set\_display\_mode**(value: [DisplayMode](#enum-filedialog-displaymode))

- [DisplayMode](#enum-filedialog-displaymode) **get\_display\_mode**()


Display mode of the dialog's file list.

* * *

[bool](class_bool.md#class-bool) **favorites\_enabled** = `true` [🔗](#class-filedialog-property-favorites-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the toggle favorite button and favorite list on the left side of the dialog.

* * *

[bool](class_bool.md#class-bool) **file\_filter\_toggle\_enabled** = `true` [🔗](#class-filedialog-property-file-filter-toggle-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the toggle file filter button.

* * *

[FileMode](#enum-filedialog-filemode) **file\_mode** = `4` [🔗](#class-filedialog-property-file-mode)

- void **set\_file\_mode**(value: [FileMode](#enum-filedialog-filemode))

- [FileMode](#enum-filedialog-filemode) **get\_file\_mode**()


The dialog's open or save mode, which affects the selection behavior.

* * *

[bool](class_bool.md#class-bool) **file\_sort\_options\_enabled** = `true` [🔗](#class-filedialog-property-file-sort-options-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the file sorting options button.

* * *

[String](class_string.md#class-string) **filename\_filter** = `""` [🔗](#class-filedialog-property-filename-filter)

- void **set\_filename\_filter**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_filename\_filter**()


The filter for file names (case-insensitive). When set to a non-empty string, only files that contains the substring will be shown. [filename\_filter](#class-filedialog-property-filename-filter) can be edited by the user with the filter button at the top of the file dialog.

See also [filters](#class-filedialog-property-filters), which should be used to restrict the file types that can be selected instead of [filename\_filter](#class-filedialog-property-filename-filter) which is meant to be set by the user.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **filters** = `PackedStringArray()` [🔗](#class-filedialog-property-filters)

- void **set\_filters**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_filters**()


The available file type filters. Each filter string in the array should be formatted like this: `*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg`. The description text of the filter is optional and can be omitted. Both file extensions and MIME type should be always set.

**Note:** Embedded file dialog and Windows file dialog support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **folder\_creation\_enabled** = `true` [🔗](#class-filedialog-property-folder-creation-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the button for creating new directories (when using [FILE\_MODE\_OPEN\_DIR](#class-filedialog-constant-file-mode-open-dir), [FILE\_MODE\_OPEN\_ANY](#class-filedialog-constant-file-mode-open-any), or [FILE\_MODE\_SAVE\_FILE](#class-filedialog-constant-file-mode-save-file)).

* * *

[bool](class_bool.md#class-bool) **hidden\_files\_toggle\_enabled** = `true` [🔗](#class-filedialog-property-hidden-files-toggle-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the toggle hidden files button.

* * *

[bool](class_bool.md#class-bool) **layout\_toggle\_enabled** = `true` [🔗](#class-filedialog-property-layout-toggle-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the layout switch buttons (list/thumbnails).

* * *

[bool](class_bool.md#class-bool) **mode\_overrides\_title** = `true` [🔗](#class-filedialog-property-mode-overrides-title)

- void **set\_mode\_overrides\_title**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_mode\_overriding\_title**()


If `true`, changing the [file\_mode](#class-filedialog-property-file-mode) property will set the window title accordingly (e.g. setting [file\_mode](#class-filedialog-property-file-mode) to [FILE\_MODE\_OPEN\_FILE](#class-filedialog-constant-file-mode-open-file) will change the window title to "Open a File").

* * *

[int](class_int.md#class-int) **option\_count** = `0` [🔗](#class-filedialog-property-option-count)

- void **set\_option\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_option\_count**()


The number of additional [OptionButton](class_optionbutton.md#class-optionbutton) s and [CheckBox](class_checkbox.md#class-checkbox) es in the dialog.

* * *

[bool](class_bool.md#class-bool) **recent\_list\_enabled** = `true` [🔗](#class-filedialog-property-recent-list-enabled)

- void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const


If `true`, shows the recent directories list on the left side of the dialog.

* * *

[String](class_string.md#class-string) **root\_subfolder** = `""` [🔗](#class-filedialog-property-root-subfolder)

- void **set\_root\_subfolder**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_root\_subfolder**()


If non-empty, the given sub-folder will be "root" of this **FileDialog**, i.e. user won't be able to go to its parent directory.

**Note:** This property is ignored by native file dialogs.

* * *

[bool](class_bool.md#class-bool) **show\_hidden\_files** = `false` [🔗](#class-filedialog-property-show-hidden-files)

- void **set\_show\_hidden\_files**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_hidden\_files**()


If `true`, the dialog will show hidden files.

**Note:** This property is ignored by native file dialogs on Android and Linux.

* * *

[bool](class_bool.md#class-bool) **use\_native\_dialog** = `false` [🔗](#class-filedialog-property-use-native-dialog)

- void **set\_use\_native\_dialog**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_native\_dialog**()


If `true`, and if supported by the current [DisplayServer](class_displayserver.md#class-displayserver), OS native dialog will be used instead of custom one.

**Note:** On Android, it is only supported for Android 10+ devices and when using [ACCESS\_FILESYSTEM](#class-filedialog-constant-access-filesystem). For access mode [ACCESS\_RESOURCES](#class-filedialog-constant-access-resources) and [ACCESS\_USERDATA](#class-filedialog-constant-access-userdata), the system will fall back to custom FileDialog.

**Note:** On Linux and macOS, sandboxed apps always use native dialogs to access the host file system.

**Note:** On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use [OS.get\_granted\_permissions()](class_os.md#class-os-method-get-granted-permissions) to get a list of saved bookmarks.

**Note:** Native dialogs are isolated from the base process, file dialog properties can't be modified once the dialog is shown.

* * *

## Method Descriptions

void **add\_filter**(filter: [String](class_string.md#class-string), description: [String](class_string.md#class-string) = "") [🔗](#class-filedialog-method-add-filter)

Adds a comma-separated file name `filter` option to the **FileDialog** with an optional `description`, which restricts what files can be picked.

A `filter` should be of the form `"filename.extension"`, where filename and extension can be `*` to match any string. Filters starting with `.` (i.e. empty filenames) are not allowed.

For example, a `filter` of `"*.png, *.jpg"` and a `description` of `"Images"` results in filter text "Images (\*.png, \*.jpg)".

* * *

void **add\_option**(name: [String](class_string.md#class-string), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), default\_value\_index: [int](class_int.md#class-int)) [🔗](#class-filedialog-method-add-option)

Adds an additional [OptionButton](class_optionbutton.md#class-optionbutton) to the file dialog. If `values` is empty, a [CheckBox](class_checkbox.md#class-checkbox) is added instead.

`default_value_index` should be an index of the value in the `values`. If `values` is empty it should be either `1` (checked), or `0` (unchecked).

* * *

void **clear\_filename\_filter**() [🔗](#class-filedialog-method-clear-filename-filter)

Clear the filter for file names.

* * *

void **clear\_filters**() [🔗](#class-filedialog-method-clear-filters)

Clear all the added filters in the dialog.

* * *

void **deselect\_all**() [🔗](#class-filedialog-method-deselect-all)

Clear all currently selected items in the dialog.

* * *

[LineEdit](class_lineedit.md#class-lineedit) **get\_line\_edit**() [🔗](#class-filedialog-method-get-line-edit)

Returns the LineEdit for the selected file.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_option\_default**(option: [int](class_int.md#class-int)) const [🔗](#class-filedialog-method-get-option-default)

Returns the default value index of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

[String](class_string.md#class-string) **get\_option\_name**(option: [int](class_int.md#class-int)) const [🔗](#class-filedialog-method-get-option-name)

Returns the name of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_option\_values**(option: [int](class_int.md#class-int)) const [🔗](#class-filedialog-method-get-option-values)

Returns an array of values of the [OptionButton](class_optionbutton.md#class-optionbutton) with index `option`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_selected\_options**() const [🔗](#class-filedialog-method-get-selected-options)

Returns a [Dictionary](class_dictionary.md#class-dictionary) with the selected values of the additional [OptionButton](class_optionbutton.md#class-optionbutton) s and/or [CheckBox](class_checkbox.md#class-checkbox) es. [Dictionary](class_dictionary.md#class-dictionary) keys are names and values are selected value indices.

* * *

[VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **get\_vbox**() [🔗](#class-filedialog-method-get-vbox)

Returns the vertical box container of the dialog, custom controls can be added to it.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

**Note:** Changes to this node are ignored by native file dialogs, use [add\_option()](#class-filedialog-method-add-option) to add custom elements to the dialog instead.

* * *

void **invalidate**() [🔗](#class-filedialog-method-invalidate)

Invalidate and update the current dialog content list.

**Note:** This method does nothing on native file dialogs.

* * *

[bool](class_bool.md#class-bool) **is\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization)) const [🔗](#class-filedialog-method-is-customization-flag-enabled)

Returns `true` if the provided `flag` is enabled.

* * *

void **set\_customization\_flag\_enabled**(flag: [Customization](#enum-filedialog-customization), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-filedialog-method-set-customization-flag-enabled)

Toggles the specified customization `flag`, allowing to customize features available in this **FileDialog**. See [Customization](#enum-filedialog-customization) for options.

* * *

void **set\_option\_default**(option: [int](class_int.md#class-int), default\_value\_index: [int](class_int.md#class-int)) [🔗](#class-filedialog-method-set-option-default)

Sets the default value index of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

void **set\_option\_name**(option: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-filedialog-method-set-option-name)

Sets the name of the [OptionButton](class_optionbutton.md#class-optionbutton) or [CheckBox](class_checkbox.md#class-checkbox) with index `option`.

* * *

void **set\_option\_values**(option: [int](class_int.md#class-int), values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-filedialog-method-set-option-values)

Sets the option values of the [OptionButton](class_optionbutton.md#class-optionbutton) with index `option`.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **file\_disabled\_color** = `Color(1, 1, 1, 0.25)` [🔗](#class-filedialog-theme-color-file-disabled-color)

The color tint for disabled files (when the **FileDialog** is used in open folder mode).

* * *

[Color](class_color.md#class-color) **file\_icon\_color** = `Color(1, 1, 1, 1)` [🔗](#class-filedialog-theme-color-file-icon-color)

The color modulation applied to the file icon.

* * *

[Color](class_color.md#class-color) **folder\_icon\_color** = `Color(1, 1, 1, 1)` [🔗](#class-filedialog-theme-color-folder-icon-color)

The color modulation applied to the folder icon.

* * *

[int](class_int.md#class-int) **thumbnail\_size** = `64` [🔗](#class-filedialog-theme-constant-thumbnail-size)

The size of thumbnail icons when [DISPLAY\_THUMBNAILS](#class-filedialog-constant-display-thumbnails) is enabled.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **back\_folder** [🔗](#class-filedialog-theme-icon-back-folder)

Custom icon for the back arrow.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **create\_folder** [🔗](#class-filedialog-theme-icon-create-folder)

Custom icon for the create folder button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **favorite** [🔗](#class-filedialog-theme-icon-favorite)

Custom icon for favorite folder button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **favorite\_down** [🔗](#class-filedialog-theme-icon-favorite-down)

Custom icon for button to move down a favorite entry.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **favorite\_up** [🔗](#class-filedialog-theme-icon-favorite-up)

Custom icon for button to move up a favorite entry.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **file** [🔗](#class-filedialog-theme-icon-file)

Custom icon for files.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **file\_thumbnail** [🔗](#class-filedialog-theme-icon-file-thumbnail)

Icon for files when in thumbnail mode.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folder** [🔗](#class-filedialog-theme-icon-folder)

Custom icon for folders.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folder\_thumbnail** [🔗](#class-filedialog-theme-icon-folder-thumbnail)

Icon for folders when in thumbnail mode.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **forward\_folder** [🔗](#class-filedialog-theme-icon-forward-folder)

Custom icon for the forward arrow.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **list\_mode** [🔗](#class-filedialog-theme-icon-list-mode)

Icon for the button that enables list mode.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **parent\_folder** [🔗](#class-filedialog-theme-icon-parent-folder)

Custom icon for the parent folder arrow.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **reload** [🔗](#class-filedialog-theme-icon-reload)

Custom icon for the reload button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **sort** [🔗](#class-filedialog-theme-icon-sort)

Custom icon for the sorting options menu.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **thumbnail\_mode** [🔗](#class-filedialog-theme-icon-thumbnail-mode)

Icon for the button that enables thumbnail mode.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **toggle\_filename\_filter** [🔗](#class-filedialog-theme-icon-toggle-filename-filter)

Custom icon for the toggle button for the filter for file names.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **toggle\_hidden** [🔗](#class-filedialog-theme-icon-toggle-hidden)

Custom icon for the toggle hidden button.

[Previous](class_editortoaster.md "EditorToaster") [Next](class_filesystemdock.md "FileSystemDock")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editortoaster.md "EditorToaster") [Next](class_filesystemdock.md "FileSystemDock")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).