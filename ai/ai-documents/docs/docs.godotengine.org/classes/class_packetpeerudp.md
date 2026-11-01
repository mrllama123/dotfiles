---
title: PacketPeerUDP — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packetpeerudp.html
crawled_at: "2026-08-13T10:39:48+12:00"
content_hash: e483242bbb3986a0ddd8bb369fe8a0e5f9595720d959189fb7845a7fd37d11a8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PacketPeerUDP

* * *

# PacketPeerUDP

**Inherits:** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

UDP packet peer.

## Description

UDP packet peer. Can be used to send and receive raw UDP packets as well as [Variant](class_variant.md#class-variant) s.

**Example:** Send a packet:

```
var peer = PacketPeerUDP.new()

# Optionally, you can select the local port used to send the packet.
peer.bind(4444)

peer.set_dest_address("1.1.1.1", 4433)
peer.put_packet("hello".to_utf8_buffer())

```

**Example:** Listen for packets:

```
var peer

func _ready():
    peer = PacketPeerUDP.new()
    peer.bind(4433)

func _process(_delta):
    if peer.get_available_packet_count() > 0:
        var array_bytes = peer.get_packet()
        var packet_string = array_bytes.get_string_from_ascii()
        print("Received message: ", packet_string)

```

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [bind](#class-packetpeerudp-method-bind)(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*", recv\_buf\_size: [int](class_int.md#class-int) = 65536) |
| void | [close](#class-packetpeerudp-method-close)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_to\_host](#class-packetpeerudp-method-connect-to-host)(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_local\_port](#class-packetpeerudp-method-get-local-port)() const |
| [String](class_string.md#class-string) | [get\_packet\_ip](#class-packetpeerudp-method-get-packet-ip)() const |
| [int](class_int.md#class-int) | [get\_packet\_port](#class-packetpeerudp-method-get-packet-port)() const |
| [bool](class_bool.md#class-bool) | [is\_bound](#class-packetpeerudp-method-is-bound)() const |
| [bool](class_bool.md#class-bool) | [is\_socket\_connected](#class-packetpeerudp-method-is-socket-connected)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [join\_multicast\_group](#class-packetpeerudp-method-join-multicast-group)(multicast\_address: [String](class_string.md#class-string), interface\_name: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [leave\_multicast\_group](#class-packetpeerudp-method-leave-multicast-group)(multicast\_address: [String](class_string.md#class-string), interface\_name: [String](class_string.md#class-string)) |
| void | [set\_broadcast\_enabled](#class-packetpeerudp-method-set-broadcast-enabled)(enabled: [bool](class_bool.md#class-bool)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_dest\_address](#class-packetpeerudp-method-set-dest-address)(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [wait](#class-packetpeerudp-method-wait)() |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **bind**(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*", recv\_buf\_size: [int](class_int.md#class-int) = 65536) [🔗](#class-packetpeerudp-method-bind)

Binds this **PacketPeerUDP** to the specified `port` and `bind_address` with a buffer size `recv_buf_size`, allowing it to receive incoming packets.

If `bind_address` is set to `"*"` (default), the peer will be bound on all available addresses (both IPv4 and IPv6).

If `bind_address` is set to `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the peer will be bound to all available addresses matching that IP type.

If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc.), the peer will only be bound to the interface with that address (or fail if no interface with the given address exists).

* * *

void **close**() [🔗](#class-packetpeerudp-method-close)

Closes the **PacketPeerUDP**'s underlying UDP socket.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_to\_host**(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) [🔗](#class-packetpeerudp-method-connect-to-host)

Calling this method connects this UDP peer to the given `host`/ `port` pair. UDP is in reality connectionless, so this option only means that incoming packets from different addresses are automatically discarded, and that outgoing packets are always sent to the connected address (future calls to [set\_dest\_address()](#class-packetpeerudp-method-set-dest-address) are not allowed). This method does not send any data to the remote peer, to do that, use [PacketPeer.put\_var()](class_packetpeer.md#class-packetpeer-method-put-var) or [PacketPeer.put\_packet()](class_packetpeer.md#class-packetpeer-method-put-packet) as usual. See also [UDPServer](class_udpserver.md#class-udpserver).

**Note:** Connecting to the remote peer does not help to protect from malicious attacks like IP spoofing, etc. Think about using an encryption technique like TLS or DTLS if you feel like your application is transferring sensitive information.

* * *

[int](class_int.md#class-int) **get\_local\_port**() const [🔗](#class-packetpeerudp-method-get-local-port)

Returns the local port to which this peer is bound.

* * *

[String](class_string.md#class-string) **get\_packet\_ip**() const [🔗](#class-packetpeerudp-method-get-packet-ip)

Returns the IP of the remote peer that sent the last packet(that was received with [PacketPeer.get\_packet()](class_packetpeer.md#class-packetpeer-method-get-packet) or [PacketPeer.get\_var()](class_packetpeer.md#class-packetpeer-method-get-var)).

* * *

[int](class_int.md#class-int) **get\_packet\_port**() const [🔗](#class-packetpeerudp-method-get-packet-port)

Returns the port of the remote peer that sent the last packet(that was received with [PacketPeer.get\_packet()](class_packetpeer.md#class-packetpeer-method-get-packet) or [PacketPeer.get\_var()](class_packetpeer.md#class-packetpeer-method-get-var)).

* * *

[bool](class_bool.md#class-bool) **is\_bound**() const [🔗](#class-packetpeerudp-method-is-bound)

Returns whether this **PacketPeerUDP** is bound to an address and can receive packets.

* * *

[bool](class_bool.md#class-bool) **is\_socket\_connected**() const [🔗](#class-packetpeerudp-method-is-socket-connected)

Returns `true` if the UDP socket is open and has been connected to a remote address. See [connect\_to\_host()](#class-packetpeerudp-method-connect-to-host).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **join\_multicast\_group**(multicast\_address: [String](class_string.md#class-string), interface\_name: [String](class_string.md#class-string)) [🔗](#class-packetpeerudp-method-join-multicast-group)

Joins the multicast group specified by `multicast_address` using the interface identified by `interface_name`.

You can join the same multicast group with multiple interfaces. Use [IP.get\_local\_interfaces()](class_ip.md#class-ip-method-get-local-interfaces) to know which are available.

**Note:** Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission for multicast to work.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **leave\_multicast\_group**(multicast\_address: [String](class_string.md#class-string), interface\_name: [String](class_string.md#class-string)) [🔗](#class-packetpeerudp-method-leave-multicast-group)

Removes the interface identified by `interface_name` from the multicast group specified by `multicast_address`.

* * *

void **set\_broadcast\_enabled**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-packetpeerudp-method-set-broadcast-enabled)

Enable or disable sending of broadcast packets (e.g. `set_dest_address("255.255.255.255", 4343)`. This option is disabled by default.

**Note:** Some Android devices might require the `CHANGE_WIFI_MULTICAST_STATE` permission and this option to be enabled to receive broadcast packets too.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_dest\_address**(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) [🔗](#class-packetpeerudp-method-set-dest-address)

Sets the destination address and port for sending packets and variables. A hostname will be resolved using DNS if needed.

**Note:** [set\_broadcast\_enabled()](#class-packetpeerudp-method-set-broadcast-enabled) must be enabled before sending packets to a broadcast address (e.g. `255.255.255.255`).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **wait**() [🔗](#class-packetpeerudp-method-wait)

Waits for a packet to arrive on the bound address. See [bind()](#class-packetpeerudp-method-bind).

**Note:** [wait()](#class-packetpeerudp-method-wait) can't be interrupted once it has been called. This can be worked around by allowing the other party to send a specific "death pill" packet like this:

GDScriptC#

```
socket = PacketPeerUDP.new()
# Server
socket.set_dest_address("127.0.0.1", 789)
socket.put_packet("Time to stop".to_ascii_buffer())

# Client
while socket.wait() == OK:
    var data = socket.get_packet().get_string_from_ascii()
    if data == "Time to stop":
        return

```

```
var socket = new PacketPeerUdp();
// Server
socket.SetDestAddress("127.0.0.1", 789);
socket.PutPacket("Time to stop".ToAsciiBuffer());

// Client
while (socket.Wait() == OK)
{
    string data = socket.GetPacket().GetStringFromASCII();
    if (data == "Time to stop")
    {
        return;
    }
}

```

[Previous](class_packetpeerstream.md "PacketPeerStream") [Next](class_pckpacker.md "PCKPacker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packetpeerstream.md "PacketPeerStream") [Next](class_pckpacker.md "PCKPacker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).