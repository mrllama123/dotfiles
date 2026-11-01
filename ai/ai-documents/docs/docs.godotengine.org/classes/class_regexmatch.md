---
title: RegExMatch — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_regexmatch.html
crawled_at: "2026-08-13T10:23:50+12:00"
content_hash: 1092a23d2c4ccffc413f6efa318c24dd699ef2befe7f6cc10d94546ebd8e5b65
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RegExMatch

* * *

# RegExMatch

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Contains the results of a [RegEx](class_regex.md#class-regex) search.

## Description

Contains the results of a single [RegEx](class_regex.md#class-regex) match returned by [RegEx.search()](class_regex.md#class-regex-method-search) and [RegEx.search\_all()](class_regex.md#class-regex-method-search-all). It can be used to find the position and range of the match and its capturing groups, and it can extract its substring for you.

## Properties

|     |     |     |
| --- | --- | --- |
| [Dictionary](class_dictionary.md#class-dictionary) | [names](#class-regexmatch-property-names) | `{}` |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [strings](#class-regexmatch-property-strings) | `PackedStringArray()` |
| [String](class_string.md#class-string) | [subject](#class-regexmatch-property-subject) | `""` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_end](#class-regexmatch-method-get-end)(name: [Variant](class_variant.md#class-variant) = 0) const |
| [int](class_int.md#class-int) | [get\_group\_count](#class-regexmatch-method-get-group-count)() const |
| [int](class_int.md#class-int) | [get\_start](#class-regexmatch-method-get-start)(name: [Variant](class_variant.md#class-variant) = 0) const |
| [String](class_string.md#class-string) | [get\_string](#class-regexmatch-method-get-string)(name: [Variant](class_variant.md#class-variant) = 0) const |

* * *

## Property Descriptions

[Dictionary](class_dictionary.md#class-dictionary) **names** = `{}` [🔗](#class-regexmatch-property-names)

- [Dictionary](class_dictionary.md#class-dictionary) **get\_names**()


A dictionary of named groups and its corresponding group number. Only groups that were matched are included. If multiple groups have the same name, that name would refer to the first matching one.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **strings** = `PackedStringArray()` [🔗](#class-regexmatch-property-strings)

- [PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_strings**()


An [Array](class_array.md#class-array) of the match and its capturing groups.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[String](class_string.md#class-string) **subject** = `""` [🔗](#class-regexmatch-property-subject)

- [String](class_string.md#class-string) **get\_subject**()


The source string used with the search pattern to find this matching result.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_end**(name: [Variant](class_variant.md#class-variant) = 0) const [🔗](#class-regexmatch-method-get-end)

Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.

Returns -1 if the group did not match or doesn't exist.

* * *

[int](class_int.md#class-int) **get\_group\_count**() const [🔗](#class-regexmatch-method-get-group-count)

Returns the number of capturing groups.

* * *

[int](class_int.md#class-int) **get\_start**(name: [Variant](class_variant.md#class-variant) = 0) const [🔗](#class-regexmatch-method-get-start)

Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.

Returns -1 if the group did not match or doesn't exist.

* * *

[String](class_string.md#class-string) **get\_string**(name: [Variant](class_variant.md#class-variant) = 0) const [🔗](#class-regexmatch-method-get-string)

Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.

Returns an empty string if the group did not match or doesn't exist.

[Previous](class_regex.md "RegEx") [Next](class_renderdata.md "RenderData")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_regex.md "RegEx") [Next](class_renderdata.md "RenderData")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).