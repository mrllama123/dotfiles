---
title: PackedStringArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packedstringarray.html
crawled_at: "2026-08-13T10:39:04+12:00"
content_hash: f613d4d22876e543012c19ceecc943a236bf56ff0a66d7d7c40646ac846a239e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedStringArray

* * *

# PackedStringArray

A packed array of [String](class_string.md#class-string) s.

## Description

An array specifically designed to hold [String](class_string.md#class-string) s. Packs data tightly, so it saves memory for large array sizes.

If you want to join the strings in the array, use [String.join()](class_string.md#class-string-method-join).

```
var string_array = PackedStringArray(["hello", "world"])
var string = " ".join(string_array)
print(string) # "hello world"

```

**Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedStringArray** versus `Array[String]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as [Array.map()](class_array.md#class-array-method-map). Typed arrays are in turn faster to iterate on and modify than untyped arrays.

**Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use [duplicate()](#class-packedstringarray-method-duplicate). This is _not_ the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will _not_ affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Constructors

|     |     |
| --- | --- |
| [PackedStringArray](#class-packedstringarray) | [PackedStringArray](#class-packedstringarray-constructor-packedstringarray)() |
| [PackedStringArray](#class-packedstringarray) | [PackedStringArray](#class-packedstringarray-constructor-packedstringarray)(from: [PackedStringArray](#class-packedstringarray)) |
| [PackedStringArray](#class-packedstringarray) | [PackedStringArray](#class-packedstringarray-constructor-packedstringarray)(from: [Array](class_array.md#class-array)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [append](#class-packedstringarray-method-append)(value: [String](class_string.md#class-string)) |
| void | [append\_array](#class-packedstringarray-method-append-array)(array: [PackedStringArray](#class-packedstringarray)) |
| [int](class_int.md#class-int) | [bsearch](#class-packedstringarray-method-bsearch)(value: [String](class_string.md#class-string), before: [bool](class_bool.md#class-bool) = true) |
| void | [clear](#class-packedstringarray-method-clear)() |
| [int](class_int.md#class-int) | [count](#class-packedstringarray-method-count)(value: [String](class_string.md#class-string)) const |
| [PackedStringArray](#class-packedstringarray) | [duplicate](#class-packedstringarray-method-duplicate)() |
| [bool](class_bool.md#class-bool) | [erase](#class-packedstringarray-method-erase)(value: [String](class_string.md#class-string)) |
| void | [fill](#class-packedstringarray-method-fill)(value: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [find](#class-packedstringarray-method-find)(value: [String](class_string.md#class-string), from: [int](class_int.md#class-int) = 0) const |
| [String](class_string.md#class-string) | [get](#class-packedstringarray-method-get)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has](#class-packedstringarray-method-has)(value: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [insert](#class-packedstringarray-method-insert)(at\_index: [int](class_int.md#class-int), value: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-packedstringarray-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [push\_back](#class-packedstringarray-method-push-back)(value: [String](class_string.md#class-string)) |
| void | [remove\_at](#class-packedstringarray-method-remove-at)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [resize](#class-packedstringarray-method-resize)(new\_size: [int](class_int.md#class-int)) |
| void | [reverse](#class-packedstringarray-method-reverse)() |
| [int](class_int.md#class-int) | [rfind](#class-packedstringarray-method-rfind)(value: [String](class_string.md#class-string), from: [int](class_int.md#class-int) = -1) const |
| void | [set](#class-packedstringarray-method-set)(index: [int](class_int.md#class-int), value: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [size](#class-packedstringarray-method-size)() const |
| [PackedStringArray](#class-packedstringarray) | [slice](#class-packedstringarray-method-slice)(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const |
| void | [sort](#class-packedstringarray-method-sort)() |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_byte\_array](#class-packedstringarray-method-to-byte-array)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-packedstringarray-operator-neq-packedstringarray)(right: [PackedStringArray](#class-packedstringarray)) |
| [PackedStringArray](#class-packedstringarray) | [operator +](#class-packedstringarray-operator-sum-packedstringarray)(right: [PackedStringArray](#class-packedstringarray)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-packedstringarray-operator-eq-packedstringarray)(right: [PackedStringArray](#class-packedstringarray)) |
| [String](class_string.md#class-string) | [operator \[\]](#class-packedstringarray-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constructor Descriptions

[PackedStringArray](#class-packedstringarray) **PackedStringArray**() [🔗](#class-packedstringarray-constructor-packedstringarray)

Constructs an empty **PackedStringArray**.

* * *

[PackedStringArray](#class-packedstringarray) **PackedStringArray**(from: [PackedStringArray](#class-packedstringarray))

Constructs a **PackedStringArray** as a copy of the given **PackedStringArray**.

* * *

[PackedStringArray](#class-packedstringarray) **PackedStringArray**(from: [Array](class_array.md#class-array))

Constructs a new **PackedStringArray**. Optionally, you can pass in a generic [Array](class_array.md#class-array) that will be converted.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **append**(value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-append)

Appends an element at the end of the array (alias of [push\_back()](#class-packedstringarray-method-push-back)).

* * *

void **append\_array**(array: [PackedStringArray](#class-packedstringarray)) [🔗](#class-packedstringarray-method-append-array)

Appends a **PackedStringArray** at the end of this array.

* * *

[int](class_int.md#class-int) **bsearch**(value: [String](class_string.md#class-string), before: [bool](class_bool.md#class-bool) = true) [🔗](#class-packedstringarray-method-bsearch)

Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.

**Note:** Calling [bsearch()](#class-packedstringarray-method-bsearch) on an unsorted array results in unexpected behavior.

* * *

void **clear**() [🔗](#class-packedstringarray-method-clear)

Clears the array. This is equivalent to using [resize()](#class-packedstringarray-method-resize) with a size of `0`.

* * *

[int](class_int.md#class-int) **count**(value: [String](class_string.md#class-string)) const [🔗](#class-packedstringarray-method-count)

Returns the number of times an element is in the array.

* * *

[PackedStringArray](#class-packedstringarray) **duplicate**() [🔗](#class-packedstringarray-method-duplicate)

Creates a copy of the array, and returns it.

* * *

[bool](class_bool.md#class-bool) **erase**(value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-erase)

Removes the first occurrence of a value from the array and returns `true`. If the value does not exist in the array, nothing happens and `false` is returned. To remove an element by index, use [remove\_at()](#class-packedstringarray-method-remove-at) instead.

* * *

void **fill**(value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-fill)

Assigns the given value to all elements in the array. This can typically be used together with [resize()](#class-packedstringarray-method-resize) to create an array with a given size and initialized elements.

* * *

[int](class_int.md#class-int) **find**(value: [String](class_string.md#class-string), from: [int](class_int.md#class-int) = 0) const [🔗](#class-packedstringarray-method-find)

Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.

* * *

[String](class_string.md#class-string) **get**(index: [int](class_int.md#class-int)) const [🔗](#class-packedstringarray-method-get)

Returns the [String](class_string.md#class-string) at the given `index` in the array. Returns an empty string and prints an error if the access is out of bounds. Negative indices are not supported; they will always consider the value to be out of bounds and return an empty string.

This is similar to using the `[]` operator ( `array[index]`), except that operator supports negative indices and causes a debugger break if out-of-bounds access is performed.

* * *

[bool](class_bool.md#class-bool) **has**(value: [String](class_string.md#class-string)) const [🔗](#class-packedstringarray-method-has)

Returns `true` if the array contains `value`.

* * *

[int](class_int.md#class-int) **insert**(at\_index: [int](class_int.md#class-int), value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-insert)

Inserts a new element at a given position in the array. The position must be valid, or at the end of the array ( `idx == size()`).

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-packedstringarray-method-is-empty)

Returns `true` if the array is empty.

* * *

[bool](class_bool.md#class-bool) **push\_back**(value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-push-back)

Appends a string element at end of the array.

* * *

void **remove\_at**(index: [int](class_int.md#class-int)) [🔗](#class-packedstringarray-method-remove-at)

Removes an element from the array by index.

* * *

[int](class_int.md#class-int) **resize**(new\_size: [int](class_int.md#class-int)) [🔗](#class-packedstringarray-method-resize)

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling [resize()](#class-packedstringarray-method-resize) once and assigning the new values is faster than adding new elements one by one.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the following [Error](class_@globalscope.md#enum-globalscope-error) constants if this method fails: [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if the size is negative, or [@GlobalScope.ERR\_OUT\_OF\_MEMORY](class_@globalscope.md#class-globalscope-constant-err-out-of-memory) if allocations fail. Use [size()](#class-packedstringarray-method-size) to find the actual size of the array after resize.

* * *

void **reverse**() [🔗](#class-packedstringarray-method-reverse)

Reverses the order of the elements in the array.

* * *

[int](class_int.md#class-int) **rfind**(value: [String](class_string.md#class-string), from: [int](class_int.md#class-int) = -1) const [🔗](#class-packedstringarray-method-rfind)

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

* * *

void **set**(index: [int](class_int.md#class-int), value: [String](class_string.md#class-string)) [🔗](#class-packedstringarray-method-set)

Changes the [String](class_string.md#class-string) at the given index.

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-packedstringarray-method-size)

Returns the number of elements in the array.

* * *

[PackedStringArray](#class-packedstringarray) **slice**(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const [🔗](#class-packedstringarray-method-slice)

Returns the slice of the **PackedStringArray**, from `begin` (inclusive) to `end` (exclusive), as a new **PackedStringArray**.

The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).

If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).

* * *

void **sort**() [🔗](#class-packedstringarray-method-sort)

Sorts the elements of the array in ascending order.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_byte\_array**() const [🔗](#class-packedstringarray-method-to-byte-array)

Returns a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) with each string encoded as UTF-8. Strings are `null` terminated.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [PackedStringArray](#class-packedstringarray)) [🔗](#class-packedstringarray-operator-neq-packedstringarray)

Returns `true` if contents of the arrays differ.

* * *

[PackedStringArray](#class-packedstringarray) **operator +**(right: [PackedStringArray](#class-packedstringarray)) [🔗](#class-packedstringarray-operator-sum-packedstringarray)

Returns a new **PackedStringArray** with contents of `right` added at the end of this array. For better performance, consider using [append\_array()](#class-packedstringarray-method-append-array) instead.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [PackedStringArray](#class-packedstringarray)) [🔗](#class-packedstringarray-operator-eq-packedstringarray)

Returns `true` if contents of both arrays are the same, i.e. they have all equal [String](class_string.md#class-string) s at the corresponding indices.

* * *

[String](class_string.md#class-string) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-packedstringarray-operator-idx-int)

Returns the [String](class_string.md#class-string) at index `index`. Negative indices can be used to access the elements starting from the end. Using index out of array's bounds will result in an error.

[Previous](class_packedint64array.md "PackedInt64Array") [Next](class_packedvector2array.md "PackedVector2Array")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packedint64array.md "PackedInt64Array") [Next](class_packedvector2array.md "PackedVector2Array")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).