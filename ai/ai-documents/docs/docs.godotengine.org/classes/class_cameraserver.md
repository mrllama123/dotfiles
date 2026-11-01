---
title: CameraServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cameraserver.html
crawled_at: "2026-08-13T10:38:13+12:00"
content_hash: 93e93eddbd2013cb3668be86bd7c0d235e52ed2231f617eca1abc918581712d7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraServer

* * *

# CameraServer

**Inherits:** [Object](class_object.md#class-object)

Server keeping track of different cameras accessible in Godot.

## Description

The **CameraServer** keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.

It is notably used to provide AR modules with a video feed from the camera.

**Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no [CameraFeed](class_camerafeed.md#class-camerafeed) s will be available. To get a [CameraFeed](class_camerafeed.md#class-camerafeed) on iOS, the camera plugin from [godot-ios-plugins](https://github.com/godotengine/godot-ios-plugins) is required.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [monitoring\_feeds](#class-cameraserver-property-monitoring-feeds) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_feed](#class-cameraserver-method-add-feed)(feed: [CameraFeed](class_camerafeed.md#class-camerafeed)) |
| [Array](class_array.md#class-array)\[ [CameraFeed](class_camerafeed.md#class-camerafeed)\] | [feeds](#class-cameraserver-method-feeds)() |
| [CameraFeed](class_camerafeed.md#class-camerafeed) | [get\_feed](#class-cameraserver-method-get-feed)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_feed\_count](#class-cameraserver-method-get-feed-count)() |
| void | [remove\_feed](#class-cameraserver-method-remove-feed)(feed: [CameraFeed](class_camerafeed.md#class-camerafeed)) |

* * *

## Signals

**camera\_feed\_added**(id: [int](class_int.md#class-int)) [🔗](#class-cameraserver-signal-camera-feed-added)

Emitted when a [CameraFeed](class_camerafeed.md#class-camerafeed) is added (e.g. a webcam is plugged in).

* * *

**camera\_feed\_removed**(id: [int](class_int.md#class-int)) [🔗](#class-cameraserver-signal-camera-feed-removed)

Emitted when a [CameraFeed](class_camerafeed.md#class-camerafeed) is removed (e.g. a webcam is unplugged).

* * *

**camera\_feeds\_updated**() [🔗](#class-cameraserver-signal-camera-feeds-updated)

Emitted when camera feeds are updated.

* * *

## Enumerations

enum **FeedImage**: [🔗](#enum-cameraserver-feedimage)

[FeedImage](#enum-cameraserver-feedimage) **FEED\_RGBA\_IMAGE** = `0`

The RGBA camera image.

[FeedImage](#enum-cameraserver-feedimage) **FEED\_YCBCR\_IMAGE** = `0`

The [YCbCr](https://en.wikipedia.org/wiki/YCbCr) camera image.

[FeedImage](#enum-cameraserver-feedimage) **FEED\_Y\_IMAGE** = `0`

The Y component camera image.

[FeedImage](#enum-cameraserver-feedimage) **FEED\_CBCR\_IMAGE** = `1`

The CbCr component camera image.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **monitoring\_feeds** = `false` [🔗](#class-cameraserver-property-monitoring-feeds)

- void **set\_monitoring\_feeds**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_monitoring\_feeds**()


If `true`, the server is actively monitoring available camera feeds.

This has a performance cost, so only set it to `true` when you're actively accessing the camera.

**Note:** After setting it to `true`, you can receive updated camera feeds through the [camera\_feeds\_updated](#class-cameraserver-signal-camera-feeds-updated) signal.

GDScriptC#

```
func _ready():
    CameraServer.camera_feeds_updated.connect(_on_camera_feeds_updated)
    CameraServer.monitoring_feeds = true

func _on_camera_feeds_updated():
    var feeds = CameraServer.feeds()

```

```
public override void _Ready()
{
    CameraServer.CameraFeedsUpdated += OnCameraFeedsUpdated;
    CameraServer.MonitoringFeeds = true;
}

void OnCameraFeedsUpdated()
{
    var feeds = CameraServer.Feeds();
}

```

* * *

## Method Descriptions

void **add\_feed**(feed: [CameraFeed](class_camerafeed.md#class-camerafeed)) [🔗](#class-cameraserver-method-add-feed)

Adds the camera `feed` to the camera server.

* * *

[Array](class_array.md#class-array)\[ [CameraFeed](class_camerafeed.md#class-camerafeed)\] **feeds**() [🔗](#class-cameraserver-method-feeds)

Returns an array of [CameraFeed](class_camerafeed.md#class-camerafeed) s.

* * *

[CameraFeed](class_camerafeed.md#class-camerafeed) **get\_feed**(index: [int](class_int.md#class-int)) [🔗](#class-cameraserver-method-get-feed)

Returns the [CameraFeed](class_camerafeed.md#class-camerafeed) corresponding to the camera with the given `index`.

* * *

[int](class_int.md#class-int) **get\_feed\_count**() [🔗](#class-cameraserver-method-get-feed-count)

Returns the number of [CameraFeed](class_camerafeed.md#class-camerafeed) s registered.

* * *

void **remove\_feed**(feed: [CameraFeed](class_camerafeed.md#class-camerafeed)) [🔗](#class-cameraserver-method-remove-feed)

Removes the specified camera `feed`.

[Previous](class_camerafeed.md "CameraFeed") [Next](class_charfxtransform.md "CharFXTransform")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_camerafeed.md "CameraFeed") [Next](class_charfxtransform.md "CharFXTransform")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).