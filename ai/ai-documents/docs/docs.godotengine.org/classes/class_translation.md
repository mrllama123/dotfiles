---
title: Translation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_translation.html
crawled_at: "2026-08-13T10:29:27+12:00"
content_hash: 12aadd4f48e97ed64beacf3a2f17c743a9107e4718d6771f7f9aacf0e7099bda
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Translation

* * *

# Translation

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [OptimizedTranslation](class_optimizedtranslation.md#class-optimizedtranslation)

A language translation that maps a collection of strings to their individual translations.

## Description

**Translation** s are resources that can be loaded and unloaded on demand. They map a collection of strings to their individual translations, and they also provide convenience methods for pluralization.

## Tutorials

- [Internationalizing games](../tutorials/i18n/internationalizing_games.md)

- [Localization using gettext](../tutorials/i18n/localization_using_gettext.md)

- [Locales](../tutorials/i18n/locales.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [locale](#class-translation-property-locale) | `"en"` |

## Methods

|     |     |
| --- | --- |
| [StringName](class_stringname.md#class-stringname) | [\_get\_message](#class-translation-private-method-get-message)(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [StringName](class_stringname.md#class-stringname) | [\_get\_plural\_message](#class-translation-private-method-get-plural-message)(src\_message: [StringName](class_stringname.md#class-stringname), src\_plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname)) virtualconst |
| void | [add\_message](#class-translation-method-add-message)(src\_message: [StringName](class_stringname.md#class-stringname), xlated\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") |
| void | [add\_plural\_message](#class-translation-method-add-plural-message)(src\_message: [StringName](class_stringname.md#class-stringname), xlated\_messages: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), context: [StringName](class_stringname.md#class-stringname) = &"") |
| void | [erase\_message](#class-translation-method-erase-message)(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") |
| [StringName](class_stringname.md#class-stringname) | [get\_message](#class-translation-method-get-message)(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_message\_count](#class-translation-method-get-message-count)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_message\_list](#class-translation-method-get-message-list)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_plural\_message](#class-translation-method-get-plural-message)(src\_message: [StringName](class_stringname.md#class-stringname), src\_plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_translated\_message\_list](#class-translation-method-get-translated-message-list)() const |

* * *

## Property Descriptions

[String](class_string.md#class-string) **locale** = `"en"` [🔗](#class-translation-property-locale)

- void **set\_locale**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_locale**()


The locale of the translation.

* * *

## Method Descriptions

[StringName](class_stringname.md#class-stringname) **\_get\_message**(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-translation-private-method-get-message)

Virtual method to override [get\_message()](#class-translation-method-get-message).

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_plural\_message**(src\_message: [StringName](class_stringname.md#class-stringname), src\_plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-translation-private-method-get-plural-message)

Virtual method to override [get\_plural\_message()](#class-translation-method-get-plural-message).

* * *

void **add\_message**(src\_message: [StringName](class_stringname.md#class-stringname), xlated\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") [🔗](#class-translation-method-add-message)

Adds a message if nonexistent, followed by its translation.

An additional context could be used to specify the translation context or differentiate polysemic words.

* * *

void **add\_plural\_message**(src\_message: [StringName](class_stringname.md#class-stringname), xlated\_messages: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), context: [StringName](class_stringname.md#class-stringname) = &"") [🔗](#class-translation-method-add-plural-message)

Adds a message involving plural translation if nonexistent, followed by its translation.

An additional context could be used to specify the translation context or differentiate polysemic words.

**Note:** Plurals are only supported in [gettext-based translations (PO)](../tutorials/i18n/localization_using_gettext.md), not CSV.

* * *

void **erase\_message**(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") [🔗](#class-translation-method-erase-message)

Erases a message.

* * *

[StringName](class_stringname.md#class-stringname) **get\_message**(src\_message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translation-method-get-message)

Returns a message's translation.

* * *

[int](class_int.md#class-int) **get\_message\_count**() const [🔗](#class-translation-method-get-message-count)

Returns the number of existing messages.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_message\_list**() const [🔗](#class-translation-method-get-message-list)

Returns all the messages (keys).

* * *

[StringName](class_stringname.md#class-stringname) **get\_plural\_message**(src\_message: [StringName](class_stringname.md#class-stringname), src\_plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translation-method-get-plural-message)

Returns a message's translation involving plurals.

The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.

**Note:** Plurals are only supported in [gettext-based translations (PO)](../tutorials/i18n/localization_using_gettext.md), not CSV.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_translated\_message\_list**() const [🔗](#class-translation-method-get-translated-message-list)

Returns all the messages (translated text).

[Previous](class_torusmesh.md "TorusMesh") [Next](class_tubetrailmesh.md "TubeTrailMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_torusmesh.md "TorusMesh") [Next](class_tubetrailmesh.md "TubeTrailMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).