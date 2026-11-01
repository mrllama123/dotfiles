---
title: SceneState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scenestate.html
crawled_at: "2026-08-13T10:41:26+12:00"
content_hash: f9cc04d08bd55b214f8fb4883e7d76ef8b845f3b7921240d485923cdea885d3a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SceneState

* * *

# SceneState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides access to a scene file's information.

## Description

Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene. They cannot be modified from a **SceneState**, only accessed. Useful for peeking into what a [PackedScene](class_packedscene.md#class-packedscene) contains without instantiating it.

This class cannot be instantiated directly, it is retrieved for a given scene as the result of [PackedScene.get\_state()](class_packedscene.md#class-packedscene-method-get-state).

## Methods

|     |     |
| --- | --- |
| [SceneState](#class-scenestate) | [get\_base\_scene\_state](#class-scenestate-method-get-base-scene-state)() const |
| [Array](class_array.md#class-array) | [get\_connection\_binds](#class-scenestate-method-get-connection-binds)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_connection\_count](#class-scenestate-method-get-connection-count)() const |
| [int](class_int.md#class-int) | [get\_connection\_flags](#class-scenestate-method-get-connection-flags)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_connection\_method](#class-scenestate-method-get-connection-method)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_connection\_signal](#class-scenestate-method-get-connection-signal)(idx: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_connection\_source](#class-scenestate-method-get-connection-source)(idx: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_connection\_target](#class-scenestate-method-get-connection-target)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_connection\_unbinds](#class-scenestate-method-get-connection-unbinds)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_node\_count](#class-scenestate-method-get-node-count)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_node\_groups](#class-scenestate-method-get-node-groups)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_node\_index](#class-scenestate-method-get-node-index)(idx: [int](class_int.md#class-int)) const |
| [PackedScene](class_packedscene.md#class-packedscene) | [get\_node\_instance](#class-scenestate-method-get-node-instance)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_node\_instance\_placeholder](#class-scenestate-method-get-node-instance-placeholder)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_node\_name](#class-scenestate-method-get-node-name)(idx: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_node\_owner\_path](#class-scenestate-method-get-node-owner-path)(idx: [int](class_int.md#class-int)) const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_node\_path](#class-scenestate-method-get-node-path)(idx: [int](class_int.md#class-int), for\_parent: [bool](class_bool.md#class-bool) = false) const |
| [int](class_int.md#class-int) | [get\_node\_property\_count](#class-scenestate-method-get-node-property-count)(idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_node\_property\_name](#class-scenestate-method-get-node-property-name)(idx: [int](class_int.md#class-int), prop\_idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_node\_property\_value](#class-scenestate-method-get-node-property-value)(idx: [int](class_int.md#class-int), prop\_idx: [int](class_int.md#class-int)) const |
| [StringName](class_stringname.md#class-stringname) | [get\_node\_type](#class-scenestate-method-get-node-type)(idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_path](#class-scenestate-method-get-path)() const |
| [bool](class_bool.md#class-bool) | [is\_node\_instance\_placeholder](#class-scenestate-method-is-node-instance-placeholder)(idx: [int](class_int.md#class-int)) const |

* * *

## Enumerations

enum **GenEditState**: [🔗](#enum-scenestate-geneditstate)

[GenEditState](#enum-scenestate-geneditstate) **GEN\_EDIT\_STATE\_DISABLED** = `0`

If passed to [PackedScene.instantiate()](class_packedscene.md#class-packedscene-method-instantiate), blocks edits to the scene state.

[GenEditState](#enum-scenestate-geneditstate) **GEN\_EDIT\_STATE\_INSTANCE** = `1`

If passed to [PackedScene.instantiate()](class_packedscene.md#class-packedscene-method-instantiate), provides inherited scene resources to the local scene.

**Note:** Only available in editor builds.

[GenEditState](#enum-scenestate-geneditstate) **GEN\_EDIT\_STATE\_MAIN** = `2`

If passed to [PackedScene.instantiate()](class_packedscene.md#class-packedscene-method-instantiate), provides local scene resources to the local scene. Only the main scene should receive the main edit state.

**Note:** Only available in editor builds.

[GenEditState](#enum-scenestate-geneditstate) **GEN\_EDIT\_STATE\_MAIN\_INHERITED** = `3`

If passed to [PackedScene.instantiate()](class_packedscene.md#class-packedscene-method-instantiate), it's similar to [GEN\_EDIT\_STATE\_MAIN](#class-scenestate-constant-gen-edit-state-main), but for the case where the scene is being instantiated to be the base of another one.

**Note:** Only available in editor builds.

* * *

## Method Descriptions

[SceneState](#class-scenestate) **get\_base\_scene\_state**() const [🔗](#class-scenestate-method-get-base-scene-state)

Returns the **SceneState** of the scene that this scene inherits from, or `null` if it doesn't inherit from any scene.

* * *

[Array](class_array.md#class-array) **get\_connection\_binds**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-binds)

Returns the list of bound parameters for the signal at `idx`.

* * *

[int](class_int.md#class-int) **get\_connection\_count**() const [🔗](#class-scenestate-method-get-connection-count)

Returns the number of signal connections in the scene.

The `idx` argument used to query connection metadata in other `get_connection_*` methods in the interval `[0, get_connection_count() - 1]`.

* * *

[int](class_int.md#class-int) **get\_connection\_flags**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-flags)

Returns the connection flags for the signal at `idx`. See [ConnectFlags](class_object.md#enum-object-connectflags) constants.

* * *

[StringName](class_stringname.md#class-stringname) **get\_connection\_method**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-method)

Returns the method connected to the signal at `idx`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_connection\_signal**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-signal)

Returns the name of the signal at `idx`.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_connection\_source**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-source)

Returns the path to the node that owns the signal at `idx`, relative to the root node.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_connection\_target**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-target)

Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.

* * *

[int](class_int.md#class-int) **get\_connection\_unbinds**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-connection-unbinds)

Returns the number of unbound parameters for the signal at `idx`.

* * *

[int](class_int.md#class-int) **get\_node\_count**() const [🔗](#class-scenestate-method-get-node-count)

Returns the number of nodes in the scene.

The `idx` argument used to query node data in other `get_node_*` methods in the interval `[0, get_node_count() - 1]`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_node\_groups**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-groups)

Returns the list of group names associated with the node at `idx`.

* * *

[int](class_int.md#class-int) **get\_node\_index**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-index)

Returns the node's index, which is its position relative to its siblings. This is only relevant and saved in scenes for cases where new nodes are added to an instantiated or inherited scene among siblings from the base scene. Despite the name, this index is not related to the `idx` argument used here and in other methods.

* * *

[PackedScene](class_packedscene.md#class-packedscene) **get\_node\_instance**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-instance)

Returns a [PackedScene](class_packedscene.md#class-packedscene) for the node at `idx` (i.e. the whole branch starting at this node, with its child nodes and resources), or `null` if the node is not an instance.

* * *

[String](class_string.md#class-string) **get\_node\_instance\_placeholder**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-instance-placeholder)

Returns the path to the represented scene file if the node at `idx` is an [InstancePlaceholder](class_instanceplaceholder.md#class-instanceplaceholder).

* * *

[StringName](class_stringname.md#class-stringname) **get\_node\_name**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-name)

Returns the name of the node at `idx`.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_node\_owner\_path**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-owner-path)

Returns the path to the owner of the node at `idx`, relative to the root node.

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_node\_path**(idx: [int](class_int.md#class-int), for\_parent: [bool](class_bool.md#class-bool) = false) const [🔗](#class-scenestate-method-get-node-path)

Returns the path to the node at `idx`.

If `for_parent` is `true`, returns the path of the `idx` node's parent instead.

* * *

[int](class_int.md#class-int) **get\_node\_property\_count**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-property-count)

Returns the number of exported or overridden properties for the node at `idx`.

The `prop_idx` argument used to query node property data in other `get_node_property_*` methods in the interval `[0, get_node_property_count() - 1]`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_node\_property\_name**(idx: [int](class_int.md#class-int), prop\_idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-property-name)

Returns the name of the property at `prop_idx` for the node at `idx`.

* * *

[Variant](class_variant.md#class-variant) **get\_node\_property\_value**(idx: [int](class_int.md#class-int), prop\_idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-property-value)

Returns the value of the property at `prop_idx` for the node at `idx`.

* * *

[StringName](class_stringname.md#class-stringname) **get\_node\_type**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-get-node-type)

Returns the type of the node at `idx`.

* * *

[String](class_string.md#class-string) **get\_path**() const [🔗](#class-scenestate-method-get-path)

Returns the resource path to the represented [PackedScene](class_packedscene.md#class-packedscene).

* * *

[bool](class_bool.md#class-bool) **is\_node\_instance\_placeholder**(idx: [int](class_int.md#class-int)) const [🔗](#class-scenestate-method-is-node-instance-placeholder)

Returns `true` if the node at `idx` is an [InstancePlaceholder](class_instanceplaceholder.md#class-instanceplaceholder).

[Previous](class_scenemultiplayer.md "SceneMultiplayer") [Next](class_scenetree.md "SceneTree")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scenemultiplayer.md "SceneMultiplayer") [Next](class_scenetree.md "SceneTree")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).