---
title: WebSocketPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_websocketpeer.html
crawled_at: "2026-08-13T10:24:06+12:00"
content_hash: c88e3303e8c91180b6f1c42a56fa4193af2c3caa135636a607edf8368f866c36
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebSocketPeer

* * *

# WebSocketPeer

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A WebSocket connection.

## Description

This class represents WebSocket connection, and can be used as a WebSocket client (RFC 6455-compliant) or as a remote peer of a WebSocket server.

You can send WebSocket binary frames using [PacketPeer.put\_packet()](class_packetpeer.md#class-packetpeer-method-put-packet), and WebSocket text frames using [send()](#class-websocketpeer-method-send) (prefer text frames when interacting with text-based API). You can check the frame type of the last packet via [was\_string\_packet()](#class-websocketpeer-method-was-string-packet).

To start a WebSocket client, first call [connect\_to\_url()](#class-websocketpeer-method-connect-to-url), then regularly call [poll()](#class-websocketpeer-method-poll) (e.g. during [Node](class_node.md#class-node) process). You can query the socket state via [get\_ready\_state()](#class-websocketpeer-method-get-ready-state), get the number of pending packets using [PacketPeer.get\_available\_packet\_count()](class_packetpeer.md#class-packetpeer-method-get-available-packet-count), and retrieve them via [PacketPeer.get\_packet()](class_packetpeer.md#class-packetpeer-method-get-packet).

GDScript

```
extends Node

var socket = WebSocketPeer.new()

func _ready():
    socket.connect_to_url("wss://example.com")

func _process(delta):
    socket.poll()
    var state = socket.get_ready_state()
    if state == WebSocketPeer.STATE_OPEN:
        while socket.get_available_packet_count():
            print("Packet: ", socket.get_packet())
    elif state == WebSocketPeer.STATE_CLOSING:
        # Keep polling to achieve proper close.
        pass
    elif state == WebSocketPeer.STATE_CLOSED:
        var code = socket.get_close_code()
        var reason = socket.get_close_reason()
        print("WebSocket closed with code: %d, reason %s. Clean: %s" % [code, reason, code != -1])
        set_process(false) # Stop processing.

```

To use the peer as part of a WebSocket server refer to [accept\_stream()](#class-websocketpeer-method-accept-stream) and the online tutorial.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [handshake\_headers](#class-websocketpeer-property-handshake-headers) | `PackedStringArray()` |
| [float](class_float.md#class-float) | [heartbeat\_interval](#class-websocketpeer-property-heartbeat-interval) | `0.0` |
| [int](class_int.md#class-int) | [inbound\_buffer\_size](#class-websocketpeer-property-inbound-buffer-size) | `65535` |
| [int](class_int.md#class-int) | [max\_queued\_packets](#class-websocketpeer-property-max-queued-packets) | `4096` |
| [int](class_int.md#class-int) | [outbound\_buffer\_size](#class-websocketpeer-property-outbound-buffer-size) | `65535` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [supported\_protocols](#class-websocketpeer-property-supported-protocols) | `PackedStringArray()` |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [accept\_stream](#class-websocketpeer-method-accept-stream)(stream: [StreamPeer](class_streampeer.md#class-streampeer)) |
| void | [close](#class-websocketpeer-method-close)(code: [int](class_int.md#class-int) = 1000, reason: [String](class_string.md#class-string) = "") |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_to\_url](#class-websocketpeer-method-connect-to-url)(url: [String](class_string.md#class-string), tls\_client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| [int](class_int.md#class-int) | [get\_close\_code](#class-websocketpeer-method-get-close-code)() const |
| [String](class_string.md#class-string) | [get\_close\_reason](#class-websocketpeer-method-get-close-reason)() const |
| [String](class_string.md#class-string) | [get\_connected\_host](#class-websocketpeer-method-get-connected-host)() const |
| [int](class_int.md#class-int) | [get\_connected\_port](#class-websocketpeer-method-get-connected-port)() const |
| [int](class_int.md#class-int) | [get\_current\_outbound\_buffered\_amount](#class-websocketpeer-method-get-current-outbound-buffered-amount)() const |
| [State](#enum-websocketpeer-state) | [get\_ready\_state](#class-websocketpeer-method-get-ready-state)() const |
| [String](class_string.md#class-string) | [get\_requested\_url](#class-websocketpeer-method-get-requested-url)() const |
| [String](class_string.md#class-string) | [get\_selected\_protocol](#class-websocketpeer-method-get-selected-protocol)() const |
| void | [poll](#class-websocketpeer-method-poll)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [send](#class-websocketpeer-method-send)(message: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), write\_mode: [WriteMode](#enum-websocketpeer-writemode) = 1) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [send\_text](#class-websocketpeer-method-send-text)(message: [String](class_string.md#class-string)) |
| void | [set\_no\_delay](#class-websocketpeer-method-set-no-delay)(enabled: [bool](class_bool.md#class-bool)) |
| [bool](class_bool.md#class-bool) | [was\_string\_packet](#class-websocketpeer-method-was-string-packet)() const |

* * *

## Enumerations

enum **WriteMode**: [🔗](#enum-websocketpeer-writemode)

[WriteMode](#enum-websocketpeer-writemode) **WRITE\_MODE\_TEXT** = `0`

Specifies that WebSockets messages should be transferred as text payload (only valid UTF-8 is allowed).

[WriteMode](#enum-websocketpeer-writemode) **WRITE\_MODE\_BINARY** = `1`

Specifies that WebSockets messages should be transferred as binary payload (any byte combination is allowed).

* * *

enum **State**: [🔗](#enum-websocketpeer-state)

[State](#enum-websocketpeer-state) **STATE\_CONNECTING** = `0`

Socket has been created. The connection is not yet open.

[State](#enum-websocketpeer-state) **STATE\_OPEN** = `1`

The connection is open and ready to communicate.

[State](#enum-websocketpeer-state) **STATE\_CLOSING** = `2`

The connection is in the process of closing. This means a close request has been sent to the remote peer but confirmation has not been received.

[State](#enum-websocketpeer-state) **STATE\_CLOSED** = `3`

The connection is closed or couldn't be opened.

* * *

## Property Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **handshake\_headers** = `PackedStringArray()` [🔗](#class-websocketpeer-property-handshake-headers)

- void **set\_handshake\_headers**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_handshake\_headers**()


The extra HTTP headers to be sent during the WebSocket handshake.

**Note:** Not supported in Web exports due to browsers' restrictions.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[float](class_float.md#class-float) **heartbeat\_interval** = `0.0` [🔗](#class-websocketpeer-property-heartbeat-interval)

- void **set\_heartbeat\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_heartbeat\_interval**()


The interval (in seconds) at which the peer will automatically send WebSocket "ping" control frames. When set to `0`, no "ping" control frames will be sent.

**Note:** Has no effect in Web exports due to browser restrictions.

* * *

[int](class_int.md#class-int) **inbound\_buffer\_size** = `65535` [🔗](#class-websocketpeer-property-inbound-buffer-size)

- void **set\_inbound\_buffer\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_inbound\_buffer\_size**()


The size of the input buffer in bytes (roughly the maximum amount of memory that will be allocated for the inbound packets).

* * *

[int](class_int.md#class-int) **max\_queued\_packets** = `4096` [🔗](#class-websocketpeer-property-max-queued-packets)

- void **set\_max\_queued\_packets**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_queued\_packets**()


The maximum amount of packets that will be allowed in the queues (both inbound and outbound).

* * *

[int](class_int.md#class-int) **outbound\_buffer\_size** = `65535` [🔗](#class-websocketpeer-property-outbound-buffer-size)

- void **set\_outbound\_buffer\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_outbound\_buffer\_size**()


The size of the input buffer in bytes (roughly the maximum amount of memory that will be allocated for the outbound packets).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **supported\_protocols** = `PackedStringArray()` [🔗](#class-websocketpeer-property-supported-protocols)

- void **set\_supported\_protocols**(value: [PackedStringArray](class_packedstringarray.md#class-packedstringarray))

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_supported\_protocols**()


The WebSocket sub-protocols allowed during the WebSocket handshake.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **accept\_stream**(stream: [StreamPeer](class_streampeer.md#class-streampeer)) [🔗](#class-websocketpeer-method-accept-stream)

Accepts a peer connection performing the HTTP handshake as a WebSocket server. The `stream` must be a valid TCP stream retrieved via [TCPServer.take\_connection()](class_tcpserver.md#class-tcpserver-method-take-connection), or a TLS stream accepted via [StreamPeerTLS.accept\_stream()](class_streampeertls.md#class-streampeertls-method-accept-stream).

**Note:** Not supported in Web exports due to browsers' restrictions.

* * *

void **close**(code: [int](class_int.md#class-int) = 1000, reason: [String](class_string.md#class-string) = "") [🔗](#class-websocketpeer-method-close)

Closes this WebSocket connection. `code` is the status code for the closure (see RFC 6455 section 7.4 for a list of valid status codes). `reason` is the human readable reason for closing the connection (can be any UTF-8 string that's smaller than 123 bytes). If `code` is negative, the connection will be closed immediately without notifying the remote peer.

**Note:** To achieve a clean close, you will need to keep polling until [STATE\_CLOSED](#class-websocketpeer-constant-state-closed) is reached.

**Note:** The Web export might not support all status codes. Please refer to browser-specific documentation for more details.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_to\_url**(url: [String](class_string.md#class-string), tls\_client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-websocketpeer-method-connect-to-url)

Connects to the given URL. TLS certificates will be verified against the hostname when connecting using the `wss://` protocol. You can pass the optional `tls_client_options` parameter to customize the trusted certification authorities, or disable the common name verification. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client) and [TLSOptions.client\_unsafe()](class_tlsoptions.md#class-tlsoptions-method-client-unsafe).

**Note:** This method is non-blocking, and will return [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) before the connection is established as long as the provided parameters are valid and the peer is not in an invalid state (e.g. already connected). Regularly call [poll()](#class-websocketpeer-method-poll) (e.g. during [Node](class_node.md#class-node) process) and check the result of [get\_ready\_state()](#class-websocketpeer-method-get-ready-state) to know whether the connection succeeds or fails.

**Note:** To avoid mixed content warnings or errors in Web, you may have to use a `url` that starts with `wss://` (secure) instead of `ws://`. When doing so, make sure to use the fully qualified domain name that matches the one defined in the server's TLS certificate. Do not connect directly via the IP address for `wss://` connections, as it won't match with the TLS certificate.

* * *

[int](class_int.md#class-int) **get\_close\_code**() const [🔗](#class-websocketpeer-method-get-close-code)

Returns the received WebSocket close frame status code, or `-1` when the connection was not cleanly closed. Only call this method when [get\_ready\_state()](#class-websocketpeer-method-get-ready-state) returns [STATE\_CLOSED](#class-websocketpeer-constant-state-closed).

* * *

[String](class_string.md#class-string) **get\_close\_reason**() const [🔗](#class-websocketpeer-method-get-close-reason)

Returns the received WebSocket close frame status reason string. Only call this method when [get\_ready\_state()](#class-websocketpeer-method-get-ready-state) returns [STATE\_CLOSED](#class-websocketpeer-constant-state-closed).

* * *

[String](class_string.md#class-string) **get\_connected\_host**() const [🔗](#class-websocketpeer-method-get-connected-host)

Returns the IP address of the connected peer.

**Note:** Not available in the Web export.

* * *

[int](class_int.md#class-int) **get\_connected\_port**() const [🔗](#class-websocketpeer-method-get-connected-port)

Returns the remote port of the connected peer.

**Note:** Not available in the Web export.

* * *

[int](class_int.md#class-int) **get\_current\_outbound\_buffered\_amount**() const [🔗](#class-websocketpeer-method-get-current-outbound-buffered-amount)

Returns the current amount of data in the outbound websocket buffer. **Note:** Web exports use WebSocket.bufferedAmount, while other platforms use an internal buffer.

* * *

[State](#enum-websocketpeer-state) **get\_ready\_state**() const [🔗](#class-websocketpeer-method-get-ready-state)

Returns the ready state of the connection.

* * *

[String](class_string.md#class-string) **get\_requested\_url**() const [🔗](#class-websocketpeer-method-get-requested-url)

Returns the URL requested by this peer. The URL is derived from the `url` passed to [connect\_to\_url()](#class-websocketpeer-method-connect-to-url) or from the HTTP headers when acting as server (i.e. when using [accept\_stream()](#class-websocketpeer-method-accept-stream)).

* * *

[String](class_string.md#class-string) **get\_selected\_protocol**() const [🔗](#class-websocketpeer-method-get-selected-protocol)

Returns the selected WebSocket sub-protocol for this connection or an empty string if the sub-protocol has not been selected yet.

* * *

void **poll**() [🔗](#class-websocketpeer-method-poll)

Updates the connection state and receive incoming packets. Call this function regularly to keep it in a clean state.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **send**(message: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), write\_mode: [WriteMode](#enum-websocketpeer-writemode) = 1) [🔗](#class-websocketpeer-method-send)

Sends the given `message` using the desired `write_mode`. When sending a [String](class_string.md#class-string), prefer using [send\_text()](#class-websocketpeer-method-send-text).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **send\_text**(message: [String](class_string.md#class-string)) [🔗](#class-websocketpeer-method-send-text)

Sends the given `message` using WebSocket text mode. Prefer this method over [PacketPeer.put\_packet()](class_packetpeer.md#class-packetpeer-method-put-packet) when interacting with third-party text-based API (e.g. when using [JSON](class_json.md#class-json) formatted messages).

* * *

void **set\_no\_delay**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-websocketpeer-method-set-no-delay)

Disable Nagle's algorithm on the underlying TCP socket (default). See [StreamPeerTCP.set\_no\_delay()](class_streampeertcp.md#class-streampeertcp-method-set-no-delay) for more information.

**Note:** Not available in the Web export.

* * *

[bool](class_bool.md#class-bool) **was\_string\_packet**() const [🔗](#class-websocketpeer-method-was-string-packet)

Returns `true` if the last received packet was sent as a text payload. See [WriteMode](#enum-websocketpeer-writemode).

[Previous](class_websocketmultiplayerpeer.md "WebSocketMultiplayerPeer") [Next](class_webxrinterface.md "WebXRInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_websocketmultiplayerpeer.md "WebSocketMultiplayerPeer") [Next](class_webxrinterface.md "WebXRInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).