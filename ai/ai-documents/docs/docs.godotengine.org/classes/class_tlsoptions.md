---
title: TLSOptions — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tlsoptions.html
crawled_at: "2026-08-13T10:28:47+12:00"
content_hash: a8aa6684b97d8e86b62afec37a3070fc5837d5c39e708c6b5e0ba1778f0e6a80
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TLSOptions

* * *

# TLSOptions

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

TLS configuration for clients and servers.

## Description

TLSOptions abstracts the configuration options for the [StreamPeerTLS](class_streampeertls.md#class-streampeertls) and [PacketPeerDTLS](class_packetpeerdtls.md#class-packetpeerdtls) classes.

Objects of this class cannot be instantiated directly, and one of the static methods [client()](#class-tlsoptions-method-client), [client\_unsafe()](#class-tlsoptions-method-client-unsafe), or [server()](#class-tlsoptions-method-server) should be used instead.

GDScript

```
# Create a TLS client configuration which uses our custom trusted CA chain.
var client_trusted_cas = load("res://my_trusted_cas.crt")
var client_tls_options = TLSOptions.client(client_trusted_cas)

# Create a TLS server configuration.
var server_certs = load("res://my_server_cas.crt")
var server_key = load("res://my_server_key.key")
var server_tls_options = TLSOptions.server(server_key, server_certs)

```

## Methods

|     |     |
| --- | --- |
| [TLSOptions](#class-tlsoptions) | [client](#class-tlsoptions-method-client)(trusted\_chain: [X509Certificate](class_x509certificate.md#class-x509certificate) = null, common\_name\_override: [String](class_string.md#class-string) = "") static |
| [TLSOptions](#class-tlsoptions) | [client\_unsafe](#class-tlsoptions-method-client-unsafe)(trusted\_chain: [X509Certificate](class_x509certificate.md#class-x509certificate) = null) static |
| [String](class_string.md#class-string) | [get\_common\_name\_override](#class-tlsoptions-method-get-common-name-override)() const |
| [X509Certificate](class_x509certificate.md#class-x509certificate) | [get\_own\_certificate](#class-tlsoptions-method-get-own-certificate)() const |
| [CryptoKey](class_cryptokey.md#class-cryptokey) | [get\_private\_key](#class-tlsoptions-method-get-private-key)() const |
| [X509Certificate](class_x509certificate.md#class-x509certificate) | [get\_trusted\_ca\_chain](#class-tlsoptions-method-get-trusted-ca-chain)() const |
| [bool](class_bool.md#class-bool) | [is\_server](#class-tlsoptions-method-is-server)() const |
| [bool](class_bool.md#class-bool) | [is\_unsafe\_client](#class-tlsoptions-method-is-unsafe-client)() const |
| [TLSOptions](#class-tlsoptions) | [server](#class-tlsoptions-method-server)(key: [CryptoKey](class_cryptokey.md#class-cryptokey), certificate: [X509Certificate](class_x509certificate.md#class-x509certificate)) static |

* * *

## Method Descriptions

[TLSOptions](#class-tlsoptions) **client**(trusted\_chain: [X509Certificate](class_x509certificate.md#class-x509certificate) = null, common\_name\_override: [String](class_string.md#class-string) = "") static [🔗](#class-tlsoptions-method-client)

Creates a TLS client configuration which validates certificates and their common names (fully qualified domain names).

You can specify a custom `trusted_chain` of certification authorities (the default CA list will be used if `null`), and optionally provide a `common_name_override` if you expect the certificate to have a common name other than the server FQDN.

**Note:** On the Web platform, TLS verification is always enforced against the CA list of the web browser. This is considered a security feature.

* * *

[TLSOptions](#class-tlsoptions) **client\_unsafe**(trusted\_chain: [X509Certificate](class_x509certificate.md#class-x509certificate) = null) static [🔗](#class-tlsoptions-method-client-unsafe)

Creates an **unsafe** TLS client configuration where certificate validation is optional. You can optionally provide a valid `trusted_chain`, but the common name of the certificates will never be checked. Using this configuration for purposes other than testing **is not recommended**.

**Note:** On the Web platform, TLS verification is always enforced against the CA list of the web browser. This is considered a security feature.

* * *

[String](class_string.md#class-string) **get\_common\_name\_override**() const [🔗](#class-tlsoptions-method-get-common-name-override)

Returns the common name (domain name) override specified when creating with [client()](#class-tlsoptions-method-client).

* * *

[X509Certificate](class_x509certificate.md#class-x509certificate) **get\_own\_certificate**() const [🔗](#class-tlsoptions-method-get-own-certificate)

Returns the [X509Certificate](class_x509certificate.md#class-x509certificate) specified when creating with [server()](#class-tlsoptions-method-server).

* * *

[CryptoKey](class_cryptokey.md#class-cryptokey) **get\_private\_key**() const [🔗](#class-tlsoptions-method-get-private-key)

Returns the [CryptoKey](class_cryptokey.md#class-cryptokey) specified when creating with [server()](#class-tlsoptions-method-server).

* * *

[X509Certificate](class_x509certificate.md#class-x509certificate) **get\_trusted\_ca\_chain**() const [🔗](#class-tlsoptions-method-get-trusted-ca-chain)

Returns the CA [X509Certificate](class_x509certificate.md#class-x509certificate) chain specified when creating with [client()](#class-tlsoptions-method-client) or [client\_unsafe()](#class-tlsoptions-method-client-unsafe).

* * *

[bool](class_bool.md#class-bool) **is\_server**() const [🔗](#class-tlsoptions-method-is-server)

Returns `true` if created with [server()](#class-tlsoptions-method-server), `false` otherwise.

* * *

[bool](class_bool.md#class-bool) **is\_unsafe\_client**() const [🔗](#class-tlsoptions-method-is-unsafe-client)

Returns `true` if created with [client\_unsafe()](#class-tlsoptions-method-client-unsafe), `false` otherwise.

* * *

[TLSOptions](#class-tlsoptions) **server**(key: [CryptoKey](class_cryptokey.md#class-cryptokey), certificate: [X509Certificate](class_x509certificate.md#class-x509certificate)) static [🔗](#class-tlsoptions-method-server)

Creates a TLS server configuration using the provided `key` and `certificate`.

**Note:** The `certificate` should include the full certificate chain up to the signing CA (certificates file can be concatenated using a general purpose text editor).

[Previous](class_time.md "Time") [Next](class_translationdomain.md "TranslationDomain")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_time.md "Time") [Next](class_translationdomain.md "TranslationDomain")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).