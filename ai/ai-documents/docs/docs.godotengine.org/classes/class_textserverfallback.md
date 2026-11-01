---
title: TextServerFallback — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textserverfallback.html
crawled_at: "2026-08-13T10:32:35+12:00"
content_hash: 4a8fb3a8dd41b6cae3092ce52dbaef6704a727c97355847bd2c4fd6214e6d922
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextServerFallback

* * *

# TextServerFallback

**Inherits:** [TextServerExtension](class_textserverextension.md#class-textserverextension) **<** [TextServer](class_textserver.md#class-textserver) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A fallback implementation of Godot's text server, without support for BiDi and complex text layout.

## Description

A fallback implementation of Godot's text server. This fallback is faster than [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced) for processing a lot of text, but it does not support BiDi and complex text layout.

**Note:** This text server is not part of official Godot binaries. If you want to use it, compile the engine with the option `module_text_server_fb_enabled=yes`. When building with **TextServerFallback**, consider also disabling [TextServerAdvanced](class_textserveradvanced.md#class-textserveradvanced) with `module_text_server_adv_enabled=no` to reduce binary size.

[Previous](class_textserverextension.md "TextServerExtension") [Next](class_textservermanager.md "TextServerManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textserverextension.md "TextServerExtension") [Next](class_textservermanager.md "TextServerManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).