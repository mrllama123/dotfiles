---
title: InputMap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputmap.html
crawled_at: "2026-08-13T10:22:44+12:00"
content_hash: 155ce10343e067b4da6c1612ec80870941f56523100d722224a646a0766a2982
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputMap

* * *

# InputMap

**Inherits:** [Object](class_object.md#class-object)

A singleton that manages all [InputEventAction](class_inputeventaction.md#class-inputeventaction) s.

## Description

Manages all [InputEventAction](class_inputeventaction.md#class-inputeventaction) which can be created/modified from the project settings menu **Project > Project Settings > Input Map** or in code with [add\_action()](#class-inputmap-method-add-action) and [action\_add\_event()](#class-inputmap-method-action-add-event). See [Node.\_input()](class_node.md#class-node-private-method-input).

## Tutorials

- [Using InputEvent: InputMap](../tutorials/inputs/inputevent.md#inputmap)


## Methods

|     |     |
| --- | --- |
| void | [action\_add\_event](#class-inputmap-method-action-add-event)(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) |
| void | [action\_erase\_event](#class-inputmap-method-action-erase-event)(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) |
| void | [action\_erase\_events](#class-inputmap-method-action-erase-events)(action: [StringName](class_stringname.md#class-stringname)) |
| [float](class_float.md#class-float) | [action\_get\_deadzone](#class-inputmap-method-action-get-deadzone)(action: [StringName](class_stringname.md#class-stringname)) |
| [Array](class_array.md#class-array)\[ [InputEvent](class_inputevent.md#class-inputevent)\] | [action\_get\_events](#class-inputmap-method-action-get-events)(action: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [action\_has\_event](#class-inputmap-method-action-has-event)(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) |
| void | [action\_set\_deadzone](#class-inputmap-method-action-set-deadzone)(action: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float)) |
| void | [add\_action](#class-inputmap-method-add-action)(action: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float) = 0.2) |
| void | [erase\_action](#class-inputmap-method-erase-action)(action: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [event\_is\_action](#class-inputmap-method-event-is-action)(event: [InputEvent](class_inputevent.md#class-inputevent), action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [String](class_string.md#class-string) | [get\_action\_description](#class-inputmap-method-get-action-description)(action: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_actions](#class-inputmap-method-get-actions)() |
| [bool](class_bool.md#class-bool) | [has\_action](#class-inputmap-method-has-action)(action: [StringName](class_stringname.md#class-stringname)) const |
| void | [load\_from\_project\_settings](#class-inputmap-method-load-from-project-settings)() |

* * *

## Method Descriptions

void **action\_add\_event**(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-inputmap-method-action-add-event)

Adds an [InputEvent](class_inputevent.md#class-inputevent) to an action. This [InputEvent](class_inputevent.md#class-inputevent) will trigger the action.

* * *

void **action\_erase\_event**(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-inputmap-method-action-erase-event)

Removes an [InputEvent](class_inputevent.md#class-inputevent) from an action.

* * *

void **action\_erase\_events**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-inputmap-method-action-erase-events)

Removes all events from an action.

* * *

[float](class_float.md#class-float) **action\_get\_deadzone**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-inputmap-method-action-get-deadzone)

Returns a deadzone value for the action.

* * *

[Array](class_array.md#class-array)\[ [InputEvent](class_inputevent.md#class-inputevent)\] **action\_get\_events**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-inputmap-method-action-get-events)

Returns an array of [InputEvent](class_inputevent.md#class-inputevent) s associated with a given action.

**Note:** When used in the editor (e.g. a tool script or [EditorPlugin](class_editorplugin.md#class-editorplugin)), this method will return events for the editor action. If you want to access your project's input binds from the editor, read the `input/*` settings from [ProjectSettings](class_projectsettings.md#class-projectsettings).

* * *

[bool](class_bool.md#class-bool) **action\_has\_event**(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-inputmap-method-action-has-event)

Returns `true` if the action has the given [InputEvent](class_inputevent.md#class-inputevent) associated with it.

* * *

void **action\_set\_deadzone**(action: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float)) [🔗](#class-inputmap-method-action-set-deadzone)

Sets a deadzone value for the action.

* * *

void **add\_action**(action: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float) = 0.2) [🔗](#class-inputmap-method-add-action)

Adds an empty action to the **InputMap** with a configurable `deadzone`.

An [InputEvent](class_inputevent.md#class-inputevent) can then be added to this action with [action\_add\_event()](#class-inputmap-method-action-add-event).

* * *

void **erase\_action**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-inputmap-method-erase-action)

Removes an action from the **InputMap**.

* * *

[bool](class_bool.md#class-bool) **event\_is\_action**(event: [InputEvent](class_inputevent.md#class-inputevent), action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-inputmap-method-event-is-action)

Returns `true` if the given event is part of an existing action. This method ignores keyboard modifiers if the given [InputEvent](class_inputevent.md#class-inputevent) is not pressed (for proper release detection). See [action\_has\_event()](#class-inputmap-method-action-has-event) if you don't want this behavior.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

* * *

[String](class_string.md#class-string) **get\_action\_description**(action: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-inputmap-method-get-action-description)

Returns the human-readable description of the given action.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_actions**() [🔗](#class-inputmap-method-get-actions)

Returns an array of all actions in the **InputMap**.

* * *

[bool](class_bool.md#class-bool) **has\_action**(action: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-inputmap-method-has-action)

Returns `true` if the **InputMap** has a registered action with the given name.

* * *

void **load\_from\_project\_settings**() [🔗](#class-inputmap-method-load-from-project-settings)

Clears all [InputEventAction](class_inputeventaction.md#class-inputeventaction) in the **InputMap** and load it anew from [ProjectSettings](class_projectsettings.md#class-projectsettings).

[Previous](class_input.md "Input") [Next](class_intervaltweener.md "IntervalTweener")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_input.md "Input") [Next](class_intervaltweener.md "IntervalTweener")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).