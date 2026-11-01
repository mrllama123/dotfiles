---
title: Dictionary — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_dictionary.html
crawled_at: "2026-08-13T10:25:36+12:00"
content_hash: 6e961d8f127b34be5ec4424aa3dce79b5d200f16f355e3ffd054b8255358687e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Dictionary

* * *

# Dictionary

A built-in data structure that holds key-value pairs.

## Description

Dictionaries are associative containers that contain values referenced by unique keys. Dictionaries will preserve the insertion order when adding new entries. In other programming languages, this data structure is often referred to as a hash map or an associative array.

You can define a dictionary by placing a comma-separated list of `key: value` pairs inside curly braces `{}`.

Creating a dictionary:

GDScriptC#

```
var my_dict = {} # Creates an empty dictionary.

var dict_variable_key = "Another key name"
var dict_variable_value = "value2"
var another_dict = {
    "Some key name": "value1",
    dict_variable_key: dict_variable_value,
}

var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }

# Alternative Lua-style syntax.
# Doesn't require quotes around keys, but only string constants can be used as key names.
# Additionally, key names must start with a letter or an underscore.
# Here, `some_key` is a string literal, not a variable!
another_dict = {
    some_key = 42,
}

```

```
var myDict = new Godot.Collections.Dictionary(); // Creates an empty dictionary.
var pointsDict = new Godot.Collections.Dictionary
{
    { "White", 50 },
    { "Yellow", 75 },
    { "Orange", 100 },
};

```

You can access a dictionary's value by referencing its corresponding key. In the above example, `points_dict["White"]` will return `50`. You can also write `points_dict.White`, which is equivalent. However, you'll have to use the bracket syntax if the key you're accessing the dictionary with isn't a fixed string (such as a number or variable).

GDScriptC#

```
@export_enum("White", "Yellow", "Orange") var my_color: String
var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
func _ready():
    # We can't use dot syntax here as `my_color` is a variable.
    var points = points_dict[my_color]

```

```
[Export(PropertyHint.Enum, "White,Yellow,Orange")]
public string MyColor { get; set; }
private Godot.Collections.Dictionary _pointsDict = new Godot.Collections.Dictionary
{
    { "White", 50 },
    { "Yellow", 75 },
    { "Orange", 100 },
};

public override void _Ready()
{
    int points = (int)_pointsDict[MyColor];
}

```

In the above code, `points` will be assigned the value that is paired with the appropriate color selected in `my_color`.

Dictionaries can contain more complex data:

GDScriptC#

```
var my_dict = {
    "First Array": [1, 2, 3, 4] # Assigns an Array to a String key.
}

```

```
var myDict = new Godot.Collections.Dictionary
{
    { "First Array", new Godot.Collections.Array { 1, 2, 3, 4 } }
};

```

To add a key to an existing dictionary, access it like an existing key and assign to it:

GDScriptC#

```
var points_dict = { "White": 50, "Yellow": 75, "Orange": 100 }
points_dict["Blue"] = 150 # Add "Blue" as a key and assign 150 as its value.

```

```
var pointsDict = new Godot.Collections.Dictionary
{
    { "White", 50 },
    { "Yellow", 75 },
    { "Orange", 100 },
};
pointsDict["Blue"] = 150; // Add "Blue" as a key and assign 150 as its value.

```

Finally, untyped dictionaries can contain different types of keys and values in the same dictionary:

GDScriptC#

```
# This is a valid dictionary.
# To access the string "Nested value" below, use `my_dict.sub_dict.sub_key` or `my_dict["sub_dict"]["sub_key"]`.
# Indexing styles can be mixed and matched depending on your needs.
var my_dict = {
    "String Key": 5,
    4: [1, 2, 3],
    7: "Hello",
    "sub_dict": { "sub_key": "Nested value" },
}

```

```
// This is a valid dictionary.
// To access the string "Nested value" below, use `((Godot.Collections.Dictionary)myDict["sub_dict"])["sub_key"]`.
var myDict = new Godot.Collections.Dictionary {
    { "String Key", 5 },
    { 4, new Godot.Collections.Array { 1, 2, 3 } },
    { 7, "Hello" },
    { "sub_dict", new Godot.Collections.Dictionary { { "sub_key", "Nested value" } } },
};

```

