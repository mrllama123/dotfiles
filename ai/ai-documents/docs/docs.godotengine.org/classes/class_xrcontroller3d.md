---
title: XRController3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrcontroller3d.html
crawled_at: "2026-08-13T10:31:15+12:00"
content_hash: 5b3e5f7331f02c28b1e6418a0a95b8872a87cadf6ba96247639772702903d074
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRController3D

* * *

# XRController3D

**Inherits:** [XRNode3D](class_xrnode3d.md#class-xrnode3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D node representing a spatially-tracked controller.

## Description

This is a helper 3D node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers.

Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add XRController3D nodes to your scene.

The position of the controller node is automatically updated by the [XRServer](class_xrserver.md#class-xrserver). This makes this node ideal to add child nodes to visualize the controller.

The current [XRInterface](class_xrinterface.md#class-xrinterface) defines the names of inputs. In the case of OpenXR, these are the names of actions in the current action set from the OpenXR action map.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_float](#class-xrcontroller3d-method-get-float)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [get\_input](#class-xrcontroller3d-method-get-input)(name: [StringName](class_stringname.md#class-stringname)) const |
| [TrackerHand](class_xrpositionaltracker.md#enum-xrpositionaltracker-trackerhand) | [get\_tracker\_hand](#class-xrcontroller3d-method-get-tracker-hand)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_vector2](#class-xrcontroller3d-method-get-vector2)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_button\_pressed](#class-xrcontroller3d-method-is-button-pressed)(name: [StringName](class_stringname.md#class-stringname)) const |

* * *

## Signals

**button\_pressed**(name: [String](class_string.md#class-string)) [🔗](#class-xrcontroller3d-signal-button-pressed)

Emitted when a button on this controller is pressed.

* * *

**button\_released**(name: [String](class_string.md#class-string)) [🔗](#class-xrcontroller3d-signal-button-released)

Emitted when a button on this controller is released.

* * *

**input\_float\_changed**(name: [String](class_string.md#class-string), value: [float](class_float.md#class-float)) [🔗](#class-xrcontroller3d-signal-input-float-changed)

Emitted when a trigger or similar input on this controller changes value.

* * *

**input\_vector2\_changed**(name: [String](class_string.md#class-string), value: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-xrcontroller3d-signal-input-vector2-changed)

Emitted when a thumbstick or thumbpad on this controller is moved.

* * *

**profile\_changed**(role: [String](class_string.md#class-string)) [🔗](#class-xrcontroller3d-signal-profile-changed)

Emitted when the interaction profile on this controller is changed.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_float**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrcontroller3d-method-get-float)

Returns a numeric value for the input with the given `name`. This is used for triggers and grip sensors.

**Note:** The current [XRInterface](class_xrinterface.md#class-xrinterface) defines the `name` for each input. In the case of OpenXR, these are the names of actions in the current action set.

* * *

[Variant](class_variant.md#class-variant) **get\_input**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrcontroller3d-method-get-input)

Returns a [Variant](class_variant.md#class-variant) for the input with the given `name`. This works for any input type, the variant will be typed according to the actions configuration.

**Note:** The current [XRInterface](class_xrinterface.md#class-xrinterface) defines the `name` for each input. In the case of OpenXR, these are the names of actions in the current action set.

* * *

[TrackerHand](class_xrpositionaltracker.md#enum-xrpositionaltracker-trackerhand) **get\_tracker\_hand**() const [🔗](#class-xrcontroller3d-method-get-tracker-hand)

Returns the hand holding this controller, if known.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_vector2**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrcontroller3d-method-get-vector2)

Returns a [Vector2](class_vector2.md#class-vector2) for the input with the given `name`. This is used for thumbsticks and thumbpads found on many controllers.

**Note:** The current [XRInterface](class_xrinterface.md#class-xrinterface) defines the `name` for each input. In the case of OpenXR, these are the names of actions in the current action set.

* * *

[bool](class_bool.md#class-bool) **is\_button\_pressed**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrcontroller3d-method-is-button-pressed)

Returns `true` if the button with the given `name` is pressed.

**Note:** The current [XRInterface](class_xrinterface.md#class-xrinterface) defines the `name` for each input. In the case of OpenXR, these are the names of actions in the current action set.

[Previous](class_xrcamera3d.md "XRCamera3D") [Next](class_xrfacemodifier3d.md "XRFaceModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrcamera3d.md "XRCamera3D") [Next](class_xrfacemodifier3d.md "XRFaceModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).