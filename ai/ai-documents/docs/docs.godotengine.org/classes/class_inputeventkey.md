---
title: InputEventKey — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventkey.html
crawled_at: "2026-08-13T10:23:26+12:00"
content_hash: 23336eda41d635796386cfd6aa1731eef75bce1b499450abd549bb20e6aeb398
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventKey

* * *

# InputEventKey

**Inherits:** [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers) **<** [InputEventFromWindow](class_inputeventfromwindow.md#class-inputeventfromwindow) **<** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a key on a keyboard being pressed or released.

## Description

An input event for keys on a keyboard. Supports key presses, key releases and [echo](#class-inputeventkey-property-echo) events. It can also be received in [Node.\_unhandled\_key\_input()](class_node.md#class-node-private-method-unhandled-key-input).

**Note:** Events received from the keyboard usually have all properties set. Event mappings should have only one of the [keycode](#class-inputeventkey-property-keycode), [physical\_keycode](#class-inputeventkey-property-physical-keycode) or [unicode](#class-inputeventkey-property-unicode) set.

When events are compared, properties are checked in the following priority - [keycode](#class-inputeventkey-property-keycode), [physical\_keycode](#class-inputeventkey-property-physical-keycode) and [unicode](#class-inputeventkey-property-unicode). Events with the first matching value will be considered equal.

## Tutorials

- [Using InputEvent](../tutorials/inputs/inputevent.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [echo](#class-inputeventkey-property-echo) | `false` |
| [Key](class_@globalscope.md#enum-globalscope-key) | [key\_label](#class-inputeventkey-property-key-label) | `0` |
| [Key](class_@globalscope.md#enum-globalscope-key) | [keycode](#class-inputeventkey-property-keycode) | `0` |
| [KeyLocation](class_@globalscope.md#enum-globalscope-keylocation) | [location](#class-inputeventkey-property-location) | `0` |
| [Key](class_@globalscope.md#enum-globalscope-key) | [physical\_keycode](#class-inputeventkey-property-physical-keycode) | `0` |
| [bool](class_bool.md#class-bool) | [pressed](#class-inputeventkey-property-pressed) | `false` |
| [int](class_int.md#class-int) | [unicode](#class-inputeventkey-property-unicode) | `0` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [as\_text\_key\_label](#class-inputeventkey-method-as-text-key-label)() const |
| [String](class_string.md#class-string) | [as\_text\_keycode](#class-inputeventkey-method-as-text-keycode)() const |
| [String](class_string.md#class-string) | [as\_text\_location](#class-inputeventkey-method-as-text-location)() const |
| [String](class_string.md#class-string) | [as\_text\_physical\_keycode](#class-inputeventkey-method-as-text-physical-keycode)() const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [get\_key\_label\_with\_modifiers](#class-inputeventkey-method-get-key-label-with-modifiers)() const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [get\_keycode\_with\_modifiers](#class-inputeventkey-method-get-keycode-with-modifiers)() const |
| [Key](class_@globalscope.md#enum-globalscope-key) | [get\_physical\_keycode\_with\_modifiers](#class-inputeventkey-method-get-physical-keycode-with-modifiers)() const |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **echo** = `false` [🔗](#class-inputeventkey-property-echo)

- void **set\_echo**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_echo**()


If `true`, the key was already pressed before this event. An echo event is a repeated key event sent when the user is holding down the key.

**Note:** The rate at which echo events are sent is typically around 20 events per second (after holding down the key for roughly half a second). However, the key repeat delay/speed can be changed by the user or disabled entirely in the operating system settings. To ensure your project works correctly on all configurations, do not assume the user has a specific key repeat configuration in your project's behavior.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **key\_label** = `0` [🔗](#class-inputeventkey-property-key-label)

- void **set\_key\_label**(value: [Key](class_@globalscope.md#enum-globalscope-key))

- [Key](class_@globalscope.md#enum-globalscope-key) **get\_key\_label**()


Represents the localized label printed on the key in the current keyboard layout, which corresponds to one of the [Key](class_@globalscope.md#enum-globalscope-key) constants or any valid Unicode character.

For keyboard layouts with a single label on the key, it is equivalent to [keycode](#class-inputeventkey-property-keycode).

To get a human-readable representation of the **InputEventKey**, use `OS.get_keycode_string(event.key_label)` where `event` is the **InputEventKey**.

```
+-----+ +-----+
| Q   | | Q   | - "Q" - keycode
|   Й | |  ض | - "Й" and "ض" - key_label
+-----+ +-----+

```

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **keycode** = `0` [🔗](#class-inputeventkey-property-keycode)

- void **set\_keycode**(value: [Key](class_@globalscope.md#enum-globalscope-key))

- [Key](class_@globalscope.md#enum-globalscope-key) **get\_keycode**()


Latin label printed on the key in the current keyboard layout, which corresponds to one of the [Key](class_@globalscope.md#enum-globalscope-key) constants.

To get a human-readable representation of the **InputEventKey**, use `OS.get_keycode_string(event.keycode)` where `event` is the **InputEventKey**.

```
+-----+ +-----+
| Q   | | Q   | - "Q" - keycode
|   Й | |  ض | - "Й" and "ض" - key_label
+-----+ +-----+

```

* * *

[KeyLocation](class_@globalscope.md#enum-globalscope-keylocation) **location** = `0` [🔗](#class-inputeventkey-property-location)

- void **set\_location**(value: [KeyLocation](class_@globalscope.md#enum-globalscope-keylocation))

- [KeyLocation](class_@globalscope.md#enum-globalscope-keylocation) **get\_location**()


Represents the location of a key which has both left and right versions, such as `Shift` or `Alt`.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **physical\_keycode** = `0` [🔗](#class-inputeventkey-property-physical-keycode)

- void **set\_physical\_keycode**(value: [Key](class_@globalscope.md#enum-globalscope-key))

- [Key](class_@globalscope.md#enum-globalscope-key) **get\_physical\_keycode**()


Represents the physical location of a key on the 101/102-key US QWERTY keyboard, which corresponds to one of the [Key](class_@globalscope.md#enum-globalscope-key) constants.

To get a human-readable representation of the **InputEventKey**, use [OS.get\_keycode\_string()](class_os.md#class-os-method-get-keycode-string) in combination with [DisplayServer.keyboard\_get\_keycode\_from\_physical()](class_displayserver.md#class-displayserver-method-keyboard-get-keycode-from-physical):

GDScriptC#

```
func _input(event):
    if event is InputEventKey:
        var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
        print(OS.get_keycode_string(keycode))

```

```
public override void _Input(InputEvent @event)
{
    if (@event is InputEventKey inputEventKey)
    {
        var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
        GD.Print(OS.GetKeycodeString(keycode));
    }
}

```

* * *

[bool](class_bool.md#class-bool) **pressed** = `false` [🔗](#class-inputeventkey-property-pressed)

- void **set\_pressed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pressed**()


If `true`, the key's state is pressed. If `false`, the key's state is released.

* * *

[int](class_int.md#class-int) **unicode** = `0` [🔗](#class-inputeventkey-property-unicode)

- void **set\_unicode**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_unicode**()


The key Unicode character code (when relevant), shifted by modifier keys. Unicode character codes for composite characters and complex scripts may not be available unless IME input mode is active. See [Window.set\_ime\_active()](class_window.md#class-window-method-set-ime-active) for more information.

* * *

## Method Descriptions

[String](class_string.md#class-string) **as\_text\_key\_label**() const [🔗](#class-inputeventkey-method-as-text-key-label)

Returns a [String](class_string.md#class-string) representation of the event's [key\_label](#class-inputeventkey-property-key-label) and modifiers.

* * *

[String](class_string.md#class-string) **as\_text\_keycode**() const [🔗](#class-inputeventkey-method-as-text-keycode)

Returns a [String](class_string.md#class-string) representation of the event's [keycode](#class-inputeventkey-property-keycode) and modifiers.

* * *

[String](class_string.md#class-string) **as\_text\_location**() const [🔗](#class-inputeventkey-method-as-text-location)

Returns a [String](class_string.md#class-string) representation of the event's [location](#class-inputeventkey-property-location). This will be a blank string if the event is not specific to a location.

* * *

[String](class_string.md#class-string) **as\_text\_physical\_keycode**() const [🔗](#class-inputeventkey-method-as-text-physical-keycode)

Returns a [String](class_string.md#class-string) representation of the event's [physical\_keycode](#class-inputeventkey-property-physical-keycode) and modifiers.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **get\_key\_label\_with\_modifiers**() const [🔗](#class-inputeventkey-method-get-key-label-with-modifiers)

Returns the localized key label combined with modifier keys such as `Shift` or `Alt`. See also [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers).

To get a human-readable representation of the **InputEventKey** with modifiers, use `OS.get_keycode_string(event.get_key_label_with_modifiers())` where `event` is the **InputEventKey**.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **get\_keycode\_with\_modifiers**() const [🔗](#class-inputeventkey-method-get-keycode-with-modifiers)

Returns the Latin keycode combined with modifier keys such as `Shift` or `Alt`. See also [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers).

To get a human-readable representation of the **InputEventKey** with modifiers, use `OS.get_keycode_string(event.get_keycode_with_modifiers())` where `event` is the **InputEventKey**.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **get\_physical\_keycode\_with\_modifiers**() const [🔗](#class-inputeventkey-method-get-physical-keycode-with-modifiers)

Returns the physical keycode combined with modifier keys such as `Shift` or `Alt`. See also [InputEventWithModifiers](class_inputeventwithmodifiers.md#class-inputeventwithmodifiers).

To get a human-readable representation of the **InputEventKey** with modifiers, use `OS.get_keycode_string(event.get_physical_keycode_with_modifiers())` where `event` is the **InputEventKey**.

[Previous](class_inputeventjoypadmotion.md "InputEventJoypadMotion") [Next](class_inputeventmagnifygesture.md "InputEventMagnifyGesture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventjoypadmotion.md "InputEventJoypadMotion") [Next](class_inputeventmagnifygesture.md "InputEventMagnifyGesture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).