The keys of a dictionary can be iterated with the `for` keyword:

GDScriptC#

```
var groceries = { "Orange": 20, "Apple": 2, "Banana": 4 }
for fruit in groceries:
    var amount = groceries[fruit]

```

```
var groceries = new Godot.Collections.Dictionary { { "Orange", 20 }, { "Apple", 2 }, { "Banana", 4 } };
foreach (var (fruit, amount) in groceries)
{
    // `fruit` is the key, `amount` is the value.
}

```

To enforce a certain type for keys and values, you can create a _typed dictionary_. Typed dictionaries can only contain keys and values of the given types, or that inherit from the given classes:

GDScriptC#

```
# Creates a typed dictionary with String keys and int values.
# Attempting to use any other type for keys or values will result in an error.
var typed_dict: Dictionary[String, int] = {
    "some_key": 1,
    "some_other_key": 2,
}

# Creates a typed dictionary with String keys and values of any type.
# Attempting to use any other type for keys will result in an error.
var typed_dict_key_only: Dictionary[String, Variant] = {
    "some_key": 12.34,
    "some_other_key": "string",
}

```

```
// Creates a typed dictionary with String keys and int values.
// Attempting to use any other type for keys or values will result in an error.
var typedDict = new Godot.Collections.Dictionary<String, int> {
    {"some_key", 1},
    {"some_other_key", 2},
};

// Creates a typed dictionary with String keys and values of any type.
// Attempting to use any other type for keys will result in an error.
var typedDictKeyOnly = new Godot.Collections.Dictionary<String, Variant> {
    {"some_key", 12.34},
    {"some_other_key", "string"},
};

```

