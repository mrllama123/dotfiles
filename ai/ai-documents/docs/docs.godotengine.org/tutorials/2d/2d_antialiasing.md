---
title: 2D antialiasing — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/2d/2d_antialiasing.html
crawled_at: "2026-08-13T10:42:07+12:00"
content_hash: 2356a75a61c05e0daee65b80dc2ea936c2fa8ca8c5c67888aa6ed641704e9f81
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [2D](index.md)
  - 2D antialiasing
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/2d/2d_antialiasing.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# 2D antialiasing

See also

Godot also supports antialiasing in 3D rendering. This is covered on the
[3D antialiasing](../3d/3d_antialiasing.md#doc-3d-antialiasing) page.

## Introduction

Due to their limited resolution, scenes rendered in 2D can exhibit aliasing
artifacts. These artifacts usually manifest in the form of a "staircase" effect on
geometry edges, and are most noticeable when using nodes such as [Line2D](../../classes/class_line2d.md#class-line2d),
[Polygon2D](../../classes/class_polygon2d.md#class-polygon2d) or [TextureProgressBar](../../classes/class_textureprogressbar.md#class-textureprogressbar). [Custom drawing in 2D](custom_drawing_in_2d.md#doc-custom-drawing-in-2d)
can also have aliasing artifacts for methods that don't support antialiasing.

In the example below, you can notice how
edges have a blocky appearance:

![Image is scaled by 2× with nearest-neighbor filtering to make aliasing more noticeable.](../../_images/antialiasing_none_scaled.webp)

Image is scaled by 2× with nearest-neighbor filtering to make aliasing more noticeable.

To combat this, Godot supports several methods of enabling antialiasing on 2D rendering.

## Antialiasing property in Line2D and custom drawing

This is the recommended method, as it has a lower performance impact in most cases.

Line2D has an **Antialiased** property which you can enable in the inspector.
Also, several methods for [Custom drawing in 2D](custom_drawing_in_2d.md#doc-custom-drawing-in-2d) support an optional
`antialiased` parameter, which can be set to `true` when calling the
function.

These methods do not require MSAA to be enabled, which makes their _baseline_
performance cost low. In other words, there is no permanent added cost if you're
not drawing any antialiased geometry at some point.

The downside of these antialiasing methods is that they work by generating
additional geometry. If you're generating complex 2D geometry that's updated
every frame, this may be a bottleneck. Also, Polygon2D, TextureProgressBar, and
several custom drawing methods don't feature an antialiased property. For these
nodes, you can use 2D multisample antialiasing instead.

## Multisample antialiasing (MSAA)

_This is only available in the Forward+ and Mobile renderers, not the_
_Compatibility renderer._

Before enabling MSAA in 2D, it's important to understand what MSAA will operate
on. MSAA in 2D follows similar restrictions as in 3D. While it does not
introduce any blurriness, its scope of application is limited. The main
applications of 2D MSAA are:

- Geometry edges, such as line and polygon drawing.

- Sprite edges _only for pixels touching one of the texture's edges_. This works
for both linear and nearest-neighbor filtering. Sprite edges created using
transparency on the image are not affected by MSAA.


The downside of MSAA is that it only operates on edges. This is because MSAA
increases the number of _coverage_ samples, but not the number of _color_
samples. However, since the number of color samples did not increase, fragment
shaders are still run for each pixel only once. As a result, MSAA will **not**
**affect** the following kinds of aliasing in any way:

- Aliasing _within_ nearest-neighbor filtered textures (pixel art).

- Aliasing caused by custom 2D shaders.

- Specular aliasing when using Light2D.

- Aliasing in font rendering.


MSAA can be enabled in the Project Settings by changing the value of the
[Rendering > Anti Aliasing > Quality > MSAA 2D](../../classes/class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-2d)
setting. It's important to change the value of the **MSAA 2D** setting and not **MSAA 3D**, as these are entirely
separate settings.

Comparison between no antialiasing (left) and various MSAA levels (right). The
top-left corner contains a Line2D node, the top-right corner contains 2
TextureProgressBar nodes. The bottom contains 8 pixel art sprites, with 4 of
them touching the edges (green background) and 4 of them not touching the edges
(Godot logo):

![../../_images/antialiasing_msaa_2x.webp](../../_images/antialiasing_msaa_2x.webp)![../../_images/antialiasing_msaa_4x.webp](../../_images/antialiasing_msaa_4x.webp)![../../_images/antialiasing_msaa_8x.webp](../../_images/antialiasing_msaa_8x.webp)

[Previous](particle_process_material_2d.md "ParticleProcessMaterial 2D Usage") [Next](custom_drawing_in_2d.md "Custom drawing in 2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](particle_process_material_2d.md "ParticleProcessMaterial 2D Usage") [Next](custom_drawing_in_2d.md "Custom drawing in 2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).