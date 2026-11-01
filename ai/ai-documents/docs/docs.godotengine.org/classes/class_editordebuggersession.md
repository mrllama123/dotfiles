---
title: EditorDebuggerSession — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editordebuggersession.html
crawled_at: "2026-08-13T10:28:23+12:00"
content_hash: eccc88f784881bb41c1d2d69cdff88537f4c43aa13c5803689bd495b5e585c60
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorDebuggerSession

* * *

# EditorDebuggerSession

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A class to interact with the editor debugger.

## Description

This class cannot be directly instantiated and must be retrieved via an [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin).

You can add tabs to the session UI via [add\_session\_tab()](#class-editordebuggersession-method-add-session-tab), send messages via [send\_message()](#class-editordebuggersession-method-send-message), and toggle [EngineProfiler](class_engineprofiler.md#class-engineprofiler) s via [toggle\_profiler()](#class-editordebuggersession-method-toggle-profiler).

## Methods

|     |     |
| --- | --- |
| void | [add\_session\_tab](#class-editordebuggersession-method-add-session-tab)(control: [Control](class_control.md#class-control)) |
| [bool](class_bool.md#class-bool) | [is\_active](#class-editordebuggersession-method-is-active)() |
| [bool](class_bool.md#class-bool) | [is\_breaked](#class-editordebuggersession-method-is-breaked)() |
| [bool](class_bool.md#class-bool) | [is\_debuggable](#class-editordebuggersession-method-is-debuggable)() |
| void | [remove\_session\_tab](#class-editordebuggersession-method-remove-session-tab)(control: [Control](class_control.md#class-control)) |
| void | [send\_message](#class-editordebuggersession-method-send-message)(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array) = \[\]) |
| void | [set\_breakpoint](#class-editordebuggersession-method-set-breakpoint)(path: [String](class_string.md#class-string), line: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) |
| void | [toggle\_profiler](#class-editordebuggersession-method-toggle-profiler)(profiler: [String](class_string.md#class-string), enable: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array) = \[\]) |

* * *

## Signals

**breaked**(can\_debug: [bool](class_bool.md#class-bool)) [🔗](#class-editordebuggersession-signal-breaked)

Emitted when the attached remote instance enters a break state. If `can_debug` is `true`, the remote instance will enter the debug loop.

* * *

**continued**() [🔗](#class-editordebuggersession-signal-continued)

Emitted when the attached remote instance exits a break state.

* * *

**started**() [🔗](#class-editordebuggersession-signal-started)

Emitted when a remote instance is attached to this session (i.e. the session becomes active).

* * *

**stopped**() [🔗](#class-editordebuggersession-signal-stopped)

Emitted when a remote instance is detached from this session (i.e. the session becomes inactive).

* * *

## Method Descriptions

void **add\_session\_tab**(control: [Control](class_control.md#class-control)) [🔗](#class-editordebuggersession-method-add-session-tab)

Adds the given `control` to the debug session UI in the debugger bottom panel. The `control`'s node name will be used as the tab title.

* * *

[bool](class_bool.md#class-bool) **is\_active**() [🔗](#class-editordebuggersession-method-is-active)

Returns `true` if the debug session is currently attached to a remote instance.

* * *

[bool](class_bool.md#class-bool) **is\_breaked**() [🔗](#class-editordebuggersession-method-is-breaked)

Returns `true` if the attached remote instance is currently in the debug loop.

* * *

[bool](class_bool.md#class-bool) **is\_debuggable**() [🔗](#class-editordebuggersession-method-is-debuggable)

Returns `true` if the attached remote instance can be debugged.

* * *

void **remove\_session\_tab**(control: [Control](class_control.md#class-control)) [🔗](#class-editordebuggersession-method-remove-session-tab)

Removes the given `control` from the debug session UI in the debugger bottom panel.

* * *

void **send\_message**(message: [String](class_string.md#class-string), data: [Array](class_array.md#class-array) = \[\]) [🔗](#class-editordebuggersession-method-send-message)

Sends the given `message` to the attached remote instance, optionally passing additionally `data`. See [EngineDebugger](class_enginedebugger.md#class-enginedebugger) for how to retrieve those messages.

* * *

void **set\_breakpoint**(path: [String](class_string.md#class-string), line: [int](class_int.md#class-int), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-editordebuggersession-method-set-breakpoint)

Enables or disables a specific breakpoint based on `enabled`, updating the Editor Breakpoint Panel accordingly.

* * *

void **toggle\_profiler**(profiler: [String](class_string.md#class-string), enable: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array) = \[\]) [🔗](#class-editordebuggersession-method-toggle-profiler)

Toggle the given `profiler` on the attached remote instance, optionally passing additionally `data`. See [EngineProfiler](class_engineprofiler.md#class-engineprofiler) for more details.

[Previous](class_editordebuggerplugin.md "EditorDebuggerPlugin") [Next](class_editorexportplatform.md "EditorExportPlatform")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editordebuggerplugin.md "EditorDebuggerPlugin") [Next](class_editorexportplatform.md "EditorExportPlatform")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).