---
title: Compiling with PCK encryption key — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/compiling/compiling_with_script_encryption_key.html
crawled_at: "2026-08-13T10:40:38+12:00"
content_hash: 8723cbd6a0c7373d2e943f9fc1b808e1adb6b15d97b50180166d302d1c26b801
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Building from source](index.md)
  - Compiling with PCK encryption key
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/compiling/compiling_with_script_encryption_key.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Compiling with PCK encryption key

The export dialog gives you the option to encrypt your PCK file with a 256-bit
AES key when releasing your project. This will make sure your scenes, scripts
and other resources are not stored in plain text and can not easily be ripped
by some script kiddie.

Of course, the key needs to be stored in the binary, but if it's compiled,
optimized and without symbols, it would take some effort to find it.

For this to work, you need to build the export templates from source,
with that same key.

Warning

This will **not** work if you use official, precompiled export templates.
It is absolutely **required** to compile your own export templates to use
PCK encryption.

## Step by step

1. Generate a 256-bit AES key in hexadecimal format. You can use the aes-256-cbc variant from
[this service](https://asecuritysite.com/encryption/keygen).

Alternatively, you can generate it yourself using
[OpenSSL](https://www.openssl.org/) command-line tools:





```
openssl rand -hex 32 > godot.gdkey

```





The output in `godot.gdkey` should be similar to:





```
# NOTE: Do not use the key below! Generate your own key instead.
aeb1bc56aaf580cc31784e9c41551e9ed976ecba10d315db591e749f3f64890f

```





You can generate the key without redirecting the output to a file, but
that way you can minimize the risk of exposing the key.

2. Set this key as environment variable in the console that you will use to
compile Godot, like this:



Linux/macOSWindows (cmd)Windows (PowerShell)









```
export SCRIPT_AES256_ENCRYPTION_KEY="your_generated_key"

```















```
set SCRIPT_AES256_ENCRYPTION_KEY=your_generated_key

```















```
$env:SCRIPT_AES256_ENCRYPTION_KEY="your_generated_key"

```

3. Compile Godot export templates and set them as custom export templates
in the export preset options.

4. Set the encryption key in the **Encryption** tab of the export preset:
![../../../_images/encryption_key.png](../../../_images/encryption_key.png)
5. Add filters for the files/folders to encrypt. **By default**, include filters
are empty and **nothing will be encrypted**.

6. Export the project. The project should run with the files encrypted now.


## Troubleshooting

If you get an error like below, it means the key wasn't properly included in
your Godot build. Godot is encrypting PCK file during export, but can't read
it at runtime.

```
ERROR: open_and_parse: Condition "String::md5(md5.digest) != String::md5(md5d)" is true. Returning: ERR_FILE_CORRUPT
   At: core/io/file_access_encrypted.cpp:103

```

[Previous](compiling_with_dotnet.md "Compiling with .NET") [Next](optimizing_for_size.md "Optimizing a build for size")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](compiling_with_dotnet.md "Compiling with .NET") [Next](optimizing_for_size.md "Optimizing a build for size")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).