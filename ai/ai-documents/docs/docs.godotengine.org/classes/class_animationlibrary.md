---
title: AnimationLibrary — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationlibrary.html
crawled_at: "2026-08-13T10:28:32+12:00"
content_hash: 5517ee822b47c6a48da9c01b3699f82d57d4d8803fc7d985fc196362d22c9c10
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationLibrary

* * *

# AnimationLibrary

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Container for [Animation](class_animation.md#class-animation) resources.

## Description

An animation library stores a set of animations accessible through [StringName](class_stringname.md#class-stringname) keys, for use with [AnimationPlayer](class_animationplayer.md#class-animationplayer) nodes.

## Tutorials

- [Animation tutorial index](../tutorials/animation/index.md)


## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [add\_animation](#class-animationlibrary-method-add-animation)(name: [StringName](class_stringname.md#class-stringname), animation: [Animation](class_animation.md#class-animation)) |
| [Animation](class_animation.md#class-animation) | [get\_animation](#class-animationlibrary-method-get-animation)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_animation\_list](#class-animationlibrary-method-get-animation-list)() const |
| [int](class_int.md#class-int) | [get\_animation\_list\_size](#class-animationlibrary-method-get-animation-list-size)() const |
| [bool](class_bool.md#class-bool) | [has\_animation](#class-animationlibrary-method-has-animation)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_animation](#class-animationlibrary-method-remove-animation)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_animation](#class-animationlibrary-method-rename-animation)(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) |

* * *

## Signals

**animation\_added**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-signal-animation-added)

Emitted when an [Animation](class_animation.md#class-animation) is added, under the key `name`.

* * *

**animation\_changed**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-signal-animation-changed)

Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. `name` is the key of the animation that was changed.

See also [Resource.changed](class_resource.md#class-resource-signal-changed), which this acts as a relay for.

* * *

**animation\_removed**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-signal-animation-removed)

Emitted when an [Animation](class_animation.md#class-animation) stored with the key `name` is removed.

* * *

**animation\_renamed**(name: [StringName](class_stringname.md#class-stringname), to\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-signal-animation-renamed)

Emitted when the key for an [Animation](class_animation.md#class-animation) is changed, from `name` to `to_name`.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **add\_animation**(name: [StringName](class_stringname.md#class-stringname), animation: [Animation](class_animation.md#class-animation)) [🔗](#class-animationlibrary-method-add-animation)

Adds the `animation` to the library, accessible by the key `name`.

* * *

[Animation](class_animation.md#class-animation) **get\_animation**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationlibrary-method-get-animation)

Returns the [Animation](class_animation.md#class-animation) with the key `name`. If the animation does not exist, `null` is returned and an error is logged.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_animation\_list**() const [🔗](#class-animationlibrary-method-get-animation-list)

Returns the keys for the [Animation](class_animation.md#class-animation) s stored in the library.

* * *

[int](class_int.md#class-int) **get\_animation\_list\_size**() const [🔗](#class-animationlibrary-method-get-animation-list-size)

Returns the key count for the [Animation](class_animation.md#class-animation) s stored in the library.

* * *

[bool](class_bool.md#class-bool) **has\_animation**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationlibrary-method-has-animation)

Returns `true` if the library stores an [Animation](class_animation.md#class-animation) with `name` as the key.

* * *

void **remove\_animation**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-method-remove-animation)

Removes the [Animation](class_animation.md#class-animation) with the key `name`.

* * *

void **rename\_animation**(name: [StringName](class_stringname.md#class-stringname), newname: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationlibrary-method-rename-animation)

Changes the key of the [Animation](class_animation.md#class-animation) associated with the key `name` to `newname`.

[Previous](class_animation.md "Animation") [Next](class_animationnode.md "AnimationNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animation.md "Animation") [Next](class_animationnode.md "AnimationNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).