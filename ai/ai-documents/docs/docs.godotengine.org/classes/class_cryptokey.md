---
title: CryptoKey — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cryptokey.html
crawled_at: "2026-08-13T10:40:12+12:00"
content_hash: 4b5367a370bb4b0c44287d636b64d38237d381672fbc30a799e69d83c3573594
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CryptoKey

* * *

# CryptoKey

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A cryptographic key (RSA or elliptic-curve).

## Description

The CryptoKey class represents a cryptographic key. Keys can be loaded and saved like any other [Resource](class_resource.md#class-resource).

They can be used to generate a self-signed [X509Certificate](class_x509certificate.md#class-x509certificate) via [Crypto.generate\_self\_signed\_certificate()](class_crypto.md#class-crypto-method-generate-self-signed-certificate) and as private key in [StreamPeerTLS.accept\_stream()](class_streampeertls.md#class-streampeertls-method-accept-stream) along with the appropriate certificate.

## Tutorials

- [SSL certificates](../tutorials/networking/ssl_certificates.md)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_public\_only](#class-cryptokey-method-is-public-only)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-cryptokey-method-load)(path: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_from\_string](#class-cryptokey-method-load-from-string)(string\_key: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save](#class-cryptokey-method-save)(path: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) |
| [String](class_string.md#class-string) | [save\_to\_string](#class-cryptokey-method-save-to-string)(public\_only: [bool](class_bool.md#class-bool) = false) |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_public\_only**() const [🔗](#class-cryptokey-method-is-public-only)

Returns `true` if this CryptoKey only has the public part, and not the private one.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-cryptokey-method-load)

Loads a key from `path`. If `public_only` is `true`, only the public key will be loaded.

**Note:** `path` should be a "\*.pub" file if `public_only` is `true`, a "\*.key" file otherwise.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_from\_string**(string\_key: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-cryptokey-method-load-from-string)

Loads a key from the given `string_key`. If `public_only` is `true`, only the public key will be loaded.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save**(path: [String](class_string.md#class-string), public\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-cryptokey-method-save)

Saves a key to the given `path`. If `public_only` is `true`, only the public key will be saved.

**Note:** `path` should be a "\*.pub" file if `public_only` is `true`, a "\*.key" file otherwise.

* * *

[String](class_string.md#class-string) **save\_to\_string**(public\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-cryptokey-method-save-to-string)

Returns a string containing the key in PEM format. If `public_only` is `true`, only the public key will be included.

[Previous](class_convexpolygonshape3d.md "ConvexPolygonShape3D") [Next](class_csharpscript.md "CSharpScript")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_convexpolygonshape3d.md "ConvexPolygonShape3D") [Next](class_csharpscript.md "CSharpScript")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).