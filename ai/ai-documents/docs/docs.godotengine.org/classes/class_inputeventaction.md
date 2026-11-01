---
title: InputEventAction — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventaction.html
crawled_at: "2026-08-13T10:36:58+12:00"
content_hash: 4f8d2f8f791ebab832218b32080eb8ca087eafd84d6892d3bfade25e5cb8971f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventAction

* * *

# InputEventAction

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An input event type for actions.

## Description

Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the [InputMap](class_inputmap.md#class-inputmap) class.

**Note:** Unlike the other [InputEvent](class_inputevent.md#class-inputevent) subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with [Input.parse\_input\_event()](class_input.md#class-input-method-parse-input-event), which are then received in [Node.\_input()](class_node.md#class-node-private-method-input). To check if a physical event matches an action from the Input Map, use [InputEvent.is\_action()](class_inputevent.md#class-inputevent-method-is-action) and [InputEvent.is\_action\_pressed()](class_inputevent.md#class-inputevent-method-is-action-pressed).

## Tutorials

- [Using InputEvent: Actions](../tutorials/inputs/inputevent.md#actions)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [StringName](class_stringname.md#class-stringname) | [action](#class-inputeventaction-property-action) | `&""` |
| [int](class_int.md#class-int) | [event\_index](#class-inputeventaction-property-event-index) | `-1` |
| [bool](class_bool.md#class-bool) | [pressed](#class-inputeventaction-property-pressed) | `false` |
| [float](class_float.md#class-float) | [strength](#class-inputeventaction-property-strength) | `1.0` |

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **action** = `&""` [🔗](#class-inputeventaction-property-action)

- void **set\_action**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_action**()


The action's name. This is usually the name of an existing action in the [InputMap](class_inputmap.md#class-inputmap) which you want this custom event to match.

* * *

[int](class_int.md#class-int) **event\_index** = `-1` [🔗](#class-inputeventaction-property-event-index)

- void **set\_event\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_event\_index**()


The real event index in action this event corresponds to (from events defined for this action in the [InputMap](class_inputmap.md#class-inputmap)). If `-1`, a unique ID will be used and actions pressed with this ID will need to be released with another **InputEventAction**.

* * *

[bool](class_bool.md#class-bool) **pressed** = `false` [🔗](#class-inputeventaction-property-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the action's state is pressed. If `false`, the action's state is released.

* * *

[float](class_float.md#class-float) **strength** = `1.0` [🔗](#class-inputeventaction-property-strength)

- void **set\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_strength**()


The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is `false`. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.

[Previous](class_inputevent.md "InputEvent") [Next](class_inputeventfromwindow.md "InputEventFromWindow")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputevent.md "InputEvent") [Next](class_inputeventfromwindow.md "InputEventFromWindow")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).