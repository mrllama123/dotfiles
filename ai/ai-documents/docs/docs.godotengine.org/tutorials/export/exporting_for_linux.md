---
title: Exporting for Linux — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/export/exporting_for_linux.html
crawled_at: "2026-08-13T10:25:43+12:00"
content_hash: c322d3c4973a9b3667813e84cc7ce9c1030bc73d5d46bd29153455fd2406b416
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Export](index.md)
  - Exporting for Linux
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/export/exporting_for_linux.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Exporting for Linux

See also

This page describes how to export a Godot project to Linux.
If you're looking to compile editor or export template binaries from source instead,
read [Compiling for Linux, \*BSD](../../engine_details/development/compiling/compiling_for_linuxbsd.md#doc-compiling-for-linuxbsd).

The simplest way to distribute a game for PC is to copy the executable
( `godot`), compress the folder and send it to someone else. However, this is
often not desired.

Godot offers a more elegant approach for PC distribution when using the export
system. When exporting for Linux, the exporter takes all the project files and
creates a `data.pck` file. This file is bundled with a specially optimized
binary that is smaller, faster and does not contain the editor and debugger.

## Environment variables

You can use the following environment variables to set export options outside of
the editor. During the export process, these override the values that you set in
the export menu.

| Export option | Environment variable |
| --- | --- |
| Encryption / Encryption Key | `GODOT_SCRIPT_ENCRYPTION_KEY` |

Linux export environment variables

## Export options

You can find a full list of export options available in the
[EditorExportPlatformLinuxBSD](../../classes/class_editorexportplatformlinuxbsd.md#class-editorexportplatformlinuxbsd) class reference.

[Previous](exporting_for_windows.md "Exporting for Windows") [Next](exporting_for_macos.md "Exporting for macOS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](exporting_for_windows.md "Exporting for Windows") [Next](exporting_for_macos.md "Exporting for macOS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).