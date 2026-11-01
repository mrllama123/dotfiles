---
title: ScriptBacktrace — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scriptbacktrace.html
crawled_at: "2026-08-13T10:28:22+12:00"
content_hash: 5f3b702b169d5cb86f5aaba70d50220005b496e208ac030640e38858ea045503
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptBacktrace

* * *

# ScriptBacktrace

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A captured backtrace of a specific script language.

## Description

**ScriptBacktrace** holds an already captured backtrace of a specific script language, such as GDScript or C#, which are captured using [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces).

See [ProjectSettings.debug/settings/gdscript/always\_track\_call\_stacks](class_projectsettings.md#class-projectsettings-property-debug-settings-gdscript-always-track-call-stacks) and [ProjectSettings.debug/settings/gdscript/always\_track\_local\_variables](class_projectsettings.md#class-projectsettings-property-debug-settings-gdscript-always-track-local-variables) for ways of controlling the contents of this class.

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [format](#class-scriptbacktrace-method-format)(indent\_all: [int](class_int.md#class-int) = 0, indent\_frames: [int](class_int.md#class-int) = 4) const |
| [int](class_int.md#class-int) | [get\_frame\_count](#class-scriptbacktrace-method-get-frame-count)() const |
| [String](class_string.md#class-string) | [get\_frame\_file](#class-scriptbacktrace-method-get-frame-file)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_frame\_function](#class-scriptbacktrace-method-get-frame-function)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_frame\_line](#class-scriptbacktrace-method-get-frame-line)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_global\_variable\_count](#class-scriptbacktrace-method-get-global-variable-count)() const |
| [String](class_string.md#class-string) | [get\_global\_variable\_name](#class-scriptbacktrace-method-get-global-variable-name)(variable\_index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_global\_variable\_value](#class-scriptbacktrace-method-get-global-variable-value)(variable\_index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_language\_name](#class-scriptbacktrace-method-get-language-name)() const |
| [int](class_int.md#class-int) | [get\_local\_variable\_count](#class-scriptbacktrace-method-get-local-variable-count)(frame\_index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_local\_variable\_name](#class-scriptbacktrace-method-get-local-variable-name)(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_local\_variable\_value](#class-scriptbacktrace-method-get-local-variable-value)(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_member\_variable\_count](#class-scriptbacktrace-method-get-member-variable-count)(frame\_index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_member\_variable\_name](#class-scriptbacktrace-method-get-member-variable-name)(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_member\_variable\_value](#class-scriptbacktrace-method-get-member-variable-value)(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-scriptbacktrace-method-is-empty)() const |

* * *

## Method Descriptions

[String](class_string.md#class-string) **format**(indent\_all: [int](class_int.md#class-int) = 0, indent\_frames: [int](class_int.md#class-int) = 4) const [🔗](#class-scriptbacktrace-method-format)

Converts the backtrace to a [String](class_string.md#class-string), where the entire string will be indented by `indent_all` number of spaces, and the individual stack frames will be additionally indented by `indent_frames` number of spaces.

**Note:** Calling [Object.to\_string()](class_object.md#class-object-method-to-string) on a **ScriptBacktrace** will produce the same output as calling [format()](#class-scriptbacktrace-method-format) with all parameters left at their default values.

* * *

[int](class_int.md#class-int) **get\_frame\_count**() const [🔗](#class-scriptbacktrace-method-get-frame-count)

Returns the number of stack frames in the backtrace.

* * *

[String](class_string.md#class-string) **get\_frame\_file**(index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-frame-file)

Returns the file name of the call site represented by the stack frame at the specified index.

* * *

[String](class_string.md#class-string) **get\_frame\_function**(index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-frame-function)

Returns the name of the function called at the stack frame at the specified index.

* * *

[int](class_int.md#class-int) **get\_frame\_line**(index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-frame-line)

Returns the line number of the call site represented by the stack frame at the specified index.

* * *

[int](class_int.md#class-int) **get\_global\_variable\_count**() const [🔗](#class-scriptbacktrace-method-get-global-variable-count)

Returns the number of global variables (e.g. autoload singletons) in the backtrace.

**Note:** This will be non-zero only if the `include_variables` parameter was `true` when capturing the backtrace with [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces).

* * *

[String](class_string.md#class-string) **get\_global\_variable\_name**(variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-global-variable-name)

Returns the name of the global variable at the specified index.

* * *

[Variant](class_variant.md#class-variant) **get\_global\_variable\_value**(variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-global-variable-value)

Returns the value of the global variable at the specified index.

**Warning:** With GDScript backtraces, the returned [Variant](class_variant.md#class-variant) will be the variable's actual value, including any object references. This means that storing the returned [Variant](class_variant.md#class-variant) will prevent any such object from being deallocated, so it's generally recommended not to do so.

* * *

[String](class_string.md#class-string) **get\_language\_name**() const [🔗](#class-scriptbacktrace-method-get-language-name)

Returns the name of the script language that this backtrace was captured from.

* * *

[int](class_int.md#class-int) **get\_local\_variable\_count**(frame\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-local-variable-count)

Returns the number of local variables in the stack frame at the specified index.

**Note:** This will be non-zero only if the `include_variables` parameter was `true` when capturing the backtrace with [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces).

* * *

[String](class_string.md#class-string) **get\_local\_variable\_name**(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-local-variable-name)

Returns the name of the local variable at the specified `variable_index` in the stack frame at the specified `frame_index`.

* * *

[Variant](class_variant.md#class-variant) **get\_local\_variable\_value**(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-local-variable-value)

Returns the value of the local variable at the specified `variable_index` in the stack frame at the specified `frame_index`.

**Warning:** With GDScript backtraces, the returned [Variant](class_variant.md#class-variant) will be the variable's actual value, including any object references. This means that storing the returned [Variant](class_variant.md#class-variant) will prevent any such object from being deallocated, so it's generally recommended not to do so.

* * *

[int](class_int.md#class-int) **get\_member\_variable\_count**(frame\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-member-variable-count)

Returns the number of member variables in the stack frame at the specified index.

**Note:** This will be non-zero only if the `include_variables` parameter was `true` when capturing the backtrace with [Engine.capture\_script\_backtraces()](class_engine.md#class-engine-method-capture-script-backtraces).

* * *

[String](class_string.md#class-string) **get\_member\_variable\_name**(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-member-variable-name)

Returns the name of the member variable at the specified `variable_index` in the stack frame at the specified `frame_index`.

* * *

[Variant](class_variant.md#class-variant) **get\_member\_variable\_value**(frame\_index: [int](class_int.md#class-int), variable\_index: [int](class_int.md#class-int)) const [🔗](#class-scriptbacktrace-method-get-member-variable-value)

Returns the value of the member variable at the specified `variable_index` in the stack frame at the specified `frame_index`.

**Warning:** With GDScript backtraces, the returned [Variant](class_variant.md#class-variant) will be the variable's actual value, including any object references. This means that storing the returned [Variant](class_variant.md#class-variant) will prevent any such object from being deallocated, so it's generally recommended not to do so.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-scriptbacktrace-method-is-empty)

Returns `true` if the backtrace has no stack frames.

[Previous](class_scenetreetimer.md "SceneTreeTimer") [Next](class_scriptlanguage.md "ScriptLanguage")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scenetreetimer.md "SceneTreeTimer") [Next](class_scriptlanguage.md "ScriptLanguage")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).