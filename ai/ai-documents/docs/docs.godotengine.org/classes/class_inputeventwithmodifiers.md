---
title: InputEventWithModifiers — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventwithmodifiers.html
crawled_at: "2026-08-13T10:27:56+12:00"
content_hash: 218e47da96fed5b3a2914f1595e3fc28c18b4fcb091dbc8ff6242988fe803a03
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventWithModifiers

* * *

# InputEventWithModifiers

**Inherits:** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [InputEventGesture](class_inputeventgesture.md#class-inputeventgesture), [InputEventKey](class_inputeventkey.md#class-inputeventkey), [InputEventMouse](class_inputeventmouse.md#class-inputeventmouse)

Abstract base class for input events affected by modifier keys like `Shift` and `Alt`.

## Description

Stores information about mouse, keyboard, and touch gesture input events. This includes information about which modifier keys are pressed, such as `Shift` or `Alt`. See [Node.\_input()](class_node.md#class-node-private-method-input).

**Note:** Modifier keys are considered modifiers only when used in combination with another key. As a result, their corresponding member variables, such as [ctrl\_pressed](#class-inputeventwithmodifiers-property-ctrl-pressed), will return `false` if the key is pressed on its own.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [alt\_pressed](#class-inputeventwithmodifiers-property-alt-pressed) | `false` |
| [bool](class_bool.md#class-bool) | [command\_or\_control\_autoremap](#class-inputeventwithmodifiers-property-command-or-control-autoremap) | `false` |
| [bool](class_bool.md#class-bool) | [ctrl\_pressed](#class-inputeventwithmodifiers-property-ctrl-pressed) | `false` |
| [bool](class_bool.md#class-bool) | [meta\_pressed](#class-inputeventwithmodifiers-property-meta-pressed) | `false` |
| [bool](class_bool.md#class-bool) | [shift\_pressed](#class-inputeventwithmodifiers-property-shift-pressed) | `false` |

## Methods

|     |     |
| --- | --- |
| BitField\[ [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask)\] | [get\_modifiers\_mask](#class-inputeventwithmodifiers-method-get-modifiers-mask)() const |
| [bool](class_bool.md#class-bool) | [is\_command\_or\_control\_pressed](#class-inputeventwithmodifiers-method-is-command-or-control-pressed)() const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **alt\_pressed** = `false` [🔗](#class-inputeventwithmodifiers-property-alt-pressed)

- void **set\_alt\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_alt\_pressed**()


State of the `Alt` modifier.

* * *

[bool](class_bool.md#class-bool) **command\_or\_control\_autoremap** = `false` [🔗](#class-inputeventwithmodifiers-property-command-or-control-autoremap)

- void **set\_command\_or\_control\_autoremap**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_command\_or\_control\_autoremap**()


Automatically use `Meta` ( `Cmd`) on macOS and `Ctrl` on other platforms. If `true`, [ctrl\_pressed](#class-inputeventwithmodifiers-property-ctrl-pressed) and [meta\_pressed](#class-inputeventwithmodifiers-property-meta-pressed) cannot be set.

* * *

[bool](class_bool.md#class-bool) **ctrl\_pressed** = `false` [🔗](#class-inputeventwithmodifiers-property-ctrl-pressed)

- void **set\_ctrl\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ctrl\_pressed**()


State of the `Ctrl` modifier.

* * *

[bool](class_bool.md#class-bool) **meta\_pressed** = `false` [🔗](#class-inputeventwithmodifiers-property-meta-pressed)

- void **set\_meta\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_meta\_pressed**()


State of the `Meta` modifier. On Windows and Linux, this represents the Windows key (sometimes called "meta" or "super" on Linux). On macOS, this represents the Command key.

* * *

[bool](class_bool.md#class-bool) **shift\_pressed** = `false` [🔗](#class-inputeventwithmodifiers-property-shift-pressed)

- void **set\_shift\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shift\_pressed**()


State of the `Shift` modifier.

* * *

## Method Descriptions

BitField\[ [KeyModifierMask](class_@globalscope.md#enum-globalscope-keymodifiermask)\] **get\_modifiers\_mask**() const [🔗](#class-inputeventwithmodifiers-method-get-modifiers-mask)

Returns the keycode combination of modifier keys.

* * *

[bool](class_bool.md#class-bool) **is\_command\_or\_control\_pressed**() const [🔗](#class-inputeventwithmodifiers-method-is-command-or-control-pressed)

On macOS, returns `true` if `Meta` ( `Cmd`) is pressed.

On other platforms, returns `true` if `Ctrl` is pressed.

[Previous](class_inputeventshortcut.md "InputEventShortcut") [Next](class_json.md "JSON")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventshortcut.md "InputEventShortcut") [Next](class_json.md "JSON")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).