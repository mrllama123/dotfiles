---
title: XRPositionalTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrpositionaltracker.html
crawled_at: "2026-08-13T10:21:09+12:00"
content_hash: 705328a715290b6e7f542b1141421c3ee4877035d1da36549a44ff5b60a46371
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRPositionalTracker

* * *

# XRPositionalTracker

**Inherits:** [XRTracker](class_xrtracker.md#class-xrtracker) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker), [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker), [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker)

A tracked object.

## Description

An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.

As controllers are turned on and the [XRInterface](class_xrinterface.md#class-xrinterface) detects them, instances of this object are automatically added to this list of active tracking objects accessible through the [XRServer](class_xrserver.md#class-xrserver).

The [XRNode3D](class_xrnode3d.md#class-xrnode3d) and [XRAnchor3D](class_xranchor3d.md#class-xranchor3d) both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [TrackerHand](#enum-xrpositionaltracker-trackerhand) | [hand](#class-xrpositionaltracker-property-hand) | `0` |
| [String](class_string.md#class-string) | [profile](#class-xrpositionaltracker-property-profile) | `""` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_input](#class-xrpositionaltracker-method-get-input)(name: [StringName](class_stringname.md#class-stringname)) const |
| [XRPose](class_xrpose.md#class-xrpose) | [get\_pose](#class-xrpositionaltracker-method-get-pose)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_pose](#class-xrpositionaltracker-method-has-pose)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [invalidate\_pose](#class-xrpositionaltracker-method-invalidate-pose)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_input](#class-xrpositionaltracker-method-set-input)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_pose](#class-xrpositionaltracker-method-set-pose)(name: [StringName](class_stringname.md#class-stringname), transform: [Transform3D](class_transform3d.md#class-transform3d), linear\_velocity: [Vector3](class_vector3.md#class-vector3), angular\_velocity: [Vector3](class_vector3.md#class-vector3), tracking\_confidence: [TrackingConfidence](class_xrpose.md#enum-xrpose-trackingconfidence)) |

* * *

## Signals

**button\_pressed**(name: [String](class_string.md#class-string)) [🔗](#class-xrpositionaltracker-signal-button-pressed)

Emitted when a button on this tracker is pressed. Note that many XR runtimes allow other inputs to be mapped to buttons.

* * *

**button\_released**(name: [String](class_string.md#class-string)) [🔗](#class-xrpositionaltracker-signal-button-released)

Emitted when a button on this tracker is released.

* * *

**input\_float\_changed**(name: [String](class_string.md#class-string), value: [float](class_float.md#class-float)) [🔗](#class-xrpositionaltracker-signal-input-float-changed)

Emitted when a trigger or similar input on this tracker changes value.

* * *

**input\_vector2\_changed**(name: [String](class_string.md#class-string), vector: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-xrpositionaltracker-signal-input-vector2-changed)

Emitted when a thumbstick or thumbpad on this tracker moves.

* * *

**pose\_changed**(pose: [XRPose](class_xrpose.md#class-xrpose)) [🔗](#class-xrpositionaltracker-signal-pose-changed)

Emitted when the state of a pose tracked by this tracker changes.

* * *

**pose\_lost\_tracking**(pose: [XRPose](class_xrpose.md#class-xrpose)) [🔗](#class-xrpositionaltracker-signal-pose-lost-tracking)

Emitted when a pose tracked by this tracker stops getting updated tracking data.

* * *

**profile\_changed**(role: [String](class_string.md#class-string)) [🔗](#class-xrpositionaltracker-signal-profile-changed)

Emitted when the profile of our tracker changes.

* * *

## Enumerations

enum **TrackerHand**: [🔗](#enum-xrpositionaltracker-trackerhand)

[TrackerHand](#enum-xrpositionaltracker-trackerhand) **TRACKER\_HAND\_UNKNOWN** = `0`

The hand this tracker is held in is unknown or not applicable.

[TrackerHand](#enum-xrpositionaltracker-trackerhand) **TRACKER\_HAND\_LEFT** = `1`

This tracker is the left hand controller.

[TrackerHand](#enum-xrpositionaltracker-trackerhand) **TRACKER\_HAND\_RIGHT** = `2`

This tracker is the right hand controller.

[TrackerHand](#enum-xrpositionaltracker-trackerhand) **TRACKER\_HAND\_MAX** = `3`

Represents the size of the [TrackerHand](#enum-xrpositionaltracker-trackerhand) enum.

* * *

## Property Descriptions

[TrackerHand](#enum-xrpositionaltracker-trackerhand) **hand** = `0` [🔗](#class-xrpositionaltracker-property-hand)

- void **set\_tracker\_hand**(value: [TrackerHand](#enum-xrpositionaltracker-trackerhand))

- [TrackerHand](#enum-xrpositionaltracker-trackerhand) **get\_tracker\_hand**()


Defines which hand this tracker relates to.

* * *

[String](class_string.md#class-string) **profile** = `""` [🔗](#class-xrpositionaltracker-property-profile)

- void **set\_tracker\_profile**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_tracker\_profile**()


The profile associated with this tracker, interface dependent but will indicate the type of controller being tracked.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_input**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrpositionaltracker-method-get-input)

**Deprecated:** Use through [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker).

Returns an input for this tracker. It can return a boolean, float or [Vector2](class_vector2.md#class-vector2) value depending on whether the input is a button, trigger or thumbstick/thumbpad.

* * *

[XRPose](class_xrpose.md#class-xrpose) **get\_pose**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrpositionaltracker-method-get-pose)

Returns the current [XRPose](class_xrpose.md#class-xrpose) state object for the bound `name` pose.

* * *

[bool](class_bool.md#class-bool) **has\_pose**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrpositionaltracker-method-has-pose)

Returns `true` if the tracker is available and is currently tracking the bound `name` pose.

* * *

void **invalidate\_pose**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-xrpositionaltracker-method-invalidate-pose)

Marks this pose as invalid, we don't clear the last reported state but it allows users to decide if trackers need to be hidden if we lose tracking or just remain at their last known position.

* * *

void **set\_input**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-xrpositionaltracker-method-set-input)

**Deprecated:** Use through [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker).

Changes the value for the given input. This method is called by an [XRInterface](class_xrinterface.md#class-xrinterface) implementation and should not be used directly.

* * *

void **set\_pose**(name: [StringName](class_stringname.md#class-stringname), transform: [Transform3D](class_transform3d.md#class-transform3d), linear\_velocity: [Vector3](class_vector3.md#class-vector3), angular\_velocity: [Vector3](class_vector3.md#class-vector3), tracking\_confidence: [TrackingConfidence](class_xrpose.md#enum-xrpose-trackingconfidence)) [🔗](#class-xrpositionaltracker-method-set-pose)

Sets the transform, linear velocity, angular velocity and tracking confidence for the given pose. This method is called by an [XRInterface](class_xrinterface.md#class-xrinterface) implementation and should not be used directly.

[Previous](class_xrpose.md "XRPose") [Next](class_xrserver.md "XRServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrpose.md "XRPose") [Next](class_xrserver.md "XRServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).