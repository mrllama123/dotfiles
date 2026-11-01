---
title: TranslationDomain — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_translationdomain.html
crawled_at: "2026-08-13T10:19:48+12:00"
content_hash: a6dac561ca30a40841a7532fe9342e9d7a3bbdd749104787932073b172831293
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TranslationDomain

* * *

# TranslationDomain

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A self-contained collection of [Translation](class_translation.md#class-translation) resources.

## Description

**TranslationDomain** is a self-contained collection of [Translation](class_translation.md#class-translation) resources. Translations can be added to or removed from it.

If you're working with the main translation domain, it is more convenient to use the wrap methods on [TranslationServer](class_translationserver.md#class-translationserver).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enabled](#class-translationdomain-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_accents\_enabled](#class-translationdomain-property-pseudolocalization-accents-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_double\_vowels\_enabled](#class-translationdomain-property-pseudolocalization-double-vowels-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_enabled](#class-translationdomain-property-pseudolocalization-enabled) | `false` |
| [float](class_float.md#class-float) | [pseudolocalization\_expansion\_ratio](#class-translationdomain-property-pseudolocalization-expansion-ratio) | `0.0` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_fake\_bidi\_enabled](#class-translationdomain-property-pseudolocalization-fake-bidi-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_override\_enabled](#class-translationdomain-property-pseudolocalization-override-enabled) | `false` |
| [String](class_string.md#class-string) | [pseudolocalization\_prefix](#class-translationdomain-property-pseudolocalization-prefix) | `"["` |
| [bool](class_bool.md#class-bool) | [pseudolocalization\_skip\_placeholders\_enabled](#class-translationdomain-property-pseudolocalization-skip-placeholders-enabled) | `true` |
| [String](class_string.md#class-string) | [pseudolocalization\_suffix](#class-translationdomain-property-pseudolocalization-suffix) | `"]"` |

## Methods

|     |     |
| --- | --- |
| void | [add\_translation](#class-translationdomain-method-add-translation)(translation: [Translation](class_translation.md#class-translation)) |
| void | [clear](#class-translationdomain-method-clear)() |
| [String](class_string.md#class-string) | [get\_locale\_override](#class-translationdomain-method-get-locale-override)() const |
| [Translation](class_translation.md#class-translation) | [get\_translation\_object](#class-translationdomain-method-get-translation-object)(locale: [String](class_string.md#class-string)) const |
| [StringName](class_stringname.md#class-stringname) | [pseudolocalize](#class-translationdomain-method-pseudolocalize)(message: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_translation](#class-translationdomain-method-remove-translation)(translation: [Translation](class_translation.md#class-translation)) |
| void | [set\_locale\_override](#class-translationdomain-method-set-locale-override)(locale: [String](class_string.md#class-string)) |
| [StringName](class_stringname.md#class-stringname) | [translate](#class-translationdomain-method-translate)(message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const |
| [StringName](class_stringname.md#class-stringname) | [translate\_plural](#class-translationdomain-method-translate-plural)(message: [StringName](class_stringname.md#class-stringname), message\_plural: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-translationdomain-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


If `true`, translation is enabled. Otherwise, [translate()](#class-translationdomain-method-translate) and [translate\_plural()](#class-translationdomain-method-translate-plural) will return the input message unchanged regardless of the current locale.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_accents\_enabled** = `true` [🔗](#class-translationdomain-property-pseudolocalization-accents-enabled)

- void **set\_pseudolocalization\_accents\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_accents\_enabled**()


Replace all characters with their accented variants during pseudolocalization.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_double\_vowels\_enabled** = `false` [🔗](#class-translationdomain-property-pseudolocalization-double-vowels-enabled)

- void **set\_pseudolocalization\_double\_vowels\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_double\_vowels\_enabled**()


Double vowels in strings during pseudolocalization to simulate the lengthening of text due to localization.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_enabled** = `false` [🔗](#class-translationdomain-property-pseudolocalization-enabled)

- void **set\_pseudolocalization\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_enabled**()


If `true`, enables pseudolocalization for the project. This can be used to spot untranslatable strings or layout issues that may occur once the project is localized to languages that have longer strings than the source language.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[float](class_float.md#class-float) **pseudolocalization\_expansion\_ratio** = `0.0` [🔗](#class-translationdomain-property-pseudolocalization-expansion-ratio)

- void **set\_pseudolocalization\_expansion\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pseudolocalization\_expansion\_ratio**()


The expansion ratio to use during pseudolocalization. A value of `0.3` is sufficient for most practical purposes, and will increase the length of each string by 30%.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_fake\_bidi\_enabled** = `false` [🔗](#class-translationdomain-property-pseudolocalization-fake-bidi-enabled)

- void **set\_pseudolocalization\_fake\_bidi\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_fake\_bidi\_enabled**()


If `true`, emulate bidirectional (right-to-left) text when pseudolocalization is enabled. This can be used to spot issues with RTL layout and UI mirroring that will crop up if the project is localized to RTL languages such as Arabic or Hebrew.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_override\_enabled** = `false` [🔗](#class-translationdomain-property-pseudolocalization-override-enabled)

- void **set\_pseudolocalization\_override\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_override\_enabled**()


Replace all characters in the string with `*`. Useful for finding non-localizable strings.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[String](class_string.md#class-string) **pseudolocalization\_prefix** = `"["` [🔗](#class-translationdomain-property-pseudolocalization-prefix)

- void **set\_pseudolocalization\_prefix**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_pseudolocalization\_prefix**()


Prefix that will be prepended to the pseudolocalized string.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[bool](class_bool.md#class-bool) **pseudolocalization\_skip\_placeholders\_enabled** = `true` [🔗](#class-translationdomain-property-pseudolocalization-skip-placeholders-enabled)

- void **set\_pseudolocalization\_skip\_placeholders\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pseudolocalization\_skip\_placeholders\_enabled**()


Skip placeholders for string formatting like `%s` or `%f` during pseudolocalization. Useful to identify strings which need additional control characters to display correctly.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

[String](class_string.md#class-string) **pseudolocalization\_suffix** = `"]"` [🔗](#class-translationdomain-property-pseudolocalization-suffix)

- void **set\_pseudolocalization\_suffix**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_pseudolocalization\_suffix**()


Suffix that will be appended to the pseudolocalized string.

**Note:** Updating this property does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) notification manually after you have finished modifying pseudolocalization related options.

* * *

## Method Descriptions

void **add\_translation**(translation: [Translation](class_translation.md#class-translation)) [🔗](#class-translationdomain-method-add-translation)

Adds a translation.

* * *

void **clear**() [🔗](#class-translationdomain-method-clear)

Removes all translations.

* * *

[String](class_string.md#class-string) **get\_locale\_override**() const [🔗](#class-translationdomain-method-get-locale-override)

Returns the locale override of the domain. Returns an empty string if locale override is disabled.

* * *

[Translation](class_translation.md#class-translation) **get\_translation\_object**(locale: [String](class_string.md#class-string)) const [🔗](#class-translationdomain-method-get-translation-object)

Returns the [Translation](class_translation.md#class-translation) instance that best matches `locale`. Returns `null` if there are no matches.

* * *

[StringName](class_stringname.md#class-stringname) **pseudolocalize**(message: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-translationdomain-method-pseudolocalize)

Returns the pseudolocalized string based on the `message` passed in.

* * *

void **remove\_translation**(translation: [Translation](class_translation.md#class-translation)) [🔗](#class-translationdomain-method-remove-translation)

Removes the given translation.

* * *

void **set\_locale\_override**(locale: [String](class_string.md#class-string)) [🔗](#class-translationdomain-method-set-locale-override)

Sets the locale override of the domain.

If `locale` is an empty string, locale override is disabled. Otherwise, `locale` will be standardized to match known locales (e.g. `en-US` would be matched to `en_US`).

**Note:** Calling this method does not automatically update texts in the scene tree. Please propagate the [MainLoop.NOTIFICATION\_TRANSLATION\_CHANGED](class_mainloop.md#class-mainloop-constant-notification-translation-changed) signal manually.

* * *

[StringName](class_stringname.md#class-stringname) **translate**(message: [StringName](class_stringname.md#class-stringname), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translationdomain-method-translate)

Returns the current locale's translation for the given message and context.

* * *

[StringName](class_stringname.md#class-stringname) **translate\_plural**(message: [StringName](class_stringname.md#class-stringname), message\_plural: [StringName](class_stringname.md#class-stringname), n: [int](class_int.md#class-int), context: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-translationdomain-method-translate-plural)

Returns the current locale's translation for the given message, plural message and context.

The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.

[Previous](class_tlsoptions.md "TLSOptions") [Next](class_translationserver.md "TranslationServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tlsoptions.md "TLSOptions") [Next](class_translationserver.md "TranslationServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).