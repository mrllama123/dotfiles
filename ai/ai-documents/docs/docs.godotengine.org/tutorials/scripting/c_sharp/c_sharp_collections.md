---
title: C# collections — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/c_sharp/c_sharp_collections.html
crawled_at: "2026-08-13T10:20:49+12:00"
content_hash: e4aee141119b792ac5b04a9cbfc0e1454fc879b9881ff8b3209d4780d4cf2372
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - [C#/.NET](index.md)
  - C# collections
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/c_sharp/c_sharp_collections.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# C\# collections

The .NET base class library contains multiple collection types that can be
used to store and manipulate data. Godot also provide some collection types
that are tightly integrated with the rest of the engine.

## Choose a collection

The main difference between the [.NET collections](https://learn.microsoft.com/en-us/dotnet/standard/collections/)
and the Godot collections is that the .NET collections are implemented in C# while
the Godot collections are implemented in C++ and the Godot C# API is a wrapper over it,
this is an important distinction since it means every operation on a Godot collection
requires marshaling which can be expensive especially inside a loop.

Due to the performance implications, using Godot collections is only recommended
when absolutely necessary (such as interacting with the Godot API). Godot only
understands its own collection types, so it's required to use them when talking
to the engine.

If you have a collection of elements that don't need to be passed to a Godot API,
using a .NET collection would be more performant.

Tip

It's also possible to convert between .NET collections and Godot collections.
The Godot collections contain constructors from generic .NET collection interfaces
that copy their elements, and the Godot collections can be used with the
[LINQ](https://learn.microsoft.com/en-us/dotnet/standard/linq) `ToList`, `ToArray` and `ToDictionary` methods. But keep in mind this conversion
requires marshaling every element in the collection and copies it to a new collection
so it can be expensive.

Despite this, the Godot collections are optimized to try and avoid unnecessary
marshaling, so methods like `Sort` or `Reverse` are implemented with a single
interop call and don't need to marshal every element. Keep an eye out for generic APIs
that take collection interfaces like [LINQ](https://learn.microsoft.com/en-us/dotnet/standard/linq)
because every method requires iterating the collection and, therefore, marshaling
every element. Prefer using the instance methods of the Godot collections when possible.

To choose which collection type to use for each situation, consider the following questions:

- Does your collection need to interact with the Godot engine?
(e.g.: the type of an exported property, calling a Godot method).


> - If yes, since Godot only supports [Variant-compatible types](c_sharp_variant.md#c-sharp-variant-compatible-types),
> use a Godot collection.
>
> - If not, consider [choosing an appropriate .NET collection](https://learn.microsoft.com/en-us/dotnet/standard/collections/selecting-a-collection-class).

- Do you need a Godot collection that represents a list or sequential set of data?


> - Godot [arrays](#doc-c-sharp-collections-array) are similar to the C# collection `List<T>`.
>
> - Godot [packed arrays](#doc-c-sharp-collections-packedarray) are more memory-efficient arrays,
> in C# use one of the supported `System.Array` types.

- Do you need a Godot collection that maps a set of keys to a set of values?


> - Godot [dictionaries](#doc-c-sharp-collections-dictionary) store pairs of keys and values
> and allow easy access to the values by their associated key.


## Godot collections

### PackedArray

Godot packed arrays are implemented as an array of a specific type, allowing it to be
more tightly packed as each element has the size of the specific type, not `Variant`.

In C#, packed arrays are replaced by `System.Array`:

| GDScript | C# |
| --- | --- |
| `PackedByteArray` | `byte[]` |
| `PackedInt32Array` | `int[]` |
| `PackedInt64Array` | `long[]` |
| `PackedFloat32Array` | `float[]` |
| `PackedFloat64Array` | `double[]` |
| `PackedStringArray` | `string[]` |
| `PackedVector2Array` | `Vector2[]` |
| `PackedVector3Array` | `Vector3[]` |
| `PackedVector4Array` | `Vector4[]` |
| `PackedColorArray` | `Color[]` |

Other C# arrays are not supported by the Godot C# API since a packed array equivalent
does not exist. See the list of [Variant-compatible types](c_sharp_variant.md#c-sharp-variant-compatible-types).

### Array

Godot arrays are implemented as an array of `Variant` and can contain several elements
of any type. In C#, the equivalent type is `Godot.Collections.Array`.

The generic `Godot.Collections.Array<T>` type allows restricting the element type to
a [Variant-compatible type](c_sharp_variant.md#c-sharp-variant-compatible-types).

An untyped `Godot.Collections.Array` can be converted to a typed array using the
`Godot.Collections.Array<T>(Godot.Collections.Array)` constructor.

Note

Despite the name, Godot arrays are more similar to the C# collection
`List<T>` than `System.Array`. Their size is not fixed and can grow
or shrink as elements are added/removed from the collection.

List of Godot's Array methods and their equivalent in C#:

| GDScript | C# |
| --- | --- |
| all | [System.Linq.Enumerable.All](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.all) |
| any | [System.Linq.Enumerable.Any](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.any) |
| append | Add |
| append\_array | AddRange |
| assign | Clear and AddRange |
| back | `Array[^1]` or [System.Linq.Enumerable.Last](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.last) or [System.Linq.Enumerable.LastOrDefault](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.lastordefault) |
| bsearch | BinarySearch |
| bsearch\_custom | N/A |
| clear | Clear |
| count | [System.Linq.Enumerable.Count](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.count) |
| duplicate | Duplicate |
| erase | Remove |
| fill | Fill |
| filter | Use [System.Linq.Enumerable.Where](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.where) |
| find | IndexOf |
| front | `Array[0]` or [System.Linq.Enumerable.First](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.first) or [System.Linq.Enumerable.FirstOrDefault](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.firstordefault) |
| get\_typed\_builtin | N/A |
| get\_typed\_class\_name | N/A |
| get\_typed\_script | N/A |
| has | Contains |
| hash | GD.Hash |
| insert | Insert |
| is\_empty | Use `Count == 0` |
| is\_read\_only | IsReadOnly |
| is\_same\_typed | N/A |
| is\_typed | N/A |
| make\_read\_only | MakeReadOnly |
| map | [System.Linq.Enumerable.Select](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.select) |
| max | Max |
| min | Min |
| pick\_random | PickRandom (Consider using [System.Random](https://learn.microsoft.com/en-us/dotnet/api/system.random)) |
| pop\_at | `Array[i]` with `RemoveAt(i)` |
| pop\_back | `Array[^1]` with `RemoveAt(Count - 1)` |
| pop\_front | `Array[0]` with `RemoveAt(0)` |
| push\_back | `Insert(Count, item)` |
| push\_front | `Insert(0, item)` |
| reduce | [System.Linq.Enumerable.Aggregate](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.aggregate) |
| remove\_at | RemoveAt |
| resize | Resize |
| reverse | Reverse |
| rfind | LastIndexOf |
| shuffle | Shuffle |
| size | Count |
| slice | Slice |
| sort | Sort |
| sort\_custom | [System.Linq.Enumerable.OrderBy](https://learn.microsoft.com/en-us/dotnet/api/system.linq.enumerable.orderby) |
| operator != | !RecursiveEqual |
| operator + | operator + |
| operator < | N/A |
| operator <= | N/A |
| operator == | RecursiveEqual |
| operator > | N/A |
| operator >= | N/A |
| operator \[\] | Array\[int\] indexer |

### Dictionary

Godot dictionaries are implemented as a dictionary with `Variant` keys and values.
In C#, the equivalent type is `Godot.Collections.Dictionary`.

The generic `Godot.Collections.Dictionary<TKey, TValue>` type allows restricting the key
and value types to a [Variant-compatible type](c_sharp_variant.md#c-sharp-variant-compatible-types).

An untyped `Godot.Collections.Dictionary` can be converted to a typed dictionary using the
`Godot.Collections.Dictionary<TKey, TValue>(Godot.Collections.Dictionary)` constructor.

Tip

If you need a dictionary where the key is typed but not the value, use
`Variant` as the `TValue` generic parameter of the typed dictionary.

```
// The keys must be string, but the values can be any Variant-compatible type.
var dictionary = new Godot.Collections.Dictionary<string, Variant>();

```

List of Godot's Dictionary methods and their equivalent in C#:

| GDScript | C# |
| --- | --- |
| clear | Clear |
| duplicate | Duplicate |
| erase | Remove |
| find\_key | N/A |
| get | Dictionary\[Variant\] indexer or TryGetValue |
| has | ContainsKey |
| has\_all | N/A |
| hash | GD.Hash |
| is\_empty | Use `Count == 0` |
| is\_read\_only | IsReadOnly |
| keys | Keys |
| make\_read\_only | MakeReadOnly |
| merge | Merge |
| size | Count |
| values | Values |
| operator != | !RecursiveEqual |
| operator == | RecursiveEqual |
| operator \[\] | Dictionary\[Variant\] indexer, Add or TryGetValue |

[Previous](c_sharp_differences.md "C# API differences to GDScript") [Next](c_sharp_variant.md "C# Variant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](c_sharp_differences.md "C# API differences to GDScript") [Next](c_sharp_variant.md "C# Variant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).