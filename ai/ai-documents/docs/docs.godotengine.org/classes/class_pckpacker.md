---
title: PCKPacker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_pckpacker.html
crawled_at: "2026-08-13T10:38:29+12:00"
content_hash: 84b1d2069491d61364001e62665cce227f1411593eaab77c181439cca553b41c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PCKPacker

* * *

# PCKPacker

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Creates packages that can be loaded into a running project.

## Description

The **PCKPacker** is used to create packages that can be loaded into a running project using [ProjectSettings.load\_resource\_pack()](class_projectsettings.md#class-projectsettings-method-load-resource-pack).

GDScriptC#

```
var packer = PCKPacker.new()
packer.pck_start("test.pck")
packer.add_file("res://text.txt", "text.txt")
packer.flush()

```

```
var packer = new PckPacker();
packer.PckStart("test.pck");
packer.AddFile("res://text.txt", "text.txt");
packer.Flush();

```

The above **PCKPacker** creates package `test.pck`, then adds a file named `text.txt` at the root of the package.

**Note:** PCK is Godot's own pack file format. To create ZIP archives that can be read by any program, use [ZIPPacker](class_zippacker.md#class-zippacker) instead.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_file](#class-pckpacker-method-add-file)(target\_path: [String](class_string.md#class-string), source\_path: [String](class_string.md#class-string), encrypt: [bool](class_bool.md#class-bool) = false) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_file\_removal](#class-pckpacker-method-add-file-removal)(target\_path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [flush](#class-pckpacker-method-flush)(verbose: [bool](class_bool.md#class-bool) = false) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [pck\_start](#class-pckpacker-method-pck-start)(pck\_path: [String](class_string.md#class-string), alignment: [int](class_int.md#class-int) = 32, key: [String](class_string.md#class-string) = "0000000000000000000000000000000000000000000000000000000000000000", encrypt\_directory: [bool](class_bool.md#class-bool) = false) |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **add\_file**(target\_path: [String](class_string.md#class-string), source\_path: [String](class_string.md#class-string), encrypt: [bool](class_bool.md#class-bool) = false) [🔗](#class-pckpacker-method-add-file)

Adds the `source_path` file to the current PCK package at the `target_path` internal path. The `res://` prefix for `target_path` is optional and stripped internally. File content is immediately written to the PCK.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **add\_file\_removal**(target\_path: [String](class_string.md#class-string)) [🔗](#class-pckpacker-method-add-file-removal)

Registers a file removal of the `target_path` internal path to the PCK. This is mainly used for patches. If the file at this path has been loaded from a previous PCK, it will be removed. The `res://` prefix for `target_path` is optional and stripped internally.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **flush**(verbose: [bool](class_bool.md#class-bool) = false) [🔗](#class-pckpacker-method-flush)

Writes the file directory and closes the PCK. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.

**Note:** **PCKPacker** will automatically flush when it's freed, which happens when it goes out of scope or when it gets assigned with `null`. In C# the reference must be disposed after use, either with the `using` statement or by calling the `Dispose` method directly.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **pck\_start**(pck\_path: [String](class_string.md#class-string), alignment: [int](class_int.md#class-int) = 32, key: [String](class_string.md#class-string) = "0000000000000000000000000000000000000000000000000000000000000000", encrypt\_directory: [bool](class_bool.md#class-bool) = false) [🔗](#class-pckpacker-method-pck-start)

Creates a new PCK file at the file path `pck_path`. The `.pck` file extension isn't added automatically, so it should be part of `pck_path` (even though it's not required).

[Previous](class_packetpeerudp.md "PacketPeerUDP") [Next](class_performance.md "Performance")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packetpeerudp.md "PacketPeerUDP") [Next](class_performance.md "Performance")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).