---
title: PackedColorArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packedcolorarray.html
crawled_at: "2026-08-13T10:21:15+12:00"
content_hash: 42033b55b781dd0f12b2294a22416b20587647d782fbc3b955e276474c7d9399
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedColorArray

* * *

# PackedColorArray

A packed array of [Color](class_color.md#class-color) s.

## Description

An array specifically designed to hold [Color](class_color.md#class-color). Packs data tightly, so it saves memory for large array sizes.

**Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedColorArray** versus `Array[Color]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as [Array.map()](class_array.md#class-array-method-map). Typed arrays are in turn faster to iterate on and modify than untyped arrays.

**Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use [duplicate()](#class-packedcolorarray-method-duplicate). This is _not_ the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will _not_ affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Constructors

|     |     |
| --- | --- |
| [PackedColorArray](#class-packedcolorarray) | [PackedColorArray](#class-packedcolorarray-constructor-packedcolorarray)() |
| [PackedColorArray](#class-packedcolorarray) | [PackedColorArray](#class-packedcolorarray-constructor-packedcolorarray)(from: [PackedColorArray](#class-packedcolorarray)) |
| [PackedColorArray](#class-packedcolorarray) | [PackedColorArray](#class-packedcolorarray-constructor-packedcolorarray)(from: [Array](class_array.md#class-array)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [append](#class-packedcolorarray-method-append)(value: [Color](class_color.md#class-color)) |
| void | [append\_array](#class-packedcolorarray-method-append-array)(array: [PackedColorArray](#class-packedcolorarray)) |
| [int](class_int.md#class-int) | [bsearch](#class-packedcolorarray-method-bsearch)(value: [Color](class_color.md#class-color), before: [bool](class_bool.md#class-bool) = true) |
| void | [clear](#class-packedcolorarray-method-clear)() |
| [int](class_int.md#class-int) | [count](#class-packedcolorarray-method-count)(value: [Color](class_color.md#class-color)) const |
| [PackedColorArray](#class-packedcolorarray) | [duplicate](#class-packedcolorarray-method-duplicate)() |
| [bool](class_bool.md#class-bool) | [erase](#class-packedcolorarray-method-erase)(value: [Color](class_color.md#class-color)) |
| void | [fill](#class-packedcolorarray-method-fill)(value: [Color](class_color.md#class-color)) |
| [int](class_int.md#class-int) | [find](#class-packedcolorarray-method-find)(value: [Color](class_color.md#class-color), from: [int](class_int.md#class-int) = 0) const |
| [Color](class_color.md#class-color) | [get](#class-packedcolorarray-method-get)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has](#class-packedcolorarray-method-has)(value: [Color](class_color.md#class-color)) const |
| [int](class_int.md#class-int) | [insert](#class-packedcolorarray-method-insert)(at\_index: [int](class_int.md#class-int), value: [Color](class_color.md#class-color)) |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-packedcolorarray-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [push\_back](#class-packedcolorarray-method-push-back)(value: [Color](class_color.md#class-color)) |
| void | [remove\_at](#class-packedcolorarray-method-remove-at)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [resize](#class-packedcolorarray-method-resize)(new\_size: [int](class_int.md#class-int)) |
| void | [reverse](#class-packedcolorarray-method-reverse)() |
| [int](class_int.md#class-int) | [rfind](#class-packedcolorarray-method-rfind)(value: [Color](class_color.md#class-color), from: [int](class_int.md#class-int) = -1) const |
| void | [set](#class-packedcolorarray-method-set)(index: [int](class_int.md#class-int), value: [Color](class_color.md#class-color)) |
| [int](class_int.md#class-int) | [size](#class-packedcolorarray-method-size)() const |
| [PackedColorArray](#class-packedcolorarray) | [slice](#class-packedcolorarray-method-slice)(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const |
| void | [sort](#class-packedcolorarray-method-sort)() |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_byte\_array](#class-packedcolorarray-method-to-byte-array)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-packedcolorarray-operator-neq-packedcolorarray)(right: [PackedColorArray](#class-packedcolorarray)) |
| [PackedColorArray](#class-packedcolorarray) | [operator +](#class-packedcolorarray-operator-sum-packedcolorarray)(right: [PackedColorArray](#class-packedcolorarray)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-packedcolorarray-operator-eq-packedcolorarray)(right: [PackedColorArray](#class-packedcolorarray)) |
| [Color](class_color.md#class-color) | [operator \[\]](#class-packedcolorarray-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constructor Descriptions

[PackedColorArray](#class-packedcolorarray) **PackedColorArray**() [🔗](#class-packedcolorarray-constructor-packedcolorarray)

Constructs an empty **PackedColorArray**.

* * *

[PackedColorArray](#class-packedcolorarray) **PackedColorArray**(from: [PackedColorArray](#class-packedcolorarray))

Constructs a **PackedColorArray** as a copy of the given **PackedColorArray**.

* * *

[PackedColorArray](#class-packedcolorarray) **PackedColorArray**(from: [Array](class_array.md#class-array))

Constructs a new **PackedColorArray**. Optionally, you can pass in a generic [Array](class_array.md#class-array) that will be converted.

**Note:** When initializing a **PackedColorArray** with elements, it must be initialized with an [Array](class_array.md#class-array) of [Color](class_color.md#class-color) values:

```
var array = PackedColorArray([Color(0.1, 0.2, 0.3), Color(0.4, 0.5, 0.6)])

```

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **append**(value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-append)

Appends an element at the end of the array (alias of [push\_back()](#class-packedcolorarray-method-push-back)).

* * *

void **append\_array**(array: [PackedColorArray](#class-packedcolorarray)) [🔗](#class-packedcolorarray-method-append-array)

Appends a **PackedColorArray** at the end of this array.

* * *

[int](class_int.md#class-int) **bsearch**(value: [Color](class_color.md#class-color), before: [bool](class_bool.md#class-bool) = true) [🔗](#class-packedcolorarray-method-bsearch)

Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.

**Note:** Calling [bsearch()](#class-packedcolorarray-method-bsearch) on an unsorted array results in unexpected behavior.

* * *

void **clear**() [🔗](#class-packedcolorarray-method-clear)

Clears the array. This is equivalent to using [resize()](#class-packedcolorarray-method-resize) with a size of `0`.

* * *

[int](class_int.md#class-int) **count**(value: [Color](class_color.md#class-color)) const [🔗](#class-packedcolorarray-method-count)

Returns the number of times an element is in the array.

* * *

[PackedColorArray](#class-packedcolorarray) **duplicate**() [🔗](#class-packedcolorarray-method-duplicate)

Creates a copy of the array, and returns it.

* * *

[bool](class_bool.md#class-bool) **erase**(value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-erase)

Removes the first occurrence of a value from the array and returns `true`. If the value does not exist in the array, nothing happens and `false` is returned. To remove an element by index, use [remove\_at()](#class-packedcolorarray-method-remove-at) instead.

* * *

void **fill**(value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-fill)

Assigns the given value to all elements in the array. This can typically be used together with [resize()](#class-packedcolorarray-method-resize) to create an array with a given size and initialized elements.

* * *

[int](class_int.md#class-int) **find**(value: [Color](class_color.md#class-color), from: [int](class_int.md#class-int) = 0) const [🔗](#class-packedcolorarray-method-find)

Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.

* * *

[Color](class_color.md#class-color) **get**(index: [int](class_int.md#class-int)) const [🔗](#class-packedcolorarray-method-get)

Returns the [Color](class_color.md#class-color) at the given `index` in the array. If `index` out-of-bounds or negative, this method fails and returns `Color(0, 0, 0, 1)`.

This method is similar (but not identical) to the `[]` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

* * *

[bool](class_bool.md#class-bool) **has**(value: [Color](class_color.md#class-color)) const [🔗](#class-packedcolorarray-method-has)

Returns `true` if the array contains `value`.

* * *

[int](class_int.md#class-int) **insert**(at\_index: [int](class_int.md#class-int), value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-insert)

Inserts a new element at a given position in the array. The position must be valid, or at the end of the array ( `idx == size()`).

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-packedcolorarray-method-is-empty)

Returns `true` if the array is empty.

* * *

[bool](class_bool.md#class-bool) **push\_back**(value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-push-back)

Appends a value to the array.

* * *

void **remove\_at**(index: [int](class_int.md#class-int)) [🔗](#class-packedcolorarray-method-remove-at)

Removes an element from the array by index.

* * *

[int](class_int.md#class-int) **resize**(new\_size: [int](class_int.md#class-int)) [🔗](#class-packedcolorarray-method-resize)

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling [resize()](#class-packedcolorarray-method-resize) once and assigning the new values is faster than adding new elements one by one.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the following [Error](class_@globalscope.md#enum-globalscope-error) constants if this method fails: [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if the size is negative, or [@GlobalScope.ERR\_OUT\_OF\_MEMORY](class_@globalscope.md#class-globalscope-constant-err-out-of-memory) if allocations fail. Use [size()](#class-packedcolorarray-method-size) to find the actual size of the array after resize.

* * *

void **reverse**() [🔗](#class-packedcolorarray-method-reverse)

Reverses the order of the elements in the array.

* * *

[int](class_int.md#class-int) **rfind**(value: [Color](class_color.md#class-color), from: [int](class_int.md#class-int) = -1) const [🔗](#class-packedcolorarray-method-rfind)

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

* * *

void **set**(index: [int](class_int.md#class-int), value: [Color](class_color.md#class-color)) [🔗](#class-packedcolorarray-method-set)

Changes the [Color](class_color.md#class-color) at the given index.

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-packedcolorarray-method-size)

Returns the number of elements in the array.

* * *

[PackedColorArray](#class-packedcolorarray) **slice**(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const [🔗](#class-packedcolorarray-method-slice)

Returns the slice of the **PackedColorArray**, from `begin` (inclusive) to `end` (exclusive), as a new **PackedColorArray**.

The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).

If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).

* * *

void **sort**() [🔗](#class-packedcolorarray-method-sort)

Sorts the elements of the array in ascending order.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_byte\_array**() const [🔗](#class-packedcolorarray-method-to-byte-array)

Returns a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) with each color encoded as bytes.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [PackedColorArray](#class-packedcolorarray)) [🔗](#class-packedcolorarray-operator-neq-packedcolorarray)

Returns `true` if contents of the arrays differ.

* * *

[PackedColorArray](#class-packedcolorarray) **operator +**(right: [PackedColorArray](#class-packedcolorarray)) [🔗](#class-packedcolorarray-operator-sum-packedcolorarray)

Returns a new **PackedColorArray** with contents of `right` added at the end of this array. For better performance, consider using [append\_array()](#class-packedcolorarray-method-append-array) instead.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [PackedColorArray](#class-packedcolorarray)) [🔗](#class-packedcolorarray-operator-eq-packedcolorarray)

Returns `true` if contents of both arrays are the same, i.e. they have all equal [Color](class_color.md#class-color) s at the corresponding indices.

* * *

[Color](class_color.md#class-color) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-packedcolorarray-operator-idx-int)

Returns the [Color](class_color.md#class-color) at index `index`. Negative indices can be used to access the elements starting from the end. Using index out of array's bounds will result in an error.

[Previous](class_packedbytearray.md "PackedByteArray") [Next](class_packedfloat32array.md "PackedFloat32Array")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packedbytearray.md "PackedByteArray") [Next](class_packedfloat32array.md "PackedFloat32Array")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).