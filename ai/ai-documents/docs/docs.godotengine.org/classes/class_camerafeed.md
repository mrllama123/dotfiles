---
title: CameraFeed — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_camerafeed.html
crawled_at: "2026-08-13T10:27:02+12:00"
content_hash: 426f800eaf64f25bde9e280003bb9e263d9107e8c18e3e92619fa85feb2acc88
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraFeed

* * *

# CameraFeed

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A camera feed gives you access to a single physical camera attached to your device.

## Description

A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also [CameraServer](class_cameraserver.md#class-cameraserver).

**Note:** Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.

**Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no **CameraFeed** s will be available. To get a **CameraFeed** on iOS, the camera plugin from [godot-ios-plugins](https://github.com/godotengine/godot-ios-plugins) is required.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [feed\_is\_active](#class-camerafeed-property-feed-is-active) | `false` |
| [Transform2D](class_transform2d.md#class-transform2d) | [feed\_transform](#class-camerafeed-property-feed-transform) | `Transform2D(1, 0, 0, -1, 0, 1)` |
| [Array](class_array.md#class-array) | [formats](#class-camerafeed-property-formats) | `[]` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_activate\_feed](#class-camerafeed-private-method-activate-feed)() virtual |
| void | [\_deactivate\_feed](#class-camerafeed-private-method-deactivate-feed)() virtual |
| [FeedDataType](#enum-camerafeed-feeddatatype) | [get\_datatype](#class-camerafeed-method-get-datatype)() const |
| [int](class_int.md#class-int) | [get\_id](#class-camerafeed-method-get-id)() const |
| [String](class_string.md#class-string) | [get\_name](#class-camerafeed-method-get-name)() const |
| [FeedPosition](#enum-camerafeed-feedposition) | [get\_position](#class-camerafeed-method-get-position)() const |
| [int](class_int.md#class-int) | [get\_texture\_tex\_id](#class-camerafeed-method-get-texture-tex-id)(feed\_image\_type: [FeedImage](class_cameraserver.md#enum-cameraserver-feedimage)) |
| void | [set\_external](#class-camerafeed-method-set-external)(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [set\_format](#class-camerafeed-method-set-format)(index: [int](class_int.md#class-int), parameters: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [set\_name](#class-camerafeed-method-set-name)(name: [String](class_string.md#class-string)) |
| void | [set\_position](#class-camerafeed-method-set-position)(position: [FeedPosition](#enum-camerafeed-feedposition)) |
| void | [set\_rgb\_image](#class-camerafeed-method-set-rgb-image)(rgb\_image: [Image](class_image.md#class-image)) |
| void | [set\_ycbcr\_image](#class-camerafeed-method-set-ycbcr-image)(ycbcr\_image: [Image](class_image.md#class-image)) |

* * *

## Signals

**format\_changed**() [🔗](#class-camerafeed-signal-format-changed)

Emitted when the format has changed.

* * *

**frame\_changed**() [🔗](#class-camerafeed-signal-frame-changed)

Emitted when a new frame is available.

* * *

## Enumerations

enum **FeedDataType**: [🔗](#enum-camerafeed-feeddatatype)

[FeedDataType](#enum-camerafeed-feeddatatype) **FEED\_NOIMAGE** = `0`

No image set for the feed.

[FeedDataType](#enum-camerafeed-feeddatatype) **FEED\_RGB** = `1`

Feed supplies RGB images.

[FeedDataType](#enum-camerafeed-feeddatatype) **FEED\_YCBCR** = `2`

Feed supplies YCbCr images that need to be converted to RGB.

[FeedDataType](#enum-camerafeed-feeddatatype) **FEED\_YCBCR\_SEP** = `3`

Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.

[FeedDataType](#enum-camerafeed-feeddatatype) **FEED\_EXTERNAL** = `4`

Feed supplies external image.

* * *

enum **FeedPosition**: [🔗](#enum-camerafeed-feedposition)

[FeedPosition](#enum-camerafeed-feedposition) **FEED\_UNSPECIFIED** = `0`

Unspecified position.

[FeedPosition](#enum-camerafeed-feedposition) **FEED\_FRONT** = `1`

Camera is mounted at the front of the device.

[FeedPosition](#enum-camerafeed-feedposition) **FEED\_BACK** = `2`

Camera is mounted at the back of the device.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **feed\_is\_active** = `false` [🔗](#class-camerafeed-property-feed-is-active)

- void **set\_active**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_active**()


If `true`, the feed is active.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **feed\_transform** = `Transform2D(1, 0, 0, -1, 0, 1)` [🔗](#class-camerafeed-property-feed-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The transform applied to the camera's image.

* * *

[Array](class_array.md#class-array) **formats** = `[]` [🔗](#class-camerafeed-property-formats)

- [Array](class_array.md#class-array) **get\_formats**()


Formats supported by the feed. Each entry is a [Dictionary](class_dictionary.md#class-dictionary) describing format parameters.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_activate\_feed**() virtual [🔗](#class-camerafeed-private-method-activate-feed)

Called when the camera feed is activated.

* * *

void **\_deactivate\_feed**() virtual [🔗](#class-camerafeed-private-method-deactivate-feed)

Called when the camera feed is deactivated.

* * *

[FeedDataType](#enum-camerafeed-feeddatatype) **get\_datatype**() const [🔗](#class-camerafeed-method-get-datatype)

Returns feed image data type.

* * *

[int](class_int.md#class-int) **get\_id**() const [🔗](#class-camerafeed-method-get-id)

Returns the unique ID for this feed.

* * *

[String](class_string.md#class-string) **get\_name**() const [🔗](#class-camerafeed-method-get-name)

Returns the camera's name.

* * *

[FeedPosition](#enum-camerafeed-feedposition) **get\_position**() const [🔗](#class-camerafeed-method-get-position)

Returns the position of camera on the device.

* * *

[int](class_int.md#class-int) **get\_texture\_tex\_id**(feed\_image\_type: [FeedImage](class_cameraserver.md#enum-cameraserver-feedimage)) [🔗](#class-camerafeed-method-get-texture-tex-id)

Returns the texture backend ID (usable by some external libraries that need a handle to a texture to write data).

* * *

void **set\_external**(width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) [🔗](#class-camerafeed-method-set-external)

Sets the feed as external feed provided by another library.

* * *

[bool](class_bool.md#class-bool) **set\_format**(index: [int](class_int.md#class-int), parameters: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-camerafeed-method-set-format)

Sets the feed format parameters for the given `index` in the [formats](#class-camerafeed-property-formats) array. Returns `true` on success. By default, the YUYV encoded stream is transformed to [FEED\_RGB](#class-camerafeed-constant-feed-rgb). The YUYV encoded stream output format can be changed by setting `parameters`'s `output` entry to one of the following:

- `"separate"` will result in [FEED\_YCBCR\_SEP](#class-camerafeed-constant-feed-ycbcr-sep);

- `"grayscale"` will result in desaturated [FEED\_RGB](#class-camerafeed-constant-feed-rgb);

- `"copy"` will result in [FEED\_YCBCR](#class-camerafeed-constant-feed-ycbcr).


* * *

void **set\_name**(name: [String](class_string.md#class-string)) [🔗](#class-camerafeed-method-set-name)

Sets the camera's name.

* * *

void **set\_position**(position: [FeedPosition](#enum-camerafeed-feedposition)) [🔗](#class-camerafeed-method-set-position)

Sets the position of this camera.

* * *

void **set\_rgb\_image**(rgb\_image: [Image](class_image.md#class-image)) [🔗](#class-camerafeed-method-set-rgb-image)

Sets RGB image for this feed.

* * *

void **set\_ycbcr\_image**(ycbcr\_image: [Image](class_image.md#class-image)) [🔗](#class-camerafeed-method-set-ycbcr-image)

Sets YCbCr image for this feed.

[Previous](class_callbacktweener.md "CallbackTweener") [Next](class_cameraserver.md "CameraServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_callbacktweener.md "CallbackTweener") [Next](class_cameraserver.md "CameraServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).