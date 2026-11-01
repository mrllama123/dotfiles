---
title: PackedFloat64Array — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packedfloat64array.html
crawled_at: "2026-08-13T10:20:39+12:00"
content_hash: 1ff3193deb99251d5d364bd8d754f41326dcc688c8d0c7ab7dab9b8743738fe0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedFloat64Array

* * *

# PackedFloat64Array

A packed array of 64-bit floating-point values.

## Description

An array specifically designed to hold 64-bit floating-point values (double). Packs data tightly, so it saves memory for large array sizes.

If you only need to pack 32-bit floats tightly, see [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for a more memory-friendly alternative.

**Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedFloat64Array** versus `Array[float]`). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as [Array.map()](class_array.md#class-array-method-map). Typed arrays are in turn faster to iterate on and modify than untyped arrays.

**Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use [duplicate()](#class-packedfloat64array-method-duplicate). This is _not_ the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will _not_ affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Constructors

|     |     |
| --- | --- |
| [PackedFloat64Array](#class-packedfloat64array) | [PackedFloat64Array](#class-packedfloat64array-constructor-packedfloat64array)() |
| [PackedFloat64Array](#class-packedfloat64array) | [PackedFloat64Array](#class-packedfloat64array-constructor-packedfloat64array)(from: [PackedFloat64Array](#class-packedfloat64array)) |
| [PackedFloat64Array](#class-packedfloat64array) | [PackedFloat64Array](#class-packedfloat64array-constructor-packedfloat64array)(from: [Array](class_array.md#class-array)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [append](#class-packedfloat64array-method-append)(value: [float](class_float.md#class-float)) |
| void | [append\_array](#class-packedfloat64array-method-append-array)(array: [PackedFloat64Array](#class-packedfloat64array)) |
| [int](class_int.md#class-int) | [bsearch](#class-packedfloat64array-method-bsearch)(value: [float](class_float.md#class-float), before: [bool](class_bool.md#class-bool) = true) |
| void | [clear](#class-packedfloat64array-method-clear)() |
| [int](class_int.md#class-int) | [count](#class-packedfloat64array-method-count)(value: [float](class_float.md#class-float)) const |
| [PackedFloat64Array](#class-packedfloat64array) | [duplicate](#class-packedfloat64array-method-duplicate)() |
| [bool](class_bool.md#class-bool) | [erase](#class-packedfloat64array-method-erase)(value: [float](class_float.md#class-float)) |
| void | [fill](#class-packedfloat64array-method-fill)(value: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [find](#class-packedfloat64array-method-find)(value: [float](class_float.md#class-float), from: [int](class_int.md#class-int) = 0) const |
| [float](class_float.md#class-float) | [get](#class-packedfloat64array-method-get)(index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has](#class-packedfloat64array-method-has)(value: [float](class_float.md#class-float)) const |
| [int](class_int.md#class-int) | [insert](#class-packedfloat64array-method-insert)(at\_index: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-packedfloat64array-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [push\_back](#class-packedfloat64array-method-push-back)(value: [float](class_float.md#class-float)) |
| void | [remove\_at](#class-packedfloat64array-method-remove-at)(index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [resize](#class-packedfloat64array-method-resize)(new\_size: [int](class_int.md#class-int)) |
| void | [reverse](#class-packedfloat64array-method-reverse)() |
| [int](class_int.md#class-int) | [rfind](#class-packedfloat64array-method-rfind)(value: [float](class_float.md#class-float), from: [int](class_int.md#class-int) = -1) const |
| void | [set](#class-packedfloat64array-method-set)(index: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [size](#class-packedfloat64array-method-size)() const |
| [PackedFloat64Array](#class-packedfloat64array) | [slice](#class-packedfloat64array-method-slice)(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const |
| void | [sort](#class-packedfloat64array-method-sort)() |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_byte\_array](#class-packedfloat64array-method-to-byte-array)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-packedfloat64array-operator-neq-packedfloat64array)(right: [PackedFloat64Array](#class-packedfloat64array)) |
| [PackedFloat64Array](#class-packedfloat64array) | [operator +](#class-packedfloat64array-operator-sum-packedfloat64array)(right: [PackedFloat64Array](#class-packedfloat64array)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-packedfloat64array-operator-eq-packedfloat64array)(right: [PackedFloat64Array](#class-packedfloat64array)) |
| [float](class_float.md#class-float) | [operator \[\]](#class-packedfloat64array-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constructor Descriptions

[PackedFloat64Array](#class-packedfloat64array) **PackedFloat64Array**() [🔗](#class-packedfloat64array-constructor-packedfloat64array)

Constructs an empty **PackedFloat64Array**.

* * *

[PackedFloat64Array](#class-packedfloat64array) **PackedFloat64Array**(from: [PackedFloat64Array](#class-packedfloat64array))

Constructs a **PackedFloat64Array** as a copy of the given **PackedFloat64Array**.

* * *

[PackedFloat64Array](#class-packedfloat64array) **PackedFloat64Array**(from: [Array](class_array.md#class-array))

Constructs a new **PackedFloat64Array**. Optionally, you can pass in a generic [Array](class_array.md#class-array) that will be converted.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **append**(value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-append)

Appends an element at the end of the array (alias of [push\_back()](#class-packedfloat64array-method-push-back)).

* * *

void **append\_array**(array: [PackedFloat64Array](#class-packedfloat64array)) [🔗](#class-packedfloat64array-method-append-array)

Appends a **PackedFloat64Array** at the end of this array.

* * *

[int](class_int.md#class-int) **bsearch**(value: [float](class_float.md#class-float), before: [bool](class_bool.md#class-bool) = true) [🔗](#class-packedfloat64array-method-bsearch)

Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a `before` specifier can be passed. If `false`, the returned index comes after all existing entries of the value in the array.

**Note:** Calling [bsearch()](#class-packedfloat64array-method-bsearch) on an unsorted array results in unexpected behavior.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

void **clear**() [🔗](#class-packedfloat64array-method-clear)

Clears the array. This is equivalent to using [resize()](#class-packedfloat64array-method-resize) with a size of `0`.

* * *

[int](class_int.md#class-int) **count**(value: [float](class_float.md#class-float)) const [🔗](#class-packedfloat64array-method-count)

Returns the number of times an element is in the array.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

[PackedFloat64Array](#class-packedfloat64array) **duplicate**() [🔗](#class-packedfloat64array-method-duplicate)

Creates a copy of the array, and returns it.

* * *

[bool](class_bool.md#class-bool) **erase**(value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-erase)

Removes the first occurrence of a value from the array and returns `true`. If the value does not exist in the array, nothing happens and `false` is returned. To remove an element by index, use [remove\_at()](#class-packedfloat64array-method-remove-at) instead.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

void **fill**(value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-fill)

Assigns the given value to all elements in the array. This can typically be used together with [resize()](#class-packedfloat64array-method-resize) to create an array with a given size and initialized elements.

* * *

[int](class_int.md#class-int) **find**(value: [float](class_float.md#class-float), from: [int](class_int.md#class-int) = 0) const [🔗](#class-packedfloat64array-method-find)

Searches the array for a value and returns its index or `-1` if not found. Optionally, the initial search index can be passed.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

[float](class_float.md#class-float) **get**(index: [int](class_int.md#class-int)) const [🔗](#class-packedfloat64array-method-get)

Returns the 64-bit float at the given `index` in the array. If `index` out-of-bounds or negative, this method fails and returns `0.0`.

This method is similar (but not identical) to the `[]` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

* * *

[bool](class_bool.md#class-bool) **has**(value: [float](class_float.md#class-float)) const [🔗](#class-packedfloat64array-method-has)

Returns `true` if the array contains `value`.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

[int](class_int.md#class-int) **insert**(at\_index: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-insert)

Inserts a new element at a given position in the array. The position must be valid, or at the end of the array ( `idx == size()`).

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-packedfloat64array-method-is-empty)

Returns `true` if the array is empty.

* * *

[bool](class_bool.md#class-bool) **push\_back**(value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-push-back)

Appends an element at the end of the array.

* * *

void **remove\_at**(index: [int](class_int.md#class-int)) [🔗](#class-packedfloat64array-method-remove-at)

Removes an element from the array by index.

* * *

[int](class_int.md#class-int) **resize**(new\_size: [int](class_int.md#class-int)) [🔗](#class-packedfloat64array-method-resize)

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling [resize()](#class-packedfloat64array-method-resize) once and assigning the new values is faster than adding new elements one by one.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the following [Error](class_@globalscope.md#enum-globalscope-error) constants if this method fails: [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if the size is negative, or [@GlobalScope.ERR\_OUT\_OF\_MEMORY](class_@globalscope.md#class-globalscope-constant-err-out-of-memory) if allocations fail. Use [size()](#class-packedfloat64array-method-size) to find the actual size of the array after resize.

* * *

void **reverse**() [🔗](#class-packedfloat64array-method-reverse)

Reverses the order of the elements in the array.

* * *

[int](class_int.md#class-int) **rfind**(value: [float](class_float.md#class-float), from: [int](class_int.md#class-int) = -1) const [🔗](#class-packedfloat64array-method-rfind)

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

void **set**(index: [int](class_int.md#class-int), value: [float](class_float.md#class-float)) [🔗](#class-packedfloat64array-method-set)

Changes the float at the given index.

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-packedfloat64array-method-size)

Returns the number of elements in the array.

* * *

[PackedFloat64Array](#class-packedfloat64array) **slice**(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const [🔗](#class-packedfloat64array-method-slice)

Returns the slice of the **PackedFloat64Array**, from `begin` (inclusive) to `end` (exclusive), as a new **PackedFloat64Array**.

The absolute value of `begin` and `end` will be clamped to the array size, so the default value for `end` makes it slice to the size of the array by default (i.e. `arr.slice(1)` is a shorthand for `arr.slice(1, arr.size())`).

If either `begin` or `end` are negative, they will be relative to the end of the array (i.e. `arr.slice(0, -2)` is a shorthand for `arr.slice(0, arr.size() - 2)`).

* * *

void **sort**() [🔗](#class-packedfloat64array-method-sort)

Sorts the elements of the array in ascending order.

**Note:** [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_byte\_array**() const [🔗](#class-packedfloat64array-method-to-byte-array)

Returns a copy of the data converted to a [PackedByteArray](class_packedbytearray.md#class-packedbytearray), where each element has been encoded as 8 bytes.

The size of the new array will be `float64_array.size() * 8`.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [PackedFloat64Array](#class-packedfloat64array)) [🔗](#class-packedfloat64array-operator-neq-packedfloat64array)

Returns `true` if contents of the arrays differ.

* * *

[PackedFloat64Array](#class-packedfloat64array) **operator +**(right: [PackedFloat64Array](#class-packedfloat64array)) [🔗](#class-packedfloat64array-operator-sum-packedfloat64array)

Returns a new **PackedFloat64Array** with contents of `right` added at the end of this array. For better performance, consider using [append\_array()](#class-packedfloat64array-method-append-array) instead.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [PackedFloat64Array](#class-packedfloat64array)) [🔗](#class-packedfloat64array-operator-eq-packedfloat64array)

Returns `true` if contents of both arrays are the same, i.e. they have all equal doubles at the corresponding indices.

* * *

[float](class_float.md#class-float) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-packedfloat64array-operator-idx-int)

Returns the [float](class_float.md#class-float) at index `index`. Negative indices can be used to access the elements starting from the end. Using index out of array's bounds will result in an error.

[Previous](class_packedfloat32array.md "PackedFloat32Array") [Next](class_packedint32array.md "PackedInt32Array")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packedfloat32array.md "PackedFloat32Array") [Next](class_packedint32array.md "PackedInt32Array")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).