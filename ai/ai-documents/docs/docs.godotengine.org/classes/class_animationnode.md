---
title: AnimationNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_animationnode.html
crawled_at: "2026-08-13T10:34:59+12:00"
content_hash: d0c397c7099b867f170f06ee85033dccc1e3452637110f7e5b9dfc189d075b1d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AnimationNode

* * *

# AnimationNode

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimationNodeExtension](class_animationnodeextension.md#class-animationnodeextension), [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput), [AnimationNodeSync](class_animationnodesync.md#class-animationnodesync), [AnimationNodeTimeScale](class_animationnodetimescale.md#class-animationnodetimescale), [AnimationNodeTimeSeek](class_animationnodetimeseek.md#class-animationnodetimeseek), [AnimationRootNode](class_animationrootnode.md#class-animationrootnode)

Base class for [AnimationTree](class_animationtree.md#class-animationtree) nodes. Not related to scene nodes.

## Description

Base resource for [AnimationTree](class_animationtree.md#class-animationtree) nodes. In general, it's not used directly, but you can create custom ones with custom blending formulas.

Inherit this when creating animation nodes mainly for use in [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree), otherwise [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) should be used instead.

You can access the time information as read-only parameter which is processed and stored in the previous frame for all nodes except [AnimationNodeOutput](class_animationnodeoutput.md#class-animationnodeoutput).

**Note:** If multiple inputs exist in the **AnimationNode**, which time information takes precedence depends on the type of **AnimationNode**.

```
var current_length = $AnimationTree["parameters/AnimationNodeName/current_length"]
var current_position = $AnimationTree["parameters/AnimationNodeName/current_position"]
var current_delta = $AnimationTree["parameters/AnimationNodeName/current_delta"]

```

## Tutorials

- [Using AnimationTree](../tutorials/animation/animation_tree.md)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [filter\_enabled](#class-animationnode-property-filter-enabled) |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [\_get\_caption](#class-animationnode-private-method-get-caption)() virtualconst |
| [AnimationNode](#class-animationnode) | [\_get\_child\_by\_name](#class-animationnode-private-method-get-child-by-name)(name: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_child\_nodes](#class-animationnode-private-method-get-child-nodes)() virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_parameter\_default\_value](#class-animationnode-private-method-get-parameter-default-value)(parameter: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [Array](class_array.md#class-array) | [\_get\_parameter\_list](#class-animationnode-private-method-get-parameter-list)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_has\_filter](#class-animationnode-private-method-has-filter)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_parameter\_read\_only](#class-animationnode-private-method-is-parameter-read-only)(parameter: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [float](class_float.md#class-float) | [\_process](#class-animationnode-private-method-process)(time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), test\_only: [bool](class_bool.md#class-bool)) virtual |
| [bool](class_bool.md#class-bool) | [add\_input](#class-animationnode-method-add-input)(name: [String](class_string.md#class-string)) |
| void | [blend\_animation](#class-animationnode-method-blend-animation)(animation: [StringName](class_stringname.md#class-stringname), time: [float](class_float.md#class-float), delta: [float](class_float.md#class-float), seeked: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), looped\_flag: [LoopedFlag](class_animation.md#enum-animation-loopedflag) = 0) |
| [float](class_float.md#class-float) | [blend\_input](#class-animationnode-method-blend-input)(input\_index: [int](class_int.md#class-int), time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), filter: [FilterAction](#enum-animationnode-filteraction) = 0, sync: [bool](class_bool.md#class-bool) = true, test\_only: [bool](class_bool.md#class-bool) = false) |
| [float](class_float.md#class-float) | [blend\_node](#class-animationnode-method-blend-node)(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](#class-animationnode), time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), filter: [FilterAction](#enum-animationnode-filteraction) = 0, sync: [bool](class_bool.md#class-bool) = true, test\_only: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [find\_input](#class-animationnode-method-find-input)(name: [String](class_string.md#class-string)) const |
| [int](class_int.md#class-int) | [get\_input\_count](#class-animationnode-method-get-input-count)() const |
| [String](class_string.md#class-string) | [get\_input\_name](#class-animationnode-method-get-input-name)(input: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_parameter](#class-animationnode-method-get-parameter)(name: [StringName](class_stringname.md#class-stringname)) const |
| [int](class_int.md#class-int) | [get\_processing\_animation\_tree\_instance\_id](#class-animationnode-method-get-processing-animation-tree-instance-id)() const |
| [bool](class_bool.md#class-bool) | [is\_path\_filtered](#class-animationnode-method-is-path-filtered)(path: [NodePath](class_nodepath.md#class-nodepath)) const |
| [bool](class_bool.md#class-bool) | [is\_process\_testing](#class-animationnode-method-is-process-testing)() const |
| void | [remove\_input](#class-animationnode-method-remove-input)(index: [int](class_int.md#class-int)) |
| void | [set\_filter\_path](#class-animationnode-method-set-filter-path)(path: [NodePath](class_nodepath.md#class-nodepath), enable: [bool](class_bool.md#class-bool)) |
| [bool](class_bool.md#class-bool) | [set\_input\_name](#class-animationnode-method-set-input-name)(input: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_parameter](#class-animationnode-method-set-parameter)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |

* * *

## Signals

**animation\_node\_removed**(object\_id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-animationnode-signal-animation-node-removed)

Emitted by nodes that inherit from this class and that have an internal tree when one of their animation nodes removes. The animation nodes that emit this signal are [AnimationNodeBlendSpace1D](class_animationnodeblendspace1d.md#class-animationnodeblendspace1d), [AnimationNodeBlendSpace2D](class_animationnodeblendspace2d.md#class-animationnodeblendspace2d), [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine), and [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

* * *

**animation\_node\_renamed**(object\_id: [int](class_int.md#class-int), old\_name: [String](class_string.md#class-string), new\_name: [String](class_string.md#class-string)) [🔗](#class-animationnode-signal-animation-node-renamed)

Emitted by nodes that inherit from this class and that have an internal tree when one of their animation node names changes. The animation nodes that emit this signal are [AnimationNodeBlendSpace1D](class_animationnodeblendspace1d.md#class-animationnodeblendspace1d), [AnimationNodeBlendSpace2D](class_animationnodeblendspace2d.md#class-animationnodeblendspace2d), [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine), and [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

* * *

**tree\_changed**() [🔗](#class-animationnode-signal-tree-changed)

Emitted by nodes that inherit from this class and that have an internal tree when one of their animation nodes changes. The animation nodes that emit this signal are [AnimationNodeBlendSpace1D](class_animationnodeblendspace1d.md#class-animationnodeblendspace1d), [AnimationNodeBlendSpace2D](class_animationnodeblendspace2d.md#class-animationnodeblendspace2d), [AnimationNodeStateMachine](class_animationnodestatemachine.md#class-animationnodestatemachine), [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree) and [AnimationNodeTransition](class_animationnodetransition.md#class-animationnodetransition).

* * *

## Enumerations

enum **FilterAction**: [🔗](#enum-animationnode-filteraction)

[FilterAction](#enum-animationnode-filteraction) **FILTER\_IGNORE** = `0`

Do not use filtering.

[FilterAction](#enum-animationnode-filteraction) **FILTER\_PASS** = `1`

Paths matching the filter will be allowed to pass.

[FilterAction](#enum-animationnode-filteraction) **FILTER\_STOP** = `2`

Paths matching the filter will be discarded.

[FilterAction](#enum-animationnode-filteraction) **FILTER\_BLEND** = `3`

Paths matching the filter will be blended (by the blend value).

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **filter\_enabled** [🔗](#class-animationnode-property-filter-enabled)

- void **set\_filter\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_filter\_enabled**()


If `true`, filtering is enabled.

* * *

## Method Descriptions

[String](class_string.md#class-string) **\_get\_caption**() virtualconst [🔗](#class-animationnode-private-method-get-caption)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to override the text caption for this animation node.

* * *

[AnimationNode](#class-animationnode) **\_get\_child\_by\_name**(name: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-animationnode-private-method-get-child-by-name)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return a child animation node by its `name`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_child\_nodes**() virtualconst [🔗](#class-animationnode-private-method-get-child-nodes)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return all child animation nodes in order as a `name: node` dictionary.

* * *

[Variant](class_variant.md#class-variant) **\_get\_parameter\_default\_value**(parameter: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-animationnode-private-method-get-parameter-default-value)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return the default value of a `parameter`. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.

* * *

[Array](class_array.md#class-array) **\_get\_parameter\_list**() virtualconst [🔗](#class-animationnode-private-method-get-parameter-list)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return a list of the properties on this animation node. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees. Format is similar to [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list).

* * *

[bool](class_bool.md#class-bool) **\_has\_filter**() virtualconst [🔗](#class-animationnode-private-method-has-filter)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return whether the blend tree editor should display filter editing on this animation node.

* * *

[bool](class_bool.md#class-bool) **\_is\_parameter\_read\_only**(parameter: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-animationnode-private-method-is-parameter-read-only)

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to return whether the `parameter` is read-only. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.

* * *

[float](class_float.md#class-float) **\_process**(time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), test\_only: [bool](class_bool.md#class-bool)) virtual [🔗](#class-animationnode-private-method-process)

**Deprecated:** Currently this is mostly useless as there is a lack of many APIs to extend AnimationNode by GDScript. It is planned that a more flexible API using structures will be provided in the future.

When inheriting from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode), implement this virtual method to run some code when this animation node is processed. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute.

Here, call the [blend\_input()](#class-animationnode-method-blend-input), [blend\_node()](#class-animationnode-method-blend-node) or [blend\_animation()](#class-animationnode-method-blend-animation) functions. You can also use [get\_parameter()](#class-animationnode-method-get-parameter) and [set\_parameter()](#class-animationnode-method-set-parameter) to modify local memory.

This function should return the delta.

* * *

[bool](class_bool.md#class-bool) **add\_input**(name: [String](class_string.md#class-string)) [🔗](#class-animationnode-method-add-input)

Adds an input to the animation node. This is only useful for animation nodes created for use in an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). If the addition fails, returns `false`.

* * *

void **blend\_animation**(animation: [StringName](class_stringname.md#class-stringname), time: [float](class_float.md#class-float), delta: [float](class_float.md#class-float), seeked: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), looped\_flag: [LoopedFlag](class_animation.md#enum-animation-loopedflag) = 0) [🔗](#class-animationnode-method-blend-animation)

Blends an animation by `blend` amount (name must be valid in the linked [AnimationPlayer](class_animationplayer.md#class-animationplayer)). A `time` and `delta` may be passed, as well as whether `seeked` happened.

A `looped_flag` is used by internal processing immediately after the loop.

* * *

[float](class_float.md#class-float) **blend\_input**(input\_index: [int](class_int.md#class-int), time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), filter: [FilterAction](#enum-animationnode-filteraction) = 0, sync: [bool](class_bool.md#class-bool) = true, test\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-animationnode-method-blend-input)

Blends an input. This is only useful for animation nodes created for an [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree). The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed.

* * *

[float](class_float.md#class-float) **blend\_node**(name: [StringName](class_stringname.md#class-stringname), node: [AnimationNode](#class-animationnode), time: [float](class_float.md#class-float), seek: [bool](class_bool.md#class-bool), is\_external\_seeking: [bool](class_bool.md#class-bool), blend: [float](class_float.md#class-float), filter: [FilterAction](#enum-animationnode-filteraction) = 0, sync: [bool](class_bool.md#class-bool) = true, test\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-animationnode-method-blend-node)

Blend another animation node (in case this animation node contains child animation nodes). This function is only useful if you inherit from [AnimationRootNode](class_animationrootnode.md#class-animationrootnode) instead, otherwise editors will not display your animation node for addition.

* * *

[int](class_int.md#class-int) **find\_input**(name: [String](class_string.md#class-string)) const [🔗](#class-animationnode-method-find-input)

Returns the input index which corresponds to `name`. If not found, returns `-1`.

* * *

[int](class_int.md#class-int) **get\_input\_count**() const [🔗](#class-animationnode-method-get-input-count)

Amount of inputs in this animation node, only useful for animation nodes that go into [AnimationNodeBlendTree](class_animationnodeblendtree.md#class-animationnodeblendtree).

* * *

[String](class_string.md#class-string) **get\_input\_name**(input: [int](class_int.md#class-int)) const [🔗](#class-animationnode-method-get-input-name)

Gets the name of an input by index.

* * *

[Variant](class_variant.md#class-variant) **get\_parameter**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-animationnode-method-get-parameter)

Gets the value of a parameter. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.

* * *

[int](class_int.md#class-int) **get\_processing\_animation\_tree\_instance\_id**() const [🔗](#class-animationnode-method-get-processing-animation-tree-instance-id)

Returns the object id of the [AnimationTree](class_animationtree.md#class-animationtree) that owns this node.

**Note:** This method should only be called from within the [AnimationNodeExtension.\_process\_animation\_node()](class_animationnodeextension.md#class-animationnodeextension-private-method-process-animation-node) method, and will return an invalid id otherwise.

* * *

[bool](class_bool.md#class-bool) **is\_path\_filtered**(path: [NodePath](class_nodepath.md#class-nodepath)) const [🔗](#class-animationnode-method-is-path-filtered)

Returns `true` if the given path is filtered.

* * *

[bool](class_bool.md#class-bool) **is\_process\_testing**() const [🔗](#class-animationnode-method-is-process-testing)

Returns `true` if this animation node is being processed in test-only mode.

* * *

void **remove\_input**(index: [int](class_int.md#class-int)) [🔗](#class-animationnode-method-remove-input)

Removes an input, call this only when inactive.

* * *

void **set\_filter\_path**(path: [NodePath](class_nodepath.md#class-nodepath), enable: [bool](class_bool.md#class-bool)) [🔗](#class-animationnode-method-set-filter-path)

Adds or removes a path for the filter.

* * *

[bool](class_bool.md#class-bool) **set\_input\_name**(input: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-animationnode-method-set-input-name)

Sets the name of the input at the given `input` index. If the setting fails, returns `false`.

* * *

void **set\_parameter**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-animationnode-method-set-parameter)

Sets a custom parameter. These are used as local memory, because resources can be reused across the tree or scenes.

[Previous](class_animationlibrary.md "AnimationLibrary") [Next](class_animationnodeadd2.md "AnimationNodeAdd2")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationlibrary.md "AnimationLibrary") [Next](class_animationnodeadd2.md "AnimationNodeAdd2")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).