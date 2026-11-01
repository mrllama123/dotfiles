---
title: EditorDebuggerPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editordebuggerplugin.html
crawled_at: "2026-08-13T10:37:30+12:00"
content_hash: fe58a2c5d065477675a102542d9532dc781de4b62c4db2d7abe5c1f15c7b8f07
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorDebuggerPlugin

* * *

# EditorDebuggerPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A base class to implement debugger plugins.

## Description

**EditorDebuggerPlugin** provides functions related to the editor side of the debugger.

To interact with the debugger, an instance of this class must be added to the editor via [EditorPlugin.add\_debugger\_plugin()](class_editorplugin.md#class-editorplugin-method-add-debugger-plugin).

Once added, the [\_setup\_session()](#class-editordebuggerplugin-private-method-setup-session) callback will be called for every [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) available to the plugin, and when new ones are created (the sessions may be inactive during this stage).

You can retrieve the available [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) s via [get\_sessions()](#class-editordebuggerplugin-method-get-sessions) or get a specific one via [get\_session()](#class-editordebuggerplugin-method-get-session).

GDScript

```
@tool
extends EditorPlugin

class ExampleEditorDebugger extends EditorDebuggerPlugin:

    func _has_capture(capture):
        # Return true if you wish to handle messages with the prefix "my_plugin:".
        return capture == "my_plugin"

    func _capture(message, data, session_id):
        if message == "my_plugin:ping":
            get_session(session_id).send_message("my_plugin:echo", data)
            return true
        return false

    func _setup_session(session_id):
        # Add a new tab in the debugger session UI containing a label.
        var label = Label.new()
        label.name = "Example plugin" # Will be used as the tab title.
        label.text = "Example plugin"
        var session = get_session(session_id)
        # Listens to the session started and stopped signals.
        session.started.connect(func (): print("Session started"))
        session.stopped.connect(func (): print("Session stopped"))
        session.add_session_tab(label)

var debugger = ExampleEditorDebugger.new()

func _enter_tree():
    add_debugger_plugin(debugger)

func _exit_tree():
    remove_debugger_plugin(debugger)

```

To connect on the running game side, use the [EngineDebugger](class_enginedebugger.md#class-enginedebugger) singleton:

GDScript

```
extends Node

func _ready():
    EngineDebugger.register_message_capture("my_plugin", _capture)
    EngineDebugger.send_message("my_plugin:ping", ["test"])

func _capture(message, data):
    # Note that the "my_plugin:" prefix is not used here.
    if message == "echo":
        prints("Echo received:", data)
        return true
    return false

```

**Note:** While the game is running, [@GlobalScope.print()](class_@globalscope.md#class-globalscope-method-print) and similar functions _called in the editor_ do not print anything, the Output Log prints only game messages.

## Methods

|     |     |
| --- | --- |
| void | [\_breakpoint\_set\_in\_tree](#class-editordebuggerplugin-private-method-breakpoint-set-in-tree)(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) virtual |
| void | [\_breakpoints\_cleared\_in\_tree](#class-editordebuggerplugin-private-method-breakpoints-cleared-in-tree)() virtual |
| [bool](class_bool.md#class-bool) | [\_capture](#class-editordebuggerplugin-private-method-capture)(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array), session\_id: [int](class_int.md#class-int)) virtual |
| void | [\_goto\_script\_line](#class-editordebuggerplugin-private-method-goto-script-line)(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int)) virtual |
| [bool](class_bool.md#class-bool) | [\_has\_capture](#class-editordebuggerplugin-private-method-has-capture)(capture: [String](class_string.md#class-string)) virtualconst |
| void | [\_setup\_session](#class-editordebuggerplugin-private-method-setup-session)(session\_id: [int](class_int.md#class-int)) virtual |
| [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) | [get\_session](#class-editordebuggerplugin-method-get-session)(id: [int](class_int.md#class-int)) |
| [Array](class_array.md#class-array) | [get\_sessions](#class-editordebuggerplugin-method-get-sessions)() |

* * *

## Method Descriptions

void **\_breakpoint\_set\_in\_tree**(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editordebuggerplugin-private-method-breakpoint-set-in-tree)

Override this method to be notified when a breakpoint is set in the editor.

* * *

void **\_breakpoints\_cleared\_in\_tree**() virtual [🔗](#class-editordebuggerplugin-private-method-breakpoints-cleared-in-tree)

Override this method to be notified when all breakpoints are cleared in the editor.

* * *

[bool](class_bool.md#class-bool) **\_capture**(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array), session\_id: [int](class_int.md#class-int)) virtual [🔗](#class-editordebuggerplugin-private-method-capture)

Override this method to process incoming messages. The `session_id` is the ID of the [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) that received the `message`. Use [get\_session()](#class-editordebuggerplugin-method-get-session) to retrieve the session. This method should return `true` if the message is recognized.

* * *

void **\_goto\_script\_line**(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int)) virtual [🔗](#class-editordebuggerplugin-private-method-goto-script-line)

Override this method to be notified when a breakpoint line has been clicked in the debugger breakpoint panel.

* * *

[bool](class_bool.md#class-bool) **\_has\_capture**(capture: [String](class_string.md#class-string)) virtualconst [🔗](#class-editordebuggerplugin-private-method-has-capture)

Override this method to enable receiving messages from the debugger. If `capture` is "my\_message" then messages starting with "my\_message:" will be passed to the [\_capture()](#class-editordebuggerplugin-private-method-capture) method.

* * *

void **\_setup\_session**(session\_id: [int](class_int.md#class-int)) virtual [🔗](#class-editordebuggerplugin-private-method-setup-session)

Override this method to be notified whenever a new [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) is created. Note that the session may be inactive during this stage.

* * *

[EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) **get\_session**(id: [int](class_int.md#class-int)) [🔗](#class-editordebuggerplugin-method-get-session)

Returns the [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) with the given `id`.

* * *

[Array](class_array.md#class-array) **get\_sessions**() [🔗](#class-editordebuggerplugin-method-get-sessions)

Returns an array of [EditorDebuggerSession](class_editordebuggersession.md#class-editordebuggersession) currently available to this debugger plugin.

**Note:** Sessions in the array may be inactive, check their state via [EditorDebuggerSession.is\_active()](class_editordebuggersession.md#class-editordebuggersession-method-is-active).

[Previous](class_editorcontextmenuplugin.md "EditorContextMenuPlugin") [Next](class_editordebuggersession.md "EditorDebuggerSession")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorcontextmenuplugin.md "EditorContextMenuPlugin") [Next](class_editordebuggersession.md "EditorDebuggerSession")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).