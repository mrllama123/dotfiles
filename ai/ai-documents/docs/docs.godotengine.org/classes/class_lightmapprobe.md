---
title: LightmapProbe — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lightmapprobe.html
crawled_at: "2026-08-13T10:27:58+12:00"
content_hash: 18d85e2c30c8cc6f92f9f7692d009f27668428ec7dc337cefa829c90bc481f17
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LightmapProbe

* * *

# LightmapProbe

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Represents a single manually placed probe for dynamic object lighting with [LightmapGI](class_lightmapgi.md#class-lightmapgi).

## Description

**LightmapProbe** represents the position of a single manually placed probe for dynamic object lighting with [LightmapGI](class_lightmapgi.md#class-lightmapgi). Lightmap probes affect the lighting of [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d)-derived nodes that have their [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) set to [GeometryInstance3D.GI\_MODE\_DYNAMIC](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-dynamic).

Typically, [LightmapGI](class_lightmapgi.md#class-lightmapgi) probes are placed automatically by setting [LightmapGI.generate\_probes\_subdiv](class_lightmapgi.md#class-lightmapgi-property-generate-probes-subdiv) to a value other than [LightmapGI.GENERATE\_PROBES\_DISABLED](class_lightmapgi.md#class-lightmapgi-constant-generate-probes-disabled). By creating **LightmapProbe** nodes before baking lightmaps, you can add more probes in specific areas for greater detail, or disable automatic generation and rely only on manually placed probes instead.

**Note:** **LightmapProbe** nodes that are placed after baking lightmaps are ignored by dynamic objects. You must bake lightmaps again after creating or modifying **LightmapProbe** s for the probes to be effective.

[Previous](class_lightmapgi.md "LightmapGI") [Next](class_lightoccluder2d.md "LightOccluder2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lightmapgi.md "LightmapGI") [Next](class_lightoccluder2d.md "LightOccluder2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).