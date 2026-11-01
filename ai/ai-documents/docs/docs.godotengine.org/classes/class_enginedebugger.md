---
title: EngineDebugger — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_enginedebugger.html
crawled_at: "2026-08-13T10:27:49+12:00"
content_hash: 585b5025822b9795cce0fb04209003cbeab17ceea35823f4ac1f37e6e6e85d11
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EngineDebugger

* * *

# EngineDebugger

**Inherits:** [Object](class_object.md#class-object)

Exposes the internal debugger.

## Description

**EngineDebugger** handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.

## Methods

|     |     |
| --- | --- |
| void | [clear\_breakpoints](#class-enginedebugger-method-clear-breakpoints)() |
| void | [debug](#class-enginedebugger-method-debug)(can\_continue: [bool](class_bool.md#class-bool) = true, is\_error\_breakpoint: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [get\_depth](#class-enginedebugger-method-get-depth)() const |
| [int](class_int.md#class-int) | [get\_lines\_left](#class-enginedebugger-method-get-lines-left)() const |
| [bool](class_bool.md#class-bool) | [has\_capture](#class-enginedebugger-method-has-capture)(name: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [has\_profiler](#class-enginedebugger-method-has-profiler)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [insert\_breakpoint](#class-enginedebugger-method-insert-breakpoint)(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [is\_active](#class-enginedebugger-method-is-active)() |
| [bool](class_bool.md#class-bool) | [is\_breakpoint](#class-enginedebugger-method-is-breakpoint)(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_profiling](#class-enginedebugger-method-is-profiling)(name: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [is\_skipping\_breakpoints](#class-enginedebugger-method-is-skipping-breakpoints)() const |
| void | [line\_poll](#class-enginedebugger-method-line-poll)() |
| void | [profiler\_add\_frame\_data](#class-enginedebugger-method-profiler-add-frame-data)(name: [StringName](class_stringname.md#class-stringname), data: [Array](class_array.md#class-array)) |
| void | [profiler\_enable](#class-enginedebugger-method-profiler-enable)(name: [StringName](class_stringname.md#class-stringname), enable: [bool](class_bool.md#class-bool), arguments: [Array](class_array.md#class-array) = \[\]) |
| void | [register\_message\_capture](#class-enginedebugger-method-register-message-capture)(name: [StringName](class_stringname.md#class-stringname), callable: [Callable](class_callable.md#class-callable)) |
| void | [register\_profiler](#class-enginedebugger-method-register-profiler)(name: [StringName](class_stringname.md#class-stringname), profiler: [EngineProfiler](class_engineprofiler.md#class-engineprofiler)) |
| void | [remove\_breakpoint](#class-enginedebugger-method-remove-breakpoint)(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) |
| void | [script\_debug](#class-enginedebugger-method-script-debug)(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage), can\_continue: [bool](class_bool.md#class-bool) = true, is\_error\_breakpoint: [bool](class_bool.md#class-bool) = false) |
| void | [send\_message](#class-enginedebugger-method-send-message)(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array)) |
| void | [set\_depth](#class-enginedebugger-method-set-depth)(depth: [int](class_int.md#class-int)) |
| void | [set\_lines\_left](#class-enginedebugger-method-set-lines-left)(lines: [int](class_int.md#class-int)) |
| void | [unregister\_message\_capture](#class-enginedebugger-method-unregister-message-capture)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [unregister\_profiler](#class-enginedebugger-method-unregister-profiler)(name: [StringName](class_stringname.md#class-stringname)) |

* * *

## Method Descriptions

void **clear\_breakpoints**() [🔗](#class-enginedebugger-method-clear-breakpoints)

Clears all breakpoints.

* * *

void **debug**(can\_continue: [bool](class_bool.md#class-bool) = true, is\_error\_breakpoint: [bool](class_bool.md#class-bool) = false) [🔗](#class-enginedebugger-method-debug)

Starts a debug break in script execution, optionally specifying whether the program can continue based on `can_continue` and whether the break was due to a breakpoint.

* * *

[int](class_int.md#class-int) **get\_depth**() const [🔗](#class-enginedebugger-method-get-depth)

**Experimental:** This method may be changed or removed in future versions.

Returns the current debug depth.

* * *

[int](class_int.md#class-int) **get\_lines\_left**() const [🔗](#class-enginedebugger-method-get-lines-left)

**Experimental:** This method may be changed or removed in future versions.

Returns the number of lines that remain.

* * *

[bool](class_bool.md#class-bool) **has\_capture**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-has-capture)

Returns `true` if a capture with the given name is present otherwise `false`.

* * *

[bool](class_bool.md#class-bool) **has\_profiler**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-has-profiler)

Returns `true` if a profiler with the given name is present otherwise `false`.

* * *

void **insert\_breakpoint**(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-insert-breakpoint)

Inserts a new breakpoint with the given `source` and `line`.

* * *

[bool](class_bool.md#class-bool) **is\_active**() [🔗](#class-enginedebugger-method-is-active)

Returns `true` if the debugger is active otherwise `false`.

* * *

[bool](class_bool.md#class-bool) **is\_breakpoint**(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-enginedebugger-method-is-breakpoint)

Returns `true` if the given `source` and `line` represent an existing breakpoint.

* * *

[bool](class_bool.md#class-bool) **is\_profiling**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-is-profiling)

Returns `true` if a profiler with the given name is present and active otherwise `false`.

* * *

[bool](class_bool.md#class-bool) **is\_skipping\_breakpoints**() const [🔗](#class-enginedebugger-method-is-skipping-breakpoints)

Returns `true` if the debugger is skipping breakpoints otherwise `false`.

* * *

void **line\_poll**() [🔗](#class-enginedebugger-method-line-poll)

Forces a processing loop of debugger events. The purpose of this method is just processing events every now and then when the script might get too busy, so that bugs like infinite loops can be caught.

* * *

void **profiler\_add\_frame\_data**(name: [StringName](class_stringname.md#class-stringname), data: [Array](class_array.md#class-array)) [🔗](#class-enginedebugger-method-profiler-add-frame-data)

Calls the `add` callable of the profiler with given `name` and `data`.

* * *

void **profiler\_enable**(name: [StringName](class_stringname.md#class-stringname), enable: [bool](class_bool.md#class-bool), arguments: [Array](class_array.md#class-array) = \[\]) [🔗](#class-enginedebugger-method-profiler-enable)

Calls the `toggle` callable of the profiler with given `name` and `arguments`. Enables/Disables the same profiler depending on `enable` argument.

* * *

void **register\_message\_capture**(name: [StringName](class_stringname.md#class-stringname), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-enginedebugger-method-register-message-capture)

Registers a message capture with given `name`. If `name` is "my\_message" then messages starting with "my\_message:" will be called with the given callable.

The callable must accept a message string and a data array as argument. The callable should return `true` if the message is recognized.

**Note:** The callable will receive the message with the prefix stripped, unlike [EditorDebuggerPlugin.\_capture()](class_editordebuggerplugin.md#class-editordebuggerplugin-private-method-capture). See the [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin) description for an example.

* * *

void **register\_profiler**(name: [StringName](class_stringname.md#class-stringname), profiler: [EngineProfiler](class_engineprofiler.md#class-engineprofiler)) [🔗](#class-enginedebugger-method-register-profiler)

Registers a profiler with the given `name`. See [EngineProfiler](class_engineprofiler.md#class-engineprofiler) for more information.

* * *

void **remove\_breakpoint**(line: [int](class_int.md#class-int), source: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-remove-breakpoint)

Removes a breakpoint with the given `source` and `line`.

* * *

void **script\_debug**(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage), can\_continue: [bool](class_bool.md#class-bool) = true, is\_error\_breakpoint: [bool](class_bool.md#class-bool) = false) [🔗](#class-enginedebugger-method-script-debug)

Starts a debug break in script execution, optionally specifying whether the program can continue based on `can_continue` and whether the break was due to a breakpoint.

* * *

void **send\_message**(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array)) [🔗](#class-enginedebugger-method-send-message)

Sends a message with given `message` and `data` array.

* * *

void **set\_depth**(depth: [int](class_int.md#class-int)) [🔗](#class-enginedebugger-method-set-depth)

**Experimental:** This method may be changed or removed in future versions.

Sets the current debugging depth.

* * *

void **set\_lines\_left**(lines: [int](class_int.md#class-int)) [🔗](#class-enginedebugger-method-set-lines-left)

**Experimental:** This method may be changed or removed in future versions.

Sets the current debugging lines that remain.

* * *

void **unregister\_message\_capture**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-unregister-message-capture)

Unregisters the message capture with given `name`.

* * *

void **unregister\_profiler**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-enginedebugger-method-unregister-profiler)

Unregisters a profiler with given `name`.

[Previous](class_engine.md "Engine") [Next](class_engineprofiler.md "EngineProfiler")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_engine.md "Engine") [Next](class_engineprofiler.md "EngineProfiler")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).