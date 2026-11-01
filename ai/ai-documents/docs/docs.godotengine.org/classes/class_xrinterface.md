---
title: XRInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrinterface.html
crawled_at: "2026-08-13T10:26:39+12:00"
content_hash: 673b98a00b1385e711808141fd795d32863d8f1f0f03a66712373e3fc48c3dd3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRInterface

* * *

# XRInterface

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [MobileVRInterface](class_mobilevrinterface.md#class-mobilevrinterface), [OpenXRInterface](class_openxrinterface.md#class-openxrinterface), [WebXRInterface](class_webxrinterface.md#class-webxrinterface), [XRInterfaceExtension](class_xrinterfaceextension.md#class-xrinterfaceextension)

Base class for an XR interface implementation.

## Description

This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.

Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through [XRServer](class_xrserver.md#class-xrserver).

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [ar\_is\_anchor\_detection\_enabled](#class-xrinterface-property-ar-is-anchor-detection-enabled) | `false` |
| [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) | [environment\_blend\_mode](#class-xrinterface-property-environment-blend-mode) | `0` |
| [bool](class_bool.md#class-bool) | [interface\_is\_primary](#class-xrinterface-property-interface-is-primary) | `false` |
| [PlayAreaMode](#enum-xrinterface-playareamode) | [xr\_play\_area\_mode](#class-xrinterface-property-xr-play-area-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [get\_camera\_feed\_id](#class-xrinterface-method-get-camera-feed-id)() |
| [int](class_int.md#class-int) | [get\_capabilities](#class-xrinterface-method-get-capabilities)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_name](#class-xrinterface-method-get-name)() const |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [get\_play\_area](#class-xrinterface-method-get-play-area)() const |
| [Projection](class_projection.md#class-projection) | [get\_projection\_for\_view](#class-xrinterface-method-get-projection-for-view)(view: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), near: [float](class_float.md#class-float), far: [float](class_float.md#class-float)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_render\_target\_size](#class-xrinterface-method-get-render-target-size)() |
| [Array](class_array.md#class-array) | [get\_supported\_environment\_blend\_modes](#class-xrinterface-method-get-supported-environment-blend-modes)() |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_system\_info](#class-xrinterface-method-get-system-info)() |
| [TrackingStatus](#enum-xrinterface-trackingstatus) | [get\_tracking\_status](#class-xrinterface-method-get-tracking-status)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_transform\_for\_view](#class-xrinterface-method-get-transform-for-view)(view: [int](class_int.md#class-int), cam\_transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| [int](class_int.md#class-int) | [get\_view\_count](#class-xrinterface-method-get-view-count)() |
| [bool](class_bool.md#class-bool) | [initialize](#class-xrinterface-method-initialize)() |
| [bool](class_bool.md#class-bool) | [is\_initialized](#class-xrinterface-method-is-initialized)() const |
| [bool](class_bool.md#class-bool) | [is\_passthrough\_enabled](#class-xrinterface-method-is-passthrough-enabled)() |
| [bool](class_bool.md#class-bool) | [is\_passthrough\_supported](#class-xrinterface-method-is-passthrough-supported)() |
| [bool](class_bool.md#class-bool) | [set\_environment\_blend\_mode](#class-xrinterface-method-set-environment-blend-mode)(mode: [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode)) |
| [bool](class_bool.md#class-bool) | [set\_play\_area\_mode](#class-xrinterface-method-set-play-area-mode)(mode: [PlayAreaMode](#enum-xrinterface-playareamode)) |
| [bool](class_bool.md#class-bool) | [start\_passthrough](#class-xrinterface-method-start-passthrough)() |
| void | [stop\_passthrough](#class-xrinterface-method-stop-passthrough)() |
| [bool](class_bool.md#class-bool) | [supports\_play\_area\_mode](#class-xrinterface-method-supports-play-area-mode)(mode: [PlayAreaMode](#enum-xrinterface-playareamode)) |
| void | [trigger\_haptic\_pulse](#class-xrinterface-method-trigger-haptic-pulse)(action\_name: [String](class_string.md#class-string), tracker\_name: [StringName](class_stringname.md#class-stringname), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) |
| void | [uninitialize](#class-xrinterface-method-uninitialize)() |

* * *

## Signals

**play\_area\_changed**(mode: [int](class_int.md#class-int)) [🔗](#class-xrinterface-signal-play-area-changed)

Emitted when the play area is changed. This can be a result of the player resetting the boundary or entering a new play area, the player changing the play area mode, the world scale changing or the player resetting their headset orientation.

* * *

## Enumerations

enum **Capabilities**: [🔗](#enum-xrinterface-capabilities)

[Capabilities](#enum-xrinterface-capabilities) **XR\_NONE** = `0`

No XR capabilities.

[Capabilities](#enum-xrinterface-capabilities) **XR\_MONO** = `1`

This interface can work with normal rendering output (non-HMD based AR).

[Capabilities](#enum-xrinterface-capabilities) **XR\_STEREO** = `2`

This interface supports stereoscopic rendering.

[Capabilities](#enum-xrinterface-capabilities) **XR\_QUAD** = `4`

This interface supports quad rendering (not yet supported by Godot).

[Capabilities](#enum-xrinterface-capabilities) **XR\_VR** = `8`

This interface supports VR.

[Capabilities](#enum-xrinterface-capabilities) **XR\_AR** = `16`

This interface supports AR (video background and real world tracking).

[Capabilities](#enum-xrinterface-capabilities) **XR\_EXTERNAL** = `32`

This interface outputs to an external device. If the main viewport is used, the on screen output is an unmodified buffer of either the left or right eye (stretched if the viewport size is not changed to the same aspect ratio of [get\_render\_target\_size()](#class-xrinterface-method-get-render-target-size)). Using a separate viewport node frees up the main viewport for other purposes.

* * *

enum **TrackingStatus**: [🔗](#enum-xrinterface-trackingstatus)

[TrackingStatus](#enum-xrinterface-trackingstatus) **XR\_NORMAL\_TRACKING** = `0`

Tracking is behaving as expected.

[TrackingStatus](#enum-xrinterface-trackingstatus) **XR\_EXCESSIVE\_MOTION** = `1`

Tracking is hindered by excessive motion (the player is moving faster than tracking can keep up).

[TrackingStatus](#enum-xrinterface-trackingstatus) **XR\_INSUFFICIENT\_FEATURES** = `2`

Tracking is hindered by insufficient features, it's too dark (for camera-based tracking), player is blocked, etc.

[TrackingStatus](#enum-xrinterface-trackingstatus) **XR\_UNKNOWN\_TRACKING** = `3`

We don't know the status of the tracking or this interface does not provide feedback.

[TrackingStatus](#enum-xrinterface-trackingstatus) **XR\_NOT\_TRACKING** = `4`

Tracking is not functional (camera not plugged in or obscured, lighthouses turned off, etc.).

* * *

enum **PlayAreaMode**: [🔗](#enum-xrinterface-playareamode)

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_UNKNOWN** = `0`

Play area mode not set or not available.

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_3DOF** = `1`

Play area only supports orientation tracking, no positional tracking, area will center around player.

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_SITTING** = `2`

Player is in seated position, limited positional tracking, fixed guardian around player.

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_ROOMSCALE** = `3`

Player is free to move around, full positional tracking.

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_STAGE** = `4`

Same as [XR\_PLAY\_AREA\_ROOMSCALE](#class-xrinterface-constant-xr-play-area-roomscale) but origin point is fixed to the center of the physical space. In this mode, system-level recentering may be disabled, requiring the use of [XRServer.center\_on\_hmd()](class_xrserver.md#class-xrserver-method-center-on-hmd).

[PlayAreaMode](#enum-xrinterface-playareamode) **XR\_PLAY\_AREA\_CUSTOM** = `2147483647`

Custom play area set by a GDExtension.

* * *

enum **EnvironmentBlendMode**: [🔗](#enum-xrinterface-environmentblendmode)

[EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) **XR\_ENV\_BLEND\_MODE\_OPAQUE** = `0`

Opaque blend mode. This is typically used for VR devices.

[EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) **XR\_ENV\_BLEND\_MODE\_ADDITIVE** = `1`

Additive blend mode. This is typically used for AR devices or VR devices with passthrough.

[EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) **XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND** = `2`

Alpha blend mode. This is typically used for AR or VR devices with passthrough capabilities. The alpha channel controls how much of the passthrough is visible. Alpha of 0.0 means the passthrough is visible and this pixel works in ADDITIVE mode. Alpha of 1.0 means that the passthrough is not visible and this pixel works in OPAQUE mode.

* * *

enum **VRSTextureFormat**: [🔗](#enum-xrinterface-vrstextureformat)

[VRSTextureFormat](#enum-xrinterface-vrstextureformat) **XR\_VRS\_TEXTURE\_FORMAT\_UNIFIED** = `0`

The texture format is the same as returned by [XRVRS.make\_vrs\_texture()](class_xrvrs.md#class-xrvrs-method-make-vrs-texture).

[VRSTextureFormat](#enum-xrinterface-vrstextureformat) **XR\_VRS\_TEXTURE\_FORMAT\_FRAGMENT\_SHADING\_RATE** = `1`

The texture format is the same as expected by the Vulkan `VK_KHR_fragment_shading_rate` extension.

[VRSTextureFormat](#enum-xrinterface-vrstextureformat) **XR\_VRS\_TEXTURE\_FORMAT\_FRAGMENT\_DENSITY\_MAP** = `2`

The texture format is the same as expected by the Vulkan `VK_EXT_fragment_density_map` extension.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **ar\_is\_anchor\_detection\_enabled** = `false` [🔗](#class-xrinterface-property-ar-is-anchor-detection-enabled)

- void **set\_anchor\_detection\_is\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_anchor\_detection\_is\_enabled**()


On an AR interface, `true` if anchor detection is enabled.

* * *

[EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) **environment\_blend\_mode** = `0` [🔗](#class-xrinterface-property-environment-blend-mode)

- [bool](class_bool.md#class-bool) **set\_environment\_blend\_mode**(mode: [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode))

- [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode) **get\_environment\_blend\_mode**()


Specify how XR should blend in the environment. This is specific to certain AR and passthrough devices where camera images are blended in by the XR compositor.

* * *

[bool](class_bool.md#class-bool) **interface\_is\_primary** = `false` [🔗](#class-xrinterface-property-interface-is-primary)

- void **set\_primary**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_primary**()


`true` if this is the primary interface.

* * *

[PlayAreaMode](#enum-xrinterface-playareamode) **xr\_play\_area\_mode** = `0` [🔗](#class-xrinterface-property-xr-play-area-mode)

- [bool](class_bool.md#class-bool) **set\_play\_area\_mode**(mode: [PlayAreaMode](#enum-xrinterface-playareamode))

- [PlayAreaMode](#enum-xrinterface-playareamode) **get\_play\_area\_mode**()


The play area mode for this interface.

* * *

## Method Descriptions

[int](class_int.md#class-int) **get\_camera\_feed\_id**() [🔗](#class-xrinterface-method-get-camera-feed-id)

If this is an AR interface that requires displaying a camera feed as the background, this method returns the feed ID in the [CameraServer](class_cameraserver.md#class-cameraserver) for this interface.

* * *

[int](class_int.md#class-int) **get\_capabilities**() const [🔗](#class-xrinterface-method-get-capabilities)

Returns a combination of [Capabilities](#enum-xrinterface-capabilities) flags providing information about the capabilities of this interface.

* * *

[StringName](class_stringname.md#class-stringname) **get\_name**() const [🔗](#class-xrinterface-method-get-name)

Returns the name of this interface ( `"OpenXR"`, `"OpenVR"`, `"OpenHMD"`, `"ARKit"`, etc.).

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_play\_area**() const [🔗](#class-xrinterface-method-get-play-area)

Returns an array of vectors that represent the physical play area mapped to the virtual space around the [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) point. The points form a convex polygon that can be used to react to or visualize the play area. This returns an empty array if this feature is not supported or if the information is not yet available.

* * *

[Projection](class_projection.md#class-projection) **get\_projection\_for\_view**(view: [int](class_int.md#class-int), aspect: [float](class_float.md#class-float), near: [float](class_float.md#class-float), far: [float](class_float.md#class-float)) [🔗](#class-xrinterface-method-get-projection-for-view)

Returns the projection matrix for a view/eye.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_render\_target\_size**() [🔗](#class-xrinterface-method-get-render-target-size)

Returns the resolution at which we should render our intermediate results before things like lens distortion are applied by the VR platform.

* * *

[Array](class_array.md#class-array) **get\_supported\_environment\_blend\_modes**() [🔗](#class-xrinterface-method-get-supported-environment-blend-modes)

Returns the an array of supported environment blend modes, see [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_system\_info**() [🔗](#class-xrinterface-method-get-system-info)

Returns a [Dictionary](class_dictionary.md#class-dictionary) with extra system info. Interfaces are expected to return `XRRuntimeName` and `XRRuntimeVersion` providing info about the used XR runtime. Additional entries may be provided specific to an interface.

**Note:** This information may only be available after [initialize()](#class-xrinterface-method-initialize) was successfully called.

* * *

[TrackingStatus](#enum-xrinterface-trackingstatus) **get\_tracking\_status**() const [🔗](#class-xrinterface-method-get-tracking-status)

If supported, returns the status of our tracking. This will allow you to provide feedback to the user whether there are issues with positional tracking.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_transform\_for\_view**(view: [int](class_int.md#class-int), cam\_transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-xrinterface-method-get-transform-for-view)

Returns the transform for a view/eye.

`view` is the view/eye index.

`cam_transform` is the transform that maps device coordinates to scene coordinates, typically the [Node3D.global\_transform](class_node3d.md#class-node3d-property-global-transform) of the current XROrigin3D.

* * *

[int](class_int.md#class-int) **get\_view\_count**() [🔗](#class-xrinterface-method-get-view-count)

Returns the number of views that need to be rendered for this device. 1 for Monoscopic, 2 for Stereoscopic.

* * *

[bool](class_bool.md#class-bool) **initialize**() [🔗](#class-xrinterface-method-initialize)

Call this to initialize this interface. The first interface that is initialized is identified as the primary interface and it will be used for rendering output.

After initializing the interface you want to use you then need to enable the AR/VR mode of a viewport and rendering should commence.

**Note:** You must enable the XR mode on the main viewport for any device that uses the main output of Godot, such as for mobile VR.

If you do this for a platform that handles its own output (such as OpenVR) Godot will show just one eye without distortion on screen. Alternatively, you can add a separate viewport node to your scene and enable AR/VR on that viewport. It will be used to output to the HMD, leaving you free to do anything you like in the main window, such as using a separate camera as a spectator camera or rendering something completely different.

While currently not used, you can activate additional interfaces. You may wish to do this if you want to track controllers from other platforms. However, at this point in time only one interface can render to an HMD.

* * *

[bool](class_bool.md#class-bool) **is\_initialized**() const [🔗](#class-xrinterface-method-is-initialized)

Returns `true` if this interface has been initialized.

* * *

[bool](class_bool.md#class-bool) **is\_passthrough\_enabled**() [🔗](#class-xrinterface-method-is-passthrough-enabled)

**Deprecated:** Check if [environment\_blend\_mode](#class-xrinterface-property-environment-blend-mode) is [XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](#class-xrinterface-constant-xr-env-blend-mode-alpha-blend), instead.

Returns `true` if passthrough is enabled.

* * *

[bool](class_bool.md#class-bool) **is\_passthrough\_supported**() [🔗](#class-xrinterface-method-is-passthrough-supported)

**Deprecated:** Check that [XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) is supported using [get\_supported\_environment\_blend\_modes()](#class-xrinterface-method-get-supported-environment-blend-modes), instead.

Returns `true` if this interface supports passthrough.

* * *

[bool](class_bool.md#class-bool) **set\_environment\_blend\_mode**(mode: [EnvironmentBlendMode](#enum-xrinterface-environmentblendmode)) [🔗](#class-xrinterface-method-set-environment-blend-mode)

Sets the active environment blend mode.

`mode` is the environment blend mode starting with the next frame.

**Note:** Not all runtimes support all environment blend modes, so it is important to check this at startup. For example:

```
func _ready():
    var xr_interface = XRServer.find_interface("OpenXR")
    if xr_interface and xr_interface.is_initialized():
        var vp = get_viewport()
        vp.use_xr = true
        var acceptable_modes = [XRInterface.XR_ENV_BLEND_MODE_OPAQUE, XRInterface.XR_ENV_BLEND_MODE_ADDITIVE]
        var modes = xr_interface.get_supported_environment_blend_modes()
        for mode in acceptable_modes:
            if mode in modes:
                xr_interface.set_environment_blend_mode(mode)
                break

```

* * *

[bool](class_bool.md#class-bool) **set\_play\_area\_mode**(mode: [PlayAreaMode](#enum-xrinterface-playareamode)) [🔗](#class-xrinterface-method-set-play-area-mode)

Sets the active play area mode, will return `false` if the mode can't be used with this interface.

**Note:** Changing this after the interface has already been initialized can be jarring for the player, so it's recommended to recenter on the HMD with [XRServer.center\_on\_hmd()](class_xrserver.md#class-xrserver-method-center-on-hmd) (if switching to [XR\_PLAY\_AREA\_STAGE](#class-xrinterface-constant-xr-play-area-stage)) or make the switch during a scene change.

* * *

[bool](class_bool.md#class-bool) **start\_passthrough**() [🔗](#class-xrinterface-method-start-passthrough)

**Deprecated:** Set the [environment\_blend\_mode](#class-xrinterface-property-environment-blend-mode) to [XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](#class-xrinterface-constant-xr-env-blend-mode-alpha-blend), instead.

Starts passthrough, will return `false` if passthrough couldn't be started.

**Note:** The viewport used for XR must have a transparent background, otherwise passthrough may not properly render.

* * *

void **stop\_passthrough**() [🔗](#class-xrinterface-method-stop-passthrough)

**Deprecated:** Set the [environment\_blend\_mode](#class-xrinterface-property-environment-blend-mode) to [XR\_ENV\_BLEND\_MODE\_OPAQUE](#class-xrinterface-constant-xr-env-blend-mode-opaque), instead.

Stops passthrough.

* * *

[bool](class_bool.md#class-bool) **supports\_play\_area\_mode**(mode: [PlayAreaMode](#enum-xrinterface-playareamode)) [🔗](#class-xrinterface-method-supports-play-area-mode)

Call this to find out if a given play area mode is supported by this interface.

* * *

void **trigger\_haptic\_pulse**(action\_name: [String](class_string.md#class-string), tracker\_name: [StringName](class_stringname.md#class-stringname), frequency: [float](class_float.md#class-float), amplitude: [float](class_float.md#class-float), duration\_sec: [float](class_float.md#class-float), delay\_sec: [float](class_float.md#class-float)) [🔗](#class-xrinterface-method-trigger-haptic-pulse)

Triggers a haptic pulse on a device associated with this interface.

`action_name` is the name of the action for this pulse.

`tracker_name` is optional and can be used to direct the pulse to a specific device provided that device is bound to this haptic.

`frequency` is the frequency of the pulse, set to `0.0` to have the system use a default frequency.

`amplitude` is the amplitude of the pulse between `0.0` and `1.0`.

`duration_sec` is the duration of the pulse in seconds.

`delay_sec` is a delay in seconds before the pulse is given.

* * *

void **uninitialize**() [🔗](#class-xrinterface-method-uninitialize)

Turns the interface off.

[Previous](class_xrhandtracker.md "XRHandTracker") [Next](class_xrinterfaceextension.md "XRInterfaceExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrhandtracker.md "XRHandTracker") [Next](class_xrinterfaceextension.md "XRInterfaceExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).