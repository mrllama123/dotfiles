---
title: OpenXR body tracking — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/xr/openxr_body_tracking.html
crawled_at: "2026-08-13T10:37:54+12:00"
content_hash: f226e066cce3babd50301b962805441143b56cf437a77d8091fba00a6673e561
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [XR](index.md)
  - OpenXR body tracking
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/xr/openxr_body_tracking.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# OpenXR body tracking

Support for full body tracking in OpenXR is only just becoming available for a select few platforms.
As support solidifies information will be added to this page.

## HTC Tracker support

An option that has been available for some time is doing full body tracking using HTC trackers.
These are currently supported through SteamVR and on HTC Elite XR headsets.
They are exposed through the action map system.

These trackers are identified by their roles which are assigned to them when configured.
Simply add [XRController3D](../../classes/class_xrcontroller3d.md#class-xrcontroller3d) nodes as children to
the [XROrigin3D](../../classes/class_xrorigin3d.md#class-xrorigin3d) node and assign one of the following trackers:

|     |
| --- |
| /user/vive\_tracker\_htcx/role/handheld\_object |
| /user/vive\_tracker\_htcx/role/left\_foot |
| /user/vive\_tracker\_htcx/role/right\_foot |
| /user/vive\_tracker\_htcx/role/left\_shoulder |
| /user/vive\_tracker\_htcx/role/right\_shoulder |
| /user/vive\_tracker\_htcx/role/left\_elbow |
| /user/vive\_tracker\_htcx/role/right\_elbow |
| /user/vive\_tracker\_htcx/role/left\_knee |
| /user/vive\_tracker\_htcx/role/right\_knee |
| /user/vive\_tracker\_htcx/role/waist |
| /user/vive\_tracker\_htcx/role/chest |
| /user/vive\_tracker\_htcx/role/camera |
| /user/vive\_tracker\_htcx/role/keyboard |

HTC trackers

You can now use these as targets for IK modifiers on a full body avatar.

[Previous](openxr_hand_tracking.md "OpenXR hand tracking") [Next](openxr_render_models.md "OpenXR Render Models")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](openxr_hand_tracking.md "OpenXR hand tracking") [Next](openxr_render_models.md "OpenXR Render Models")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).