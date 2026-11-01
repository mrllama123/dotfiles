---
title: OfflineMultiplayerPeer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_offlinemultiplayerpeer.html
crawled_at: "2026-08-13T10:23:41+12:00"
content_hash: 446afe76f3863fca20aee366388c755e783d4a85c15b7cf34eeb4a518257156a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OfflineMultiplayerPeer

* * *

# OfflineMultiplayerPeer

**Inherits:** [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) **<** [PacketPeer](class_packetpeer.md#class-packetpeer) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [MultiplayerPeer](class_multiplayerpeer.md#class-multiplayerpeer) which is always connected and acts as a server.

## Description

This is the default [MultiplayerAPI.multiplayer\_peer](class_multiplayerapi.md#class-multiplayerapi-property-multiplayer-peer) for the [Node.multiplayer](class_node.md#class-node-property-multiplayer). It mimics the behavior of a server with no peers connected.

This means that the [SceneTree](class_scenetree.md#class-scenetree) will act as the multiplayer authority by default. Calls to [MultiplayerAPI.is\_server()](class_multiplayerapi.md#class-multiplayerapi-method-is-server) will return `true`, and calls to [MultiplayerAPI.get\_unique\_id()](class_multiplayerapi.md#class-multiplayerapi-method-get-unique-id) will return [MultiplayerPeer.TARGET\_PEER\_SERVER](class_multiplayerpeer.md#class-multiplayerpeer-constant-target-peer-server).

[Previous](class_node3dgizmo.md "Node3DGizmo") [Next](class_oggpacketsequenceplayback.md "OggPacketSequencePlayback")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_node3dgizmo.md "Node3DGizmo") [Next](class_oggpacketsequenceplayback.md "OggPacketSequencePlayback")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).