---
title: Popup — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_popup.html
crawled_at: "2026-08-13T10:43:02+12:00"
content_hash: 014f95f63362959b9bb12b3bb8c6d0abfba9fba9e80796c46719311a1f7a21c8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Popup

* * *

# Popup

**Inherits:** [Window](class_window.md#class-window) **<** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [PopupMenu](class_popupmenu.md#class-popupmenu), [PopupPanel](class_popuppanel.md#class-popuppanel)

Base class for contextual windows and panels with fixed position.

## Description

**Popup** is a base class for contextual windows and panels with fixed position. It's a modal by default (see [Window.popup\_window](class_window.md#class-window-property-popup-window)) and provides methods for implementing custom popup behavior.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | borderless | `true` (overrides [Window](class_window.md#class-window-property-borderless)) |
| [bool](class_bool.md#class-bool) | maximize\_disabled | `true` (overrides [Window](class_window.md#class-window-property-maximize-disabled)) |
| [bool](class_bool.md#class-bool) | minimize\_disabled | `true` (overrides [Window](class_window.md#class-window-property-minimize-disabled)) |
| [bool](class_bool.md#class-bool) | popup\_window | `true` (overrides [Window](class_window.md#class-window-property-popup-window)) |
| [bool](class_bool.md#class-bool) | popup\_wm\_hint | `true` (overrides [Window](class_window.md#class-window-property-popup-wm-hint)) |
| [bool](class_bool.md#class-bool) | transient | `true` (overrides [Window](class_window.md#class-window-property-transient)) |
| [bool](class_bool.md#class-bool) | unresizable | `true` (overrides [Window](class_window.md#class-window-property-unresizable)) |
| [bool](class_bool.md#class-bool) | visible | `false` (overrides [Window](class_window.md#class-window-property-visible)) |
| [bool](class_bool.md#class-bool) | wrap\_controls | `true` (overrides [Window](class_window.md#class-window-property-wrap-controls)) |

* * *

## Signals

**popup\_hide**() [🔗](#class-popup-signal-popup-hide)

Emitted when the popup is hidden.

[Previous](class_polygon2d.md "Polygon2D") [Next](class_popupmenu.md "PopupMenu")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_polygon2d.md "Polygon2D") [Next](class_popupmenu.md "PopupMenu")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).