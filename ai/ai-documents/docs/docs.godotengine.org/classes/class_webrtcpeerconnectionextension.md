---
title: WebRTCPeerConnectionExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webrtcpeerconnectionextension.html
crawled_at: "2026-08-13T10:19:59+12:00"
content_hash: 66136aa7f33557926e348b4d2d615a52f55333c285bbc60c225b24d3f276a361
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebRTCPeerConnectionExtension

* * *

# WebRTCPeerConnectionExtension

**Inherits:** [WebRTCPeerConnection](class_webrtcpeerconnection.md#class-webrtcpeerconnection) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_add\_ice\_candidate](#class-webrtcpeerconnectionextension-private-method-add-ice-candidate)(p\_sdp\_mid\_name: [String](class_string.md#class-string), p\_sdp\_mline\_index: [int](class_int.md#class-int), p\_sdp\_name: [String](class_string.md#class-string)) virtualrequired |
| void | [\_close](#class-webrtcpeerconnectionextension-private-method-close)() virtualrequired |
| [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) | [\_create\_data\_channel](#class-webrtcpeerconnectionextension-private-method-create-data-channel)(p\_label: [String](class_string.md#class-string), p\_config: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_create\_offer](#class-webrtcpeerconnectionextension-private-method-create-offer)() virtualrequired |
| [ConnectionState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-connectionstate) | [\_get\_connection\_state](#class-webrtcpeerconnectionextension-private-method-get-connection-state)() virtualrequiredconst |
| [GatheringState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-gatheringstate) | [\_get\_gathering\_state](#class-webrtcpeerconnectionextension-private-method-get-gathering-state)() virtualrequiredconst |
| [SignalingState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-signalingstate) | [\_get\_signaling\_state](#class-webrtcpeerconnectionextension-private-method-get-signaling-state)() virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_initialize](#class-webrtcpeerconnectionextension-private-method-initialize)(p\_config: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_poll](#class-webrtcpeerconnectionextension-private-method-poll)() virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_set\_local\_description](#class-webrtcpeerconnectionextension-private-method-set-local-description)(p\_type: [String](class_string.md#class-string), p\_sdp: [String](class_string.md#class-string)) virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_set\_remote\_description](#class-webrtcpeerconnectionextension-private-method-set-remote-description)(p\_type: [String](class_string.md#class-string), p\_sdp: [String](class_string.md#class-string)) virtualrequired |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **\_add\_ice\_candidate**(p\_sdp\_mid\_name: [String](class_string.md#class-string), p\_sdp\_mline\_index: [int](class_int.md#class-int), p\_sdp\_name: [String](class_string.md#class-string)) virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-add-ice-candidate)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_close**() virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-close)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) **\_create\_data\_channel**(p\_label: [String](class_string.md#class-string), p\_config: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-create-data-channel)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_create\_offer**() virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-create-offer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[ConnectionState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-connectionstate) **\_get\_connection\_state**() virtualrequiredconst [🔗](#class-webrtcpeerconnectionextension-private-method-get-connection-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[GatheringState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-gatheringstate) **\_get\_gathering\_state**() virtualrequiredconst [🔗](#class-webrtcpeerconnectionextension-private-method-get-gathering-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[SignalingState](class_webrtcpeerconnection.md#enum-webrtcpeerconnection-signalingstate) **\_get\_signaling\_state**() virtualrequiredconst [🔗](#class-webrtcpeerconnectionextension-private-method-get-signaling-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_initialize**(p\_config: [Dictionary](class_dictionary.md#class-dictionary)) virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-initialize)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_poll**() virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-poll)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_set\_local\_description**(p\_type: [String](class_string.md#class-string), p\_sdp: [String](class_string.md#class-string)) virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-set-local-description)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_set\_remote\_description**(p\_type: [String](class_string.md#class-string), p\_sdp: [String](class_string.md#class-string)) virtualrequired [🔗](#class-webrtcpeerconnectionextension-private-method-set-remote-description)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_webrtcpeerconnection.md "WebRTCPeerConnection") [Next](class_websocketmultiplayerpeer.md "WebSocketMultiplayerPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webrtcpeerconnection.md "WebRTCPeerConnection") [Next](class_websocketmultiplayerpeer.md "WebSocketMultiplayerPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).