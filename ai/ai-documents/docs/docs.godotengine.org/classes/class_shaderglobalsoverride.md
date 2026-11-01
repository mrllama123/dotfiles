---
title: ShaderGlobalsOverride — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shaderglobalsoverride.html
crawled_at: "2026-08-13T10:37:45+12:00"
content_hash: 62e31d30e51ad65b82b3960704b0d6171a776ef3c3665ddae67e00010cf899d6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShaderGlobalsOverride

* * *

# ShaderGlobalsOverride

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node used to override global shader parameters' values in a scene.

## Description

Similar to how a [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) node can be used to override the environment while a specific scene is loaded, **ShaderGlobalsOverride** can be used to override global shader parameters temporarily. Once the node is removed, the project-wide values for the global shader parameters are restored. See the [RenderingServer](class_renderingserver.md#class-renderingserver) `global_shader_parameter_*` methods for more information.

**Note:** Only one **ShaderGlobalsOverride** can be used per scene. If there is more than one **ShaderGlobalsOverride** node in the scene tree, only the first node (in tree order) will be taken into account.

**Note:** All **ShaderGlobalsOverride** nodes are made part of a `"shader_overrides_group"` group when they are added to the scene tree. The currently active **ShaderGlobalsOverride** node also has a `"shader_overrides_group_active"` group added to it. You can use this to check which **ShaderGlobalsOverride** node is currently active.

## Tutorials

- [Shading language](../tutorials/shaders/shader_reference/shading_language.md)


[Previous](class_separator.md "Separator") [Next](class_shapecast2d.md "ShapeCast2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_separator.md "Separator") [Next](class_shapecast2d.md "ShapeCast2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).