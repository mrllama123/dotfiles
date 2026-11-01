---
title: Viewport — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_viewport.html
crawled_at: "2026-08-13T10:25:32+12:00"
content_hash: b98383c27fea869fb32f4499715d245968146e7594e9f8ee5ecd7e8545d34ed7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Viewport

* * *

# Viewport

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [SubViewport](class_subviewport.md#class-subviewport), [Window](class_window.md#class-window)

Abstract base class for viewports. Encapsulates drawing and interaction with a game world.

## Description

A **Viewport** creates a different view into the screen, or a sub-view inside another viewport. Child 2D nodes will display on it, and child Camera3D 3D nodes will render on it too.

Optionally, a viewport can have its own 2D or 3D world, so it doesn't share what it draws with other viewports.

Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.

Also, viewports can be assigned to different screens in case the devices have multiple screens.

Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.

## Tutorials

- [Using Viewports](../tutorials/rendering/viewports.md)

- [Viewport and canvas transforms](../tutorials/2d/2d_transforms.md)

- [GUI in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2807)

- [3D in 2D Viewport Demo](https://godotengine.org/asset-library/asset/2804)

- [2D in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2803)

- [Screen Capture Demo](https://godotengine.org/asset-library/asset/2808)

- [Dynamic Split Screen Demo](https://godotengine.org/asset-library/asset/2806)

- [3D Resolution Scaling Demo](https://godotengine.org/asset-library/asset/2805)


## Properties

|     |     |     |
| --- | --- | --- |
| [AnisotropicFiltering](#enum-viewport-anisotropicfiltering) | [anisotropic\_filtering\_level](#class-viewport-property-anisotropic-filtering-level) | `2` |
| [bool](class_bool.md#class-bool) | [audio\_listener\_enable\_2d](#class-viewport-property-audio-listener-enable-2d) | `false` |
| [bool](class_bool.md#class-bool) | [audio\_listener\_enable\_3d](#class-viewport-property-audio-listener-enable-3d) | `false` |
| [int](class_int.md#class-int) | [canvas\_cull\_mask](#class-viewport-property-canvas-cull-mask) | `4294967295` |
| [DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) | [canvas\_item\_default\_texture\_filter](#class-viewport-property-canvas-item-default-texture-filter) | `1` |
| [DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) | [canvas\_item\_default\_texture\_repeat](#class-viewport-property-canvas-item-default-texture-repeat) | `0` |
| [Transform2D](class_transform2d.md#class-transform2d) | [canvas\_transform](#class-viewport-property-canvas-transform) |  |
| [DebugDraw](#enum-viewport-debugdraw) | [debug\_draw](#class-viewport-property-debug-draw) | `0` |
| [bool](class_bool.md#class-bool) | [disable\_3d](#class-viewport-property-disable-3d) | `false` |
| [float](class_float.md#class-float) | [fsr\_sharpness](#class-viewport-property-fsr-sharpness) | `0.2` |
| [Transform2D](class_transform2d.md#class-transform2d) | [global\_canvas\_transform](#class-viewport-property-global-canvas-transform) |  |
| [bool](class_bool.md#class-bool) | [gui\_disable\_input](#class-viewport-property-gui-disable-input) | `false` |
| [bool](class_bool.md#class-bool) | [gui\_embed\_subwindows](#class-viewport-property-gui-embed-subwindows) | `false` |
| [bool](class_bool.md#class-bool) | [gui\_snap\_controls\_to\_pixels](#class-viewport-property-gui-snap-controls-to-pixels) | `true` |
| [bool](class_bool.md#class-bool) | [handle\_input\_locally](#class-viewport-property-handle-input-locally) | `true` |
| [float](class_float.md#class-float) | [mesh\_lod\_threshold](#class-viewport-property-mesh-lod-threshold) | `1.0` |
| [MSAA](#enum-viewport-msaa) | [msaa\_2d](#class-viewport-property-msaa-2d) | `0` |
| [MSAA](#enum-viewport-msaa) | [msaa\_3d](#class-viewport-property-msaa-3d) | `0` |
| [bool](class_bool.md#class-bool) | [oversampling](#class-viewport-property-oversampling) | `true` |
| [float](class_float.md#class-float) | [oversampling\_override](#class-viewport-property-oversampling-override) | `0.0` |
| [bool](class_bool.md#class-bool) | [own\_world\_3d](#class-viewport-property-own-world-3d) | `false` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `1` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [bool](class_bool.md#class-bool) | [physics\_object\_picking](#class-viewport-property-physics-object-picking) | `false` |
| [bool](class_bool.md#class-bool) | [physics\_object\_picking\_first\_only](#class-viewport-property-physics-object-picking-first-only) | `false` |
| [bool](class_bool.md#class-bool) | [physics\_object\_picking\_sort](#class-viewport-property-physics-object-picking-sort) | `false` |
| [bool](class_bool.md#class-bool) | [positional\_shadow\_atlas\_16\_bits](#class-viewport-property-positional-shadow-atlas-16-bits) | `true` |
| [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) | [positional\_shadow\_atlas\_quad\_0](#class-viewport-property-positional-shadow-atlas-quad-0) | `2` |
| [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) | [positional\_shadow\_atlas\_quad\_1](#class-viewport-property-positional-shadow-atlas-quad-1) | `2` |
| [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) | [positional\_shadow\_atlas\_quad\_2](#class-viewport-property-positional-shadow-atlas-quad-2) | `3` |
| [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) | [positional\_shadow\_atlas\_quad\_3](#class-viewport-property-positional-shadow-atlas-quad-3) | `4` |
| [int](class_int.md#class-int) | [positional\_shadow\_atlas\_size](#class-viewport-property-positional-shadow-atlas-size) | `2048` |
| [Scaling3DMode](#enum-viewport-scaling3dmode) | [scaling\_3d\_mode](#class-viewport-property-scaling-3d-mode) | `0` |
| [float](class_float.md#class-float) | [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale) | `1.0` |
| [ScreenSpaceAA](#enum-viewport-screenspaceaa) | [screen\_space\_aa](#class-viewport-property-screen-space-aa) | `0` |
| [SDFOversize](#enum-viewport-sdfoversize) | [sdf\_oversize](#class-viewport-property-sdf-oversize) | `1` |
| [SDFScale](#enum-viewport-sdfscale) | [sdf\_scale](#class-viewport-property-sdf-scale) | `1` |
| [bool](class_bool.md#class-bool) | [snap\_2d\_transforms\_to\_pixel](#class-viewport-property-snap-2d-transforms-to-pixel) | `false` |
| [bool](class_bool.md#class-bool) | [snap\_2d\_vertices\_to\_pixel](#class-viewport-property-snap-2d-vertices-to-pixel) | `false` |
| [float](class_float.md#class-float) | [texture\_mipmap\_bias](#class-viewport-property-texture-mipmap-bias) | `0.0` |
| [bool](class_bool.md#class-bool) | [transparent\_bg](#class-viewport-property-transparent-bg) | `false` |
| [bool](class_bool.md#class-bool) | [use\_debanding](#class-viewport-property-use-debanding) | `false` |
| [bool](class_bool.md#class-bool) | [use\_hdr\_2d](#class-viewport-property-use-hdr-2d) | `false` |
| [bool](class_bool.md#class-bool) | [use\_occlusion\_culling](#class-viewport-property-use-occlusion-culling) | `false` |
| [bool](class_bool.md#class-bool) | [use\_taa](#class-viewport-property-use-taa) | `false` |
| [bool](class_bool.md#class-bool) | [use\_xr](#class-viewport-property-use-xr) | `false` |
| [VRSMode](#enum-viewport-vrsmode) | [vrs\_mode](#class-viewport-property-vrs-mode) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [vrs\_texture](#class-viewport-property-vrs-texture) |  |
| [VRSUpdateMode](#enum-viewport-vrsupdatemode) | [vrs\_update\_mode](#class-viewport-property-vrs-update-mode) | `1` |
| [World2D](class_world2d.md#class-world2d) | [world\_2d](#class-viewport-property-world-2d) |  |
| [World3D](class_world3d.md#class-world3d) | [world\_3d](#class-viewport-property-world-3d) |  |

## Methods

|     |     |
| --- | --- |
| [World2D](class_world2d.md#class-world2d) | [find\_world\_2d](#class-viewport-method-find-world-2d)() const |
| [World3D](class_world3d.md#class-world3d) | [find\_world\_3d](#class-viewport-method-find-world-3d)() const |
| [AudioListener2D](class_audiolistener2d.md#class-audiolistener2d) | [get\_audio\_listener\_2d](#class-viewport-method-get-audio-listener-2d)() const |
| [AudioListener3D](class_audiolistener3d.md#class-audiolistener3d) | [get\_audio\_listener\_3d](#class-viewport-method-get-audio-listener-3d)() const |
| [Camera2D](class_camera2d.md#class-camera2d) | [get\_camera\_2d](#class-viewport-method-get-camera-2d)() const |
| [Camera3D](class_camera3d.md#class-camera3d) | [get\_camera\_3d](#class-viewport-method-get-camera-3d)() const |
| [bool](class_bool.md#class-bool) | [get\_canvas\_cull\_mask\_bit](#class-viewport-method-get-canvas-cull-mask-bit)(layer: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Window](class_window.md#class-window)\] | [get\_embedded\_subwindows](#class-viewport-method-get-embedded-subwindows)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_final\_transform](#class-viewport-method-get-final-transform)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_mouse\_position](#class-viewport-method-get-mouse-position)() const |
| [float](class_float.md#class-float) | [get\_oversampling](#class-viewport-method-get-oversampling)() const |
| [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) | [get\_positional\_shadow\_atlas\_quadrant\_subdiv](#class-viewport-method-get-positional-shadow-atlas-quadrant-subdiv)(quadrant: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_render\_info](#class-viewport-method-get-render-info)(type: [RenderInfoType](#enum-viewport-renderinfotype), info: [RenderInfo](#enum-viewport-renderinfo)) |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_screen\_transform](#class-viewport-method-get-screen-transform)() const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_stretch\_transform](#class-viewport-method-get-stretch-transform)() const |
| [ViewportTexture](class_viewporttexture.md#class-viewporttexture) | [get\_texture](#class-viewport-method-get-texture)() const |
| [RID](class_rid.md#class-rid) | [get\_viewport\_rid](#class-viewport-method-get-viewport-rid)() const |
| [Rect2](class_rect2.md#class-rect2) | [get\_visible\_rect](#class-viewport-method-get-visible-rect)() const |
| void | [gui\_cancel\_drag](#class-viewport-method-gui-cancel-drag)() |
| [Variant](class_variant.md#class-variant) | [gui\_get\_drag\_data](#class-viewport-method-gui-get-drag-data)() const |
| [String](class_string.md#class-string) | [gui\_get\_drag\_description](#class-viewport-method-gui-get-drag-description)() const |
| [Control](class_control.md#class-control) | [gui\_get\_focus\_owner](#class-viewport-method-gui-get-focus-owner)() const |
| [Control](class_control.md#class-control) | [gui\_get\_hovered\_control](#class-viewport-method-gui-get-hovered-control)() const |
| [bool](class_bool.md#class-bool) | [gui\_is\_drag\_successful](#class-viewport-method-gui-is-drag-successful)() const |
| [bool](class_bool.md#class-bool) | [gui\_is\_dragging](#class-viewport-method-gui-is-dragging)() const |
| void | [gui\_release\_focus](#class-viewport-method-gui-release-focus)() |
| void | [gui\_set\_drag\_description](#class-viewport-method-gui-set-drag-description)(description: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [is\_input\_handled](#class-viewport-method-is-input-handled)() const |
| void | [notify\_mouse\_entered](#class-viewport-method-notify-mouse-entered)() |
| void | [notify\_mouse\_exited](#class-viewport-method-notify-mouse-exited)() |
| void | [push\_input](#class-viewport-method-push-input)(event: [InputEvent](class_inputevent.md#class-inputevent), in\_local\_coords: [bool](class_bool.md#class-bool) = false) |
| void | [push\_text\_input](#class-viewport-method-push-text-input)(text: [String](class_string.md#class-string)) |
| void | [push\_unhandled\_input](#class-viewport-method-push-unhandled-input)(event: [InputEvent](class_inputevent.md#class-inputevent), in\_local\_coords: [bool](class_bool.md#class-bool) = false) |
| void | [set\_canvas\_cull\_mask\_bit](#class-viewport-method-set-canvas-cull-mask-bit)(layer: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_input\_as\_handled](#class-viewport-method-set-input-as-handled)() |
| void | [set\_positional\_shadow\_atlas\_quadrant\_subdiv](#class-viewport-method-set-positional-shadow-atlas-quadrant-subdiv)(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv)) |
| void | [update\_mouse\_cursor\_state](#class-viewport-method-update-mouse-cursor-state)() |
| void | [warp\_mouse](#class-viewport-method-warp-mouse)(position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**gui\_focus\_changed**(node: [Control](class_control.md#class-control)) [🔗](#class-viewport-signal-gui-focus-changed)

Emitted when a Control node grabs keyboard focus.

**Note:** A Control node losing focus doesn't cause this signal to be emitted.

* * *

**size\_changed**() [🔗](#class-viewport-signal-size-changed)

Emitted when the size of the viewport is changed, whether by resizing of window, or some other means.

* * *

## Enumerations

enum **PositionalShadowAtlasQuadrantSubdiv**: [🔗](#enum-viewport-positionalshadowatlasquadrantsubdiv)

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_DISABLED** = `0`

This quadrant will not be used.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_1** = `1`

This quadrant will only be used by one shadow map.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_4** = `2`

This quadrant will be split in 4 and used by up to 4 shadow maps.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_16** = `3`

This quadrant will be split 16 ways and used by up to 16 shadow maps.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_64** = `4`

This quadrant will be split 64 ways and used by up to 64 shadow maps.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_256** = `5`

This quadrant will be split 256 ways and used by up to 256 shadow maps. Unless the [positional\_shadow\_atlas\_size](#class-viewport-property-positional-shadow-atlas-size) is very high, the shadows in this quadrant will be very low resolution.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_1024** = `6`

This quadrant will be split 1024 ways and used by up to 1024 shadow maps. Unless the [positional\_shadow\_atlas\_size](#class-viewport-property-positional-shadow-atlas-size) is very high, the shadows in this quadrant will be very low resolution.

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **SHADOW\_ATLAS\_QUADRANT\_SUBDIV\_MAX** = `7`

Represents the size of the [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) enum.

* * *

enum **Scaling3DMode**: [🔗](#enum-viewport-scaling3dmode)

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_BILINEAR** = `0`

Use bilinear scaling for the viewport's 3D buffer. The amount of scaling can be set using [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in undersampling while values greater than `1.0` will result in supersampling. A value of `1.0` disables scaling.

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_FSR** = `1`

Use AMD FidelityFX Super Resolution 1.0 upscaling for the viewport's 3D buffer. The amount of scaling can be set using [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using FSR. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` disables scaling.

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_FSR2** = `2`

Use AMD FidelityFX Super Resolution 2.2 upscaling for the viewport's 3D buffer. The amount of scaling can be set using [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale). Values less than `1.0` will result in the viewport being upscaled using FSR2. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` will use FSR2 at native resolution as a TAA solution.

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_METALFX\_SPATIAL** = `3`

Use the [MetalFX spatial upscaler](https://developer.apple.com/documentation/metalfx/mtlfxspatialscaler#overview) for the viewport's 3D buffer.

The amount of scaling can be set using [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale).

Values less than `1.0` will result in the viewport being upscaled using MetalFX. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` disables scaling.

More information: [MetalFX](https://developer.apple.com/documentation/metalfx).

**Note:** Only supported when the Metal rendering driver is in use, which limits this scaling mode to macOS and iOS.

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_METALFX\_TEMPORAL** = `4`

Use the [MetalFX temporal upscaler](https://developer.apple.com/documentation/metalfx/mtlfxtemporalscaler#overview) for the viewport's 3D buffer.

The amount of scaling can be set using [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale). To determine the minimum input scale, use the [RenderingDevice.limit\_get()](class_renderingdevice.md#class-renderingdevice-method-limit-get) method with [RenderingDevice.LIMIT\_METALFX\_TEMPORAL\_SCALER\_MIN\_SCALE](class_renderingdevice.md#class-renderingdevice-constant-limit-metalfx-temporal-scaler-min-scale).

Values less than `1.0` will result in the viewport being upscaled using MetalFX. Values greater than `1.0` are not supported and bilinear downsampling will be used instead. A value of `1.0` will use MetalFX at native resolution as a TAA solution.

More information: [MetalFX](https://developer.apple.com/documentation/metalfx).

**Note:** Only supported when the Metal rendering driver is in use, which limits this scaling mode to macOS and iOS.

[Scaling3DMode](#enum-viewport-scaling3dmode) **SCALING\_3D\_MODE\_MAX** = `5`

Represents the size of the [Scaling3DMode](#enum-viewport-scaling3dmode) enum.

* * *

enum **MSAA**: [🔗](#enum-viewport-msaa)

[MSAA](#enum-viewport-msaa) **MSAA\_DISABLED** = `0`

Multisample antialiasing mode disabled. This is the default value, and is also the fastest setting.

[MSAA](#enum-viewport-msaa) **MSAA\_2X** = `1`

Use 2× Multisample Antialiasing. This has a moderate performance cost. It helps reduce aliasing noticeably, but 4× MSAA still looks substantially better.

[MSAA](#enum-viewport-msaa) **MSAA\_4X** = `2`

Use 4× Multisample Antialiasing. This has a significant performance cost, and is generally a good compromise between performance and quality.

[MSAA](#enum-viewport-msaa) **MSAA\_8X** = `3`

Use 8× Multisample Antialiasing. This has a very high performance cost. The difference between 4× and 8× MSAA may not always be visible in real gameplay conditions. Likely unsupported on low-end and older hardware.

[MSAA](#enum-viewport-msaa) **MSAA\_MAX** = `4`

Represents the size of the [MSAA](#enum-viewport-msaa) enum.

* * *

enum **AnisotropicFiltering**: [🔗](#enum-viewport-anisotropicfiltering)

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_DISABLED** = `0`

Anisotropic filtering is disabled.

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_2X** = `1`

Use 2× anisotropic filtering.

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_4X** = `2`

Use 4× anisotropic filtering. This is the default value.

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_8X** = `3`

Use 8× anisotropic filtering.

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_16X** = `4`

Use 16× anisotropic filtering.

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **ANISOTROPY\_MAX** = `5`

Represents the size of the [AnisotropicFiltering](#enum-viewport-anisotropicfiltering) enum.

* * *

enum **ScreenSpaceAA**: [🔗](#enum-viewport-screenspaceaa)

[ScreenSpaceAA](#enum-viewport-screenspaceaa) **SCREEN\_SPACE\_AA\_DISABLED** = `0`

Do not perform any antialiasing in the full screen post-process.

[ScreenSpaceAA](#enum-viewport-screenspaceaa) **SCREEN\_SPACE\_AA\_FXAA** = `1`

Use fast approximate antialiasing. FXAA is a popular screen-space antialiasing method, which is fast but will make the image look blurry, especially at lower resolutions. It can still work relatively well at large resolutions such as 1440p and 4K.

[ScreenSpaceAA](#enum-viewport-screenspaceaa) **SCREEN\_SPACE\_AA\_SMAA** = `2`

Use subpixel morphological antialiasing. SMAA may produce clearer results than FXAA, but at a slightly higher performance cost.

[ScreenSpaceAA](#enum-viewport-screenspaceaa) **SCREEN\_SPACE\_AA\_MAX** = `3`

Represents the size of the [ScreenSpaceAA](#enum-viewport-screenspaceaa) enum.

* * *

enum **RenderInfo**: [🔗](#enum-viewport-renderinfo)

[RenderInfo](#enum-viewport-renderinfo) **RENDER\_INFO\_OBJECTS\_IN\_FRAME** = `0`

Amount of objects in frame.

[RenderInfo](#enum-viewport-renderinfo) **RENDER\_INFO\_PRIMITIVES\_IN\_FRAME** = `1`

Amount of vertices in frame.

[RenderInfo](#enum-viewport-renderinfo) **RENDER\_INFO\_DRAW\_CALLS\_IN\_FRAME** = `2`

Amount of draw calls in frame.

[RenderInfo](#enum-viewport-renderinfo) **RENDER\_INFO\_MAX** = `3`

Represents the size of the [RenderInfo](#enum-viewport-renderinfo) enum.

* * *

enum **RenderInfoType**: [🔗](#enum-viewport-renderinfotype)

[RenderInfoType](#enum-viewport-renderinfotype) **RENDER\_INFO\_TYPE\_VISIBLE** = `0`

Visible render pass (excluding shadows).

[RenderInfoType](#enum-viewport-renderinfotype) **RENDER\_INFO\_TYPE\_SHADOW** = `1`

Shadow render pass. Objects will be rendered several times depending on the number of amounts of lights with shadows and the number of directional shadow splits.

[RenderInfoType](#enum-viewport-renderinfotype) **RENDER\_INFO\_TYPE\_CANVAS** = `2`

Canvas item rendering. This includes all 2D rendering.

[RenderInfoType](#enum-viewport-renderinfotype) **RENDER\_INFO\_TYPE\_MAX** = `3`

Represents the size of the [RenderInfoType](#enum-viewport-renderinfotype) enum.

* * *

enum **DebugDraw**: [🔗](#enum-viewport-debugdraw)

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_DISABLED** = `0`

Objects are displayed normally.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_UNSHADED** = `1`

Objects are displayed without light information.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_LIGHTING** = `2`

Objects are displayed without textures and only with lighting information.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_OVERDRAW** = `3`

Objects are displayed semi-transparent with additive blending so you can see where they are drawing over top of one another. A higher overdraw means you are wasting performance on drawing pixels that are being hidden behind others.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_WIREFRAME** = `4`

Objects are displayed as wireframe models.

**Note:** [RenderingServer.set\_debug\_generate\_wireframes()](class_renderingserver.md#class-renderingserver-method-set-debug-generate-wireframes) must be called before loading any meshes for wireframes to be visible when using the Compatibility renderer.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_NORMAL\_BUFFER** = `5`

Objects are displayed without lighting information and their textures replaced by normal mapping.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_VOXEL\_GI\_ALBEDO** = `6`

Objects are displayed with only the albedo value from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_VOXEL\_GI\_LIGHTING** = `7`

Objects are displayed with only the lighting value from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_VOXEL\_GI\_EMISSION** = `8`

Objects are displayed with only the emission color from [VoxelGI](class_voxelgi.md#class-voxelgi) s. Requires at least one visible [VoxelGI](class_voxelgi.md#class-voxelgi) node that has been baked to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SHADOW\_ATLAS** = `9`

Draws the shadow atlas that stores shadows from [OmniLight3D](class_omnilight3d.md#class-omnilight3d) s and [SpotLight3D](class_spotlight3d.md#class-spotlight3d) s in the upper left quadrant of the **Viewport**.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_DIRECTIONAL\_SHADOW\_ATLAS** = `10`

Draws the shadow atlas that stores shadows from [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s in the upper left quadrant of the **Viewport**.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SCENE\_LUMINANCE** = `11`

Draws the scene luminance buffer (if available) in the upper left quadrant of the **Viewport**.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SSAO** = `12`

Draws the screen-space ambient occlusion texture instead of the scene so that you can clearly see how it is affecting objects. In order for this display mode to work, you must have [Environment.ssao\_enabled](class_environment.md#class-environment-property-ssao-enabled) set in your [WorldEnvironment](class_worldenvironment.md#class-worldenvironment).

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SSIL** = `13`

Draws the screen-space indirect lighting texture instead of the scene so that you can clearly see how it is affecting objects. In order for this display mode to work, you must have [Environment.ssil\_enabled](class_environment.md#class-environment-property-ssil-enabled) set in your [WorldEnvironment](class_worldenvironment.md#class-worldenvironment).

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_PSSM\_SPLITS** = `14`

Colors each PSSM split for the [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) s in the scene a different color so you can see where the splits are. In order (from closest to furthest from the camera), they are colored red, green, blue, and yellow.

**Note:** When using this debug draw mode, custom shaders are ignored since all materials in the scene temporarily use a debug material. This means the result from custom shader functions (such as vertex displacement) won't be visible anymore when using this debug draw mode.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_DECAL\_ATLAS** = `15`

Draws the decal atlas used by [Decal](class_decal.md#class-decal) s and light projector textures in the upper left quadrant of the **Viewport**.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SDFGI** = `16`

Draws the cascades used to render signed distance field global illumination (SDFGI).

Does nothing if the current environment's [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled) is `false`.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_SDFGI\_PROBES** = `17`

Draws the probes used for signed distance field global illumination (SDFGI).

Does nothing if the current environment's [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled) is `false`.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_GI\_BUFFER** = `18`

Draws the buffer used for global illumination from [VoxelGI](class_voxelgi.md#class-voxelgi) or SDFGI. Requires [VoxelGI](class_voxelgi.md#class-voxelgi) (at least one visible baked VoxelGI node) or SDFGI ( [Environment.sdfgi\_enabled](class_environment.md#class-environment-property-sdfgi-enabled)) to be enabled to have a visible effect.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_DISABLE\_LOD** = `19`

Draws all of the objects at their highest polycount regardless of their distance from the camera. No low level of detail (LOD) is applied.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_CLUSTER\_OMNI\_LIGHTS** = `20`

Draws the cluster used by [OmniLight3D](class_omnilight3d.md#class-omnilight3d) nodes to optimize light rendering.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_CLUSTER\_SPOT\_LIGHTS** = `21`

Draws the cluster used by [SpotLight3D](class_spotlight3d.md#class-spotlight3d) nodes to optimize light rendering.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_CLUSTER\_DECALS** = `22`

Draws the cluster used by [Decal](class_decal.md#class-decal) nodes to optimize decal rendering.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_CLUSTER\_REFLECTION\_PROBES** = `23`

Draws the cluster used by [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) nodes to optimize reflection probes.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_OCCLUDERS** = `24`

Draws the buffer used for occlusion culling.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_MOTION\_VECTORS** = `25`

Draws vector lines over the viewport to indicate the movement of pixels between frames.

**Note:** Only supported when using the Forward+ rendering method.

[DebugDraw](#enum-viewport-debugdraw) **DEBUG\_DRAW\_INTERNAL\_BUFFER** = `26`

Draws the internal resolution buffer of the scene in linear colorspace before tonemapping or post-processing is applied.

**Note:** Only supported when using the Forward+ or Mobile rendering methods.

* * *

enum **DefaultCanvasItemTextureFilter**: [🔗](#enum-viewport-defaultcanvasitemtexturefilter)

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST** = `0`

The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR** = `1`

The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS** = `2`

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look smooth from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS** = `3`

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look pixelated from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_FILTER\_MAX** = `4`

Represents the size of the [DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) enum.

* * *

enum **DefaultCanvasItemTextureRepeat**: [🔗](#enum-viewport-defaultcanvasitemtexturerepeat)

[DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_REPEAT\_DISABLED** = `0`

Disables textures repeating. Instead, when reading UVs outside the 0-1 range, the value will be clamped to the edge of the texture, resulting in a stretched out look at the borders of the texture.

[DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_REPEAT\_ENABLED** = `1`

Enables the texture to repeat when UV coordinates are outside the 0-1 range. If using one of the linear filtering modes, this can result in artifacts at the edges of a texture when the sampler filters across the edges of the texture.

[DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_REPEAT\_MIRROR** = `2`

Flip the texture when repeating so that the edge lines up instead of abruptly changing.

[DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **DEFAULT\_CANVAS\_ITEM\_TEXTURE\_REPEAT\_MAX** = `3`

Represents the size of the [DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) enum.

* * *

enum **SDFOversize**: [🔗](#enum-viewport-sdfoversize)

[SDFOversize](#enum-viewport-sdfoversize) **SDF\_OVERSIZE\_100\_PERCENT** = `0`

The signed distance field only covers the viewport's own rectangle.

[SDFOversize](#enum-viewport-sdfoversize) **SDF\_OVERSIZE\_120\_PERCENT** = `1`

The signed distance field is expanded to cover 20% of the viewport's size around the borders.

[SDFOversize](#enum-viewport-sdfoversize) **SDF\_OVERSIZE\_150\_PERCENT** = `2`

The signed distance field is expanded to cover 50% of the viewport's size around the borders.

[SDFOversize](#enum-viewport-sdfoversize) **SDF\_OVERSIZE\_200\_PERCENT** = `3`

The signed distance field is expanded to cover 100% (double) of the viewport's size around the borders.

[SDFOversize](#enum-viewport-sdfoversize) **SDF\_OVERSIZE\_MAX** = `4`

Represents the size of the [SDFOversize](#enum-viewport-sdfoversize) enum.

* * *

enum **SDFScale**: [🔗](#enum-viewport-sdfscale)

[SDFScale](#enum-viewport-sdfscale) **SDF\_SCALE\_100\_PERCENT** = `0`

The signed distance field is rendered at full resolution.

[SDFScale](#enum-viewport-sdfscale) **SDF\_SCALE\_50\_PERCENT** = `1`

The signed distance field is rendered at half the resolution of this viewport.

[SDFScale](#enum-viewport-sdfscale) **SDF\_SCALE\_25\_PERCENT** = `2`

The signed distance field is rendered at a quarter the resolution of this viewport.

[SDFScale](#enum-viewport-sdfscale) **SDF\_SCALE\_MAX** = `3`

Represents the size of the [SDFScale](#enum-viewport-sdfscale) enum.

* * *

enum **VRSMode**: [🔗](#enum-viewport-vrsmode)

[VRSMode](#enum-viewport-vrsmode) **VRS\_DISABLED** = `0`

Variable Rate Shading is disabled.

[VRSMode](#enum-viewport-vrsmode) **VRS\_TEXTURE** = `1`

Variable Rate Shading uses a texture. Note, for stereoscopic use a texture atlas with a texture for each view.

[VRSMode](#enum-viewport-vrsmode) **VRS\_XR** = `2`

Variable Rate Shading's texture is supplied by the primary [XRInterface](class_xrinterface.md#class-xrinterface).

[VRSMode](#enum-viewport-vrsmode) **VRS\_MAX** = `3`

Represents the size of the [VRSMode](#enum-viewport-vrsmode) enum.

* * *

enum **VRSUpdateMode**: [🔗](#enum-viewport-vrsupdatemode)

[VRSUpdateMode](#enum-viewport-vrsupdatemode) **VRS\_UPDATE\_DISABLED** = `0`

The input texture for variable rate shading will not be processed.

[VRSUpdateMode](#enum-viewport-vrsupdatemode) **VRS\_UPDATE\_ONCE** = `1`

The input texture for variable rate shading will be processed once.

[VRSUpdateMode](#enum-viewport-vrsupdatemode) **VRS\_UPDATE\_ALWAYS** = `2`

The input texture for variable rate shading will be processed each frame.

[VRSUpdateMode](#enum-viewport-vrsupdatemode) **VRS\_UPDATE\_MAX** = `3`

Represents the size of the [VRSUpdateMode](#enum-viewport-vrsupdatemode) enum.

* * *

## Property Descriptions

[AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **anisotropic\_filtering\_level** = `2` [🔗](#class-viewport-property-anisotropic-filtering-level)

- void **set\_anisotropic\_filtering\_level**(value: [AnisotropicFiltering](#enum-viewport-anisotropicfiltering))

- [AnisotropicFiltering](#enum-viewport-anisotropicfiltering) **get\_anisotropic\_filtering\_level**()


Sets the maximum number of samples to take when using anisotropic filtering on textures (as a power of two). A higher sample count will result in sharper textures at oblique angles, but is more expensive to compute. A value of `0` forcibly disables anisotropic filtering, even on materials where it is enabled.

The anisotropic filtering level also affects decals and light projectors if they are configured to use anisotropic filtering. See [ProjectSettings.rendering/textures/decals/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-decals-filter) and [ProjectSettings.rendering/textures/light\_projectors/filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-light-projectors-filter).

**Note:** In 3D, for this setting to have an effect, set [BaseMaterial3D.texture\_filter](class_basematerial3d.md#class-basematerial3d-property-texture-filter) to [BaseMaterial3D.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-linear-with-mipmaps-anisotropic) or [BaseMaterial3D.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_basematerial3d.md#class-basematerial3d-constant-texture-filter-nearest-with-mipmaps-anisotropic) on materials.

**Note:** In 2D, for this setting to have an effect, set [CanvasItem.texture\_filter](class_canvasitem.md#class-canvasitem-property-texture-filter) to [CanvasItem.TEXTURE\_FILTER\_LINEAR\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-linear-with-mipmaps-anisotropic) or [CanvasItem.TEXTURE\_FILTER\_NEAREST\_WITH\_MIPMAPS\_ANISOTROPIC](class_canvasitem.md#class-canvasitem-constant-texture-filter-nearest-with-mipmaps-anisotropic) on the [CanvasItem](class_canvasitem.md#class-canvasitem) node displaying the texture (or in [CanvasTexture](class_canvastexture.md#class-canvastexture)). However, anisotropic filtering is rarely useful in 2D, so only enable it for textures in 2D if it makes a meaningful visual difference.

* * *

[bool](class_bool.md#class-bool) **audio\_listener\_enable\_2d** = `false` [🔗](#class-viewport-property-audio-listener-enable-2d)

- void **set\_as\_audio\_listener\_2d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_audio\_listener\_2d**()


If `true`, the viewport will process 2D audio streams.

* * *

[bool](class_bool.md#class-bool) **audio\_listener\_enable\_3d** = `false` [🔗](#class-viewport-property-audio-listener-enable-3d)

- void **set\_as\_audio\_listener\_3d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_audio\_listener\_3d**()


If `true`, the viewport will process 3D audio streams.

* * *

[int](class_int.md#class-int) **canvas\_cull\_mask** = `4294967295` [🔗](#class-viewport-property-canvas-cull-mask)

- void **set\_canvas\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_canvas\_cull\_mask**()


The rendering layers in which this **Viewport** renders [CanvasItem](class_canvasitem.md#class-canvasitem) nodes.

* * *

[DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **canvas\_item\_default\_texture\_filter** = `1` [🔗](#class-viewport-property-canvas-item-default-texture-filter)

- void **set\_default\_canvas\_item\_texture\_filter**(value: [DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter))

- [DefaultCanvasItemTextureFilter](#enum-viewport-defaultcanvasitemtexturefilter) **get\_default\_canvas\_item\_texture\_filter**()


Sets the default filter mode used by [CanvasItem](class_canvasitem.md#class-canvasitem) s in this Viewport.

* * *

[DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **canvas\_item\_default\_texture\_repeat** = `0` [🔗](#class-viewport-property-canvas-item-default-texture-repeat)

- void **set\_default\_canvas\_item\_texture\_repeat**(value: [DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat))

- [DefaultCanvasItemTextureRepeat](#enum-viewport-defaultcanvasitemtexturerepeat) **get\_default\_canvas\_item\_texture\_repeat**()


Sets the default repeat mode used by [CanvasItem](class_canvasitem.md#class-canvasitem) s in this Viewport.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **canvas\_transform** [🔗](#class-viewport-property-canvas-transform)

- void **set\_canvas\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_canvas\_transform**()


The canvas transform of the viewport, useful for changing the on-screen positions of all child [CanvasItem](class_canvasitem.md#class-canvasitem) s. This is relative to the global canvas transform of the viewport.

* * *

[DebugDraw](#enum-viewport-debugdraw) **debug\_draw** = `0` [🔗](#class-viewport-property-debug-draw)

- void **set\_debug\_draw**(value: [DebugDraw](#enum-viewport-debugdraw))

- [DebugDraw](#enum-viewport-debugdraw) **get\_debug\_draw**()


The overlay mode for test rendered geometry in debug purposes.

* * *

[bool](class_bool.md#class-bool) **disable\_3d** = `false` [🔗](#class-viewport-property-disable-3d)

- void **set\_disable\_3d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_3d\_disabled**()


Disable 3D rendering (but keep 2D rendering).

* * *

[float](class_float.md#class-float) **fsr\_sharpness** = `0.2` [🔗](#class-viewport-property-fsr-sharpness)

- void **set\_fsr\_sharpness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fsr\_sharpness**()


Determines how sharp the upscaled image will be when using the FSR upscaling mode. Sharpness halves with every whole number. Values go from 0.0 (sharpest) to 2.0. Values above 2.0 won't make a visible difference.

To control this property on the root viewport, set the [ProjectSettings.rendering/scaling\_3d/fsr\_sharpness](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-fsr-sharpness) project setting.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **global\_canvas\_transform** [🔗](#class-viewport-property-global-canvas-transform)

- void **set\_global\_canvas\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_global\_canvas\_transform**()


The global canvas transform of the viewport. The canvas transform is relative to this.

* * *

[bool](class_bool.md#class-bool) **gui\_disable\_input** = `false` [🔗](#class-viewport-property-gui-disable-input)

- void **set\_disable\_input**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_input\_disabled**()


If `true`, the viewport will not receive input events.

* * *

[bool](class_bool.md#class-bool) **gui\_embed\_subwindows** = `false` [🔗](#class-viewport-property-gui-embed-subwindows)

- void **set\_embedding\_subwindows**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_embedding\_subwindows**()


If `true`, sub-windows (popups and dialogs) will be embedded inside application window as control-like nodes. If `false`, they will appear as separate windows handled by the operating system.

* * *

[bool](class_bool.md#class-bool) **gui\_snap\_controls\_to\_pixels** = `true` [🔗](#class-viewport-property-gui-snap-controls-to-pixels)

- void **set\_snap\_controls\_to\_pixels**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_snap\_controls\_to\_pixels\_enabled**()


If `true`, the GUI controls on the viewport will lay pixel perfectly.

* * *

[bool](class_bool.md#class-bool) **handle\_input\_locally** = `true` [🔗](#class-viewport-property-handle-input-locally)

- void **set\_handle\_input\_locally**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_handling\_input\_locally**()


If `true`, this viewport will mark incoming input events as handled by itself. If `false`, this is instead done by the first parent viewport that is set to handle input locally.

A [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) will automatically set this property to `false` for the **Viewport** contained inside of it.

See also [set\_input\_as\_handled()](#class-viewport-method-set-input-as-handled) and [is\_input\_handled()](#class-viewport-method-is-input-handled).

* * *

[float](class_float.md#class-float) **mesh\_lod\_threshold** = `1.0` [🔗](#class-viewport-property-mesh-lod-threshold)

- void **set\_mesh\_lod\_threshold**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mesh\_lod\_threshold**()


The automatic LOD bias to use for meshes rendered within the **Viewport** (this is analogous to [ReflectionProbe.mesh\_lod\_threshold](class_reflectionprobe.md#class-reflectionprobe-property-mesh-lod-threshold)). Higher values will use less detailed versions of meshes that have LOD variations generated. If set to `0.0`, automatic LOD is disabled. Increase [mesh\_lod\_threshold](#class-viewport-property-mesh-lod-threshold) to improve performance at the cost of geometry detail.

To control this property on the root viewport, set the [ProjectSettings.rendering/mesh\_lod/lod\_change/threshold\_pixels](class_projectsettings.md#class-projectsettings-property-rendering-mesh-lod-lod-change-threshold-pixels) project setting.

**Note:** [mesh\_lod\_threshold](#class-viewport-property-mesh-lod-threshold) does not affect [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) visibility ranges (also known as "manual" LOD or hierarchical LOD).

* * *

[MSAA](#enum-viewport-msaa) **msaa\_2d** = `0` [🔗](#class-viewport-property-msaa-2d)

- void **set\_msaa\_2d**(value: [MSAA](#enum-viewport-msaa))

- [MSAA](#enum-viewport-msaa) **get\_msaa\_2d**()


The multisample antialiasing mode for 2D/Canvas rendering. A higher number results in smoother edges at the cost of significantly worse performance. A value of [MSAA\_2X](#class-viewport-constant-msaa-2x) or [MSAA\_4X](#class-viewport-constant-msaa-4x) is best unless targeting very high-end systems. This has no effect on shader-induced aliasing or texture aliasing.

See also [ProjectSettings.rendering/anti\_aliasing/quality/msaa\_2d](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-2d) and [RenderingServer.viewport\_set\_msaa\_2d()](class_renderingserver.md#class-renderingserver-method-viewport-set-msaa-2d).

* * *

[MSAA](#enum-viewport-msaa) **msaa\_3d** = `0` [🔗](#class-viewport-property-msaa-3d)

- void **set\_msaa\_3d**(value: [MSAA](#enum-viewport-msaa))

- [MSAA](#enum-viewport-msaa) **get\_msaa\_3d**()


The multisample antialiasing mode for 3D rendering. A higher number results in smoother edges at the cost of significantly worse performance. A value of [MSAA\_2X](#class-viewport-constant-msaa-2x) or [MSAA\_4X](#class-viewport-constant-msaa-4x) is best unless targeting very high-end systems. See also bilinear scaling 3D [scaling\_3d\_mode](#class-viewport-property-scaling-3d-mode) for supersampling, which provides higher quality but is much more expensive. This has no effect on shader-induced aliasing or texture aliasing.

See also [ProjectSettings.rendering/anti\_aliasing/quality/msaa\_3d](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) and [RenderingServer.viewport\_set\_msaa\_3d()](class_renderingserver.md#class-renderingserver-method-viewport-set-msaa-3d).

* * *

[bool](class_bool.md#class-bool) **oversampling** = `true` [🔗](#class-viewport-property-oversampling)

- void **set\_use\_oversampling**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_oversampling**()


If `true` and one of the following conditions are true: [SubViewport.size\_2d\_override\_stretch](class_subviewport.md#class-subviewport-property-size-2d-override-stretch) and [SubViewport.size\_2d\_override](class_subviewport.md#class-subviewport-property-size-2d-override) are set, [Window.content\_scale\_factor](class_window.md#class-window-property-content-scale-factor) is set and scaling is enabled, [oversampling\_override](#class-viewport-property-oversampling-override) is set, font and [DPITexture](class_dpitexture.md#class-dpitexture) oversampling are enabled.

* * *

[float](class_float.md#class-float) **oversampling\_override** = `0.0` [🔗](#class-viewport-property-oversampling-override)

- void **set\_oversampling\_override**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_oversampling\_override**()


If greater than zero, this value is used as the font oversampling factor, otherwise oversampling is equal to viewport scale.

* * *

[bool](class_bool.md#class-bool) **own\_world\_3d** = `false` [🔗](#class-viewport-property-own-world-3d)

- void **set\_use\_own\_world\_3d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_own\_world\_3d**()


If `true`, the viewport will use a unique copy of the [World3D](class_world3d.md#class-world3d) defined in [world\_3d](#class-viewport-property-world-3d).

* * *

[bool](class_bool.md#class-bool) **physics\_object\_picking** = `false` [🔗](#class-viewport-property-physics-object-picking)

- void **set\_physics\_object\_picking**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_physics\_object\_picking**()


If `true`, the objects rendered by viewport become subjects of mouse picking process.

**Note:** The number of simultaneously pickable objects is limited to 64 and they are selected in a non-deterministic order, which can be different in each picking process.

* * *

[bool](class_bool.md#class-bool) **physics\_object\_picking\_first\_only** = `false` [🔗](#class-viewport-property-physics-object-picking-first-only)

- void **set\_physics\_object\_picking\_first\_only**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_physics\_object\_picking\_first\_only**()


If `true`, the input\_event signal will only be sent to one physics object in the mouse picking process. If you want to get the top object only, you must also enable [physics\_object\_picking\_sort](#class-viewport-property-physics-object-picking-sort).

If `false`, an input\_event signal will be sent to all physics objects in the mouse picking process.

This applies to 2D CanvasItem object picking only.

* * *

[bool](class_bool.md#class-bool) **physics\_object\_picking\_sort** = `false` [🔗](#class-viewport-property-physics-object-picking-sort)

- void **set\_physics\_object\_picking\_sort**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_physics\_object\_picking\_sort**()


If `true`, objects receive mouse picking events sorted primarily by their [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) and secondarily by their position in the scene tree. If `false`, the order is undetermined.

**Note:** This setting is disabled by default because of its potential expensive computational cost.

**Note:** Sorting happens after selecting the pickable objects. Because of the limitation of 64 simultaneously pickable objects, it is not guaranteed that the object with the highest [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) receives the picking event.

* * *

[bool](class_bool.md#class-bool) **positional\_shadow\_atlas\_16\_bits** = `true` [🔗](#class-viewport-property-positional-shadow-atlas-16-bits)

- void **set\_positional\_shadow\_atlas\_16\_bits**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_positional\_shadow\_atlas\_16\_bits**()


Use 16 bits for the omni/spot shadow depth map. Enabling this results in shadows having less precision and may result in shadow acne, but can lead to performance improvements on some devices.

* * *

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **positional\_shadow\_atlas\_quad\_0** = `2` [🔗](#class-viewport-property-positional-shadow-atlas-quad-0)

- void **set\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv))

- [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **get\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int)) const


The subdivision amount of the first quadrant on the shadow atlas.

* * *

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **positional\_shadow\_atlas\_quad\_1** = `2` [🔗](#class-viewport-property-positional-shadow-atlas-quad-1)

- void **set\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv))

- [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **get\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int)) const


The subdivision amount of the second quadrant on the shadow atlas.

* * *

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **positional\_shadow\_atlas\_quad\_2** = `3` [🔗](#class-viewport-property-positional-shadow-atlas-quad-2)

- void **set\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv))

- [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **get\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int)) const


The subdivision amount of the third quadrant on the shadow atlas.

* * *

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **positional\_shadow\_atlas\_quad\_3** = `4` [🔗](#class-viewport-property-positional-shadow-atlas-quad-3)

- void **set\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv))

- [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **get\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int)) const


The subdivision amount of the fourth quadrant on the shadow atlas.

* * *

[int](class_int.md#class-int) **positional\_shadow\_atlas\_size** = `2048` [🔗](#class-viewport-property-positional-shadow-atlas-size)

- void **set\_positional\_shadow\_atlas\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_positional\_shadow\_atlas\_size**()


The shadow atlas' resolution (used for omni and spot lights). The value is rounded up to the nearest power of 2.

**Note:** If this is set to `0`, no positional shadows will be visible at all. This can improve performance significantly on low-end systems by reducing both the CPU and GPU load (as fewer draw calls are needed to draw the scene without shadows).

* * *

[Scaling3DMode](#enum-viewport-scaling3dmode) **scaling\_3d\_mode** = `0` [🔗](#class-viewport-property-scaling-3d-mode)

- void **set\_scaling\_3d\_mode**(value: [Scaling3DMode](#enum-viewport-scaling3dmode))

- [Scaling3DMode](#enum-viewport-scaling3dmode) **get\_scaling\_3d\_mode**()


Sets scaling 3D mode. Bilinear scaling renders at different resolution to either undersample or supersample the viewport. FidelityFX Super Resolution 1.0, abbreviated to FSR, is an upscaling technology that produces high quality images at fast framerates by using a spatially aware upscaling algorithm. FSR is slightly more expensive than bilinear, but it produces significantly higher image quality. FSR should be used where possible.

To control this property on the root viewport, set the [ProjectSettings.rendering/scaling\_3d/mode](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-mode) project setting.

* * *

[float](class_float.md#class-float) **scaling\_3d\_scale** = `1.0` [🔗](#class-viewport-property-scaling-3d-scale)

- void **set\_scaling\_3d\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_scaling\_3d\_scale**()


Scales the 3D render buffer based on the viewport size uses an image filter specified in [ProjectSettings.rendering/scaling\_3d/mode](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-mode) to scale the output image to the full viewport size. Values lower than `1.0` can be used to speed up 3D rendering at the cost of quality (undersampling). Values greater than `1.0` are only valid for bilinear mode and can be used to improve 3D rendering quality at a high performance cost (supersampling). See also [ProjectSettings.rendering/anti\_aliasing/quality/msaa\_3d](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-msaa-3d) for multi-sample antialiasing, which is significantly cheaper but only smooths the edges of polygons.

When using FSR upscaling, AMD recommends exposing the following values as preset options to users "Ultra Quality: 0.77", "Quality: 0.67", "Balanced: 0.59", "Performance: 0.5" instead of exposing the entire scale.

To control this property on the root viewport, set the [ProjectSettings.rendering/scaling\_3d/scale](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-scale) project setting.

* * *

[ScreenSpaceAA](#enum-viewport-screenspaceaa) **screen\_space\_aa** = `0` [🔗](#class-viewport-property-screen-space-aa)

- void **set\_screen\_space\_aa**(value: [ScreenSpaceAA](#enum-viewport-screenspaceaa))

- [ScreenSpaceAA](#enum-viewport-screenspaceaa) **get\_screen\_space\_aa**()


Sets the screen-space antialiasing method used. Screen-space antialiasing works by selectively blurring edges in a post-process shader. It differs from MSAA which takes multiple coverage samples while rendering objects. Screen-space AA methods are typically faster than MSAA and will smooth out specular aliasing, but tend to make scenes appear blurry.

See also [ProjectSettings.rendering/anti\_aliasing/quality/screen\_space\_aa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-screen-space-aa) and [RenderingServer.viewport\_set\_screen\_space\_aa()](class_renderingserver.md#class-renderingserver-method-viewport-set-screen-space-aa).

* * *

[SDFOversize](#enum-viewport-sdfoversize) **sdf\_oversize** = `1` [🔗](#class-viewport-property-sdf-oversize)

- void **set\_sdf\_oversize**(value: [SDFOversize](#enum-viewport-sdfoversize))

- [SDFOversize](#enum-viewport-sdfoversize) **get\_sdf\_oversize**()


Controls how much of the original viewport's size should be covered by the 2D signed distance field. This SDF can be sampled in [CanvasItem](class_canvasitem.md#class-canvasitem) shaders and is also used for [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d) collision. Higher values allow portions of occluders located outside the viewport to still be taken into account in the generated signed distance field, at the cost of performance. If you notice particles falling through [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d) s as the occluders leave the viewport, increase this setting.

The percentage is added on each axis and on both sides. For example, with the default [SDF\_OVERSIZE\_120\_PERCENT](#class-viewport-constant-sdf-oversize-120-percent), the signed distance field will cover 20% of the viewport's size outside the viewport on each side (top, right, bottom, left).

* * *

[SDFScale](#enum-viewport-sdfscale) **sdf\_scale** = `1` [🔗](#class-viewport-property-sdf-scale)

- void **set\_sdf\_scale**(value: [SDFScale](#enum-viewport-sdfscale))

- [SDFScale](#enum-viewport-sdfscale) **get\_sdf\_scale**()


The resolution scale to use for the 2D signed distance field. Higher values lead to a more precise and more stable signed distance field as the camera moves, at the cost of performance.

* * *

[bool](class_bool.md#class-bool) **snap\_2d\_transforms\_to\_pixel** = `false` [🔗](#class-viewport-property-snap-2d-transforms-to-pixel)

- void **set\_snap\_2d\_transforms\_to\_pixel**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_snap\_2d\_transforms\_to\_pixel\_enabled**()


If `true`, [CanvasItem](class_canvasitem.md#class-canvasitem) nodes will internally snap to full pixels. Their position can still be sub-pixel, but the decimals will not have effect. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled.

* * *

[bool](class_bool.md#class-bool) **snap\_2d\_vertices\_to\_pixel** = `false` [🔗](#class-viewport-property-snap-2d-vertices-to-pixel)

- void **set\_snap\_2d\_vertices\_to\_pixel**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_snap\_2d\_vertices\_to\_pixel\_enabled**()


If `true`, vertices of [CanvasItem](class_canvasitem.md#class-canvasitem) nodes will snap to full pixels. Only affects the final vertex positions, not the transforms. This can lead to a crisper appearance at the cost of less smooth movement, especially when [Camera2D](class_camera2d.md#class-camera2d) smoothing is enabled.

* * *

[float](class_float.md#class-float) **texture\_mipmap\_bias** = `0.0` [🔗](#class-viewport-property-texture-mipmap-bias)

- void **set\_texture\_mipmap\_bias**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_texture\_mipmap\_bias**()


Affects the final texture sharpness by reading from a lower or higher mipmap (also called "texture LOD bias"). Negative values make mipmapped textures sharper but grainier when viewed at a distance, while positive values make mipmapped textures blurrier (even when up close).

Enabling temporal antialiasing ( [use\_taa](#class-viewport-property-use-taa)) will automatically apply a `-0.5` offset to this value, while enabling FXAA ( [screen\_space\_aa](#class-viewport-property-screen-space-aa)) will automatically apply a `-0.25` offset to this value. If both TAA and FXAA are enabled at the same time, an offset of `-0.75` is applied to this value.

**Note:** If [scaling\_3d\_scale](#class-viewport-property-scaling-3d-scale) is lower than `1.0` (exclusive), [texture\_mipmap\_bias](#class-viewport-property-texture-mipmap-bias) is used to adjust the automatic mipmap bias which is calculated internally based on the scale factor. The formula for this is `log2(scaling_3d_scale) + mipmap_bias`.

To control this property on the root viewport, set the [ProjectSettings.rendering/textures/default\_filters/texture\_mipmap\_bias](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-texture-mipmap-bias) project setting.

* * *

[bool](class_bool.md#class-bool) **transparent\_bg** = `false` [🔗](#class-viewport-property-transparent-bg)

- void **set\_transparent\_background**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **has\_transparent\_background**()


If `true`, the viewport should render its background as transparent.

**Note:** Due to technical limitations, certain rendering features are disabled when a viewport has a transparent background. This currently applies to screen-space reflections, subsurface scattering, and depth of field.

* * *

[bool](class_bool.md#class-bool) **use\_debanding** = `false` [🔗](#class-viewport-property-use-debanding)

- void **set\_use\_debanding**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_debanding**()


If `true`, uses a fast post-processing filter to make banding significantly less visible. If [use\_hdr\_2d](#class-viewport-property-use-hdr-2d) is `false`, 2D rendering is _not_ affected by debanding unless the [Environment.background\_mode](class_environment.md#class-environment-property-background-mode) is [Environment.BG\_CANVAS](class_environment.md#class-environment-constant-bg-canvas). If [use\_hdr\_2d](#class-viewport-property-use-hdr-2d) is `true`, debanding will only be applied if this is the root **Viewport** and will affect all 2D and 3D rendering, including canvas items.

In some cases, debanding may introduce a slightly noticeable dithering pattern. It's recommended to enable debanding only when actually needed since the dithering pattern will make lossless-compressed screenshots larger.

See also [ProjectSettings.rendering/anti\_aliasing/quality/use\_debanding](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-use-debanding) and [RenderingServer.viewport\_set\_use\_debanding()](class_renderingserver.md#class-renderingserver-method-viewport-set-use-debanding).

* * *

[bool](class_bool.md#class-bool) **use\_hdr\_2d** = `false` [🔗](#class-viewport-property-use-hdr-2d)

- void **set\_use\_hdr\_2d**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_hdr\_2d**()


If `true`, 2D rendering will use a high dynamic range (HDR) format framebuffer matching the bit depth of the 3D framebuffer. When using the Forward+ or Compatibility renderer, this will be an `RGBA16` framebuffer. When using the Mobile renderer, it will be an `RGB10_A2` framebuffer.

Additionally, 2D rendering will take place in linear color space and will be converted to sRGB space immediately before blitting to the screen (if the Viewport is attached to the screen).

Practically speaking, this means that the end result of the Viewport will not be clamped to the `0-1` range and can be used in 3D rendering without color space adjustments. This allows 2D rendering to take advantage of effects requiring high dynamic range (e.g. 2D glow) as well as substantially improves the appearance of effects requiring highly detailed gradients.

* * *

[bool](class_bool.md#class-bool) **use\_occlusion\_culling** = `false` [🔗](#class-viewport-property-use-occlusion-culling)

- void **set\_use\_occlusion\_culling**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_occlusion\_culling**()


If `true`, [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d) nodes will be usable for occlusion culling in 3D for this viewport. For the root viewport, [ProjectSettings.rendering/occlusion\_culling/use\_occlusion\_culling](class_projectsettings.md#class-projectsettings-property-rendering-occlusion-culling-use-occlusion-culling) must be set to `true` instead.

**Note:** Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it, and think whether your scene can actually benefit from occlusion culling. Large, open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges ( [GeometryInstance3D.visibility\_range\_begin](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-begin) and [GeometryInstance3D.visibility\_range\_end](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-end)) compared to occlusion culling.

**Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with `module_raycast_enabled=yes`.

* * *

[bool](class_bool.md#class-bool) **use\_taa** = `false` [🔗](#class-viewport-property-use-taa)

- void **set\_use\_taa**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_taa**()


Enables temporal antialiasing for this viewport. TAA works by jittering the camera and accumulating the images of the last rendered frames, motion vector rendering is used to account for camera and object motion.

**Note:** The implementation is not complete yet, some visual instances such as particles and skinned meshes may show artifacts.

See also [ProjectSettings.rendering/anti\_aliasing/quality/use\_taa](class_projectsettings.md#class-projectsettings-property-rendering-anti-aliasing-quality-use-taa) and [RenderingServer.viewport\_set\_use\_taa()](class_renderingserver.md#class-renderingserver-method-viewport-set-use-taa).

* * *

[bool](class_bool.md#class-bool) **use\_xr** = `false` [🔗](#class-viewport-property-use-xr)

- void **set\_use\_xr**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_xr**()


If `true`, the viewport will use the primary XR interface to render XR output. When applicable this can result in a stereoscopic image and the resulting render being output to a headset.

* * *

[VRSMode](#enum-viewport-vrsmode) **vrs\_mode** = `0` [🔗](#class-viewport-property-vrs-mode)

- void **set\_vrs\_mode**(value: [VRSMode](#enum-viewport-vrsmode))

- [VRSMode](#enum-viewport-vrsmode) **get\_vrs\_mode**()


The Variable Rate Shading (VRS) mode that is used for this viewport. Note, if hardware does not support VRS this property is ignored.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **vrs\_texture** [🔗](#class-viewport-property-vrs-texture)

- void **set\_vrs\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_vrs\_texture**()


Texture to use when [vrs\_mode](#class-viewport-property-vrs-mode) is set to [VRS\_TEXTURE](#class-viewport-constant-vrs-texture).

The texture _must_ use a lossless compression format so that colors can be matched precisely. The following VRS densities are mapped to various colors, with brighter colors representing a lower level of shading precision:

```
- 1×1 = rgb(0, 0, 0)     - #000000
- 1×2 = rgb(0, 85, 0)    - #005500
- 2×1 = rgb(85, 0, 0)    - #550000
- 2×2 = rgb(85, 85, 0)   - #555500
- 2×4 = rgb(85, 170, 0)  - #55aa00
- 4×2 = rgb(170, 85, 0)  - #aa5500
- 4×4 = rgb(170, 170, 0) - #aaaa00
- 4×8 = rgb(170, 255, 0) - #aaff00 - Not supported on most hardware
- 8×4 = rgb(255, 170, 0) - #ffaa00 - Not supported on most hardware
- 8×8 = rgb(255, 255, 0) - #ffff00 - Not supported on most hardware

```

* * *

[VRSUpdateMode](#enum-viewport-vrsupdatemode) **vrs\_update\_mode** = `1` [🔗](#class-viewport-property-vrs-update-mode)

- void **set\_vrs\_update\_mode**(value: [VRSUpdateMode](#enum-viewport-vrsupdatemode))

- [VRSUpdateMode](#enum-viewport-vrsupdatemode) **get\_vrs\_update\_mode**()


Sets the update mode for Variable Rate Shading (VRS) for the viewport. VRS requires the input texture to be converted to the format usable by the VRS method supported by the hardware. The update mode defines how often this happens. If the GPU does not support VRS, or VRS is not enabled, this property is ignored.

* * *

[World2D](class_world2d.md#class-world2d) **world\_2d** [🔗](#class-viewport-property-world-2d)

- void **set\_world\_2d**(value: [World2D](class_world2d.md#class-world2d))

- [World2D](class_world2d.md#class-world2d) **get\_world\_2d**()


The custom [World2D](class_world2d.md#class-world2d) which can be used as 2D environment source.

* * *

[World3D](class_world3d.md#class-world3d) **world\_3d** [🔗](#class-viewport-property-world-3d)

- void **set\_world\_3d**(value: [World3D](class_world3d.md#class-world3d))

- [World3D](class_world3d.md#class-world3d) **get\_world\_3d**()


The custom [World3D](class_world3d.md#class-world3d) which can be used as 3D environment source.

* * *

## Method Descriptions

[World2D](class_world2d.md#class-world2d) **find\_world\_2d**() const [🔗](#class-viewport-method-find-world-2d)

Returns the first valid [World2D](class_world2d.md#class-world2d) for this viewport, searching the [world\_2d](#class-viewport-property-world-2d) property of itself and any Viewport ancestor.

* * *

[World3D](class_world3d.md#class-world3d) **find\_world\_3d**() const [🔗](#class-viewport-method-find-world-3d)

Returns the first valid [World3D](class_world3d.md#class-world3d) for this viewport, searching the [world\_3d](#class-viewport-property-world-3d) property of itself and any Viewport ancestor.

* * *

[AudioListener2D](class_audiolistener2d.md#class-audiolistener2d) **get\_audio\_listener\_2d**() const [🔗](#class-viewport-method-get-audio-listener-2d)

Returns the currently active 2D audio listener. Returns `null` if there are no active 2D audio listeners, in which case the active 2D camera will be treated as listener.

* * *

[AudioListener3D](class_audiolistener3d.md#class-audiolistener3d) **get\_audio\_listener\_3d**() const [🔗](#class-viewport-method-get-audio-listener-3d)

Returns the currently active 3D audio listener. Returns `null` if there are no active 3D audio listeners, in which case the active 3D camera will be treated as listener.

* * *

[Camera2D](class_camera2d.md#class-camera2d) **get\_camera\_2d**() const [🔗](#class-viewport-method-get-camera-2d)

Returns the currently active 2D camera. Returns `null` if there are no active cameras.

* * *

[Camera3D](class_camera3d.md#class-camera3d) **get\_camera\_3d**() const [🔗](#class-viewport-method-get-camera-3d)

Returns the currently active 3D camera.

* * *

[bool](class_bool.md#class-bool) **get\_canvas\_cull\_mask\_bit**(layer: [int](class_int.md#class-int)) const [🔗](#class-viewport-method-get-canvas-cull-mask-bit)

Returns an individual bit on the rendering layer mask.

* * *

[Array](class_array.md#class-array)\[ [Window](class_window.md#class-window)\] **get\_embedded\_subwindows**() const [🔗](#class-viewport-method-get-embedded-subwindows)

Returns a list of the visible embedded [Window](class_window.md#class-window) s inside the viewport.

**Note:** [Window](class_window.md#class-window) s inside other viewports will not be listed.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_final\_transform**() const [🔗](#class-viewport-method-get-final-transform)

Returns the transform from the viewport's coordinate system to the embedder's coordinate system.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_mouse\_position**() const [🔗](#class-viewport-method-get-mouse-position)

Returns the mouse's position in this **Viewport** using the coordinate system of this **Viewport**.

* * *

[float](class_float.md#class-float) **get\_oversampling**() const [🔗](#class-viewport-method-get-oversampling)

Returns viewport oversampling factor.

* * *

[PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv) **get\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int)) const [🔗](#class-viewport-method-get-positional-shadow-atlas-quadrant-subdiv)

Returns the positional shadow atlas quadrant subdivision of the specified quadrant.

* * *

[int](class_int.md#class-int) **get\_render\_info**(type: [RenderInfoType](#enum-viewport-renderinfotype), info: [RenderInfo](#enum-viewport-renderinfo)) [🔗](#class-viewport-method-get-render-info)

Returns rendering statistics of the given type.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_screen\_transform**() const [🔗](#class-viewport-method-get-screen-transform)

Returns the transform from the Viewport's coordinates to the screen coordinates of the containing window manager window.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_stretch\_transform**() const [🔗](#class-viewport-method-get-stretch-transform)

Returns the automatically computed 2D stretch transform, taking the **Viewport**'s stretch settings into account. The final value is multiplied by [Window.content\_scale\_factor](class_window.md#class-window-property-content-scale-factor), but only for the root viewport. If this method is called on a [SubViewport](class_subviewport.md#class-subviewport) (e.g., in a scene tree with [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) and [SubViewport](class_subviewport.md#class-subviewport)), the scale factor of the root window will not be applied. Using [Transform2D.get\_scale()](class_transform2d.md#class-transform2d-method-get-scale) on the returned value, this can be used to compensate for scaling when zooming a [Camera2D](class_camera2d.md#class-camera2d) node, or to scale down a [TextureRect](class_texturerect.md#class-texturerect) to be pixel-perfect regardless of the automatically computed scale factor.

**Note:** Due to how pixel scaling works, the returned transform's X and Y scale may differ slightly, even when [Window.content\_scale\_aspect](class_window.md#class-window-property-content-scale-aspect) is set to a mode that preserves the pixels' aspect ratio. If [Window.content\_scale\_aspect](class_window.md#class-window-property-content-scale-aspect) is [Window.CONTENT\_SCALE\_ASPECT\_IGNORE](class_window.md#class-window-constant-content-scale-aspect-ignore), the X and Y scale may differ _significantly_.

* * *

[ViewportTexture](class_viewporttexture.md#class-viewporttexture) **get\_texture**() const [🔗](#class-viewport-method-get-texture)

Returns the viewport's texture.

**Note:** When trying to store the current texture (e.g. in a file), it might be completely black or outdated if used too early, especially when used in e.g. [Node.\_ready()](class_node.md#class-node-private-method-ready). To make sure the texture you get is correct, you can await [RenderingServer.frame\_post\_draw](class_renderingserver.md#class-renderingserver-signal-frame-post-draw) signal.

GDScriptC#

```
func _ready():
    await RenderingServer.frame_post_draw
    $Viewport.get_texture().get_image().save_png("user://Screenshot.png")

```

```
public async override void _Ready()
{
    await ToSignal(RenderingServer.Singleton, RenderingServer.SignalName.FramePostDraw);
    var viewport = GetNode<Viewport>("Viewport");
    viewport.GetTexture().GetImage().SavePng("user://Screenshot.png");
}

```

**Note:** When [use\_hdr\_2d](#class-viewport-property-use-hdr-2d) is `true` the returned texture will be an HDR image encoded in linear space.

* * *

[RID](class_rid.md#class-rid) **get\_viewport\_rid**() const [🔗](#class-viewport-method-get-viewport-rid)

Returns the viewport's RID from the [RenderingServer](class_renderingserver.md#class-renderingserver).

* * *

[Rect2](class_rect2.md#class-rect2) **get\_visible\_rect**() const [🔗](#class-viewport-method-get-visible-rect)

Returns the visible rectangle in global screen coordinates.

* * *

void **gui\_cancel\_drag**() [🔗](#class-viewport-method-gui-cancel-drag)

Cancels the drag operation that was previously started through [Control.\_get\_drag\_data()](class_control.md#class-control-private-method-get-drag-data) or forced with [Control.force\_drag()](class_control.md#class-control-method-force-drag).

* * *

[Variant](class_variant.md#class-variant) **gui\_get\_drag\_data**() const [🔗](#class-viewport-method-gui-get-drag-data)

Returns the drag data from the GUI, that was previously returned by [Control.\_get\_drag\_data()](class_control.md#class-control-private-method-get-drag-data).

* * *

[String](class_string.md#class-string) **gui\_get\_drag\_description**() const [🔗](#class-viewport-method-gui-get-drag-description)

Returns the drag data human-readable description.

* * *

[Control](class_control.md#class-control) **gui\_get\_focus\_owner**() const [🔗](#class-viewport-method-gui-get-focus-owner)

Returns the currently focused [Control](class_control.md#class-control) within this viewport. If no [Control](class_control.md#class-control) is focused, returns `null`.

* * *

[Control](class_control.md#class-control) **gui\_get\_hovered\_control**() const [🔗](#class-viewport-method-gui-get-hovered-control)

Returns the [Control](class_control.md#class-control) that the mouse is currently hovering over in this viewport. If no [Control](class_control.md#class-control) has the cursor, returns `null`.

Typically the leaf [Control](class_control.md#class-control) node or deepest level of the subtree which claims hover. This is very useful when used together with [Node.is\_ancestor\_of()](class_node.md#class-node-method-is-ancestor-of) to find if the mouse is within a control tree.

* * *

[bool](class_bool.md#class-bool) **gui\_is\_drag\_successful**() const [🔗](#class-viewport-method-gui-is-drag-successful)

Returns `true` if the drag operation is successful.

* * *

[bool](class_bool.md#class-bool) **gui\_is\_dragging**() const [🔗](#class-viewport-method-gui-is-dragging)

Returns `true` if a drag operation is currently ongoing and where the drop action could happen in this viewport.

Alternative to [Node.NOTIFICATION\_DRAG\_BEGIN](class_node.md#class-node-constant-notification-drag-begin) and [Node.NOTIFICATION\_DRAG\_END](class_node.md#class-node-constant-notification-drag-end) when you prefer polling the value.

* * *

void **gui\_release\_focus**() [🔗](#class-viewport-method-gui-release-focus)

Removes the focus from the currently focused [Control](class_control.md#class-control) within this viewport. If no [Control](class_control.md#class-control) has the focus, does nothing.

* * *

void **gui\_set\_drag\_description**(description: [String](class_string.md#class-string)) [🔗](#class-viewport-method-gui-set-drag-description)

Sets the drag data human-readable description.

* * *

[bool](class_bool.md#class-bool) **is\_input\_handled**() const [🔗](#class-viewport-method-is-input-handled)

Returns whether the current [InputEvent](class_inputevent.md#class-inputevent) has been handled. Input events are not handled until [set\_input\_as\_handled()](#class-viewport-method-set-input-as-handled) has been called during the lifetime of an [InputEvent](class_inputevent.md#class-inputevent).

This is usually done as part of input handling methods like [Node.\_input()](class_node.md#class-node-private-method-input), [Control.\_gui\_input()](class_control.md#class-control-private-method-gui-input) or others, as well as in corresponding signal handlers.

If [handle\_input\_locally](#class-viewport-property-handle-input-locally) is set to `false`, this method will try finding the first parent viewport that is set to handle input locally, and return its value for [is\_input\_handled()](#class-viewport-method-is-input-handled) instead.

* * *

void **notify\_mouse\_entered**() [🔗](#class-viewport-method-notify-mouse-entered)

Inform the Viewport that the mouse has entered its area. Use this function before sending an [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) or [InputEventMouseMotion](class_inputeventmousemotion.md#class-inputeventmousemotion) to the **Viewport** with [push\_input()](#class-viewport-method-push-input). See also [notify\_mouse\_exited()](#class-viewport-method-notify-mouse-exited).

**Note:** In most cases, it is not necessary to call this function because [SubViewport](class_subviewport.md#class-subviewport) nodes that are children of [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) are notified automatically. This is only necessary when interacting with viewports in non-default ways, for example as textures in [TextureRect](class_texturerect.md#class-texturerect) or with an [Area3D](class_area3d.md#class-area3d) that forwards input events.

* * *

void **notify\_mouse\_exited**() [🔗](#class-viewport-method-notify-mouse-exited)

Inform the Viewport that the mouse has left its area. Use this function when the node that displays the viewport notices the mouse has left the area of the displayed viewport. See also [notify\_mouse\_entered()](#class-viewport-method-notify-mouse-entered).

**Note:** In most cases, it is not necessary to call this function because [SubViewport](class_subviewport.md#class-subviewport) nodes that are children of [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) are notified automatically. This is only necessary when interacting with viewports in non-default ways, for example as textures in [TextureRect](class_texturerect.md#class-texturerect) or with an [Area3D](class_area3d.md#class-area3d) that forwards input events.

* * *

void **push\_input**(event: [InputEvent](class_inputevent.md#class-inputevent), in\_local\_coords: [bool](class_bool.md#class-bool) = false) [🔗](#class-viewport-method-push-input)

Triggers the given `event` in this **Viewport**. This can be used to pass an [InputEvent](class_inputevent.md#class-inputevent) between viewports, or to locally apply inputs that were sent over the network or saved to a file.

If `in_local_coords` is `false`, the event's position is in the embedder's coordinates and will be converted to viewport coordinates. If `in_local_coords` is `true`, the event's position is in viewport coordinates.

While this method serves a similar purpose as [Input.parse\_input\_event()](class_input.md#class-input-method-parse-input-event), it does not remap the specified `event` based on project settings like [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse).

Calling this method will propagate calls to child nodes for following methods in the given order:

- [Node.\_input()](class_node.md#class-node-private-method-input)

- [Control.\_gui\_input()](class_control.md#class-control-private-method-gui-input) for [Control](class_control.md#class-control) nodes

- [Node.\_shortcut\_input()](class_node.md#class-node-private-method-shortcut-input)

- [Node.\_unhandled\_key\_input()](class_node.md#class-node-private-method-unhandled-key-input)

- [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input)


If an earlier method marks the input as handled via [set\_input\_as\_handled()](#class-viewport-method-set-input-as-handled), any later method in this list will not be called.

If none of the methods handle the event and [physics\_object\_picking](#class-viewport-property-physics-object-picking) is `true`, the event is used for physics object picking.

* * *

void **push\_text\_input**(text: [String](class_string.md#class-string)) [🔗](#class-viewport-method-push-text-input)

Helper method which calls the `set_text()` method on the currently focused [Control](class_control.md#class-control), provided that it is defined (e.g. if the focused Control is [Button](class_button.md#class-button) or [LineEdit](class_lineedit.md#class-lineedit)).

* * *

void **push\_unhandled\_input**(event: [InputEvent](class_inputevent.md#class-inputevent), in\_local\_coords: [bool](class_bool.md#class-bool) = false) [🔗](#class-viewport-method-push-unhandled-input)

**Deprecated:** Use [push\_input()](#class-viewport-method-push-input) instead.

Triggers the given `event` in this **Viewport**. This can be used to pass an [InputEvent](class_inputevent.md#class-inputevent) between viewports, or to locally apply inputs that were sent over the network or saved to a file.

If `in_local_coords` is `false`, the event's position is in the embedder's coordinates and will be converted to viewport coordinates. If `in_local_coords` is `true`, the event's position is in viewport coordinates.

Calling this method will propagate calls to child nodes for following methods in the given order:

- [Node.\_shortcut\_input()](class_node.md#class-node-private-method-shortcut-input)

- [Node.\_unhandled\_key\_input()](class_node.md#class-node-private-method-unhandled-key-input)

- [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input)


If an earlier method marks the input as handled via [set\_input\_as\_handled()](#class-viewport-method-set-input-as-handled), any later method in this list will not be called.

If none of the methods handle the event and [physics\_object\_picking](#class-viewport-property-physics-object-picking) is `true`, the event is used for physics object picking.

**Note:** This method doesn't propagate input events to embedded [Window](class_window.md#class-window) s or [SubViewport](class_subviewport.md#class-subviewport) s.

* * *

void **set\_canvas\_cull\_mask\_bit**(layer: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-viewport-method-set-canvas-cull-mask-bit)

Set/clear individual bits on the rendering layer mask. This simplifies editing this **Viewport**'s layers.

* * *

void **set\_input\_as\_handled**() [🔗](#class-viewport-method-set-input-as-handled)

Stops the input from propagating further down the [SceneTree](class_scenetree.md#class-scenetree).

**Note:** This does not affect the methods in [Input](class_input.md#class-input), only the way events are propagated.

* * *

void **set\_positional\_shadow\_atlas\_quadrant\_subdiv**(quadrant: [int](class_int.md#class-int), subdiv: [PositionalShadowAtlasQuadrantSubdiv](#enum-viewport-positionalshadowatlasquadrantsubdiv)) [🔗](#class-viewport-method-set-positional-shadow-atlas-quadrant-subdiv)

Sets the number of subdivisions to use in the specified quadrant. A higher number of subdivisions allows you to have more shadows in the scene at once, but reduces the quality of the shadows. A good practice is to have quadrants with a varying number of subdivisions and to have as few subdivisions as possible.

* * *

void **update\_mouse\_cursor\_state**() [🔗](#class-viewport-method-update-mouse-cursor-state)

Force instantly updating the display based on the current mouse cursor position. This includes updating the mouse cursor shape and sending necessary [Control.mouse\_entered](class_control.md#class-control-signal-mouse-entered), [CollisionObject2D.mouse\_entered](class_collisionobject2d.md#class-collisionobject2d-signal-mouse-entered), [CollisionObject3D.mouse\_entered](class_collisionobject3d.md#class-collisionobject3d-signal-mouse-entered) and [Window.mouse\_entered](class_window.md#class-window-signal-mouse-entered) signals and their respective `mouse_exited` counterparts.

* * *

void **warp\_mouse**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-viewport-method-warp-mouse)

Moves the mouse pointer to the specified position in this **Viewport** using the coordinate system of this **Viewport**.

**Note:** [warp\_mouse()](#class-viewport-method-warp-mouse) is only supported on Windows, macOS and Linux. It has no effect on Android, iOS and Web.

[Previous](class_videostreamplayer.md "VideoStreamPlayer") [Next](class_visibleonscreenenabler2d.md "VisibleOnScreenEnabler2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_videostreamplayer.md "VideoStreamPlayer") [Next](class_visibleonscreenenabler2d.md "VisibleOnScreenEnabler2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).