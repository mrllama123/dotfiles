---
title: RegEx — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_regex.html
crawled_at: "2026-08-13T10:33:41+12:00"
content_hash: 7e9dca02242272d31fb7feec5b516f6dcd2e165196ce20a04f27c0da99899060
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RegEx

* * *

# RegEx

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class for searching text for patterns using regular expressions.

## Description

A regular expression (or regex) is a compact language that can be used to recognize strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For example, a regex of `ab[0-9]` would find any string that is `ab` followed by any number from `0` to `9`. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.

To begin, the RegEx object needs to be compiled with the search pattern using [compile()](#class-regex-method-compile) before it can be used.

```
var regex = RegEx.new()
regex.compile("\\w-(\\d+)")

```

The search pattern must be escaped first for GDScript before it is escaped for the expression. For example, `compile("\\d+")` would be read by RegEx as `\d+`. Similarly, `compile("\"(?:\\\\.|[^\"])*\"")` would be read as `"(?:\\.|[^"])*"`. In GDScript, you can also use raw string literals (r-strings). For example, `compile(r'"(?:\\.|[^"])*"')` would be read the same.

Using [search()](#class-regex-method-search), you can find the pattern within the given text. If a pattern is found, [RegExMatch](class_regexmatch.md#class-regexmatch) is returned and you can retrieve details of the results using methods such as [RegExMatch.get\_string()](class_regexmatch.md#class-regexmatch-method-get-string) and [RegExMatch.get\_start()](class_regexmatch.md#class-regexmatch-method-get-start).

```
var regex = RegEx.new()
regex.compile("\\w-(\\d+)")
var result = regex.search("abc n-0123")
if result:
    print(result.get_string()) # Prints "n-0123"

```

The results of capturing groups `()` can be retrieved by passing the group number to the various methods in [RegExMatch](class_regexmatch.md#class-regexmatch). Group 0 is the default and will always refer to the entire pattern. In the above example, calling `result.get_string(1)` would give you `0123`.

This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.

```
var regex = RegEx.new()
regex.compile("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
var result = regex.search("the number is x2f")
if result:
    print(result.get_string("digit")) # Prints "2f"

```

If you need to process multiple results, [search\_all()](#class-regex-method-search-all) generates a list of all non-overlapping results. This can be combined with a `for` loop for convenience.

```
# Prints "01 03 0 3f 42"
for result in regex.search_all("d01, d03, d0c, x3f and x42"):
    print(result.get_string("digit"))

```

**Example:** Split a string using a RegEx:

```
var regex = RegEx.new()
regex.compile("\\S+") # Negated whitespace character class.
var results = []
for result in regex.search_all("One  Two \n\tThree"):
    results.push_back(result.get_string())
print(results) # Prints ["One", "Two", "Three"]

```

**Note:** Godot's regex implementation is based on the [PCRE2](https://www.pcre.org/) library. You can view the full pattern reference [here](https://www.pcre.org/current/doc/html/pcre2pattern.html).

**Tip:** You can use [Regexr](https://regexr.com/) to test regular expressions online.

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-regex-method-clear)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [compile](#class-regex-method-compile)(pattern: [String](class_string.md#class-string), show\_error: [bool](class_bool.md#class-bool) = true) |
| [RegEx](#class-regex) | [create\_from\_string](#class-regex-method-create-from-string)(pattern: [String](class_string.md#class-string), show\_error: [bool](class_bool.md#class-bool) = true) static |
| [int](class_int.md#class-int) | [get\_group\_count](#class-regex-method-get-group-count)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_names](#class-regex-method-get-names)() const |
| [String](class_string.md#class-string) | [get\_pattern](#class-regex-method-get-pattern)() const |
| [bool](class_bool.md#class-bool) | [is\_valid](#class-regex-method-is-valid)() const |
| [RegExMatch](class_regexmatch.md#class-regexmatch) | [search](#class-regex-method-search)(subject: [String](class_string.md#class-string), offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const |
| [Array](class_array.md#class-array)\[ [RegExMatch](class_regexmatch.md#class-regexmatch)\] | [search\_all](#class-regex-method-search-all)(subject: [String](class_string.md#class-string), offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const |
| [String](class_string.md#class-string) | [sub](#class-regex-method-sub)(subject: [String](class_string.md#class-string), replacement: [String](class_string.md#class-string), all: [bool](class_bool.md#class-bool) = false, offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const |

* * *

## Method Descriptions

void **clear**() [🔗](#class-regex-method-clear)

This method resets the state of the object, as if it was freshly created. Namely, it unassigns the regular expression of this object.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **compile**(pattern: [String](class_string.md#class-string), show\_error: [bool](class_bool.md#class-bool) = true) [🔗](#class-regex-method-compile)

Compiles and assign the search pattern to use. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the compilation is successful. If compilation fails, returns [@GlobalScope.FAILED](class_@globalscope.md#class-globalscope-constant-failed) and when `show_error` is `true`, details are printed to standard output.

* * *

[RegEx](#class-regex) **create\_from\_string**(pattern: [String](class_string.md#class-string), show\_error: [bool](class_bool.md#class-bool) = true) static [🔗](#class-regex-method-create-from-string)

Creates and compiles a new **RegEx** object. See also [compile()](#class-regex-method-compile).

* * *

[int](class_int.md#class-int) **get\_group\_count**() const [🔗](#class-regex-method-get-group-count)

Returns the number of capturing groups in compiled pattern.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_names**() const [🔗](#class-regex-method-get-names)

Returns an array of names of named capturing groups in the compiled pattern. They are ordered by appearance.

* * *

[String](class_string.md#class-string) **get\_pattern**() const [🔗](#class-regex-method-get-pattern)

Returns the original search pattern that was compiled.

* * *

[bool](class_bool.md#class-bool) **is\_valid**() const [🔗](#class-regex-method-is-valid)

Returns whether this object has a valid search pattern assigned.

* * *

[RegExMatch](class_regexmatch.md#class-regexmatch) **search**(subject: [String](class_string.md#class-string), offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const [🔗](#class-regex-method-search)

Searches the text for the compiled pattern. Returns a [RegExMatch](class_regexmatch.md#class-regexmatch) container of the first matching result if found, otherwise `null`.

The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.

* * *

[Array](class_array.md#class-array)\[ [RegExMatch](class_regexmatch.md#class-regexmatch)\] **search\_all**(subject: [String](class_string.md#class-string), offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const [🔗](#class-regex-method-search-all)

Searches the text for the compiled pattern. Returns an array of [RegExMatch](class_regexmatch.md#class-regexmatch) containers for each non-overlapping result. If no results were found, an empty array is returned instead.

The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.

* * *

[String](class_string.md#class-string) **sub**(subject: [String](class_string.md#class-string), replacement: [String](class_string.md#class-string), all: [bool](class_bool.md#class-bool) = false, offset: [int](class_int.md#class-int) = 0, end: [int](class_int.md#class-int) = -1) const [🔗](#class-regex-method-sub)

Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `$1` and `$name` are expanded and resolved. By default, only the first instance is replaced, but it can be changed for all instances (global replacement).

The region to search within can be specified with `offset` and `end`. This is useful when searching for another match in the same `subject` by calling this method again after a previous success. Note that setting these parameters differs from passing over a shortened string. For example, the start anchor `^` is not affected by `offset`, and the character before `offset` will be checked for the word boundary `\b`.

[Previous](class_refcounted.md "RefCounted") [Next](class_regexmatch.md "RegExMatch")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_refcounted.md "RefCounted") [Next](class_regexmatch.md "RegExMatch")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).