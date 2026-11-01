---
title: OpenXRBindingModifierEditor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrbindingmodifiereditor.html
crawled_at: "2026-08-13T10:25:49+12:00"
content_hash: c5274ba3dd383d60eb4781aedd00dc7207d51af93f14ac024bd2a90c7fb706fb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRBindingModifierEditor

* * *

# OpenXRBindingModifierEditor

**Inherits:** [PanelContainer](class_panelcontainer.md#class-panelcontainer) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Binding modifier editor.

## Description

This is the default binding modifier editor used in the OpenXR action map.

## Properties

|     |     |     |
| --- | --- | --- |
| BitField\[ [SizeFlags](class_control.md#enum-control-sizeflags)\] | size\_flags\_horizontal | `3` (overrides [Control](class_control.md#class-control-property-size-flags-horizontal)) |

## Methods

|     |     |
| --- | --- |
| [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) | [get\_binding\_modifier](#class-openxrbindingmodifiereditor-method-get-binding-modifier)() const |
| void | [setup](#class-openxrbindingmodifiereditor-method-setup)(action\_map: [OpenXRActionMap](class_openxractionmap.md#class-openxractionmap), binding\_modifier: [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier)) |

* * *

## Signals

**binding\_modifier\_removed**(binding\_modifier\_editor: [Object](class_object.md#class-object)) [🔗](#class-openxrbindingmodifiereditor-signal-binding-modifier-removed)

Signal emitted when the user presses the delete binding modifier button for this modifier.

* * *

## Method Descriptions

[OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) **get\_binding\_modifier**() const [🔗](#class-openxrbindingmodifiereditor-method-get-binding-modifier)

Returns the [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier) currently being edited.

* * *

void **setup**(action\_map: [OpenXRActionMap](class_openxractionmap.md#class-openxractionmap), binding\_modifier: [OpenXRBindingModifier](class_openxrbindingmodifier.md#class-openxrbindingmodifier)) [🔗](#class-openxrbindingmodifiereditor-method-setup)

Setup this editor for the provided `action_map` and `binding_modifier`.

[Previous](class_omnilight3d.md "OmniLight3D") [Next](class_openxrcompositionlayer.md "OpenXRCompositionLayer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_omnilight3d.md "OmniLight3D") [Next](class_openxrcompositionlayer.md "OpenXRCompositionLayer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).