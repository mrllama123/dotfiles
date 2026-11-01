---
title: EditorSyntaxHighlighter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorsyntaxhighlighter.html
crawled_at: "2026-08-13T10:39:48+12:00"
content_hash: 8eef9a06bc3da6591e7b6fc95bad5ac3d81c6c8d5681a80bf39dc12a26e30aa1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSyntaxHighlighter

* * *

# EditorSyntaxHighlighter

**Inherits:** [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [GDScriptSyntaxHighlighter](class_gdscriptsyntaxhighlighter.md#class-gdscriptsyntaxhighlighter)

Base class for [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) used by the [ScriptEditor](class_scripteditor.md#class-scripteditor).

## Description

Base class that all [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) s used by the [ScriptEditor](class_scripteditor.md#class-scripteditor) extend from.

Add a syntax highlighter to an individual script by calling [ScriptEditorBase.add\_syntax\_highlighter()](class_scripteditorbase.md#class-scripteditorbase-method-add-syntax-highlighter). To apply to all scripts on open, call [ScriptEditor.register\_syntax\_highlighter()](class_scripteditor.md#class-scripteditor-method-register-syntax-highlighter).

## Methods

|     |     |
| --- | --- |
| [EditorSyntaxHighlighter](#class-editorsyntaxhighlighter) | [\_create](#class-editorsyntaxhighlighter-private-method-create)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-editorsyntaxhighlighter-private-method-get-name)() virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_supported\_languages](#class-editorsyntaxhighlighter-private-method-get-supported-languages)() virtualconst |

* * *

## Method Descriptions

[EditorSyntaxHighlighter](#class-editorsyntaxhighlighter) **\_create**() virtualconst [🔗](#class-editorsyntaxhighlighter-private-method-create)

Virtual method which creates a new instance of the syntax highlighter.

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualconst [🔗](#class-editorsyntaxhighlighter-private-method-get-name)

Virtual method which can be overridden to return the syntax highlighter name.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_supported\_languages**() virtualconst [🔗](#class-editorsyntaxhighlighter-private-method-get-supported-languages)

Virtual method which can be overridden to return the supported language names.

[Previous](class_editorsettings.md "EditorSettings") [Next](class_environment.md "Environment")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorsettings.md "EditorSettings") [Next](class_environment.md "Environment")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).