---
title: Quick start guide — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/physics/interpolation/physics_interpolation_quick_start_guide.html
crawled_at: "2026-08-13T10:35:23+12:00"
content_hash: da6457590755ab149858c08d32c1eac5fb26138f5d3e83c91dffcb3f0776e4c2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Physics](../index.md)
  - [Physics Interpolation](index.md)
  - Quick start guide
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/physics/interpolation/physics_interpolation_quick_start_guide.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Quick start guide

- Turn on physics interpolation: [Project Settings > Physics > Common > Physics Interpolation](../../../classes/class_projectsettings.md#class-projectsettings-property-physics-common-physics-interpolation)

- Make sure you move objects and run your game logic in `_physics_process()`
rather than `_process()`. This includes moving objects directly _and_
_indirectly_ (by e.g. moving a parent, or using another mechanism to automatically
move nodes).

- Be sure to call [Node.reset\_physics\_interpolation](../../../classes/class_node.md#class-node-method-reset-physics-interpolation)
on nodes _after_ you first position or teleport them, to prevent "streaking".

- Temporarily try setting [Project Settings > Physics > Common > Physics Tick per Second](../../../classes/class_projectsettings.md#class-projectsettings-property-physics-common-physics-ticks-per-second)
to 10 to see the difference with and without interpolation.


[Previous](index.md "Physics Interpolation") [Next](physics_interpolation_introduction.md "Introduction")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Physics Interpolation") [Next](physics_interpolation_introduction.md "Introduction")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).