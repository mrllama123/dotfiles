---
title: WebRTCPeerConnection — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webrtcpeerconnection.html
crawled_at: "2026-08-13T10:23:07+12:00"
content_hash: 52987271244eabe9f97b16c008dbd7ad1b76d074550a043c5b4d23d89c7633fa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebRTCPeerConnection

* * *

# WebRTCPeerConnection

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [WebRTCPeerConnectionExtension](class_webrtcpeerconnectionextension.md#class-webrtcpeerconnectionextension)

Interface to a WebRTC peer connection.

## Description

A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain and monitor the connection.

Setting up a WebRTC connection between two peers may not seem a trivial task, but it can be broken down into 3 main steps:

- The peer that wants to initiate the connection ( `A` from now on) creates an offer and send it to the other peer ( `B` from now on).

- `B` receives the offer, generate and answer, and sends it to `A`).

- `A` and `B` then generates and exchange ICE candidates with each other.


After these steps, the connection should become connected. Keep on reading or look into the tutorial for more information.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_ice\_candidate](#class-webrtcpeerconnection-method-add-ice-candidate)(media: [String](class_string.md#class-string), index: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [close](#class-webrtcpeerconnection-method-close)() |
| [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) | [create\_data\_channel](#class-webrtcpeerconnection-method-create-data-channel)(label: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_offer](#class-webrtcpeerconnection-method-create-offer)() |
| [ConnectionState](#enum-webrtcpeerconnection-connectionstate) | [get\_connection\_state](#class-webrtcpeerconnection-method-get-connection-state)() const |
| [GatheringState](#enum-webrtcpeerconnection-gatheringstate) | [get\_gathering\_state](#class-webrtcpeerconnection-method-get-gathering-state)() const |
| [SignalingState](#enum-webrtcpeerconnection-signalingstate) | [get\_signaling\_state](#class-webrtcpeerconnection-method-get-signaling-state)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [initialize](#class-webrtcpeerconnection-method-initialize)(configuration: [Dictionary](class_dictionary.md#class-dictionary) = {}) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [poll](#class-webrtcpeerconnection-method-poll)() |
| void | [set\_default\_extension](#class-webrtcpeerconnection-method-set-default-extension)(extension\_class: [StringName](class_stringname.md#class-stringname)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_local\_description](#class-webrtcpeerconnection-method-set-local-description)(type: [String](class_string.md#class-string), sdp: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_remote\_description](#class-webrtcpeerconnection-method-set-remote-description)(type: [String](class_string.md#class-string), sdp: [String](class_string.md#class-string)) |

* * *

## Signals

**data\_channel\_received**(channel: [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel)) [🔗](#class-webrtcpeerconnection-signal-data-channel-received)

Emitted when a new in-band channel is received, i.e. when the channel was created with `negotiated: false` (default).

The object will be an instance of [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel). You must keep a reference of it or it will be closed automatically. See [create\_data\_channel()](#class-webrtcpeerconnection-method-create-data-channel).

* * *

**ice\_candidate\_created**(media: [String](class_string.md#class-string), index: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-webrtcpeerconnection-signal-ice-candidate-created)

Emitted when a new ICE candidate has been created. The three parameters are meant to be passed to the remote peer over the signaling server.

* * *

**session\_description\_created**(type: [String](class_string.md#class-string), sdp: [String](class_string.md#class-string)) [🔗](#class-webrtcpeerconnection-signal-session-description-created)

Emitted after a successful call to [create\_offer()](#class-webrtcpeerconnection-method-create-offer) or [set\_remote\_description()](#class-webrtcpeerconnection-method-set-remote-description) (when it generates an answer). The parameters are meant to be passed to [set\_local\_description()](#class-webrtcpeerconnection-method-set-local-description) on this object, and sent to the remote peer over the signaling server.

* * *

## Enumerations

enum **ConnectionState**: [🔗](#enum-webrtcpeerconnection-connectionstate)

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_NEW** = `0`

The connection is new, data channels and an offer can be created in this state.

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_CONNECTING** = `1`

The peer is connecting, ICE is in progress, none of the transports has failed.

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_CONNECTED** = `2`

The peer is connected, all ICE transports are connected.

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_DISCONNECTED** = `3`

At least one ICE transport is disconnected.

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_FAILED** = `4`

One or more of the ICE transports failed.

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **STATE\_CLOSED** = `5`

The peer connection is closed (after calling [close()](#class-webrtcpeerconnection-method-close) for example).

* * *

enum **GatheringState**: [🔗](#enum-webrtcpeerconnection-gatheringstate)

[GatheringState](#enum-webrtcpeerconnection-gatheringstate) **GATHERING\_STATE\_NEW** = `0`

The peer connection was just created and hasn't done any networking yet.

[GatheringState](#enum-webrtcpeerconnection-gatheringstate) **GATHERING\_STATE\_GATHERING** = `1`

The ICE agent is in the process of gathering candidates for the connection.

[GatheringState](#enum-webrtcpeerconnection-gatheringstate) **GATHERING\_STATE\_COMPLETE** = `2`

The ICE agent has finished gathering candidates. If something happens that requires collecting new candidates, such as a new interface being added or the addition of a new ICE server, the state will revert to gathering to gather those candidates.

* * *

enum **SignalingState**: [🔗](#enum-webrtcpeerconnection-signalingstate)

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_STABLE** = `0`

There is no ongoing exchange of offer and answer underway. This may mean that the **WebRTCPeerConnection** is new ( [STATE\_NEW](#class-webrtcpeerconnection-constant-state-new)) or that negotiation is complete and a connection has been established ( [STATE\_CONNECTED](#class-webrtcpeerconnection-constant-state-connected)).

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_HAVE\_LOCAL\_OFFER** = `1`

The local peer has called [set\_local\_description()](#class-webrtcpeerconnection-method-set-local-description), passing in SDP representing an offer (usually created by calling [create\_offer()](#class-webrtcpeerconnection-method-create-offer)), and the offer has been applied successfully.

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_HAVE\_REMOTE\_OFFER** = `2`

The remote peer has created an offer and used the signaling server to deliver it to the local peer, which has set the offer as the remote description by calling [set\_remote\_description()](#class-webrtcpeerconnection-method-set-remote-description).

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_HAVE\_LOCAL\_PRANSWER** = `3`

The offer sent by the remote peer has been applied and an answer has been created and applied by calling [set\_local\_description()](#class-webrtcpeerconnection-method-set-local-description). This provisional answer describes the supported media formats and so forth, but may not have a complete set of ICE candidates included. Further candidates will be delivered separately later.

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_HAVE\_REMOTE\_PRANSWER** = `4`

A provisional answer has been received and successfully applied in response to an offer previously sent and established by calling [set\_local\_description()](#class-webrtcpeerconnection-method-set-local-description).

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **SIGNALING\_STATE\_CLOSED** = `5`

The **WebRTCPeerConnection** has been closed.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **add\_ice\_candidate**(media: [String](class_string.md#class-string), index: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-webrtcpeerconnection-method-add-ice-candidate)

Add an ice candidate generated by a remote peer (and received over the signaling server). See [ice\_candidate\_created](#class-webrtcpeerconnection-signal-ice-candidate-created).

* * *

void **close**() [🔗](#class-webrtcpeerconnection-method-close)

Close the peer connection and all data channels associated with it.

**Note:** You cannot reuse this object for a new connection unless you call [initialize()](#class-webrtcpeerconnection-method-initialize).

* * *

[WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) **create\_data\_channel**(label: [String](class_string.md#class-string), options: [Dictionary](class_dictionary.md#class-dictionary) = {}) [🔗](#class-webrtcpeerconnection-method-create-data-channel)

Returns a new [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) (or `null` on failure) with given `label` and optionally configured via the `options` dictionary. This method can only be called when the connection is in state [STATE\_NEW](#class-webrtcpeerconnection-constant-state-new).

There are two ways to create a working data channel: either call [create\_data\_channel()](#class-webrtcpeerconnection-method-create-data-channel) on only one of the peer and listen to [data\_channel\_received](#class-webrtcpeerconnection-signal-data-channel-received) on the other, or call [create\_data\_channel()](#class-webrtcpeerconnection-method-create-data-channel) on both peers, with the same values, and the `"negotiated"` option set to `true`.

Valid `options` are:

```
{
    "negotiated": true, # When set to true (default off), means the channel is negotiated out of band. "id" must be set too. "data_channel_received" will not be called.
    "id": 1, # When "negotiated" is true this value must also be set to the same value on both peer.

    # Only one of maxRetransmits and maxPacketLifeTime can be specified, not both. They make the channel unreliable (but also better at real time).
    "maxRetransmits": 1, # Specify the maximum number of attempt the peer will make to retransmits packets if they are not acknowledged.
    "maxPacketLifeTime": 100, # Specify the maximum amount of time before giving up retransmitions of unacknowledged packets (in milliseconds).
    "ordered": true, # When in unreliable mode (i.e. either "maxRetransmits" or "maxPacketLifetime" is set), "ordered" (true by default) specify if packet ordering is to be enforced.

    "protocol": "my-custom-protocol", # A custom sub-protocol string for this channel.
}

```

**Note:** You must keep a reference to channels created this way, or it will be closed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_offer**() [🔗](#class-webrtcpeerconnection-method-create-offer)

Creates a new SDP offer to start a WebRTC connection with a remote peer. At least one [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) must have been created before calling this method.

If this functions returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok), [session\_description\_created](#class-webrtcpeerconnection-signal-session-description-created) will be called when the session is ready to be sent.

* * *

[ConnectionState](#enum-webrtcpeerconnection-connectionstate) **get\_connection\_state**() const [🔗](#class-webrtcpeerconnection-method-get-connection-state)

Returns the connection state.

* * *

[GatheringState](#enum-webrtcpeerconnection-gatheringstate) **get\_gathering\_state**() const [🔗](#class-webrtcpeerconnection-method-get-gathering-state)

Returns the ICE [GatheringState](#enum-webrtcpeerconnection-gatheringstate) of the connection. This lets you detect, for example, when collection of ICE candidates has finished.

* * *

[SignalingState](#enum-webrtcpeerconnection-signalingstate) **get\_signaling\_state**() const [🔗](#class-webrtcpeerconnection-method-get-signaling-state)

Returns the signaling state on the local end of the connection while connecting or reconnecting to another peer.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **initialize**(configuration: [Dictionary](class_dictionary.md#class-dictionary) = {}) [🔗](#class-webrtcpeerconnection-method-initialize)

Re-initialize this peer connection, closing any previously active connection, and going back to state [STATE\_NEW](#class-webrtcpeerconnection-constant-state-new). A dictionary of `configuration` options can be passed to configure the peer connection.

Valid `configuration` options are:

```
{
    "iceServers": [
        {
            "urls": [ "stun:stun.example.com:3478" ], # One or more STUN servers.
        },
        {
            "urls": [ "turn:turn.example.com:3478" ], # One or more TURN servers.
            "username": "a_username", # Optional username for the TURN server.
            "credential": "a_password", # Optional password for the TURN server.
        }
    ]
}

```

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **poll**() [🔗](#class-webrtcpeerconnection-method-poll)

Call this method frequently (e.g. in [Node.\_process()](class_node.md#class-node-private-method-process) or [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)) to properly receive signals.

* * *

void **set\_default\_extension**(extension\_class: [StringName](class_stringname.md#class-stringname)) static [🔗](#class-webrtcpeerconnection-method-set-default-extension)

Sets the `extension_class` as the default [WebRTCPeerConnectionExtension](class_webrtcpeerconnectionextension.md#class-webrtcpeerconnectionextension) returned when creating a new **WebRTCPeerConnection**.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_local\_description**(type: [String](class_string.md#class-string), sdp: [String](class_string.md#class-string)) [🔗](#class-webrtcpeerconnection-method-set-local-description)

Sets the SDP description of the local peer. This should be called in response to [session\_description\_created](#class-webrtcpeerconnection-signal-session-description-created).

After calling this function the peer will start emitting [ice\_candidate\_created](#class-webrtcpeerconnection-signal-ice-candidate-created) (unless an [Error](class_@globalscope.md#enum-globalscope-error) different from [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) is returned).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_remote\_description**(type: [String](class_string.md#class-string), sdp: [String](class_string.md#class-string)) [🔗](#class-webrtcpeerconnection-method-set-remote-description)

Sets the SDP description of the remote peer. This should be called with the values generated by a remote peer and received over the signaling server.

If `type` is `"offer"` the peer will emit [session\_description\_created](#class-webrtcpeerconnection-signal-session-description-created) with the appropriate answer.

If `type` is `"answer"` the peer will start emitting [ice\_candidate\_created](#class-webrtcpeerconnection-signal-ice-candidate-created).

[Previous](class_webrtcmultiplayerpeer.md "WebRTCMultiplayerPeer") [Next](class_webrtcpeerconnectionextension.md "WebRTCPeerConnectionExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webrtcmultiplayerpeer.md "WebRTCMultiplayerPeer") [Next](class_webrtcpeerconnectionextension.md "WebRTCPeerConnectionExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).