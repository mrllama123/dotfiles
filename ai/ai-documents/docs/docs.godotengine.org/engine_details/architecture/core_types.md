---
title: Core types — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/architecture/core_types.html
crawled_at: "2026-08-13T10:27:13+12:00"
content_hash: feea9f7117f48696a4bea8d6b4e5de216646d1b548f5dc191519b70a37d0deb8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Engine architecture](index.md)
  - Core types
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/architecture/core_types.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Core types

Godot has a rich set of classes and templates that compose its core,
and everything is built upon them.

This reference will try to list them in order for their better
understanding.

## Definitions

Godot uses the standard C99 datatypes, such as `uint8_t`,
`uint32_t`, `int64_t`, etc. which are nowadays supported by every
compiler. Reinventing the wheel for those is not fun, as it makes code
more difficult to read.

In general, care is not taken to use the most efficient datatype for a
given task unless using large structures or arrays. `int` is used
through most of the code unless necessary. This is done because nowadays
every device has at least a 32-bit bus and can do such operations in
one cycle. It makes code more readable too.

For files or memory sizes, `size_t` is used, which is guaranteed to be
64-bit.

For Unicode characters, CharType instead of wchar\_t is used, because
many architectures have 4 bytes long wchar\_t, where 2 bytes might be
desired. However, by default, this has not been forced and CharType maps
directly to wchar\_t.

