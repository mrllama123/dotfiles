---
title: CodeHighlighter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_codehighlighter.html
crawled_at: "2026-08-13T10:33:18+12:00"
content_hash: eafbc4e218105f1057d079b5033ee443682fd37c1d121128c4e35518c202a6b9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CodeHighlighter

* * *

# CodeHighlighter

**Inherits:** [SyntaxHighlighter](class_syntaxhighlighter.md#class-syntaxhighlighter) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A syntax highlighter intended for code.

## Description

By adjusting various properties of this resource, you can change the colors of strings, comments, numbers, and other text patterns inside a [TextEdit](class_textedit.md#class-textedit) control.

## Properties

|     |     |     |
| --- | --- | --- |
| [Dictionary](class_dictionary.md#class-dictionary) | [color\_regions](#class-codehighlighter-property-color-regions) | `{}` |
| [Color](class_color.md#class-color) | [function\_color](#class-codehighlighter-property-function-color) | `Color(0, 0, 0, 1)` |
| [Dictionary](class_dictionary.md#class-dictionary) | [keyword\_colors](#class-codehighlighter-property-keyword-colors) | `{}` |
| [Dictionary](class_dictionary.md#class-dictionary) | [member\_keyword\_colors](#class-codehighlighter-property-member-keyword-colors) | `{}` |
| [Color](class_color.md#class-color) | [member\_variable\_color](#class-codehighlighter-property-member-variable-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [number\_color](#class-codehighlighter-property-number-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [symbol\_color](#class-codehighlighter-property-symbol-color) | `Color(0, 0, 0, 1)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_color\_region](#class-codehighlighter-method-add-color-region)(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), color: [Color](class_color.md#class-color), line\_only: [bool](class_bool.md#class-bool) = false) |
| void | [add\_keyword\_color](#class-codehighlighter-method-add-keyword-color)(keyword: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) |
| void | [add\_member\_keyword\_color](#class-codehighlighter-method-add-member-keyword-color)(member\_keyword: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) |
| void | [clear\_color\_regions](#class-codehighlighter-method-clear-color-regions)() |
| void | [clear\_keyword\_colors](#class-codehighlighter-method-clear-keyword-colors)() |
| void | [clear\_member\_keyword\_colors](#class-codehighlighter-method-clear-member-keyword-colors)() |
| [Color](class_color.md#class-color) | [get\_keyword\_color](#class-codehighlighter-method-get-keyword-color)(keyword: [String](class_string.md#class-string)) const |
| [Color](class_color.md#class-color) | [get\_member\_keyword\_color](#class-codehighlighter-method-get-member-keyword-color)(member\_keyword: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_color\_region](#class-codehighlighter-method-has-color-region)(start\_key: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_keyword\_color](#class-codehighlighter-method-has-keyword-color)(keyword: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_member\_keyword\_color](#class-codehighlighter-method-has-member-keyword-color)(member\_keyword: [String](class_string.md#class-string)) const |
| void | [remove\_color\_region](#class-codehighlighter-method-remove-color-region)(start\_key: [String](class_string.md#class-string)) |
| void | [remove\_keyword\_color](#class-codehighlighter-method-remove-keyword-color)(keyword: [String](class_string.md#class-string)) |
| void | [remove\_member\_keyword\_color](#class-codehighlighter-method-remove-member-keyword-color)(member\_keyword: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[Dictionary](class_dictionary.md#class-dictionary) **color\_regions** = `{}` [🔗](#class-codehighlighter-property-color-regions)

- void **set\_color\_regions**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_color\_regions**()


Sets the color regions. All existing regions will be removed. The [Dictionary](class_dictionary.md#class-dictionary) key is the region start and end key, separated by a space. The value is the region color.

* * *

[Color](class_color.md#class-color) **function\_color** = `Color(0, 0, 0, 1)` [🔗](#class-codehighlighter-property-function-color)

- void **set\_function\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_function\_color**()


Sets color for functions. A function is a non-keyword string followed by a '('.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **keyword\_colors** = `{}` [🔗](#class-codehighlighter-property-keyword-colors)

- void **set\_keyword\_colors**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_keyword\_colors**()


Sets the keyword colors. All existing keywords will be removed. The [Dictionary](class_dictionary.md#class-dictionary) key is the keyword. The value is the keyword color.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **member\_keyword\_colors** = `{}` [🔗](#class-codehighlighter-property-member-keyword-colors)

- void **set\_member\_keyword\_colors**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_member\_keyword\_colors**()


Sets the member keyword colors. All existing member keyword will be removed. The [Dictionary](class_dictionary.md#class-dictionary) key is the member keyword. The value is the member keyword color.

* * *

[Color](class_color.md#class-color) **member\_variable\_color** = `Color(0, 0, 0, 1)` [🔗](#class-codehighlighter-property-member-variable-color)

- void **set\_member\_variable\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_member\_variable\_color**()


Sets color for member variables. A member variable is non-keyword, non-function string proceeded with a '.'.

* * *

[Color](class_color.md#class-color) **number\_color** = `Color(0, 0, 0, 1)` [🔗](#class-codehighlighter-property-number-color)

- void **set\_number\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_number\_color**()


Sets the color for numbers.

* * *

[Color](class_color.md#class-color) **symbol\_color** = `Color(0, 0, 0, 1)` [🔗](#class-codehighlighter-property-symbol-color)

- void **set\_symbol\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_symbol\_color**()


Sets the color for symbols.

* * *

## Method Descriptions

void **add\_color\_region**(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), color: [Color](class_color.md#class-color), line\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-codehighlighter-method-add-color-region)

Adds a color region (such as for comments or strings) from `start_key` to `end_key`. Both keys should be symbols, and `start_key` must not be shared with other delimiters.

If `line_only` is `true` or `end_key` is an empty [String](class_string.md#class-string), the region does not carry over to the next line.

* * *

void **add\_keyword\_color**(keyword: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) [🔗](#class-codehighlighter-method-add-keyword-color)

Sets the color for a keyword.

The keyword cannot contain any symbols except '\_'.

* * *

void **add\_member\_keyword\_color**(member\_keyword: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) [🔗](#class-codehighlighter-method-add-member-keyword-color)

Sets the color for a member keyword.

The member keyword cannot contain any symbols except '\_'.

It will not be highlighted if preceded by a '.'.

* * *

void **clear\_color\_regions**() [🔗](#class-codehighlighter-method-clear-color-regions)

Removes all color regions.

* * *

void **clear\_keyword\_colors**() [🔗](#class-codehighlighter-method-clear-keyword-colors)

Removes all keywords.

* * *

void **clear\_member\_keyword\_colors**() [🔗](#class-codehighlighter-method-clear-member-keyword-colors)

Removes all member keywords.

* * *

[Color](class_color.md#class-color) **get\_keyword\_color**(keyword: [String](class_string.md#class-string)) const [🔗](#class-codehighlighter-method-get-keyword-color)

Returns the color for a keyword.

* * *

[Color](class_color.md#class-color) **get\_member\_keyword\_color**(member\_keyword: [String](class_string.md#class-string)) const [🔗](#class-codehighlighter-method-get-member-keyword-color)

Returns the color for a member keyword.

* * *

[bool](class_bool.md#class-bool) **has\_color\_region**(start\_key: [String](class_string.md#class-string)) const [🔗](#class-codehighlighter-method-has-color-region)

Returns `true` if the start key exists, else `false`.

* * *

[bool](class_bool.md#class-bool) **has\_keyword\_color**(keyword: [String](class_string.md#class-string)) const [🔗](#class-codehighlighter-method-has-keyword-color)

Returns `true` if the keyword exists, else `false`.

* * *

[bool](class_bool.md#class-bool) **has\_member\_keyword\_color**(member\_keyword: [String](class_string.md#class-string)) const [🔗](#class-codehighlighter-method-has-member-keyword-color)

Returns `true` if the member keyword exists, else `false`.

* * *

void **remove\_color\_region**(start\_key: [String](class_string.md#class-string)) [🔗](#class-codehighlighter-method-remove-color-region)

Removes the color region that uses that start key.

* * *

void **remove\_keyword\_color**(keyword: [String](class_string.md#class-string)) [🔗](#class-codehighlighter-method-remove-keyword-color)

Removes the keyword.

* * *

void **remove\_member\_keyword\_color**(member\_keyword: [String](class_string.md#class-string)) [🔗](#class-codehighlighter-method-remove-member-keyword-color)

Removes the member keyword.

[Previous](class_circleshape2d.md "CircleShape2D") [Next](class_colorpalette.md "ColorPalette")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_circleshape2d.md "CircleShape2D") [Next](class_colorpalette.md "ColorPalette")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).