---
title: ScriptLanguageExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scriptlanguageextension.html
crawled_at: "2026-08-13T10:41:32+12:00"
content_hash: 74ca05d076bd8e96f66db927c8bfc47782c8494b48f94e0860f88296f83191ff
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ScriptLanguageExtension

* * *

# ScriptLanguageExtension

**Inherits:** [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) **<** [Object](class_object.md#class-object)

There is currently no description for this class. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

## Methods

|     |     |
| --- | --- |
| void | [\_add\_global\_constant](#class-scriptlanguageextension-private-method-add-global-constant)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_add\_named\_global\_constant](#class-scriptlanguageextension-private-method-add-named-global-constant)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| [String](class_string.md#class-string) | [\_auto\_indent\_code](#class-scriptlanguageextension-private-method-auto-indent-code)(code: [String](class_string.md#class-string), from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_can\_inherit\_from\_file](#class-scriptlanguageextension-private-method-can-inherit-from-file)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_can\_make\_function](#class-scriptlanguageextension-private-method-can-make-function)() virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_complete\_code](#class-scriptlanguageextension-private-method-complete-code)(code: [String](class_string.md#class-string), path: [String](class_string.md#class-string), owner: [Object](class_object.md#class-object)) virtualrequiredconst |
| [Object](class_object.md#class-object) | [\_create\_script](#class-scriptlanguageextension-private-method-create-script)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_debug\_get\_current\_stack\_info](#class-scriptlanguageextension-private-method-debug-get-current-stack-info)() virtualrequired |
| [String](class_string.md#class-string) | [\_debug\_get\_error](#class-scriptlanguageextension-private-method-debug-get-error)() virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_debug\_get\_globals](#class-scriptlanguageextension-private-method-debug-get-globals)(max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired |
| [int](class_int.md#class-int) | [\_debug\_get\_stack\_level\_count](#class-scriptlanguageextension-private-method-debug-get-stack-level-count)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_debug\_get\_stack\_level\_function](#class-scriptlanguageextension-private-method-debug-get-stack-level-function)(level: [int](class_int.md#class-int)) virtualrequiredconst |
| `void*` | [\_debug\_get\_stack\_level\_instance](#class-scriptlanguageextension-private-method-debug-get-stack-level-instance)(level: [int](class_int.md#class-int)) virtualrequired |
| [int](class_int.md#class-int) | [\_debug\_get\_stack\_level\_line](#class-scriptlanguageextension-private-method-debug-get-stack-level-line)(level: [int](class_int.md#class-int)) virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_debug\_get\_stack\_level\_locals](#class-scriptlanguageextension-private-method-debug-get-stack-level-locals)(level: [int](class_int.md#class-int), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_debug\_get\_stack\_level\_members](#class-scriptlanguageextension-private-method-debug-get-stack-level-members)(level: [int](class_int.md#class-int), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired |
| [String](class_string.md#class-string) | [\_debug\_get\_stack\_level\_source](#class-scriptlanguageextension-private-method-debug-get-stack-level-source)(level: [int](class_int.md#class-int)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_debug\_parse\_stack\_level\_expression](#class-scriptlanguageextension-private-method-debug-parse-stack-level-expression)(level: [int](class_int.md#class-int), expression: [String](class_string.md#class-string), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired |
| [int](class_int.md#class-int) | [\_find\_function](#class-scriptlanguageextension-private-method-find-function)(function: [String](class_string.md#class-string), code: [String](class_string.md#class-string)) virtualrequiredconst |
| void | [\_finish](#class-scriptlanguageextension-private-method-finish)() virtualrequired |
| void | [\_frame](#class-scriptlanguageextension-private-method-frame)() virtualrequired |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_built\_in\_templates](#class-scriptlanguageextension-private-method-get-built-in-templates)(object: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_comment\_delimiters](#class-scriptlanguageextension-private-method-get-comment-delimiters)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_doc\_comment\_delimiters](#class-scriptlanguageextension-private-method-get-doc-comment-delimiters)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_extension](#class-scriptlanguageextension-private-method-get-extension)() virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_global\_class\_name](#class-scriptlanguageextension-private-method-get-global-class-name)(path: [String](class_string.md#class-string)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-scriptlanguageextension-private-method-get-name)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_public\_annotations](#class-scriptlanguageextension-private-method-get-public-annotations)() virtualrequiredconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_public\_constants](#class-scriptlanguageextension-private-method-get-public-constants)() virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_public\_functions](#class-scriptlanguageextension-private-method-get-public-functions)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_recognized\_extensions](#class-scriptlanguageextension-private-method-get-recognized-extensions)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_reserved\_words](#class-scriptlanguageextension-private-method-get-reserved-words)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_string\_delimiters](#class-scriptlanguageextension-private-method-get-string-delimiters)() virtualrequiredconst |
| [String](class_string.md#class-string) | [\_get\_type](#class-scriptlanguageextension-private-method-get-type)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_handles\_global\_class\_type](#class-scriptlanguageextension-private-method-handles-global-class-type)(type: [String](class_string.md#class-string)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_has\_named\_classes](#class-scriptlanguageextension-private-method-has-named-classes)() virtualrequiredconst |
| void | [\_init](#class-scriptlanguageextension-private-method-init)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_is\_control\_flow\_keyword](#class-scriptlanguageextension-private-method-is-control-flow-keyword)(keyword: [String](class_string.md#class-string)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_is\_using\_templates](#class-scriptlanguageextension-private-method-is-using-templates)() virtualrequired |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_lookup\_code](#class-scriptlanguageextension-private-method-lookup-code)(code: [String](class_string.md#class-string), symbol: [String](class_string.md#class-string), path: [String](class_string.md#class-string), owner: [Object](class_object.md#class-object)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_make\_function](#class-scriptlanguageextension-private-method-make-function)(class\_name: [String](class_string.md#class-string), function\_name: [String](class_string.md#class-string), function\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualrequiredconst |
| [Script](class_script.md#class-script) | [\_make\_template](#class-scriptlanguageextension-private-method-make-template)(template: [String](class_string.md#class-string), class\_name: [String](class_string.md#class-string), base\_class\_name: [String](class_string.md#class-string)) virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_open\_in\_external\_editor](#class-scriptlanguageextension-private-method-open-in-external-editor)(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_overrides\_external\_editor](#class-scriptlanguageextension-private-method-overrides-external-editor)() virtualrequired |
| [ScriptNameCasing](class_scriptlanguage.md#enum-scriptlanguage-scriptnamecasing) | [\_preferred\_file\_name\_casing](#class-scriptlanguageextension-private-method-preferred-file-name-casing)() virtualconst |
| [int](class_int.md#class-int) | [\_profiling\_get\_accumulated\_data](#class-scriptlanguageextension-private-method-profiling-get-accumulated-data)(info\_array: `ScriptLanguageExtensionProfilingInfo*`, info\_max: [int](class_int.md#class-int)) virtualrequired |
| [int](class_int.md#class-int) | [\_profiling\_get\_frame\_data](#class-scriptlanguageextension-private-method-profiling-get-frame-data)(info\_array: `ScriptLanguageExtensionProfilingInfo*`, info\_max: [int](class_int.md#class-int)) virtualrequired |
| void | [\_profiling\_set\_save\_native\_calls](#class-scriptlanguageextension-private-method-profiling-set-save-native-calls)(enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_profiling\_start](#class-scriptlanguageextension-private-method-profiling-start)() virtualrequired |
| void | [\_profiling\_stop](#class-scriptlanguageextension-private-method-profiling-stop)() virtualrequired |
| void | [\_reload\_all\_scripts](#class-scriptlanguageextension-private-method-reload-all-scripts)() virtualrequired |
| void | [\_reload\_scripts](#class-scriptlanguageextension-private-method-reload-scripts)(scripts: [Array](class_array.md#class-array), soft\_reload: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_reload\_tool\_script](#class-scriptlanguageextension-private-method-reload-tool-script)(script: [Script](class_script.md#class-script), soft\_reload: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_remove\_named\_global\_constant](#class-scriptlanguageextension-private-method-remove-named-global-constant)(name: [StringName](class_stringname.md#class-stringname)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_supports\_builtin\_mode](#class-scriptlanguageextension-private-method-supports-builtin-mode)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_supports\_documentation](#class-scriptlanguageextension-private-method-supports-documentation)() virtualrequiredconst |
| void | [\_thread\_enter](#class-scriptlanguageextension-private-method-thread-enter)() virtualrequired |
| void | [\_thread\_exit](#class-scriptlanguageextension-private-method-thread-exit)() virtualrequired |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_validate](#class-scriptlanguageextension-private-method-validate)(script: [String](class_string.md#class-string), path: [String](class_string.md#class-string), validate\_functions: [bool](class_bool.md#class-bool), validate\_errors: [bool](class_bool.md#class-bool), validate\_warnings: [bool](class_bool.md#class-bool), validate\_safe\_lines: [bool](class_bool.md#class-bool)) virtualrequiredconst |
| [String](class_string.md#class-string) | [\_validate\_path](#class-scriptlanguageextension-private-method-validate-path)(path: [String](class_string.md#class-string)) virtualrequiredconst |

* * *

## Enumerations

enum **LookupResultType**: [🔗](#enum-scriptlanguageextension-lookupresulttype)

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_SCRIPT\_LOCATION** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_CONSTANT** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_PROPERTY** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_METHOD** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_SIGNAL** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_ENUM** = `6`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_TBD\_GLOBALSCOPE** = `7`

**Deprecated:** This constant may be changed or removed in future versions.

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_CLASS\_ANNOTATION** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_LOCAL\_CONSTANT** = `9`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_LOCAL\_VARIABLE** = `10`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LookupResultType](#enum-scriptlanguageextension-lookupresulttype) **LOOKUP\_RESULT\_MAX** = `11`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **CodeCompletionLocation**: [🔗](#enum-scriptlanguageextension-codecompletionlocation)

[CodeCompletionLocation](#enum-scriptlanguageextension-codecompletionlocation) **LOCATION\_LOCAL** = `0`

The option is local to the location of the code completion query - e.g. a local variable. Subsequent value of location represent options from the outer class, the exact value represent how far they are (in terms of inner classes).

[CodeCompletionLocation](#enum-scriptlanguageextension-codecompletionlocation) **LOCATION\_PARENT\_MASK** = `256`

The option is from the containing class or a parent class, relative to the location of the code completion query. Perform a bitwise OR with the class depth (e.g. `0` for the local class, `1` for the parent, `2` for the grandparent, etc.) to store the depth of an option in the class or a parent class.

[CodeCompletionLocation](#enum-scriptlanguageextension-codecompletionlocation) **LOCATION\_OTHER\_USER\_CODE** = `512`

The option is from user code which is not local and not in a derived class (e.g. Autoload Singletons).

[CodeCompletionLocation](#enum-scriptlanguageextension-codecompletionlocation) **LOCATION\_OTHER** = `1024`

The option is from other engine code, not covered by the other enum constants - e.g. built-in classes.

* * *

enum **CodeCompletionKind**: [🔗](#enum-scriptlanguageextension-codecompletionkind)

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_CLASS** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_FUNCTION** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_SIGNAL** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_VARIABLE** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_MEMBER** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_ENUM** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_CONSTANT** = `6`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_NODE\_PATH** = `7`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_FILE\_PATH** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_PLAIN\_TEXT** = `9`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[CodeCompletionKind](#enum-scriptlanguageextension-codecompletionkind) **CODE\_COMPLETION\_KIND\_MAX** = `10`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

void **\_add\_global\_constant**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-add-global-constant)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_add\_named\_global\_constant**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-add-named-global-constant)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_auto\_indent\_code**(code: [String](class_string.md#class-string), from\_line: [int](class_int.md#class-int), to\_line: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-auto-indent-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_can\_inherit\_from\_file**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-can-inherit-from-file)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_can\_make\_function**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-can-make-function)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_complete\_code**(code: [String](class_string.md#class-string), path: [String](class_string.md#class-string), owner: [Object](class_object.md#class-object)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-complete-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Object](class_object.md#class-object) **\_create\_script**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-create-script)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_debug\_get\_current\_stack\_info**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-get-current-stack-info)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_debug\_get\_error**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-debug-get-error)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_debug\_get\_globals**(max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-get-globals)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_debug\_get\_stack\_level\_count**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_debug\_get\_stack\_level\_function**(level: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-function)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

`void*` **\_debug\_get\_stack\_level\_instance**(level: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-instance)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_debug\_get\_stack\_level\_line**(level: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-line)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_debug\_get\_stack\_level\_locals**(level: [int](class_int.md#class-int), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-locals)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_debug\_get\_stack\_level\_members**(level: [int](class_int.md#class-int), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-members)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_debug\_get\_stack\_level\_source**(level: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-debug-get-stack-level-source)

Returns the source associated with a given debug stack position.

* * *

[String](class_string.md#class-string) **\_debug\_parse\_stack\_level\_expression**(level: [int](class_int.md#class-int), expression: [String](class_string.md#class-string), max\_subitems: [int](class_int.md#class-int), max\_depth: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-debug-parse-stack-level-expression)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_find\_function**(function: [String](class_string.md#class-string), code: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-find-function)

Returns the line where the function is defined in the code, or `-1` if the function is not present.

* * *

void **\_finish**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-finish)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_frame**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-frame)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_built\_in\_templates**(object: [StringName](class_stringname.md#class-stringname)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-built-in-templates)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_comment\_delimiters**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-comment-delimiters)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_doc\_comment\_delimiters**() virtualconst [🔗](#class-scriptlanguageextension-private-method-get-doc-comment-delimiters)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_extension**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-extension)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_global\_class\_name**(path: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-global-class-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-name)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_public\_annotations**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-public-annotations)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_public\_constants**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-public-constants)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_public\_functions**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-public-functions)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_recognized\_extensions**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-recognized-extensions)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_reserved\_words**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-reserved-words)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_string\_delimiters**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-string-delimiters)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_get\_type**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-get-type)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_handles\_global\_class\_type**(type: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-handles-global-class-type)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_has\_named\_classes**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-has-named-classes)

**Deprecated:** This method is not called by the engine.

* * *

void **\_init**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-init)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_control\_flow\_keyword**(keyword: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-is-control-flow-keyword)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_using\_templates**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-is-using-templates)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_lookup\_code**(code: [String](class_string.md#class-string), symbol: [String](class_string.md#class-string), path: [String](class_string.md#class-string), owner: [Object](class_object.md#class-object)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-lookup-code)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_make\_function**(class\_name: [String](class_string.md#class-string), function\_name: [String](class_string.md#class-string), function\_args: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-make-function)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Script](class_script.md#class-script) **\_make\_template**(template: [String](class_string.md#class-string), class\_name: [String](class_string.md#class-string), base\_class\_name: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-make-template)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_open\_in\_external\_editor**(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-open-in-external-editor)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_overrides\_external\_editor**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-overrides-external-editor)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[ScriptNameCasing](class_scriptlanguage.md#enum-scriptlanguage-scriptnamecasing) **\_preferred\_file\_name\_casing**() virtualconst [🔗](#class-scriptlanguageextension-private-method-preferred-file-name-casing)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_profiling\_get\_accumulated\_data**(info\_array: `ScriptLanguageExtensionProfilingInfo*`, info\_max: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-profiling-get-accumulated-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_profiling\_get\_frame\_data**(info\_array: `ScriptLanguageExtensionProfilingInfo*`, info\_max: [int](class_int.md#class-int)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-profiling-get-frame-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_profiling\_set\_save\_native\_calls**(enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-profiling-set-save-native-calls)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_profiling\_start**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-profiling-start)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_profiling\_stop**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-profiling-stop)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_reload\_all\_scripts**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-reload-all-scripts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_reload\_scripts**(scripts: [Array](class_array.md#class-array), soft\_reload: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-reload-scripts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_reload\_tool\_script**(script: [Script](class_script.md#class-script), soft\_reload: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-reload-tool-script)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_remove\_named\_global\_constant**(name: [StringName](class_stringname.md#class-stringname)) virtualrequired [🔗](#class-scriptlanguageextension-private-method-remove-named-global-constant)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_supports\_builtin\_mode**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-supports-builtin-mode)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_supports\_documentation**() virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-supports-documentation)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_thread\_enter**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-thread-enter)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_thread\_exit**() virtualrequired [🔗](#class-scriptlanguageextension-private-method-thread-exit)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_validate**(script: [String](class_string.md#class-string), path: [String](class_string.md#class-string), validate\_functions: [bool](class_bool.md#class-bool), validate\_errors: [bool](class_bool.md#class-bool), validate\_warnings: [bool](class_bool.md#class-bool), validate\_safe\_lines: [bool](class_bool.md#class-bool)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-validate)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[String](class_string.md#class-string) **\_validate\_path**(path: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-scriptlanguageextension-private-method-validate-path)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_scriptlanguage.md "ScriptLanguage") [Next](class_semaphore.md "Semaphore")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scriptlanguage.md "ScriptLanguage") [Next](class_semaphore.md "Semaphore")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).