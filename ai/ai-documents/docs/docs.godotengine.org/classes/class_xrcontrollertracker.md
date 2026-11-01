---
title: XRControllerTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrcontrollertracker.html
crawled_at: "2026-08-13T10:41:15+12:00"
content_hash: 664402cfb5ac3d627001c525a6699ef425d50f4c09bfe19d30837e067eff8217
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRControllerTracker

* * *

# XRControllerTracker

**Inherits:** [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) **<** [XRTracker](class_xrtracker.md#class-xrtracker) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A tracked controller.

## Description

An instance of this object represents a controller that is tracked.

As controllers are turned on and the [XRInterface](class_xrinterface.md#class-xrinterface) detects them, instances of this object are automatically added to this list of active tracking objects accessible through the [XRServer](class_xrserver.md#class-xrserver).

The [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d) consumes objects of this type and should be used in your project.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [TrackerType](class_xrserver.md#enum-xrserver-trackertype) | type | `2` (overrides [XRTracker](class_xrtracker.md#class-xrtracker-property-type)) |

[Previous](class_xrbodytracker.md "XRBodyTracker") [Next](class_xrfacetracker.md "XRFaceTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrbodytracker.md "XRBodyTracker") [Next](class_xrfacetracker.md "XRFaceTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).