---
title: ENetConnection — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_enetconnection.html
crawled_at: "2026-08-13T10:39:39+12:00"
content_hash: f8b48b4e1f487b2bd52d2e84bc087e96bb0cf74235a079657ae547ebd2abec8f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ENetConnection

* * *

# ENetConnection

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A wrapper class for an [ENetHost](http://enet.bespin.org/group__host.html).

## Description

ENet's purpose is to provide a relatively thin, simple and robust network communication layer on top of UDP (User Datagram Protocol).

## Tutorials

- [API documentation on the ENet website](http://enet.bespin.org/usergroup0.html)


## Methods

|     |     |
| --- | --- |
| void | [bandwidth\_limit](#class-enetconnection-method-bandwidth-limit)(in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) |
| void | [broadcast](#class-enetconnection-method-broadcast)(channel: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), flags: [int](class_int.md#class-int)) |
| void | [channel\_limit](#class-enetconnection-method-channel-limit)(limit: [int](class_int.md#class-int)) |
| void | [compress](#class-enetconnection-method-compress)(mode: [CompressionMode](#enum-enetconnection-compressionmode)) |
| [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer) | [connect\_to\_host](#class-enetconnection-method-connect-to-host)(address: [String](class_string.md#class-string), port: [int](class_int.md#class-int), channels: [int](class_int.md#class-int) = 0, data: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_host](#class-enetconnection-method-create-host)(max\_peers: [int](class_int.md#class-int) = 32, max\_channels: [int](class_int.md#class-int) = 0, in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_host\_bound](#class-enetconnection-method-create-host-bound)(bind\_address: [String](class_string.md#class-string), bind\_port: [int](class_int.md#class-int), max\_peers: [int](class_int.md#class-int) = 32, max\_channels: [int](class_int.md#class-int) = 0, in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) |
| void | [destroy](#class-enetconnection-method-destroy)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [dtls\_client\_setup](#class-enetconnection-method-dtls-client-setup)(hostname: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [dtls\_server\_setup](#class-enetconnection-method-dtls-server-setup)(server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) |
| void | [flush](#class-enetconnection-method-flush)() |
| [int](class_int.md#class-int) | [get\_local\_port](#class-enetconnection-method-get-local-port)() const |
| [int](class_int.md#class-int) | [get\_max\_channels](#class-enetconnection-method-get-max-channels)() const |
| [Array](class_array.md#class-array)\[ [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer)\] | [get\_peers](#class-enetconnection-method-get-peers)() |
| [float](class_float.md#class-float) | [pop\_statistic](#class-enetconnection-method-pop-statistic)(statistic: [HostStatistic](#enum-enetconnection-hoststatistic)) |
| void | [refuse\_new\_connections](#class-enetconnection-method-refuse-new-connections)(refuse: [bool](class_bool.md#class-bool)) |
| [Array](class_array.md#class-array) | [service](#class-enetconnection-method-service)(timeout: [int](class_int.md#class-int) = 0) |
| void | [socket\_send](#class-enetconnection-method-socket-send)(destination\_address: [String](class_string.md#class-string), destination\_port: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |

* * *

## Enumerations

enum **CompressionMode**: [🔗](#enum-enetconnection-compressionmode)

[CompressionMode](#enum-enetconnection-compressionmode) **COMPRESS\_NONE** = `0`

No compression. This uses the most bandwidth, but has the upside of requiring the fewest CPU resources. This option may also be used to make network debugging using tools like Wireshark easier.

[CompressionMode](#enum-enetconnection-compressionmode) **COMPRESS\_RANGE\_CODER** = `1`

ENet's built-in range encoding. Works well on small packets, but is not the most efficient algorithm on packets larger than 4 KB.

[CompressionMode](#enum-enetconnection-compressionmode) **COMPRESS\_FASTLZ** = `2`

[FastLZ](https://fastlz.org/) compression. This option uses less CPU resources compared to [COMPRESS\_ZLIB](#class-enetconnection-constant-compress-zlib), at the expense of using more bandwidth.

[CompressionMode](#enum-enetconnection-compressionmode) **COMPRESS\_ZLIB** = `3`

[Zlib](https://www.zlib.net/) compression. This option uses less bandwidth compared to [COMPRESS\_FASTLZ](#class-enetconnection-constant-compress-fastlz), at the expense of using more CPU resources.

[CompressionMode](#enum-enetconnection-compressionmode) **COMPRESS\_ZSTD** = `4`

[Zstandard](https://facebook.github.io/zstd/) compression. Note that this algorithm is not very efficient on packets smaller than 4 KB. Therefore, it's recommended to use other compression algorithms in most cases.

* * *

enum **EventType**: [🔗](#enum-enetconnection-eventtype)

[EventType](#enum-enetconnection-eventtype) **EVENT\_ERROR** = `-1`

An error occurred during [service()](#class-enetconnection-method-service). You will likely need to [destroy()](#class-enetconnection-method-destroy) the host and recreate it.

[EventType](#enum-enetconnection-eventtype) **EVENT\_NONE** = `0`

No event occurred within the specified time limit.

[EventType](#enum-enetconnection-eventtype) **EVENT\_CONNECT** = `1`

A connection request initiated by enet\_host\_connect has completed. The array will contain the peer which successfully connected.

[EventType](#enum-enetconnection-eventtype) **EVENT\_DISCONNECT** = `2`

A peer has disconnected. This event is generated on a successful completion of a disconnect initiated by [ENetPacketPeer.peer\_disconnect()](class_enetpacketpeer.md#class-enetpacketpeer-method-peer-disconnect), if a peer has timed out, or if a connection request initialized by [connect\_to\_host()](#class-enetconnection-method-connect-to-host) has timed out. The array will contain the peer which disconnected. The data field contains user supplied data describing the disconnection, or 0, if none is available.

[EventType](#enum-enetconnection-eventtype) **EVENT\_RECEIVE** = `3`

A packet has been received from a peer. The array will contain the peer which sent the packet and the channel number upon which the packet was received. The received packet will be queued to the associated [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer).

* * *

enum **HostStatistic**: [🔗](#enum-enetconnection-hoststatistic)

[HostStatistic](#enum-enetconnection-hoststatistic) **HOST\_TOTAL\_SENT\_DATA** = `0`

Total data sent.

[HostStatistic](#enum-enetconnection-hoststatistic) **HOST\_TOTAL\_SENT\_PACKETS** = `1`

Total UDP packets sent.

[HostStatistic](#enum-enetconnection-hoststatistic) **HOST\_TOTAL\_RECEIVED\_DATA** = `2`

Total data received.

[HostStatistic](#enum-enetconnection-hoststatistic) **HOST\_TOTAL\_RECEIVED\_PACKETS** = `3`

Total UDP packets received.

* * *

## Method Descriptions

void **bandwidth\_limit**(in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) [🔗](#class-enetconnection-method-bandwidth-limit)

Adjusts the bandwidth limits of a host.

* * *

void **broadcast**(channel: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), flags: [int](class_int.md#class-int)) [🔗](#class-enetconnection-method-broadcast)

Queues a `packet` to be sent to all peers associated with the host over the specified `channel`. See [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer) `FLAG_*` constants for available packet flags.

* * *

void **channel\_limit**(limit: [int](class_int.md#class-int)) [🔗](#class-enetconnection-method-channel-limit)

Limits the maximum allowed channels of future incoming connections.

* * *

void **compress**(mode: [CompressionMode](#enum-enetconnection-compressionmode)) [🔗](#class-enetconnection-method-compress)

Sets the compression method used for network packets. These have different tradeoffs of compression speed versus bandwidth, you may need to test which one works best for your use case if you use compression at all.

**Note:** Most games' network design involve sending many small packets frequently (smaller than 4 KB each). If in doubt, it is recommended to keep the default compression algorithm as it works best on these small packets.

**Note:** The compression mode must be set to the same value on both the server and all its clients. Clients will fail to connect if the compression mode set on the client differs from the one set on the server.

* * *

[ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer) **connect\_to\_host**(address: [String](class_string.md#class-string), port: [int](class_int.md#class-int), channels: [int](class_int.md#class-int) = 0, data: [int](class_int.md#class-int) = 0) [🔗](#class-enetconnection-method-connect-to-host)

Initiates a connection to a foreign `address` using the specified `port` and allocating the requested `channels`. Optional `data` can be passed during connection in the form of a 32 bit integer.

**Note:** You must call either [create\_host()](#class-enetconnection-method-create-host) or [create\_host\_bound()](#class-enetconnection-method-create-host-bound) on both ends before calling this method.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_host**(max\_peers: [int](class_int.md#class-int) = 32, max\_channels: [int](class_int.md#class-int) = 0, in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) [🔗](#class-enetconnection-method-create-host)

Creates an ENetHost that allows up to `max_peers` connected peers, each allocating up to `max_channels` channels, optionally limiting bandwidth to `in_bandwidth` and `out_bandwidth` (if greater than zero).

This method binds a random available dynamic UDP port on the host machine at the _unspecified_ address. Use [create\_host\_bound()](#class-enetconnection-method-create-host-bound) to specify the address and port.

**Note:** It is necessary to create a host in both client and server in order to establish a connection.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_host\_bound**(bind\_address: [String](class_string.md#class-string), bind\_port: [int](class_int.md#class-int), max\_peers: [int](class_int.md#class-int) = 32, max\_channels: [int](class_int.md#class-int) = 0, in\_bandwidth: [int](class_int.md#class-int) = 0, out\_bandwidth: [int](class_int.md#class-int) = 0) [🔗](#class-enetconnection-method-create-host-bound)

Creates an ENetHost bound to the given `bind_address` and `bind_port` that allows up to `max_peers` connected peers, each allocating up to `max_channels` channels, optionally limiting bandwidth to `in_bandwidth` and `out_bandwidth` (if greater than zero).

**Note:** It is necessary to create a host in both client and server in order to establish a connection.

* * *

void **destroy**() [🔗](#class-enetconnection-method-destroy)

Destroys the host and all resources associated with it.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **dtls\_client\_setup**(hostname: [String](class_string.md#class-string), client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions) = null) [🔗](#class-enetconnection-method-dtls-client-setup)

Configure this ENetHost to use the custom Godot extension allowing DTLS encryption for ENet clients. Call this before [connect\_to\_host()](#class-enetconnection-method-connect-to-host) to have ENet connect using DTLS validating the server certificate against `hostname`. You can pass the optional `client_options` parameter to customize the trusted certification authorities, or disable the common name verification. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client) and [TLSOptions.client\_unsafe()](class_tlsoptions.md#class-tlsoptions-method-client-unsafe).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **dtls\_server\_setup**(server\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) [🔗](#class-enetconnection-method-dtls-server-setup)

Configure this ENetHost to use the custom Godot extension allowing DTLS encryption for ENet servers. Call this right after [create\_host\_bound()](#class-enetconnection-method-create-host-bound) to have ENet expect peers to connect using DTLS. See [TLSOptions.server()](class_tlsoptions.md#class-tlsoptions-method-server).

* * *

void **flush**() [🔗](#class-enetconnection-method-flush)

Sends any queued packets on the host specified to its designated peers.

* * *

[int](class_int.md#class-int) **get\_local\_port**() const [🔗](#class-enetconnection-method-get-local-port)

Returns the local port to which this peer is bound.

* * *

[int](class_int.md#class-int) **get\_max\_channels**() const [🔗](#class-enetconnection-method-get-max-channels)

Returns the maximum number of channels allowed for connected peers.

* * *

[Array](class_array.md#class-array)\[ [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer)\] **get\_peers**() [🔗](#class-enetconnection-method-get-peers)

Returns the list of peers associated with this host.

**Note:** This list might include some peers that are not fully connected or are still being disconnected.

* * *

[float](class_float.md#class-float) **pop\_statistic**(statistic: [HostStatistic](#enum-enetconnection-hoststatistic)) [🔗](#class-enetconnection-method-pop-statistic)

Returns and resets host statistics.

* * *

void **refuse\_new\_connections**(refuse: [bool](class_bool.md#class-bool)) [🔗](#class-enetconnection-method-refuse-new-connections)

Configures the DTLS server to automatically drop new connections.

**Note:** This method is only relevant after calling [dtls\_server\_setup()](#class-enetconnection-method-dtls-server-setup).

* * *

[Array](class_array.md#class-array) **service**(timeout: [int](class_int.md#class-int) = 0) [🔗](#class-enetconnection-method-service)

Waits for events on this connection and shuttles packets between the host and its peers, with the given `timeout` (in milliseconds). The returned [Array](class_array.md#class-array) will have 4 elements. An [EventType](#enum-enetconnection-eventtype), the [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer) which generated the event, the event associated data (if any), the event associated channel (if any). If the generated event is [EVENT\_RECEIVE](#class-enetconnection-constant-event-receive), the received packet will be queued to the associated [ENetPacketPeer](class_enetpacketpeer.md#class-enetpacketpeer).

Call this function regularly to handle connections, disconnections, and to receive new packets.

**Note:** This method must be called on both ends involved in the event (sending and receiving hosts).

* * *

void **socket\_send**(destination\_address: [String](class_string.md#class-string), destination\_port: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-enetconnection-method-socket-send)

Sends a `packet` toward a destination from the address and port currently bound by this ENetConnection instance.

This is useful as it serves to establish entries in NAT routing tables on all devices between this bound instance and the public facing internet, allowing a prospective client's connection packets to be routed backward through the NAT device(s) between the public internet and this host.

This requires forward knowledge of a prospective client's address and communication port as seen by the public internet - after any NAT devices have handled their connection request. This information can be obtained by a [STUN](https://en.wikipedia.org/wiki/STUN) service, and must be handed off to your host by an entity that is not the prospective client. This will never work for a client behind a Symmetric NAT due to the nature of the Symmetric NAT routing algorithm, as their IP and Port cannot be known beforehand.

[Previous](class_encodedobjectasid.md "EncodedObjectAsID") [Next](class_enetmultiplayerpeer.md "ENetMultiplayerPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_encodedobjectasid.md "EncodedObjectAsID") [Next](class_enetmultiplayerpeer.md "ENetMultiplayerPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).