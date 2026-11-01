---
title: 2D coordinate systems and 2D transforms — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/architecture/2d_coordinate_systems.html
crawled_at: "2026-08-13T10:38:42+12:00"
content_hash: b29d2d075656106729834a7ecf4b9373f6bce836a3883e0b5971279c25a5d15f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Engine architecture](index.md)
  - 2D coordinate systems and 2D transforms
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/architecture/2d_coordinate_systems.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# 2D coordinate systems and 2D transforms

## Introduction

This is a detailed overview of the available 2D coordinate systems and 2D transforms that are
built in. The basic concepts are covered in [Viewport and canvas transforms](../../tutorials/2d/2d_transforms.md#doc-viewport-and-canvas-transforms).

[Transform2D](../../classes/class_transform2d.md#class-transform2d) are matrices that convert coordinates from one coordinate
system to another. In order to use them, it is beneficial to know which coordinate systems are
available in Godot. For a deeper understanding, the [Matrices and transforms](../../tutorials/math/matrices_and_transforms.md#doc-matrices-and-transforms) tutorial
offers insights to the underlying functionality.

## Godot 2D coordinate systems

The following graphic gives an overview of Godot 2D coordinate systems and the available
node-transforms, transform-functions and coordinate-system related functions. At the left
is the OS Window Manager screen, at the right are the [CanvasItems](../../classes/class_canvasitem.md#class-canvasitem). For
simplicity reasons this graphic doesn't include [SubViewport](../../classes/class_subviewport.md#class-subviewport),
[SubViewportContainer](../../classes/class_subviewportcontainer.md#class-subviewportcontainer), [ParallaxLayer](../../classes/class_parallaxlayer.md#class-parallaxlayer)
and [ParallaxBackground](../../classes/class_parallaxbackground.md#class-parallaxbackground) all of which also influence transforms.

The graphic is based on a node tree of the following form: `Root Window (embed Windows)` ⇒
`Window (don't embed Windows)` ⇒ `CanvasLayer` ⇒ `CanvasItem` ⇒ `CanvasItem` ⇒
`CanvasItem`. There are more complex combinations possible, like deeply nested Window and
SubViewports, however this example intends to provide an overview of the methodology in general.

[![../../_images/transforms_overview.webp](../../_images/transforms_overview.webp)](../../images/transforms_overview.md)

Click graphic to enlarge.

- **Item Coordinates**

This is the local coordinate system of a [CanvasItem](../../classes/class_canvasitem.md#class-canvasitem).

- **Parent Item Coordinates**

This is the local coordinate system of the parent's _CanvasItem_. When positioning
_CanvasItems_ in the _Canvas_, they usually inherit the transformations of their parent
_CanvasItems_. An exceptions is
[CanvasItems.top\_level](../../classes/class_canvasitem.md#class-canvasitem-property-top-level).

- **Canvas Coordinates**

As mentioned in the previous tutorial [Canvas layers](../../tutorials/2d/canvas_layers.md#doc-canvas-layers), there are two types of canvases
( _Viewport_ canvas and _CanvasLayer_ canvas) and both have a canvas coordinate system. These
are also called world coordinates. A _Viewport_ can contain multiple _Canvases_ with different
coordinate systems.

- **Viewport Coordinates**

This is the coordinate system of the [Viewport](../../classes/class_viewport.md#class-viewport).

- **Camera Coordinates**

This is only used internally for functionality like 3D-camera ray projections.

- **Embedder Coordinates / Screen Coordinates**

Every _Viewport_ ( _Window_ or _SubViewport_) in the scene tree is embedded either in a
different node or in the OS Window Manager. This coordinate system's origin is identical to the
top-left corner of the _Window_ or _SubViewport_ and its scale is the one of the embedder or
the OS Window Manager.



If the embedder is the OS Window Manager, then they are also called Screen Coordinates.

- **Absolute Embedder Coordinates / Absolute Screen Coordinates**

The origin of this coordinate system is the top-left corner of the embedding node or the OS
Window Manager screen. Its scale is the one of the embedder or the OS Window Manager.



If the embedder is the OS Window Manager, then they are also called Absolute Screen
Coordinates.


## Node transforms

Each of the mentioned nodes have one or more transforms associated with them and the combination of
these nodes infer the transforms between the different coordinate systems. With a few exceptions,
the transforms are [Transform2D](../../classes/class_transform2d.md#class-transform2d) and the following list shows details and
effects of each of them.

- **CanvasItem transform**

_CanvasItems_ are either _Control_-nodes or _Node2D_-nodes.



For _Control_ nodes this transform consists of a [position](../../classes/class_control.md#class-control-property-position)
relative to the parent's origin and a [scale](../../classes/class_control.md#class-control-property-scale) and
[rotation](../../classes/class_control.md#class-control-property-rotation) around a
[pivot point](../../classes/class_control.md#class-control-property-pivot-offset).



For _Node2D_ nodes [transform](../../classes/class_node2d.md#class-node2d-property-transform) consists of
[position](../../classes/class_node2d.md#class-node2d-property-position), [rotation](../../classes/class_node2d.md#class-node2d-property-rotation),
[scale](../../classes/class_node2d.md#class-node2d-property-scale) and [skew](../../classes/class_node2d.md#class-node2d-property-skew).



The transform affects the item itself and usually also child- _CanvasItems_ and in the case of a
_SubViewportContainer_ it affects the contained _SubViewport_.

- **CanvasLayer transform**

The _CanvasLayer's_ [transform](../../classes/class_canvaslayer.md#class-canvaslayer-property-transform) affects all
_CanvasItems_ within the _CanvasLayer_. It doesn't affect other _CanvasLayers_ or _Windows_ in
its _Viewport_.

- **CanvasLayer follow viewport transform**

The _follow viewport transform_ is an automatically calculated transform, that is based on the
_Viewport's_ [canvas transform](../../classes/class_viewport.md#class-viewport-property-canvas-transform) and the
_CanvasLayer's_ [follow viewport scale](../../classes/class_canvaslayer.md#class-canvaslayer-property-follow-viewport-scale)
and can be used, if [enabled](../../classes/class_canvaslayer.md#class-canvaslayer-property-follow-viewport-enabled), to
achieve a pseudo-3D effect. It affects the same child nodes as the _CanvasLayer transform_.

- **Viewport canvas transform**

The [canvas transform](../../classes/class_viewport.md#class-viewport-property-canvas-transform) affects all
_CanvasItems_ in the _Viewport's_ default canvas. It also affects _CanvasLayers_, that have
follow viewport transform enabled. The _Viewport's_ active [Camera2D](../../classes/class_camera2d.md#class-camera2d)
works by changing this transform. It doesn't affect this _Viewport's_ embedded _Windows_.

- **Viewport global canvas transform**

_Viewports_ also have a [global canvas transform](../../classes/class_viewport.md#class-viewport-property-global-canvas-transform).
This is the master transform and affects all individual _Canvas Layer_ and embedded _Window_
transforms. This is primarily used in Godot's CanvasItem Editor.

- **Viewport stretch transform**

Finally, _Viewports_ have a _stretch transform_, which is used when resizing or stretching the
viewport. This transform is used for [Windows](../../classes/class_window.md#class-window) as described in
[Multiple resolutions](../../tutorials/rendering/multiple_resolutions.md#doc-multiple-resolutions), but can also be manually set on _SubViewports_ by means of
[size](../../classes/class_subviewport.md#class-subviewport-property-size) and
[size\_2d\_override](../../classes/class_subviewport.md#class-subviewport-property-size-2d-override). Its
[translation](../../classes/class_transform2d.md#class-transform2d-method-get-origin),
[rotation](../../classes/class_transform2d.md#class-transform2d-method-get-rotation) and
[skew](../../classes/class_transform2d.md#class-transform2d-method-get-skew) are the default values and it can only have
non-default [scale](../../classes/class_transform2d.md#class-transform2d-method-get-scale).

- **Window transform**

In order to scale and position the _Window's_ content as described in
[Multiple resolutions](../../tutorials/rendering/multiple_resolutions.md#doc-multiple-resolutions), each [Window](../../classes/class_window.md#class-window) contains a
_window transform_. It is for example responsible for the black bars at the _Window's_ sides so
that the _Viewport_ is displayed with a fixed aspect ratio.

- **Window position**

Every _Window_ also has a [position](../../classes/class_window.md#class-window-property-position) to describe its
position within its embedder. The embedder can be another _Viewport_ or the OS Window Manager.

- **SubViewportContainer shrink transform**

[stretch](../../classes/class_subviewportcontainer.md#class-subviewportcontainer-property-stretch) together with
[stretch\_shrink](../../classes/class_subviewportcontainer.md#class-subviewportcontainer-property-stretch-shrink) declare for a
_SubViewportContainer_ if and by what integer factor the contained _SubViewport_ should be
scaled in comparison to the container's size.


[Previous](internal_rendering_architecture.md "Internal rendering architecture") [Next](scripting_development.md "Scripting development")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](internal_rendering_architecture.md "Internal rendering architecture") [Next](scripting_development.md "Scripting development")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).