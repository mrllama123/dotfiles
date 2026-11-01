---
title: EditorExportPlatform — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatform.html
crawled_at: "2026-08-13T10:37:01+12:00"
content_hash: 63e379f1a3b76c8ef001a2d4b2290d13e4f438922fa42bd1f670fcfef4732c58
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatform

* * *

# EditorExportPlatform

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [EditorExportPlatformAndroid](class_editorexportplatformandroid.md#class-editorexportplatformandroid), [EditorExportPlatformAppleEmbedded](class_editorexportplatformappleembedded.md#class-editorexportplatformappleembedded), [EditorExportPlatformExtension](class_editorexportplatformextension.md#class-editorexportplatformextension), [EditorExportPlatformMacOS](class_editorexportplatformmacos.md#class-editorexportplatformmacos), [EditorExportPlatformPC](class_editorexportplatformpc.md#class-editorexportplatformpc), [EditorExportPlatformWeb](class_editorexportplatformweb.md#class-editorexportplatformweb)

Identifies a supported export platform, and internally provides the functionality of exporting to that platform.

## Description

Base resource that provides the functionality of exporting a release build of a project to a platform, from the editor. Stores platform-specific metadata such as the name and supported features of the platform, and performs the exporting of projects, PCK files, and ZIP files. Uses an export template for the platform provided at the time of project exporting.

Used in scripting by [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin) to configure platform-specific customization of scenes and resources. See [EditorExportPlugin.\_begin\_customize\_scenes()](class_editorexportplugin.md#class-editorexportplugin-private-method-begin-customize-scenes) and [EditorExportPlugin.\_begin\_customize\_resources()](class_editorexportplugin.md#class-editorexportplugin-private-method-begin-customize-resources) for more details.

## Tutorials

- [Console support in Godot](../tutorials/platform/consoles.md)


## Methods

|     |     |
| --- | --- |
| void | [add\_message](#class-editorexportplatform-method-add-message)(type: [ExportMessageType](#enum-editorexportplatform-exportmessagetype), category: [String](class_string.md#class-string), message: [String](class_string.md#class-string)) |
| void | [clear\_messages](#class-editorexportplatform-method-clear-messages)() |
| [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) | [create\_preset](#class-editorexportplatform-method-create-preset)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_pack](#class-editorexportplatform-method-export-pack)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_pack\_patch](#class-editorexportplatform-method-export-pack-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_project](#class-editorexportplatform-method-export-project)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_project\_files](#class-editorexportplatform-method-export-project-files)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), save\_cb: [Callable](class_callable.md#class-callable), shared\_cb: [Callable](class_callable.md#class-callable) = Callable()) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_zip](#class-editorexportplatform-method-export-zip)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [export\_zip\_patch](#class-editorexportplatform-method-export-zip-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) |
| [Dictionary](class_dictionary.md#class-dictionary) | [find\_export\_template](#class-editorexportplatform-method-find-export-template)(template\_file\_name: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [gen\_export\_flags](#class-editorexportplatform-method-gen-export-flags)(flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\]) |
| [Array](class_array.md#class-array) | [get\_current\_presets](#class-editorexportplatform-method-get-current-presets)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_forced\_export\_files](#class-editorexportplatform-method-get-forced-export-files)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) = null) static |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_internal\_export\_files](#class-editorexportplatform-method-get-internal-export-files)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) |
| [String](class_string.md#class-string) | [get\_message\_category](#class-editorexportplatform-method-get-message-category)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_message\_count](#class-editorexportplatform-method-get-message-count)() const |
| [String](class_string.md#class-string) | [get\_message\_text](#class-editorexportplatform-method-get-message-text)(index: [int](class_int.md#class-int)) const |
| [ExportMessageType](#enum-editorexportplatform-exportmessagetype) | [get\_message\_type](#class-editorexportplatform-method-get-message-type)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_os\_name](#class-editorexportplatform-method-get-os-name)() const |
| [ExportMessageType](#enum-editorexportplatform-exportmessagetype) | [get\_worst\_message\_type](#class-editorexportplatform-method-get-worst-message-type)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [save\_pack](#class-editorexportplatform-method-save-pack)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), embed: [bool](class_bool.md#class-bool) = false) |
| [Dictionary](class_dictionary.md#class-dictionary) | [save\_pack\_patch](#class-editorexportplatform-method-save-pack-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [save\_zip](#class-editorexportplatform-method-save-zip)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [save\_zip\_patch](#class-editorexportplatform-method-save-zip-patch)(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [ssh\_push\_to\_remote](#class-editorexportplatform-method-ssh-push-to-remote)(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), scp\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), src\_file: [String](class_string.md#class-string), dst\_file: [String](class_string.md#class-string)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [ssh\_run\_on\_remote](#class-editorexportplatform-method-ssh-run-on-remote)(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), ssh\_arg: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), cmd\_args: [String](class_string.md#class-string), output: [Array](class_array.md#class-array) = \[\], port\_fwd: [int](class_int.md#class-int) = -1) const |
| [int](class_int.md#class-int) | [ssh\_run\_on\_remote\_no\_wait](#class-editorexportplatform-method-ssh-run-on-remote-no-wait)(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), ssh\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), cmd\_args: [String](class_string.md#class-string), port\_fwd: [int](class_int.md#class-int) = -1) const |

* * *

## Enumerations

enum **ExportMessageType**: [🔗](#enum-editorexportplatform-exportmessagetype)

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **EXPORT\_MESSAGE\_NONE** = `0`

Invalid message type used as the default value when no type is specified.

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **EXPORT\_MESSAGE\_INFO** = `1`

Message type for informational messages that have no effect on the export.

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **EXPORT\_MESSAGE\_WARNING** = `2`

Message type for warning messages that should be addressed but still allow to complete the export.

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **EXPORT\_MESSAGE\_ERROR** = `3`

Message type for error messages that must be addressed and fail the export.

* * *

flags **DebugFlags**: [🔗](#enum-editorexportplatform-debugflags)

[DebugFlags](#enum-editorexportplatform-debugflags) **DEBUG\_FLAG\_DUMB\_CLIENT** = `1`

Flag is set if the remotely debugged project is expected to use the remote file system. If set, [gen\_export\_flags()](#class-editorexportplatform-method-gen-export-flags) will append `--remote-fs` and `--remote-fs-password` (if [EditorSettings.filesystem/file\_server/password](class_editorsettings.md#class-editorsettings-property-filesystem-file-server-password) is defined) command line arguments to the returned list.

[DebugFlags](#enum-editorexportplatform-debugflags) **DEBUG\_FLAG\_REMOTE\_DEBUG** = `2`

Flag is set if remote debug is enabled. If set, [gen\_export\_flags()](#class-editorexportplatform-method-gen-export-flags) will append `--remote-debug` and `--breakpoints` (if breakpoints are selected in the script editor or added by the plugin) command line arguments to the returned list.

[DebugFlags](#enum-editorexportplatform-debugflags) **DEBUG\_FLAG\_REMOTE\_DEBUG\_LOCALHOST** = `4`

Flag is set if remotely debugged project is running on the localhost. If set, [gen\_export\_flags()](#class-editorexportplatform-method-gen-export-flags) will use `localhost` instead of [EditorSettings.network/debug/remote\_host](class_editorsettings.md#class-editorsettings-property-network-debug-remote-host) as remote debugger host.

[DebugFlags](#enum-editorexportplatform-debugflags) **DEBUG\_FLAG\_VIEW\_COLLISIONS** = `8`

Flag is set if the "Visible Collision Shapes" remote debug option is enabled. If set, [gen\_export\_flags()](#class-editorexportplatform-method-gen-export-flags) will append the `--debug-collisions` command line argument to the returned list.

[DebugFlags](#enum-editorexportplatform-debugflags) **DEBUG\_FLAG\_VIEW\_NAVIGATION** = `16`

Flag is set if the "Visible Navigation" remote debug option is enabled. If set, [gen\_export\_flags()](#class-editorexportplatform-method-gen-export-flags) will append the `--debug-navigation` command line argument to the returned list.

* * *

## Method Descriptions

void **add\_message**(type: [ExportMessageType](#enum-editorexportplatform-exportmessagetype), category: [String](class_string.md#class-string), message: [String](class_string.md#class-string)) [🔗](#class-editorexportplatform-method-add-message)

Adds a message to the export log that will be displayed when exporting ends.

* * *

void **clear\_messages**() [🔗](#class-editorexportplatform-method-clear-messages)

Clears the export log.

* * *

[EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) **create\_preset**() [🔗](#class-editorexportplatform-method-create-preset)

Create a new preset for this platform.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_pack**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) [🔗](#class-editorexportplatform-method-export-pack)

Creates a PCK archive at `path` for the specified `preset`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_pack\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) [🔗](#class-editorexportplatform-method-export-pack-patch)

Creates a patch PCK archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.

**Note:** `patches` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_project**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) [🔗](#class-editorexportplatform-method-export-project)

Creates a full project at `path` for the specified `preset`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_project\_files**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), save\_cb: [Callable](class_callable.md#class-callable), shared\_cb: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-editorexportplatform-method-export-project-files)

Exports project files for the specified preset. This method can be used to implement custom export format, other than PCK and ZIP. One of the callbacks is called for each exported file.

`save_cb` is called for all exported files and have the following arguments: `file_path: String`, `file_data: PackedByteArray`, `file_index: int`, `file_count: int`, `encryption_include_filters: PackedStringArray`, `encryption_exclude_filters: PackedStringArray`, `encryption_key: PackedByteArray`.

`shared_cb` is called for exported native shared/static libraries and have the following arguments: `file_path: String`, `tags: PackedStringArray`, `target_folder: String`.

**Note:** `file_index` and `file_count` are intended for progress tracking only and aren't necessarily unique and precise.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_zip**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) [🔗](#class-editorexportplatform-method-export-zip)

Create a ZIP archive at `path` for the specified `preset`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **export\_zip\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), patches: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\] = 0) [🔗](#class-editorexportplatform-method-export-zip-patch)

Create a patch ZIP archive at `path` for the specified `preset`, containing only the files that have changed since the last patch.

**Note:** `patches` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **find\_export\_template**(template\_file\_name: [String](class_string.md#class-string)) const [🔗](#class-editorexportplatform-method-find-export-template)

Locates export template for the platform, and returns [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `path: String` and `error: String`. This method is provided for convenience and custom export platforms aren't required to use it or keep export templates stored in the same way official templates are.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **gen\_export\_flags**(flags: BitField\[ [DebugFlags](#enum-editorexportplatform-debugflags)\]) [🔗](#class-editorexportplatform-method-gen-export-flags)

Generates array of command line arguments for the default export templates for the debug flags and editor settings.

* * *

[Array](class_array.md#class-array) **get\_current\_presets**() const [🔗](#class-editorexportplatform-method-get-current-presets)

Returns array of [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) s for this platform.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_forced\_export\_files**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) = null) static [🔗](#class-editorexportplatform-method-get-forced-export-files)

Returns array of core file names that always should be exported regardless of preset config.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_internal\_export\_files**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool)) [🔗](#class-editorexportplatform-method-get-internal-export-files)

Returns additional files that should always be exported regardless of preset configuration, and are not part of the project source. The returned [Dictionary](class_dictionary.md#class-dictionary) contains filename keys ( [String](class_string.md#class-string)) and their corresponding raw data ( [PackedByteArray](class_packedbytearray.md#class-packedbytearray)).

* * *

[String](class_string.md#class-string) **get\_message\_category**(index: [int](class_int.md#class-int)) const [🔗](#class-editorexportplatform-method-get-message-category)

Returns message category, for the message with `index`.

* * *

[int](class_int.md#class-int) **get\_message\_count**() const [🔗](#class-editorexportplatform-method-get-message-count)

Returns number of messages in the export log.

* * *

[String](class_string.md#class-string) **get\_message\_text**(index: [int](class_int.md#class-int)) const [🔗](#class-editorexportplatform-method-get-message-text)

Returns message text, for the message with `index`.

* * *

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **get\_message\_type**(index: [int](class_int.md#class-int)) const [🔗](#class-editorexportplatform-method-get-message-type)

Returns message type, for the message with `index`.

* * *

[String](class_string.md#class-string) **get\_os\_name**() const [🔗](#class-editorexportplatform-method-get-os-name)

Returns the name of the export operating system handled by this **EditorExportPlatform** class, as a friendly string. Possible return values are `Windows`, `Linux`, `macOS`, `Android`, `iOS`, and `Web`.

* * *

[ExportMessageType](#enum-editorexportplatform-exportmessagetype) **get\_worst\_message\_type**() const [🔗](#class-editorexportplatform-method-get-worst-message-type)

Returns most severe message type currently present in the export log.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **save\_pack**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), embed: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorexportplatform-method-save-pack)

Saves PCK archive and returns [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).

If `embed` is `true`, PCK content is appended to the end of `path` file and return [Dictionary](class_dictionary.md#class-dictionary) additionally include following keys: `embedded_start: int` (embedded PCK offset) and `embedded_size: int` (embedded PCK size).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **save\_pack\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) [🔗](#class-editorexportplatform-method-save-pack-patch)

Saves patch PCK archive and returns [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **save\_zip**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) [🔗](#class-editorexportplatform-method-save-zip)

Saves ZIP archive and returns [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **save\_zip\_patch**(preset: [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset), debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string)) [🔗](#class-editorexportplatform-method-save-zip-patch)

Saves patch ZIP archive and returns [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `result: Error`, `so_files: Array` (array of the shared/static objects which contains dictionaries with the following keys: `path: String`, `tags: PackedStringArray`, and `target_folder: String`).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **ssh\_push\_to\_remote**(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), scp\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), src\_file: [String](class_string.md#class-string), dst\_file: [String](class_string.md#class-string)) const [🔗](#class-editorexportplatform-method-ssh-push-to-remote)

Uploads specified file over SCP protocol to the remote host.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **ssh\_run\_on\_remote**(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), ssh\_arg: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), cmd\_args: [String](class_string.md#class-string), output: [Array](class_array.md#class-array) = \[\], port\_fwd: [int](class_int.md#class-int) = -1) const [🔗](#class-editorexportplatform-method-ssh-run-on-remote)

Executes specified command on the remote host via SSH protocol and returns command output in the `output`.

* * *

[int](class_int.md#class-int) **ssh\_run\_on\_remote\_no\_wait**(host: [String](class_string.md#class-string), port: [String](class_string.md#class-string), ssh\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), cmd\_args: [String](class_string.md#class-string), port\_fwd: [int](class_int.md#class-int) = -1) const [🔗](#class-editorexportplatform-method-ssh-run-on-remote-no-wait)

Executes specified command on the remote host via SSH protocol and returns process ID (on the remote host) without waiting for command to finish.

[Previous](class_editordebuggersession.md "EditorDebuggerSession") [Next](class_editorexportplatformandroid.md "EditorExportPlatformAndroid")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editordebuggersession.md "EditorDebuggerSession") [Next](class_editorexportplatformandroid.md "EditorExportPlatformAndroid")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).