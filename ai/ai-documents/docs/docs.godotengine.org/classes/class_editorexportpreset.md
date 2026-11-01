---
title: EditorExportPreset — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportpreset.html
crawled_at: "2026-08-13T10:35:33+12:00"
content_hash: 8bbb3a7b539a40c84812dc0c5360e2c9ad51b751e0a5b0214ffd5dfe0bbf862e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPreset

* * *

# EditorExportPreset

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Export preset configuration.

## Description

Represents the configuration of an export preset, as created by the editor's export dialog. An **EditorExportPreset** instance is intended to be used a read-only configuration passed to the [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) methods when exporting the project.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [are\_advanced\_options\_enabled](#class-editorexportpreset-method-are-advanced-options-enabled)() const |
| [String](class_string.md#class-string) | [get\_custom\_features](#class-editorexportpreset-method-get-custom-features)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_customized\_files](#class-editorexportpreset-method-get-customized-files)() const |
| [int](class_int.md#class-int) | [get\_customized\_files\_count](#class-editorexportpreset-method-get-customized-files-count)() const |
| [bool](class_bool.md#class-bool) | [get\_encrypt\_directory](#class-editorexportpreset-method-get-encrypt-directory)() const |
| [bool](class_bool.md#class-bool) | [get\_encrypt\_pck](#class-editorexportpreset-method-get-encrypt-pck)() const |
| [String](class_string.md#class-string) | [get\_encryption\_ex\_filter](#class-editorexportpreset-method-get-encryption-ex-filter)() const |
| [String](class_string.md#class-string) | [get\_encryption\_in\_filter](#class-editorexportpreset-method-get-encryption-in-filter)() const |
| [String](class_string.md#class-string) | [get\_encryption\_key](#class-editorexportpreset-method-get-encryption-key)() const |
| [String](class_string.md#class-string) | [get\_exclude\_filter](#class-editorexportpreset-method-get-exclude-filter)() const |
| [ExportFilter](#enum-editorexportpreset-exportfilter) | [get\_export\_filter](#class-editorexportpreset-method-get-export-filter)() const |
| [String](class_string.md#class-string) | [get\_export\_path](#class-editorexportpreset-method-get-export-path)() const |
| [FileExportMode](#enum-editorexportpreset-fileexportmode) | [get\_file\_export\_mode](#class-editorexportpreset-method-get-file-export-mode)(path: [String](class_string.md#class-string), default: [FileExportMode](#enum-editorexportpreset-fileexportmode) = 0) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_files\_to\_export](#class-editorexportpreset-method-get-files-to-export)() const |
| [String](class_string.md#class-string) | [get\_include\_filter](#class-editorexportpreset-method-get-include-filter)() const |
| [Variant](class_variant.md#class-variant) | [get\_or\_env](#class-editorexportpreset-method-get-or-env)(name: [StringName](class_stringname.md#class-stringname), env\_var: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_patches](#class-editorexportpreset-method-get-patches)() const |
| [String](class_string.md#class-string) | [get\_preset\_name](#class-editorexportpreset-method-get-preset-name)() const |
| [Variant](class_variant.md#class-variant) | [get\_project\_setting](#class-editorexportpreset-method-get-project-setting)(name: [StringName](class_stringname.md#class-stringname)) |
| [int](class_int.md#class-int) | [get\_script\_export\_mode](#class-editorexportpreset-method-get-script-export-mode)() const |
| [String](class_string.md#class-string) | [get\_version](#class-editorexportpreset-method-get-version)(name: [StringName](class_stringname.md#class-stringname), windows\_version: [bool](class_bool.md#class-bool)) const |
| [bool](class_bool.md#class-bool) | [has](#class-editorexportpreset-method-has)(property: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_export\_file](#class-editorexportpreset-method-has-export-file)(path: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [is\_dedicated\_server](#class-editorexportpreset-method-is-dedicated-server)() const |
| [bool](class_bool.md#class-bool) | [is\_runnable](#class-editorexportpreset-method-is-runnable)() const |

* * *

## Enumerations

enum **ExportFilter**: [🔗](#enum-editorexportpreset-exportfilter)

[ExportFilter](#enum-editorexportpreset-exportfilter) **EXPORT\_ALL\_RESOURCES** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ExportFilter](#enum-editorexportpreset-exportfilter) **EXPORT\_SELECTED\_SCENES** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ExportFilter](#enum-editorexportpreset-exportfilter) **EXPORT\_SELECTED\_RESOURCES** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ExportFilter](#enum-editorexportpreset-exportfilter) **EXCLUDE\_SELECTED\_RESOURCES** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ExportFilter](#enum-editorexportpreset-exportfilter) **EXPORT\_CUSTOMIZED** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **FileExportMode**: [🔗](#enum-editorexportpreset-fileexportmode)

[FileExportMode](#enum-editorexportpreset-fileexportmode) **MODE\_FILE\_NOT\_CUSTOMIZED** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[FileExportMode](#enum-editorexportpreset-fileexportmode) **MODE\_FILE\_STRIP** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[FileExportMode](#enum-editorexportpreset-fileexportmode) **MODE\_FILE\_KEEP** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[FileExportMode](#enum-editorexportpreset-fileexportmode) **MODE\_FILE\_REMOVE** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **ScriptExportMode**: [🔗](#enum-editorexportpreset-scriptexportmode)

[ScriptExportMode](#enum-editorexportpreset-scriptexportmode) **MODE\_SCRIPT\_TEXT** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ScriptExportMode](#enum-editorexportpreset-scriptexportmode) **MODE\_SCRIPT\_BINARY\_TOKENS** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ScriptExportMode](#enum-editorexportpreset-scriptexportmode) **MODE\_SCRIPT\_BINARY\_TOKENS\_COMPRESSED** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **are\_advanced\_options\_enabled**() const [🔗](#class-editorexportpreset-method-are-advanced-options-enabled)

Returns `true` if the "Advanced" toggle is enabled in the export dialog.

* * *

[String](class_string.md#class-string) **get\_custom\_features**() const [🔗](#class-editorexportpreset-method-get-custom-features)

Returns a comma-separated list of custom features added to this preset, as a string. See [Feature tags](../tutorials/export/feature_tags.md) in the documentation for more information.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_customized\_files**() const [🔗](#class-editorexportpreset-method-get-customized-files)

Returns a dictionary of files selected in the "Resources" tab of the export dialog. The dictionary's keys are file paths, and its values are the corresponding export modes: `"strip"`, `"keep"`, or `"remove"`. See also [get\_file\_export\_mode()](#class-editorexportpreset-method-get-file-export-mode).

* * *

[int](class_int.md#class-int) **get\_customized\_files\_count**() const [🔗](#class-editorexportpreset-method-get-customized-files-count)

Returns the number of files selected in the "Resources" tab of the export dialog.

* * *

[bool](class_bool.md#class-bool) **get\_encrypt\_directory**() const [🔗](#class-editorexportpreset-method-get-encrypt-directory)

Returns `true` if PCK directory encryption is enabled in the export dialog.

* * *

[bool](class_bool.md#class-bool) **get\_encrypt\_pck**() const [🔗](#class-editorexportpreset-method-get-encrypt-pck)

Returns `true` if PCK encryption is enabled in the export dialog.

* * *

[String](class_string.md#class-string) **get\_encryption\_ex\_filter**() const [🔗](#class-editorexportpreset-method-get-encryption-ex-filter)

Returns file filters to exclude during PCK encryption.

* * *

[String](class_string.md#class-string) **get\_encryption\_in\_filter**() const [🔗](#class-editorexportpreset-method-get-encryption-in-filter)

Returns file filters to include during PCK encryption.

* * *

[String](class_string.md#class-string) **get\_encryption\_key**() const [🔗](#class-editorexportpreset-method-get-encryption-key)

Returns PCK encryption key.

* * *

[String](class_string.md#class-string) **get\_exclude\_filter**() const [🔗](#class-editorexportpreset-method-get-exclude-filter)

Returns file filters to exclude during export.

* * *

[ExportFilter](#enum-editorexportpreset-exportfilter) **get\_export\_filter**() const [🔗](#class-editorexportpreset-method-get-export-filter)

Returns export file filter mode selected in the "Resources" tab of the export dialog.

* * *

[String](class_string.md#class-string) **get\_export\_path**() const [🔗](#class-editorexportpreset-method-get-export-path)

Returns export target path.

* * *

[FileExportMode](#enum-editorexportpreset-fileexportmode) **get\_file\_export\_mode**(path: [String](class_string.md#class-string), default: [FileExportMode](#enum-editorexportpreset-fileexportmode) = 0) const [🔗](#class-editorexportpreset-method-get-file-export-mode)

Returns file export mode for the specified file.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_files\_to\_export**() const [🔗](#class-editorexportpreset-method-get-files-to-export)

Returns array of files to export.

* * *

[String](class_string.md#class-string) **get\_include\_filter**() const [🔗](#class-editorexportpreset-method-get-include-filter)

Returns file filters to include during export.

* * *

[Variant](class_variant.md#class-variant) **get\_or\_env**(name: [StringName](class_stringname.md#class-stringname), env\_var: [String](class_string.md#class-string)) const [🔗](#class-editorexportpreset-method-get-or-env)

Returns export option value or value of environment variable if it is set.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_patches**() const [🔗](#class-editorexportpreset-method-get-patches)

Returns the list of packs on which to base a patch export on.

* * *

[String](class_string.md#class-string) **get\_preset\_name**() const [🔗](#class-editorexportpreset-method-get-preset-name)

Returns this export preset's name.

* * *

[Variant](class_variant.md#class-variant) **get\_project\_setting**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-editorexportpreset-method-get-project-setting)

Returns the value of the setting identified by `name` using export preset feature tag overrides instead of current OS features.

* * *

[int](class_int.md#class-int) **get\_script\_export\_mode**() const [🔗](#class-editorexportpreset-method-get-script-export-mode)

Returns the export mode used by GDScript files. `0` for "Text", `1` for "Binary tokens", and `2` for "Compressed binary tokens (smaller files)".

* * *

[String](class_string.md#class-string) **get\_version**(name: [StringName](class_stringname.md#class-stringname), windows\_version: [bool](class_bool.md#class-bool)) const [🔗](#class-editorexportpreset-method-get-version)

Returns the preset's version number, or fall back to the [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) project setting if set to an empty string.

If `windows_version` is `true`, formats the returned version number to be compatible with Windows executable metadata.

* * *

[bool](class_bool.md#class-bool) **has**(property: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorexportpreset-method-has)

Returns `true` if the preset has the property named `property`.

* * *

[bool](class_bool.md#class-bool) **has\_export\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportpreset-method-has-export-file)

Returns `true` if the file at the specified `path` will be exported.

* * *

[bool](class_bool.md#class-bool) **is\_dedicated\_server**() const [🔗](#class-editorexportpreset-method-is-dedicated-server)

Returns `true` if the dedicated server export mode is selected in the export dialog.

* * *

[bool](class_bool.md#class-bool) **is\_runnable**() const [🔗](#class-editorexportpreset-method-is-runnable)

Returns `true` if the "Runnable" toggle is enabled in the export dialog.

[Previous](class_editorexportplugin.md "EditorExportPlugin") [Next](class_editorfeatureprofile.md "EditorFeatureProfile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplugin.md "EditorExportPlugin") [Next](class_editorfeatureprofile.md "EditorFeatureProfile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).