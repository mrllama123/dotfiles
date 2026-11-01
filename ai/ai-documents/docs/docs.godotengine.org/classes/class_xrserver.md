---
title: XRServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrserver.html
crawled_at: "2026-08-13T10:42:55+12:00"
content_hash: ab90a6453ca923f76cd9d49cbd3def3b42dd5fe35a429ee76697dd1635f58e7e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRServer

* * *

# XRServer

**Inherits:** [Object](class_object.md#class-object)

Server for AR and VR features.

## Description

The AR/VR server is the heart of our Advanced and Virtual Reality solution and handles all the processing.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [camera\_locked\_to\_origin](#class-xrserver-property-camera-locked-to-origin) | `false` |
| [XRInterface](class_xrinterface.md#class-xrinterface) | [primary\_interface](#class-xrserver-property-primary-interface) |  |
| [Transform3D](class_transform3d.md#class-transform3d) | [world\_origin](#class-xrserver-property-world-origin) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [float](class_float.md#class-float) | [world\_scale](#class-xrserver-property-world-scale) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_interface](#class-xrserver-method-add-interface)(interface: [XRInterface](class_xrinterface.md#class-xrinterface)) |
| void | [add\_tracker](#class-xrserver-method-add-tracker)(tracker: [XRTracker](class_xrtracker.md#class-xrtracker)) |
| void | [center\_on\_hmd](#class-xrserver-method-center-on-hmd)(rotation\_mode: [RotationMode](#enum-xrserver-rotationmode), keep\_height: [bool](class_bool.md#class-bool)) |
| void | [clear\_reference\_frame](#class-xrserver-method-clear-reference-frame)() |
| [XRInterface](class_xrinterface.md#class-xrinterface) | [find\_interface](#class-xrserver-method-find-interface)(name: [String](class_string.md#class-string)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_hmd\_transform](#class-xrserver-method-get-hmd-transform)() |
| [XRInterface](class_xrinterface.md#class-xrinterface) | [get\_interface](#class-xrserver-method-get-interface)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_interface\_count](#class-xrserver-method-get-interface-count)() const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_interfaces](#class-xrserver-method-get-interfaces)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_reference\_frame](#class-xrserver-method-get-reference-frame)() const |
| [XRTracker](class_xrtracker.md#class-xrtracker) | [get\_tracker](#class-xrserver-method-get-tracker)(tracker\_name: [StringName](class_stringname.md#class-stringname)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_trackers](#class-xrserver-method-get-trackers)(tracker\_types: [int](class_int.md#class-int)) |
| void | [remove\_interface](#class-xrserver-method-remove-interface)(interface: [XRInterface](class_xrinterface.md#class-xrinterface)) |
| void | [remove\_tracker](#class-xrserver-method-remove-tracker)(tracker: [XRTracker](class_xrtracker.md#class-xrtracker)) |

* * *

## Signals

**interface\_added**(interface\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-xrserver-signal-interface-added)

Emitted when a new interface has been added.

* * *

**interface\_removed**(interface\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-xrserver-signal-interface-removed)

Emitted when an interface is removed.

* * *

**reference\_frame\_changed**() [🔗](#class-xrserver-signal-reference-frame-changed)

Emitted when the reference frame transform changes.

* * *

**tracker\_added**(tracker\_name: [StringName](class_stringname.md#class-stringname), type: [int](class_int.md#class-int)) [🔗](#class-xrserver-signal-tracker-added)

Emitted when a new tracker has been added. If you don't use a fixed number of controllers or if you're using [XRAnchor3D](class_xranchor3d.md#class-xranchor3d) s for an AR solution, it is important to react to this signal to add the appropriate [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d) or [XRAnchor3D](class_xranchor3d.md#class-xranchor3d) nodes related to this new tracker.

* * *

**tracker\_removed**(tracker\_name: [StringName](class_stringname.md#class-stringname), type: [int](class_int.md#class-int)) [🔗](#class-xrserver-signal-tracker-removed)

Emitted when a tracker is removed. You should remove any [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d) or [XRAnchor3D](class_xranchor3d.md#class-xranchor3d) points if applicable. This is not mandatory, the nodes simply become inactive and will be made active again when a new tracker becomes available (i.e. a new controller is switched on that takes the place of the previous one).

* * *

**tracker\_updated**(tracker\_name: [StringName](class_stringname.md#class-stringname), type: [int](class_int.md#class-int)) [🔗](#class-xrserver-signal-tracker-updated)

Emitted when an existing tracker has been updated. This can happen if the user switches controllers.

* * *

## Enumerations

enum **TrackerType**: [🔗](#enum-xrserver-trackertype)

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_HEAD** = `1`

The tracker tracks the location of the player's head. This is usually a location centered between the player's eyes. Note that for handheld AR devices this can be the current location of the device.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_CONTROLLER** = `2`

The tracker tracks the location of a controller.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_BASESTATION** = `4`

The tracker tracks the location of a base station.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_ANCHOR** = `8`

The tracker tracks the location and size of an AR anchor.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_HAND** = `16`

The tracker tracks the location and joints of a hand.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_BODY** = `32`

The tracker tracks the location and joints of a body.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_FACE** = `64`

The tracker tracks the expressions of a face.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_ANY\_KNOWN** = `127`

Used internally to filter trackers of any known type.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_UNKNOWN** = `128`

Used internally if we haven't set the tracker type yet.

[TrackerType](#enum-xrserver-trackertype) **TRACKER\_ANY** = `255`

Used internally to select all trackers.

* * *

enum **RotationMode**: [🔗](#enum-xrserver-rotationmode)

[RotationMode](#enum-xrserver-rotationmode) **RESET\_FULL\_ROTATION** = `0`

Fully reset the orientation of the HMD. Regardless of what direction the user is looking to in the real world. The user will look dead ahead in the virtual world.

[RotationMode](#enum-xrserver-rotationmode) **RESET\_BUT\_KEEP\_TILT** = `1`

Resets the orientation but keeps the tilt of the device. So if we're looking down, we keep looking down but heading will be reset.

[RotationMode](#enum-xrserver-rotationmode) **DONT\_RESET\_ROTATION** = `2`

Does not reset the orientation of the HMD, only the position of the player gets centered.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **camera\_locked\_to\_origin** = `false` [🔗](#class-xrserver-property-camera-locked-to-origin)

- void **set\_camera\_locked\_to\_origin**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_camera\_locked\_to\_origin**()


If set to `true`, the scene will be rendered as if the camera is locked to the [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d).

**Note:** This doesn't provide a very comfortable experience for users. This setting exists for doing benchmarking or automated testing, where you want to control what is rendered via code.

* * *

[XRInterface](class_xrinterface.md#class-xrinterface) **primary\_interface** [🔗](#class-xrserver-property-primary-interface)

- void **set\_primary\_interface**(value: [XRInterface](class_xrinterface.md#class-xrinterface))

- [XRInterface](class_xrinterface.md#class-xrinterface) **get\_primary\_interface**()


The primary [XRInterface](class_xrinterface.md#class-xrinterface) currently bound to the **XRServer**.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **world\_origin** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-xrserver-property-world-origin)

- void **set\_world\_origin**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_world\_origin**()


The current origin of our tracking space in the virtual world. This is used by the renderer to properly position the camera with new tracking data.

**Note:** This property is managed by the current [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) node. It is exposed for access from GDExtensions.

* * *

[float](class_float.md#class-float) **world\_scale** = `1.0` [🔗](#class-xrserver-property-world-scale)

- void **set\_world\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_world\_scale**()


The scale of the game world compared to the real world. By default, most AR/VR platforms assume that 1 game unit corresponds to 1 real world meter.

* * *

## Method Descriptions

void **add\_interface**(interface: [XRInterface](class_xrinterface.md#class-xrinterface)) [🔗](#class-xrserver-method-add-interface)

Registers an [XRInterface](class_xrinterface.md#class-xrinterface) object.

* * *

void **add\_tracker**(tracker: [XRTracker](class_xrtracker.md#class-xrtracker)) [🔗](#class-xrserver-method-add-tracker)

Registers a new [XRTracker](class_xrtracker.md#class-xrtracker) that tracks a physical object.

* * *

void **center\_on\_hmd**(rotation\_mode: [RotationMode](#enum-xrserver-rotationmode), keep\_height: [bool](class_bool.md#class-bool)) [🔗](#class-xrserver-method-center-on-hmd)

This is an important function to understand correctly. AR and VR platforms all handle positioning slightly differently.

For platforms that do not offer spatial tracking, our origin point `(0, 0, 0)` is the location of our HMD, but you have little control over the direction the player is facing in the real world.

For platforms that do offer spatial tracking, our origin point depends very much on the system. For OpenVR, our origin point is usually the center of the tracking space, on the ground. For other platforms, it's often the location of the tracking camera.

This method allows you to center your tracker on the location of the HMD. It will take the current location of the HMD and use that to adjust all your tracking data; in essence, realigning the real world to your player's current position in the game world.

For this method to produce usable results, tracking information must be available. This often takes a few frames after starting your game.

You should call this method after a few seconds have passed. For example, when the user requests a realignment of the display holding a designated button on a controller for a short period of time, or when implementing a teleport mechanism.

* * *

void **clear\_reference\_frame**() [🔗](#class-xrserver-method-clear-reference-frame)

Clears the reference frame that was set by previous calls to [center\_on\_hmd()](#class-xrserver-method-center-on-hmd).

* * *

[XRInterface](class_xrinterface.md#class-xrinterface) **find\_interface**(name: [String](class_string.md#class-string)) const [🔗](#class-xrserver-method-find-interface)

Finds an interface by its `name`. For example, if your project uses capabilities of an AR/VR platform, you can find the interface for that platform by name and initialize it.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_hmd\_transform**() [🔗](#class-xrserver-method-get-hmd-transform)

Returns the primary interface's transformation.

* * *

[XRInterface](class_xrinterface.md#class-xrinterface) **get\_interface**(idx: [int](class_int.md#class-int)) const [🔗](#class-xrserver-method-get-interface)

Returns the interface registered at the given `idx` index in the list of interfaces.

* * *

[int](class_int.md#class-int) **get\_interface\_count**() const [🔗](#class-xrserver-method-get-interface-count)

Returns the number of interfaces currently registered with the AR/VR server. If your project supports multiple AR/VR platforms, you can look through the available interface, and either present the user with a selection or simply try to initialize each interface and use the first one that returns `true`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_interfaces**() const [🔗](#class-xrserver-method-get-interfaces)

Returns a list of available interfaces the ID and name of each interface.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_reference\_frame**() const [🔗](#class-xrserver-method-get-reference-frame)

Returns the reference frame transform. Mostly used internally and exposed for GDExtension build interfaces.

* * *

[XRTracker](class_xrtracker.md#class-xrtracker) **get\_tracker**(tracker\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-xrserver-method-get-tracker)

Returns the positional tracker with the given `tracker_name`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_trackers**(tracker\_types: [int](class_int.md#class-int)) [🔗](#class-xrserver-method-get-trackers)

Returns a dictionary of trackers for `tracker_types`.

* * *

void **remove\_interface**(interface: [XRInterface](class_xrinterface.md#class-xrinterface)) [🔗](#class-xrserver-method-remove-interface)

Removes this `interface`.

* * *

void **remove\_tracker**(tracker: [XRTracker](class_xrtracker.md#class-xrtracker)) [🔗](#class-xrserver-method-remove-tracker)

Removes this `tracker`.

[Previous](class_xrpositionaltracker.md "XRPositionalTracker") [Next](class_xrtracker.md "XRTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrpositionaltracker.md "XRPositionalTracker") [Next](class_xrtracker.md "XRTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).