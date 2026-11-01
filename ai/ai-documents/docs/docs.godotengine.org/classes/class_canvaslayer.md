---
title: CanvasLayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_canvaslayer.html
crawled_at: "2026-08-13T10:38:16+12:00"
content_hash: bfd33ca8af3e82032fa50ba2fd928cf680c02d661d9b7ba8116acd48b70d1dd7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CanvasLayer

* * *

# CanvasLayer

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [ParallaxBackground](class_parallaxbackground.md#class-parallaxbackground)

A node used for independent rendering of objects within a 2D scene.

## Description

[CanvasItem](class_canvasitem.md#class-canvasitem)-derived nodes that are direct or indirect children of a **CanvasLayer** will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index `0`, so a **CanvasLayer** with index `-1` will be drawn below, and a **CanvasLayer** with index `1` will be drawn above. This order will hold regardless of the [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) of the nodes within each layer.

**CanvasLayer** s can be hidden and they can also optionally follow the viewport. This makes them useful for HUDs like health bar overlays (on layers `1` and higher) or backgrounds (on layers `-1` and lower).

**Note:** Embedded [Window](class_window.md#class-window) s are placed on layer `1024`. [CanvasItem](class_canvasitem.md#class-canvasitem) s on layers `1025` and higher appear in front of embedded windows.

**Note:** Each **CanvasLayer** is drawn on one specific [Viewport](class_viewport.md#class-viewport) and cannot be shared between multiple [Viewport](class_viewport.md#class-viewport) s, see [custom\_viewport](#class-canvaslayer-property-custom-viewport). When using multiple [Viewport](class_viewport.md#class-viewport) s, for example in a split-screen game, you need to create an individual **CanvasLayer** for each [Viewport](class_viewport.md#class-viewport) you want it to be drawn on.

## Tutorials

- [Viewport and canvas transforms](../tutorials/2d/2d_transforms.md)

- [Canvas layers](../tutorials/2d/canvas_layers.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)


## Properties

|     |     |     |
| --- | --- | --- |
| [Node](class_node.md#class-node) | [custom\_viewport](#class-canvaslayer-property-custom-viewport) |  |
| [bool](class_bool.md#class-bool) | [follow\_viewport\_enabled](#class-canvaslayer-property-follow-viewport-enabled) | `false` |
| [float](class_float.md#class-float) | [follow\_viewport\_scale](#class-canvaslayer-property-follow-viewport-scale) | `1.0` |
| [int](class_int.md#class-int) | [layer](#class-canvaslayer-property-layer) | `1` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-canvaslayer-property-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [rotation](#class-canvaslayer-property-rotation) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [scale](#class-canvaslayer-property-scale) | `Vector2(1, 1)` |
| [Transform2D](class_transform2d.md#class-transform2d) | [transform](#class-canvaslayer-property-transform) | `Transform2D(1, 0, 0, 1, 0, 0)` |
| [bool](class_bool.md#class-bool) | [visible](#class-canvaslayer-property-visible) | `true` |

## Methods

|     |     |
| --- | --- |
| [RID](class_rid.md#class-rid) | [get\_canvas](#class-canvaslayer-method-get-canvas)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_final\_transform](#class-canvaslayer-method-get-final-transform)() const |
| void | [hide](#class-canvaslayer-method-hide)() |
| void | [show](#class-canvaslayer-method-show)() |

* * *

## Signals

**visibility\_changed**() [🔗](#class-canvaslayer-signal-visibility-changed)

Emitted when visibility of the layer is changed. See [visible](#class-canvaslayer-property-visible).

* * *

## Property Descriptions

[Node](class_node.md#class-node) **custom\_viewport** [🔗](#class-canvaslayer-property-custom-viewport)

- void **set\_custom\_viewport**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_custom\_viewport**()


The custom [Viewport](class_viewport.md#class-viewport) node assigned to the **CanvasLayer**. If `null`, uses the default viewport instead.

* * *

[bool](class_bool.md#class-bool) **follow\_viewport\_enabled** = `false` [🔗](#class-canvaslayer-property-follow-viewport-enabled)

- void **set\_follow\_viewport**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_following\_viewport**()


If enabled, the **CanvasLayer** maintains its position in world space. If disabled, the **CanvasLayer** stays in a fixed position on the screen.

Together with [follow\_viewport\_scale](#class-canvaslayer-property-follow-viewport-scale), this can be used for a pseudo-3D effect.

* * *

[float](class_float.md#class-float) **follow\_viewport\_scale** = `1.0` [🔗](#class-canvaslayer-property-follow-viewport-scale)

- void **set\_follow\_viewport\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_follow\_viewport\_scale**()


Scales the layer when using [follow\_viewport\_enabled](#class-canvaslayer-property-follow-viewport-enabled). Layers moving into the foreground should have increasing scales, while layers moving into the background should have decreasing scales.

* * *

[int](class_int.md#class-int) **layer** = `1` [🔗](#class-canvaslayer-property-layer)

- void **set\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_layer**()


Layer index for draw order. Lower values are drawn behind higher values.

**Note:** If multiple CanvasLayers have the same layer index, [CanvasItem](class_canvasitem.md#class-canvasitem) children of one CanvasLayer are drawn behind the [CanvasItem](class_canvasitem.md#class-canvasitem) children of the other CanvasLayer. Which CanvasLayer is drawn in front is non-deterministic.

**Note:** The layer index should be between [RenderingServer.CANVAS\_LAYER\_MIN](class_renderingserver.md#class-renderingserver-constant-canvas-layer-min) and [RenderingServer.CANVAS\_LAYER\_MAX](class_renderingserver.md#class-renderingserver-constant-canvas-layer-max) (inclusive). Any other value will wrap around.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-canvaslayer-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The layer's base offset.

* * *

[float](class_float.md#class-float) **rotation** = `0.0` [🔗](#class-canvaslayer-property-rotation)

- void **set\_rotation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation**()


The layer's rotation in radians.

* * *

[Vector2](class_vector2.md#class-vector2) **scale** = `Vector2(1, 1)` [🔗](#class-canvaslayer-property-scale)

- void **set\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scale**()


The layer's scale.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **transform** = `Transform2D(1, 0, 0, 1, 0, 0)` [🔗](#class-canvaslayer-property-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The layer's transform.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-canvaslayer-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `false`, any [CanvasItem](class_canvasitem.md#class-canvasitem) under this **CanvasLayer** will be hidden.

Unlike [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible), visibility of a **CanvasLayer** isn't propagated to underlying layers.

* * *

## Method Descriptions

[RID](class_rid.md#class-rid) **get\_canvas**() const [🔗](#class-canvaslayer-method-get-canvas)

Returns the RID of the canvas used by this layer.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_final\_transform**() const [🔗](#class-canvaslayer-method-get-final-transform)

Returns the transform from the **CanvasLayer** s coordinate system to the [Viewport](class_viewport.md#class-viewport) s coordinate system.

* * *

void **hide**() [🔗](#class-canvaslayer-method-hide)

Hides any [CanvasItem](class_canvasitem.md#class-canvasitem) under this **CanvasLayer**. This is equivalent to setting [visible](#class-canvaslayer-property-visible) to `false`.

* * *

void **show**() [🔗](#class-canvaslayer-method-show)

Shows any [CanvasItem](class_canvasitem.md#class-canvasitem) under this **CanvasLayer**. This is equivalent to setting [visible](#class-canvaslayer-property-visible) to `true`.

[Previous](class_canvasitem.md "CanvasItem") [Next](class_canvasmodulate.md "CanvasModulate")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_canvasitem.md "CanvasItem") [Next](class_canvasmodulate.md "CanvasModulate")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).