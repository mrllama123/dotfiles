---
title: PacketPeerStream — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packetpeerstream.html
crawled_at: "2026-08-13T10:21:57+12:00"
content_hash: ef2f5510599f998bb204c41120937c0d8cd312c678d07e4c04a2da20a4a49982
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PacketPeerStream

* * *

# PacketPeerStream

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Wrapper to use a PacketPeer over a StreamPeer.

## Description

PacketStreamPeer provides a wrapper for working using packets over a stream. This allows for using packet based code with StreamPeers. PacketPeerStream implements a custom protocol over the StreamPeer, so the user should not read or write to the wrapped StreamPeer directly.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [input\_buffer\_max\_size](#class-packetpeerstream-property-input-buffer-max-size) | `65532` |
| [int](class_int.md#class-int) | [output\_buffer\_max\_size](#class-packetpeerstream-property-output-buffer-max-size) | `65532` |
| [StreamPeer](class_streampeer.md#class-streampeer) | [stream\_peer](#class-packetpeerstream-property-stream-peer) |  |

* * *

## Property Descriptions

[int](class_int.md#class-int) **input\_buffer\_max\_size** = `65532` [🔗](#class-packetpeerstream-property-input-buffer-max-size)

- void **set\_input\_buffer\_max\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_input\_buffer\_max\_size**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **output\_buffer\_max\_size** = `65532` [🔗](#class-packetpeerstream-property-output-buffer-max-size)

- void **set\_output\_buffer\_max\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_output\_buffer\_max\_size**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[StreamPeer](class_streampeer.md#class-streampeer) **stream\_peer** [🔗](#class-packetpeerstream-property-stream-peer)

- void **set\_stream\_peer**(value: [StreamPeer](class_streampeer.md#class-streampeer))

- [StreamPeer](class_streampeer.md#class-streampeer) **get\_stream\_peer**()


The wrapped [StreamPeer](class_streampeer.md#class-streampeer) object.

[Previous](class_packetpeerextension.md "PacketPeerExtension") [Next](class_packetpeerudp.md "PacketPeerUDP")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packetpeerextension.md "PacketPeerExtension") [Next](class_packetpeerudp.md "PacketPeerUDP")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).