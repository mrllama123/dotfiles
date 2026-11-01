---
title: ScriptExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scriptextension.html
crawled_at: "2026-08-13T10:37:51+12:00"
content_hash: d590e80a0815de5d8c670fddbe6abe93d84290caaf4d7d65530b65fd755376cd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptExtension

* * *

# ScriptExtension

**Inherits:** [Script](class_script.md#class-script) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_can\_instantiate](#class-scriptextension-private-method-can-instantiate)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_editor\_can\_reload\_from\_file](#class-scriptextension-private-method-editor-can-reload-from-file)() virtualrequired |
| [Script](class_script.md#class-script) | [\_get\_base\_script](#class-scriptextension-private-method-get-base-script)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_class\_icon\_path](#class-scriptextension-private-method-get-class-icon-path)() virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_constants](#class-scriptextension-private-method-get-constants)() virtualrequiredconst |
| [StringName](class_stringname.md#class-stringname) | [\_get\_doc\_class\_name](#class-scriptextension-private-method-get-doc-class-name)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_documentation](#class-scriptextension-private-method-get-documentation)() virtualrequiredconst |
| [StringName](class_stringname.md#class-stringname) | [\_get\_global\_name](#class-scriptextension-private-method-get-global-name)() virtualrequiredconst |
| [StringName](class_stringname.md#class-stringname) | [\_get\_instance\_base\_type](#class-scriptextension-private-method-get-instance-base-type)() virtualrequiredconst |
| [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) | [\_get\_language](#class-scriptextension-private-method-get-language)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_member\_line](#class-scriptextension-private-method-get-member-line)(member: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [\_get\_members](#class-scriptextension-private-method-get-members)() virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_method\_info](#class-scriptextension-private-method-get-method-info)(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_get\_property\_default\_value](#class-scriptextension-private-method-get-property-default-value)(property: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_get\_rpc\_config](#class-scriptextension-private-method-get-rpc-config)() virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_get\_script\_method\_argument\_count](#class-scriptextension-private-method-get-script-method-argument-count)(method: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_script\_method\_list](#class-scriptextension-private-method-get-script-method-list)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_script\_property\_list](#class-scriptextension-private-method-get-script-property-list)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_script\_signal\_list](#class-scriptextension-private-method-get-script-signal-list)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_source\_code](#class-scriptextension-private-method-get-source-code)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_method](#class-scriptextension-private-method-has-method)(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_property\_default\_value](#class-scriptextension-private-method-has-property-default-value)(property: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_script\_signal](#class-scriptextension-private-method-has-script-signal)(signal: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_source\_code](#class-scriptextension-private-method-has-source-code)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_static\_method](#class-scriptextension-private-method-has-static-method)(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_inherits\_script](#class-scriptextension-private-method-inherits-script)(script: [Script](class_script.md#class-script)) virtualrequiredconst |
| `void*` | [\_instance\_create](#class-scriptextension-private-method-instance-create)(for\_object: [Object](class_object.md#class-object)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_instance\_has](#class-scriptextension-private-method-instance-has)(object: [Object](class_object.md#class-object)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_abstract](#class-scriptextension-private-method-is-abstract)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_placeholder\_fallback\_enabled](#class-scriptextension-private-method-is-placeholder-fallback-enabled)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_tool](#class-scriptextension-private-method-is-tool)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_valid](#class-scriptextension-private-method-is-valid)() virtualrequiredconst |
| void | [\_placeholder\_erased](#class-scriptextension-private-method-placeholder-erased)(placeholder: `void*`) virtual |
| `void*` | [\_placeholder\_instance\_create](#class-scriptextension-private-method-placeholder-instance-create)(for\_object: [Object](class_object.md#class-object)) virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_reload](#class-scriptextension-private-method-reload)(keep\_state: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_set\_source\_code](#class-scriptextension-private-method-set-source-code)(code: [String](class_string.md#class-string)) virtualrequired |
| void | [\_update\_exports](#class-scriptextension-private-method-update-exports)() virtualrequired |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_can\_instantiate**() virtualrequiredconst [🔗](#class-scriptextension-private-method-can-instantiate)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_editor\_can\_reload\_from\_file**() virtualrequired [🔗](#class-scriptextension-private-method-editor-can-reload-from-file)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Script](class_script.md#class-script) **\_get\_base\_script**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-base-script)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_class\_icon\_path**() virtualconst [🔗](#class-scriptextension-private-method-get-class-icon-path)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_constants**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-constants)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_doc\_class\_name**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-doc-class-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_documentation**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-documentation)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_global\_name**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-global-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_instance\_base\_type**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-instance-base-type)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) **\_get\_language**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-language)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_member\_line**(member: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-get-member-line)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **\_get\_members**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-members)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_method\_info**(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-get-method-info)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_get\_property\_default\_value**(property: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-get-property-default-value)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_get\_rpc\_config**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-rpc-config)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_get\_script\_method\_argument\_count**(method: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-scriptextension-private-method-get-script-method-argument-count)

Return the expected argument count for the given `method`, or `null` if it can't be determined (which will then fall back to the default behavior).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_script\_method\_list**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-script-method-list)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_script\_property\_list**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-script-property-list)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_script\_signal\_list**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-script-signal-list)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_source\_code**() virtualrequiredconst [🔗](#class-scriptextension-private-method-get-source-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_method**(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-has-method)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_property\_default\_value**(property: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-has-property-default-value)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_script\_signal**(signal: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-has-script-signal)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_source\_code**() virtualrequiredconst [🔗](#class-scriptextension-private-method-has-source-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_static\_method**(method: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptextension-private-method-has-static-method)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_inherits\_script**(script: [Script](class_script.md#class-script)) virtualrequiredconst [🔗](#class-scriptextension-private-method-inherits-script)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

`void*` **\_instance\_create**(for\_object: [Object](class_object.md#class-object)) virtualrequiredconst [🔗](#class-scriptextension-private-method-instance-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_instance\_has**(object: [Object](class_object.md#class-object)) virtualrequiredconst [🔗](#class-scriptextension-private-method-instance-has)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_abstract**() virtualconst [🔗](#class-scriptextension-private-method-is-abstract)

Returns `true` if the script is an abstract script. Abstract scripts cannot be instantiated directly, instead other scripts should inherit them. Abstract scripts will be either unselectable or hidden in the Create New Node dialog (unselectable if there are non-abstract classes inheriting it, otherwise hidden).

* * *

[bool](class_bool.md#class-bool) **\_is\_placeholder\_fallback\_enabled**() virtualrequiredconst [🔗](#class-scriptextension-private-method-is-placeholder-fallback-enabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_tool**() virtualrequiredconst [🔗](#class-scriptextension-private-method-is-tool)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_valid**() virtualrequiredconst [🔗](#class-scriptextension-private-method-is-valid)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_placeholder\_erased**(placeholder: `void*`) virtual [🔗](#class-scriptextension-private-method-placeholder-erased)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

`void*` **\_placeholder\_instance\_create**(for\_object: [Object](class_object.md#class-object)) virtualrequiredconst [🔗](#class-scriptextension-private-method-placeholder-instance-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_reload**(keep\_state: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-scriptextension-private-method-reload)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_source\_code**(code: [String](class_string.md#class-string)) virtualrequired [🔗](#class-scriptextension-private-method-set-source-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_update\_exports**() virtualrequired [🔗](#class-scriptextension-private-method-update-exports)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_script.md "Script") [Next](class_segmentshape2d.md "SegmentShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_script.md "Script") [Next](class_segmentshape2d.md "SegmentShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).