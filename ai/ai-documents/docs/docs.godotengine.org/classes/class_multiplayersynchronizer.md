---
title: MultiplayerSynchronizer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayersynchronizer.html
crawled_at: "2026-08-13T10:27:28+12:00"
content_hash: af88d82a7136fefa403e04caf8a75448566ae55dc773cbaa6ea0c378ed49ae2f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerSynchronizer

* * *

# MultiplayerSynchronizer

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Synchronizes properties from the multiplayer authority to the remote peers.

## Description

By default, **MultiplayerSynchronizer** synchronizes configured properties to all peers.

Visibility can be handled directly with [set\_visibility\_for()](#class-multiplayersynchronizer-method-set-visibility-for) or as-needed with [add\_visibility\_filter()](#class-multiplayersynchronizer-method-add-visibility-filter) and [update\_visibility()](#class-multiplayersynchronizer-method-update-visibility).

[MultiplayerSpawner](class_multiplayerspawner.md#class-multiplayerspawner) s will handle nodes according to visibility of synchronizers as long as the node at [root\_path](#class-multiplayersynchronizer-property-root-path) was spawned by one.

Internally, **MultiplayerSynchronizer** uses [MultiplayerAPI.object\_configuration\_add()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-add) to notify synchronization start passing the [Node](class_node.md#class-node) at [root\_path](#class-multiplayersynchronizer-property-root-path) as the `object` and itself as the `configuration`, and uses [MultiplayerAPI.object\_configuration\_remove()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-remove) to notify synchronization end in a similar way.

**Note:** Synchronization is not supported for [Object](class_object.md#class-object) type properties, like [Resource](class_resource.md#class-resource). Properties that are unique to each peer, like the instance IDs of [Object](class_object.md#class-object) s (see [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id)) or [RID](class_rid.md#class-rid) s, will also not work in synchronization.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [delta\_interval](#class-multiplayersynchronizer-property-delta-interval) | `0.0` |
| [bool](class_bool.md#class-bool) | [public\_visibility](#class-multiplayersynchronizer-property-public-visibility) | `true` |
| [SceneReplicationConfig](class_scenereplicationconfig.md#class-scenereplicationconfig) | [replication\_config](#class-multiplayersynchronizer-property-replication-config) |  |
| [float](class_float.md#class-float) | [replication\_interval](#class-multiplayersynchronizer-property-replication-interval) | `0.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [root\_path](#class-multiplayersynchronizer-property-root-path) | `NodePath("..")` |
| [VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) | [visibility\_update\_mode](#class-multiplayersynchronizer-property-visibility-update-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_visibility\_filter](#class-multiplayersynchronizer-method-add-visibility-filter)(filter: [Callable](class_callable.md#class-callable)) |
| [bool](class_bool.md#class-bool) | [get\_visibility\_for](#class-multiplayersynchronizer-method-get-visibility-for)(peer: [int](class_int.md#class-int)) const |
| void | [remove\_visibility\_filter](#class-multiplayersynchronizer-method-remove-visibility-filter)(filter: [Callable](class_callable.md#class-callable)) |
| void | [set\_visibility\_for](#class-multiplayersynchronizer-method-set-visibility-for)(peer: [int](class_int.md#class-int), visible: [bool](class_bool.md#class-bool)) |
| void | [update\_visibility](#class-multiplayersynchronizer-method-update-visibility)(for\_peer: [int](class_int.md#class-int) = 0) |

* * *

## Signals

**delta\_synchronized**() [🔗](#class-multiplayersynchronizer-signal-delta-synchronized)

Emitted when a new delta synchronization state is received by this synchronizer after the properties have been updated.

* * *

**synchronized**() [🔗](#class-multiplayersynchronizer-signal-synchronized)

Emitted when a new synchronization state is received by this synchronizer after the properties have been updated.

* * *

**visibility\_changed**(for\_peer: [int](class_int.md#class-int)) [🔗](#class-multiplayersynchronizer-signal-visibility-changed)

Emitted when visibility of `for_peer` is updated. See [update\_visibility()](#class-multiplayersynchronizer-method-update-visibility).

* * *

## Enumerations

enum **VisibilityUpdateMode**: [🔗](#enum-multiplayersynchronizer-visibilityupdatemode)

[VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) **VISIBILITY\_PROCESS\_IDLE** = `0`

Visibility filters are updated during process frames (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

[VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) **VISIBILITY\_PROCESS\_PHYSICS** = `1`

Visibility filters are updated during physics frames (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)).

[VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) **VISIBILITY\_PROCESS\_NONE** = `2`

Visibility filters are not updated automatically, and must be updated manually by calling [update\_visibility()](#class-multiplayersynchronizer-method-update-visibility).

* * *

## Property Descriptions

[float](class_float.md#class-float) **delta\_interval** = `0.0` [🔗](#class-multiplayersynchronizer-property-delta-interval)

- void **set\_delta\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_delta\_interval**()


Time interval between delta synchronizations. Used when the replication is set to [SceneReplicationConfig.REPLICATION\_MODE\_ON\_CHANGE](class_scenereplicationconfig.md#class-scenereplicationconfig-constant-replication-mode-on-change). If set to `0.0` (the default), delta synchronizations happen every network process frame.

* * *

[bool](class_bool.md#class-bool) **public\_visibility** = `true` [🔗](#class-multiplayersynchronizer-property-public-visibility)

- void **set\_visibility\_public**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visibility\_public**()


Whether synchronization should be visible to all peers by default. See [set\_visibility\_for()](#class-multiplayersynchronizer-method-set-visibility-for) and [add\_visibility\_filter()](#class-multiplayersynchronizer-method-add-visibility-filter) for ways of configuring fine-grained visibility options.

* * *

[SceneReplicationConfig](class_scenereplicationconfig.md#class-scenereplicationconfig) **replication\_config** [🔗](#class-multiplayersynchronizer-property-replication-config)

- void **set\_replication\_config**(value: [SceneReplicationConfig](class_scenereplicationconfig.md#class-scenereplicationconfig))

- [SceneReplicationConfig](class_scenereplicationconfig.md#class-scenereplicationconfig) **get\_replication\_config**()


Resource containing which properties to synchronize.

* * *

[float](class_float.md#class-float) **replication\_interval** = `0.0` [🔗](#class-multiplayersynchronizer-property-replication-interval)

- void **set\_replication\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_replication\_interval**()


Time interval between synchronizations. Used when the replication is set to [SceneReplicationConfig.REPLICATION\_MODE\_ALWAYS](class_scenereplicationconfig.md#class-scenereplicationconfig-constant-replication-mode-always). If set to `0.0` (the default), synchronizations happen every network process frame.

* * *

[NodePath](class_nodepath.md#class-nodepath) **root\_path** = `NodePath("..")` [🔗](#class-multiplayersynchronizer-property-root-path)

- void **set\_root\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_root\_path**()


Node path that replicated properties are relative to.

If [root\_path](#class-multiplayersynchronizer-property-root-path) was spawned by a [MultiplayerSpawner](class_multiplayerspawner.md#class-multiplayerspawner), the node will be also be spawned and despawned based on this synchronizer visibility options.

* * *

[VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) **visibility\_update\_mode** = `0` [🔗](#class-multiplayersynchronizer-property-visibility-update-mode)

- void **set\_visibility\_update\_mode**(value: [VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode))

- [VisibilityUpdateMode](#enum-multiplayersynchronizer-visibilityupdatemode) **get\_visibility\_update\_mode**()


Specifies when visibility filters are updated.

* * *

## Method Descriptions

void **add\_visibility\_filter**(filter: [Callable](class_callable.md#class-callable)) [🔗](#class-multiplayersynchronizer-method-add-visibility-filter)

Adds a peer visibility filter for this synchronizer.

`filter` should take a peer ID [int](class_int.md#class-int) and return a [bool](class_bool.md#class-bool).

* * *

[bool](class_bool.md#class-bool) **get\_visibility\_for**(peer: [int](class_int.md#class-int)) const [🔗](#class-multiplayersynchronizer-method-get-visibility-for)

Queries the current visibility for peer `peer`.

* * *

void **remove\_visibility\_filter**(filter: [Callable](class_callable.md#class-callable)) [🔗](#class-multiplayersynchronizer-method-remove-visibility-filter)

Removes a peer visibility filter from this synchronizer.

* * *

void **set\_visibility\_for**(peer: [int](class_int.md#class-int), visible: [bool](class_bool.md#class-bool)) [🔗](#class-multiplayersynchronizer-method-set-visibility-for)

Sets the visibility of `peer` to `visible`. If `peer` is `0`, the value of [public\_visibility](#class-multiplayersynchronizer-property-public-visibility) will be updated instead.

* * *

void **update\_visibility**(for\_peer: [int](class_int.md#class-int) = 0) [🔗](#class-multiplayersynchronizer-method-update-visibility)

Updates the visibility of `for_peer` according to visibility filters. If `for_peer` is `0` (the default), all peers' visibilties are updated.

[Previous](class_multiplayerspawner.md "MultiplayerSpawner") [Next](class_navigationagent2d.md "NavigationAgent2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multiplayerspawner.md "MultiplayerSpawner") [Next](class_navigationagent2d.md "NavigationAgent2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).