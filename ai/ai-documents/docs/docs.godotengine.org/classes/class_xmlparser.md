---
title: XMLParser — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xmlparser.html
crawled_at: "2026-08-13T10:42:02+12:00"
content_hash: e51902e1a032d1f022543598c684cc23fc4038ea108f35184ced5d08214d76fe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XMLParser

* * *

# XMLParser

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides a low-level interface for creating parsers for XML files.

## Description

Provides a low-level interface for creating parsers for [XML](https://en.wikipedia.org/wiki/XML) files. This class can serve as base to make custom XML parsers.

To parse XML, you must open a file with the [open()](#class-xmlparser-method-open) method or a buffer with the [open\_buffer()](#class-xmlparser-method-open-buffer) method. Then, the [read()](#class-xmlparser-method-read) method must be called to parse the next nodes. Most of the methods take into consideration the currently parsed node.

Here is an example of using **XMLParser** to parse an SVG file (which is based on XML), printing each element and its attributes as a dictionary:

GDScriptC#

```
var parser = XMLParser.new()
parser.open("path/to/file.svg")
while parser.read() != ERR_FILE_EOF:
    if parser.get_node_type() == XMLParser.NODE_ELEMENT:
        var node_name = parser.get_node_name()
        var attributes_dict = {}
        for idx in range(parser.get_attribute_count()):
            attributes_dict[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
        print("The ", node_name, " element has the following attributes: ", attributes_dict)

```

```
var parser = new XmlParser();
parser.Open("path/to/file.svg");
while (parser.Read() != Error.FileEof)
{
    if (parser.GetNodeType() == XmlParser.NodeType.Element)
    {
        var nodeName = parser.GetNodeName();
        var attributesDict = new Godot.Collections.Dictionary();
        for (int idx = 0; idx < parser.GetAttributeCount(); idx++)
        {
            attributesDict[parser.GetAttributeName(idx)] = parser.GetAttributeValue(idx);
        }
        GD.Print($"The {nodeName} element has the following attributes: {attributesDict}");
    }
}

```

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_attribute\_count](#class-xmlparser-method-get-attribute-count)() const |
| [String](class_string.md#class-string) | [get\_attribute\_name](#class-xmlparser-method-get-attribute-name)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_attribute\_value](#class-xmlparser-method-get-attribute-value)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_current\_line](#class-xmlparser-method-get-current-line)() const |
| [String](class_string.md#class-string) | [get\_named\_attribute\_value](#class-xmlparser-method-get-named-attribute-value)(name: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_named\_attribute\_value\_safe](#class-xmlparser-method-get-named-attribute-value-safe)(name: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_node\_data](#class-xmlparser-method-get-node-data)() const |
| [String](class_string.md#class-string) | [get\_node\_name](#class-xmlparser-method-get-node-name)() const |
| [int](class_int.md#class-int) | [get\_node\_offset](#class-xmlparser-method-get-node-offset)() const |
| [NodeType](#enum-xmlparser-nodetype) | [get\_node\_type](#class-xmlparser-method-get-node-type)() |
| [bool](class_bool.md#class-bool) | [has\_attribute](#class-xmlparser-method-has-attribute)(name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-xmlparser-method-is-empty)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [open](#class-xmlparser-method-open)(file: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [open\_buffer](#class-xmlparser-method-open-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [read](#class-xmlparser-method-read)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [seek](#class-xmlparser-method-seek)(position: [int](class_int.md#class-int)) |
| void | [skip\_section](#class-xmlparser-method-skip-section)() |

* * *

## Enumerations

enum **NodeType**: [🔗](#enum-xmlparser-nodetype)

[NodeType](#enum-xmlparser-nodetype) **NODE\_NONE** = `0`

There's no node (no file or buffer opened).

[NodeType](#enum-xmlparser-nodetype) **NODE\_ELEMENT** = `1`

An element node type, also known as a tag, e.g. `<title>`.

[NodeType](#enum-xmlparser-nodetype) **NODE\_ELEMENT\_END** = `2`

An end of element node type, e.g. `</title>`.

[NodeType](#enum-xmlparser-nodetype) **NODE\_TEXT** = `3`

A text node type, i.e. text that is not inside an element. This includes whitespace.

[NodeType](#enum-xmlparser-nodetype) **NODE\_COMMENT** = `4`

A comment node type, e.g. `<!--A comment-->`.

[NodeType](#enum-xmlparser-nodetype) **NODE\_CDATA** = `5`

A node type for CDATA (Character Data) sections, e.g. `<![CDATA[CDATA section]]>`.

[NodeType](#enum-xmlparser-nodetype) **NODE\_UNKNOWN** = `6`

An unknown node type.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_attribute\_count**() const [🔗](#class-xmlparser-method-get-attribute-count)

Returns the number of attributes in the currently parsed element.

**Note:** If this method is used while the currently parsed node is not [NODE\_ELEMENT](#class-xmlparser-constant-node-element) or [NODE\_ELEMENT\_END](#class-xmlparser-constant-node-element-end), this count will not be updated and will still reflect the last element.

* * *

[String](class_string.md#class-string) **get\_attribute\_name**(idx: [int](class_int.md#class-int)) const [🔗](#class-xmlparser-method-get-attribute-name)

Returns the name of an attribute of the currently parsed element, specified by the `idx` index.

* * *

[String](class_string.md#class-string) **get\_attribute\_value**(idx: [int](class_int.md#class-int)) const [🔗](#class-xmlparser-method-get-attribute-value)

Returns the value of an attribute of the currently parsed element, specified by the `idx` index.

* * *

[int](class_int.md#class-int) **get\_current\_line**() const [🔗](#class-xmlparser-method-get-current-line)

Returns the current line in the parsed file, counting from 0.

* * *

[String](class_string.md#class-string) **get\_named\_attribute\_value**(name: [String](class_string.md#class-string)) const [🔗](#class-xmlparser-method-get-named-attribute-value)

Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will raise an error if the element has no such attribute.

* * *

[String](class_string.md#class-string) **get\_named\_attribute\_value\_safe**(name: [String](class_string.md#class-string)) const [🔗](#class-xmlparser-method-get-named-attribute-value-safe)

Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will return an empty string if the element has no such attribute.

* * *

[String](class_string.md#class-string) **get\_node\_data**() const [🔗](#class-xmlparser-method-get-node-data)

Returns the contents of a text node. This method will raise an error if the current parsed node is of any other type.

* * *

[String](class_string.md#class-string) **get\_node\_name**() const [🔗](#class-xmlparser-method-get-node-name)

Returns the name of a node. This method will raise an error if the currently parsed node is a text node.

**Note:** The content of a [NODE\_CDATA](#class-xmlparser-constant-node-cdata) node and the comment string of a [NODE\_COMMENT](#class-xmlparser-constant-node-comment) node are also considered names.

* * *

[int](class_int.md#class-int) **get\_node\_offset**() const [🔗](#class-xmlparser-method-get-node-offset)

Returns the byte offset of the currently parsed node since the beginning of the file or buffer. This is usually equivalent to the number of characters before the read position.

* * *

[NodeType](#enum-xmlparser-nodetype) **get\_node\_type**() [🔗](#class-xmlparser-method-get-node-type)

Returns the type of the current node. Compare with [NodeType](#enum-xmlparser-nodetype) constants.

* * *

[bool](class_bool.md#class-bool) **has\_attribute**(name: [String](class_string.md#class-string)) const [🔗](#class-xmlparser-method-has-attribute)

Returns `true` if the currently parsed element has an attribute with the `name`.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-xmlparser-method-is-empty)

Returns `true` if the currently parsed element is empty, e.g. `<element />`.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **open**(file: [String](class_string.md#class-string)) [🔗](#class-xmlparser-method-open)

Opens an XML `file` for parsing. This method returns an error code.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **open\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-xmlparser-method-open-buffer)

Opens an XML raw `buffer` for parsing. This method returns an error code.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **read**() [🔗](#class-xmlparser-method-read)

Parses the next node in the file. This method returns an error code.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **seek**(position: [int](class_int.md#class-int)) [🔗](#class-xmlparser-method-seek)

Moves the buffer cursor to a certain offset (since the beginning) and reads the next node there. This method returns an error code.

* * *

void **skip\_section**() [🔗](#class-xmlparser-method-skip-section)

Skips the current section. If the currently parsed node contains more inner nodes, they will be ignored and the cursor will go to the closing of the current element.

[Previous](class_workerthreadpool.md "WorkerThreadPool") [Next](class_xrbodytracker.md "XRBodyTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_workerthreadpool.md "WorkerThreadPool") [Next](class_xrbodytracker.md "XRBodyTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).