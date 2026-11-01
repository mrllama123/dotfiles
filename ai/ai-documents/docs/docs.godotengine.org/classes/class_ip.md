---
title: IP — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_ip.html
crawled_at: "2026-08-13T10:34:01+12:00"
content_hash: 5afdf6bea0bc3e269c5f87100b9817b0f63732abbdae23e36817bb7e482a8019
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - IP

* * *

# IP

**Inherits:** [Object](class_object.md#class-object)

Internet protocol (IP) support functions such as DNS resolution.

## Description

IP contains support functions for the Internet Protocol (IP). TCP/IP support is in different classes (see [StreamPeerTCP](class_streampeertcp.md#class-streampeertcp) and [TCPServer](class_tcpserver.md#class-tcpserver)). IP provides DNS hostname resolution support, both blocking and threaded.

## Methods

|     |     |
| --- | --- |
| void | [clear\_cache](#class-ip-method-clear-cache)(hostname: [String](class_string.md#class-string) = "") |
| void | [erase\_resolve\_item](#class-ip-method-erase-resolve-item)(id: [int](class_int.md#class-int)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_local\_addresses](#class-ip-method-get-local-addresses)() const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_local\_interfaces](#class-ip-method-get-local-interfaces)() const |
| [String](class_string.md#class-string) | [get\_resolve\_item\_address](#class-ip-method-get-resolve-item-address)(id: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_resolve\_item\_addresses](#class-ip-method-get-resolve-item-addresses)(id: [int](class_int.md#class-int)) const |
| [ResolverStatus](#enum-ip-resolverstatus) | [get\_resolve\_item\_status](#class-ip-method-get-resolve-item-status)(id: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [resolve\_hostname](#class-ip-method-resolve-hostname)(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [resolve\_hostname\_addresses](#class-ip-method-resolve-hostname-addresses)(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) |
| [int](class_int.md#class-int) | [resolve\_hostname\_queue\_item](#class-ip-method-resolve-hostname-queue-item)(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) |

* * *

## Enumerations

enum **ResolverStatus**: [🔗](#enum-ip-resolverstatus)

[ResolverStatus](#enum-ip-resolverstatus) **RESOLVER\_STATUS\_NONE** = `0`

DNS hostname resolver status: No status.

[ResolverStatus](#enum-ip-resolverstatus) **RESOLVER\_STATUS\_WAITING** = `1`

DNS hostname resolver status: Waiting.

[ResolverStatus](#enum-ip-resolverstatus) **RESOLVER\_STATUS\_DONE** = `2`

DNS hostname resolver status: Done.

[ResolverStatus](#enum-ip-resolverstatus) **RESOLVER\_STATUS\_ERROR** = `3`

DNS hostname resolver status: Error.

* * *

enum **Type**: [🔗](#enum-ip-type)

[Type](#enum-ip-type) **TYPE\_NONE** = `0`

Address type: None.

[Type](#enum-ip-type) **TYPE\_IPV4** = `1`

Address type: Internet protocol version 4 (IPv4).

[Type](#enum-ip-type) **TYPE\_IPV6** = `2`

Address type: Internet protocol version 6 (IPv6).

[Type](#enum-ip-type) **TYPE\_ANY** = `3`

Address type: Any.

* * *

## Constants

**RESOLVER\_MAX\_QUERIES** = `256` [🔗](#class-ip-constant-resolver-max-queries)

Maximum number of concurrent DNS resolver queries allowed, [RESOLVER\_INVALID\_ID](#class-ip-constant-resolver-invalid-id) is returned if exceeded.

**RESOLVER\_INVALID\_ID** = `-1` [🔗](#class-ip-constant-resolver-invalid-id)

Invalid ID constant. Returned if [RESOLVER\_MAX\_QUERIES](#class-ip-constant-resolver-max-queries) is exceeded.

* * *

## Method Descriptions

void **clear\_cache**(hostname: [String](class_string.md#class-string) = "") [🔗](#class-ip-method-clear-cache)

Removes all of a `hostname`'s cached references. If no `hostname` is given, all cached IP addresses are removed.

* * *

void **erase\_resolve\_item**(id: [int](class_int.md#class-int)) [🔗](#class-ip-method-erase-resolve-item)

Removes a given item `id` from the queue. This should be used to free a queue after it has completed to enable more queries to happen.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_local\_addresses**() const [🔗](#class-ip-method-get-local-addresses)

Returns all the user's current IPv4 and IPv6 addresses as an array.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_local\_interfaces**() const [🔗](#class-ip-method-get-local-interfaces)

Returns all network adapters as an array.

Each adapter is a dictionary of the form:

```
{
    "index": "1", # Interface index.
    "name": "eth0", # Interface name.
    "friendly": "Ethernet One", # A friendly name (might be empty).
    "addresses": ["192.168.1.101"], # An array of IP addresses associated to this interface.
}

```

* * *

[String](class_string.md#class-string) **get\_resolve\_item\_address**(id: [int](class_int.md#class-int)) const [🔗](#class-ip-method-get-resolve-item-address)

Returns a queued hostname's IP address, given its queue `id`. Returns an empty string on error or if resolution hasn't happened yet (see [get\_resolve\_item\_status()](#class-ip-method-get-resolve-item-status)).

* * *

[Array](class_array.md#class-array) **get\_resolve\_item\_addresses**(id: [int](class_int.md#class-int)) const [🔗](#class-ip-method-get-resolve-item-addresses)

Returns resolved addresses, or an empty array if an error happened or resolution didn't happen yet (see [get\_resolve\_item\_status()](#class-ip-method-get-resolve-item-status)).

* * *

[ResolverStatus](#enum-ip-resolverstatus) **get\_resolve\_item\_status**(id: [int](class_int.md#class-int)) const [🔗](#class-ip-method-get-resolve-item-status)

Returns a queued hostname's status as a [ResolverStatus](#enum-ip-resolverstatus) constant, given its queue `id`.

* * *

[String](class_string.md#class-string) **resolve\_hostname**(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) [🔗](#class-ip-method-resolve-hostname)

Returns a given hostname's IPv4 or IPv6 address when resolved (blocking-type method). The address type returned depends on the [Type](#enum-ip-type) constant given as `ip_type`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **resolve\_hostname\_addresses**(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) [🔗](#class-ip-method-resolve-hostname-addresses)

Resolves a given hostname in a blocking way. Addresses are returned as an [Array](class_array.md#class-array) of IPv4 or IPv6 addresses depending on `ip_type`.

* * *

[int](class_int.md#class-int) **resolve\_hostname\_queue\_item**(host: [String](class_string.md#class-string), ip\_type: [Type](#enum-ip-type) = 3) [🔗](#class-ip-method-resolve-hostname-queue-item)

Creates a queue item to resolve a hostname to an IPv4 or IPv6 address depending on the [Type](#enum-ip-type) constant given as `ip_type`. Returns the queue ID if successful, or [RESOLVER\_INVALID\_ID](#class-ip-constant-resolver-invalid-id) on error.

[Previous](class_intervaltweener.md "IntervalTweener") [Next](class_javaclass.md "JavaClass")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_intervaltweener.md "IntervalTweener") [Next](class_javaclass.md "JavaClass")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).