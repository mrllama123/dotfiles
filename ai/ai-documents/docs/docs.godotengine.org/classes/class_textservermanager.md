---
title: TextServerManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textservermanager.html
crawled_at: "2026-08-13T10:39:11+12:00"
content_hash: 865e14594da4e85d74de1404d6e8a72485c4882ec2ae87a444e07a93be3d38ef
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextServerManager

* * *

# TextServerManager

**Inherits:** [Object](class_object.md#class-object)

A singleton for managing [TextServer](class_textserver.md#class-textserver) implementations.

## Description

**TextServerManager** is the API backend for loading, enumerating, and switching [TextServer](class_textserver.md#class-textserver) s.

**Note:** Switching text server at runtime is possible, but will invalidate all fonts and text buffers. Make sure to unload all controls, fonts, and themes before doing so.

## Methods

|     |     |
| --- | --- |
| void | [add\_interface](#class-textservermanager-method-add-interface)(interface: [TextServer](class_textserver.md#class-textserver)) |
| [TextServer](class_textserver.md#class-textserver) | [find\_interface](#class-textservermanager-method-find-interface)(name: [String](class_string.md#class-string)) const |
| [TextServer](class_textserver.md#class-textserver) | [get\_interface](#class-textservermanager-method-get-interface)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_interface\_count](#class-textservermanager-method-get-interface-count)() const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_interfaces](#class-textservermanager-method-get-interfaces)() const |
| [TextServer](class_textserver.md#class-textserver) | [get\_primary\_interface](#class-textservermanager-method-get-primary-interface)() const |
| void | [remove\_interface](#class-textservermanager-method-remove-interface)(interface: [TextServer](class_textserver.md#class-textserver)) |
| void | [set\_primary\_interface](#class-textservermanager-method-set-primary-interface)(index: [TextServer](class_textserver.md#class-textserver)) |

* * *

## Signals

**interface\_added**(interface\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-textservermanager-signal-interface-added)

Emitted when a new interface has been added.

* * *

**interface\_removed**(interface\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-textservermanager-signal-interface-removed)

Emitted when an interface is removed.

* * *

## Method Descriptions

void **add\_interface**(interface: [TextServer](class_textserver.md#class-textserver)) [🔗](#class-textservermanager-method-add-interface)

Registers a [TextServer](class_textserver.md#class-textserver) interface.

* * *

[TextServer](class_textserver.md#class-textserver) **find\_interface**(name: [String](class_string.md#class-string)) const [🔗](#class-textservermanager-method-find-interface)

Finds an interface by its `name`.

* * *

[TextServer](class_textserver.md#class-textserver) **get\_interface**(idx: [int](class_int.md#class-int)) const [🔗](#class-textservermanager-method-get-interface)

Returns the interface registered at a given index.

* * *

[int](class_int.md#class-int) **get\_interface\_count**() const [🔗](#class-textservermanager-method-get-interface-count)

Returns the number of interfaces currently registered.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_interfaces**() const [🔗](#class-textservermanager-method-get-interfaces)

Returns a list of available interfaces, with the index and name of each interface.

* * *

[TextServer](class_textserver.md#class-textserver) **get\_primary\_interface**() const [🔗](#class-textservermanager-method-get-primary-interface)

Returns the primary [TextServer](class_textserver.md#class-textserver) interface currently in use.

* * *

void **remove\_interface**(interface: [TextServer](class_textserver.md#class-textserver)) [🔗](#class-textservermanager-method-remove-interface)

Removes an interface. All fonts and shaped text caches should be freed before removing an interface.

* * *

void **set\_primary\_interface**(index: [TextServer](class_textserver.md#class-textserver)) [🔗](#class-textservermanager-method-set-primary-interface)

Sets the primary [TextServer](class_textserver.md#class-textserver) interface.

[Previous](class_textserverfallback.md "TextServerFallback") [Next](class_themedb.md "ThemeDB")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textserverfallback.md "TextServerFallback") [Next](class_themedb.md "ThemeDB")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).