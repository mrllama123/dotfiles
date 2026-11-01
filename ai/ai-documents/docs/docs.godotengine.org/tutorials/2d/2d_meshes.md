---
title: 2D meshes — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/2d/2d_meshes.html
crawled_at: "2026-08-13T10:28:40+12:00"
content_hash: 35172c111ebe11ea1b99464a7104ce38b5ddaa45fb184eb6fb5b1dfedb5128c2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [2D](index.md)
  - 2D meshes
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/2d/2d_meshes.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

Work in progress

The content of this page was not yet updated for Godot
`4.5`
and may be **outdated**. If you know how to improve this page or you can confirm
that it's up to date, feel free to [open a pull request](https://github.com/godotengine/godot-docs).


# 2D meshes

## Introduction

In 3D, meshes are used to display the world. In 2D, they are rare as images are used more often.
Godot's 2D engine is a pure two-dimensional engine, so it can't really display 3D meshes directly (although it can be done
via `Viewport` and `ViewportTexture`).

See also

If you are interested in displaying 3D meshes on a 2D viewport, see the [Using a SubViewport as a texture](../shaders/using_viewport_as_texture.md#doc-viewport-as-texture) tutorial.

2D meshes are meshes that contain two-dimensional geometry (Z can be omitted or ignored) instead of 3D.
You can experiment creating them yourself using `SurfaceTool` from code and displaying them in a `MeshInstance2D` node.

Currently, the only way to generate a 2D mesh within the editor is by either importing an OBJ file as a mesh, or converting it from a Sprite2D.

## Optimizing pixels drawn

This workflow is useful for optimizing 2D drawing in some situations. When drawing large images with transparency, Godot will draw the whole quad to the screen. The large transparent areas will still be drawn.

This can affect performance, especially on mobile devices, when drawing very large images (generally screen sized),
or layering multiple images on top of each other with large transparent areas (for example, when using `ParallaxBackground`).

Converting to a mesh will ensure that only the opaque parts will be drawn and the rest will be ignored.

## Converting Sprite2Ds to 2D meshes

You can take advantage of this optimization by converting a `Sprite2D` to a `MeshInstance2D`.
Start with an image that contains large amounts of transparency on the edges, like this tree:

![../../_images/mesh2d1.png](../../_images/mesh2d1.png)

Put it in a `Sprite2D` and select "Convert to 2D Mesh" from the menu:

![../../_images/mesh2d2.png](../../_images/mesh2d2.png)

A dialog will appear, showing a preview of how the 2D mesh will be created:

![../../_images/mesh2d3.png](../../_images/mesh2d3.png)

The default values are good enough for many cases, but you can change growth and simplification according to your needs:

![../../_images/mesh2d4.png](../../_images/mesh2d4.png)

Finally, push the Convert 2D Mesh button and your Sprite2D will be replaced:

![../../_images/mesh2d5.png](../../_images/mesh2d5.png)

[Previous](2d_lights_and_shadows.md "2D lights and shadows") [Next](2d_sprite_animation.md "2D sprite animation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](2d_lights_and_shadows.md "2D lights and shadows") [Next](2d_sprite_animation.md "2D sprite animation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).