---
title: WebRTCDataChannel — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webrtcdatachannel.html
crawled_at: "2026-08-13T10:37:00+12:00"
content_hash: f4a4adc8d197bd717d7775bc39d2f44f679f9a5a47110210d5eaf12c099152dc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebRTCDataChannel

* * *

# WebRTCDataChannel

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [WebRTCDataChannelExtension](class_webrtcdatachannelextension.md#class-webrtcdatachannelextension)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Properties

|     |     |     |
| --- | --- | --- |
| [WriteMode](#enum-webrtcdatachannel-writemode) | [write\_mode](#class-webrtcdatachannel-property-write-mode) | `1` |

## Methods

|     |     |
| --- | --- |
| void | [close](#class-webrtcdatachannel-method-close)() |
| [int](class_int.md#class-int) | [get\_buffered\_amount](#class-webrtcdatachannel-method-get-buffered-amount)() const |
| [int](class_int.md#class-int) | [get\_id](#class-webrtcdatachannel-method-get-id)() const |
| [String](class_string.md#class-string) | [get\_label](#class-webrtcdatachannel-method-get-label)() const |
| [int](class_int.md#class-int) | [get\_max\_packet\_life\_time](#class-webrtcdatachannel-method-get-max-packet-life-time)() const |
| [int](class_int.md#class-int) | [get\_max\_retransmits](#class-webrtcdatachannel-method-get-max-retransmits)() const |
| [String](class_string.md#class-string) | [get\_protocol](#class-webrtcdatachannel-method-get-protocol)() const |
| [ChannelState](#enum-webrtcdatachannel-channelstate) | [get\_ready\_state](#class-webrtcdatachannel-method-get-ready-state)() const |
| [bool](class_bool.md#class-bool) | [is\_negotiated](#class-webrtcdatachannel-method-is-negotiated)() const |
| [bool](class_bool.md#class-bool) | [is\_ordered](#class-webrtcdatachannel-method-is-ordered)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [poll](#class-webrtcdatachannel-method-poll)() |
| [bool](class_bool.md#class-bool) | [was\_string\_packet](#class-webrtcdatachannel-method-was-string-packet)() const |

* * *

## Enumerations

enum **WriteMode**: [🔗](#enum-webrtcdatachannel-writemode)

[WriteMode](#enum-webrtcdatachannel-writemode) **WRITE\_MODE\_TEXT** = `0`

Tells the channel to send data over this channel as text. An external peer (non-Godot) would receive this as a string.

[WriteMode](#enum-webrtcdatachannel-writemode) **WRITE\_MODE\_BINARY** = `1`

Tells the channel to send data over this channel as binary. An external peer (non-Godot) would receive this as array buffer or blob.

* * *

enum **ChannelState**: [🔗](#enum-webrtcdatachannel-channelstate)

[ChannelState](#enum-webrtcdatachannel-channelstate) **STATE\_CONNECTING** = `0`

The channel was created, but it's still trying to connect.

[ChannelState](#enum-webrtcdatachannel-channelstate) **STATE\_OPEN** = `1`

The channel is currently open, and data can flow over it.

[ChannelState](#enum-webrtcdatachannel-channelstate) **STATE\_CLOSING** = `2`

The channel is being closed, no new messages will be accepted, but those already in queue will be flushed.

[ChannelState](#enum-webrtcdatachannel-channelstate) **STATE\_CLOSED** = `3`

The channel was closed, or connection failed.

* * *

## Property Descriptions

[WriteMode](#enum-webrtcdatachannel-writemode) **write\_mode** = `1` [🔗](#class-webrtcdatachannel-property-write-mode)

- void **set\_write\_mode**(value: [WriteMode](#enum-webrtcdatachannel-writemode))

- [WriteMode](#enum-webrtcdatachannel-writemode) **get\_write\_mode**()


The transfer mode to use when sending outgoing packet. Either text or binary.

* * *

## Method Descriptions

void **close**() [🔗](#class-webrtcdatachannel-method-close)

Closes this data channel, notifying the other peer.

* * *

[int](class_int.md#class-int) **get\_buffered\_amount**() const [🔗](#class-webrtcdatachannel-method-get-buffered-amount)

Returns the number of bytes currently queued to be sent over this channel.

* * *

[int](class_int.md#class-int) **get\_id**() const [🔗](#class-webrtcdatachannel-method-get-id)

Returns the ID assigned to this channel during creation (or auto-assigned during negotiation).

If the channel is not negotiated out-of-band the ID will only be available after the connection is established (will return `65535` until then).

* * *

[String](class_string.md#class-string) **get\_label**() const [🔗](#class-webrtcdatachannel-method-get-label)

Returns the label assigned to this channel during creation.

* * *

[int](class_int.md#class-int) **get\_max\_packet\_life\_time**() const [🔗](#class-webrtcdatachannel-method-get-max-packet-life-time)

Returns the `maxPacketLifeTime` value assigned to this channel during creation.

Will be `65535` if not specified.

* * *

[int](class_int.md#class-int) **get\_max\_retransmits**() const [🔗](#class-webrtcdatachannel-method-get-max-retransmits)

Returns the `maxRetransmits` value assigned to this channel during creation.

Will be `65535` if not specified.

* * *

[String](class_string.md#class-string) **get\_protocol**() const [🔗](#class-webrtcdatachannel-method-get-protocol)

Returns the sub-protocol assigned to this channel during creation. An empty string if not specified.

* * *

[ChannelState](#enum-webrtcdatachannel-channelstate) **get\_ready\_state**() const [🔗](#class-webrtcdatachannel-method-get-ready-state)

Returns the current state of this channel.

* * *

[bool](class_bool.md#class-bool) **is\_negotiated**() const [🔗](#class-webrtcdatachannel-method-is-negotiated)

Returns `true` if this channel was created with out-of-band configuration.

* * *

[bool](class_bool.md#class-bool) **is\_ordered**() const [🔗](#class-webrtcdatachannel-method-is-ordered)

Returns `true` if this channel was created with ordering enabled (default).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **poll**() [🔗](#class-webrtcdatachannel-method-poll)

Reserved, but not used for now.

* * *

[bool](class_bool.md#class-bool) **was\_string\_packet**() const [🔗](#class-webrtcdatachannel-method-was-string-packet)

Returns `true` if the last received packet was transferred as text. See [write\_mode](#class-webrtcdatachannel-property-write-mode).

[Previous](class_weakref.md "WeakRef") [Next](class_webrtcdatachannelextension.md "WebRTCDataChannelExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_weakref.md "WeakRef") [Next](class_webrtcdatachannelextension.md "WebRTCDataChannelExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).