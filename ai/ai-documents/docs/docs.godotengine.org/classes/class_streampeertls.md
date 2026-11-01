---
title: StreamPeerTLS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_streampeertls.html
crawled_at: "2026-08-13T10:29:17+12:00"
content_hash: 11ea7afa7fe3d8c6ec6a9a4948a645e6ed4f74c5dd788904fc9e5ae44311500d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StreamPeerTLS

* * *

# StreamPeerTLS

**Inherits:** [StreamPeer](class_streampeer.md#class-streampeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A stream peer that handles TLS connections.

## Description

A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Tutorials

- [TLS certificates](../tutorials/networking/ssl_certificates.md)


## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [accept\_stream](#class-streampeertls-method-accept-stream)(stream: [StreamPeer](class_streampeer.md#class-streampeer), server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_to\_stream](#class-streampeertls-method-connect-to-stream)(stream: [StreamPeer](class_streampeer.md#class-streampeer), common\_name: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| void | [disconnect\_from\_stream](#class-streampeertls-method-disconnect-from-stream)() |
| [Status](#enum-streampeertls-status) | [get\_status](#class-streampeertls-method-get-status)() const |
| [StreamPeer](class_streampeer.md#class-streampeer) | [get\_stream](#class-streampeertls-method-get-stream)() const |
| void | [poll](#class-streampeertls-method-poll)() |

* * *

## Enumerations

enum **Status**: [🔗](#enum-streampeertls-status)

[Status](#enum-streampeertls-status) **STATUS\_DISCONNECTED** = `0`

A status representing a **StreamPeerTLS** that is disconnected.

[Status](#enum-streampeertls-status) **STATUS\_HANDSHAKING** = `1`

A status representing a **StreamPeerTLS** during handshaking.

[Status](#enum-streampeertls-status) **STATUS\_CONNECTED** = `2`

A status representing a **StreamPeerTLS** that is connected to a host.

[Status](#enum-streampeertls-status) **STATUS\_ERROR** = `3`

A status representing a **StreamPeerTLS** in error state.

[Status](#enum-streampeertls-status) **STATUS\_ERROR\_HOSTNAME\_MISMATCH** = `4`

An error status that shows a mismatch in the TLS certificate domain presented by the host and the domain requested for validation.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **accept\_stream**(stream: [StreamPeer](class_streampeer.md#class-streampeer), server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) [🔗](#class-streampeertls-method-accept-stream)

Accepts a peer connection as a server using the given `server_options`. See [TLSOptions.server()](class_tlsoptions.md#class-tlsoptions-method-server).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_to\_stream**(stream: [StreamPeer](class_streampeer.md#class-streampeer), common\_name: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-streampeertls-method-connect-to-stream)

Connects to a peer using an underlying [StreamPeer](class_streampeer.md#class-streampeer) `stream` and verifying the remote certificate is correctly signed for the given `common_name`. You can pass the optional `client_options` parameter to customize the trusted certification authorities, or disable the common name verification. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client) and [TLSOptions.client\_unsafe()](class_tlsoptions.md#class-tlsoptions-method-client-unsafe).

* * *

void **disconnect\_from\_stream**() [🔗](#class-streampeertls-method-disconnect-from-stream)

Disconnects from host.

* * *

[Status](#enum-streampeertls-status) **get\_status**() const [🔗](#class-streampeertls-method-get-status)

Returns the status of the connection.

* * *

[StreamPeer](class_streampeer.md#class-streampeer) **get\_stream**() const [🔗](#class-streampeertls-method-get-stream)

Returns the underlying [StreamPeer](class_streampeer.md#class-streampeer) connection, used in [accept\_stream()](#class-streampeertls-method-accept-stream) or [connect\_to\_stream()](#class-streampeertls-method-connect-to-stream).

* * *

void **poll**() [🔗](#class-streampeertls-method-poll)

Poll the connection to check for incoming bytes. Call this right before [StreamPeer.get\_available\_bytes()](class_streampeer.md#class-streampeer-method-get-available-bytes) for it to work properly.

[Previous](class_streampeertcp.md "StreamPeerTCP") [Next](class_subtweentweener.md "SubtweenTweener")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_streampeertcp.md "StreamPeerTCP") [Next](class_subtweentweener.md "SubtweenTweener")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).