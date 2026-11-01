---
title: Window — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_window.html
crawled_at: "2026-08-13T10:29:32+12:00"
content_hash: 76f9a22377a9d0f5dd9874286e90f046c5175c4fceb97b3685a78bd32dea7bc2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Window

* * *

# Window

**Inherits:** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AcceptDialog](class_acceptdialog.md#class-acceptdialog), [Popup](class_popup.md#class-popup)

Base class for all windows, dialogs, and popups.

## Description

A node that creates a window. The window can either be a native system window or embedded inside another **Window** (see [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows)).

At runtime, **Window** s will not close automatically when requested. You need to handle it manually using the [close\_requested](#class-window-signal-close-requested) signal (this applies both to pressing the close button and clicking outside of a popup).

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [accessibility\_description](#class-window-property-accessibility-description) | `""` |
| [String](class_string.md#class-string) | [accessibility\_name](#class-window-property-accessibility-name) | `""` |
| [bool](class_bool.md#class-bool) | [always\_on\_top](#class-window-property-always-on-top) | `false` |
| [bool](class_bool.md#class-bool) | [auto\_translate](#class-window-property-auto-translate) |  |
| [bool](class_bool.md#class-bool) | [borderless](#class-window-property-borderless) | `false` |
| [ContentScaleAspect](#enum-window-contentscaleaspect) | [content\_scale\_aspect](#class-window-property-content-scale-aspect) | `0` |
| [float](class_float.md#class-float) | [content\_scale\_factor](#class-window-property-content-scale-factor) | `1.0` |
| [ContentScaleMode](#enum-window-contentscalemode) | [content\_scale\_mode](#class-window-property-content-scale-mode) | `0` |
| [Vector2i](class_vector2i.md#class-vector2i) | [content\_scale\_size](#class-window-property-content-scale-size) | `Vector2i(0, 0)` |
| [ContentScaleStretch](#enum-window-contentscalestretch) | [content\_scale\_stretch](#class-window-property-content-scale-stretch) | `0` |
| [int](class_int.md#class-int) | [current\_screen](#class-window-property-current-screen) |  |
| [bool](class_bool.md#class-bool) | [exclude\_from\_capture](#class-window-property-exclude-from-capture) | `false` |
| [bool](class_bool.md#class-bool) | [exclusive](#class-window-property-exclusive) | `false` |
| [bool](class_bool.md#class-bool) | [extend\_to\_title](#class-window-property-extend-to-title) | `false` |
| [bool](class_bool.md#class-bool) | [force\_native](#class-window-property-force-native) | `false` |
| [WindowInitialPosition](#enum-window-windowinitialposition) | [initial\_position](#class-window-property-initial-position) | `0` |
| [bool](class_bool.md#class-bool) | [keep\_title\_visible](#class-window-property-keep-title-visible) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [max\_size](#class-window-property-max-size) | `Vector2i(0, 0)` |
| [bool](class_bool.md#class-bool) | [maximize\_disabled](#class-window-property-maximize-disabled) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [min\_size](#class-window-property-min-size) | `Vector2i(0, 0)` |
| [bool](class_bool.md#class-bool) | [minimize\_disabled](#class-window-property-minimize-disabled) | `false` |
| [Mode](#enum-window-mode) | [mode](#class-window-property-mode) | `0` |
| [bool](class_bool.md#class-bool) | [mouse\_passthrough](#class-window-property-mouse-passthrough) | `false` |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [mouse\_passthrough\_polygon](#class-window-property-mouse-passthrough-polygon) | `PackedVector2Array()` |
| [bool](class_bool.md#class-bool) | [popup\_window](#class-window-property-popup-window) | `false` |
| [bool](class_bool.md#class-bool) | [popup\_wm\_hint](#class-window-property-popup-wm-hint) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [position](#class-window-property-position) | `Vector2i(0, 0)` |
| [bool](class_bool.md#class-bool) | [sharp\_corners](#class-window-property-sharp-corners) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size](#class-window-property-size) | `Vector2i(100, 100)` |
| [Theme](class_theme.md#class-theme) | [theme](#class-window-property-theme) |  |
| [StringName](class_stringname.md#class-stringname) | [theme\_type\_variation](#class-window-property-theme-type-variation) | `&""` |
| [String](class_string.md#class-string) | [title](#class-window-property-title) | `""` |
| [bool](class_bool.md#class-bool) | [transient](#class-window-property-transient) | `false` |
| [bool](class_bool.md#class-bool) | [transient\_to\_focused](#class-window-property-transient-to-focused) | `false` |
| [bool](class_bool.md#class-bool) | [transparent](#class-window-property-transparent) | `false` |
| [bool](class_bool.md#class-bool) | [unfocusable](#class-window-property-unfocusable) | `false` |
| [bool](class_bool.md#class-bool) | [unresizable](#class-window-property-unresizable) | `false` |
| [bool](class_bool.md#class-bool) | [visible](#class-window-property-visible) | `true` |
| [bool](class_bool.md#class-bool) | [wrap\_controls](#class-window-property-wrap-controls) | `false` |

## Methods

|     |     |
| --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contents\_minimum\_size](#class-window-private-method-get-contents-minimum-size)() virtualconst |
| void | [add\_theme\_color\_override](#class-window-method-add-theme-color-override)(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) |
| void | [add\_theme\_constant\_override](#class-window-method-add-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) |
| void | [add\_theme\_font\_override](#class-window-method-add-theme-font-override)(name: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) |
| void | [add\_theme\_font\_size\_override](#class-window-method-add-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) |
| void | [add\_theme\_icon\_override](#class-window-method-add-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [add\_theme\_stylebox\_override](#class-window-method-add-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname), stylebox: [StyleBox](class_stylebox.md#class-stylebox)) |
| void | [begin\_bulk\_theme\_override](#class-window-method-begin-bulk-theme-override)() |
| [bool](class_bool.md#class-bool) | [can\_draw](#class-window-method-can-draw)() const |
| void | [child\_controls\_changed](#class-window-method-child-controls-changed)() |
| void | [end\_bulk\_theme\_override](#class-window-method-end-bulk-theme-override)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_contents\_minimum\_size](#class-window-method-get-contents-minimum-size)() const |
| [bool](class_bool.md#class-bool) | [get\_flag](#class-window-method-get-flag)(flag: [Flags](#enum-window-flags)) const |
| [Window](#class-window) | [get\_focused\_window](#class-window-method-get-focused-window)() static |
| [LayoutDirection](#enum-window-layoutdirection) | [get\_layout\_direction](#class-window-method-get-layout-direction)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_position\_with\_decorations](#class-window-method-get-position-with-decorations)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_size\_with\_decorations](#class-window-method-get-size-with-decorations)() const |
| [Color](class_color.md#class-color) | [get\_theme\_color](#class-window-method-get-theme-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_theme\_constant](#class-window-method-get-theme-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [float](class_float.md#class-float) | [get\_theme\_default\_base\_scale](#class-window-method-get-theme-default-base-scale)() const |
| [Font](class_font.md#class-font) | [get\_theme\_default\_font](#class-window-method-get-theme-default-font)() const |
| [int](class_int.md#class-int) | [get\_theme\_default\_font\_size](#class-window-method-get-theme-default-font-size)() const |
| [Font](class_font.md#class-font) | [get\_theme\_font](#class-window-method-get-theme-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_theme\_font\_size](#class-window-method-get-theme-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_theme\_icon](#class-window-method-get-theme-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [StyleBox](class_stylebox.md#class-stylebox) | [get\_theme\_stylebox](#class-window-method-get-theme-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_window\_id](#class-window-method-get-window-id)() const |
| void | [grab\_focus](#class-window-method-grab-focus)() |
| [bool](class_bool.md#class-bool) | [has\_focus](#class-window-method-has-focus)() const |
| [bool](class_bool.md#class-bool) | [has\_theme\_color](#class-window-method-has-theme-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_color\_override](#class-window-method-has-theme-color-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_constant](#class-window-method-has-theme-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_constant\_override](#class-window-method-has-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font](#class-window-method-has-theme-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_override](#class-window-method-has-theme-font-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_size](#class-window-method-has-theme-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_size\_override](#class-window-method-has-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_icon](#class-window-method-has-theme-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_icon\_override](#class-window-method-has-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_stylebox](#class-window-method-has-theme-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_stylebox\_override](#class-window-method-has-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [hide](#class-window-method-hide)() |
| [bool](class_bool.md#class-bool) | [is\_embedded](#class-window-method-is-embedded)() const |
| [bool](class_bool.md#class-bool) | [is\_layout\_rtl](#class-window-method-is-layout-rtl)() const |
| [bool](class_bool.md#class-bool) | [is\_maximize\_allowed](#class-window-method-is-maximize-allowed)() const |
| [bool](class_bool.md#class-bool) | [is\_using\_font\_oversampling](#class-window-method-is-using-font-oversampling)() const |
| void | [move\_to\_center](#class-window-method-move-to-center)() |
| void | [move\_to\_foreground](#class-window-method-move-to-foreground)() |
| void | [popup](#class-window-method-popup)(rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) |
| void | [popup\_centered](#class-window-method-popup-centered)(minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) |
| void | [popup\_centered\_clamped](#class-window-method-popup-centered-clamped)(minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) |
| void | [popup\_centered\_ratio](#class-window-method-popup-centered-ratio)(ratio: [float](class_float.md#class-float) = 0.8) |
| void | [popup\_exclusive](#class-window-method-popup-exclusive)(from\_node: [Node](class_node.md#class-node), rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) |
| void | [popup\_exclusive\_centered](#class-window-method-popup-exclusive-centered)(from\_node: [Node](class_node.md#class-node), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) |
| void | [popup\_exclusive\_centered\_clamped](#class-window-method-popup-exclusive-centered-clamped)(from\_node: [Node](class_node.md#class-node), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) |
| void | [popup\_exclusive\_centered\_ratio](#class-window-method-popup-exclusive-centered-ratio)(from\_node: [Node](class_node.md#class-node), ratio: [float](class_float.md#class-float) = 0.8) |
| void | [popup\_exclusive\_on\_parent](#class-window-method-popup-exclusive-on-parent)(from\_node: [Node](class_node.md#class-node), parent\_rect: [Rect2i](class_rect2i.md#class-rect2i)) |
| void | [popup\_on\_parent](#class-window-method-popup-on-parent)(parent\_rect: [Rect2i](class_rect2i.md#class-rect2i)) |
| void | [remove\_theme\_color\_override](#class-window-method-remove-theme-color-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_constant\_override](#class-window-method-remove-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_font\_override](#class-window-method-remove-theme-font-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_font\_size\_override](#class-window-method-remove-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_icon\_override](#class-window-method-remove-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_stylebox\_override](#class-window-method-remove-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [request\_attention](#class-window-method-request-attention)() |
| void | [reset\_size](#class-window-method-reset-size)() |
| void | [set\_flag](#class-window-method-set-flag)(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_ime\_active](#class-window-method-set-ime-active)(active: [bool](class_bool.md#class-bool)) |
| void | [set\_ime\_position](#class-window-method-set-ime-position)(position: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_layout\_direction](#class-window-method-set-layout-direction)(direction: [LayoutDirection](#enum-window-layoutdirection)) |
| void | [set\_unparent\_when\_invisible](#class-window-method-set-unparent-when-invisible)(unparent: [bool](class_bool.md#class-bool)) |
| void | [set\_use\_font\_oversampling](#class-window-method-set-use-font-oversampling)(enable: [bool](class_bool.md#class-bool)) |
| void | [show](#class-window-method-show)() |
| void | [start\_drag](#class-window-method-start-drag)() |
| void | [start\_resize](#class-window-method-start-resize)(edge: [WindowResizeEdge](class_displayserver.md#enum-displayserver-windowresizeedge)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [title\_color](#class-window-theme-color-title-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [title\_outline\_modulate](#class-window-theme-color-title-outline-modulate) | `Color(0, 0, 0, 1)` |
| [int](class_int.md#class-int) | [close\_h\_offset](#class-window-theme-constant-close-h-offset) | `18` |
| [int](class_int.md#class-int) | [close\_v\_offset](#class-window-theme-constant-close-v-offset) | `24` |
| [int](class_int.md#class-int) | [resize\_margin](#class-window-theme-constant-resize-margin) | `4` |
| [int](class_int.md#class-int) | [title\_height](#class-window-theme-constant-title-height) | `36` |
| [int](class_int.md#class-int) | [title\_outline\_size](#class-window-theme-constant-title-outline-size) | `0` |
| [Font](class_font.md#class-font) | [title\_font](#class-window-theme-font-title-font) |  |
| [int](class_int.md#class-int) | [title\_font\_size](#class-window-theme-font-size-title-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [close](#class-window-theme-icon-close) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [close\_pressed](#class-window-theme-icon-close-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [embedded\_border](#class-window-theme-style-embedded-border) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [embedded\_unfocused\_border](#class-window-theme-style-embedded-unfocused-border) |  |

* * *

## Signals

**about\_to\_popup**() [🔗](#class-window-signal-about-to-popup)

Emitted right after [popup()](#class-window-method-popup) call, before the **Window** appears or does anything.

* * *

**close\_requested**() [🔗](#class-window-signal-close-requested)

Emitted when the **Window**'s close button is pressed or when [popup\_window](#class-window-property-popup-window) is enabled and user clicks outside the window.

This signal can be used to handle window closing, e.g. by connecting it to [hide()](#class-window-method-hide).

* * *

**dpi\_changed**() [🔗](#class-window-signal-dpi-changed)

Emitted when the **Window**'s DPI changes as a result of OS-level changes (e.g. moving the window from a Retina display to a lower resolution one).

**Note:** Only implemented on macOS and Linux (Wayland).

* * *

**files\_dropped**(files: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-window-signal-files-dropped)

Emitted when files are dragged from the OS file manager and dropped in the game window. The argument is a list of file paths.

```
func _ready():
    get_window().files_dropped.connect(on_files_dropped)

func on_files_dropped(files):
    print(files)

```

**Note:** This signal only works with native windows, i.e. the main window and **Window**-derived nodes when [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows) is disabled in the main viewport.

* * *

**focus\_entered**() [🔗](#class-window-signal-focus-entered)

Emitted when the **Window** gains focus.

* * *

**focus\_exited**() [🔗](#class-window-signal-focus-exited)

Emitted when the **Window** loses its focus.

* * *

**go\_back\_requested**() [🔗](#class-window-signal-go-back-requested)

Emitted when a go back request is sent (e.g. pressing the "Back" button on Android), right after [Node.NOTIFICATION\_WM\_GO\_BACK\_REQUEST](class_node.md#class-node-constant-notification-wm-go-back-request).

* * *

**mouse\_entered**() [🔗](#class-window-signal-mouse-entered)

Emitted when the mouse cursor enters the **Window**'s visible area, that is not occluded behind other [Control](class_control.md#class-control) s or windows, provided its [Viewport.gui\_disable\_input](class_viewport.md#class-viewport-property-gui-disable-input) is `false` and regardless if it's currently focused or not.

* * *

**mouse\_exited**() [🔗](#class-window-signal-mouse-exited)

Emitted when the mouse cursor leaves the **Window**'s visible area, that is not occluded behind other [Control](class_control.md#class-control) s or windows, provided its [Viewport.gui\_disable\_input](class_viewport.md#class-viewport-property-gui-disable-input) is `false` and regardless if it's currently focused or not.

* * *

**theme\_changed**() [🔗](#class-window-signal-theme-changed)

Emitted when the [NOTIFICATION\_THEME\_CHANGED](#class-window-constant-notification-theme-changed) notification is sent.

* * *

**title\_changed**() [🔗](#class-window-signal-title-changed)

Emitted when window title bar text is changed.

* * *

**titlebar\_changed**() [🔗](#class-window-signal-titlebar-changed)

Emitted when window title bar decorations are changed, e.g. macOS window enter/exit full screen mode, or extend-to-title flag is changed.

* * *

**visibility\_changed**() [🔗](#class-window-signal-visibility-changed)

Emitted when **Window** is made visible or disappears.

* * *

**window\_input**(event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-window-signal-window-input)

Emitted when the **Window** is currently focused and receives any input, passing the received event as an argument. The event's position, if present, is in the embedder's coordinate system.

* * *

## Enumerations

enum **Mode**: [🔗](#enum-window-mode)

[Mode](#enum-window-mode) **MODE\_WINDOWED** = `0`

Windowed mode, i.e. **Window** doesn't occupy the whole screen (unless set to the size of the screen).

[Mode](#enum-window-mode) **MODE\_MINIMIZED** = `1`

Minimized window mode, i.e. **Window** is not visible and available on window manager's window list. Normally happens when the minimize button is pressed.

[Mode](#enum-window-mode) **MODE\_MAXIMIZED** = `2`

Maximized window mode, i.e. **Window** will occupy whole screen area except task bar and still display its borders. Normally happens when the maximize button is pressed.

[Mode](#enum-window-mode) **MODE\_FULLSCREEN** = `3`

Full screen mode with full multi-window support.

Full screen window covers the entire display area of a screen and has no decorations. The display's video mode is not changed.

**On Android:** This enables immersive mode.

**On macOS:** A new desktop is used to display the running project.

**Note:** Regardless of the platform, enabling full screen will change the window size to match the monitor's size. Therefore, make sure your project supports [multiple resolutions](../tutorials/rendering/multiple_resolutions.md) when enabling full screen mode.

[Mode](#enum-window-mode) **MODE\_EXCLUSIVE\_FULLSCREEN** = `4`

A single window full screen mode. This mode has less overhead, but only one window can be open on a given screen at a time (opening a child window or application switching will trigger a full screen transition).

Full screen window covers the entire display area of a screen and has no border or decorations. The display's video mode is not changed.

**Note:** This mode might not work with screen recording software.

**On Android:** This enables immersive mode.

**On Windows:** Depending on video driver, full screen transition might cause screens to go black for a moment.

**On macOS:** A new desktop is used to display the running project. Exclusive full screen mode prevents Dock and Menu from showing up when the mouse pointer is hovering the edge of the screen.

**On Linux (X11):** Exclusive full screen mode bypasses compositor.

**On Linux (Wayland):** Equivalent to [MODE\_FULLSCREEN](#class-window-constant-mode-fullscreen).

**Note:** Regardless of the platform, enabling full screen will change the window size to match the monitor's size. Therefore, make sure your project supports [multiple resolutions](../tutorials/rendering/multiple_resolutions.md) when enabling full screen mode.

* * *

enum **Flags**: [🔗](#enum-window-flags)

[Flags](#enum-window-flags) **FLAG\_RESIZE\_DISABLED** = `0`

The window can't be resized by dragging its resize grip. It's still possible to resize the window using [size](#class-window-property-size). This flag is ignored for full screen windows. Set with [unresizable](#class-window-property-unresizable).

[Flags](#enum-window-flags) **FLAG\_BORDERLESS** = `1`

The window do not have native title bar and other decorations. This flag is ignored for full-screen windows. Set with [borderless](#class-window-property-borderless).

[Flags](#enum-window-flags) **FLAG\_ALWAYS\_ON\_TOP** = `2`

The window is floating on top of all other windows. This flag is ignored for full-screen windows. Set with [always\_on\_top](#class-window-property-always-on-top).

[Flags](#enum-window-flags) **FLAG\_TRANSPARENT** = `3`

The window background can be transparent. Set with [transparent](#class-window-property-transparent).

**Note:** This flag has no effect if either [ProjectSettings.display/window/per\_pixel\_transparency/allowed](class_projectsettings.md#class-projectsettings-property-display-window-per-pixel-transparency-allowed), or the window's [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) is set to `false`.

[Flags](#enum-window-flags) **FLAG\_NO\_FOCUS** = `4`

The window can't be focused. No-focus window will ignore all input, except mouse clicks. Set with [unfocusable](#class-window-property-unfocusable).

[Flags](#enum-window-flags) **FLAG\_POPUP** = `5`

Window is part of menu or [OptionButton](class_optionbutton.md#class-optionbutton) dropdown. This flag can't be changed when the window is visible. An active popup window will exclusively receive all input, without stealing focus from its parent. Popup windows are automatically closed when uses click outside it, or when an application is switched. Popup window must have transient parent set (see [transient](#class-window-property-transient)).

**Note:** This flag has no effect in embedded windows (unless said window is a [Popup](class_popup.md#class-popup)).

[Flags](#enum-window-flags) **FLAG\_EXTEND\_TO\_TITLE** = `6`

Window content is expanded to the full size of the window. Unlike borderless window, the frame is left intact and can be used to resize the window, title bar is transparent, but have minimize/maximize/close buttons. Set with [extend\_to\_title](#class-window-property-extend-to-title).

**Note:** This flag is implemented only on macOS.

**Note:** This flag has no effect in embedded windows.

[Flags](#enum-window-flags) **FLAG\_MOUSE\_PASSTHROUGH** = `7`

All mouse events are passed to the underlying window of the same application.

**Note:** This flag has no effect in embedded windows.

[Flags](#enum-window-flags) **FLAG\_SHARP\_CORNERS** = `8`

Window style is overridden, forcing sharp corners.

**Note:** This flag has no effect in embedded windows.

**Note:** This flag is implemented only on Windows (11).

[Flags](#enum-window-flags) **FLAG\_EXCLUDE\_FROM\_CAPTURE** = `9`

Windows is excluded from screenshots taken by [DisplayServer.screen\_get\_image()](class_displayserver.md#class-displayserver-method-screen-get-image), [DisplayServer.screen\_get\_image\_rect()](class_displayserver.md#class-displayserver-method-screen-get-image-rect), and [DisplayServer.screen\_get\_pixel()](class_displayserver.md#class-displayserver-method-screen-get-pixel).

**Note:** This flag has no effect in embedded windows.

**Note:** This flag is implemented on macOS and Windows (10, 20H1).

**Note:** Setting this flag will prevent standard screenshot methods from capturing a window image, but does **NOT** guarantee that other apps won't be able to capture an image. It should not be used as a DRM or security measure.

[Flags](#enum-window-flags) **FLAG\_POPUP\_WM\_HINT** = `10`

Signals the window manager that this window is supposed to be an implementation-defined "popup" (usually a floating, borderless, untileable and immovable child window).

[Flags](#enum-window-flags) **FLAG\_MINIMIZE\_DISABLED** = `11`

Window minimize button is disabled.

**Note:** This flag is implemented on macOS and Windows.

[Flags](#enum-window-flags) **FLAG\_MAXIMIZE\_DISABLED** = `12`

Window maximize button is disabled.

**Note:** This flag is implemented on macOS and Windows.

[Flags](#enum-window-flags) **FLAG\_MAX** = `13`

Max value of the [Flags](#enum-window-flags).

* * *

enum **ContentScaleMode**: [🔗](#enum-window-contentscalemode)

[ContentScaleMode](#enum-window-contentscalemode) **CONTENT\_SCALE\_MODE\_DISABLED** = `0`

The content will not be scaled to match the **Window**'s size.

[ContentScaleMode](#enum-window-contentscalemode) **CONTENT\_SCALE\_MODE\_CANVAS\_ITEMS** = `1`

The content will be rendered at the target size. This is more performance-expensive than [CONTENT\_SCALE\_MODE\_VIEWPORT](#class-window-constant-content-scale-mode-viewport), but provides better results.

[ContentScaleMode](#enum-window-contentscalemode) **CONTENT\_SCALE\_MODE\_VIEWPORT** = `2`

The content will be rendered at the base size and then scaled to the target size. More performant than [CONTENT\_SCALE\_MODE\_CANVAS\_ITEMS](#class-window-constant-content-scale-mode-canvas-items), but results in pixelated image.

* * *

enum **ContentScaleAspect**: [🔗](#enum-window-contentscaleaspect)

[ContentScaleAspect](#enum-window-contentscaleaspect) **CONTENT\_SCALE\_ASPECT\_IGNORE** = `0`

The aspect will be ignored. Scaling will simply stretch the content to fit the target size.

[ContentScaleAspect](#enum-window-contentscaleaspect) **CONTENT\_SCALE\_ASPECT\_KEEP** = `1`

The content's aspect will be preserved. If the target size has different aspect from the base one, the image will be centered and black bars will appear on left and right sides.

[ContentScaleAspect](#enum-window-contentscaleaspect) **CONTENT\_SCALE\_ASPECT\_KEEP\_WIDTH** = `2`

The content can be expanded vertically. Scaling horizontally will result in keeping the width ratio and then black bars on left and right sides.

[ContentScaleAspect](#enum-window-contentscaleaspect) **CONTENT\_SCALE\_ASPECT\_KEEP\_HEIGHT** = `3`

The content can be expanded horizontally. Scaling vertically will result in keeping the height ratio and then black bars on top and bottom sides.

[ContentScaleAspect](#enum-window-contentscaleaspect) **CONTENT\_SCALE\_ASPECT\_EXPAND** = `4`

The content's aspect will be preserved. If the target size has different aspect from the base one, the content will stay in the top-left corner and add an extra visible area in the stretched space.

* * *

enum **ContentScaleStretch**: [🔗](#enum-window-contentscalestretch)

[ContentScaleStretch](#enum-window-contentscalestretch) **CONTENT\_SCALE\_STRETCH\_FRACTIONAL** = `0`

The content will be stretched according to a fractional factor. This fills all the space available in the window, but allows "pixel wobble" to occur due to uneven pixel scaling.

[ContentScaleStretch](#enum-window-contentscalestretch) **CONTENT\_SCALE\_STRETCH\_INTEGER** = `1`

The content will be stretched only according to an integer factor, preserving sharp pixels. This may leave a black background visible on the window's edges depending on the window size.

* * *

enum **LayoutDirection**: [🔗](#enum-window-layoutdirection)

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_INHERITED** = `0`

Automatic layout direction, determined from the parent window layout direction.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_APPLICATION\_LOCALE** = `1`

Automatic layout direction, determined from the current locale.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_LTR** = `2`

Left-to-right layout direction.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_RTL** = `3`

Right-to-left layout direction.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_SYSTEM\_LOCALE** = `4`

Automatic layout direction, determined from the system locale.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_MAX** = `5`

Represents the size of the [LayoutDirection](#enum-window-layoutdirection) enum.

[LayoutDirection](#enum-window-layoutdirection) **LAYOUT\_DIRECTION\_LOCALE** = `1`

**Deprecated:** Use [LAYOUT\_DIRECTION\_APPLICATION\_LOCALE](#class-window-constant-layout-direction-application-locale) instead.

* * *

enum **WindowInitialPosition**: [🔗](#enum-window-windowinitialposition)

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_ABSOLUTE** = `0`

Initial window position is determined by [position](#class-window-property-position).

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_CENTER\_PRIMARY\_SCREEN** = `1`

Initial window position is the center of the primary screen.

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_CENTER\_MAIN\_WINDOW\_SCREEN** = `2`

Initial window position is the center of the main window screen.

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_CENTER\_OTHER\_SCREEN** = `3`

Initial window position is the center of [current\_screen](#class-window-property-current-screen) screen.

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_CENTER\_SCREEN\_WITH\_MOUSE\_FOCUS** = `4`

Initial window position is the center of the screen containing the mouse pointer.

[WindowInitialPosition](#enum-window-windowinitialposition) **WINDOW\_INITIAL\_POSITION\_CENTER\_SCREEN\_WITH\_KEYBOARD\_FOCUS** = `5`

Initial window position is the center of the screen containing the window with the keyboard focus.

* * *

## Constants

**NOTIFICATION\_VISIBILITY\_CHANGED** = `30` [🔗](#class-window-constant-notification-visibility-changed)

Emitted when **Window**'s visibility changes, right before [visibility\_changed](#class-window-signal-visibility-changed).

**NOTIFICATION\_THEME\_CHANGED** = `32` [🔗](#class-window-constant-notification-theme-changed)

Sent when the node needs to refresh its theme items. This happens in one of the following cases:

- The [theme](#class-window-property-theme) property is changed on this node or any of its ancestors.

- The [theme\_type\_variation](#class-window-property-theme-type-variation) property is changed on this node.

- The node enters the scene tree.


**Note:** As an optimization, this notification won't be sent from changes that occur while this node is outside of the scene tree. Instead, all of the theme item updates can be applied at once when the node enters the scene tree.

* * *

## Property Descriptions

[String](class_string.md#class-string) **accessibility\_description** = `""` [🔗](#class-window-property-accessibility-description)

- void **set\_accessibility\_description**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_accessibility\_description**()


The human-readable node description that is reported to assistive apps.

* * *

[String](class_string.md#class-string) **accessibility\_name** = `""` [🔗](#class-window-property-accessibility-name)

- void **set\_accessibility\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_accessibility\_name**()


The human-readable node name that is reported to assistive apps.

* * *

[bool](class_bool.md#class-bool) **always\_on\_top** = `false` [🔗](#class-window-property-always-on-top)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the window will be on top of all other windows. Does not work if [transient](#class-window-property-transient) is enabled.

* * *

[bool](class_bool.md#class-bool) **auto\_translate** [🔗](#class-window-property-auto-translate)

- void **set\_auto\_translate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_translating**()


**Deprecated:** Use [Node.auto\_translate\_mode](class_node.md#class-node-property-auto-translate-mode) and [Node.can\_auto\_translate()](class_node.md#class-node-method-can-auto-translate) instead.

Toggles if any text should automatically change to its translated version depending on the current locale.

* * *

[bool](class_bool.md#class-bool) **borderless** = `false` [🔗](#class-window-property-borderless)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the window will have no borders.

* * *

[ContentScaleAspect](#enum-window-contentscaleaspect) **content\_scale\_aspect** = `0` [🔗](#class-window-property-content-scale-aspect)

- void **set\_content\_scale\_aspect**(value: [ContentScaleAspect](#enum-window-contentscaleaspect))

- [ContentScaleAspect](#enum-window-contentscaleaspect) **get\_content\_scale\_aspect**()


Specifies how the content's aspect behaves when the **Window** is resized. The base aspect is determined by [content\_scale\_size](#class-window-property-content-scale-size).

* * *

[float](class_float.md#class-float) **content\_scale\_factor** = `1.0` [🔗](#class-window-property-content-scale-factor)

- void **set\_content\_scale\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_content\_scale\_factor**()


Specifies the base scale of **Window**'s content when its [size](#class-window-property-size) is equal to [content\_scale\_size](#class-window-property-content-scale-size). See also [Viewport.get\_stretch\_transform()](class_viewport.md#class-viewport-method-get-stretch-transform).

* * *

[ContentScaleMode](#enum-window-contentscalemode) **content\_scale\_mode** = `0` [🔗](#class-window-property-content-scale-mode)

- void **set\_content\_scale\_mode**(value: [ContentScaleMode](#enum-window-contentscalemode))

- [ContentScaleMode](#enum-window-contentscalemode) **get\_content\_scale\_mode**()


Specifies how the content is scaled when the **Window** is resized.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **content\_scale\_size** = `Vector2i(0, 0)` [🔗](#class-window-property-content-scale-size)

- void **set\_content\_scale\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_content\_scale\_size**()


Base size of the content (i.e. nodes that are drawn inside the window). If non-zero, **Window**'s content will be scaled when the window is resized to a different size.

* * *

[ContentScaleStretch](#enum-window-contentscalestretch) **content\_scale\_stretch** = `0` [🔗](#class-window-property-content-scale-stretch)

- void **set\_content\_scale\_stretch**(value: [ContentScaleStretch](#enum-window-contentscalestretch))

- [ContentScaleStretch](#enum-window-contentscalestretch) **get\_content\_scale\_stretch**()


The policy to use to determine the final scale factor for 2D elements. This affects how [content\_scale\_factor](#class-window-property-content-scale-factor) is applied, in addition to the automatic scale factor determined by [content\_scale\_size](#class-window-property-content-scale-size).

* * *

[int](class_int.md#class-int) **current\_screen** [🔗](#class-window-property-current-screen)

- void **set\_current\_screen**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_current\_screen**()


The screen the window is currently on.

* * *

[bool](class_bool.md#class-bool) **exclude\_from\_capture** = `false` [🔗](#class-window-property-exclude-from-capture)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** is excluded from screenshots taken by [DisplayServer.screen\_get\_image()](class_displayserver.md#class-displayserver-method-screen-get-image), [DisplayServer.screen\_get\_image\_rect()](class_displayserver.md#class-displayserver-method-screen-get-image-rect), and [DisplayServer.screen\_get\_pixel()](class_displayserver.md#class-displayserver-method-screen-get-pixel).

**Note:** This property is implemented on macOS and Windows.

**Note:** Enabling this setting will prevent standard screenshot methods from capturing a window image, but does **NOT** guarantee that other apps won't be able to capture an image. It should not be used as a DRM or security measure.

* * *

[bool](class_bool.md#class-bool) **exclusive** = `false` [🔗](#class-window-property-exclusive)

- void **set\_exclusive**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_exclusive**()


If `true`, the **Window** will be in exclusive mode. Exclusive windows are always on top of their parent and will block all input going to the parent **Window**.

Needs [transient](#class-window-property-transient) enabled to work.

* * *

[bool](class_bool.md#class-bool) **extend\_to\_title** = `false` [🔗](#class-window-property-extend-to-title)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** contents is expanded to the full size of the window, window title bar is transparent.

**Note:** This property is implemented only on macOS.

**Note:** This property only works with native windows.

* * *

[bool](class_bool.md#class-bool) **force\_native** = `false` [🔗](#class-window-property-force-native)

- void **set\_force\_native**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_force\_native**()


If `true`, native window will be used regardless of parent viewport and project settings.

* * *

[WindowInitialPosition](#enum-window-windowinitialposition) **initial\_position** = `0` [🔗](#class-window-property-initial-position)

- void **set\_initial\_position**(value: [WindowInitialPosition](#enum-window-windowinitialposition))

- [WindowInitialPosition](#enum-window-windowinitialposition) **get\_initial\_position**()


Specifies the initial type of position for the **Window**.

* * *

[bool](class_bool.md#class-bool) **keep\_title\_visible** = `false` [🔗](#class-window-property-keep-title-visible)

- void **set\_keep\_title\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_keep\_title\_visible**()


If `true`, the **Window** width is expanded to keep the title bar text fully visible.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **max\_size** = `Vector2i(0, 0)` [🔗](#class-window-property-max-size)

- void **set\_max\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_max\_size**()


If non-zero, the **Window** can't be resized to be bigger than this size.

**Note:** This property will be ignored if the value is lower than [min\_size](#class-window-property-min-size).

* * *

[bool](class_bool.md#class-bool) **maximize\_disabled** = `false` [🔗](#class-window-property-maximize-disabled)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window**'s maximize button is disabled.

**Note:** If both minimize and maximize buttons are disabled, buttons are fully hidden, and only close button is visible.

**Note:** This property is implemented only on macOS and Windows.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **min\_size** = `Vector2i(0, 0)` [🔗](#class-window-property-min-size)

- void **set\_min\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_min\_size**()


If non-zero, the **Window** can't be resized to be smaller than this size.

**Note:** This property will be ignored in favor of [get\_contents\_minimum\_size()](#class-window-method-get-contents-minimum-size) if [wrap\_controls](#class-window-property-wrap-controls) is enabled and if its size is bigger.

* * *

[bool](class_bool.md#class-bool) **minimize\_disabled** = `false` [🔗](#class-window-property-minimize-disabled)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window**'s minimize button is disabled.

**Note:** If both minimize and maximize buttons are disabled, buttons are fully hidden, and only close button is visible.

**Note:** This property is implemented only on macOS and Windows.

* * *

[Mode](#enum-window-mode) **mode** = `0` [🔗](#class-window-property-mode)

- void **set\_mode**(value: [Mode](#enum-window-mode))

- [Mode](#enum-window-mode) **get\_mode**()


Set's the window's current mode.

**Note:** Fullscreen mode is not exclusive full screen on Windows and Linux.

**Note:** This method only works with native windows, i.e. the main window and **Window**-derived nodes when [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows) is disabled in the main viewport.

* * *

[bool](class_bool.md#class-bool) **mouse\_passthrough** = `false` [🔗](#class-window-property-mouse-passthrough)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, all mouse events will be passed to the underlying window of the same application. See also [mouse\_passthrough\_polygon](#class-window-property-mouse-passthrough-polygon).

**Note:** This property is implemented on Linux (X11), macOS and Windows.

**Note:** This property only works with native windows.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **mouse\_passthrough\_polygon** = `PackedVector2Array()` [🔗](#class-window-property-mouse-passthrough-polygon)

- void **set\_mouse\_passthrough\_polygon**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_mouse\_passthrough\_polygon**()


Sets a polygonal region of the window which accepts mouse events. Mouse events outside the region will be passed through.

Passing an empty array will disable passthrough support (all mouse events will be intercepted by the window, which is the default behavior).

GDScriptC#

```
# Set region, using Path2D node.
$Window.mouse_passthrough_polygon = $Path2D.curve.get_baked_points()

# Set region, using Polygon2D node.
$Window.mouse_passthrough_polygon = $Polygon2D.polygon

# Reset region to default.
$Window.mouse_passthrough_polygon = []

```

```
// Set region, using Path2D node.
GetNode<Window>("Window").MousePassthroughPolygon = GetNode<Path2D>("Path2D").Curve.GetBakedPoints();

// Set region, using Polygon2D node.
GetNode<Window>("Window").MousePassthroughPolygon = GetNode<Polygon2D>("Polygon2D").Polygon;

// Reset region to default.
GetNode<Window>("Window").MousePassthroughPolygon = [];

```

**Note:** This property is ignored if [mouse\_passthrough](#class-window-property-mouse-passthrough) is set to `true`.

**Note:** On Windows, the portion of a window that lies outside the region is not drawn, while on Linux (X11) and macOS it is.

**Note:** This property is implemented on Linux (X11), macOS and Windows.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[bool](class_bool.md#class-bool) **popup\_window** = `false` [🔗](#class-window-property-popup-window)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** will be considered a popup. Popups are sub-windows that don't show as separate windows in system's window manager's window list and will send close request when anything is clicked outside of them (unless [exclusive](#class-window-property-exclusive) is enabled).

* * *

[bool](class_bool.md#class-bool) **popup\_wm\_hint** = `false` [🔗](#class-window-property-popup-wm-hint)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** will signal to the window manager that it is supposed to be an implementation-defined "popup" (usually a floating, borderless, untileable and immovable child window).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **position** = `Vector2i(0, 0)` [🔗](#class-window-property-position)

- void **set\_position**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_position**()


The window's position in pixels.

If [ProjectSettings.display/window/subwindows/embed\_subwindows](class_projectsettings.md#class-projectsettings-property-display-window-subwindows-embed-subwindows) is `false`, the position is in absolute screen coordinates. This typically applies to editor plugins. If the setting is `true`, the window's position is in the coordinates of its parent [Viewport](class_viewport.md#class-viewport).

**Note:** This property only works if [initial\_position](#class-window-property-initial-position) is set to [WINDOW\_INITIAL\_POSITION\_ABSOLUTE](#class-window-constant-window-initial-position-absolute).

* * *

[bool](class_bool.md#class-bool) **sharp\_corners** = `false` [🔗](#class-window-property-sharp-corners)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** will override the OS window style to display sharp corners.

**Note:** This property is implemented only on Windows (11).

**Note:** This property only works with native windows.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size** = `Vector2i(100, 100)` [🔗](#class-window-property-size)

- void **set\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_size**()


The window's size in pixels.

* * *

[Theme](class_theme.md#class-theme) **theme** [🔗](#class-window-property-theme)

- void **set\_theme**(value: [Theme](class_theme.md#class-theme))

- [Theme](class_theme.md#class-theme) **get\_theme**()


The [Theme](class_theme.md#class-theme) resource this node and all its [Control](class_control.md#class-control) and **Window** children use. If a child node has its own [Theme](class_theme.md#class-theme) resource set, theme items are merged with child's definitions having higher priority.

**Note:** **Window** styles will have no effect unless the window is embedded.

* * *

[StringName](class_stringname.md#class-stringname) **theme\_type\_variation** = `&""` [🔗](#class-window-property-theme-type-variation)

- void **set\_theme\_type\_variation**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_theme\_type\_variation**()


The name of a theme type variation used by this **Window** to look up its own theme items. See [Control.theme\_type\_variation](class_control.md#class-control-property-theme-type-variation) for more details.

* * *

[String](class_string.md#class-string) **title** = `""` [🔗](#class-window-property-title)

- void **set\_title**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_title**()


The window's title. If the **Window** is native, title styles set in [Theme](class_theme.md#class-theme) will have no effect.

* * *

[bool](class_bool.md#class-bool) **transient** = `false` [🔗](#class-window-property-transient)

- void **set\_transient**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_transient**()


If `true`, the **Window** is transient, i.e. it's considered a child of another **Window**. The transient window will be destroyed with its transient parent and will return focus to their parent when closed. The transient window is displayed on top of a non-exclusive full-screen parent window. Transient windows can't enter full-screen mode.

Note that behavior might be different depending on the platform.

* * *

[bool](class_bool.md#class-bool) **transient\_to\_focused** = `false` [🔗](#class-window-property-transient-to-focused)

- void **set\_transient\_to\_focused**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_transient\_to\_focused**()


If `true`, and the **Window** is [transient](#class-window-property-transient), this window will (at the time of becoming visible) become transient to the currently focused window instead of the immediate parent window in the hierarchy. Note that the transient parent is assigned at the time this window becomes visible, so changing it afterwards has no effect until re-shown.

* * *

[bool](class_bool.md#class-bool) **transparent** = `false` [🔗](#class-window-property-transparent)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window**'s background can be transparent. This is best used with embedded windows.

**Note:** Transparency support is implemented on Linux, macOS and Windows, but availability might vary depending on GPU driver, display manager, and compositor capabilities.

**Note:** This property has no effect if [ProjectSettings.display/window/per\_pixel\_transparency/allowed](class_projectsettings.md#class-projectsettings-property-display-window-per-pixel-transparency-allowed) is set to `false`.

* * *

[bool](class_bool.md#class-bool) **unfocusable** = `false` [🔗](#class-window-property-unfocusable)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the **Window** can't be focused nor interacted with. It can still be visible.

* * *

[bool](class_bool.md#class-bool) **unresizable** = `false` [🔗](#class-window-property-unresizable)

- void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const


If `true`, the window can't be resized.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-window-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, the window is visible.

* * *

[bool](class_bool.md#class-bool) **wrap\_controls** = `false` [🔗](#class-window-property-wrap-controls)

- void **set\_wrap\_controls**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_wrapping\_controls**()


If `true`, the window's size will automatically update when a child node is added or removed, ignoring [min\_size](#class-window-property-min-size) if the new size is bigger.

If `false`, you need to call [child\_controls\_changed()](#class-window-method-child-controls-changed) manually.

* * *

## Method Descriptions

[Vector2](class_vector2.md#class-vector2) **\_get\_contents\_minimum\_size**() virtualconst [🔗](#class-window-private-method-get-contents-minimum-size)

Virtual method to be implemented by the user. Overrides the value returned by [get\_contents\_minimum\_size()](#class-window-method-get-contents-minimum-size).

* * *

void **add\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) [🔗](#class-window-method-add-theme-color-override)

Creates a local override for a theme [Color](class_color.md#class-color) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_color\_override()](#class-window-method-remove-theme-color-override).

See also [get\_theme\_color()](#class-window-method-get-theme-color) and [Control.add\_theme\_color\_override()](class_control.md#class-control-method-add-theme-color-override) for more details.

* * *

void **add\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) [🔗](#class-window-method-add-theme-constant-override)

Creates a local override for a theme constant with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_constant\_override()](#class-window-method-remove-theme-constant-override).

See also [get\_theme\_constant()](#class-window-method-get-theme-constant).

* * *

void **add\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) [🔗](#class-window-method-add-theme-font-override)

Creates a local override for a theme [Font](class_font.md#class-font) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_font\_override()](#class-window-method-remove-theme-font-override).

See also [get\_theme\_font()](#class-window-method-get-theme-font).

* * *

void **add\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) [🔗](#class-window-method-add-theme-font-size-override)

Creates a local override for a theme font size with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_font\_size\_override()](#class-window-method-remove-theme-font-size-override).

See also [get\_theme\_font\_size()](#class-window-method-get-theme-font-size).

* * *

void **add\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-window-method-add-theme-icon-override)

Creates a local override for a theme icon with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_icon\_override()](#class-window-method-remove-theme-icon-override).

See also [get\_theme\_icon()](#class-window-method-get-theme-icon).

* * *

void **add\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname), stylebox: [StyleBox](class_stylebox.md#class-stylebox)) [🔗](#class-window-method-add-theme-stylebox-override)

Creates a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_stylebox\_override()](#class-window-method-remove-theme-stylebox-override).

See also [get\_theme\_stylebox()](#class-window-method-get-theme-stylebox) and [Control.add\_theme\_stylebox\_override()](class_control.md#class-control-method-add-theme-stylebox-override) for more details.

* * *

void **begin\_bulk\_theme\_override**() [🔗](#class-window-method-begin-bulk-theme-override)

Prevents `*_theme_*_override` methods from emitting [NOTIFICATION\_THEME\_CHANGED](#class-window-constant-notification-theme-changed) until [end\_bulk\_theme\_override()](#class-window-method-end-bulk-theme-override) is called.

* * *

[bool](class_bool.md#class-bool) **can\_draw**() const [🔗](#class-window-method-can-draw)

Returns whether the window is being drawn to the screen.

* * *

void **child\_controls\_changed**() [🔗](#class-window-method-child-controls-changed)

Requests an update of the **Window** size to fit underlying [Control](class_control.md#class-control) nodes.

* * *

void **end\_bulk\_theme\_override**() [🔗](#class-window-method-end-bulk-theme-override)

Ends a bulk theme override update. See [begin\_bulk\_theme\_override()](#class-window-method-begin-bulk-theme-override).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contents\_minimum\_size**() const [🔗](#class-window-method-get-contents-minimum-size)

Returns the combined minimum size from the child [Control](class_control.md#class-control) nodes of the window. Use [child\_controls\_changed()](#class-window-method-child-controls-changed) to update it when child nodes have changed.

The value returned by this method can be overridden with [\_get\_contents\_minimum\_size()](#class-window-private-method-get-contents-minimum-size).

* * *

[bool](class_bool.md#class-bool) **get\_flag**(flag: [Flags](#enum-window-flags)) const [🔗](#class-window-method-get-flag)

Returns `true` if the `flag` is set.

* * *

[Window](#class-window) **get\_focused\_window**() static [🔗](#class-window-method-get-focused-window)

Returns the focused window.

* * *

[LayoutDirection](#enum-window-layoutdirection) **get\_layout\_direction**() const [🔗](#class-window-method-get-layout-direction)

Returns layout direction and text writing direction.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_position\_with\_decorations**() const [🔗](#class-window-method-get-position-with-decorations)

Returns the window's position including its border.

**Note:** If [visible](#class-window-property-visible) is `false`, this method returns the same value as [position](#class-window-property-position).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_size\_with\_decorations**() const [🔗](#class-window-method-get-size-with-decorations)

Returns the window's size including its border.

**Note:** If [visible](#class-window-property-visible) is `false`, this method returns the same value as [size](#class-window-property-size).

* * *

[Color](class_color.md#class-color) **get\_theme\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-color)

Returns a [Color](class_color.md#class-color) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a color item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for more details.

* * *

[int](class_int.md#class-int) **get\_theme\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-constant)

Returns a constant from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a constant item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for more details.

* * *

[float](class_float.md#class-float) **get\_theme\_default\_base\_scale**() const [🔗](#class-window-method-get-theme-default-base-scale)

Returns the default base scale value from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_base\_scale](class_theme.md#class-theme-property-default-base-scale) value.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[Font](class_font.md#class-font) **get\_theme\_default\_font**() const [🔗](#class-window-method-get-theme-default-font)

Returns the default font from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_font](class_theme.md#class-theme-property-default-font) value.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[int](class_int.md#class-int) **get\_theme\_default\_font\_size**() const [🔗](#class-window-method-get-theme-default-font-size)

Returns the default font size value from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_font\_size](class_theme.md#class-theme-property-default-font-size) value.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[Font](class_font.md#class-font) **get\_theme\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-font)

Returns a [Font](class_font.md#class-font) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a font item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[int](class_int.md#class-int) **get\_theme\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-font-size)

Returns a font size from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a font size item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_theme\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-icon)

Returns an icon from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has an icon item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **get\_theme\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-get-theme-stylebox)

Returns a [StyleBox](class_stylebox.md#class-stylebox) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a stylebox item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[int](class_int.md#class-int) **get\_window\_id**() const [🔗](#class-window-method-get-window-id)

Returns the ID of the window.

* * *

void **grab\_focus**() [🔗](#class-window-method-grab-focus)

Causes the window to grab focus, allowing it to receive user input.

* * *

[bool](class_bool.md#class-bool) **has\_focus**() const [🔗](#class-window-method-has-focus)

Returns `true` if the window is focused.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-color)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a color item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-color-override)

Returns `true` if there is a local override for a theme [Color](class_color.md#class-color) with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_color\_override()](#class-window-method-add-theme-color-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-constant)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a constant item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-constant-override)

Returns `true` if there is a local override for a theme constant with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_constant\_override()](#class-window-method-add-theme-constant-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-font)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a font item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-font-override)

Returns `true` if there is a local override for a theme [Font](class_font.md#class-font) with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_font\_override()](#class-window-method-add-theme-font-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-font-size)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a font size item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-font-size-override)

Returns `true` if there is a local override for a theme font size with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_font\_size\_override()](#class-window-method-add-theme-font-size-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-icon)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has an icon item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-icon-override)

Returns `true` if there is a local override for a theme icon with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_icon\_override()](#class-window-method-add-theme-icon-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-window-method-has-theme-stylebox)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a stylebox item with the specified `name` and `theme_type`.

See [Control.get\_theme\_color()](class_control.md#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-window-method-has-theme-stylebox-override)

Returns `true` if there is a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name` in this [Control](class_control.md#class-control) node.

See [add\_theme\_stylebox\_override()](#class-window-method-add-theme-stylebox-override).

* * *

void **hide**() [🔗](#class-window-method-hide)

Hides the window. This is not the same as minimized state. Hidden window can't be interacted with and needs to be made visible with [show()](#class-window-method-show).

* * *

[bool](class_bool.md#class-bool) **is\_embedded**() const [🔗](#class-window-method-is-embedded)

Returns `true` if the window is currently embedded in another window.

* * *

[bool](class_bool.md#class-bool) **is\_layout\_rtl**() const [🔗](#class-window-method-is-layout-rtl)

Returns `true` if the layout is right-to-left.

* * *

[bool](class_bool.md#class-bool) **is\_maximize\_allowed**() const [🔗](#class-window-method-is-maximize-allowed)

Returns `true` if the window can be maximized (the maximize button is enabled).

* * *

[bool](class_bool.md#class-bool) **is\_using\_font\_oversampling**() const [🔗](#class-window-method-is-using-font-oversampling)

Returns `true` if font oversampling is enabled. See [set\_use\_font\_oversampling()](#class-window-method-set-use-font-oversampling).

* * *

void **move\_to\_center**() [🔗](#class-window-method-move-to-center)

Centers a native window on the current screen and an embedded window on its embedder [Viewport](class_viewport.md#class-viewport).

* * *

void **move\_to\_foreground**() [🔗](#class-window-method-move-to-foreground)

**Deprecated:** Use [grab\_focus()](#class-window-method-grab-focus) instead.

Causes the window to grab focus, allowing it to receive user input.

* * *

void **popup**(rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) [🔗](#class-window-method-popup)

Shows the **Window** and makes it transient (see [transient](#class-window-property-transient)). If `rect` is provided, it will be set as the **Window**'s size. Fails if called on the main window.

If [ProjectSettings.display/window/subwindows/embed\_subwindows](class_projectsettings.md#class-projectsettings-property-display-window-subwindows-embed-subwindows) is `true` (single-window mode), `rect`'s coordinates are global and relative to the main window's top-left corner (excluding window decorations). If `rect`'s position coordinates are negative, the window will be located outside the main window and may not be visible as a result.

If [ProjectSettings.display/window/subwindows/embed\_subwindows](class_projectsettings.md#class-projectsettings-property-display-window-subwindows-embed-subwindows) is `false` (multi-window mode), `rect`'s coordinates are global and relative to the top-left corner of the leftmost screen. If `rect`'s position coordinates are negative, the window will be placed at the top-left corner of the screen.

**Note:** `rect` must be in global coordinates if specified.

* * *

void **popup\_centered**(minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) [🔗](#class-window-method-popup-centered)

Popups the **Window** at the center of the current screen, with optionally given minimum size. If the **Window** is embedded, it will be centered in the parent [Viewport](class_viewport.md#class-viewport) instead.

**Note:** Calling it with the default value of `minsize` is equivalent to calling it with [size](#class-window-property-size).

* * *

void **popup\_centered\_clamped**(minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) [🔗](#class-window-method-popup-centered-clamped)

Popups the **Window** centered inside its parent **Window**. `fallback_ratio` determines the maximum size of the **Window**, in relation to its parent.

**Note:** Calling it with the default value of `minsize` is equivalent to calling it with [size](#class-window-property-size).

* * *

void **popup\_centered\_ratio**(ratio: [float](class_float.md#class-float) = 0.8) [🔗](#class-window-method-popup-centered-ratio)

If **Window** is embedded, popups the **Window** centered inside its embedder and sets its size as a `ratio` of embedder's size.

If **Window** is a native window, popups the **Window** centered inside the screen of its parent **Window** and sets its size as a `ratio` of the screen size.

* * *

void **popup\_exclusive**(from\_node: [Node](class_node.md#class-node), rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) [🔗](#class-window-method-popup-exclusive)

Attempts to parent this dialog to the last exclusive window relative to `from_node`, and then calls [popup()](#class-window-method-popup) on it. The dialog must have no current parent, otherwise the method fails.

See also [set\_unparent\_when\_invisible()](#class-window-method-set-unparent-when-invisible) and [Node.get\_last\_exclusive\_window()](class_node.md#class-node-method-get-last-exclusive-window).

* * *

void **popup\_exclusive\_centered**(from\_node: [Node](class_node.md#class-node), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) [🔗](#class-window-method-popup-exclusive-centered)

Attempts to parent this dialog to the last exclusive window relative to `from_node`, and then calls [popup\_centered()](#class-window-method-popup-centered) on it. The dialog must have no current parent, otherwise the method fails.

See also [set\_unparent\_when\_invisible()](#class-window-method-set-unparent-when-invisible) and [Node.get\_last\_exclusive\_window()](class_node.md#class-node-method-get-last-exclusive-window).

* * *

void **popup\_exclusive\_centered\_clamped**(from\_node: [Node](class_node.md#class-node), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) [🔗](#class-window-method-popup-exclusive-centered-clamped)

Attempts to parent this dialog to the last exclusive window relative to `from_node`, and then calls [popup\_centered\_clamped()](#class-window-method-popup-centered-clamped) on it. The dialog must have no current parent, otherwise the method fails.

See also [set\_unparent\_when\_invisible()](#class-window-method-set-unparent-when-invisible) and [Node.get\_last\_exclusive\_window()](class_node.md#class-node-method-get-last-exclusive-window).

* * *

void **popup\_exclusive\_centered\_ratio**(from\_node: [Node](class_node.md#class-node), ratio: [float](class_float.md#class-float) = 0.8) [🔗](#class-window-method-popup-exclusive-centered-ratio)

Attempts to parent this dialog to the last exclusive window relative to `from_node`, and then calls [popup\_centered\_ratio()](#class-window-method-popup-centered-ratio) on it. The dialog must have no current parent, otherwise the method fails.

See also [set\_unparent\_when\_invisible()](#class-window-method-set-unparent-when-invisible) and [Node.get\_last\_exclusive\_window()](class_node.md#class-node-method-get-last-exclusive-window).

* * *

void **popup\_exclusive\_on\_parent**(from\_node: [Node](class_node.md#class-node), parent\_rect: [Rect2i](class_rect2i.md#class-rect2i)) [🔗](#class-window-method-popup-exclusive-on-parent)

Attempts to parent this dialog to the last exclusive window relative to `from_node`, and then calls [popup\_on\_parent()](#class-window-method-popup-on-parent) on it. The dialog must have no current parent, otherwise the method fails.

See also [set\_unparent\_when\_invisible()](#class-window-method-set-unparent-when-invisible) and [Node.get\_last\_exclusive\_window()](class_node.md#class-node-method-get-last-exclusive-window).

* * *

void **popup\_on\_parent**(parent\_rect: [Rect2i](class_rect2i.md#class-rect2i)) [🔗](#class-window-method-popup-on-parent)

Popups the **Window** with a position shifted by parent **Window**'s position. If the **Window** is embedded, has the same effect as [popup()](#class-window-method-popup).

* * *

void **remove\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-color-override)

Removes a local override for a theme [Color](class_color.md#class-color) with the specified `name` previously added by [add\_theme\_color\_override()](#class-window-method-add-theme-color-override) or via the Inspector dock.

* * *

void **remove\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-constant-override)

Removes a local override for a theme constant with the specified `name` previously added by [add\_theme\_constant\_override()](#class-window-method-add-theme-constant-override) or via the Inspector dock.

* * *

void **remove\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-font-override)

Removes a local override for a theme [Font](class_font.md#class-font) with the specified `name` previously added by [add\_theme\_font\_override()](#class-window-method-add-theme-font-override) or via the Inspector dock.

* * *

void **remove\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-font-size-override)

Removes a local override for a theme font size with the specified `name` previously added by [add\_theme\_font\_size\_override()](#class-window-method-add-theme-font-size-override) or via the Inspector dock.

* * *

void **remove\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-icon-override)

Removes a local override for a theme icon with the specified `name` previously added by [add\_theme\_icon\_override()](#class-window-method-add-theme-icon-override) or via the Inspector dock.

* * *

void **remove\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-window-method-remove-theme-stylebox-override)

Removes a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name` previously added by [add\_theme\_stylebox\_override()](#class-window-method-add-theme-stylebox-override) or via the Inspector dock.

* * *

void **request\_attention**() [🔗](#class-window-method-request-attention)

Tells the OS that the **Window** needs an attention. This makes the window stand out in some way depending on the system, e.g. it might blink on the task bar.

* * *

void **reset\_size**() [🔗](#class-window-method-reset-size)

Resets the size to the minimum size, which is the max of [min\_size](#class-window-property-min-size) and (if [wrap\_controls](#class-window-property-wrap-controls) is enabled) [get\_contents\_minimum\_size()](#class-window-method-get-contents-minimum-size). This is equivalent to calling `set_size(Vector2i())` (or any size below the minimum).

* * *

void **set\_flag**(flag: [Flags](#enum-window-flags), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-window-method-set-flag)

Sets a specified window flag.

* * *

void **set\_ime\_active**(active: [bool](class_bool.md#class-bool)) [🔗](#class-window-method-set-ime-active)

If `active` is `true`, enables system's native IME (Input Method Editor).

* * *

void **set\_ime\_position**(position: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-window-method-set-ime-position)

Moves IME to the given position.

* * *

void **set\_layout\_direction**(direction: [LayoutDirection](#enum-window-layoutdirection)) [🔗](#class-window-method-set-layout-direction)

Sets layout direction and text writing direction. Right-to-left layouts are necessary for certain languages (e.g. Arabic and Hebrew).

* * *

void **set\_unparent\_when\_invisible**(unparent: [bool](class_bool.md#class-bool)) [🔗](#class-window-method-set-unparent-when-invisible)

If `unparent` is `true`, the window is automatically unparented when going invisible.

**Note:** Make sure to keep a reference to the node, otherwise it will be orphaned. You also need to manually call [Node.queue\_free()](class_node.md#class-node-method-queue-free) to free the window if it's not parented.

* * *

void **set\_use\_font\_oversampling**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-window-method-set-use-font-oversampling)

Enables font oversampling. This makes fonts look better when they are scaled up.

* * *

void **show**() [🔗](#class-window-method-show)

Makes the **Window** appear. This enables interactions with the **Window** and doesn't change any of its property other than visibility (unlike e.g. [popup()](#class-window-method-popup)).

* * *

void **start\_drag**() [🔗](#class-window-method-start-drag)

Starts an interactive drag operation on the window, using the current mouse position. Call this method when handling a mouse button being pressed to simulate a pressed event on the window's title bar. Using this method allows the window to participate in space switching, tiling, and other system features.

* * *

void **start\_resize**(edge: [WindowResizeEdge](class_displayserver.md#enum-displayserver-windowresizeedge)) [🔗](#class-window-method-start-resize)

Starts an interactive resize operation on the window, using the current mouse position. Call this method when handling a mouse button being pressed to simulate a pressed event on the window's edge.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **title\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-window-theme-color-title-color)

The color of the title's text.

* * *

[Color](class_color.md#class-color) **title\_outline\_modulate** = `Color(0, 0, 0, 1)` [🔗](#class-window-theme-color-title-outline-modulate)

The color of the title's text outline.

* * *

[int](class_int.md#class-int) **close\_h\_offset** = `18` [🔗](#class-window-theme-constant-close-h-offset)

Horizontal position offset of the close button, relative to the end of the title bar, towards the beginning of the title bar.

* * *

[int](class_int.md#class-int) **close\_v\_offset** = `24` [🔗](#class-window-theme-constant-close-v-offset)

Vertical position offset of the close button, relative to the bottom of the title bar, towards the top of the title bar.

* * *

[int](class_int.md#class-int) **resize\_margin** = `4` [🔗](#class-window-theme-constant-resize-margin)

Defines the outside margin at which the window border can be grabbed with mouse and resized.

* * *

[int](class_int.md#class-int) **title\_height** = `36` [🔗](#class-window-theme-constant-title-height)

Height of the title bar.

* * *

[int](class_int.md#class-int) **title\_outline\_size** = `0` [🔗](#class-window-theme-constant-title-outline-size)

The size of the title outline.

* * *

[Font](class_font.md#class-font) **title\_font** [🔗](#class-window-theme-font-title-font)

The font used to draw the title.

* * *

[int](class_int.md#class-int) **title\_font\_size** [🔗](#class-window-theme-font-size-title-font-size)

The size of the title font.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **close** [🔗](#class-window-theme-icon-close)

The icon for the close button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **close\_pressed** [🔗](#class-window-theme-icon-close-pressed)

The icon for the close button when it's being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **embedded\_border** [🔗](#class-window-theme-style-embedded-border)

The background style used when the **Window** is embedded. Note that this is drawn only under the window's content, excluding the title. For proper borders and title bar style, you can use `expand_margin_*` properties of [StyleBoxFlat](class_styleboxflat.md#class-styleboxflat).

**Note:** The content background will not be visible unless [transparent](#class-window-property-transparent) is enabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **embedded\_unfocused\_border** [🔗](#class-window-theme-style-embedded-unfocused-border)

The background style used when the **Window** is embedded and unfocused.

[Previous](class_vsplitcontainer.md "VSplitContainer") [Next](class_worldenvironment.md "WorldEnvironment")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vsplitcontainer.md "VSplitContainer") [Next](class_worldenvironment.md "WorldEnvironment")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).