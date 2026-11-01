---
title: SyntaxHighlighter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_syntaxhighlighter.html
crawled_at: "2026-08-13T10:36:46+12:00"
content_hash: 8a546801610fedae3e15721f374a4d97ab83848bb17387712b21abb22be283f6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SyntaxHighlighter

* * *

# SyntaxHighlighter

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CodeHighlighter](class_codehighlighter.md#class-codehighlighter), [EditorSyntaxHighlighter](class_editorsyntaxhighlighter.md#class-editorsyntaxhighlighter)

Base class for syntax highlighters. Provides syntax highlighting data to a [TextEdit](class_textedit.md#class-textedit).

## Description

Base class for syntax highlighters. Provides syntax highlighting data to a [TextEdit](class_textedit.md#class-textedit). The associated [TextEdit](class_textedit.md#class-textedit) will call into the **SyntaxHighlighter** on an as-needed basis.

**Note:** A **SyntaxHighlighter** instance should not be used across multiple [TextEdit](class_textedit.md#class-textedit) nodes.

## Methods

|     |     |
| --- | --- |
| void | [\_clear\_highlighting\_cache](#class-syntaxhighlighter-private-method-clear-highlighting-cache)() virtual |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_line\_syntax\_highlighting](#class-syntaxhighlighter-private-method-get-line-syntax-highlighting)(line: [int](class_int.md#class-int)) virtualconst |
| void | [\_update\_cache](#class-syntaxhighlighter-private-method-update-cache)() virtual |
| void | [clear\_highlighting\_cache](#class-syntaxhighlighter-method-clear-highlighting-cache)() |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_line\_syntax\_highlighting](#class-syntaxhighlighter-method-get-line-syntax-highlighting)(line: [int](class_int.md#class-int)) |
| [TextEdit](class_textedit.md#class-textedit) | [get\_text\_edit](#class-syntaxhighlighter-method-get-text-edit)() const |
| void | [update\_cache](#class-syntaxhighlighter-method-update-cache)() |

* * *

## Method Descriptions

void **\_clear\_highlighting\_cache**() virtual [🔗](#class-syntaxhighlighter-private-method-clear-highlighting-cache)

Virtual method which can be overridden to clear any local caches.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_line\_syntax\_highlighting**(line: [int](class_int.md#class-int)) virtualconst [🔗](#class-syntaxhighlighter-private-method-get-line-syntax-highlighting)

Virtual method which can be overridden to return syntax highlighting data.

See [get\_line\_syntax\_highlighting()](#class-syntaxhighlighter-method-get-line-syntax-highlighting) for more details.

* * *

void **\_update\_cache**() virtual [🔗](#class-syntaxhighlighter-private-method-update-cache)

Virtual method which can be overridden to update any local caches.

* * *

void **clear\_highlighting\_cache**() [🔗](#class-syntaxhighlighter-method-clear-highlighting-cache)

Clears all cached syntax highlighting data.

Then calls overridable method [\_clear\_highlighting\_cache()](#class-syntaxhighlighter-private-method-clear-highlighting-cache).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_line\_syntax\_highlighting**(line: [int](class_int.md#class-int)) [🔗](#class-syntaxhighlighter-method-get-line-syntax-highlighting)

Returns the syntax highlighting data for the line at index `line`. If the line is not cached, calls [\_get\_line\_syntax\_highlighting()](#class-syntaxhighlighter-private-method-get-line-syntax-highlighting) first to calculate the data.

Each entry is a column number containing a nested [Dictionary](class_dictionary.md#class-dictionary). The column number denotes the start of a region, the region will end if another region is found, or at the end of the line. The nested [Dictionary](class_dictionary.md#class-dictionary) contains the data for that region. Currently only the key `"color"` is supported.

**Example:** Possible return value. This means columns `0` to `4` should be red, and columns `5` to the end of the line should be green:

```
{
    0: {
        "color": Color(1, 0, 0)
    },
    5: {
        "color": Color(0, 1, 0)
    }
}

```

* * *

[TextEdit](class_textedit.md#class-textedit) **get\_text\_edit**() const [🔗](#class-syntaxhighlighter-method-get-text-edit)

Returns the associated [TextEdit](class_textedit.md#class-textedit) node.

* * *

void **update\_cache**() [🔗](#class-syntaxhighlighter-method-update-cache)

Clears then updates the **SyntaxHighlighter** caches. Override [\_update\_cache()](#class-syntaxhighlighter-private-method-update-cache) for a callback.

**Note:** This is called automatically when the associated [TextEdit](class_textedit.md#class-textedit) node, updates its own cache.

[Previous](class_styleboxtexture.md "StyleBoxTexture") [Next](class_systemfont.md "SystemFont")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_styleboxtexture.md "StyleBoxTexture") [Next](class_systemfont.md "SystemFont")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).