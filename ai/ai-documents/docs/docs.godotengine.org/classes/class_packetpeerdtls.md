---
title: PacketPeerDTLS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packetpeerdtls.html
crawled_at: "2026-08-13T10:27:40+12:00"
content_hash: f0f3bac4303ad4c66ee06779bef987cdc3ec987b60b8bf9023d8fa31496002b6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PacketPeerDTLS

* * *

# PacketPeerDTLS

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

DTLS packet peer.

## Description

This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by [DTLSServer.take\_connection()](class_dtlsserver.md#class-dtlsserver-method-take-connection).

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_to\_peer](#class-packetpeerdtls-method-connect-to-peer)(packet\_peer: [PacketPeerUDP](class_packetpeerudp.md#class-packetpeerudp), hostname: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| void | [disconnect\_from\_peer](#class-packetpeerdtls-method-disconnect-from-peer)() |
| [Status](#enum-packetpeerdtls-status) | [get\_status](#class-packetpeerdtls-method-get-status)() const |
| void | [poll](#class-packetpeerdtls-method-poll)() |

* * *

## Enumerations

enum **Status**: [🔗](#enum-packetpeerdtls-status)

[Status](#enum-packetpeerdtls-status) **STATUS\_DISCONNECTED** = `0`

A status representing a **PacketPeerDTLS** that is disconnected.

[Status](#enum-packetpeerdtls-status) **STATUS\_HANDSHAKING** = `1`

A status representing a **PacketPeerDTLS** that is currently performing the handshake with a remote peer.

[Status](#enum-packetpeerdtls-status) **STATUS\_CONNECTED** = `2`

A status representing a **PacketPeerDTLS** that is connected to a remote peer.

[Status](#enum-packetpeerdtls-status) **STATUS\_ERROR** = `3`

A status representing a **PacketPeerDTLS** in a generic error state.

[Status](#enum-packetpeerdtls-status) **STATUS\_ERROR\_HOSTNAME\_MISMATCH** = `4`

An error status that shows a mismatch in the DTLS certificate domain presented by the host and the domain requested for validation.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_to\_peer**(packet\_peer: [PacketPeerUDP](class_packetpeerudp.md#class-packetpeerudp), hostname: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-packetpeerdtls-method-connect-to-peer)

Connects a `packet_peer` beginning the DTLS handshake using the underlying [PacketPeerUDP](class_packetpeerudp.md#class-packetpeerudp) which must be connected (see [PacketPeerUDP.connect\_to\_host()](class_packetpeerudp.md#class-packetpeerudp-method-connect-to-host)). You can optionally specify the `client_options` to be used while verifying the TLS connections. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client) and [TLSOptions.client\_unsafe()](class_tlsoptions.md#class-tlsoptions-method-client-unsafe).

* * *

void **disconnect\_from\_peer**() [🔗](#class-packetpeerdtls-method-disconnect-from-peer)

Disconnects this peer, terminating the DTLS session.

* * *

[Status](#enum-packetpeerdtls-status) **get\_status**() const [🔗](#class-packetpeerdtls-method-get-status)

Returns the status of the connection.

* * *

void **poll**() [🔗](#class-packetpeerdtls-method-poll)

Poll the connection to check for incoming packets. Call this frequently to update the status and keep the connection working.

[Previous](class_packetpeer.md "PacketPeer") [Next](class_packetpeerextension.md "PacketPeerExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packetpeer.md "PacketPeer") [Next](class_packetpeerextension.md "PacketPeerExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).