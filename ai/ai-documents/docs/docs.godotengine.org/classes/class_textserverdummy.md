---
title: TextServerDummy — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textserverdummy.html
crawled_at: "2026-08-13T10:24:52+12:00"
content_hash: 62460edbcd6f31b7843777ce3cc5d1befa91ff9d79c54485f5c67f51aee001a5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextServerDummy

* * *

# TextServerDummy

**Inherits:** [TextServerExtension](class_textserverextension.md#class-textserverextension) **<** [TextServer](class_textserver.md#class-textserver) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A dummy text server that can't render text or manage fonts.

## Description

A dummy [TextServer](class_textserver.md#class-textserver) interface that doesn't do anything. Useful for freeing up memory when rendering text is not needed, as text servers are resource-intensive. It can also be used for performance comparisons in complex GUIs to check the impact of text rendering.

A dummy text server is always available at the start of a project. Here's how to access it:

```
var dummy_text_server = TextServerManager.find_interface("Dummy")
if dummy_text_server != null:
    TextServerManager.set_primary_interface(dummy_text_server)
    # If the other text servers are unneeded, they can be removed:
    for i in TextServerManager.get_interface_count():
        var text_server = TextServerManager.get_interface(i)
        if text_server != dummy_text_server:
            TextServerManager.remove_interface(text_server)

```

The command line argument `--text-driver Dummy` (case-sensitive) can be used to force the "Dummy" [TextServer](class_textserver.md#class-textserver) on any project.

[Previous](class_textserveradvanced.md "TextServerAdvanced") [Next](class_textserverextension.md "TextServerExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textserveradvanced.md "TextServerAdvanced") [Next](class_textserverextension.md "TextServerExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).