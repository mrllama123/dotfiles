---
title: StreamPeerTCP — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_streampeertcp.html
crawled_at: "2026-08-13T10:31:21+12:00"
content_hash: a7cac85ab9e8ac7e016c1857261877ad99ea13ca1d35c0bbd71b6e43d1695c70
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - StreamPeerTCP

* * *

# StreamPeerTCP

**Inherits:** [StreamPeer](class_streampeer.md#class-streampeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A stream peer that handles TCP connections.

## Description

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [bind](#class-streampeertcp-method-bind)(port: [int](class_int.md#class-int), host: [String](class_string.md#class-string) = "\*") |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_to\_host](#class-streampeertcp-method-connect-to-host)(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) |
| void | [disconnect\_from\_host](#class-streampeertcp-method-disconnect-from-host)() |
| [String](class_string.md#class-string) | [get\_connected\_host](#class-streampeertcp-method-get-connected-host)() const |
| [int](class_int.md#class-int) | [get\_connected\_port](#class-streampeertcp-method-get-connected-port)() const |
| [int](class_int.md#class-int) | [get\_local\_port](#class-streampeertcp-method-get-local-port)() const |
| [Status](#enum-streampeertcp-status) | [get\_status](#class-streampeertcp-method-get-status)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [poll](#class-streampeertcp-method-poll)() |
| void | [set\_no\_delay](#class-streampeertcp-method-set-no-delay)(enabled: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **Status**: [🔗](#enum-streampeertcp-status)

[Status](#enum-streampeertcp-status) **STATUS\_NONE** = `0`

The initial status of the **StreamPeerTCP**. This is also the status after disconnecting.

[Status](#enum-streampeertcp-status) **STATUS\_CONNECTING** = `1`

A status representing a **StreamPeerTCP** that is connecting to a host.

[Status](#enum-streampeertcp-status) **STATUS\_CONNECTED** = `2`

A status representing a **StreamPeerTCP** that is connected to a host.

[Status](#enum-streampeertcp-status) **STATUS\_ERROR** = `3`

A status representing a **StreamPeerTCP** in error state.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **bind**(port: [int](class_int.md#class-int), host: [String](class_string.md#class-string) = "\*") [🔗](#class-streampeertcp-method-bind)

Opens the TCP socket, and binds it to the specified local address.

This method is generally not needed, and only used to force the subsequent call to [connect\_to\_host()](#class-streampeertcp-method-connect-to-host) to use the specified `host` and `port` as source address. This can be desired in some NAT punchthrough techniques, or when forcing the source network interface.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_to\_host**(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) [🔗](#class-streampeertcp-method-connect-to-host)

Connects to the specified `host:port` pair. A hostname will be resolved if valid. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success.

* * *

void **disconnect\_from\_host**() [🔗](#class-streampeertcp-method-disconnect-from-host)

Disconnects from host.

* * *

[String](class_string.md#class-string) **get\_connected\_host**() const [🔗](#class-streampeertcp-method-get-connected-host)

Returns the IP of this peer.

* * *

[int](class_int.md#class-int) **get\_connected\_port**() const [🔗](#class-streampeertcp-method-get-connected-port)

Returns the port of this peer.

* * *

[int](class_int.md#class-int) **get\_local\_port**() const [🔗](#class-streampeertcp-method-get-local-port)

Returns the local port to which this peer is bound.

* * *

[Status](#enum-streampeertcp-status) **get\_status**() const [🔗](#class-streampeertcp-method-get-status)

Returns the status of the connection.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **poll**() [🔗](#class-streampeertcp-method-poll)

Poll the socket, updating its state. See [get\_status()](#class-streampeertcp-method-get-status).

* * *

void **set\_no\_delay**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-streampeertcp-method-set-no-delay)

If `enabled` is `true`, packets will be sent immediately. If `enabled` is `false` (the default), packet transfers will be delayed and combined using [Nagle's algorithm](https://en.wikipedia.org/wiki/Nagle%27s_algorithm).

**Note:** It's recommended to leave this disabled for applications that send large packets or need to transfer a lot of data, as enabling this can decrease the total available bandwidth.

[Previous](class_streampeergzip.md "StreamPeerGZIP") [Next](class_streampeertls.md "StreamPeerTLS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_streampeergzip.md "StreamPeerGZIP") [Next](class_streampeertls.md "StreamPeerTLS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).