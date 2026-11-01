---
title: WebRTCMultiplayerPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webrtcmultiplayerpeer.html
crawled_at: "2026-08-13T10:31:04+12:00"
content_hash: b9664fdf023204ba9b695e4c738efff77e7b165e2ff79146bb5c126c8dcffdb9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebRTCMultiplayerPeer

* * *

# WebRTCMultiplayerPeer

**Inherits:** [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **<** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A simple interface to create a peer-to-peer mesh network composed of [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) that is compatible with the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

## Description

This class constructs a full mesh of [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) (one connection for each peer) that can be used as a [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer).

You can add each [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) via [add\_peer()](#class-webrtcmultiplayerpeer-method-add-peer) or remove them via [remove\_peer()](#class-webrtcmultiplayerpeer-method-remove-peer). Peers must be added in [WebRTCPeerConnection.STATE\_NEW](class_webrtcpeerconnection.md#class-webrtcpeerconnection-constant-state-new) state to allow it to create the appropriate channels. This class will not create offers nor set descriptions, it will only poll them, and notify connections and disconnections.

When creating the peer via [create\_client()](#class-webrtcmultiplayerpeer-method-create-client) or [create\_server()](#class-webrtcmultiplayerpeer-method-create-server) the [MultiplayerPeer.is\_server\_relay\_supported()](class_multiplayerpeer.md#class-multiplayerpeer-method-is-server-relay-supported) method will return `true` enabling peer exchange and packet relaying when supported by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) implementation.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_peer](#class-webrtcmultiplayerpeer-method-add-peer)(peer: [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection), peer\_id: [int](class_int.md#class-int), unreliable\_lifetime: [int](class_int.md#class-int) = 1) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_client](#class-webrtcmultiplayerpeer-method-create-client)(peer\_id: [int](class_int.md#class-int), channels\_config: [Array](class_array.md#class-array) = \[\]) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_mesh](#class-webrtcmultiplayerpeer-method-create-mesh)(peer\_id: [int](class_int.md#class-int), channels\_config: [Array](class_array.md#class-array) = \[\]) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_server](#class-webrtcmultiplayerpeer-method-create-server)(channels\_config: [Array](class_array.md#class-array) = \[\]) |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_peer](#class-webrtcmultiplayerpeer-method-get-peer)(peer\_id: [int](class_int.md#class-int)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_peers](#class-webrtcmultiplayerpeer-method-get-peers)() |
| [bool](class_bool.md#class-bool) | [has\_peer](#class-webrtcmultiplayerpeer-method-has-peer)(peer\_id: [int](class_int.md#class-int)) |
| void | [remove\_peer](#class-webrtcmultiplayerpeer-method-remove-peer)(peer\_id: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **add\_peer**(peer: [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection), peer\_id: [int](class_int.md#class-int), unreliable\_lifetime: [int](class_int.md#class-int) = 1) [🔗](#class-webrtcmultiplayerpeer-method-add-peer)

Add a new peer to the mesh with the given `peer_id`. The [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) must be in state [WebRTCPeerConnection.STATE\_NEW](class_webrtcpeerconnection.md#class-webrtcpeerconnection-constant-state-new).

Three channels will be created for reliable, unreliable, and ordered transport. The value of `unreliable_lifetime` will be passed to the `"maxPacketLifetime"` option when creating unreliable and ordered channels (see [WebRTCPeerConnection.create\_data\_channel()](class_webrtcpeerconnection.md#class-webrtcpeerconnection-method-create-data-channel)).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_client**(peer\_id: [int](class_int.md#class-int), channels\_config: [Array](class_array.md#class-array) = \[\]) [🔗](#class-webrtcmultiplayerpeer-method-create-client)

Initialize the multiplayer peer as a client with the given `peer_id` (must be between 2 and 2147483647). In this mode, you should only call [add\_peer()](#class-webrtcmultiplayerpeer-method-add-peer) once and with `peer_id` of `1`. This mode enables [MultiplayerPeer.is\_server\_relay\_supported()](class_multiplayerpeer.md#class-multiplayerpeer-method-is-server-relay-supported), allowing the upper [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) layer to perform peer exchange and packet relaying.

You can optionally specify a `channels_config` array of [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) which will be used to create extra channels (WebRTC only supports one transfer mode per channel).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_mesh**(peer\_id: [int](class_int.md#class-int), channels\_config: [Array](class_array.md#class-array) = \[\]) [🔗](#class-webrtcmultiplayerpeer-method-create-mesh)

Initialize the multiplayer peer as a mesh (i.e. all peers connect to each other) with the given `peer_id` (must be between 1 and 2147483647).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_server**(channels\_config: [Array](class_array.md#class-array) = \[\]) [🔗](#class-webrtcmultiplayerpeer-method-create-server)

Initialize the multiplayer peer as a server (with unique ID of `1`). This mode enables [MultiplayerPeer.is\_server\_relay\_supported()](class_multiplayerpeer.md#class-multiplayerpeer-method-is-server-relay-supported), allowing the upper [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) layer to perform peer exchange and packet relaying.

You can optionally specify a `channels_config` array of [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) which will be used to create extra channels (WebRTC only supports one transfer mode per channel).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_peer**(peer\_id: [int](class_int.md#class-int)) [🔗](#class-webrtcmultiplayerpeer-method-get-peer)

Returns a dictionary representation of the peer with given `peer_id` with three keys. `"connection"` containing the [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) to this peer, `"channels"` an array of three [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel), and `"connected"` a boolean representing if the peer connection is currently connected (all three channels are open).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_peers**() [🔗](#class-webrtcmultiplayerpeer-method-get-peers)

Returns a dictionary which keys are the peer ids and values the peer representation as in [get\_peer()](#class-webrtcmultiplayerpeer-method-get-peer).

* * *

[bool](class_bool.md#class-bool) **has\_peer**(peer\_id: [int](class_int.md#class-int)) [🔗](#class-webrtcmultiplayerpeer-method-has-peer)

Returns `true` if the given `peer_id` is in the peers map (it might not be connected though).

* * *

void **remove\_peer**(peer\_id: [int](class_int.md#class-int)) [🔗](#class-webrtcmultiplayerpeer-method-remove-peer)

Remove the peer with given `peer_id` from the mesh. If the peer was connected, and [MultiplayerPeer.peer\_connected](class_multiplayerpeer.md#class-multiplayerpeer-signal-peer-connected) was emitted for it, then [MultiplayerPeer.peer\_disconnected](class_multiplayerpeer.md#class-multiplayerpeer-signal-peer-disconnected) will be emitted.

[Previous](class_webrtcdatachannelextension.md "WebRTCDataChannelExtension") [Next](class_webrtcpeerconnection.md "WebRTCPeerConnection")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webrtcdatachannelextension.md "WebRTCDataChannelExtension") [Next](class_webrtcpeerconnection.md "WebRTCPeerConnection")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).