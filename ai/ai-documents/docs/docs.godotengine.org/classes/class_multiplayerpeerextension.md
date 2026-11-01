---
title: MultiplayerPeerExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayerpeerextension.html
crawled_at: "2026-08-13T10:25:09+12:00"
content_hash: 64338f081164f97139b3ab231f4e32394ba6bb809d56a1286ef415e8aa06d74a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerPeerExtension

* * *

# MultiplayerPeerExtension

**Inherits:** [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **<** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class that can be inherited to implement custom multiplayer API networking layers via GDExtension.

## Description

This class is designed to be inherited from a GDExtension plugin to implement custom networking layers for the multiplayer API (such as WebRTC). All the methods below **must** be implemented to have a working custom multiplayer implementation. See also [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

## Methods

|     |     |
| --- | --- |
| void | [\_close](#class-multiplayerpeerextension-private-method-close)() virtualrequired |
| void | [\_disconnect\_peer](#class-multiplayerpeerextension-private-method-disconnect-peer)(p\_peer: [int](class_int.md#class-int), p\_force: [bool](class_bool.md#class-bool)) virtualrequired |
| [int](class_int.md#class-int) | [\_get\_available\_packet\_count](#class-multiplayerpeerextension-private-method-get-available-packet-count)() virtualrequiredconst |
| [ConnectionStatus](class_multiplayerpeer.md#enum-multiplayerpeer-connectionstatus) | [\_get\_connection\_status](#class-multiplayerpeerextension-private-method-get-connection-status)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_max\_packet\_size](#class-multiplayerpeerextension-private-method-get-max-packet-size)() virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_get\_packet](#class-multiplayerpeerextension-private-method-get-packet)(r\_buffer: `const uint8_t **`, r\_buffer\_size: `int32_t*`) virtual |
| [int](class_int.md#class-int) | [\_get\_packet\_channel](#class-multiplayerpeerextension-private-method-get-packet-channel)() virtualrequiredconst |
| [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) | [\_get\_packet\_mode](#class-multiplayerpeerextension-private-method-get-packet-mode)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_packet\_peer](#class-multiplayerpeerextension-private-method-get-packet-peer)() virtualrequiredconst |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [\_get\_packet\_script](#class-multiplayerpeerextension-private-method-get-packet-script)() virtual |
| [int](class_int.md#class-int) | [\_get\_transfer\_channel](#class-multiplayerpeerextension-private-method-get-transfer-channel)() virtualrequiredconst |
| [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) | [\_get\_transfer\_mode](#class-multiplayerpeerextension-private-method-get-transfer-mode)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_unique\_id](#class-multiplayerpeerextension-private-method-get-unique-id)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_refusing\_new\_connections](#class-multiplayerpeerextension-private-method-is-refusing-new-connections)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_server](#class-multiplayerpeerextension-private-method-is-server)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_server\_relay\_supported](#class-multiplayerpeerextension-private-method-is-server-relay-supported)() virtualconst |
| void | [\_poll](#class-multiplayerpeerextension-private-method-poll)() virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_put\_packet](#class-multiplayerpeerextension-private-method-put-packet)(p\_buffer: `const uint8_t*`, p\_buffer\_size: [int](class_int.md#class-int)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_put\_packet\_script](#class-multiplayerpeerextension-private-method-put-packet-script)(p\_buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtual |
| void | [\_set\_refuse\_new\_connections](#class-multiplayerpeerextension-private-method-set-refuse-new-connections)(p\_enable: [bool](class_bool.md#class-bool)) virtual |
| void | [\_set\_target\_peer](#class-multiplayerpeerextension-private-method-set-target-peer)(p\_peer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_transfer\_channel](#class-multiplayerpeerextension-private-method-set-transfer-channel)(p\_channel: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_transfer\_mode](#class-multiplayerpeerextension-private-method-set-transfer-mode)(p\_mode: [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode)) virtualrequired |

* * *

## Method Descriptions

void **\_close**() virtualrequired [🔗](#class-multiplayerpeerextension-private-method-close)

Called when the multiplayer peer should be immediately closed (see [MultiplayerPeer.close()](class_multiplayerpeer.md#class-multiplayerpeer-method-close)).

* * *

void **\_disconnect\_peer**(p\_peer: [int](class_int.md#class-int), p\_force: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-multiplayerpeerextension-private-method-disconnect-peer)

Called when the connected `p_peer` should be forcibly disconnected (see [MultiplayerPeer.disconnect\_peer()](class_multiplayerpeer.md#class-multiplayerpeer-method-disconnect-peer)).

* * *

[int](class_int.md#class-int) **\_get\_available\_packet\_count**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-available-packet-count)

Called when the available packet count is internally requested by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

* * *

[ConnectionStatus](class_multiplayerpeer.md#enum-multiplayerpeer-connectionstatus) **\_get\_connection\_status**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-connection-status)

Called when the connection status is requested on the [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.get\_connection\_status()](class_multiplayerpeer.md#class-multiplayerpeer-method-get-connection-status)).

* * *

[int](class_int.md#class-int) **\_get\_max\_packet\_size**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-max-packet-size)

Called when the maximum allowed packet size (in bytes) is requested by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_get\_packet**(r\_buffer: `const uint8_t **`, r\_buffer\_size: `int32_t*`) virtual [🔗](#class-multiplayerpeerextension-private-method-get-packet)

Called when a packet needs to be received by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), with `r_buffer_size` being the size of the binary `r_buffer` in bytes.

* * *

[int](class_int.md#class-int) **\_get\_packet\_channel**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-packet-channel)

Called to get the channel over which the next available packet was received. See [MultiplayerPeer.get\_packet\_channel()](class_multiplayerpeer.md#class-multiplayerpeer-method-get-packet-channel).

* * *

[TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) **\_get\_packet\_mode**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-packet-mode)

Called to get the transfer mode the remote peer used to send the next available packet. See [MultiplayerPeer.get\_packet\_mode()](class_multiplayerpeer.md#class-multiplayerpeer-method-get-packet-mode).

* * *

[int](class_int.md#class-int) **\_get\_packet\_peer**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-packet-peer)

Called when the ID of the [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) who sent the most recent packet is requested (see [MultiplayerPeer.get\_packet\_peer()](class_multiplayerpeer.md#class-multiplayerpeer-method-get-packet-peer)).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **\_get\_packet\_script**() virtual [🔗](#class-multiplayerpeerextension-private-method-get-packet-script)

Called when a packet needs to be received by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), if [\_get\_packet()](#class-multiplayerpeerextension-private-method-get-packet) isn't implemented. Use this when extending this class via GDScript.

* * *

[int](class_int.md#class-int) **\_get\_transfer\_channel**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-transfer-channel)

Called when the transfer channel to use is read on this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.transfer\_channel](class_multiplayerpeer.md#class-multiplayerpeer-property-transfer-channel)).

* * *

[TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode) **\_get\_transfer\_mode**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-transfer-mode)

Called when the transfer mode to use is read on this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.transfer\_mode](class_multiplayerpeer.md#class-multiplayerpeer-property-transfer-mode)).

* * *

[int](class_int.md#class-int) **\_get\_unique\_id**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-get-unique-id)

Called when the unique ID of this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) is requested (see [MultiplayerPeer.get\_unique\_id()](class_multiplayerpeer.md#class-multiplayerpeer-method-get-unique-id)). The value must be between `1` and `2147483647`.

* * *

[bool](class_bool.md#class-bool) **\_is\_refusing\_new\_connections**() virtualconst [🔗](#class-multiplayerpeerextension-private-method-is-refusing-new-connections)

Called when the "refuse new connections" status is requested on this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.refuse\_new\_connections](class_multiplayerpeer.md#class-multiplayerpeer-property-refuse-new-connections)).

* * *

[bool](class_bool.md#class-bool) **\_is\_server**() virtualrequiredconst [🔗](#class-multiplayerpeerextension-private-method-is-server)

Called when the "is server" status is requested on the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi). See [MultiplayerAPI.is\_server()](class_multiplayerapi.md#class-multiplayerapi-method-is-server).

* * *

[bool](class_bool.md#class-bool) **\_is\_server\_relay\_supported**() virtualconst [🔗](#class-multiplayerpeerextension-private-method-is-server-relay-supported)

Called to check if the server can act as a relay in the current configuration. See [MultiplayerPeer.is\_server\_relay\_supported()](class_multiplayerpeer.md#class-multiplayerpeer-method-is-server-relay-supported).

* * *

void **\_poll**() virtualrequired [🔗](#class-multiplayerpeerextension-private-method-poll)

Called when the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) is polled. See [MultiplayerAPI.poll()](class_multiplayerapi.md#class-multiplayerapi-method-poll).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_put\_packet**(p\_buffer: `const uint8_t*`, p\_buffer\_size: [int](class_int.md#class-int)) virtual [🔗](#class-multiplayerpeerextension-private-method-put-packet)

Called when a packet needs to be sent by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), with `p_buffer_size` being the size of the binary `p_buffer` in bytes.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_put\_packet\_script**(p\_buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtual [🔗](#class-multiplayerpeerextension-private-method-put-packet-script)

Called when a packet needs to be sent by the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), if [\_put\_packet()](#class-multiplayerpeerextension-private-method-put-packet) isn't implemented. Use this when extending this class via GDScript.

* * *

void **\_set\_refuse\_new\_connections**(p\_enable: [bool](class_bool.md#class-bool)) virtual [🔗](#class-multiplayerpeerextension-private-method-set-refuse-new-connections)

Called when the "refuse new connections" status is set on this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.refuse\_new\_connections](class_multiplayerpeer.md#class-multiplayerpeer-property-refuse-new-connections)).

* * *

void **\_set\_target\_peer**(p\_peer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-multiplayerpeerextension-private-method-set-target-peer)

Called when the target peer to use is set for this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.set\_target\_peer()](class_multiplayerpeer.md#class-multiplayerpeer-method-set-target-peer)).

* * *

void **\_set\_transfer\_channel**(p\_channel: [int](class_int.md#class-int)) virtualrequired [🔗](#class-multiplayerpeerextension-private-method-set-transfer-channel)

Called when the channel to use is set for this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.transfer\_channel](class_multiplayerpeer.md#class-multiplayerpeer-property-transfer-channel)).

* * *

void **\_set\_transfer\_mode**(p\_mode: [TransferMode](class_multiplayerpeer.md#enum-multiplayerpeer-transfermode)) virtualrequired [🔗](#class-multiplayerpeerextension-private-method-set-transfer-mode)

Called when the transfer mode is set on this [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) (see [MultiplayerPeer.transfer\_mode](class_multiplayerpeer.md#class-multiplayerpeer-property-transfer-mode)).

[Previous](class_multiplayerpeer.md "MultiplayerPeer") [Next](class_mutex.md "Mutex")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multiplayerpeer.md "MultiplayerPeer") [Next](class_mutex.md "Mutex")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).