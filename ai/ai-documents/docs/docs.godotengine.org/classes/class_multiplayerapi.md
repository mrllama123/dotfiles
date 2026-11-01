---
title: MultiplayerAPI — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_multiplayerapi.html
crawled_at: "2026-08-13T10:36:32+12:00"
content_hash: 898c21c24f5e2dbfa759ae1b2bc1e8c629d9316ac9e552bc4a69f36719effe51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MultiplayerAPI

* * *

# MultiplayerAPI

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [MultiplayerAPIExtension](class_multiplayerapiextension.md#class-multiplayerapiextension), [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer)

High-level multiplayer API interface.

## Description

Base class for high-level multiplayer API implementations. See also [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer).

By default, [SceneTree](class_scenetree.md#class-scenetree) has a reference to an implementation of this class and uses it to provide multiplayer capabilities (i.e. RPCs) across the whole scene.

It is possible to override the MultiplayerAPI instance used by specific tree branches by calling the [SceneTree.set\_multiplayer()](class_scenetree.md#class-scenetree-method-set-multiplayer) method, effectively allowing to run both client and server in the same scene.

It is also possible to extend or replace the default implementation via scripting or native extensions. See [MultiplayerAPIExtension](class_multiplayerapiextension.md#class-multiplayerapiextension) for details about extensions, [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer) for the details about the default implementation.

## Properties

|     |     |
| --- | --- |
| [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) | [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) |

## Methods

|     |     |
| --- | --- |
| [MultiplayerAPI](#class-multiplayerapi) | [create\_default\_interface](#class-multiplayerapi-method-create-default-interface)() static |
| [StringName](class_stringname.md#class-stringname) | [get\_default\_interface](#class-multiplayerapi-method-get-default-interface)() static |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_peers](#class-multiplayerapi-method-get-peers)() |
| [int](class_int.md#class-int) | [get\_remote\_sender\_id](#class-multiplayerapi-method-get-remote-sender-id)() |
| [int](class_int.md#class-int) | [get\_unique\_id](#class-multiplayerapi-method-get-unique-id)() |
| [bool](class_bool.md#class-bool) | [has\_multiplayer\_peer](#class-multiplayerapi-method-has-multiplayer-peer)() |
| [bool](class_bool.md#class-bool) | [is\_server](#class-multiplayerapi-method-is-server)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [object\_configuration\_add](#class-multiplayerapi-method-object-configuration-add)(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [object\_configuration\_remove](#class-multiplayerapi-method-object-configuration-remove)(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [poll](#class-multiplayerapi-method-poll)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [rpc](#class-multiplayerapi-method-rpc)(peer: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), arguments: [Array](class_array.md#class-array) = \[\]) |
| void | [set\_default\_interface](#class-multiplayerapi-method-set-default-interface)(interface\_name: [StringName](class_stringname.md#class-stringname)) static |

* * *

## Signals

**connected\_to\_server**() [🔗](#class-multiplayerapi-signal-connected-to-server)

Emitted when this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) successfully connected to a server. Only emitted on clients.

* * *

**connection\_failed**() [🔗](#class-multiplayerapi-signal-connection-failed)

Emitted when this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) fails to establish a connection to a server. Only emitted on clients.

* * *

**peer\_connected**(id: [int](class_int.md#class-int)) [🔗](#class-multiplayerapi-signal-peer-connected)

Emitted when this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) connects with a new peer. ID is the peer ID of the new peer. Clients get notified when other clients connect to the same server. Upon connecting to a server, a client also receives this signal for the server (with ID being 1).

* * *

**peer\_disconnected**(id: [int](class_int.md#class-int)) [🔗](#class-multiplayerapi-signal-peer-disconnected)

Emitted when this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) disconnects from a peer. Clients get notified when other clients disconnect from the same server.

* * *

**server\_disconnected**() [🔗](#class-multiplayerapi-signal-server-disconnected)

Emitted when this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) disconnects from server. Only emitted on clients.

* * *

## Enumerations

enum **RPCMode**: [🔗](#enum-multiplayerapi-rpcmode)

[RPCMode](#enum-multiplayerapi-rpcmode) **RPC\_MODE\_DISABLED** = `0`

Used with [Node.rpc\_config()](class_node.md#class-node-method-rpc-config) to disable a method or property for all RPC calls, making it unavailable. Default for all methods.

[RPCMode](#enum-multiplayerapi-rpcmode) **RPC\_MODE\_ANY\_PEER** = `1`

Used with [Node.rpc\_config()](class_node.md#class-node-method-rpc-config) to set a method to be callable remotely by any peer. Analogous to the `@rpc("any_peer")` annotation. Calls are accepted from all remote peers, no matter if they are node's authority or not.

[RPCMode](#enum-multiplayerapi-rpcmode) **RPC\_MODE\_AUTHORITY** = `2`

Used with [Node.rpc\_config()](class_node.md#class-node-method-rpc-config) to set a method to be callable remotely only by the current multiplayer authority (which is the server by default). Analogous to the `@rpc("authority")` annotation. See [Node.set\_multiplayer\_authority()](class_node.md#class-node-method-set-multiplayer-authority).

* * *

## Property Descriptions

[MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **multiplayer\_peer** [🔗](#class-multiplayerapi-property-multiplayer-peer)

- void **set\_multiplayer\_peer**(value: [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer))

- [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **get\_multiplayer\_peer**()


The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the MultiplayerAPI will become a network server (check with [is\_server()](#class-multiplayerapi-method-is-server)) and will set root node's network mode to authority, or it will become a regular client peer. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to MultiplayerAPI's signals.

* * *

## Method Descriptions

[MultiplayerAPI](#class-multiplayerapi) **create\_default\_interface**() static [🔗](#class-multiplayerapi-method-create-default-interface)

Returns a new instance of the default MultiplayerAPI.

* * *

[StringName](class_stringname.md#class-stringname) **get\_default\_interface**() static [🔗](#class-multiplayerapi-method-get-default-interface)

Returns the default MultiplayerAPI implementation class name. This is usually `"SceneMultiplayer"` when [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer) is available. See [set\_default\_interface()](#class-multiplayerapi-method-set-default-interface).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_peers**() [🔗](#class-multiplayerapi-method-get-peers)

Returns the peer IDs of all connected peers of this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer).

* * *

[int](class_int.md#class-int) **get\_remote\_sender\_id**() [🔗](#class-multiplayerapi-method-get-remote-sender-id)

Returns the sender's peer ID for the RPC currently being executed.

**Note:** This method returns `0` when called outside of an RPC. As such, the original peer ID may be lost when code execution is delayed (such as with GDScript's `await` keyword).

* * *

[int](class_int.md#class-int) **get\_unique\_id**() [🔗](#class-multiplayerapi-method-get-unique-id)

Returns the unique peer ID of this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer).

* * *

[bool](class_bool.md#class-bool) **has\_multiplayer\_peer**() [🔗](#class-multiplayerapi-method-has-multiplayer-peer)

Returns `true` if there is a [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) set.

* * *

[bool](class_bool.md#class-bool) **is\_server**() [🔗](#class-multiplayerapi-method-is-server)

Returns `true` if this MultiplayerAPI's [multiplayer\_peer](#class-multiplayerapi-property-multiplayer-peer) is valid and in server mode (listening for connections).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **object\_configuration\_add**(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) [🔗](#class-multiplayerapi-method-object-configuration-add)

Notifies the MultiplayerAPI of a new `configuration` for the given `object`. This method is used internally by [SceneTree](class_scenetree.md#class-scenetree) to configure the root path for this MultiplayerAPI (passing `null` and a valid [NodePath](class_nodepath.md#class-nodepath) as `configuration`). This method can be further used by MultiplayerAPI implementations to provide additional features, refer to specific implementation (e.g. [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer)) for details on how they use it.

**Note:** This method is mostly relevant when extending or overriding the MultiplayerAPI behavior via [MultiplayerAPIExtension](class_multiplayerapiextension.md#class-multiplayerapiextension).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **object\_configuration\_remove**(object: [Object](class_object.md#class-object), configuration: [Variant](class_variant.md#class-variant)) [🔗](#class-multiplayerapi-method-object-configuration-remove)

Notifies the MultiplayerAPI to remove a `configuration` for the given `object`. This method is used internally by [SceneTree](class_scenetree.md#class-scenetree) to configure the root path for this MultiplayerAPI (passing `null` and an empty [NodePath](class_nodepath.md#class-nodepath) as `configuration`). This method can be further used by MultiplayerAPI implementations to provide additional features, refer to specific implementation (e.g. [SceneMultiplayer](class_scenemultiplayer.md#class-scenemultiplayer)) for details on how they use it.

**Note:** This method is mostly relevant when extending or overriding the MultiplayerAPI behavior via [MultiplayerAPIExtension](class_multiplayerapiextension.md#class-multiplayerapiextension).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **poll**() [🔗](#class-multiplayerapi-method-poll)

Method used for polling the MultiplayerAPI. You only need to worry about this if you set [SceneTree.multiplayer\_poll](class_scenetree.md#class-scenetree-property-multiplayer-poll) to `false`. By default, [SceneTree](class_scenetree.md#class-scenetree) will poll its MultiplayerAPI(s) for you.

**Note:** This method results in RPCs being called, so they will be executed in the same context of this function (e.g. `_process`, `physics`, [Thread](class_thread.md#class-thread)).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **rpc**(peer: [int](class_int.md#class-int), object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname), arguments: [Array](class_array.md#class-array) = \[\]) [🔗](#class-multiplayerapi-method-rpc)

Sends an RPC to the target `peer`. The given `method` will be called on the remote `object` with the provided `arguments`. The RPC may also be called locally depending on the implementation and RPC configuration. See [Node.rpc()](class_node.md#class-node-method-rpc) and [Node.rpc\_config()](class_node.md#class-node-method-rpc-config).

**Note:** Prefer using [Node.rpc()](class_node.md#class-node-method-rpc), [Node.rpc\_id()](class_node.md#class-node-method-rpc-id), or `my_method.rpc(peer, arg1, arg2, ...)` (in GDScript), since they are faster. This method is mostly useful in conjunction with [MultiplayerAPIExtension](class_multiplayerapiextension.md#class-multiplayerapiextension) when extending or replacing the multiplayer capabilities.

* * *

void **set\_default\_interface**(interface\_name: [StringName](class_stringname.md#class-stringname)) static [🔗](#class-multiplayerapi-method-set-default-interface)

Sets the default MultiplayerAPI implementation class. This method can be used by modules and extensions to configure which implementation will be used by [SceneTree](class_scenetree.md#class-scenetree) when the engine starts.

[Previous](class_moviewriter.md "MovieWriter") [Next](class_multiplayerapiextension.md "MultiplayerAPIExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_moviewriter.md "MovieWriter") [Next](class_multiplayerapiextension.md "MultiplayerAPIExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).