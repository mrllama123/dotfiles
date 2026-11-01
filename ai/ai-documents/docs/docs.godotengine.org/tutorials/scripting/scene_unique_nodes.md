---
title: Scene Unique Nodes — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/scene_unique_nodes.html
crawled_at: "2026-08-13T10:33:37+12:00"
content_hash: 486c932810c6ef9b35a3135b182c0957979c17e93b8f5b7ba6fca2210d0ffa33
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Scripting](index.md)
  - Scene Unique Nodes
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/scene_unique_nodes.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Scene Unique Nodes

## Introduction

Using `get_node()` to reference nodes from a script can sometimes be fragile.
If you move a button in a UI scene from one panel to another, the button's node
path changes, and if a script uses `get_node()` with a hard-coded node path,
the script will not be able to find the button anymore.

In situations like this, the node can be turned into a scene
unique node to avoid having to update the script every time
the node's path is changed.

## Creation and usage

There are two ways to create a scene unique node.

In the Scene tree dock, right-click on a node and select
**Access as Unique Name** in the context menu.

![../../_images/unique_name.webp](../../_images/unique_name.webp)

After selecting the option, the node will now have a percent symbol ( **%**) next
to its name in the scene tree:

![../../_images/percent.webp](../../_images/percent.webp)

You can also do this while renaming the node by adding "%" to the beginning of the name.
Once you confirm, the percent symbol will appear next to its name.

You can now use the node in your script. For example, you can reference it with
a `get_node()` method call by typing the % symbol, followed by the node's
name:

GDScriptC#

```
get_node("%RedButton").text = "Hello"
%RedButton.text = "Hello" # Shorter syntax

```

```
GetNode<Button>("%RedButton").Text = "Hello";

```

## Same-scene limitation

A scene unique node can only be retrieved by a node inside the same scene. To
demonstrate this limitation, consider this example **Player** scene that
instances a **Sword** scene:

![../../_images/unique_name_scene_instance_example.webp](../../_images/unique_name_scene_instance_example.webp)

Here are the results of `get_node()` calls inside the **Player** script:

- `get_node("%Eyes")` returns the **Eyes** node.

- `get_node("%Hilt")` returns `null`.


These are the results of `get_node()` calls inside the **Sword** script:

- `get_node("%Eyes")` returns `null`.

- `get_node("%Hilt")` returns the **Hilt** node.


If a script has access to a node in another scene, it can call `get_node()` on
that node to get scene unique nodes from that node's scene. This also works in a
node path, which avoids multiple `get_node()` calls. Here are two ways to get
the **Hilt** node from the **Player** script using scene unique nodes:

- `get_node("Hand/Sword").get_node("%Hilt")` returns the **Hilt** node.

- `get_node("Hand/Sword/%Hilt")` also returns the **Hilt** node.


Scene unique names don't only work at the end of a node path. They can be used
in the middle to navigate from one node to another. For example, the **Sword** node
is marked as a scene unique node in the **Player** scene, so this is possible:

- `get_node("%Sword/%Hilt")` returns the **Hilt** node.


## Alternatives

Scene unique nodes are a useful tool to navigate a scene. However, there are
some situations where other techniques may be better.

A [Group](groups.md#doc-groups) allows locating a node (or a group of many nodes)
from any other node, no matter what scene the two nodes are located in.

A [Singleton (Autoload)](singletons_autoload.md#doc-singletons-autoload) is an always loaded node
that can be accessed directly by any node regardless of the scene. These are useful
when some data or functionality is shared globally.

[Node.find\_child()](../../classes/class_node.md#class-node-method-find-child) finds a node by name
without knowing its full path. This seems similar to a scene unique node, but
this method is able to find nodes in nested scenes, and doesn't require marking
the node in the scene editor in any way. However, this method is slow. Scene
unique nodes are cached by Godot and are fast to retrieve, but each time the
method is called, `find_child()` needs to check every descendant (every child,
grandchild, and so on).

[Previous](scene_tree.md "Using SceneTree") [Next](logging.md "Logging")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](scene_tree.md "Using SceneTree") [Next](logging.md "Logging")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).