- [core/typedefs.h](https://github.com/godotengine/godot/blob/master/core/typedefs.h)


## Memory model

PC is a wonderful architecture. Computers often have gigabytes of RAM,
terabytes of storage and gigahertz of CPU, and when an application needs
more resources the OS will swap out the inactive ones. Other
architectures (like mobile or consoles) are in general more limited.

The most common memory model is the heap, where an application will
request a region of memory, and the underlying OS will try to fit it
somewhere and return it. This often works best and is flexible,
but over time and with abuse, this can lead to segmentation.

Segmentation slowly creates holes that are too small for most common
allocations, so that memory is wasted. There is a lot of literature
about heap and segmentation, so this topic will not be developed
further here. Modern operating systems use paged memory, which helps
mitigate the problem of segmentation but doesn't solve it.

However, in many studies and tests, it is shown that given enough
memory, if the maximum allocation size is below a given threshold in
proportion to the maximum heap size and proportion of memory intended to
be unused, segmentation will not be a problem over time as it will
remain constant. In other words, leave 10-20% of your memory free
and perform all small allocations and you are fine.

Godot ensures that all objects that can be allocated dynamically are
small (less than a few kB at most). But what happens if an allocation is
too large (like an image or mesh geometry or large array)? In this case
Godot has the option to use a dynamic memory pool. This memory needs to
be locked to be accessed, and if an allocation runs out of memory, the
pool will be rearranged and compacted on demand. Depending on the need
of the game, the programmer can configure the dynamic memory pool size.

## Allocating memory

Godot has many tools for tracking memory usage in a game, especially
during debug. Because of this, the regular C and C++ library calls
should not be used. Instead, a few other ones are provided.

For C-style allocation, Godot provides a few macros:

```
memalloc()
memrealloc()
memfree()

```

These are equivalent to the usual `malloc()`, `realloc()`, and `free()`
of the C standard library.

For C++-style allocation, special macros are provided:

```
memnew(Class / Class(args))
memdelete(instance)

memnew_arr(Class, amount)
memdelete_arr(pointer_to_array)

```

These are equivalent to `new`, `delete`, `new[]`, and `delete[]`
respectively.

memnew/memdelete also use a little C++ magic and notify Objects right
after they are created, and right before they are deleted.

For dynamic memory, use one of Godot's sequence types such as `Vector<>`
or `LocalVector<>`. `Vector<>` behaves much like an STL `std::vector<>`,
but is simpler and uses Copy-On-Write (CoW) semantics. CoW copies of
`Vector<>` can safely access the same data from different threads, but
several threads cannot access the same `Vector<>` instance safely.
It can be safely passed via public API if it has a `Packed` alias.

The `Packed*Array` [types](../../tutorials/scripting/gdscript/gdscript_basics.md#doc-gdscript-packed-arrays) are aliases
for specific `Vector<*>` types (e.g., `PackedByteArray`,
`PackedInt32Array`) that are accessible via GDScript. Outside of core,
prefer using the `Packed*Array` aliases for functions exposed to scripts,
and `Vector<>` for other occasions.

`LocalVector<>` is much more like `std::vector` than `Vector<>`.
It is non-CoW, with less overhead. It is intended for internal use where
the benefits of CoW are not needed. Note that neither `LocalVector<>`
nor `Vector<>` are drop-in replacements for each other. They are two
unrelated types with similar interfaces, both using a buffer as their
storage strategy.

`List<>` is another Godot sequence type, using a doubly-linked list as
its storage strategy. Prefer `Vector<>` (or `LocalVector<>`) over
`List<>` unless you're sure you need it, as cache locality and memory
fragmentation tend to be more important with small collections.

- [core/os/memory.h](https://github.com/godotengine/godot/blob/master/core/os/memory.h)


## Containers

Godot provides its own set of containers, which means STL containers like `std::string`
and `std::vector` are generally not used in the codebase. See [Why does Godot not use STL (Standard Template Library)?](../../about/faq.md#doc-faq-why-not-stl) for more information.

A 📜 icon denotes the type is part of [Variant](variant_class.md#doc-variant-class). This
means it can be used as a parameter or return value of a method exposed to the
scripting API.

| Godot datatype | Closest C++ STL datatype | Comment |
| --- | --- | --- |
| [String](https://github.com/godotengine/godot/blob/master/core/string/ustring.h) 📜 | `std::string` | **Use this as the "default" string type.** `String` uses UTF-32 encoding<br>to simplify processing thanks to its fixed character size. |
| [Vector](https://github.com/godotengine/godot/blob/master/core/templates/vector.h) | `std::vector` | **Use this as the "default" vector type.** Uses copy-on-write (COW) semantics.<br>This means it's generally slower but can be copied around almost for free.<br>Use `LocalVector` instead where COW isn't needed and performance matters. |
| [HashSet](https://github.com/godotengine/godot/blob/master/core/templates/hash_set.h) | `std::unordered_set` | **Use this as the "default" set type.** |
| [AHashMap](https://github.com/godotengine/godot/blob/master/core/templates/a_hash_map.h) | `std::unordered_map` | **Use this as the "default" map type.** Does not preserve insertion order.<br>Note that pointers into the map, as well as iterators, are not stable under mutations.<br>If either of these affordances are needed, use `HashMap` instead. |
| [StringName](https://github.com/godotengine/godot/blob/master/core/string/string_name.h) 📜 | `std::string` | Uses string interning for fast comparisons. Use this for static strings that are<br>referenced frequently and used in multiple locations in the engine. |
| [LocalVector](https://github.com/godotengine/godot/blob/master/core/templates/local_vector.h) | `std::vector` | Closer to `std::vector` in semantics, doesn't use copy-on-write (COW) thus it's<br>faster than `Vector`. Prefer it over `Vector` when copying it cheaply<br>is not needed. |
| [Array](https://github.com/godotengine/godot/blob/master/core/variant/array.h) 📜 | `std::vector` | Values can be of any Variant type. No static typing is imposed.<br>Uses shared reference counting, similar to `std::shared_ptr`.<br>Uses Vector<Variant> internally. |
| [TypedArray](https://github.com/godotengine/godot/blob/master/core/variant/typed_array.h) 📜 | `std::vector` | Subclass of `Array` but with static typing for its elements.<br>Not to be confused with `Packed*Array`, which is internally a `Vector`. |
| [Packed\*Array](https://github.com/godotengine/godot/blob/master/core/variant/variant.h) 📜 | `std::vector` | Alias of `Vector`, e.g. `PackedColorArray = Vector<Color>`.<br>Only a limited list of packed array types are available<br>(use `TypedArray` otherwise). |
| [List](https://github.com/godotengine/godot/blob/master/core/templates/list.h) | `std::list` | Linked list type. Generally slower than other array/vector types. Prefer using<br>other types in new code, unless using `List` avoids the need for type conversions. |
| [FixedVector](https://github.com/godotengine/godot/blob/master/core/templates/fixed_vector.h) | `std::array` | Vector with a fixed capacity (more similar to `boost::container::static_vector`).<br>This container type is more efficient than other vector-like types because it makes<br>no heap allocations. |
| [Span](https://github.com/godotengine/godot/blob/master/core/templates/span.h) | `std::span` | Represents read-only access to a contiguous array without needing to copy any data.<br>Note that `Span` is designed to be a high performance API: It does not perform<br>parameter correctness checks in the same way you might be used to with other Godot<br>containers. Use with care.<br>Span can be constructed from most array-like containers (e.g. `vector.span()`). |
| [RBSet](https://github.com/godotengine/godot/blob/master/core/templates/rb_set.h) | `std::set` | Uses a [red-black tree](https://en.wikipedia.org/wiki/Red-black_tree)<br>for faster access. |
| [VSet](https://github.com/godotengine/godot/blob/master/core/templates/vset.h) | `std::flat_set` | Uses copy-on-write (COW) semantics.<br>This means it's generally slower but can be copied around almost for free.<br>The performance benefits of `VSet` aren't established, so prefer using other types. |
| [HashMap](https://github.com/godotengine/godot/blob/master/core/templates/hash_map.h) | `std::unordered_map` | Defensive (robust but slow) map type. Preserves insertion order.<br>Pointers to keys and values, as well as iterators, are stable under mutation.<br>Use this map type when either of these affordances are needed. Use `AHashMap`<br>otherwise. |
| [RBMap](https://github.com/godotengine/godot/blob/master/core/templates/rb_map.h) | `std::map` | Map type that uses a<br>[red-black tree](https://en.wikipedia.org/wiki/Red-black-tree) to find keys.<br>The performance benefits of `RBMap` aren't established, so prefer using other types. |
| [Dictionary](https://github.com/godotengine/godot/blob/master/core/variant/dictionary.h) 📜 | `std::unordered_map` | Keys and values can be of any Variant type. No static typing is imposed.<br>Uses shared reference counting, similar to `std::shared_ptr`.<br>Preserves insertion order. Uses `HashMap<Variant>` internally. |
| [TypedDictionary](https://github.com/godotengine/godot/blob/master/core/variant/typed_dictionary.h) 📜 | `std::unordered_map` | Subclass of `Dictionary` but with static typing for its keys and values. |
| [Pair](https://github.com/godotengine/godot/blob/master/core/templates/pair.h) | `std::pair` | Stores a single pair. See also `KeyValue` in the same file, which uses read-only<br>keys. |

## Math types

There are several linear math types available in the `core/math`
directory:

- [core/math](https://github.com/godotengine/godot/tree/master/core/math)


## NodePath

This is a special datatype used for storing paths in a scene tree and
referencing them in an optimized manner:

- [core/string/node\_path.h](https://github.com/godotengine/godot/blob/master/core/string/node_path.h)


## RID

RIDs are _Resource IDs_. Servers use these to reference data stored in
them. RIDs are opaque, meaning that the data they reference can't be
accessed directly. RIDs are unique, even for different types of
referenced data:

- [core/templates/rid.h](https://github.com/godotengine/godot/blob/master/core/templates/rid.h)


[Previous](common_engine_methods_and_macros.md "Common engine methods and macros") [Next](variant_class.md "Variant class")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](common_engine_methods_and_macros.md "Common engine methods and macros") [Next](variant_class.md "Variant class")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).