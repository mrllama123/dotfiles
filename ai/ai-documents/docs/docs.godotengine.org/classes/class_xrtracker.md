---
title: XRTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrtracker.html
crawled_at: "2026-08-13T10:23:40+12:00"
content_hash: 79dc949b17b7905cea1728fbec5c0b8760b0f59c7cd884be7c0b80451fbe374f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRTracker

* * *

# XRTracker

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [XRFaceTracker](class_xrfacetracker.md#class-xrfacetracker), [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker)

A tracked object.

## Description

This object is the base of all XR trackers.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [description](#class-xrtracker-property-description) | `""` |
| [StringName](class_stringname.md#class-stringname) | [name](#class-xrtracker-property-name) | `&"Unknown"` |
| [TrackerType](class_xrserver.md#enum-xrserver-trackertype) | [type](#class-xrtracker-property-type) | `128` |

* * *

## Property Descriptions

[String](class_string.md#class-string) **description** = `""` [🔗](#class-xrtracker-property-description)

- void **set\_tracker\_desc**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_tracker\_desc**()


The description of this tracker.

* * *

[StringName](class_stringname.md#class-stringname) **name** = `&"Unknown"` [🔗](#class-xrtracker-property-name)

- void **set\_tracker\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_tracker\_name**()


The unique name of this tracker. The trackers that are available differ between various XR runtimes and can often be configured by the user. Godot maintains a number of reserved names that it expects the [XRInterface](class_xrinterface.md#class-xrinterface) to implement if applicable:

- `"head"` identifies the [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) of the player's head

- `"left_hand"` identifies the [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker) in the player's left hand

- `"right_hand"` identifies the [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker) in the player's right hand

- `"/user/hand_tracker/left"` identifies the [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker) for the player's left hand

- `"/user/hand_tracker/right"` identifies the [XRHandTracker](class_xrhandtracker.md#class-xrhandtracker) for the player's right hand

- `"/user/body_tracker"` identifies the [XRBodyTracker](class_xrbodytracker.md#class-xrbodytracker) for the player's body

- `"/user/face_tracker"` identifies the [XRFaceTracker](class_xrfacetracker.md#class-xrfacetracker) for the player's face


* * *

[TrackerType](class_xrserver.md#enum-xrserver-trackertype) **type** = `128` [🔗](#class-xrtracker-property-type)

- void **set\_tracker\_type**(value: [TrackerType](class_xrserver.md#enum-xrserver-trackertype))

- [TrackerType](class_xrserver.md#enum-xrserver-trackertype) **get\_tracker\_type**()


The type of tracker.

[Previous](class_xrserver.md "XRServer") [Next](class_xrvrs.md "XRVRS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrserver.md "XRServer") [Next](class_xrvrs.md "XRVRS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).