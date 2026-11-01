---
title: BaseButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_basebutton.html
crawled_at: "2026-08-13T10:31:57+12:00"
content_hash: 8e09f10082b172f8b7386d3278f53f43c3de5732d3cdc778b52138b6940cf7fe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - BaseButton

* * *

# BaseButton

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [Button](class_button.md#class-button), [LinkButton](class_linkbutton.md#class-linkbutton), [TextureButton](class_texturebutton.md#class-texturebutton)

Abstract base class for GUI buttons.

## Description

**BaseButton** is an abstract base class for GUI buttons. It doesn't display anything by itself.

## Properties

|     |     |     |
| --- | --- | --- |
| [ActionMode](#enum-basebutton-actionmode) | [action\_mode](#class-basebutton-property-action-mode) | `1` |
| [ButtonGroup](class_buttongroup.md#class-buttongroup) | [button\_group](#class-basebutton-property-button-group) |  |
| BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] | [button\_mask](#class-basebutton-property-button-mask) | `1` |
| [bool](class_bool.md#class-bool) | [button\_pressed](#class-basebutton-property-button-pressed) | `false` |
| [bool](class_bool.md#class-bool) | [disabled](#class-basebutton-property-disabled) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [keep\_pressed\_outside](#class-basebutton-property-keep-pressed-outside) | `false` |
| [Shortcut](class_shortcut.md#class-shortcut) | [shortcut](#class-basebutton-property-shortcut) |  |
| [bool](class_bool.md#class-bool) | [shortcut\_feedback](#class-basebutton-property-shortcut-feedback) | `true` |
| [bool](class_bool.md#class-bool) | [shortcut\_in\_tooltip](#class-basebutton-property-shortcut-in-tooltip) | `true` |
| [bool](class_bool.md#class-bool) | [toggle\_mode](#class-basebutton-property-toggle-mode) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [\_pressed](#class-basebutton-private-method-pressed)() virtual |
| void | [\_toggled](#class-basebutton-private-method-toggled)(toggled\_on: [bool](class_bool.md#class-bool)) virtual |
| [DrawMode](#enum-basebutton-drawmode) | [get\_draw\_mode](#class-basebutton-method-get-draw-mode)() const |
| [bool](class_bool.md#class-bool) | [is\_hovered](#class-basebutton-method-is-hovered)() const |
| void | [set\_pressed\_no\_signal](#class-basebutton-method-set-pressed-no-signal)(pressed: [bool](class_bool.md#class-bool)) |

* * *

## Signals

**button\_down**() [🔗](#class-basebutton-signal-button-down)

Emitted when the button starts being held down.

* * *

**button\_up**() [🔗](#class-basebutton-signal-button-up)

Emitted when the button stops being held down.

* * *

**pressed**() [🔗](#class-basebutton-signal-pressed)

Emitted when the button is toggled or pressed. This is on [button\_down](#class-basebutton-signal-button-down) if [action\_mode](#class-basebutton-property-action-mode) is [ACTION\_MODE\_BUTTON\_PRESS](#class-basebutton-constant-action-mode-button-press) and on [button\_up](#class-basebutton-signal-button-up) otherwise.

If you need to know the button's pressed state (and [toggle\_mode](#class-basebutton-property-toggle-mode) is active), use [toggled](#class-basebutton-signal-toggled) instead.

* * *

**toggled**(toggled\_on: [bool](class_bool.md#class-bool)) [🔗](#class-basebutton-signal-toggled)

Emitted when the button was just toggled between pressed and normal states (only if [toggle\_mode](#class-basebutton-property-toggle-mode) is active). The new state is contained in the `toggled_on` argument.

* * *

## Enumerations

enum **DrawMode**: [🔗](#enum-basebutton-drawmode)

[DrawMode](#enum-basebutton-drawmode) **DRAW\_NORMAL** = `0`

The normal state (i.e. not pressed, not hovered, not toggled and enabled) of buttons.

[DrawMode](#enum-basebutton-drawmode) **DRAW\_PRESSED** = `1`

The state of buttons are pressed.

[DrawMode](#enum-basebutton-drawmode) **DRAW\_HOVER** = `2`

The state of buttons are hovered.

[DrawMode](#enum-basebutton-drawmode) **DRAW\_DISABLED** = `3`

The state of buttons are disabled.

[DrawMode](#enum-basebutton-drawmode) **DRAW\_HOVER\_PRESSED** = `4`

The state of buttons are both hovered and pressed.

* * *

enum **ActionMode**: [🔗](#enum-basebutton-actionmode)

[ActionMode](#enum-basebutton-actionmode) **ACTION\_MODE\_BUTTON\_PRESS** = `0`

Require just a press to consider the button clicked.

[ActionMode](#enum-basebutton-actionmode) **ACTION\_MODE\_BUTTON\_RELEASE** = `1`

Require a press and a subsequent release before considering the button clicked.

* * *

## Property Descriptions

[ActionMode](#enum-basebutton-actionmode) **action\_mode** = `1` [🔗](#class-basebutton-property-action-mode)

- void **set\_action\_mode**(value: [ActionMode](#enum-basebutton-actionmode))

- [ActionMode](#enum-basebutton-actionmode) **get\_action\_mode**()


Determines when the button is considered clicked.

* * *

[ButtonGroup](class_buttongroup.md#class-buttongroup) **button\_group** [🔗](#class-basebutton-property-button-group)

- void **set\_button\_group**(value: [ButtonGroup](class_buttongroup.md#class-buttongroup))

- [ButtonGroup](class_buttongroup.md#class-buttongroup) **get\_button\_group**()


The [ButtonGroup](class_buttongroup.md#class-buttongroup) associated with the button. Not to be confused with node groups.

**Note:** The button will be configured as a radio button if a [ButtonGroup](class_buttongroup.md#class-buttongroup) is assigned to it.

* * *

BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **button\_mask** = `1` [🔗](#class-basebutton-property-button-mask)

- void **set\_button\_mask**(value: BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\])

- BitField\[ [MouseButtonMask](class_@globalscope.md#enum-globalscope-mousebuttonmask)\] **get\_button\_mask**()


Binary mask to choose which mouse buttons this button will respond to.

To allow both left-click and right-click, use `MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT`.

* * *

[bool](class_bool.md#class-bool) **button\_pressed** = `false` [🔗](#class-basebutton-property-button-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the button's state is pressed. Means the button is pressed down or toggled (if [toggle\_mode](#class-basebutton-property-toggle-mode) is active). Only works if [toggle\_mode](#class-basebutton-property-toggle-mode) is `true`.

**Note:** Changing the value of [button\_pressed](#class-basebutton-property-button-pressed) will result in [toggled](#class-basebutton-signal-toggled) to be emitted. If you want to change the pressed state without emitting that signal, use [set\_pressed\_no\_signal()](#class-basebutton-method-set-pressed-no-signal).

* * *

[bool](class_bool.md#class-bool) **disabled** = `false` [🔗](#class-basebutton-property-disabled)

- void **set\_disabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_disabled**()


If `true`, the button is in disabled state and can't be clicked or toggled.

**Note:** If the button is disabled while held down, [button\_up](#class-basebutton-signal-button-up) will be emitted.

* * *

[bool](class_bool.md#class-bool) **keep\_pressed\_outside** = `false` [🔗](#class-basebutton-property-keep-pressed-outside)

- void **set\_keep\_pressed\_outside**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_keep\_pressed\_outside**()


If `true`, the button stays pressed when moving the cursor outside the button while pressing it.

**Note:** This property only affects the button's visual appearance. Signals will be emitted at the same moment regardless of this property's value.

* * *

[Shortcut](class_shortcut.md#class-shortcut) **shortcut** [🔗](#class-basebutton-property-shortcut)

- void **set\_shortcut**(value: [Shortcut](class_shortcut.md#class-shortcut))

- [Shortcut](class_shortcut.md#class-shortcut) **get\_shortcut**()


[Shortcut](class_shortcut.md#class-shortcut) associated to the button.

* * *

[bool](class_bool.md#class-bool) **shortcut\_feedback** = `true` [🔗](#class-basebutton-property-shortcut-feedback)

- void **set\_shortcut\_feedback**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shortcut\_feedback**()


If `true`, the button will highlight for a short amount of time when its shortcut is activated. If `false` and [toggle\_mode](#class-basebutton-property-toggle-mode) is `false`, the shortcut will activate without any visual feedback.

* * *

[bool](class_bool.md#class-bool) **shortcut\_in\_tooltip** = `true` [🔗](#class-basebutton-property-shortcut-in-tooltip)

- void **set\_shortcut\_in\_tooltip**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shortcut\_in\_tooltip\_enabled**()


If `true`, the button will add information about its shortcut in the tooltip.

**Note:** This property does nothing when the tooltip control is customized using [Control.\_make\_custom\_tooltip()](class_control.md#class-control-private-method-make-custom-tooltip).

* * *

[bool](class_bool.md#class-bool) **toggle\_mode** = `false` [🔗](#class-basebutton-property-toggle-mode)

- void **set\_toggle\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_toggle\_mode**()


If `true`, the button is in toggle mode. Makes the button flip state between pressed and unpressed each time its area is clicked.

* * *

## Method Descriptions

void **\_pressed**() virtual [🔗](#class-basebutton-private-method-pressed)

Called when the button is pressed. If you need to know the button's pressed state (and [toggle\_mode](#class-basebutton-property-toggle-mode) is active), use [\_toggled()](#class-basebutton-private-method-toggled) instead.

* * *

void **\_toggled**(toggled\_on: [bool](class_bool.md#class-bool)) virtual [🔗](#class-basebutton-private-method-toggled)

Called when the button is toggled (only if [toggle\_mode](#class-basebutton-property-toggle-mode) is active).

* * *

[DrawMode](#enum-basebutton-drawmode) **get\_draw\_mode**() const [🔗](#class-basebutton-method-get-draw-mode)

Returns the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding \_draw() or connecting to "draw" signal. The visual state of the button is defined by the [DrawMode](#enum-basebutton-drawmode) enum.

* * *

[bool](class_bool.md#class-bool) **is\_hovered**() const [🔗](#class-basebutton-method-is-hovered)

Returns `true` if the mouse has entered the button and has not left it yet.

* * *

void **set\_pressed\_no\_signal**(pressed: [bool](class_bool.md#class-bool)) [🔗](#class-basebutton-method-set-pressed-no-signal)

Changes the [button\_pressed](#class-basebutton-property-button-pressed) state of the button, without emitting [toggled](#class-basebutton-signal-toggled). Use when you just want to change the state of the button without sending the pressed event (e.g. when initializing scene). Only works if [toggle\_mode](#class-basebutton-property-toggle-mode) is `true`.

**Note:** This method doesn't unpress other buttons in [button\_group](#class-basebutton-property-button-group).

[Previous](class_backbuffercopy.md "BackBufferCopy") [Next](class_bone2d.md "Bone2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_backbuffercopy.md "BackBufferCopy") [Next](class_bone2d.md "Bone2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).