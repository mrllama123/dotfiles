---
title: SceneTree — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scenetree.html
crawled_at: "2026-08-13T10:35:53+12:00"
content_hash: 0126979a97dde279d072ffe3990abebb8ef2fe83d080a5e93c7031d6ae674d0e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SceneTree

* * *

# SceneTree

**Inherits:** [MainLoop](class_mainloop.md#class-mainloop) **<** [Object](class_object.md#class-object)

Manages the game loop via a hierarchy of nodes.

## Description

As one of the most important classes, the **SceneTree** manages the hierarchy of nodes in a scene, as well as scenes themselves. Nodes can be added, fetched and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.

You can also use the **SceneTree** to organize your nodes into **groups**: every node can be added to as many groups as you want to create, e.g. an "enemy" group. You can then iterate these groups or even call methods and set properties on all the nodes belonging to any given group.

**SceneTree** is the default [MainLoop](class_mainloop.md#class-mainloop) implementation used by the engine, and is thus in charge of the game loop.

## Tutorials

- [SceneTree](../tutorials/scripting/scene_tree.md)

- [Multiple resolutions](../tutorials/rendering/multiple_resolutions.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [auto\_accept\_quit](#class-scenetree-property-auto-accept-quit) | `true` |
| [Node](class_node.md#class-node) | [current\_scene](#class-scenetree-property-current-scene) |  |
| [bool](class_bool.md#class-bool) | [debug\_collisions\_hint](#class-scenetree-property-debug-collisions-hint) | `false` |
| [bool](class_bool.md#class-bool) | [debug\_navigation\_hint](#class-scenetree-property-debug-navigation-hint) | `false` |
| [bool](class_bool.md#class-bool) | [debug\_paths\_hint](#class-scenetree-property-debug-paths-hint) | `false` |
| [Node](class_node.md#class-node) | [edited\_scene\_root](#class-scenetree-property-edited-scene-root) |  |
| [bool](class_bool.md#class-bool) | [multiplayer\_poll](#class-scenetree-property-multiplayer-poll) | `true` |
| [bool](class_bool.md#class-bool) | [paused](#class-scenetree-property-paused) | `false` |
| [bool](class_bool.md#class-bool) | [physics\_interpolation](#class-scenetree-property-physics-interpolation) | `false` |
| [bool](class_bool.md#class-bool) | [quit\_on\_go\_back](#class-scenetree-property-quit-on-go-back) | `true` |
| [Window](class_window.md#class-window) | [root](#class-scenetree-property-root) |  |

## Methods

|     |     |
| --- | --- |
| void | [call\_group](#class-scenetree-method-call-group)(group: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| void | [call\_group\_flags](#class-scenetree-method-call-group-flags)(flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg |
| [Error](class_@globalscope.md#enum-globalscope-error) | [change\_scene\_to\_file](#class-scenetree-method-change-scene-to-file)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [change\_scene\_to\_packed](#class-scenetree-method-change-scene-to-packed)(packed\_scene: [PackedScene](class_packedscene.md#class-packedscene)) |
| [SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer) | [create\_timer](#class-scenetree-method-create-timer)(time\_sec: [float](class_float.md#class-float), process\_always: [bool](class_bool.md#class-bool) = true, process\_in\_physics: [bool](class_bool.md#class-bool) = false, ignore\_time\_scale: [bool](class_bool.md#class-bool) = false) |
| [Tween](class_tween.md#class-tween) | [create\_tween](#class-scenetree-method-create-tween)() |
| [Node](class_node.md#class-node) | [get\_first\_node\_in\_group](#class-scenetree-method-get-first-node-in-group)(group: [StringName](class_stringname.md#class-stringname)) |
| [int](class_int.md#class-int) | [get\_frame](#class-scenetree-method-get-frame)() const |
| [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) | [get\_multiplayer](#class-scenetree-method-get-multiplayer)(for\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath("")) const |
| [int](class_int.md#class-int) | [get\_node\_count](#class-scenetree-method-get-node-count)() const |
| [int](class_int.md#class-int) | [get\_node\_count\_in\_group](#class-scenetree-method-get-node-count-in-group)(group: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] | [get\_nodes\_in\_group](#class-scenetree-method-get-nodes-in-group)(group: [StringName](class_stringname.md#class-stringname)) |
| [Array](class_array.md#class-array)\[ [Tween](class_tween.md#class-tween)\] | [get\_processed\_tweens](#class-scenetree-method-get-processed-tweens)() |
| [bool](class_bool.md#class-bool) | [has\_group](#class-scenetree-method-has-group)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_accessibility\_enabled](#class-scenetree-method-is-accessibility-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_accessibility\_supported](#class-scenetree-method-is-accessibility-supported)() const |
| void | [notify\_group](#class-scenetree-method-notify-group)(group: [StringName](class_stringname.md#class-stringname), notification: [int](class_int.md#class-int)) |
| void | [notify\_group\_flags](#class-scenetree-method-notify-group-flags)(call\_flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), notification: [int](class_int.md#class-int)) |
| void | [queue\_delete](#class-scenetree-method-queue-delete)(obj: [Object](class_object.md#class-object)) |
| void | [quit](#class-scenetree-method-quit)(exit\_code: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [reload\_current\_scene](#class-scenetree-method-reload-current-scene)() |
| void | [set\_group](#class-scenetree-method-set-group)(group: [StringName](class_stringname.md#class-stringname), property: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_group\_flags](#class-scenetree-method-set-group-flags)(call\_flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), property: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |
| void | [set\_multiplayer](#class-scenetree-method-set-multiplayer)(multiplayer: [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), root\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath("")) |
| void | [unload\_current\_scene](#class-scenetree-method-unload-current-scene)() |

* * *

## Signals

**node\_added**(node: [Node](class_node.md#class-node)) [🔗](#class-scenetree-signal-node-added)

Emitted when the `node` enters this tree.

* * *

**node\_configuration\_warning\_changed**(node: [Node](class_node.md#class-node)) [🔗](#class-scenetree-signal-node-configuration-warning-changed)

Emitted when the `node`'s [Node.update\_configuration\_warnings()](class_node.md#class-node-method-update-configuration-warnings) is called. Only emitted in the editor.

* * *

**node\_removed**(node: [Node](class_node.md#class-node)) [🔗](#class-scenetree-signal-node-removed)

Emitted when the `node` exits this tree.

* * *

**node\_renamed**(node: [Node](class_node.md#class-node)) [🔗](#class-scenetree-signal-node-renamed)

Emitted when the `node`'s [Node.name](class_node.md#class-node-property-name) is changed.

* * *

**physics\_frame**() [🔗](#class-scenetree-signal-physics-frame)

Emitted immediately before [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) is called on every node in this tree.

* * *

**process\_frame**() [🔗](#class-scenetree-signal-process-frame)

Emitted immediately before [Node.\_process()](class_node.md#class-node-private-method-process) is called on every node in this tree.

* * *

**scene\_changed**() [🔗](#class-scenetree-signal-scene-changed)

Emitted after the new scene is added to scene tree and initialized. Can be used to reliably access [current\_scene](#class-scenetree-property-current-scene) when changing scenes.

```
# This code should be inside an autoload.
get_tree().change_scene_to_file(other_scene_path)
await get_tree().scene_changed
print(get_tree().current_scene) # Prints the new scene.

```

* * *

**tree\_changed**() [🔗](#class-scenetree-signal-tree-changed)

Emitted any time the tree's hierarchy changes (nodes being moved, renamed, etc.).

* * *

**tree\_process\_mode\_changed**() [🔗](#class-scenetree-signal-tree-process-mode-changed)

Emitted when the [Node.process\_mode](class_node.md#class-node-property-process-mode) of any node inside the tree is changed. Only emitted in the editor, to update the visibility of disabled nodes.

* * *

## Enumerations

enum **GroupCallFlags**: [🔗](#enum-scenetree-groupcallflags)

[GroupCallFlags](#enum-scenetree-groupcallflags) **GROUP\_CALL\_DEFAULT** = `0`

Call nodes within a group with no special behavior (default).

[GroupCallFlags](#enum-scenetree-groupcallflags) **GROUP\_CALL\_REVERSE** = `1`

Call nodes within a group in reverse tree hierarchy order (all nested children are called before their respective parent nodes).

[GroupCallFlags](#enum-scenetree-groupcallflags) **GROUP\_CALL\_DEFERRED** = `2`

Call nodes within a group at the end of the current frame (can be either process or physics frame), similar to [Object.call\_deferred()](class_object.md#class-object-method-call-deferred).

[GroupCallFlags](#enum-scenetree-groupcallflags) **GROUP\_CALL\_UNIQUE** = `4`

Call nodes within a group only once, even if the call is executed many times in the same frame. Must be combined with [GROUP\_CALL\_DEFERRED](#class-scenetree-constant-group-call-deferred) to work.

**Note:** Different arguments are not taken into account. Therefore, when the same call is executed with different arguments, only the first call will be performed.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **auto\_accept\_quit** = `true` [🔗](#class-scenetree-property-auto-accept-quit)

- void **set\_auto\_accept\_quit**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_accept\_quit**()


If `true`, the application automatically accepts quitting requests.

For mobile platforms, see [quit\_on\_go\_back](#class-scenetree-property-quit-on-go-back).

* * *

[Node](class_node.md#class-node) **current\_scene** [🔗](#class-scenetree-property-current-scene)

- void **set\_current\_scene**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_current\_scene**()


The root node of the currently loaded main scene, usually as a direct child of [root](#class-scenetree-property-root). See also [change\_scene\_to\_file()](#class-scenetree-method-change-scene-to-file), [change\_scene\_to\_packed()](#class-scenetree-method-change-scene-to-packed), and [reload\_current\_scene()](#class-scenetree-method-reload-current-scene).

**Warning:** Setting this property directly may not work as expected, as it does _not_ add or remove any nodes from this tree.

* * *

[bool](class_bool.md#class-bool) **debug\_collisions\_hint** = `false` [🔗](#class-scenetree-property-debug-collisions-hint)

- void **set\_debug\_collisions\_hint**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_debugging\_collisions\_hint**()


If `true`, collision shapes will be visible when running the game from the editor for debugging purposes.

**Note:** This property is not designed to be changed at run-time. Changing the value of [debug\_collisions\_hint](#class-scenetree-property-debug-collisions-hint) while the project is running will not have the desired effect.

* * *

[bool](class_bool.md#class-bool) **debug\_navigation\_hint** = `false` [🔗](#class-scenetree-property-debug-navigation-hint)

- void **set\_debug\_navigation\_hint**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_debugging\_navigation\_hint**()


If `true`, navigation polygons will be visible when running the game from the editor for debugging purposes.

**Note:** This property is not designed to be changed at run-time. Changing the value of [debug\_navigation\_hint](#class-scenetree-property-debug-navigation-hint) while the project is running will not have the desired effect.

* * *

[bool](class_bool.md#class-bool) **debug\_paths\_hint** = `false` [🔗](#class-scenetree-property-debug-paths-hint)

- void **set\_debug\_paths\_hint**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_debugging\_paths\_hint**()


If `true`, curves from [Path2D](class_path2d.md#class-path2d) and [Path3D](class_path3d.md#class-path3d) nodes will be visible when running the game from the editor for debugging purposes.

**Note:** This property is not designed to be changed at run-time. Changing the value of [debug\_paths\_hint](#class-scenetree-property-debug-paths-hint) while the project is running will not have the desired effect.

* * *

[Node](class_node.md#class-node) **edited\_scene\_root** [🔗](#class-scenetree-property-edited-scene-root)

- void **set\_edited\_scene\_root**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_edited\_scene\_root**()


The root of the scene currently being edited in the editor. This is usually a direct child of [root](#class-scenetree-property-root).

**Note:** This property does nothing in release builds.

* * *

[bool](class_bool.md#class-bool) **multiplayer\_poll** = `true` [🔗](#class-scenetree-property-multiplayer-poll)

- void **set\_multiplayer\_poll\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_multiplayer\_poll\_enabled**()


If `true` (default value), enables automatic polling of the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) for this SceneTree during [process\_frame](#class-scenetree-signal-process-frame).

If `false`, you need to manually call [MultiplayerAPI.poll()](class_multiplayerapi.md#class-multiplayerapi-method-poll) to process network packets and deliver RPCs. This allows running RPCs in a different loop (e.g. physics, thread, specific time step) and for manual [Mutex](class_mutex.md#class-mutex) protection when accessing the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) from threads.

* * *

[bool](class_bool.md#class-bool) **paused** = `false` [🔗](#class-scenetree-property-paused)

- void **set\_pause**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_paused**()


If `true`, the scene tree is considered paused. This causes the following behavior:

- 2D and 3D physics will be stopped, as well as collision detection and related signals.

- Depending on each node's [Node.process\_mode](class_node.md#class-node-property-process-mode), their [Node.\_process()](class_node.md#class-node-private-method-process), [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) and [Node.\_input()](class_node.md#class-node-private-method-input) callback methods may not called anymore.


* * *

[bool](class_bool.md#class-bool) **physics\_interpolation** = `false` [🔗](#class-scenetree-property-physics-interpolation)

- void **set\_physics\_interpolation\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_physics\_interpolation\_enabled**()


If `true`, the renderer will interpolate the transforms of objects (both physics and non-physics) between the last two transforms, so that smooth motion is seen even when physics ticks do not coincide with rendered frames.

The default value of this property is controlled by [ProjectSettings.physics/common/physics\_interpolation](class_projectsettings.md#class-projectsettings-property-physics-common-physics-interpolation).

**Note:** Although this is a global setting, finer control of individual branches of the **SceneTree** is possible using [Node.physics\_interpolation\_mode](class_node.md#class-node-property-physics-interpolation-mode).

* * *

[bool](class_bool.md#class-bool) **quit\_on\_go\_back** = `true` [🔗](#class-scenetree-property-quit-on-go-back)

- void **set\_quit\_on\_go\_back**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_quit\_on\_go\_back**()


If `true`, the application quits automatically when navigating back (e.g. using the system "Back" button on Android).

To handle 'Go Back' button when this option is disabled, use [DisplayServer.WINDOW\_EVENT\_GO\_BACK\_REQUEST](class_displayserver.md#class-displayserver-constant-window-event-go-back-request).

* * *

[Window](class_window.md#class-window) **root** [🔗](#class-scenetree-property-root)

- [Window](class_window.md#class-window) **get\_root**()


The tree's root [Window](class_window.md#class-window). This is top-most [Node](class_node.md#class-node) of the scene tree, and is always present. An absolute [NodePath](class_nodepath.md#class-nodepath) always starts from this node. Children of the root node may include the loaded [current\_scene](#class-scenetree-property-current-scene), as well as any [AutoLoad](../tutorials/scripting/singletons_autoload.md) configured in the Project Settings.

**Warning:** Do not delete this node. This will result in unstable behavior, followed by a crash.

* * *

## Method Descriptions

void **call\_group**(group: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-scenetree-method-call-group)

Calls `method` on each node inside this tree added to the given `group`. You can pass arguments to `method` by specifying them at the end of this method call. Nodes that cannot call `method` (either because the method doesn't exist or the arguments do not match) are ignored. See also [set\_group()](#class-scenetree-method-set-group) and [notify\_group()](#class-scenetree-method-notify-group).

**Note:** This method acts immediately on all selected nodes at once, which may cause stuttering in some performance-intensive situations.

**Note:** In C#, `method` must be in snake\_case when referring to built-in Godot methods. Prefer using the names exposed in the `MethodName` class to avoid allocating a new [StringName](class_stringname.md#class-stringname) on each call.

* * *

void **call\_group\_flags**(flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), method: [StringName](class_stringname.md#class-stringname), ...) vararg [🔗](#class-scenetree-method-call-group-flags)

Calls the given `method` on each node inside this tree added to the given `group`. Use `flags` to customize this method's behavior (see [GroupCallFlags](#enum-scenetree-groupcallflags)). Additional arguments for `method` can be passed at the end of this method. Nodes that cannot call `method` (either because the method doesn't exist or the arguments do not match) are ignored.

```
# Calls "hide" to all nodes of the "enemies" group, at the end of the frame and in reverse tree order.
get_tree().call_group_flags(
        SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
        "enemies", "hide")

```

**Note:** In C#, `method` must be in snake\_case when referring to built-in Godot methods. Prefer using the names exposed in the `MethodName` class to avoid allocating a new [StringName](class_stringname.md#class-stringname) on each call.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **change\_scene\_to\_file**(path: [String](class_string.md#class-string)) [🔗](#class-scenetree-method-change-scene-to-file)

Changes the running scene to the one at the given `path`, after loading it into a [PackedScene](class_packedscene.md#class-packedscene) and creating a new instance.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, [@GlobalScope.ERR\_CANT\_OPEN](class_@globalscope.md#class-globalscope-constant-err-cant-open) if the `path` cannot be loaded into a [PackedScene](class_packedscene.md#class-packedscene), or [@GlobalScope.ERR\_CANT\_CREATE](class_@globalscope.md#class-globalscope-constant-err-cant-create) if that scene cannot be instantiated.

**Note:** See [change\_scene\_to\_packed()](#class-scenetree-method-change-scene-to-packed) for details on the order of operations.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **change\_scene\_to\_packed**(packed\_scene: [PackedScene](class_packedscene.md#class-packedscene)) [🔗](#class-scenetree-method-change-scene-to-packed)

Changes the running scene to a new instance of the given [PackedScene](class_packedscene.md#class-packedscene) (which must be valid).

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, [@GlobalScope.ERR\_CANT\_CREATE](class_@globalscope.md#class-globalscope-constant-err-cant-create) if the scene cannot be instantiated, or [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if the scene is invalid.

**Note:** Operations happen in the following order when [change\_scene\_to\_packed()](#class-scenetree-method-change-scene-to-packed) is called:

1. The current scene node is immediately removed from the tree. From that point, [Node.get\_tree()](class_node.md#class-node-method-get-tree) called on the current (outgoing) scene will return `null`. [current\_scene](#class-scenetree-property-current-scene) will be `null`, too, because the new scene is not available yet.

2. At the end of the frame, the formerly current scene, already removed from the tree, will be deleted (freed from memory) and then the new scene will be instantiated and added to the tree. [Node.get\_tree()](class_node.md#class-node-method-get-tree) and [current\_scene](#class-scenetree-property-current-scene) will be back to working as usual.


This ensures that both scenes aren't running at the same time, while still freeing the previous scene in a safe way similar to [Node.queue\_free()](class_node.md#class-node-method-queue-free).

If you want to reliably access the new scene, await the [scene\_changed](#class-scenetree-signal-scene-changed) signal.

* * *

[SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer) **create\_timer**(time\_sec: [float](class_float.md#class-float), process\_always: [bool](class_bool.md#class-bool) = true, process\_in\_physics: [bool](class_bool.md#class-bool) = false, ignore\_time\_scale: [bool](class_bool.md#class-bool) = false) [🔗](#class-scenetree-method-create-timer)

Returns a new [SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer). After `time_sec` in seconds have passed, the timer will emit [SceneTreeTimer.timeout](class_scenetreetimer.md#class-scenetreetimer-signal-timeout) and will be automatically freed.

If `process_always` is `false`, the timer will be paused when setting [paused](#class-scenetree-property-paused) to `true`.

If `process_in_physics` is `true`, the timer will update at the end of the physics frame, instead of the process frame.

If `ignore_time_scale` is `true`, the timer will ignore [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) and update with the real, elapsed time.

This method is commonly used to create a one-shot delay timer, as in the following example:

GDScriptC#

```
func some_function():
    print("start")
    await get_tree().create_timer(1.0).timeout
    print("end")

```

```
public async Task SomeFunction()
{
    GD.Print("start");
    await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
    GD.Print("end");
}

```

**Note:** The timer is always updated _after_ all of the nodes in the tree. A node's [Node.\_process()](class_node.md#class-node-private-method-process) method would be called before the timer updates (or [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) if `process_in_physics` is set to `true`).

* * *

[Tween](class_tween.md#class-tween) **create\_tween**() [🔗](#class-scenetree-method-create-tween)

Creates and returns a new [Tween](class_tween.md#class-tween) processed in this tree. The Tween will start automatically on the next process frame or physics frame (depending on its [TweenProcessMode](class_tween.md#enum-tween-tweenprocessmode)).

**Note:** A [Tween](class_tween.md#class-tween) created using this method is not bound to any [Node](class_node.md#class-node). It may keep working until there is nothing left to animate. If you want the [Tween](class_tween.md#class-tween) to be automatically killed when the [Node](class_node.md#class-node) is freed, use [Node.create\_tween()](class_node.md#class-node-method-create-tween) or [Tween.bind\_node()](class_tween.md#class-tween-method-bind-node).

* * *

[Node](class_node.md#class-node) **get\_first\_node\_in\_group**(group: [StringName](class_stringname.md#class-stringname)) [🔗](#class-scenetree-method-get-first-node-in-group)

Returns the first [Node](class_node.md#class-node) found inside the tree, that has been added to the given `group`, in scene hierarchy order. Returns `null` if no match is found. See also [get\_nodes\_in\_group()](#class-scenetree-method-get-nodes-in-group).

* * *

[int](class_int.md#class-int) **get\_frame**() const [🔗](#class-scenetree-method-get-frame)

Returns how many physics process steps have been processed, since the application started. This is _not_ a measurement of elapsed time. See also [physics\_frame](#class-scenetree-signal-physics-frame). For the number of frames rendered, see [Engine.get\_process\_frames()](class_engine.md#class-engine-method-get-process-frames).

* * *

[MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) **get\_multiplayer**(for\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath("")) const [🔗](#class-scenetree-method-get-multiplayer)

Searches for the [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) configured for the given path, if one does not exist it searches the parent paths until one is found. If the path is empty, or none is found, the default one is returned. See [set\_multiplayer()](#class-scenetree-method-set-multiplayer).

* * *

[int](class_int.md#class-int) **get\_node\_count**() const [🔗](#class-scenetree-method-get-node-count)

Returns the number of nodes inside this tree.

* * *

[int](class_int.md#class-int) **get\_node\_count\_in\_group**(group: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-scenetree-method-get-node-count-in-group)

Returns the number of nodes assigned to the given group.

* * *

[Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] **get\_nodes\_in\_group**(group: [StringName](class_stringname.md#class-stringname)) [🔗](#class-scenetree-method-get-nodes-in-group)

Returns an [Array](class_array.md#class-array) containing all nodes inside this tree, that have been added to the given `group`, in scene hierarchy order.

* * *

[Array](class_array.md#class-array)\[ [Tween](class_tween.md#class-tween)\] **get\_processed\_tweens**() [🔗](#class-scenetree-method-get-processed-tweens)

Returns an [Array](class_array.md#class-array) of currently existing [Tween](class_tween.md#class-tween) s in the tree, including paused tweens.

* * *

[bool](class_bool.md#class-bool) **has\_group**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-scenetree-method-has-group)

Returns `true` if a node added to the given group `name` exists in the tree.

* * *

[bool](class_bool.md#class-bool) **is\_accessibility\_enabled**() const [🔗](#class-scenetree-method-is-accessibility-enabled)

Returns `true` if accessibility features are enabled, and accessibility information updates are actively processed.

* * *

[bool](class_bool.md#class-bool) **is\_accessibility\_supported**() const [🔗](#class-scenetree-method-is-accessibility-supported)

Returns `true` if accessibility features are supported by the OS and enabled in project settings.

* * *

void **notify\_group**(group: [StringName](class_stringname.md#class-stringname), notification: [int](class_int.md#class-int)) [🔗](#class-scenetree-method-notify-group)

Calls [Object.notification()](class_object.md#class-object-method-notification) with the given `notification` to all nodes inside this tree added to the `group`. See also [Godot notifications](../tutorials/best_practices/godot_notifications.md) and [call\_group()](#class-scenetree-method-call-group) and [set\_group()](#class-scenetree-method-set-group).

**Note:** This method acts immediately on all selected nodes at once, which may cause stuttering in some performance-intensive situations.

* * *

void **notify\_group\_flags**(call\_flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), notification: [int](class_int.md#class-int)) [🔗](#class-scenetree-method-notify-group-flags)

Calls [Object.notification()](class_object.md#class-object-method-notification) with the given `notification` to all nodes inside this tree added to the `group`. Use `call_flags` to customize this method's behavior (see [GroupCallFlags](#enum-scenetree-groupcallflags)).

* * *

void **queue\_delete**(obj: [Object](class_object.md#class-object)) [🔗](#class-scenetree-method-queue-delete)

Queues the given `obj` to be deleted, calling its [Object.free()](class_object.md#class-object-method-free) at the end of the current frame. This method is similar to [Node.queue\_free()](class_node.md#class-node-method-queue-free).

* * *

void **quit**(exit\_code: [int](class_int.md#class-int) = 0) [🔗](#class-scenetree-method-quit)

Quits the application at the end of the current iteration, with the given `exit_code`.

By convention, an exit code of `0` indicates success, whereas any other exit code indicates an error. For portability reasons, it should be between `0` and `125` (inclusive).

**Note:** On iOS this method doesn't work. Instead, as recommended by the [iOS Human Interface Guidelines](https://developer.apple.com/library/archive/qa/qa1561/_index.html), the user is expected to close apps via the Home button.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **reload\_current\_scene**() [🔗](#class-scenetree-method-reload-current-scene)

Reloads the currently active scene, replacing [current\_scene](#class-scenetree-property-current-scene) with a new instance of its original [PackedScene](class_packedscene.md#class-packedscene).

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, [@GlobalScope.ERR\_UNCONFIGURED](class_@globalscope.md#class-globalscope-constant-err-unconfigured) if no [current\_scene](#class-scenetree-property-current-scene) is defined, [@GlobalScope.ERR\_CANT\_OPEN](class_@globalscope.md#class-globalscope-constant-err-cant-open) if [current\_scene](#class-scenetree-property-current-scene) cannot be loaded into a [PackedScene](class_packedscene.md#class-packedscene), or [@GlobalScope.ERR\_CANT\_CREATE](class_@globalscope.md#class-globalscope-constant-err-cant-create) if the scene cannot be instantiated.

* * *

void **set\_group**(group: [StringName](class_stringname.md#class-stringname), property: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-scenetree-method-set-group)

Sets the given `property` to `value` on all nodes inside this tree added to the given `group`. Nodes that do not have the `property` are ignored. See also [call\_group()](#class-scenetree-method-call-group) and [notify\_group()](#class-scenetree-method-notify-group).

**Note:** This method acts immediately on all selected nodes at once, which may cause stuttering in some performance-intensive situations.

**Note:** In C#, `property` must be in snake\_case when referring to built-in Godot properties. Prefer using the names exposed in the `PropertyName` class to avoid allocating a new [StringName](class_stringname.md#class-stringname) on each call.

* * *

void **set\_group\_flags**(call\_flags: [int](class_int.md#class-int), group: [StringName](class_stringname.md#class-stringname), property: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-scenetree-method-set-group-flags)

Sets the given `property` to `value` on all nodes inside this tree added to the given `group`. Nodes that do not have the `property` are ignored. Use `call_flags` to customize this method's behavior (see [GroupCallFlags](#enum-scenetree-groupcallflags)).

**Note:** In C#, `property` must be in snake\_case when referring to built-in Godot properties. Prefer using the names exposed in the `PropertyName` class to avoid allocating a new [StringName](class_stringname.md#class-stringname) on each call.

* * *

void **set\_multiplayer**(multiplayer: [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi), root\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath("")) [🔗](#class-scenetree-method-set-multiplayer)

Sets a custom [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) with the given `root_path` (controlling also the relative subpaths), or override the default one if `root_path` is empty.

**Note:** No [MultiplayerAPI](class_multiplayerapi.md#class-multiplayerapi) must be configured for the subpath containing `root_path`, nested custom multiplayers are not allowed. I.e. if one is configured for `"/root/Foo"` setting one for `"/root/Foo/Bar"` will cause an error.

**Note:** [set\_multiplayer()](#class-scenetree-method-set-multiplayer) should be called _before_ the child nodes are ready at the given `root_path`. If multiplayer nodes like [MultiplayerSpawner](class_multiplayerspawner.md#class-multiplayerspawner) or [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer) are added to the tree before the custom multiplayer API is set, they will not work.

* * *

void **unload\_current\_scene**() [🔗](#class-scenetree-method-unload-current-scene)

If a current scene is loaded, calling this method will unload it.

[Previous](class_scenestate.md "SceneState") [Next](class_scenetreetimer.md "SceneTreeTimer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scenestate.md "SceneState") [Next](class_scenetreetimer.md "SceneTreeTimer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).