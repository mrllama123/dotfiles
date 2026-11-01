---
title: RenderingServer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderingserver.html
crawled_at: "2026-08-13T10:29:49+12:00"
content_hash: b34bbc0dde5fa9ac14f90e2952dfa4a4c5c6b9d019b38eaf6a3b09dcade803d3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderingServer

* * *

# RenderingServer

**Inherits:** [Object](class_object.md#class-object)

Server for anything visible.

## Description

The rendering server is the API backend for everything visible. The whole scene system mounts on it to display. The rendering server is completely opaque: the internals are entirely implementation-specific and cannot be accessed.

The rendering server can be used to bypass the scene/ [Node](class_node.md#class-node) system entirely. This can improve performance in cases where the scene system is the bottleneck, but won't improve performance otherwise (for instance, if the GPU is already fully utilized).

Resources are created using the `*_create` functions. These functions return [RID](class_rid.md#class-rid) s which are not references to the objects themselves, but opaque _pointers_ towards these objects.

All objects are drawn to a viewport. You can use the [Viewport](class_viewport.md#class-viewport) attached to the [SceneTree](class_scenetree.md#class-scenetree) or you can create one yourself with [viewport\_create()](#class-renderingserver-method-viewport-create). When using a custom scenario or canvas, the scenario or canvas needs to be attached to the viewport using [viewport\_set\_scenario()](#class-renderingserver-method-viewport-set-scenario) or [viewport\_attach\_canvas()](#class-renderingserver-method-viewport-attach-canvas).

**Scenarios:** In 3D, all visual objects must be associated with a scenario. The scenario is a visual representation of the world. If accessing the rendering server from a running game, the scenario can be accessed from the scene tree from any [Node3D](class_node3d.md#class-node3d) node with [Node3D.get\_world\_3d()](class_node3d.md#class-node3d-method-get-world-3d). Otherwise, a scenario can be created with [scenario\_create()](#class-renderingserver-method-scenario-create).

Similarly, in 2D, a canvas is needed to draw all canvas items.

**3D:** In 3D, all visible objects are comprised of a resource and an instance. A resource can be a mesh, a particle system, a light, or any other 3D object. In order to be visible resources must be attached to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base). The instance must also be attached to the scenario using [instance\_set\_scenario()](#class-renderingserver-method-instance-set-scenario) in order to be visible. RenderingServer methods that don't have a prefix are usually 3D-specific (but not always).

**2D:** In 2D, all visible objects are some form of canvas item. In order to be visible, a canvas item needs to be the child of a canvas attached to a viewport, or it needs to be the child of another canvas item that is eventually attached to the canvas. 2D-specific RenderingServer methods generally start with `canvas_*`.

**Headless mode:** Starting the engine with the `--headless` [command line argument](../tutorials/editor/command_line_tutorial.md) disables all rendering and window management functions. Most functions from **RenderingServer** will return dummy values in this case.

## Tutorials

- [Optimization using Servers](../tutorials/performance/using_servers.md)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [render\_loop\_enabled](#class-renderingserver-property-render-loop-enabled) |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [bake\_render\_uv2](#class-renderingserver-method-bake-render-uv2)(base: [RID](class_rid.md#class-rid), material\_overrides: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], image\_size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [call\_on\_render\_thread](#class-renderingserver-method-call-on-render-thread)(callable: [Callable](class_callable.md#class-callable)) |
| [RID](class_rid.md#class-rid) | [camera\_attributes\_create](#class-renderingserver-method-camera-attributes-create)() |
| void | [camera\_attributes\_set\_auto\_exposure](#class-renderingserver-method-camera-attributes-set-auto-exposure)(camera\_attributes: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), min\_sensitivity: [float](class_float.md#class-float), max\_sensitivity: [float](class_float.md#class-float), speed: [float](class_float.md#class-float), scale: [float](class_float.md#class-float)) |
| void | [camera\_attributes\_set\_dof\_blur](#class-renderingserver-method-camera-attributes-set-dof-blur)(camera\_attributes: [RID](class_rid.md#class-rid), far\_enable: [bool](class_bool.md#class-bool), far\_distance: [float](class_float.md#class-float), far\_transition: [float](class_float.md#class-float), near\_enable: [bool](class_bool.md#class-bool), near\_distance: [float](class_float.md#class-float), near\_transition: [float](class_float.md#class-float), amount: [float](class_float.md#class-float)) |
| void | [camera\_attributes\_set\_dof\_blur\_bokeh\_shape](#class-renderingserver-method-camera-attributes-set-dof-blur-bokeh-shape)(shape: [DOFBokehShape](#enum-renderingserver-dofbokehshape)) |
| void | [camera\_attributes\_set\_dof\_blur\_quality](#class-renderingserver-method-camera-attributes-set-dof-blur-quality)(quality: [DOFBlurQuality](#enum-renderingserver-dofblurquality), use\_jitter: [bool](class_bool.md#class-bool)) |
| void | [camera\_attributes\_set\_exposure](#class-renderingserver-method-camera-attributes-set-exposure)(camera\_attributes: [RID](class_rid.md#class-rid), multiplier: [float](class_float.md#class-float), normalization: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [camera\_create](#class-renderingserver-method-camera-create)() |
| void | [camera\_set\_camera\_attributes](#class-renderingserver-method-camera-set-camera-attributes)(camera: [RID](class_rid.md#class-rid), effects: [RID](class_rid.md#class-rid)) |
| void | [camera\_set\_compositor](#class-renderingserver-method-camera-set-compositor)(camera: [RID](class_rid.md#class-rid), compositor: [RID](class_rid.md#class-rid)) |
| void | [camera\_set\_cull\_mask](#class-renderingserver-method-camera-set-cull-mask)(camera: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) |
| void | [camera\_set\_environment](#class-renderingserver-method-camera-set-environment)(camera: [RID](class_rid.md#class-rid), env: [RID](class_rid.md#class-rid)) |
| void | [camera\_set\_frustum](#class-renderingserver-method-camera-set-frustum)(camera: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| void | [camera\_set\_orthogonal](#class-renderingserver-method-camera-set-orthogonal)(camera: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| void | [camera\_set\_perspective](#class-renderingserver-method-camera-set-perspective)(camera: [RID](class_rid.md#class-rid), fovy\_degrees: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| void | [camera\_set\_transform](#class-renderingserver-method-camera-set-transform)(camera: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [camera\_set\_use\_vertical\_aspect](#class-renderingserver-method-camera-set-use-vertical-aspect)(camera: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| [RID](class_rid.md#class-rid) | [canvas\_create](#class-renderingserver-method-canvas-create)() |
| void | [canvas\_item\_add\_animation\_slice](#class-renderingserver-method-canvas-item-add-animation-slice)(item: [RID](class_rid.md#class-rid), animation\_length: [float](class_float.md#class-float), slice\_begin: [float](class_float.md#class-float), slice\_end: [float](class_float.md#class-float), offset: [float](class_float.md#class-float) = 0.0) |
| void | [canvas\_item\_add\_circle](#class-renderingserver-method-canvas-item-add-circle)(item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_clip\_ignore](#class-renderingserver-method-canvas-item-add-clip-ignore)(item: [RID](class_rid.md#class-rid), ignore: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_add\_lcd\_texture\_rect\_region](#class-renderingserver-method-canvas-item-add-lcd-texture-rect-region)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color)) |
| void | [canvas\_item\_add\_line](#class-renderingserver-method-canvas-item-add-line)(item: [RID](class_rid.md#class-rid), from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_mesh](#class-renderingserver-method-canvas-item-add-mesh)(item: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), texture: [RID](class_rid.md#class-rid) = RID()) |
| void | [canvas\_item\_add\_msdf\_texture\_rect\_region](#class-renderingserver-method-canvas-item-add-msdf-texture-rect-region)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline\_size: [int](class_int.md#class-int) = 0, px\_range: [float](class_float.md#class-float) = 1.0, scale: [float](class_float.md#class-float) = 1.0) |
| void | [canvas\_item\_add\_multiline](#class-renderingserver-method-canvas-item-add-multiline)(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_multimesh](#class-renderingserver-method-canvas-item-add-multimesh)(item: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid) = RID()) |
| void | [canvas\_item\_add\_nine\_patch](#class-renderingserver-method-canvas-item-add-nine-patch)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), source: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), topleft: [Vector2](class_vector2.md#class-vector2), bottomright: [Vector2](class_vector2.md#class-vector2), x\_axis\_mode: [NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) = 0, y\_axis\_mode: [NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) = 0, draw\_center: [bool](class_bool.md#class-bool) = true, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) |
| void | [canvas\_item\_add\_particles](#class-renderingserver-method-canvas-item-add-particles)(item: [RID](class_rid.md#class-rid), particles: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_add\_polygon](#class-renderingserver-method-canvas-item-add-polygon)(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [RID](class_rid.md#class-rid) = RID()) |
| void | [canvas\_item\_add\_polyline](#class-renderingserver-method-canvas-item-add-polyline)(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_primitive](#class-renderingserver-method-canvas-item-add-primitive)(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), texture: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_add\_rect](#class-renderingserver-method-canvas-item-add-rect)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), color: [Color](class_color.md#class-color), antialiased: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_set\_transform](#class-renderingserver-method-canvas-item-add-set-transform)(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_item\_add\_texture\_rect](#class-renderingserver-method-canvas-item-add-texture-rect)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), tile: [bool](class_bool.md#class-bool) = false, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_add\_texture\_rect\_region](#class-renderingserver-method-canvas-item-add-texture-rect-region)(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) |
| void | [canvas\_item\_add\_triangle\_array](#class-renderingserver-method-canvas-item-add-triangle-array)(item: [RID](class_rid.md#class-rid), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array) = PackedInt32Array(), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array(), texture: [RID](class_rid.md#class-rid) = RID(), count: [int](class_int.md#class-int) = -1) |
| void | [canvas\_item\_attach\_skeleton](#class-renderingserver-method-canvas-item-attach-skeleton)(item: [RID](class_rid.md#class-rid), skeleton: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_clear](#class-renderingserver-method-canvas-item-clear)(item: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [canvas\_item\_create](#class-renderingserver-method-canvas-item-create)() |
| [Variant](class_variant.md#class-variant) | [canvas\_item\_get\_instance\_shader\_parameter](#class-renderingserver-method-canvas-item-get-instance-shader-parameter)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [canvas\_item\_get\_instance\_shader\_parameter\_default\_value](#class-renderingserver-method-canvas-item-get-instance-shader-parameter-default-value)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [canvas\_item\_get\_instance\_shader\_parameter\_list](#class-renderingserver-method-canvas-item-get-instance-shader-parameter-list)(instance: [RID](class_rid.md#class-rid)) const |
| void | [canvas\_item\_reset\_physics\_interpolation](#class-renderingserver-method-canvas-item-reset-physics-interpolation)(item: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_set\_canvas\_group\_mode](#class-renderingserver-method-canvas-item-set-canvas-group-mode)(item: [RID](class_rid.md#class-rid), mode: [CanvasGroupMode](#enum-renderingserver-canvasgroupmode), clear\_margin: [float](class_float.md#class-float) = 5.0, fit\_empty: [bool](class_bool.md#class-bool) = false, fit\_margin: [float](class_float.md#class-float) = 0.0, blur\_mipmaps: [bool](class_bool.md#class-bool) = false) |
| void | [canvas\_item\_set\_clip](#class-renderingserver-method-canvas-item-set-clip)(item: [RID](class_rid.md#class-rid), clip: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_copy\_to\_backbuffer](#class-renderingserver-method-canvas-item-set-copy-to-backbuffer)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), rect: [Rect2](class_rect2.md#class-rect2)) |
| void | [canvas\_item\_set\_custom\_rect](#class-renderingserver-method-canvas-item-set-custom-rect)(item: [RID](class_rid.md#class-rid), use\_custom\_rect: [bool](class_bool.md#class-bool), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0)) |
| void | [canvas\_item\_set\_default\_texture\_filter](#class-renderingserver-method-canvas-item-set-default-texture-filter)(item: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) |
| void | [canvas\_item\_set\_default\_texture\_repeat](#class-renderingserver-method-canvas-item-set-default-texture-repeat)(item: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) |
| void | [canvas\_item\_set\_distance\_field\_mode](#class-renderingserver-method-canvas-item-set-distance-field-mode)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_draw\_behind\_parent](#class-renderingserver-method-canvas-item-set-draw-behind-parent)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_draw\_index](#class-renderingserver-method-canvas-item-set-draw-index)(item: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| void | [canvas\_item\_set\_instance\_shader\_parameter](#class-renderingserver-method-canvas-item-set-instance-shader-parameter)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [canvas\_item\_set\_interpolated](#class-renderingserver-method-canvas-item-set-interpolated)(item: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_light\_mask](#class-renderingserver-method-canvas-item-set-light-mask)(item: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [canvas\_item\_set\_material](#class-renderingserver-method-canvas-item-set-material)(item: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_set\_modulate](#class-renderingserver-method-canvas-item-set-modulate)(item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [canvas\_item\_set\_parent](#class-renderingserver-method-canvas-item-set-parent)(item: [RID](class_rid.md#class-rid), parent: [RID](class_rid.md#class-rid)) |
| void | [canvas\_item\_set\_self\_modulate](#class-renderingserver-method-canvas-item-set-self-modulate)(item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [canvas\_item\_set\_sort\_children\_by\_y](#class-renderingserver-method-canvas-item-set-sort-children-by-y)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_transform](#class-renderingserver-method-canvas-item-set-transform)(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_item\_set\_use\_parent\_material](#class-renderingserver-method-canvas-item-set-use-parent-material)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_visibility\_layer](#class-renderingserver-method-canvas-item-set-visibility-layer)(item: [RID](class_rid.md#class-rid), visibility\_layer: [int](class_int.md#class-int)) |
| void | [canvas\_item\_set\_visibility\_notifier](#class-renderingserver-method-canvas-item-set-visibility-notifier)(item: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), area: [Rect2](class_rect2.md#class-rect2), enter\_callable: [Callable](class_callable.md#class-callable), exit\_callable: [Callable](class_callable.md#class-callable)) |
| void | [canvas\_item\_set\_visible](#class-renderingserver-method-canvas-item-set-visible)(item: [RID](class_rid.md#class-rid), visible: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_z\_as\_relative\_to\_parent](#class-renderingserver-method-canvas-item-set-z-as-relative-to-parent)(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_item\_set\_z\_index](#class-renderingserver-method-canvas-item-set-z-index)(item: [RID](class_rid.md#class-rid), z\_index: [int](class_int.md#class-int)) |
| void | [canvas\_item\_transform\_physics\_interpolation](#class-renderingserver-method-canvas-item-transform-physics-interpolation)(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_light\_attach\_to\_canvas](#class-renderingserver-method-canvas-light-attach-to-canvas)(light: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [canvas\_light\_create](#class-renderingserver-method-canvas-light-create)() |
| void | [canvas\_light\_occluder\_attach\_to\_canvas](#class-renderingserver-method-canvas-light-occluder-attach-to-canvas)(occluder: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [canvas\_light\_occluder\_create](#class-renderingserver-method-canvas-light-occluder-create)() |
| void | [canvas\_light\_occluder\_reset\_physics\_interpolation](#class-renderingserver-method-canvas-light-occluder-reset-physics-interpolation)(occluder: [RID](class_rid.md#class-rid)) |
| void | [canvas\_light\_occluder\_set\_as\_sdf\_collision](#class-renderingserver-method-canvas-light-occluder-set-as-sdf-collision)(occluder: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_occluder\_set\_enabled](#class-renderingserver-method-canvas-light-occluder-set-enabled)(occluder: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_occluder\_set\_interpolated](#class-renderingserver-method-canvas-light-occluder-set-interpolated)(occluder: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_occluder\_set\_light\_mask](#class-renderingserver-method-canvas-light-occluder-set-light-mask)(occluder: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [canvas\_light\_occluder\_set\_polygon](#class-renderingserver-method-canvas-light-occluder-set-polygon)(occluder: [RID](class_rid.md#class-rid), polygon: [RID](class_rid.md#class-rid)) |
| void | [canvas\_light\_occluder\_set\_transform](#class-renderingserver-method-canvas-light-occluder-set-transform)(occluder: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_light\_occluder\_transform\_physics\_interpolation](#class-renderingserver-method-canvas-light-occluder-transform-physics-interpolation)(occluder: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_light\_reset\_physics\_interpolation](#class-renderingserver-method-canvas-light-reset-physics-interpolation)(light: [RID](class_rid.md#class-rid)) |
| void | [canvas\_light\_set\_blend\_mode](#class-renderingserver-method-canvas-light-set-blend-mode)(light: [RID](class_rid.md#class-rid), mode: [CanvasLightBlendMode](#enum-renderingserver-canvaslightblendmode)) |
| void | [canvas\_light\_set\_color](#class-renderingserver-method-canvas-light-set-color)(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [canvas\_light\_set\_enabled](#class-renderingserver-method-canvas-light-set-enabled)(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_set\_energy](#class-renderingserver-method-canvas-light-set-energy)(light: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) |
| void | [canvas\_light\_set\_height](#class-renderingserver-method-canvas-light-set-height)(light: [RID](class_rid.md#class-rid), height: [float](class_float.md#class-float)) |
| void | [canvas\_light\_set\_interpolated](#class-renderingserver-method-canvas-light-set-interpolated)(light: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_set\_item\_cull\_mask](#class-renderingserver-method-canvas-light-set-item-cull-mask)(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [canvas\_light\_set\_item\_shadow\_cull\_mask](#class-renderingserver-method-canvas-light-set-item-shadow-cull-mask)(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [canvas\_light\_set\_layer\_range](#class-renderingserver-method-canvas-light-set-layer-range)(light: [RID](class_rid.md#class-rid), min\_layer: [int](class_int.md#class-int), max\_layer: [int](class_int.md#class-int)) |
| void | [canvas\_light\_set\_mode](#class-renderingserver-method-canvas-light-set-mode)(light: [RID](class_rid.md#class-rid), mode: [CanvasLightMode](#enum-renderingserver-canvaslightmode)) |
| void | [canvas\_light\_set\_shadow\_color](#class-renderingserver-method-canvas-light-set-shadow-color)(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [canvas\_light\_set\_shadow\_enabled](#class-renderingserver-method-canvas-light-set-shadow-enabled)(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [canvas\_light\_set\_shadow\_filter](#class-renderingserver-method-canvas-light-set-shadow-filter)(light: [RID](class_rid.md#class-rid), filter: [CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter)) |
| void | [canvas\_light\_set\_shadow\_smooth](#class-renderingserver-method-canvas-light-set-shadow-smooth)(light: [RID](class_rid.md#class-rid), smooth: [float](class_float.md#class-float)) |
| void | [canvas\_light\_set\_texture](#class-renderingserver-method-canvas-light-set-texture)(light: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) |
| void | [canvas\_light\_set\_texture\_offset](#class-renderingserver-method-canvas-light-set-texture-offset)(light: [RID](class_rid.md#class-rid), offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [canvas\_light\_set\_texture\_scale](#class-renderingserver-method-canvas-light-set-texture-scale)(light: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) |
| void | [canvas\_light\_set\_transform](#class-renderingserver-method-canvas-light-set-transform)(light: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [canvas\_light\_set\_z\_range](#class-renderingserver-method-canvas-light-set-z-range)(light: [RID](class_rid.md#class-rid), min\_z: [int](class_int.md#class-int), max\_z: [int](class_int.md#class-int)) |
| void | [canvas\_light\_transform\_physics\_interpolation](#class-renderingserver-method-canvas-light-transform-physics-interpolation)(light: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| [RID](class_rid.md#class-rid) | [canvas\_occluder\_polygon\_create](#class-renderingserver-method-canvas-occluder-polygon-create)() |
| void | [canvas\_occluder\_polygon\_set\_cull\_mode](#class-renderingserver-method-canvas-occluder-polygon-set-cull-mode)(occluder\_polygon: [RID](class_rid.md#class-rid), mode: [CanvasOccluderPolygonCullMode](#enum-renderingserver-canvasoccluderpolygoncullmode)) |
| void | [canvas\_occluder\_polygon\_set\_shape](#class-renderingserver-method-canvas-occluder-polygon-set-shape)(occluder\_polygon: [RID](class_rid.md#class-rid), shape: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), closed: [bool](class_bool.md#class-bool)) |
| void | [canvas\_set\_disable\_scale](#class-renderingserver-method-canvas-set-disable-scale)(disable: [bool](class_bool.md#class-bool)) |
| void | [canvas\_set\_item\_mirroring](#class-renderingserver-method-canvas-set-item-mirroring)(canvas: [RID](class_rid.md#class-rid), item: [RID](class_rid.md#class-rid), mirroring: [Vector2](class_vector2.md#class-vector2)) |
| void | [canvas\_set\_item\_repeat](#class-renderingserver-method-canvas-set-item-repeat)(item: [RID](class_rid.md#class-rid), repeat\_size: [Vector2](class_vector2.md#class-vector2), repeat\_times: [int](class_int.md#class-int)) |
| void | [canvas\_set\_modulate](#class-renderingserver-method-canvas-set-modulate)(canvas: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [canvas\_set\_shadow\_texture\_size](#class-renderingserver-method-canvas-set-shadow-texture-size)(size: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [canvas\_texture\_create](#class-renderingserver-method-canvas-texture-create)() |
| void | [canvas\_texture\_set\_channel](#class-renderingserver-method-canvas-texture-set-channel)(canvas\_texture: [RID](class_rid.md#class-rid), channel: [CanvasTextureChannel](#enum-renderingserver-canvastexturechannel), texture: [RID](class_rid.md#class-rid)) |
| void | [canvas\_texture\_set\_shading\_parameters](#class-renderingserver-method-canvas-texture-set-shading-parameters)(canvas\_texture: [RID](class_rid.md#class-rid), base\_color: [Color](class_color.md#class-color), shininess: [float](class_float.md#class-float)) |
| void | [canvas\_texture\_set\_texture\_filter](#class-renderingserver-method-canvas-texture-set-texture-filter)(canvas\_texture: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) |
| void | [canvas\_texture\_set\_texture\_repeat](#class-renderingserver-method-canvas-texture-set-texture-repeat)(canvas\_texture: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) |
| [RID](class_rid.md#class-rid) | [compositor\_create](#class-renderingserver-method-compositor-create)() |
| [RID](class_rid.md#class-rid) | [compositor\_effect\_create](#class-renderingserver-method-compositor-effect-create)() |
| void | [compositor\_effect\_set\_callback](#class-renderingserver-method-compositor-effect-set-callback)(effect: [RID](class_rid.md#class-rid), callback\_type: [CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype), callback: [Callable](class_callable.md#class-callable)) |
| void | [compositor\_effect\_set\_enabled](#class-renderingserver-method-compositor-effect-set-enabled)(effect: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [compositor\_effect\_set\_flag](#class-renderingserver-method-compositor-effect-set-flag)(effect: [RID](class_rid.md#class-rid), flag: [CompositorEffectFlags](#enum-renderingserver-compositoreffectflags), set: [bool](class_bool.md#class-bool)) |
| void | [compositor\_set\_compositor\_effects](#class-renderingserver-method-compositor-set-compositor-effects)(compositor: [RID](class_rid.md#class-rid), effects: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\]) |
| [RenderingDevice](class_renderingdevice.md#class-renderingdevice) | [create\_local\_rendering\_device](#class-renderingserver-method-create-local-rendering-device)() const |
| [Rect2](class_rect2.md#class-rect2) | [debug\_canvas\_item\_get\_rect](#class-renderingserver-method-debug-canvas-item-get-rect)(item: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [decal\_create](#class-renderingserver-method-decal-create)() |
| void | [decal\_set\_albedo\_mix](#class-renderingserver-method-decal-set-albedo-mix)(decal: [RID](class_rid.md#class-rid), albedo\_mix: [float](class_float.md#class-float)) |
| void | [decal\_set\_cull\_mask](#class-renderingserver-method-decal-set-cull-mask)(decal: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [decal\_set\_distance\_fade](#class-renderingserver-method-decal-set-distance-fade)(decal: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), begin: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) |
| void | [decal\_set\_emission\_energy](#class-renderingserver-method-decal-set-emission-energy)(decal: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) |
| void | [decal\_set\_fade](#class-renderingserver-method-decal-set-fade)(decal: [RID](class_rid.md#class-rid), above: [float](class_float.md#class-float), below: [float](class_float.md#class-float)) |
| void | [decal\_set\_modulate](#class-renderingserver-method-decal-set-modulate)(decal: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [decal\_set\_normal\_fade](#class-renderingserver-method-decal-set-normal-fade)(decal: [RID](class_rid.md#class-rid), fade: [float](class_float.md#class-float)) |
| void | [decal\_set\_size](#class-renderingserver-method-decal-set-size)(decal: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) |
| void | [decal\_set\_texture](#class-renderingserver-method-decal-set-texture)(decal: [RID](class_rid.md#class-rid), type: [DecalTexture](#enum-renderingserver-decaltexture), texture: [RID](class_rid.md#class-rid)) |
| void | [decals\_set\_filter](#class-renderingserver-method-decals-set-filter)(filter: [DecalFilter](#enum-renderingserver-decalfilter)) |
| [RID](class_rid.md#class-rid) | [directional\_light\_create](#class-renderingserver-method-directional-light-create)() |
| void | [directional\_shadow\_atlas\_set\_size](#class-renderingserver-method-directional-shadow-atlas-set-size)(size: [int](class_int.md#class-int), is\_16bits: [bool](class_bool.md#class-bool)) |
| void | [directional\_soft\_shadow\_filter\_set\_quality](#class-renderingserver-method-directional-soft-shadow-filter-set-quality)(quality: [ShadowQuality](#enum-renderingserver-shadowquality)) |
| [Image](class_image.md#class-image) | [environment\_bake\_panorama](#class-renderingserver-method-environment-bake-panorama)(environment: [RID](class_rid.md#class-rid), bake\_irradiance: [bool](class_bool.md#class-bool), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| [RID](class_rid.md#class-rid) | [environment\_create](#class-renderingserver-method-environment-create)() |
| void | [environment\_glow\_set\_use\_bicubic\_upscale](#class-renderingserver-method-environment-glow-set-use-bicubic-upscale)(enable: [bool](class_bool.md#class-bool)) |
| void | [environment\_set\_adjustment](#class-renderingserver-method-environment-set-adjustment)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), brightness: [float](class_float.md#class-float), contrast: [float](class_float.md#class-float), saturation: [float](class_float.md#class-float), use\_1d\_color\_correction: [bool](class_bool.md#class-bool), color\_correction: [RID](class_rid.md#class-rid)) |
| void | [environment\_set\_ambient\_light](#class-renderingserver-method-environment-set-ambient-light)(env: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color), ambient: [EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) = 0, energy: [float](class_float.md#class-float) = 1.0, sky\_contribution: [float](class_float.md#class-float) = 0.0, reflection\_source: [EnvironmentReflectionSource](#enum-renderingserver-environmentreflectionsource) = 0) |
| void | [environment\_set\_background](#class-renderingserver-method-environment-set-background)(env: [RID](class_rid.md#class-rid), bg: [EnvironmentBG](#enum-renderingserver-environmentbg)) |
| void | [environment\_set\_bg\_color](#class-renderingserver-method-environment-set-bg-color)(env: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [environment\_set\_bg\_energy](#class-renderingserver-method-environment-set-bg-energy)(env: [RID](class_rid.md#class-rid), multiplier: [float](class_float.md#class-float), exposure\_value: [float](class_float.md#class-float)) |
| void | [environment\_set\_camera\_id](#class-renderingserver-method-environment-set-camera-id)(env: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [environment\_set\_canvas\_max\_layer](#class-renderingserver-method-environment-set-canvas-max-layer)(env: [RID](class_rid.md#class-rid), max\_layer: [int](class_int.md#class-int)) |
| void | [environment\_set\_fog](#class-renderingserver-method-environment-set-fog)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), light\_color: [Color](class_color.md#class-color), light\_energy: [float](class_float.md#class-float), sun\_scatter: [float](class_float.md#class-float), density: [float](class_float.md#class-float), height: [float](class_float.md#class-float), height\_density: [float](class_float.md#class-float), aerial\_perspective: [float](class_float.md#class-float), sky\_affect: [float](class_float.md#class-float), fog\_mode: [EnvironmentFogMode](#enum-renderingserver-environmentfogmode) = 0) |
| void | [environment\_set\_fog\_depth](#class-renderingserver-method-environment-set-fog-depth)(env: [RID](class_rid.md#class-rid), curve: [float](class_float.md#class-float), begin: [float](class_float.md#class-float), end: [float](class_float.md#class-float)) |
| void | [environment\_set\_glow](#class-renderingserver-method-environment-set-glow)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), levels: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), intensity: [float](class_float.md#class-float), strength: [float](class_float.md#class-float), mix: [float](class_float.md#class-float), bloom\_threshold: [float](class_float.md#class-float), blend\_mode: [EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode), hdr\_bleed\_threshold: [float](class_float.md#class-float), hdr\_bleed\_scale: [float](class_float.md#class-float), hdr\_luminance\_cap: [float](class_float.md#class-float), glow\_map\_strength: [float](class_float.md#class-float), glow\_map: [RID](class_rid.md#class-rid)) |
| void | [environment\_set\_sdfgi](#class-renderingserver-method-environment-set-sdfgi)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), cascades: [int](class_int.md#class-int), min\_cell\_size: [float](class_float.md#class-float), y\_scale: [EnvironmentSDFGIYScale](#enum-renderingserver-environmentsdfgiyscale), use\_occlusion: [bool](class_bool.md#class-bool), bounce\_feedback: [float](class_float.md#class-float), read\_sky: [bool](class_bool.md#class-bool), energy: [float](class_float.md#class-float), normal\_bias: [float](class_float.md#class-float), probe\_bias: [float](class_float.md#class-float)) |
| void | [environment\_set\_sdfgi\_frames\_to\_converge](#class-renderingserver-method-environment-set-sdfgi-frames-to-converge)(frames: [EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge)) |
| void | [environment\_set\_sdfgi\_frames\_to\_update\_light](#class-renderingserver-method-environment-set-sdfgi-frames-to-update-light)(frames: [EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight)) |
| void | [environment\_set\_sdfgi\_ray\_count](#class-renderingserver-method-environment-set-sdfgi-ray-count)(ray\_count: [EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount)) |
| void | [environment\_set\_sky](#class-renderingserver-method-environment-set-sky)(env: [RID](class_rid.md#class-rid), sky: [RID](class_rid.md#class-rid)) |
| void | [environment\_set\_sky\_custom\_fov](#class-renderingserver-method-environment-set-sky-custom-fov)(env: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) |
| void | [environment\_set\_sky\_orientation](#class-renderingserver-method-environment-set-sky-orientation)(env: [RID](class_rid.md#class-rid), orientation: [Basis](class_basis.md#class-basis)) |
| void | [environment\_set\_ssao](#class-renderingserver-method-environment-set-ssao)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), radius: [float](class_float.md#class-float), intensity: [float](class_float.md#class-float), power: [float](class_float.md#class-float), detail: [float](class_float.md#class-float), horizon: [float](class_float.md#class-float), sharpness: [float](class_float.md#class-float), light\_affect: [float](class_float.md#class-float), ao\_channel\_affect: [float](class_float.md#class-float)) |
| void | [environment\_set\_ssao\_quality](#class-renderingserver-method-environment-set-ssao-quality)(quality: [EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality), half\_size: [bool](class_bool.md#class-bool), adaptive\_target: [float](class_float.md#class-float), blur\_passes: [int](class_int.md#class-int), fadeout\_from: [float](class_float.md#class-float), fadeout\_to: [float](class_float.md#class-float)) |
| void | [environment\_set\_ssil\_quality](#class-renderingserver-method-environment-set-ssil-quality)(quality: [EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality), half\_size: [bool](class_bool.md#class-bool), adaptive\_target: [float](class_float.md#class-float), blur\_passes: [int](class_int.md#class-int), fadeout\_from: [float](class_float.md#class-float), fadeout\_to: [float](class_float.md#class-float)) |
| void | [environment\_set\_ssr](#class-renderingserver-method-environment-set-ssr)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), max\_steps: [int](class_int.md#class-int), fade\_in: [float](class_float.md#class-float), fade\_out: [float](class_float.md#class-float), depth\_tolerance: [float](class_float.md#class-float)) |
| void | [environment\_set\_ssr\_roughness\_quality](#class-renderingserver-method-environment-set-ssr-roughness-quality)(quality: [EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality)) |
| void | [environment\_set\_tonemap](#class-renderingserver-method-environment-set-tonemap)(env: [RID](class_rid.md#class-rid), tone\_mapper: [EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper), exposure: [float](class_float.md#class-float), white: [float](class_float.md#class-float)) |
| void | [environment\_set\_volumetric\_fog](#class-renderingserver-method-environment-set-volumetric-fog)(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), density: [float](class_float.md#class-float), albedo: [Color](class_color.md#class-color), emission: [Color](class_color.md#class-color), emission\_energy: [float](class_float.md#class-float), anisotropy: [float](class_float.md#class-float), length: [float](class_float.md#class-float), p\_detail\_spread: [float](class_float.md#class-float), gi\_inject: [float](class_float.md#class-float), temporal\_reprojection: [bool](class_bool.md#class-bool), temporal\_reprojection\_amount: [float](class_float.md#class-float), ambient\_inject: [float](class_float.md#class-float), sky\_affect: [float](class_float.md#class-float)) |
| void | [environment\_set\_volumetric\_fog\_filter\_active](#class-renderingserver-method-environment-set-volumetric-fog-filter-active)(active: [bool](class_bool.md#class-bool)) |
| void | [environment\_set\_volumetric\_fog\_volume\_size](#class-renderingserver-method-environment-set-volumetric-fog-volume-size)(size: [int](class_int.md#class-int), depth: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [fog\_volume\_create](#class-renderingserver-method-fog-volume-create)() |
| void | [fog\_volume\_set\_material](#class-renderingserver-method-fog-volume-set-material)(fog\_volume: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [fog\_volume\_set\_shape](#class-renderingserver-method-fog-volume-set-shape)(fog\_volume: [RID](class_rid.md#class-rid), shape: [FogVolumeShape](#enum-renderingserver-fogvolumeshape)) |
| void | [fog\_volume\_set\_size](#class-renderingserver-method-fog-volume-set-size)(fog\_volume: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) |
| void | [force\_draw](#class-renderingserver-method-force-draw)(swap\_buffers: [bool](class_bool.md#class-bool) = true, frame\_step: [float](class_float.md#class-float) = 0.0) |
| void | [force\_sync](#class-renderingserver-method-force-sync)() |
| void | [free\_rid](#class-renderingserver-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| [String](class_string.md#class-string) | [get\_current\_rendering\_driver\_name](#class-renderingserver-method-get-current-rendering-driver-name)() const |
| [String](class_string.md#class-string) | [get\_current\_rendering\_method](#class-renderingserver-method-get-current-rendering-method)() const |
| [Color](class_color.md#class-color) | [get\_default\_clear\_color](#class-renderingserver-method-get-default-clear-color)() |
| [float](class_float.md#class-float) | [get\_frame\_setup\_time\_cpu](#class-renderingserver-method-get-frame-setup-time-cpu)() const |
| [RenderingDevice](class_renderingdevice.md#class-renderingdevice) | [get\_rendering\_device](#class-renderingserver-method-get-rendering-device)() const |
| [int](class_int.md#class-int) | [get\_rendering\_info](#class-renderingserver-method-get-rendering-info)(info: [RenderingInfo](#enum-renderingserver-renderinginfo)) |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_shader\_parameter\_list](#class-renderingserver-method-get-shader-parameter-list)(shader: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [get\_test\_cube](#class-renderingserver-method-get-test-cube)() |
| [RID](class_rid.md#class-rid) | [get\_test\_texture](#class-renderingserver-method-get-test-texture)() |
| [String](class_string.md#class-string) | [get\_video\_adapter\_api\_version](#class-renderingserver-method-get-video-adapter-api-version)() const |
| [String](class_string.md#class-string) | [get\_video\_adapter\_name](#class-renderingserver-method-get-video-adapter-name)() const |
| [DeviceType](class_renderingdevice.md#enum-renderingdevice-devicetype) | [get\_video\_adapter\_type](#class-renderingserver-method-get-video-adapter-type)() const |
| [String](class_string.md#class-string) | [get\_video\_adapter\_vendor](#class-renderingserver-method-get-video-adapter-vendor)() const |
| [RID](class_rid.md#class-rid) | [get\_white\_texture](#class-renderingserver-method-get-white-texture)() |
| void | [gi\_set\_use\_half\_resolution](#class-renderingserver-method-gi-set-use-half-resolution)(half\_resolution: [bool](class_bool.md#class-bool)) |
| void | [global\_shader\_parameter\_add](#class-renderingserver-method-global-shader-parameter-add)(name: [StringName](class_stringname.md#class-stringname), type: [GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype), default\_value: [Variant](class_variant.md#class-variant)) |
| [Variant](class_variant.md#class-variant) | [global\_shader\_parameter\_get](#class-renderingserver-method-global-shader-parameter-get)(name: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [global\_shader\_parameter\_get\_list](#class-renderingserver-method-global-shader-parameter-get-list)() const |
| [GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) | [global\_shader\_parameter\_get\_type](#class-renderingserver-method-global-shader-parameter-get-type)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [global\_shader\_parameter\_remove](#class-renderingserver-method-global-shader-parameter-remove)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [global\_shader\_parameter\_set](#class-renderingserver-method-global-shader-parameter-set)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [global\_shader\_parameter\_set\_override](#class-renderingserver-method-global-shader-parameter-set-override)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| [bool](class_bool.md#class-bool) | [has\_changed](#class-renderingserver-method-has-changed)() const |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-renderingserver-method-has-feature)(feature: [Features](#enum-renderingserver-features)) const |
| [bool](class_bool.md#class-bool) | [has\_os\_feature](#class-renderingserver-method-has-os-feature)(feature: [String](class_string.md#class-string)) const |
| void | [instance\_attach\_object\_instance\_id](#class-renderingserver-method-instance-attach-object-instance-id)(instance: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [instance\_attach\_skeleton](#class-renderingserver-method-instance-attach-skeleton)(instance: [RID](class_rid.md#class-rid), skeleton: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [instance\_create](#class-renderingserver-method-instance-create)() |
| [RID](class_rid.md#class-rid) | [instance\_create2](#class-renderingserver-method-instance-create2)(base: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) |
| [Variant](class_variant.md#class-variant) | [instance\_geometry\_get\_shader\_parameter](#class-renderingserver-method-instance-geometry-get-shader-parameter)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const |
| [Variant](class_variant.md#class-variant) | [instance\_geometry\_get\_shader\_parameter\_default\_value](#class-renderingserver-method-instance-geometry-get-shader-parameter-default-value)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [instance\_geometry\_get\_shader\_parameter\_list](#class-renderingserver-method-instance-geometry-get-shader-parameter-list)(instance: [RID](class_rid.md#class-rid)) const |
| void | [instance\_geometry\_set\_cast\_shadows\_setting](#class-renderingserver-method-instance-geometry-set-cast-shadows-setting)(instance: [RID](class_rid.md#class-rid), shadow\_casting\_setting: [ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting)) |
| void | [instance\_geometry\_set\_flag](#class-renderingserver-method-instance-geometry-set-flag)(instance: [RID](class_rid.md#class-rid), flag: [InstanceFlags](#enum-renderingserver-instanceflags), enabled: [bool](class_bool.md#class-bool)) |
| void | [instance\_geometry\_set\_lightmap](#class-renderingserver-method-instance-geometry-set-lightmap)(instance: [RID](class_rid.md#class-rid), lightmap: [RID](class_rid.md#class-rid), lightmap\_uv\_scale: [Rect2](class_rect2.md#class-rect2), lightmap\_slice: [int](class_int.md#class-int)) |
| void | [instance\_geometry\_set\_lod\_bias](#class-renderingserver-method-instance-geometry-set-lod-bias)(instance: [RID](class_rid.md#class-rid), lod\_bias: [float](class_float.md#class-float)) |
| void | [instance\_geometry\_set\_material\_overlay](#class-renderingserver-method-instance-geometry-set-material-overlay)(instance: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [instance\_geometry\_set\_material\_override](#class-renderingserver-method-instance-geometry-set-material-override)(instance: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [instance\_geometry\_set\_shader\_parameter](#class-renderingserver-method-instance-geometry-set-shader-parameter)(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [instance\_geometry\_set\_transparency](#class-renderingserver-method-instance-geometry-set-transparency)(instance: [RID](class_rid.md#class-rid), transparency: [float](class_float.md#class-float)) |
| void | [instance\_geometry\_set\_visibility\_range](#class-renderingserver-method-instance-geometry-set-visibility-range)(instance: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), min\_margin: [float](class_float.md#class-float), max\_margin: [float](class_float.md#class-float), fade\_mode: [VisibilityRangeFadeMode](#enum-renderingserver-visibilityrangefademode)) |
| void | [instance\_set\_base](#class-renderingserver-method-instance-set-base)(instance: [RID](class_rid.md#class-rid), base: [RID](class_rid.md#class-rid)) |
| void | [instance\_set\_blend\_shape\_weight](#class-renderingserver-method-instance-set-blend-shape-weight)(instance: [RID](class_rid.md#class-rid), shape: [int](class_int.md#class-int), weight: [float](class_float.md#class-float)) |
| void | [instance\_set\_custom\_aabb](#class-renderingserver-method-instance-set-custom-aabb)(instance: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [instance\_set\_extra\_visibility\_margin](#class-renderingserver-method-instance-set-extra-visibility-margin)(instance: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) |
| void | [instance\_set\_ignore\_culling](#class-renderingserver-method-instance-set-ignore-culling)(instance: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [instance\_set\_layer\_mask](#class-renderingserver-method-instance-set-layer-mask)(instance: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [instance\_set\_pivot\_data](#class-renderingserver-method-instance-set-pivot-data)(instance: [RID](class_rid.md#class-rid), sorting\_offset: [float](class_float.md#class-float), use\_aabb\_center: [bool](class_bool.md#class-bool)) |
| void | [instance\_set\_scenario](#class-renderingserver-method-instance-set-scenario)(instance: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) |
| void | [instance\_set\_surface\_override\_material](#class-renderingserver-method-instance-set-surface-override-material)(instance: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), material: [RID](class_rid.md#class-rid)) |
| void | [instance\_set\_transform](#class-renderingserver-method-instance-set-transform)(instance: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [instance\_set\_visibility\_parent](#class-renderingserver-method-instance-set-visibility-parent)(instance: [RID](class_rid.md#class-rid), parent: [RID](class_rid.md#class-rid)) |
| void | [instance\_set\_visible](#class-renderingserver-method-instance-set-visible)(instance: [RID](class_rid.md#class-rid), visible: [bool](class_bool.md#class-bool)) |
| void | [instance\_teleport](#class-renderingserver-method-instance-teleport)(instance: [RID](class_rid.md#class-rid)) |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [instances\_cull\_aabb](#class-renderingserver-method-instances-cull-aabb)(aabb: [AABB](class_aabb.md#class-aabb), scenario: [RID](class_rid.md#class-rid) = RID()) const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [instances\_cull\_convex](#class-renderingserver-method-instances-cull-convex)(convex: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\], scenario: [RID](class_rid.md#class-rid) = RID()) const |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [instances\_cull\_ray](#class-renderingserver-method-instances-cull-ray)(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), scenario: [RID](class_rid.md#class-rid) = RID()) const |
| [bool](class_bool.md#class-bool) | [is\_on\_render\_thread](#class-renderingserver-method-is-on-render-thread)() |
| void | [light\_directional\_set\_blend\_splits](#class-renderingserver-method-light-directional-set-blend-splits)(light: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [light\_directional\_set\_shadow\_mode](#class-renderingserver-method-light-directional-set-shadow-mode)(light: [RID](class_rid.md#class-rid), mode: [LightDirectionalShadowMode](#enum-renderingserver-lightdirectionalshadowmode)) |
| void | [light\_directional\_set\_sky\_mode](#class-renderingserver-method-light-directional-set-sky-mode)(light: [RID](class_rid.md#class-rid), mode: [LightDirectionalSkyMode](#enum-renderingserver-lightdirectionalskymode)) |
| void | [light\_omni\_set\_shadow\_mode](#class-renderingserver-method-light-omni-set-shadow-mode)(light: [RID](class_rid.md#class-rid), mode: [LightOmniShadowMode](#enum-renderingserver-lightomnishadowmode)) |
| void | [light\_projectors\_set\_filter](#class-renderingserver-method-light-projectors-set-filter)(filter: [LightProjectorFilter](#enum-renderingserver-lightprojectorfilter)) |
| void | [light\_set\_bake\_mode](#class-renderingserver-method-light-set-bake-mode)(light: [RID](class_rid.md#class-rid), bake\_mode: [LightBakeMode](#enum-renderingserver-lightbakemode)) |
| void | [light\_set\_color](#class-renderingserver-method-light-set-color)(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [light\_set\_cull\_mask](#class-renderingserver-method-light-set-cull-mask)(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [light\_set\_distance\_fade](#class-renderingserver-method-light-set-distance-fade)(decal: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), begin: [float](class_float.md#class-float), shadow: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) |
| void | [light\_set\_max\_sdfgi\_cascade](#class-renderingserver-method-light-set-max-sdfgi-cascade)(light: [RID](class_rid.md#class-rid), cascade: [int](class_int.md#class-int)) |
| void | [light\_set\_negative](#class-renderingserver-method-light-set-negative)(light: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [light\_set\_param](#class-renderingserver-method-light-set-param)(light: [RID](class_rid.md#class-rid), param: [LightParam](#enum-renderingserver-lightparam), value: [float](class_float.md#class-float)) |
| void | [light\_set\_projector](#class-renderingserver-method-light-set-projector)(light: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) |
| void | [light\_set\_reverse\_cull\_face\_mode](#class-renderingserver-method-light-set-reverse-cull-face-mode)(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [light\_set\_shadow](#class-renderingserver-method-light-set-shadow)(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [light\_set\_shadow\_caster\_mask](#class-renderingserver-method-light-set-shadow-caster-mask)(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [lightmap\_create](#class-renderingserver-method-lightmap-create)() |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [lightmap\_get\_probe\_capture\_bsp\_tree](#class-renderingserver-method-lightmap-get-probe-capture-bsp-tree)(lightmap: [RID](class_rid.md#class-rid)) const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [lightmap\_get\_probe\_capture\_points](#class-renderingserver-method-lightmap-get-probe-capture-points)(lightmap: [RID](class_rid.md#class-rid)) const |
| [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) | [lightmap\_get\_probe\_capture\_sh](#class-renderingserver-method-lightmap-get-probe-capture-sh)(lightmap: [RID](class_rid.md#class-rid)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [lightmap\_get\_probe\_capture\_tetrahedra](#class-renderingserver-method-lightmap-get-probe-capture-tetrahedra)(lightmap: [RID](class_rid.md#class-rid)) const |
| void | [lightmap\_set\_baked\_exposure\_normalization](#class-renderingserver-method-lightmap-set-baked-exposure-normalization)(lightmap: [RID](class_rid.md#class-rid), baked\_exposure: [float](class_float.md#class-float)) |
| void | [lightmap\_set\_probe\_bounds](#class-renderingserver-method-lightmap-set-probe-bounds)(lightmap: [RID](class_rid.md#class-rid), bounds: [AABB](class_aabb.md#class-aabb)) |
| void | [lightmap\_set\_probe\_capture\_data](#class-renderingserver-method-lightmap-set-probe-capture-data)(lightmap: [RID](class_rid.md#class-rid), points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), point\_sh: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), tetrahedra: [PackedInt32Array](class_packedint32array.md#class-packedint32array), bsp\_tree: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| void | [lightmap\_set\_probe\_capture\_update\_speed](#class-renderingserver-method-lightmap-set-probe-capture-update-speed)(speed: [float](class_float.md#class-float)) |
| void | [lightmap\_set\_probe\_interior](#class-renderingserver-method-lightmap-set-probe-interior)(lightmap: [RID](class_rid.md#class-rid), interior: [bool](class_bool.md#class-bool)) |
| void | [lightmap\_set\_textures](#class-renderingserver-method-lightmap-set-textures)(lightmap: [RID](class_rid.md#class-rid), light: [RID](class_rid.md#class-rid), uses\_sh: [bool](class_bool.md#class-bool)) |
| void | [lightmaps\_set\_bicubic\_filter](#class-renderingserver-method-lightmaps-set-bicubic-filter)(enable: [bool](class_bool.md#class-bool)) |
| [RID](class_rid.md#class-rid) | [make\_sphere\_mesh](#class-renderingserver-method-make-sphere-mesh)(latitudes: [int](class_int.md#class-int), longitudes: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [material\_create](#class-renderingserver-method-material-create)() |
| [Variant](class_variant.md#class-variant) | [material\_get\_param](#class-renderingserver-method-material-get-param)(material: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const |
| void | [material\_set\_next\_pass](#class-renderingserver-method-material-set-next-pass)(material: [RID](class_rid.md#class-rid), next\_material: [RID](class_rid.md#class-rid)) |
| void | [material\_set\_param](#class-renderingserver-method-material-set-param)(material: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |
| void | [material\_set\_render\_priority](#class-renderingserver-method-material-set-render-priority)(material: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) |
| void | [material\_set\_shader](#class-renderingserver-method-material-set-shader)(shader\_material: [RID](class_rid.md#class-rid), shader: [RID](class_rid.md#class-rid)) |
| void | [mesh\_add\_surface](#class-renderingserver-method-mesh-add-surface)(mesh: [RID](class_rid.md#class-rid), surface: [Dictionary](class_dictionary.md#class-dictionary)) |
| void | [mesh\_add\_surface\_from\_arrays](#class-renderingserver-method-mesh-add-surface-from-arrays)(mesh: [RID](class_rid.md#class-rid), primitive: [PrimitiveType](#enum-renderingserver-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array) = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, compress\_format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\] = 0) |
| void | [mesh\_clear](#class-renderingserver-method-mesh-clear)(mesh: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [mesh\_create](#class-renderingserver-method-mesh-create)() |
| [RID](class_rid.md#class-rid) | [mesh\_create\_from\_surfaces](#class-renderingserver-method-mesh-create-from-surfaces)(surfaces: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\], blend\_shape\_count: [int](class_int.md#class-int) = 0) |
| [int](class_int.md#class-int) | [mesh\_get\_blend\_shape\_count](#class-renderingserver-method-mesh-get-blend-shape-count)(mesh: [RID](class_rid.md#class-rid)) const |
| [BlendShapeMode](#enum-renderingserver-blendshapemode) | [mesh\_get\_blend\_shape\_mode](#class-renderingserver-method-mesh-get-blend-shape-mode)(mesh: [RID](class_rid.md#class-rid)) const |
| [AABB](class_aabb.md#class-aabb) | [mesh\_get\_custom\_aabb](#class-renderingserver-method-mesh-get-custom-aabb)(mesh: [RID](class_rid.md#class-rid)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [mesh\_get\_surface](#class-renderingserver-method-mesh-get-surface)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [mesh\_get\_surface\_count](#class-renderingserver-method-mesh-get-surface-count)(mesh: [RID](class_rid.md#class-rid)) const |
| void | [mesh\_set\_blend\_shape\_mode](#class-renderingserver-method-mesh-set-blend-shape-mode)(mesh: [RID](class_rid.md#class-rid), mode: [BlendShapeMode](#enum-renderingserver-blendshapemode)) |
| void | [mesh\_set\_custom\_aabb](#class-renderingserver-method-mesh-set-custom-aabb)(mesh: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [mesh\_set\_shadow\_mesh](#class-renderingserver-method-mesh-set-shadow-mesh)(mesh: [RID](class_rid.md#class-rid), shadow\_mesh: [RID](class_rid.md#class-rid)) |
| [Array](class_array.md#class-array) | [mesh\_surface\_get\_arrays](#class-renderingserver-method-mesh-surface-get-arrays)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] | [mesh\_surface\_get\_blend\_shape\_arrays](#class-renderingserver-method-mesh-surface-get-blend-shape-arrays)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_attribute\_stride](#class-renderingserver-method-mesh-surface-get-format-attribute-stride)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_index\_stride](#class-renderingserver-method-mesh-surface-get-format-index-stride)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_normal\_tangent\_stride](#class-renderingserver-method-mesh-surface-get-format-normal-tangent-stride)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_offset](#class-renderingserver-method-mesh-surface-get-format-offset)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int), array\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_skin\_stride](#class-renderingserver-method-mesh-surface-get-format-skin-stride)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [mesh\_surface\_get\_format\_vertex\_stride](#class-renderingserver-method-mesh-surface-get-format-vertex-stride)(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [mesh\_surface\_get\_material](#class-renderingserver-method-mesh-surface-get-material)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const |
| void | [mesh\_surface\_remove](#class-renderingserver-method-mesh-surface-remove)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) |
| void | [mesh\_surface\_set\_material](#class-renderingserver-method-mesh-surface-set-material)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), material: [RID](class_rid.md#class-rid)) |
| void | [mesh\_surface\_update\_attribute\_region](#class-renderingserver-method-mesh-surface-update-attribute-region)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [mesh\_surface\_update\_index\_region](#class-renderingserver-method-mesh-surface-update-index-region)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [mesh\_surface\_update\_skin\_region](#class-renderingserver-method-mesh-surface-update-skin-region)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [mesh\_surface\_update\_vertex\_region](#class-renderingserver-method-mesh-surface-update-vertex-region)(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [multimesh\_allocate\_data](#class-renderingserver-method-multimesh-allocate-data)(multimesh: [RID](class_rid.md#class-rid), instances: [int](class_int.md#class-int), transform\_format: [MultimeshTransformFormat](#enum-renderingserver-multimeshtransformformat), color\_format: [bool](class_bool.md#class-bool) = false, custom\_data\_format: [bool](class_bool.md#class-bool) = false, use\_indirect: [bool](class_bool.md#class-bool) = false) |
| [RID](class_rid.md#class-rid) | [multimesh\_create](#class-renderingserver-method-multimesh-create)() |
| [AABB](class_aabb.md#class-aabb) | [multimesh\_get\_aabb](#class-renderingserver-method-multimesh-get-aabb)(multimesh: [RID](class_rid.md#class-rid)) const |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [multimesh\_get\_buffer](#class-renderingserver-method-multimesh-get-buffer)(multimesh: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [multimesh\_get\_buffer\_rd\_rid](#class-renderingserver-method-multimesh-get-buffer-rd-rid)(multimesh: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [multimesh\_get\_command\_buffer\_rd\_rid](#class-renderingserver-method-multimesh-get-command-buffer-rd-rid)(multimesh: [RID](class_rid.md#class-rid)) const |
| [AABB](class_aabb.md#class-aabb) | [multimesh\_get\_custom\_aabb](#class-renderingserver-method-multimesh-get-custom-aabb)(multimesh: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [multimesh\_get\_instance\_count](#class-renderingserver-method-multimesh-get-instance-count)(multimesh: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [multimesh\_get\_mesh](#class-renderingserver-method-multimesh-get-mesh)(multimesh: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [multimesh\_get\_visible\_instances](#class-renderingserver-method-multimesh-get-visible-instances)(multimesh: [RID](class_rid.md#class-rid)) const |
| [Color](class_color.md#class-color) | [multimesh\_instance\_get\_color](#class-renderingserver-method-multimesh-instance-get-color)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [multimesh\_instance\_get\_custom\_data](#class-renderingserver-method-multimesh-instance-get-custom-data)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [multimesh\_instance\_get\_transform](#class-renderingserver-method-multimesh-instance-get-transform)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [multimesh\_instance\_get\_transform\_2d](#class-renderingserver-method-multimesh-instance-get-transform-2d)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| void | [multimesh\_instance\_reset\_physics\_interpolation](#class-renderingserver-method-multimesh-instance-reset-physics-interpolation)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| void | [multimesh\_instance\_set\_color](#class-renderingserver-method-multimesh-instance-set-color)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [multimesh\_instance\_set\_custom\_data](#class-renderingserver-method-multimesh-instance-set-custom-data)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), custom\_data: [Color](class_color.md#class-color)) |
| void | [multimesh\_instance\_set\_transform](#class-renderingserver-method-multimesh-instance-set-transform)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [multimesh\_instance\_set\_transform\_2d](#class-renderingserver-method-multimesh-instance-set-transform-2d)(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [multimesh\_set\_buffer](#class-renderingserver-method-multimesh-set-buffer)(multimesh: [RID](class_rid.md#class-rid), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| void | [multimesh\_set\_buffer\_interpolated](#class-renderingserver-method-multimesh-set-buffer-interpolated)(multimesh: [RID](class_rid.md#class-rid), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), buffer\_previous: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) |
| void | [multimesh\_set\_custom\_aabb](#class-renderingserver-method-multimesh-set-custom-aabb)(multimesh: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [multimesh\_set\_mesh](#class-renderingserver-method-multimesh-set-mesh)(multimesh: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) |
| void | [multimesh\_set\_physics\_interpolated](#class-renderingserver-method-multimesh-set-physics-interpolated)(multimesh: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) |
| void | [multimesh\_set\_physics\_interpolation\_quality](#class-renderingserver-method-multimesh-set-physics-interpolation-quality)(multimesh: [RID](class_rid.md#class-rid), quality: [MultimeshPhysicsInterpolationQuality](#enum-renderingserver-multimeshphysicsinterpolationquality)) |
| void | [multimesh\_set\_visible\_instances](#class-renderingserver-method-multimesh-set-visible-instances)(multimesh: [RID](class_rid.md#class-rid), visible: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [occluder\_create](#class-renderingserver-method-occluder-create)() |
| void | [occluder\_set\_mesh](#class-renderingserver-method-occluder-set-mesh)(occluder: [RID](class_rid.md#class-rid), vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| [RID](class_rid.md#class-rid) | [omni\_light\_create](#class-renderingserver-method-omni-light-create)() |
| [RID](class_rid.md#class-rid) | [particles\_collision\_create](#class-renderingserver-method-particles-collision-create)() |
| void | [particles\_collision\_height\_field\_update](#class-renderingserver-method-particles-collision-height-field-update)(particles\_collision: [RID](class_rid.md#class-rid)) |
| void | [particles\_collision\_set\_attractor\_attenuation](#class-renderingserver-method-particles-collision-set-attractor-attenuation)(particles\_collision: [RID](class_rid.md#class-rid), curve: [float](class_float.md#class-float)) |
| void | [particles\_collision\_set\_attractor\_directionality](#class-renderingserver-method-particles-collision-set-attractor-directionality)(particles\_collision: [RID](class_rid.md#class-rid), amount: [float](class_float.md#class-float)) |
| void | [particles\_collision\_set\_attractor\_strength](#class-renderingserver-method-particles-collision-set-attractor-strength)(particles\_collision: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) |
| void | [particles\_collision\_set\_box\_extents](#class-renderingserver-method-particles-collision-set-box-extents)(particles\_collision: [RID](class_rid.md#class-rid), extents: [Vector3](class_vector3.md#class-vector3)) |
| void | [particles\_collision\_set\_collision\_type](#class-renderingserver-method-particles-collision-set-collision-type)(particles\_collision: [RID](class_rid.md#class-rid), type: [ParticlesCollisionType](#enum-renderingserver-particlescollisiontype)) |
| void | [particles\_collision\_set\_cull\_mask](#class-renderingserver-method-particles-collision-set-cull-mask)(particles\_collision: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [particles\_collision\_set\_field\_texture](#class-renderingserver-method-particles-collision-set-field-texture)(particles\_collision: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) |
| void | [particles\_collision\_set\_height\_field\_mask](#class-renderingserver-method-particles-collision-set-height-field-mask)(particles\_collision: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [particles\_collision\_set\_height\_field\_resolution](#class-renderingserver-method-particles-collision-set-height-field-resolution)(particles\_collision: [RID](class_rid.md#class-rid), resolution: [ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution)) |
| void | [particles\_collision\_set\_sphere\_radius](#class-renderingserver-method-particles-collision-set-sphere-radius)(particles\_collision: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [particles\_create](#class-renderingserver-method-particles-create)() |
| void | [particles\_emit](#class-renderingserver-method-particles-emit)(particles: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), velocity: [Vector3](class_vector3.md#class-vector3), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), emit\_flags: [int](class_int.md#class-int)) |
| [AABB](class_aabb.md#class-aabb) | [particles\_get\_current\_aabb](#class-renderingserver-method-particles-get-current-aabb)(particles: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [particles\_get\_emitting](#class-renderingserver-method-particles-get-emitting)(particles: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [particles\_is\_inactive](#class-renderingserver-method-particles-is-inactive)(particles: [RID](class_rid.md#class-rid)) |
| void | [particles\_request\_process](#class-renderingserver-method-particles-request-process)(particles: [RID](class_rid.md#class-rid)) |
| void | [particles\_request\_process\_time](#class-renderingserver-method-particles-request-process-time)(particles: [RID](class_rid.md#class-rid), time: [float](class_float.md#class-float)) |
| void | [particles\_restart](#class-renderingserver-method-particles-restart)(particles: [RID](class_rid.md#class-rid)) |
| void | [particles\_set\_amount](#class-renderingserver-method-particles-set-amount)(particles: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) |
| void | [particles\_set\_amount\_ratio](#class-renderingserver-method-particles-set-amount-ratio)(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) |
| void | [particles\_set\_collision\_base\_size](#class-renderingserver-method-particles-set-collision-base-size)(particles: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float)) |
| void | [particles\_set\_custom\_aabb](#class-renderingserver-method-particles-set-custom-aabb)(particles: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [particles\_set\_draw\_order](#class-renderingserver-method-particles-set-draw-order)(particles: [RID](class_rid.md#class-rid), order: [ParticlesDrawOrder](#enum-renderingserver-particlesdraworder)) |
| void | [particles\_set\_draw\_pass\_mesh](#class-renderingserver-method-particles-set-draw-pass-mesh)(particles: [RID](class_rid.md#class-rid), pass: [int](class_int.md#class-int), mesh: [RID](class_rid.md#class-rid)) |
| void | [particles\_set\_draw\_passes](#class-renderingserver-method-particles-set-draw-passes)(particles: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) |
| void | [particles\_set\_emission\_transform](#class-renderingserver-method-particles-set-emission-transform)(particles: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [particles\_set\_emitter\_velocity](#class-renderingserver-method-particles-set-emitter-velocity)(particles: [RID](class_rid.md#class-rid), velocity: [Vector3](class_vector3.md#class-vector3)) |
| void | [particles\_set\_emitting](#class-renderingserver-method-particles-set-emitting)(particles: [RID](class_rid.md#class-rid), emitting: [bool](class_bool.md#class-bool)) |
| void | [particles\_set\_explosiveness\_ratio](#class-renderingserver-method-particles-set-explosiveness-ratio)(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) |
| void | [particles\_set\_fixed\_fps](#class-renderingserver-method-particles-set-fixed-fps)(particles: [RID](class_rid.md#class-rid), fps: [int](class_int.md#class-int)) |
| void | [particles\_set\_fractional\_delta](#class-renderingserver-method-particles-set-fractional-delta)(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [particles\_set\_interp\_to\_end](#class-renderingserver-method-particles-set-interp-to-end)(particles: [RID](class_rid.md#class-rid), factor: [float](class_float.md#class-float)) |
| void | [particles\_set\_interpolate](#class-renderingserver-method-particles-set-interpolate)(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [particles\_set\_lifetime](#class-renderingserver-method-particles-set-lifetime)(particles: [RID](class_rid.md#class-rid), lifetime: [float](class_float.md#class-float)) |
| void | [particles\_set\_mode](#class-renderingserver-method-particles-set-mode)(particles: [RID](class_rid.md#class-rid), mode: [ParticlesMode](#enum-renderingserver-particlesmode)) |
| void | [particles\_set\_one\_shot](#class-renderingserver-method-particles-set-one-shot)(particles: [RID](class_rid.md#class-rid), one\_shot: [bool](class_bool.md#class-bool)) |
| void | [particles\_set\_pre\_process\_time](#class-renderingserver-method-particles-set-pre-process-time)(particles: [RID](class_rid.md#class-rid), time: [float](class_float.md#class-float)) |
| void | [particles\_set\_process\_material](#class-renderingserver-method-particles-set-process-material)(particles: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [particles\_set\_randomness\_ratio](#class-renderingserver-method-particles-set-randomness-ratio)(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) |
| void | [particles\_set\_speed\_scale](#class-renderingserver-method-particles-set-speed-scale)(particles: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) |
| void | [particles\_set\_subemitter](#class-renderingserver-method-particles-set-subemitter)(particles: [RID](class_rid.md#class-rid), subemitter\_particles: [RID](class_rid.md#class-rid)) |
| void | [particles\_set\_trail\_bind\_poses](#class-renderingserver-method-particles-set-trail-bind-poses)(particles: [RID](class_rid.md#class-rid), bind\_poses: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\]) |
| void | [particles\_set\_trails](#class-renderingserver-method-particles-set-trails)(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), length\_sec: [float](class_float.md#class-float)) |
| void | [particles\_set\_transform\_align](#class-renderingserver-method-particles-set-transform-align)(particles: [RID](class_rid.md#class-rid), align: [ParticlesTransformAlign](#enum-renderingserver-particlestransformalign)) |
| void | [particles\_set\_use\_local\_coordinates](#class-renderingserver-method-particles-set-use-local-coordinates)(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [positional\_soft\_shadow\_filter\_set\_quality](#class-renderingserver-method-positional-soft-shadow-filter-set-quality)(quality: [ShadowQuality](#enum-renderingserver-shadowquality)) |
| [RID](class_rid.md#class-rid) | [reflection\_probe\_create](#class-renderingserver-method-reflection-probe-create)() |
| void | [reflection\_probe\_set\_ambient\_color](#class-renderingserver-method-reflection-probe-set-ambient-color)(probe: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) |
| void | [reflection\_probe\_set\_ambient\_energy](#class-renderingserver-method-reflection-probe-set-ambient-energy)(probe: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) |
| void | [reflection\_probe\_set\_ambient\_mode](#class-renderingserver-method-reflection-probe-set-ambient-mode)(probe: [RID](class_rid.md#class-rid), mode: [ReflectionProbeAmbientMode](#enum-renderingserver-reflectionprobeambientmode)) |
| void | [reflection\_probe\_set\_as\_interior](#class-renderingserver-method-reflection-probe-set-as-interior)(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [reflection\_probe\_set\_blend\_distance](#class-renderingserver-method-reflection-probe-set-blend-distance)(probe: [RID](class_rid.md#class-rid), blend\_distance: [float](class_float.md#class-float)) |
| void | [reflection\_probe\_set\_cull\_mask](#class-renderingserver-method-reflection-probe-set-cull-mask)(probe: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) |
| void | [reflection\_probe\_set\_enable\_box\_projection](#class-renderingserver-method-reflection-probe-set-enable-box-projection)(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [reflection\_probe\_set\_enable\_shadows](#class-renderingserver-method-reflection-probe-set-enable-shadows)(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [reflection\_probe\_set\_intensity](#class-renderingserver-method-reflection-probe-set-intensity)(probe: [RID](class_rid.md#class-rid), intensity: [float](class_float.md#class-float)) |
| void | [reflection\_probe\_set\_max\_distance](#class-renderingserver-method-reflection-probe-set-max-distance)(probe: [RID](class_rid.md#class-rid), distance: [float](class_float.md#class-float)) |
| void | [reflection\_probe\_set\_mesh\_lod\_threshold](#class-renderingserver-method-reflection-probe-set-mesh-lod-threshold)(probe: [RID](class_rid.md#class-rid), pixels: [float](class_float.md#class-float)) |
| void | [reflection\_probe\_set\_origin\_offset](#class-renderingserver-method-reflection-probe-set-origin-offset)(probe: [RID](class_rid.md#class-rid), offset: [Vector3](class_vector3.md#class-vector3)) |
| void | [reflection\_probe\_set\_reflection\_mask](#class-renderingserver-method-reflection-probe-set-reflection-mask)(probe: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) |
| void | [reflection\_probe\_set\_resolution](#class-renderingserver-method-reflection-probe-set-resolution)(probe: [RID](class_rid.md#class-rid), resolution: [int](class_int.md#class-int)) |
| void | [reflection\_probe\_set\_size](#class-renderingserver-method-reflection-probe-set-size)(probe: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) |
| void | [reflection\_probe\_set\_update\_mode](#class-renderingserver-method-reflection-probe-set-update-mode)(probe: [RID](class_rid.md#class-rid), mode: [ReflectionProbeUpdateMode](#enum-renderingserver-reflectionprobeupdatemode)) |
| void | [request\_frame\_drawn\_callback](#class-renderingserver-method-request-frame-drawn-callback)(callable: [Callable](class_callable.md#class-callable)) |
| [RID](class_rid.md#class-rid) | [scenario\_create](#class-renderingserver-method-scenario-create)() |
| void | [scenario\_set\_camera\_attributes](#class-renderingserver-method-scenario-set-camera-attributes)(scenario: [RID](class_rid.md#class-rid), effects: [RID](class_rid.md#class-rid)) |
| void | [scenario\_set\_compositor](#class-renderingserver-method-scenario-set-compositor)(scenario: [RID](class_rid.md#class-rid), compositor: [RID](class_rid.md#class-rid)) |
| void | [scenario\_set\_environment](#class-renderingserver-method-scenario-set-environment)(scenario: [RID](class_rid.md#class-rid), environment: [RID](class_rid.md#class-rid)) |
| void | [scenario\_set\_fallback\_environment](#class-renderingserver-method-scenario-set-fallback-environment)(scenario: [RID](class_rid.md#class-rid), environment: [RID](class_rid.md#class-rid)) |
| void | [screen\_space\_roughness\_limiter\_set\_active](#class-renderingserver-method-screen-space-roughness-limiter-set-active)(enable: [bool](class_bool.md#class-bool), amount: [float](class_float.md#class-float), limit: [float](class_float.md#class-float)) |
| void | [set\_boot\_image](#class-renderingserver-method-set-boot-image)(image: [Image](class_image.md#class-image), color: [Color](class_color.md#class-color), scale: [bool](class_bool.md#class-bool), use\_filter: [bool](class_bool.md#class-bool) = true) |
| void | [set\_debug\_generate\_wireframes](#class-renderingserver-method-set-debug-generate-wireframes)(generate: [bool](class_bool.md#class-bool)) |
| void | [set\_default\_clear\_color](#class-renderingserver-method-set-default-clear-color)(color: [Color](class_color.md#class-color)) |
| [RID](class_rid.md#class-rid) | [shader\_create](#class-renderingserver-method-shader-create)() |
| [String](class_string.md#class-string) | [shader\_get\_code](#class-renderingserver-method-shader-get-code)(shader: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [shader\_get\_default\_texture\_parameter](#class-renderingserver-method-shader-get-default-texture-parameter)(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname), index: [int](class_int.md#class-int) = 0) const |
| [Variant](class_variant.md#class-variant) | [shader\_get\_parameter\_default](#class-renderingserver-method-shader-get-parameter-default)(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname)) const |
| void | [shader\_set\_code](#class-renderingserver-method-shader-set-code)(shader: [RID](class_rid.md#class-rid), code: [String](class_string.md#class-string)) |
| void | [shader\_set\_default\_texture\_parameter](#class-renderingserver-method-shader-set-default-texture-parameter)(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname), texture: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int) = 0) |
| void | [shader\_set\_path\_hint](#class-renderingserver-method-shader-set-path-hint)(shader: [RID](class_rid.md#class-rid), path: [String](class_string.md#class-string)) |
| void | [skeleton\_allocate\_data](#class-renderingserver-method-skeleton-allocate-data)(skeleton: [RID](class_rid.md#class-rid), bones: [int](class_int.md#class-int), is\_2d\_skeleton: [bool](class_bool.md#class-bool) = false) |
| [Transform3D](class_transform3d.md#class-transform3d) | [skeleton\_bone\_get\_transform](#class-renderingserver-method-skeleton-bone-get-transform)(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [skeleton\_bone\_get\_transform\_2d](#class-renderingserver-method-skeleton-bone-get-transform-2d)(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int)) const |
| void | [skeleton\_bone\_set\_transform](#class-renderingserver-method-skeleton-bone-set-transform)(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [skeleton\_bone\_set\_transform\_2d](#class-renderingserver-method-skeleton-bone-set-transform-2d)(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| [RID](class_rid.md#class-rid) | [skeleton\_create](#class-renderingserver-method-skeleton-create)() |
| [int](class_int.md#class-int) | [skeleton\_get\_bone\_count](#class-renderingserver-method-skeleton-get-bone-count)(skeleton: [RID](class_rid.md#class-rid)) const |
| void | [skeleton\_set\_base\_transform\_2d](#class-renderingserver-method-skeleton-set-base-transform-2d)(skeleton: [RID](class_rid.md#class-rid), base\_transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| [Image](class_image.md#class-image) | [sky\_bake\_panorama](#class-renderingserver-method-sky-bake-panorama)(sky: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float), bake\_irradiance: [bool](class_bool.md#class-bool), size: [Vector2i](class_vector2i.md#class-vector2i)) |
| [RID](class_rid.md#class-rid) | [sky\_create](#class-renderingserver-method-sky-create)() |
| void | [sky\_set\_material](#class-renderingserver-method-sky-set-material)(sky: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) |
| void | [sky\_set\_mode](#class-renderingserver-method-sky-set-mode)(sky: [RID](class_rid.md#class-rid), mode: [SkyMode](#enum-renderingserver-skymode)) |
| void | [sky\_set\_radiance\_size](#class-renderingserver-method-sky-set-radiance-size)(sky: [RID](class_rid.md#class-rid), radiance\_size: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [spot\_light\_create](#class-renderingserver-method-spot-light-create)() |
| void | [sub\_surface\_scattering\_set\_quality](#class-renderingserver-method-sub-surface-scattering-set-quality)(quality: [SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality)) |
| void | [sub\_surface\_scattering\_set\_scale](#class-renderingserver-method-sub-surface-scattering-set-scale)(scale: [float](class_float.md#class-float), depth\_scale: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [texture\_2d\_create](#class-renderingserver-method-texture-2d-create)(image: [Image](class_image.md#class-image)) |
| [Image](class_image.md#class-image) | [texture\_2d\_get](#class-renderingserver-method-texture-2d-get)(texture: [RID](class_rid.md#class-rid)) const |
| [Image](class_image.md#class-image) | [texture\_2d\_layer\_get](#class-renderingserver-method-texture-2d-layer-get)(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [texture\_2d\_layered\_create](#class-renderingserver-method-texture-2d-layered-create)(layers: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\], layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype)) |
| [RID](class_rid.md#class-rid) | [texture\_2d\_layered\_placeholder\_create](#class-renderingserver-method-texture-2d-layered-placeholder-create)(layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype)) |
| [RID](class_rid.md#class-rid) | [texture\_2d\_placeholder\_create](#class-renderingserver-method-texture-2d-placeholder-create)() |
| void | [texture\_2d\_update](#class-renderingserver-method-texture-2d-update)(texture: [RID](class_rid.md#class-rid), image: [Image](class_image.md#class-image), layer: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [texture\_3d\_create](#class-renderingserver-method-texture-3d-create)(format: [Format](class_image.md#enum-image-format), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), mipmaps: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) |
| [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] | [texture\_3d\_get](#class-renderingserver-method-texture-3d-get)(texture: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [texture\_3d\_placeholder\_create](#class-renderingserver-method-texture-3d-placeholder-create)() |
| void | [texture\_3d\_update](#class-renderingserver-method-texture-3d-update)(texture: [RID](class_rid.md#class-rid), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) |
| [RID](class_rid.md#class-rid) | [texture\_create\_from\_native\_handle](#class-renderingserver-method-texture-create-from-native-handle)(type: [TextureType](#enum-renderingserver-texturetype), format: [Format](class_image.md#enum-image-format), native\_handle: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), layers: [int](class_int.md#class-int) = 1, layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype) = 0) |
| [Format](class_image.md#enum-image-format) | [texture\_get\_format](#class-renderingserver-method-texture-get-format)(texture: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [texture\_get\_native\_handle](#class-renderingserver-method-texture-get-native-handle)(texture: [RID](class_rid.md#class-rid), srgb: [bool](class_bool.md#class-bool) = false) const |
| [String](class_string.md#class-string) | [texture\_get\_path](#class-renderingserver-method-texture-get-path)(texture: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [texture\_get\_rd\_texture](#class-renderingserver-method-texture-get-rd-texture)(texture: [RID](class_rid.md#class-rid), srgb: [bool](class_bool.md#class-bool) = false) const |
| [RID](class_rid.md#class-rid) | [texture\_proxy\_create](#class-renderingserver-method-texture-proxy-create)(base: [RID](class_rid.md#class-rid)) |
| void | [texture\_proxy\_update](#class-renderingserver-method-texture-proxy-update)(texture: [RID](class_rid.md#class-rid), proxy\_to: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [texture\_rd\_create](#class-renderingserver-method-texture-rd-create)(rd\_texture: [RID](class_rid.md#class-rid), layer\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype) = 0) |
| void | [texture\_replace](#class-renderingserver-method-texture-replace)(texture: [RID](class_rid.md#class-rid), by\_texture: [RID](class_rid.md#class-rid)) |
| void | [texture\_set\_force\_redraw\_if\_visible](#class-renderingserver-method-texture-set-force-redraw-if-visible)(texture: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [texture\_set\_path](#class-renderingserver-method-texture-set-path)(texture: [RID](class_rid.md#class-rid), path: [String](class_string.md#class-string)) |
| void | [texture\_set\_size\_override](#class-renderingserver-method-texture-set-size-override)(texture: [RID](class_rid.md#class-rid), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) |
| void | [viewport\_attach\_camera](#class-renderingserver-method-viewport-attach-camera)(viewport: [RID](class_rid.md#class-rid), camera: [RID](class_rid.md#class-rid)) |
| void | [viewport\_attach\_canvas](#class-renderingserver-method-viewport-attach-canvas)(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) |
| void | [viewport\_attach\_to\_screen](#class-renderingserver-method-viewport-attach-to-screen)(viewport: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), screen: [int](class_int.md#class-int) = 0) |
| [RID](class_rid.md#class-rid) | [viewport\_create](#class-renderingserver-method-viewport-create)() |
| [float](class_float.md#class-float) | [viewport\_get\_measured\_render\_time\_cpu](#class-renderingserver-method-viewport-get-measured-render-time-cpu)(viewport: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [viewport\_get\_measured\_render\_time\_gpu](#class-renderingserver-method-viewport-get-measured-render-time-gpu)(viewport: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [viewport\_get\_render\_info](#class-renderingserver-method-viewport-get-render-info)(viewport: [RID](class_rid.md#class-rid), type: [ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype), info: [ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo)) |
| [RID](class_rid.md#class-rid) | [viewport\_get\_render\_target](#class-renderingserver-method-viewport-get-render-target)(viewport: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [viewport\_get\_texture](#class-renderingserver-method-viewport-get-texture)(viewport: [RID](class_rid.md#class-rid)) const |
| [ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) | [viewport\_get\_update\_mode](#class-renderingserver-method-viewport-get-update-mode)(viewport: [RID](class_rid.md#class-rid)) const |
| void | [viewport\_remove\_canvas](#class-renderingserver-method-viewport-remove-canvas)(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) |
| void | [viewport\_set\_active](#class-renderingserver-method-viewport-set-active)(viewport: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_anisotropic\_filtering\_level](#class-renderingserver-method-viewport-set-anisotropic-filtering-level)(viewport: [RID](class_rid.md#class-rid), anisotropic\_filtering\_level: [ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering)) |
| void | [viewport\_set\_canvas\_cull\_mask](#class-renderingserver-method-viewport-set-canvas-cull-mask)(viewport: [RID](class_rid.md#class-rid), canvas\_cull\_mask: [int](class_int.md#class-int)) |
| void | [viewport\_set\_canvas\_stacking](#class-renderingserver-method-viewport-set-canvas-stacking)(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), sublayer: [int](class_int.md#class-int)) |
| void | [viewport\_set\_canvas\_transform](#class-renderingserver-method-viewport-set-canvas-transform)(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), offset: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [viewport\_set\_clear\_mode](#class-renderingserver-method-viewport-set-clear-mode)(viewport: [RID](class_rid.md#class-rid), clear\_mode: [ViewportClearMode](#enum-renderingserver-viewportclearmode)) |
| void | [viewport\_set\_debug\_draw](#class-renderingserver-method-viewport-set-debug-draw)(viewport: [RID](class_rid.md#class-rid), draw: [ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw)) |
| void | [viewport\_set\_default\_canvas\_item\_texture\_filter](#class-renderingserver-method-viewport-set-default-canvas-item-texture-filter)(viewport: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) |
| void | [viewport\_set\_default\_canvas\_item\_texture\_repeat](#class-renderingserver-method-viewport-set-default-canvas-item-texture-repeat)(viewport: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) |
| void | [viewport\_set\_disable\_2d](#class-renderingserver-method-viewport-set-disable-2d)(viewport: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_disable\_3d](#class-renderingserver-method-viewport-set-disable-3d)(viewport: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_environment\_mode](#class-renderingserver-method-viewport-set-environment-mode)(viewport: [RID](class_rid.md#class-rid), mode: [ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode)) |
| void | [viewport\_set\_fsr\_sharpness](#class-renderingserver-method-viewport-set-fsr-sharpness)(viewport: [RID](class_rid.md#class-rid), sharpness: [float](class_float.md#class-float)) |
| void | [viewport\_set\_global\_canvas\_transform](#class-renderingserver-method-viewport-set-global-canvas-transform)(viewport: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [viewport\_set\_measure\_render\_time](#class-renderingserver-method-viewport-set-measure-render-time)(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_msaa\_2d](#class-renderingserver-method-viewport-set-msaa-2d)(viewport: [RID](class_rid.md#class-rid), msaa: [ViewportMSAA](#enum-renderingserver-viewportmsaa)) |
| void | [viewport\_set\_msaa\_3d](#class-renderingserver-method-viewport-set-msaa-3d)(viewport: [RID](class_rid.md#class-rid), msaa: [ViewportMSAA](#enum-renderingserver-viewportmsaa)) |
| void | [viewport\_set\_occlusion\_culling\_build\_quality](#class-renderingserver-method-viewport-set-occlusion-culling-build-quality)(quality: [ViewportOcclusionCullingBuildQuality](#enum-renderingserver-viewportocclusioncullingbuildquality)) |
| void | [viewport\_set\_occlusion\_rays\_per\_thread](#class-renderingserver-method-viewport-set-occlusion-rays-per-thread)(rays\_per\_thread: [int](class_int.md#class-int)) |
| void | [viewport\_set\_parent\_viewport](#class-renderingserver-method-viewport-set-parent-viewport)(viewport: [RID](class_rid.md#class-rid), parent\_viewport: [RID](class_rid.md#class-rid)) |
| void | [viewport\_set\_positional\_shadow\_atlas\_quadrant\_subdivision](#class-renderingserver-method-viewport-set-positional-shadow-atlas-quadrant-subdivision)(viewport: [RID](class_rid.md#class-rid), quadrant: [int](class_int.md#class-int), subdivision: [int](class_int.md#class-int)) |
| void | [viewport\_set\_positional\_shadow\_atlas\_size](#class-renderingserver-method-viewport-set-positional-shadow-atlas-size)(viewport: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), use\_16\_bits: [bool](class_bool.md#class-bool) = false) |
| void | [viewport\_set\_render\_direct\_to\_screen](#class-renderingserver-method-viewport-set-render-direct-to-screen)(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_scaling\_3d\_mode](#class-renderingserver-method-viewport-set-scaling-3d-mode)(viewport: [RID](class_rid.md#class-rid), scaling\_3d\_mode: [ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode)) |
| void | [viewport\_set\_scaling\_3d\_scale](#class-renderingserver-method-viewport-set-scaling-3d-scale)(viewport: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) |
| void | [viewport\_set\_scenario](#class-renderingserver-method-viewport-set-scenario)(viewport: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) |
| void | [viewport\_set\_screen\_space\_aa](#class-renderingserver-method-viewport-set-screen-space-aa)(viewport: [RID](class_rid.md#class-rid), mode: [ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa)) |
| void | [viewport\_set\_sdf\_oversize\_and\_scale](#class-renderingserver-method-viewport-set-sdf-oversize-and-scale)(viewport: [RID](class_rid.md#class-rid), oversize: [ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize), scale: [ViewportSDFScale](#enum-renderingserver-viewportsdfscale)) |
| void | [viewport\_set\_size](#class-renderingserver-method-viewport-set-size)(viewport: [RID](class_rid.md#class-rid), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) |
| void | [viewport\_set\_snap\_2d\_transforms\_to\_pixel](#class-renderingserver-method-viewport-set-snap-2d-transforms-to-pixel)(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_snap\_2d\_vertices\_to\_pixel](#class-renderingserver-method-viewport-set-snap-2d-vertices-to-pixel)(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_texture\_mipmap\_bias](#class-renderingserver-method-viewport-set-texture-mipmap-bias)(viewport: [RID](class_rid.md#class-rid), mipmap\_bias: [float](class_float.md#class-float)) |
| void | [viewport\_set\_transparent\_background](#class-renderingserver-method-viewport-set-transparent-background)(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_update\_mode](#class-renderingserver-method-viewport-set-update-mode)(viewport: [RID](class_rid.md#class-rid), update\_mode: [ViewportUpdateMode](#enum-renderingserver-viewportupdatemode)) |
| void | [viewport\_set\_use\_debanding](#class-renderingserver-method-viewport-set-use-debanding)(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_use\_hdr\_2d](#class-renderingserver-method-viewport-set-use-hdr-2d)(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_use\_occlusion\_culling](#class-renderingserver-method-viewport-set-use-occlusion-culling)(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_use\_taa](#class-renderingserver-method-viewport-set-use-taa)(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_use\_xr](#class-renderingserver-method-viewport-set-use-xr)(viewport: [RID](class_rid.md#class-rid), use\_xr: [bool](class_bool.md#class-bool)) |
| void | [viewport\_set\_vrs\_mode](#class-renderingserver-method-viewport-set-vrs-mode)(viewport: [RID](class_rid.md#class-rid), mode: [ViewportVRSMode](#enum-renderingserver-viewportvrsmode)) |
| void | [viewport\_set\_vrs\_texture](#class-renderingserver-method-viewport-set-vrs-texture)(viewport: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) |
| void | [viewport\_set\_vrs\_update\_mode](#class-renderingserver-method-viewport-set-vrs-update-mode)(viewport: [RID](class_rid.md#class-rid), mode: [ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode)) |
| [RID](class_rid.md#class-rid) | [visibility\_notifier\_create](#class-renderingserver-method-visibility-notifier-create)() |
| void | [visibility\_notifier\_set\_aabb](#class-renderingserver-method-visibility-notifier-set-aabb)(notifier: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) |
| void | [visibility\_notifier\_set\_callbacks](#class-renderingserver-method-visibility-notifier-set-callbacks)(notifier: [RID](class_rid.md#class-rid), enter\_callable: [Callable](class_callable.md#class-callable), exit\_callable: [Callable](class_callable.md#class-callable)) |
| void | [voxel\_gi\_allocate\_data](#class-renderingserver-method-voxel-gi-allocate-data)(voxel\_gi: [RID](class_rid.md#class-rid), to\_cell\_xform: [Transform3D](class_transform3d.md#class-transform3d), aabb: [AABB](class_aabb.md#class-aabb), octree\_size: [Vector3i](class_vector3i.md#class-vector3i), octree\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), data\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), distance\_field: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), level\_counts: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) |
| [RID](class_rid.md#class-rid) | [voxel\_gi\_create](#class-renderingserver-method-voxel-gi-create)() |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [voxel\_gi\_get\_data\_cells](#class-renderingserver-method-voxel-gi-get-data-cells)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [voxel\_gi\_get\_distance\_field](#class-renderingserver-method-voxel-gi-get-distance-field)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [voxel\_gi\_get\_level\_counts](#class-renderingserver-method-voxel-gi-get-level-counts)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [voxel\_gi\_get\_octree\_cells](#class-renderingserver-method-voxel-gi-get-octree-cells)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| [Vector3i](class_vector3i.md#class-vector3i) | [voxel\_gi\_get\_octree\_size](#class-renderingserver-method-voxel-gi-get-octree-size)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [voxel\_gi\_get\_to\_cell\_xform](#class-renderingserver-method-voxel-gi-get-to-cell-xform)(voxel\_gi: [RID](class_rid.md#class-rid)) const |
| void | [voxel\_gi\_set\_baked\_exposure\_normalization](#class-renderingserver-method-voxel-gi-set-baked-exposure-normalization)(voxel\_gi: [RID](class_rid.md#class-rid), baked\_exposure: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_bias](#class-renderingserver-method-voxel-gi-set-bias)(voxel\_gi: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_dynamic\_range](#class-renderingserver-method-voxel-gi-set-dynamic-range)(voxel\_gi: [RID](class_rid.md#class-rid), range: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_energy](#class-renderingserver-method-voxel-gi-set-energy)(voxel\_gi: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_interior](#class-renderingserver-method-voxel-gi-set-interior)(voxel\_gi: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [voxel\_gi\_set\_normal\_bias](#class-renderingserver-method-voxel-gi-set-normal-bias)(voxel\_gi: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_propagation](#class-renderingserver-method-voxel-gi-set-propagation)(voxel\_gi: [RID](class_rid.md#class-rid), amount: [float](class_float.md#class-float)) |
| void | [voxel\_gi\_set\_quality](#class-renderingserver-method-voxel-gi-set-quality)(quality: [VoxelGIQuality](#enum-renderingserver-voxelgiquality)) |
| void | [voxel\_gi\_set\_use\_two\_bounces](#class-renderingserver-method-voxel-gi-set-use-two-bounces)(voxel\_gi: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**frame\_post\_draw**() [🔗](#class-renderingserver-signal-frame-post-draw)

Emitted at the end of the frame, after the RenderingServer has finished updating all the Viewports.

* * *

**frame\_pre\_draw**() [🔗](#class-renderingserver-signal-frame-pre-draw)

Emitted at the beginning of the frame, before the RenderingServer updates all the Viewports.

* * *

## Enumerations

enum **TextureType**: [🔗](#enum-renderingserver-texturetype)

[TextureType](#enum-renderingserver-texturetype) **TEXTURE\_TYPE\_2D** = `0`

2D texture.

[TextureType](#enum-renderingserver-texturetype) **TEXTURE\_TYPE\_LAYERED** = `1`

Layered texture.

[TextureType](#enum-renderingserver-texturetype) **TEXTURE\_TYPE\_3D** = `2`

3D texture.

* * *

enum **TextureLayeredType**: [🔗](#enum-renderingserver-texturelayeredtype)

[TextureLayeredType](#enum-renderingserver-texturelayeredtype) **TEXTURE\_LAYERED\_2D\_ARRAY** = `0`

Array of 2-dimensional textures (see [Texture2DArray](class_texture2darray.md#class-texture2darray)).

[TextureLayeredType](#enum-renderingserver-texturelayeredtype) **TEXTURE\_LAYERED\_CUBEMAP** = `1`

Cubemap texture (see [Cubemap](class_cubemap.md#class-cubemap)).

[TextureLayeredType](#enum-renderingserver-texturelayeredtype) **TEXTURE\_LAYERED\_CUBEMAP\_ARRAY** = `2`

Array of cubemap textures (see [CubemapArray](class_cubemaparray.md#class-cubemaparray)).

* * *

enum **CubeMapLayer**: [🔗](#enum-renderingserver-cubemaplayer)

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_LEFT** = `0`

Left face of a [Cubemap](class_cubemap.md#class-cubemap).

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_RIGHT** = `1`

Right face of a [Cubemap](class_cubemap.md#class-cubemap).

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_BOTTOM** = `2`

Bottom face of a [Cubemap](class_cubemap.md#class-cubemap).

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_TOP** = `3`

Top face of a [Cubemap](class_cubemap.md#class-cubemap).

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_FRONT** = `4`

Front face of a [Cubemap](class_cubemap.md#class-cubemap).

[CubeMapLayer](#enum-renderingserver-cubemaplayer) **CUBEMAP\_LAYER\_BACK** = `5`

Back face of a [Cubemap](class_cubemap.md#class-cubemap).

* * *

enum **ShaderMode**: [🔗](#enum-renderingserver-shadermode)

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_SPATIAL** = `0`

Shader is a 3D shader.

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_CANVAS\_ITEM** = `1`

Shader is a 2D shader.

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_PARTICLES** = `2`

Shader is a particle shader (can be used in both 2D and 3D).

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_SKY** = `3`

Shader is a 3D sky shader.

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_FOG** = `4`

Shader is a 3D fog shader.

[ShaderMode](#enum-renderingserver-shadermode) **SHADER\_MAX** = `5`

Represents the size of the [ShaderMode](#enum-renderingserver-shadermode) enum.

* * *

enum **ArrayType**: [🔗](#enum-renderingserver-arraytype)

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_VERTEX** = `0`

Array is a vertex position array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_NORMAL** = `1`

Array is a normal array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_TANGENT** = `2`

Array is a tangent array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_COLOR** = `3`

Array is a vertex color array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_TEX\_UV** = `4`

Array is a UV coordinates array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_TEX\_UV2** = `5`

Array is a UV coordinates array for the second set of UV coordinates.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_CUSTOM0** = `6`

Array is a custom data array for the first set of custom data.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_CUSTOM1** = `7`

Array is a custom data array for the second set of custom data.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_CUSTOM2** = `8`

Array is a custom data array for the third set of custom data.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_CUSTOM3** = `9`

Array is a custom data array for the fourth set of custom data.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_BONES** = `10`

Array contains bone information.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_WEIGHTS** = `11`

Array is weight information.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_INDEX** = `12`

Array is an index array.

[ArrayType](#enum-renderingserver-arraytype) **ARRAY\_MAX** = `13`

Represents the size of the [ArrayType](#enum-renderingserver-arraytype) enum.

* * *

enum **ArrayCustomFormat**: [🔗](#enum-renderingserver-arraycustomformat)

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RGBA8\_UNORM** = `0`

Custom data array contains 8-bit-per-channel red/green/blue/alpha color data. Values are normalized, unsigned floating-point in the `[0.0, 1.0]` range.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RGBA8\_SNORM** = `1`

Custom data array contains 8-bit-per-channel red/green/blue/alpha color data. Values are normalized, signed floating-point in the `[-1.0, 1.0]` range.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RG\_HALF** = `2`

Custom data array contains 16-bit-per-channel red/green color data. Values are floating-point in half precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RGBA\_HALF** = `3`

Custom data array contains 16-bit-per-channel red/green/blue/alpha color data. Values are floating-point in half precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_R\_FLOAT** = `4`

Custom data array contains 32-bit-per-channel red color data. Values are floating-point in single precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RG\_FLOAT** = `5`

Custom data array contains 32-bit-per-channel red/green color data. Values are floating-point in single precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RGB\_FLOAT** = `6`

Custom data array contains 32-bit-per-channel red/green/blue color data. Values are floating-point in single precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_RGBA\_FLOAT** = `7`

Custom data array contains 32-bit-per-channel red/green/blue/alpha color data. Values are floating-point in single precision.

[ArrayCustomFormat](#enum-renderingserver-arraycustomformat) **ARRAY\_CUSTOM\_MAX** = `8`

Represents the size of the [ArrayCustomFormat](#enum-renderingserver-arraycustomformat) enum.

* * *

flags **ArrayFormat**: [🔗](#enum-renderingserver-arrayformat)

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_VERTEX** = `1`

Flag used to mark a vertex position array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_NORMAL** = `2`

Flag used to mark a normal array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_TANGENT** = `4`

Flag used to mark a tangent array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_COLOR** = `8`

Flag used to mark a vertex color array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_TEX\_UV** = `16`

Flag used to mark a UV coordinates array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_TEX\_UV2** = `32`

Flag used to mark a UV coordinates array for the second UV coordinates.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM0** = `64`

Flag used to mark an array of custom per-vertex data for the first set of custom data.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM1** = `128`

Flag used to mark an array of custom per-vertex data for the second set of custom data.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM2** = `256`

Flag used to mark an array of custom per-vertex data for the third set of custom data.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM3** = `512`

Flag used to mark an array of custom per-vertex data for the fourth set of custom data.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_BONES** = `1024`

Flag used to mark a bone information array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_WEIGHTS** = `2048`

Flag used to mark a weights array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_INDEX** = `4096`

Flag used to mark an index array.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_BLEND\_SHAPE\_MASK** = `7`

Mask of mesh channels permitted in blend shapes.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_BASE** = `13`

Shift of first custom channel.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_BITS** = `3`

Number of format bits per custom channel. See [ArrayCustomFormat](#enum-renderingserver-arraycustomformat).

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM0\_SHIFT** = `13`

Amount to shift [ArrayCustomFormat](#enum-renderingserver-arraycustomformat) for custom channel index 0.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM1\_SHIFT** = `16`

Amount to shift [ArrayCustomFormat](#enum-renderingserver-arraycustomformat) for custom channel index 1.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM2\_SHIFT** = `19`

Amount to shift [ArrayCustomFormat](#enum-renderingserver-arraycustomformat) for custom channel index 2.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM3\_SHIFT** = `22`

Amount to shift [ArrayCustomFormat](#enum-renderingserver-arraycustomformat) for custom channel index 3.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FORMAT\_CUSTOM\_MASK** = `7`

Mask of custom format bits per custom channel. Must be shifted by one of the SHIFT constants. See [ArrayCustomFormat](#enum-renderingserver-arraycustomformat).

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_COMPRESS\_FLAGS\_BASE** = `25`

Shift of first compress flag. Compress flags should be passed to [ArrayMesh.add\_surface\_from\_arrays()](class_arraymesh.md#class-arraymesh-method-add-surface-from-arrays) and [SurfaceTool.commit()](class_surfacetool.md#class-surfacetool-method-commit).

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_USE\_2D\_VERTICES** = `33554432`

Flag used to mark that the array contains 2D vertices.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_USE\_DYNAMIC\_UPDATE** = `67108864`

Flag used to mark that the mesh data will use `GL_DYNAMIC_DRAW` on GLES. Unused on Vulkan.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_USE\_8\_BONE\_WEIGHTS** = `134217728`

Flag used to mark that the array uses 8 bone weights instead of 4.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_USES\_EMPTY\_VERTEX\_ARRAY** = `268435456`

Flag used to mark that the mesh does not have a vertex array and instead will infer vertex positions in the shader using indices and other information.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_COMPRESS\_ATTRIBUTES** = `536870912`

Flag used to mark that a mesh is using compressed attributes (vertices, normals, tangents, UVs). When this form of compression is enabled, vertex positions will be packed into an RGBA16UNORM attribute and scaled in the vertex shader. The normal and tangent will be packed into an RG16UNORM representing an axis, and a 16-bit float stored in the A-channel of the vertex. UVs will use 16-bit normalized floats instead of full 32-bit signed floats. When using this compression mode you must use either vertices, normals, and tangents or only vertices. You cannot use normals without tangents. Importers will automatically enable this compression if they can.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_VERSION\_BASE** = `35`

Flag used to mark the start of the bits used to store the mesh version.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_VERSION\_SHIFT** = `35`

Flag used to shift a mesh format int to bring the version into the lowest digits.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_VERSION\_1** = `0`

Flag used to record the format used by prior mesh versions before the introduction of a version.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_VERSION\_2** = `34359738368`

Flag used to record the second iteration of the mesh version flag. The primary difference between this and [ARRAY\_FLAG\_FORMAT\_VERSION\_1](#class-renderingserver-constant-array-flag-format-version-1) is that this version supports [ARRAY\_FLAG\_COMPRESS\_ATTRIBUTES](#class-renderingserver-constant-array-flag-compress-attributes) and in this version vertex positions are de-interleaved from normals and tangents.

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_CURRENT\_VERSION** = `34359738368`

Flag used to record the current version that the engine expects. Currently this is the same as [ARRAY\_FLAG\_FORMAT\_VERSION\_2](#class-renderingserver-constant-array-flag-format-version-2).

[ArrayFormat](#enum-renderingserver-arrayformat) **ARRAY\_FLAG\_FORMAT\_VERSION\_MASK** = `255`

Flag used to isolate the bits used for mesh version after using [ARRAY\_FLAG\_FORMAT\_VERSION\_SHIFT](#class-renderingserver-constant-array-flag-format-version-shift) to shift them into place.

* * *

enum **PrimitiveType**: [🔗](#enum-renderingserver-primitivetype)

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_POINTS** = `0`

Primitive to draw consists of points.

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_LINES** = `1`

Primitive to draw consists of lines.

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_LINE\_STRIP** = `2`

Primitive to draw consists of a line strip from start to end.

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_TRIANGLES** = `3`

Primitive to draw consists of triangles.

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_TRIANGLE\_STRIP** = `4`

Primitive to draw consists of a triangle strip (the last 3 vertices are always combined to make a triangle).

[PrimitiveType](#enum-renderingserver-primitivetype) **PRIMITIVE\_MAX** = `5`

Represents the size of the [PrimitiveType](#enum-renderingserver-primitivetype) enum.

* * *

enum **BlendShapeMode**: [🔗](#enum-renderingserver-blendshapemode)

[BlendShapeMode](#enum-renderingserver-blendshapemode) **BLEND\_SHAPE\_MODE\_NORMALIZED** = `0`

Blend shapes are normalized.

[BlendShapeMode](#enum-renderingserver-blendshapemode) **BLEND\_SHAPE\_MODE\_RELATIVE** = `1`

Blend shapes are relative to base weight.

* * *

enum **MultimeshTransformFormat**: [🔗](#enum-renderingserver-multimeshtransformformat)

[MultimeshTransformFormat](#enum-renderingserver-multimeshtransformformat) **MULTIMESH\_TRANSFORM\_2D** = `0`

Use [Transform2D](class_transform2d.md#class-transform2d) to store MultiMesh transform.

[MultimeshTransformFormat](#enum-renderingserver-multimeshtransformformat) **MULTIMESH\_TRANSFORM\_3D** = `1`

Use [Transform3D](class_transform3d.md#class-transform3d) to store MultiMesh transform.

* * *

enum **MultimeshPhysicsInterpolationQuality**: [🔗](#enum-renderingserver-multimeshphysicsinterpolationquality)

[MultimeshPhysicsInterpolationQuality](#enum-renderingserver-multimeshphysicsinterpolationquality) **MULTIMESH\_INTERP\_QUALITY\_FAST** = `0`

MultiMesh physics interpolation favors speed over quality.

[MultimeshPhysicsInterpolationQuality](#enum-renderingserver-multimeshphysicsinterpolationquality) **MULTIMESH\_INTERP\_QUALITY\_HIGH** = `1`

MultiMesh physics interpolation favors quality over speed.

* * *

enum **LightProjectorFilter**: [🔗](#enum-renderingserver-lightprojectorfilter)

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_NEAREST** = `0`

Nearest-neighbor filter for light projectors (use for pixel art light projectors). No mipmaps are used for rendering, which means light projectors at a distance will look sharp but grainy. This has roughly the same performance cost as using mipmaps.

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_LINEAR** = `1`

Linear filter for light projectors (use for non-pixel art light projectors). No mipmaps are used for rendering, which means light projectors at a distance will look smooth but blurry. This has roughly the same performance cost as using mipmaps.

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_NEAREST\_MIPMAPS** = `2`

Nearest-neighbor filter for light projectors (use for pixel art light projectors). Isotropic mipmaps are used for rendering, which means light projectors at a distance will look smooth but blurry. This has roughly the same performance cost as not using mipmaps.

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_LINEAR\_MIPMAPS** = `3`

Linear filter for light projectors (use for non-pixel art light projectors). Isotropic mipmaps are used for rendering, which means light projectors at a distance will look smooth but blurry. This has roughly the same performance cost as not using mipmaps.

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_NEAREST\_MIPMAPS\_ANISOTROPIC** = `4`

Nearest-neighbor filter for light projectors (use for pixel art light projectors). Anisotropic mipmaps are used for rendering, which means light projectors at a distance will look smooth and sharp when viewed from oblique angles. This looks better compared to isotropic mipmaps, but is slower. The level of anisotropic filtering is defined by [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

[LightProjectorFilter](#enum-renderingserver-lightprojectorfilter) **LIGHT\_PROJECTOR\_FILTER\_LINEAR\_MIPMAPS\_ANISOTROPIC** = `5`

Linear filter for light projectors (use for non-pixel art light projectors). Anisotropic mipmaps are used for rendering, which means light projectors at a distance will look smooth and sharp when viewed from oblique angles. This looks better compared to isotropic mipmaps, but is slower. The level of anisotropic filtering is defined by [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

* * *

enum **LightType**: [🔗](#enum-renderingserver-lighttype)

[LightType](#enum-renderingserver-lighttype) **LIGHT\_DIRECTIONAL** = `0`

Directional (sun/moon) light (see [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d)).

[LightType](#enum-renderingserver-lighttype) **LIGHT\_OMNI** = `1`

Omni light (see [OmniLight3D](class_omnilight3d.md#class-omnilight3d)).

[LightType](#enum-renderingserver-lighttype) **LIGHT\_SPOT** = `2`

Spot light (see [SpotLight3D](class_spotlight3d.md#class-spotlight3d)).

* * *

enum **LightParam**: [🔗](#enum-renderingserver-lightparam)

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_ENERGY** = `0`

The light's energy multiplier.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_INDIRECT\_ENERGY** = `1`

The light's indirect energy multiplier (final indirect energy is [LIGHT\_PARAM\_ENERGY](#class-renderingserver-constant-light-param-energy) \\* [LIGHT\_PARAM\_INDIRECT\_ENERGY](#class-renderingserver-constant-light-param-indirect-energy)).

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_VOLUMETRIC\_FOG\_ENERGY** = `2`

The light's volumetric fog energy multiplier (final volumetric fog energy is [LIGHT\_PARAM\_ENERGY](#class-renderingserver-constant-light-param-energy) \\* [LIGHT\_PARAM\_VOLUMETRIC\_FOG\_ENERGY](#class-renderingserver-constant-light-param-volumetric-fog-energy)).

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SPECULAR** = `3`

The light's influence on specularity.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_RANGE** = `4`

The light's range.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SIZE** = `5`

The size of the light when using spot light or omni light. The angular size of the light when using directional light.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_ATTENUATION** = `6`

The light's attenuation.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SPOT\_ANGLE** = `7`

The spotlight's angle.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SPOT\_ATTENUATION** = `8`

The spotlight's attenuation.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_MAX\_DISTANCE** = `9`

The maximum distance for shadow splits. Increasing this value will make directional shadows visible from further away, at the cost of lower overall shadow detail and performance (since more objects need to be included in the directional shadow rendering).

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_SPLIT\_1\_OFFSET** = `10`

Proportion of shadow atlas occupied by the first split.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_SPLIT\_2\_OFFSET** = `11`

Proportion of shadow atlas occupied by the second split.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_SPLIT\_3\_OFFSET** = `12`

Proportion of shadow atlas occupied by the third split. The fourth split occupies the rest.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_FADE\_START** = `13`

Proportion of shadow max distance where the shadow will start to fade out.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_NORMAL\_BIAS** = `14`

Normal bias used to offset shadow lookup by object normal. Can be used to fix self-shadowing artifacts.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_BIAS** = `15`

Bias for the shadow lookup to fix self-shadowing artifacts.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_PANCAKE\_SIZE** = `16`

Sets the size of the directional shadow pancake. The pancake offsets the start of the shadow's camera frustum to provide a higher effective depth resolution for the shadow. However, a high pancake size can cause artifacts in the shadows of large objects that are close to the edge of the frustum. Reducing the pancake size can help. Setting the size to `0` turns off the pancaking effect.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_OPACITY** = `17`

The light's shadow opacity. Values lower than `1.0` make the light appear through shadows. This can be used to fake global illumination at a low performance cost.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_SHADOW\_BLUR** = `18`

Blurs the edges of the shadow. Can be used to hide pixel artifacts in low resolution shadow maps. A high value can make shadows appear grainy and can cause other unwanted artifacts. Try to keep as near default as possible.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_TRANSMITTANCE\_BIAS** = `19`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_INTENSITY** = `20`

Constant representing the intensity of the light, measured in Lumens when dealing with a [SpotLight3D](class_spotlight3d.md#class-spotlight3d) or [OmniLight3D](class_omnilight3d.md#class-omnilight3d), or measured in Lux with a [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). Only used when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is `true`.

[LightParam](#enum-renderingserver-lightparam) **LIGHT\_PARAM\_MAX** = `21`

Represents the size of the [LightParam](#enum-renderingserver-lightparam) enum.

* * *

enum **LightBakeMode**: [🔗](#enum-renderingserver-lightbakemode)

[LightBakeMode](#enum-renderingserver-lightbakemode) **LIGHT\_BAKE\_DISABLED** = `0`

Light is ignored when baking. This is the fastest mode, but the light will be taken into account when baking global illumination. This mode should generally be used for dynamic lights that change quickly, as the effect of global illumination is less noticeable on those lights.

[LightBakeMode](#enum-renderingserver-lightbakemode) **LIGHT\_BAKE\_STATIC** = `1`

Light is taken into account in static baking ( [VoxelGI](class_voxelgi.md#class-voxelgi), [LightmapGI](class_lightmapgi.md#class-lightmapgi), SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled))). The light can be moved around or modified, but its global illumination will not update in real-time. This is suitable for subtle changes (such as flickering torches), but generally not large changes such as toggling a light on and off.

[LightBakeMode](#enum-renderingserver-lightbakemode) **LIGHT\_BAKE\_DYNAMIC** = `2`

Light is taken into account in dynamic baking ( [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) only). The light can be moved around or modified with global illumination updating in real-time. The light's global illumination appearance will be slightly different compared to [LIGHT\_BAKE\_STATIC](#class-renderingserver-constant-light-bake-static). This has a greater performance cost compared to [LIGHT\_BAKE\_STATIC](#class-renderingserver-constant-light-bake-static). When using SDFGI, the update speed of dynamic lights is affected by [ProjectSettings.rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights).

* * *

enum **LightOmniShadowMode**: [🔗](#enum-renderingserver-lightomnishadowmode)

[LightOmniShadowMode](#enum-renderingserver-lightomnishadowmode) **LIGHT\_OMNI\_SHADOW\_DUAL\_PARABOLOID** = `0`

Use a dual paraboloid shadow map for omni lights.

[LightOmniShadowMode](#enum-renderingserver-lightomnishadowmode) **LIGHT\_OMNI\_SHADOW\_CUBE** = `1`

Use a cubemap shadow map for omni lights. Slower but better quality than dual paraboloid.

* * *

enum **LightDirectionalShadowMode**: [🔗](#enum-renderingserver-lightdirectionalshadowmode)

[LightDirectionalShadowMode](#enum-renderingserver-lightdirectionalshadowmode) **LIGHT\_DIRECTIONAL\_SHADOW\_ORTHOGONAL** = `0`

Use orthogonal shadow projection for directional light.

[LightDirectionalShadowMode](#enum-renderingserver-lightdirectionalshadowmode) **LIGHT\_DIRECTIONAL\_SHADOW\_PARALLEL\_2\_SPLITS** = `1`

Use 2 splits for shadow projection when using directional light.

[LightDirectionalShadowMode](#enum-renderingserver-lightdirectionalshadowmode) **LIGHT\_DIRECTIONAL\_SHADOW\_PARALLEL\_4\_SPLITS** = `2`

Use 4 splits for shadow projection when using directional light.

* * *

enum **LightDirectionalSkyMode**: [🔗](#enum-renderingserver-lightdirectionalskymode)

[LightDirectionalSkyMode](#enum-renderingserver-lightdirectionalskymode) **LIGHT\_DIRECTIONAL\_SKY\_MODE\_LIGHT\_AND\_SKY** = `0`

Use DirectionalLight3D in both sky rendering and scene lighting.

[LightDirectionalSkyMode](#enum-renderingserver-lightdirectionalskymode) **LIGHT\_DIRECTIONAL\_SKY\_MODE\_LIGHT\_ONLY** = `1`

Only use DirectionalLight3D in scene lighting.

[LightDirectionalSkyMode](#enum-renderingserver-lightdirectionalskymode) **LIGHT\_DIRECTIONAL\_SKY\_MODE\_SKY\_ONLY** = `2`

Only use DirectionalLight3D in sky rendering.

* * *

enum **ShadowQuality**: [🔗](#enum-renderingserver-shadowquality)

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_HARD** = `0`

Lowest shadow filtering quality (fastest). Soft shadows are not available with this quality setting, which means the [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur) property is ignored if [Light3D.light\_size](class_light3d.md#class-light3d-property-light-size) and [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance) is `0.0`.

**Note:** The variable shadow blur performed by [Light3D.light\_size](class_light3d.md#class-light3d-property-light-size) and [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance) is still effective when using hard shadow filtering. In this case, [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur) _is_ taken into account. However, the results will not be blurred, instead the blur amount is treated as a maximum radius for the penumbra.

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_SOFT\_VERY\_LOW** = `1`

Very low shadow filtering quality (faster). When using this quality setting, [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur) is automatically multiplied by 0.75× to avoid introducing too much noise. This division only applies to lights whose [Light3D.light\_size](class_light3d.md#class-light3d-property-light-size) or [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance) is `0.0`).

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_SOFT\_LOW** = `2`

Low shadow filtering quality (fast).

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_SOFT\_MEDIUM** = `3`

Medium low shadow filtering quality (average).

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_SOFT\_HIGH** = `4`

High low shadow filtering quality (slow). When using this quality setting, [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur) is automatically multiplied by 1.5× to better make use of the high sample count. This increased blur also improves the stability of dynamic object shadows. This multiplier only applies to lights whose [Light3D.light\_size](class_light3d.md#class-light3d-property-light-size) or [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance) is `0.0`).

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_SOFT\_ULTRA** = `5`

Highest low shadow filtering quality (slowest). When using this quality setting, [Light3D.shadow\_blur](class_light3d.md#class-light3d-property-shadow-blur) is automatically multiplied by 2× to better make use of the high sample count. This increased blur also improves the stability of dynamic object shadows. This multiplier only applies to lights whose [Light3D.light\_size](class_light3d.md#class-light3d-property-light-size) or [Light3D.light\_angular\_distance](class_light3d.md#class-light3d-property-light-angular-distance) is `0.0`).

[ShadowQuality](#enum-renderingserver-shadowquality) **SHADOW\_QUALITY\_MAX** = `6`

Represents the size of the [ShadowQuality](#enum-renderingserver-shadowquality) enum.

* * *

enum **ReflectionProbeUpdateMode**: [🔗](#enum-renderingserver-reflectionprobeupdatemode)

[ReflectionProbeUpdateMode](#enum-renderingserver-reflectionprobeupdatemode) **REFLECTION\_PROBE\_UPDATE\_ONCE** = `0`

Reflection probe will update reflections once and then stop.

[ReflectionProbeUpdateMode](#enum-renderingserver-reflectionprobeupdatemode) **REFLECTION\_PROBE\_UPDATE\_ALWAYS** = `1`

Reflection probe will update each frame. This mode is necessary to capture moving objects.

* * *

enum **ReflectionProbeAmbientMode**: [🔗](#enum-renderingserver-reflectionprobeambientmode)

[ReflectionProbeAmbientMode](#enum-renderingserver-reflectionprobeambientmode) **REFLECTION\_PROBE\_AMBIENT\_DISABLED** = `0`

Do not apply any ambient lighting inside the reflection probe's box defined by its size.

[ReflectionProbeAmbientMode](#enum-renderingserver-reflectionprobeambientmode) **REFLECTION\_PROBE\_AMBIENT\_ENVIRONMENT** = `1`

Apply automatically-sourced environment lighting inside the reflection probe's box defined by its size.

[ReflectionProbeAmbientMode](#enum-renderingserver-reflectionprobeambientmode) **REFLECTION\_PROBE\_AMBIENT\_COLOR** = `2`

Apply custom ambient lighting inside the reflection probe's box defined by its size. See [reflection\_probe\_set\_ambient\_color()](#class-renderingserver-method-reflection-probe-set-ambient-color) and [reflection\_probe\_set\_ambient\_energy()](#class-renderingserver-method-reflection-probe-set-ambient-energy).

* * *

enum **DecalTexture**: [🔗](#enum-renderingserver-decaltexture)

[DecalTexture](#enum-renderingserver-decaltexture) **DECAL\_TEXTURE\_ALBEDO** = `0`

Albedo texture slot in a decal ( [Decal.texture\_albedo](class_decal.md#class-decal-property-texture-albedo)).

[DecalTexture](#enum-renderingserver-decaltexture) **DECAL\_TEXTURE\_NORMAL** = `1`

Normal map texture slot in a decal ( [Decal.texture\_normal](class_decal.md#class-decal-property-texture-normal)).

[DecalTexture](#enum-renderingserver-decaltexture) **DECAL\_TEXTURE\_ORM** = `2`

Occlusion/Roughness/Metallic texture slot in a decal ( [Decal.texture\_orm](class_decal.md#class-decal-property-texture-orm)).

[DecalTexture](#enum-renderingserver-decaltexture) **DECAL\_TEXTURE\_EMISSION** = `3`

Emission texture slot in a decal ( [Decal.texture\_emission](class_decal.md#class-decal-property-texture-emission)).

[DecalTexture](#enum-renderingserver-decaltexture) **DECAL\_TEXTURE\_MAX** = `4`

Represents the size of the [DecalTexture](#enum-renderingserver-decaltexture) enum.

* * *

enum **DecalFilter**: [🔗](#enum-renderingserver-decalfilter)

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_NEAREST** = `0`

Nearest-neighbor filter for decals (use for pixel art decals). No mipmaps are used for rendering, which means decals at a distance will look sharp but grainy. This has roughly the same performance cost as using mipmaps.

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_LINEAR** = `1`

Linear filter for decals (use for non-pixel art decals). No mipmaps are used for rendering, which means decals at a distance will look smooth but blurry. This has roughly the same performance cost as using mipmaps.

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_NEAREST\_MIPMAPS** = `2`

Nearest-neighbor filter for decals (use for pixel art decals). Isotropic mipmaps are used for rendering, which means decals at a distance will look smooth but blurry. This has roughly the same performance cost as not using mipmaps.

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_LINEAR\_MIPMAPS** = `3`

Linear filter for decals (use for non-pixel art decals). Isotropic mipmaps are used for rendering, which means decals at a distance will look smooth but blurry. This has roughly the same performance cost as not using mipmaps.

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_NEAREST\_MIPMAPS\_ANISOTROPIC** = `4`

Nearest-neighbor filter for decals (use for pixel art decals). Anisotropic mipmaps are used for rendering, which means decals at a distance will look smooth and sharp when viewed from oblique angles. This looks better compared to isotropic mipmaps, but is slower. The level of anisotropic filtering is defined by [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

[DecalFilter](#enum-renderingserver-decalfilter) **DECAL\_FILTER\_LINEAR\_MIPMAPS\_ANISOTROPIC** = `5`

Linear filter for decals (use for non-pixel art decals). Anisotropic mipmaps are used for rendering, which means decals at a distance will look smooth and sharp when viewed from oblique angles. This looks better compared to isotropic mipmaps, but is slower. The level of anisotropic filtering is defined by [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

* * *

enum **VoxelGIQuality**: [🔗](#enum-renderingserver-voxelgiquality)

[VoxelGIQuality](#enum-renderingserver-voxelgiquality) **VOXEL\_GI\_QUALITY\_LOW** = `0`

Low [VoxelGI](class_voxelgi.md#class-voxelgi) rendering quality using 4 cones.

[VoxelGIQuality](#enum-renderingserver-voxelgiquality) **VOXEL\_GI\_QUALITY\_HIGH** = `1`

High [VoxelGI](class_voxelgi.md#class-voxelgi) rendering quality using 6 cones.

* * *

enum **ParticlesMode**: [🔗](#enum-renderingserver-particlesmode)

[ParticlesMode](#enum-renderingserver-particlesmode) **PARTICLES\_MODE\_2D** = `0`

2D particles.

[ParticlesMode](#enum-renderingserver-particlesmode) **PARTICLES\_MODE\_3D** = `1`

3D particles.

* * *

enum **ParticlesTransformAlign**: [🔗](#enum-renderingserver-particlestransformalign)

[ParticlesTransformAlign](#enum-renderingserver-particlestransformalign) **PARTICLES\_TRANSFORM\_ALIGN\_DISABLED** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesTransformAlign](#enum-renderingserver-particlestransformalign) **PARTICLES\_TRANSFORM\_ALIGN\_Z\_BILLBOARD** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesTransformAlign](#enum-renderingserver-particlestransformalign) **PARTICLES\_TRANSFORM\_ALIGN\_Y\_TO\_VELOCITY** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesTransformAlign](#enum-renderingserver-particlestransformalign) **PARTICLES\_TRANSFORM\_ALIGN\_Z\_BILLBOARD\_Y\_TO\_VELOCITY** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **ParticlesDrawOrder**: [🔗](#enum-renderingserver-particlesdraworder)

[ParticlesDrawOrder](#enum-renderingserver-particlesdraworder) **PARTICLES\_DRAW\_ORDER\_INDEX** = `0`

Draw particles in the order that they appear in the particles array.

[ParticlesDrawOrder](#enum-renderingserver-particlesdraworder) **PARTICLES\_DRAW\_ORDER\_LIFETIME** = `1`

Sort particles based on their lifetime. In other words, the particle with the highest lifetime is drawn at the front.

[ParticlesDrawOrder](#enum-renderingserver-particlesdraworder) **PARTICLES\_DRAW\_ORDER\_REVERSE\_LIFETIME** = `2`

Sort particles based on the inverse of their lifetime. In other words, the particle with the lowest lifetime is drawn at the front.

[ParticlesDrawOrder](#enum-renderingserver-particlesdraworder) **PARTICLES\_DRAW\_ORDER\_VIEW\_DEPTH** = `3`

Sort particles based on their distance to the camera.

* * *

enum **ParticlesCollisionType**: [🔗](#enum-renderingserver-particlescollisiontype)

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_SPHERE\_ATTRACT** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_BOX\_ATTRACT** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_VECTOR\_FIELD\_ATTRACT** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_SPHERE\_COLLIDE** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_BOX\_COLLIDE** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_SDF\_COLLIDE** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionType](#enum-renderingserver-particlescollisiontype) **PARTICLES\_COLLISION\_TYPE\_HEIGHTFIELD\_COLLIDE** = `6`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **ParticlesCollisionHeightfieldResolution**: [🔗](#enum-renderingserver-particlescollisionheightfieldresolution)

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_256** = `0`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_512** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_1024** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_2048** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_4096** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_8192** = `5`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) **PARTICLES\_COLLISION\_HEIGHTFIELD\_RESOLUTION\_MAX** = `6`

Represents the size of the [ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution) enum.

* * *

enum **FogVolumeShape**: [🔗](#enum-renderingserver-fogvolumeshape)

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_ELLIPSOID** = `0`

[FogVolume](class_fogvolume.md#class-fogvolume) will be shaped like an ellipsoid (stretched sphere).

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_CONE** = `1`

[FogVolume](class_fogvolume.md#class-fogvolume) will be shaped like a cone pointing upwards (in local coordinates). The cone's angle is set automatically to fill the size. The cone will be adjusted to fit within the size. Rotate the [FogVolume](class_fogvolume.md#class-fogvolume) node to reorient the cone. Non-uniform scaling via size is not supported (scale the [FogVolume](class_fogvolume.md#class-fogvolume) node instead).

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_CYLINDER** = `2`

[FogVolume](class_fogvolume.md#class-fogvolume) will be shaped like an upright cylinder (in local coordinates). Rotate the [FogVolume](class_fogvolume.md#class-fogvolume) node to reorient the cylinder. The cylinder will be adjusted to fit within the size. Non-uniform scaling via size is not supported (scale the [FogVolume](class_fogvolume.md#class-fogvolume) node instead).

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_BOX** = `3`

[FogVolume](class_fogvolume.md#class-fogvolume) will be shaped like a box.

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_WORLD** = `4`

[FogVolume](class_fogvolume.md#class-fogvolume) will have no shape, will cover the whole world and will not be culled.

[FogVolumeShape](#enum-renderingserver-fogvolumeshape) **FOG\_VOLUME\_SHAPE\_MAX** = `5`

Represents the size of the [FogVolumeShape](#enum-renderingserver-fogvolumeshape) enum.

* * *

enum **ViewportScaling3DMode**: [🔗](#enum-renderingserver-viewportscaling3dmode)

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_BILINEAR** = `0`

Use bilinear scaling for the viewport's 3D buffer. The amount of scaling can be set using [Viewport.scaling\_3d\_scale](class_viewport.md#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in undersampling while values greater than `1.0` will result in supersampling. A value of `1.0` disables scaling.

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_FSR** = `1`

Use AMD FidelityFX Super Resolution 1.0 upscaling for the viewport's 3D buffer. The amount of scaling can be set using [Viewport.scaling\_3d\_scale](class_viewport.md#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using FSR. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` disables scaling.

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_FSR2** = `2`

Use AMD FidelityFX Super Resolution 2.2 upscaling for the viewport's 3D buffer. The amount of scaling can be set using [Viewport.scaling\_3d\_scale](class_viewport.md#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using FSR2. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` will use FSR2 at native resolution as a TAA solution.

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_METALFX\_SPATIAL** = `3`

Use MetalFX spatial upscaling for the viewport's 3D buffer. The amount of scaling can be set using [Viewport.scaling\_3d\_scale](class_viewport.md#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using MetalFX. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` disables scaling.

**Note:** Only supported when the Metal rendering driver is in use, which limits this scaling mode to macOS and iOS.

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_METALFX\_TEMPORAL** = `4`

Use MetalFX temporal upscaling for the viewport's 3D buffer. The amount of scaling can be set using [Viewport.scaling\_3d\_scale](class_viewport.md#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using MetalFX. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` will use MetalFX at native resolution as a TAA solution.

**Note:** Only supported when the Metal rendering driver is in use, which limits this scaling mode to macOS and iOS.

[ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) **VIEWPORT\_SCALING\_3D\_MODE\_MAX** = `5`

Represents the size of the [ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) enum.

* * *

enum **ViewportUpdateMode**: [🔗](#enum-renderingserver-viewportupdatemode)

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **VIEWPORT\_UPDATE\_DISABLED** = `0`

Do not update the viewport's render target.

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **VIEWPORT\_UPDATE\_ONCE** = `1`

Update the viewport's render target once, then switch to [VIEWPORT\_UPDATE\_DISABLED](#class-renderingserver-constant-viewport-update-disabled).

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **VIEWPORT\_UPDATE\_WHEN\_VISIBLE** = `2`

Update the viewport's render target only when it is visible. This is the default value.

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **VIEWPORT\_UPDATE\_WHEN\_PARENT\_VISIBLE** = `3`

Update the viewport's render target only when its parent is visible.

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **VIEWPORT\_UPDATE\_ALWAYS** = `4`

Always update the viewport's render target.

* * *

enum **ViewportClearMode**: [🔗](#enum-renderingserver-viewportclearmode)

[ViewportClearMode](#enum-renderingserver-viewportclearmode) **VIEWPORT\_CLEAR\_ALWAYS** = `0`

Always clear the viewport's render target before drawing.

[ViewportClearMode](#enum-renderingserver-viewportclearmode) **VIEWPORT\_CLEAR\_NEVER** = `1`

Never clear the viewport's render target.

[ViewportClearMode](#enum-renderingserver-viewportclearmode) **VIEWPORT\_CLEAR\_ONLY\_NEXT\_FRAME** = `2`

Clear the viewport's render target on the next frame, then switch to [VIEWPORT\_CLEAR\_NEVER](#class-renderingserver-constant-viewport-clear-never).

* * *

enum **ViewportEnvironmentMode**: [🔗](#enum-renderingserver-viewportenvironmentmode)

[ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode) **VIEWPORT\_ENVIRONMENT\_DISABLED** = `0`

Disable rendering of 3D environment over 2D canvas.

[ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode) **VIEWPORT\_ENVIRONMENT\_ENABLED** = `1`

Enable rendering of 3D environment over 2D canvas.

[ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode) **VIEWPORT\_ENVIRONMENT\_INHERIT** = `2`

Inherit enable/disable value from parent. If the topmost parent is also set to [VIEWPORT\_ENVIRONMENT\_INHERIT](#class-renderingserver-constant-viewport-environment-inherit), then this has the same behavior as [VIEWPORT\_ENVIRONMENT\_ENABLED](#class-renderingserver-constant-viewport-environment-enabled).

[ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode) **VIEWPORT\_ENVIRONMENT\_MAX** = `3`

Represents the size of the [ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode) enum.

* * *

enum **ViewportSDFOversize**: [🔗](#enum-renderingserver-viewportsdfoversize)

[ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) **VIEWPORT\_SDF\_OVERSIZE\_100\_PERCENT** = `0`

Do not oversize the 2D signed distance field. Occluders may disappear when touching the viewport's edges, and [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) collision may stop working earlier than intended. This has the lowest GPU requirements.

[ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) **VIEWPORT\_SDF\_OVERSIZE\_120\_PERCENT** = `1`

2D signed distance field covers 20% of the viewport's size outside the viewport on each side (top, right, bottom, left).

[ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) **VIEWPORT\_SDF\_OVERSIZE\_150\_PERCENT** = `2`

2D signed distance field covers 50% of the viewport's size outside the viewport on each side (top, right, bottom, left).

[ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) **VIEWPORT\_SDF\_OVERSIZE\_200\_PERCENT** = `3`

2D signed distance field covers 100% of the viewport's size outside the viewport on each side (top, right, bottom, left). This has the highest GPU requirements.

[ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) **VIEWPORT\_SDF\_OVERSIZE\_MAX** = `4`

Represents the size of the [ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize) enum.

* * *

enum **ViewportSDFScale**: [🔗](#enum-renderingserver-viewportsdfscale)

[ViewportSDFScale](#enum-renderingserver-viewportsdfscale) **VIEWPORT\_SDF\_SCALE\_100\_PERCENT** = `0`

Full resolution 2D signed distance field scale. This has the highest GPU requirements.

[ViewportSDFScale](#enum-renderingserver-viewportsdfscale) **VIEWPORT\_SDF\_SCALE\_50\_PERCENT** = `1`

Half resolution 2D signed distance field scale on each axis (25% of the viewport pixel count).

[ViewportSDFScale](#enum-renderingserver-viewportsdfscale) **VIEWPORT\_SDF\_SCALE\_25\_PERCENT** = `2`

Quarter resolution 2D signed distance field scale on each axis (6.25% of the viewport pixel count). This has the lowest GPU requirements.

[ViewportSDFScale](#enum-renderingserver-viewportsdfscale) **VIEWPORT\_SDF\_SCALE\_MAX** = `3`

Represents the size of the [ViewportSDFScale](#enum-renderingserver-viewportsdfscale) enum.

* * *

enum **ViewportMSAA**: [🔗](#enum-renderingserver-viewportmsaa)

[ViewportMSAA](#enum-renderingserver-viewportmsaa) **VIEWPORT\_MSAA\_DISABLED** = `0`

Multisample antialiasing for 3D is disabled. This is the default value, and also the fastest setting.

[ViewportMSAA](#enum-renderingserver-viewportmsaa) **VIEWPORT\_MSAA\_2X** = `1`

Multisample antialiasing uses 2 samples per pixel for 3D. This has a moderate impact on performance.

[ViewportMSAA](#enum-renderingserver-viewportmsaa) **VIEWPORT\_MSAA\_4X** = `2`

Multisample antialiasing uses 4 samples per pixel for 3D. This has a high impact on performance.

[ViewportMSAA](#enum-renderingserver-viewportmsaa) **VIEWPORT\_MSAA\_8X** = `3`

Multisample antialiasing uses 8 samples per pixel for 3D. This has a very high impact on performance. Likely unsupported on low-end and older hardware.

[ViewportMSAA](#enum-renderingserver-viewportmsaa) **VIEWPORT\_MSAA\_MAX** = `4`

Represents the size of the [ViewportMSAA](#enum-renderingserver-viewportmsaa) enum.

* * *

enum **ViewportAnisotropicFiltering**: [🔗](#enum-renderingserver-viewportanisotropicfiltering)

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_DISABLED** = `0`

Anisotropic filtering is disabled.

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_2X** = `1`

Use 2× anisotropic filtering.

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_4X** = `2`

Use 4× anisotropic filtering. This is the default value.

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_8X** = `3`

Use 8× anisotropic filtering.

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_16X** = `4`

Use 16× anisotropic filtering.

[ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) **VIEWPORT\_ANISOTROPY\_MAX** = `5`

Represents the size of the [ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering) enum.

* * *

enum **ViewportScreenSpaceAA**: [🔗](#enum-renderingserver-viewportscreenspaceaa)

[ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa) **VIEWPORT\_SCREEN\_SPACE\_AA\_DISABLED** = `0`

Do not perform any antialiasing in the full screen post-process.

[ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa) **VIEWPORT\_SCREEN\_SPACE\_AA\_FXAA** = `1`

Use fast approximate antialiasing. FXAA is a popular screen-space antialiasing method, which is fast but will make the image look blurry, especially at lower resolutions. It can still work relatively well at large resolutions such as 1440p and 4K.

[ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa) **VIEWPORT\_SCREEN\_SPACE\_AA\_SMAA** = `2`

Use subpixel morphological antialiasing. SMAA may produce clearer results than FXAA, but at a slightly higher performance cost.

[ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa) **VIEWPORT\_SCREEN\_SPACE\_AA\_MAX** = `3`

Represents the size of the [ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa) enum.

* * *

enum **ViewportOcclusionCullingBuildQuality**: [🔗](#enum-renderingserver-viewportocclusioncullingbuildquality)

[ViewportOcclusionCullingBuildQuality](#enum-renderingserver-viewportocclusioncullingbuildquality) **VIEWPORT\_OCCLUSION\_BUILD\_QUALITY\_LOW** = `0`

Low occlusion culling BVH build quality (as defined by Embree). Results in the lowest CPU usage, but least effective culling.

[ViewportOcclusionCullingBuildQuality](#enum-renderingserver-viewportocclusioncullingbuildquality) **VIEWPORT\_OCCLUSION\_BUILD\_QUALITY\_MEDIUM** = `1`

Medium occlusion culling BVH build quality (as defined by Embree).

[ViewportOcclusionCullingBuildQuality](#enum-renderingserver-viewportocclusioncullingbuildquality) **VIEWPORT\_OCCLUSION\_BUILD\_QUALITY\_HIGH** = `2`

High occlusion culling BVH build quality (as defined by Embree). Results in the highest CPU usage, but most effective culling.

* * *

enum **ViewportRenderInfo**: [🔗](#enum-renderingserver-viewportrenderinfo)

[ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo) **VIEWPORT\_RENDER\_INFO\_OBJECTS\_IN\_FRAME** = `0`

Number of objects drawn in a single frame.

[ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo) **VIEWPORT\_RENDER\_INFO\_PRIMITIVES\_IN\_FRAME** = `1`

Number of points, lines, or triangles drawn in a single frame.

[ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo) **VIEWPORT\_RENDER\_INFO\_DRAW\_CALLS\_IN\_FRAME** = `2`

Number of draw calls during this frame.

[ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo) **VIEWPORT\_RENDER\_INFO\_MAX** = `3`

Represents the size of the [ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo) enum.

* * *

enum **ViewportRenderInfoType**: [🔗](#enum-renderingserver-viewportrenderinfotype)

[ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype) **VIEWPORT\_RENDER\_INFO\_TYPE\_VISIBLE** = `0`

Visible render pass (excluding shadows).

[ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype) **VIEWPORT\_RENDER\_INFO\_TYPE\_SHADOW** = `1`

Shadow render pass. Objects will be rendered several times depending on the number of amounts of lights with shadows and the number of directional shadow splits.

[ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype) **VIEWPORT\_RENDER\_INFO\_TYPE\_CANVAS** = `2`

Canvas item rendering. This includes all 2D rendering.

[ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype) **VIEWPORT\_RENDER\_INFO\_TYPE\_MAX** = `3`

Represents the size of the [ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype) enum.

* * *

enum **ViewportDebugDraw**: [🔗](#enum-renderingserver-viewportdebugdraw)

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_DISABLED** = `0`

Debug draw is disabled. Default setting.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_UNSHADED** = `1`

Objects are displayed without light information.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_LIGHTING** = `2`

Objects are displayed with only light information.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_OVERDRAW** = `3`

Objects are displayed semi-transparent with additive blending so you can see where they are drawing over top of one another. A higher overdraw (represented by brighter colors) means you are wasting performance on drawing pixels that are being hidden behind others.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_WIREFRAME** = `4`

Debug draw draws objects in wireframe.

**Note:** [set\_debug\_generate\_wireframes()](#class-renderingserver-method-set-debug-generate-wireframes) must be called before loading any meshes for wireframes to be visible when using the Compatibility renderer.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_NORMAL\_BUFFER** = `5`

Normal buffer is drawn instead of regular scene so you can see the per-pixel normals that will be used by post-processing effects.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_VOXEL\_GI\_ALBEDO** = `6`

Objects are displayed with only the albedo value from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_VOXEL\_GI\_LIGHTING** = `7`

Objects are displayed with only the lighting value from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_VOXEL\_GI\_EMISSION** = `8`

Objects are displayed with only the emission color from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SHADOW\_ATLAS** = `9`

Draws the shadow atlas that stores shadows from [OmniLight3D](class_omnilight3d.md#class-omnilight3d) s and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) s in the upper left quadrant of the [Viewport](class_viewport.md#class-viewport).

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_DIRECTIONAL\_SHADOW\_ATLAS** = `10`

Draws the shadow atlas that stores shadows from [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s in the upper left quadrant of the [Viewport](class_viewport.md#class-viewport).

The slice of the camera frustum related to the shadow map cascade is superimposed to visualize coverage. The color of each slice matches the colors used for [VIEWPORT\_DEBUG\_DRAW\_PSSM\_SPLITS](#class-renderingserver-constant-viewport-debug-draw-pssm-splits). When shadow cascades are blended the overlap is taken into account when drawing the frustum slices.

The last cascade shows all frustum slices to illustrate the coverage of all slices.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SCENE\_LUMINANCE** = `11`

Draws the estimated scene luminance. This is a 1×1 texture that is generated when autoexposure is enabled to control the scene's exposure.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SSAO** = `12`

Draws the screen space ambient occlusion texture instead of the scene so that you can clearly see how it is affecting objects. In order for this display mode to work, you must have [Environment.ssao\_enabled](class_environment.md#class-environment-property-ssao-enabled) set in your [WorldEnvironment](class_worldenvironment.md#class-worldenvironment).

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SSIL** = `13`

Draws the screen space indirect lighting texture instead of the scene so that you can clearly see how it is affecting objects. In order for this display mode to work, you must have [Environment.ssil\_enabled](class_environment.md#class-environment-property-ssil-enabled) set in your [WorldEnvironment](class_worldenvironment.md#class-worldenvironment).

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_PSSM\_SPLITS** = `14`

Colors each PSSM split for the [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s in the scene a different color so you can see where the splits are. In order (from closest to furthest from the camera), they are colored red, green, blue, and yellow.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_DECAL\_ATLAS** = `15`

Draws the decal atlas that stores decal textures from [Decal](class_decal.md#class-decal) s.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SDFGI** = `16`

Draws SDFGI cascade data. This is the data structure that is used to bounce lighting against and create reflections.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_SDFGI\_PROBES** = `17`

Draws SDFGI probe data. This is the data structure that is used to give indirect lighting dynamic objects moving within the scene.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_GI\_BUFFER** = `18`

Draws the global illumination buffer from [VoxelGI](class_voxelgi.md#class-voxelgi) or SDFGI. Requires [VoxelGI](class_voxelgi.md#class-voxelgi) (at least one visible baked VoxelGI node) or SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) to be enabled to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_DISABLE\_LOD** = `19`

Disable mesh LOD. All meshes are drawn with full detail, which can be used to compare performance.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_CLUSTER\_OMNI\_LIGHTS** = `20`

Draws the [OmniLight3D](class_omnilight3d.md#class-omnilight3d) cluster. Clustering determines where lights are positioned in screen-space, which allows the engine to only process these portions of the screen for lighting.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_CLUSTER\_SPOT\_LIGHTS** = `21`

Draws the [SpotLight3D](class_spotlight3d.md#class-spotlight3d) cluster. Clustering determines where lights are positioned in screen-space, which allows the engine to only process these portions of the screen for lighting.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_CLUSTER\_DECALS** = `22`

Draws the [Decal](class_decal.md#class-decal) cluster. Clustering determines where decals are positioned in screen-space, which allows the engine to only process these portions of the screen for decals.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_CLUSTER\_REFLECTION\_PROBES** = `23`

Draws the [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) cluster. Clustering determines where reflection probes are positioned in screen-space, which allows the engine to only process these portions of the screen for reflection probes.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_OCCLUDERS** = `24`

Draws the occlusion culling buffer. This low-resolution occlusion culling buffer is rasterized on the CPU and is used to check whether instances are occluded by other objects.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_MOTION\_VECTORS** = `25`

Draws the motion vectors buffer. This is used by temporal antialiasing to correct for motion that occurs during gameplay.

**Note:** Only supported when using the Forward+ rendering method.

[ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw) **VIEWPORT\_DEBUG\_DRAW\_INTERNAL\_BUFFER** = `26`

Internal buffer is drawn instead of regular scene so you can see the per-pixel output that will be used by post-processing effects.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

* * *

enum **ViewportVRSMode**: [🔗](#enum-renderingserver-viewportvrsmode)

[ViewportVRSMode](#enum-renderingserver-viewportvrsmode) **VIEWPORT\_VRS\_DISABLED** = `0`

Variable rate shading is disabled.

[ViewportVRSMode](#enum-renderingserver-viewportvrsmode) **VIEWPORT\_VRS\_TEXTURE** = `1`

Variable rate shading uses a texture. Note, for stereoscopic use a texture atlas with a texture for each view.

[ViewportVRSMode](#enum-renderingserver-viewportvrsmode) **VIEWPORT\_VRS\_XR** = `2`

Variable rate shading texture is supplied by the primary [XRInterface](class_xrinterface.md#class-xrinterface). Note that this may override the update mode.

[ViewportVRSMode](#enum-renderingserver-viewportvrsmode) **VIEWPORT\_VRS\_MAX** = `3`

Represents the size of the [ViewportVRSMode](#enum-renderingserver-viewportvrsmode) enum.

* * *

enum **ViewportVRSUpdateMode**: [🔗](#enum-renderingserver-viewportvrsupdatemode)

[ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode) **VIEWPORT\_VRS\_UPDATE\_DISABLED** = `0`

The input texture for variable rate shading will not be processed.

[ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode) **VIEWPORT\_VRS\_UPDATE\_ONCE** = `1`

The input texture for variable rate shading will be processed once.

[ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode) **VIEWPORT\_VRS\_UPDATE\_ALWAYS** = `2`

The input texture for variable rate shading will be processed each frame.

[ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode) **VIEWPORT\_VRS\_UPDATE\_MAX** = `3`

Represents the size of the [ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode) enum.

* * *

enum **SkyMode**: [🔗](#enum-renderingserver-skymode)

[SkyMode](#enum-renderingserver-skymode) **SKY\_MODE\_AUTOMATIC** = `0`

Automatically selects the appropriate process mode based on your sky shader. If your shader uses `TIME` or `POSITION`, this will use [SKY\_MODE\_REALTIME](#class-renderingserver-constant-sky-mode-realtime). If your shader uses any of the `LIGHT_*` variables or any custom uniforms, this uses [SKY\_MODE\_INCREMENTAL](#class-renderingserver-constant-sky-mode-incremental). Otherwise, this defaults to [SKY\_MODE\_QUALITY](#class-renderingserver-constant-sky-mode-quality).

[SkyMode](#enum-renderingserver-skymode) **SKY\_MODE\_QUALITY** = `1`

Uses high quality importance sampling to process the radiance map. In general, this results in much higher quality than [SKY\_MODE\_REALTIME](#class-renderingserver-constant-sky-mode-realtime) but takes much longer to generate. This should not be used if you plan on changing the sky at runtime. If you are finding that the reflection is not blurry enough and is showing sparkles or fireflies, try increasing [ProjectSettings.rendering/reflections/sky\_reflections/ggx\_samples](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-ggx-samples).

[SkyMode](#enum-renderingserver-skymode) **SKY\_MODE\_INCREMENTAL** = `2`

Uses the same high quality importance sampling to process the radiance map as [SKY\_MODE\_QUALITY](#class-renderingserver-constant-sky-mode-quality), but updates over several frames. The number of frames is determined by [ProjectSettings.rendering/reflections/sky\_reflections/roughness\_layers](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-roughness-layers). Use this when you need highest quality radiance maps, but have a sky that updates slowly.

[SkyMode](#enum-renderingserver-skymode) **SKY\_MODE\_REALTIME** = `3`

Uses the fast filtering algorithm to process the radiance map. In general this results in lower quality, but substantially faster run times. If you need better quality, but still need to update the sky every frame, consider turning on [ProjectSettings.rendering/reflections/sky\_reflections/fast\_filter\_high\_quality](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-fast-filter-high-quality).

**Note:** The fast filtering algorithm is limited to 256×256 cubemaps, so [sky\_set\_radiance\_size()](#class-renderingserver-method-sky-set-radiance-size) must be set to `256`. Otherwise, a warning is printed and the overridden radiance size is ignored.

* * *

enum **CompositorEffectFlags**: [🔗](#enum-renderingserver-compositoreffectflags)

[CompositorEffectFlags](#enum-renderingserver-compositoreffectflags) **COMPOSITOR\_EFFECT\_FLAG\_ACCESS\_RESOLVED\_COLOR** = `1`

The rendering effect requires the color buffer to be resolved if MSAA is enabled.

[CompositorEffectFlags](#enum-renderingserver-compositoreffectflags) **COMPOSITOR\_EFFECT\_FLAG\_ACCESS\_RESOLVED\_DEPTH** = `2`

The rendering effect requires the depth buffer to be resolved if MSAA is enabled.

[CompositorEffectFlags](#enum-renderingserver-compositoreffectflags) **COMPOSITOR\_EFFECT\_FLAG\_NEEDS\_MOTION\_VECTORS** = `4`

The rendering effect requires motion vectors to be produced.

[CompositorEffectFlags](#enum-renderingserver-compositoreffectflags) **COMPOSITOR\_EFFECT\_FLAG\_NEEDS\_ROUGHNESS** = `8`

The rendering effect requires normals and roughness g-buffer to be produced (Forward+ only).

[CompositorEffectFlags](#enum-renderingserver-compositoreffectflags) **COMPOSITOR\_EFFECT\_FLAG\_NEEDS\_SEPARATE\_SPECULAR** = `16`

The rendering effect requires specular data to be separated out (Forward+ only).

* * *

enum **CompositorEffectCallbackType**: [🔗](#enum-renderingserver-compositoreffectcallbacktype)

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_PRE\_OPAQUE** = `0`

The callback is called before our opaque rendering pass, but after depth prepass (if applicable).

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_POST\_OPAQUE** = `1`

The callback is called after our opaque rendering pass, but before our sky is rendered.

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_POST\_SKY** = `2`

The callback is called after our sky is rendered, but before our back buffers are created (and if enabled, before subsurface scattering and/or screen space reflections).

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_PRE\_TRANSPARENT** = `3`

The callback is called before our transparent rendering pass, but after our sky is rendered and we've created our back buffers.

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_POST\_TRANSPARENT** = `4`

The callback is called after our transparent rendering pass, but before any built-in post-processing effects and output to our render target.

[CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype) **COMPOSITOR\_EFFECT\_CALLBACK\_TYPE\_ANY** = `-1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **EnvironmentBG**: [🔗](#enum-renderingserver-environmentbg)

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_CLEAR\_COLOR** = `0`

Use the clear color as background.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_COLOR** = `1`

Use a specified color as the background.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_SKY** = `2`

Use a sky resource for the background.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_CANVAS** = `3`

Use a specified canvas layer as the background. This can be useful for instantiating a 2D scene in a 3D world.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_KEEP** = `4`

Do not clear the background, use whatever was rendered last frame as the background.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_CAMERA\_FEED** = `5`

Displays a camera feed in the background.

[EnvironmentBG](#enum-renderingserver-environmentbg) **ENV\_BG\_MAX** = `6`

Represents the size of the [EnvironmentBG](#enum-renderingserver-environmentbg) enum.

* * *

enum **EnvironmentAmbientSource**: [🔗](#enum-renderingserver-environmentambientsource)

[EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) **ENV\_AMBIENT\_SOURCE\_BG** = `0`

Gather ambient light from whichever source is specified as the background.

[EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) **ENV\_AMBIENT\_SOURCE\_DISABLED** = `1`

Disable ambient light.

[EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) **ENV\_AMBIENT\_SOURCE\_COLOR** = `2`

Specify a specific [Color](class_color.md#class-color) for ambient light.

[EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) **ENV\_AMBIENT\_SOURCE\_SKY** = `3`

Gather ambient light from the [Sky](class_sky.md#class-sky) regardless of what the background is.

* * *

enum **EnvironmentReflectionSource**: [🔗](#enum-renderingserver-environmentreflectionsource)

[EnvironmentReflectionSource](#enum-renderingserver-environmentreflectionsource) **ENV\_REFLECTION\_SOURCE\_BG** = `0`

Use the background for reflections.

[EnvironmentReflectionSource](#enum-renderingserver-environmentreflectionsource) **ENV\_REFLECTION\_SOURCE\_DISABLED** = `1`

Disable reflections.

[EnvironmentReflectionSource](#enum-renderingserver-environmentreflectionsource) **ENV\_REFLECTION\_SOURCE\_SKY** = `2`

Use the [Sky](class_sky.md#class-sky) for reflections regardless of what the background is.

* * *

enum **EnvironmentGlowBlendMode**: [🔗](#enum-renderingserver-environmentglowblendmode)

[EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode) **ENV\_GLOW\_BLEND\_MODE\_ADDITIVE** = `0`

Additive glow blending mode. Mostly used for particles, glows (bloom), lens flare, bright sources.

[EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode) **ENV\_GLOW\_BLEND\_MODE\_SCREEN** = `1`

Screen glow blending mode. Increases brightness, used frequently with bloom.

[EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode) **ENV\_GLOW\_BLEND\_MODE\_SOFTLIGHT** = `2`

Soft light glow blending mode. Modifies contrast, exposes shadows and highlights (vivid bloom).

[EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode) **ENV\_GLOW\_BLEND\_MODE\_REPLACE** = `3`

Replace glow blending mode. Replaces all pixels' color by the glow value. This can be used to simulate a full-screen blur effect by tweaking the glow parameters to match the original image's brightness.

[EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode) **ENV\_GLOW\_BLEND\_MODE\_MIX** = `4`

Mixes the glow with the underlying color to avoid increasing brightness as much while still maintaining a glow effect.

* * *

enum **EnvironmentFogMode**: [🔗](#enum-renderingserver-environmentfogmode)

[EnvironmentFogMode](#enum-renderingserver-environmentfogmode) **ENV\_FOG\_MODE\_EXPONENTIAL** = `0`

Use a physically-based fog model defined primarily by fog density.

[EnvironmentFogMode](#enum-renderingserver-environmentfogmode) **ENV\_FOG\_MODE\_DEPTH** = `1`

Use a simple fog model defined by start and end positions and a custom curve. While not physically accurate, this model can be useful when you need more artistic control.

* * *

enum **EnvironmentToneMapper**: [🔗](#enum-renderingserver-environmenttonemapper)

[EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper) **ENV\_TONE\_MAPPER\_LINEAR** = `0`

Does not modify color data, resulting in a linear tonemapping curve which unnaturally clips bright values, causing bright lighting to look blown out. The simplest and fastest tonemapper.

[EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper) **ENV\_TONE\_MAPPER\_REINHARD** = `1`

A simple tonemapping curve that rolls off bright values to prevent clipping. This results in an image that can appear dull and low contrast. Slower than [ENV\_TONE\_MAPPER\_LINEAR](#class-renderingserver-constant-env-tone-mapper-linear).

**Note:** When [Environment.tonemap\_white](class_environment.md#class-environment-property-tonemap-white) is left at the default value of `1.0`, [ENV\_TONE\_MAPPER\_REINHARD](#class-renderingserver-constant-env-tone-mapper-reinhard) produces an identical image to [ENV\_TONE\_MAPPER\_LINEAR](#class-renderingserver-constant-env-tone-mapper-linear).

[EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper) **ENV\_TONE\_MAPPER\_FILMIC** = `2`

Uses a film-like tonemapping curve to prevent clipping of bright values and provide better contrast than [ENV\_TONE\_MAPPER\_REINHARD](#class-renderingserver-constant-env-tone-mapper-reinhard). Slightly slower than [ENV\_TONE\_MAPPER\_REINHARD](#class-renderingserver-constant-env-tone-mapper-reinhard).

[EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper) **ENV\_TONE\_MAPPER\_ACES** = `3`

Uses a high-contrast film-like tonemapping curve and desaturates bright values for a more realistic appearance. Slightly slower than [ENV\_TONE\_MAPPER\_FILMIC](#class-renderingserver-constant-env-tone-mapper-filmic).

**Note:** This tonemapping operator is called "ACES Fitted" in Godot 3.x.

[EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper) **ENV\_TONE\_MAPPER\_AGX** = `4`

Uses a film-like tonemapping curve and desaturates bright values for a more realistic appearance. Better than other tonemappers at maintaining the hue of colors as they become brighter. The slowest tonemapping option.

**Note:** [Environment.tonemap\_white](class_environment.md#class-environment-property-tonemap-white) is fixed at a value of `16.29`, which makes [ENV\_TONE\_MAPPER\_AGX](#class-renderingserver-constant-env-tone-mapper-agx) unsuitable for use with the Mobile rendering method.

* * *

enum **EnvironmentSSRRoughnessQuality**: [🔗](#enum-renderingserver-environmentssrroughnessquality)

[EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality) **ENV\_SSR\_ROUGHNESS\_QUALITY\_DISABLED** = `0`

Lowest quality of roughness filter for screen-space reflections. Rough materials will not have blurrier screen-space reflections compared to smooth (non-rough) materials. This is the fastest option.

[EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality) **ENV\_SSR\_ROUGHNESS\_QUALITY\_LOW** = `1`

Low quality of roughness filter for screen-space reflections.

[EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality) **ENV\_SSR\_ROUGHNESS\_QUALITY\_MEDIUM** = `2`

Medium quality of roughness filter for screen-space reflections.

[EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality) **ENV\_SSR\_ROUGHNESS\_QUALITY\_HIGH** = `3`

High quality of roughness filter for screen-space reflections. This is the slowest option.

* * *

enum **EnvironmentSSAOQuality**: [🔗](#enum-renderingserver-environmentssaoquality)

[EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality) **ENV\_SSAO\_QUALITY\_VERY\_LOW** = `0`

Lowest quality of screen-space ambient occlusion.

[EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality) **ENV\_SSAO\_QUALITY\_LOW** = `1`

Low quality screen-space ambient occlusion.

[EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality) **ENV\_SSAO\_QUALITY\_MEDIUM** = `2`

Medium quality screen-space ambient occlusion.

[EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality) **ENV\_SSAO\_QUALITY\_HIGH** = `3`

High quality screen-space ambient occlusion.

[EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality) **ENV\_SSAO\_QUALITY\_ULTRA** = `4`

Highest quality screen-space ambient occlusion. Uses the adaptive target setting which can be dynamically adjusted to smoothly balance performance and visual quality.

* * *

enum **EnvironmentSSILQuality**: [🔗](#enum-renderingserver-environmentssilquality)

[EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality) **ENV\_SSIL\_QUALITY\_VERY\_LOW** = `0`

Lowest quality of screen-space indirect lighting.

[EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality) **ENV\_SSIL\_QUALITY\_LOW** = `1`

Low quality screen-space indirect lighting.

[EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality) **ENV\_SSIL\_QUALITY\_MEDIUM** = `2`

High quality screen-space indirect lighting.

[EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality) **ENV\_SSIL\_QUALITY\_HIGH** = `3`

High quality screen-space indirect lighting.

[EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality) **ENV\_SSIL\_QUALITY\_ULTRA** = `4`

Highest quality screen-space indirect lighting. Uses the adaptive target setting which can be dynamically adjusted to smoothly balance performance and visual quality.

* * *

enum **EnvironmentSDFGIYScale**: [🔗](#enum-renderingserver-environmentsdfgiyscale)

[EnvironmentSDFGIYScale](#enum-renderingserver-environmentsdfgiyscale) **ENV\_SDFGI\_Y\_SCALE\_50\_PERCENT** = `0`

Use 50% scale for SDFGI on the Y (vertical) axis. SDFGI cells will be twice as short as they are wide. This allows providing increased GI detail and reduced light leaking with thin floors and ceilings. This is usually the best choice for scenes that don't feature much verticality.

[EnvironmentSDFGIYScale](#enum-renderingserver-environmentsdfgiyscale) **ENV\_SDFGI\_Y\_SCALE\_75\_PERCENT** = `1`

Use 75% scale for SDFGI on the Y (vertical) axis. This is a balance between the 50% and 100% SDFGI Y scales.

[EnvironmentSDFGIYScale](#enum-renderingserver-environmentsdfgiyscale) **ENV\_SDFGI\_Y\_SCALE\_100\_PERCENT** = `2`

Use 100% scale for SDFGI on the Y (vertical) axis. SDFGI cells will be as tall as they are wide. This is usually the best choice for highly vertical scenes. The downside is that light leaking may become more noticeable with thin floors and ceilings.

* * *

enum **EnvironmentSDFGIRayCount**: [🔗](#enum-renderingserver-environmentsdfgiraycount)

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_4** = `0`

Throw 4 rays per frame when converging SDFGI. This has the lowest GPU requirements, but creates the most noisy result.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_8** = `1`

Throw 8 rays per frame when converging SDFGI.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_16** = `2`

Throw 16 rays per frame when converging SDFGI.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_32** = `3`

Throw 32 rays per frame when converging SDFGI.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_64** = `4`

Throw 64 rays per frame when converging SDFGI.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_96** = `5`

Throw 96 rays per frame when converging SDFGI. This has high GPU requirements.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_128** = `6`

Throw 128 rays per frame when converging SDFGI. This has very high GPU requirements, but creates the least noisy result.

[EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) **ENV\_SDFGI\_RAY\_COUNT\_MAX** = `7`

Represents the size of the [EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount) enum.

* * *

enum **EnvironmentSDFGIFramesToConverge**: [🔗](#enum-renderingserver-environmentsdfgiframestoconverge)

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_5\_FRAMES** = `0`

Converge SDFGI over 5 frames. This is the most responsive, but creates the most noisy result with a given ray count.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_10\_FRAMES** = `1`

Configure SDFGI to fully converge over 10 frames.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_15\_FRAMES** = `2`

Configure SDFGI to fully converge over 15 frames.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_20\_FRAMES** = `3`

Configure SDFGI to fully converge over 20 frames.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_25\_FRAMES** = `4`

Configure SDFGI to fully converge over 25 frames.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_IN\_30\_FRAMES** = `5`

Configure SDFGI to fully converge over 30 frames. This is the least responsive, but creates the least noisy result with a given ray count.

[EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) **ENV\_SDFGI\_CONVERGE\_MAX** = `6`

Represents the size of the [EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge) enum.

* * *

enum **EnvironmentSDFGIFramesToUpdateLight**: [🔗](#enum-renderingserver-environmentsdfgiframestoupdatelight)

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_IN\_1\_FRAME** = `0`

Update indirect light from dynamic lights in SDFGI over 1 frame. This is the most responsive, but has the highest GPU requirements.

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_IN\_2\_FRAMES** = `1`

Update indirect light from dynamic lights in SDFGI over 2 frames.

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_IN\_4\_FRAMES** = `2`

Update indirect light from dynamic lights in SDFGI over 4 frames.

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_IN\_8\_FRAMES** = `3`

Update indirect light from dynamic lights in SDFGI over 8 frames.

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_IN\_16\_FRAMES** = `4`

Update indirect light from dynamic lights in SDFGI over 16 frames. This is the least responsive, but has the lowest GPU requirements.

[EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) **ENV\_SDFGI\_UPDATE\_LIGHT\_MAX** = `5`

Represents the size of the [EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight) enum.

* * *

enum **SubSurfaceScatteringQuality**: [🔗](#enum-renderingserver-subsurfacescatteringquality)

[SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality) **SUB\_SURFACE\_SCATTERING\_QUALITY\_DISABLED** = `0`

Disables subsurface scattering entirely, even on materials that have [BaseMaterial3D.subsurf\_scatter\_enabled](class_basematerial3d.md#class-basematerial3d-property-subsurf-scatter-enabled) set to `true`. This has the lowest GPU requirements.

[SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality) **SUB\_SURFACE\_SCATTERING\_QUALITY\_LOW** = `1`

Low subsurface scattering quality.

[SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality) **SUB\_SURFACE\_SCATTERING\_QUALITY\_MEDIUM** = `2`

Medium subsurface scattering quality.

[SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality) **SUB\_SURFACE\_SCATTERING\_QUALITY\_HIGH** = `3`

High subsurface scattering quality. This has the highest GPU requirements.

* * *

enum **DOFBokehShape**: [🔗](#enum-renderingserver-dofbokehshape)

[DOFBokehShape](#enum-renderingserver-dofbokehshape) **DOF\_BOKEH\_BOX** = `0`

Calculate the DOF blur using a box filter. The fastest option, but results in obvious lines in blur pattern.

[DOFBokehShape](#enum-renderingserver-dofbokehshape) **DOF\_BOKEH\_HEXAGON** = `1`

Calculates DOF blur using a hexagon shaped filter.

[DOFBokehShape](#enum-renderingserver-dofbokehshape) **DOF\_BOKEH\_CIRCLE** = `2`

Calculates DOF blur using a circle shaped filter. Best quality and most realistic, but slowest. Use only for areas where a lot of performance can be dedicated to post-processing (e.g. cutscenes).

* * *

enum **DOFBlurQuality**: [🔗](#enum-renderingserver-dofblurquality)

[DOFBlurQuality](#enum-renderingserver-dofblurquality) **DOF\_BLUR\_QUALITY\_VERY\_LOW** = `0`

Lowest quality DOF blur. This is the fastest setting, but you may be able to see filtering artifacts.

[DOFBlurQuality](#enum-renderingserver-dofblurquality) **DOF\_BLUR\_QUALITY\_LOW** = `1`

Low quality DOF blur.

[DOFBlurQuality](#enum-renderingserver-dofblurquality) **DOF\_BLUR\_QUALITY\_MEDIUM** = `2`

Medium quality DOF blur.

[DOFBlurQuality](#enum-renderingserver-dofblurquality) **DOF\_BLUR\_QUALITY\_HIGH** = `3`

Highest quality DOF blur. Results in the smoothest looking blur by taking the most samples, but is also significantly slower.

* * *

enum **InstanceType**: [🔗](#enum-renderingserver-instancetype)

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_NONE** = `0`

The instance does not have a type.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_MESH** = `1`

The instance is a mesh.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_MULTIMESH** = `2`

The instance is a multimesh.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_PARTICLES** = `3`

The instance is a particle emitter.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_PARTICLES\_COLLISION** = `4`

The instance is a GPUParticles collision shape.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_LIGHT** = `5`

The instance is a light.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_REFLECTION\_PROBE** = `6`

The instance is a reflection probe.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_DECAL** = `7`

The instance is a decal.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_VOXEL\_GI** = `8`

The instance is a VoxelGI.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_LIGHTMAP** = `9`

The instance is a lightmap.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_OCCLUDER** = `10`

The instance is an occlusion culling occluder.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_VISIBLITY\_NOTIFIER** = `11`

The instance is a visible on-screen notifier.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_FOG\_VOLUME** = `12`

The instance is a fog volume.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_MAX** = `13`

Represents the size of the [InstanceType](#enum-renderingserver-instancetype) enum.

[InstanceType](#enum-renderingserver-instancetype) **INSTANCE\_GEOMETRY\_MASK** = `14`

A combination of the flags of geometry instances (mesh, multimesh, immediate and particles).

* * *

enum **InstanceFlags**: [🔗](#enum-renderingserver-instanceflags)

[InstanceFlags](#enum-renderingserver-instanceflags) **INSTANCE\_FLAG\_USE\_BAKED\_LIGHT** = `0`

Allows the instance to be used in baked lighting.

[InstanceFlags](#enum-renderingserver-instanceflags) **INSTANCE\_FLAG\_USE\_DYNAMIC\_GI** = `1`

Allows the instance to be used with dynamic global illumination.

[InstanceFlags](#enum-renderingserver-instanceflags) **INSTANCE\_FLAG\_DRAW\_NEXT\_FRAME\_IF\_VISIBLE** = `2`

When set, manually requests to draw geometry on next frame.

[InstanceFlags](#enum-renderingserver-instanceflags) **INSTANCE\_FLAG\_IGNORE\_OCCLUSION\_CULLING** = `3`

Always draw, even if the instance would be culled by occlusion culling. Does not affect view frustum culling.

[InstanceFlags](#enum-renderingserver-instanceflags) **INSTANCE\_FLAG\_MAX** = `4`

Represents the size of the [InstanceFlags](#enum-renderingserver-instanceflags) enum.

* * *

enum **ShadowCastingSetting**: [🔗](#enum-renderingserver-shadowcastingsetting)

[ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_OFF** = `0`

Disable shadows from this instance.

[ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_ON** = `1`

Cast shadows from this instance.

[ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_DOUBLE\_SIDED** = `2`

Disable backface culling when rendering the shadow of the object. This is slightly slower but may result in more correct shadows.

[ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting) **SHADOW\_CASTING\_SETTING\_SHADOWS\_ONLY** = `3`

Only render the shadows from the object. The object itself will not be drawn.

* * *

enum **VisibilityRangeFadeMode**: [🔗](#enum-renderingserver-visibilityrangefademode)

[VisibilityRangeFadeMode](#enum-renderingserver-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_DISABLED** = `0`

Disable visibility range fading for the given instance.

[VisibilityRangeFadeMode](#enum-renderingserver-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_SELF** = `1`

Fade-out the given instance when it approaches its visibility range limits.

[VisibilityRangeFadeMode](#enum-renderingserver-visibilityrangefademode) **VISIBILITY\_RANGE\_FADE\_DEPENDENCIES** = `2`

Fade-in the given instance's dependencies when reaching its visibility range limits.

* * *

enum **BakeChannels**: [🔗](#enum-renderingserver-bakechannels)

[BakeChannels](#enum-renderingserver-bakechannels) **BAKE\_CHANNEL\_ALBEDO\_ALPHA** = `0`

Index of [Image](class_image.md#class-image) in array of [Image](class_image.md#class-image) s returned by [bake\_render\_uv2()](#class-renderingserver-method-bake-render-uv2). Image uses [Image.FORMAT\_RGBA8](class_image.md#class-image-constant-format-rgba8) and contains albedo color in the `.rgb` channels and alpha in the `.a` channel.

[BakeChannels](#enum-renderingserver-bakechannels) **BAKE\_CHANNEL\_NORMAL** = `1`

Index of [Image](class_image.md#class-image) in array of [Image](class_image.md#class-image) s returned by [bake\_render\_uv2()](#class-renderingserver-method-bake-render-uv2). Image uses [Image.FORMAT\_RGBA8](class_image.md#class-image-constant-format-rgba8) and contains the per-pixel normal of the object in the `.rgb` channels and nothing in the `.a` channel. The per-pixel normal is encoded as `normal * 0.5 + 0.5`.

[BakeChannels](#enum-renderingserver-bakechannels) **BAKE\_CHANNEL\_ORM** = `2`

Index of [Image](class_image.md#class-image) in array of [Image](class_image.md#class-image) s returned by [bake\_render\_uv2()](#class-renderingserver-method-bake-render-uv2). Image uses [Image.FORMAT\_RGBA8](class_image.md#class-image-constant-format-rgba8) and contains ambient occlusion (from material and decals only) in the `.r` channel, roughness in the `.g` channel, metallic in the `.b` channel and sub surface scattering amount in the `.a` channel.

[BakeChannels](#enum-renderingserver-bakechannels) **BAKE\_CHANNEL\_EMISSION** = `3`

Index of [Image](class_image.md#class-image) in array of [Image](class_image.md#class-image) s returned by [bake\_render\_uv2()](#class-renderingserver-method-bake-render-uv2). Image uses [Image.FORMAT\_RGBAH](class_image.md#class-image-constant-format-rgbah) and contains emission color in the `.rgb` channels and nothing in the `.a` channel.

* * *

enum **CanvasTextureChannel**: [🔗](#enum-renderingserver-canvastexturechannel)

[CanvasTextureChannel](#enum-renderingserver-canvastexturechannel) **CANVAS\_TEXTURE\_CHANNEL\_DIFFUSE** = `0`

Diffuse canvas texture ( [CanvasTexture.diffuse\_texture](class_canvastexture.md#class-canvastexture-property-diffuse-texture)).

[CanvasTextureChannel](#enum-renderingserver-canvastexturechannel) **CANVAS\_TEXTURE\_CHANNEL\_NORMAL** = `1`

Normal map canvas texture ( [CanvasTexture.normal\_texture](class_canvastexture.md#class-canvastexture-property-normal-texture)).

[CanvasTextureChannel](#enum-renderingserver-canvastexturechannel) **CANVAS\_TEXTURE\_CHANNEL\_SPECULAR** = `2`

Specular map canvas texture ( [CanvasTexture.specular\_texture](class_canvastexture.md#class-canvastexture-property-specular-texture)).

* * *

enum **NinePatchAxisMode**: [🔗](#enum-renderingserver-ninepatchaxismode)

[NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) **NINE\_PATCH\_STRETCH** = `0`

The nine patch gets stretched where needed.

[NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) **NINE\_PATCH\_TILE** = `1`

The nine patch gets filled with tiles where needed.

[NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) **NINE\_PATCH\_TILE\_FIT** = `2`

The nine patch gets filled with tiles where needed and stretches them a bit if needed.

* * *

enum **CanvasItemTextureFilter**: [🔗](#enum-renderingserver-canvasitemtexturefilter)

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_DEFAULT** = `0`

Uses the default filter mode for this [Viewport](class_viewport.md#class-viewport).

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST** = `1`

The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR** = `2`

The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS** = `3`

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look pixelated from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS** = `4`

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look smooth from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC** = `5`

The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS](#class-renderingserver-constant-canvas-item-texture-filter-nearest-with-mipmaps) is usually more appropriate in this case.

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC** = `6`

The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS](#class-renderingserver-constant-canvas-item-texture-filter-linear-with-mipmaps) is usually more appropriate in this case.

[CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) **CANVAS\_ITEM\_TEXTURE\_FILTER\_MAX** = `7`

Max value for [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter) enum.

* * *

enum **CanvasItemTextureRepeat**: [🔗](#enum-renderingserver-canvasitemtexturerepeat)

[CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) **CANVAS\_ITEM\_TEXTURE\_REPEAT\_DEFAULT** = `0`

Uses the default repeat mode for this [Viewport](class_viewport.md#class-viewport).

[CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) **CANVAS\_ITEM\_TEXTURE\_REPEAT\_DISABLED** = `1`

Disables textures repeating. Instead, when reading UVs outside the 0-1 range, the value will be clamped to the edge of the texture, resulting in a stretched out look at the borders of the texture.

[CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) **CANVAS\_ITEM\_TEXTURE\_REPEAT\_ENABLED** = `2`

Enables the texture to repeat when UV coordinates are outside the 0-1 range. If using one of the linear filtering modes, this can result in artifacts at the edges of a texture when the sampler filters across the edges of the texture.

[CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) **CANVAS\_ITEM\_TEXTURE\_REPEAT\_MIRROR** = `3`

Flip the texture when repeating so that the edge lines up instead of abruptly changing.

[CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) **CANVAS\_ITEM\_TEXTURE\_REPEAT\_MAX** = `4`

Max value for [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat) enum.

* * *

enum **CanvasGroupMode**: [🔗](#enum-renderingserver-canvasgroupmode)

[CanvasGroupMode](#enum-renderingserver-canvasgroupmode) **CANVAS\_GROUP\_MODE\_DISABLED** = `0`

Child draws over parent and is not clipped.

[CanvasGroupMode](#enum-renderingserver-canvasgroupmode) **CANVAS\_GROUP\_MODE\_CLIP\_ONLY** = `1`

Parent is used for the purposes of clipping only. Child is clipped to the parent's visible area, parent is not drawn.

[CanvasGroupMode](#enum-renderingserver-canvasgroupmode) **CANVAS\_GROUP\_MODE\_CLIP\_AND\_DRAW** = `2`

Parent is used for clipping child, but parent is also drawn underneath child as normal before clipping child to its visible area.

[CanvasGroupMode](#enum-renderingserver-canvasgroupmode) **CANVAS\_GROUP\_MODE\_TRANSPARENT** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **CanvasLightMode**: [🔗](#enum-renderingserver-canvaslightmode)

[CanvasLightMode](#enum-renderingserver-canvaslightmode) **CANVAS\_LIGHT\_MODE\_POINT** = `0`

2D point light (see [PointLight2D](class_pointlight2d.md#class-pointlight2d)).

[CanvasLightMode](#enum-renderingserver-canvaslightmode) **CANVAS\_LIGHT\_MODE\_DIRECTIONAL** = `1`

2D directional (sun/moon) light (see [DirectionalLight2D](class_directionallight2d.md#class-directionallight2d)).

* * *

enum **CanvasLightBlendMode**: [🔗](#enum-renderingserver-canvaslightblendmode)

[CanvasLightBlendMode](#enum-renderingserver-canvaslightblendmode) **CANVAS\_LIGHT\_BLEND\_MODE\_ADD** = `0`

Adds light color additive to the canvas.

[CanvasLightBlendMode](#enum-renderingserver-canvaslightblendmode) **CANVAS\_LIGHT\_BLEND\_MODE\_SUB** = `1`

Adds light color subtractive to the canvas.

[CanvasLightBlendMode](#enum-renderingserver-canvaslightblendmode) **CANVAS\_LIGHT\_BLEND\_MODE\_MIX** = `2`

The light adds color depending on transparency.

* * *

enum **CanvasLightShadowFilter**: [🔗](#enum-renderingserver-canvaslightshadowfilter)

[CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter) **CANVAS\_LIGHT\_FILTER\_NONE** = `0`

Do not apply a filter to canvas light shadows.

[CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter) **CANVAS\_LIGHT\_FILTER\_PCF5** = `1`

Use PCF5 filtering to filter canvas light shadows.

[CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter) **CANVAS\_LIGHT\_FILTER\_PCF13** = `2`

Use PCF13 filtering to filter canvas light shadows.

[CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter) **CANVAS\_LIGHT\_FILTER\_MAX** = `3`

Max value of the [CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter) enum.

* * *

enum **CanvasOccluderPolygonCullMode**: [🔗](#enum-renderingserver-canvasoccluderpolygoncullmode)

[CanvasOccluderPolygonCullMode](#enum-renderingserver-canvasoccluderpolygoncullmode) **CANVAS\_OCCLUDER\_POLYGON\_CULL\_DISABLED** = `0`

Culling of the canvas occluder is disabled.

[CanvasOccluderPolygonCullMode](#enum-renderingserver-canvasoccluderpolygoncullmode) **CANVAS\_OCCLUDER\_POLYGON\_CULL\_CLOCKWISE** = `1`

Culling of the canvas occluder is clockwise.

[CanvasOccluderPolygonCullMode](#enum-renderingserver-canvasoccluderpolygoncullmode) **CANVAS\_OCCLUDER\_POLYGON\_CULL\_COUNTER\_CLOCKWISE** = `2`

Culling of the canvas occluder is counterclockwise.

* * *

enum **GlobalShaderParameterType**: [🔗](#enum-renderingserver-globalshaderparametertype)

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_BOOL** = `0`

Boolean global shader parameter ( `global uniform bool ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_BVEC2** = `1`

2-dimensional boolean vector global shader parameter ( `global uniform bvec2 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_BVEC3** = `2`

3-dimensional boolean vector global shader parameter ( `global uniform bvec3 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_BVEC4** = `3`

4-dimensional boolean vector global shader parameter ( `global uniform bvec4 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_INT** = `4`

Integer global shader parameter ( `global uniform int ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_IVEC2** = `5`

2-dimensional integer vector global shader parameter ( `global uniform ivec2 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_IVEC3** = `6`

3-dimensional integer vector global shader parameter ( `global uniform ivec3 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_IVEC4** = `7`

4-dimensional integer vector global shader parameter ( `global uniform ivec4 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_RECT2I** = `8`

2-dimensional integer rectangle global shader parameter ( `global uniform ivec4 ...`). Equivalent to [GLOBAL\_VAR\_TYPE\_IVEC4](#class-renderingserver-constant-global-var-type-ivec4) in shader code, but exposed as a [Rect2i](class_rect2i.md#class-rect2i) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_UINT** = `9`

Unsigned integer global shader parameter ( `global uniform uint ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_UVEC2** = `10`

2-dimensional unsigned integer vector global shader parameter ( `global uniform uvec2 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_UVEC3** = `11`

3-dimensional unsigned integer vector global shader parameter ( `global uniform uvec3 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_UVEC4** = `12`

4-dimensional unsigned integer vector global shader parameter ( `global uniform uvec4 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_FLOAT** = `13`

Single-precision floating-point global shader parameter ( `global uniform float ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_VEC2** = `14`

2-dimensional floating-point vector global shader parameter ( `global uniform vec2 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_VEC3** = `15`

3-dimensional floating-point vector global shader parameter ( `global uniform vec3 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_VEC4** = `16`

4-dimensional floating-point vector global shader parameter ( `global uniform vec4 ...`).

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_COLOR** = `17`

Color global shader parameter ( `global uniform vec4 ...`). Equivalent to [GLOBAL\_VAR\_TYPE\_VEC4](#class-renderingserver-constant-global-var-type-vec4) in shader code, but exposed as a [Color](class_color.md#class-color) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_RECT2** = `18`

2-dimensional floating-point rectangle global shader parameter ( `global uniform vec4 ...`). Equivalent to [GLOBAL\_VAR\_TYPE\_VEC4](#class-renderingserver-constant-global-var-type-vec4) in shader code, but exposed as a [Rect2](class_rect2.md#class-rect2) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_MAT2** = `19`

2×2 matrix global shader parameter ( `global uniform mat2 ...`). Exposed as a [PackedInt32Array](class_packedint32array.md#class-packedint32array) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_MAT3** = `20`

3×3 matrix global shader parameter ( `global uniform mat3 ...`). Exposed as a [Basis](class_basis.md#class-basis) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_MAT4** = `21`

4×4 matrix global shader parameter ( `global uniform mat4 ...`). Exposed as a [Projection](class_projection.md#class-projection) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_TRANSFORM\_2D** = `22`

2-dimensional transform global shader parameter ( `global uniform mat2x3 ...`). Exposed as a [Transform2D](class_transform2d.md#class-transform2d) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_TRANSFORM** = `23`

3-dimensional transform global shader parameter ( `global uniform mat3x4 ...`). Exposed as a [Transform3D](class_transform3d.md#class-transform3d) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_SAMPLER2D** = `24`

2D sampler global shader parameter ( `global uniform sampler2D ...`). Exposed as a [Texture2D](class_texture2d.md#class-texture2d) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_SAMPLER2DARRAY** = `25`

2D sampler array global shader parameter ( `global uniform sampler2DArray ...`). Exposed as a [Texture2DArray](class_texture2darray.md#class-texture2darray) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_SAMPLER3D** = `26`

3D sampler global shader parameter ( `global uniform sampler3D ...`). Exposed as a [Texture3D](class_texture3d.md#class-texture3d) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_SAMPLERCUBE** = `27`

Cubemap sampler global shader parameter ( `global uniform samplerCube ...`). Exposed as a [Cubemap](class_cubemap.md#class-cubemap) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_SAMPLEREXT** = `28`

External sampler global shader parameter ( `global uniform samplerExternalOES ...`). Exposed as an [ExternalTexture](class_externaltexture.md#class-externaltexture) in the editor UI.

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **GLOBAL\_VAR\_TYPE\_MAX** = `29`

Represents the size of the [GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) enum.

* * *

enum **RenderingInfo**: [🔗](#enum-renderingserver-renderinginfo)

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_TOTAL\_OBJECTS\_IN\_FRAME** = `0`

Number of objects rendered in the current 3D scene. This varies depending on camera position and rotation.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_TOTAL\_PRIMITIVES\_IN\_FRAME** = `1`

Number of points, lines, or triangles rendered in the current 3D scene. This varies depending on camera position and rotation.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_TOTAL\_DRAW\_CALLS\_IN\_FRAME** = `2`

Number of draw calls performed to render in the current 3D scene. This varies depending on camera position and rotation.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_TEXTURE\_MEM\_USED** = `3`

Texture memory used (in bytes).

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_BUFFER\_MEM\_USED** = `4`

Buffer memory used (in bytes). This includes vertex data, uniform buffers, and many miscellaneous buffer types used internally.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_VIDEO\_MEM\_USED** = `5`

Video memory used (in bytes). When using the Forward+ or Mobile renderers, this is always greater than the sum of [RENDERING\_INFO\_TEXTURE\_MEM\_USED](#class-renderingserver-constant-rendering-info-texture-mem-used) and [RENDERING\_INFO\_BUFFER\_MEM\_USED](#class-renderingserver-constant-rendering-info-buffer-mem-used), since there is miscellaneous data not accounted for by those two metrics. When using the Compatibility renderer, this is equal to the sum of [RENDERING\_INFO\_TEXTURE\_MEM\_USED](#class-renderingserver-constant-rendering-info-texture-mem-used) and [RENDERING\_INFO\_BUFFER\_MEM\_USED](#class-renderingserver-constant-rendering-info-buffer-mem-used).

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_PIPELINE\_COMPILATIONS\_CANVAS** = `6`

Number of pipeline compilations that were triggered by the 2D canvas renderer.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_PIPELINE\_COMPILATIONS\_MESH** = `7`

Number of pipeline compilations that were triggered by loading meshes. These compilations will show up as longer loading times the first time a user runs the game and the pipeline is required.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_PIPELINE\_COMPILATIONS\_SURFACE** = `8`

Number of pipeline compilations that were triggered by building the surface cache before rendering the scene. These compilations will show up as a stutter when loading a scene the first time a user runs the game and the pipeline is required.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_PIPELINE\_COMPILATIONS\_DRAW** = `9`

Number of pipeline compilations that were triggered while drawing the scene. These compilations will show up as stutters during gameplay the first time a user runs the game and the pipeline is required.

[RenderingInfo](#enum-renderingserver-renderinginfo) **RENDERING\_INFO\_PIPELINE\_COMPILATIONS\_SPECIALIZATION** = `10`

Number of pipeline compilations that were triggered to optimize the current scene. These compilations are done in the background and should not cause any stutters whatsoever.

* * *

enum **PipelineSource**: [🔗](#enum-renderingserver-pipelinesource)

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_CANVAS** = `0`

Pipeline compilation that was triggered by the 2D canvas renderer.

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_MESH** = `1`

Pipeline compilation that was triggered by loading a mesh.

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_SURFACE** = `2`

Pipeline compilation that was triggered by building the surface cache before rendering the scene.

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_DRAW** = `3`

Pipeline compilation that was triggered while drawing the scene.

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_SPECIALIZATION** = `4`

Pipeline compilation that was triggered to optimize the current scene.

[PipelineSource](#enum-renderingserver-pipelinesource) **PIPELINE\_SOURCE\_MAX** = `5`

Represents the size of the [PipelineSource](#enum-renderingserver-pipelinesource) enum.

* * *

enum **Features**: [🔗](#enum-renderingserver-features)

[Features](#enum-renderingserver-features) **FEATURE\_SHADERS** = `0`

**Deprecated:** This constant has not been used since Godot 3.0.

[Features](#enum-renderingserver-features) **FEATURE\_MULTITHREADED** = `1`

**Deprecated:** This constant has not been used since Godot 3.0.

* * *

## Constants

**NO\_INDEX\_ARRAY** = `-1` [🔗](#class-renderingserver-constant-no-index-array)

Marks an error that shows that the index array is empty.

**ARRAY\_WEIGHTS\_SIZE** = `4` [🔗](#class-renderingserver-constant-array-weights-size)

Number of weights/bones per vertex.

**CANVAS\_ITEM\_Z\_MIN** = `-4096` [🔗](#class-renderingserver-constant-canvas-item-z-min)

The minimum Z-layer for canvas items.

**CANVAS\_ITEM\_Z\_MAX** = `4096` [🔗](#class-renderingserver-constant-canvas-item-z-max)

The maximum Z-layer for canvas items.

**CANVAS\_LAYER\_MIN** = `-2147483648` [🔗](#class-renderingserver-constant-canvas-layer-min)

The minimum canvas layer.

**CANVAS\_LAYER\_MAX** = `2147483647` [🔗](#class-renderingserver-constant-canvas-layer-max)

The maximum canvas layer.

**MAX\_GLOW\_LEVELS** = `7` [🔗](#class-renderingserver-constant-max-glow-levels)

The maximum number of glow levels that can be used with the glow post-processing effect.

**MAX\_CURSORS** = `8` [🔗](#class-renderingserver-constant-max-cursors)

**Deprecated:** This constant is not used by the engine.

**MAX\_2D\_DIRECTIONAL\_LIGHTS** = `8` [🔗](#class-renderingserver-constant-max-2d-directional-lights)

The maximum number of directional lights that can be rendered at a given time in 2D.

**MAX\_MESH\_SURFACES** = `256` [🔗](#class-renderingserver-constant-max-mesh-surfaces)

The maximum number of surfaces a mesh can have.

**MATERIAL\_RENDER\_PRIORITY\_MIN** = `-128` [🔗](#class-renderingserver-constant-material-render-priority-min)

The minimum renderpriority of all materials.

**MATERIAL\_RENDER\_PRIORITY\_MAX** = `127` [🔗](#class-renderingserver-constant-material-render-priority-max)

The maximum renderpriority of all materials.

**ARRAY\_CUSTOM\_COUNT** = `4` [🔗](#class-renderingserver-constant-array-custom-count)

The number of custom data arrays available ( [ARRAY\_CUSTOM0](#class-renderingserver-constant-array-custom0), [ARRAY\_CUSTOM1](#class-renderingserver-constant-array-custom1), [ARRAY\_CUSTOM2](#class-renderingserver-constant-array-custom2), [ARRAY\_CUSTOM3](#class-renderingserver-constant-array-custom3)).

**PARTICLES\_EMIT\_FLAG\_POSITION** = `1` [🔗](#class-renderingserver-constant-particles-emit-flag-position)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**PARTICLES\_EMIT\_FLAG\_ROTATION\_SCALE** = `2` [🔗](#class-renderingserver-constant-particles-emit-flag-rotation-scale)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**PARTICLES\_EMIT\_FLAG\_VELOCITY** = `4` [🔗](#class-renderingserver-constant-particles-emit-flag-velocity)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**PARTICLES\_EMIT\_FLAG\_COLOR** = `8` [🔗](#class-renderingserver-constant-particles-emit-flag-color)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

**PARTICLES\_EMIT\_FLAG\_CUSTOM** = `16` [🔗](#class-renderingserver-constant-particles-emit-flag-custom)

There is currently no description for this constant. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **render\_loop\_enabled** [🔗](#class-renderingserver-property-render-loop-enabled)

- void **set\_render\_loop\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_render\_loop\_enabled**()


If `false`, disables rendering completely, but the engine logic is still being processed. You can call [force\_draw()](#class-renderingserver-method-force-draw) to draw a frame even with rendering disabled.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **bake\_render\_uv2**(base: [RID](class_rid.md#class-rid), material\_overrides: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], image\_size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-renderingserver-method-bake-render-uv2)

Bakes the material data of the Mesh passed in the `base` parameter with optional `material_overrides` to a set of [Image](class_image.md#class-image) s of size `image_size`. Returns an array of [Image](class_image.md#class-image) s containing material properties as specified in [BakeChannels](#enum-renderingserver-bakechannels).

* * *

void **call\_on\_render\_thread**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingserver-method-call-on-render-thread)

As the RenderingServer actual logic may run on a separate thread, accessing its internals from the main (or any other) thread will result in errors. To make it easier to run code that can safely access the rendering internals (such as [RenderingDevice](class_renderingdevice.md#class-renderingdevice) and similar RD classes), push a callable via this function so it will be executed on the render thread.

* * *

[RID](class_rid.md#class-rid) **camera\_attributes\_create**() [🔗](#class-renderingserver-method-camera-attributes-create)

Creates a camera attributes object and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `camera_attributes_` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [CameraAttributes](class_cameraattributes.md#class-cameraattributes).

* * *

void **camera\_attributes\_set\_auto\_exposure**(camera\_attributes: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), min\_sensitivity: [float](class_float.md#class-float), max\_sensitivity: [float](class_float.md#class-float), speed: [float](class_float.md#class-float), scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-attributes-set-auto-exposure)

Sets the parameters to use with the auto-exposure effect. These parameters take on the same meaning as their counterparts in [CameraAttributes](class_cameraattributes.md#class-cameraattributes) and [CameraAttributesPractical](class_cameraattributespractical.md#class-cameraattributespractical).

* * *

void **camera\_attributes\_set\_dof\_blur**(camera\_attributes: [RID](class_rid.md#class-rid), far\_enable: [bool](class_bool.md#class-bool), far\_distance: [float](class_float.md#class-float), far\_transition: [float](class_float.md#class-float), near\_enable: [bool](class_bool.md#class-bool), near\_distance: [float](class_float.md#class-float), near\_transition: [float](class_float.md#class-float), amount: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-attributes-set-dof-blur)

Sets the parameters to use with the DOF blur effect. These parameters take on the same meaning as their counterparts in [CameraAttributesPractical](class_cameraattributespractical.md#class-cameraattributespractical).

* * *

void **camera\_attributes\_set\_dof\_blur\_bokeh\_shape**(shape: [DOFBokehShape](#enum-renderingserver-dofbokehshape)) [🔗](#class-renderingserver-method-camera-attributes-set-dof-blur-bokeh-shape)

Sets the shape of the DOF bokeh pattern to `shape`. Different shapes may be used to achieve artistic effect, or to meet performance targets.

* * *

void **camera\_attributes\_set\_dof\_blur\_quality**(quality: [DOFBlurQuality](#enum-renderingserver-dofblurquality), use\_jitter: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-camera-attributes-set-dof-blur-quality)

Sets the quality level of the DOF blur effect to `quality`. `use_jitter` can be used to jitter samples taken during the blur pass to hide artifacts at the cost of looking more fuzzy.

* * *

void **camera\_attributes\_set\_exposure**(camera\_attributes: [RID](class_rid.md#class-rid), multiplier: [float](class_float.md#class-float), normalization: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-attributes-set-exposure)

Sets the exposure values that will be used by the renderers. The normalization amount is used to bake a given Exposure Value (EV) into rendering calculations to reduce the dynamic range of the scene.

The normalization factor can be calculated from exposure value (EV100) as follows:

```
func get_exposure_normalization(ev100: float):
    return 1.0 / (pow(2.0, ev100) * 1.2)

```

The exposure value can be calculated from aperture (in f-stops), shutter speed (in seconds), and sensitivity (in ISO) as follows:

```
func get_exposure(aperture: float, shutter_speed: float, sensitivity: float):
    return log((aperture * aperture) / shutter_speed * (100.0 / sensitivity)) / log(2)

```

* * *

[RID](class_rid.md#class-rid) **camera\_create**() [🔗](#class-renderingserver-method-camera-create)

Creates a 3D camera and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `camera_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [Camera3D](class_camera3d.md#class-camera3d).

* * *

void **camera\_set\_camera\_attributes**(camera: [RID](class_rid.md#class-rid), effects: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-camera-set-camera-attributes)

Sets the camera\_attributes created with [camera\_attributes\_create()](#class-renderingserver-method-camera-attributes-create) to the given camera.

* * *

void **camera\_set\_compositor**(camera: [RID](class_rid.md#class-rid), compositor: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-camera-set-compositor)

Sets the compositor used by this camera. Equivalent to [Camera3D.compositor](class_camera3d.md#class-camera3d-property-compositor).

* * *

void **camera\_set\_cull\_mask**(camera: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-camera-set-cull-mask)

Sets the cull mask associated with this camera. The cull mask describes which 3D layers are rendered by this camera. Equivalent to [Camera3D.cull\_mask](class_camera3d.md#class-camera3d-property-cull-mask).

* * *

void **camera\_set\_environment**(camera: [RID](class_rid.md#class-rid), env: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-camera-set-environment)

Sets the environment used by this camera. Equivalent to [Camera3D.environment](class_camera3d.md#class-camera3d-property-environment).

* * *

void **camera\_set\_frustum**(camera: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-set-frustum)

Sets camera to use frustum projection. This mode allows adjusting the `offset` argument to create "tilted frustum" effects.

* * *

void **camera\_set\_orthogonal**(camera: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-set-orthogonal)

Sets camera to use orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.

* * *

void **camera\_set\_perspective**(camera: [RID](class_rid.md#class-rid), fovy\_degrees: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-camera-set-perspective)

Sets camera to use perspective projection. Objects on the screen becomes smaller when they are far away.

* * *

void **camera\_set\_transform**(camera: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-renderingserver-method-camera-set-transform)

Sets [Transform3D](class_transform3d.md#class-transform3d) of camera.

* * *

void **camera\_set\_use\_vertical\_aspect**(camera: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-camera-set-use-vertical-aspect)

If `true`, preserves the horizontal aspect ratio which is equivalent to [Camera3D.KEEP\_WIDTH](class_camera3d.md#class-camera3d-constant-keep-width). If `false`, preserves the vertical aspect ratio which is equivalent to [Camera3D.KEEP\_HEIGHT](class_camera3d.md#class-camera3d-constant-keep-height).

* * *

[RID](class_rid.md#class-rid) **canvas\_create**() [🔗](#class-renderingserver-method-canvas-create)

Creates a canvas and returns the assigned [RID](class_rid.md#class-rid). It can be accessed with the RID that is returned. This RID will be used in all `canvas_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

Canvas has no [Resource](class_resource.md#class-resource) or [Node](class_node.md#class-node) equivalent.

* * *

void **canvas\_item\_add\_animation\_slice**(item: [RID](class_rid.md#class-rid), animation\_length: [float](class_float.md#class-float), slice\_begin: [float](class_float.md#class-float), slice\_end: [float](class_float.md#class-float), offset: [float](class_float.md#class-float) = 0.0) [🔗](#class-renderingserver-method-canvas-item-add-animation-slice)

Subsequent drawing commands will be ignored unless they fall within the specified animation slice. This is a faster way to implement animations that loop on background rather than redrawing constantly.

* * *

void **canvas\_item\_add\_circle**(item: [RID](class_rid.md#class-rid), pos: [Vector2](class_vector2.md#class-vector2), radius: [float](class_float.md#class-float), color: [Color](class_color.md#class-color), antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-circle)

Draws a circle on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_circle()](class_canvasitem.md#class-canvasitem-method-draw-circle).

* * *

void **canvas\_item\_add\_clip\_ignore**(item: [RID](class_rid.md#class-rid), ignore: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-add-clip-ignore)

If `ignore` is `true`, ignore clipping on items drawn with this canvas item until this is called again with `ignore` set to `false`.

* * *

void **canvas\_item\_add\_lcd\_texture\_rect\_region**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-item-add-lcd-texture-rect-region)

See also [CanvasItem.draw\_lcd\_texture\_rect\_region()](class_canvasitem.md#class-canvasitem-method-draw-lcd-texture-rect-region).

* * *

void **canvas\_item\_add\_line**(item: [RID](class_rid.md#class-rid), from: [Vector2](class_vector2.md#class-vector2), to: [Vector2](class_vector2.md#class-vector2), color: [Color](class_color.md#class-color), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-line)

Draws a line on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_line()](class_canvasitem.md#class-canvasitem-method-draw-line).

* * *

void **canvas\_item\_add\_mesh**(item: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), texture: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-renderingserver-method-canvas-item-add-mesh)

Draws a mesh created with [mesh\_create()](#class-renderingserver-method-mesh-create) with given `transform`, `modulate` color, and `texture`. This is used internally by [MeshInstance2D](class_meshinstance2d.md#class-meshinstance2d).

* * *

void **canvas\_item\_add\_msdf\_texture\_rect\_region**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), outline\_size: [int](class_int.md#class-int) = 0, px\_range: [float](class_float.md#class-float) = 1.0, scale: [float](class_float.md#class-float) = 1.0) [🔗](#class-renderingserver-method-canvas-item-add-msdf-texture-rect-region)

See also [CanvasItem.draw\_msdf\_texture\_rect\_region()](class_canvasitem.md#class-canvasitem-method-draw-msdf-texture-rect-region).

* * *

void **canvas\_item\_add\_multiline**(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-multiline)

Draws a 2D multiline on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_multiline()](class_canvasitem.md#class-canvasitem-method-draw-multiline) and [CanvasItem.draw\_multiline\_colors()](class_canvasitem.md#class-canvasitem-method-draw-multiline-colors).

* * *

void **canvas\_item\_add\_multimesh**(item: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-renderingserver-method-canvas-item-add-multimesh)

Draws a 2D [MultiMesh](class_multimesh.md#class-multimesh) on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_multimesh()](class_canvasitem.md#class-canvasitem-method-draw-multimesh).

* * *

void **canvas\_item\_add\_nine\_patch**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), source: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), topleft: [Vector2](class_vector2.md#class-vector2), bottomright: [Vector2](class_vector2.md#class-vector2), x\_axis\_mode: [NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) = 0, y\_axis\_mode: [NinePatchAxisMode](#enum-renderingserver-ninepatchaxismode) = 0, draw\_center: [bool](class_bool.md#class-bool) = true, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1)) [🔗](#class-renderingserver-method-canvas-item-add-nine-patch)

Draws a nine-patch rectangle on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid).

* * *

void **canvas\_item\_add\_particles**(item: [RID](class_rid.md#class-rid), particles: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-add-particles)

Draws particles on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid).

* * *

void **canvas\_item\_add\_polygon**(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), texture: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-renderingserver-method-canvas-item-add-polygon)

Draws a 2D polygon on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). If you need more flexibility (such as being able to use bones), use [canvas\_item\_add\_triangle\_array()](#class-renderingserver-method-canvas-item-add-triangle-array) instead. See also [CanvasItem.draw\_polygon()](class_canvasitem.md#class-canvasitem-method-draw-polygon).

**Note:** If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with [Geometry2D.triangulate\_polygon()](class_geometry2d.md#class-geometry2d-method-triangulate-polygon) and using [CanvasItem.draw\_mesh()](class_canvasitem.md#class-canvasitem-method-draw-mesh), [CanvasItem.draw\_multimesh()](class_canvasitem.md#class-canvasitem-method-draw-multimesh), or [canvas\_item\_add\_triangle\_array()](#class-renderingserver-method-canvas-item-add-triangle-array).

* * *

void **canvas\_item\_add\_polyline**(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), width: [float](class_float.md#class-float) = -1.0, antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-polyline)

Draws a 2D polyline on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_polyline()](class_canvasitem.md#class-canvasitem-method-draw-polyline) and [CanvasItem.draw\_polyline\_colors()](class_canvasitem.md#class-canvasitem-method-draw-polyline-colors).

* * *

void **canvas\_item\_add\_primitive**(item: [RID](class_rid.md#class-rid), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-add-primitive)

Draws a 2D primitive on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_primitive()](class_canvasitem.md#class-canvasitem-method-draw-primitive).

* * *

void **canvas\_item\_add\_rect**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), color: [Color](class_color.md#class-color), antialiased: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-rect)

Draws a rectangle on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_rect()](class_canvasitem.md#class-canvasitem-method-draw-rect).

* * *

void **canvas\_item\_add\_set\_transform**(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-item-add-set-transform)

Sets a [Transform2D](class_transform2d.md#class-transform2d) that will be used to transform subsequent canvas item commands.

* * *

void **canvas\_item\_add\_texture\_rect**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), tile: [bool](class_bool.md#class-bool) = false, modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-add-texture-rect)

Draws a 2D textured rectangle on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_texture\_rect()](class_canvasitem.md#class-canvasitem-method-draw-texture-rect) and [Texture2D.draw\_rect()](class_texture2d.md#class-texture2d-method-draw-rect).

* * *

void **canvas\_item\_add\_texture\_rect\_region**(item: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2), texture: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), modulate: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), transpose: [bool](class_bool.md#class-bool) = false, clip\_uv: [bool](class_bool.md#class-bool) = true) [🔗](#class-renderingserver-method-canvas-item-add-texture-rect-region)

Draws the specified region of a 2D textured rectangle on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). See also [CanvasItem.draw\_texture\_rect\_region()](class_canvasitem.md#class-canvasitem-method-draw-texture-rect-region) and [Texture2D.draw\_rect\_region()](class_texture2d.md#class-texture2d-method-draw-rect-region).

* * *

void **canvas\_item\_add\_triangle\_array**(item: [RID](class_rid.md#class-rid), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array), points: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), colors: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), uvs: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) = PackedVector2Array(), bones: [PackedInt32Array](class_packedint32array.md#class-packedint32array) = PackedInt32Array(), weights: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) = PackedFloat32Array(), texture: [RID](class_rid.md#class-rid) = RID(), count: [int](class_int.md#class-int) = -1) [🔗](#class-renderingserver-method-canvas-item-add-triangle-array)

Draws a triangle array on the [CanvasItem](class_canvasitem.md#class-canvasitem) pointed to by the `item` [RID](class_rid.md#class-rid). This is internally used by [Line2D](class_line2d.md#class-line2d) and [StyleBoxFlat](class_styleboxflat.md#class-styleboxflat) for rendering. [canvas\_item\_add\_triangle\_array()](#class-renderingserver-method-canvas-item-add-triangle-array) is highly flexible, but more complex to use than [canvas\_item\_add\_polygon()](#class-renderingserver-method-canvas-item-add-polygon).

**Note:** If `count` is set to a non-negative value, only the first `count * 3` indices (corresponding to `count` triangles) will be drawn. Otherwise, all indices are drawn.

* * *

void **canvas\_item\_attach\_skeleton**(item: [RID](class_rid.md#class-rid), skeleton: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-attach-skeleton)

Attaches a skeleton to the [CanvasItem](class_canvasitem.md#class-canvasitem). Removes the previous skeleton.

* * *

void **canvas\_item\_clear**(item: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-clear)

Clears the [CanvasItem](class_canvasitem.md#class-canvasitem) and removes all commands in it.

* * *

[RID](class_rid.md#class-rid) **canvas\_item\_create**() [🔗](#class-renderingserver-method-canvas-item-create)

Creates a new CanvasItem instance and returns its [RID](class_rid.md#class-rid). It can be accessed with the RID that is returned. This RID will be used in all `canvas_item_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [CanvasItem](class_canvasitem.md#class-canvasitem).

* * *

[Variant](class_variant.md#class-variant) **canvas\_item\_get\_instance\_shader\_parameter**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-canvas-item-get-instance-shader-parameter)

Returns the value of the per-instance shader uniform from the specified canvas item instance. Equivalent to [CanvasItem.get\_instance\_shader\_parameter()](class_canvasitem.md#class-canvasitem-method-get-instance-shader-parameter).

* * *

[Variant](class_variant.md#class-variant) **canvas\_item\_get\_instance\_shader\_parameter\_default\_value**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-canvas-item-get-instance-shader-parameter-default-value)

Returns the default value of the per-instance shader uniform from the specified canvas item instance. Equivalent to [CanvasItem.get\_instance\_shader\_parameter()](class_canvasitem.md#class-canvasitem-method-get-instance-shader-parameter).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **canvas\_item\_get\_instance\_shader\_parameter\_list**(instance: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-canvas-item-get-instance-shader-parameter-list)

Returns a dictionary of per-instance shader uniform names of the per-instance shader uniform from the specified canvas item instance.

The returned dictionary is in PropertyInfo format, with the keys `name`, `class_name`, `type`, `hint`, `hint_string`, and `usage`.

* * *

void **canvas\_item\_reset\_physics\_interpolation**(item: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-reset-physics-interpolation)

Prevents physics interpolation for the current physics tick.

This is useful when moving a canvas item to a new location, to give an instantaneous change rather than interpolation from the previous location.

* * *

void **canvas\_item\_set\_canvas\_group\_mode**(item: [RID](class_rid.md#class-rid), mode: [CanvasGroupMode](#enum-renderingserver-canvasgroupmode), clear\_margin: [float](class_float.md#class-float) = 5.0, fit\_empty: [bool](class_bool.md#class-bool) = false, fit\_margin: [float](class_float.md#class-float) = 0.0, blur\_mipmaps: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-canvas-item-set-canvas-group-mode)

Sets the canvas group mode used during 2D rendering for the canvas item specified by the `item` RID. For faster but more limited clipping, use [canvas\_item\_set\_clip()](#class-renderingserver-method-canvas-item-set-clip) instead.

**Note:** The equivalent node functionality is found in [CanvasGroup](class_canvasgroup.md#class-canvasgroup) and [CanvasItem.clip\_children](class_canvasitem.md#class-canvasitem-property-clip-children).

* * *

void **canvas\_item\_set\_clip**(item: [RID](class_rid.md#class-rid), clip: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-clip)

If `clip` is `true`, makes the canvas item specified by the `item` RID not draw anything outside of its rect's coordinates. This clipping is fast, but works only with axis-aligned rectangles. This means that rotation is ignored by the clipping rectangle. For more advanced clipping shapes, use [canvas\_item\_set\_canvas\_group\_mode()](#class-renderingserver-method-canvas-item-set-canvas-group-mode) instead.

**Note:** The equivalent node functionality is found in [Label.clip\_text](class_label.md#class-label-property-clip-text), [RichTextLabel](class_richtextlabel.md#class-richtextlabel) (always enabled) and more.

* * *

void **canvas\_item\_set\_copy\_to\_backbuffer**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-renderingserver-method-canvas-item-set-copy-to-backbuffer)

Sets the [CanvasItem](class_canvasitem.md#class-canvasitem) to copy a rect to the backbuffer.

* * *

void **canvas\_item\_set\_custom\_rect**(item: [RID](class_rid.md#class-rid), use\_custom\_rect: [bool](class_bool.md#class-bool), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0)) [🔗](#class-renderingserver-method-canvas-item-set-custom-rect)

If `use_custom_rect` is `true`, sets the custom visibility rectangle (used for culling) to `rect` for the canvas item specified by `item`. Setting a custom visibility rect can reduce CPU load when drawing lots of 2D instances. If `use_custom_rect` is `false`, automatically computes a visibility rectangle based on the canvas item's draw commands.

* * *

void **canvas\_item\_set\_default\_texture\_filter**(item: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) [🔗](#class-renderingserver-method-canvas-item-set-default-texture-filter)

Sets the default texture filter mode for the canvas item specified by the `item` RID. Equivalent to [CanvasItem.texture\_filter](class_canvasitem.md#class-canvasitem-property-texture-filter).

* * *

void **canvas\_item\_set\_default\_texture\_repeat**(item: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) [🔗](#class-renderingserver-method-canvas-item-set-default-texture-repeat)

Sets the default texture repeat mode for the canvas item specified by the `item` RID. Equivalent to [CanvasItem.texture\_repeat](class_canvasitem.md#class-canvasitem-property-texture-repeat).

* * *

void **canvas\_item\_set\_distance\_field\_mode**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-distance-field-mode)

If `enabled` is `true`, enables multichannel signed distance field rendering mode for the canvas item specified by the `item` RID. This is meant to be used for font rendering, or with specially generated images using [msdfgen](https://github.com/Chlumsky/msdfgen).

* * *

void **canvas\_item\_set\_draw\_behind\_parent**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-draw-behind-parent)

If `enabled` is `true`, draws the canvas item specified by the `item` RID behind its parent. Equivalent to [CanvasItem.show\_behind\_parent](class_canvasitem.md#class-canvasitem-property-show-behind-parent).

* * *

void **canvas\_item\_set\_draw\_index**(item: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-item-set-draw-index)

Sets the index for the [CanvasItem](class_canvasitem.md#class-canvasitem).

* * *

void **canvas\_item\_set\_instance\_shader\_parameter**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-canvas-item-set-instance-shader-parameter)

Sets the per-instance shader uniform on the specified canvas item instance. Equivalent to [CanvasItem.set\_instance\_shader\_parameter()](class_canvasitem.md#class-canvasitem-method-set-instance-shader-parameter).

* * *

void **canvas\_item\_set\_interpolated**(item: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-interpolated)

If `interpolated` is `true`, turns on physics interpolation for the canvas item.

* * *

void **canvas\_item\_set\_light\_mask**(item: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-item-set-light-mask)

Sets the light `mask` for the canvas item specified by the `item` RID. Equivalent to [CanvasItem.light\_mask](class_canvasitem.md#class-canvasitem-property-light-mask).

* * *

void **canvas\_item\_set\_material**(item: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-set-material)

Sets a new `material` to the canvas item specified by the `item` RID. Equivalent to [CanvasItem.material](class_canvasitem.md#class-canvasitem-property-material).

* * *

void **canvas\_item\_set\_modulate**(item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-item-set-modulate)

Multiplies the color of the canvas item specified by the `item` RID, while affecting its children. See also [canvas\_item\_set\_self\_modulate()](#class-renderingserver-method-canvas-item-set-self-modulate). Equivalent to [CanvasItem.modulate](class_canvasitem.md#class-canvasitem-property-modulate).

* * *

void **canvas\_item\_set\_parent**(item: [RID](class_rid.md#class-rid), parent: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-item-set-parent)

Sets a parent [CanvasItem](class_canvasitem.md#class-canvasitem) to the [CanvasItem](class_canvasitem.md#class-canvasitem). The item will inherit transform, modulation and visibility from its parent, like [CanvasItem](class_canvasitem.md#class-canvasitem) nodes in the scene tree.

* * *

void **canvas\_item\_set\_self\_modulate**(item: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-item-set-self-modulate)

Multiplies the color of the canvas item specified by the `item` RID, without affecting its children. See also [canvas\_item\_set\_modulate()](#class-renderingserver-method-canvas-item-set-modulate). Equivalent to [CanvasItem.self\_modulate](class_canvasitem.md#class-canvasitem-property-self-modulate).

* * *

void **canvas\_item\_set\_sort\_children\_by\_y**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-sort-children-by-y)

If `enabled` is `true`, child nodes with the lowest Y position are drawn before those with a higher Y position. Y-sorting only affects children that inherit from the canvas item specified by the `item` RID, not the canvas item itself. Equivalent to [CanvasItem.y\_sort\_enabled](class_canvasitem.md#class-canvasitem-property-y-sort-enabled).

* * *

void **canvas\_item\_set\_transform**(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-item-set-transform)

Sets the `transform` of the canvas item specified by the `item` RID. This affects where and how the item will be drawn. Child canvas items' transforms are multiplied by their parent's transform. Equivalent to [Node2D.transform](class_node2d.md#class-node2d-property-transform).

* * *

void **canvas\_item\_set\_use\_parent\_material**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-use-parent-material)

Sets if the [CanvasItem](class_canvasitem.md#class-canvasitem) uses its parent's material.

* * *

void **canvas\_item\_set\_visibility\_layer**(item: [RID](class_rid.md#class-rid), visibility\_layer: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-item-set-visibility-layer)

Sets the rendering visibility layer associated with this [CanvasItem](class_canvasitem.md#class-canvasitem). Only [Viewport](class_viewport.md#class-viewport) nodes with a matching rendering mask will render this [CanvasItem](class_canvasitem.md#class-canvasitem).

* * *

void **canvas\_item\_set\_visibility\_notifier**(item: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), area: [Rect2](class_rect2.md#class-rect2), enter\_callable: [Callable](class_callable.md#class-callable), exit\_callable: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingserver-method-canvas-item-set-visibility-notifier)

Sets the given [CanvasItem](class_canvasitem.md#class-canvasitem) as visibility notifier. `area` defines the area of detecting visibility. `enter_callable` is called when the [CanvasItem](class_canvasitem.md#class-canvasitem) enters the screen, `exit_callable` is called when the [CanvasItem](class_canvasitem.md#class-canvasitem) exits the screen. If `enable` is `false`, the item will no longer function as notifier.

This method can be used to manually mimic [VisibleOnScreenNotifier2D](class_visibleonscreennotifier2d.md#class-visibleonscreennotifier2d).

* * *

void **canvas\_item\_set\_visible**(item: [RID](class_rid.md#class-rid), visible: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-visible)

Sets the visibility of the [CanvasItem](class_canvasitem.md#class-canvasitem).

* * *

void **canvas\_item\_set\_z\_as\_relative\_to\_parent**(item: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-item-set-z-as-relative-to-parent)

If this is enabled, the Z index of the parent will be added to the children's Z index.

* * *

void **canvas\_item\_set\_z\_index**(item: [RID](class_rid.md#class-rid), z\_index: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-item-set-z-index)

Sets the [CanvasItem](class_canvasitem.md#class-canvasitem)'s Z index, i.e. its draw order (lower indexes are drawn first).

* * *

void **canvas\_item\_transform\_physics\_interpolation**(item: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-item-transform-physics-interpolation)

Transforms both the current and previous stored transform for a canvas item.

This allows transforming a canvas item without creating a "glitch" in the interpolation, which is particularly useful for large worlds utilizing a shifting origin.

* * *

void **canvas\_light\_attach\_to\_canvas**(light: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-attach-to-canvas)

Attaches the canvas light to the canvas. Removes it from its previous canvas.

* * *

[RID](class_rid.md#class-rid) **canvas\_light\_create**() [🔗](#class-renderingserver-method-canvas-light-create)

Creates a canvas light and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [Light2D](class_light2d.md#class-light2d).

* * *

void **canvas\_light\_occluder\_attach\_to\_canvas**(occluder: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-occluder-attach-to-canvas)

Attaches a light occluder to the canvas. Removes it from its previous canvas.

* * *

[RID](class_rid.md#class-rid) **canvas\_light\_occluder\_create**() [🔗](#class-renderingserver-method-canvas-light-occluder-create)

Creates a light occluder and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_occluder_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d).

* * *

void **canvas\_light\_occluder\_reset\_physics\_interpolation**(occluder: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-occluder-reset-physics-interpolation)

Prevents physics interpolation for the current physics tick.

This is useful when moving an occluder to a new location, to give an instantaneous change rather than interpolation from the previous location.

* * *

void **canvas\_light\_occluder\_set\_as\_sdf\_collision**(occluder: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-as-sdf-collision)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **canvas\_light\_occluder\_set\_enabled**(occluder: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-enabled)

Enables or disables light occluder.

* * *

void **canvas\_light\_occluder\_set\_interpolated**(occluder: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-interpolated)

If `interpolated` is `true`, turns on physics interpolation for the light occluder.

* * *

void **canvas\_light\_occluder\_set\_light\_mask**(occluder: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-light-mask)

The light mask. See [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) for more information on light masks.

* * *

void **canvas\_light\_occluder\_set\_polygon**(occluder: [RID](class_rid.md#class-rid), polygon: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-polygon)

Sets a light occluder's polygon.

* * *

void **canvas\_light\_occluder\_set\_transform**(occluder: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-light-occluder-set-transform)

Sets a light occluder's [Transform2D](class_transform2d.md#class-transform2d).

* * *

void **canvas\_light\_occluder\_transform\_physics\_interpolation**(occluder: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-light-occluder-transform-physics-interpolation)

Transforms both the current and previous stored transform for a light occluder.

This allows transforming an occluder without creating a "glitch" in the interpolation, which is particularly useful for large worlds utilizing a shifting origin.

* * *

void **canvas\_light\_reset\_physics\_interpolation**(light: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-reset-physics-interpolation)

Prevents physics interpolation for the current physics tick.

This is useful when moving a canvas item to a new location, to give an instantaneous change rather than interpolation from the previous location.

* * *

void **canvas\_light\_set\_blend\_mode**(light: [RID](class_rid.md#class-rid), mode: [CanvasLightBlendMode](#enum-renderingserver-canvaslightblendmode)) [🔗](#class-renderingserver-method-canvas-light-set-blend-mode)

Sets the blend mode for the given canvas light to `mode`. Equivalent to [Light2D.blend\_mode](class_light2d.md#class-light2d-property-blend-mode).

* * *

void **canvas\_light\_set\_color**(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-light-set-color)

Sets the color for a light.

* * *

void **canvas\_light\_set\_enabled**(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-set-enabled)

Enables or disables a canvas light.

* * *

void **canvas\_light\_set\_energy**(light: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-canvas-light-set-energy)

Sets a canvas light's energy.

* * *

void **canvas\_light\_set\_height**(light: [RID](class_rid.md#class-rid), height: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-canvas-light-set-height)

Sets a canvas light's height.

* * *

void **canvas\_light\_set\_interpolated**(light: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-set-interpolated)

If `interpolated` is `true`, turns on physics interpolation for the canvas light.

* * *

void **canvas\_light\_set\_item\_cull\_mask**(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-light-set-item-cull-mask)

The light mask. See [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) for more information on light masks.

* * *

void **canvas\_light\_set\_item\_shadow\_cull\_mask**(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-light-set-item-shadow-cull-mask)

The binary mask used to determine which layers this canvas light's shadows affects. See [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) for more information on light masks.

* * *

void **canvas\_light\_set\_layer\_range**(light: [RID](class_rid.md#class-rid), min\_layer: [int](class_int.md#class-int), max\_layer: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-light-set-layer-range)

The layer range that gets rendered with this light.

* * *

void **canvas\_light\_set\_mode**(light: [RID](class_rid.md#class-rid), mode: [CanvasLightMode](#enum-renderingserver-canvaslightmode)) [🔗](#class-renderingserver-method-canvas-light-set-mode)

Sets the mode of the canvas light.

* * *

void **canvas\_light\_set\_shadow\_color**(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-light-set-shadow-color)

Sets the color of the canvas light's shadow.

* * *

void **canvas\_light\_set\_shadow\_enabled**(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-light-set-shadow-enabled)

Enables or disables the canvas light's shadow.

* * *

void **canvas\_light\_set\_shadow\_filter**(light: [RID](class_rid.md#class-rid), filter: [CanvasLightShadowFilter](#enum-renderingserver-canvaslightshadowfilter)) [🔗](#class-renderingserver-method-canvas-light-set-shadow-filter)

Sets the canvas light's shadow's filter.

* * *

void **canvas\_light\_set\_shadow\_smooth**(light: [RID](class_rid.md#class-rid), smooth: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-canvas-light-set-shadow-smooth)

Smoothens the shadow. The lower, the smoother.

* * *

void **canvas\_light\_set\_texture**(light: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-light-set-texture)

Sets the texture to be used by a [PointLight2D](class_pointlight2d.md#class-pointlight2d). Equivalent to [PointLight2D.texture](class_pointlight2d.md#class-pointlight2d-property-texture).

* * *

void **canvas\_light\_set\_texture\_offset**(light: [RID](class_rid.md#class-rid), offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-renderingserver-method-canvas-light-set-texture-offset)

Sets the offset of a [PointLight2D](class_pointlight2d.md#class-pointlight2d)'s texture. Equivalent to [PointLight2D.offset](class_pointlight2d.md#class-pointlight2d-property-offset).

* * *

void **canvas\_light\_set\_texture\_scale**(light: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-canvas-light-set-texture-scale)

Sets the scale factor of a [PointLight2D](class_pointlight2d.md#class-pointlight2d)'s texture. Equivalent to [PointLight2D.texture\_scale](class_pointlight2d.md#class-pointlight2d-property-texture-scale).

* * *

void **canvas\_light\_set\_transform**(light: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-light-set-transform)

Sets the canvas light's [Transform2D](class_transform2d.md#class-transform2d).

* * *

void **canvas\_light\_set\_z\_range**(light: [RID](class_rid.md#class-rid), min\_z: [int](class_int.md#class-int), max\_z: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-light-set-z-range)

Sets the Z range of objects that will be affected by this light. Equivalent to [Light2D.range\_z\_min](class_light2d.md#class-light2d-property-range-z-min) and [Light2D.range\_z\_max](class_light2d.md#class-light2d-property-range-z-max).

* * *

void **canvas\_light\_transform\_physics\_interpolation**(light: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-canvas-light-transform-physics-interpolation)

Transforms both the current and previous stored transform for a canvas light.

This allows transforming a light without creating a "glitch" in the interpolation, which is particularly useful for large worlds utilizing a shifting origin.

* * *

[RID](class_rid.md#class-rid) **canvas\_occluder\_polygon\_create**() [🔗](#class-renderingserver-method-canvas-occluder-polygon-create)

Creates a new light occluder polygon and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_occluder_polygon_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [OccluderPolygon2D](class_occluderpolygon2d.md#class-occluderpolygon2d).

* * *

void **canvas\_occluder\_polygon\_set\_cull\_mode**(occluder\_polygon: [RID](class_rid.md#class-rid), mode: [CanvasOccluderPolygonCullMode](#enum-renderingserver-canvasoccluderpolygoncullmode)) [🔗](#class-renderingserver-method-canvas-occluder-polygon-set-cull-mode)

Sets an occluder polygon's cull mode.

* * *

void **canvas\_occluder\_polygon\_set\_shape**(occluder\_polygon: [RID](class_rid.md#class-rid), shape: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), closed: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-occluder-polygon-set-shape)

Sets the shape of the occluder polygon.

* * *

void **canvas\_set\_disable\_scale**(disable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-canvas-set-disable-scale)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **canvas\_set\_item\_mirroring**(canvas: [RID](class_rid.md#class-rid), item: [RID](class_rid.md#class-rid), mirroring: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-renderingserver-method-canvas-set-item-mirroring)

A copy of the canvas item will be drawn with a local offset of the `mirroring`.

**Note:** This is equivalent to calling [canvas\_set\_item\_repeat()](#class-renderingserver-method-canvas-set-item-repeat) like `canvas_set_item_repeat(item, mirroring, 1)`, with an additional check ensuring `canvas` is a parent of `item`.

* * *

void **canvas\_set\_item\_repeat**(item: [RID](class_rid.md#class-rid), repeat\_size: [Vector2](class_vector2.md#class-vector2), repeat\_times: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-set-item-repeat)

A copy of the canvas item will be drawn with a local offset of the `repeat_size` by the number of times of the `repeat_times`. As the `repeat_times` increases, the copies will spread away from the origin texture.

* * *

void **canvas\_set\_modulate**(canvas: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-canvas-set-modulate)

Modulates all colors in the given canvas.

* * *

void **canvas\_set\_shadow\_texture\_size**(size: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-canvas-set-shadow-texture-size)

Sets the [ProjectSettings.rendering/2d/shadow\_atlas/size](class_projectsettings.md#class-projectsettings-property-rendering-2d-shadow-atlas-size) to use for [Light2D](class_light2d.md#class-light2d) shadow rendering (in pixels). The value is rounded up to the nearest power of 2.

* * *

[RID](class_rid.md#class-rid) **canvas\_texture\_create**() [🔗](#class-renderingserver-method-canvas-texture-create)

Creates a canvas texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_texture_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method. See also [texture\_2d\_create()](#class-renderingserver-method-texture-2d-create).

**Note:** The equivalent resource is [CanvasTexture](class_canvastexture.md#class-canvastexture) and is only meant to be used in 2D rendering, not 3D.

* * *

void **canvas\_texture\_set\_channel**(canvas\_texture: [RID](class_rid.md#class-rid), channel: [CanvasTextureChannel](#enum-renderingserver-canvastexturechannel), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-canvas-texture-set-channel)

Sets the `channel`'s `texture` for the canvas texture specified by the `canvas_texture` RID. Equivalent to [CanvasTexture.diffuse\_texture](class_canvastexture.md#class-canvastexture-property-diffuse-texture), [CanvasTexture.normal\_texture](class_canvastexture.md#class-canvastexture-property-normal-texture) and [CanvasTexture.specular\_texture](class_canvastexture.md#class-canvastexture-property-specular-texture).

* * *

void **canvas\_texture\_set\_shading\_parameters**(canvas\_texture: [RID](class_rid.md#class-rid), base\_color: [Color](class_color.md#class-color), shininess: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-canvas-texture-set-shading-parameters)

Sets the `base_color` and `shininess` to use for the canvas texture specified by the `canvas_texture` RID. Equivalent to [CanvasTexture.specular\_color](class_canvastexture.md#class-canvastexture-property-specular-color) and [CanvasTexture.specular\_shininess](class_canvastexture.md#class-canvastexture-property-specular-shininess).

* * *

void **canvas\_texture\_set\_texture\_filter**(canvas\_texture: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) [🔗](#class-renderingserver-method-canvas-texture-set-texture-filter)

Sets the texture `filter` mode to use for the canvas texture specified by the `canvas_texture` RID.

* * *

void **canvas\_texture\_set\_texture\_repeat**(canvas\_texture: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) [🔗](#class-renderingserver-method-canvas-texture-set-texture-repeat)

Sets the texture `repeat` mode to use for the canvas texture specified by the `canvas_texture` RID.

* * *

[RID](class_rid.md#class-rid) **compositor\_create**() [🔗](#class-renderingserver-method-compositor-create)

Creates a new compositor and adds it to the RenderingServer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **compositor\_effect\_create**() [🔗](#class-renderingserver-method-compositor-effect-create)

Creates a new rendering effect and adds it to the RenderingServer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

* * *

void **compositor\_effect\_set\_callback**(effect: [RID](class_rid.md#class-rid), callback\_type: [CompositorEffectCallbackType](#enum-renderingserver-compositoreffectcallbacktype), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingserver-method-compositor-effect-set-callback)

Sets the callback type ( `callback_type`) and callback method( `callback`) for this rendering effect.

* * *

void **compositor\_effect\_set\_enabled**(effect: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-compositor-effect-set-enabled)

Enables/disables this rendering effect.

* * *

void **compositor\_effect\_set\_flag**(effect: [RID](class_rid.md#class-rid), flag: [CompositorEffectFlags](#enum-renderingserver-compositoreffectflags), set: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-compositor-effect-set-flag)

Sets the flag ( `flag`) for this rendering effect to `true` or `false` ( `set`).

* * *

void **compositor\_set\_compositor\_effects**(compositor: [RID](class_rid.md#class-rid), effects: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\]) [🔗](#class-renderingserver-method-compositor-set-compositor-effects)

Sets the compositor effects for the specified compositor RID. `effects` should be an array containing RIDs created with [compositor\_effect\_create()](#class-renderingserver-method-compositor-effect-create).

* * *

[RenderingDevice](class_renderingdevice.md#class-renderingdevice) **create\_local\_rendering\_device**() const [🔗](#class-renderingserver-method-create-local-rendering-device)

Creates a RenderingDevice that can be used to do draw and compute operations on a separate thread. Cannot draw to the screen nor share data with the global RenderingDevice.

**Note:** When using the OpenGL rendering driver or when running in headless mode, this function always returns `null`.

* * *

[Rect2](class_rect2.md#class-rect2) **debug\_canvas\_item\_get\_rect**(item: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-debug-canvas-item-get-rect)

Returns the bounding rectangle for a canvas item in local space, as calculated by the renderer. This bound is used internally for culling.

**Warning:** This function is intended for debugging in the editor, and will pass through and return a zero [Rect2](class_rect2.md#class-rect2) in exported projects.

* * *

[RID](class_rid.md#class-rid) **decal\_create**() [🔗](#class-renderingserver-method-decal-create)

Creates a decal and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `decal_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this decal to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent node is [Decal](class_decal.md#class-decal).

* * *

void **decal\_set\_albedo\_mix**(decal: [RID](class_rid.md#class-rid), albedo\_mix: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-decal-set-albedo-mix)

Sets the `albedo_mix` in the decal specified by the `decal` RID. Equivalent to [Decal.albedo\_mix](class_decal.md#class-decal-property-albedo-mix).

* * *

void **decal\_set\_cull\_mask**(decal: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-decal-set-cull-mask)

Sets the cull `mask` in the decal specified by the `decal` RID. Equivalent to [Decal.cull\_mask](class_decal.md#class-decal-property-cull-mask).

* * *

void **decal\_set\_distance\_fade**(decal: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), begin: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-decal-set-distance-fade)

Sets the distance fade parameters in the decal specified by the `decal` RID. Equivalent to [Decal.distance\_fade\_enabled](class_decal.md#class-decal-property-distance-fade-enabled), [Decal.distance\_fade\_begin](class_decal.md#class-decal-property-distance-fade-begin) and [Decal.distance\_fade\_length](class_decal.md#class-decal-property-distance-fade-length).

* * *

void **decal\_set\_emission\_energy**(decal: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-decal-set-emission-energy)

Sets the emission `energy` in the decal specified by the `decal` RID. Equivalent to [Decal.emission\_energy](class_decal.md#class-decal-property-emission-energy).

* * *

void **decal\_set\_fade**(decal: [RID](class_rid.md#class-rid), above: [float](class_float.md#class-float), below: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-decal-set-fade)

Sets the upper fade ( `above`) and lower fade ( `below`) in the decal specified by the `decal` RID. Equivalent to [Decal.upper\_fade](class_decal.md#class-decal-property-upper-fade) and [Decal.lower\_fade](class_decal.md#class-decal-property-lower-fade).

* * *

void **decal\_set\_modulate**(decal: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-decal-set-modulate)

Sets the color multiplier in the decal specified by the `decal` RID to `color`. Equivalent to [Decal.modulate](class_decal.md#class-decal-property-modulate).

* * *

void **decal\_set\_normal\_fade**(decal: [RID](class_rid.md#class-rid), fade: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-decal-set-normal-fade)

Sets the normal `fade` in the decal specified by the `decal` RID. Equivalent to [Decal.normal\_fade](class_decal.md#class-decal-property-normal-fade).

* * *

void **decal\_set\_size**(decal: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-decal-set-size)

Sets the `size` of the decal specified by the `decal` RID. Equivalent to [Decal.size](class_decal.md#class-decal-property-size).

* * *

void **decal\_set\_texture**(decal: [RID](class_rid.md#class-rid), type: [DecalTexture](#enum-renderingserver-decaltexture), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-decal-set-texture)

Sets the `texture` in the given texture `type` slot for the specified decal. Equivalent to [Decal.set\_texture()](class_decal.md#class-decal-method-set-texture).

* * *

void **decals\_set\_filter**(filter: [DecalFilter](#enum-renderingserver-decalfilter)) [🔗](#class-renderingserver-method-decals-set-filter)

Sets the texture `filter` mode to use when rendering decals. This parameter is global and cannot be set on a per-decal basis.

* * *

[RID](class_rid.md#class-rid) **directional\_light\_create**() [🔗](#class-renderingserver-method-directional-light-create)

Creates a directional light and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this directional light to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent node is [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d).

* * *

void **directional\_shadow\_atlas\_set\_size**(size: [int](class_int.md#class-int), is\_16bits: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-directional-shadow-atlas-set-size)

Sets the `size` of the directional light shadows in 3D. See also [ProjectSettings.rendering/lights\_and\_shadows/directional\_shadow/size](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-size). This parameter is global and cannot be set on a per-viewport basis.

* * *

void **directional\_soft\_shadow\_filter\_set\_quality**(quality: [ShadowQuality](#enum-renderingserver-shadowquality)) [🔗](#class-renderingserver-method-directional-soft-shadow-filter-set-quality)

Sets the filter `quality` for directional light shadows in 3D. See also [ProjectSettings.rendering/lights\_and\_shadows/directional\_shadow/soft\_shadow\_filter\_quality](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-directional-shadow-soft-shadow-filter-quality). This parameter is global and cannot be set on a per-viewport basis.

* * *

[Image](class_image.md#class-image) **environment\_bake\_panorama**(environment: [RID](class_rid.md#class-rid), bake\_irradiance: [bool](class_bool.md#class-bool), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-renderingserver-method-environment-bake-panorama)

Generates and returns an [Image](class_image.md#class-image) containing the radiance map for the specified `environment` RID's sky. This supports built-in sky material and custom sky shaders. If `bake_irradiance` is `true`, the irradiance map is saved instead of the radiance map. The radiance map is used to render reflected light, while the irradiance map is used to render ambient light. See also [sky\_bake\_panorama()](#class-renderingserver-method-sky-bake-panorama).

**Note:** The image is saved in linear color space without any tonemapping performed, which means it will look too dark if viewed directly in an image editor.

**Note:** `size` should be a 2:1 aspect ratio for the generated panorama to have square pixels. For radiance maps, there is no point in using a height greater than [Sky.radiance\_size](class_sky.md#class-sky-property-radiance-size), as it won't increase detail. Irradiance maps only contain low-frequency data, so there is usually no point in going past a size of 128×64 pixels when saving an irradiance map.

* * *

[RID](class_rid.md#class-rid) **environment\_create**() [🔗](#class-renderingserver-method-environment-create)

Creates an environment and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `environment_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [Environment](class_environment.md#class-environment).

* * *

void **environment\_glow\_set\_use\_bicubic\_upscale**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-environment-glow-set-use-bicubic-upscale)

If `enable` is `true`, enables bicubic upscaling for glow which improves quality at the cost of performance. Equivalent to [ProjectSettings.rendering/environment/glow/upscale\_mode](class_projectsettings.md#class-projectsettings-property-rendering-environment-glow-upscale-mode).

**Note:** This setting is only effective when using the Forward+ or Mobile rendering methods, as Compatibility uses a different glow implementation.

* * *

void **environment\_set\_adjustment**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), brightness: [float](class_float.md#class-float), contrast: [float](class_float.md#class-float), saturation: [float](class_float.md#class-float), use\_1d\_color\_correction: [bool](class_bool.md#class-bool), color\_correction: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-environment-set-adjustment)

Sets the values to be used with the "adjustments" post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_ambient\_light**(env: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color), ambient: [EnvironmentAmbientSource](#enum-renderingserver-environmentambientsource) = 0, energy: [float](class_float.md#class-float) = 1.0, sky\_contribution: [float](class_float.md#class-float) = 0.0, reflection\_source: [EnvironmentReflectionSource](#enum-renderingserver-environmentreflectionsource) = 0) [🔗](#class-renderingserver-method-environment-set-ambient-light)

Sets the values to be used for ambient light rendering. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_background**(env: [RID](class_rid.md#class-rid), bg: [EnvironmentBG](#enum-renderingserver-environmentbg)) [🔗](#class-renderingserver-method-environment-set-background)

Sets the environment's background mode. Equivalent to [Environment.background\_mode](class_environment.md#class-environment-property-background-mode).

* * *

void **environment\_set\_bg\_color**(env: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-environment-set-bg-color)

Color displayed for clear areas of the scene. Only effective if using the [ENV\_BG\_COLOR](#class-renderingserver-constant-env-bg-color) background mode.

* * *

void **environment\_set\_bg\_energy**(env: [RID](class_rid.md#class-rid), multiplier: [float](class_float.md#class-float), exposure\_value: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-bg-energy)

Sets the intensity of the background color.

* * *

void **environment\_set\_camera\_id**(env: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-environment-set-camera-id)

Sets the camera ID to be used as environment background.

* * *

void **environment\_set\_canvas\_max\_layer**(env: [RID](class_rid.md#class-rid), max\_layer: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-environment-set-canvas-max-layer)

Sets the maximum layer to use if using Canvas background mode.

* * *

void **environment\_set\_fog**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), light\_color: [Color](class_color.md#class-color), light\_energy: [float](class_float.md#class-float), sun\_scatter: [float](class_float.md#class-float), density: [float](class_float.md#class-float), height: [float](class_float.md#class-float), height\_density: [float](class_float.md#class-float), aerial\_perspective: [float](class_float.md#class-float), sky\_affect: [float](class_float.md#class-float), fog\_mode: [EnvironmentFogMode](#enum-renderingserver-environmentfogmode) = 0) [🔗](#class-renderingserver-method-environment-set-fog)

Configures fog for the specified environment RID. See `fog_*` properties in [Environment](class_environment.md#class-environment) for more information.

* * *

void **environment\_set\_fog\_depth**(env: [RID](class_rid.md#class-rid), curve: [float](class_float.md#class-float), begin: [float](class_float.md#class-float), end: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-fog-depth)

Configures fog depth for the specified environment RID. Only has an effect when the fog mode of the environment is [ENV\_FOG\_MODE\_DEPTH](#class-renderingserver-constant-env-fog-mode-depth). See `fog_depth_*` properties in [Environment](class_environment.md#class-environment) for more information.

* * *

void **environment\_set\_glow**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), levels: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), intensity: [float](class_float.md#class-float), strength: [float](class_float.md#class-float), mix: [float](class_float.md#class-float), bloom\_threshold: [float](class_float.md#class-float), blend\_mode: [EnvironmentGlowBlendMode](#enum-renderingserver-environmentglowblendmode), hdr\_bleed\_threshold: [float](class_float.md#class-float), hdr\_bleed\_scale: [float](class_float.md#class-float), hdr\_luminance\_cap: [float](class_float.md#class-float), glow\_map\_strength: [float](class_float.md#class-float), glow\_map: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-environment-set-glow)

Configures glow for the specified environment RID. See `glow_*` properties in [Environment](class_environment.md#class-environment) for more information.

* * *

void **environment\_set\_sdfgi**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), cascades: [int](class_int.md#class-int), min\_cell\_size: [float](class_float.md#class-float), y\_scale: [EnvironmentSDFGIYScale](#enum-renderingserver-environmentsdfgiyscale), use\_occlusion: [bool](class_bool.md#class-bool), bounce\_feedback: [float](class_float.md#class-float), read\_sky: [bool](class_bool.md#class-bool), energy: [float](class_float.md#class-float), normal\_bias: [float](class_float.md#class-float), probe\_bias: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-sdfgi)

Configures signed distance field global illumination for the specified environment RID. See `sdfgi_*` properties in [Environment](class_environment.md#class-environment) for more information.

* * *

void **environment\_set\_sdfgi\_frames\_to\_converge**(frames: [EnvironmentSDFGIFramesToConverge](#enum-renderingserver-environmentsdfgiframestoconverge)) [🔗](#class-renderingserver-method-environment-set-sdfgi-frames-to-converge)

Sets the number of frames to use for converging signed distance field global illumination. Equivalent to [ProjectSettings.rendering/global\_illumination/sdfgi/frames\_to\_converge](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-converge).

* * *

void **environment\_set\_sdfgi\_frames\_to\_update\_light**(frames: [EnvironmentSDFGIFramesToUpdateLight](#enum-renderingserver-environmentsdfgiframestoupdatelight)) [🔗](#class-renderingserver-method-environment-set-sdfgi-frames-to-update-light)

Sets the update speed for dynamic lights' indirect lighting when computing signed distance field global illumination. Equivalent to [ProjectSettings.rendering/global\_illumination/sdfgi/frames\_to\_update\_lights](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-sdfgi-frames-to-update-lights).

* * *

void **environment\_set\_sdfgi\_ray\_count**(ray\_count: [EnvironmentSDFGIRayCount](#enum-renderingserver-environmentsdfgiraycount)) [🔗](#class-renderingserver-method-environment-set-sdfgi-ray-count)

Sets the number of rays to throw per frame when computing signed distance field global illumination. Equivalent to [ProjectSettings.rendering/global\_illumination/sdfgi/probe\_ray\_count](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-sdfgi-probe-ray-count).

* * *

void **environment\_set\_sky**(env: [RID](class_rid.md#class-rid), sky: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-environment-set-sky)

Sets the [Sky](class_sky.md#class-sky) to be used as the environment's background when using _BGMode_ sky. Equivalent to [Environment.sky](class_environment.md#class-environment-property-sky).

* * *

void **environment\_set\_sky\_custom\_fov**(env: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-sky-custom-fov)

Sets a custom field of view for the background [Sky](class_sky.md#class-sky). Equivalent to [Environment.sky\_custom\_fov](class_environment.md#class-environment-property-sky-custom-fov).

* * *

void **environment\_set\_sky\_orientation**(env: [RID](class_rid.md#class-rid), orientation: [Basis](class_basis.md#class-basis)) [🔗](#class-renderingserver-method-environment-set-sky-orientation)

Sets the rotation of the background [Sky](class_sky.md#class-sky) expressed as a [Basis](class_basis.md#class-basis). Equivalent to [Environment.sky\_rotation](class_environment.md#class-environment-property-sky-rotation), where the rotation vector is used to construct the [Basis](class_basis.md#class-basis).

* * *

void **environment\_set\_ssao**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), radius: [float](class_float.md#class-float), intensity: [float](class_float.md#class-float), power: [float](class_float.md#class-float), detail: [float](class_float.md#class-float), horizon: [float](class_float.md#class-float), sharpness: [float](class_float.md#class-float), light\_affect: [float](class_float.md#class-float), ao\_channel\_affect: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-ssao)

Sets the variables to be used with the screen-space ambient occlusion (SSAO) post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_ssao\_quality**(quality: [EnvironmentSSAOQuality](#enum-renderingserver-environmentssaoquality), half\_size: [bool](class_bool.md#class-bool), adaptive\_target: [float](class_float.md#class-float), blur\_passes: [int](class_int.md#class-int), fadeout\_from: [float](class_float.md#class-float), fadeout\_to: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-ssao-quality)

Sets the quality level of the screen-space ambient occlusion (SSAO) post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_ssil\_quality**(quality: [EnvironmentSSILQuality](#enum-renderingserver-environmentssilquality), half\_size: [bool](class_bool.md#class-bool), adaptive\_target: [float](class_float.md#class-float), blur\_passes: [int](class_int.md#class-int), fadeout\_from: [float](class_float.md#class-float), fadeout\_to: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-ssil-quality)

Sets the quality level of the screen-space indirect lighting (SSIL) post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_ssr**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), max\_steps: [int](class_int.md#class-int), fade\_in: [float](class_float.md#class-float), fade\_out: [float](class_float.md#class-float), depth\_tolerance: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-ssr)

Sets the variables to be used with the screen-space reflections (SSR) post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_ssr\_roughness\_quality**(quality: [EnvironmentSSRRoughnessQuality](#enum-renderingserver-environmentssrroughnessquality)) [🔗](#class-renderingserver-method-environment-set-ssr-roughness-quality)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **environment\_set\_tonemap**(env: [RID](class_rid.md#class-rid), tone\_mapper: [EnvironmentToneMapper](#enum-renderingserver-environmenttonemapper), exposure: [float](class_float.md#class-float), white: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-tonemap)

Sets the variables to be used with the "tonemap" post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_volumetric\_fog**(env: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), density: [float](class_float.md#class-float), albedo: [Color](class_color.md#class-color), emission: [Color](class_color.md#class-color), emission\_energy: [float](class_float.md#class-float), anisotropy: [float](class_float.md#class-float), length: [float](class_float.md#class-float), p\_detail\_spread: [float](class_float.md#class-float), gi\_inject: [float](class_float.md#class-float), temporal\_reprojection: [bool](class_bool.md#class-bool), temporal\_reprojection\_amount: [float](class_float.md#class-float), ambient\_inject: [float](class_float.md#class-float), sky\_affect: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-environment-set-volumetric-fog)

Sets the variables to be used with the volumetric fog post-process effect. See [Environment](class_environment.md#class-environment) for more details.

* * *

void **environment\_set\_volumetric\_fog\_filter\_active**(active: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-environment-set-volumetric-fog-filter-active)

Enables filtering of the volumetric fog scattering buffer. This results in much smoother volumes with very few under-sampling artifacts.

* * *

void **environment\_set\_volumetric\_fog\_volume\_size**(size: [int](class_int.md#class-int), depth: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-environment-set-volumetric-fog-volume-size)

Sets the resolution of the volumetric fog's froxel buffer. `size` is modified by the screen's aspect ratio and then used to set the width and height of the buffer. While `depth` is directly used to set the depth of the buffer.

* * *

[RID](class_rid.md#class-rid) **fog\_volume\_create**() [🔗](#class-renderingserver-method-fog-volume-create)

Creates a new fog volume and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `fog_volume_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [FogVolume](class_fogvolume.md#class-fogvolume).

* * *

void **fog\_volume\_set\_material**(fog\_volume: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-fog-volume-set-material)

Sets the [Material](class_material.md#class-material) of the fog volume. Can be either a [FogMaterial](class_fogmaterial.md#class-fogmaterial) or a custom [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

* * *

void **fog\_volume\_set\_shape**(fog\_volume: [RID](class_rid.md#class-rid), shape: [FogVolumeShape](#enum-renderingserver-fogvolumeshape)) [🔗](#class-renderingserver-method-fog-volume-set-shape)

Sets the shape of the fog volume to either [FOG\_VOLUME\_SHAPE\_ELLIPSOID](#class-renderingserver-constant-fog-volume-shape-ellipsoid), [FOG\_VOLUME\_SHAPE\_CONE](#class-renderingserver-constant-fog-volume-shape-cone), [FOG\_VOLUME\_SHAPE\_CYLINDER](#class-renderingserver-constant-fog-volume-shape-cylinder), [FOG\_VOLUME\_SHAPE\_BOX](#class-renderingserver-constant-fog-volume-shape-box) or [FOG\_VOLUME\_SHAPE\_WORLD](#class-renderingserver-constant-fog-volume-shape-world).

* * *

void **fog\_volume\_set\_size**(fog\_volume: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-fog-volume-set-size)

Sets the size of the fog volume when shape is [FOG\_VOLUME\_SHAPE\_ELLIPSOID](#class-renderingserver-constant-fog-volume-shape-ellipsoid), [FOG\_VOLUME\_SHAPE\_CONE](#class-renderingserver-constant-fog-volume-shape-cone), [FOG\_VOLUME\_SHAPE\_CYLINDER](#class-renderingserver-constant-fog-volume-shape-cylinder) or [FOG\_VOLUME\_SHAPE\_BOX](#class-renderingserver-constant-fog-volume-shape-box).

* * *

void **force\_draw**(swap\_buffers: [bool](class_bool.md#class-bool) = true, frame\_step: [float](class_float.md#class-float) = 0.0) [🔗](#class-renderingserver-method-force-draw)

Forces redrawing of all viewports at once. Must be called from the main thread.

* * *

void **force\_sync**() [🔗](#class-renderingserver-method-force-sync)

Forces a synchronization between the CPU and GPU, which may be required in certain cases. Only call this when needed, as CPU-GPU synchronization has a performance cost.

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-free-rid)

Tries to free an object in the RenderingServer. To avoid memory leaks, this should be called after using an object as memory management does not occur automatically when using RenderingServer directly.

* * *

[String](class_string.md#class-string) **get\_current\_rendering\_driver\_name**() const [🔗](#class-renderingserver-method-get-current-rendering-driver-name)

Returns the name of the current rendering driver. This can be `vulkan`, `d3d12`, `metal`, `opengl3`, `opengl3_es`, or `opengl3_angle`. See also [get\_current\_rendering\_method()](#class-renderingserver-method-get-current-rendering-method).

When [ProjectSettings.rendering/renderer/rendering\_method](class_projectsettings.md#class-projectsettings-property-rendering-renderer-rendering-method) is `forward_plus` or `mobile`, the rendering driver is determined by [ProjectSettings.rendering/rendering\_device/driver](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-driver).

When [ProjectSettings.rendering/renderer/rendering\_method](class_projectsettings.md#class-projectsettings-property-rendering-renderer-rendering-method) is `gl_compatibility`, the rendering driver is determined by [ProjectSettings.rendering/gl\_compatibility/driver](class_projectsettings.md#class-projectsettings-property-rendering-gl-compatibility-driver).

The rendering driver is also determined by the `--rendering-driver` command line argument that overrides this project setting, or an automatic fallback that is applied depending on the hardware.

* * *

[String](class_string.md#class-string) **get\_current\_rendering\_method**() const [🔗](#class-renderingserver-method-get-current-rendering-method)

Returns the name of the current rendering method. This can be `forward_plus`, `mobile`, or `gl_compatibility`. See also [get\_current\_rendering\_driver\_name()](#class-renderingserver-method-get-current-rendering-driver-name).

The rendering method is determined by [ProjectSettings.rendering/renderer/rendering\_method](class_projectsettings.md#class-projectsettings-property-rendering-renderer-rendering-method), the `--rendering-method` command line argument that overrides this project setting, or an automatic fallback that is applied depending on the hardware.

* * *

[Color](class_color.md#class-color) **get\_default\_clear\_color**() [🔗](#class-renderingserver-method-get-default-clear-color)

Returns the default clear color which is used when a specific clear color has not been selected. See also [set\_default\_clear\_color()](#class-renderingserver-method-set-default-clear-color).

* * *

[float](class_float.md#class-float) **get\_frame\_setup\_time\_cpu**() const [🔗](#class-renderingserver-method-get-frame-setup-time-cpu)

Returns the time taken to setup rendering on the CPU in milliseconds. This value is shared across all viewports and does _not_ require [viewport\_set\_measure\_render\_time()](#class-renderingserver-method-viewport-set-measure-render-time) to be enabled on a viewport to be queried. See also [viewport\_get\_measured\_render\_time\_cpu()](#class-renderingserver-method-viewport-get-measured-render-time-cpu).

* * *

[RenderingDevice](class_renderingdevice.md#class-renderingdevice) **get\_rendering\_device**() const [🔗](#class-renderingserver-method-get-rendering-device)

Returns the global RenderingDevice.

**Note:** When using the OpenGL rendering driver or when running in headless mode, this function always returns `null`.

* * *

[int](class_int.md#class-int) **get\_rendering\_info**(info: [RenderingInfo](#enum-renderingserver-renderinginfo)) [🔗](#class-renderingserver-method-get-rendering-info)

Returns a statistic about the rendering engine which can be used for performance profiling. See also [viewport\_get\_render\_info()](#class-renderingserver-method-viewport-get-render-info), which returns information specific to a viewport.

**Note:** Only 3D rendering is currently taken into account by some of these values, such as the number of draw calls.

**Note:** Rendering information is not available until at least 2 frames have been rendered by the engine. If rendering information is not available, [get\_rendering\_info()](#class-renderingserver-method-get-rendering-info) returns `0`. To print rendering information in `_ready()` successfully, use the following:

```
func _ready():
    for _i in 2:
        await get_tree().process_frame

    print(RenderingServer.get_rendering_info(RENDERING_INFO_TOTAL_DRAW_CALLS_IN_FRAME))

```

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_shader\_parameter\_list**(shader: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-get-shader-parameter-list)

Returns the parameters of a shader.

* * *

[RID](class_rid.md#class-rid) **get\_test\_cube**() [🔗](#class-renderingserver-method-get-test-cube)

Returns the RID of the test cube. This mesh will be created and returned on the first call to [get\_test\_cube()](#class-renderingserver-method-get-test-cube), then it will be cached for subsequent calls. See also [make\_sphere\_mesh()](#class-renderingserver-method-make-sphere-mesh).

* * *

[RID](class_rid.md#class-rid) **get\_test\_texture**() [🔗](#class-renderingserver-method-get-test-texture)

Returns the RID of a 256×256 texture with a testing pattern on it (in [Image.FORMAT\_RGB8](class_image.md#class-image-constant-format-rgb8) format). This texture will be created and returned on the first call to [get\_test\_texture()](#class-renderingserver-method-get-test-texture), then it will be cached for subsequent calls. See also [get\_white\_texture()](#class-renderingserver-method-get-white-texture).

**Example:** Get the test texture and apply it to a [Sprite2D](class_sprite2d.md#class-sprite2d) node:

```
var texture_rid = RenderingServer.get_test_texture()
var texture = ImageTexture.create_from_image(RenderingServer.texture_2d_get(texture_rid))
$Sprite2D.texture = texture

```

* * *

[String](class_string.md#class-string) **get\_video\_adapter\_api\_version**() const [🔗](#class-renderingserver-method-get-video-adapter-api-version)

Returns the version of the graphics video adapter _currently in use_ (e.g. "1.2.189" for Vulkan, "3.3.0 NVIDIA 510.60.02" for OpenGL). This version may be different from the actual latest version supported by the hardware, as Godot may not always request the latest version. See also [OS.get\_video\_adapter\_driver\_info()](class_os.md#class-os-method-get-video-adapter-driver-info).

**Note:** When running a headless or server binary, this function returns an empty string.

* * *

[String](class_string.md#class-string) **get\_video\_adapter\_name**() const [🔗](#class-renderingserver-method-get-video-adapter-name)

Returns the name of the video adapter (e.g. "GeForce GTX 1080/PCIe/SSE2").

**Note:** When running a headless or server binary, this function returns an empty string.

**Note:** On the web platform, some browsers such as Firefox may report a different, fixed GPU name such as "GeForce GTX 980" (regardless of the user's actual GPU model). This is done to make fingerprinting more difficult.

* * *

[DeviceType](class_renderingdevice.md#enum-renderingdevice-devicetype) **get\_video\_adapter\_type**() const [🔗](#class-renderingserver-method-get-video-adapter-type)

Returns the type of the video adapter. Since dedicated graphics cards from a given generation will _usually_ be significantly faster than integrated graphics made in the same generation, the device type can be used as a basis for automatic graphics settings adjustment. However, this is not always true, so make sure to provide users with a way to manually override graphics settings.

**Note:** When using the OpenGL rendering driver or when running in headless mode, this function always returns [RenderingDevice.DEVICE\_TYPE\_OTHER](class_renderingdevice.md#class-renderingdevice-constant-device-type-other).

* * *

[String](class_string.md#class-string) **get\_video\_adapter\_vendor**() const [🔗](#class-renderingserver-method-get-video-adapter-vendor)

Returns the vendor of the video adapter (e.g. "NVIDIA Corporation").

**Note:** When running a headless or server binary, this function returns an empty string.

* * *

[RID](class_rid.md#class-rid) **get\_white\_texture**() [🔗](#class-renderingserver-method-get-white-texture)

Returns the ID of a 4×4 white texture (in [Image.FORMAT\_RGB8](class_image.md#class-image-constant-format-rgb8) format). This texture will be created and returned on the first call to [get\_white\_texture()](#class-renderingserver-method-get-white-texture), then it will be cached for subsequent calls. See also [get\_test\_texture()](#class-renderingserver-method-get-test-texture).

**Example:** Get the white texture and apply it to a [Sprite2D](class_sprite2d.md#class-sprite2d) node:

```
var texture_rid = RenderingServer.get_white_texture()
var texture = ImageTexture.create_from_image(RenderingServer.texture_2d_get(texture_rid))
$Sprite2D.texture = texture

```

* * *

void **gi\_set\_use\_half\_resolution**(half\_resolution: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-gi-set-use-half-resolution)

If `half_resolution` is `true`, renders [VoxelGI](class_voxelgi.md#class-voxelgi) and SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) buffers at halved resolution on each axis (e.g. 960×540 when the viewport size is 1920×1080). This improves performance significantly when VoxelGI or SDFGI is enabled, at the cost of artifacts that may be visible on polygon edges. The loss in quality becomes less noticeable as the viewport resolution increases. [LightmapGI](class_lightmapgi.md#class-lightmapgi) rendering is not affected by this setting. Equivalent to [ProjectSettings.rendering/global\_illumination/gi/use\_half\_resolution](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-gi-use-half-resolution).

* * *

void **global\_shader\_parameter\_add**(name: [StringName](class_stringname.md#class-stringname), type: [GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype), default\_value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-global-shader-parameter-add)

Creates a new global shader uniform.

**Note:** Global shader parameter names are case-sensitive.

* * *

[Variant](class_variant.md#class-variant) **global\_shader\_parameter\_get**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-global-shader-parameter-get)

Returns the value of the global shader uniform specified by `name`.

**Note:** [global\_shader\_parameter\_get()](#class-renderingserver-method-global-shader-parameter-get) has a large performance penalty as the rendering thread needs to synchronize with the calling thread, which is slow. Do not use this method during gameplay to avoid stuttering. If you need to read values in a script after setting them, consider creating an autoload where you store the values you need to query at the same time you're setting them as global parameters.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **global\_shader\_parameter\_get\_list**() const [🔗](#class-renderingserver-method-global-shader-parameter-get-list)

Returns the list of global shader uniform names.

**Note:** [global\_shader\_parameter\_get()](#class-renderingserver-method-global-shader-parameter-get) has a large performance penalty as the rendering thread needs to synchronize with the calling thread, which is slow. Do not use this method during gameplay to avoid stuttering. If you need to read values in a script after setting them, consider creating an autoload where you store the values you need to query at the same time you're setting them as global parameters.

* * *

[GlobalShaderParameterType](#enum-renderingserver-globalshaderparametertype) **global\_shader\_parameter\_get\_type**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-global-shader-parameter-get-type)

Returns the type associated to the global shader uniform specified by `name`.

**Note:** [global\_shader\_parameter\_get()](#class-renderingserver-method-global-shader-parameter-get) has a large performance penalty as the rendering thread needs to synchronize with the calling thread, which is slow. Do not use this method during gameplay to avoid stuttering. If you need to read values in a script after setting them, consider creating an autoload where you store the values you need to query at the same time you're setting them as global parameters.

* * *

void **global\_shader\_parameter\_remove**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-renderingserver-method-global-shader-parameter-remove)

Removes the global shader uniform specified by `name`.

* * *

void **global\_shader\_parameter\_set**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-global-shader-parameter-set)

Sets the global shader uniform `name` to `value`.

* * *

void **global\_shader\_parameter\_set\_override**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-global-shader-parameter-set-override)

Overrides the global shader uniform `name` with `value`. Equivalent to the [ShaderGlobalsOverride](class_shaderglobalsoverride.md#class-shaderglobalsoverride) node.

* * *

[bool](class_bool.md#class-bool) **has\_changed**() const [🔗](#class-renderingserver-method-has-changed)

Returns `true` if changes have been made to the RenderingServer's data. [force\_draw()](#class-renderingserver-method-force-draw) is usually called if this happens.

* * *

[bool](class_bool.md#class-bool) **has\_feature**(feature: [Features](#enum-renderingserver-features)) const [🔗](#class-renderingserver-method-has-feature)

**Deprecated:** This method has not been used since Godot 3.0.

This method does nothing and always returns `false`.

* * *

[bool](class_bool.md#class-bool) **has\_os\_feature**(feature: [String](class_string.md#class-string)) const [🔗](#class-renderingserver-method-has-os-feature)

Returns `true` if the OS supports a certain `feature`. Features might be `s3tc`, `etc`, and `etc2`.

* * *

void **instance\_attach\_object\_instance\_id**(instance: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-instance-attach-object-instance-id)

Attaches a unique Object ID to instance. Object ID must be attached to instance for proper culling with [instances\_cull\_aabb()](#class-renderingserver-method-instances-cull-aabb), [instances\_cull\_convex()](#class-renderingserver-method-instances-cull-convex), and [instances\_cull\_ray()](#class-renderingserver-method-instances-cull-ray).

* * *

void **instance\_attach\_skeleton**(instance: [RID](class_rid.md#class-rid), skeleton: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-attach-skeleton)

Attaches a skeleton to an instance. Removes the previous skeleton from the instance.

* * *

[RID](class_rid.md#class-rid) **instance\_create**() [🔗](#class-renderingserver-method-instance-create)

Creates a visual instance and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

An instance is a way of placing a 3D object in the scenario. Objects like particles, meshes, reflection probes and decals need to be associated with an instance to be visible in the scenario using [instance\_set\_base()](#class-renderingserver-method-instance-set-base).

**Note:** The equivalent node is [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d).

* * *

[RID](class_rid.md#class-rid) **instance\_create2**(base: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-create2)

Creates a visual instance, adds it to the RenderingServer, and sets both base and scenario. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method. This is a shorthand for using [instance\_create()](#class-renderingserver-method-instance-create) and setting the base and scenario manually.

* * *

[Variant](class_variant.md#class-variant) **instance\_geometry\_get\_shader\_parameter**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-instance-geometry-get-shader-parameter)

Returns the value of the per-instance shader uniform from the specified 3D geometry instance. Equivalent to [GeometryInstance3D.get\_instance\_shader\_parameter()](class_geometryinstance3d.md#class-geometryinstance3d-method-get-instance-shader-parameter).

**Note:** Per-instance shader parameter names are case-sensitive.

* * *

[Variant](class_variant.md#class-variant) **instance\_geometry\_get\_shader\_parameter\_default\_value**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-instance-geometry-get-shader-parameter-default-value)

Returns the default value of the per-instance shader uniform from the specified 3D geometry instance. Equivalent to [GeometryInstance3D.get\_instance\_shader\_parameter()](class_geometryinstance3d.md#class-geometryinstance3d-method-get-instance-shader-parameter).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **instance\_geometry\_get\_shader\_parameter\_list**(instance: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-instance-geometry-get-shader-parameter-list)

Returns a dictionary of per-instance shader uniform names of the per-instance shader uniform from the specified 3D geometry instance. The returned dictionary is in PropertyInfo format, with the keys `name`, `class_name`, `type`, `hint`, `hint_string` and `usage`. Equivalent to [GeometryInstance3D.get\_instance\_shader\_parameter()](class_geometryinstance3d.md#class-geometryinstance3d-method-get-instance-shader-parameter).

* * *

void **instance\_geometry\_set\_cast\_shadows\_setting**(instance: [RID](class_rid.md#class-rid), shadow\_casting\_setting: [ShadowCastingSetting](#enum-renderingserver-shadowcastingsetting)) [🔗](#class-renderingserver-method-instance-geometry-set-cast-shadows-setting)

Sets the shadow casting setting. Equivalent to [GeometryInstance3D.cast\_shadow](class_geometryinstance3d.md#class-geometryinstance3d-property-cast-shadow).

* * *

void **instance\_geometry\_set\_flag**(instance: [RID](class_rid.md#class-rid), flag: [InstanceFlags](#enum-renderingserver-instanceflags), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-instance-geometry-set-flag)

Sets the `flag` for a given `instance` to `enabled`.

* * *

void **instance\_geometry\_set\_lightmap**(instance: [RID](class_rid.md#class-rid), lightmap: [RID](class_rid.md#class-rid), lightmap\_uv\_scale: [Rect2](class_rect2.md#class-rect2), lightmap\_slice: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-instance-geometry-set-lightmap)

Sets the lightmap GI instance to use for the specified 3D geometry instance. The lightmap UV scale for the specified instance (equivalent to [GeometryInstance3D.gi\_lightmap\_scale](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-lightmap-scale)) and lightmap atlas slice must also be specified.

* * *

void **instance\_geometry\_set\_lod\_bias**(instance: [RID](class_rid.md#class-rid), lod\_bias: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-instance-geometry-set-lod-bias)

Sets the level of detail bias to use when rendering the specified 3D geometry instance. Higher values result in higher detail from further away. Equivalent to [GeometryInstance3D.lod\_bias](class_geometryinstance3d.md#class-geometryinstance3d-property-lod-bias).

* * *

void **instance\_geometry\_set\_material\_overlay**(instance: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-geometry-set-material-overlay)

Sets a material that will be rendered for all surfaces on top of active materials for the mesh associated with this instance. Equivalent to [GeometryInstance3D.material\_overlay](class_geometryinstance3d.md#class-geometryinstance3d-property-material-overlay).

* * *

void **instance\_geometry\_set\_material\_override**(instance: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-geometry-set-material-override)

Sets a material that will override the material for all surfaces on the mesh associated with this instance. Equivalent to [GeometryInstance3D.material\_override](class_geometryinstance3d.md#class-geometryinstance3d-property-material-override).

* * *

void **instance\_geometry\_set\_shader\_parameter**(instance: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-instance-geometry-set-shader-parameter)

Sets the per-instance shader uniform on the specified 3D geometry instance. Equivalent to [GeometryInstance3D.set\_instance\_shader\_parameter()](class_geometryinstance3d.md#class-geometryinstance3d-method-set-instance-shader-parameter).

* * *

void **instance\_geometry\_set\_transparency**(instance: [RID](class_rid.md#class-rid), transparency: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-instance-geometry-set-transparency)

Sets the transparency for the given geometry instance. Equivalent to [GeometryInstance3D.transparency](class_geometryinstance3d.md#class-geometryinstance3d-property-transparency).

A transparency of `0.0` is fully opaque, while `1.0` is fully transparent. Values greater than `0.0` (exclusive) will force the geometry's materials to go through the transparent pipeline, which is slower to render and can exhibit rendering issues due to incorrect transparency sorting. However, unlike using a transparent material, setting `transparency` to a value greater than `0.0` (exclusive) will _not_ disable shadow rendering.

In spatial shaders, `1.0 - transparency` is set as the default value of the `ALPHA` built-in.

**Note:** `transparency` is clamped between `0.0` and `1.0`, so this property cannot be used to make transparent materials more opaque than they originally are.

* * *

void **instance\_geometry\_set\_visibility\_range**(instance: [RID](class_rid.md#class-rid), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), min\_margin: [float](class_float.md#class-float), max\_margin: [float](class_float.md#class-float), fade\_mode: [VisibilityRangeFadeMode](#enum-renderingserver-visibilityrangefademode)) [🔗](#class-renderingserver-method-instance-geometry-set-visibility-range)

Sets the visibility range values for the given geometry instance. Equivalent to [GeometryInstance3D.visibility\_range\_begin](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-begin) and related properties.

* * *

void **instance\_set\_base**(instance: [RID](class_rid.md#class-rid), base: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-set-base)

Sets the base of the instance. A base can be any of the 3D objects that are created in the RenderingServer that can be displayed. For example, any of the light types, mesh, multimesh, particle system, reflection probe, decal, lightmap, voxel GI and visibility notifiers are all types that can be set as the base of an instance in order to be displayed in the scenario.

* * *

void **instance\_set\_blend\_shape\_weight**(instance: [RID](class_rid.md#class-rid), shape: [int](class_int.md#class-int), weight: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-instance-set-blend-shape-weight)

Sets the weight for a given blend shape associated with this instance.

* * *

void **instance\_set\_custom\_aabb**(instance: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-instance-set-custom-aabb)

Sets a custom AABB to use when culling objects from the view frustum. Equivalent to setting [GeometryInstance3D.custom\_aabb](class_geometryinstance3d.md#class-geometryinstance3d-property-custom-aabb).

* * *

void **instance\_set\_extra\_visibility\_margin**(instance: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-instance-set-extra-visibility-margin)

Sets a margin to increase the size of the AABB when culling objects from the view frustum. This allows you to avoid culling objects that fall outside the view frustum. Equivalent to [GeometryInstance3D.extra\_cull\_margin](class_geometryinstance3d.md#class-geometryinstance3d-property-extra-cull-margin).

* * *

void **instance\_set\_ignore\_culling**(instance: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-instance-set-ignore-culling)

If `true`, ignores both frustum and occlusion culling on the specified 3D geometry instance. This is not the same as [GeometryInstance3D.ignore\_occlusion\_culling](class_geometryinstance3d.md#class-geometryinstance3d-property-ignore-occlusion-culling), which only ignores occlusion culling and leaves frustum culling intact.

* * *

void **instance\_set\_layer\_mask**(instance: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-instance-set-layer-mask)

Sets the render layers that this instance will be drawn to. Equivalent to [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers).

* * *

void **instance\_set\_pivot\_data**(instance: [RID](class_rid.md#class-rid), sorting\_offset: [float](class_float.md#class-float), use\_aabb\_center: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-instance-set-pivot-data)

Sets the sorting offset and switches between using the bounding box or instance origin for depth sorting.

* * *

void **instance\_set\_scenario**(instance: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-set-scenario)

Sets the scenario that the instance is in. The scenario is the 3D world that the objects will be displayed in.

* * *

void **instance\_set\_surface\_override\_material**(instance: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-set-surface-override-material)

Sets the override material of a specific surface. Equivalent to [MeshInstance3D.set\_surface\_override\_material()](class_meshinstance3d.md#class-meshinstance3d-method-set-surface-override-material).

* * *

void **instance\_set\_transform**(instance: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-renderingserver-method-instance-set-transform)

Sets the world space transform of the instance. Equivalent to [Node3D.global\_transform](class_node3d.md#class-node3d-property-global-transform).

* * *

void **instance\_set\_visibility\_parent**(instance: [RID](class_rid.md#class-rid), parent: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-set-visibility-parent)

Sets the visibility parent for the given instance. Equivalent to [Node3D.visibility\_parent](class_node3d.md#class-node3d-property-visibility-parent).

* * *

void **instance\_set\_visible**(instance: [RID](class_rid.md#class-rid), visible: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-instance-set-visible)

Sets whether an instance is drawn or not. Equivalent to [Node3D.visible](class_node3d.md#class-node3d-property-visible).

* * *

void **instance\_teleport**(instance: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-instance-teleport)

Resets motion vectors and other interpolated values. Use this _after_ teleporting a mesh from one position to another to avoid ghosting artifacts.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **instances\_cull\_aabb**(aabb: [AABB](class_aabb.md#class-aabb), scenario: [RID](class_rid.md#class-rid) = RID()) const [🔗](#class-renderingserver-method-instances-cull-aabb)

Returns an array of object IDs intersecting with the provided AABB. Only 3D nodes that inherit from [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) are considered, such as [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) or [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to obtain the actual nodes. A scenario RID must be provided, which is available in the [World3D](class_world3d.md#class-world3d) you want to query. This forces an update for all resources queued to update.

**Warning:** This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **instances\_cull\_convex**(convex: [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\], scenario: [RID](class_rid.md#class-rid) = RID()) const [🔗](#class-renderingserver-method-instances-cull-convex)

Returns an array of object IDs intersecting with the provided convex shape. Only 3D nodes that inherit from [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) are considered, such as [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) or [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to obtain the actual nodes. A scenario RID must be provided, which is available in the [World3D](class_world3d.md#class-world3d) you want to query. This forces an update for all resources queued to update.

**Warning:** This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **instances\_cull\_ray**(from: [Vector3](class_vector3.md#class-vector3), to: [Vector3](class_vector3.md#class-vector3), scenario: [RID](class_rid.md#class-rid) = RID()) const [🔗](#class-renderingserver-method-instances-cull-ray)

Returns an array of object IDs intersecting with the provided 3D ray. Only 3D nodes that inherit from [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) are considered, such as [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) or [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d). Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to obtain the actual nodes. A scenario RID must be provided, which is available in the [World3D](class_world3d.md#class-world3d) you want to query. This forces an update for all resources queued to update.

**Warning:** This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.

* * *

[bool](class_bool.md#class-bool) **is\_on\_render\_thread**() [🔗](#class-renderingserver-method-is-on-render-thread)

Returns `true` if our code is currently executing on the rendering thread.

* * *

void **light\_directional\_set\_blend\_splits**(light: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-light-directional-set-blend-splits)

If `true`, this directional light will blend between shadow map splits resulting in a smoother transition between them. Equivalent to [DirectionalLight3D.directional\_shadow\_blend\_splits](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-blend-splits).

* * *

void **light\_directional\_set\_shadow\_mode**(light: [RID](class_rid.md#class-rid), mode: [LightDirectionalShadowMode](#enum-renderingserver-lightdirectionalshadowmode)) [🔗](#class-renderingserver-method-light-directional-set-shadow-mode)

Sets the shadow mode for this directional light. Equivalent to [DirectionalLight3D.directional\_shadow\_mode](class_directionallight3d.md#class-directionallight3d-property-directional-shadow-mode).

* * *

void **light\_directional\_set\_sky\_mode**(light: [RID](class_rid.md#class-rid), mode: [LightDirectionalSkyMode](#enum-renderingserver-lightdirectionalskymode)) [🔗](#class-renderingserver-method-light-directional-set-sky-mode)

If `true`, this light will not be used for anything except sky shaders. Use this for lights that impact your sky shader that you may want to hide from affecting the rest of the scene. For example, you may want to enable this when the sun in your sky shader falls below the horizon.

* * *

void **light\_omni\_set\_shadow\_mode**(light: [RID](class_rid.md#class-rid), mode: [LightOmniShadowMode](#enum-renderingserver-lightomnishadowmode)) [🔗](#class-renderingserver-method-light-omni-set-shadow-mode)

Sets whether to use a dual paraboloid or a cubemap for the shadow map. Dual paraboloid is faster but may suffer from artifacts. Equivalent to [OmniLight3D.omni\_shadow\_mode](class_omnilight3d.md#class-omnilight3d-property-omni-shadow-mode).

* * *

void **light\_projectors\_set\_filter**(filter: [LightProjectorFilter](#enum-renderingserver-lightprojectorfilter)) [🔗](#class-renderingserver-method-light-projectors-set-filter)

Sets the texture filter mode to use when rendering light projectors. This parameter is global and cannot be set on a per-light basis.

* * *

void **light\_set\_bake\_mode**(light: [RID](class_rid.md#class-rid), bake\_mode: [LightBakeMode](#enum-renderingserver-lightbakemode)) [🔗](#class-renderingserver-method-light-set-bake-mode)

Sets the bake mode to use for the specified 3D light. Equivalent to [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode).

* * *

void **light\_set\_color**(light: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-light-set-color)

Sets the color of the light. Equivalent to [Light3D.light\_color](class_light3d.md#class-light3d-property-light-color).

* * *

void **light\_set\_cull\_mask**(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-light-set-cull-mask)

Sets the cull mask for this 3D light. Lights only affect objects in the selected layers. Equivalent to [Light3D.light\_cull\_mask](class_light3d.md#class-light3d-property-light-cull-mask).

* * *

void **light\_set\_distance\_fade**(decal: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool), begin: [float](class_float.md#class-float), shadow: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-light-set-distance-fade)

Sets the distance fade for this 3D light. This acts as a form of level of detail (LOD) and can be used to improve performance. Equivalent to [Light3D.distance\_fade\_enabled](class_light3d.md#class-light3d-property-distance-fade-enabled), [Light3D.distance\_fade\_begin](class_light3d.md#class-light3d-property-distance-fade-begin), [Light3D.distance\_fade\_shadow](class_light3d.md#class-light3d-property-distance-fade-shadow), and [Light3D.distance\_fade\_length](class_light3d.md#class-light3d-property-distance-fade-length).

* * *

void **light\_set\_max\_sdfgi\_cascade**(light: [RID](class_rid.md#class-rid), cascade: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-light-set-max-sdfgi-cascade)

Sets the maximum SDFGI cascade in which the 3D light's indirect lighting is rendered. Higher values allow the light to be rendered in SDFGI further away from the camera.

* * *

void **light\_set\_negative**(light: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-light-set-negative)

If `true`, the 3D light will subtract light instead of adding light. Equivalent to [Light3D.light\_negative](class_light3d.md#class-light3d-property-light-negative).

* * *

void **light\_set\_param**(light: [RID](class_rid.md#class-rid), param: [LightParam](#enum-renderingserver-lightparam), value: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-light-set-param)

Sets the specified 3D light parameter. Equivalent to [Light3D.set\_param()](class_light3d.md#class-light3d-method-set-param).

* * *

void **light\_set\_projector**(light: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-light-set-projector)

Sets the projector texture to use for the specified 3D light. Equivalent to [Light3D.light\_projector](class_light3d.md#class-light3d-property-light-projector).

* * *

void **light\_set\_reverse\_cull\_face\_mode**(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-light-set-reverse-cull-face-mode)

If `true`, reverses the backface culling of the mesh. This can be useful when you have a flat mesh that has a light behind it. If you need to cast a shadow on both sides of the mesh, set the mesh to use double-sided shadows with [instance\_geometry\_set\_cast\_shadows\_setting()](#class-renderingserver-method-instance-geometry-set-cast-shadows-setting). Equivalent to [Light3D.shadow\_reverse\_cull\_face](class_light3d.md#class-light3d-property-shadow-reverse-cull-face).

* * *

void **light\_set\_shadow**(light: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-light-set-shadow)

If `true`, light will cast shadows. Equivalent to [Light3D.shadow\_enabled](class_light3d.md#class-light3d-property-shadow-enabled).

* * *

void **light\_set\_shadow\_caster\_mask**(light: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-light-set-shadow-caster-mask)

Sets the shadow caster mask for this 3D light. Shadows will only be cast using objects in the selected layers. Equivalent to [Light3D.shadow\_caster\_mask](class_light3d.md#class-light3d-property-shadow-caster-mask).

* * *

[RID](class_rid.md#class-rid) **lightmap\_create**() [🔗](#class-renderingserver-method-lightmap-create)

Creates a new lightmap global illumination instance and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `lightmap_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [LightmapGI](class_lightmapgi.md#class-lightmapgi).

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **lightmap\_get\_probe\_capture\_bsp\_tree**(lightmap: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-lightmap-get-probe-capture-bsp-tree)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **lightmap\_get\_probe\_capture\_points**(lightmap: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-lightmap-get-probe-capture-points)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) **lightmap\_get\_probe\_capture\_sh**(lightmap: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-lightmap-get-probe-capture-sh)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **lightmap\_get\_probe\_capture\_tetrahedra**(lightmap: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-lightmap-get-probe-capture-tetrahedra)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **lightmap\_set\_baked\_exposure\_normalization**(lightmap: [RID](class_rid.md#class-rid), baked\_exposure: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-lightmap-set-baked-exposure-normalization)

Used to inform the renderer what exposure normalization value was used while baking the lightmap. This value will be used and modulated at run time to ensure that the lightmap maintains a consistent level of exposure even if the scene-wide exposure normalization is changed at run time. For more information see [camera\_attributes\_set\_exposure()](#class-renderingserver-method-camera-attributes-set-exposure).

* * *

void **lightmap\_set\_probe\_bounds**(lightmap: [RID](class_rid.md#class-rid), bounds: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-lightmap-set-probe-bounds)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **lightmap\_set\_probe\_capture\_data**(lightmap: [RID](class_rid.md#class-rid), points: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), point\_sh: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray), tetrahedra: [PackedInt32Array](class_packedint32array.md#class-packedint32array), bsp\_tree: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-renderingserver-method-lightmap-set-probe-capture-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **lightmap\_set\_probe\_capture\_update\_speed**(speed: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-lightmap-set-probe-capture-update-speed)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **lightmap\_set\_probe\_interior**(lightmap: [RID](class_rid.md#class-rid), interior: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-lightmap-set-probe-interior)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **lightmap\_set\_textures**(lightmap: [RID](class_rid.md#class-rid), light: [RID](class_rid.md#class-rid), uses\_sh: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-lightmap-set-textures)

Set the textures on the given `lightmap` GI instance to the texture array pointed to by the `light` RID. If the lightmap texture was baked with [LightmapGI.directional](class_lightmapgi.md#class-lightmapgi-property-directional) set to `true`, then `uses_sh` must also be `true`.

* * *

void **lightmaps\_set\_bicubic\_filter**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-lightmaps-set-bicubic-filter)

Toggles whether a bicubic filter should be used when lightmaps are sampled. This smoothens their appearance at a performance cost.

* * *

[RID](class_rid.md#class-rid) **make\_sphere\_mesh**(latitudes: [int](class_int.md#class-int), longitudes: [int](class_int.md#class-int), radius: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-make-sphere-mesh)

Returns a mesh of a sphere with the given number of horizontal subdivisions, vertical subdivisions and radius. See also [get\_test\_cube()](#class-renderingserver-method-get-test-cube).

* * *

[RID](class_rid.md#class-rid) **material\_create**() [🔗](#class-renderingserver-method-material-create)

Creates an empty material and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `material_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [Material](class_material.md#class-material).

* * *

[Variant](class_variant.md#class-variant) **material\_get\_param**(material: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-material-get-param)

Returns the value of a certain material's parameter.

* * *

void **material\_set\_next\_pass**(material: [RID](class_rid.md#class-rid), next\_material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-material-set-next-pass)

Sets an object's next material.

* * *

void **material\_set\_param**(material: [RID](class_rid.md#class-rid), parameter: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-renderingserver-method-material-set-param)

Sets a material's parameter.

* * *

void **material\_set\_render\_priority**(material: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-material-set-render-priority)

Sets a material's render priority.

* * *

void **material\_set\_shader**(shader\_material: [RID](class_rid.md#class-rid), shader: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-material-set-shader)

Sets a shader material's shader.

* * *

void **mesh\_add\_surface**(mesh: [RID](class_rid.md#class-rid), surface: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-renderingserver-method-mesh-add-surface)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **mesh\_add\_surface\_from\_arrays**(mesh: [RID](class_rid.md#class-rid), primitive: [PrimitiveType](#enum-renderingserver-primitivetype), arrays: [Array](class_array.md#class-array), blend\_shapes: [Array](class_array.md#class-array) = \[\], lods: [Dictionary](class_dictionary.md#class-dictionary) = {}, compress\_format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\] = 0) [🔗](#class-renderingserver-method-mesh-add-surface-from-arrays)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **mesh\_clear**(mesh: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-mesh-clear)

Removes all surfaces from a mesh.

* * *

[RID](class_rid.md#class-rid) **mesh\_create**() [🔗](#class-renderingserver-method-mesh-create)

Creates a new mesh and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `mesh_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this mesh to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent resource is [Mesh](class_mesh.md#class-mesh).

* * *

[RID](class_rid.md#class-rid) **mesh\_create\_from\_surfaces**(surfaces: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\], blend\_shape\_count: [int](class_int.md#class-int) = 0) [🔗](#class-renderingserver-method-mesh-create-from-surfaces)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **mesh\_get\_blend\_shape\_count**(mesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-mesh-get-blend-shape-count)

Returns a mesh's blend shape count.

* * *

[BlendShapeMode](#enum-renderingserver-blendshapemode) **mesh\_get\_blend\_shape\_mode**(mesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-mesh-get-blend-shape-mode)

Returns a mesh's blend shape mode.

* * *

[AABB](class_aabb.md#class-aabb) **mesh\_get\_custom\_aabb**(mesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-mesh-get-custom-aabb)

Returns a mesh's custom aabb.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **mesh\_get\_surface**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-mesh-get-surface)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **mesh\_get\_surface\_count**(mesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-mesh-get-surface-count)

Returns a mesh's number of surfaces.

* * *

void **mesh\_set\_blend\_shape\_mode**(mesh: [RID](class_rid.md#class-rid), mode: [BlendShapeMode](#enum-renderingserver-blendshapemode)) [🔗](#class-renderingserver-method-mesh-set-blend-shape-mode)

Sets a mesh's blend shape mode.

* * *

void **mesh\_set\_custom\_aabb**(mesh: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-mesh-set-custom-aabb)

Sets a mesh's custom aabb.

* * *

void **mesh\_set\_shadow\_mesh**(mesh: [RID](class_rid.md#class-rid), shadow\_mesh: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-mesh-set-shadow-mesh)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array) **mesh\_surface\_get\_arrays**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-arrays)

Returns a mesh's surface's buffer arrays.

* * *

[Array](class_array.md#class-array)\[ [Array](class_array.md#class-array)\] **mesh\_surface\_get\_blend\_shape\_arrays**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-blend-shape-arrays)

Returns a mesh's surface's arrays for blend shapes.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_attribute\_stride**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-attribute-stride)

Returns the stride of the attribute buffer for a mesh with given `format`.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_index\_stride**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-index-stride)

Returns the stride of the index buffer for a mesh with the given `format`.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_normal\_tangent\_stride**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-normal-tangent-stride)

Returns the stride of the combined normals and tangents for a mesh with given `format`. Note importantly that, while normals and tangents are in the vertex buffer with vertices, they are only interleaved with each other and so have a different stride than vertex positions.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_offset**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int), array\_index: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-offset)

Returns the offset of a given attribute by `array_index` in the start of its respective buffer.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_skin\_stride**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-skin-stride)

Returns the stride of the skin buffer for a mesh with given `format`.

* * *

[int](class_int.md#class-int) **mesh\_surface\_get\_format\_vertex\_stride**(format: BitField\[ [ArrayFormat](#enum-renderingserver-arrayformat)\], vertex\_count: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-format-vertex-stride)

Returns the stride of the vertex positions for a mesh with given `format`. Note importantly that vertex positions are stored consecutively and are not interleaved with the other attributes in the vertex buffer (normals and tangents).

* * *

[RID](class_rid.md#class-rid) **mesh\_surface\_get\_material**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-mesh-surface-get-material)

Returns a mesh's surface's material.

* * *

void **mesh\_surface\_remove**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-mesh-surface-remove)

Removes the surface at the given index from the Mesh, shifting surfaces with higher index down by one.

* * *

void **mesh\_surface\_set\_material**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-mesh-surface-set-material)

Sets a mesh's surface's material.

* * *

void **mesh\_surface\_update\_attribute\_region**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingserver-method-mesh-surface-update-attribute-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **mesh\_surface\_update\_index\_region**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingserver-method-mesh-surface-update-index-region)

Updates the index buffer of the mesh surface with the given `data`. The expected data are 16 or 32-bit unsigned integers, which can be determined with [mesh\_surface\_get\_format\_index\_stride()](#class-renderingserver-method-mesh-surface-get-format-index-stride).

* * *

void **mesh\_surface\_update\_skin\_region**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingserver-method-mesh-surface-update-skin-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **mesh\_surface\_update\_vertex\_region**(mesh: [RID](class_rid.md#class-rid), surface: [int](class_int.md#class-int), offset: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingserver-method-mesh-surface-update-vertex-region)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **multimesh\_allocate\_data**(multimesh: [RID](class_rid.md#class-rid), instances: [int](class_int.md#class-int), transform\_format: [MultimeshTransformFormat](#enum-renderingserver-multimeshtransformformat), color\_format: [bool](class_bool.md#class-bool) = false, custom\_data\_format: [bool](class_bool.md#class-bool) = false, use\_indirect: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-multimesh-allocate-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **multimesh\_create**() [🔗](#class-renderingserver-method-multimesh-create)

Creates a new multimesh on the RenderingServer and returns an [RID](class_rid.md#class-rid) handle. This RID will be used in all `multimesh_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this multimesh to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent resource is [MultiMesh](class_multimesh.md#class-multimesh).

* * *

[AABB](class_aabb.md#class-aabb) **multimesh\_get\_aabb**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-aabb)

Calculates and returns the axis-aligned bounding box that encloses all instances within the multimesh.

* * *

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **multimesh\_get\_buffer**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-buffer)

Returns the MultiMesh data (such as instance transforms, colors, etc.). See [multimesh\_set\_buffer()](#class-renderingserver-method-multimesh-set-buffer) for details on the returned data.

**Note:** If the buffer is in the engine's internal cache, it will have to be fetched from GPU memory and possibly decompressed. This means [multimesh\_get\_buffer()](#class-renderingserver-method-multimesh-get-buffer) is potentially a slow operation and should be avoided whenever possible.

* * *

[RID](class_rid.md#class-rid) **multimesh\_get\_buffer\_rd\_rid**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-buffer-rd-rid)

Returns the [RenderingDevice](class_renderingdevice.md#class-renderingdevice) [RID](class_rid.md#class-rid) handle of the [MultiMesh](class_multimesh.md#class-multimesh), which can be used as any other buffer on the Rendering Device.

* * *

[RID](class_rid.md#class-rid) **multimesh\_get\_command\_buffer\_rd\_rid**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-command-buffer-rd-rid)

Returns the [RenderingDevice](class_renderingdevice.md#class-renderingdevice) [RID](class_rid.md#class-rid) handle of the [MultiMesh](class_multimesh.md#class-multimesh) command buffer. This [RID](class_rid.md#class-rid) is only valid if `use_indirect` is set to `true` when allocating data through [multimesh\_allocate\_data()](#class-renderingserver-method-multimesh-allocate-data). It can be used to directly modify the instance count via buffer.

The data structure is dependent on both how many surfaces the mesh contains and whether it is indexed or not, the buffer has 5 integers in it, with the last unused if the mesh is not indexed.

Each of the values in the buffer correspond to these options:

```
Indexed:
  0 - indexCount;
  1 - instanceCount;
  2 - firstIndex;
  3 - vertexOffset;
  4 - firstInstance;
Non Indexed:
  0 - vertexCount;
  1 - instanceCount;
  2 - firstVertex;
  3 - firstInstance;
  4 - unused;

```

* * *

[AABB](class_aabb.md#class-aabb) **multimesh\_get\_custom\_aabb**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-custom-aabb)

Returns the custom AABB defined for this MultiMesh resource.

* * *

[int](class_int.md#class-int) **multimesh\_get\_instance\_count**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-instance-count)

Returns the number of instances allocated for this multimesh.

* * *

[RID](class_rid.md#class-rid) **multimesh\_get\_mesh**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-mesh)

Returns the RID of the mesh that will be used in drawing this multimesh.

* * *

[int](class_int.md#class-int) **multimesh\_get\_visible\_instances**(multimesh: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-multimesh-get-visible-instances)

Returns the number of visible instances for this multimesh.

* * *

[Color](class_color.md#class-color) **multimesh\_instance\_get\_color**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-multimesh-instance-get-color)

Returns the color by which the specified instance will be modulated.

* * *

[Color](class_color.md#class-color) **multimesh\_instance\_get\_custom\_data**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-multimesh-instance-get-custom-data)

Returns the custom data associated with the specified instance.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **multimesh\_instance\_get\_transform**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-multimesh-instance-get-transform)

Returns the [Transform3D](class_transform3d.md#class-transform3d) of the specified instance.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **multimesh\_instance\_get\_transform\_2d**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-multimesh-instance-get-transform-2d)

Returns the [Transform2D](class_transform2d.md#class-transform2d) of the specified instance. For use when the multimesh is set to use 2D transforms.

* * *

void **multimesh\_instance\_reset\_physics\_interpolation**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-multimesh-instance-reset-physics-interpolation)

Prevents physics interpolation for the specified instance during the current physics tick.

This is useful when moving an instance to a new location, to give an instantaneous change rather than interpolation from the previous location.

* * *

void **multimesh\_instance\_set\_color**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-multimesh-instance-set-color)

Sets the color by which this instance will be modulated. Equivalent to [MultiMesh.set\_instance\_color()](class_multimesh.md#class-multimesh-method-set-instance-color).

* * *

void **multimesh\_instance\_set\_custom\_data**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), custom\_data: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-multimesh-instance-set-custom-data)

Sets the custom data for this instance. Custom data is passed as a [Color](class_color.md#class-color), but is interpreted as a `vec4` in the shader. Equivalent to [MultiMesh.set\_instance\_custom\_data()](class_multimesh.md#class-multimesh-method-set-instance-custom-data).

* * *

void **multimesh\_instance\_set\_transform**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-renderingserver-method-multimesh-instance-set-transform)

Sets the [Transform3D](class_transform3d.md#class-transform3d) for this instance. Equivalent to [MultiMesh.set\_instance\_transform()](class_multimesh.md#class-multimesh-method-set-instance-transform).

* * *

void **multimesh\_instance\_set\_transform\_2d**(multimesh: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-multimesh-instance-set-transform-2d)

Sets the [Transform2D](class_transform2d.md#class-transform2d) for this instance. For use when multimesh is used in 2D. Equivalent to [MultiMesh.set\_instance\_transform\_2d()](class_multimesh.md#class-multimesh-method-set-instance-transform-2d).

* * *

void **multimesh\_set\_buffer**(multimesh: [RID](class_rid.md#class-rid), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-renderingserver-method-multimesh-set-buffer)

Set the entire data to use for drawing the `multimesh` at once to `buffer` (such as instance transforms and colors). `buffer`'s size must match the number of instances multiplied by the per-instance data size (which depends on the enabled MultiMesh fields). Otherwise, an error message is printed and nothing is rendered. See also [multimesh\_get\_buffer()](#class-renderingserver-method-multimesh-get-buffer).

The per-instance data size and expected data order is:

```
2D:
  - Position: 8 floats (8 floats for Transform2D)
  - Position + Vertex color: 12 floats (8 floats for Transform2D, 4 floats for Color)
  - Position + Custom data: 12 floats (8 floats for Transform2D, 4 floats of custom data)
  - Position + Vertex color + Custom data: 16 floats (8 floats for Transform2D, 4 floats for Color, 4 floats of custom data)
3D:
  - Position: 12 floats (12 floats for Transform3D)
  - Position + Vertex color: 16 floats (12 floats for Transform3D, 4 floats for Color)
  - Position + Custom data: 16 floats (12 floats for Transform3D, 4 floats of custom data)
  - Position + Vertex color + Custom data: 20 floats (12 floats for Transform3D, 4 floats for Color, 4 floats of custom data)

```

Instance transforms are in row-major order. Specifically:

- For [Transform2D](class_transform2d.md#class-transform2d) the float-order is: `(x.x, y.x, padding_float, origin.x, x.y, y.y, padding_float, origin.y)`.

- For [Transform3D](class_transform3d.md#class-transform3d) the float-order is: `(basis.x.x, basis.y.x, basis.z.x, origin.x, basis.x.y, basis.y.y, basis.z.y, origin.y, basis.x.z, basis.y.z, basis.z.z, origin.z)`.


* * *

void **multimesh\_set\_buffer\_interpolated**(multimesh: [RID](class_rid.md#class-rid), buffer: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), buffer\_previous: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array)) [🔗](#class-renderingserver-method-multimesh-set-buffer-interpolated)

Alternative version of [multimesh\_set\_buffer()](#class-renderingserver-method-multimesh-set-buffer) for use with physics interpolation.

Takes both an array of current data and an array of data for the previous physics tick.

* * *

void **multimesh\_set\_custom\_aabb**(multimesh: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-multimesh-set-custom-aabb)

Sets the custom AABB for this MultiMesh resource.

* * *

void **multimesh\_set\_mesh**(multimesh: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-multimesh-set-mesh)

Sets the mesh to be drawn by the multimesh. Equivalent to [MultiMesh.mesh](class_multimesh.md#class-multimesh-property-mesh).

* * *

void **multimesh\_set\_physics\_interpolated**(multimesh: [RID](class_rid.md#class-rid), interpolated: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-multimesh-set-physics-interpolated)

Turns on and off physics interpolation for this MultiMesh resource.

* * *

void **multimesh\_set\_physics\_interpolation\_quality**(multimesh: [RID](class_rid.md#class-rid), quality: [MultimeshPhysicsInterpolationQuality](#enum-renderingserver-multimeshphysicsinterpolationquality)) [🔗](#class-renderingserver-method-multimesh-set-physics-interpolation-quality)

Sets the physics interpolation quality for the [MultiMesh](class_multimesh.md#class-multimesh).

A value of [MULTIMESH\_INTERP\_QUALITY\_FAST](#class-renderingserver-constant-multimesh-interp-quality-fast) gives fast but low quality interpolation, a value of [MULTIMESH\_INTERP\_QUALITY\_HIGH](#class-renderingserver-constant-multimesh-interp-quality-high) gives slower but higher quality interpolation.

* * *

void **multimesh\_set\_visible\_instances**(multimesh: [RID](class_rid.md#class-rid), visible: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-multimesh-set-visible-instances)

Sets the number of instances visible at a given time. If -1, all instances that have been allocated are drawn. Equivalent to [MultiMesh.visible\_instance\_count](class_multimesh.md#class-multimesh-property-visible-instance-count).

* * *

[RID](class_rid.md#class-rid) **occluder\_create**() [🔗](#class-renderingserver-method-occluder-create)

Creates an occluder instance and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `occluder_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [Occluder3D](class_occluder3d.md#class-occluder3d) (not to be confused with the [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d) node).

* * *

void **occluder\_set\_mesh**(occluder: [RID](class_rid.md#class-rid), vertices: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), indices: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-renderingserver-method-occluder-set-mesh)

Sets the mesh data for the given occluder RID, which controls the shape of the occlusion culling that will be performed.

* * *

[RID](class_rid.md#class-rid) **omni\_light\_create**() [🔗](#class-renderingserver-method-omni-light-create)

Creates a new omni light and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this omni light to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent node is [OmniLight3D](class_omnilight3d.md#class-omnilight3d).

* * *

[RID](class_rid.md#class-rid) **particles\_collision\_create**() [🔗](#class-renderingserver-method-particles-collision-create)

Creates a new 3D GPU particle collision or attractor and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID can be used in most `particles_collision_*` RenderingServer functions.

**Note:** The equivalent nodes are [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) and [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d).

* * *

void **particles\_collision\_height\_field\_update**(particles\_collision: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-collision-height-field-update)

Requests an update for the 3D GPU particle collision heightfield. This may be automatically called by the 3D GPU particle collision heightfield depending on its [GPUParticlesCollisionHeightField3D.update\_mode](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d-property-update-mode).

* * *

void **particles\_collision\_set\_attractor\_attenuation**(particles\_collision: [RID](class_rid.md#class-rid), curve: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-collision-set-attractor-attenuation)

Sets the attenuation `curve` for the 3D GPU particles attractor specified by the `particles_collision` RID. Only used for attractors, not colliders. Equivalent to [GPUParticlesAttractor3D.attenuation](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d-property-attenuation).

* * *

void **particles\_collision\_set\_attractor\_directionality**(particles\_collision: [RID](class_rid.md#class-rid), amount: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-collision-set-attractor-directionality)

Sets the directionality `amount` for the 3D GPU particles attractor specified by the `particles_collision` RID. Only used for attractors, not colliders. Equivalent to [GPUParticlesAttractor3D.directionality](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d-property-directionality).

* * *

void **particles\_collision\_set\_attractor\_strength**(particles\_collision: [RID](class_rid.md#class-rid), strength: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-collision-set-attractor-strength)

Sets the `strength` for the 3D GPU particles attractor specified by the `particles_collision` RID. Only used for attractors, not colliders. Equivalent to [GPUParticlesAttractor3D.strength](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d-property-strength).

* * *

void **particles\_collision\_set\_box\_extents**(particles\_collision: [RID](class_rid.md#class-rid), extents: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-particles-collision-set-box-extents)

Sets the `extents` for the 3D GPU particles collision by the `particles_collision` RID. Equivalent to [GPUParticlesCollisionBox3D.size](class_gpuparticlescollisionbox3d.md#class-gpuparticlescollisionbox3d-property-size), [GPUParticlesCollisionSDF3D.size](class_gpuparticlescollisionsdf3d.md#class-gpuparticlescollisionsdf3d-property-size), [GPUParticlesCollisionHeightField3D.size](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d-property-size), [GPUParticlesAttractorBox3D.size](class_gpuparticlesattractorbox3d.md#class-gpuparticlesattractorbox3d-property-size) or [GPUParticlesAttractorVectorField3D.size](class_gpuparticlesattractorvectorfield3d.md#class-gpuparticlesattractorvectorfield3d-property-size) depending on the `particles_collision` type.

* * *

void **particles\_collision\_set\_collision\_type**(particles\_collision: [RID](class_rid.md#class-rid), type: [ParticlesCollisionType](#enum-renderingserver-particlescollisiontype)) [🔗](#class-renderingserver-method-particles-collision-set-collision-type)

Sets the collision or attractor shape `type` for the 3D GPU particles collision or attractor specified by the `particles_collision` RID.

* * *

void **particles\_collision\_set\_cull\_mask**(particles\_collision: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-collision-set-cull-mask)

Sets the cull `mask` for the 3D GPU particles collision or attractor specified by the `particles_collision` RID. Equivalent to [GPUParticlesCollision3D.cull\_mask](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d-property-cull-mask) or [GPUParticlesAttractor3D.cull\_mask](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d-property-cull-mask) depending on the `particles_collision` type.

* * *

void **particles\_collision\_set\_field\_texture**(particles\_collision: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-collision-set-field-texture)

Sets the signed distance field `texture` for the 3D GPU particles collision specified by the `particles_collision` RID. Equivalent to [GPUParticlesCollisionSDF3D.texture](class_gpuparticlescollisionsdf3d.md#class-gpuparticlescollisionsdf3d-property-texture) or [GPUParticlesAttractorVectorField3D.texture](class_gpuparticlesattractorvectorfield3d.md#class-gpuparticlesattractorvectorfield3d-property-texture) depending on the `particles_collision` type.

* * *

void **particles\_collision\_set\_height\_field\_mask**(particles\_collision: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-collision-set-height-field-mask)

Sets the heightfield `mask` for the 3D GPU particles heightfield collision specified by the `particles_collision` RID. Equivalent to [GPUParticlesCollisionHeightField3D.heightfield\_mask](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d-property-heightfield-mask).

* * *

void **particles\_collision\_set\_height\_field\_resolution**(particles\_collision: [RID](class_rid.md#class-rid), resolution: [ParticlesCollisionHeightfieldResolution](#enum-renderingserver-particlescollisionheightfieldresolution)) [🔗](#class-renderingserver-method-particles-collision-set-height-field-resolution)

Sets the heightmap `resolution` for the 3D GPU particles heightfield collision specified by the `particles_collision` RID. Equivalent to [GPUParticlesCollisionHeightField3D.resolution](class_gpuparticlescollisionheightfield3d.md#class-gpuparticlescollisionheightfield3d-property-resolution).

* * *

void **particles\_collision\_set\_sphere\_radius**(particles\_collision: [RID](class_rid.md#class-rid), radius: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-collision-set-sphere-radius)

Sets the `radius` for the 3D GPU particles sphere collision or attractor specified by the `particles_collision` RID. Equivalent to [GPUParticlesCollisionSphere3D.radius](class_gpuparticlescollisionsphere3d.md#class-gpuparticlescollisionsphere3d-property-radius) or [GPUParticlesAttractorSphere3D.radius](class_gpuparticlesattractorsphere3d.md#class-gpuparticlesattractorsphere3d-property-radius) depending on the `particles_collision` type.

* * *

[RID](class_rid.md#class-rid) **particles\_create**() [🔗](#class-renderingserver-method-particles-create)

Creates a GPU-based particle system and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `particles_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach these particles to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent nodes are [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) and [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d).

**Note:** All `particles_*` methods only apply to GPU-based particles, not CPU-based particles. [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d) and [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d) do not have equivalent RenderingServer functions available, as these use [MultiMeshInstance2D](class_multimeshinstance2d.md#class-multimeshinstance2d) and [MultiMeshInstance3D](class_multimeshinstance3d.md#class-multimeshinstance3d) under the hood (see `multimesh_*` methods).

* * *

void **particles\_emit**(particles: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), velocity: [Vector3](class_vector3.md#class-vector3), color: [Color](class_color.md#class-color), custom: [Color](class_color.md#class-color), emit\_flags: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-emit)

Manually emits particles from the `particles` instance.

* * *

[AABB](class_aabb.md#class-aabb) **particles\_get\_current\_aabb**(particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-get-current-aabb)

Calculates and returns the axis-aligned bounding box that contains all the particles. Equivalent to [GPUParticles3D.capture\_aabb()](class_gpuparticles3d.md#class-gpuparticles3d-method-capture-aabb).

* * *

[bool](class_bool.md#class-bool) **particles\_get\_emitting**(particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-get-emitting)

Returns `true` if particles are currently set to emitting.

* * *

[bool](class_bool.md#class-bool) **particles\_is\_inactive**(particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-is-inactive)

Returns `true` if particles are not emitting and particles are set to inactive.

* * *

void **particles\_request\_process**(particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-request-process)

Add particle system to list of particle systems that need to be updated. Update will take place on the next frame, or on the next call to [instances\_cull\_aabb()](#class-renderingserver-method-instances-cull-aabb), [instances\_cull\_convex()](#class-renderingserver-method-instances-cull-convex), or [instances\_cull\_ray()](#class-renderingserver-method-instances-cull-ray).

* * *

void **particles\_request\_process\_time**(particles: [RID](class_rid.md#class-rid), time: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-request-process-time)

Requests particles to process for extra process time during a single frame.

* * *

void **particles\_restart**(particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-restart)

Reset the particles on the next update. Equivalent to [GPUParticles3D.restart()](class_gpuparticles3d.md#class-gpuparticles3d-method-restart).

* * *

void **particles\_set\_amount**(particles: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-set-amount)

Sets the number of particles to be drawn and allocates the memory for them. Equivalent to [GPUParticles3D.amount](class_gpuparticles3d.md#class-gpuparticles3d-property-amount).

* * *

void **particles\_set\_amount\_ratio**(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-amount-ratio)

Sets the amount ratio for particles to be emitted. Equivalent to [GPUParticles3D.amount\_ratio](class_gpuparticles3d.md#class-gpuparticles3d-property-amount-ratio).

* * *

void **particles\_set\_collision\_base\_size**(particles: [RID](class_rid.md#class-rid), size: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-collision-base-size)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **particles\_set\_custom\_aabb**(particles: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-particles-set-custom-aabb)

Sets a custom axis-aligned bounding box for the particle system. Equivalent to [GPUParticles3D.visibility\_aabb](class_gpuparticles3d.md#class-gpuparticles3d-property-visibility-aabb).

* * *

void **particles\_set\_draw\_order**(particles: [RID](class_rid.md#class-rid), order: [ParticlesDrawOrder](#enum-renderingserver-particlesdraworder)) [🔗](#class-renderingserver-method-particles-set-draw-order)

Sets the draw order of the particles. Equivalent to [GPUParticles3D.draw\_order](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-order).

* * *

void **particles\_set\_draw\_pass\_mesh**(particles: [RID](class_rid.md#class-rid), pass: [int](class_int.md#class-int), mesh: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-set-draw-pass-mesh)

Sets the mesh to be used for the specified draw pass. Equivalent to [GPUParticles3D.draw\_pass\_1](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-pass-1), [GPUParticles3D.draw\_pass\_2](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-pass-2), [GPUParticles3D.draw\_pass\_3](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-pass-3), and [GPUParticles3D.draw\_pass\_4](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-pass-4).

* * *

void **particles\_set\_draw\_passes**(particles: [RID](class_rid.md#class-rid), count: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-set-draw-passes)

Sets the number of draw passes to use. Equivalent to [GPUParticles3D.draw\_passes](class_gpuparticles3d.md#class-gpuparticles3d-property-draw-passes).

* * *

void **particles\_set\_emission\_transform**(particles: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-renderingserver-method-particles-set-emission-transform)

Sets the [Transform3D](class_transform3d.md#class-transform3d) that will be used by the particles when they first emit.

* * *

void **particles\_set\_emitter\_velocity**(particles: [RID](class_rid.md#class-rid), velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-particles-set-emitter-velocity)

Sets the velocity of a particle node, that will be used by [ParticleProcessMaterial.inherit\_velocity\_ratio](class_particleprocessmaterial.md#class-particleprocessmaterial-property-inherit-velocity-ratio).

* * *

void **particles\_set\_emitting**(particles: [RID](class_rid.md#class-rid), emitting: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-particles-set-emitting)

If `true`, particles will emit over time. Setting to `false` does not reset the particles, but only stops their emission. Equivalent to [GPUParticles3D.emitting](class_gpuparticles3d.md#class-gpuparticles3d-property-emitting).

* * *

void **particles\_set\_explosiveness\_ratio**(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-explosiveness-ratio)

Sets the explosiveness ratio. Equivalent to [GPUParticles3D.explosiveness](class_gpuparticles3d.md#class-gpuparticles3d-property-explosiveness).

* * *

void **particles\_set\_fixed\_fps**(particles: [RID](class_rid.md#class-rid), fps: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-particles-set-fixed-fps)

Sets the frame rate that the particle system rendering will be fixed to. Equivalent to [GPUParticles3D.fixed\_fps](class_gpuparticles3d.md#class-gpuparticles3d-property-fixed-fps).

* * *

void **particles\_set\_fractional\_delta**(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-particles-set-fractional-delta)

If `true`, uses fractional delta which smooths the movement of the particles. Equivalent to [GPUParticles3D.fract\_delta](class_gpuparticles3d.md#class-gpuparticles3d-property-fract-delta).

* * *

void **particles\_set\_interp\_to\_end**(particles: [RID](class_rid.md#class-rid), factor: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-interp-to-end)

Sets the value that informs a [ParticleProcessMaterial](class_particleprocessmaterial.md#class-particleprocessmaterial) to rush all particles towards the end of their lifetime.

* * *

void **particles\_set\_interpolate**(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-particles-set-interpolate)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **particles\_set\_lifetime**(particles: [RID](class_rid.md#class-rid), lifetime: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-lifetime)

Sets the lifetime of each particle in the system. Equivalent to [GPUParticles3D.lifetime](class_gpuparticles3d.md#class-gpuparticles3d-property-lifetime).

* * *

void **particles\_set\_mode**(particles: [RID](class_rid.md#class-rid), mode: [ParticlesMode](#enum-renderingserver-particlesmode)) [🔗](#class-renderingserver-method-particles-set-mode)

Sets whether the GPU particles specified by the `particles` RID should be rendered in 2D or 3D according to `mode`.

* * *

void **particles\_set\_one\_shot**(particles: [RID](class_rid.md#class-rid), one\_shot: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-particles-set-one-shot)

If `true`, particles will emit once and then stop. Equivalent to [GPUParticles3D.one\_shot](class_gpuparticles3d.md#class-gpuparticles3d-property-one-shot).

* * *

void **particles\_set\_pre\_process\_time**(particles: [RID](class_rid.md#class-rid), time: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-pre-process-time)

Sets the preprocess time for the particles' animation. This lets you delay starting an animation until after the particles have begun emitting. Equivalent to [GPUParticles3D.preprocess](class_gpuparticles3d.md#class-gpuparticles3d-property-preprocess).

* * *

void **particles\_set\_process\_material**(particles: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-set-process-material)

Sets the material for processing the particles.

**Note:** This is not the material used to draw the materials. Equivalent to [GPUParticles3D.process\_material](class_gpuparticles3d.md#class-gpuparticles3d-property-process-material).

* * *

void **particles\_set\_randomness\_ratio**(particles: [RID](class_rid.md#class-rid), ratio: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-randomness-ratio)

Sets the emission randomness ratio. This randomizes the emission of particles within their phase. Equivalent to [GPUParticles3D.randomness](class_gpuparticles3d.md#class-gpuparticles3d-property-randomness).

* * *

void **particles\_set\_speed\_scale**(particles: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-speed-scale)

Sets the speed scale of the particle system. Equivalent to [GPUParticles3D.speed\_scale](class_gpuparticles3d.md#class-gpuparticles3d-property-speed-scale).

* * *

void **particles\_set\_subemitter**(particles: [RID](class_rid.md#class-rid), subemitter\_particles: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-particles-set-subemitter)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **particles\_set\_trail\_bind\_poses**(particles: [RID](class_rid.md#class-rid), bind\_poses: [Array](class_array.md#class-array)\[ [Transform3D](class_transform3d.md#class-transform3d)\]) [🔗](#class-renderingserver-method-particles-set-trail-bind-poses)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **particles\_set\_trails**(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool), length\_sec: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-particles-set-trails)

If `enable` is `true`, enables trails for the `particles` with the specified `length_sec` in seconds. Equivalent to [GPUParticles3D.trail\_enabled](class_gpuparticles3d.md#class-gpuparticles3d-property-trail-enabled) and [GPUParticles3D.trail\_lifetime](class_gpuparticles3d.md#class-gpuparticles3d-property-trail-lifetime).

* * *

void **particles\_set\_transform\_align**(particles: [RID](class_rid.md#class-rid), align: [ParticlesTransformAlign](#enum-renderingserver-particlestransformalign)) [🔗](#class-renderingserver-method-particles-set-transform-align)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **particles\_set\_use\_local\_coordinates**(particles: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-particles-set-use-local-coordinates)

If `true`, particles use local coordinates. If `false` they use global coordinates. Equivalent to [GPUParticles3D.local\_coords](class_gpuparticles3d.md#class-gpuparticles3d-property-local-coords).

* * *

void **positional\_soft\_shadow\_filter\_set\_quality**(quality: [ShadowQuality](#enum-renderingserver-shadowquality)) [🔗](#class-renderingserver-method-positional-soft-shadow-filter-set-quality)

Sets the filter quality for omni and spot light shadows in 3D. See also [ProjectSettings.rendering/lights\_and\_shadows/positional\_shadow/soft\_shadow\_filter\_quality](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-positional-shadow-soft-shadow-filter-quality). This parameter is global and cannot be set on a per-viewport basis.

* * *

[RID](class_rid.md#class-rid) **reflection\_probe\_create**() [🔗](#class-renderingserver-method-reflection-probe-create)

Creates a reflection probe and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `reflection_probe_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this reflection probe to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent node is [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe).

* * *

void **reflection\_probe\_set\_ambient\_color**(probe: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-reflection-probe-set-ambient-color)

Sets the reflection probe's custom ambient light color. Equivalent to [ReflectionProbe.ambient\_color](class_reflectionprobe.md#class-reflectionprobe-property-ambient-color).

* * *

void **reflection\_probe\_set\_ambient\_energy**(probe: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-reflection-probe-set-ambient-energy)

Sets the reflection probe's custom ambient light energy. Equivalent to [ReflectionProbe.ambient\_color\_energy](class_reflectionprobe.md#class-reflectionprobe-property-ambient-color-energy).

* * *

void **reflection\_probe\_set\_ambient\_mode**(probe: [RID](class_rid.md#class-rid), mode: [ReflectionProbeAmbientMode](#enum-renderingserver-reflectionprobeambientmode)) [🔗](#class-renderingserver-method-reflection-probe-set-ambient-mode)

Sets the reflection probe's ambient light mode. Equivalent to [ReflectionProbe.ambient\_mode](class_reflectionprobe.md#class-reflectionprobe-property-ambient-mode).

* * *

void **reflection\_probe\_set\_as\_interior**(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-reflection-probe-set-as-interior)

If `true`, reflections will ignore sky contribution. Equivalent to [ReflectionProbe.interior](class_reflectionprobe.md#class-reflectionprobe-property-interior).

* * *

void **reflection\_probe\_set\_blend\_distance**(probe: [RID](class_rid.md#class-rid), blend\_distance: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-reflection-probe-set-blend-distance)

Sets the distance in meters over which a probe blends into the scene.

* * *

void **reflection\_probe\_set\_cull\_mask**(probe: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-reflection-probe-set-cull-mask)

Sets the render cull mask for this reflection probe. Only instances with a matching layer will be reflected by this probe. Equivalent to [ReflectionProbe.cull\_mask](class_reflectionprobe.md#class-reflectionprobe-property-cull-mask).

* * *

void **reflection\_probe\_set\_enable\_box\_projection**(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-reflection-probe-set-enable-box-projection)

If `true`, uses box projection. This can make reflections look more correct in certain situations. Equivalent to [ReflectionProbe.box\_projection](class_reflectionprobe.md#class-reflectionprobe-property-box-projection).

* * *

void **reflection\_probe\_set\_enable\_shadows**(probe: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-reflection-probe-set-enable-shadows)

If `true`, computes shadows in the reflection probe. This makes the reflection much slower to compute. Equivalent to [ReflectionProbe.enable\_shadows](class_reflectionprobe.md#class-reflectionprobe-property-enable-shadows).

* * *

void **reflection\_probe\_set\_intensity**(probe: [RID](class_rid.md#class-rid), intensity: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-reflection-probe-set-intensity)

Sets the intensity of the reflection probe. Intensity modulates the strength of the reflection. Equivalent to [ReflectionProbe.intensity](class_reflectionprobe.md#class-reflectionprobe-property-intensity).

* * *

void **reflection\_probe\_set\_max\_distance**(probe: [RID](class_rid.md#class-rid), distance: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-reflection-probe-set-max-distance)

Sets the max distance away from the probe an object can be before it is culled. Equivalent to [ReflectionProbe.max\_distance](class_reflectionprobe.md#class-reflectionprobe-property-max-distance).

* * *

void **reflection\_probe\_set\_mesh\_lod\_threshold**(probe: [RID](class_rid.md#class-rid), pixels: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-reflection-probe-set-mesh-lod-threshold)

Sets the mesh level of detail to use in the reflection probe rendering. Higher values will use less detailed versions of meshes that have LOD variations generated, which can improve performance. Equivalent to [ReflectionProbe.mesh\_lod\_threshold](class_reflectionprobe.md#class-reflectionprobe-property-mesh-lod-threshold).

* * *

void **reflection\_probe\_set\_origin\_offset**(probe: [RID](class_rid.md#class-rid), offset: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-reflection-probe-set-origin-offset)

Sets the origin offset to be used when this reflection probe is in box project mode. Equivalent to [ReflectionProbe.origin\_offset](class_reflectionprobe.md#class-reflectionprobe-property-origin-offset).

* * *

void **reflection\_probe\_set\_reflection\_mask**(probe: [RID](class_rid.md#class-rid), layers: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-reflection-probe-set-reflection-mask)

Sets the render reflection mask for this reflection probe. Only instances with a matching layer will have reflections applied from this probe. Equivalent to [ReflectionProbe.reflection\_mask](class_reflectionprobe.md#class-reflectionprobe-property-reflection-mask).

* * *

void **reflection\_probe\_set\_resolution**(probe: [RID](class_rid.md#class-rid), resolution: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-reflection-probe-set-resolution)

Sets the resolution to use when rendering the specified reflection probe. The `resolution` is specified for each cubemap face: for instance, specifying `512` will allocate 6 faces of 512×512 each (plus mipmaps for roughness levels).

* * *

void **reflection\_probe\_set\_size**(probe: [RID](class_rid.md#class-rid), size: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-renderingserver-method-reflection-probe-set-size)

Sets the size of the area that the reflection probe will capture. Equivalent to [ReflectionProbe.size](class_reflectionprobe.md#class-reflectionprobe-property-size).

* * *

void **reflection\_probe\_set\_update\_mode**(probe: [RID](class_rid.md#class-rid), mode: [ReflectionProbeUpdateMode](#enum-renderingserver-reflectionprobeupdatemode)) [🔗](#class-renderingserver-method-reflection-probe-set-update-mode)

Sets how often the reflection probe updates. Can either be once or every frame.

* * *

void **request\_frame\_drawn\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingserver-method-request-frame-drawn-callback)

Schedules a callback to the given callable after a frame has been drawn.

* * *

[RID](class_rid.md#class-rid) **scenario\_create**() [🔗](#class-renderingserver-method-scenario-create)

Creates a scenario and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `scenario_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

The scenario is the 3D world that all the visual instances exist in.

* * *

void **scenario\_set\_camera\_attributes**(scenario: [RID](class_rid.md#class-rid), effects: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-scenario-set-camera-attributes)

Sets the camera attributes ( `effects`) that will be used with this scenario. See also [CameraAttributes](class_cameraattributes.md#class-cameraattributes).

* * *

void **scenario\_set\_compositor**(scenario: [RID](class_rid.md#class-rid), compositor: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-scenario-set-compositor)

Sets the compositor ( `compositor`) that will be used with this scenario. See also [Compositor](class_compositor.md#class-compositor).

* * *

void **scenario\_set\_environment**(scenario: [RID](class_rid.md#class-rid), environment: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-scenario-set-environment)

Sets the environment that will be used with this scenario. See also [Environment](class_environment.md#class-environment).

* * *

void **scenario\_set\_fallback\_environment**(scenario: [RID](class_rid.md#class-rid), environment: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-scenario-set-fallback-environment)

Sets the fallback environment to be used by this scenario. The fallback environment is used if no environment is set. Internally, this is used by the editor to provide a default environment.

* * *

void **screen\_space\_roughness\_limiter\_set\_active**(enable: [bool](class_bool.md#class-bool), amount: [float](class_float.md#class-float), limit: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-screen-space-roughness-limiter-set-active)

Sets the screen-space roughness limiter parameters, such as whether it should be enabled and its thresholds. Equivalent to [ProjectSettings.rendering/anti\_aliasing/screen\_space\_roughness\_limiter/enabled](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-enabled), [ProjectSettings.rendering/anti\_aliasing/screen\_space\_roughness\_limiter/amount](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-amount) and [ProjectSettings.rendering/anti\_aliasing/screen\_space\_roughness\_limiter/limit](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-screen-space-roughness-limiter-limit).

* * *

void **set\_boot\_image**(image: [Image](class_image.md#class-image), color: [Color](class_color.md#class-color), scale: [bool](class_bool.md#class-bool), use\_filter: [bool](class_bool.md#class-bool) = true) [🔗](#class-renderingserver-method-set-boot-image)

Sets a boot image. The color defines the background color. If `scale` is `true`, the image will be scaled to fit the screen size. If `use_filter` is `true`, the image will be scaled with linear interpolation. If `use_filter` is `false`, the image will be scaled with nearest-neighbor interpolation.

* * *

void **set\_debug\_generate\_wireframes**(generate: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-set-debug-generate-wireframes)

If `generate` is `true`, generates debug wireframes for all meshes that are loaded when using the Compatibility renderer. By default, the engine does not generate debug wireframes at runtime, since they slow down loading of assets and take up VRAM.

**Note:** You must call this method before loading any meshes when using the Compatibility renderer, otherwise wireframes will not be used.

* * *

void **set\_default\_clear\_color**(color: [Color](class_color.md#class-color)) [🔗](#class-renderingserver-method-set-default-clear-color)

Sets the default clear color which is used when a specific clear color has not been selected. See also [get\_default\_clear\_color()](#class-renderingserver-method-get-default-clear-color).

* * *

[RID](class_rid.md#class-rid) **shader\_create**() [🔗](#class-renderingserver-method-shader-create)

Creates an empty shader and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `shader_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [Shader](class_shader.md#class-shader).

* * *

[String](class_string.md#class-string) **shader\_get\_code**(shader: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-shader-get-code)

Returns a shader's source code as a string.

* * *

[RID](class_rid.md#class-rid) **shader\_get\_default\_texture\_parameter**(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname), index: [int](class_int.md#class-int) = 0) const [🔗](#class-renderingserver-method-shader-get-default-texture-parameter)

Returns a default texture from a shader searched by name.

**Note:** If the sampler array is used use `index` to access the specified texture.

* * *

[Variant](class_variant.md#class-variant) **shader\_get\_parameter\_default**(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderingserver-method-shader-get-parameter-default)

Returns the default value for the specified shader uniform. This is usually the value written in the shader source code.

* * *

void **shader\_set\_code**(shader: [RID](class_rid.md#class-rid), code: [String](class_string.md#class-string)) [🔗](#class-renderingserver-method-shader-set-code)

Sets the shader's source code (which triggers recompilation after being changed).

* * *

void **shader\_set\_default\_texture\_parameter**(shader: [RID](class_rid.md#class-rid), name: [StringName](class_stringname.md#class-stringname), texture: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int) = 0) [🔗](#class-renderingserver-method-shader-set-default-texture-parameter)

Sets a shader's default texture. Overwrites the texture given by name.

**Note:** If the sampler array is used use `index` to access the specified texture.

* * *

void **shader\_set\_path\_hint**(shader: [RID](class_rid.md#class-rid), path: [String](class_string.md#class-string)) [🔗](#class-renderingserver-method-shader-set-path-hint)

Sets the path hint for the specified shader. This should generally match the [Shader](class_shader.md#class-shader) resource's [Resource.resource\_path](class_resource.md#class-resource-property-resource-path).

* * *

void **skeleton\_allocate\_data**(skeleton: [RID](class_rid.md#class-rid), bones: [int](class_int.md#class-int), is\_2d\_skeleton: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-skeleton-allocate-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **skeleton\_bone\_get\_transform**(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-skeleton-bone-get-transform)

Returns the [Transform3D](class_transform3d.md#class-transform3d) set for a specific bone of this skeleton.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **skeleton\_bone\_get\_transform\_2d**(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-skeleton-bone-get-transform-2d)

Returns the [Transform2D](class_transform2d.md#class-transform2d) set for a specific bone of this skeleton.

* * *

void **skeleton\_bone\_set\_transform**(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-renderingserver-method-skeleton-bone-set-transform)

Sets the [Transform3D](class_transform3d.md#class-transform3d) for a specific bone of this skeleton.

* * *

void **skeleton\_bone\_set\_transform\_2d**(skeleton: [RID](class_rid.md#class-rid), bone: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-skeleton-bone-set-transform-2d)

Sets the [Transform2D](class_transform2d.md#class-transform2d) for a specific bone of this skeleton.

* * *

[RID](class_rid.md#class-rid) **skeleton\_create**() [🔗](#class-renderingserver-method-skeleton-create)

Creates a skeleton and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `skeleton_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

* * *

[int](class_int.md#class-int) **skeleton\_get\_bone\_count**(skeleton: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-skeleton-get-bone-count)

Returns the number of bones allocated for this skeleton.

* * *

void **skeleton\_set\_base\_transform\_2d**(skeleton: [RID](class_rid.md#class-rid), base\_transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-skeleton-set-base-transform-2d)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Image](class_image.md#class-image) **sky\_bake\_panorama**(sky: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float), bake\_irradiance: [bool](class_bool.md#class-bool), size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-renderingserver-method-sky-bake-panorama)

Generates and returns an [Image](class_image.md#class-image) containing the radiance map for the specified `sky` RID. This supports built-in sky material and custom sky shaders. If `bake_irradiance` is `true`, the irradiance map is saved instead of the radiance map. The radiance map is used to render reflected light, while the irradiance map is used to render ambient light. See also [environment\_bake\_panorama()](#class-renderingserver-method-environment-bake-panorama).

**Note:** The image is saved in linear color space without any tonemapping performed, which means it will look too dark if viewed directly in an image editor. `energy` values above `1.0` can be used to brighten the resulting image.

**Note:** `size` should be a 2:1 aspect ratio for the generated panorama to have square pixels. For radiance maps, there is no point in using a height greater than [Sky.radiance\_size](class_sky.md#class-sky-property-radiance-size), as it won't increase detail. Irradiance maps only contain low-frequency data, so there is usually no point in going past a size of 128×64 pixels when saving an irradiance map.

* * *

[RID](class_rid.md#class-rid) **sky\_create**() [🔗](#class-renderingserver-method-sky-create)

Creates an empty sky and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `sky_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

* * *

void **sky\_set\_material**(sky: [RID](class_rid.md#class-rid), material: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-sky-set-material)

Sets the material that the sky uses to render the background, ambient and reflection maps.

* * *

void **sky\_set\_mode**(sky: [RID](class_rid.md#class-rid), mode: [SkyMode](#enum-renderingserver-skymode)) [🔗](#class-renderingserver-method-sky-set-mode)

Sets the process `mode` of the sky specified by the `sky` RID. Equivalent to [Sky.process\_mode](class_sky.md#class-sky-property-process-mode).

* * *

void **sky\_set\_radiance\_size**(sky: [RID](class_rid.md#class-rid), radiance\_size: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-sky-set-radiance-size)

Sets the `radiance_size` of the sky specified by the `sky` RID (in pixels). Equivalent to [Sky.radiance\_size](class_sky.md#class-sky-property-radiance-size).

* * *

[RID](class_rid.md#class-rid) **spot\_light\_create**() [🔗](#class-renderingserver-method-spot-light-create)

Creates a spot light and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this spot light to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

* * *

void **sub\_surface\_scattering\_set\_quality**(quality: [SubSurfaceScatteringQuality](#enum-renderingserver-subsurfacescatteringquality)) [🔗](#class-renderingserver-method-sub-surface-scattering-set-quality)

Sets [ProjectSettings.rendering/environment/subsurface\_scattering/subsurface\_scattering\_quality](class_projectsettings.md#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-quality) to use when rendering materials that have subsurface scattering enabled.

* * *

void **sub\_surface\_scattering\_set\_scale**(scale: [float](class_float.md#class-float), depth\_scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-sub-surface-scattering-set-scale)

Sets the [ProjectSettings.rendering/environment/subsurface\_scattering/subsurface\_scattering\_scale](class_projectsettings.md#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-scale) and [ProjectSettings.rendering/environment/subsurface\_scattering/subsurface\_scattering\_depth\_scale](class_projectsettings.md#class-projectsettings-property-rendering-environment-subsurface-scattering-subsurface-scattering-depth-scale) to use when rendering materials that have subsurface scattering enabled.

* * *

[RID](class_rid.md#class-rid) **texture\_2d\_create**(image: [Image](class_image.md#class-image)) [🔗](#class-renderingserver-method-texture-2d-create)

Creates a 2-dimensional texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_2d_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [Texture2D](class_texture2d.md#class-texture2d).

**Note:** Not to be confused with [RenderingDevice.texture\_create()](class_renderingdevice.md#class-renderingdevice-method-texture-create), which creates the graphics API's own texture type as opposed to the Godot-specific [Texture2D](class_texture2d.md#class-texture2d) resource.

* * *

[Image](class_image.md#class-image) **texture\_2d\_get**(texture: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-texture-2d-get)

Returns an [Image](class_image.md#class-image) instance from the given `texture` [RID](class_rid.md#class-rid).

**Example:** Get the test texture from [get\_test\_texture()](#class-renderingserver-method-get-test-texture) and apply it to a [Sprite2D](class_sprite2d.md#class-sprite2d) node:

```
var texture_rid = RenderingServer.get_test_texture()
var texture = ImageTexture.create_from_image(RenderingServer.texture_2d_get(texture_rid))
$Sprite2D.texture = texture

```

* * *

[Image](class_image.md#class-image) **texture\_2d\_layer\_get**(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) const [🔗](#class-renderingserver-method-texture-2d-layer-get)

Returns an [Image](class_image.md#class-image) instance from the given `texture` [RID](class_rid.md#class-rid) and `layer`.

* * *

[RID](class_rid.md#class-rid) **texture\_2d\_layered\_create**(layers: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\], layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype)) [🔗](#class-renderingserver-method-texture-2d-layered-create)

Creates a 2-dimensional layered texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_2d_layered_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [TextureLayered](class_texturelayered.md#class-texturelayered).

* * *

[RID](class_rid.md#class-rid) **texture\_2d\_layered\_placeholder\_create**(layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype)) [🔗](#class-renderingserver-method-texture-2d-layered-placeholder-create)

Creates a placeholder for a 2-dimensional layered texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_2d_layered_*` RenderingServer functions, although it does nothing when used. See also [texture\_2d\_placeholder\_create()](#class-renderingserver-method-texture-2d-placeholder-create).

**Note:** The equivalent resource is [PlaceholderTextureLayered](class_placeholdertexturelayered.md#class-placeholdertexturelayered).

* * *

[RID](class_rid.md#class-rid) **texture\_2d\_placeholder\_create**() [🔗](#class-renderingserver-method-texture-2d-placeholder-create)

Creates a placeholder for a 2-dimensional layered texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_2d_layered_*` RenderingServer functions, although it does nothing when used. See also [texture\_2d\_layered\_placeholder\_create()](#class-renderingserver-method-texture-2d-layered-placeholder-create).

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [PlaceholderTexture2D](class_placeholdertexture2d.md#class-placeholdertexture2d).

* * *

void **texture\_2d\_update**(texture: [RID](class_rid.md#class-rid), image: [Image](class_image.md#class-image), layer: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-texture-2d-update)

Updates the texture specified by the `texture` [RID](class_rid.md#class-rid) with the data in `image`. A `layer` must also be specified, which should be `0` when updating a single-layer texture ( [Texture2D](class_texture2d.md#class-texture2d)).

**Note:** The `image` must have the same width, height and format as the current `texture` data. Otherwise, an error will be printed and the original texture won't be modified. If you need to use different width, height or format, use [texture\_replace()](#class-renderingserver-method-texture-replace) instead.

* * *

[RID](class_rid.md#class-rid) **texture\_3d\_create**(format: [Format](class_image.md#enum-image-format), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), mipmaps: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) [🔗](#class-renderingserver-method-texture-3d-create)

**Note:** The equivalent resource is [Texture3D](class_texture3d.md#class-texture3d).

* * *

[Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\] **texture\_3d\_get**(texture: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-texture-3d-get)

Returns 3D texture data as an array of [Image](class_image.md#class-image) s for the specified texture [RID](class_rid.md#class-rid).

* * *

[RID](class_rid.md#class-rid) **texture\_3d\_placeholder\_create**() [🔗](#class-renderingserver-method-texture-3d-placeholder-create)

Creates a placeholder for a 3-dimensional texture and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_3d_*` RenderingServer functions, although it does nothing when used.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent resource is [PlaceholderTexture3D](class_placeholdertexture3d.md#class-placeholdertexture3d).

* * *

void **texture\_3d\_update**(texture: [RID](class_rid.md#class-rid), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) [🔗](#class-renderingserver-method-texture-3d-update)

Updates the texture specified by the `texture` [RID](class_rid.md#class-rid)'s data with the data in `data`. All the texture's layers must be replaced at once.

**Note:** The `texture` must have the same width, height, depth and format as the current texture data. Otherwise, an error will be printed and the original texture won't be modified. If you need to use different width, height, depth or format, use [texture\_replace()](#class-renderingserver-method-texture-replace) instead.

* * *

[RID](class_rid.md#class-rid) **texture\_create\_from\_native\_handle**(type: [TextureType](#enum-renderingserver-texturetype), format: [Format](class_image.md#enum-image-format), native\_handle: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), layers: [int](class_int.md#class-int) = 1, layered\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype) = 0) [🔗](#class-renderingserver-method-texture-create-from-native-handle)

Creates a texture based on a native handle that was created outside of Godot's renderer.

**Note:** If using only the rendering device renderer, it's recommend to use [RenderingDevice.texture\_create\_from\_extension()](class_renderingdevice.md#class-renderingdevice-method-texture-create-from-extension) together with [texture\_rd\_create()](#class-renderingserver-method-texture-rd-create), rather than this method. It will give you much more control over the texture's format and usage.

* * *

[Format](class_image.md#enum-image-format) **texture\_get\_format**(texture: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-texture-get-format)

Returns the format for the texture.

* * *

[int](class_int.md#class-int) **texture\_get\_native\_handle**(texture: [RID](class_rid.md#class-rid), srgb: [bool](class_bool.md#class-bool) = false) const [🔗](#class-renderingserver-method-texture-get-native-handle)

Returns the internal graphics handle for this texture object. For use when communicating with third-party APIs mostly with GDExtension.

**Note:** This function returns a `uint64_t` which internally maps to a `GLuint` (OpenGL) or `VkImage` (Vulkan).

* * *

[String](class_string.md#class-string) **texture\_get\_path**(texture: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-texture-get-path)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **texture\_get\_rd\_texture**(texture: [RID](class_rid.md#class-rid), srgb: [bool](class_bool.md#class-bool) = false) const [🔗](#class-renderingserver-method-texture-get-rd-texture)

Returns a texture [RID](class_rid.md#class-rid) that can be used with [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

* * *

[RID](class_rid.md#class-rid) **texture\_proxy\_create**(base: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-texture-proxy-create)

**Deprecated:** ProxyTexture was removed in Godot 4.

This method does nothing and always returns an invalid [RID](class_rid.md#class-rid).

* * *

void **texture\_proxy\_update**(texture: [RID](class_rid.md#class-rid), proxy\_to: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-texture-proxy-update)

**Deprecated:** ProxyTexture was removed in Godot 4.

This method does nothing.

* * *

[RID](class_rid.md#class-rid) **texture\_rd\_create**(rd\_texture: [RID](class_rid.md#class-rid), layer\_type: [TextureLayeredType](#enum-renderingserver-texturelayeredtype) = 0) [🔗](#class-renderingserver-method-texture-rd-create)

Creates a new texture object based on a texture created directly on the [RenderingDevice](class_renderingdevice.md#class-renderingdevice). If the texture contains layers, `layer_type` is used to define the layer type.

* * *

void **texture\_replace**(texture: [RID](class_rid.md#class-rid), by\_texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-texture-replace)

Replaces `texture`'s texture data by the texture specified by the `by_texture` RID, without changing `texture`'s RID.

* * *

void **texture\_set\_force\_redraw\_if\_visible**(texture: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-texture-set-force-redraw-if-visible)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **texture\_set\_path**(texture: [RID](class_rid.md#class-rid), path: [String](class_string.md#class-string)) [🔗](#class-renderingserver-method-texture-set-path)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **texture\_set\_size\_override**(texture: [RID](class_rid.md#class-rid), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-texture-set-size-override)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **viewport\_attach\_camera**(viewport: [RID](class_rid.md#class-rid), camera: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-attach-camera)

Sets a viewport's camera.

* * *

void **viewport\_attach\_canvas**(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-attach-canvas)

Sets a viewport's canvas.

* * *

void **viewport\_attach\_to\_screen**(viewport: [RID](class_rid.md#class-rid), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), screen: [int](class_int.md#class-int) = 0) [🔗](#class-renderingserver-method-viewport-attach-to-screen)

Copies the viewport to a region of the screen specified by `rect`. If [viewport\_set\_render\_direct\_to\_screen()](#class-renderingserver-method-viewport-set-render-direct-to-screen) is `true`, then the viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.

For example, you can set the root viewport to not render at all with the following code:

GDScript

```
func _ready():
    RenderingServer.viewport_attach_to_screen(get_viewport().get_viewport_rid(), Rect2())
    RenderingServer.viewport_attach_to_screen($Viewport.get_viewport_rid(), Rect2(0, 0, 600, 600))

```

Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For further optimization, see [viewport\_set\_render\_direct\_to\_screen()](#class-renderingserver-method-viewport-set-render-direct-to-screen).

* * *

[RID](class_rid.md#class-rid) **viewport\_create**() [🔗](#class-renderingserver-method-viewport-create)

Creates an empty viewport and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `viewport_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [Viewport](class_viewport.md#class-viewport).

* * *

[float](class_float.md#class-float) **viewport\_get\_measured\_render\_time\_cpu**(viewport: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-viewport-get-measured-render-time-cpu)

Returns the CPU time taken to render the last frame in milliseconds. This _only_ includes time spent in rendering-related operations; scripts' `_process` functions and other engine subsystems are not included in this readout. To get a complete readout of CPU time spent to render the scene, sum the render times of all viewports that are drawn every frame plus [get\_frame\_setup\_time\_cpu()](#class-renderingserver-method-get-frame-setup-time-cpu). Unlike [Engine.get\_frames\_per\_second()](class_engine.md#class-engine-method-get-frames-per-second), this method will accurately reflect CPU utilization even if framerate is capped via V-Sync or [Engine.max\_fps](class_engine.md#class-engine-property-max-fps). See also [viewport\_get\_measured\_render\_time\_gpu()](#class-renderingserver-method-viewport-get-measured-render-time-gpu).

**Note:** Requires measurements to be enabled on the specified `viewport` using [viewport\_set\_measure\_render\_time()](#class-renderingserver-method-viewport-set-measure-render-time). Otherwise, this method returns `0.0`.

* * *

[float](class_float.md#class-float) **viewport\_get\_measured\_render\_time\_gpu**(viewport: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-viewport-get-measured-render-time-gpu)

Returns the GPU time taken to render the last frame in milliseconds. To get a complete readout of GPU time spent to render the scene, sum the render times of all viewports that are drawn every frame. Unlike [Engine.get\_frames\_per\_second()](class_engine.md#class-engine-method-get-frames-per-second), this method accurately reflects GPU utilization even if framerate is capped via V-Sync or [Engine.max\_fps](class_engine.md#class-engine-property-max-fps). See also [viewport\_get\_measured\_render\_time\_cpu()](#class-renderingserver-method-viewport-get-measured-render-time-cpu).

**Note:** Requires measurements to be enabled on the specified `viewport` using [viewport\_set\_measure\_render\_time()](#class-renderingserver-method-viewport-set-measure-render-time). Otherwise, this method returns `0.0`.

**Note:** When GPU utilization is low enough during a certain period of time, GPUs will decrease their power state (which in turn decreases core and memory clock speeds). This can cause the reported GPU time to increase if GPU utilization is kept low enough by a framerate cap (compared to what it would be at the GPU's highest power state). Keep this in mind when benchmarking using [viewport\_get\_measured\_render\_time\_gpu()](#class-renderingserver-method-viewport-get-measured-render-time-gpu). This behavior can be overridden in the graphics driver settings at the cost of higher power usage.

* * *

[int](class_int.md#class-int) **viewport\_get\_render\_info**(viewport: [RID](class_rid.md#class-rid), type: [ViewportRenderInfoType](#enum-renderingserver-viewportrenderinfotype), info: [ViewportRenderInfo](#enum-renderingserver-viewportrenderinfo)) [🔗](#class-renderingserver-method-viewport-get-render-info)

Returns a statistic about the rendering engine which can be used for performance profiling. This is separated into render pass `type` s, each of them having the same `info` s you can query (different passes will return different values).

See also [get\_rendering\_info()](#class-renderingserver-method-get-rendering-info), which returns global information across all viewports.

**Note:** Viewport rendering information is not available until at least 2 frames have been rendered by the engine. If rendering information is not available, [viewport\_get\_render\_info()](#class-renderingserver-method-viewport-get-render-info) returns `0`. To print rendering information in `_ready()` successfully, use the following:

```
func _ready():
    for _i in 2:
        await get_tree().process_frame

    print(
            RenderingServer.viewport_get_render_info(get_viewport().get_viewport_rid(),
            RenderingServer.VIEWPORT_RENDER_INFO_TYPE_VISIBLE,
            RenderingServer.VIEWPORT_RENDER_INFO_DRAW_CALLS_IN_FRAME)
    )

```

* * *

[RID](class_rid.md#class-rid) **viewport\_get\_render\_target**(viewport: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-viewport-get-render-target)

Returns the render target for the viewport.

* * *

[RID](class_rid.md#class-rid) **viewport\_get\_texture**(viewport: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-viewport-get-texture)

Returns the viewport's last rendered frame.

* * *

[ViewportUpdateMode](#enum-renderingserver-viewportupdatemode) **viewport\_get\_update\_mode**(viewport: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-viewport-get-update-mode)

Returns the viewport's update mode.

**Warning:** Calling this from any thread other than the rendering thread will be detrimental to performance.

* * *

void **viewport\_remove\_canvas**(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-remove-canvas)

Detaches a viewport from a canvas.

* * *

void **viewport\_set\_active**(viewport: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-active)

If `true`, sets the viewport active, else sets it inactive.

* * *

void **viewport\_set\_anisotropic\_filtering\_level**(viewport: [RID](class_rid.md#class-rid), anisotropic\_filtering\_level: [ViewportAnisotropicFiltering](#enum-renderingserver-viewportanisotropicfiltering)) [🔗](#class-renderingserver-method-viewport-set-anisotropic-filtering-level)

Sets the maximum number of samples to take when using anisotropic filtering on textures (as a power of two). A higher sample count will result in sharper textures at oblique angles, but is more expensive to compute. A value of `0` forcibly disables anisotropic filtering, even on materials where it is enabled.

The anisotropic filtering level also affects decals and light projectors if they are configured to use anisotropic filtering. See [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter) and [ProjectSettings.rendering/textures/light\_projectors/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-light-projectors-filter).

**Note:** In 3D, for this setting to have an effect, set [BaseMaterial3D.texture\_filter](class_basematerial3d.md#class-basematerial3d-property-texture-filter) to [BaseMaterial3D.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-linear-with-mipmaps-anisotropic) or [BaseMaterial3D.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-nearest-with-mipmaps-anisotropic) on materials.

**Note:** In 2D, for this setting to have an effect, set [CanvasItem.texture\_filter](class_canvasitem.md#class-canvasitem-property-texture-filter) to [CanvasItem.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-linear-with-mipmaps-anisotropic) or [CanvasItem.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-nearest-with-mipmaps-anisotropic) on the [CanvasItem](class_canvasitem.md#class-canvasitem) node displaying the texture (or in [CanvasTexture](class_canvastexture.md#class-canvastexture)). However, anisotropic filtering is rarely useful in 2D, so only enable it for textures in 2D if it makes a meaningful visual difference.

* * *

void **viewport\_set\_canvas\_cull\_mask**(viewport: [RID](class_rid.md#class-rid), canvas\_cull\_mask: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-viewport-set-canvas-cull-mask)

Sets the rendering mask associated with this [Viewport](class_viewport.md#class-viewport). Only [CanvasItem](class_canvasitem.md#class-canvasitem) nodes with a matching rendering visibility layer will be rendered by this [Viewport](class_viewport.md#class-viewport).

* * *

void **viewport\_set\_canvas\_stacking**(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), sublayer: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-viewport-set-canvas-stacking)

Sets the stacking order for a viewport's canvas.

`layer` is the actual canvas layer, while `sublayer` specifies the stacking order of the canvas among those in the same layer.

**Note:** `layer` should be between [CANVAS\_LAYER\_MIN](#class-renderingserver-constant-canvas-layer-min) and [CANVAS\_LAYER\_MAX](#class-renderingserver-constant-canvas-layer-max) (inclusive). Any other value will wrap around.

* * *

void **viewport\_set\_canvas\_transform**(viewport: [RID](class_rid.md#class-rid), canvas: [RID](class_rid.md#class-rid), offset: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-viewport-set-canvas-transform)

Sets the transformation of a viewport's canvas.

* * *

void **viewport\_set\_clear\_mode**(viewport: [RID](class_rid.md#class-rid), clear\_mode: [ViewportClearMode](#enum-renderingserver-viewportclearmode)) [🔗](#class-renderingserver-method-viewport-set-clear-mode)

Sets the clear mode of a viewport.

* * *

void **viewport\_set\_debug\_draw**(viewport: [RID](class_rid.md#class-rid), draw: [ViewportDebugDraw](#enum-renderingserver-viewportdebugdraw)) [🔗](#class-renderingserver-method-viewport-set-debug-draw)

Sets the debug draw mode of a viewport.

* * *

void **viewport\_set\_default\_canvas\_item\_texture\_filter**(viewport: [RID](class_rid.md#class-rid), filter: [CanvasItemTextureFilter](#enum-renderingserver-canvasitemtexturefilter)) [🔗](#class-renderingserver-method-viewport-set-default-canvas-item-texture-filter)

Sets the default texture filtering mode for the specified `viewport` RID.

* * *

void **viewport\_set\_default\_canvas\_item\_texture\_repeat**(viewport: [RID](class_rid.md#class-rid), repeat: [CanvasItemTextureRepeat](#enum-renderingserver-canvasitemtexturerepeat)) [🔗](#class-renderingserver-method-viewport-set-default-canvas-item-texture-repeat)

Sets the default texture repeat mode for the specified `viewport` RID.

* * *

void **viewport\_set\_disable\_2d**(viewport: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-disable-2d)

If `true`, the viewport's canvas (i.e. 2D and GUI elements) is not rendered.

* * *

void **viewport\_set\_disable\_3d**(viewport: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-disable-3d)

If `true`, the viewport's 3D elements are not rendered.

* * *

void **viewport\_set\_environment\_mode**(viewport: [RID](class_rid.md#class-rid), mode: [ViewportEnvironmentMode](#enum-renderingserver-viewportenvironmentmode)) [🔗](#class-renderingserver-method-viewport-set-environment-mode)

Sets the viewport's environment mode which allows enabling or disabling rendering of 3D environment over 2D canvas. When disabled, 2D will not be affected by the environment. When enabled, 2D will be affected by the environment if the environment background mode is [ENV\_BG\_CANVAS](#class-renderingserver-constant-env-bg-canvas). The default behavior is to inherit the setting from the viewport's parent. If the topmost parent is also set to [VIEWPORT\_ENVIRONMENT\_INHERIT](#class-renderingserver-constant-viewport-environment-inherit), then the behavior will be the same as if it was set to [VIEWPORT\_ENVIRONMENT\_ENABLED](#class-renderingserver-constant-viewport-environment-enabled).

* * *

void **viewport\_set\_fsr\_sharpness**(viewport: [RID](class_rid.md#class-rid), sharpness: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-viewport-set-fsr-sharpness)

Determines how sharp the upscaled image will be when using the FSR upscaling mode. Sharpness halves with every whole number. Values go from 0.0 (sharpest) to 2.0. Values above 2.0 won't make a visible difference.

* * *

void **viewport\_set\_global\_canvas\_transform**(viewport: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-renderingserver-method-viewport-set-global-canvas-transform)

Sets the viewport's global transformation matrix.

* * *

void **viewport\_set\_measure\_render\_time**(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-measure-render-time)

Sets the measurement for the given `viewport` RID (obtained using [Viewport.get\_viewport\_rid()](class_viewport.md#class-viewport-method-get-viewport-rid)). Once enabled, [viewport\_get\_measured\_render\_time\_cpu()](#class-renderingserver-method-viewport-get-measured-render-time-cpu) and [viewport\_get\_measured\_render\_time\_gpu()](#class-renderingserver-method-viewport-get-measured-render-time-gpu) will return values greater than `0.0` when queried with the given `viewport`.

* * *

void **viewport\_set\_msaa\_2d**(viewport: [RID](class_rid.md#class-rid), msaa: [ViewportMSAA](#enum-renderingserver-viewportmsaa)) [🔗](#class-renderingserver-method-viewport-set-msaa-2d)

Sets the multisample antialiasing mode for 2D/Canvas on the specified `viewport` RID. Equivalent to [ProjectSettings.rendering/anti\_aliasing/quality/msaa\_2d](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-2d) or [Viewport.msaa\_2d](class_viewport.md#class-viewport-property-msaa-2d).

* * *

void **viewport\_set\_msaa\_3d**(viewport: [RID](class_rid.md#class-rid), msaa: [ViewportMSAA](#enum-renderingserver-viewportmsaa)) [🔗](#class-renderingserver-method-viewport-set-msaa-3d)

Sets the multisample antialiasing mode for 3D on the specified `viewport` RID. Equivalent to [ProjectSettings.rendering/anti\_aliasing/quality/msaa\_3d](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) or [Viewport.msaa\_3d](class_viewport.md#class-viewport-property-msaa-3d).

* * *

void **viewport\_set\_occlusion\_culling\_build\_quality**(quality: [ViewportOcclusionCullingBuildQuality](#enum-renderingserver-viewportocclusioncullingbuildquality)) [🔗](#class-renderingserver-method-viewport-set-occlusion-culling-build-quality)

Sets the [ProjectSettings.rendering/occlusion\_culling/bvh\_build\_quality](class_projectsettings.md#class-projectsettings-property-rendering-occlusion-culling-bvh-build-quality) to use for occlusion culling. This parameter is global and cannot be set on a per-viewport basis.

* * *

void **viewport\_set\_occlusion\_rays\_per\_thread**(rays\_per\_thread: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-viewport-set-occlusion-rays-per-thread)

Sets the [ProjectSettings.rendering/occlusion\_culling/occlusion\_rays\_per\_thread](class_projectsettings.md#class-projectsettings-property-rendering-occlusion-culling-occlusion-rays-per-thread) to use for occlusion culling. This parameter is global and cannot be set on a per-viewport basis.

* * *

void **viewport\_set\_parent\_viewport**(viewport: [RID](class_rid.md#class-rid), parent\_viewport: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-set-parent-viewport)

Sets the viewport's parent to the viewport specified by the `parent_viewport` RID.

* * *

void **viewport\_set\_positional\_shadow\_atlas\_quadrant\_subdivision**(viewport: [RID](class_rid.md#class-rid), quadrant: [int](class_int.md#class-int), subdivision: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-viewport-set-positional-shadow-atlas-quadrant-subdivision)

Sets the number of subdivisions to use in the specified shadow atlas `quadrant` for omni and spot shadows. See also [Viewport.set\_positional\_shadow\_atlas\_quadrant\_subdiv()](class_viewport.md#class-viewport-method-set-positional-shadow-atlas-quadrant-subdiv).

* * *

void **viewport\_set\_positional\_shadow\_atlas\_size**(viewport: [RID](class_rid.md#class-rid), size: [int](class_int.md#class-int), use\_16\_bits: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderingserver-method-viewport-set-positional-shadow-atlas-size)

Sets the `size` of the shadow atlas's images (used for omni and spot lights) on the viewport specified by the `viewport` RID. The value is rounded up to the nearest power of 2. If `use_16_bits` is `true`, use 16 bits for the omni/spot shadow depth map. Enabling this results in shadows having less precision and may result in shadow acne, but can lead to performance improvements on some devices.

**Note:** If this is set to `0`, no positional shadows will be visible at all. This can improve performance significantly on low-end systems by reducing both the CPU and GPU load (as fewer draw calls are needed to draw the scene without shadows).

* * *

void **viewport\_set\_render\_direct\_to\_screen**(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-render-direct-to-screen)

If `true`, render the contents of the viewport directly to screen. This allows a low-level optimization where you can skip drawing a viewport to the root viewport. While this optimization can result in a significant increase in speed (especially on older devices), it comes at a cost of usability. When this is enabled, you cannot read from the viewport or from the screen\_texture. You also lose the benefit of certain window settings, such as the various stretch modes. Another consequence to be aware of is that in 2D the rendering happens in window coordinates, so if you have a viewport that is double the size of the window, and you set this, then only the portion that fits within the window will be drawn, no automatic scaling is possible, even if your game scene is significantly larger than the window size.

* * *

void **viewport\_set\_scaling\_3d\_mode**(viewport: [RID](class_rid.md#class-rid), scaling\_3d\_mode: [ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode)) [🔗](#class-renderingserver-method-viewport-set-scaling-3d-mode)

Sets the 3D resolution scaling mode. Bilinear scaling renders at different resolution to either undersample or supersample the viewport. FidelityFX Super Resolution 1.0, abbreviated to FSR, is an upscaling technology that produces high quality images at fast framerates by using a spatially aware upscaling algorithm. FSR is slightly more expensive than bilinear, but it produces significantly higher image quality. FSR should be used where possible.

* * *

void **viewport\_set\_scaling\_3d\_scale**(viewport: [RID](class_rid.md#class-rid), scale: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-viewport-set-scaling-3d-scale)

Scales the 3D render buffer based on the viewport size uses an image filter specified in [ViewportScaling3DMode](#enum-renderingserver-viewportscaling3dmode) to scale the output image to the full viewport size. Values lower than `1.0` can be used to speed up 3D rendering at the cost of quality (undersampling). Values greater than `1.0` are only valid for bilinear mode and can be used to improve 3D rendering quality at a high performance cost (supersampling). See also [ViewportMSAA](#enum-renderingserver-viewportmsaa) for multi-sample antialiasing, which is significantly cheaper but only smoothens the edges of polygons.

When using FSR upscaling, AMD recommends exposing the following values as preset options to users "Ultra Quality: 0.77", "Quality: 0.67", "Balanced: 0.59", "Performance: 0.5" instead of exposing the entire scale.

* * *

void **viewport\_set\_scenario**(viewport: [RID](class_rid.md#class-rid), scenario: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-set-scenario)

Sets a viewport's scenario. The scenario contains information about environment information, reflection atlas, etc.

* * *

void **viewport\_set\_screen\_space\_aa**(viewport: [RID](class_rid.md#class-rid), mode: [ViewportScreenSpaceAA](#enum-renderingserver-viewportscreenspaceaa)) [🔗](#class-renderingserver-method-viewport-set-screen-space-aa)

Sets the viewport's screen-space antialiasing mode. Equivalent to [ProjectSettings.rendering/anti\_aliasing/quality/screen\_space\_aa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa) or [Viewport.screen\_space\_aa](class_viewport.md#class-viewport-property-screen-space-aa).

* * *

void **viewport\_set\_sdf\_oversize\_and\_scale**(viewport: [RID](class_rid.md#class-rid), oversize: [ViewportSDFOversize](#enum-renderingserver-viewportsdfoversize), scale: [ViewportSDFScale](#enum-renderingserver-viewportsdfscale)) [🔗](#class-renderingserver-method-viewport-set-sdf-oversize-and-scale)

Sets the viewport's 2D signed distance field [ProjectSettings.rendering/2d/sdf/oversize](class_projectsettings.md#class-projectsettings-property-rendering-2d-sdf-oversize) and [ProjectSettings.rendering/2d/sdf/scale](class_projectsettings.md#class-projectsettings-property-rendering-2d-sdf-scale). This is used when sampling the signed distance field in [CanvasItem](class_canvasitem.md#class-canvasitem) shaders as well as [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) collision. This is _not_ used by SDFGI in 3D rendering.

* * *

void **viewport\_set\_size**(viewport: [RID](class_rid.md#class-rid), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int)) [🔗](#class-renderingserver-method-viewport-set-size)

Sets the viewport's width and height in pixels.

* * *

void **viewport\_set\_snap\_2d\_transforms\_to\_pixel**(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-snap-2d-transforms-to-pixel)

If `true`, canvas item transforms (i.e. origin position) are snapped to the nearest pixel when rendering. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled. Equivalent to [ProjectSettings.rendering/2d/snap/snap\_2d\_transforms\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-transforms-to-pixel).

* * *

void **viewport\_set\_snap\_2d\_vertices\_to\_pixel**(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-snap-2d-vertices-to-pixel)

If `true`, canvas item vertices (i.e. polygon points) are snapped to the nearest pixel when rendering. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled. Equivalent to [ProjectSettings.rendering/2d/snap/snap\_2d\_vertices\_to\_pixel](class_projectsettings.md#class-projectsettings-property-rendering-2d-snap-snap-2d-vertices-to-pixel).

* * *

void **viewport\_set\_texture\_mipmap\_bias**(viewport: [RID](class_rid.md#class-rid), mipmap\_bias: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-viewport-set-texture-mipmap-bias)

Affects the final texture sharpness by reading from a lower or higher mipmap (also called "texture LOD bias"). Negative values make mipmapped textures sharper but grainier when viewed at a distance, while positive values make mipmapped textures blurrier (even when up close). To get sharper textures at a distance without introducing too much graininess, set this between `-0.75` and `0.0`. Enabling temporal antialiasing ( [ProjectSettings.rendering/anti\_aliasing/quality/use\_taa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa)) can help reduce the graininess visible when using negative mipmap bias.

**Note:** When the 3D scaling mode is set to FSR 1.0, this value is used to adjust the automatic mipmap bias which is calculated internally based on the scale factor. The formula for this is `-log2(1.0 / scale) + mipmap_bias`.

* * *

void **viewport\_set\_transparent\_background**(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-transparent-background)

If `true`, the viewport renders its background as transparent.

* * *

void **viewport\_set\_update\_mode**(viewport: [RID](class_rid.md#class-rid), update\_mode: [ViewportUpdateMode](#enum-renderingserver-viewportupdatemode)) [🔗](#class-renderingserver-method-viewport-set-update-mode)

Sets when the viewport should be updated.

* * *

void **viewport\_set\_use\_debanding**(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-use-debanding)

Equivalent to [Viewport.use\_debanding](class_viewport.md#class-viewport-property-use-debanding). See also [ProjectSettings.rendering/anti\_aliasing/quality/use\_debanding](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-use-debanding).

* * *

void **viewport\_set\_use\_hdr\_2d**(viewport: [RID](class_rid.md#class-rid), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-use-hdr-2d)

If `true`, 2D rendering will use a high dynamic range (HDR) format framebuffer matching the bit depth of the 3D framebuffer. When using the Forward+ or Compatibility renderer, this will be an `RGBA16` framebuffer. When using the Mobile renderer, it will be an `RGB10_A2` framebuffer.

Additionally, 2D rendering will take place in linear color space and will be converted to sRGB space immediately before blitting to the screen (if the Viewport is attached to the screen).

Practically speaking, this means that the end result of the Viewport will not be clamped to the `0-1` range and can be used in 3D rendering without color space adjustments. This allows 2D rendering to take advantage of effects requiring high dynamic range (e.g. 2D glow) as well as substantially improves the appearance of effects requiring highly detailed gradients. This setting has the same effect as [Viewport.use\_hdr\_2d](class_viewport.md#class-viewport-property-use-hdr-2d).

* * *

void **viewport\_set\_use\_occlusion\_culling**(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-use-occlusion-culling)

If `true`, enables occlusion culling on the specified viewport. Equivalent to [ProjectSettings.rendering/occlusion\_culling/use\_occlusion\_culling](class_projectsettings.md#class-projectsettings-property-rendering-occlusion-culling-use-occlusion-culling).

* * *

void **viewport\_set\_use\_taa**(viewport: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-use-taa)

If `true`, use temporal antialiasing. Equivalent to [ProjectSettings.rendering/anti\_aliasing/quality/use\_taa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa) or [Viewport.use\_taa](class_viewport.md#class-viewport-property-use-taa).

* * *

void **viewport\_set\_use\_xr**(viewport: [RID](class_rid.md#class-rid), use\_xr: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-viewport-set-use-xr)

If `true`, the viewport uses augmented or virtual reality technologies. See [XRInterface](class_xrinterface.md#class-xrinterface).

* * *

void **viewport\_set\_vrs\_mode**(viewport: [RID](class_rid.md#class-rid), mode: [ViewportVRSMode](#enum-renderingserver-viewportvrsmode)) [🔗](#class-renderingserver-method-viewport-set-vrs-mode)

Sets the Variable Rate Shading (VRS) mode for the viewport. If the GPU does not support VRS, this property is ignored. Equivalent to [ProjectSettings.rendering/vrs/mode](class_projectsettings.md#class-projectsettings-property-rendering-vrs-mode).

* * *

void **viewport\_set\_vrs\_texture**(viewport: [RID](class_rid.md#class-rid), texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingserver-method-viewport-set-vrs-texture)

The texture to use when the VRS mode is set to [VIEWPORT\_VRS\_TEXTURE](#class-renderingserver-constant-viewport-vrs-texture). Equivalent to [ProjectSettings.rendering/vrs/texture](class_projectsettings.md#class-projectsettings-property-rendering-vrs-texture).

* * *

void **viewport\_set\_vrs\_update\_mode**(viewport: [RID](class_rid.md#class-rid), mode: [ViewportVRSUpdateMode](#enum-renderingserver-viewportvrsupdatemode)) [🔗](#class-renderingserver-method-viewport-set-vrs-update-mode)

Sets the update mode for Variable Rate Shading (VRS) for the viewport. VRS requires the input texture to be converted to the format usable by the VRS method supported by the hardware. The update mode defines how often this happens. If the GPU does not support VRS, or VRS is not enabled, this property is ignored.

If set to [VIEWPORT\_VRS\_UPDATE\_ONCE](#class-renderingserver-constant-viewport-vrs-update-once), the input texture is copied once and the mode is changed to [VIEWPORT\_VRS\_UPDATE\_DISABLED](#class-renderingserver-constant-viewport-vrs-update-disabled).

* * *

[RID](class_rid.md#class-rid) **visibility\_notifier\_create**() [🔗](#class-renderingserver-method-visibility-notifier-create)

Creates a new 3D visibility notifier object and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `visibility_notifier_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

To place in a scene, attach this notifier to an instance using [instance\_set\_base()](#class-renderingserver-method-instance-set-base) using the returned RID.

**Note:** The equivalent node is [VisibleOnScreenNotifier3D](class_visibleonscreennotifier3d.md#class-visibleonscreennotifier3d).

* * *

void **visibility\_notifier\_set\_aabb**(notifier: [RID](class_rid.md#class-rid), aabb: [AABB](class_aabb.md#class-aabb)) [🔗](#class-renderingserver-method-visibility-notifier-set-aabb)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **visibility\_notifier\_set\_callbacks**(notifier: [RID](class_rid.md#class-rid), enter\_callable: [Callable](class_callable.md#class-callable), exit\_callable: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingserver-method-visibility-notifier-set-callbacks)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **voxel\_gi\_allocate\_data**(voxel\_gi: [RID](class_rid.md#class-rid), to\_cell\_xform: [Transform3D](class_transform3d.md#class-transform3d), aabb: [AABB](class_aabb.md#class-aabb), octree\_size: [Vector3i](class_vector3i.md#class-vector3i), octree\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), data\_cells: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), distance\_field: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), level\_counts: [PackedInt32Array](class_packedint32array.md#class-packedint32array)) [🔗](#class-renderingserver-method-voxel-gi-allocate-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **voxel\_gi\_create**() [🔗](#class-renderingserver-method-voxel-gi-create)

Creates a new voxel-based global illumination object and adds it to the RenderingServer. It can be accessed with the RID that is returned. This RID will be used in all `voxel_gi_*` RenderingServer functions.

Once finished with your RID, you will want to free the RID using the RenderingServer's [free\_rid()](#class-renderingserver-method-free-rid) method.

**Note:** The equivalent node is [VoxelGI](class_voxelgi.md#class-voxelgi).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **voxel\_gi\_get\_data\_cells**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-data-cells)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **voxel\_gi\_get\_distance\_field**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-distance-field)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **voxel\_gi\_get\_level\_counts**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-level-counts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **voxel\_gi\_get\_octree\_cells**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-octree-cells)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3i](class_vector3i.md#class-vector3i) **voxel\_gi\_get\_octree\_size**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-octree-size)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **voxel\_gi\_get\_to\_cell\_xform**(voxel\_gi: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingserver-method-voxel-gi-get-to-cell-xform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **voxel\_gi\_set\_baked\_exposure\_normalization**(voxel\_gi: [RID](class_rid.md#class-rid), baked\_exposure: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-baked-exposure-normalization)

Used to inform the renderer what exposure normalization value was used while baking the voxel gi. This value will be used and modulated at run time to ensure that the voxel gi maintains a consistent level of exposure even if the scene-wide exposure normalization is changed at run time. For more information see [camera\_attributes\_set\_exposure()](#class-renderingserver-method-camera-attributes-set-exposure).

* * *

void **voxel\_gi\_set\_bias**(voxel\_gi: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-bias)

Sets the [VoxelGIData.bias](class_voxelgidata.md#class-voxelgidata-property-bias) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_dynamic\_range**(voxel\_gi: [RID](class_rid.md#class-rid), range: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-dynamic-range)

Sets the [VoxelGIData.dynamic\_range](class_voxelgidata.md#class-voxelgidata-property-dynamic-range) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_energy**(voxel\_gi: [RID](class_rid.md#class-rid), energy: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-energy)

Sets the [VoxelGIData.energy](class_voxelgidata.md#class-voxelgidata-property-energy) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_interior**(voxel\_gi: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-voxel-gi-set-interior)

Sets the [VoxelGIData.interior](class_voxelgidata.md#class-voxelgidata-property-interior) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_normal\_bias**(voxel\_gi: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-normal-bias)

Sets the [VoxelGIData.normal\_bias](class_voxelgidata.md#class-voxelgidata-property-normal-bias) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_propagation**(voxel\_gi: [RID](class_rid.md#class-rid), amount: [float](class_float.md#class-float)) [🔗](#class-renderingserver-method-voxel-gi-set-propagation)

Sets the [VoxelGIData.propagation](class_voxelgidata.md#class-voxelgidata-property-propagation) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

* * *

void **voxel\_gi\_set\_quality**(quality: [VoxelGIQuality](#enum-renderingserver-voxelgiquality)) [🔗](#class-renderingserver-method-voxel-gi-set-quality)

Sets the [ProjectSettings.rendering/global\_illumination/voxel\_gi/quality](class_projectsettings.md#class-projectsettings-property-rendering-global-illumination-voxel-gi-quality) value to use when rendering. This parameter is global and cannot be set on a per-VoxelGI basis.

* * *

void **voxel\_gi\_set\_use\_two\_bounces**(voxel\_gi: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingserver-method-voxel-gi-set-use-two-bounces)

Sets the [VoxelGIData.use\_two\_bounces](class_voxelgidata.md#class-voxelgidata-property-use-two-bounces) value to use on the specified `voxel_gi`'s [RID](class_rid.md#class-rid).

[Previous](class_renderingdevice.md "RenderingDevice") [Next](class_renderscenebuffers.md "RenderSceneBuffers")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderingdevice.md "RenderingDevice") [Next](class_renderscenebuffers.md "RenderSceneBuffers")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).