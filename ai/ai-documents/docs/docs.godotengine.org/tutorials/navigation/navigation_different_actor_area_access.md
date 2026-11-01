---
title: Support different actor area access — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/navigation/navigation_different_actor_area_access.html
crawled_at: "2026-08-13T10:19:46+12:00"
content_hash: 3fa3969646bbbc1f5f7a44f88cc8b9cdc0e5fab13319cf128ce3fb7816ecdd79
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Navigation](index.md)
  - Support different actor area access
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/navigation/navigation_different_actor_area_access.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Support different actor area access

![../../_images/nav_actor_doors.png](../../_images/nav_actor_doors.png)

A typical example for different area access in gameplay are doors that connect rooms
with different navigation meshes and are not accessible by all actors all the time.

Add a NavigationRegion at the door position.
Add an appropriate navigation mesh the size of the door that can connect with the surrounding navigation meshes.
In order to control access, enable / disable navigation layer bits so path queries
that use the same navigation layer bits can find a path through the "door" navigation mesh.

The bitmask can act as a set of door keys or abilities and only actors with at least
one matching and enabled bit layer in their pathfinding query will find a path through this region.
See [Using NavigationLayers](navigation_using_navigationlayers.md#doc-navigation-advanced-using-navigationlayers) for more information on how to work with navigation layers and the bitmask.

![../../_images/nav_actor_doorbitmask.png](../../_images/nav_actor_doorbitmask.png)

The entire "door" region can also be enabled / disable if required but if disabled will block access for all path queries.

Prefer working with navigation layers in path queries whenever possible as enabling or disabling
navigation layers on a region triggers a costly recalculation of the navigation map connections.

Warning

Changing navigation layers will only affect new path queries but not automatically update existing paths.

[Previous](navigation_different_actor_locomotion.md "Support different actor locomotion") [Next](navigation_optimizing_performance.md "Optimizing Navigation Performance")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](navigation_different_actor_locomotion.md "Support different actor locomotion") [Next](navigation_optimizing_performance.md "Optimizing Navigation Performance")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).