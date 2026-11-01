---
title: XRNode3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrnode3d.html
crawled_at: "2026-08-13T10:25:48+12:00"
content_hash: 7e4bdde82067a0bcee9c7742fb4a7a1746915a5a457a34b428dac41c258dafb8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRNode3D

* * *

# XRNode3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [XRAnchor3D](class_xranchor3d.md#class-xranchor3d), [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d)

A 3D node that has its position automatically updated by the [XRServer](class_xrserver.md#class-xrserver).

## Description

This node can be bound to a specific pose of an [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) and will automatically have its [Node3D.transform](class_node3d.md#class-node3d-property-transform) updated by the [XRServer](class_xrserver.md#class-xrserver). Nodes of this type must be added as children of the [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) node.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [StringName](class_stringname.md#class-stringname) | [pose](#class-xrnode3d-property-pose) | `&"default"` |
| [bool](class_bool.md#class-bool) | [show\_when\_tracked](#class-xrnode3d-property-show-when-tracked) | `false` |
| [StringName](class_stringname.md#class-stringname) | [tracker](#class-xrnode3d-property-tracker) | `&""` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [get\_has\_tracking\_data](#class-xrnode3d-method-get-has-tracking-data)() const |
| [bool](class_bool.md#class-bool) | [get\_is\_active](#class-xrnode3d-method-get-is-active)() const |
| [XRPose](class_xrpose.md#class-xrpose) | [get\_pose](#class-xrnode3d-method-get-pose)() |
| void | [trigger\_haptic\_pulse](#class-xrnode3d-method-trigger-haptic-pulse)(action\_name: [String](class_string.md#class-string), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) |

* * *

## Signals

**tracking\_changed**(tracking: [bool](class_bool.md#class-bool)) [🔗](#class-xrnode3d-signal-tracking-changed)

Emitted when the [tracker](#class-xrnode3d-property-tracker) starts or stops receiving updated tracking data for the [pose](#class-xrnode3d-property-pose) being tracked. The `tracking` argument indicates whether the tracker is getting updated tracking data.

* * *

## Property Descriptions

[StringName](class_stringname.md#class-stringname) **pose** = `&"default"` [🔗](#class-xrnode3d-property-pose)

- void **set\_pose\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_pose\_name**()


The name of the pose we're bound to. Which poses a tracker supports is not known during design time.

Godot defines number of standard pose names such as `aim` and `grip` but other may be configured within a given [XRInterface](class_xrinterface.md#class-xrinterface).

* * *

[bool](class_bool.md#class-bool) **show\_when\_tracked** = `false` [🔗](#class-xrnode3d-property-show-when-tracked)

- void **set\_show\_when\_tracked**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_show\_when\_tracked**()


Enables showing the node when tracking starts, and hiding the node when tracking is lost.

* * *

[StringName](class_stringname.md#class-stringname) **tracker** = `&""` [🔗](#class-xrnode3d-property-tracker)

- void **set\_tracker**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_tracker**()


The name of the tracker we're bound to. Which trackers are available is not known during design time.

Godot defines a number of standard trackers such as `left_hand` and `right_hand` but others may be configured within a given [XRInterface](class_xrinterface.md#class-xrinterface).

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **get\_has\_tracking\_data**() const [🔗](#class-xrnode3d-method-get-has-tracking-data)

Returns `true` if the [tracker](#class-xrnode3d-property-tracker) has current tracking data for the [pose](#class-xrnode3d-property-pose) being tracked.

* * *

[bool](class_bool.md#class-bool) **get\_is\_active**() const [🔗](#class-xrnode3d-method-get-is-active)

Returns `true` if the [tracker](#class-xrnode3d-property-tracker) has been registered and the [pose](#class-xrnode3d-property-pose) is being tracked.

* * *

[XRPose](class_xrpose.md#class-xrpose) **get\_pose**() [🔗](#class-xrnode3d-method-get-pose)

Returns the [XRPose](class_xrpose.md#class-xrpose) containing the current state of the pose being tracked. This gives access to additional properties of this pose.

* * *

void **trigger\_haptic\_pulse**(action\_name: [String](class_string.md#class-string), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) [🔗](#class-xrnode3d-method-trigger-haptic-pulse)

Triggers a haptic pulse on a device associated with this interface.

`action_name` is the name of the action for this pulse.

`frequency` is the frequency of the pulse, set to `0.0` to have the system use a default frequency.

`amplitude` is the amplitude of the pulse between `0.0` and `1.0`.

`duration_sec` is the duration of the pulse in seconds.

`delay_sec` is a delay in seconds before the pulse is given.

[Previous](class_xrhandmodifier3d.md "XRHandModifier3D") [Next](class_xrorigin3d.md "XROrigin3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrhandmodifier3d.md "XRHandModifier3D") [Next](class_xrorigin3d.md "XROrigin3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).