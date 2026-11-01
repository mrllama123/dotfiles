---
title: OpenXRInteractionProfileEditorBase — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrinteractionprofileeditorbase.html
crawled_at: "2026-08-13T10:23:53+12:00"
content_hash: 5602a3bf29672cdacbe39c9fc3c192ecfb4e5d2d0a244d7f93f59ecdbbff5fc3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRInteractionProfileEditorBase

* * *

# OpenXRInteractionProfileEditorBase

**Inherits:** [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **<** [BoxContainer](class_boxcontainer.md#class-boxcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [OpenXRInteractionProfileEditor](class_openxrinteractionprofileeditor.md#class-openxrinteractionprofileeditor)

Base class for editing interaction profiles.

## Description

This is a base class for interaction profile editors used by the OpenXR action map editor. It can be used to create bespoke editors for specific interaction profiles.

## Properties

|     |     |     |
| --- | --- | --- |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_horizontal | `3` (overrides [Control](class_control.md#class-control-property-size-flags-horizontal)) |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_vertical | `3` (overrides [Control](class_control.md#class-control-property-size-flags-vertical)) |

## Methods

|     |     |
| --- | --- |
| void | [setup](#class-openxrinteractionprofileeditorbase-method-setup)(action\_map: [OpenXRActionMap](class_openxractionmap.md#class-openxractionmap), interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) |

* * *

## Method Descriptions

void **setup**(action\_map: [OpenXRActionMap](class_openxractionmap.md#class-openxractionmap), interaction\_profile: [OpenXRInteractionProfile](class_openxrinteractionprofile.md#class-openxrinteractionprofile)) [🔗](#class-openxrinteractionprofileeditorbase-method-setup)

Setup this editor for the provided `action_map` and `interaction_profile`.

[Previous](class_openxrinteractionprofileeditor.md "OpenXRInteractionProfileEditor") [Next](class_openxrrendermodel.md "OpenXRRenderModel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrinteractionprofileeditor.md "OpenXRInteractionProfileEditor") [Next](class_openxrrendermodel.md "OpenXRRenderModel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).