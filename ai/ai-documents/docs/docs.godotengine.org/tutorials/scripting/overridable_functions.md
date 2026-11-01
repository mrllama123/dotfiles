---
title: Overridable functions — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/overridable_functions.html
crawled_at: "2026-08-13T10:27:59+12:00"
content_hash: b932a81b23fdcf18e38a74d40c895831538c1029758c897ae743342f38e01c4b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Scripting](index.md)
  - Overridable functions
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/overridable_functions.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Overridable functions

Godot's Node class provides virtual functions you can override to update nodes
every frame or on specific events, like when they enter the scene tree.

This document presents the ones you'll use most often.

See also

Under the hood, these functions rely on Godot's low-level
notifications system. To learn more about it, see
[Godot notifications](../best_practices/godot_notifications.md#doc-godot-notifications).

Two functions allow you to initialize and get nodes besides the class's
constructor: `_enter_tree()` and `_ready()`.

When the node enters the Scene Tree, it becomes active and the engine calls its
`_enter_tree()` method. That node's children may not be part of the active scene yet. As
you can remove and re-add nodes to the scene tree, this function may be called
multiple times throughout a node's lifetime.

Most of the time, you'll use `_ready()` instead. This function is called only
once in a node's lifetime, after `_enter_tree()`. `_ready()` ensures that all children
have entered the scene tree first, so you can safely call `get_node()` on them.

See also

To learn more about getting node references, read
[Nodes and scene instances](nodes_and_scene_instances.md#doc-nodes-and-scene-instances).

Another related callback is `_exit_tree()`, which the engine calls every time
a node is about to exit the scene tree. This can be when you call [Node.remove\_child()](../../classes/class_node.md#class-node-method-remove-child) or when you free a node.

GDScriptC#

```
# Called every time the node enters the scene tree.
func _enter_tree():
    pass

# Called when both the node and its children have entered the scene tree.
func _ready():
    pass

# Called when the node is about to leave the scene tree, after all its
# children received the _exit_tree() callback.
func _exit_tree():
    pass

```

```
// Called every time the node enters the scene tree.
public override void _EnterTree()
{
    base._EnterTree();
}

// Called when both the node and its children have entered the scene tree.
public override void _Ready()
{
    base._Ready();
}

// Called when the node is about to leave the scene tree, after all its
// children.
public override void _ExitTree()
{
    base._ExitTree();
}

```

The two virtual methods `_process()` and `_physics_process()` allow you to
update the node, every frame and every physics frame respectively. For more
information, read the dedicated documentation:
[Idle and Physics Processing](idle_and_physics_processing.md#doc-idle-and-physics-processing).

GDScriptC#

```
# Called every frame.
func _process(delta):
    pass

# Called every physics frame.
func _physics_process(delta):
    pass

```

```
public override void _Process(double delta)
{
    // Called every frame.
    base._Process(delta);
}

public override void _PhysicsProcess(double delta)
{
    // Called every physics frame.
    base._PhysicsProcess(delta);
}

```

Two more essential built-in node callback functions are
[Node.\_unhandled\_input()](../../classes/class_node.md#class-node-private-method-unhandled-input) and
[Node.\_input()](../../classes/class_node.md#class-node-private-method-input), which you use to both receive
and process individual input events. The `_unhandled_input()` method receives
every key press, mouse click, etc. that have not been handled already in an
`_input()` callback or in a user interface component. You want to use it for
gameplay input in general. The `_input()` callback allows you to intercept and
process input events before `_unhandled_input()` gets them.

To learn more about inputs in Godot, see the [Input section](../inputs/index.md#toc-learn-features-inputs).

GDScriptC#

```
# Called once for every event.
func _unhandled_input(event):
    pass

# Called once for every event before _unhandled_input(), allowing you to
# consume some events.
func _input(event):
    pass

```

```
// Called once for every event.
public override void _UnhandledInput(InputEvent @event)
{
    base._UnhandledInput(@event);
}

// Called once for every event before _UnhandledInput(), allowing you to
// consume some events.
public override void _Input(InputEvent @event)
{
    base._Input(@event);
}

```

There are some more overridable functions like
[Node.\_get\_configuration\_warnings()](../../classes/class_node.md#class-node-private-method-get-configuration-warnings). Specialized node types provide
more callbacks like [CanvasItem.\_draw()](../../classes/class_canvasitem.md#class-canvasitem-private-method-draw) to
draw programmatically or [Control.\_gui\_input()](../../classes/class_control.md#class-control-private-method-gui-input) to handle clicks and input on UI elements.

[Previous](nodes_and_scene_instances.md "Nodes and scene instances") [Next](cross_language_scripting.md "Cross-language scripting")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](nodes_and_scene_instances.md "Nodes and scene instances") [Next](cross_language_scripting.md "Cross-language scripting")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).