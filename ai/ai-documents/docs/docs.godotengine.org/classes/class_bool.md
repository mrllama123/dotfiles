---
title: bool — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_bool.html
crawled_at: "2026-08-13T10:32:47+12:00"
content_hash: 8299db2cd9377703b3de77ea120806557de05431849b0ad3201654fe0cc5d641
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - bool

* * *

# bool

A built-in boolean type.

## Description

The **bool** is a built-in [Variant](class_variant.md#class-variant) type that may only store one of two values: `true` or `false`. You can imagine it as a switch that can be either turned on or off, or as a binary digit that can either be 1 or 0.

Booleans can be directly used in `if`, and other conditional statements:

GDScriptC#

```
var can_shoot = true
if can_shoot:
    launch_bullet()

```

```
bool canShoot = true;
if (canShoot)
{
    LaunchBullet();
}

```

All comparison operators return booleans ( `==`, `>`, `<=`, etc.). As such, it is not necessary to compare booleans themselves. You do not need to add `== true` or `== false`.

Booleans can be combined with the logical operators `and`, `or`, `not` to create complex conditions:

GDScriptC#

```
if bullets > 0 and not is_reloading():
    launch_bullet()

if bullets == 0 or is_reloading():
    play_clack_sound()

```

```
if (bullets > 0 && !IsReloading())
{
    LaunchBullet();
}

if (bullets == 0 || IsReloading())
{
    PlayClackSound();
}

```

**Note:** In modern programming languages, logical operators are evaluated in order. All remaining conditions are skipped if their result would have no effect on the final value. This concept is known as [short-circuit evaluation](https://en.wikipedia.org/wiki/Short-circuit_evaluation) and can be useful to avoid evaluating expensive conditions in some performance-critical cases.

**Note:** By convention, built-in methods and properties that return booleans are usually defined as yes-no questions, single adjectives, or similar ( [String.is\_empty()](class_string.md#class-string-method-is-empty), [Node.can\_process()](class_node.md#class-node-method-can-process), [Camera2D.enabled](class_camera2d.md#class-camera2d-property-enabled), etc.).

## Constructors

|     |     |
| --- | --- |
| [bool](#class-bool) | [bool](#class-bool-constructor-bool)() |
| [bool](#class-bool) | [bool](#class-bool-constructor-bool)(from: [bool](#class-bool)) |
| [bool](#class-bool) | [bool](#class-bool-constructor-bool)(from: [float](class_float.md#class-float)) |
| [bool](#class-bool) | [bool](#class-bool-constructor-bool)(from: [int](class_int.md#class-int)) |

## Operators

|     |     |
| --- | --- |
| [bool](#class-bool) | [operator !=](#class-bool-operator-neq-bool)(right: [bool](#class-bool)) |
| [bool](#class-bool) | [operator <](#class-bool-operator-lt-bool)(right: [bool](#class-bool)) |
| [bool](#class-bool) | [operator ==](#class-bool-operator-eq-bool)(right: [bool](#class-bool)) |
| [bool](#class-bool) | [operator >](#class-bool-operator-gt-bool)(right: [bool](#class-bool)) |

* * *

## Constructor Descriptions

[bool](#class-bool) **bool**() [🔗](#class-bool-constructor-bool)

Constructs a **bool** set to `false`.

* * *

[bool](#class-bool) **bool**(from: [bool](#class-bool))

Constructs a **bool** as a copy of the given **bool**.

* * *

[bool](#class-bool) **bool**(from: [float](class_float.md#class-float))

Cast a [float](class_float.md#class-float) value to a boolean value. Returns `false` if `from` is equal to `0.0` (including `-0.0`), and `true` for all other values (including [@GDScript.INF](class_@gdscript.md#class-gdscript-constant-inf) and [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan)).

* * *

[bool](#class-bool) **bool**(from: [int](class_int.md#class-int))

Cast an [int](class_int.md#class-int) value to a boolean value. Returns `false` if `from` is equal to `0`, and `true` for all other values.

* * *

## Operator Descriptions

[bool](#class-bool) **operator !=**(right: [bool](#class-bool)) [🔗](#class-bool-operator-neq-bool)

Returns `true` if the two booleans are not equal. That is, one is `true` and the other is `false`. This operation can be seen as a logical XOR.

* * *

[bool](#class-bool) **operator <**(right: [bool](#class-bool)) [🔗](#class-bool-operator-lt-bool)

Returns `true` if the left operand is `false` and the right operand is `true`.

* * *

[bool](#class-bool) **operator ==**(right: [bool](#class-bool)) [🔗](#class-bool-operator-eq-bool)

Returns `true` if the two booleans are equal. That is, both are `true` or both are `false`. This operation can be seen as a logical EQ or XNOR.

* * *

[bool](#class-bool) **operator >**(right: [bool](#class-bool)) [🔗](#class-bool-operator-gt-bool)

Returns `true` if the left operand is `true` and the right operand is `false`.

[Previous](class_basis.md "Basis") [Next](class_callable.md "Callable")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_basis.md "Basis") [Next](class_callable.md "Callable")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).