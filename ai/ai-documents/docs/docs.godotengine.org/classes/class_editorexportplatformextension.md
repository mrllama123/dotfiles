---
title: EditorExportPlatformExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformextension.html
crawled_at: "2026-08-13T10:28:14+12:00"
content_hash: e01cc90b819a1719ef663cea82852494bb90ed8d7a12b8e8728423d3fb7171de
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformExtension

* * *

# EditorExportPlatformExtension

**Inherits:** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for custom [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) implementations (plugins).

## Description

External [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) implementations should inherit from this class.

To use [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), register it using the [EditorPlugin.add\_export\_platform()](class_editorplugin.md#class-editorplugin-method-add-export-platform) method first.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_can\_export](#class-editorexportplatformextension-private-method-can-export)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) virtualconst |
| void | [\_cleanup](#class-editorexportplatformextension-private-method-cleanup)() virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_pack](#class-editorexportplatformextension-private-method-export-pack)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_pack\_patch](#class-editorexportplatformextension-private-method-export-pack-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_project](#class-editorexportplatformextension-private-method-export-project)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_zip](#class-editorexportplatformextension-private-method-export-zip)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_export\_zip\_patch](#class-editorexportplatformextension-private-method-export-zip-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_binary\_extensions](#class-editorexportplatformextension-private-method-get-binary-extensions)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_debug\_protocol](#class-editorexportplatformextension-private-method-get-debug-protocol)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_device\_architecture](#class-editorexportplatformextension-private-method-get-device-architecture)(device: [int](class_int.md#class-int)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_get\_export\_option\_visibility](#class-editorexportplatformextension-private-method-get-export-option-visibility)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), option: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_export\_option\_warning](#class-editorexportplatformextension-private-method-get-export-option-warning)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), option: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_export\_options](#class-editorexportplatformextension-private-method-get-export-options)() virtualconst |
| [Texture2D](class_texture2d.md#class-texture2d) | [\_get\_logo](#class-editorexportplatformextension-private-method-get-logo)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-editorexportplatformextension-private-method-get-name)() virtualrequiredconst |
| [Texture2D](class_texture2d.md#class-texture2d) | [\_get\_option\_icon](#class-editorexportplatformextension-private-method-get-option-icon)(device: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_option\_label](#class-editorexportplatformextension-private-method-get-option-label)(device: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_option\_tooltip](#class-editorexportplatformextension-private-method-get-option-tooltip)(device: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_options\_count](#class-editorexportplatformextension-private-method-get-options-count)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_options\_tooltip](#class-editorexportplatformextension-private-method-get-options-tooltip)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_os\_name](#class-editorexportplatformextension-private-method-get-os-name)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_platform\_features](#class-editorexportplatformextension-private-method-get-platform-features)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_preset\_features](#class-editorexportplatformextension-private-method-get-preset-features)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst |
| [Texture2D](class_texture2d.md#class-texture2d) | [\_get\_run\_icon](#class-editorexportplatformextension-private-method-get-run-icon)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_has\_valid\_export\_configuration](#class-editorexportplatformextension-private-method-has-valid-export-configuration)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_valid\_project\_configuration](#class-editorexportplatformextension-private-method-has-valid-project-configuration)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_executable](#class-editorexportplatformextension-private-method-is-executable)(path: [String](class_string.md#class-string)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_poll\_export](#class-editorexportplatformextension-private-method-poll-export)() virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_run](#class-editorexportplatformextension-private-method-run)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), device: [int](class_int.md#class-int), debug\_flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual |
| [bool](class_bool.md#class-bool) | [\_should\_update\_export\_options](#class-editorexportplatformextension-private-method-should-update-export-options)() virtual |
| [String](class_string.md#class-string) | [get\_config\_error](#class-editorexportplatformextension-method-get-config-error)() const |
| [bool](class_bool.md#class-bool) | [get\_config\_missing\_templates](#class-editorexportplatformextension-method-get-config-missing-templates)() const |
| void | [set\_config\_error](#class-editorexportplatformextension-method-set-config-error)(error\_text: [String](class_string.md#class-string)) const |
| void | [set\_config\_missing\_templates](#class-editorexportplatformextension-method-set-config-missing-templates)(missing\_templates: [bool](class_bool.md#class-bool)) const |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_can\_export**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplatformextension-private-method-can-export)

Returns `true`, if specified `preset` is valid and can be exported. Use [set\_config\_error()](#class-editorexportplatformextension-method-set-config-error) and [set\_config\_missing\_templates()](#class-editorexportplatformextension-method-set-config-missing-templates) to set error details.

Usual implementation can call [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration) and [\_has\_valid\_project\_configuration()](#class-editorexportplatformextension-private-method-has-valid-project-configuration) to determine if export is possible.

* * *

void **\_cleanup**() virtual [🔗](#class-editorexportplatformextension-private-method-cleanup)

Called by the editor before platform is unregistered.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_pack**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual [🔗](#class-editorexportplatformextension-private-method-export-pack)

Creates a PCK archive at `path` for the specified `preset`.

This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" disabled, and PCK is selected as a file type.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_pack\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual [🔗](#class-editorexportplatformextension-private-method-export-pack-patch)

Creates a patch PCK archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.

This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" enabled, and PCK is selected as a file type.

**Note:** The patches provided in `patches` have already been loaded when this method is called and are merely provided as context. When empty the patches defined in the export preset have been loaded instead.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_project**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtualrequired [🔗](#class-editorexportplatformextension-private-method-export-project)

Creates a full project at `path` for the specified `preset`.

This method is called when "Export" button is pressed in the export dialog.

This method implementation can call [EditorExportPlatform.save\_pack()](class_editorexportplatform.md#class-editorexportplatform-method-save-pack) or [EditorExportPlatform.save\_zip()](class_editorexportplatform.md#class-editorexportplatform-method-save-zip) to use default PCK/ZIP export process, or calls [EditorExportPlatform.export\_project\_files()](class_editorexportplatform.md#class-editorexportplatform-method-export-project-files) and implement custom callback for processing each exported file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_zip**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual [🔗](#class-editorexportplatformextension-private-method-export-zip)

Create a ZIP archive at `path` for the specified `preset`.

This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" disabled, and ZIP is selected as a file type.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_export\_zip\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual [🔗](#class-editorexportplatformextension-private-method-export-zip-patch)

Create a ZIP archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.

This method is called when "Export PCK/ZIP" button is pressed in the export dialog, with "Export as Patch" enabled, and ZIP is selected as a file type.

**Note:** The patches provided in `patches` have already been loaded when this method is called and are merely provided as context. When empty the patches defined in the export preset have been loaded instead.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_binary\_extensions**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-binary-extensions)

Returns array of supported binary extensions for the full project export.

* * *

[String](class_string.md#class-string) **\_get\_debug\_protocol**() virtualconst [🔗](#class-editorexportplatformextension-private-method-get-debug-protocol)

Returns protocol used for remote debugging. Default implementation return `tcp://`.

* * *

[String](class_string.md#class-string) **\_get\_device\_architecture**(device: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-device-architecture)

Returns device architecture for one-click deploy.

* * *

[bool](class_bool.md#class-bool) **\_get\_export\_option\_visibility**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-export-option-visibility)

Validates `option` and returns visibility for the specified `preset`. Default implementation return `true` for all options.

* * *

[String](class_string.md#class-string) **\_get\_export\_option\_warning**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), option: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-export-option-warning)

Validates `option` and returns warning message for the specified `preset`. Default implementation return empty string for all options.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_export\_options**() virtualconst [🔗](#class-editorexportplatformextension-private-method-get-export-options)

Returns a property list, as an [Array](class_array.md#class-array) of dictionaries. Each [Dictionary](class_dictionary.md#class-dictionary) must at least contain the `name: StringName` and `type: Variant.Type` entries.

Additionally, the following keys are supported:

- `hint: PropertyHint`

- `hint_string: String`

- `usage: PropertyUsageFlags`

- `class_name: StringName`

- `default_value: Variant`, default value of the property.

- `update_visibility: bool`, if set to `true`, [\_get\_export\_option\_visibility()](#class-editorexportplatformextension-private-method-get-export-option-visibility) is called for each property when this property is changed.

- `required: bool`, if set to `true`, this property warnings are critical, and should be resolved to make export possible. This value is a hint for the [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration) implementation, and not used by the engine directly.


See also [Object.\_get\_property\_list()](class_object.md#class-object-private-method-get-property-list).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **\_get\_logo**() virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-logo)

Returns the platform logo displayed in the export dialog. The logo should be 32×32 pixels, adjusted for the current editor scale (see [EditorInterface.get\_editor\_scale()](class_editorinterface.md#class-editorinterface-method-get-editor-scale)).

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-name)

Returns export platform name.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **\_get\_option\_icon**(device: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-option-icon)

Returns the item icon for the specified `device` in the one-click deploy menu. The icon should be 16×16 pixels, adjusted for the current editor scale (see [EditorInterface.get\_editor\_scale()](class_editorinterface.md#class-editorinterface-method-get-editor-scale)).

* * *

[String](class_string.md#class-string) **\_get\_option\_label**(device: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-option-label)

Returns one-click deploy menu item label for the specified `device`.

* * *

[String](class_string.md#class-string) **\_get\_option\_tooltip**(device: [int](class_int.md#class-int)) virtualconst [🔗](#class-editorexportplatformextension-private-method-get-option-tooltip)

Returns one-click deploy menu item tooltip for the specified `device`.

* * *

[int](class_int.md#class-int) **\_get\_options\_count**() virtualconst [🔗](#class-editorexportplatformextension-private-method-get-options-count)

Returns the number of devices (or other options) available in the one-click deploy menu.

* * *

[String](class_string.md#class-string) **\_get\_options\_tooltip**() virtualconst [🔗](#class-editorexportplatformextension-private-method-get-options-tooltip)

Returns tooltip of the one-click deploy menu button.

* * *

[String](class_string.md#class-string) **\_get\_os\_name**() virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-os-name)

Returns target OS name.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_platform\_features**() virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-platform-features)

Returns array of platform specific features.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_preset\_features**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-get-preset-features)

Returns array of platform specific features for the specified `preset`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **\_get\_run\_icon**() virtualconst [🔗](#class-editorexportplatformextension-private-method-get-run-icon)

Returns the icon of the one-click deploy menu button. The icon should be 16×16 pixels, adjusted for the current editor scale (see [EditorInterface.get\_editor\_scale()](class_editorinterface.md#class-editorinterface-method-get-editor-scale)).

* * *

[bool](class_bool.md#class-bool) **\_has\_valid\_export\_configuration**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-has-valid-export-configuration)

Returns `true` if export configuration is valid.

* * *

[bool](class_bool.md#class-bool) **\_has\_valid\_project\_configuration**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset)) virtualrequiredconst [🔗](#class-editorexportplatformextension-private-method-has-valid-project-configuration)

Returns `true` if project configuration is valid.

* * *

[bool](class_bool.md#class-bool) **\_is\_executable**(path: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorexportplatformextension-private-method-is-executable)

Returns `true` if specified file is a valid executable (native executable or script) for the target platform.

* * *

[bool](class_bool.md#class-bool) **\_poll\_export**() virtual [🔗](#class-editorexportplatformextension-private-method-poll-export)

Returns `true` if one-click deploy options are changed and editor interface should be updated.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_run**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), device: [int](class_int.md#class-int), debug\_flags: BitField\[ [DebugFlags](class_editorexportplatform.md#enum-editorexportplatform-debugflags)\]) virtual [🔗](#class-editorexportplatformextension-private-method-run)

This method is called when `device` one-click deploy menu option is selected.

Implementation should export project to a temporary location, upload and run it on the specific `device`, or perform another action associated with the menu item.

* * *

[bool](class_bool.md#class-bool) **\_should\_update\_export\_options**() virtual [🔗](#class-editorexportplatformextension-private-method-should-update-export-options)

Returns `true` if export options list is changed and presets should be updated.

* * *

[String](class_string.md#class-string) **get\_config\_error**() const [🔗](#class-editorexportplatformextension-method-get-config-error)

Returns current configuration error message text. This method should be called only from the [\_can\_export()](#class-editorexportplatformextension-private-method-can-export), [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration), or [\_has\_valid\_project\_configuration()](#class-editorexportplatformextension-private-method-has-valid-project-configuration) implementations.

* * *

[bool](class_bool.md#class-bool) **get\_config\_missing\_templates**() const [🔗](#class-editorexportplatformextension-method-get-config-missing-templates)

Returns `true` is export templates are missing from the current configuration. This method should be called only from the [\_can\_export()](#class-editorexportplatformextension-private-method-can-export), [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration), or [\_has\_valid\_project\_configuration()](#class-editorexportplatformextension-private-method-has-valid-project-configuration) implementations.

* * *

void **set\_config\_error**(error\_text: [String](class_string.md#class-string)) const [🔗](#class-editorexportplatformextension-method-set-config-error)

Sets current configuration error message text. This method should be called only from the [\_can\_export()](#class-editorexportplatformextension-private-method-can-export), [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration), or [\_has\_valid\_project\_configuration()](#class-editorexportplatformextension-private-method-has-valid-project-configuration) implementations.

* * *

void **set\_config\_missing\_templates**(missing\_templates: [bool](class_bool.md#class-bool)) const [🔗](#class-editorexportplatformextension-method-set-config-missing-templates)

Set to `true` is export templates are missing from the current configuration. This method should be called only from the [\_can\_export()](#class-editorexportplatformextension-private-method-can-export), [\_has\_valid\_export\_configuration()](#class-editorexportplatformextension-private-method-has-valid-export-configuration), or [\_has\_valid\_project\_configuration()](#class-editorexportplatformextension-private-method-has-valid-project-configuration) implementations.

[Previous](class_editorexportplatformappleembedded.md "EditorExportPlatformAppleEmbedded") [Next](class_editorexportplatformios.md "EditorExportPlatformIOS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformappleembedded.md "EditorExportPlatformAppleEmbedded") [Next](class_editorexportplatformios.md "EditorExportPlatformIOS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).