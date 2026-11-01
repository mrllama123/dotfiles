---
title: MultiplayerSpawner — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayerspawner.html
crawled_at: "2026-08-13T10:42:10+12:00"
content_hash: 528198642a04a7d85ed388a24400f643855bd45e29f23a886f23434bf2ea6af1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerSpawner

* * *

# MultiplayerSpawner

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Automatically replicates spawnable nodes from the authority to other multiplayer peers.

## Description

Spawnable scenes can be configured in the editor or through code (see [add\_spawnable\_scene()](#class-multiplayerspawner-method-add-spawnable-scene)).

Also supports custom node spawns through [spawn()](#class-multiplayerspawner-method-spawn), calling [spawn\_function](#class-multiplayerspawner-property-spawn-function) on all peers.

Internally, **MultiplayerSpawner** uses [MultiplayerAPI.object\_configuration\_add()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-add) to notify spawns passing the spawned node as the `object` and itself as the `configuration`, and [MultiplayerAPI.object\_configuration\_remove()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-remove) to notify despawns in a similar way.

## Properties

|     |     |     |
| --- | --- | --- |
| [Callable](class_callable.md#class-callable) | [spawn\_function](#class-multiplayerspawner-property-spawn-function) |  |
| [int](class_int.md#class-int) | [spawn\_limit](#class-multiplayerspawner-property-spawn-limit) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [spawn\_path](#class-multiplayerspawner-property-spawn-path) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| void | [add\_spawnable\_scene](#class-multiplayerspawner-method-add-spawnable-scene)(path: [String](class_string.md#class-string)) |
| void | [clear\_spawnable\_scenes](#class-multiplayerspawner-method-clear-spawnable-scenes)() |
| [String](class_string.md#class-string) | [get\_spawnable\_scene](#class-multiplayerspawner-method-get-spawnable-scene)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_spawnable\_scene\_count](#class-multiplayerspawner-method-get-spawnable-scene-count)() const |
| [Node](class_node.md#class-node) | [spawn](#class-multiplayerspawner-method-spawn)(data: [Variant](class_variant.md#class-variant) = null) |

* * *

## Signals

**despawned**(node: [Node](class_node.md#class-node)) [🔗](#class-multiplayerspawner-signal-despawned)

Emitted when a spawnable scene or custom spawn was despawned by the multiplayer authority. Only called on remote peers.

* * *

**spawned**(node: [Node](class_node.md#class-node)) [🔗](#class-multiplayerspawner-signal-spawned)

Emitted when a spawnable scene or custom spawn was spawned by the multiplayer authority. Only called on remote peers.

* * *

## Property Descriptions

[Callable](class_callable.md#class-callable) **spawn\_function** [🔗](#class-multiplayerspawner-property-spawn-function)

- void **set\_spawn\_function**(value: [Callable](class_callable.md#class-callable))

- [Callable](class_callable.md#class-callable) **get\_spawn\_function**()


Method called on all peers when a custom [spawn()](#class-multiplayerspawner-method-spawn) is requested by the authority. Will receive the `data` parameter, and should return a [Node](class_node.md#class-node) that is not in the scene tree.

**Note:** The returned node should **not** be added to the scene with [Node.add\_child()](class_node.md#class-node-method-add-child). This is done automatically.

* * *

[int](class_int.md#class-int) **spawn\_limit** = `0` [🔗](#class-multiplayerspawner-property-spawn-limit)

- void **set\_spawn\_limit**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_spawn\_limit**()


Maximum number of nodes allowed to be spawned by this spawner. Includes both spawnable scenes and custom spawns.

When set to `0` (the default), there is no limit.

* * *

[NodePath](class_nodepath.md#class-nodepath) **spawn\_path** = `NodePath("")` [🔗](#class-multiplayerspawner-property-spawn-path)

- void **set\_spawn\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_spawn\_path**()


Path to the spawn root. Spawnable scenes that are added as direct children are replicated to other peers.

* * *

## Method Descriptions

void **add\_spawnable\_scene**(path: [String](class_string.md#class-string)) [🔗](#class-multiplayerspawner-method-add-spawnable-scene)

Adds a scene path to spawnable scenes, making it automatically replicated from the multiplayer authority to other peers when added as children of the node pointed by [spawn\_path](#class-multiplayerspawner-property-spawn-path).

* * *

void **clear\_spawnable\_scenes**() [🔗](#class-multiplayerspawner-method-clear-spawnable-scenes)

Clears all spawnable scenes. Does not despawn existing instances on remote peers.

* * *

[String](class_string.md#class-string) **get\_spawnable\_scene**(index: [int](class_int.md#class-int)) const [🔗](#class-multiplayerspawner-method-get-spawnable-scene)

Returns the spawnable scene path by index.

* * *

[int](class_int.md#class-int) **get\_spawnable\_scene\_count**() const [🔗](#class-multiplayerspawner-method-get-spawnable-scene-count)

Returns the count of spawnable scene paths.

* * *

[Node](class_node.md#class-node) **spawn**(data: [Variant](class_variant.md#class-variant) = null) [🔗](#class-multiplayerspawner-method-spawn)

Requests a custom spawn, with `data` passed to [spawn\_function](#class-multiplayerspawner-property-spawn-function) on all peers. Returns the locally spawned node instance already inside the scene tree, and added as a child of the node pointed by [spawn\_path](#class-multiplayerspawner-property-spawn-path).

**Note:** Spawnable scenes are spawned automatically. [spawn()](#class-multiplayerspawner-method-spawn) is only needed for custom spawns.

[Previous](class_multimeshinstance3d.md "MultiMeshInstance3D") [Next](class_multiplayersynchronizer.md "MultiplayerSynchronizer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multimeshinstance3d.md "MultiMeshInstance3D") [Next](class_multiplayersynchronizer.md "MultiplayerSynchronizer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).