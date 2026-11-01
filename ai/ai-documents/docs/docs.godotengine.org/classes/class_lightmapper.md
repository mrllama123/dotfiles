---
title: Lightmapper — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lightmapper.html
crawled_at: "2026-08-13T10:27:48+12:00"
content_hash: 734ccf2e0336fb693dd28c68113b1e3dc7de415a2f21a9a894714d31192fc0b2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Lightmapper

* * *

# Lightmapper

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [LightmapperRD](class_lightmapperrd.md#class-lightmapperrd)

Abstract class extended by lightmappers, for use in [LightmapGI](class_lightmapgi.md#class-lightmapgi).

## Description

This class should be extended by custom lightmapper classes. Lightmappers can then be used with [LightmapGI](class_lightmapgi.md#class-lightmapgi) to provide fast baked global illumination in 3D.

Godot contains a built-in GPU-based lightmapper [LightmapperRD](class_lightmapperrd.md#class-lightmapperrd) that uses compute shaders, but custom lightmappers can be implemented by C++ modules.

[Previous](class_kinematiccollision3d.md "KinematicCollision3D") [Next](class_lightmapperrd.md "LightmapperRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_kinematiccollision3d.md "KinematicCollision3D") [Next](class_lightmapperrd.md "LightmapperRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).