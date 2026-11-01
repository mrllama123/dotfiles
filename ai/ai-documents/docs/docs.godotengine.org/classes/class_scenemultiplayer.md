---
title: SceneMultiplayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scenemultiplayer.html
crawled_at: "2026-08-13T10:36:24+12:00"
content_hash: bf6b7a1297437781a3f8171af2e9a9a9cee96dc0c1229914efd724243991480d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SceneMultiplayer

* * *

# SceneMultiplayer

**Inherits:** [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

High-level multiplayer API implementation.

## Description

This class is the default implementation of [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), used to provide multiplayer functionalities in Godot Engine.

This implementation supports RPCs via [Node.rpc()](class_node.md#class-node-method-rpc) and [Node.rpc\_id()](class_node.md#class-node-method-rpc-id) and requires [MultiplayerAPI.rpc()](class_multiplayerapi.md#class-multiplayerapi-method-rpc) to be passed a [Node](class_node.md#class-node) (it will fail for other object types).

This implementation additionally provide [SceneTree](class_scenetree.md#class-scenetree) replication via the [MultiplayerSpawner](class_multiplayerspawner.md#class-multiplayerspawner) and [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer) nodes, and the [SceneReplicationConfig](class_scenereplicationconfig.md#class-scenereplicationconfig) resource.

**Note:** The high-level multiplayer API protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [allow\_object\_decoding](#class-scenemultiplayer-property-allow-object-decoding) | `false` |
| [Callable](class_callable.md#class-callable) | [auth\_callback](#class-scenemultiplayer-property-auth-callback) | `Callable()` |
| [float](class_float.md#class-float) | [auth\_timeout](#class-scenemultiplayer-property-auth-timeout) | `3.0` |
| [int](class_int.md#class-int) | [max\_delta\_packet\_size](#class-scenemultiplayer-property-max-delta-packet-size) | `65535` |
| [int](class_int.md#class-int) | [max\_sync\_packet\_size](#class-scenemultiplayer-property-max-sync-packet-size) | `1350` |
| [bool](class_bool.md#class-bool) | [refuse\_new\_connections](#class-scenemultiplayer-property-refuse-new-connections) | `false` |
| [NodePath](class_nodepath.md#class-nodepath) | [root\_path](#class-scenemultiplayer-property-root-path) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [server\_relay](#class-scenemultiplayer-property-server-relay) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-scenemultiplayer-method-clear)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [complete\_auth](#class-scenemultiplayer-method-complete-auth)(id: [int](class_int.md#class-int)) |
| void | [disconnect\_peer](#class-scenemultiplayer-method-disconnect-peer)(id: [int](class_int.md#class-int)) |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_authenticating\_peers](#class-scenemultiplayer-method-get-authenticating-peers)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [send\_auth](#class-scenemultiplayer-method-send-auth)(id: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [send\_bytes](#class-scenemultiplayer-method-send-bytes)(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), id: [int](class_int.md#class-int) = 0, mode: [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) = 2, channel: [int](class_int.md#class-int) = 0) |

* * *

## Signals

**peer\_authenticating**(id: [int](class_int.md#class-int)) [🔗](#class-scenemultiplayer-signal-peer-authenticating)

Emitted when this MultiplayerAPI's [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) connects to a new peer and a valid [auth\_callback](#class-scenemultiplayer-property-auth-callback) is set. In this case, the [MultiplayerAPI.peer\_connected](class_multiplayerapi.md#class-multiplayerapi-signal-peer-connected) will not be emitted until [complete\_auth()](#class-scenemultiplayer-method-complete-auth) is called with given peer `id`. While in this state, the peer will not be included in the list returned by [MultiplayerAPI.get\_peers()](class_multiplayerapi.md#class-multiplayerapi-method-get-peers) (but in the one returned by [get\_authenticating\_peers()](#class-scenemultiplayer-method-get-authenticating-peers)), and only authentication data will be sent or received. See [send\_auth()](#class-scenemultiplayer-method-send-auth) for sending authentication data.

* * *

**peer\_authentication\_failed**(id: [int](class_int.md#class-int)) [🔗](#class-scenemultiplayer-signal-peer-authentication-failed)

Emitted when this MultiplayerAPI's [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) disconnects from a peer for which authentication had not yet completed. See [peer\_authenticating](#class-scenemultiplayer-signal-peer-authenticating).

* * *

**peer\_packet**(id: [int](class_int.md#class-int), packet: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-scenemultiplayer-signal-peer-packet)

Emitted when this MultiplayerAPI's [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) receives a `packet` with custom data (see [send\_bytes()](#class-scenemultiplayer-method-send-bytes)). ID is the peer ID of the peer that sent the packet.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **allow\_object\_decoding** = `false` [🔗](#class-scenemultiplayer-property-allow-object-decoding)

- void **set\_allow\_object\_decoding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_object\_decoding\_allowed**()


If `true`, the MultiplayerAPI will allow encoding and decoding of object during RPCs.

**Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threat such as remote code execution.

* * *

[Callable](class_callable.md#class-callable) **auth\_callback** = `Callable()` [🔗](#class-scenemultiplayer-property-auth-callback)

- void **set\_auth\_callback**(value: [Callable](class_callable.md#class-callable))

- [Callable](class_callable.md#class-callable) **get\_auth\_callback**()


The callback to execute when receiving authentication data sent via [send\_auth()](#class-scenemultiplayer-method-send-auth). If the [Callable](class_callable.md#class-callable) is empty (default), peers will be automatically accepted as soon as they connect.

* * *

[float](class_float.md#class-float) **auth\_timeout** = `3.0` [🔗](#class-scenemultiplayer-property-auth-timeout)

- void **set\_auth\_timeout**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auth\_timeout**()


If set to a value greater than `0.0`, the maximum duration in seconds peers can stay in the authenticating state, after which the authentication will automatically fail. See the [peer\_authenticating](#class-scenemultiplayer-signal-peer-authenticating) and [peer\_authentication\_failed](#class-scenemultiplayer-signal-peer-authentication-failed) signals.

* * *

[int](class_int.md#class-int) **max\_delta\_packet\_size** = `65535` [🔗](#class-scenemultiplayer-property-max-delta-packet-size)

- void **set\_max\_delta\_packet\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_delta\_packet\_size**()


Maximum size of each delta packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of causing networking congestion (higher latency, disconnections). See [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer).

* * *

[int](class_int.md#class-int) **max\_sync\_packet\_size** = `1350` [🔗](#class-scenemultiplayer-property-max-sync-packet-size)

- void **set\_max\_sync\_packet\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_sync\_packet\_size**()


Maximum size of each synchronization packet. Higher values increase the chance of receiving full updates in a single frame, but also the chance of packet loss. See [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer).

* * *

[bool](class_bool.md#class-bool) **refuse\_new\_connections** = `false` [🔗](#class-scenemultiplayer-property-refuse-new-connections)

- void **set\_refuse\_new\_connections**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_refusing\_new\_connections**()


If `true`, the MultiplayerAPI's [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) refuses new incoming connections.

* * *

[NodePath](class_nodepath.md#class-nodepath) **root\_path** = `NodePath("")` [🔗](#class-scenemultiplayer-property-root-path)

- void **set\_root\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_root\_path**()


The root path to use for RPCs and replication. Instead of an absolute path, a relative path will be used to find the node upon which the RPC should be executed.

This effectively allows to have different branches of the scene tree to be managed by different MultiplayerAPI, allowing for example to run both client and server in the same scene.

* * *

[bool](class_bool.md#class-bool) **server\_relay** = `true` [🔗](#class-scenemultiplayer-property-server-relay)

- void **set\_server\_relay\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_server\_relay\_enabled**()


Enable or disable the server feature that notifies clients of other peers' connection/disconnection, and relays messages between them. When this option is `false`, clients won't be automatically notified of other peers and won't be able to send them packets through the server.

**Note:** Changing this option while other peers are connected may lead to unexpected behaviors.

**Note:** Support for this feature may depend on the current [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) configuration. See [MultiplayerPeer.is\_server\_relay\_supported()](class_multiplayerpeer.md#class-multiplayerpeer-method-is-server-relay-supported).

* * *

## Method Descriptions

void **clear**() [🔗](#class-scenemultiplayer-method-clear)

Clears the current SceneMultiplayer network state (you shouldn't call this unless you know what you are doing).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **complete\_auth**(id: [int](class_int.md#class-int)) [🔗](#class-scenemultiplayer-method-complete-auth)

Mark the authentication step as completed for the remote peer identified by `id`. The [MultiplayerAPI.peer\_connected](class_multiplayerapi.md#class-multiplayerapi-signal-peer-connected) signal will be emitted for this peer once the remote side also completes the authentication. No further authentication messages are expected to be received from this peer.

If a peer disconnects before completing authentication, either due to a network issue, the [auth\_timeout](#class-scenemultiplayer-property-auth-timeout) expiring, or manually calling [disconnect\_peer()](#class-scenemultiplayer-method-disconnect-peer), the [peer\_authentication\_failed](#class-scenemultiplayer-signal-peer-authentication-failed) signal will be emitted instead of [MultiplayerAPI.peer\_disconnected](class_multiplayerapi.md#class-multiplayerapi-signal-peer-disconnected).

* * *

void **disconnect\_peer**(id: [int](class_int.md#class-int)) [🔗](#class-scenemultiplayer-method-disconnect-peer)

Disconnects the peer identified by `id`, removing it from the list of connected peers, and closing the underlying connection with it.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_authenticating\_peers**() [🔗](#class-scenemultiplayer-method-get-authenticating-peers)

Returns the IDs of the peers currently trying to authenticate with this [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **send\_auth**(id: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-scenemultiplayer-method-send-auth)

Sends the specified `data` to the remote peer identified by `id` as part of an authentication message. This can be used to authenticate peers, and control when [MultiplayerAPI.peer\_connected](class_multiplayerapi.md#class-multiplayerapi-signal-peer-connected) is emitted (and the remote peer accepted as one of the connected peers).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **send\_bytes**(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), id: [int](class_int.md#class-int) = 0, mode: [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) = 2, channel: [int](class_int.md#class-int) = 0) [🔗](#class-scenemultiplayer-method-send-bytes)

Sends the given raw `bytes` to a specific peer identified by `id` (see [MultiplayerPeer.set\_target\_peer()](class_multiplayerpeer.md#class-multiplayerpeer-method-set-target-peer)). Default ID is `0`, i.e. broadcast to all peers.

[Previous](class_resourceuid.md "ResourceUID") [Next](class_scenestate.md "SceneState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceuid.md "ResourceUID") [Next](class_scenestate.md "SceneState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).