---
title: Using NavigationMaps — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/navigation/navigation_using_navigationmaps.html
crawled_at: "2026-08-13T10:32:13+12:00"
content_hash: bafd784368dc6d0b1da95e921a556289b3a389c82f065910cb229c1681425d44
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Navigation](index.md)
  - Using NavigationMaps
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/navigation/navigation_using_navigationmaps.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using NavigationMaps

![../../_images/nav_maps.png](../../_images/nav_maps.png)

A NavigationMap is an abstract navigation world on the NavigationServer identified by a NavigationServer [RID](../../classes/class_rid.md#class-rid).

A map can hold and connect a near infinite number of navigation regions with navigation meshes to build the traversable areas of a game world for pathfinding.

A map can contain avoidance agents. Collision avoidance will be calculated based on the agents present in the map.

Note

Different NavigationMaps are completely isolated from each other but navigation regions
and avoidance agents can switch between different maps. Switches will become effective on NavigationServer synchronization.

## Default navigation maps

By default Godot creates a navigation map for each [World2D](../../classes/class_world2d.md#class-world2d) and [World3D](../../classes/class_world3d.md#class-world3d) of the root viewport.

The 2D default navigation map RID can be obtained with `get_world_2d().get_navigation_map()` from any [Node2D](../../classes/class_node2d.md#class-node2d) inheriting Node.

The 3D default navigation map RID can be obtained with `get_world_3d().get_navigation_map()` from any [Node3D](../../classes/class_node3d.md#class-node3d) inheriting Node.

2D GDScript2D C#3D GDScript3D C#

```
extends Node2D

func _ready() -> void:
    var default_navigation_map_rid: RID = get_world_2d().get_navigation_map()

```

```
public partial class MyNode2D : Node2D
{
    public override void _Ready()
    {
        Rid defaultNavigationMapRid = GetWorld2D().NavigationMap;
    }
}

```

```
extends Node3D

func _ready() -> void:
    var default_navigation_map_rid: RID = get_world_3d().get_navigation_map()

```

```
public partial class MyNode3D : Node3D
{
    public override void _Ready()
    {
        Rid defaultNavigationMapRid = GetWorld3D().NavigationMap;
    }
}

```

## Creating new navigation maps

The NavigationServer can create and support as many navigation maps as required for specific gameplay.
Additional navigation maps are created and handled by using the NavigationServer API
directly e.g. to support different avoidance agent or actor locomotion types.

For example uses of different navigation maps see [Support different actor types](navigation_different_actor_types.md#doc-navigation-different-actor-types) and [Support different actor locomotion](navigation_different_actor_locomotion.md#doc-navigation-different-actor-locomotion).

Each navigation map individually synchronizes queued changes to its navigation regions and avoidance agents.
A navigation map that has not received changes will consume little to no processing time.
Navigation regions and avoidance agents can only be part of a single navigation map but they can switch map at any time.

Note

A navigation map switch will take effect only after the next NavigationServer synchronization.

2D GDScript2D C#3D GDScript3D C#

```
extends Node2D

func _ready() -> void:
    var new_navigation_map: RID = NavigationServer2D.map_create()
    NavigationServer2D.map_set_active(new_navigation_map, true)

```

```
public partial class MyNode2D : Node2D
{
    public override void _Ready()
    {
        Rid newNavigationMap = NavigationServer2D.MapCreate();
        NavigationServer2D.MapSetActive(newNavigationMap, true);
    }
}

```

```
extends Node3D

func _ready() -> void:
    var new_navigation_map: RID = NavigationServer3D.map_create()
    NavigationServer3D.map_set_active(new_navigation_map, true)

```

```
public partial class MyNode3D : Node3D
{
    public override void _Ready()
    {
        Rid newNavigationMap = NavigationServer3D.MapCreate();
        NavigationServer3D.MapSetActive(newNavigationMap, true);
    }
}

```

Note

There is no difference between navigation maps created with the NavigationServer2D API or the NavigationServer3D API.

[Previous](navigation_using_navigationservers.md "Using NavigationServer") [Next](navigation_using_navigationregions.md "Using NavigationRegions")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](navigation_using_navigationservers.md "Using NavigationServer") [Next](navigation_using_navigationregions.md "Using NavigationRegions")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).