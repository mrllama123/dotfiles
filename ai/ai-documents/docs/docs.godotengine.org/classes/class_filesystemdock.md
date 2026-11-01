---
title: FileSystemDock — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_filesystemdock.html
crawled_at: "2026-08-13T10:28:25+12:00"
content_hash: 6e89c14ce31508190258207745bf6e63338f3d49bfb13abf08807914c4d1434a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FileSystemDock

* * *

# FileSystemDock

**Inherits:** [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Godot editor's dock for managing files in the project.

## Description

This class is available only in [EditorPlugin](class_editorplugin.md#class-editorplugin) s and can't be instantiated. You can access it using [EditorInterface.get\_file\_system\_dock()](class_editorinterface.md#class-editorinterface-method-get-file-system-dock).

While **FileSystemDock** doesn't expose any methods for file manipulation, it can listen for various file-related signals.

## Methods

|     |     |
| --- | --- |
| void | [add\_resource\_tooltip\_plugin](#class-filesystemdock-method-add-resource-tooltip-plugin)(plugin: [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin)) |
| void | [navigate\_to\_path](#class-filesystemdock-method-navigate-to-path)(path: [String](class_string.md#class-string)) |
| void | [remove\_resource\_tooltip\_plugin](#class-filesystemdock-method-remove-resource-tooltip-plugin)(plugin: [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin)) |

* * *

## Signals

**display\_mode\_changed**() [🔗](#class-filesystemdock-signal-display-mode-changed)

Emitted when the user switches file display mode or split mode.

* * *

**file\_removed**(file: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-signal-file-removed)

Emitted when the given `file` was removed.

* * *

**files\_moved**(old\_file: [String](class_string.md#class-string), new\_file: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-signal-files-moved)

Emitted when a file is moved from `old_file` path to `new_file` path.

* * *

**folder\_color\_changed**() [🔗](#class-filesystemdock-signal-folder-color-changed)

Emitted when folders change color.

* * *

**folder\_moved**(old\_folder: [String](class_string.md#class-string), new\_folder: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-signal-folder-moved)

Emitted when a folder is moved from `old_folder` path to `new_folder` path.

* * *

**folder\_removed**(folder: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-signal-folder-removed)

Emitted when the given `folder` was removed.

* * *

**inherit**(file: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-signal-inherit)

Emitted when a new scene is created that inherits the scene at `file` path.

* * *

**instantiate**(files: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-filesystemdock-signal-instantiate)

Emitted when the given scenes are being instantiated in the editor.

* * *

**resource\_removed**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-filesystemdock-signal-resource-removed)

Emitted when an external `resource` had its file removed.

* * *

## Method Descriptions

void **add\_resource\_tooltip\_plugin**(plugin: [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin)) [🔗](#class-filesystemdock-method-add-resource-tooltip-plugin)

Registers a new [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin).

* * *

void **navigate\_to\_path**(path: [String](class_string.md#class-string)) [🔗](#class-filesystemdock-method-navigate-to-path)

Sets the given `path` as currently selected, ensuring that the selected file/directory is visible.

* * *

void **remove\_resource\_tooltip\_plugin**(plugin: [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin)) [🔗](#class-filesystemdock-method-remove-resource-tooltip-plugin)

Removes an [EditorResourceTooltipPlugin](class_editorresourcetooltipplugin.md#class-editorresourcetooltipplugin). Fails if the plugin wasn't previously added.

[Previous](class_filedialog.md "FileDialog") [Next](class_flowcontainer.md "FlowContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_filedialog.md "FileDialog") [Next](class_flowcontainer.md "FlowContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).