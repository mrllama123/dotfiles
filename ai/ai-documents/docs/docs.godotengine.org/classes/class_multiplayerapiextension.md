---
title: MultiplayerAPIExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayerapiextension.html
crawled_at: "2026-08-13T10:36:38+12:00"
content_hash: 5752ce461b4bae7004ca8d0f7e41b2c1cc69db0149dd1632b06ab984f5100100
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerAPIExtension

* * *

# MultiplayerAPIExtension

**Inherits:** [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class used for extending the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi).

## Description

This class can be used to extend or replace the default [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) implementation via script or extensions.

The following example extend the default implementation ( [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer)) by logging every RPC being made, and every object being configured for replication.

GDScript

```
extends MultiplayerAPIExtension
class_name LogMultiplayer

# We want to extend the default SceneMultiplayer.
var base_multiplayer = SceneMultiplayer.new()

func _init():
    # Just passthrough base signals (copied to var to avoid cyclic reference)
    var cts = connected_to_server
    var cf = connection_failed
    var sd = server_disconnected
    var pc = peer_connected
    var pd = peer_disconnected
    base_multiplayer.connected_to_server.connect(func(): cts.emit())
    base_multiplayer.connection_failed.connect(func(): cf.emit())
    base_multiplayer.server_disconnected.connect(func(): sd.emit())
    base_multiplayer.peer_connected.connect(func(id): pc.emit(id))
    base_multiplayer.peer_disconnected.connect(func(id): pd.emit(id))

func _poll():
    return base_multiplayer.poll()

# Log RPC being made and forward it to the default multiplayer.
func _rpc(peer: int, object: Object, method: StringName, args: Array) -> Error:
    print("Got RPC for %d: %s::%s(%s)" % [peer, object, method, args])
    return base_multiplayer.rpc(peer, object, method, args)

# Log configuration add. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
func _object_configuration_add(object, config: Variant) -> Error:
    if config is MultiplayerSynchronizer:
        print("Adding synchronization configuration for %s. Synchronizer: %s" % [object, config])
    elif config is MultiplayerSpawner:
        print("Adding node %s to the spawn list. Spawner: %s" % [object, config])
    return base_multiplayer.object_configuration_add(object, config)

# Log configuration remove. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
func _object_configuration_remove(object, config: Variant) -> Error:
    if config is MultiplayerSynchronizer:
        print("Removing synchronization configuration for %s. Synchronizer: %s" % [object, config])
    elif config is MultiplayerSpawner:
        print("Removing node %s from the spawn list. Spawner: %s" % [object, config])
    return base_multiplayer.object_configuration_remove(object, config)

# These can be optional, but in our case we want to extend SceneMultiplayer, so forward everything.
func _set_multiplayer_peer(p_peer: MultiplayerPeer):
    base_multiplayer.multiplayer_peer = p_peer

func _get_multiplayer_peer() -> MultiplayerPeer:
    return base_multiplayer.multiplayer_peer

func _get_unique_id() -> int:
    return base_multiplayer.get_unique_id()

func _get_remote_sender_id() -> int:
    return base_multiplayer.get_remote_sender_id()

func _get_peer_ids() -> PackedInt32Array:
    return base_multiplayer.get_peers()

```

Then in your main scene or in an autoload call [SceneTree.set\_multiplayer()](class_scenetree.md#class-scenetree-method-set-multiplayer) to start using your custom [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi):

GDScript

```
# autoload.gd
func _enter_tree():
    # Sets our custom multiplayer as the main one in SceneTree.
    get_tree().set_multiplayer(LogMultiplayer.new())

```

Native extensions can alternatively use the [MultiplayerAPI.set\_default\_interface()](class_multiplayerapi.md#class-multiplayerapi-method-set-default-interface) method during initialization to configure themselves as the default implementation.

## Methods

|     |     |
| --- | --- |
| [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) | [\_get\_multiplayer\_peer](#class-multiplayerapiextension-private-method-get-multiplayer-peer)() virtual |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [\_get\_peer\_ids](#class-multiplayerapiextension-private-method-get-peer-ids)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_remote\_sender\_id](#class-multiplayerapiextension-private-method-get-remote-sender-id)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_unique\_id](#class-multiplayerapiextension-private-method-get-unique-id)() virtualconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_object\_configuration\_add](#class-multiplayerapiextension-private-method-object-configuration-add)(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_object\_configuration\_remove](#class-multiplayerapiextension-private-method-object-configuration-remove)(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_poll](#class-multiplayerapiextension-private-method-poll)() virtual |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_rpc](#class-multiplayerapiextension-private-method-rpc)(peer: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), args: [Array](class_array.md#class-array)) virtual |
| void | [\_set\_multiplayer\_peer](#class-multiplayerapiextension-private-method-set-multiplayer-peer)(multiplayer\_peer: [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer)) virtual |

* * *

## Method Descriptions

[MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **\_get\_multiplayer\_peer**() virtual [🔗](#class-multiplayerapiextension-private-method-get-multiplayer-peer)

Called when the [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) is retrieved.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **\_get\_peer\_ids**() virtualconst [🔗](#class-multiplayerapiextension-private-method-get-peer-ids)

Callback for [MultiplayerAPI.get\_peers()](class_multiplayerapi.md#class-multiplayerapi-method-get-peers).

* * *

[int](class_int.md#class-int) **\_get\_remote\_sender\_id**() virtualconst [🔗](#class-multiplayerapiextension-private-method-get-remote-sender-id)

Callback for [MultiplayerAPI.get\_remote\_sender\_id()](class_multiplayerapi.md#class-multiplayerapi-method-get-remote-sender-id).

* * *

[int](class_int.md#class-int) **\_get\_unique\_id**() virtualconst [🔗](#class-multiplayerapiextension-private-method-get-unique-id)

Callback for [MultiplayerAPI.get\_unique\_id()](class_multiplayerapi.md#class-multiplayerapi-method-get-unique-id).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_object\_configuration\_add**(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) virtual [🔗](#class-multiplayerapiextension-private-method-object-configuration-add)

Callback for [MultiplayerAPI.object\_configuration\_add()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-add).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_object\_configuration\_remove**(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) virtual [🔗](#class-multiplayerapiextension-private-method-object-configuration-remove)

Callback for [MultiplayerAPI.object\_configuration\_remove()](class_multiplayerapi.md#class-multiplayerapi-method-object-configuration-remove).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_poll**() virtual [🔗](#class-multiplayerapiextension-private-method-poll)

Callback for [MultiplayerAPI.poll()](class_multiplayerapi.md#class-multiplayerapi-method-poll).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_rpc**(peer: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), args: [Array](class_array.md#class-array)) virtual [🔗](#class-multiplayerapiextension-private-method-rpc)

Callback for [MultiplayerAPI.rpc()](class_multiplayerapi.md#class-multiplayerapi-method-rpc).

* * *

void **\_set\_multiplayer\_peer**(multiplayer\_peer: [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer)) virtual [🔗](#class-multiplayerapiextension-private-method-set-multiplayer-peer)

Called when the [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) is set.

[Previous](class_multiplayerapi.md "MultiplayerAPI") [Next](class_multiplayerpeer.md "MultiplayerPeer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multiplayerapi.md "MultiplayerAPI") [Next](class_multiplayerpeer.md "MultiplayerPeer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).