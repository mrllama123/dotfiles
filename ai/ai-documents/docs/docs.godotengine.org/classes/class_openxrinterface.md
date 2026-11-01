---
title: OpenXRInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrinterface.html
crawled_at: "2026-08-13T10:39:38+12:00"
content_hash: 7d13182d28c26c8d6bf3346624c838916a2311541269d38ddea82a9ad7202a0f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRInterface

* * *

# OpenXRInterface

**Inherits:** [XRInterface](class_xrinterface.md#class-xrinterface) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Our OpenXR interface.

## Description

The OpenXR interface allows Godot to interact with OpenXR runtimes and make it possible to create XR experiences and games.

Due to the needs of OpenXR this interface works slightly different than other plugin based XR interfaces. It needs to be initialized when Godot starts. You need to enable OpenXR, settings for this can be found in your games project settings under the XR heading. You do need to mark a viewport for use with XR in order for Godot to know which render result should be output to the headset.

## Tutorials

- [Setting up XR](../tutorials/xr/setting_up_xr.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [display\_refresh\_rate](#class-openxrinterface-property-display-refresh-rate) | `0.0` |
| [bool](class_bool.md#class-bool) | [foveation\_dynamic](#class-openxrinterface-property-foveation-dynamic) | `false` |
| [int](class_int.md#class-int) | [foveation\_level](#class-openxrinterface-property-foveation-level) | `0` |
| [float](class_float.md#class-float) | [render\_target\_size\_multiplier](#class-openxrinterface-property-render-target-size-multiplier) | `1.0` |
| [float](class_float.md#class-float) | [vrs\_min\_radius](#class-openxrinterface-property-vrs-min-radius) | `20.0` |
| [float](class_float.md#class-float) | [vrs\_strength](#class-openxrinterface-property-vrs-strength) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array) | [get\_action\_sets](#class-openxrinterface-method-get-action-sets)() const |
| [Array](class_array.md#class-array) | [get\_available\_display\_refresh\_rates](#class-openxrinterface-method-get-available-display-refresh-rates)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_hand\_joint\_angular\_velocity](#class-openxrinterface-method-get-hand-joint-angular-velocity)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| BitField\[ [HandJointFlags](#enum-openxrinterface-handjointflags)\] | [get\_hand\_joint\_flags](#class-openxrinterface-method-get-hand-joint-flags)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_hand\_joint\_linear\_velocity](#class-openxrinterface-method-get-hand-joint-linear-velocity)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_hand\_joint\_position](#class-openxrinterface-method-get-hand-joint-position)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| [float](class_float.md#class-float) | [get\_hand\_joint\_radius](#class-openxrinterface-method-get-hand-joint-radius)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| [Quaternion](class_quaternion.md#class-quaternion) | [get\_hand\_joint\_rotation](#class-openxrinterface-method-get-hand-joint-rotation)(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const |
| [HandTrackedSource](#enum-openxrinterface-handtrackedsource) | [get\_hand\_tracking\_source](#class-openxrinterface-method-get-hand-tracking-source)(hand: [Hand](#enum-openxrinterface-hand)) const |
| [HandMotionRange](#enum-openxrinterface-handmotionrange) | [get\_motion\_range](#class-openxrinterface-method-get-motion-range)(hand: [Hand](#enum-openxrinterface-hand)) const |
| [SessionState](#enum-openxrinterface-sessionstate) | [get\_session\_state](#class-openxrinterface-method-get-session-state)() |
| [bool](class_bool.md#class-bool) | [is\_action\_set\_active](#class-openxrinterface-method-is-action-set-active)(name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_eye\_gaze\_interaction\_supported](#class-openxrinterface-method-is-eye-gaze-interaction-supported)() |
| [bool](class_bool.md#class-bool) | [is\_foveation\_supported](#class-openxrinterface-method-is-foveation-supported)() const |
| [bool](class_bool.md#class-bool) | [is\_hand\_interaction\_supported](#class-openxrinterface-method-is-hand-interaction-supported)() const |
| [bool](class_bool.md#class-bool) | [is\_hand\_tracking\_supported](#class-openxrinterface-method-is-hand-tracking-supported)() |
| void | [set\_action\_set\_active](#class-openxrinterface-method-set-action-set-active)(name: [String](class_string.md#class-string), active: [bool](class_bool.md#class-bool)) |
| void | [set\_cpu\_level](#class-openxrinterface-method-set-cpu-level)(level: [PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel)) |
| void | [set\_gpu\_level](#class-openxrinterface-method-set-gpu-level)(level: [PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel)) |
| void | [set\_motion\_range](#class-openxrinterface-method-set-motion-range)(hand: [Hand](#enum-openxrinterface-hand), motion\_range: [HandMotionRange](#enum-openxrinterface-handmotionrange)) |

* * *

## Signals

**cpu\_level\_changed**(sub\_domain: [int](class_int.md#class-int), from\_level: [int](class_int.md#class-int), to\_level: [int](class_int.md#class-int)) [🔗](#class-openxrinterface-signal-cpu-level-changed)

Informs the device CPU performance level has changed in the specified subdomain.

* * *

**gpu\_level\_changed**(sub\_domain: [int](class_int.md#class-int), from\_level: [int](class_int.md#class-int), to\_level: [int](class_int.md#class-int)) [🔗](#class-openxrinterface-signal-gpu-level-changed)

Informs the device GPU performance level has changed in the specified subdomain.

* * *

**instance\_exiting**() [🔗](#class-openxrinterface-signal-instance-exiting)

Informs our OpenXR instance is exiting.

* * *

**pose\_recentered**() [🔗](#class-openxrinterface-signal-pose-recentered)

Informs the user queued a recenter of the player position.

* * *

**refresh\_rate\_changed**(refresh\_rate: [float](class_float.md#class-float)) [🔗](#class-openxrinterface-signal-refresh-rate-changed)

Informs the user the HMD refresh rate has changed.

**Note:** Only emitted if XR runtime supports the refresh rate extension.

* * *

**session\_begun**() [🔗](#class-openxrinterface-signal-session-begun)

Informs our OpenXR session has been started.

* * *

**session\_focussed**() [🔗](#class-openxrinterface-signal-session-focussed)

Informs our OpenXR session now has focus, for example output is sent to the HMD and we're receiving XR input.

* * *

**session\_loss\_pending**() [🔗](#class-openxrinterface-signal-session-loss-pending)

Informs our OpenXR session is in the process of being lost.

* * *

**session\_stopping**() [🔗](#class-openxrinterface-signal-session-stopping)

Informs our OpenXR session is stopping.

* * *

**session\_synchronized**() [🔗](#class-openxrinterface-signal-session-synchronized)

Informs our OpenXR session has been synchronized.

* * *

**session\_visible**() [🔗](#class-openxrinterface-signal-session-visible)

Informs our OpenXR session is now visible, for example output is sent to the HMD but we don't receive XR input.

* * *

## Enumerations

enum **SessionState**: [🔗](#enum-openxrinterface-sessionstate)

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_UNKNOWN** = `0`

The state of the session is unknown, we haven't tried setting up OpenXR yet.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_IDLE** = `1`

The initial state after the OpenXR session is created or after the session is destroyed.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_READY** = `2`

OpenXR is ready to begin our session. [session\_begun](#class-openxrinterface-signal-session-begun) is emitted when we change to this state.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_SYNCHRONIZED** = `3`

The application has synched its frame loop with the runtime but we're not rendering anything. [session\_synchronized](#class-openxrinterface-signal-session-synchronized) is emitted when we change to this state.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_VISIBLE** = `4`

The application has synched its frame loop with the runtime and we're rendering output to the user, however we receive no user input. [session\_visible](#class-openxrinterface-signal-session-visible) is emitted when we change to this state.

**Note:** This is the current state just before we get the focused state, whenever the user opens a system menu, switches to another application, or takes off their headset.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_FOCUSED** = `5`

The application has synched its frame loop with the runtime, we're rendering output to the user and we're receiving XR input. [session\_focussed](#class-openxrinterface-signal-session-focussed) is emitted when we change to this state.

**Note:** This is the state OpenXR will be in when the user can fully interact with your game.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_STOPPING** = `6`

Our session is being stopped. [session\_stopping](#class-openxrinterface-signal-session-stopping) is emitted when we change to this state.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_LOSS\_PENDING** = `7`

The session is about to be lost. [session\_loss\_pending](#class-openxrinterface-signal-session-loss-pending) is emitted when we change to this state.

[SessionState](#enum-openxrinterface-sessionstate) **SESSION\_STATE\_EXITING** = `8`

The OpenXR instance is about to be destroyed and we're existing. [instance\_exiting](#class-openxrinterface-signal-instance-exiting) is emitted when we change to this state.

* * *

enum **Hand**: [🔗](#enum-openxrinterface-hand)

[Hand](#enum-openxrinterface-hand) **HAND\_LEFT** = `0`

Left hand.

[Hand](#enum-openxrinterface-hand) **HAND\_RIGHT** = `1`

Right hand.

[Hand](#enum-openxrinterface-hand) **HAND\_MAX** = `2`

Maximum value for the hand enum.

* * *

enum **HandMotionRange**: [🔗](#enum-openxrinterface-handmotionrange)

[HandMotionRange](#enum-openxrinterface-handmotionrange) **HAND\_MOTION\_RANGE\_UNOBSTRUCTED** = `0`

Full hand range, if user closes their hands, we make a full fist.

[HandMotionRange](#enum-openxrinterface-handmotionrange) **HAND\_MOTION\_RANGE\_CONFORM\_TO\_CONTROLLER** = `1`

Conform to controller, if user closes their hands, the tracked data conforms to the shape of the controller.

[HandMotionRange](#enum-openxrinterface-handmotionrange) **HAND\_MOTION\_RANGE\_MAX** = `2`

Maximum value for the motion range enum.

* * *

enum **HandTrackedSource**: [🔗](#enum-openxrinterface-handtrackedsource)

[HandTrackedSource](#enum-openxrinterface-handtrackedsource) **HAND\_TRACKED\_SOURCE\_UNKNOWN** = `0`

The source of hand tracking data is unknown (the extension is likely unsupported).

[HandTrackedSource](#enum-openxrinterface-handtrackedsource) **HAND\_TRACKED\_SOURCE\_UNOBSTRUCTED** = `1`

The source of hand tracking is unobstructed, this means that an accurate method of hand tracking is used, e.g. optical hand tracking, data gloves, etc.

[HandTrackedSource](#enum-openxrinterface-handtrackedsource) **HAND\_TRACKED\_SOURCE\_CONTROLLER** = `2`

The source of hand tracking is a controller, bone positions are inferred from controller inputs.

[HandTrackedSource](#enum-openxrinterface-handtrackedsource) **HAND\_TRACKED\_SOURCE\_MAX** = `3`

Represents the size of the [HandTrackedSource](#enum-openxrinterface-handtrackedsource) enum.

* * *

enum **HandJoints**: [🔗](#enum-openxrinterface-handjoints)

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_PALM** = `0`

Palm joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_WRIST** = `1`

Wrist joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_THUMB\_METACARPAL** = `2`

Thumb metacarpal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_THUMB\_PROXIMAL** = `3`

Thumb proximal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_THUMB\_DISTAL** = `4`

Thumb distal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_THUMB\_TIP** = `5`

Thumb tip joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_INDEX\_METACARPAL** = `6`

Index finger metacarpal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_INDEX\_PROXIMAL** = `7`

Index finger phalanx proximal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_INDEX\_INTERMEDIATE** = `8`

Index finger phalanx intermediate joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_INDEX\_DISTAL** = `9`

Index finger phalanx distal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_INDEX\_TIP** = `10`

Index finger tip joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MIDDLE\_METACARPAL** = `11`

Middle finger metacarpal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MIDDLE\_PROXIMAL** = `12`

Middle finger phalanx proximal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MIDDLE\_INTERMEDIATE** = `13`

Middle finger phalanx intermediate joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MIDDLE\_DISTAL** = `14`

Middle finger phalanx distal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MIDDLE\_TIP** = `15`

Middle finger tip joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_RING\_METACARPAL** = `16`

Ring finger metacarpal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_RING\_PROXIMAL** = `17`

Ring finger phalanx proximal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_RING\_INTERMEDIATE** = `18`

Ring finger phalanx intermediate joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_RING\_DISTAL** = `19`

Ring finger phalanx distal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_RING\_TIP** = `20`

Ring finger tip joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_LITTLE\_METACARPAL** = `21`

Pinky finger metacarpal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_LITTLE\_PROXIMAL** = `22`

Pinky finger phalanx proximal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_LITTLE\_INTERMEDIATE** = `23`

Pinky finger phalanx intermediate joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_LITTLE\_DISTAL** = `24`

Pinky finger phalanx distal joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_LITTLE\_TIP** = `25`

Pinky finger tip joint.

[HandJoints](#enum-openxrinterface-handjoints) **HAND\_JOINT\_MAX** = `26`

Represents the size of the [HandJoints](#enum-openxrinterface-handjoints) enum.

* * *

enum **PerfSettingsLevel**: [🔗](#enum-openxrinterface-perfsettingslevel)

[PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel) **PERF\_SETTINGS\_LEVEL\_POWER\_SAVINGS** = `0`

The application has entered a non-XR section (head-locked / static screen), during which power savings are to be prioritized.

[PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel) **PERF\_SETTINGS\_LEVEL\_SUSTAINED\_LOW** = `1`

The application has entered a low and stable complexity section, during which reducing power is more important than occasional late rendering frames.

[PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel) **PERF\_SETTINGS\_LEVEL\_SUSTAINED\_HIGH** = `2`

The application has entered a high or dynamic complexity section, during which the XR Runtime strives for consistent XR compositing and frame rendering within a thermally sustainable range.

[PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel) **PERF\_SETTINGS\_LEVEL\_BOOST** = `3`

The application has entered a section with very high complexity, during which the XR Runtime is allowed to step up beyond the thermally sustainable range.

* * *

enum **PerfSettingsSubDomain**: [🔗](#enum-openxrinterface-perfsettingssubdomain)

[PerfSettingsSubDomain](#enum-openxrinterface-perfsettingssubdomain) **PERF\_SETTINGS\_SUB\_DOMAIN\_COMPOSITING** = `0`

The compositing performance within the runtime has reached a new level.

[PerfSettingsSubDomain](#enum-openxrinterface-perfsettingssubdomain) **PERF\_SETTINGS\_SUB\_DOMAIN\_RENDERING** = `1`

The application rendering performance has reached a new level.

[PerfSettingsSubDomain](#enum-openxrinterface-perfsettingssubdomain) **PERF\_SETTINGS\_SUB\_DOMAIN\_THERMAL** = `2`

The temperature of the device has reached a new level.

* * *

enum **PerfSettingsNotificationLevel**: [🔗](#enum-openxrinterface-perfsettingsnotificationlevel)

[PerfSettingsNotificationLevel](#enum-openxrinterface-perfsettingsnotificationlevel) **PERF\_SETTINGS\_NOTIF\_LEVEL\_NORMAL** = `0`

The sub-domain has reached a level where no further actions other than currently applied are necessary.

[PerfSettingsNotificationLevel](#enum-openxrinterface-perfsettingsnotificationlevel) **PERF\_SETTINGS\_NOTIF\_LEVEL\_WARNING** = `1`

The sub-domain has reached an early warning level where the application should start proactive mitigation actions.

[PerfSettingsNotificationLevel](#enum-openxrinterface-perfsettingsnotificationlevel) **PERF\_SETTINGS\_NOTIF\_LEVEL\_IMPAIRED** = `2`

The sub-domain has reached a critical level where the application should start drastic mitigation actions.

* * *

flags **HandJointFlags**: [🔗](#enum-openxrinterface-handjointflags)

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_NONE** = `0`

No flags are set.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_ORIENTATION\_VALID** = `1`

If set, the orientation data is valid, otherwise, the orientation data is unreliable and should not be used.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_ORIENTATION\_TRACKED** = `2`

If set, the orientation data comes from tracking data, otherwise, the orientation data contains predicted data.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_POSITION\_VALID** = `4`

If set, the positional data is valid, otherwise, the positional data is unreliable and should not be used.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_POSITION\_TRACKED** = `8`

If set, the positional data comes from tracking data, otherwise, the positional data contains predicted data.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_LINEAR\_VELOCITY\_VALID** = `16`

If set, our linear velocity data is valid, otherwise, the linear velocity data is unreliable and should not be used.

[HandJointFlags](#enum-openxrinterface-handjointflags) **HAND\_JOINT\_ANGULAR\_VELOCITY\_VALID** = `32`

If set, our angular velocity data is valid, otherwise, the angular velocity data is unreliable and should not be used.

* * *

## Property Descriptions

[float](class_float.md#class-float) **display\_refresh\_rate** = `0.0` [🔗](#class-openxrinterface-property-display-refresh-rate)

- void **set\_display\_refresh\_rate**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_display\_refresh\_rate**()


The display refresh rate for the current HMD. Only functional if this feature is supported by the OpenXR runtime and after the interface has been initialized.

* * *

[bool](class_bool.md#class-bool) **foveation\_dynamic** = `false` [🔗](#class-openxrinterface-property-foveation-dynamic)

- void **set\_foveation\_dynamic**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_foveation\_dynamic**()


Enable dynamic foveation adjustment, the interface must be initialized before this is accessible. If enabled foveation will automatically adjusted between low and [foveation\_level](#class-openxrinterface-property-foveation-level).

**Note:** Only works on the Compatibility renderer.

* * *

[int](class_int.md#class-int) **foveation\_level** = `0` [🔗](#class-openxrinterface-property-foveation-level)

- void **set\_foveation\_level**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_foveation\_level**()


Set foveation level from 0 (off) to 3 (high), the interface must be initialized before this is accessible.

**Note:** Only works on the Compatibility renderer.

* * *

[float](class_float.md#class-float) **render\_target\_size\_multiplier** = `1.0` [🔗](#class-openxrinterface-property-render-target-size-multiplier)

- void **set\_render\_target\_size\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_render\_target\_size\_multiplier**()


The render size multiplier for the current HMD. Must be set before the interface has been initialized.

* * *

[float](class_float.md#class-float) **vrs\_min\_radius** = `20.0` [🔗](#class-openxrinterface-property-vrs-min-radius)

- void **set\_vrs\_min\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_min\_radius**()


The minimum radius around the focal point where full quality is guaranteed if VRS is used as a percentage of screen size.

**Note:** Mobile and Forward+ renderers only. Requires [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to be set to [Viewport.VRS\_XR](class_viewport.md#class-viewport-constant-vrs-xr).

* * *

[float](class_float.md#class-float) **vrs\_strength** = `1.0` [🔗](#class-openxrinterface-property-vrs-strength)

- void **set\_vrs\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_strength**()


The strength used to calculate the VRS density map. The greater this value, the more noticeable VRS is. This improves performance at the cost of quality.

**Note:** Mobile and Forward+ renderers only. Requires [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to be set to [Viewport.VRS\_XR](class_viewport.md#class-viewport-constant-vrs-xr).

* * *

## Method Descriptions

[Array](class_array.md#class-array) **get\_action\_sets**() const [🔗](#class-openxrinterface-method-get-action-sets)

Returns a list of action sets registered with Godot (loaded from the action map at runtime).

* * *

[Array](class_array.md#class-array) **get\_available\_display\_refresh\_rates**() const [🔗](#class-openxrinterface-method-get-available-display-refresh-rates)

Returns display refresh rates supported by the current HMD. Only returned if this feature is supported by the OpenXR runtime and after the interface has been initialized.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_hand\_joint\_angular\_velocity**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-angular-velocity)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_angular\_velocity()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-angular-velocity) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns the angular velocity of a joint ( `joint`) of a hand ( `hand`) as provided by OpenXR. This is relative to [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d)!

* * *

BitField\[ [HandJointFlags](#enum-openxrinterface-handjointflags)\] **get\_hand\_joint\_flags**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-flags)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_flags()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-flags) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns flags that inform us of the validity of the tracking data.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_hand\_joint\_linear\_velocity**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-linear-velocity)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_linear\_velocity()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-linear-velocity) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns the linear velocity of a joint ( `joint`) of a hand ( `hand`) as provided by OpenXR. This is relative to [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) without worldscale applied!

* * *

[Vector3](class_vector3.md#class-vector3) **get\_hand\_joint\_position**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-position)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_transform()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-transform) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns the position of a joint ( `joint`) of a hand ( `hand`) as provided by OpenXR. This is relative to [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) without worldscale applied!

* * *

[float](class_float.md#class-float) **get\_hand\_joint\_radius**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-radius)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_radius()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-radius) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns the radius of a joint ( `joint`) of a hand ( `hand`) as provided by OpenXR. This is without worldscale applied!

* * *

[Quaternion](class_quaternion.md#class-quaternion) **get\_hand\_joint\_rotation**(hand: [Hand](#enum-openxrinterface-hand), joint: [HandJoints](#enum-openxrinterface-handjoints)) const [🔗](#class-openxrinterface-method-get-hand-joint-rotation)

**Deprecated:** Use [XRHandTracker.get\_hand\_joint\_transform()](class_xrhandtracker.md#class-xrhandtracker-method-get-hand-joint-transform) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled, returns the rotation of a joint ( `joint`) of a hand ( `hand`) as provided by OpenXR.

* * *

[HandTrackedSource](#enum-openxrinterface-handtrackedsource) **get\_hand\_tracking\_source**(hand: [Hand](#enum-openxrinterface-hand)) const [🔗](#class-openxrinterface-method-get-hand-tracking-source)

**Deprecated:** Use [XRHandTracker.hand\_tracking\_source](class_xrhandtracker.md#class-xrhandtracker-property-hand-tracking-source) obtained from [XRServer.get\_tracker()](class_xrserver.md#class-xrserver-method-get-tracker) instead.

If handtracking is enabled and hand tracking source is supported, gets the source of the hand tracking data for `hand`.

* * *

[HandMotionRange](#enum-openxrinterface-handmotionrange) **get\_motion\_range**(hand: [Hand](#enum-openxrinterface-hand)) const [🔗](#class-openxrinterface-method-get-motion-range)

If handtracking is enabled and motion range is supported, gets the currently configured motion range for `hand`.

* * *

[SessionState](#enum-openxrinterface-sessionstate) **get\_session\_state**() [🔗](#class-openxrinterface-method-get-session-state)

Returns the current state of our OpenXR session.

* * *

[bool](class_bool.md#class-bool) **is\_action\_set\_active**(name: [String](class_string.md#class-string)) const [🔗](#class-openxrinterface-method-is-action-set-active)

Returns `true` if the given action set is active.

* * *

[bool](class_bool.md#class-bool) **is\_eye\_gaze\_interaction\_supported**() [🔗](#class-openxrinterface-method-is-eye-gaze-interaction-supported)

Returns the capabilities of the eye gaze interaction extension.

**Note:** This only returns a valid value after OpenXR has been initialized.

* * *

[bool](class_bool.md#class-bool) **is\_foveation\_supported**() const [🔗](#class-openxrinterface-method-is-foveation-supported)

Returns `true` if OpenXR's foveation extension is supported, the interface must be initialized before this returns a valid value.

**Note:** This feature is only available on the Compatibility renderer and currently only available on some stand alone headsets. For Vulkan set [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to `VRS_XR` on desktop.

* * *

[bool](class_bool.md#class-bool) **is\_hand\_interaction\_supported**() const [🔗](#class-openxrinterface-method-is-hand-interaction-supported)

Returns `true` if OpenXR's hand interaction profile is supported and enabled.

**Note:** This only returns a valid value after OpenXR has been initialized.

* * *

[bool](class_bool.md#class-bool) **is\_hand\_tracking\_supported**() [🔗](#class-openxrinterface-method-is-hand-tracking-supported)

Returns `true` if OpenXR's hand tracking is supported and enabled.

**Note:** This only returns a valid value after OpenXR has been initialized.

* * *

void **set\_action\_set\_active**(name: [String](class_string.md#class-string), active: [bool](class_bool.md#class-bool)) [🔗](#class-openxrinterface-method-set-action-set-active)

Sets the given action set as active or inactive.

* * *

void **set\_cpu\_level**(level: [PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel)) [🔗](#class-openxrinterface-method-set-cpu-level)

Sets the CPU performance level of the OpenXR device.

* * *

void **set\_gpu\_level**(level: [PerfSettingsLevel](#enum-openxrinterface-perfsettingslevel)) [🔗](#class-openxrinterface-method-set-gpu-level)

Sets the GPU performance level of the OpenXR device.

* * *

void **set\_motion\_range**(hand: [Hand](#enum-openxrinterface-hand), motion\_range: [HandMotionRange](#enum-openxrinterface-handmotionrange)) [🔗](#class-openxrinterface-method-set-motion-range)

If handtracking is enabled and motion range is supported, sets the currently configured motion range for `hand` to `motion_range`.

[Previous](class_openxrinteractionprofilemetadata.md "OpenXRInteractionProfileMetadata") [Next](class_openxrrendermodelextension.md "OpenXRRenderModelExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrinteractionprofilemetadata.md "OpenXRInteractionProfileMetadata") [Next](class_openxrrendermodelextension.md "OpenXRRenderModelExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).