**Note:** Dictionaries are always passed by reference. To get a copy of a dictionary which can be modified independently of the original dictionary, use [duplicate()](#class-dictionary-method-duplicate).

**Note:** Erasing elements while iterating over dictionaries is **not** supported and will result in unpredictable behavior.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [GDScript basics: Dictionary](../tutorials/scripting/gdscript/gdscript_basics.md#dictionary)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Constructors

|     |     |
| --- | --- |
| [Dictionary](#class-dictionary) | [Dictionary](#class-dictionary-constructor-dictionary)() |
| [Dictionary](#class-dictionary) | [Dictionary](#class-dictionary-constructor-dictionary)(base: [Dictionary](#class-dictionary), key\_type: [int](class_int.md#class-int), key\_class\_name: [StringName](class_stringname.md#class-stringname), key\_script: [Variant](class_variant.md#class-variant), value\_type: [int](class_int.md#class-int), value\_class\_name: [StringName](class_stringname.md#class-stringname), value\_script: [Variant](class_variant.md#class-variant)) |
| [Dictionary](#class-dictionary) | [Dictionary](#class-dictionary-constructor-dictionary)(from: [Dictionary](#class-dictionary)) |

## Methods

|     |     |
| --- | --- |
| void | [assign](#class-dictionary-method-assign)(dictionary: [Dictionary](#class-dictionary)) |
| void | [clear](#class-dictionary-method-clear)() |
| [Dictionary](#class-dictionary) | [duplicate](#class-dictionary-method-duplicate)(deep: [bool](class_bool.md#class-bool) = false) const |
| [Dictionary](#class-dictionary) | [duplicate\_deep](#class-dictionary-method-duplicate-deep)(deep\_subresources\_mode: [int](class_int.md#class-int) = 1) const |
| [bool](class_bool.md#class-bool) | [erase](#class-dictionary-method-erase)(key: [Variant](class_variant.md#class-variant)) |
| [Variant](class_variant.md#class-variant) | [find\_key](#class-dictionary-method-find-key)(value: [Variant](class_variant.md#class-variant)) const |
| [Variant](class_variant.md#class-variant) | [get](#class-dictionary-method-get)(key: [Variant](class_variant.md#class-variant), default: [Variant](class_variant.md#class-variant) = null) const |
| [Variant](class_variant.md#class-variant) | [get\_or\_add](#class-dictionary-method-get-or-add)(key: [Variant](class_variant.md#class-variant), default: [Variant](class_variant.md#class-variant) = null) |
| [int](class_int.md#class-int) | [get\_typed\_key\_builtin](#class-dictionary-method-get-typed-key-builtin)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_typed\_key\_class\_name](#class-dictionary-method-get-typed-key-class-name)() const |
| [Variant](class_variant.md#class-variant) | [get\_typed\_key\_script](#class-dictionary-method-get-typed-key-script)() const |
| [int](class_int.md#class-int) | [get\_typed\_value\_builtin](#class-dictionary-method-get-typed-value-builtin)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_typed\_value\_class\_name](#class-dictionary-method-get-typed-value-class-name)() const |
| [Variant](class_variant.md#class-variant) | [get\_typed\_value\_script](#class-dictionary-method-get-typed-value-script)() const |
| [bool](class_bool.md#class-bool) | [has](#class-dictionary-method-has)(key: [Variant](class_variant.md#class-variant)) const |
| [bool](class_bool.md#class-bool) | [has\_all](#class-dictionary-method-has-all)(keys: [Array](class_array.md#class-array)) const |
| [int](class_int.md#class-int) | [hash](#class-dictionary-method-hash)() const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-dictionary-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [is\_read\_only](#class-dictionary-method-is-read-only)() const |
| [bool](class_bool.md#class-bool) | [is\_same\_typed](#class-dictionary-method-is-same-typed)(dictionary: [Dictionary](#class-dictionary)) const |
| [bool](class_bool.md#class-bool) | [is\_same\_typed\_key](#class-dictionary-method-is-same-typed-key)(dictionary: [Dictionary](#class-dictionary)) const |
| [bool](class_bool.md#class-bool) | [is\_same\_typed\_value](#class-dictionary-method-is-same-typed-value)(dictionary: [Dictionary](#class-dictionary)) const |
| [bool](class_bool.md#class-bool) | [is\_typed](#class-dictionary-method-is-typed)() const |
| [bool](class_bool.md#class-bool) | [is\_typed\_key](#class-dictionary-method-is-typed-key)() const |
| [bool](class_bool.md#class-bool) | [is\_typed\_value](#class-dictionary-method-is-typed-value)() const |
| [Array](class_array.md#class-array) | [keys](#class-dictionary-method-keys)() const |
| void | [make\_read\_only](#class-dictionary-method-make-read-only)() |
| void | [merge](#class-dictionary-method-merge)(dictionary: [Dictionary](#class-dictionary), overwrite: [bool](class_bool.md#class-bool) = false) |
| [Dictionary](#class-dictionary) | [merged](#class-dictionary-method-merged)(dictionary: [Dictionary](#class-dictionary), overwrite: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [recursive\_equal](#class-dictionary-method-recursive-equal)(dictionary: [Dictionary](#class-dictionary), recursion\_count: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [set](#class-dictionary-method-set)(key: [Variant](class_variant.md#class-variant), value: [Variant](class_variant.md#class-variant)) |
| [int](class_int.md#class-int) | [size](#class-dictionary-method-size)() const |
| void | [sort](#class-dictionary-method-sort)() |
| [Array](class_array.md#class-array) | [values](#class-dictionary-method-values)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-dictionary-operator-neq-dictionary)(right: [Dictionary](#class-dictionary)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-dictionary-operator-eq-dictionary)(right: [Dictionary](#class-dictionary)) |
| [Variant](class_variant.md#class-variant) | [operator \[\]](#class-dictionary-operator-idx-variant)(key: [Variant](class_variant.md#class-variant)) |

* * *

## Constructor Descriptions

[Dictionary](#class-dictionary) **Dictionary**() [🔗](#class-dictionary-constructor-dictionary)

Constructs an empty **Dictionary**.

* * *

[Dictionary](#class-dictionary) **Dictionary**(base: [Dictionary](#class-dictionary), key\_type: [int](class_int.md#class-int), key\_class\_name: [StringName](class_stringname.md#class-stringname), key\_script: [Variant](class_variant.md#class-variant), value\_type: [int](class_int.md#class-int), value\_class\_name: [StringName](class_stringname.md#class-stringname), value\_script: [Variant](class_variant.md#class-variant))

Creates a typed dictionary from the `base` dictionary. A typed dictionary can only contain keys and values of the given types, or that inherit from the given classes, as described by this constructor's parameters.

* * *

[Dictionary](#class-dictionary) **Dictionary**(from: [Dictionary](#class-dictionary))

Returns the same dictionary as `from`. If you need a copy of the dictionary, use [duplicate()](#class-dictionary-method-duplicate).

* * *

## Method Descriptions

void **assign**(dictionary: [Dictionary](#class-dictionary)) [🔗](#class-dictionary-method-assign)

Assigns elements of another `dictionary` into the dictionary. Resizes the dictionary to match `dictionary`. Performs type conversions if the dictionary is typed.

* * *

void **clear**() [🔗](#class-dictionary-method-clear)

Clears the dictionary, removing all entries from it.

* * *

[Dictionary](#class-dictionary) **duplicate**(deep: [bool](class_bool.md#class-bool) = false) const [🔗](#class-dictionary-method-duplicate)

Returns a new copy of the dictionary.

By default, a **shallow** copy is returned: all nested [Array](class_array.md#class-array), **Dictionary**, and [Resource](class_resource.md#class-resource) keys and values are shared with the original dictionary. Modifying any of those in one dictionary will also affect them in the other.

If `deep` is `true`, a **deep** copy is returned: all nested arrays and dictionaries are also duplicated (recursively). Any [Resource](class_resource.md#class-resource) is still shared with the original dictionary, though.

* * *

[Dictionary](#class-dictionary) **duplicate\_deep**(deep\_subresources\_mode: [int](class_int.md#class-int) = 1) const [🔗](#class-dictionary-method-duplicate-deep)

Duplicates this dictionary, deeply, like [duplicate()](#class-dictionary-method-duplicate) `(true)`, with extra control over how subresources are handled.

`deep_subresources_mode` must be one of the values from [DeepDuplicateMode](class_resource.md#enum-resource-deepduplicatemode). By default, only internal resources will be duplicated (recursively).

* * *

[bool](class_bool.md#class-bool) **erase**(key: [Variant](class_variant.md#class-variant)) [🔗](#class-dictionary-method-erase)

Removes the dictionary entry by key, if it exists. Returns `true` if the given `key` existed in the dictionary, otherwise `false`.

**Note:** Do not erase entries while iterating over the dictionary. You can iterate over the [keys()](#class-dictionary-method-keys) array instead.

* * *

[Variant](class_variant.md#class-variant) **find\_key**(value: [Variant](class_variant.md#class-variant)) const [🔗](#class-dictionary-method-find-key)

Finds and returns the first key whose associated value is equal to `value`, or `null` if it is not found.

**Note:** `null` is also a valid key. If inside the dictionary, [find\_key()](#class-dictionary-method-find-key) may give misleading results.

* * *

[Variant](class_variant.md#class-variant) **get**(key: [Variant](class_variant.md#class-variant), default: [Variant](class_variant.md#class-variant) = null) const [🔗](#class-dictionary-method-get)

Returns the corresponding value for the given `key` in the dictionary. If the `key` does not exist, returns `default`, or `null` if the parameter is omitted.

* * *

[Variant](class_variant.md#class-variant) **get\_or\_add**(key: [Variant](class_variant.md#class-variant), default: [Variant](class_variant.md#class-variant) = null) [🔗](#class-dictionary-method-get-or-add)

Gets a value and ensures the key is set. If the `key` exists in the dictionary, this behaves like [get()](#class-dictionary-method-get). Otherwise, the `default` value is inserted into the dictionary and returned.

* * *

[int](class_int.md#class-int) **get\_typed\_key\_builtin**() const [🔗](#class-dictionary-method-get-typed-key-builtin)

Returns the built-in [Variant](class_variant.md#class-variant) type of the typed dictionary's keys as a [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) constant. If the keys are not typed, returns [@GlobalScope.TYPE\_NIL](class_@globalscope.md#class-globalscope-constant-type-nil). See also [is\_typed\_key()](#class-dictionary-method-is-typed-key).

* * *

[StringName](class_stringname.md#class-stringname) **get\_typed\_key\_class\_name**() const [🔗](#class-dictionary-method-get-typed-key-class-name)

Returns the **built-in** class name of the typed dictionary's keys, if the built-in [Variant](class_variant.md#class-variant) type is [@GlobalScope.TYPE\_OBJECT](class_@globalscope.md#class-globalscope-constant-type-object). Otherwise, returns an empty [StringName](class_stringname.md#class-stringname). See also [is\_typed\_key()](#class-dictionary-method-is-typed-key) and [Object.get\_class()](class_object.md#class-object-method-get-class).

* * *

[Variant](class_variant.md#class-variant) **get\_typed\_key\_script**() const [🔗](#class-dictionary-method-get-typed-key-script)

Returns the [Script](class_script.md#class-script) instance associated with this typed dictionary's keys, or `null` if it does not exist. See also [is\_typed\_key()](#class-dictionary-method-is-typed-key).

* * *

[int](class_int.md#class-int) **get\_typed\_value\_builtin**() const [🔗](#class-dictionary-method-get-typed-value-builtin)

Returns the built-in [Variant](class_variant.md#class-variant) type of the typed dictionary's values as a [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) constant. If the values are not typed, returns [@GlobalScope.TYPE\_NIL](class_@globalscope.md#class-globalscope-constant-type-nil). See also [is\_typed\_value()](#class-dictionary-method-is-typed-value).

* * *

[StringName](class_stringname.md#class-stringname) **get\_typed\_value\_class\_name**() const [🔗](#class-dictionary-method-get-typed-value-class-name)

Returns the **built-in** class name of the typed dictionary's values, if the built-in [Variant](class_variant.md#class-variant) type is [@GlobalScope.TYPE\_OBJECT](class_@globalscope.md#class-globalscope-constant-type-object). Otherwise, returns an empty [StringName](class_stringname.md#class-stringname). See also [is\_typed\_value()](#class-dictionary-method-is-typed-value) and [Object.get\_class()](class_object.md#class-object-method-get-class).

* * *

[Variant](class_variant.md#class-variant) **get\_typed\_value\_script**() const [🔗](#class-dictionary-method-get-typed-value-script)

Returns the [Script](class_script.md#class-script) instance associated with this typed dictionary's values, or `null` if it does not exist. See also [is\_typed\_value()](#class-dictionary-method-is-typed-value).

* * *

[bool](class_bool.md#class-bool) **has**(key: [Variant](class_variant.md#class-variant)) const [🔗](#class-dictionary-method-has)

Returns `true` if the dictionary contains an entry with the given `key`.

GDScriptC#

```
var my_dict = {
    "Godot" : 4,
    210 : null,
}

print(my_dict.has("Godot")) # Prints true
print(my_dict.has(210))     # Prints true
print(my_dict.has(4))       # Prints false

```

```
var myDict = new Godot.Collections.Dictionary
{
    { "Godot", 4 },
    { 210, default },
};

GD.Print(myDict.ContainsKey("Godot")); // Prints True
GD.Print(myDict.ContainsKey(210));     // Prints True
GD.Print(myDict.ContainsKey(4));       // Prints False

```

In GDScript, this is equivalent to the `in` operator:

```
if "Godot" in { "Godot": 4 }:
    print("The key is here!") # Will be printed.

```

**Note:** This method returns `true` as long as the `key` exists, even if its corresponding value is `null`.

* * *

[bool](class_bool.md#class-bool) **has\_all**(keys: [Array](class_array.md#class-array)) const [🔗](#class-dictionary-method-has-all)

Returns `true` if the dictionary contains all keys in the given `keys` array.

```
var data = { "width": 10, "height": 20 }
data.has_all(["height", "width"]) # Returns true

```

* * *

[int](class_int.md#class-int) **hash**() const [🔗](#class-dictionary-method-hash)

Returns a hashed 32-bit integer value representing the dictionary contents.

GDScriptC#

```
var dict1 = { "A": 10, "B": 2 }
var dict2 = { "A": 10, "B": 2 }

print(dict1.hash() == dict2.hash()) # Prints true

```

```
var dict1 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };
var dict2 = new Godot.Collections.Dictionary { { "A", 10 }, { "B", 2 } };

// Godot.Collections.Dictionary has no Hash() method. Use GD.Hash() instead.
GD.Print(GD.Hash(dict1) == GD.Hash(dict2)); // Prints True

```

**Note:** Dictionaries with the same entries but in a different order will not have the same hash.

**Note:** Dictionaries with equal hash values are _not_ guaranteed to be the same, because of hash collisions. On the contrary, dictionaries with different hash values are guaranteed to be different.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-dictionary-method-is-empty)

Returns `true` if the dictionary is empty (its size is `0`). See also [size()](#class-dictionary-method-size).

* * *

[bool](class_bool.md#class-bool) **is\_read\_only**() const [🔗](#class-dictionary-method-is-read-only)

Returns `true` if the dictionary is read-only. See [make\_read\_only()](#class-dictionary-method-make-read-only). Dictionaries are automatically read-only if declared with `const` keyword.

* * *

[bool](class_bool.md#class-bool) **is\_same\_typed**(dictionary: [Dictionary](#class-dictionary)) const [🔗](#class-dictionary-method-is-same-typed)

Returns `true` if the dictionary is typed the same as `dictionary`.

* * *

[bool](class_bool.md#class-bool) **is\_same\_typed\_key**(dictionary: [Dictionary](#class-dictionary)) const [🔗](#class-dictionary-method-is-same-typed-key)

Returns `true` if the dictionary's keys are typed the same as `dictionary`'s keys.

* * *

[bool](class_bool.md#class-bool) **is\_same\_typed\_value**(dictionary: [Dictionary](#class-dictionary)) const [🔗](#class-dictionary-method-is-same-typed-value)

Returns `true` if the dictionary's values are typed the same as `dictionary`'s values.

* * *

[bool](class_bool.md#class-bool) **is\_typed**() const [🔗](#class-dictionary-method-is-typed)

Returns `true` if the dictionary is typed. Typed dictionaries can only store keys/values of their associated type and provide type safety for the `[]` operator. Methods of typed dictionary still return [Variant](class_variant.md#class-variant).

* * *

[bool](class_bool.md#class-bool) **is\_typed\_key**() const [🔗](#class-dictionary-method-is-typed-key)

Returns `true` if the dictionary's keys are typed.

* * *

[bool](class_bool.md#class-bool) **is\_typed\_value**() const [🔗](#class-dictionary-method-is-typed-value)

Returns `true` if the dictionary's values are typed.

* * *

[Array](class_array.md#class-array) **keys**() const [🔗](#class-dictionary-method-keys)

Returns the list of keys in the dictionary.

* * *

void **make\_read\_only**() [🔗](#class-dictionary-method-make-read-only)

Makes the dictionary read-only, i.e. disables modification of the dictionary's contents. Does not apply to nested content, e.g. content of nested dictionaries.

* * *

void **merge**(dictionary: [Dictionary](#class-dictionary), overwrite: [bool](class_bool.md#class-bool) = false) [🔗](#class-dictionary-method-merge)

Adds entries from `dictionary` to this dictionary. By default, duplicate keys are not copied over, unless `overwrite` is `true`.

GDScriptC#

```
var dict = { "item": "sword", "quantity": 2 }
var other_dict = { "quantity": 15, "color": "silver" }

# Overwriting of existing keys is disabled by default.
dict.merge(other_dict)
print(dict)  # { "item": "sword", "quantity": 2, "color": "silver" }

# With overwriting of existing keys enabled.
dict.merge(other_dict, true)
print(dict)  # { "item": "sword", "quantity": 15, "color": "silver" }

```

```
var dict = new Godot.Collections.Dictionary
{
    ["item"] = "sword",
    ["quantity"] = 2,
};

var otherDict = new Godot.Collections.Dictionary
{
    ["quantity"] = 15,
    ["color"] = "silver",
};

// Overwriting of existing keys is disabled by default.
dict.Merge(otherDict);
GD.Print(dict); // { "item": "sword", "quantity": 2, "color": "silver" }

// With overwriting of existing keys enabled.
dict.Merge(otherDict, true);
GD.Print(dict); // { "item": "sword", "quantity": 15, "color": "silver" }

```

**Note:** [merge()](#class-dictionary-method-merge) is _not_ recursive. Nested dictionaries are considered as keys that can be overwritten or not depending on the value of `overwrite`, but they will never be merged together.

* * *

[Dictionary](#class-dictionary) **merged**(dictionary: [Dictionary](#class-dictionary), overwrite: [bool](class_bool.md#class-bool) = false) const [🔗](#class-dictionary-method-merged)

Returns a copy of this dictionary merged with the other `dictionary`. By default, duplicate keys are not copied over, unless `overwrite` is `true`. See also [merge()](#class-dictionary-method-merge).

This method is useful for quickly making dictionaries with default values:

```
var base = { "fruit": "apple", "vegetable": "potato" }
var extra = { "fruit": "orange", "dressing": "vinegar" }
# Prints { "fruit": "orange", "vegetable": "potato", "dressing": "vinegar" }
print(extra.merged(base))
# Prints { "fruit": "apple", "vegetable": "potato", "dressing": "vinegar" }
print(extra.merged(base, true))

```

* * *

[bool](class_bool.md#class-bool) **recursive\_equal**(dictionary: [Dictionary](#class-dictionary), recursion\_count: [int](class_int.md#class-int)) const [🔗](#class-dictionary-method-recursive-equal)

Returns `true` if the two dictionaries contain the same keys and values, inner **Dictionary** and [Array](class_array.md#class-array) keys and values are compared recursively.

* * *

[bool](class_bool.md#class-bool) **set**(key: [Variant](class_variant.md#class-variant), value: [Variant](class_variant.md#class-variant)) [🔗](#class-dictionary-method-set)

Sets the value of the element at the given `key` to the given `value`. This is the same as using the `[]` operator ( `array[index] = value`).

* * *

[int](class_int.md#class-int) **size**() const [🔗](#class-dictionary-method-size)

Returns the number of entries in the dictionary. Empty dictionaries ( `{ }`) always return `0`. See also [is\_empty()](#class-dictionary-method-is-empty).

* * *

void **sort**() [🔗](#class-dictionary-method-sort)

Sorts the dictionary in ascending order, by key. The final order is dependent on the "less than" ( `<`) comparison between keys.

GDScript

```
var numbers = { "c": 2, "a": 0, "b": 1 }
numbers.sort()
print(numbers) # Prints { "a": 0, "b": 1, "c": 2 }

```

This method ensures that the dictionary's entries are ordered consistently when [keys()](#class-dictionary-method-keys) or [values()](#class-dictionary-method-values) are called, or when the dictionary needs to be converted to a string through [@GlobalScope.str()](class_@globalscope.md#class-globalscope-method-str) or [JSON.stringify()](class_json.md#class-json-method-stringify).

* * *

[Array](class_array.md#class-array) **values**() const [🔗](#class-dictionary-method-values)

Returns the list of values in this dictionary.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Dictionary](#class-dictionary)) [🔗](#class-dictionary-operator-neq-dictionary)

Returns `true` if the two dictionaries do not contain the same keys and values.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Dictionary](#class-dictionary)) [🔗](#class-dictionary-operator-eq-dictionary)

Returns `true` if the two dictionaries contain the same keys and values. The order of the entries does not matter.

**Note:** In C#, by convention, this operator compares by **reference**. If you need to compare by value, iterate over both dictionaries.

* * *

[Variant](class_variant.md#class-variant) **operator \[\]**(key: [Variant](class_variant.md#class-variant)) [🔗](#class-dictionary-operator-idx-variant)

Returns the corresponding value for the given `key` in the dictionary. If the entry does not exist, fails and returns `null`. For safe access, use [get()](#class-dictionary-method-get) or [has()](#class-dictionary-method-has).

[Previous](class_color.md "Color") [Next](class_float.md "float")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_color.md "Color") [Next](class_float.md "float")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).