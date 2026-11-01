---
title: Logger — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_logger.html
crawled_at: "2026-08-13T10:27:42+12:00"
content_hash: 3b7984d588fed52022da2320446cd84769ff875a834f6c19cf5fec0bcdd7067a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Logger

* * *

# Logger

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Custom logger to receive messages from the internal error/warning stream.

## Description

Custom logger to receive messages from the internal error/warning stream. Loggers are registered via [OS.add\_logger()](class_os.md#class-os-method-add-logger).

## Methods

|     |     |
| --- | --- |
| void | [\_log\_error](#class-logger-private-method-log-error)(function: [String](class_string.md#class-string), file: [String](class_string.md#class-string), line: [int](class_int.md#class-int), code: [String](class_string.md#class-string), rationale: [String](class_string.md#class-string), editor\_notify: [bool](class_bool.md#class-bool), error\_type: [int](class_int.md#class-int), script\_backtraces: [Array](class_array.md#class-array)\[ [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace)\]) virtual |
| void | [\_log\_message](#class-logger-private-method-log-message)(message: [String](class_string.md#class-string), error: [bool](class_bool.md#class-bool)) virtual |

* * *

## Enumerations

enum **ErrorType**: [🔗](#enum-logger-errortype)

[ErrorType](#enum-logger-errortype) **ERROR\_TYPE\_ERROR** = `0`

The message received is an error.

[ErrorType](#enum-logger-errortype) **ERROR\_TYPE\_WARNING** = `1`

The message received is a warning.

[ErrorType](#enum-logger-errortype) **ERROR\_TYPE\_SCRIPT** = `2`

The message received is a script error.

[ErrorType](#enum-logger-errortype) **ERROR\_TYPE\_SHADER** = `3`

The message received is a shader error.

* * *

## Method Descriptions

void **\_log\_error**(function: [String](class_string.md#class-string), file: [String](class_string.md#class-string), line: [int](class_int.md#class-int), code: [String](class_string.md#class-string), rationale: [String](class_string.md#class-string), editor\_notify: [bool](class_bool.md#class-bool), error\_type: [int](class_int.md#class-int), script\_backtraces: [Array](class_array.md#class-array)\[ [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace)\]) virtual [🔗](#class-logger-private-method-log-error)

Called when an error is logged. The error provides the `function`, `file`, and `line` that it originated from, as well as either the `code` that generated the error or a `rationale`.

The type of error provided by `error_type` is described in the [ErrorType](#enum-logger-errortype) enumeration.

Additionally, `script_backtraces` provides backtraces for each of the script languages. These will only contain stack frames in editor builds and debug builds by default. To enable them for release builds as well, you need to enable [ProjectSettings.debug/settings/gdscript/always\_track\_call\_stacks](class_projectsettings.md#class-projectsettings-property-debug-settings-gdscript-always-track-call-stacks).

**Warning:** This function may be called from multiple different threads, so you may need to do your own locking.

**Note:** `script_backtraces` will not contain any captured variables, due to its prohibitively high cost. To get those you will need to capture the backtraces yourself, from within the **Logger** virtual methods, using [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces).

* * *

void **\_log\_message**(message: [String](class_string.md#class-string), error: [bool](class_bool.md#class-bool)) virtual [🔗](#class-logger-private-method-log-message)

Called when a message is logged. If `error` is `true`, then this message was meant to be sent to `stderr`.

**Warning:** This function may be called from multiple different threads, so you may need to do your own locking.

[Previous](class_lightmapperrd.md "LightmapperRD") [Next](class_mainloop.md "MainLoop")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightmapperrd.md "LightmapperRD") [Next](class_mainloop.md "MainLoop")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).