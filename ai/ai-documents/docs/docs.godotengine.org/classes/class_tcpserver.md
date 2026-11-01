---
title: TCPServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tcpserver.html
crawled_at: "2026-08-13T10:23:24+12:00"
content_hash: 945126192d5559a5d765dfb7394b88e3467fc6e9d3bdc827c40cd9381940f9af
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TCPServer

* * *

# TCPServer

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A TCP server.

## Description

A TCP server. Listens to connections on a port and returns a [StreamPeerTCP](class_streampeertcp.md#class-streampeertcp) when it gets an incoming connection.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_local\_port](#class-tcpserver-method-get-local-port)() const |
| [bool](class_bool.md#class-bool) | [is\_connection\_available](#class-tcpserver-method-is-connection-available)() const |
| [bool](class_bool.md#class-bool) | [is\_listening](#class-tcpserver-method-is-listening)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [listen](#class-tcpserver-method-listen)(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*") |
| void | [stop](#class-tcpserver-method-stop)() |
| [StreamPeerTCP](class_streampeertcp.md#class-streampeertcp) | [take\_connection](#class-tcpserver-method-take-connection)() |

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_local\_port**() const [🔗](#class-tcpserver-method-get-local-port)

Returns the local port this server is listening to.

* * *

[bool](class_bool.md#class-bool) **is\_connection\_available**() const [🔗](#class-tcpserver-method-is-connection-available)

Returns `true` if a connection is available for taking.

* * *

[bool](class_bool.md#class-bool) **is\_listening**() const [🔗](#class-tcpserver-method-is-listening)

Returns `true` if the server is currently listening for connections.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **listen**(port: [int](class_int.md#class-int), bind\_address: [String](class_string.md#class-string) = "\*") [🔗](#class-tcpserver-method-listen)

Listen on the `port` binding to `bind_address`.

If `bind_address` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).

If `bind_address` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.

If `bind_address` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc.), the server will only listen on the interface with that address (or fail if no interface with the given address exists).

* * *

void **stop**() [🔗](#class-tcpserver-method-stop)

Stops listening.

* * *

[StreamPeerTCP](class_streampeertcp.md#class-streampeertcp) **take\_connection**() [🔗](#class-tcpserver-method-take-connection)

If a connection is available, returns a StreamPeerTCP with the connection.

[Previous](class_surfacetool.md "SurfaceTool") [Next](class_textline.md "TextLine")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_surfacetool.md "SurfaceTool") [Next](class_textline.md "TextLine")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).