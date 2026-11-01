---
title: WebSocketMultiplayerPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_websocketmultiplayerpeer.html
crawled_at: "2026-08-13T10:26:40+12:00"
content_hash: ef4bc9d439bdf56be5ca954f7b9ba6653731c1ad5a4c8a97ef51341daece333f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebSocketMultiplayerPeer

* * *

# WebSocketMultiplayerPeer

**Inherits:** [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **<** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for WebSocket server and client.

## Description

Base class for WebSocket server and client, allowing them to be used as multiplayer peer for the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [handshake\_headers](#class-websocketmultiplayerpeer-property-handshake-headers) | `PackedStringArray()` |
| [float](class_float.md#class-float) | [handshake\_timeout](#class-websocketmultiplayerpeer-property-handshake-timeout) | `3.0` |
| [int](class_int.md#class-int) | [inbound\_buffer\_size](#class-websocketmultiplayerpeer-property-inbound-buffer-size) | `65535` |
| [int](class_int.md#class-int) | [max\_queued\_packets](#class-websocketmultiplayerpeer-property-max-queued-packets) | `4096` |
| [int](class_int.md#class-int) | [outbound\_buffer\_size](#class-websocketmultiplayerpeer-property-outbound-buffer-size) | `65535` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [supported\_protocols](#class-websocketmultiplayerpeer-property-supported-protocols) | `PackedStringArray()` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_client](#class-websocketmultiplayerpeer-method-create-client)(url: [String](class_string.md#class-string), tls\_client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_server](#class-websocketmultiplayerpeer-method-create-server)(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*", tls\_server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| [WebSocketPeer](class_websocketpeer.md#class-websocketpeer) | [get\_peer](#class-websocketmultiplayerpeer-method-get-peer)(peer\_id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_peer\_address](#class-websocketmultiplayerpeer-method-get-peer-address)(id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_peer\_port](#class-websocketmultiplayerpeer-method-get-peer-port)(id: [int](class_int.md#class-int)) const |

* * *

## Property Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **handshake\_headers** = `PackedStringArray()` [🔗](#class-websocketmultiplayerpeer-property-handshake-headers)

- void **set\_handshake\_headers**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_handshake\_headers**()


The extra headers to use during handshake. See [WebSocketPeer.handshake\_headers](class_websocketpeer.md#class-websocketpeer-property-handshake-headers) for more details.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[float](class_float.md#class-float) **handshake\_timeout** = `3.0` [🔗](#class-websocketmultiplayerpeer-property-handshake-timeout)

- void **set\_handshake\_timeout**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_handshake\_timeout**()


The maximum time each peer can stay in a connecting state before being dropped.

* * *

[int](class_int.md#class-int) **inbound\_buffer\_size** = `65535` [🔗](#class-websocketmultiplayerpeer-property-inbound-buffer-size)

- void **set\_inbound\_buffer\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_inbound\_buffer\_size**()


The inbound buffer size for connected peers. See [WebSocketPeer.inbound\_buffer\_size](class_websocketpeer.md#class-websocketpeer-property-inbound-buffer-size) for more details.

* * *

[int](class_int.md#class-int) **max\_queued\_packets** = `4096` [🔗](#class-websocketmultiplayerpeer-property-max-queued-packets)

- void **set\_max\_queued\_packets**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_queued\_packets**()


The maximum number of queued packets for connected peers. See [WebSocketPeer.max\_queued\_packets](class_websocketpeer.md#class-websocketpeer-property-max-queued-packets) for more details.

* * *

[int](class_int.md#class-int) **outbound\_buffer\_size** = `65535` [🔗](#class-websocketmultiplayerpeer-property-outbound-buffer-size)

- void **set\_outbound\_buffer\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_outbound\_buffer\_size**()


The outbound buffer size for connected peers. See [WebSocketPeer.outbound\_buffer\_size](class_websocketpeer.md#class-websocketpeer-property-outbound-buffer-size) for more details.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **supported\_protocols** = `PackedStringArray()` [🔗](#class-websocketmultiplayerpeer-property-supported-protocols)

- void **set\_supported\_protocols**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_supported\_protocols**()


The supported WebSocket sub-protocols. See [WebSocketPeer.supported\_protocols](class_websocketpeer.md#class-websocketpeer-property-supported-protocols) for more details.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **create\_client**(url: [String](class_string.md#class-string), tls\_client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-websocketmultiplayerpeer-method-create-client)

Starts a new multiplayer client connecting to the given `url`. TLS certificates will be verified against the hostname when connecting using the `wss://` protocol. You can pass the optional `tls_client_options` parameter to customize the trusted certification authorities, or disable the common name verification. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client) and [TLSOptions.client\_unsafe()](class_tlsoptions.md#class-tlsoptions-method-client-unsafe).

**Note:** It is recommended to specify the scheme part of the URL, i.e. the `url` should start with either `ws://` or `wss://`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_server**(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*", tls\_server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-websocketmultiplayerpeer-method-create-server)

Starts a new multiplayer server listening on the given `port`. You can optionally specify a `bind_address`, and provide valid `tls_server_options` to use TLS. See [TLSOptions.server()](class_tlsoptions.md#class-tlsoptions-method-server).

* * *

[WebSocketPeer](class_websocketpeer.md#class-websocketpeer) **get\_peer**(peer\_id: [int](class_int.md#class-int)) const [🔗](#class-websocketmultiplayerpeer-method-get-peer)

Returns the [WebSocketPeer](class_websocketpeer.md#class-websocketpeer) associated to the given `peer_id`.

* * *

[String](class_string.md#class-string) **get\_peer\_address**(id: [int](class_int.md#class-int)) const [🔗](#class-websocketmultiplayerpeer-method-get-peer-address)

Returns the IP address of the given peer.

* * *

[int](class_int.md#class-int) **get\_peer\_port**(id: [int](class_int.md#class-int)) const [🔗](#class-websocketmultiplayerpeer-method-get-peer-port)

Returns the remote port of the given peer.

[Previous](class_webrtcpeerconnectionextension.md "WebRTCPeerConnectionExtension") [Next](class_websocketpeer.md "WebSocketPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webrtcpeerconnectionextension.md "WebRTCPeerConnectionExtension") [Next](class_websocketpeer.md "WebSocketPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).