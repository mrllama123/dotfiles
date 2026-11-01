---
title: XRInterfaceExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrinterfaceextension.html
crawled_at: "2026-08-13T10:19:39+12:00"
content_hash: 416feb576860d8d93f8d57047f21b5216c26894d1bc0b937afb139823a29ab1c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRInterfaceExtension

* * *

# XRInterfaceExtension

**Inherits:** [XRInterface](class_xrinterface.md#class-xrinterface) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Base class for XR interface extensions (plugins).

## Description

External XR interface plugins should inherit from this class.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Methods

|     |     |
| --- | --- |
| void | [\_end\_frame](#class-xrinterfaceextension-private-method-end-frame)() virtual |
| [bool](class_bool.md#class-bool) | [\_get\_anchor\_detection\_is\_enabled](#class-xrinterfaceextension-private-method-get-anchor-detection-is-enabled)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_camera\_feed\_id](#class-xrinterfaceextension-private-method-get-camera-feed-id)() virtualconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_camera\_transform](#class-xrinterfaceextension-private-method-get-camera-transform)() virtual |
| [int](class_int.md#class-int) | [\_get\_capabilities](#class-xrinterfaceextension-private-method-get-capabilities)() virtualconst |
| [RID](class_rid.md#class-rid) | [\_get\_color\_texture](#class-xrinterfaceextension-private-method-get-color-texture)() virtual |
| [RID](class_rid.md#class-rid) | [\_get\_depth\_texture](#class-xrinterfaceextension-private-method-get-depth-texture)() virtual |
| [StringName](class_stringname.md#class-stringname) | [\_get\_name](#class-xrinterfaceextension-private-method-get-name)() virtualconst |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [\_get\_play\_area](#class-xrinterfaceextension-private-method-get-play-area)() virtualconst |
| [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode) | [\_get\_play\_area\_mode](#class-xrinterfaceextension-private-method-get-play-area-mode)() virtualconst |
| [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) | [\_get\_projection\_for\_view](#class-xrinterfaceextension-private-method-get-projection-for-view)(view: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) virtual |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_render\_target\_size](#class-xrinterfaceextension-private-method-get-render-target-size)() virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_suggested\_pose\_names](#class-xrinterfaceextension-private-method-get-suggested-pose-names)(tracker\_name: [StringName](class_stringname.md#class-stringname)) virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_suggested\_tracker\_names](#class-xrinterfaceextension-private-method-get-suggested-tracker-names)() virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_system\_info](#class-xrinterfaceextension-private-method-get-system-info)() virtualconst |
| [TrackingStatus](class_xrinterface.md#enum-xrinterface-trackingstatus) | [\_get\_tracking\_status](#class-xrinterfaceextension-private-method-get-tracking-status)() virtualconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_transform\_for\_view](#class-xrinterfaceextension-private-method-get-transform-for-view)(view: [int](class_int.md#class-int), cam\_transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual |
| [RID](class_rid.md#class-rid) | [\_get\_velocity\_texture](#class-xrinterfaceextension-private-method-get-velocity-texture)() virtual |
| [int](class_int.md#class-int) | [\_get\_view\_count](#class-xrinterfaceextension-private-method-get-view-count)() virtual |
| [RID](class_rid.md#class-rid) | [\_get\_vrs\_texture](#class-xrinterfaceextension-private-method-get-vrs-texture)() virtual |
| [VRSTextureFormat](class_xrinterface.md#enum-xrinterface-vrstextureformat) | [\_get\_vrs\_texture\_format](#class-xrinterfaceextension-private-method-get-vrs-texture-format)() virtual |
| [bool](class_bool.md#class-bool) | [\_initialize](#class-xrinterfaceextension-private-method-initialize)() virtual |
| [bool](class_bool.md#class-bool) | [\_is\_initialized](#class-xrinterfaceextension-private-method-is-initialized)() virtualconst |
| void | [\_post\_draw\_viewport](#class-xrinterfaceextension-private-method-post-draw-viewport)(render\_target: [RID](class_rid.md#class-rid), screen\_rect: [Rect2](class_rect2.md#class-rect2)) virtual |
| [bool](class_bool.md#class-bool) | [\_pre\_draw\_viewport](#class-xrinterfaceextension-private-method-pre-draw-viewport)(render\_target: [RID](class_rid.md#class-rid)) virtual |
| void | [\_pre\_render](#class-xrinterfaceextension-private-method-pre-render)() virtual |
| void | [\_process](#class-xrinterfaceextension-private-method-process)() virtual |
| void | [\_set\_anchor\_detection\_is\_enabled](#class-xrinterfaceextension-private-method-set-anchor-detection-is-enabled)(enabled: [bool](class_bool.md#class-bool)) virtual |
| [bool](class_bool.md#class-bool) | [\_set\_play\_area\_mode](#class-xrinterfaceextension-private-method-set-play-area-mode)(mode: [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_supports\_play\_area\_mode](#class-xrinterfaceextension-private-method-supports-play-area-mode)(mode: [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode)) virtualconst |
| void | [\_trigger\_haptic\_pulse](#class-xrinterfaceextension-private-method-trigger-haptic-pulse)(action\_name: [String](class_string.md#class-string), tracker\_name: [StringName](class_stringname.md#class-stringname), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) virtual |
| void | [\_uninitialize](#class-xrinterfaceextension-private-method-uninitialize)() virtual |
| void | [add\_blit](#class-xrinterfaceextension-method-add-blit)(render\_target: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), dst\_rect: [Rect2i](class_rect2i.md#class-rect2i), use\_layer: [bool](class_bool.md#class-bool), layer: [int](class_int.md#class-int), apply\_lens\_distortion: [bool](class_bool.md#class-bool), eye\_center: [Vector2](class_vector2.md#class-vector2), k1: [float](class_float.md#class-float), k2: [float](class_float.md#class-float), upscale: [float](class_float.md#class-float), aspect\_ratio: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [get\_color\_texture](#class-xrinterfaceextension-method-get-color-texture)() |
| [RID](class_rid.md#class-rid) | [get\_depth\_texture](#class-xrinterfaceextension-method-get-depth-texture)() |
| [RID](class_rid.md#class-rid) | [get\_render\_target\_texture](#class-xrinterfaceextension-method-get-render-target-texture)(render\_target: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [get\_velocity\_texture](#class-xrinterfaceextension-method-get-velocity-texture)() |

* * *

## Method Descriptions

void **\_end\_frame**() virtual [🔗](#class-xrinterfaceextension-private-method-end-frame)

Called if interface is active and queues have been submitted.

* * *

[bool](class_bool.md#class-bool) **\_get\_anchor\_detection\_is\_enabled**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-anchor-detection-is-enabled)

Return `true` if anchor detection is enabled for this interface.

* * *

[int](class_int.md#class-int) **\_get\_camera\_feed\_id**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-camera-feed-id)

Returns the camera feed ID for the [CameraFeed](class_camerafeed.md#class-camerafeed) registered with the [CameraServer](class_cameraserver.md#class-cameraserver) that should be presented as the background on an AR capable device (if applicable).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_camera\_transform**() virtual [🔗](#class-xrinterfaceextension-private-method-get-camera-transform)

Returns the [Transform3D](class_transform3d.md#class-transform3d) that positions the [XRCamera3D](class_xrcamera3d.md#class-xrcamera3d) in the world.

* * *

[int](class_int.md#class-int) **\_get\_capabilities**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-capabilities)

Returns the capabilities of this interface.

* * *

[RID](class_rid.md#class-rid) **\_get\_color\_texture**() virtual [🔗](#class-xrinterfaceextension-private-method-get-color-texture)

Return color texture into which to render (if applicable).

* * *

[RID](class_rid.md#class-rid) **\_get\_depth\_texture**() virtual [🔗](#class-xrinterfaceextension-private-method-get-depth-texture)

Return depth texture into which to render (if applicable).

* * *

[StringName](class_stringname.md#class-stringname) **\_get\_name**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-name)

Returns the name of this interface.

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **\_get\_play\_area**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-play-area)

Returns a [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) that represents the play areas boundaries (if applicable).

* * *

[PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode) **\_get\_play\_area\_mode**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-play-area-mode)

Returns the play area mode that sets up our play area.

* * *

[PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **\_get\_projection\_for\_view**(view: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), z\_near: [float](class_float.md#class-float), z\_far: [float](class_float.md#class-float)) virtual [🔗](#class-xrinterfaceextension-private-method-get-projection-for-view)

Returns the projection matrix for the given view as a [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_render\_target\_size**() virtual [🔗](#class-xrinterfaceextension-private-method-get-render-target-size)

Returns the size of our render target for this interface, this overrides the size of the [Viewport](class_viewport.md#class-viewport) marked as the xr viewport.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_suggested\_pose\_names**(tracker\_name: [StringName](class_stringname.md#class-stringname)) virtualconst [🔗](#class-xrinterfaceextension-private-method-get-suggested-pose-names)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) with pose names configured by this interface. Note that user configuration can override this list.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_suggested\_tracker\_names**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-suggested-tracker-names)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) with tracker names configured by this interface. Note that user configuration can override this list.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_system\_info**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-system-info)

Returns a [Dictionary](class_dictionary.md#class-dictionary) with system information related to this interface.

* * *

[TrackingStatus](class_xrinterface.md#enum-xrinterface-trackingstatus) **\_get\_tracking\_status**() virtualconst [🔗](#class-xrinterfaceextension-private-method-get-tracking-status)

Returns an [TrackingStatus](class_xrinterface.md#enum-xrinterface-trackingstatus) specifying the current status of our tracking.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_transform\_for\_view**(view: [int](class_int.md#class-int), cam\_transform: [Transform3D](class_transform3d.md#class-transform3d)) virtual [🔗](#class-xrinterfaceextension-private-method-get-transform-for-view)

Returns a [Transform3D](class_transform3d.md#class-transform3d) for a given view.

* * *

[RID](class_rid.md#class-rid) **\_get\_velocity\_texture**() virtual [🔗](#class-xrinterfaceextension-private-method-get-velocity-texture)

Return velocity texture into which to render (if applicable).

* * *

[int](class_int.md#class-int) **\_get\_view\_count**() virtual [🔗](#class-xrinterfaceextension-private-method-get-view-count)

Returns the number of views this interface requires, 1 for mono, 2 for stereoscopic.

* * *

[RID](class_rid.md#class-rid) **\_get\_vrs\_texture**() virtual [🔗](#class-xrinterfaceextension-private-method-get-vrs-texture)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[VRSTextureFormat](class_xrinterface.md#enum-xrinterface-vrstextureformat) **\_get\_vrs\_texture\_format**() virtual [🔗](#class-xrinterfaceextension-private-method-get-vrs-texture-format)

Returns the format of the texture returned by [\_get\_vrs\_texture()](#class-xrinterfaceextension-private-method-get-vrs-texture).

* * *

[bool](class_bool.md#class-bool) **\_initialize**() virtual [🔗](#class-xrinterfaceextension-private-method-initialize)

Initializes the interface, returns `true` on success.

* * *

[bool](class_bool.md#class-bool) **\_is\_initialized**() virtualconst [🔗](#class-xrinterfaceextension-private-method-is-initialized)

Returns `true` if this interface has been initialized.

* * *

void **\_post\_draw\_viewport**(render\_target: [RID](class_rid.md#class-rid), screen\_rect: [Rect2](class_rect2.md#class-rect2)) virtual [🔗](#class-xrinterfaceextension-private-method-post-draw-viewport)

Called after the XR [Viewport](class_viewport.md#class-viewport) draw logic has completed.

* * *

[bool](class_bool.md#class-bool) **\_pre\_draw\_viewport**(render\_target: [RID](class_rid.md#class-rid)) virtual [🔗](#class-xrinterfaceextension-private-method-pre-draw-viewport)

Called if this is our primary **XRInterfaceExtension** before we start processing a [Viewport](class_viewport.md#class-viewport) for every active XR [Viewport](class_viewport.md#class-viewport), returns `true` if that viewport should be rendered. An XR interface may return `false` if the user has taken off their headset and we can pause rendering.

* * *

void **\_pre\_render**() virtual [🔗](#class-xrinterfaceextension-private-method-pre-render)

Called if this **XRInterfaceExtension** is active before rendering starts. Most XR interfaces will sync tracking at this point in time.

* * *

void **\_process**() virtual [🔗](#class-xrinterfaceextension-private-method-process)

Called if this **XRInterfaceExtension** is active before our physics and game process is called. Most XR interfaces will update its [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) s at this point in time.

* * *

void **\_set\_anchor\_detection\_is\_enabled**(enabled: [bool](class_bool.md#class-bool)) virtual [🔗](#class-xrinterfaceextension-private-method-set-anchor-detection-is-enabled)

Enables anchor detection on this interface if supported.

* * *

[bool](class_bool.md#class-bool) **\_set\_play\_area\_mode**(mode: [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode)) virtualconst [🔗](#class-xrinterfaceextension-private-method-set-play-area-mode)

Set the play area mode for this interface.

* * *

[bool](class_bool.md#class-bool) **\_supports\_play\_area\_mode**(mode: [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode)) virtualconst [🔗](#class-xrinterfaceextension-private-method-supports-play-area-mode)

Returns `true` if this interface supports this play area mode.

* * *

void **\_trigger\_haptic\_pulse**(action\_name: [String](class_string.md#class-string), tracker\_name: [StringName](class_stringname.md#class-stringname), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) virtual [🔗](#class-xrinterfaceextension-private-method-trigger-haptic-pulse)

Triggers a haptic pulse to be emitted on the specified tracker.

* * *

void **\_uninitialize**() virtual [🔗](#class-xrinterfaceextension-private-method-uninitialize)

Uninitialize the interface.

* * *

void **add\_blit**(render\_target: [RID](class_rid.md#class-rid), src\_rect: [Rect2](class_rect2.md#class-rect2), dst\_rect: [Rect2i](class_rect2i.md#class-rect2i), use\_layer: [bool](class_bool.md#class-bool), layer: [int](class_int.md#class-int), apply\_lens\_distortion: [bool](class_bool.md#class-bool), eye\_center: [Vector2](class_vector2.md#class-vector2), k1: [float](class_float.md#class-float), k2: [float](class_float.md#class-float), upscale: [float](class_float.md#class-float), aspect\_ratio: [float](class_float.md#class-float)) [🔗](#class-xrinterfaceextension-method-add-blit)

Blits our render results to screen optionally applying lens distortion. This can only be called while processing `_commit_views`.

* * *

[RID](class_rid.md#class-rid) **get\_color\_texture**() [🔗](#class-xrinterfaceextension-method-get-color-texture)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **get\_depth\_texture**() [🔗](#class-xrinterfaceextension-method-get-depth-texture)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **get\_render\_target\_texture**(render\_target: [RID](class_rid.md#class-rid)) [🔗](#class-xrinterfaceextension-method-get-render-target-texture)

Returns a valid [RID](class_rid.md#class-rid) for a texture to which we should render the current frame if supported by the interface.

* * *

[RID](class_rid.md#class-rid) **get\_velocity\_texture**() [🔗](#class-xrinterfaceextension-method-get-velocity-texture)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_xrinterface.md "XRInterface") [Next](class_xrpose.md "XRPose")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrinterface.md "XRInterface") [Next](class_xrpose.md "XRPose")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).