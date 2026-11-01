---
title: WebXRInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_webxrinterface.html
crawled_at: "2026-08-13T10:31:19+12:00"
content_hash: d2e272f504b99e80d452cddc9073636aa351080d41fd7e9f00d004709dd2d7e8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WebXRInterface

* * *

# WebXRInterface

**Inherits:** [XRInterface](class_xrinterface.md#class-xrinterface) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

XR interface using WebXR.

## Description

WebXR is an open standard that allows creating VR and AR applications that run in the web browser.

As such, this interface is only available when running in Web exports.

WebXR supports a wide range of devices, from the very capable (like Valve Index, HTC Vive, Oculus Rift and Quest) down to the much less capable (like Google Cardboard, Oculus Go, GearVR, or plain smartphones).

Since WebXR is based on JavaScript, it makes extensive use of callbacks, which means that **WebXRInterface** is forced to use signals, where other XR interfaces would instead use functions that return a result immediately. This makes **WebXRInterface** quite a bit more complicated to initialize than other XR interfaces.

Here's the minimum code required to start an immersive VR session:

```
extends Node3D

var webxr_interface
var vr_supported = false

func _ready():
    # We assume this node has a button as a child.
    # This button is for the user to consent to entering immersive VR mode.
    $Button.pressed.connect(self._on_button_pressed)

    webxr_interface = XRServer.find_interface("WebXR")
    if webxr_interface:
        # WebXR uses a lot of asynchronous callbacks, so we connect to various
        # signals in order to receive them.
        webxr_interface.session_supported.connect(self._webxr_session_supported)
        webxr_interface.session_started.connect(self._webxr_session_started)
        webxr_interface.session_ended.connect(self._webxr_session_ended)
        webxr_interface.session_failed.connect(self._webxr_session_failed)

        # This returns immediately - our _webxr_session_supported() method
        # (which we connected to the "session_supported" signal above) will
        # be called sometime later to let us know if it's supported or not.
        webxr_interface.is_session_supported("immersive-vr")

func _webxr_session_supported(session_mode, supported):
    if session_mode == 'immersive-vr':
        vr_supported = supported

func _on_button_pressed():
    if not vr_supported:
        OS.alert("Your browser doesn't support VR")
        return

    # We want an immersive VR session, as opposed to AR ('immersive-ar') or a
    # simple 3DoF viewer ('viewer').
    webxr_interface.session_mode = 'immersive-vr'
    # 'bounded-floor' is room scale, 'local-floor' is a standing or sitting
    # experience (it puts you 1.6m above the ground if you have 3DoF headset),
    # whereas as 'local' puts you down at the XROrigin.
    # This list means it'll first try to request 'bounded-floor', then
    # fallback on 'local-floor' and ultimately 'local', if nothing else is
    # supported.
    webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
    # In order to use 'local-floor' or 'bounded-floor' we must also
    # mark the features as required or optional. By including 'hand-tracking'
    # as an optional feature, it will be enabled if supported.
    webxr_interface.required_features = 'local-floor'
    webxr_interface.optional_features = 'bounded-floor, hand-tracking'

    # This will return false if we're unable to even request the session,
    # however, it can still fail asynchronously later in the process, so we
    # only know if it's really succeeded or failed when our
    # _webxr_session_started() or _webxr_session_failed() methods are called.
    if not webxr_interface.initialize():
        OS.alert("Failed to initialize")
        return

func _webxr_session_started():
    $Button.visible = false
    # This tells Godot to start rendering to the headset.
    get_viewport().use_xr = true
    # This will be the reference space type you ultimately got, out of the
    # types that you requested above. This is useful if you want the game to
    # work a little differently in 'bounded-floor' versus 'local-floor'.
    print("Reference space type: ", webxr_interface.reference_space_type)
    # This will be the list of features that were successfully enabled
    # (except on browsers that don't support this property).
    print("Enabled features: ", webxr_interface.enabled_features)

func _webxr_session_ended():
    $Button.visible = true
    # If the user exits immersive mode, then we tell Godot to render to the web
    # page again.
    get_viewport().use_xr = false

func _webxr_session_failed(message):
    OS.alert("Failed to initialize: " + message)

```

There are a couple ways to handle "controller" input:

- Using [XRController3D](class_xrcontroller3d.md#class-xrcontroller3d) nodes and their [XRController3D.button\_pressed](class_xrcontroller3d.md#class-xrcontroller3d-signal-button-pressed) and [XRController3D.button\_released](class_xrcontroller3d.md#class-xrcontroller3d-signal-button-released) signals. This is how controllers are typically handled in XR apps in Godot, however, this will only work with advanced VR controllers like the Oculus Touch or Index controllers, for example.

- Using the [select](#class-webxrinterface-signal-select), [squeeze](#class-webxrinterface-signal-squeeze) and related signals. This method will work for both advanced VR controllers, and non-traditional input sources like a tap on the screen, a spoken voice command or a button press on the device itself.


You can use both methods to allow your game or app to support a wider or narrower set of devices and input methods, or to allow more advanced interactions with more advanced devices.

## Tutorials

- [How to make a VR game for WebXR with Godot 4](https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [enabled\_features](#class-webxrinterface-property-enabled-features) |
| [String](class_string.md#class-string) | [optional\_features](#class-webxrinterface-property-optional-features) |
| [String](class_string.md#class-string) | [reference\_space\_type](#class-webxrinterface-property-reference-space-type) |
| [String](class_string.md#class-string) | [requested\_reference\_space\_types](#class-webxrinterface-property-requested-reference-space-types) |
| [String](class_string.md#class-string) | [required\_features](#class-webxrinterface-property-required-features) |
| [String](class_string.md#class-string) | [session\_mode](#class-webxrinterface-property-session-mode) |
| [String](class_string.md#class-string) | [visibility\_state](#class-webxrinterface-property-visibility-state) |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array) | [get\_available\_display\_refresh\_rates](#class-webxrinterface-method-get-available-display-refresh-rates)() const |
| [float](class_float.md#class-float) | [get\_display\_refresh\_rate](#class-webxrinterface-method-get-display-refresh-rate)() const |
| [TargetRayMode](#enum-webxrinterface-targetraymode) | [get\_input\_source\_target\_ray\_mode](#class-webxrinterface-method-get-input-source-target-ray-mode)(input\_source\_id: [int](class_int.md#class-int)) const |
| [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker) | [get\_input\_source\_tracker](#class-webxrinterface-method-get-input-source-tracker)(input\_source\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_input\_source\_active](#class-webxrinterface-method-is-input-source-active)(input\_source\_id: [int](class_int.md#class-int)) const |
| void | [is\_session\_supported](#class-webxrinterface-method-is-session-supported)(session\_mode: [String](class_string.md#class-string)) |
| void | [set\_display\_refresh\_rate](#class-webxrinterface-method-set-display-refresh-rate)(refresh\_rate: [float](class_float.md#class-float)) |

* * *

## Signals

**display\_refresh\_rate\_changed**() [🔗](#class-webxrinterface-signal-display-refresh-rate-changed)

Emitted after the display's refresh rate has changed.

* * *

**reference\_space\_reset**() [🔗](#class-webxrinterface-signal-reference-space-reset)

Emitted to indicate that the reference space has been reset or reconfigured.

When (or whether) this is emitted depends on the user's browser or device, but may include when the user has changed the dimensions of their play space (which you may be able to access via [XRInterface.get\_play\_area()](class_xrinterface.md#class-xrinterface-method-get-play-area)) or pressed/held a button to recenter their position.

See [WebXR's XRReferenceSpace reset event](https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event) for more information.

* * *

**select**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-select)

Emitted after one of the input sources has finished its "primary action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**selectend**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-selectend)

Emitted when one of the input sources has finished its "primary action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**selectstart**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-selectstart)

Emitted when one of the input source has started its "primary action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**session\_ended**() [🔗](#class-webxrinterface-signal-session-ended)

Emitted when the user ends the WebXR session (which can be done using UI from the browser or device).

At this point, you should do `get_viewport().use_xr = false` to instruct Godot to resume rendering to the screen.

* * *

**session\_failed**(message: [String](class_string.md#class-string)) [🔗](#class-webxrinterface-signal-session-failed)

Emitted by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) if the session fails to start.

`message` may optionally contain an error message from WebXR, or an empty string if no message is available.

* * *

**session\_started**() [🔗](#class-webxrinterface-signal-session-started)

Emitted by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) if the session is successfully started.

At this point, it's safe to do `get_viewport().use_xr = true` to instruct Godot to start rendering to the XR device.

* * *

**session\_supported**(session\_mode: [String](class_string.md#class-string), supported: [bool](class_bool.md#class-bool)) [🔗](#class-webxrinterface-signal-session-supported)

Emitted by [is\_session\_supported()](#class-webxrinterface-method-is-session-supported) to indicate if the given `session_mode` is supported or not.

* * *

**squeeze**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-squeeze)

Emitted after one of the input sources has finished its "primary squeeze action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**squeezeend**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-squeezeend)

Emitted when one of the input sources has finished its "primary squeeze action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**squeezestart**(input\_source\_id: [int](class_int.md#class-int)) [🔗](#class-webxrinterface-signal-squeezestart)

Emitted when one of the input sources has started its "primary squeeze action".

Use [get\_input\_source\_tracker()](#class-webxrinterface-method-get-input-source-tracker) and [get\_input\_source\_target\_ray\_mode()](#class-webxrinterface-method-get-input-source-target-ray-mode) to get more information about the input source.

* * *

**visibility\_state\_changed**() [🔗](#class-webxrinterface-signal-visibility-state-changed)

Emitted when [visibility\_state](#class-webxrinterface-property-visibility-state) has changed.

* * *

## Enumerations

enum **TargetRayMode**: [🔗](#enum-webxrinterface-targetraymode)

[TargetRayMode](#enum-webxrinterface-targetraymode) **TARGET\_RAY\_MODE\_UNKNOWN** = `0`

We don't know the target ray mode.

[TargetRayMode](#enum-webxrinterface-targetraymode) **TARGET\_RAY\_MODE\_GAZE** = `1`

Target ray originates at the viewer's eyes and points in the direction they are looking.

[TargetRayMode](#enum-webxrinterface-targetraymode) **TARGET\_RAY\_MODE\_TRACKED\_POINTER** = `2`

Target ray from a handheld pointer, most likely a VR touch controller.

[TargetRayMode](#enum-webxrinterface-targetraymode) **TARGET\_RAY\_MODE\_SCREEN** = `3`

Target ray from touch screen, mouse or other tactile input device.

* * *

## Property Descriptions

[String](class_string.md#class-string) **enabled\_features** [🔗](#class-webxrinterface-property-enabled-features)

- [String](class_string.md#class-string) **get\_enabled\_features**()


A comma-separated list of features that were successfully enabled by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

This may include features requested by setting [required\_features](#class-webxrinterface-property-required-features) and [optional\_features](#class-webxrinterface-property-optional-features), and will only be available after [session\_started](#class-webxrinterface-signal-session-started) has been emitted.

**Note:** This may not be support by all web browsers, in which case it will be an empty string.

* * *

[String](class_string.md#class-string) **optional\_features** [🔗](#class-webxrinterface-property-optional-features)

- void **set\_optional\_features**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_optional\_features**()


A comma-seperated list of optional features used by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on [WebXR's session features](https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features) for a list of possible values.

* * *

[String](class_string.md#class-string) **reference\_space\_type** [🔗](#class-webxrinterface-property-reference-space-type)

- [String](class_string.md#class-string) **get\_reference\_space\_type**()


The reference space type (from the list of requested types set in the [requested\_reference\_space\_types](#class-webxrinterface-property-requested-reference-space-types) property), that was ultimately used by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

Possible values come from [WebXR's XRReferenceSpaceType](https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either [required\_features](#class-webxrinterface-property-required-features) or [optional\_features](#class-webxrinterface-property-optional-features).

* * *

[String](class_string.md#class-string) **requested\_reference\_space\_types** [🔗](#class-webxrinterface-property-requested-reference-space-types)

- void **set\_requested\_reference\_space\_types**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_requested\_reference\_space\_types**()


A comma-seperated list of reference space types used by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

The reference space types are requested in order, and the first one supported by the user's device or browser will be used. The [reference\_space\_type](#class-webxrinterface-property-reference-space-type) property contains the reference space type that was ultimately selected.

This doesn't have any effect on the interface when already initialized.

Possible values come from [WebXR's XRReferenceSpaceType](https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType). If you want to use a particular reference space type, it must be listed in either [required\_features](#class-webxrinterface-property-required-features) or [optional\_features](#class-webxrinterface-property-optional-features).

* * *

[String](class_string.md#class-string) **required\_features** [🔗](#class-webxrinterface-property-required-features)

- void **set\_required\_features**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_required\_features**()


A comma-seperated list of required features used by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

If a user's browser or device doesn't support one of the given features, initialization will fail and [session\_failed](#class-webxrinterface-signal-session-failed) will be emitted.

This doesn't have any effect on the interface when already initialized.

See the MDN documentation on [WebXR's session features](https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features) for a list of possible values.

* * *

[String](class_string.md#class-string) **session\_mode** [🔗](#class-webxrinterface-property-session-mode)

- void **set\_session\_mode**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_session\_mode**()


The session mode used by [XRInterface.initialize()](class_xrinterface.md#class-xrinterface-method-initialize) when setting up the WebXR session.

This doesn't have any effect on the interface when already initialized.

Possible values come from [WebXR's XRSessionMode](https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.

* * *

[String](class_string.md#class-string) **visibility\_state** [🔗](#class-webxrinterface-property-visibility-state)

- [String](class_string.md#class-string) **get\_visibility\_state**()


Indicates if the WebXR session's imagery is visible to the user.

Possible values come from [WebXR's XRVisibilityState](https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState), including `"hidden"`, `"visible"`, and `"visible-blurred"`.

* * *

## Method Descriptions

[Array](class_array.md#class-array) **get\_available\_display\_refresh\_rates**() const [🔗](#class-webxrinterface-method-get-available-display-refresh-rates)

Returns display refresh rates supported by the current HMD. Only returned if this feature is supported by the web browser and after the interface has been initialized.

* * *

[float](class_float.md#class-float) **get\_display\_refresh\_rate**() const [🔗](#class-webxrinterface-method-get-display-refresh-rate)

Returns the display refresh rate for the current HMD. Not supported on all HMDs and browsers. It may not report an accurate value until after using [set\_display\_refresh\_rate()](#class-webxrinterface-method-set-display-refresh-rate).

* * *

[TargetRayMode](#enum-webxrinterface-targetraymode) **get\_input\_source\_target\_ray\_mode**(input\_source\_id: [int](class_int.md#class-int)) const [🔗](#class-webxrinterface-method-get-input-source-target-ray-mode)

Returns the target ray mode for the given `input_source_id`.

This can help interpret the input coming from that input source. See [XRInputSource.targetRayMode](https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode) for more information.

* * *

[XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker) **get\_input\_source\_tracker**(input\_source\_id: [int](class_int.md#class-int)) const [🔗](#class-webxrinterface-method-get-input-source-tracker)

Gets an [XRControllerTracker](class_xrcontrollertracker.md#class-xrcontrollertracker) for the given `input_source_id`.

In the context of WebXR, an input source can be an advanced VR controller like the Oculus Touch or Index controllers, or even a tap on the screen, a spoken voice command or a button press on the device itself. When a non-traditional input source is used, interpret the position and orientation of the [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) as a ray pointing at the object the user wishes to interact with.

Use this method to get information about the input source that triggered one of these signals:

- [selectstart](#class-webxrinterface-signal-selectstart)

- [select](#class-webxrinterface-signal-select)

- [selectend](#class-webxrinterface-signal-selectend)

- [squeezestart](#class-webxrinterface-signal-squeezestart)

- [squeeze](#class-webxrinterface-signal-squeeze)

- [squeezestart](#class-webxrinterface-signal-squeezestart)


* * *

[bool](class_bool.md#class-bool) **is\_input\_source\_active**(input\_source\_id: [int](class_int.md#class-int)) const [🔗](#class-webxrinterface-method-is-input-source-active)

Returns `true` if there is an active input source with the given `input_source_id`.

* * *

void **is\_session\_supported**(session\_mode: [String](class_string.md#class-string)) [🔗](#class-webxrinterface-method-is-session-supported)

Checks if the given `session_mode` is supported by the user's browser.

Possible values come from [WebXR's XRSessionMode](https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.

This method returns nothing, instead it emits the [session\_supported](#class-webxrinterface-signal-session-supported) signal with the result.

* * *

void **set\_display\_refresh\_rate**(refresh\_rate: [float](class_float.md#class-float)) [🔗](#class-webxrinterface-method-set-display-refresh-rate)

Sets the display refresh rate for the current HMD. Not supported on all HMDs and browsers. It won't take effect right away until after [display\_refresh\_rate\_changed](#class-webxrinterface-signal-display-refresh-rate-changed) is emitted.

[Previous](class_websocketpeer.md "WebSocketPeer") [Next](class_workerthreadpool.md "WorkerThreadPool")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_websocketpeer.md "WebSocketPeer") [Next](class_workerthreadpool.md "WorkerThreadPool")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).