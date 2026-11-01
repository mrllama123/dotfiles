---
title: WebRTCDataChannelExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webrtcdatachannelextension.html
crawled_at: "2026-08-13T10:34:00+12:00"
content_hash: a47efa5289fe6d3c59f0d52e9f61fca9b125433e5937b4be7c940241494bfb3f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebRTCDataChannelExtension

* * *

# WebRTCDataChannelExtension

**Inherits:** [WebRTCDataChannel](class_webrtcdatachannel.md#class-webrtcdatachannel) **<** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Methods

|     |     |
| --- | --- |
| void | [\_close](#class-webrtcdatachannelextension-private-method-close)() virtualrequired |
| [int](class_int.md#class-int) | [\_get\_available\_packet\_count](#class-webrtcdatachannelextension-private-method-get-available-packet-count)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_buffered\_amount](#class-webrtcdatachannelextension-private-method-get-buffered-amount)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_id](#class-webrtcdatachannelextension-private-method-get-id)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_label](#class-webrtcdatachannelextension-private-method-get-label)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_max\_packet\_life\_time](#class-webrtcdatachannelextension-private-method-get-max-packet-life-time)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_max\_packet\_size](#class-webrtcdatachannelextension-private-method-get-max-packet-size)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_max\_retransmits](#class-webrtcdatachannelextension-private-method-get-max-retransmits)() virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_get\_packet](#class-webrtcdatachannelextension-private-method-get-packet)(r\_buffer: `const uint8_t **`, r\_buffer\_size: `int32_t*`) virtual |
| [String](class_string.md#class-string) | [\_get\_protocol](#class-webrtcdatachannelextension-private-method-get-protocol)() virtualrequiredconst |
| [ChannelState](class_webrtcdatachannel.md#enum-webrtcdatachannel-channelstate) | [\_get\_ready\_state](#class-webrtcdatachannelextension-private-method-get-ready-state)() virtualrequiredconst |
| [WriteMode](class_webrtcdatachannel.md#enum-webrtcdatachannel-writemode) | [\_get\_write\_mode](#class-webrtcdatachannelextension-private-method-get-write-mode)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_negotiated](#class-webrtcdatachannelextension-private-method-is-negotiated)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_ordered](#class-webrtcdatachannelextension-private-method-is-ordered)() virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_poll](#class-webrtcdatachannelextension-private-method-poll)() virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_put\_packet](#class-webrtcdatachannelextension-private-method-put-packet)(p\_buffer: `const uint8_t*`, p\_buffer\_size: [int](class_int.md#class-int)) virtual |
| void | [\_set\_write\_mode](#class-webrtcdatachannelextension-private-method-set-write-mode)(p\_write\_mode: [WriteMode](class_webrtcdatachannel.md#enum-webrtcdatachannel-writemode)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_was\_string\_packet](#class-webrtcdatachannelextension-private-method-was-string-packet)() virtualrequiredconst |

* * *

## Method Descriptions

void **\_close**() virtualrequired [🔗](#class-webrtcdatachannelextension-private-method-close)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_available\_packet\_count**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-available-packet-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_buffered\_amount**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-buffered-amount)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_id**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_label**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-label)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_max\_packet\_life\_time**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-max-packet-life-time)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_max\_packet\_size**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-max-packet-size)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_max\_retransmits**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-max-retransmits)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_get\_packet**(r\_buffer: `const uint8_t **`, r\_buffer\_size: `int32_t*`) virtual [🔗](#class-webrtcdatachannelextension-private-method-get-packet)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_protocol**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-protocol)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[ChannelState](class_webrtcdatachannel.md#enum-webrtcdatachannel-channelstate) **\_get\_ready\_state**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-ready-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[WriteMode](class_webrtcdatachannel.md#enum-webrtcdatachannel-writemode) **\_get\_write\_mode**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-get-write-mode)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_negotiated**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-is-negotiated)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_ordered**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-is-ordered)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_poll**() virtualrequired [🔗](#class-webrtcdatachannelextension-private-method-poll)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_put\_packet**(p\_buffer: `const uint8_t*`, p\_buffer\_size: [int](class_int.md#class-int)) virtual [🔗](#class-webrtcdatachannelextension-private-method-put-packet)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_write\_mode**(p\_write\_mode: [WriteMode](class_webrtcdatachannel.md#enum-webrtcdatachannel-writemode)) virtualrequired [🔗](#class-webrtcdatachannelextension-private-method-set-write-mode)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_was\_string\_packet**() virtualrequiredconst [🔗](#class-webrtcdatachannelextension-private-method-was-string-packet)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_webrtcdatachannel.md "WebRTCDataChannel") [Next](class_webrtcmultiplayerpeer.md "WebRTCMultiplayerPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webrtcdatachannel.md "WebRTCDataChannel") [Next](class_webrtcmultiplayerpeer.md "WebRTCMultiplayerPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).