---
title: Navigation debug tools — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/navigation/navigation_debug_tools.html
crawled_at: "2026-08-13T10:23:17+12:00"
content_hash: b2061cd3f90c4d23a29699991bd049984b34de6db11f33129a1cd4c003292c4c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Navigation](index.md)
  - Navigation debug tools
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/navigation/navigation_debug_tools.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Navigation debug tools

Note

The debug tools, properties and functions are only available in Godot debug builds.
Do not use any of them in code that will be part of a release build.

## Enabling navigation debug

The navigation debug visualizations are enabled by default inside the editor.
To visualize navigation meshes and connections at runtime too, enable the option **Visible Navigation** in the editor **Debug** menu.

![../../_images/navigation_debug_toggle.png](../../_images/navigation_debug_toggle.png)

In Godot debug builds the navigation debug can also be toggled through the NavigationServer singletons from scripts.

GDScriptC#

```
NavigationServer2D.set_debug_enabled(false)
NavigationServer3D.set_debug_enabled(true)

```

```
NavigationServer2D.SetDebugEnabled(false);
NavigationServer3D.SetDebugEnabled(true);

```

Debug visualizations are currently based on Nodes in the SceneTree. If the [NavigationServer2D](../../classes/class_navigationserver2d.md#class-navigationserver2d) or [NavigationServer3D](../../classes/class_navigationserver3d.md#class-navigationserver3d)
APIs are used exclusively then changes will not be reflected by the debug navigation tools.

## Navigation debug settings

The appearance of navigation debug can be changed in the ProjectSettings under `debug/shapes/navigation`.
Certain debug features can also be enabled or disabled at will but may require a scene restart to take effect.

![../../_images/nav_debug_settings.png](../../_images/nav_debug_settings.png)

## Debug navigation mesh polygons

If `enable_edge_lines` is enabled, the edges of navigation mesh polygons will be highlighted.
If `enable_edge_lines_xray` is also enabled, the edges of navigation meshes will be visible through geometry.

If `enable_geometry_face_random_color` is enabled, the color of each navigation mesh face will be mixed with a random color that is itself mixed with the color specified in `geometry_face_color`.

![../../_images/nav_debug_xray_edge_lines.png](../../_images/nav_debug_xray_edge_lines.png)

## Debug edge connections

When two navigation meshes are connected within `edge_connection_margin` distance, the connection is overlaid.
The color of the overlay is controlled by `edge_connection_color`.
The connections can be made visible through geometry with `enable_edge_connections_xray`.

![../../_images/nav_edge_connection2d.gif](../../_images/nav_edge_connection2d.gif)![../../_images/nav_edge_connection3d.gif](../../_images/nav_edge_connection3d.gif)

Note

Edge connections are only visible when the NavigationServer is active.

## Debug performance

To measure NavigationServer performance a dedicated monitor exists that can be found within the Editor Debugger under _Debugger->Monitors->Navigation Process_.

![../../_images/navigation_debug_performance1.webp](../../_images/navigation_debug_performance1.webp)

Navigation Process shows how long the NavigationServer spends updating its internals this update frame in milliseconds.
Navigation Process works similar to Process for visual frame rendering and Physics Process for collision and fixed updates.

Navigation Process accounts for all updates to **navigation maps**, **navigation regions** and **navigation agents** as well as all the **avoidance calculations** for the update frame.

Note

Navigation Process does NOT include pathfinding performance cause pathfinding operates on the navigation map data independently from the server process update.

Navigation Process should be in general kept as low and as stable as possible for runtime performance to avoid frame rate issues.
Note that since the NavigationServer process update happens in the middle of the physics update an increase in Navigation Process will automatically increase Physics Process by the same amount.

Navigation also provides more detailed statistics about the current navigation related objects and navigation map composition on the NavigationServer.

![../../_images/navigation_debug_performance2.webp](../../_images/navigation_debug_performance2.webp)

Navigation statistics shown here can not be judged as good or bad for performance as it depends entirely on the project what can be considered as reasonable or horribly excessive.

Navigation statistics help with identifying performance bottlenecks that are less obvious because the source might not always have a visible representation.
E.g. pathfinding performance issues created by overly detailed navigation meshes with thousand of edges / polygons or problems caused by procedural navigation gone wrong.

[Previous](navigation_using_navigationlayers.md "Using NavigationLayers") [Next](navigation_connecting_navmesh.md "Connecting navigation meshes")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](navigation_using_navigationlayers.md "Using NavigationLayers") [Next](navigation_connecting_navmesh.md "Connecting navigation meshes")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).