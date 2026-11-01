---
title: EngineProfiler — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_engineprofiler.html
crawled_at: "2026-08-13T10:27:01+12:00"
content_hash: 7cc8055e1b5e9eb1598ca1b57cd4f04d2edf79ae9f400d6c4ffc28e8035d007b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EngineProfiler

* * *

# EngineProfiler

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for creating custom profilers.

## Description

This class can be used to implement custom profilers that are able to interact with the engine and editor debugger.

See [EngineDebugger](class_enginedebugger.md#class-enginedebugger) and [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin) for more information.

## Methods

|     |     |
| --- | --- |
| void | [\_add\_frame](#class-engineprofiler-private-method-add-frame)(data: [Array](class_array.md#class-array)) virtual |
| void | [\_tick](#class-engineprofiler-private-method-tick)(frame\_time: [float](class_float.md#class-float), process\_time: [float](class_float.md#class-float), physics\_time: [float](class_float.md#class-float), physics\_frame\_time: [float](class_float.md#class-float)) virtual |
| void | [\_toggle](#class-engineprofiler-private-method-toggle)(enable: [bool](class_bool.md#class-bool), options: [Array](class_array.md#class-array)) virtual |

* * *

## Method Descriptions

void **\_add\_frame**(data: [Array](class_array.md#class-array)) virtual [🔗](#class-engineprofiler-private-method-add-frame)

Called when data is added to profiler using [EngineDebugger.profiler\_add\_frame\_data()](class_enginedebugger.md#class-enginedebugger-method-profiler-add-frame-data).

* * *

void **\_tick**(frame\_time: [float](class_float.md#class-float), process\_time: [float](class_float.md#class-float), physics\_time: [float](class_float.md#class-float), physics\_frame\_time: [float](class_float.md#class-float)) virtual [🔗](#class-engineprofiler-private-method-tick)

Called once every engine iteration when the profiler is active with information about the current frame. All time values are in seconds. Lower values represent faster processing times and are therefore considered better.

* * *

void **\_toggle**(enable: [bool](class_bool.md#class-bool), options: [Array](class_array.md#class-array)) virtual [🔗](#class-engineprofiler-private-method-toggle)

Called when the profiler is enabled/disabled, along with a set of `options`.

[Previous](class_enginedebugger.md "EngineDebugger") [Next](class_expression.md "Expression")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_enginedebugger.md "EngineDebugger") [Next](class_expression.md "Expression")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).