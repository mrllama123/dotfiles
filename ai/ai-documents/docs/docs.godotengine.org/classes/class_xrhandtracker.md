---
title: XRHandTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrhandtracker.html
crawled_at: "2026-08-13T10:36:02+12:00"
content_hash: 0f7f393d75e062b540d8a09e957ed677971c0a0dad59d77177f3394f49dc1869
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRHandTracker

* * *

# XRHandTracker

**Inherits:** [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) **<** [XRTracker](class_xrtracker.md#class-xrtracker) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A tracked hand in XR.

## Description

A hand tracking system will create an instance of this object and add it to the [XRServer](class_xrserver.md#class-xrserver). This tracking system will then obtain skeleton data, convert it to the Godot Humanoid hand skeleton and store this data on the **XRHandTracker** object.

Use [XRHandModifier3D](class_xrhandmodifier3d.md#class-xrhandmodifier3d) to animate a hand mesh using hand tracking data.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [TrackerHand](class_xrpositionaltracker.md#enum-xrpositionaltracker-trackerhand) | hand | `1` (overrides [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker-property-hand)) |
| [HandTrackingSource](#enum-xrhandtracker-handtrackingsource) | [hand\_tracking\_source](#class-xrhandtracker-property-hand-tracking-source) | `0` |
| [bool](class_bool.md#class-bool) | [has\_tracking\_data](#class-xrhandtracker-property-has-tracking-data) | `false` |
| [TrackerType](class_xrserver.md#enum-xrserver-trackertype) | type | `16` (overrides [XRTracker](class_xrtracker.md#class-xrtracker-property-type)) |

## Methods

|     |     |
| --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [get\_hand\_joint\_angular\_velocity](#class-xrhandtracker-method-get-hand-joint-angular-velocity)(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const |
| BitField\[ [HandJointFlags](#enum-xrhandtracker-handjointflags)\] | [get\_hand\_joint\_flags](#class-xrhandtracker-method-get-hand-joint-flags)(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_hand\_joint\_linear\_velocity](#class-xrhandtracker-method-get-hand-joint-linear-velocity)(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const |
| [float](class_float.md#class-float) | [get\_hand\_joint\_radius](#class-xrhandtracker-method-get-hand-joint-radius)(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_hand\_joint\_transform](#class-xrhandtracker-method-get-hand-joint-transform)(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const |
| void | [set\_hand\_joint\_angular\_velocity](#class-xrhandtracker-method-set-hand-joint-angular-velocity)(joint: [HandJoint](#enum-xrhandtracker-handjoint), angular\_velocity: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_hand\_joint\_flags](#class-xrhandtracker-method-set-hand-joint-flags)(joint: [HandJoint](#enum-xrhandtracker-handjoint), flags: BitField\[ [HandJointFlags](#enum-xrhandtracker-handjointflags)\]) |
| void | [set\_hand\_joint\_linear\_velocity](#class-xrhandtracker-method-set-hand-joint-linear-velocity)(joint: [HandJoint](#enum-xrhandtracker-handjoint), linear\_velocity: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_hand\_joint\_radius](#class-xrhandtracker-method-set-hand-joint-radius)(joint: [HandJoint](#enum-xrhandtracker-handjoint), radius: [float](class_float.md#class-float)) |
| void | [set\_hand\_joint\_transform](#class-xrhandtracker-method-set-hand-joint-transform)(joint: [HandJoint](#enum-xrhandtracker-handjoint), transform: [Transform3D](class_transform3d.md#class-transform3d)) |

* * *

## Enumerations

enum **HandTrackingSource**: [🔗](#enum-xrhandtracker-handtrackingsource)

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **HAND\_TRACKING\_SOURCE\_UNKNOWN** = `0`

The source of hand tracking data is unknown.

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **HAND\_TRACKING\_SOURCE\_UNOBSTRUCTED** = `1`

The source of hand tracking data is unobstructed, meaning that an accurate method of hand tracking is used. These include optical hand tracking, data gloves, etc.

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **HAND\_TRACKING\_SOURCE\_CONTROLLER** = `2`

The source of hand tracking data is a controller, meaning that joint positions are inferred from controller inputs.

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **HAND\_TRACKING\_SOURCE\_NOT\_TRACKED** = `3`

No hand tracking data is tracked, this either means the hand is obscured, the controller is turned off, or tracking is not supported for the current input type.

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **HAND\_TRACKING\_SOURCE\_MAX** = `4`

Represents the size of the [HandTrackingSource](#enum-xrhandtracker-handtrackingsource) enum.

* * *

enum **HandJoint**: [🔗](#enum-xrhandtracker-handjoint)

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PALM** = `0`

Palm joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_WRIST** = `1`

Wrist joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_THUMB\_METACARPAL** = `2`

Thumb metacarpal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_THUMB\_PHALANX\_PROXIMAL** = `3`

Thumb phalanx proximal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_THUMB\_PHALANX\_DISTAL** = `4`

Thumb phalanx distal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_THUMB\_TIP** = `5`

Thumb tip joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_INDEX\_FINGER\_METACARPAL** = `6`

Index finger metacarpal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_INDEX\_FINGER\_PHALANX\_PROXIMAL** = `7`

Index finger phalanx proximal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_INDEX\_FINGER\_PHALANX\_INTERMEDIATE** = `8`

Index finger phalanx intermediate joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_INDEX\_FINGER\_PHALANX\_DISTAL** = `9`

Index finger phalanx distal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_INDEX\_FINGER\_TIP** = `10`

Index finger tip joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MIDDLE\_FINGER\_METACARPAL** = `11`

Middle finger metacarpal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MIDDLE\_FINGER\_PHALANX\_PROXIMAL** = `12`

Middle finger phalanx proximal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MIDDLE\_FINGER\_PHALANX\_INTERMEDIATE** = `13`

Middle finger phalanx intermediate joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MIDDLE\_FINGER\_PHALANX\_DISTAL** = `14`

Middle finger phalanx distal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MIDDLE\_FINGER\_TIP** = `15`

Middle finger tip joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_RING\_FINGER\_METACARPAL** = `16`

Ring finger metacarpal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_RING\_FINGER\_PHALANX\_PROXIMAL** = `17`

Ring finger phalanx proximal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_RING\_FINGER\_PHALANX\_INTERMEDIATE** = `18`

Ring finger phalanx intermediate joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_RING\_FINGER\_PHALANX\_DISTAL** = `19`

Ring finger phalanx distal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_RING\_FINGER\_TIP** = `20`

Ring finger tip joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PINKY\_FINGER\_METACARPAL** = `21`

Pinky finger metacarpal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PINKY\_FINGER\_PHALANX\_PROXIMAL** = `22`

Pinky finger phalanx proximal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PINKY\_FINGER\_PHALANX\_INTERMEDIATE** = `23`

Pinky finger phalanx intermediate joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PINKY\_FINGER\_PHALANX\_DISTAL** = `24`

Pinky finger phalanx distal joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_PINKY\_FINGER\_TIP** = `25`

Pinky finger tip joint.

[HandJoint](#enum-xrhandtracker-handjoint) **HAND\_JOINT\_MAX** = `26`

Represents the size of the [HandJoint](#enum-xrhandtracker-handjoint) enum.

* * *

flags **HandJointFlags**: [🔗](#enum-xrhandtracker-handjointflags)

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_ORIENTATION\_VALID** = `1`

The hand joint's orientation data is valid.

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_ORIENTATION\_TRACKED** = `2`

The hand joint's orientation is actively tracked. May not be set if tracking has been temporarily lost.

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_POSITION\_VALID** = `4`

The hand joint's position data is valid.

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_POSITION\_TRACKED** = `8`

The hand joint's position is actively tracked. May not be set if tracking has been temporarily lost.

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_LINEAR\_VELOCITY\_VALID** = `16`

The hand joint's linear velocity data is valid.

[HandJointFlags](#enum-xrhandtracker-handjointflags) **HAND\_JOINT\_FLAG\_ANGULAR\_VELOCITY\_VALID** = `32`

The hand joint's angular velocity data is valid.

* * *

## Property Descriptions

[HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **hand\_tracking\_source** = `0` [🔗](#class-xrhandtracker-property-hand-tracking-source)

- void **set\_hand\_tracking\_source**(value: [HandTrackingSource](#enum-xrhandtracker-handtrackingsource))

- [HandTrackingSource](#enum-xrhandtracker-handtrackingsource) **get\_hand\_tracking\_source**()


The source of the hand tracking data.

* * *

[bool](class_bool.md#class-bool) **has\_tracking\_data** = `false` [🔗](#class-xrhandtracker-property-has-tracking-data)

- void **set\_has\_tracking\_data**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_has\_tracking\_data**()


If `true`, the hand tracking data is valid.

* * *

## Method Descriptions

[Vector3](class_vector3.md#class-vector3) **get\_hand\_joint\_angular\_velocity**(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const [🔗](#class-xrhandtracker-method-get-hand-joint-angular-velocity)

Returns the angular velocity for the given hand joint.

* * *

BitField\[ [HandJointFlags](#enum-xrhandtracker-handjointflags)\] **get\_hand\_joint\_flags**(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const [🔗](#class-xrhandtracker-method-get-hand-joint-flags)

Returns flags about the validity of the tracking data for the given hand joint.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_hand\_joint\_linear\_velocity**(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const [🔗](#class-xrhandtracker-method-get-hand-joint-linear-velocity)

Returns the linear velocity for the given hand joint.

* * *

[float](class_float.md#class-float) **get\_hand\_joint\_radius**(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const [🔗](#class-xrhandtracker-method-get-hand-joint-radius)

Returns the radius of the given hand joint.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_hand\_joint\_transform**(joint: [HandJoint](#enum-xrhandtracker-handjoint)) const [🔗](#class-xrhandtracker-method-get-hand-joint-transform)

Returns the transform for the given hand joint.

* * *

void **set\_hand\_joint\_angular\_velocity**(joint: [HandJoint](#enum-xrhandtracker-handjoint), angular\_velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-xrhandtracker-method-set-hand-joint-angular-velocity)

Sets the angular velocity for the given hand joint.

* * *

void **set\_hand\_joint\_flags**(joint: [HandJoint](#enum-xrhandtracker-handjoint), flags: BitField\[ [HandJointFlags](#enum-xrhandtracker-handjointflags)\]) [🔗](#class-xrhandtracker-method-set-hand-joint-flags)

Sets flags about the validity of the tracking data for the given hand joint.

* * *

void **set\_hand\_joint\_linear\_velocity**(joint: [HandJoint](#enum-xrhandtracker-handjoint), linear\_velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-xrhandtracker-method-set-hand-joint-linear-velocity)

Sets the linear velocity for the given hand joint.

* * *

void **set\_hand\_joint\_radius**(joint: [HandJoint](#enum-xrhandtracker-handjoint), radius: [float](class_float.md#class-float)) [🔗](#class-xrhandtracker-method-set-hand-joint-radius)

Sets the radius of the given hand joint.

* * *

void **set\_hand\_joint\_transform**(joint: [HandJoint](#enum-xrhandtracker-handjoint), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-xrhandtracker-method-set-hand-joint-transform)

Sets the transform for the given hand joint.

[Previous](class_xrfacetracker.md "XRFaceTracker") [Next](class_xrinterface.md "XRInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrfacetracker.md "XRFaceTracker") [Next](class_xrinterface.md "XRInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).