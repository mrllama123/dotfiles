---
title: TranslationServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_translationserver.html
crawled_at: "2026-08-13T10:34:19+12:00"
content_hash: ef75d563dc8641dbf76cfc1b0b6b84197caf2bbe35e54724c069ecf169c2386e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TranslationServer

* * *

# TranslationServer

**Inherits:** [Object](class_object.md#class-object)

The server responsible for language translations.

## Description

The translation server is the API backend that manages all language translations.

Translations are stored in [TranslationDomain](class_translationdomain.md#class-translationdomain) s, which can be accessed by name. The most commonly used translation domain is the main translation domain. It always exists and can be accessed using an empty [StringName](class_stringname.md#class-stringname). The translation server provides wrapper methods for accessing the main translation domain directly, without having to fetch the translation domain first. Custom translation domains are mainly for advanced usages like editor plugins. Names starting with `godot.` are reserved for engine internals.

## Tutorials

- [Internationalizing games](../tutorials/i18n/internationalizing_games.md)

- [Locales](../tutorials/i18n/locales.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_enabled](#class-translationserver-property-pseudolocalization-enabled) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [add\_translation](#class-translationserver-method-add-translation)(translation: [Translation](class_translation.md#class-translation)) |
| void | [clear](#class-translationserver-method-clear)() |
| [int](class_int.md#class-int) | [compare\_locales](#class-translationserver-method-compare-locales)(locale\_a: [String](class_string.md#class-string), locale\_b: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_all\_countries](#class-translationserver-method-get-all-countries)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_all\_languages](#class-translationserver-method-get-all-languages)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_all\_scripts](#class-translationserver-method-get-all-scripts)() const |
| [String](class_string.md#class-string) | [get\_country\_name](#class-translationserver-method-get-country-name)(country: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_language\_name](#class-translationserver-method-get-language-name)(language: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_loaded\_locales](#class-translationserver-method-get-loaded-locales)() const |
| [String](class_string.md#class-string) | [get\_locale](#class-translationserver-method-get-locale)() const |
| [String](class_string.md#class-string) | [get\_locale\_name](#class-translationserver-method-get-locale-name)(locale: [String](class_string.md#class-string)) const |
| [TranslationDomain](class_translationdomain.md#class-translationdomain) | [get\_or\_add\_domain](#class-translationserver-method-get-or-add-domain)(domain: [StringName](class_stringname.md#class-stringname)) |
| [String](class_string.md#class-string) | [get\_script\_name](#class-translationserver-method-get-script-name)(script: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_tool\_locale](#class-translationserver-method-get-tool-locale)() |
| [Translation](class_translation.md#class-translation) | [get\_translation\_object](#class-translationserver-method-get-translation-object)(locale: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [has\_domain](#class-translationserver-method-has-domain)(domain: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [pseudolocalize](#class-translationserver-method-pseudolocalize)(message: [StringName](class_stringname.md#class-stringname)) const |
| void | [reload\_pseudolocalization](#class-translationserver-method-reload-pseudolocalization)() |
| void | [remove\_domain](#class-translationserver-method-remove-domain)(domain: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_translation](#class-translationserver-method-remove-translation)(translation: [Translation](class_translation.md#class-translation)) |
| void | [set\_locale](#class-translationserver-method-set-locale)(locale: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [standardize\_locale](#class-translationserver-method-standardize-locale)(locale: [String](class_string.md#class-string), add\_defaults: [bool](class_bool.md#class-bool) = false) const |
| [StringName](class_stringname.md#class-stringname) | [translate](#class-translationserver-method-translate)(message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const |
| [StringName](class_stringname.md#class-stringname) | [translate\_plural](#class-translationserver-method-translate-plural)(message: [StringName](class_stringname.md#class-stringname), plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **pseudolocalization\_enabled** = `false` [🔗](#class-translationserver-property-pseudolocalization-enabled)

- void **set\_pseudolocalization\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_enabled**()


If `true`, enables the use of pseudolocalization on the main translation domain. See [ProjectSettings.internationalization/pseudolocalization/use\_pseudolocalization](class_projectsettings.md#class-projectsettings-property-internationalization-pseudolocalization-use-pseudolocalization) for details.

* * *

## Method Descriptions

void **add\_translation**(translation: [Translation](class_translation.md#class-translation)) [🔗](#class-translationserver-method-add-translation)

Adds a translation to the main translation domain.

* * *

void **clear**() [🔗](#class-translationserver-method-clear)

Removes all translations from the main translation domain.

* * *

[int](class_int.md#class-int) **compare\_locales**(locale\_a: [String](class_string.md#class-string), locale\_b: [String](class_string.md#class-string)) const [🔗](#class-translationserver-method-compare-locales)

Compares two locales and returns a similarity score between `0` (no match) and `10` (full match).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_all\_countries**() const [🔗](#class-translationserver-method-get-all-countries)

Returns an array of known country codes.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_all\_languages**() const [🔗](#class-translationserver-method-get-all-languages)

Returns array of known language codes.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_all\_scripts**() const [🔗](#class-translationserver-method-get-all-scripts)

Returns an array of known script codes.

* * *

[String](class_string.md#class-string) **get\_country\_name**(country: [String](class_string.md#class-string)) const [🔗](#class-translationserver-method-get-country-name)

Returns a readable country name for the `country` code.

* * *

[String](class_string.md#class-string) **get\_language\_name**(language: [String](class_string.md#class-string)) const [🔗](#class-translationserver-method-get-language-name)

Returns a readable language name for the `language` code.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_loaded\_locales**() const [🔗](#class-translationserver-method-get-loaded-locales)

Returns an array of all loaded locales of the project.

* * *

[String](class_string.md#class-string) **get\_locale**() const [🔗](#class-translationserver-method-get-locale)

Returns the current locale of the project.

See also [OS.get\_locale()](class_os.md#class-os-method-get-locale) and [OS.get\_locale\_language()](class_os.md#class-os-method-get-locale-language) to query the locale of the user system.

* * *

[String](class_string.md#class-string) **get\_locale\_name**(locale: [String](class_string.md#class-string)) const [🔗](#class-translationserver-method-get-locale-name)

Returns a locale's language and its variant (e.g. `"en_US"` would return `"English (United States)"`).

* * *

[TranslationDomain](class_translationdomain.md#class-translationdomain) **get\_or\_add\_domain**(domain: [StringName](class_stringname.md#class-stringname)) [🔗](#class-translationserver-method-get-or-add-domain)

Returns the translation domain with the specified name. An empty translation domain will be created and added if it does not exist.

* * *

[String](class_string.md#class-string) **get\_script\_name**(script: [String](class_string.md#class-string)) const [🔗](#class-translationserver-method-get-script-name)

Returns a readable script name for the `script` code.

* * *

[String](class_string.md#class-string) **get\_tool\_locale**() [🔗](#class-translationserver-method-get-tool-locale)

Returns the current locale of the editor.

**Note:** When called from an exported project returns the same value as [get\_locale()](#class-translationserver-method-get-locale).

* * *

[Translation](class_translation.md#class-translation) **get\_translation\_object**(locale: [String](class_string.md#class-string)) [🔗](#class-translationserver-method-get-translation-object)

Returns the [Translation](class_translation.md#class-translation) instance that best matches `locale` in the main translation domain. Returns `null` if there are no matches.

* * *

[bool](class_bool.md#class-bool) **has\_domain**(domain: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-translationserver-method-has-domain)

Returns `true` if a translation domain with the specified name exists.

* * *

[StringName](class_stringname.md#class-stringname) **pseudolocalize**(message: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-translationserver-method-pseudolocalize)

Returns the pseudolocalized string based on the `message` passed in.

**Note:** This method always uses the main translation domain.

* * *

void **reload\_pseudolocalization**() [🔗](#class-translationserver-method-reload-pseudolocalization)

Reparses the pseudolocalization options and reloads the translation for the main translation domain.

* * *

void **remove\_domain**(domain: [StringName](class_stringname.md#class-stringname)) [🔗](#class-translationserver-method-remove-domain)

Removes the translation domain with the specified name.

**Note:** Trying to remove the main translation domain is an error.

* * *

void **remove\_translation**(translation: [Translation](class_translation.md#class-translation)) [🔗](#class-translationserver-method-remove-translation)

Removes the given translation from the main translation domain.

* * *

void **set\_locale**(locale: [String](class_string.md#class-string)) [🔗](#class-translationserver-method-set-locale)

Sets the locale of the project. The `locale` string will be standardized to match known locales (e.g. `en-US` would be matched to `en_US`).

If translations have been loaded beforehand for the new locale, they will be applied.

* * *

[String](class_string.md#class-string) **standardize\_locale**(locale: [String](class_string.md#class-string), add\_defaults: [bool](class_bool.md#class-bool) = false) const [🔗](#class-translationserver-method-standardize-locale)

Returns a `locale` string standardized to match known locales (e.g. `en-US` would be matched to `en_US`). If `add_defaults` is `true`, the locale may have a default script or country added.

* * *

[StringName](class_stringname.md#class-stringname) **translate**(message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translationserver-method-translate)

Returns the current locale's translation for the given message and context.

**Note:** This method always uses the main translation domain.

* * *

[StringName](class_stringname.md#class-stringname) **translate\_plural**(message: [StringName](class_stringname.md#class-stringname), plural\_message: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translationserver-method-translate-plural)

Returns the current locale's translation for the given message, plural message and context.

The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.

**Note:** This method always uses the main translation domain.

[Previous](class_translationdomain.md "TranslationDomain") [Next](class_treeitem.md "TreeItem")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_translationdomain.md "TranslationDomain") [Next](class_treeitem.md "TreeItem")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).