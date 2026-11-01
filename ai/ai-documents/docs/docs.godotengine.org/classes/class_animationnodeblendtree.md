---
title: AnimationNodeBlendTree — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnodeblendtree.html
crawled_at: "2026-08-13T10:20:30+12:00"
content_hash: 20fd67eb19bb5f869e3259e7064c5ad82946f52d5cac4e85b42d45cb3fd7ea76
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNodeBlendTree

* * *

# AnimationNodeBlendTree

**Inherits:** [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) **<** [AnimationNode](class_animationnode.md#class-animationnode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A sub-tree of many type [AnimationNode](class_animationnode.md#class-animationnode) s used for complex animations. Used by [AnimationTree](class_animationtree.md#class-animationtree).

## Description

This animation node may contain a sub-tree of any other type animation nodes, such as [AnimationNodeTransition](class_animationnodetransition.md#class-animationnodetransition), [AnimationNodeBlend2](class_animationnodeblend2.md#class-animationnodeblend2), [AnimationNodeBlend3](class_animationnodeblend3.md#class-animationnodeblend3), [AnimationNodeOneShot](class_animationnodeoneshot.md#class-animationnodeoneshot), etc. This is one of the most commonly used animation node roots.

An [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput) node named `output` is created by default.

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [graph\_offset](#class-animationnodeblendtree-property-graph-offset) | `Vector2(0, 0)` |

## Methods

|     |     |
| --- | --- |
| void | [add\_node](#class-animationnodeblendtree-method-add-node)(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [connect\_node](#class-animationnodeblendtree-method-connect-node)(input\_node: [StringName](class_stringname.md#class-stringname), input\_index: [int](class_int.md#class-int), output\_node: [StringName](class_stringname.md#class-stringname)) |
| void | [disconnect\_node](#class-animationnodeblendtree-method-disconnect-node)(input\_node: [StringName](class_stringname.md#class-stringname), input\_index: [int](class_int.md#class-int)) |
| [AnimationNode](class_animationnode.md#class-animationnode) | [get\_node](#class-animationnodeblendtree-method-get-node)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_node\_list](#class-animationnodeblendtree-method-get-node-list)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_node\_position](#class-animationnodeblendtree-method-get-node-position)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_node](#class-animationnodeblendtree-method-has-node)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [remove\_node](#class-animationnodeblendtree-method-remove-node)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [rename\_node](#class-animationnodeblendtree-method-rename-node)(name: [StringName](class_stringname.md#class-stringname), new\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_node\_position](#class-animationnodeblendtree-method-set-node-position)(name: [StringName](class_stringname.md#class-stringname), position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**node\_changed**(node\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodeblendtree-signal-node-changed)

Emitted when the input port information is changed.

* * *

## Constants

**CONNECTION\_OK** = `0` [🔗](#class-animationnodeblendtree-constant-connection-ok)

The connection was successful.

**CONNECTION\_ERROR\_NO\_INPUT** = `1` [🔗](#class-animationnodeblendtree-constant-connection-error-no-input)

The input node is `null`.

**CONNECTION\_ERROR\_NO\_INPUT\_INDEX** = `2` [🔗](#class-animationnodeblendtree-constant-connection-error-no-input-index)

The specified input port is out of range.

**CONNECTION\_ERROR\_NO\_OUTPUT** = `3` [🔗](#class-animationnodeblendtree-constant-connection-error-no-output)

The output node is `null`.

**CONNECTION\_ERROR\_SAME\_NODE** = `4` [🔗](#class-animationnodeblendtree-constant-connection-error-same-node)

Input and output nodes are the same.

**CONNECTION\_ERROR\_CONNECTION\_EXISTS** = `5` [🔗](#class-animationnodeblendtree-constant-connection-error-connection-exists)

The specified connection already exists.

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **graph\_offset** = `Vector2(0, 0)` [🔗](#class-animationnodeblendtree-property-graph-offset)

- void **set\_graph\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_graph\_offset**()


The global offset of all sub animation nodes.

* * *

## Method Descriptions

void **add\_node**(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](class_animationnode.md#class-animationnode), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-animationnodeblendtree-method-add-node)

Adds an [AnimationNode](class_animationnode.md#class-animationnode) at the given `position`. The `name` is used to identify the created sub animation node later.

* * *

void **connect\_node**(input\_node: [StringName](class_stringname.md#class-stringname), input\_index: [int](class_int.md#class-int), output\_node: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodeblendtree-method-connect-node)

Connects the output of an [AnimationNode](class_animationnode.md#class-animationnode) as input for another [AnimationNode](class_animationnode.md#class-animationnode), at the input port specified by `input_index`.

* * *

void **disconnect\_node**(input\_node: [StringName](class_stringname.md#class-stringname), input\_index: [int](class_int.md#class-int)) [🔗](#class-animationnodeblendtree-method-disconnect-node)

Disconnects the animation node connected to the specified input.

* * *

[AnimationNode](class_animationnode.md#class-animationnode) **get\_node**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodeblendtree-method-get-node)

Returns the sub animation node with the specified `name`.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_node\_list**() const [🔗](#class-animationnodeblendtree-method-get-node-list)

Returns a list containing the names of all sub animation nodes in this blend tree.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_node\_position**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodeblendtree-method-get-node-position)

Returns the position of the sub animation node with the specified `name`.

* * *

[bool](class_bool.md#class-bool) **has\_node**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnodeblendtree-method-has-node)

Returns `true` if a sub animation node with specified `name` exists.

* * *

void **remove\_node**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodeblendtree-method-remove-node)

Removes a sub animation node.

* * *

void **rename\_node**(name: [StringName](class_stringname.md#class-stringname), new\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-animationnodeblendtree-method-rename-node)

Changes the name of a sub animation node.

* * *

void **set\_node\_position**(name: [StringName](class_stringname.md#class-stringname), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-animationnodeblendtree-method-set-node-position)

Modifies the position of a sub animation node.

[Previous](class_animationnodeblendspace2d.md "AnimationNodeBlendSpace2D") [Next](class_animationnodeextension.md "AnimationNodeExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationnodeblendspace2d.md "AnimationNodeBlendSpace2D") [Next](class_animationnodeextension.md "AnimationNodeExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).