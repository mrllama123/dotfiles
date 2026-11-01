---
title: RandomNumberGenerator — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_randomnumbergenerator.html
crawled_at: "2026-08-13T10:34:11+12:00"
content_hash: e303943639613ca47792609487b0247b616455737bff42dcf01233857a177193
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RandomNumberGenerator

* * *

# RandomNumberGenerator

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides methods for generating pseudo-random numbers.

## Description

RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses [PCG32](https://www.pcg-random.org/).

**Note:** The underlying algorithm is an implementation detail and should not be depended upon.

To generate a random float number (within a given range) based on a time-dependent seed:

```
var rng = RandomNumberGenerator.new()
func _ready():
    var my_random_number = rng.randf_range(-10.0, 10.0)

```

## Tutorials

- [Random number generation](../tutorials/math/random_number_generation.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [seed](#class-randomnumbergenerator-property-seed) | `0` |
| [int](class_int.md#class-int) | [state](#class-randomnumbergenerator-property-state) | `0` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [rand\_weighted](#class-randomnumbergenerator-method-rand-weighted)(weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| [float](class_float.md#class-float) | [randf](#class-randomnumbergenerator-method-randf)() |
| [float](class_float.md#class-float) | [randf\_range](#class-randomnumbergenerator-method-randf-range)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [randfn](#class-randomnumbergenerator-method-randfn)(mean: [float](class_float.md#class-float) = 0.0, deviation: [float](class_float.md#class-float) = 1.0) |
| [int](class_int.md#class-int) | [randi](#class-randomnumbergenerator-method-randi)() |
| [int](class_int.md#class-int) | [randi\_range](#class-randomnumbergenerator-method-randi-range)(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) |
| void | [randomize](#class-randomnumbergenerator-method-randomize)() |

* * *

## Property Descriptions

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-randomnumbergenerator-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


Initializes the random number generator state based on the given seed value. A given seed will give a reproducible sequence of pseudo-random numbers.

**Note:** The RNG does not have an avalanche effect, and can output similar random streams given similar seeds. Consider using a hash function to improve your seed quality if they're sourced externally.

**Note:** Setting this property produces a side effect of changing the internal [state](#class-randomnumbergenerator-property-state), so make sure to initialize the seed _before_ modifying the [state](#class-randomnumbergenerator-property-state):

**Note:** The default value of this property is pseudo-random, and changes when calling [randomize()](#class-randomnumbergenerator-method-randomize). The `0` value documented here is a placeholder, and not the actual default seed.

```
var rng = RandomNumberGenerator.new()
rng.seed = hash("Godot")
rng.state = 100 # Restore to some previously saved state.

```

* * *

[int](class_int.md#class-int) **state** = `0` [🔗](#class-randomnumbergenerator-property-state)

- void **set\_state**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_state**()


The current state of the random number generator. Save and restore this property to restore the generator to a previous state:

```
var rng = RandomNumberGenerator.new()
print(rng.randf())
var saved_state = rng.state # Store current state.
print(rng.randf()) # Advance internal state.
rng.state = saved_state # Restore the state.
print(rng.randf()) # Prints the same value as previously.

```

**Note:** Do not set state to arbitrary values, since the random number generator requires the state to have certain qualities to behave properly. It should only be set to values that came from the state property itself. To initialize the random number generator with arbitrary input, use [seed](#class-randomnumbergenerator-property-seed) instead.

**Note:** The default value of this property is pseudo-random, and changes when calling [randomize()](#class-randomnumbergenerator-method-randomize). The `0` value documented here is a placeholder, and not the actual default state.

* * *

## Method Descriptions

[int](class_int.md#class-int) **rand\_weighted**(weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-randomnumbergenerator-method-rand-weighted)

Returns a random index with non-uniform weights. Prints an error and returns `-1` if the array is empty.

GDScript

```
var rng = RandomNumberGenerator.new()

var my_array = ["one", "two", "three", "four"]
var weights = PackedFloat32Array([0.5, 1, 1, 2])

# Prints one of the four elements in `my_array`.
# It is more likely to print "four", and less likely to print "one".
print(my_array[rng.rand_weighted(weights)])

```

* * *

[float](class_float.md#class-float) **randf**() [🔗](#class-randomnumbergenerator-method-randf)

Returns a pseudo-random float between `0.0` and `1.0` (inclusive).

* * *

[float](class_float.md#class-float) **randf\_range**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) [🔗](#class-randomnumbergenerator-method-randf-range)

Returns a pseudo-random float between `from` and `to` (inclusive).

* * *

[float](class_float.md#class-float) **randfn**(mean: [float](class_float.md#class-float) = 0.0, deviation: [float](class_float.md#class-float) = 1.0) [🔗](#class-randomnumbergenerator-method-randfn)

Returns a [normally-distributed](https://en.wikipedia.org/wiki/Normal_distribution), pseudo-random floating-point number from the specified `mean` and a standard `deviation`. This is also known as a Gaussian distribution.

**Note:** This method uses the [Box-Muller transform](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform) algorithm.

* * *

[int](class_int.md#class-int) **randi**() [🔗](#class-randomnumbergenerator-method-randi)

Returns a pseudo-random 32-bit unsigned integer between `0` and `4294967295` (inclusive).

* * *

[int](class_int.md#class-int) **randi\_range**(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) [🔗](#class-randomnumbergenerator-method-randi-range)

Returns a pseudo-random 32-bit signed integer between `from` and `to` (inclusive).

* * *

void **randomize**() [🔗](#class-randomnumbergenerator-method-randomize)

Sets up a time-based seed for this **RandomNumberGenerator** instance. Unlike the [@GlobalScope](class_@globalscope.md#class-globalscope) random number generation functions, different **RandomNumberGenerator** instances can use different seeds.

[Previous](class_propertytweener.md "PropertyTweener") [Next](class_rdattachmentformat.md "RDAttachmentFormat")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_propertytweener.md "PropertyTweener") [Next](class_rdattachmentformat.md "RDAttachmentFormat")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).