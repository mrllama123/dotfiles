---
title: Groups — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/groups.html
crawled_at: "2026-08-13T10:18:37+12:00"
content_hash: cd8c0cd811c145eb623172e03c6bc61c8c77098fa23645aacc04e0a6a194e13a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Scripting](index.md)
  - Groups
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/groups.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Groups

Groups in Godot work like tags in other software. You can add a node to as many
groups as you want. Then, in code, you can use the SceneTree to:

- Get a list of nodes in a group.

- Call a method on all nodes in a group.

- Send a notification to all nodes in a group.


This is a useful feature to organize large scenes and decouple code.

## Managing groups

Groups are created by adding a node to a new group name, and likewise they are
removed by removing all nodes from a given group.

There are two ways to add/remove nodes to groups:

- During design, by using the Node dock in the editor, or the Global Groups in project settings.

- During execution, by calling [Node.add\_to\_group()](../../classes/class_node.md#class-node-method-add-to-group)
or [Node.remove\_from\_group()](../../classes/class_node.md#class-node-method-remove-from-group).


### Using the Node dock

You can create new groups using the Groups tab in the Node dock.

![../../_images/groups_node_tab.webp](../../_images/groups_node_tab.webp)

Select a node in the Scene dock then click the add button with the + symbol.

![../../_images/groups_add_new_group_button.webp](../../_images/groups_add_new_group_button.webp)

You should now see the Create New Group modal appear. Write the group name in the field.

You can optionally mark the option "Global", which will make the group visible project-wide,
and able to be reused in any project scene. This will also allow you to give it a description.

When done, press Ok to create it.

![../../_images/groups_add_new_group_modal.webp](../../_images/groups_add_new_group_modal.webp)

You should see the new groups appear in the Groups tab under Scene Groups if the Global option was
unmarked, or under Global Groups if that option was marked.

A selected Node from the Scene dock can be added into groups by marking the checkbox on the left side
of the groups in the Groups dock. The node you had selected when creating a new group will be automatically checked.

![../../_images/groups_node_tab_with_created_groups.webp](../../_images/groups_node_tab_with_created_groups.webp)

All groups present in the project that were marked as Global, created from any scene, will be visible under Global Groups.

Any other group derived from nodes in the current scene will appear under Scene Groups.

Warning

The same underlying logic is used for both Global and Scene groups.
Groups with the same name are considered one and the same. This feature is purely organizational.

![../../_images/groups_node_tab_with_multiple_types_of_groups.webp](../../_images/groups_node_tab_with_multiple_types_of_groups.webp)

You can manage Global Groups in the Global Groups dock, inside Project Settings. There, you will be able to add new
global groups, or change existing groups' names and descriptions.

![../../_images/groups_global_groups_settings.webp](../../_images/groups_global_groups_settings.webp)

### Using code

You can also manage groups from scripts. The following code adds the node to
which you attach the script to the `guards` group as soon as it enters the
scene tree.

GDScriptC#

```
func _ready():
    add_to_group("guards")

```

```
public override void _Ready()
{
    base._Ready();

    AddToGroup("guards");
}

```

Imagine you're creating an infiltration game. When an
enemy spots the player, you want all guards and robots to be on alert.

In the fictional example below, we use `SceneTree.call_group()` to alert all
enemies that the player was spotted.

GDScriptC#

```
func _on_player_spotted():
    get_tree().call_group("guards", "enter_alert_mode")

```

```
public void _OnPlayerDiscovered()
{
    GetTree().CallGroup("guards", "enter_alert_mode");
}

```

The above code calls the function `enter_alert_mode` on every member of the
group `guards`.

To get the full list of nodes in the `guards` group as an array, you can call
[SceneTree.get\_nodes\_in\_group()](../../classes/class_scenetree.md#class-scenetree-method-get-nodes-in-group):

GDScriptC#

```
var guards = get_tree().get_nodes_in_group("guards")

```

```
var guards = GetTree().GetNodesInGroup("guards");

```

The [SceneTree](../../classes/class_scenetree.md#class-scenetree) class provides many more useful methods
to interact with scenes, their node hierarchy, and groups. It allows you to
switch scenes easily or reload them, quit the game or pause and unpause it. It
also provides useful signals.

[Previous](idle_and_physics_processing.md "Idle and Physics Processing") [Next](nodes_and_scene_instances.md "Nodes and scene instances")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](idle_and_physics_processing.md "Idle and Physics Processing") [Next](nodes_and_scene_instances.md "Nodes and scene instances")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).