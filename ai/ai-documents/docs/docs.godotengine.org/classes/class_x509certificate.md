---
title: X509Certificate — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_x509certificate.html
crawled_at: "2026-08-13T10:27:35+12:00"
content_hash: 0d594f4e5ffba924dd29e14f81b59ebb2123bf231a62c57b1769d87465e34bc4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - X509Certificate

* * *

# X509Certificate

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An X509 certificate (e.g. for TLS).

## Description

The X509Certificate class represents an X509 certificate. Certificates can be loaded and saved like any other [Resource](class_resource.md#class-resource).

They can be used as the server certificate in [StreamPeerTLS.accept\_stream()](class_streampeertls.md#class-streampeertls-method-accept-stream) (along with the proper [CryptoKey](class_cryptokey.md#class-cryptokey)), and to specify the only certificate that should be accepted when connecting to a TLS server via [StreamPeerTLS.connect\_to\_stream()](class_streampeertls.md#class-streampeertls-method-connect-to-stream).

## Tutorials

- [SSL certificates](../tutorials/networking/ssl_certificates.md)


## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-x509certificate-method-load)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_from\_string](#class-x509certificate-method-load-from-string)(string: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save](#class-x509certificate-method-save)(path: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [save\_to\_string](#class-x509certificate-method-save-to-string)() |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-x509certificate-method-load)

Loads a certificate from `path` ("\*.crt" file).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_from\_string**(string: [String](class_string.md#class-string)) [🔗](#class-x509certificate-method-load-from-string)

Loads a certificate from the given `string`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save**(path: [String](class_string.md#class-string)) [🔗](#class-x509certificate-method-save)

Saves a certificate to the given `path` (should be a "\*.crt" file).

* * *

[String](class_string.md#class-string) **save\_to\_string**() [🔗](#class-x509certificate-method-save-to-string)

Returns a string representation of the certificate, or an empty string if the certificate is invalid.

[Previous](class_worldboundaryshape3d.md "WorldBoundaryShape3D") [Next](class_object.md "Object")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_worldboundaryshape3d.md "WorldBoundaryShape3D") [Next](class_object.md "Object")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).