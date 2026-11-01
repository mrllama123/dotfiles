---
title: GDScriptSyntaxHighlighter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gdscriptsyntaxhighlighter.html
crawled_at: "2026-08-13T10:25:29+12:00"
content_hash: 651ec848c4334b7a0cacce0b2061c8c456b380f7ecd41e731c68b00fcfb19ffe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GDScriptSyntaxHighlighter

* * *

# GDScriptSyntaxHighlighter

**Inherits:** [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter) **<** [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A GDScript syntax highlighter that can be used with [TextEdit](class_textedit.md#class-textedit) and [CodeEdit](class_codeedit.md#class-codeedit) nodes.

## Description

**Note:** This class can only be used for editor plugins because it relies on editor settings.

GDScriptC#

```
var code_preview = TextEdit.new()
var highlighter = GDScriptSyntaxHighlighter.new()
code_preview.syntax_highlighter = highlighter

```

```
var codePreview = new TextEdit();
var highlighter = new GDScriptSyntaxHighlighter();
codePreview.SyntaxHighlighter = highlighter;

```

[Previous](class_gdscript.md "GDScript") [Next](class_gltfaccessor.md "GLTFAccessor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gdscript.md "GDScript") [Next](class_gltfaccessor.md "GLTFAccessor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).