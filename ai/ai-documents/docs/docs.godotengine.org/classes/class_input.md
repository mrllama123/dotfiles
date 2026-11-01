---
title: Input — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_input.html
crawled_at: "2026-08-13T10:23:58+12:00"
content_hash: 87233ab10b860998ec990181497254c381278cf4c45e04a5362f1323c8f04f96
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Input

* * *

# Input

**Inherits:** [Object](class_object.md#class-object)

A singleton for handling inputs.

## Description

The **Input** singleton handles key presses, mouse buttons and movement, gamepads, and input actions. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the [InputMap](class_inputmap.md#class-inputmap) class.

**Note:** **Input**'s methods reflect the global input state and are not affected by [Control.accept\_event()](class_control.md#class-control-method-accept-event) or [Viewport.set\_input\_as\_handled()](class_viewport.md#class-viewport-method-set-input-as-handled), as those methods only deal with the way input is propagated in the [SceneTree](class_scenetree.md#class-scenetree).

## Tutorials

- [Inputs documentation index](../tutorials/inputs/index.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [emulate\_mouse\_from\_touch](#class-input-property-emulate-mouse-from-touch) |
| [bool](class_bool.md#class-bool) | [emulate\_touch\_from\_mouse](#class-input-property-emulate-touch-from-mouse) |
| [MouseMode](#enum-input-mousemode) | [mouse\_mode](#class-input-property-mouse-mode) |
| [bool](class_bool.md#class-bool) | [use\_accumulated\_input](#class-input-property-use-accumulated-input) |

## Methods

|     |     |
| --- | --- |
| void | [action\_press](#class-input-method-action-press)(action: [StringName](class_stringname.md#class-stringname), strength: [float](class_float.md#class-float) = 1.0) |
| void | [action\_release](#class-input-method-action-release)(action: [StringName](class_stringname.md#class-stringname)) |
| void | [add\_joy\_mapping](#class-input-method-add-joy-mapping)(mapping: [String](class_string.md#class-string), update\_existing: [bool](class_bool.md#class-bool) = false) |
| void | [flush\_buffered\_events](#class-input-method-flush-buffered-events)() |
| [Vector3](class_vector3.md#class-vector3) | [get\_accelerometer](#class-input-method-get-accelerometer)() const |
| [float](class_float.md#class-float) | [get\_action\_raw\_strength](#class-input-method-get-action-raw-strength)(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [float](class_float.md#class-float) | [get\_action\_strength](#class-input-method-get-action-strength)(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [float](class_float.md#class-float) | [get\_axis](#class-input-method-get-axis)(negative\_action: [StringName](class_stringname.md#class-stringname), positive\_action: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] | [get\_connected\_joypads](#class-input-method-get-connected-joypads)() |
| [CursorShape](#enum-input-cursorshape) | [get\_current\_cursor\_shape](#class-input-method-get-current-cursor-shape)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_gravity](#class-input-method-get-gravity)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_gyroscope](#class-input-method-get-gyroscope)() const |
| [float](class_float.md#class-float) | [get\_joy\_axis](#class-input-method-get-joy-axis)(device: [int](class_int.md#class-int), axis: [JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis)) const |
| [String](class_string.md#class-string) | [get\_joy\_guid](#class-input-method-get-joy-guid)(device: [int](class_int.md#class-int)) const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_joy\_info](#class-input-method-get-joy-info)(device: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_joy\_name](#class-input-method-get-joy-name)(device: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [get\_joy\_vibration\_duration](#class-input-method-get-joy-vibration-duration)(device: [int](class_int.md#class-int)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_joy\_vibration\_strength](#class-input-method-get-joy-vibration-strength)(device: [int](class_int.md#class-int)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_last\_mouse\_screen\_velocity](#class-input-method-get-last-mouse-screen-velocity)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_last\_mouse\_velocity](#class-input-method-get-last-mouse-velocity)() |
| [Vector3](class_vector3.md#class-vector3) | [get\_magnetometer](#class-input-method-get-magnetometer)() const |
| BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] | [get\_mouse\_button\_mask](#class-input-method-get-mouse-button-mask)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_vector](#class-input-method-get-vector)(negative\_x: [StringName](class_stringname.md#class-stringname), positive\_x: [StringName](class_stringname.md#class-stringname), negative\_y: [StringName](class_stringname.md#class-stringname), positive\_y: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float) = -1.0) const |
| [bool](class_bool.md#class-bool) | [is\_action\_just\_pressed](#class-input-method-is-action-just-pressed)(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_action\_just\_pressed\_by\_event](#class-input-method-is-action-just-pressed-by-event)(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_action\_just\_released](#class-input-method-is-action-just-released)(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_action\_just\_released\_by\_event](#class-input-method-is-action-just-released-by-event)(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_action\_pressed](#class-input-method-is-action-pressed)(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_anything\_pressed](#class-input-method-is-anything-pressed)() const |
| [bool](class_bool.md#class-bool) | [is\_joy\_button\_pressed](#class-input-method-is-joy-button-pressed)(device: [int](class_int.md#class-int), button: [JoyButton](class_@globalscope.md#enum-globalscope-joybutton)) const |
| [bool](class_bool.md#class-bool) | [is\_joy\_known](#class-input-method-is-joy-known)(device: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_key\_label\_pressed](#class-input-method-is-key-label-pressed)(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| [bool](class_bool.md#class-bool) | [is\_key\_pressed](#class-input-method-is-key-pressed)(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| [bool](class_bool.md#class-bool) | [is\_mouse\_button\_pressed](#class-input-method-is-mouse-button-pressed)(button: [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton)) const |
| [bool](class_bool.md#class-bool) | [is\_physical\_key\_pressed](#class-input-method-is-physical-key-pressed)(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| void | [parse\_input\_event](#class-input-method-parse-input-event)(event: [InputEvent](class_inputevent.md#class-inputevent)) |
| void | [remove\_joy\_mapping](#class-input-method-remove-joy-mapping)(guid: [String](class_string.md#class-string)) |
| void | [set\_accelerometer](#class-input-method-set-accelerometer)(value: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_custom\_mouse\_cursor](#class-input-method-set-custom-mouse-cursor)(image: [Resource](class_resource.md#class-resource), shape: [CursorShape](#enum-input-cursorshape) = 0, hotspot: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [set\_default\_cursor\_shape](#class-input-method-set-default-cursor-shape)(shape: [CursorShape](#enum-input-cursorshape) = 0) |
| void | [set\_gravity](#class-input-method-set-gravity)(value: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_gyroscope](#class-input-method-set-gyroscope)(value: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_magnetometer](#class-input-method-set-magnetometer)(value: [Vector3](class_vector3.md#class-vector3)) |
| [bool](class_bool.md#class-bool) | [should\_ignore\_device](#class-input-method-should-ignore-device)(vendor\_id: [int](class_int.md#class-int), product\_id: [int](class_int.md#class-int)) const |
| void | [start\_joy\_vibration](#class-input-method-start-joy-vibration)(device: [int](class_int.md#class-int), weak\_magnitude: [float](class_float.md#class-float), strong\_magnitude: [float](class_float.md#class-float), duration: [float](class_float.md#class-float) = 0) |
| void | [stop\_joy\_vibration](#class-input-method-stop-joy-vibration)(device: [int](class_int.md#class-int)) |
| void | [vibrate\_handheld](#class-input-method-vibrate-handheld)(duration\_ms: [int](class_int.md#class-int) = 500, amplitude: [float](class_float.md#class-float) = -1.0) |
| void | [warp\_mouse](#class-input-method-warp-mouse)(position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**joy\_connection\_changed**(device: [int](class_int.md#class-int), connected: [bool](class_bool.md#class-bool)) [🔗](#class-input-signal-joy-connection-changed)

Emitted when a joypad device has been connected or disconnected.

* * *

## Enumerations

enum **MouseMode**: [🔗](#enum-input-mousemode)

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_VISIBLE** = `0`

Makes the mouse cursor visible if it is hidden.

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_HIDDEN** = `1`

Makes the mouse cursor hidden if it is visible.

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_CAPTURED** = `2`

Captures the mouse. The mouse will be hidden and its position locked at the center of the window manager's window.

**Note:** If you want to process the mouse's movement in this mode, you need to use [InputEventMouseMotion.relative](class_inputeventmousemotion.md#class-inputeventmousemotion-property-relative).

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_CONFINED** = `3`

Confines the mouse cursor to the game window, and make it visible.

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_CONFINED\_HIDDEN** = `4`

Confines the mouse cursor to the game window, and make it hidden.

[MouseMode](#enum-input-mousemode) **MOUSE\_MODE\_MAX** = `5`

Max value of the [MouseMode](#enum-input-mousemode).

* * *

enum **CursorShape**: [🔗](#enum-input-cursorshape)

[CursorShape](#enum-input-cursorshape) **CURSOR\_ARROW** = `0`

Arrow cursor. Standard, default pointing cursor.

[CursorShape](#enum-input-cursorshape) **CURSOR\_IBEAM** = `1`

I-beam cursor. Usually used to show where the text cursor will appear when the mouse is clicked.

[CursorShape](#enum-input-cursorshape) **CURSOR\_POINTING\_HAND** = `2`

Pointing hand cursor. Usually used to indicate the pointer is over a link or other interactable item.

[CursorShape](#enum-input-cursorshape) **CURSOR\_CROSS** = `3`

Cross cursor. Typically appears over regions in which a drawing operation can be performed or for selections.

[CursorShape](#enum-input-cursorshape) **CURSOR\_WAIT** = `4`

Wait cursor. Indicates that the application is busy performing an operation, and that it cannot be used during the operation (e.g. something is blocking its main thread).

[CursorShape](#enum-input-cursorshape) **CURSOR\_BUSY** = `5`

Busy cursor. Indicates that the application is busy performing an operation, and that it is still usable during the operation.

[CursorShape](#enum-input-cursorshape) **CURSOR\_DRAG** = `6`

Drag cursor. Usually displayed when dragging something.

**Note:** Windows lacks a dragging cursor, so [CURSOR\_DRAG](#class-input-constant-cursor-drag) is the same as [CURSOR\_MOVE](#class-input-constant-cursor-move) for this platform.

[CursorShape](#enum-input-cursorshape) **CURSOR\_CAN\_DROP** = `7`

Can drop cursor. Usually displayed when dragging something to indicate that it can be dropped at the current position.

[CursorShape](#enum-input-cursorshape) **CURSOR\_FORBIDDEN** = `8`

Forbidden cursor. Indicates that the current action is forbidden (for example, when dragging something) or that the control at a position is disabled.

[CursorShape](#enum-input-cursorshape) **CURSOR\_VSIZE** = `9`

Vertical resize mouse cursor. A double-headed vertical arrow. It tells the user they can resize the window or the panel vertically.

[CursorShape](#enum-input-cursorshape) **CURSOR\_HSIZE** = `10`

Horizontal resize mouse cursor. A double-headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.

[CursorShape](#enum-input-cursorshape) **CURSOR\_BDIAGSIZE** = `11`

Window resize mouse cursor. The cursor is a double-headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.

[CursorShape](#enum-input-cursorshape) **CURSOR\_FDIAGSIZE** = `12`

Window resize mouse cursor. The cursor is a double-headed arrow that goes from the top left to the bottom right, the opposite of [CURSOR\_BDIAGSIZE](#class-input-constant-cursor-bdiagsize). It tells the user they can resize the window or the panel both horizontally and vertically.

[CursorShape](#enum-input-cursorshape) **CURSOR\_MOVE** = `13`

Move cursor. Indicates that something can be moved.

[CursorShape](#enum-input-cursorshape) **CURSOR\_VSPLIT** = `14`

Vertical split mouse cursor. On Windows, it's the same as [CURSOR\_VSIZE](#class-input-constant-cursor-vsize).

[CursorShape](#enum-input-cursorshape) **CURSOR\_HSPLIT** = `15`

Horizontal split mouse cursor. On Windows, it's the same as [CURSOR\_HSIZE](#class-input-constant-cursor-hsize).

[CursorShape](#enum-input-cursorshape) **CURSOR\_HELP** = `16`

Help cursor. Usually a question mark.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **emulate\_mouse\_from\_touch** [🔗](#class-input-property-emulate-mouse-from-touch)

- void **set\_emulate\_mouse\_from\_touch**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emulating\_mouse\_from\_touch**()


If `true`, sends mouse input events when tapping or swiping on the touchscreen. See also [ProjectSettings.input\_devices/pointing/emulate\_mouse\_from\_touch](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-mouse-from-touch).

* * *

[bool](class_bool.md#class-bool) **emulate\_touch\_from\_mouse** [🔗](#class-input-property-emulate-touch-from-mouse)

- void **set\_emulate\_touch\_from\_mouse**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emulating\_touch\_from\_mouse**()


If `true`, sends touch input events when clicking or dragging the mouse. See also [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse).

* * *

[MouseMode](#enum-input-mousemode) **mouse\_mode** [🔗](#class-input-property-mouse-mode)

- void **set\_mouse\_mode**(value: [MouseMode](#enum-input-mousemode))

- [MouseMode](#enum-input-mousemode) **get\_mouse\_mode**()


Controls the mouse mode.

* * *

[bool](class_bool.md#class-bool) **use\_accumulated\_input** [🔗](#class-input-property-use-accumulated-input)

- void **set\_use\_accumulated\_input**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_accumulated\_input**()


If `true`, similar input events sent by the operating system are accumulated. When input accumulation is enabled, all input events generated during a frame will be merged and emitted when the frame is done rendering. Therefore, this limits the number of input method calls per second to the rendering FPS.

Input accumulation can be disabled to get slightly more precise/reactive input at the cost of increased CPU usage. In applications where drawing freehand lines is required, input accumulation should generally be disabled while the user is drawing the line to get results that closely follow the actual input.

**Note:** Input accumulation is _enabled_ by default.

* * *

## Method Descriptions

void **action\_press**(action: [StringName](class_stringname.md#class-stringname), strength: [float](class_float.md#class-float) = 1.0) [🔗](#class-input-method-action-press)

This will simulate pressing the specified action.

The strength can be used for non-boolean actions, it's ranged between 0 and 1 representing the intensity of the given action.

**Note:** This method will not cause any [Node.\_input()](class_node.md#class-node-private-method-input) calls. It is intended to be used with [is\_action\_pressed()](#class-input-method-is-action-pressed) and [is\_action\_just\_pressed()](#class-input-method-is-action-just-pressed). If you want to simulate `_input`, use [parse\_input\_event()](#class-input-method-parse-input-event) instead.

* * *

void **action\_release**(action: [StringName](class_stringname.md#class-stringname)) [🔗](#class-input-method-action-release)

If the specified action is already pressed, this will release it.

* * *

void **add\_joy\_mapping**(mapping: [String](class_string.md#class-string), update\_existing: [bool](class_bool.md#class-bool) = false) [🔗](#class-input-method-add-joy-mapping)

Adds a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.

* * *

void **flush\_buffered\_events**() [🔗](#class-input-method-flush-buffered-events)

Sends all input events which are in the current buffer to the game loop. These events may have been buffered as a result of accumulated input ( [use\_accumulated\_input](#class-input-property-use-accumulated-input)) or agile input flushing ( [ProjectSettings.input\_devices/buffering/agile\_event\_flushing](class_projectsettings.md#class-projectsettings-property-input-devices-buffering-agile-event-flushing)).

The engine will already do this itself at key execution points (at least once per frame). However, this can be useful in advanced cases where you want precise control over the timing of event handling.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_accelerometer**() const [🔗](#class-input-method-get-accelerometer)

Returns the acceleration in m/s² of the device's accelerometer sensor, if the device has one. Otherwise, the method returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

Note this method returns an empty [Vector3](class_vector3.md#class-vector3) when running from the editor even when your device has an accelerometer. You must export your project to a supported device to read values from the accelerometer.

**Note:** This method only works on Android and iOS. On other platforms, it always returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** For Android, [ProjectSettings.input\_devices/sensors/enable\_accelerometer](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-accelerometer) must be enabled.

* * *

[float](class_float.md#class-float) **get\_action\_raw\_strength**(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-get-action-raw-strength)

Returns a value between 0 and 1 representing the raw intensity of the given action, ignoring the action's deadzone. In most cases, you should use [get\_action\_strength()](#class-input-method-get-action-strength) instead.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

* * *

[float](class_float.md#class-float) **get\_action\_strength**(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-get-action-strength)

Returns a value between 0 and 1 representing the intensity of the given action. In a joypad, for example, the further away the axis (analog sticks or L2, R2 triggers) is from the dead zone, the closer the value will be to 1. If the action is mapped to a control that has no axis such as the keyboard, the value returned will be 0 or 1.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

* * *

[float](class_float.md#class-float) **get\_axis**(negative\_action: [StringName](class_stringname.md#class-stringname), positive\_action: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-input-method-get-axis)

Get axis input by specifying two actions, one negative and one positive.

This is a shorthand for writing `Input.get_action_strength("positive_action") - Input.get_action_strength("negative_action")`.

* * *

[Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **get\_connected\_joypads**() [🔗](#class-input-method-get-connected-joypads)

Returns an [Array](class_array.md#class-array) containing the device IDs of all currently connected joypads.

* * *

[CursorShape](#enum-input-cursorshape) **get\_current\_cursor\_shape**() const [🔗](#class-input-method-get-current-cursor-shape)

Returns the currently assigned cursor shape.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_gravity**() const [🔗](#class-input-method-get-gravity)

Returns the gravity in m/s² of the device's accelerometer sensor, if the device has one. Otherwise, the method returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** This method only works on Android and iOS. On other platforms, it always returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** For Android, [ProjectSettings.input\_devices/sensors/enable\_gravity](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-gravity) must be enabled.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_gyroscope**() const [🔗](#class-input-method-get-gyroscope)

Returns the rotation rate in rad/s around a device's X, Y, and Z axes of the gyroscope sensor, if the device has one. Otherwise, the method returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** This method only works on Android and iOS. On other platforms, it always returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** For Android, [ProjectSettings.input\_devices/sensors/enable\_gyroscope](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-gyroscope) must be enabled.

* * *

[float](class_float.md#class-float) **get\_joy\_axis**(device: [int](class_int.md#class-int), axis: [JoyAxis](class_@globalscope.md#enum-globalscope-joyaxis)) const [🔗](#class-input-method-get-joy-axis)

Returns the current value of the joypad axis at index `axis`.

* * *

[String](class_string.md#class-string) **get\_joy\_guid**(device: [int](class_int.md#class-int)) const [🔗](#class-input-method-get-joy-guid)

Returns an SDL2-compatible device GUID on platforms that use gamepad remapping, e.g. `030000004c050000c405000000010000`. Returns an empty string if it cannot be found. Godot uses the [SDL2 game controller database](https://github.com/gabomdq/SDL_GameControllerDB) to determine gamepad names and mappings based on this GUID.

On Windows, all XInput joypad GUIDs will be overridden by Godot to `__XINPUT_DEVICE__`, because their mappings are the same.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_joy\_info**(device: [int](class_int.md#class-int)) const [🔗](#class-input-method-get-joy-info)

Returns a dictionary with extra platform-specific information about the device, e.g. the raw gamepad name from the OS or the Steam Input index.

On Windows, Linux, and macOS, the dictionary contains the following fields:

`raw_name`: The name of the controller as it came from the OS, before getting renamed by the controller database.

`vendor_id`: The USB vendor ID of the device.

`product_id`: The USB product ID of the device.

`steam_input_index`: The Steam Input gamepad index, if the device is not a Steam Input device this key won't be present.

On Windows, the dictionary can have an additional field:

`xinput_index`: The index of the controller in the XInput system. This key won't be present for devices not handled by XInput.

**Note:** The returned dictionary is always empty on Android, iOS, visionOS, and Web.

* * *

[String](class_string.md#class-string) **get\_joy\_name**(device: [int](class_int.md#class-int)) [🔗](#class-input-method-get-joy-name)

Returns the name of the joypad at the specified device index, e.g. `PS4 Controller`. Godot uses the [SDL2 game controller database](https://github.com/gabomdq/SDL_GameControllerDB) to determine gamepad names.

* * *

[float](class_float.md#class-float) **get\_joy\_vibration\_duration**(device: [int](class_int.md#class-int)) [🔗](#class-input-method-get-joy-vibration-duration)

Returns the duration of the current vibration effect in seconds.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_joy\_vibration\_strength**(device: [int](class_int.md#class-int)) [🔗](#class-input-method-get-joy-vibration-strength)

Returns the strength of the joypad vibration: x is the strength of the weak motor, and y is the strength of the strong motor.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_last\_mouse\_screen\_velocity**() [🔗](#class-input-method-get-last-mouse-screen-velocity)

Returns the last mouse velocity in screen coordinates. To provide a precise and jitter-free velocity, mouse velocity is only calculated every 0.1s. Therefore, mouse velocity will lag mouse movements.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_last\_mouse\_velocity**() [🔗](#class-input-method-get-last-mouse-velocity)

Returns the last mouse velocity. To provide a precise and jitter-free velocity, mouse velocity is only calculated every 0.1s. Therefore, mouse velocity will lag mouse movements.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_magnetometer**() const [🔗](#class-input-method-get-magnetometer)

Returns the magnetic field strength in micro-Tesla for all axes of the device's magnetometer sensor, if the device has one. Otherwise, the method returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** This method only works on Android and iOS. On other platforms, it always returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

**Note:** For Android, [ProjectSettings.input\_devices/sensors/enable\_magnetometer](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-magnetometer) must be enabled.

* * *

BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **get\_mouse\_button\_mask**() const [🔗](#class-input-method-get-mouse-button-mask)

Returns mouse buttons as a bitmask. If multiple mouse buttons are pressed at the same time, the bits are added together. Equivalent to [DisplayServer.mouse\_get\_button\_state()](class_displayserver.md#class-displayserver-method-mouse-get-button-state).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_vector**(negative\_x: [StringName](class_stringname.md#class-stringname), positive\_x: [StringName](class_stringname.md#class-stringname), negative\_y: [StringName](class_stringname.md#class-stringname), positive\_y: [StringName](class_stringname.md#class-stringname), deadzone: [float](class_float.md#class-float) = -1.0) const [🔗](#class-input-method-get-vector)

Gets an input vector by specifying four actions for the positive and negative X and Y axes.

This method is useful when getting vector input, such as from a joystick, directional pad, arrows, or WASD. The vector has its length limited to 1 and has a circular deadzone, which is useful for using vector input as movement.

By default, the deadzone is automatically calculated from the average of the action deadzones. However, you can override the deadzone to be whatever you want (on the range of 0 to 1).

* * *

[bool](class_bool.md#class-bool) **is\_action\_just\_pressed**(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-is-action-just-pressed)

Returns `true` when the user has _started_ pressing the action event in the current frame or physics tick. It will only return `true` on the frame or tick that the user pressed down the button.

This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

**Note:** Returning `true` does not imply that the action is _still_ pressed. An action can be pressed and released again rapidly, and `true` will still be returned so as not to miss input.

**Note:** Due to keyboard ghosting, [is\_action\_just\_pressed()](#class-input-method-is-action-just-pressed) may return `false` even if one of the action's keys is pressed. See [Input examples](../tutorials/inputs/input_examples.md#keyboard-events) in the documentation for more information.

**Note:** During input handling (e.g. [Node.\_input()](class_node.md#class-node-private-method-input)), use [InputEvent.is\_action\_pressed()](class_inputevent.md#class-inputevent-method-is-action-pressed) instead to query the action state of the current event. See also [is\_action\_just\_pressed\_by\_event()](#class-input-method-is-action-just-pressed-by-event).

* * *

[bool](class_bool.md#class-bool) **is\_action\_just\_pressed\_by\_event**(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-is-action-just-pressed-by-event)

Returns `true` when the user has _started_ pressing the action event in the current frame or physics tick, and the first event that triggered action press in the current frame/physics tick was `event`. It will only return `true` on the frame or tick that the user pressed down the button.

This is useful for code that needs to run only once when an action is pressed, and the action is processed during input handling (e.g. [Node.\_input()](class_node.md#class-node-private-method-input)).

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

**Note:** Returning `true` does not imply that the action is _still_ pressed. An action can be pressed and released again rapidly, and `true` will still be returned so as not to miss input.

**Note:** Due to keyboard ghosting, [is\_action\_just\_pressed()](#class-input-method-is-action-just-pressed) may return `false` even if one of the action's keys is pressed. See [Input examples](../tutorials/inputs/input_examples.md#keyboard-events) in the documentation for more information.

* * *

[bool](class_bool.md#class-bool) **is\_action\_just\_released**(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-is-action-just-released)

Returns `true` when the user _stops_ pressing the action event in the current frame or physics tick. It will only return `true` on the frame or tick that the user releases the button.

**Note:** Returning `true` does not imply that the action is _still_ not pressed. An action can be released and pressed again rapidly, and `true` will still be returned so as not to miss input.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

**Note:** During input handling (e.g. [Node.\_input()](class_node.md#class-node-private-method-input)), use [InputEvent.is\_action\_released()](class_inputevent.md#class-inputevent-method-is-action-released) instead to query the action state of the current event. See also [is\_action\_just\_released\_by\_event()](#class-input-method-is-action-just-released-by-event).

* * *

[bool](class_bool.md#class-bool) **is\_action\_just\_released\_by\_event**(action: [StringName](class_stringname.md#class-stringname), event: [InputEvent](class_inputevent.md#class-inputevent), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-is-action-just-released-by-event)

Returns `true` when the user _stops_ pressing the action event in the current frame or physics tick, and the first event that triggered action release in the current frame/physics tick was `event`. It will only return `true` on the frame or tick that the user releases the button.

This is useful when an action is processed during input handling (e.g. [Node.\_input()](class_node.md#class-node-private-method-input)).

**Note:** Returning `true` does not imply that the action is _still_ not pressed. An action can be released and pressed again rapidly, and `true` will still be returned so as not to miss input.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

* * *

[bool](class_bool.md#class-bool) **is\_action\_pressed**(action: [StringName](class_stringname.md#class-stringname), exact\_match: [bool](class_bool.md#class-bool) = false) const [🔗](#class-input-method-is-action-pressed)

Returns `true` if you are pressing the action event.

If `exact_match` is `false`, it ignores additional input modifiers for [InputEventKey](class_inputeventkey.md#class-inputeventkey) and [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) events, and the direction for [InputEventJoypadMotion](class_inputeventjoypadmotion.md#class-inputeventjoypadmotion) events.

**Note:** Due to keyboard ghosting, [is\_action\_pressed()](#class-input-method-is-action-pressed) may return `false` even if one of the action's keys is pressed. See [Input examples](../tutorials/inputs/input_examples.md#keyboard-events) in the documentation for more information.

* * *

[bool](class_bool.md#class-bool) **is\_anything\_pressed**() const [🔗](#class-input-method-is-anything-pressed)

Returns `true` if any action, key, joypad button, or mouse button is being pressed. This will also return `true` if any action is simulated via code by calling [action\_press()](#class-input-method-action-press).

* * *

[bool](class_bool.md#class-bool) **is\_joy\_button\_pressed**(device: [int](class_int.md#class-int), button: [JoyButton](class_@globalscope.md#enum-globalscope-joybutton)) const [🔗](#class-input-method-is-joy-button-pressed)

Returns `true` if you are pressing the joypad button at index `button`.

* * *

[bool](class_bool.md#class-bool) **is\_joy\_known**(device: [int](class_int.md#class-int)) [🔗](#class-input-method-is-joy-known)

Returns `true` if the system knows the specified device. This means that it sets all button and axis indices. Unknown joypads are not expected to match these constants, but you can still retrieve events from them.

* * *

[bool](class_bool.md#class-bool) **is\_key\_label\_pressed**(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-input-method-is-key-label-pressed)

Returns `true` if you are pressing the key with the `keycode` printed on it. You can pass a [Key](class_@globalscope.md#enum-globalscope-key) constant or any Unicode character code.

* * *

[bool](class_bool.md#class-bool) **is\_key\_pressed**(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-input-method-is-key-pressed)

Returns `true` if you are pressing the Latin key in the current keyboard layout. You can pass a [Key](class_@globalscope.md#enum-globalscope-key) constant.

[is\_key\_pressed()](#class-input-method-is-key-pressed) is only recommended over [is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed) in non-game applications. This ensures that shortcut keys behave as expected depending on the user's keyboard layout, as keyboard shortcuts are generally dependent on the keyboard layout in non-game applications. If in doubt, use [is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed).

**Note:** Due to keyboard ghosting, [is\_key\_pressed()](#class-input-method-is-key-pressed) may return `false` even if one of the action's keys is pressed. See [Input examples](../tutorials/inputs/input_examples.md#keyboard-events) in the documentation for more information.

* * *

[bool](class_bool.md#class-bool) **is\_mouse\_button\_pressed**(button: [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton)) const [🔗](#class-input-method-is-mouse-button-pressed)

Returns `true` if you are pressing the mouse button specified with [MouseButton](class_@globalscope.md#enum-globalscope-mousebutton).

* * *

[bool](class_bool.md#class-bool) **is\_physical\_key\_pressed**(keycode: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-input-method-is-physical-key-pressed)

Returns `true` if you are pressing the key in the physical location on the 101/102-key US QWERTY keyboard. You can pass a [Key](class_@globalscope.md#enum-globalscope-key) constant.

[is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed) is recommended over [is\_key\_pressed()](#class-input-method-is-key-pressed) for in-game actions, as it will make `W`/ `A`/ `S`/ `D` layouts work regardless of the user's keyboard layout. [is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed) will also ensure that the top row number keys work on any keyboard layout. If in doubt, use [is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed).

**Note:** Due to keyboard ghosting, [is\_physical\_key\_pressed()](#class-input-method-is-physical-key-pressed) may return `false` even if one of the action's keys is pressed. See [Input examples](../tutorials/inputs/input_examples.md#keyboard-events) in the documentation for more information.

* * *

void **parse\_input\_event**(event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-input-method-parse-input-event)

Feeds an [InputEvent](class_inputevent.md#class-inputevent) to the game. Can be used to artificially trigger input events from code. Also generates [Node.\_input()](class_node.md#class-node-private-method-input) calls.

GDScriptC#

```
var cancel_event = InputEventAction.new()
cancel_event.action = "ui_cancel"
cancel_event.pressed = true
Input.parse_input_event(cancel_event)

```

```
var cancelEvent = new InputEventAction();
cancelEvent.Action = "ui_cancel";
cancelEvent.Pressed = true;
Input.ParseInputEvent(cancelEvent);

```

**Note:** Calling this function has no influence on the operating system. So for example sending an [InputEventMouseMotion](class_inputeventmousemotion.md#class-inputeventmousemotion) will not move the OS mouse cursor to the specified position (use [warp\_mouse()](#class-input-method-warp-mouse) instead) and sending `Alt/Cmd + Tab` as [InputEventKey](class_inputeventkey.md#class-inputeventkey) won't toggle between active windows.

* * *

void **remove\_joy\_mapping**(guid: [String](class_string.md#class-string)) [🔗](#class-input-method-remove-joy-mapping)

Removes all mappings from the internal database that match the given GUID. All currently connected joypads that use this GUID will become unmapped.

On Android, Godot will map to an internal fallback mapping.

* * *

void **set\_accelerometer**(value: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-input-method-set-accelerometer)

Sets the acceleration value of the accelerometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.

**Note:** This value can be immediately overwritten by the hardware sensor value on Android and iOS.

* * *

void **set\_custom\_mouse\_cursor**(image: [Resource](class_resource.md#class-resource), shape: [CursorShape](#enum-input-cursorshape) = 0, hotspot: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-input-method-set-custom-mouse-cursor)

Sets a custom mouse cursor image, which is only visible inside the game window, for the given mouse `shape`. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor.

`image` can be either [Texture2D](class_texture2d.md#class-texture2d) or [Image](class_image.md#class-image) and its size must be lower than or equal to 256×256. To avoid rendering issues, sizes lower than or equal to 128×128 are recommended.

`hotspot` must be within `image`'s size.

**Note:** [AnimatedTexture](class_animatedtexture.md#class-animatedtexture) s aren't supported as custom mouse cursors. If using an [AnimatedTexture](class_animatedtexture.md#class-animatedtexture), only the first frame will be displayed.

**Note:** The **Lossless**, **Lossy** or **Uncompressed** compression modes are recommended. The **Video RAM** compression mode can be used, but it will be decompressed on the CPU, which means loading times are slowed down and no memory is saved compared to lossless modes.

**Note:** On the web platform, the maximum allowed cursor image size is 128×128. Cursor images larger than 32×32 will also only be displayed if the mouse cursor image is entirely located within the page for [security reasons](https://chromestatus.com/feature/5825971391299584).

* * *

void **set\_default\_cursor\_shape**(shape: [CursorShape](#enum-input-cursorshape) = 0) [🔗](#class-input-method-set-default-cursor-shape)

Sets the default cursor shape to be used in the viewport instead of [CURSOR\_ARROW](#class-input-constant-cursor-arrow).

**Note:** If you want to change the default cursor shape for [Control](class_control.md#class-control)'s nodes, use [Control.mouse\_default\_cursor\_shape](class_control.md#class-control-property-mouse-default-cursor-shape) instead.

**Note:** This method generates an [InputEventMouseMotion](class_inputeventmousemotion.md#class-inputeventmousemotion) to update cursor immediately.

* * *

void **set\_gravity**(value: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-input-method-set-gravity)

Sets the gravity value of the accelerometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.

**Note:** This value can be immediately overwritten by the hardware sensor value on Android and iOS.

* * *

void **set\_gyroscope**(value: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-input-method-set-gyroscope)

Sets the value of the rotation rate of the gyroscope sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.

**Note:** This value can be immediately overwritten by the hardware sensor value on Android and iOS.

* * *

void **set\_magnetometer**(value: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-input-method-set-magnetometer)

Sets the value of the magnetic field of the magnetometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.

**Note:** This value can be immediately overwritten by the hardware sensor value on Android and iOS.

* * *

[bool](class_bool.md#class-bool) **should\_ignore\_device**(vendor\_id: [int](class_int.md#class-int), product\_id: [int](class_int.md#class-int)) const [🔗](#class-input-method-should-ignore-device)

Queries whether an input device should be ignored or not. Devices can be ignored by setting the environment variable `SDL_GAMECONTROLLER_IGNORE_DEVICES`. Read the [SDL documentation](https://wiki.libsdl.org/SDL2) for more information.

**Note:** Some 3rd party tools can contribute to the list of ignored devices. For example, _SteamInput_ creates virtual devices from physical devices for remapping purposes. To avoid handling the same input device twice, the original device is added to the ignore list.

* * *

void **start\_joy\_vibration**(device: [int](class_int.md#class-int), weak\_magnitude: [float](class_float.md#class-float), strong\_magnitude: [float](class_float.md#class-float), duration: [float](class_float.md#class-float) = 0) [🔗](#class-input-method-start-joy-vibration)

Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. `weak_magnitude` is the strength of the weak motor (between 0 and 1) and `strong_magnitude` is the strength of the strong motor (between 0 and 1). `duration` is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely). The vibration can be stopped early by calling [stop\_joy\_vibration()](#class-input-method-stop-joy-vibration).

**Note:** Not every hardware is compatible with long effect durations; it is recommended to restart an effect if it has to be played for more than a few seconds.

**Note:** For macOS, vibration is only supported in macOS 11 and later.

* * *

void **stop\_joy\_vibration**(device: [int](class_int.md#class-int)) [🔗](#class-input-method-stop-joy-vibration)

Stops the vibration of the joypad started with [start\_joy\_vibration()](#class-input-method-start-joy-vibration).

* * *

void **vibrate\_handheld**(duration\_ms: [int](class_int.md#class-int) = 500, amplitude: [float](class_float.md#class-float) = -1.0) [🔗](#class-input-method-vibrate-handheld)

Vibrate the handheld device for the specified duration in milliseconds.

`amplitude` is the strength of the vibration, as a value between `0.0` and `1.0`. If set to `-1.0`, the default vibration strength of the device is used.

**Note:** This method is implemented on Android, iOS, and Web. It has no effect on other platforms.

**Note:** For Android, [vibrate\_handheld()](#class-input-method-vibrate-handheld) requires enabling the `VIBRATE` permission in the export preset. Otherwise, [vibrate\_handheld()](#class-input-method-vibrate-handheld) will have no effect.

**Note:** For iOS, specifying the duration is only supported in iOS 13 and later.

**Note:** For Web, the amplitude cannot be changed.

**Note:** Some web browsers such as Safari and Firefox for Android do not support [vibrate\_handheld()](#class-input-method-vibrate-handheld).

* * *

void **warp\_mouse**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-input-method-warp-mouse)

Sets the mouse position to the specified vector, provided in pixels and relative to an origin at the upper left corner of the currently focused Window Manager game window.

Mouse position is clipped to the limits of the screen resolution, or to the limits of the game window if [MouseMode](#enum-input-mousemode) is set to [MOUSE\_MODE\_CONFINED](#class-input-constant-mouse-mode-confined) or [MOUSE\_MODE\_CONFINED\_HIDDEN](#class-input-constant-mouse-mode-confined-hidden).

**Note:** [warp\_mouse()](#class-input-method-warp-mouse) is only supported on Windows, macOS and Linux. It has no effect on Android, iOS and Web.

[Previous](class_imageformatloaderextension.md "ImageFormatLoaderExtension") [Next](class_inputmap.md "InputMap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_imageformatloaderextension.md "ImageFormatLoaderExtension") [Next](class_inputmap.md "InputMap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).