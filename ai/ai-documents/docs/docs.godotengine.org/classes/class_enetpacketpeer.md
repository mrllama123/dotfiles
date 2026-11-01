---
title: ENetPacketPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_enetpacketpeer.html
crawled_at: "2026-08-13T10:22:04+12:00"
content_hash: 114074d0d0d369887f6f887bac7f88549d92e20f4dad96c3b9b3d1cbd0f2e1dc
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ENetPacketPeer

* * *

# ENetPacketPeer

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A wrapper class for an [ENetPeer](http://enet.bespin.org/group__peer.html).

## Description

A PacketPeer implementation representing a peer of an [ENetConnection](class_enetconnection.md#class-enetconnection).

This class cannot be instantiated directly but can be retrieved during [ENetConnection.service()](class_enetconnection.md#class-enetconnection-method-service) or via [ENetConnection.get\_peers()](class_enetconnection.md#class-enetconnection-method-get-peers).

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Tutorials

- [API documentation on the ENet website](http://enet.bespin.org/usergroup0.html)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_channels](#class-enetpacketpeer-method-get-channels)() const |
| [int](class_int.md#class-int) | [get\_packet\_flags](#class-enetpacketpeer-method-get-packet-flags)() const |
| [String](class_string.md#class-string) | [get\_remote\_address](#class-enetpacketpeer-method-get-remote-address)() const |
| [int](class_int.md#class-int) | [get\_remote\_port](#class-enetpacketpeer-method-get-remote-port)() const |
| [PeerState](#enum-enetpacketpeer-peerstate) | [get\_state](#class-enetpacketpeer-method-get-state)() const |
| [float](class_float.md#class-float) | [get\_statistic](#class-enetpacketpeer-method-get-statistic)(statistic: [PeerStatistic](#enum-enetpacketpeer-peerstatistic)) |
| [bool](class_bool.md#class-bool) | [is\_active](#class-enetpacketpeer-method-is-active)() const |
| void | [peer\_disconnect](#class-enetpacketpeer-method-peer-disconnect)(data: [int](class_int.md#class-int) = 0) |
| void | [peer\_disconnect\_later](#class-enetpacketpeer-method-peer-disconnect-later)(data: [int](class_int.md#class-int) = 0) |
| void | [peer\_disconnect\_now](#class-enetpacketpeer-method-peer-disconnect-now)(data: [int](class_int.md#class-int) = 0) |
| void | [ping](#class-enetpacketpeer-method-ping)() |
| void | [ping\_interval](#class-enetpacketpeer-method-ping-interval)(ping\_interval: [int](class_int.md#class-int)) |
| void | [reset](#class-enetpacketpeer-method-reset)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [send](#class-enetpacketpeer-method-send)(channel: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), flags: [int](class_int.md#class-int)) |
| void | [set\_timeout](#class-enetpacketpeer-method-set-timeout)(timeout: [int](class_int.md#class-int), timeout\_min: [int](class_int.md#class-int), timeout\_max: [int](class_int.md#class-int)) |
| void | [throttle\_configure](#class-enetpacketpeer-method-throttle-configure)(interval: [int](class_int.md#class-int), acceleration: [int](class_int.md#class-int), deceleration: [int](class_int.md#class-int)) |

* * *

## Enumerations

enum **PeerState**: [🔗](#enum-enetpacketpeer-peerstate)

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_DISCONNECTED** = `0`

The peer is disconnected.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_CONNECTING** = `1`

The peer is currently attempting to connect.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_ACKNOWLEDGING\_CONNECT** = `2`

The peer has acknowledged the connection request.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_CONNECTION\_PENDING** = `3`

The peer is currently connecting.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_CONNECTION\_SUCCEEDED** = `4`

The peer has successfully connected, but is not ready to communicate with yet ( [STATE\_CONNECTED](#class-enetpacketpeer-constant-state-connected)).

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_CONNECTED** = `5`

The peer is currently connected and ready to communicate with.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_DISCONNECT\_LATER** = `6`

The peer is expected to disconnect after it has no more outgoing packets to send.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_DISCONNECTING** = `7`

The peer is currently disconnecting.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_ACKNOWLEDGING\_DISCONNECT** = `8`

The peer has acknowledged the disconnection request.

[PeerState](#enum-enetpacketpeer-peerstate) **STATE\_ZOMBIE** = `9`

The peer has lost connection, but is not considered truly disconnected (as the peer didn't acknowledge the disconnection request).

* * *

enum **PeerStatistic**: [🔗](#enum-enetpacketpeer-peerstatistic)

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_LOSS** = `0`

Mean packet loss of reliable packets as a ratio with respect to the [PACKET\_LOSS\_SCALE](#class-enetpacketpeer-constant-packet-loss-scale).

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_LOSS\_VARIANCE** = `1`

Packet loss variance.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_LOSS\_EPOCH** = `2`

The time at which packet loss statistics were last updated (in milliseconds since the connection started). The interval for packet loss statistics updates is 10 seconds, and at least one packet must have been sent since the last statistics update.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_ROUND\_TRIP\_TIME** = `3`

Mean packet round trip time for reliable packets.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_ROUND\_TRIP\_TIME\_VARIANCE** = `4`

Variance of the mean round trip time.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_LAST\_ROUND\_TRIP\_TIME** = `5`

Last recorded round trip time for a reliable packet.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_LAST\_ROUND\_TRIP\_TIME\_VARIANCE** = `6`

Variance of the last trip time recorded.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE** = `7`

The peer's current throttle status.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_LIMIT** = `8`

The maximum number of unreliable packets that should not be dropped. This value is always greater than or equal to `1`. The initial value is equal to [PACKET\_THROTTLE\_SCALE](#class-enetpacketpeer-constant-packet-throttle-scale).

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_COUNTER** = `9`

Internal value used to increment the packet throttle counter. The value is hardcoded to `7` and cannot be changed. You probably want to look at [PEER\_PACKET\_THROTTLE\_ACCELERATION](#class-enetpacketpeer-constant-peer-packet-throttle-acceleration) instead.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_EPOCH** = `10`

The time at which throttle statistics were last updated (in milliseconds since the connection started). The interval for throttle statistics updates is [PEER\_PACKET\_THROTTLE\_INTERVAL](#class-enetpacketpeer-constant-peer-packet-throttle-interval).

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_ACCELERATION** = `11`

The throttle's acceleration factor. Higher values will make ENet adapt to fluctuating network conditions faster, causing unrelaible packets to be sent _more_ often. The default value is `2`.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_DECELERATION** = `12`

The throttle's deceleration factor. Higher values will make ENet adapt to fluctuating network conditions faster, causing unrelaible packets to be sent _less_ often. The default value is `2`.

[PeerStatistic](#enum-enetpacketpeer-peerstatistic) **PEER\_PACKET\_THROTTLE\_INTERVAL** = `13`

The interval over which the lowest mean round trip time should be measured for use by the throttle mechanism (in milliseconds). The default value is `5000`.

* * *

## Constants

**PACKET\_LOSS\_SCALE** = `65536` [🔗](#class-enetpacketpeer-constant-packet-loss-scale)

The reference scale for packet loss. See [get\_statistic()](#class-enetpacketpeer-method-get-statistic) and [PEER\_PACKET\_LOSS](#class-enetpacketpeer-constant-peer-packet-loss).

**PACKET\_THROTTLE\_SCALE** = `32` [🔗](#class-enetpacketpeer-constant-packet-throttle-scale)

The reference value for throttle configuration. The default value is `32`. See [throttle\_configure()](#class-enetpacketpeer-method-throttle-configure).

**FLAG\_RELIABLE** = `1` [🔗](#class-enetpacketpeer-constant-flag-reliable)

Mark the packet to be sent as reliable.

**FLAG\_UNSEQUENCED** = `2` [🔗](#class-enetpacketpeer-constant-flag-unsequenced)

Mark the packet to be sent unsequenced (unreliable).

**FLAG\_UNRELIABLE\_FRAGMENT** = `8` [🔗](#class-enetpacketpeer-constant-flag-unreliable-fragment)

Mark the packet to be sent unreliable even if the packet is too big and needs fragmentation (increasing the chance of it being dropped).

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_channels**() const [🔗](#class-enetpacketpeer-method-get-channels)

Returns the number of channels allocated for communication with peer.

* * *

[int](class_int.md#class-int) **get\_packet\_flags**() const [🔗](#class-enetpacketpeer-method-get-packet-flags)

Returns the ENet flags of the next packet in the received queue. See `FLAG_*` constants for available packet flags. Note that not all flags are replicated from the sending peer to the receiving peer.

* * *

[String](class_string.md#class-string) **get\_remote\_address**() const [🔗](#class-enetpacketpeer-method-get-remote-address)

Returns the IP address of this peer.

* * *

[int](class_int.md#class-int) **get\_remote\_port**() const [🔗](#class-enetpacketpeer-method-get-remote-port)

Returns the remote port of this peer.

* * *

[PeerState](#enum-enetpacketpeer-peerstate) **get\_state**() const [🔗](#class-enetpacketpeer-method-get-state)

Returns the current peer state.

* * *

[float](class_float.md#class-float) **get\_statistic**(statistic: [PeerStatistic](#enum-enetpacketpeer-peerstatistic)) [🔗](#class-enetpacketpeer-method-get-statistic)

Returns the requested `statistic` for this peer.

* * *

[bool](class_bool.md#class-bool) **is\_active**() const [🔗](#class-enetpacketpeer-method-is-active)

Returns `true` if the peer is currently active (i.e. the associated [ENetConnection](class_enetconnection.md#class-enetconnection) is still valid).

* * *

void **peer\_disconnect**(data: [int](class_int.md#class-int) = 0) [🔗](#class-enetpacketpeer-method-peer-disconnect)

Request a disconnection from a peer. An [ENetConnection.EVENT\_DISCONNECT](class_enetconnection.md#class-enetconnection-constant-event-disconnect) will be generated during [ENetConnection.service()](class_enetconnection.md#class-enetconnection-method-service) once the disconnection is complete.

* * *

void **peer\_disconnect\_later**(data: [int](class_int.md#class-int) = 0) [🔗](#class-enetpacketpeer-method-peer-disconnect-later)

Request a disconnection from a peer, but only after all queued outgoing packets are sent. An [ENetConnection.EVENT\_DISCONNECT](class_enetconnection.md#class-enetconnection-constant-event-disconnect) will be generated during [ENetConnection.service()](class_enetconnection.md#class-enetconnection-method-service) once the disconnection is complete.

* * *

void **peer\_disconnect\_now**(data: [int](class_int.md#class-int) = 0) [🔗](#class-enetpacketpeer-method-peer-disconnect-now)

Force an immediate disconnection from a peer. No [ENetConnection.EVENT\_DISCONNECT](class_enetconnection.md#class-enetconnection-constant-event-disconnect) will be generated. The foreign peer is not guaranteed to receive the disconnect notification, and is reset immediately upon return from this function.

* * *

void **ping**() [🔗](#class-enetpacketpeer-method-ping)

Sends a ping request to a peer. ENet automatically pings all connected peers at regular intervals, however, this function may be called to ensure more frequent ping requests.

* * *

void **ping\_interval**(ping\_interval: [int](class_int.md#class-int)) [🔗](#class-enetpacketpeer-method-ping-interval)

Sets the `ping_interval` in milliseconds at which pings will be sent to a peer. Pings are used both to monitor the liveness of the connection and also to dynamically adjust the throttle during periods of low traffic so that the throttle has reasonable responsiveness during traffic spikes. The default ping interval is `500` milliseconds.

* * *

void **reset**() [🔗](#class-enetpacketpeer-method-reset)

Forcefully disconnects a peer. The foreign host represented by the peer is not notified of the disconnection and will timeout on its connection to the local host.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **send**(channel: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), flags: [int](class_int.md#class-int)) [🔗](#class-enetpacketpeer-method-send)

Queues a `packet` to be sent over the specified `channel`. See `FLAG_*` constants for available packet flags.

* * *

void **set\_timeout**(timeout: [int](class_int.md#class-int), timeout\_min: [int](class_int.md#class-int), timeout\_max: [int](class_int.md#class-int)) [🔗](#class-enetpacketpeer-method-set-timeout)

Sets the timeout parameters for a peer. The timeout parameters control how and when a peer will timeout from a failure to acknowledge reliable traffic. Timeout values are expressed in milliseconds.

The `timeout` is a factor that, multiplied by a value based on the average round trip time, will determine the timeout limit for a reliable packet. When that limit is reached, the timeout will be doubled, and the peer will be disconnected if that limit has reached `timeout_min`. The `timeout_max` parameter, on the other hand, defines a fixed timeout for which any packet must be acknowledged or the peer will be dropped.

* * *

void **throttle\_configure**(interval: [int](class_int.md#class-int), acceleration: [int](class_int.md#class-int), deceleration: [int](class_int.md#class-int)) [🔗](#class-enetpacketpeer-method-throttle-configure)

Configures throttle parameter for a peer.

Unreliable packets are dropped by ENet in response to the varying conditions of the Internet connection to the peer. The throttle represents a probability that an unreliable packet should not be dropped and thus sent by ENet to the peer. By measuring fluctuations in round trip times of reliable packets over the specified `interval`, ENet will either increase the probability by the amount specified in the `acceleration` parameter, or decrease it by the amount specified in the `deceleration` parameter (both are ratios to [PACKET\_THROTTLE\_SCALE](#class-enetpacketpeer-constant-packet-throttle-scale)).

When the throttle has a value of [PACKET\_THROTTLE\_SCALE](#class-enetpacketpeer-constant-packet-throttle-scale), no unreliable packets are dropped by ENet, and so 100% of all unreliable packets will be sent.

When the throttle has a value of `0`, all unreliable packets are dropped by ENet, and so 0% of all unreliable packets will be sent.

Intermediate values for the throttle represent intermediate probabilities between 0% and 100% of unreliable packets being sent. The bandwidth limits of the local and foreign hosts are taken into account to determine a sensible limit for the throttle probability above which it should not raise even in the best of conditions.

[Previous](class_enetmultiplayerpeer.md "ENetMultiplayerPeer") [Next](class_engine.md "Engine")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_enetmultiplayerpeer.md "ENetMultiplayerPeer") [Next](class_engine.md "Engine")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).