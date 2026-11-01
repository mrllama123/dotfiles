---
title: InputEventShortcut — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventshortcut.html
crawled_at: "2026-08-13T10:40:49+12:00"
content_hash: 36cf3d79c0475c933fa8f53c74942c5680f7bafee96f794bba07a41b8de2bf8d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventShortcut

* * *

# InputEventShortcut

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a triggered keyboard [Shortcut](class_shortcut.md#class-shortcut).

## Description

InputEventShortcut is a special event that can be received in [Node.\_input()](class_node.md#class-node-private-method-input), [Node.\_shortcut\_input()](class_node.md#class-node-private-method-shortcut-input), and [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input). It is typically sent by the editor's Command Palette to trigger actions, but can also be sent manually using [Viewport.push\_input()](class_viewport.md#class-viewport-method-push-input).

## Properties

|     |     |
| --- | --- |
| [Shortcut](class_shortcut.md#class-shortcut) | [shortcut](#class-inputeventshortcut-property-shortcut) |

* * *

## Property Descriptions

[Shortcut](class_shortcut.md#class-shortcut) **shortcut** [🔗](#class-inputeventshortcut-property-shortcut)

- void **set\_shortcut**(value: [Shortcut](class_shortcut.md#class-shortcut))

- [Shortcut](class_shortcut.md#class-shortcut) **get\_shortcut**()


The [Shortcut](class_shortcut.md#class-shortcut) represented by this event. Its [Shortcut.matches\_event()](class_shortcut.md#class-shortcut-method-matches-event) method will always return `true` for this event.

[Previous](class_inputeventscreentouch.md "InputEventScreenTouch") [Next](class_inputeventwithmodifiers.md "InputEventWithModifiers")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventscreentouch.md "InputEventScreenTouch") [Next](class_inputeventwithmodifiers.md "InputEventWithModifiers")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).