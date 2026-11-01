---
title: MultiplayerPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayerpeer.html
crawled_at: "2026-08-13T10:26:56+12:00"
content_hash: 5f126d31c86117090fc9418df5747765b8a21429220a8e253bd908fce2d0a00a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerPeer

* * *

# MultiplayerPeer

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [ENetMultiplayerPeer](class_enetmultiplayerpeer.md#class-enetmultiplayerpeer), [MultiplayerPeerExtension](class_multiplayerpeerextension.md#class-multiplayerpeerextension), [OfflineMultiplayerPeer](class_offlinemultiplayerpeer.md#class-offlinemultiplayerpeer), [WebRTCMultiplayerPeer](class_webrtcmultiplayerpeer.md#class-webrtcmultiplayerpeer), [WebSocketMultiplayerPeer](class_websocketmultiplayerpeer.md#class-websocketmultiplayerpeer)

Abstract class for specialized [PacketPeer](class_packetpeer.md#class-packetpeer) s used by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

## Description

Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

**Note:** The [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Tutorials

- [High-level multiplayer](../tutorials/networking/high_level_multiplayer.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [refuse\_new\_connections](#class-multiplayerpeer-property-refuse-new-connections) | `false` |
| [int](class_int.md#class-int) | [transfer\_channel](#class-multiplayerpeer-property-transfer-channel) | `0` |
| [TransferMode](#enum-multiplayerpeer-transfermode) | [transfer\_mode](#class-multiplayerpeer-property-transfer-mode) | `2` |

## Methods

|     |     |
| --- | --- |
| void | [close](#class-multiplayerpeer-method-close)() |
| void | [disconnect\_peer](#class-multiplayerpeer-method-disconnect-peer)(peer: [int](class_int.md#class-int), force: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [generate\_unique\_id](#class-multiplayerpeer-method-generate-unique-id)() const |
| [ConnectionStatus](#enum-multiplayerpeer-connectionstatus) | [get\_connection\_status](#class-multiplayerpeer-method-get-connection-status)() const |
| [int](class_int.md#class-int) | [get\_packet\_channel](#class-multiplayerpeer-method-get-packet-channel)() const |
| [TransferMode](#enum-multiplayerpeer-transfermode) | [get\_packet\_mode](#class-multiplayerpeer-method-get-packet-mode)() const |
| [int](class_int.md#class-int) | [get\_packet\_peer](#class-multiplayerpeer-method-get-packet-peer)() const |
| [int](class_int.md#class-int) | [get\_unique\_id](#class-multiplayerpeer-method-get-unique-id)() const |
| [bool](class_bool.md#class-bool) | [is\_server\_relay\_supported](#class-multiplayerpeer-method-is-server-relay-supported)() const |
| void | [poll](#class-multiplayerpeer-method-poll)() |
| void | [set\_target\_peer](#class-multiplayerpeer-method-set-target-peer)(id: [int](class_int.md#class-int)) |

* * *

## Signals

**peer\_connected**(id: [int](class_int.md#class-int)) [🔗](#class-multiplayerpeer-signal-peer-connected)

Emitted when a remote peer connects.

* * *

**peer\_disconnected**(id: [int](class_int.md#class-int)) [🔗](#class-multiplayerpeer-signal-peer-disconnected)

Emitted when a remote peer has disconnected.

* * *

## Enumerations

enum **ConnectionStatus**: [🔗](#enum-multiplayerpeer-connectionstatus)

[ConnectionStatus](#enum-multiplayerpeer-connectionstatus) **CONNECTION\_DISCONNECTED** = `0`

The MultiplayerPeer is disconnected.

[ConnectionStatus](#enum-multiplayerpeer-connectionstatus) **CONNECTION\_CONNECTING** = `1`

The MultiplayerPeer is currently connecting to a server.

[ConnectionStatus](#enum-multiplayerpeer-connectionstatus) **CONNECTION\_CONNECTED** = `2`

This MultiplayerPeer is connected.

* * *

enum **TransferMode**: [🔗](#enum-multiplayerpeer-transfermode)

[TransferMode](#enum-multiplayerpeer-transfermode) **TRANSFER\_MODE\_UNRELIABLE** = `0`

Packets are not acknowledged, no resend attempts are made for lost packets. Packets may arrive in any order. Potentially faster than [TRANSFER\_MODE\_UNRELIABLE\_ORDERED](#class-multiplayerpeer-constant-transfer-mode-unreliable-ordered). Use for non-critical data, and always consider whether the order matters.

[TransferMode](#enum-multiplayerpeer-transfermode) **TRANSFER\_MODE\_UNRELIABLE\_ORDERED** = `1`

Packets are not acknowledged, no resend attempts are made for lost packets. Packets are received in the order they were sent in. Potentially faster than [TRANSFER\_MODE\_RELIABLE](#class-multiplayerpeer-constant-transfer-mode-reliable). Use for non-critical data or data that would be outdated if received late due to resend attempt(s) anyway, for example movement and positional data.

[TransferMode](#enum-multiplayerpeer-transfermode) **TRANSFER\_MODE\_RELIABLE** = `2`

Packets must be received and resend attempts should be made until the packets are acknowledged. Packets must be received in the order they were sent in. Most reliable transfer mode, but potentially the slowest due to the overhead. Use for critical data that must be transmitted and arrive in order, for example an ability being triggered or a chat message. Consider carefully if the information really is critical, and use sparingly.

* * *

## Constants

**TARGET\_PEER\_BROADCAST** = `0` [🔗](#class-multiplayerpeer-constant-target-peer-broadcast)

Packets are sent to all connected peers.

**TARGET\_PEER\_SERVER** = `1` [🔗](#class-multiplayerpeer-constant-target-peer-server)

Packets are sent to the remote peer acting as server.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **refuse\_new\_connections** = `false` [🔗](#class-multiplayerpeer-property-refuse-new-connections)

- void **set\_refuse\_new\_connections**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_refusing\_new\_connections**()


If `true`, this **MultiplayerPeer** refuses new connections.

* * *

[int](class_int.md#class-int) **transfer\_channel** = `0` [🔗](#class-multiplayerpeer-property-transfer-channel)

- void **set\_transfer\_channel**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_transfer\_channel**()


The channel to use to send packets. Many network APIs such as ENet and WebRTC allow the creation of multiple independent channels which behaves, in a way, like separate connections. This means that reliable data will only block delivery of other packets on that channel, and ordering will only be in respect to the channel the packet is being sent on. Using different channels to send **different and independent** state updates is a common way to optimize network usage and decrease latency in fast-paced games.

**Note:** The default channel ( `0`) actually works as 3 separate channels (one for each [TransferMode](#enum-multiplayerpeer-transfermode)) so that [TRANSFER\_MODE\_RELIABLE](#class-multiplayerpeer-constant-transfer-mode-reliable) and [TRANSFER\_MODE\_UNRELIABLE\_ORDERED](#class-multiplayerpeer-constant-transfer-mode-unreliable-ordered) does not interact with each other by default. Refer to the specific network API documentation (e.g. ENet or WebRTC) to learn how to set up channels correctly.

* * *

[TransferMode](#enum-multiplayerpeer-transfermode) **transfer\_mode** = `2` [🔗](#class-multiplayerpeer-property-transfer-mode)

- void **set\_transfer\_mode**(value: [TransferMode](#enum-multiplayerpeer-transfermode))

- [TransferMode](#enum-multiplayerpeer-transfermode) **get\_transfer\_mode**()


The manner in which to send packets to the target peer. See the [set\_target\_peer()](#class-multiplayerpeer-method-set-target-peer) method.

* * *

## Method Descriptions

void **close**() [🔗](#class-multiplayerpeer-method-close)

Immediately close the multiplayer peer returning to the state [CONNECTION\_DISCONNECTED](#class-multiplayerpeer-constant-connection-disconnected). Connected peers will be dropped without emitting [peer\_disconnected](#class-multiplayerpeer-signal-peer-disconnected).

* * *

void **disconnect\_peer**(peer: [int](class_int.md#class-int), force: [bool](class_bool.md#class-bool) = false) [🔗](#class-multiplayerpeer-method-disconnect-peer)

Disconnects the given `peer` from this host. If `force` is `true` the [peer\_disconnected](#class-multiplayerpeer-signal-peer-disconnected) signal will not be emitted for this peer.

* * *

[int](class_int.md#class-int) **generate\_unique\_id**() const [🔗](#class-multiplayerpeer-method-generate-unique-id)

Returns a randomly generated integer that can be used as a network unique ID.

* * *

[ConnectionStatus](#enum-multiplayerpeer-connectionstatus) **get\_connection\_status**() const [🔗](#class-multiplayerpeer-method-get-connection-status)

Returns the current state of the connection.

* * *

[int](class_int.md#class-int) **get\_packet\_channel**() const [🔗](#class-multiplayerpeer-method-get-packet-channel)

Returns the channel over which the next available packet was received. See [PacketPeer.get\_available\_packet\_count()](class_packetpeer.md#class-packetpeer-method-get-available-packet-count).

* * *

[TransferMode](#enum-multiplayerpeer-transfermode) **get\_packet\_mode**() const [🔗](#class-multiplayerpeer-method-get-packet-mode)

Returns the transfer mode the remote peer used to send the next available packet. See [PacketPeer.get\_available\_packet\_count()](class_packetpeer.md#class-packetpeer-method-get-available-packet-count).

* * *

[int](class_int.md#class-int) **get\_packet\_peer**() const [🔗](#class-multiplayerpeer-method-get-packet-peer)

Returns the ID of the **MultiplayerPeer** who sent the next available packet. See [PacketPeer.get\_available\_packet\_count()](class_packetpeer.md#class-packetpeer-method-get-available-packet-count).

* * *

[int](class_int.md#class-int) **get\_unique\_id**() const [🔗](#class-multiplayerpeer-method-get-unique-id)

Returns the ID of this **MultiplayerPeer**.

* * *

[bool](class_bool.md#class-bool) **is\_server\_relay\_supported**() const [🔗](#class-multiplayerpeer-method-is-server-relay-supported)

Returns `true` if the server can act as a relay in the current configuration. That is, if the higher level [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) should notify connected clients of other peers, and implement a relay protocol to allow communication between them.

* * *

void **poll**() [🔗](#class-multiplayerpeer-method-poll)

Waits up to 1 second to receive a new network event.

* * *

void **set\_target\_peer**(id: [int](class_int.md#class-int)) [🔗](#class-multiplayerpeer-method-set-target-peer)

Sets the peer to which packets will be sent.

The `id` can be one of: [TARGET\_PEER\_BROADCAST](#class-multiplayerpeer-constant-target-peer-broadcast) to send to all connected peers, [TARGET\_PEER\_SERVER](#class-multiplayerpeer-constant-target-peer-server) to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. By default, the target peer is [TARGET\_PEER\_BROADCAST](#class-multiplayerpeer-constant-target-peer-broadcast).

[Previous](class_multiplayerapiextension.md "MultiplayerAPIExtension") [Next](class_multiplayerpeerextension.md "MultiplayerPeerExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multiplayerapiextension.md "MultiplayerAPIExtension") [Next](class_multiplayerpeerextension.md "MultiplayerPeerExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).