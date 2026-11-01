---
title: GraphNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_graphnode.html
crawled_at: "2026-08-13T10:40:44+12:00"
content_hash: 82e07178714452b041a45223039cb740b46f17d8a038edff85f374397d53d9d5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GraphNode

* * *

# GraphNode

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [GraphElement](class_graphelement.md#class-graphelement) **<** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container with connection ports, representing a node in a [GraphEdit](class_graphedit.md#class-graphedit).

## Description

**GraphNode** allows to create nodes for a [GraphEdit](class_graphedit.md#class-graphedit) graph with customizable content based on its child controls. **GraphNode** is derived from [Container](class_container.md#class-container) and it is responsible for placing its children on screen. This works similar to [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer). Children, in turn, provide **GraphNode** with so-called slots, each of which can have a connection port on either side.

Each **GraphNode** slot is defined by its index and can provide the node with up to two ports: one on the left, and one on the right. By convention the left port is also referred to as the **input port** and the right port is referred to as the **output port**. Each port can be enabled and configured individually, using different type and color. The type is an arbitrary value that you can define using your own considerations. The parent [GraphEdit](class_graphedit.md#class-graphedit) will receive this information on each connect and disconnect request.

Slots can be configured in the Inspector dock once you add at least one child [Control](class_control.md#class-control). The properties are grouped by each slot's index in the "Slot" section.

**Note:** While GraphNode is set up using slots and slot indices, connections are made between the ports which are enabled. Because of that [GraphEdit](class_graphedit.md#class-graphedit) uses the port's index and not the slot's index. You can use [get\_input\_port\_slot()](#class-graphnode-method-get-input-port-slot) and [get\_output\_port\_slot()](#class-graphnode-method-get-output-port-slot) to get the slot index from the port index.

## Properties

|     |     |     |
| --- | --- | --- |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [ignore\_invalid\_connection\_type](#class-graphnode-property-ignore-invalid-connection-type) | `false` |
| [MouseFilter](class_control.md#enum-control-mousefilter) | mouse\_filter | `0` (overrides [Control](class_control.md#class-control-property-mouse-filter)) |
| [FocusMode](class_control.md#enum-control-focusmode) | [slots\_focus\_mode](#class-graphnode-property-slots-focus-mode) | `3` |
| [String](class_string.md#class-string) | [title](#class-graphnode-property-title) | `""` |

## Methods

|     |     |
| --- | --- |
| void | [\_draw\_port](#class-graphnode-private-method-draw-port)(slot\_index: [int](class_int.md#class-int), position: [Vector2i](class_vector2i.md#class-vector2i), left: [bool](class_bool.md#class-bool), color: [Color](class_color.md#class-color)) virtual |
| void | [clear\_all\_slots](#class-graphnode-method-clear-all-slots)() |
| void | [clear\_slot](#class-graphnode-method-clear-slot)(slot\_index: [int](class_int.md#class-int)) |
| [Color](class_color.md#class-color) | [get\_input\_port\_color](#class-graphnode-method-get-input-port-color)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_input\_port\_count](#class-graphnode-method-get-input-port-count)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_input\_port\_position](#class-graphnode-method-get-input-port-position)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_input\_port\_slot](#class-graphnode-method-get-input-port-slot)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_input\_port\_type](#class-graphnode-method-get-input-port-type)(port\_idx: [int](class_int.md#class-int)) |
| [Color](class_color.md#class-color) | [get\_output\_port\_color](#class-graphnode-method-get-output-port-color)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_output\_port\_count](#class-graphnode-method-get-output-port-count)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_output\_port\_position](#class-graphnode-method-get-output-port-position)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_output\_port\_slot](#class-graphnode-method-get-output-port-slot)(port\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_output\_port\_type](#class-graphnode-method-get-output-port-type)(port\_idx: [int](class_int.md#class-int)) |
| [Color](class_color.md#class-color) | [get\_slot\_color\_left](#class-graphnode-method-get-slot-color-left)(slot\_index: [int](class_int.md#class-int)) const |
| [Color](class_color.md#class-color) | [get\_slot\_color\_right](#class-graphnode-method-get-slot-color-right)(slot\_index: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_slot\_custom\_icon\_left](#class-graphnode-method-get-slot-custom-icon-left)(slot\_index: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_slot\_custom\_icon\_right](#class-graphnode-method-get-slot-custom-icon-right)(slot\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_slot\_type\_left](#class-graphnode-method-get-slot-type-left)(slot\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_slot\_type\_right](#class-graphnode-method-get-slot-type-right)(slot\_index: [int](class_int.md#class-int)) const |
| [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) | [get\_titlebar\_hbox](#class-graphnode-method-get-titlebar-hbox)() |
| [bool](class_bool.md#class-bool) | [is\_slot\_draw\_stylebox](#class-graphnode-method-is-slot-draw-stylebox)(slot\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_slot\_enabled\_left](#class-graphnode-method-is-slot-enabled-left)(slot\_index: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_slot\_enabled\_right](#class-graphnode-method-is-slot-enabled-right)(slot\_index: [int](class_int.md#class-int)) const |
| void | [set\_slot](#class-graphnode-method-set-slot)(slot\_index: [int](class_int.md#class-int), enable\_left\_port: [bool](class_bool.md#class-bool), type\_left: [int](class_int.md#class-int), color\_left: [Color](class_color.md#class-color), enable\_right\_port: [bool](class_bool.md#class-bool), type\_right: [int](class_int.md#class-int), color\_right: [Color](class_color.md#class-color), custom\_icon\_left: [Texture2D](class_texture2d.md#class-texture2d) = null, custom\_icon\_right: [Texture2D](class_texture2d.md#class-texture2d) = null, draw\_stylebox: [bool](class_bool.md#class-bool) = true) |
| void | [set\_slot\_color\_left](#class-graphnode-method-set-slot-color-left)(slot\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_slot\_color\_right](#class-graphnode-method-set-slot-color-right)(slot\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [set\_slot\_custom\_icon\_left](#class-graphnode-method-set-slot-custom-icon-left)(slot\_index: [int](class_int.md#class-int), custom\_icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_slot\_custom\_icon\_right](#class-graphnode-method-set-slot-custom-icon-right)(slot\_index: [int](class_int.md#class-int), custom\_icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_slot\_draw\_stylebox](#class-graphnode-method-set-slot-draw-stylebox)(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_slot\_enabled\_left](#class-graphnode-method-set-slot-enabled-left)(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_slot\_enabled\_right](#class-graphnode-method-set-slot-enabled-right)(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [set\_slot\_type\_left](#class-graphnode-method-set-slot-type-left)(slot\_index: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) |
| void | [set\_slot\_type\_right](#class-graphnode-method-set-slot-type-right)(slot\_index: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [resizer\_color](#class-graphnode-theme-color-resizer-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [int](class_int.md#class-int) | [port\_h\_offset](#class-graphnode-theme-constant-port-h-offset) | `0` |
| [int](class_int.md#class-int) | [separation](#class-graphnode-theme-constant-separation) | `2` |
| [Texture2D](class_texture2d.md#class-texture2d) | [port](#class-graphnode-theme-icon-port) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-graphnode-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel\_focus](#class-graphnode-theme-style-panel-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel\_selected](#class-graphnode-theme-style-panel-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [slot](#class-graphnode-theme-style-slot) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [slot\_selected](#class-graphnode-theme-style-slot-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [titlebar](#class-graphnode-theme-style-titlebar) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [titlebar\_selected](#class-graphnode-theme-style-titlebar-selected) |  |

* * *

## Signals

**slot\_sizes\_changed**() [🔗](#class-graphnode-signal-slot-sizes-changed)

Emitted when any slot's size might have changed.

* * *

**slot\_updated**(slot\_index: [int](class_int.md#class-int)) [🔗](#class-graphnode-signal-slot-updated)

Emitted when any GraphNode's slot is updated.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **ignore\_invalid\_connection\_type** = `false` [🔗](#class-graphnode-property-ignore-invalid-connection-type)

- void **set\_ignore\_invalid\_connection\_type**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ignoring\_valid\_connection\_type**()


If `true`, you can connect ports with different types, even if the connection was not explicitly allowed in the parent [GraphEdit](class_graphedit.md#class-graphedit).

* * *

[FocusMode](class_control.md#enum-control-focusmode) **slots\_focus\_mode** = `3` [🔗](#class-graphnode-property-slots-focus-mode)

- void **set\_slots\_focus\_mode**(value: [FocusMode](class_control.md#enum-control-focusmode))

- [FocusMode](class_control.md#enum-control-focusmode) **get\_slots\_focus\_mode**()


Determines how connection slots can be focused.

- If set to [Control.FOCUS\_CLICK](class_control.md#class-control-constant-focus-click), connections can only be made with the mouse.

- If set to [Control.FOCUS\_ALL](class_control.md#class-control-constant-focus-all), slots can also be focused using the [ProjectSettings.input/ui\_up](class_projectsettings.md#class-projectsettings-property-input-ui-up) and [ProjectSettings.input/ui\_down](class_projectsettings.md#class-projectsettings-property-input-ui-down) and connected using [ProjectSettings.input/ui\_left](class_projectsettings.md#class-projectsettings-property-input-ui-left) and [ProjectSettings.input/ui\_right](class_projectsettings.md#class-projectsettings-property-input-ui-right) input actions.

- If set to [Control.FOCUS\_ACCESSIBILITY](class_control.md#class-control-constant-focus-accessibility), slot input actions are only enabled when the screen reader is active.


* * *

[String](class_string.md#class-string) **title** = `""` [🔗](#class-graphnode-property-title)

- void **set\_title**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_title**()


The text displayed in the GraphNode's title bar.

* * *

## Method Descriptions

void **\_draw\_port**(slot\_index: [int](class_int.md#class-int), position: [Vector2i](class_vector2i.md#class-vector2i), left: [bool](class_bool.md#class-bool), color: [Color](class_color.md#class-color)) virtual [🔗](#class-graphnode-private-method-draw-port)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **clear\_all\_slots**() [🔗](#class-graphnode-method-clear-all-slots)

Disables all slots of the GraphNode. This will remove all input/output ports from the GraphNode.

* * *

void **clear\_slot**(slot\_index: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-clear-slot)

Disables the slot with the given `slot_index`. This will remove the corresponding input and output port from the GraphNode.

* * *

[Color](class_color.md#class-color) **get\_input\_port\_color**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-input-port-color)

Returns the [Color](class_color.md#class-color) of the input port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_input\_port\_count**() [🔗](#class-graphnode-method-get-input-port-count)

Returns the number of slots with an enabled input port.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_input\_port\_position**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-input-port-position)

Returns the position of the input port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_input\_port\_slot**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-input-port-slot)

Returns the corresponding slot index of the input port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_input\_port\_type**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-input-port-type)

Returns the type of the input port with the given `port_idx`.

* * *

[Color](class_color.md#class-color) **get\_output\_port\_color**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-output-port-color)

Returns the [Color](class_color.md#class-color) of the output port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_output\_port\_count**() [🔗](#class-graphnode-method-get-output-port-count)

Returns the number of slots with an enabled output port.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_output\_port\_position**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-output-port-position)

Returns the position of the output port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_output\_port\_slot**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-output-port-slot)

Returns the corresponding slot index of the output port with the given `port_idx`.

* * *

[int](class_int.md#class-int) **get\_output\_port\_type**(port\_idx: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-get-output-port-type)

Returns the type of the output port with the given `port_idx`.

* * *

[Color](class_color.md#class-color) **get\_slot\_color\_left**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-color-left)

Returns the left (input) [Color](class_color.md#class-color) of the slot with the given `slot_index`.

* * *

[Color](class_color.md#class-color) **get\_slot\_color\_right**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-color-right)

Returns the right (output) [Color](class_color.md#class-color) of the slot with the given `slot_index`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_slot\_custom\_icon\_left**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-custom-icon-left)

Returns the left (input) custom [Texture2D](class_texture2d.md#class-texture2d) of the slot with the given `slot_index`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_slot\_custom\_icon\_right**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-custom-icon-right)

Returns the right (output) custom [Texture2D](class_texture2d.md#class-texture2d) of the slot with the given `slot_index`.

* * *

[int](class_int.md#class-int) **get\_slot\_type\_left**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-type-left)

Returns the left (input) type of the slot with the given `slot_index`.

* * *

[int](class_int.md#class-int) **get\_slot\_type\_right**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-get-slot-type-right)

Returns the right (output) type of the slot with the given `slot_index`.

* * *

[HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **get\_titlebar\_hbox**() [🔗](#class-graphnode-method-get-titlebar-hbox)

Returns the [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) used for the title bar, only containing a [Label](class_label.md#class-label) for displaying the title by default. This can be used to add custom controls to the title bar such as option or close buttons.

* * *

[bool](class_bool.md#class-bool) **is\_slot\_draw\_stylebox**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-is-slot-draw-stylebox)

Returns `true` if the background [StyleBox](class_stylebox.md#class-stylebox) of the slot with the given `slot_index` is drawn.

* * *

[bool](class_bool.md#class-bool) **is\_slot\_enabled\_left**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-is-slot-enabled-left)

Returns `true` if left (input) side of the slot with the given `slot_index` is enabled.

* * *

[bool](class_bool.md#class-bool) **is\_slot\_enabled\_right**(slot\_index: [int](class_int.md#class-int)) const [🔗](#class-graphnode-method-is-slot-enabled-right)

Returns `true` if right (output) side of the slot with the given `slot_index` is enabled.

* * *

void **set\_slot**(slot\_index: [int](class_int.md#class-int), enable\_left\_port: [bool](class_bool.md#class-bool), type\_left: [int](class_int.md#class-int), color\_left: [Color](class_color.md#class-color), enable\_right\_port: [bool](class_bool.md#class-bool), type\_right: [int](class_int.md#class-int), color\_right: [Color](class_color.md#class-color), custom\_icon\_left: [Texture2D](class_texture2d.md#class-texture2d) = null, custom\_icon\_right: [Texture2D](class_texture2d.md#class-texture2d) = null, draw\_stylebox: [bool](class_bool.md#class-bool) = true) [🔗](#class-graphnode-method-set-slot)

Sets properties of the slot with the given `slot_index`.

If `enable_left_port`/ `enable_right_port` is `true`, a port will appear and the slot will be able to be connected from this side.

With `type_left`/ `type_right` an arbitrary type can be assigned to each port. Two ports can be connected if they share the same type, or if the connection between their types is allowed in the parent [GraphEdit](class_graphedit.md#class-graphedit) (see [GraphEdit.add\_valid\_connection\_type()](class_graphedit.md#class-graphedit-method-add-valid-connection-type)). Keep in mind that the [GraphEdit](class_graphedit.md#class-graphedit) has the final say in accepting the connection. Type compatibility simply allows the [GraphEdit.connection\_request](class_graphedit.md#class-graphedit-signal-connection-request) signal to be emitted.

Ports can be further customized using `color_left`/ `color_right` and `custom_icon_left`/ `custom_icon_right`. The color parameter adds a tint to the icon. The custom icon can be used to override the default port dot.

Additionally, `draw_stylebox` can be used to enable or disable drawing of the background stylebox for each slot. See [slot](#class-graphnode-theme-style-slot).

Individual properties can also be set using one of the `set_slot_*` methods.

**Note:** This method only sets properties of the slot. To create the slot itself, add a [Control](class_control.md#class-control)-derived child to the GraphNode.

* * *

void **set\_slot\_color\_left**(slot\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-graphnode-method-set-slot-color-left)

Sets the [Color](class_color.md#class-color) of the left (input) side of the slot with the given `slot_index` to `color`.

* * *

void **set\_slot\_color\_right**(slot\_index: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-graphnode-method-set-slot-color-right)

Sets the [Color](class_color.md#class-color) of the right (output) side of the slot with the given `slot_index` to `color`.

* * *

void **set\_slot\_custom\_icon\_left**(slot\_index: [int](class_int.md#class-int), custom\_icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-graphnode-method-set-slot-custom-icon-left)

Sets the custom [Texture2D](class_texture2d.md#class-texture2d) of the left (input) side of the slot with the given `slot_index` to `custom_icon`.

* * *

void **set\_slot\_custom\_icon\_right**(slot\_index: [int](class_int.md#class-int), custom\_icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-graphnode-method-set-slot-custom-icon-right)

Sets the custom [Texture2D](class_texture2d.md#class-texture2d) of the right (output) side of the slot with the given `slot_index` to `custom_icon`.

* * *

void **set\_slot\_draw\_stylebox**(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-graphnode-method-set-slot-draw-stylebox)

Toggles the background [StyleBox](class_stylebox.md#class-stylebox) of the slot with the given `slot_index`.

* * *

void **set\_slot\_enabled\_left**(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-graphnode-method-set-slot-enabled-left)

Toggles the left (input) side of the slot with the given `slot_index`. If `enable` is `true`, a port will appear on the left side and the slot will be able to be connected from this side.

* * *

void **set\_slot\_enabled\_right**(slot\_index: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-graphnode-method-set-slot-enabled-right)

Toggles the right (output) side of the slot with the given `slot_index`. If `enable` is `true`, a port will appear on the right side and the slot will be able to be connected from this side.

* * *

void **set\_slot\_type\_left**(slot\_index: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-set-slot-type-left)

Sets the left (input) type of the slot with the given `slot_index` to `type`. If the value is negative, all connections will be disallowed to be created via user inputs.

* * *

void **set\_slot\_type\_right**(slot\_index: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) [🔗](#class-graphnode-method-set-slot-type-right)

Sets the right (output) type of the slot with the given `slot_index` to `type`. If the value is negative, all connections will be disallowed to be created via user inputs.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **resizer\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-graphnode-theme-color-resizer-color)

The color modulation applied to the resizer icon.

* * *

[int](class_int.md#class-int) **port\_h\_offset** = `0` [🔗](#class-graphnode-theme-constant-port-h-offset)

Horizontal offset for the ports.

* * *

[int](class_int.md#class-int) **separation** = `2` [🔗](#class-graphnode-theme-constant-separation)

The vertical distance between ports.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **port** [🔗](#class-graphnode-theme-icon-port)

The icon used for representing ports.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-graphnode-theme-style-panel)

The default background for the slot area of the **GraphNode**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel\_focus** [🔗](#class-graphnode-theme-style-panel-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **GraphNode** is focused (when used with assistive apps).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel\_selected** [🔗](#class-graphnode-theme-style-panel-selected)

The [StyleBox](class_stylebox.md#class-stylebox) used for the slot area when selected.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **slot** [🔗](#class-graphnode-theme-style-slot)

The [StyleBox](class_stylebox.md#class-stylebox) used for each slot of the **GraphNode**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **slot\_selected** [🔗](#class-graphnode-theme-style-slot-selected)

[StyleBox](class_stylebox.md#class-stylebox) used when the slot is focused (when used with assistive apps).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **titlebar** [🔗](#class-graphnode-theme-style-titlebar)

The [StyleBox](class_stylebox.md#class-stylebox) used for the title bar of the **GraphNode**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **titlebar\_selected** [🔗](#class-graphnode-theme-style-titlebar-selected)

The [StyleBox](class_stylebox.md#class-stylebox) used for the title bar of the **GraphNode** when it is selected.

[Previous](class_graphframe.md "GraphFrame") [Next](class_gridcontainer.md "GridContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_graphframe.md "GraphFrame") [Next](class_gridcontainer.md "GridContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).