---
title: XRPose — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrpose.html
crawled_at: "2026-08-13T10:33:56+12:00"
content_hash: 3b817daa40bb179377437c31aefea9277dc350bade045869e1bad21a2c85267d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRPose

* * *

# XRPose

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

This object contains all data related to a pose on a tracked object.

## Description

XR runtimes often identify multiple locations on devices such as controllers that are spatially tracked.

Orientation, location, linear velocity and angular velocity are all provided for each pose by the XR runtime. This object contains this state of a pose.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [angular\_velocity](#class-xrpose-property-angular-velocity) | `Vector3(0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [has\_tracking\_data](#class-xrpose-property-has-tracking-data) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [linear\_velocity](#class-xrpose-property-linear-velocity) | `Vector3(0, 0, 0)` |
| [StringName](class_stringname.md#class-stringname) | [name](#class-xrpose-property-name) | `&""` |
| [TrackingConfidence](#enum-xrpose-trackingconfidence) | [tracking\_confidence](#class-xrpose-property-tracking-confidence) | `0` |
| [Transform3D](class_transform3d.md#class-transform3d) | [transform](#class-xrpose-property-transform) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |

## Methods

|     |     |
| --- | --- |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_adjusted\_transform](#class-xrpose-method-get-adjusted-transform)() const |

* * *

## Enumerations

enum **TrackingConfidence**: [🔗](#enum-xrpose-trackingconfidence)

[TrackingConfidence](#enum-xrpose-trackingconfidence) **XR\_TRACKING\_CONFIDENCE\_NONE** = `0`

No tracking information is available for this pose.

[TrackingConfidence](#enum-xrpose-trackingconfidence) **XR\_TRACKING\_CONFIDENCE\_LOW** = `1`

Tracking information may be inaccurate or estimated. For example, with inside out tracking this would indicate a controller may be (partially) obscured.

[TrackingConfidence](#enum-xrpose-trackingconfidence) **XR\_TRACKING\_CONFIDENCE\_HIGH** = `2`

Tracking information is considered accurate and up to date.

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **angular\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-xrpose-property-angular-velocity)

- void **set\_angular\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_angular\_velocity**()


The angular velocity for this pose.

* * *

[bool](class_bool.md#class-bool) **has\_tracking\_data** = `false` [🔗](#class-xrpose-property-has-tracking-data)

- void **set\_has\_tracking\_data**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_has\_tracking\_data**()


If `true` our tracking data is up to date. If `false` we're no longer receiving new tracking data and our state is whatever that last valid state was.

* * *

[Vector3](class_vector3.md#class-vector3) **linear\_velocity** = `Vector3(0, 0, 0)` [🔗](#class-xrpose-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_linear\_velocity**()


The linear velocity of this pose.

* * *

[StringName](class_stringname.md#class-stringname) **name** = `&""` [🔗](#class-xrpose-property-name)

- void **set\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_name**()


The name of this pose. Usually, this name is derived from an action map set up by the user. Godot also suggests some pose names that [XRInterface](class_xrinterface.md#class-xrinterface) objects are expected to implement:

- `root` is the root location, often used for tracked objects that do not have further nodes.

- `aim` is the tip of a controller with its orientation pointing outwards, often used for raycasts.

- `grip` is the location where the user grips the controller.

- `skeleton` is the root location for a hand mesh, when using hand tracking and an animated skeleton is supplied by the XR runtime.


* * *

[TrackingConfidence](#enum-xrpose-trackingconfidence) **tracking\_confidence** = `0` [🔗](#class-xrpose-property-tracking-confidence)

- void **set\_tracking\_confidence**(value: [TrackingConfidence](#enum-xrpose-trackingconfidence))

- [TrackingConfidence](#enum-xrpose-trackingconfidence) **get\_tracking\_confidence**()


The tracking confidence for this pose, provides insight on how accurate the spatial positioning of this record is.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **transform** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-xrpose-property-transform)

- void **set\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_transform**()


The transform containing the original and transform as reported by the XR runtime.

* * *

## Method Descriptions

[Transform3D](class_transform3d.md#class-transform3d) **get\_adjusted\_transform**() const [🔗](#class-xrpose-method-get-adjusted-transform)

Returns the [transform](#class-xrpose-property-transform) with world scale and our reference frame applied. This is the transform used to position [XRNode3D](class_xrnode3d.md#class-xrnode3d) objects.

[Previous](class_xrinterfaceextension.md "XRInterfaceExtension") [Next](class_xrpositionaltracker.md "XRPositionalTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrinterfaceextension.md "XRInterfaceExtension") [Next](class_xrpositionaltracker.md "XRPositionalTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).