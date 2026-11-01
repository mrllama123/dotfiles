---
title: Camera2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_camera2d.html
crawled_at: "2026-08-13T10:41:34+12:00"
content_hash: 2cd2888e2467d28a3ce4ee53c76214c50be371df1d26e937f28f349da4586307
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Camera2D

* * *

# Camera2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Camera node for 2D scenes.

## Description

Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of [CanvasItem](class_canvasitem.md#class-canvasitem)-based nodes.

Cameras register themselves in the nearest [Viewport](class_viewport.md#class-viewport) node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport.

This node is intended to be a simple helper to get things going quickly, but more functionality may be desired to change how the camera works. To make your own custom camera node, inherit it from [Node2D](class_node2d.md#class-node2d) and change the transform of the canvas by setting [Viewport.canvas\_transform](class_viewport.md#class-viewport-property-canvas-transform) in [Viewport](class_viewport.md#class-viewport) (you can obtain the current [Viewport](class_viewport.md#class-viewport) by using [Node.get\_viewport()](class_node.md#class-node-method-get-viewport)).

Note that the **Camera2D** node's [Node2D.global\_position](class_node2d.md#class-node2d-property-global-position) doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use [get\_screen\_center\_position()](#class-camera2d-method-get-screen-center-position) to get the real position. Same for the node's [Node2D.global\_rotation](class_node2d.md#class-node2d-property-global-rotation) which may be different due to applied rotation smoothing. You can use [get\_screen\_rotation()](#class-camera2d-method-get-screen-rotation) to get the current rotation of the screen.

## Tutorials

- [2D Platformer Demo](https://godotengine.org/asset-library/asset/2727)

- [2D Isometric Demo](https://godotengine.org/asset-library/asset/2718)


## Properties

|     |     |     |
| --- | --- | --- |
| [AnchorMode](#enum-camera2d-anchormode) | [anchor\_mode](#class-camera2d-property-anchor-mode) | `1` |
| [Node](class_node.md#class-node) | [custom\_viewport](#class-camera2d-property-custom-viewport) |  |
| [float](class_float.md#class-float) | [drag\_bottom\_margin](#class-camera2d-property-drag-bottom-margin) | `0.2` |
| [bool](class_bool.md#class-bool) | [drag\_horizontal\_enabled](#class-camera2d-property-drag-horizontal-enabled) | `false` |
| [float](class_float.md#class-float) | [drag\_horizontal\_offset](#class-camera2d-property-drag-horizontal-offset) | `0.0` |
| [float](class_float.md#class-float) | [drag\_left\_margin](#class-camera2d-property-drag-left-margin) | `0.2` |
| [float](class_float.md#class-float) | [drag\_right\_margin](#class-camera2d-property-drag-right-margin) | `0.2` |
| [float](class_float.md#class-float) | [drag\_top\_margin](#class-camera2d-property-drag-top-margin) | `0.2` |
| [bool](class_bool.md#class-bool) | [drag\_vertical\_enabled](#class-camera2d-property-drag-vertical-enabled) | `false` |
| [float](class_float.md#class-float) | [drag\_vertical\_offset](#class-camera2d-property-drag-vertical-offset) | `0.0` |
| [bool](class_bool.md#class-bool) | [editor\_draw\_drag\_margin](#class-camera2d-property-editor-draw-drag-margin) | `false` |
| [bool](class_bool.md#class-bool) | [editor\_draw\_limits](#class-camera2d-property-editor-draw-limits) | `false` |
| [bool](class_bool.md#class-bool) | [editor\_draw\_screen](#class-camera2d-property-editor-draw-screen) | `true` |
| [bool](class_bool.md#class-bool) | [enabled](#class-camera2d-property-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [ignore\_rotation](#class-camera2d-property-ignore-rotation) | `true` |
| [int](class_int.md#class-int) | [limit\_bottom](#class-camera2d-property-limit-bottom) | `10000000` |
| [bool](class_bool.md#class-bool) | [limit\_enabled](#class-camera2d-property-limit-enabled) | `true` |
| [int](class_int.md#class-int) | [limit\_left](#class-camera2d-property-limit-left) | `-10000000` |
| [int](class_int.md#class-int) | [limit\_right](#class-camera2d-property-limit-right) | `10000000` |
| [bool](class_bool.md#class-bool) | [limit\_smoothed](#class-camera2d-property-limit-smoothed) | `false` |
| [int](class_int.md#class-int) | [limit\_top](#class-camera2d-property-limit-top) | `-10000000` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-camera2d-property-offset) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [position\_smoothing\_enabled](#class-camera2d-property-position-smoothing-enabled) | `false` |
| [float](class_float.md#class-float) | [position\_smoothing\_speed](#class-camera2d-property-position-smoothing-speed) | `5.0` |
| [Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback) | [process\_callback](#class-camera2d-property-process-callback) | `1` |
| [bool](class_bool.md#class-bool) | [rotation\_smoothing\_enabled](#class-camera2d-property-rotation-smoothing-enabled) | `false` |
| [float](class_float.md#class-float) | [rotation\_smoothing\_speed](#class-camera2d-property-rotation-smoothing-speed) | `5.0` |
| [Vector2](class_vector2.md#class-vector2) | [zoom](#class-camera2d-property-zoom) | `Vector2(1, 1)` |

## Methods

|     |     |
| --- | --- |
| void | [align](#class-camera2d-method-align)() |
| void | [force\_update\_scroll](#class-camera2d-method-force-update-scroll)() |
| [float](class_float.md#class-float) | [get\_drag\_margin](#class-camera2d-method-get-drag-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [int](class_int.md#class-int) | [get\_limit](#class-camera2d-method-get-limit)(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_screen\_center\_position](#class-camera2d-method-get-screen-center-position)() const |
| [float](class_float.md#class-float) | [get\_screen\_rotation](#class-camera2d-method-get-screen-rotation)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_target\_position](#class-camera2d-method-get-target-position)() const |
| [bool](class_bool.md#class-bool) | [is\_current](#class-camera2d-method-is-current)() const |
| void | [make\_current](#class-camera2d-method-make-current)() |
| void | [reset\_smoothing](#class-camera2d-method-reset-smoothing)() |
| void | [set\_drag\_margin](#class-camera2d-method-set-drag-margin)(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float)) |
| void | [set\_limit](#class-camera2d-method-set-limit)(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int)) |

* * *

## Enumerations

enum **AnchorMode**: [🔗](#enum-camera2d-anchormode)

[AnchorMode](#enum-camera2d-anchormode) **ANCHOR\_MODE\_FIXED\_TOP\_LEFT** = `0`

The camera's position is fixed so that the top-left corner is always at the origin.

[AnchorMode](#enum-camera2d-anchormode) **ANCHOR\_MODE\_DRAG\_CENTER** = `1`

The camera's position takes into account vertical/horizontal offsets and the screen size.

* * *

enum **Camera2DProcessCallback**: [🔗](#enum-camera2d-camera2dprocesscallback)

[Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback) **CAMERA2D\_PROCESS\_PHYSICS** = `0`

The camera updates during physics frames (see [Node.NOTIFICATION\_INTERNAL\_PHYSICS\_PROCESS](class_node.md#class-node-constant-notification-internal-physics-process)).

[Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback) **CAMERA2D\_PROCESS\_IDLE** = `1`

The camera updates during process frames (see [Node.NOTIFICATION\_INTERNAL\_PROCESS](class_node.md#class-node-constant-notification-internal-process)).

* * *

## Property Descriptions

[AnchorMode](#enum-camera2d-anchormode) **anchor\_mode** = `1` [🔗](#class-camera2d-property-anchor-mode)

- void **set\_anchor\_mode**(value: [AnchorMode](#enum-camera2d-anchormode))

- [AnchorMode](#enum-camera2d-anchormode) **get\_anchor\_mode**()


The Camera2D's anchor point.

* * *

[Node](class_node.md#class-node) **custom\_viewport** [🔗](#class-camera2d-property-custom-viewport)

- void **set\_custom\_viewport**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_custom\_viewport**()


The custom [Viewport](class_viewport.md#class-viewport) node attached to the **Camera2D**. If `null` or not a [Viewport](class_viewport.md#class-viewport), uses the default viewport instead.

* * *

[float](class_float.md#class-float) **drag\_bottom\_margin** = `0.2` [🔗](#class-camera2d-property-drag-bottom-margin)

- void **set\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Bottom margin needed to drag the camera. A value of `1` makes the camera move only when reaching the bottom edge of the screen.

* * *

[bool](class_bool.md#class-bool) **drag\_horizontal\_enabled** = `false` [🔗](#class-camera2d-property-drag-horizontal-enabled)

- void **set\_drag\_horizontal\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_horizontal\_enabled**()


If `true`, the camera only moves when reaching the horizontal (left and right) drag margins. If `false`, the camera moves horizontally regardless of margins.

* * *

[float](class_float.md#class-float) **drag\_horizontal\_offset** = `0.0` [🔗](#class-camera2d-property-drag-horizontal-offset)

- void **set\_drag\_horizontal\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_horizontal\_offset**()


The relative horizontal drag offset of the camera between the right ( `-1`) and left ( `1`) drag margins.

**Note:** Used to set the initial horizontal drag offset; determine the current offset; or force the current offset. It's not automatically updated when [drag\_horizontal\_enabled](#class-camera2d-property-drag-horizontal-enabled) is `true` or the drag margins are changed.

* * *

[float](class_float.md#class-float) **drag\_left\_margin** = `0.2` [🔗](#class-camera2d-property-drag-left-margin)

- void **set\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Left margin needed to drag the camera. A value of `1` makes the camera move only when reaching the left edge of the screen.

* * *

[float](class_float.md#class-float) **drag\_right\_margin** = `0.2` [🔗](#class-camera2d-property-drag-right-margin)

- void **set\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Right margin needed to drag the camera. A value of `1` makes the camera move only when reaching the right edge of the screen.

* * *

[float](class_float.md#class-float) **drag\_top\_margin** = `0.2` [🔗](#class-camera2d-property-drag-top-margin)

- void **set\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Top margin needed to drag the camera. A value of `1` makes the camera move only when reaching the top edge of the screen.

* * *

[bool](class_bool.md#class-bool) **drag\_vertical\_enabled** = `false` [🔗](#class-camera2d-property-drag-vertical-enabled)

- void **set\_drag\_vertical\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_vertical\_enabled**()


If `true`, the camera only moves when reaching the vertical (top and bottom) drag margins. If `false`, the camera moves vertically regardless of the drag margins.

* * *

[float](class_float.md#class-float) **drag\_vertical\_offset** = `0.0` [🔗](#class-camera2d-property-drag-vertical-offset)

- void **set\_drag\_vertical\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_vertical\_offset**()


The relative vertical drag offset of the camera between the bottom ( `-1`) and top ( `1`) drag margins.

**Note:** Used to set the initial vertical drag offset; determine the current offset; or force the current offset. It's not automatically updated when [drag\_vertical\_enabled](#class-camera2d-property-drag-vertical-enabled) is `true` or the drag margins are changed.

* * *

[bool](class_bool.md#class-bool) **editor\_draw\_drag\_margin** = `false` [🔗](#class-camera2d-property-editor-draw-drag-margin)

- void **set\_margin\_drawing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_margin\_drawing\_enabled**()


If `true`, draws the camera's drag margin rectangle in the editor.

* * *

[bool](class_bool.md#class-bool) **editor\_draw\_limits** = `false` [🔗](#class-camera2d-property-editor-draw-limits)

- void **set\_limit\_drawing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_limit\_drawing\_enabled**()


If `true`, draws the camera's limits rectangle in the editor.

* * *

[bool](class_bool.md#class-bool) **editor\_draw\_screen** = `true` [🔗](#class-camera2d-property-editor-draw-screen)

- void **set\_screen\_drawing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_screen\_drawing\_enabled**()


If `true`, draws the camera's screen rectangle in the editor.

* * *

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-camera2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_enabled**()


Controls whether the camera can be active or not. If `true`, the **Camera2D** will become the main camera when it enters the scene tree and there is no active camera currently (see [Viewport.get\_camera\_2d()](class_viewport.md#class-viewport-method-get-camera-2d)).

When the camera is currently active and [enabled](#class-camera2d-property-enabled) is set to `false`, the next enabled **Camera2D** in the scene tree will become active.

* * *

[bool](class_bool.md#class-bool) **ignore\_rotation** = `true` [🔗](#class-camera2d-property-ignore-rotation)

- void **set\_ignore\_rotation**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignoring\_rotation**()


If `true`, the camera's rendered view is not affected by its [Node2D.rotation](class_node2d.md#class-node2d-property-rotation) and [Node2D.global\_rotation](class_node2d.md#class-node2d-property-global-rotation).

* * *

[int](class_int.md#class-int) **limit\_bottom** = `10000000` [🔗](#class-camera2d-property-limit-bottom)

- void **set\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Bottom scroll limit in pixels. The camera stops moving when reaching this value, but [offset](#class-camera2d-property-offset) can push the view past the limit.

* * *

[bool](class_bool.md#class-bool) **limit\_enabled** = `true` [🔗](#class-camera2d-property-limit-enabled)

- void **set\_limit\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_limit\_enabled**()


If `true`, the limits will be enabled. Disabling this will allow the camera to focus anywhere, when the four `limit_*` properties will not work.

* * *

[int](class_int.md#class-int) **limit\_left** = `-10000000` [🔗](#class-camera2d-property-limit-left)

- void **set\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Left scroll limit in pixels. The camera stops moving when reaching this value, but [offset](#class-camera2d-property-offset) can push the view past the limit.

* * *

[int](class_int.md#class-int) **limit\_right** = `10000000` [🔗](#class-camera2d-property-limit-right)

- void **set\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Right scroll limit in pixels. The camera stops moving when reaching this value, but [offset](#class-camera2d-property-offset) can push the view past the limit.

* * *

[bool](class_bool.md#class-bool) **limit\_smoothed** = `false` [🔗](#class-camera2d-property-limit-smoothed)

- void **set\_limit\_smoothing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_limit\_smoothing\_enabled**()


If `true`, the camera smoothly stops when reaches its limits.

This property has no effect if [position\_smoothing\_enabled](#class-camera2d-property-position-smoothing-enabled) is `false`.

**Note:** To immediately update the camera's position to be within limits without smoothing, even with this setting enabled, invoke [reset\_smoothing()](#class-camera2d-method-reset-smoothing).

* * *

[int](class_int.md#class-int) **limit\_top** = `-10000000` [🔗](#class-camera2d-property-limit-top)

- void **set\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const


Top scroll limit in pixels. The camera stops moving when reaching this value, but [offset](#class-camera2d-property-offset) can push the view past the limit.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-camera2d-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The camera's relative offset. Useful for looking around or camera shake animations. The offsetted camera can go past the limits defined in [limit\_top](#class-camera2d-property-limit-top), [limit\_bottom](#class-camera2d-property-limit-bottom), [limit\_left](#class-camera2d-property-limit-left) and [limit\_right](#class-camera2d-property-limit-right).

* * *

[bool](class_bool.md#class-bool) **position\_smoothing\_enabled** = `false` [🔗](#class-camera2d-property-position-smoothing-enabled)

- void **set\_position\_smoothing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_position\_smoothing\_enabled**()


If `true`, the camera's view smoothly moves towards its target position at [position\_smoothing\_speed](#class-camera2d-property-position-smoothing-speed).

* * *

[float](class_float.md#class-float) **position\_smoothing\_speed** = `5.0` [🔗](#class-camera2d-property-position-smoothing-speed)

- void **set\_position\_smoothing\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_position\_smoothing\_speed**()


Speed in pixels per second of the camera's smoothing effect when [position\_smoothing\_enabled](#class-camera2d-property-position-smoothing-enabled) is `true`.

* * *

[Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback) **process\_callback** = `1` [🔗](#class-camera2d-property-process-callback)

- void **set\_process\_callback**(value: [Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback))

- [Camera2DProcessCallback](#enum-camera2d-camera2dprocesscallback) **get\_process\_callback**()


The camera's process callback.

* * *

[bool](class_bool.md#class-bool) **rotation\_smoothing\_enabled** = `false` [🔗](#class-camera2d-property-rotation-smoothing-enabled)

- void **set\_rotation\_smoothing\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_rotation\_smoothing\_enabled**()


If `true`, the camera's view smoothly rotates, via asymptotic smoothing, to align with its target rotation at [rotation\_smoothing\_speed](#class-camera2d-property-rotation-smoothing-speed).

**Note:** This property has no effect if [ignore\_rotation](#class-camera2d-property-ignore-rotation) is `true`.

* * *

[float](class_float.md#class-float) **rotation\_smoothing\_speed** = `5.0` [🔗](#class-camera2d-property-rotation-smoothing-speed)

- void **set\_rotation\_smoothing\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation\_smoothing\_speed**()


The angular, asymptotic speed of the camera's rotation smoothing effect when [rotation\_smoothing\_enabled](#class-camera2d-property-rotation-smoothing-enabled) is `true`.

* * *

[Vector2](class_vector2.md#class-vector2) **zoom** = `Vector2(1, 1)` [🔗](#class-camera2d-property-zoom)

- void **set\_zoom**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_zoom**()


The camera's zoom. Higher values are more zoomed in. For example, a zoom of `Vector2(2.0, 2.0)` will be twice as zoomed in on each axis (the view covers an area four times smaller). In contrast, a zoom of `Vector2(0.5, 0.5)` will be twice as zoomed out on each axis (the view covers an area four times larger). The X and Y components should generally always be set to the same value, unless you wish to stretch the camera view.

**Note:** [FontFile.oversampling](class_fontfile.md#class-fontfile-property-oversampling) does _not_ take **Camera2D** zoom into account. This means that zooming in/out will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated unless the font is part of a [CanvasLayer](class_canvaslayer.md#class-canvaslayer) that makes it ignore camera zoom. To ensure text remains crisp regardless of zoom, you can enable MSDF font rendering by enabling [ProjectSettings.gui/theme/default\_font\_multichannel\_signed\_distance\_field](class_projectsettings.md#class-projectsettings-property-gui-theme-default-font-multichannel-signed-distance-field) (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, [SystemFont.multichannel\_signed\_distance\_field](class_systemfont.md#class-systemfont-property-multichannel-signed-distance-field) can be enabled in the inspector.

* * *

## Method Descriptions

void **align**() [🔗](#class-camera2d-method-align)

Aligns the camera to the tracked node.

* * *

void **force\_update\_scroll**() [🔗](#class-camera2d-method-force-update-scroll)

Forces the camera to update scroll immediately.

* * *

[float](class_float.md#class-float) **get\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-camera2d-method-get-drag-margin)

Returns the specified [Side](class_@globalscope.md#enum-globalscope-side)'s margin. See also [drag\_bottom\_margin](#class-camera2d-property-drag-bottom-margin), [drag\_top\_margin](#class-camera2d-property-drag-top-margin), [drag\_left\_margin](#class-camera2d-property-drag-left-margin), and [drag\_right\_margin](#class-camera2d-property-drag-right-margin).

* * *

[int](class_int.md#class-int) **get\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-camera2d-method-get-limit)

Returns the camera limit for the specified [Side](class_@globalscope.md#enum-globalscope-side). See also [limit\_bottom](#class-camera2d-property-limit-bottom), [limit\_top](#class-camera2d-property-limit-top), [limit\_left](#class-camera2d-property-limit-left), and [limit\_right](#class-camera2d-property-limit-right).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_screen\_center\_position**() const [🔗](#class-camera2d-method-get-screen-center-position)

Returns the center of the screen from this camera's point of view, in global coordinates.

**Note:** The exact targeted position of the camera may be different. See [get\_target\_position()](#class-camera2d-method-get-target-position).

* * *

[float](class_float.md#class-float) **get\_screen\_rotation**() const [🔗](#class-camera2d-method-get-screen-rotation)

Returns the current screen rotation from this camera's point of view.

**Note:** The screen rotation can be different from [Node2D.global\_rotation](class_node2d.md#class-node2d-property-global-rotation) if the camera is rotating smoothly due to [rotation\_smoothing\_enabled](#class-camera2d-property-rotation-smoothing-enabled).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_target\_position**() const [🔗](#class-camera2d-method-get-target-position)

Returns this camera's target position, in global coordinates.

**Note:** The returned value is not the same as [Node2D.global\_position](class_node2d.md#class-node2d-property-global-position), as it is affected by the drag properties. It is also not the same as the current position if [position\_smoothing\_enabled](#class-camera2d-property-position-smoothing-enabled) is `true` (see [get\_screen\_center\_position()](#class-camera2d-method-get-screen-center-position)).

* * *

[bool](class_bool.md#class-bool) **is\_current**() const [🔗](#class-camera2d-method-is-current)

Returns `true` if this **Camera2D** is the active camera (see [Viewport.get\_camera\_2d()](class_viewport.md#class-viewport-method-get-camera-2d)).

* * *

void **make\_current**() [🔗](#class-camera2d-method-make-current)

Forces this **Camera2D** to become the current active one. [enabled](#class-camera2d-property-enabled) must be `true`.

* * *

void **reset\_smoothing**() [🔗](#class-camera2d-method-reset-smoothing)

Sets the camera's position immediately to its current smoothing destination.

This method has no effect if [position\_smoothing\_enabled](#class-camera2d-property-position-smoothing-enabled) is `false`.

* * *

void **set\_drag\_margin**(margin: [Side](class_@globalscope.md#enum-globalscope-side), drag\_margin: [float](class_float.md#class-float)) [🔗](#class-camera2d-method-set-drag-margin)

Sets the specified [Side](class_@globalscope.md#enum-globalscope-side)'s margin. See also [drag\_bottom\_margin](#class-camera2d-property-drag-bottom-margin), [drag\_top\_margin](#class-camera2d-property-drag-top-margin), [drag\_left\_margin](#class-camera2d-property-drag-left-margin), and [drag\_right\_margin](#class-camera2d-property-drag-right-margin).

* * *

void **set\_limit**(margin: [Side](class_@globalscope.md#enum-globalscope-side), limit: [int](class_int.md#class-int)) [🔗](#class-camera2d-method-set-limit)

Sets the camera limit for the specified [Side](class_@globalscope.md#enum-globalscope-side). See also [limit\_bottom](#class-camera2d-property-limit-bottom), [limit\_top](#class-camera2d-property-limit-top), [limit\_left](#class-camera2d-property-limit-left), and [limit\_right](#class-camera2d-property-limit-right).

[Previous](class_button.md "Button") [Next](class_camera3d.md "Camera3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_button.md "Button") [Next](class_camera3d.md "Camera3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).