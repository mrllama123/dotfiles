---
title: EditorUndoRedoManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorundoredomanager.html
crawled_at: "2026-08-13T10:40:48+12:00"
content_hash: 56b6cf1c88deb72a1a378f923031b7a2d3e19466fc4ce9f57040999a41879843
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorUndoRedoManager

* * *

# EditorUndoRedoManager

**Inherits:** [Object](class_object.md#class-object)

Manages undo history of scenes opened in the editor.

## Description

**EditorUndoRedoManager** is a manager for [UndoRedo](class_undoredo.md#class-undoredo) objects associated with edited scenes. Each scene has its own undo history and **EditorUndoRedoManager** ensures that each action performed in the editor gets associated with a proper scene. For actions not related to scenes ( [ProjectSettings](class_projectsettings.md#class-projectsettings) edits, external resources, etc.), a separate global history is used.

The usage is mostly the same as [UndoRedo](class_undoredo.md#class-undoredo). You create and commit actions and the manager automatically decides under-the-hood what scenes it belongs to. The scene is deduced based on the first operation in an action, using the object from the operation. The rules are as follows:

- If the object is a [Node](class_node.md#class-node), use the currently edited scene;

- If the object is a built-in resource, use the scene from its path;

- If the object is external resource or anything else, use global history.


This guessing can sometimes yield false results, so you can provide a custom context object when creating an action.

**EditorUndoRedoManager** is intended to be used by Godot editor plugins. You can obtain it using [EditorPlugin.get\_undo\_redo()](class_editorplugin.md#class-editorplugin-method-get-undo-redo). For non-editor uses or plugins that don't need to integrate with the editor's undo history, use [UndoRedo](class_undoredo.md#class-undoredo) instead.

The manager's API is mostly the same as in [UndoRedo](class_undoredo.md#class-undoredo), so you can refer to its documentation for more examples. The main difference is that **EditorUndoRedoManager** uses object + method name for actions, instead of [Callable](class_callable.md#class-callable).

## Methods

|     |     |
| --- | --- |
| void | [add\_do\_method](#class-editorundoredomanager-method-add-do-method)(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| void | [add\_do\_property](#class-editorundoredomanager-method-add-do-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_do\_reference](#class-editorundoredomanager-method-add-do-reference)(object: [Object](class_object.md#class-object)) |
| void | [add\_undo\_method](#class-editorundoredomanager-method-add-undo-method)(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| void | [add\_undo\_property](#class-editorundoredomanager-method-add-undo-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_undo\_reference](#class-editorundoredomanager-method-add-undo-reference)(object: [Object](class_object.md#class-object)) |
| void | [clear\_history](#class-editorundoredomanager-method-clear-history)(id: [int](class_int.md#class-int) = -99, increase\_version: [bool](class_bool.md#class-bool) = true) |
| void | [commit\_action](#class-editorundoredomanager-method-commit-action)(execute: [bool](class_bool.md#class-bool) = true) |
| void | [create\_action](#class-editorundoredomanager-method-create-action)(name: [String](class_string.md#class-string), merge\_mode: [MergeMode](class_undoredo.md#enum-undoredo-mergemode) = 0, custom\_context: [Object](class_object.md#class-object) = null, backward\_undo\_ops: [bool](class_bool.md#class-bool) = false, mark\_unsaved: [bool](class_bool.md#class-bool) = true) |
| void | [force\_fixed\_history](#class-editorundoredomanager-method-force-fixed-history)() |
| [UndoRedo](class_undoredo.md#class-undoredo) | [get\_history\_undo\_redo](#class-editorundoredomanager-method-get-history-undo-redo)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_object\_history\_id](#class-editorundoredomanager-method-get-object-history-id)(object: [Object](class_object.md#class-object)) const |
| [bool](class_bool.md#class-bool) | [is\_committing\_action](#class-editorundoredomanager-method-is-committing-action)() const |

* * *

## Signals

**history\_changed**() [🔗](#class-editorundoredomanager-signal-history-changed)

Emitted when the list of actions in any history has changed, either when an action is committed or a history is cleared.

* * *

**version\_changed**() [🔗](#class-editorundoredomanager-signal-version-changed)

Emitted when the version of any history has changed as a result of undo or redo call.

* * *

## Enumerations

enum **SpecialHistory**: [🔗](#enum-editorundoredomanager-specialhistory)

[SpecialHistory](#enum-editorundoredomanager-specialhistory) **GLOBAL\_HISTORY** = `0`

Global history not associated with any scene, but with external resources etc.

[SpecialHistory](#enum-editorundoredomanager-specialhistory) **REMOTE\_HISTORY** = `-9`

History associated with remote inspector. Used when live editing a running project.

[SpecialHistory](#enum-editorundoredomanager-specialhistory) **INVALID\_HISTORY** = `-99`

Invalid "null" history. It's a special value, not associated with any object.

* * *

## Method Descriptions

void **add\_do\_method**(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-editorundoredomanager-method-add-do-method)

Register a method that will be called when the action is committed (i.e. the "do" action).

If this is the first operation, the `object` will be used to deduce target undo history.

* * *

void **add\_do\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorundoredomanager-method-add-do-property)

Register a property value change for "do".

If this is the first operation, the `object` will be used to deduce target undo history.

* * *

void **add\_do\_reference**(object: [Object](class_object.md#class-object)) [🔗](#class-editorundoredomanager-method-add-do-reference)

Register a reference for "do" that will be erased if the "do" history is lost. This is useful mostly for new nodes created for the "do" call. Do not use for resources.

* * *

void **add\_undo\_method**(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-editorundoredomanager-method-add-undo-method)

Register a method that will be called when the action is undone (i.e. the "undo" action).

If this is the first operation, the `object` will be used to deduce target undo history.

* * *

void **add\_undo\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorundoredomanager-method-add-undo-property)

Register a property value change for "undo".

If this is the first operation, the `object` will be used to deduce target undo history.

* * *

void **add\_undo\_reference**(object: [Object](class_object.md#class-object)) [🔗](#class-editorundoredomanager-method-add-undo-reference)

Register a reference for "undo" that will be erased if the "undo" history is lost. This is useful mostly for nodes removed with the "do" call (not the "undo" call!).

* * *

void **clear\_history**(id: [int](class_int.md#class-int) = -99, increase\_version: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorundoredomanager-method-clear-history)

Clears the given undo history. You can clear history for a specific scene, global history, or for all scenes at once if `id` is [INVALID\_HISTORY](#class-editorundoredomanager-constant-invalid-history).

If `increase_version` is `true`, the undo history version will be increased, marking it as unsaved. Useful for operations that modify the scene, but don't support undo.

```
var scene_root = EditorInterface.get_edited_scene_root()
var undo_redo = EditorInterface.get_editor_undo_redo()
undo_redo.clear_history(undo_redo.get_object_history_id(scene_root))

```

**Note:** If you want to mark an edited scene as unsaved without clearing its history, use [EditorInterface.mark\_scene\_as\_unsaved()](class_editorinterface.md#class-editorinterface-method-mark-scene-as-unsaved) instead.

* * *

void **commit\_action**(execute: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorundoredomanager-method-commit-action)

Commits the action. If `execute` is `true` (default), all "do" methods/properties are called/set when this function is called.

* * *

void **create\_action**(name: [String](class_string.md#class-string), merge\_mode: [MergeMode](class_undoredo.md#enum-undoredo-mergemode) = 0, custom\_context: [Object](class_object.md#class-object) = null, backward\_undo\_ops: [bool](class_bool.md#class-bool) = false, mark\_unsaved: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorundoredomanager-method-create-action)

Create a new action. After this is called, do all your calls to [add\_do\_method()](#class-editorundoredomanager-method-add-do-method), [add\_undo\_method()](#class-editorundoredomanager-method-add-undo-method), [add\_do\_property()](#class-editorundoredomanager-method-add-do-property), and [add\_undo\_property()](#class-editorundoredomanager-method-add-undo-property), then commit the action with [commit\_action()](#class-editorundoredomanager-method-commit-action).

The way actions are merged is dictated by the `merge_mode` argument.

If `custom_context` object is provided, it will be used for deducing target history (instead of using the first operation).

The way undo operation are ordered in actions is dictated by `backward_undo_ops`. When `backward_undo_ops` is `false` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.

If `mark_unsaved` is `false`, the action will not mark the history as unsaved. This is useful for example for actions that change a selection, or a setting that will be saved automatically. Otherwise, this should be left to `true` if the action requires saving by the user or if it can cause data loss when left unsaved.

* * *

void **force\_fixed\_history**() [🔗](#class-editorundoredomanager-method-force-fixed-history)

Forces the next operation (e.g. [add\_do\_method()](#class-editorundoredomanager-method-add-do-method)) to use the action's history rather than guessing it from the object. This is sometimes needed when a history can't be correctly determined, like for a nested resource that doesn't have a path yet.

This method should only be used when absolutely necessary, otherwise it might cause invalid history state. For most of complex cases, the `custom_context` parameter of [create\_action()](#class-editorundoredomanager-method-create-action) is sufficient.

* * *

[UndoRedo](class_undoredo.md#class-undoredo) **get\_history\_undo\_redo**(id: [int](class_int.md#class-int)) const [🔗](#class-editorundoredomanager-method-get-history-undo-redo)

Returns the [UndoRedo](class_undoredo.md#class-undoredo) object associated with the given history `id`.

`id` above `0` are mapped to the opened scene tabs (but it doesn't match their order). `id` of `0` or lower have special meaning (see [SpecialHistory](#enum-editorundoredomanager-specialhistory)).

Best used with [get\_object\_history\_id()](#class-editorundoredomanager-method-get-object-history-id). This method is only provided in case you need some more advanced methods of [UndoRedo](class_undoredo.md#class-undoredo) (but keep in mind that directly operating on the [UndoRedo](class_undoredo.md#class-undoredo) object might affect editor's stability).

* * *

[int](class_int.md#class-int) **get\_object\_history\_id**(object: [Object](class_object.md#class-object)) const [🔗](#class-editorundoredomanager-method-get-object-history-id)

Returns the history ID deduced from the given `object`. It can be used with [get\_history\_undo\_redo()](#class-editorundoredomanager-method-get-history-undo-redo).

* * *

[bool](class_bool.md#class-bool) **is\_committing\_action**() const [🔗](#class-editorundoredomanager-method-is-committing-action)

Returns `true` if the **EditorUndoRedoManager** is currently committing the action, i.e. running its "do" method or property change (see [commit\_action()](#class-editorundoredomanager-method-commit-action)).

[Previous](class_editortranslationparserplugin.md "EditorTranslationParserPlugin") [Next](class_editorvcsinterface.md "EditorVCSInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editortranslationparserplugin.md "EditorTranslationParserPlugin") [Next](class_editorvcsinterface.md "EditorVCSInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).