---
title: Camera3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_camera3d.html
crawled_at: "2026-08-13T10:36:43+12:00"
content_hash: 61bac31e63f1c6732f4de23b367f0b1ba23ffe438fcc79097c0647b364767bfa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Camera3D

* * *

# Camera3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [XRCamera3D](class_xrcamera3d.md#class-xrcamera3d)

Camera node, displays from a point of view.

## Description

**Camera3D** is a special node that displays what is visible from its current location. Cameras register themselves in the nearest [Viewport](class_viewport.md#class-viewport) node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. In other words, a camera just provides 3D display capabilities to a [Viewport](class_viewport.md#class-viewport), and, without one, a scene registered in that [Viewport](class_viewport.md#class-viewport) (or higher viewports) can't be displayed.

## Tutorials

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [CameraAttributes](class_cameraattributes.md#class-cameraattributes) | [attributes](#class-camera3d-property-attributes) |  |
| [Compositor](class_compositor.md#class-compositor) | [compositor](#class-camera3d-property-compositor) |  |
| [int](class_int.md#class-int) | [cull\_mask](#class-camera3d-property-cull-mask) | `1048575` |
| [bool](class_bool.md#class-bool) | [current](#class-camera3d-property-current) | `false` |
| [DopplerTracking](#enum-camera3d-dopplertracking) | [doppler\_tracking](#class-camera3d-property-doppler-tracking) | `0` |
| [Environment](class_environment.md#class-environment) | [environment](#class-camera3d-property-environment) |  |
| [float](class_float.md#class-float) | [far](#class-camera3d-property-far) | `4000.0` |
| [float](class_float.md#class-float) | [fov](#class-camera3d-property-fov) | `75.0` |
| [Vector2](class_vector2.md#class-vector2) | [frustum\_offset](#class-camera3d-property-frustum-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [h\_offset](#class-camera3d-property-h-offset) | `0.0` |
| [KeepAspect](#enum-camera3d-keepaspect) | [keep\_aspect](#class-camera3d-property-keep-aspect) | `1` |
| [float](class_float.md#class-float) | [near](#class-camera3d-property-near) | `0.05` |
| [ProjectionType](#enum-camera3d-projectiontype) | [projection](#class-camera3d-property-projection) | `0` |
| [float](class_float.md#class-float) | [size](#class-camera3d-property-size) | `1.0` |
| [float](class_float.md#class-float) | [v\_offset](#class-camera3d-property-v-offset) | `0.0` |

## Methods

|     |     |
| --- | --- |
| void | [clear\_current](#class-camera3d-method-clear-current)(enable\_next: [bool](class_bool.md#class-bool) = true) |
| [Projection](class_projection.md#class-projection) | [get\_camera\_projection](#class-camera3d-method-get-camera-projection)() const |
| [RID](class_rid.md#class-rid) | [get\_camera\_rid](#class-camera3d-method-get-camera-rid)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_camera\_transform](#class-camera3d-method-get-camera-transform)() const |
| [bool](class_bool.md#class-bool) | [get\_cull\_mask\_value](#class-camera3d-method-get-cull-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] | [get\_frustum](#class-camera3d-method-get-frustum)() const |
| [RID](class_rid.md#class-rid) | [get\_pyramid\_shape\_rid](#class-camera3d-method-get-pyramid-shape-rid)() |
| [bool](class_bool.md#class-bool) | [is\_position\_behind](#class-camera3d-method-is-position-behind)(world\_point: [Vector3](class_vector3.md#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [is\_position\_in\_frustum](#class-camera3d-method-is-position-in-frustum)(world\_point: [Vector3](class_vector3.md#class-vector3)) const |
| void | [make\_current](#class-camera3d-method-make-current)() |
| [Vector3](class_vector3.md#class-vector3) | [project\_local\_ray\_normal](#class-camera3d-method-project-local-ray-normal)(screen\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector3](class_vector3.md#class-vector3) | [project\_position](#class-camera3d-method-project-position)(screen\_point: [Vector2](class_vector2.md#class-vector2), z\_depth: [float](class_float.md#class-float)) const |
| [Vector3](class_vector3.md#class-vector3) | [project\_ray\_normal](#class-camera3d-method-project-ray-normal)(screen\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector3](class_vector3.md#class-vector3) | [project\_ray\_origin](#class-camera3d-method-project-ray-origin)(screen\_point: [Vector2](class_vector2.md#class-vector2)) const |
| void | [set\_cull\_mask\_value](#class-camera3d-method-set-cull-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_frustum](#class-camera3d-method-set-frustum)(size: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| void | [set\_orthogonal](#class-camera3d-method-set-orthogonal)(size: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| void | [set\_perspective](#class-camera3d-method-set-perspective)(fov: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) |
| [Vector2](class_vector2.md#class-vector2) | [unproject\_position](#class-camera3d-method-unproject-position)(world\_point: [Vector3](class_vector3.md#class-vector3)) const |

* * *

## Enumerations

enum **ProjectionType**: [🔗](#enum-camera3d-projectiontype)

[ProjectionType](#enum-camera3d-projectiontype) **PROJECTION\_PERSPECTIVE** = `0`

Perspective projection. Objects on the screen becomes smaller when they are far away.

[ProjectionType](#enum-camera3d-projectiontype) **PROJECTION\_ORTHOGONAL** = `1`

Orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.

[ProjectionType](#enum-camera3d-projectiontype) **PROJECTION\_FRUSTUM** = `2`

Frustum projection. This mode allows adjusting [frustum\_offset](#class-camera3d-property-frustum-offset) to create "tilted frustum" effects.

* * *

enum **KeepAspect**: [🔗](#enum-camera3d-keepaspect)

[KeepAspect](#enum-camera3d-keepaspect) **KEEP\_WIDTH** = `0`

Preserves the horizontal aspect ratio; also known as Vert- scaling. This is usually the best option for projects running in portrait mode, as taller aspect ratios will benefit from a wider vertical FOV.

[KeepAspect](#enum-camera3d-keepaspect) **KEEP\_HEIGHT** = `1`

Preserves the vertical aspect ratio; also known as Hor+ scaling. This is usually the best option for projects running in landscape mode, as wider aspect ratios will automatically benefit from a wider horizontal FOV.

* * *

enum **DopplerTracking**: [🔗](#enum-camera3d-dopplertracking)

[DopplerTracking](#enum-camera3d-dopplertracking) **DOPPLER\_TRACKING\_DISABLED** = `0`

Disables [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) simulation (default).

[DopplerTracking](#enum-camera3d-dopplertracking) **DOPPLER\_TRACKING\_IDLE\_STEP** = `1`

Simulate [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) by tracking positions of objects that are changed in `_process`. Changes in the relative velocity of this camera compared to those objects affect how audio is perceived (changing the audio's [AudioStreamPlayer3D.pitch\_scale](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-pitch-scale)).

[DopplerTracking](#enum-camera3d-dopplertracking) **DOPPLER\_TRACKING\_PHYSICS\_STEP** = `2`

Simulate [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) by tracking positions of objects that are changed in `_physics_process`. Changes in the relative velocity of this camera compared to those objects affect how audio is perceived (changing the audio's [AudioStreamPlayer3D.pitch\_scale](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-pitch-scale)).

* * *

## Property Descriptions

[CameraAttributes](class_cameraattributes.md#class-cameraattributes) **attributes** [🔗](#class-camera3d-property-attributes)

- void **set\_attributes**(value: [CameraAttributes](class_cameraattributes.md#class-cameraattributes))

- [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **get\_attributes**()


The [CameraAttributes](class_cameraattributes.md#class-cameraattributes) to use for this camera.

* * *

[Compositor](class_compositor.md#class-compositor) **compositor** [🔗](#class-camera3d-property-compositor)

- void **set\_compositor**(value: [Compositor](class_compositor.md#class-compositor))

- [Compositor](class_compositor.md#class-compositor) **get\_compositor**()


The [Compositor](class_compositor.md#class-compositor) to use for this camera.

* * *

[int](class_int.md#class-int) **cull\_mask** = `1048575` [🔗](#class-camera3d-property-cull-mask)

- void **set\_cull\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_cull\_mask**()


The culling mask that describes which [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) are rendered by this camera. By default, all 20 user-visible layers are rendered.

**Note:** Since the [cull\_mask](#class-camera3d-property-cull-mask) allows for 32 layers to be stored in total, there are an additional 12 layers that are only used internally by the engine and aren't exposed in the editor. Setting [cull\_mask](#class-camera3d-property-cull-mask) using a script allows you to toggle those reserved layers, which can be useful for editor plugins.

To adjust [cull\_mask](#class-camera3d-property-cull-mask) more easily using a script, use [get\_cull\_mask\_value()](#class-camera3d-method-get-cull-mask-value) and [set\_cull\_mask\_value()](#class-camera3d-method-set-cull-mask-value).

**Note:** [VoxelGI](class_voxelgi.md#class-voxelgi), SDFGI and [LightmapGI](class_lightmapgi.md#class-lightmapgi) will always take all layers into account to determine what contributes to global illumination. If this is an issue, set [GeometryInstance3D.gi\_mode](class_geometryinstance3d.md#class-geometryinstance3d-property-gi-mode) to [GeometryInstance3D.GI\_MODE\_DISABLED](class_geometryinstance3d.md#class-geometryinstance3d-constant-gi-mode-disabled) for meshes and [Light3D.light\_bake\_mode](class_light3d.md#class-light3d-property-light-bake-mode) to [Light3D.BAKE\_DISABLED](class_light3d.md#class-light3d-constant-bake-disabled) for lights to exclude them from global illumination.

* * *

[bool](class_bool.md#class-bool) **current** = `false` [🔗](#class-camera3d-property-current)

- void **set\_current**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_current**()


If `true`, the ancestor [Viewport](class_viewport.md#class-viewport) is currently using this camera.

If multiple cameras are in the scene, one will always be made current. For example, if two **Camera3D** nodes are present in the scene and only one is current, setting one camera's [current](#class-camera3d-property-current) to `false` will cause the other camera to be made current.

* * *

[DopplerTracking](#enum-camera3d-dopplertracking) **doppler\_tracking** = `0` [🔗](#class-camera3d-property-doppler-tracking)

- void **set\_doppler\_tracking**(value: [DopplerTracking](#enum-camera3d-dopplertracking))

- [DopplerTracking](#enum-camera3d-dopplertracking) **get\_doppler\_tracking**()


If not [DOPPLER\_TRACKING\_DISABLED](#class-camera3d-constant-doppler-tracking-disabled), this camera will simulate the [Doppler effect](https://en.wikipedia.org/wiki/Doppler_effect) for objects changed in particular `_process` methods.

**Note:** The Doppler effect will only be heard on [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d) s if [AudioStreamPlayer3D.doppler\_tracking](class_audiostreamplayer3d.md#class-audiostreamplayer3d-property-doppler-tracking) is not set to [AudioStreamPlayer3D.DOPPLER\_TRACKING\_DISABLED](class_audiostreamplayer3d.md#class-audiostreamplayer3d-constant-doppler-tracking-disabled).

* * *

[Environment](class_environment.md#class-environment) **environment** [🔗](#class-camera3d-property-environment)

- void **set\_environment**(value: [Environment](class_environment.md#class-environment))

- [Environment](class_environment.md#class-environment) **get\_environment**()


The [Environment](class_environment.md#class-environment) to use for this camera.

* * *

[float](class_float.md#class-float) **far** = `4000.0` [🔗](#class-camera3d-property-far)

- void **set\_far**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_far**()


The distance to the far culling boundary for this camera relative to its local Z axis. Higher values allow the camera to see further away, while decreasing [far](#class-camera3d-property-far) can improve performance if it results in objects being partially or fully culled.

* * *

[float](class_float.md#class-float) **fov** = `75.0` [🔗](#class-camera3d-property-fov)

- void **set\_fov**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fov**()


The camera's field of view angle (in degrees). Only applicable in perspective mode. Since [keep\_aspect](#class-camera3d-property-keep-aspect) locks one axis, [fov](#class-camera3d-property-fov) sets the other axis' field of view angle.

For reference, the default vertical field of view value ( `75.0`) is equivalent to a horizontal FOV of:

- ~91.31 degrees in a 4:3 viewport

- ~101.67 degrees in a 16:10 viewport

- ~107.51 degrees in a 16:9 viewport

- ~121.63 degrees in a 21:9 viewport


* * *

[Vector2](class_vector2.md#class-vector2) **frustum\_offset** = `Vector2(0, 0)` [🔗](#class-camera3d-property-frustum-offset)

- void **set\_frustum\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_frustum\_offset**()


The camera's frustum offset. This can be changed from the default to create "tilted frustum" effects such as [Y-shearing](https://zdoom.org/wiki/Y-shearing).

**Note:** Only effective if [projection](#class-camera3d-property-projection) is [PROJECTION\_FRUSTUM](#class-camera3d-constant-projection-frustum).

* * *

[float](class_float.md#class-float) **h\_offset** = `0.0` [🔗](#class-camera3d-property-h-offset)

- void **set\_h\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_h\_offset**()


The horizontal (X) offset of the camera viewport.

* * *

[KeepAspect](#enum-camera3d-keepaspect) **keep\_aspect** = `1` [🔗](#class-camera3d-property-keep-aspect)

- void **set\_keep\_aspect\_mode**(value: [KeepAspect](#enum-camera3d-keepaspect))

- [KeepAspect](#enum-camera3d-keepaspect) **get\_keep\_aspect\_mode**()


The axis to lock during [fov](#class-camera3d-property-fov)/ [size](#class-camera3d-property-size) adjustments. Can be either [KEEP\_WIDTH](#class-camera3d-constant-keep-width) or [KEEP\_HEIGHT](#class-camera3d-constant-keep-height).

* * *

[float](class_float.md#class-float) **near** = `0.05` [🔗](#class-camera3d-property-near)

- void **set\_near**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_near**()


The distance to the near culling boundary for this camera relative to its local Z axis. Lower values allow the camera to see objects more up close to its origin, at the cost of lower precision across the _entire_ range. Values lower than the default can lead to increased Z-fighting.

* * *

[ProjectionType](#enum-camera3d-projectiontype) **projection** = `0` [🔗](#class-camera3d-property-projection)

- void **set\_projection**(value: [ProjectionType](#enum-camera3d-projectiontype))

- [ProjectionType](#enum-camera3d-projectiontype) **get\_projection**()


The camera's projection mode. In [PROJECTION\_PERSPECTIVE](#class-camera3d-constant-projection-perspective) mode, objects' Z distance from the camera's local space scales their perceived size.

* * *

[float](class_float.md#class-float) **size** = `1.0` [🔗](#class-camera3d-property-size)

- void **set\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_size**()


The camera's size in meters measured as the diameter of the width or height, depending on [keep\_aspect](#class-camera3d-property-keep-aspect). Only applicable in orthogonal and frustum modes.

* * *

[float](class_float.md#class-float) **v\_offset** = `0.0` [🔗](#class-camera3d-property-v-offset)

- void **set\_v\_offset**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_v\_offset**()


The vertical (Y) offset of the camera viewport.

* * *

## Method Descriptions

void **clear\_current**(enable\_next: [bool](class_bool.md#class-bool) = true) [🔗](#class-camera3d-method-clear-current)

If this is the current camera, remove it from being current. If `enable_next` is `true`, request to make the next camera current, if any.

* * *

[Projection](class_projection.md#class-projection) **get\_camera\_projection**() const [🔗](#class-camera3d-method-get-camera-projection)

Returns the projection matrix that this camera uses to render to its associated viewport. The camera must be part of the scene tree to function.

* * *

[RID](class_rid.md#class-rid) **get\_camera\_rid**() const [🔗](#class-camera3d-method-get-camera-rid)

Returns the camera's RID from the [RenderingServer](class_renderingserver.md#class-renderingserver).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_camera\_transform**() const [🔗](#class-camera3d-method-get-camera-transform)

Returns the transform of the camera plus the vertical ( [v\_offset](#class-camera3d-property-v-offset)) and horizontal ( [h\_offset](#class-camera3d-property-h-offset)) offsets; and any other adjustments made to the position and orientation of the camera by subclassed cameras such as [XRCamera3D](class_xrcamera3d.md#class-xrcamera3d).

* * *

[bool](class_bool.md#class-bool) **get\_cull\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-camera3d-method-get-cull-mask-value)

Returns whether or not the specified layer of the [cull\_mask](#class-camera3d-property-cull-mask) is enabled, given a `layer_number` between 1 and 20.

* * *

[Array](class_array.md#class-array)\[ [Plane](class_plane.md#class-plane)\] **get\_frustum**() const [🔗](#class-camera3d-method-get-frustum)

Returns the camera's frustum planes in world space units as an array of [Plane](class_plane.md#class-plane) s in the following order: near, far, left, top, right, bottom. Not to be confused with [frustum\_offset](#class-camera3d-property-frustum-offset).

* * *

[RID](class_rid.md#class-rid) **get\_pyramid\_shape\_rid**() [🔗](#class-camera3d-method-get-pyramid-shape-rid)

Returns the RID of a pyramid shape encompassing the camera's view frustum, ignoring the camera's near plane. The tip of the pyramid represents the position of the camera.

* * *

[bool](class_bool.md#class-bool) **is\_position\_behind**(world\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-camera3d-method-is-position-behind)

Returns `true` if the given position is behind the camera (the blue part of the linked diagram). [See this diagram](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png) for an overview of position query methods.

**Note:** A position which returns `false` may still be outside the camera's field of view.

* * *

[bool](class_bool.md#class-bool) **is\_position\_in\_frustum**(world\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-camera3d-method-is-position-in-frustum)

Returns `true` if the given position is inside the camera's frustum (the green part of the linked diagram). [See this diagram](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/camera3d_position_frustum.png) for an overview of position query methods.

* * *

void **make\_current**() [🔗](#class-camera3d-method-make-current)

Makes this camera the current camera for the [Viewport](class_viewport.md#class-viewport) (see class description). If the camera node is outside the scene tree, it will attempt to become current once it's added.

* * *

[Vector3](class_vector3.md#class-vector3) **project\_local\_ray\_normal**(screen\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-camera3d-method-project-local-ray-normal)

Returns a normal vector from the screen point location directed along the camera. Orthogonal cameras are normalized. Perspective cameras account for perspective, screen width/height, etc.

* * *

[Vector3](class_vector3.md#class-vector3) **project\_position**(screen\_point: [Vector2](class_vector2.md#class-vector2), z\_depth: [float](class_float.md#class-float)) const [🔗](#class-camera3d-method-project-position)

Returns the 3D point in world space that maps to the given 2D coordinate in the [Viewport](class_viewport.md#class-viewport) rectangle on a plane that is the given `z_depth` distance into the scene away from the camera.

* * *

[Vector3](class_vector3.md#class-vector3) **project\_ray\_normal**(screen\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-camera3d-method-project-ray-normal)

Returns a normal vector in world space, that is the result of projecting a point on the [Viewport](class_viewport.md#class-viewport) rectangle by the inverse camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.

* * *

[Vector3](class_vector3.md#class-vector3) **project\_ray\_origin**(screen\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-camera3d-method-project-ray-origin)

Returns a 3D position in world space, that is the result of projecting a point on the [Viewport](class_viewport.md#class-viewport) rectangle by the inverse camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.

* * *

void **set\_cull\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-camera3d-method-set-cull-mask-value)

Based on `value`, enables or disables the specified layer in the [cull\_mask](#class-camera3d-property-cull-mask), given a `layer_number` between 1 and 20.

* * *

void **set\_frustum**(size: [float](class_float.md#class-float), offset: [Vector2](class_vector2.md#class-vector2), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-camera3d-method-set-frustum)

Sets the camera projection to frustum mode (see [PROJECTION\_FRUSTUM](#class-camera3d-constant-projection-frustum)), by specifying a `size`, an `offset`, and the `z_near` and `z_far` clip planes in world space units. See also [frustum\_offset](#class-camera3d-property-frustum-offset).

* * *

void **set\_orthogonal**(size: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-camera3d-method-set-orthogonal)

Sets the camera projection to orthogonal mode (see [PROJECTION\_ORTHOGONAL](#class-camera3d-constant-projection-orthogonal)), by specifying a `size`, and the `z_near` and `z_far` clip planes in world space units.

As a hint, 3D games that look 2D often use this projection, with `size` specified in pixels.

* * *

void **set\_perspective**(fov: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) [🔗](#class-camera3d-method-set-perspective)

Sets the camera projection to perspective mode (see [PROJECTION\_PERSPECTIVE](#class-camera3d-constant-projection-perspective)), by specifying a `fov` (field of view) angle in degrees, and the `z_near` and `z_far` clip planes in world space units.

* * *

[Vector2](class_vector2.md#class-vector2) **unproject\_position**(world\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-camera3d-method-unproject-position)

Returns the 2D coordinate in the [Viewport](class_viewport.md#class-viewport) rectangle that maps to the given 3D point in world space.

**Note:** When using this to position GUI elements over a 3D viewport, use [is\_position\_behind()](#class-camera3d-method-is-position-behind) to prevent them from appearing if the 3D point is behind the camera:

```
# This code block is part of a script that inherits from Node3D.
# `control` is a reference to a node inheriting from Control.
control.visible = not get_viewport().get_camera_3d().is_position_behind(global_transform.origin)
control.position = get_viewport().get_camera_3d().unproject_position(global_transform.origin)

```

[Previous](class_camera2d.md "Camera2D") [Next](class_canvasgroup.md "CanvasGroup")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_camera2d.md "Camera2D") [Next](class_canvasgroup.md "CanvasGroup")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).