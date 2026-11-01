---
title: UndoRedo — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_undoredo.html
crawled_at: "2026-08-13T10:32:43+12:00"
content_hash: 92dd6bfa6a4e8e1d4d210e3b5f5dcc42a670d9af18d7c0c39910e6de97d0a12a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - UndoRedo

* * *

# UndoRedo

**Inherits:** [Object](class_object.md#class-object)

Provides a high-level interface for implementing undo and redo operations.

## Description

UndoRedo works by registering methods and property changes inside "actions". You can create an action, then provide ways to do and undo this action using function calls and property changes, then commit the action.

When an action is committed, all of the `do_*` methods will run. If the [undo()](#class-undoredo-method-undo) method is used, the `undo_*` methods will run. If the [redo()](#class-undoredo-method-redo) method is used, once again, all of the `do_*` methods will run.

Here's an example on how to add an action:

GDScriptC#

```
var undo_redo = UndoRedo.new()

func do_something():
    pass # Put your code here.

func undo_something():
    pass # Put here the code that reverts what's done by "do_something()".

func _on_my_button_pressed():
    var node = get_node("MyNode2D")
    undo_redo.create_action("Move the node")
    undo_redo.add_do_method(do_something)
    undo_redo.add_undo_method(undo_something)
    undo_redo.add_do_property(node, "position", Vector2(100, 100))
    undo_redo.add_undo_property(node, "position", node.position)
    undo_redo.commit_action()

```

```
private UndoRedo _undoRedo;

public override void _Ready()
{
    _undoRedo = new UndoRedo();
}

public void DoSomething()
{
    // Put your code here.
}

public void UndoSomething()
{
    // Put here the code that reverts what's done by "DoSomething()".
}

private void OnMyButtonPressed()
{
    var node = GetNode<Node2D>("MyNode2D");
    _undoRedo.CreateAction("Move the node");
    _undoRedo.AddDoMethod(new Callable(this, MethodName.DoSomething));
    _undoRedo.AddUndoMethod(new Callable(this, MethodName.UndoSomething));
    _undoRedo.AddDoProperty(node, "position", new Vector2(100, 100));
    _undoRedo.AddUndoProperty(node, "position", node.Position);
    _undoRedo.CommitAction();
}

```

Before calling any of the `add_(un)do_*` methods, you need to first call [create\_action()](#class-undoredo-method-create-action). Afterwards you need to call [commit\_action()](#class-undoredo-method-commit-action).

If you don't need to register a method, you can leave [add\_do\_method()](#class-undoredo-method-add-do-method) and [add\_undo\_method()](#class-undoredo-method-add-undo-method) out; the same goes for properties. You can also register more than one method/property.

If you are making an [EditorPlugin](class_editorplugin.md#class-editorplugin) and want to integrate into the editor's undo history, use [EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager) instead.

If you are registering multiple properties/method which depend on one another, be aware that by default undo operation are called in the same order they have been added. Therefore instead of grouping do operation with their undo operations it is better to group do on one side and undo on the other as shown below.

GDScriptC#

```
undo_redo.create_action("Add object")

# DO
undo_redo.add_do_method(_create_object)
undo_redo.add_do_method(_add_object_to_singleton)

# UNDO
undo_redo.add_undo_method(_remove_object_from_singleton)
undo_redo.add_undo_method(_destroy_that_object)

undo_redo.commit_action()

```

```
_undo_redo.CreateAction("Add object");

// DO
_undo_redo.AddDoMethod(new Callable(this, MethodName.CreateObject));
_undo_redo.AddDoMethod(new Callable(this, MethodName.AddObjectToSingleton));

// UNDO
_undo_redo.AddUndoMethod(new Callable(this, MethodName.RemoveObjectFromSingleton));
_undo_redo.AddUndoMethod(new Callable(this, MethodName.DestroyThatObject));

_undo_redo.CommitAction();

```

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [max\_steps](#class-undoredo-property-max-steps) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_do\_method](#class-undoredo-method-add-do-method)(callable: [Callable](class_callable.md#class-callable)) |
| void | [add\_do\_property](#class-undoredo-method-add-do-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_do\_reference](#class-undoredo-method-add-do-reference)(object: [Object](class_object.md#class-object)) |
| void | [add\_undo\_method](#class-undoredo-method-add-undo-method)(callable: [Callable](class_callable.md#class-callable)) |
| void | [add\_undo\_property](#class-undoredo-method-add-undo-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [add\_undo\_reference](#class-undoredo-method-add-undo-reference)(object: [Object](class_object.md#class-object)) |
| void | [clear\_history](#class-undoredo-method-clear-history)(increase\_version: [bool](class_bool.md#class-bool) = true) |
| void | [commit\_action](#class-undoredo-method-commit-action)(execute: [bool](class_bool.md#class-bool) = true) |
| void | [create\_action](#class-undoredo-method-create-action)(name: [String](class_string.md#class-string), merge\_mode: [MergeMode](#enum-undoredo-mergemode) = 0, backward\_undo\_ops: [bool](class_bool.md#class-bool) = false) |
| void | [end\_force\_keep\_in\_merge\_ends](#class-undoredo-method-end-force-keep-in-merge-ends)() |
| [String](class_string.md#class-string) | [get\_action\_name](#class-undoredo-method-get-action-name)(id: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_current\_action](#class-undoredo-method-get-current-action)() |
| [String](class_string.md#class-string) | [get\_current\_action\_name](#class-undoredo-method-get-current-action-name)() const |
| [int](class_int.md#class-int) | [get\_history\_count](#class-undoredo-method-get-history-count)() |
| [int](class_int.md#class-int) | [get\_version](#class-undoredo-method-get-version)() const |
| [bool](class_bool.md#class-bool) | [has\_redo](#class-undoredo-method-has-redo)() const |
| [bool](class_bool.md#class-bool) | [has\_undo](#class-undoredo-method-has-undo)() const |
| [bool](class_bool.md#class-bool) | [is\_committing\_action](#class-undoredo-method-is-committing-action)() const |
| [bool](class_bool.md#class-bool) | [redo](#class-undoredo-method-redo)() |
| void | [start\_force\_keep\_in\_merge\_ends](#class-undoredo-method-start-force-keep-in-merge-ends)() |
| [bool](class_bool.md#class-bool) | [undo](#class-undoredo-method-undo)() |

* * *

## Signals

**version\_changed**() [🔗](#class-undoredo-signal-version-changed)

Called when [undo()](#class-undoredo-method-undo) or [redo()](#class-undoredo-method-redo) was called.

* * *

## Enumerations

enum **MergeMode**: [🔗](#enum-undoredo-mergemode)

[MergeMode](#enum-undoredo-mergemode) **MERGE\_DISABLE** = `0`

Makes "do"/"undo" operations stay in separate actions.

[MergeMode](#enum-undoredo-mergemode) **MERGE\_ENDS** = `1`

Merges this action with the previous one if they have the same name. Keeps only the first action's "undo" operations and the last action's "do" operations. Useful for sequential changes to a single value.

[MergeMode](#enum-undoredo-mergemode) **MERGE\_ALL** = `2`

Merges this action with the previous one if they have the same name.

* * *

## Property Descriptions

[int](class_int.md#class-int) **max\_steps** = `0` [🔗](#class-undoredo-property-max-steps)

- void **set\_max\_steps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_steps**()


The maximum number of steps that can be stored in the undo/redo history. If the number of stored steps exceeds this limit, older steps are removed from history and can no longer be reached by calling [undo()](#class-undoredo-method-undo). A value of `0` or lower means no limit.

* * *

## Method Descriptions

void **add\_do\_method**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-undoredo-method-add-do-method)

Register a [Callable](class_callable.md#class-callable) that will be called when the action is committed.

* * *

void **add\_do\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-undoredo-method-add-do-property)

Register a `property` that would change its value to `value` when the action is committed.

* * *

void **add\_do\_reference**(object: [Object](class_object.md#class-object)) [🔗](#class-undoredo-method-add-do-reference)

Register a reference to an object that will be erased if the "do" history is deleted. This is useful for objects added by the "do" action and removed by the "undo" action.

When the "do" history is deleted, if the object is a [RefCounted](class_refcounted.md#class-refcounted), it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

```
var node = Node2D.new()
undo_redo.create_action("Add node")
undo_redo.add_do_method(add_child.bind(node))
undo_redo.add_do_reference(node)
undo_redo.add_undo_method(remove_child.bind(node))
undo_redo.commit_action()

```

* * *

void **add\_undo\_method**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-undoredo-method-add-undo-method)

Register a [Callable](class_callable.md#class-callable) that will be called when the action is undone.

* * *

void **add\_undo\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-undoredo-method-add-undo-property)

Register a `property` that would change its value to `value` when the action is undone.

* * *

void **add\_undo\_reference**(object: [Object](class_object.md#class-object)) [🔗](#class-undoredo-method-add-undo-reference)

Register a reference to an object that will be erased if the "undo" history is deleted. This is useful for objects added by the "undo" action and removed by the "do" action.

When the "undo" history is deleted, if the object is a [RefCounted](class_refcounted.md#class-refcounted), it will be unreferenced. Otherwise, it will be freed. Do not use for resources.

```
var node = $Node2D
undo_redo.create_action("Remove node")
undo_redo.add_do_method(remove_child.bind(node))
undo_redo.add_undo_method(add_child.bind(node))
undo_redo.add_undo_reference(node)
undo_redo.commit_action()

```

* * *

void **clear\_history**(increase\_version: [bool](class_bool.md#class-bool) = true) [🔗](#class-undoredo-method-clear-history)

Clear the undo/redo history and associated references.

Passing `false` to `increase_version` will prevent the version number from increasing when the history is cleared.

* * *

void **commit\_action**(execute: [bool](class_bool.md#class-bool) = true) [🔗](#class-undoredo-method-commit-action)

Commit the action. If `execute` is `true` (which it is by default), all "do" methods/properties are called/set when this function is called.

* * *

void **create\_action**(name: [String](class_string.md#class-string), merge\_mode: [MergeMode](#enum-undoredo-mergemode) = 0, backward\_undo\_ops: [bool](class_bool.md#class-bool) = false) [🔗](#class-undoredo-method-create-action)

Create a new action. After this is called, do all your calls to [add\_do\_method()](#class-undoredo-method-add-do-method), [add\_undo\_method()](#class-undoredo-method-add-undo-method), [add\_do\_property()](#class-undoredo-method-add-do-property), and [add\_undo\_property()](#class-undoredo-method-add-undo-property), then commit the action with [commit\_action()](#class-undoredo-method-commit-action).

The way actions are merged is dictated by `merge_mode`.

The way undo operation are ordered in actions is dictated by `backward_undo_ops`. When `backward_undo_ops` is `false` undo option are ordered in the same order they were added. Which means the first operation to be added will be the first to be undone.

* * *

void **end\_force\_keep\_in\_merge\_ends**() [🔗](#class-undoredo-method-end-force-keep-in-merge-ends)

Stops marking operations as to be processed even if the action gets merged with another in the [MERGE\_ENDS](#class-undoredo-constant-merge-ends) mode. See [start\_force\_keep\_in\_merge\_ends()](#class-undoredo-method-start-force-keep-in-merge-ends).

* * *

[String](class_string.md#class-string) **get\_action\_name**(id: [int](class_int.md#class-int)) [🔗](#class-undoredo-method-get-action-name)

Gets the action name from its index.

* * *

[int](class_int.md#class-int) **get\_current\_action**() [🔗](#class-undoredo-method-get-current-action)

Gets the index of the current action.

* * *

[String](class_string.md#class-string) **get\_current\_action\_name**() const [🔗](#class-undoredo-method-get-current-action-name)

Gets the name of the current action, equivalent to `get_action_name(get_current_action())`.

* * *

[int](class_int.md#class-int) **get\_history\_count**() [🔗](#class-undoredo-method-get-history-count)

Returns how many elements are in the history.

* * *

[int](class_int.md#class-int) **get\_version**() const [🔗](#class-undoredo-method-get-version)

Gets the version. Every time a new action is committed, the **UndoRedo**'s version number is increased automatically.

This is useful mostly to check if something changed from a saved version.

* * *

[bool](class_bool.md#class-bool) **has\_redo**() const [🔗](#class-undoredo-method-has-redo)

Returns `true` if a "redo" action is available.

* * *

[bool](class_bool.md#class-bool) **has\_undo**() const [🔗](#class-undoredo-method-has-undo)

Returns `true` if an "undo" action is available.

* * *

[bool](class_bool.md#class-bool) **is\_committing\_action**() const [🔗](#class-undoredo-method-is-committing-action)

Returns `true` if the **UndoRedo** is currently committing the action, i.e. running its "do" method or property change (see [commit\_action()](#class-undoredo-method-commit-action)).

* * *

[bool](class_bool.md#class-bool) **redo**() [🔗](#class-undoredo-method-redo)

Redo the last action.

* * *

void **start\_force\_keep\_in\_merge\_ends**() [🔗](#class-undoredo-method-start-force-keep-in-merge-ends)

Marks the next "do" and "undo" operations to be processed even if the action gets merged with another in the [MERGE\_ENDS](#class-undoredo-constant-merge-ends) mode. Return to normal operation using [end\_force\_keep\_in\_merge\_ends()](#class-undoredo-method-end-force-keep-in-merge-ends).

* * *

[bool](class_bool.md#class-bool) **undo**() [🔗](#class-undoredo-method-undo)

Undo the last action.

[Previous](class_udpserver.md "UDPServer") [Next](class_uniformsetcacherd.md "UniformSetCacheRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_udpserver.md "UDPServer") [Next](class_uniformsetcacherd.md "UniformSetCacheRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).