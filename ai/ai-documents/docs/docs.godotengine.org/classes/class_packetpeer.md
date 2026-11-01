---
title: PacketPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packetpeer.html
crawled_at: "2026-08-13T10:38:48+12:00"
content_hash: 88e5b6d4d0665ff73f2740af95eb57cfc6df40cab75d03008b6dba9604e9fefb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PacketPeer

* * *

# PacketPeer

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer), [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer), [PacketPeerDTLS](class_packetpeerdtls.md#class-packetpeerdtls), [PacketPeerExtension](class_packetpeerextension.md#class-packetpeerextension), [PacketPeerStream](class_packetpeerstream.md#class-packetpeerstream), [PacketPeerUDP](class_packetpeerudp.md#class-packetpeerudp), [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel), [WebSocketPeer](class_websocketpeer.md#class-websocketpeer)

Abstraction and base class for packet-based protocols.

## Description

PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [encode\_buffer\_max\_size](#class-packetpeer-property-encode-buffer-max-size) | `8388608` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_available\_packet\_count](#class-packetpeer-method-get-available-packet-count)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_packet](#class-packetpeer-method-get-packet)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [get\_packet\_error](#class-packetpeer-method-get-packet-error)() const |
| [Variant](class_variant.md#class-variant) | [get\_var](#class-packetpeer-method-get-var)(allow\_objects: [bool](class_bool.md#class-bool) = false) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [put\_packet](#class-packetpeer-method-put-packet)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [put\_var](#class-packetpeer-method-put-var)(var: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **encode\_buffer\_max\_size** = `8388608` [🔗](#class-packetpeer-property-encode-buffer-max-size)

- void **set\_encode\_buffer\_max\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_encode\_buffer\_max\_size**()


Maximum buffer size allowed when encoding [Variant](class_variant.md#class-variant) s. Raise this value to support heavier memory allocations.

The [put\_var()](#class-packetpeer-method-put-var) method allocates memory on the stack, and the buffer used will grow automatically to the closest power of two to match the size of the [Variant](class_variant.md#class-variant). If the [Variant](class_variant.md#class-variant) is bigger than [encode\_buffer\_max\_size](#class-packetpeer-property-encode-buffer-max-size), the method will error out with [@GlobalScope.ERR\_OUT\_OF\_MEMORY](class_@globalscope.md#class-globalscope-constant-err-out-of-memory).

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_available\_packet\_count**() const [🔗](#class-packetpeer-method-get-available-packet-count)

Returns the number of packets currently available in the ring-buffer.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_packet**() [🔗](#class-packetpeer-method-get-packet)

Gets a raw packet.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **get\_packet\_error**() const [🔗](#class-packetpeer-method-get-packet-error)

Returns the error state of the last packet received (via [get\_packet()](#class-packetpeer-method-get-packet) and [get\_var()](#class-packetpeer-method-get-var)).

* * *

[Variant](class_variant.md#class-variant) **get\_var**(allow\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-packetpeer-method-get-var)

Gets a Variant. If `allow_objects` is `true`, decoding objects is allowed.

Internally, this uses the same decoding mechanism as the [@GlobalScope.bytes\_to\_var()](class_@globalscope.md#class-globalscope-method-bytes-to-var) method.

**Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **put\_packet**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-packetpeer-method-put-packet)

Sends a raw packet.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **put\_var**(var: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-packetpeer-method-put-var)

Sends a [Variant](class_variant.md#class-variant) as a packet. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).

Internally, this uses the same encoding mechanism as the [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) method.

[Previous](class_packeddatacontainerref.md "PackedDataContainerRef") [Next](class_packetpeerdtls.md "PacketPeerDTLS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packeddatacontainerref.md "PackedDataContainerRef") [Next](class_packetpeerdtls.md "PacketPeerDTLS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).