---
title: EditorFileSystem — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorfilesystem.html
crawled_at: "2026-08-13T10:20:26+12:00"
content_hash: 002340a488164e6cdde3ff5ff46ffbb9623014746668c7458880ef6ee0a871fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorFileSystem

* * *

# EditorFileSystem

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Resource filesystem, as the editor sees it.

## Description

This object holds information of all resources in the filesystem, their types, etc.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_resource\_filesystem()](class_editorinterface.md#class-editorinterface-method-get-resource-filesystem).

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_file\_type](#class-editorfilesystem-method-get-file-type)(path: [String](class_string.md#class-string)) const |
| [EditorFileSystemDirectory](class_editorfilesystemdirectory.md#class-editorfilesystemdirectory) | [get\_filesystem](#class-editorfilesystem-method-get-filesystem)() |
| [EditorFileSystemDirectory](class_editorfilesystemdirectory.md#class-editorfilesystemdirectory) | [get\_filesystem\_path](#class-editorfilesystem-method-get-filesystem-path)(path: [String](class_string.md#class-string)) |
| [float](class_float.md#class-float) | [get\_scanning\_progress](#class-editorfilesystem-method-get-scanning-progress)() const |
| [bool](class_bool.md#class-bool) | [is\_scanning](#class-editorfilesystem-method-is-scanning)() const |
| void | [reimport\_files](#class-editorfilesystem-method-reimport-files)(files: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| void | [scan](#class-editorfilesystem-method-scan)() |
| void | [scan\_sources](#class-editorfilesystem-method-scan-sources)() |
| void | [update\_file](#class-editorfilesystem-method-update-file)(path: [String](class_string.md#class-string)) |

* * *

## Signals

**filesystem\_changed**() [🔗](#class-editorfilesystem-signal-filesystem-changed)

Emitted if the filesystem changed.

* * *

**resources\_reimported**(resources: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfilesystem-signal-resources-reimported)

Emitted if a resource is reimported.

* * *

**resources\_reimporting**(resources: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfilesystem-signal-resources-reimporting)

Emitted before a resource is reimported.

* * *

**resources\_reload**(resources: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfilesystem-signal-resources-reload)

Emitted if at least one resource is reloaded when the filesystem is scanned.

* * *

**script\_classes\_updated**() [🔗](#class-editorfilesystem-signal-script-classes-updated)

Emitted when the list of global script classes gets updated.

* * *

**sources\_changed**(exist: [bool](class_bool.md#class-bool)) [🔗](#class-editorfilesystem-signal-sources-changed)

Emitted if the source of any imported file changed.

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_file\_type**(path: [String](class_string.md#class-string)) const [🔗](#class-editorfilesystem-method-get-file-type)

Returns the resource type of the file, given the full path. This returns a string such as `"Resource"` or `"GDScript"`, _not_ a file extension such as `".gd"`.

* * *

[EditorFileSystemDirectory](class_editorfilesystemdirectory.md#class-editorfilesystemdirectory) **get\_filesystem**() [🔗](#class-editorfilesystem-method-get-filesystem)

Gets the root directory object.

* * *

[EditorFileSystemDirectory](class_editorfilesystemdirectory.md#class-editorfilesystemdirectory) **get\_filesystem\_path**(path: [String](class_string.md#class-string)) [🔗](#class-editorfilesystem-method-get-filesystem-path)

Returns a view into the filesystem at `path`.

* * *

[float](class_float.md#class-float) **get\_scanning\_progress**() const [🔗](#class-editorfilesystem-method-get-scanning-progress)

Returns the scan progress for 0 to 1 if the FS is being scanned.

* * *

[bool](class_bool.md#class-bool) **is\_scanning**() const [🔗](#class-editorfilesystem-method-is-scanning)

Returns `true` if the filesystem is being scanned.

* * *

void **reimport\_files**(files: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorfilesystem-method-reimport-files)

Reimports a set of files. Call this if these files or their `.import` files were directly edited by script or an external program.

If the file type changed or the file was newly created, use [update\_file()](#class-editorfilesystem-method-update-file) or [scan()](#class-editorfilesystem-method-scan).

**Note:** This function blocks until the import is finished. However, the main loop iteration, including timers and [Node.\_process()](class_node.md#class-node-private-method-process), will occur during the import process due to progress bar updates. Avoid calls to [reimport\_files()](#class-editorfilesystem-method-reimport-files) or [scan()](#class-editorfilesystem-method-scan) while an import is in progress.

* * *

void **scan**() [🔗](#class-editorfilesystem-method-scan)

Scan the filesystem for changes.

* * *

void **scan\_sources**() [🔗](#class-editorfilesystem-method-scan-sources)

Check if the source of any imported resource changed.

* * *

void **update\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorfilesystem-method-update-file)

Add a file in an existing directory, or schedule file information to be updated on editor restart. Can be used to update text files saved by an external program.

This will not import the file. To reimport, call [reimport\_files()](#class-editorfilesystem-method-reimport-files) or [scan()](#class-editorfilesystem-method-scan) methods.

[Previous](class_editorfiledialog.md "EditorFileDialog") [Next](class_editorinspector.md "EditorInspector")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorfiledialog.md "EditorFileDialog") [Next](class_editorinspector.md "EditorInspector")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).