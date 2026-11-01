---
title: UPNPDevice — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_upnpdevice.html
crawled_at: "2026-08-13T10:23:46+12:00"
content_hash: 1aac186fa96e353d7054962b5f3891d96a4e55e544175ebf46a53a40a9772111
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - UPNPDevice

* * *

# UPNPDevice

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Universal Plug and Play (UPnP) device.

## Description

Universal Plug and Play (UPnP) device. See [UPNP](class_upnp.md#class-upnp) for UPnP discovery and utility functions. Provides low-level access to UPNP control commands. Allows to manage port mappings (port forwarding) and to query network information of the device (like local and external IP address and status). Note that methods on this class are synchronous and block the calling thread.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [description\_url](#class-upnpdevice-property-description-url) | `""` |
| [String](class_string.md#class-string) | [igd\_control\_url](#class-upnpdevice-property-igd-control-url) | `""` |
| [String](class_string.md#class-string) | [igd\_our\_addr](#class-upnpdevice-property-igd-our-addr) | `""` |
| [String](class_string.md#class-string) | [igd\_service\_type](#class-upnpdevice-property-igd-service-type) | `""` |
| [IGDStatus](#enum-upnpdevice-igdstatus) | [igd\_status](#class-upnpdevice-property-igd-status) | `9` |
| [String](class_string.md#class-string) | [service\_type](#class-upnpdevice-property-service-type) | `""` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_port\_mapping](#class-upnpdevice-method-add-port-mapping)(port: [int](class_int.md#class-int), port\_internal: [int](class_int.md#class-int) = 0, desc: [String](class_string.md#class-string) = "", proto: [String](class_string.md#class-string) = "UDP", duration: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [delete\_port\_mapping](#class-upnpdevice-method-delete-port-mapping)(port: [int](class_int.md#class-int), proto: [String](class_string.md#class-string) = "UDP") const |
| [bool](class_bool.md#class-bool) | [is\_valid\_gateway](#class-upnpdevice-method-is-valid-gateway)() const |
| [String](class_string.md#class-string) | [query\_external\_address](#class-upnpdevice-method-query-external-address)() const |

* * *

## Enumerations

enum **IGDStatus**: [🔗](#enum-upnpdevice-igdstatus)

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_OK** = `0`

OK.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_HTTP\_ERROR** = `1`

HTTP error.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_HTTP\_EMPTY** = `2`

Empty HTTP response.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_NO\_URLS** = `3`

**Deprecated:** This value is no longer used.

Returned response contained no URLs.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_NO\_IGD** = `4`

Not a valid IGD.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_DISCONNECTED** = `5`

Disconnected.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_UNKNOWN\_DEVICE** = `6`

Unknown device.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_INVALID\_CONTROL** = `7`

Invalid control.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_MALLOC\_ERROR** = `8`

**Deprecated:** This value is no longer used.

Memory allocation error.

[IGDStatus](#enum-upnpdevice-igdstatus) **IGD\_STATUS\_UNKNOWN\_ERROR** = `9`

Unknown error.

* * *

## Property Descriptions

[String](class_string.md#class-string) **description\_url** = `""` [🔗](#class-upnpdevice-property-description-url)

- void **set\_description\_url**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_description\_url**()


URL to the device description.

* * *

[String](class_string.md#class-string) **igd\_control\_url** = `""` [🔗](#class-upnpdevice-property-igd-control-url)

- void **set\_igd\_control\_url**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_igd\_control\_url**()


IDG control URL.

* * *

[String](class_string.md#class-string) **igd\_our\_addr** = `""` [🔗](#class-upnpdevice-property-igd-our-addr)

- void **set\_igd\_our\_addr**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_igd\_our\_addr**()


Address of the local machine in the network connecting it to this **UPNPDevice**.

* * *

[String](class_string.md#class-string) **igd\_service\_type** = `""` [🔗](#class-upnpdevice-property-igd-service-type)

- void **set\_igd\_service\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_igd\_service\_type**()


IGD service type.

* * *

[IGDStatus](#enum-upnpdevice-igdstatus) **igd\_status** = `9` [🔗](#class-upnpdevice-property-igd-status)

- void **set\_igd\_status**(value: [IGDStatus](#enum-upnpdevice-igdstatus))

- [IGDStatus](#enum-upnpdevice-igdstatus) **get\_igd\_status**()


IGD status.

* * *

[String](class_string.md#class-string) **service\_type** = `""` [🔗](#class-upnpdevice-property-service-type)

- void **set\_service\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_service\_type**()


Service type.

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_port\_mapping**(port: [int](class_int.md#class-int), port\_internal: [int](class_int.md#class-int) = 0, desc: [String](class_string.md#class-string) = "", proto: [String](class_string.md#class-string) = "UDP", duration: [int](class_int.md#class-int) = 0) const [🔗](#class-upnpdevice-method-add-port-mapping)

Adds a port mapping to forward the given external port on this **UPNPDevice** for the given protocol to the local machine. See [UPNP.add\_port\_mapping()](class_upnp.md#class-upnp-method-add-port-mapping).

* * *

[int](class_int.md#class-int) **delete\_port\_mapping**(port: [int](class_int.md#class-int), proto: [String](class_string.md#class-string) = "UDP") const [🔗](#class-upnpdevice-method-delete-port-mapping)

Deletes the port mapping identified by the given port and protocol combination on this device. See [UPNP.delete\_port\_mapping()](class_upnp.md#class-upnp-method-delete-port-mapping).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_gateway**() const [🔗](#class-upnpdevice-method-is-valid-gateway)

Returns `true` if this is a valid IGD (InternetGatewayDevice) which potentially supports port forwarding.

* * *

[String](class_string.md#class-string) **query\_external\_address**() const [🔗](#class-upnpdevice-method-query-external-address)

Returns the external IP address of this **UPNPDevice** or an empty string.

[Previous](class_upnp.md "UPNP") [Next](class_weakref.md "WeakRef")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_upnp.md "UPNP") [Next](class_weakref.md "WeakRef")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).