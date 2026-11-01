---
title: VideoStream — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_videostream.html
crawled_at: "2026-08-13T10:35:45+12:00"
content_hash: 64b86bb0dcbdd8624411db19c8b960357fbc33b83fb4a53063feff668c30e7a0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VideoStream

* * *

# VideoStream

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VideoStreamTheora](class_videostreamtheora.md#class-videostreamtheora)

Base resource for video streams.

## Description

Base resource type for all video streams. Classes that derive from **VideoStream** can all be used as resource types to play back videos in [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer).

## Tutorials

- [Playing videos](../tutorials/animation/playing_videos.md)

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [file](#class-videostream-property-file) | `""` |

## Methods

|     |     |
| --- | --- |
| [VideoStreamPlayback](class_videostreamplayback.md#class-videostreamplayback) | [\_instantiate\_playback](#class-videostream-private-method-instantiate-playback)() virtual |

* * *

## Property Descriptions

[String](class_string.md#class-string) **file** = `""` [🔗](#class-videostream-property-file)

- void **set\_file**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_file**()


The video file path or URI that this **VideoStream** resource handles.

For [VideoStreamTheora](class_videostreamtheora.md#class-videostreamtheora), this filename should be an Ogg Theora video file with the `.ogv` extension.

* * *

## Method Descriptions

[VideoStreamPlayback](class_videostreamplayback.md#class-videostreamplayback) **\_instantiate\_playback**() virtual [🔗](#class-videostream-private-method-instantiate-playback)

Called when the video starts playing, to initialize and return a subclass of [VideoStreamPlayback](class_videostreamplayback.md#class-videostreamplayback).

[Previous](class_tubetrailmesh.md "TubeTrailMesh") [Next](class_videostreamplayback.md "VideoStreamPlayback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tubetrailmesh.md "TubeTrailMesh") [Next](class_videostreamplayback.md "VideoStreamPlayback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).