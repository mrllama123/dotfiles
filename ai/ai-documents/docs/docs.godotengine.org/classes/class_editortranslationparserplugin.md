---
title: EditorTranslationParserPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editortranslationparserplugin.html
crawled_at: "2026-08-13T10:29:24+12:00"
content_hash: 0bbd9e107b0c93f2df6e23840b0593bbbbc0966efd6ef2d30bae88c36700afeb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorTranslationParserPlugin

* * *

# EditorTranslationParserPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Plugin for adding custom parsers to extract strings that are to be translated from custom files (.csv, .json etc.).

## Description

**EditorTranslationParserPlugin** is invoked when a file is being parsed to extract strings that require translation. To define the parsing and string extraction logic, override the [\_parse\_file()](#class-editortranslationparserplugin-private-method-parse-file) method in script.

The return value should be an [Array](class_array.md#class-array) of [PackedStringArray](class_packedstringarray.md#class-packedstringarray) s, one for each extracted translatable string. Each entry should contain `[msgid, msgctxt, msgid_plural, comment]`, where all except `msgid` are optional. Empty strings will be ignored.

The extracted strings will be written into a POT file selected by user under "POT Generation" in "Localization" tab in "Project Settings" menu.

Below shows an example of a custom parser that extracts strings from a CSV file to write into a POT.

GDScriptC#

```
@tool
extends EditorTranslationParserPlugin

func _parse_file(path):
    var ret: Array[PackedStringArray] = []
    var file = FileAccess.open(path, FileAccess.READ)
    var text = file.get_as_text()
    var split_strs = text.split(",", false)
    for s in split_strs:
        ret.append(PackedStringArray([s]))
        #print("Extracted string: " + s)

    return ret

func _get_recognized_extensions():
    return ["csv"]

```

```
using Godot;

[Tool]
public partial class CustomParser : EditorTranslationParserPlugin
{
    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        Godot.Collections.Array<string[]> ret;
        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        string text = file.GetAsText();
        string[] splitStrs = text.Split(",", allowEmpty: false);
        foreach (string s in splitStrs)
        {
            ret.Add([s]);
            //GD.Print($"Extracted string: {s}");
        }
        return ret;
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["csv"];
    }
}

```

To add a translatable string associated with a context, plural, or comment:

GDScriptC#

```
# This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", and comment "test 1 comment".
ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment"]))
# This will add a message with msgid "A test without context" and msgid_plural "plurals".
ret.append(PackedStringArray(["A test without context", "", "plurals"]))
# This will add a message with msgid "Only with context" and msgctxt "a friendly context".
ret.append(PackedStringArray(["Only with context", "a friendly context"]))

```

```
// This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", and comment "test 1 comment".
ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment"]);
// This will add a message with msgid "A test without context" and msgid_plural "plurals".
ret.Add(["A test without context", "", "plurals"]);
// This will add a message with msgid "Only with context" and msgctxt "a friendly context".
ret.Add(["Only with context", "a friendly context"]);

```

**Note:** If you override parsing logic for standard script types (GDScript, C#, etc.), it would be better to load the `path` argument using [ResourceLoader.load()](class_resourceloader.md#class-resourceloader-method-load). This is because built-in scripts are loaded as [Resource](class_resource.md#class-resource) type, not [FileAccess](class_fileaccess.md#class-fileaccess) type. For example:

GDScriptC#

```
func _parse_file(path):
    var res = ResourceLoader.load(path, "Script")
    var text = res.source_code
    # Parsing logic.

func _get_recognized_extensions():
    return ["gd"]

```

```
public override Godot.Collections.Array<string[]> _ParseFile(string path)
{
    var res = ResourceLoader.Load<Script>(path, "Script");
    string text = res.SourceCode;
    // Parsing logic.
}

public override string[] _GetRecognizedExtensions()
{
    return ["gd"];
}

```

To use **EditorTranslationParserPlugin**, register it using the [EditorPlugin.add\_translation\_parser\_plugin()](class_editorplugin.md#class-editorplugin-method-add-translation-parser-plugin) method first.

## Methods

|     |     |
| --- | --- |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_recognized\_extensions](#class-editortranslationparserplugin-private-method-get-recognized-extensions)() virtualconst |
| [Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\] | [\_parse\_file](#class-editortranslationparserplugin-private-method-parse-file)(path: [String](class_string.md#class-string)) virtual |

* * *

## Method Descriptions

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_recognized\_extensions**() virtualconst [🔗](#class-editortranslationparserplugin-private-method-get-recognized-extensions)

Gets the list of file extensions to associate with this parser, e.g. `["csv"]`.

* * *

[Array](class_array.md#class-array)\[ [PackedStringArray](class_packedstringarray.md#class-packedstringarray)\] **\_parse\_file**(path: [String](class_string.md#class-string)) virtual [🔗](#class-editortranslationparserplugin-private-method-parse-file)

Override this method to define a custom parsing logic to extract the translatable strings.

[Previous](class_editorselection.md "EditorSelection") [Next](class_editorundoredomanager.md "EditorUndoRedoManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorselection.md "EditorSelection") [Next](class_editorundoredomanager.md "EditorUndoRedoManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).