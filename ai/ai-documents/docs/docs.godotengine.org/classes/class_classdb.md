---
title: ClassDB — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_classdb.html
crawled_at: "2026-08-13T10:26:42+12:00"
content_hash: 674d5b506cf41bda39345a8e74e11ee7cb7aef32df349fa8ec18e7509f887165
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ClassDB

* * *

# ClassDB

**Inherits:** [Object](class_object.md#class-object)

A class information repository.

## Description

Provides access to metadata stored for every available engine class.

**Note:** Script-defined classes with `class_name` are not part of **ClassDB**, so they will not return reflection data such as a method or property list. However, [GDExtension](class_gdextension.md#class-gdextension)-defined classes _are_ part of **ClassDB**, so they will return reflection data.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [can\_instantiate](#class-classdb-method-can-instantiate)(class: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [class\_call\_static](#class-classdb-method-class-call-static)(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| [bool](class_bool.md#class-bool) | [class\_exists](#class-classdb-method-class-exists)(class: [StringName](class_stringname.md#class-stringname)) const |
| [APIType](#enum-classdb-apitype) | [class\_get\_api\_type](#class-classdb-method-class-get-api-type)(class: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [class\_get\_enum\_constants](#class-classdb-method-class-get-enum-constants)(class: [StringName](class_stringname.md#class-stringname), enum: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [class\_get\_enum\_list](#class-classdb-method-class-get-enum-list)(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [class\_get\_integer\_constant](#class-classdb-method-class-get-integer-constant)(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [class\_get\_integer\_constant\_enum](#class-classdb-method-class-get-integer-constant-enum)(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [class\_get\_integer\_constant\_list](#class-classdb-method-class-get-integer-constant-list)(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [class\_get\_method\_argument\_count](#class-classdb-method-class-get-method-argument-count)(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [class\_get\_method\_list](#class-classdb-method-class-get-method-list)(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [Variant](class_variant.md#class-variant) | [class\_get\_property](#class-classdb-method-class-get-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [class\_get\_property\_default\_value](#class-classdb-method-class-get-property-default-value)(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [class\_get\_property\_getter](#class-classdb-method-class-get-property-getter)(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [class\_get\_property\_list](#class-classdb-method-class-get-property-list)(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [StringName](class_stringname.md#class-stringname) | [class\_get\_property\_setter](#class-classdb-method-class-get-property-setter)(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [class\_get\_signal](#class-classdb-method-class-get-signal)(class: [StringName](class_stringname.md#class-stringname), signal: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [class\_get\_signal\_list](#class-classdb-method-class-get-signal-list)(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [class\_has\_enum](#class-classdb-method-class-has-enum)(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [class\_has\_integer\_constant](#class-classdb-method-class-has-integer-constant)(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [class\_has\_method](#class-classdb-method-class-has-method)(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [class\_has\_signal](#class-classdb-method-class-has-signal)(class: [StringName](class_stringname.md#class-stringname), signal: [StringName](class_stringname.md#class-stringname)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [class\_set\_property](#class-classdb-method-class-set-property)(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_class\_list](#class-classdb-method-get-class-list)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_inheriters\_from\_class](#class-classdb-method-get-inheriters-from-class)(class: [StringName](class_stringname.md#class-stringname)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_parent\_class](#class-classdb-method-get-parent-class)(class: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [instantiate](#class-classdb-method-instantiate)(class: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_class\_enabled](#class-classdb-method-is-class-enabled)(class: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_class\_enum\_bitfield](#class-classdb-method-is-class-enum-bitfield)(class: [StringName](class_stringname.md#class-stringname), enum: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_parent\_class](#class-classdb-method-is-parent-class)(class: [StringName](class_stringname.md#class-stringname), inherits: [StringName](class_stringname.md#class-stringname)) const |

* * *

## Enumerations

enum **APIType**: [🔗](#enum-classdb-apitype)

[APIType](#enum-classdb-apitype) **API\_CORE** = `0`

Native Core class type.

[APIType](#enum-classdb-apitype) **API\_EDITOR** = `1`

Native Editor class type.

[APIType](#enum-classdb-apitype) **API\_EXTENSION** = `2`

GDExtension class type.

[APIType](#enum-classdb-apitype) **API\_EDITOR\_EXTENSION** = `3`

GDExtension Editor class type.

[APIType](#enum-classdb-apitype) **API\_NONE** = `4`

Unknown class type.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **can\_instantiate**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-can-instantiate)

Returns `true` if objects can be instantiated from the specified `class`, otherwise returns `false`.

* * *

[Variant](class_variant.md#class-variant) **class\_call\_static**(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-classdb-method-class-call-static)

Calls a static method on a class.

* * *

[bool](class_bool.md#class-bool) **class\_exists**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-exists)

Returns whether the specified `class` is available or not.

* * *

[APIType](#enum-classdb-apitype) **class\_get\_api\_type**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-get-api-type)

Returns the API type of the specified `class`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **class\_get\_enum\_constants**(class: [StringName](class_stringname.md#class-stringname), enum: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-enum-constants)

Returns an array with all the keys in `enum` of `class` or its ancestry.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **class\_get\_enum\_list**(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-enum-list)

Returns an array with all the enums of `class` or its ancestry.

* * *

[int](class_int.md#class-int) **class\_get\_integer\_constant**(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-get-integer-constant)

Returns the value of the integer constant `name` of `class` or its ancestry. Always returns 0 when the constant could not be found.

* * *

[StringName](class_stringname.md#class-stringname) **class\_get\_integer\_constant\_enum**(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-integer-constant-enum)

Returns which enum the integer constant `name` of `class` or its ancestry belongs to.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **class\_get\_integer\_constant\_list**(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-integer-constant-list)

Returns an array with the names all the integer constants of `class` or its ancestry.

* * *

[int](class_int.md#class-int) **class\_get\_method\_argument\_count**(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-method-argument-count)

Returns the number of arguments of the method `method` of `class` or its ancestry if `no_inheritance` is `false`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **class\_get\_method\_list**(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-method-list)

Returns an array with all the methods of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.

**Note:** In exported release builds the debug info is not available, so the returned dictionaries will contain only method names.

* * *

[Variant](class_variant.md#class-variant) **class\_get\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-get-property)

Returns the value of `property` of `object` or its ancestry.

* * *

[Variant](class_variant.md#class-variant) **class\_get\_property\_default\_value**(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-get-property-default-value)

Returns the default value of `property` of `class` or its ancestor classes.

* * *

[StringName](class_stringname.md#class-stringname) **class\_get\_property\_getter**(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-classdb-method-class-get-property-getter)

Returns the getter method name of `property` of `class`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **class\_get\_property\_list**(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-property-list)

Returns an array with all the properties of `class` or its ancestry if `no_inheritance` is `false`.

* * *

[StringName](class_stringname.md#class-stringname) **class\_get\_property\_setter**(class: [StringName](class_stringname.md#class-stringname), property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-classdb-method-class-get-property-setter)

Returns the setter method name of `property` of `class`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **class\_get\_signal**(class: [StringName](class_stringname.md#class-stringname), signal: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-get-signal)

Returns the `signal` data of `class` or its ancestry. The returned value is a [Dictionary](class_dictionary.md#class-dictionary) with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **class\_get\_signal\_list**(class: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-get-signal-list)

Returns an array with all the signals of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a [Dictionary](class_dictionary.md#class-dictionary) as described in [class\_get\_signal()](#class-classdb-method-class-get-signal).

* * *

[bool](class_bool.md#class-bool) **class\_has\_enum**(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-has-enum)

Returns whether `class` or its ancestry has an enum called `name` or not.

* * *

[bool](class_bool.md#class-bool) **class\_has\_integer\_constant**(class: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-has-integer-constant)

Returns whether `class` or its ancestry has an integer constant called `name` or not.

* * *

[bool](class_bool.md#class-bool) **class\_has\_method**(class: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-class-has-method)

Returns whether `class` (or its ancestry if `no_inheritance` is `false`) has a method called `method` or not.

* * *

[bool](class_bool.md#class-bool) **class\_has\_signal**(class: [StringName](class_stringname.md#class-stringname), signal: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-class-has-signal)

Returns whether `class` or its ancestry has a signal called `signal` or not.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **class\_set\_property**(object: [Object](class_object.md#class-object), property: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) const [🔗](#class-classdb-method-class-set-property)

Sets `property` value of `object` to `value`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_class\_list**() const [🔗](#class-classdb-method-get-class-list)

Returns the names of all engine classes available.

**Note:** Script-defined classes with `class_name` are not included in this list. Use [ProjectSettings.get\_global\_class\_list()](class_projectsettings.md#class-projectsettings-method-get-global-class-list) to get a list of script-defined classes instead.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_inheriters\_from\_class**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-get-inheriters-from-class)

Returns the names of all engine classes that directly or indirectly inherit from `class`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_parent\_class**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-get-parent-class)

Returns the parent class of `class`.

* * *

[Variant](class_variant.md#class-variant) **instantiate**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-instantiate)

Creates an instance of `class`.

* * *

[bool](class_bool.md#class-bool) **is\_class\_enabled**(class: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-is-class-enabled)

Returns whether this `class` is enabled or not.

* * *

[bool](class_bool.md#class-bool) **is\_class\_enum\_bitfield**(class: [StringName](class_stringname.md#class-stringname), enum: [StringName](class_stringname.md#class-stringname), no\_inheritance: [bool](class_bool.md#class-bool) = false) const [🔗](#class-classdb-method-is-class-enum-bitfield)

Returns whether `class` (or its ancestor classes if `no_inheritance` is `false`) has an enum called `enum` that is a bitfield.

* * *

[bool](class_bool.md#class-bool) **is\_parent\_class**(class: [StringName](class_stringname.md#class-stringname), inherits: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-classdb-method-is-parent-class)

Returns whether `inherits` is an ancestor of `class` or not.

[Previous](class_charfxtransform.md "CharFXTransform") [Next](class_configfile.md "ConfigFile")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_charfxtransform.md "CharFXTransform") [Next](class_configfile.md "ConfigFile")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).