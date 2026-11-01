---
title: Crypto — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_crypto.html
crawled_at: "2026-08-13T10:42:14+12:00"
content_hash: 5d5c6cbfc5d65ed2d0b19375105ce6e4e60fabdcc928e8e2fcde58ab208cd505
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Crypto

* * *

# Crypto

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides access to advanced cryptographic functionalities.

## Description

The Crypto class provides access to advanced cryptographic functionalities.

Currently, this includes asymmetric key encryption/decryption, signing/verification, and generating cryptographically secure random bytes, RSA keys, HMAC digests, and self-signed [X509Certificate](class_x509certificate.md#class-x509certificate) s.

GDScriptC#

```
var crypto = Crypto.new()

# Generate new RSA key.
var key = crypto.generate_rsa(4096)

# Generate new self-signed certificate with the given key.
var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")

# Save key and certificate in the user folder.
key.save("user://generated.key")
cert.save("user://generated.crt")

# Encryption
var data = "Some data"
var encrypted = crypto.encrypt(key, data.to_utf8_buffer())

# Decryption
var decrypted = crypto.decrypt(key, encrypted)

# Signing
var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)

# Verifying
var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)

# Checks
assert(verified)
assert(data.to_utf8_buffer() == decrypted)

```

```
using Godot;
using System.Diagnostics;

Crypto crypto = new Crypto();

// Generate new RSA key.
CryptoKey key = crypto.GenerateRsa(4096);

// Generate new self-signed certificate with the given key.
X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

// Save key and certificate in the user folder.
key.Save("user://generated.key");
cert.Save("user://generated.crt");

// Encryption
string data = "Some data";
byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer());

// Decryption
byte[] decrypted = crypto.Decrypt(key, encrypted);

// Signing
byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key);

// Verifying
bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key);

// Checks
Debug.Assert(verified);
Debug.Assert(data.ToUtf8Buffer() == decrypted);

```

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [constant\_time\_compare](#class-crypto-method-constant-time-compare)(trusted: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), received: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [decrypt](#class-crypto-method-decrypt)(key: [CryptoKey](class_cryptokey.md#class-cryptokey), ciphertext: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [encrypt](#class-crypto-method-encrypt)(key: [CryptoKey](class_cryptokey.md#class-cryptokey), plaintext: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [generate\_random\_bytes](#class-crypto-method-generate-random-bytes)(size: [int](class_int.md#class-int)) |
| [CryptoKey](class_cryptokey.md#class-cryptokey) | [generate\_rsa](#class-crypto-method-generate-rsa)(size: [int](class_int.md#class-int)) |
| [X509Certificate](class_x509certificate.md#class-x509certificate) | [generate\_self\_signed\_certificate](#class-crypto-method-generate-self-signed-certificate)(key: [CryptoKey](class_cryptokey.md#class-cryptokey), issuer\_name: [String](class_string.md#class-string) = "CN=myserver,O=myorganisation,C=IT", not\_before: [String](class_string.md#class-string) = "20140101000000", not\_after: [String](class_string.md#class-string) = "20340101000000") |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [hmac\_digest](#class-crypto-method-hmac-digest)(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), msg: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [sign](#class-crypto-method-sign)(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), hash: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), key: [CryptoKey](class_cryptokey.md#class-cryptokey)) |
| [bool](class_bool.md#class-bool) | [verify](#class-crypto-method-verify)(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), hash: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), signature: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), key: [CryptoKey](class_cryptokey.md#class-cryptokey)) |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **constant\_time\_compare**(trusted: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), received: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-crypto-method-constant-time-compare)

Compares two [PackedByteArray](class_packedbytearray.md#class-packedbytearray) s for equality without leaking timing information in order to prevent timing attacks.

See [this blog post](https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy) for more information.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **decrypt**(key: [CryptoKey](class_cryptokey.md#class-cryptokey), ciphertext: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-crypto-method-decrypt)

Decrypt the given `ciphertext` with the provided private `key`.

**Note:** The maximum size of accepted ciphertext is limited by the key size.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **encrypt**(key: [CryptoKey](class_cryptokey.md#class-cryptokey), plaintext: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-crypto-method-encrypt)

Encrypt the given `plaintext` with the provided public `key`.

**Note:** The maximum size of accepted plaintext is limited by the key size.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **generate\_random\_bytes**(size: [int](class_int.md#class-int)) [🔗](#class-crypto-method-generate-random-bytes)

Generates a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) of cryptographically secure random bytes with given `size`.

* * *

[CryptoKey](class_cryptokey.md#class-cryptokey) **generate\_rsa**(size: [int](class_int.md#class-int)) [🔗](#class-crypto-method-generate-rsa)

Generates an RSA [CryptoKey](class_cryptokey.md#class-cryptokey) that can be used for creating self-signed certificates and passed to [StreamPeerTLS.accept\_stream()](class_streampeertls.md#class-streampeertls-method-accept-stream).

* * *

[X509Certificate](class_x509certificate.md#class-x509certificate) **generate\_self\_signed\_certificate**(key: [CryptoKey](class_cryptokey.md#class-cryptokey), issuer\_name: [String](class_string.md#class-string) = "CN=myserver,O=myorganisation,C=IT", not\_before: [String](class_string.md#class-string) = "20140101000000", not\_after: [String](class_string.md#class-string) = "20340101000000") [🔗](#class-crypto-method-generate-self-signed-certificate)

Generates a self-signed [X509Certificate](class_x509certificate.md#class-x509certificate) from the given [CryptoKey](class_cryptokey.md#class-cryptokey) and `issuer_name`. The certificate validity will be defined by `not_before` and `not_after` (first valid date and last valid date). The `issuer_name` must contain at least "CN=" (common name, i.e. the domain name), "O=" (organization, i.e. your company name), "C=" (country, i.e. 2 lettered ISO-3166 code of the country the organization is based in).

A small example to generate an RSA key and an X509 self-signed certificate.

GDScriptC#

```
var crypto = Crypto.new()
# Generate 4096 bits RSA key.
var key = crypto.generate_rsa(4096)
# Generate self-signed certificate using the given key.
var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")

```

```
var crypto = new Crypto();
// Generate 4096 bits RSA key.
CryptoKey key = crypto.GenerateRsa(4096);
// Generate self-signed certificate using the given key.
X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

```

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **hmac\_digest**(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), msg: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-crypto-method-hmac-digest)

Generates an [HMAC](https://en.wikipedia.org/wiki/HMAC) digest of `msg` using `key`. The `hash_type` parameter is the hashing algorithm that is used for the inner and outer hashes.

Currently, only [HashingContext.HASH\_SHA256](class_hashingcontext.md#class-hashingcontext-constant-hash-sha256) and [HashingContext.HASH\_SHA1](class_hashingcontext.md#class-hashingcontext-constant-hash-sha1) are supported.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **sign**(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), hash: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), key: [CryptoKey](class_cryptokey.md#class-cryptokey)) [🔗](#class-crypto-method-sign)

Sign a given `hash` of type `hash_type` with the provided private `key`.

* * *

[bool](class_bool.md#class-bool) **verify**(hash\_type: [HashType](class_hashingcontext.md#enum-hashingcontext-hashtype), hash: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), signature: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), key: [CryptoKey](class_cryptokey.md#class-cryptokey)) [🔗](#class-crypto-method-verify)

Verify that a given `signature` for `hash` of type `hash_type` against the provided public `key`.

[Previous](class_configfile.md "ConfigFile") [Next](class_diraccess.md "DirAccess")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_configfile.md "ConfigFile") [Next](class_diraccess.md "DirAccess")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).