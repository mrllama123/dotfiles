---
title: PackedScene — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_packedscene.html
crawled_at: "2026-08-13T10:42:26+12:00"
content_hash: 791712c28f0c17b930109ba8b3b57f2fa2d49465d5f2a7c0f4e419176ae4534f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PackedScene

* * *

# PackedScene

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An abstraction of a serialized scene.

## Description

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.

Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see [Node.owner](class_node.md#class-node-property-owner) property).

**Note:** The node doesn't need to own itself.

**Example:** Load a saved scene:

GDScriptC#

```
# Use load() instead of preload() if the path isn't known at compile-time.
var scene = preload("res://scene.tscn").instantiate()
# Add the node as a child of the node the script is attached to.
add_child(scene)

```

```
// C# has no preload, so you have to always use ResourceLoader.Load<PackedScene>().
var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
// Add the node as a child of the node the script is attached to.
AddChild(scene);

```

**Example:** Save a node with different owners. The following example creates 3 objects: [Node2D](class_node2d.md#class-node2d) ( `node`), [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d) ( `body`) and [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) ( `collision`). `collision` is a child of `body` which is a child of `node`. Only `body` is owned by `node` and [pack()](#class-packedscene-method-pack) will therefore only save those two nodes, but not `collision`.

GDScriptC#

```
# Create the objects.
var node = Node2D.new()
var body = RigidBody2D.new()
var collision = CollisionShape2D.new()

# Create the object hierarchy.
body.add_child(collision)
node.add_child(body)

# Change owner of `body`, but not of `collision`.
body.owner = node
var scene = PackedScene.new()

# Only `node` and `body` are now packed.
var result = scene.pack(node)
if result == OK:
    var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
    if error != OK:
        push_error("An error occurred while saving the scene to disk.")

```

```
// Create the objects.
var node = new Node2D();
var body = new RigidBody2D();
var collision = new CollisionShape2D();

// Create the object hierarchy.
body.AddChild(collision);
node.AddChild(body);

// Change owner of `body`, but not of `collision`.
body.Owner = node;
var scene = new PackedScene();

// Only `node` and `body` are now packed.
Error result = scene.Pack(node);
if (result == Error.Ok)
{
    Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
    if (error != Error.Ok)
    {
        GD.PushError("An error occurred while saving the scene to disk.");
    }
}

```

## Tutorials

- [2D Role Playing Game (RPG) Demo](https://godotengine.org/asset-library/asset/2729)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [can\_instantiate](#class-packedscene-method-can-instantiate)() const |
| [SceneState](class_scenestate.md#class-scenestate) | [get\_state](#class-packedscene-method-get-state)() const |
| [Node](class_node.md#class-node) | [instantiate](#class-packedscene-method-instantiate)(edit\_state: [GenEditState](#enum-packedscene-geneditstate) = 0) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [pack](#class-packedscene-method-pack)(path: [Node](class_node.md#class-node)) |

* * *

## Enumerations

enum **GenEditState**: [🔗](#enum-packedscene-geneditstate)

[GenEditState](#enum-packedscene-geneditstate) **GEN\_EDIT\_STATE\_DISABLED** = `0`

If passed to [instantiate()](#class-packedscene-method-instantiate), blocks edits to the scene state.

[GenEditState](#enum-packedscene-geneditstate) **GEN\_EDIT\_STATE\_INSTANCE** = `1`

If passed to [instantiate()](#class-packedscene-method-instantiate), provides local scene resources to the local scene.

**Note:** Only available in editor builds.

[GenEditState](#enum-packedscene-geneditstate) **GEN\_EDIT\_STATE\_MAIN** = `2`

If passed to [instantiate()](#class-packedscene-method-instantiate), provides local scene resources to the local scene. Only the main scene should receive the main edit state.

**Note:** Only available in editor builds.

[GenEditState](#enum-packedscene-geneditstate) **GEN\_EDIT\_STATE\_MAIN\_INHERITED** = `3`

It's similar to [GEN\_EDIT\_STATE\_MAIN](#class-packedscene-constant-gen-edit-state-main), but for the case where the scene is being instantiated to be the base of another one.

**Note:** Only available in editor builds.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **can\_instantiate**() const [🔗](#class-packedscene-method-can-instantiate)

Returns `true` if the scene file has nodes.

* * *

[SceneState](class_scenestate.md#class-scenestate) **get\_state**() const [🔗](#class-packedscene-method-get-state)

Returns the [SceneState](class_scenestate.md#class-scenestate) representing the scene file contents.

* * *

[Node](class_node.md#class-node) **instantiate**(edit\_state: [GenEditState](#enum-packedscene-geneditstate) = 0) const [🔗](#class-packedscene-method-instantiate)

Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a [Node.NOTIFICATION\_SCENE\_INSTANTIATED](class_node.md#class-node-constant-notification-scene-instantiated) notification on the root node.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **pack**(path: [Node](class_node.md#class-node)) [🔗](#class-packedscene-method-pack)

Packs the `path` node, and all owned sub-nodes, into this **PackedScene**. Any existing data will be cleared. See [Node.owner](class_node.md#class-node-property-owner).

[Previous](class_packeddatacontainer.md "PackedDataContainer") [Next](class_panoramaskymaterial.md "PanoramaSkyMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packeddatacontainer.md "PackedDataContainer") [Next](class_panoramaskymaterial.md "PanoramaSkyMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).