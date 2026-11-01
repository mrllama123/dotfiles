---
title: TLS/SSL certificates — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/networking/ssl_certificates.html
crawled_at: "2026-08-13T10:39:34+12:00"
content_hash: a4942e17768e3f8f7a5ad09b7c0e44bf02f8bce2e9ce1b35e74bedab5649619f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Networking](index.md)
  - TLS/SSL certificates
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/networking/ssl_certificates.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# TLS/SSL certificates

## Introduction

It is often desired to use TLS connections (also
known as SSL connections) for communications
to avoid "man in the middle" attacks. Godot has a connection wrapper,
[StreamPeerTLS](../../classes/class_streampeertls.md#class-streampeertls), which can take a regular connection
and add security around it. The [HTTPClient](../../classes/class_httpclient.md#class-httpclient) and
[HTTPRequest](../../classes/class_httprequest.md#class-httprequest) classes also support HTTPS using
this same wrapper.

Godot will try to use the TLS certificate bundle provided by the operating system,
but also includes the
[TLS certificate bundle from Mozilla](https://github.com/godotengine/godot/blob/master/thirdparty/certs/ca-certificates.crt)
as a fallback.

You can alternatively force your own certificate bundle in the Project Settings:

![Setting the TLS certificate bundle override project setting](../../_images/tls_certificates_project_setting.webp)

Setting the TLS certificate bundle override project setting

When set, this file _overrides_ the operating system provided bundle by default.
This file should contain any number of public certificates in
[PEM format](https://en.wikipedia.org/wiki/Privacy-enhanced_Electronic_Mail).

There are two ways to obtain certificates:

## Obtain a certificate from a certificate authority

The main approach to getting a certificate is to use a certificate authority
(CA) such as [Let's Encrypt](https://letsencrypt.org/). This is a more
cumbersome process than a self-signed certificate, but it's more "official" and
ensures your identity is clearly represented. The resulting certificate is also
trusted by applications such as web browsers, unlike a self-signed certificate
which requires additional configuration on the client side before it's
considered trusted.

These certificates do not require any configuration on the client to work, since
Godot already bundles the Mozilla certificate bundle in the editor and exported
projects.

## Generate a self-signed certificate

For most use cases, it's recommended to go through certificate authority as the
process is free with certificate authorities such as Let's Encrypt. However, if
using a certificate authority is not an option, then you can generate a
self-signed certificate and tell the client to consider your self-signed
certificate as trusted.

To create a self-signed certificate, generate a private and public key pair and
add the public key (in PEM format) to the CRT file specified in the Project
Settings.

Warning

The private key should **only** go to your server. The client must not have
access to it: otherwise, the security of the certificate will be
compromised.

Warning

When specifying a self-signed certificate as TLS bundle in the project
settings, normal domain name validation is enforced via the certificate
CN and alternative names. See
[TLSOptions](../../classes/class_tlsoptions.md#class-tlsoptions) to customize domain name validation.

For development purposes Godot can generate self-signed certificates via
[Crypto.generate\_self\_signed\_certificate](../../classes/class_crypto.md#class-crypto-method-generate-self-signed-certificate).

Alternatively, OpenSSL has some documentation about [generating keys](https://raw.githubusercontent.com/openssl/openssl/master/doc/HOWTO/keys.txt)
and [certificates](https://raw.githubusercontent.com/openssl/openssl/master/doc/HOWTO/certificates.txt).

[Previous](http_client_class.md "HTTP client class") [Next](websocket.md "Using WebSockets")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](http_client_class.md "HTTP client class") [Next](websocket.md "Using WebSockets")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).