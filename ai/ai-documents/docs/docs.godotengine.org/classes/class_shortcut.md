---
title: Shortcut — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shortcut.html
crawled_at: "2026-08-13T10:39:27+12:00"
content_hash: e585f660e8212ac9210c6494b4d7dd1527a1db5cd4a060d48e9d7d6606473311
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Shortcut

* * *

# Shortcut

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A shortcut for binding input.

## Description

Shortcuts (also known as hotkeys) are containers of [InputEvent](class_inputevent.md#class-inputevent) resources. They are commonly used to interact with a [Control](class_control.md#class-control) element from an [InputEvent](class_inputevent.md#class-inputevent).

One shortcut can contain multiple [InputEvent](class_inputevent.md#class-inputevent) resources, making it possible to trigger one action with multiple different inputs.

**Example:** Capture the `Ctrl + S` shortcut using a **Shortcut** resource:

GDScriptC#

```
extends Node

var save_shortcut = Shortcut.new()
func _ready():
    var key_event = InputEventKey.new()
    key_event.keycode = KEY_S
    key_event.ctrl_pressed = true
    key_event.command_or_control_autoremap = true # Swaps Ctrl for Command on Mac.
    save_shortcut.events = [key_event]

func _input(event):
    if save_shortcut.matches_event(event) and event.is_pressed() and not event.is_echo():
        print("Save shortcut pressed!")
        get_viewport().set_input_as_handled()

```

```
using Godot;

public partial class MyNode : Node
{
    private readonly Shortcut _saveShortcut = new Shortcut();

    public override void _Ready()
    {
        InputEventKey keyEvent = new InputEventKey
        {
            Keycode = Key.S,
            CtrlPressed = true,
            CommandOrControlAutoremap = true, // Swaps Ctrl for Command on Mac.
        };

        _saveShortcut.Events = [keyEvent];
    }

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey keyEvent &&
            _saveShortcut.MatchesEvent(@event) &&
            keyEvent.Pressed && !keyEvent.Echo)
        {
            GD.Print("Save shortcut pressed!");
            GetViewport().SetInputAsHandled();
        }
    }
}

```

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array) | [events](#class-shortcut-property-events) | `[]` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_as\_text](#class-shortcut-method-get-as-text)() const |
| [bool](class_bool.md#class-bool) | [has\_valid\_event](#class-shortcut-method-has-valid-event)() const |
| [bool](class_bool.md#class-bool) | [matches\_event](#class-shortcut-method-matches-event)(event: [InputEvent](class_inputevent.md#class-inputevent)) const |

* * *

## Property Descriptions

[Array](class_array.md#class-array) **events** = `[]` [🔗](#class-shortcut-property-events)

- void **set\_events**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_events**()


The shortcut's [InputEvent](class_inputevent.md#class-inputevent) array.

Generally the [InputEvent](class_inputevent.md#class-inputevent) used is an [InputEventKey](class_inputeventkey.md#class-inputeventkey), though it can be any [InputEvent](class_inputevent.md#class-inputevent), including an [InputEventAction](class_inputeventaction.md#class-inputeventaction).

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_as\_text**() const [🔗](#class-shortcut-method-get-as-text)

Returns the shortcut's first valid [InputEvent](class_inputevent.md#class-inputevent) as a [String](class_string.md#class-string).

* * *

[bool](class_bool.md#class-bool) **has\_valid\_event**() const [🔗](#class-shortcut-method-has-valid-event)

Returns whether [events](#class-shortcut-property-events) contains an [InputEvent](class_inputevent.md#class-inputevent) which is valid.

* * *

[bool](class_bool.md#class-bool) **matches\_event**(event: [InputEvent](class_inputevent.md#class-inputevent)) const [🔗](#class-shortcut-method-matches-event)

Returns whether any [InputEvent](class_inputevent.md#class-inputevent) in [events](#class-shortcut-property-events) equals `event`. This uses [InputEvent.is\_match()](class_inputevent.md#class-inputevent-method-is-match) to compare events.

[Previous](class_shape3d.md "Shape3D") [Next](class_skeletonmodification2d.md "SkeletonModification2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shape3d.md "Shape3D") [Next](class_skeletonmodification2d.md "SkeletonModification2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).