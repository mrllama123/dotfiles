---
title: ImageFormatLoaderExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_imageformatloaderextension.html
crawled_at: "2026-08-13T10:36:25+12:00"
content_hash: 0e1ee442076aae826de56dd216772ef8f0a328ab7d7105070da12fe3d6575943
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImageFormatLoaderExtension

* * *

# ImageFormatLoaderExtension

**Inherits:** [ImageFormatLoader](class_imageformatloader.md#class-imageformatloader) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for creating [ImageFormatLoader](class_imageformatloader.md#class-imageformatloader) extensions (adding support for extra image formats).

## Description

The engine supports multiple image formats out of the box (PNG, SVG, JPEG, WebP to name a few), but you can choose to implement support for additional image formats by extending this class.

Be sure to respect the documented return types and values. You should create an instance of it, and call [add\_format\_loader()](#class-imageformatloaderextension-method-add-format-loader) to register that loader during the initialization phase.

## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_recognized\_extensions](#class-imageformatloaderextension-private-method-get-recognized-extensions)() virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_load\_image](#class-imageformatloaderextension-private-method-load-image)(image: [Image](class_image.md#class-image), fileaccess: [FileAccess](class_fileaccess.md#class-fileaccess), flags: BitField\[ [LoaderFlags](class_imageformatloader.md#enum-imageformatloader-loaderflags)\], scale: [float](class_float.md#class-float)) virtual |
| void | [add\_format\_loader](#class-imageformatloaderextension-method-add-format-loader)() |
| void | [remove\_format\_loader](#class-imageformatloaderextension-method-remove-format-loader)() |

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_recognized\_extensions**() virtualconst [🔗](#class-imageformatloaderextension-private-method-get-recognized-extensions)

Returns the list of file extensions for this image format. Files with the given extensions will be treated as image file and loaded using this class.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_load\_image**(image: [Image](class_image.md#class-image), fileaccess: [FileAccess](class_fileaccess.md#class-fileaccess), flags: BitField\[ [LoaderFlags](class_imageformatloader.md#enum-imageformatloader-loaderflags)\], scale: [float](class_float.md#class-float)) virtual [🔗](#class-imageformatloaderextension-private-method-load-image)

Loads the content of `fileaccess` into the provided `image`.

* * *

void **add\_format\_loader**() [🔗](#class-imageformatloaderextension-method-add-format-loader)

Add this format loader to the engine, allowing it to recognize the file extensions returned by [\_get\_recognized\_extensions()](#class-imageformatloaderextension-private-method-get-recognized-extensions).

* * *

void **remove\_format\_loader**() [🔗](#class-imageformatloaderextension-method-remove-format-loader)

Remove this format loader from the engine.

[Previous](class_imageformatloader.md "ImageFormatLoader") [Next](class_input.md "Input")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_imageformatloader.md "ImageFormatLoader") [Next](class_input.md "Input")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).