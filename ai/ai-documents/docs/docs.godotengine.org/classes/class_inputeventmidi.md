---
title: InputEventMIDI — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_inputeventmidi.html
crawled_at: "2026-08-13T10:23:32+12:00"
content_hash: 97eada3c521c9c0e7e44258232cad412edb8df253801aa4f6896c66984185a91
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - InputEventMIDI

* * *

# InputEventMIDI

**Inherits:** [InputEvent](class_inputevent.md#class-inputevent) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a MIDI message from a MIDI device, such as a musical keyboard.

## Description

InputEventMIDI stores information about messages from [MIDI](https://en.wikipedia.org/wiki/MIDI) (Musical Instrument Digital Interface) devices. These may include musical keyboards, synthesizers, and drum machines.

MIDI messages can be received over a 5-pin MIDI connector or over USB. If your device supports both be sure to check the settings in the device to see which output it is using.

By default, Godot does not detect MIDI devices. You need to call [OS.open\_midi\_inputs()](class_os.md#class-os-method-open-midi-inputs), first. You can check which devices are detected with [OS.get\_connected\_midi\_inputs()](class_os.md#class-os-method-get-connected-midi-inputs), and close the connection with [OS.close\_midi\_inputs()](class_os.md#class-os-method-close-midi-inputs).

GDScriptC#

```
func _ready():
    OS.open_midi_inputs()
    print(OS.get_connected_midi_inputs())

func _input(input_event):
    if input_event is InputEventMIDI:
        _print_midi_info(input_event)

func _print_midi_info(midi_event):
    print(midi_event)
    print("Channel ", midi_event.channel)
    print("Message ", midi_event.message)
    print("Pitch ", midi_event.pitch)
    print("Velocity ", midi_event.velocity)
    print("Instrument ", midi_event.instrument)
    print("Pressure ", midi_event.pressure)
    print("Controller number: ", midi_event.controller_number)
    print("Controller value: ", midi_event.controller_value)

```

```
public override void _Ready()
{
    OS.OpenMidiInputs();
    GD.Print(OS.GetConnectedMidiInputs());
}

public override void _Input(InputEvent inputEvent)
{
    if (inputEvent is InputEventMidi midiEvent)
    {
        PrintMIDIInfo(midiEvent);
    }
}

private void PrintMIDIInfo(InputEventMidi midiEvent)
{
    GD.Print(midiEvent);
    GD.Print($"Channel {midiEvent.Channel}");
    GD.Print($"Message {midiEvent.Message}");
    GD.Print($"Pitch {midiEvent.Pitch}");
    GD.Print($"Velocity {midiEvent.Velocity}");
    GD.Print($"Instrument {midiEvent.Instrument}");
    GD.Print($"Pressure {midiEvent.Pressure}");
    GD.Print($"Controller number: {midiEvent.ControllerNumber}");
    GD.Print($"Controller value: {midiEvent.ControllerValue}");
}

```

**Note:** Godot does not support MIDI output, so there is no way to emit MIDI messages from Godot. Only MIDI input is supported.

**Note:** On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling [OS.open\_midi\_inputs()](class_os.md#class-os-method-open-midi-inputs). MIDI input will not work until the user accepts the permission request.

## Tutorials

- [MIDI Message Status Byte List](https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes)

- [Wikipedia General MIDI Instrument List](https://en.wikipedia.org/wiki/General_MIDI#Program_change_events)

- [Wikipedia Piano Key Frequencies List](https://en.wikipedia.org/wiki/Piano_key_frequencies#List)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [channel](#class-inputeventmidi-property-channel) | `0` |
| [int](class_int.md#class-int) | [controller\_number](#class-inputeventmidi-property-controller-number) | `0` |
| [int](class_int.md#class-int) | [controller\_value](#class-inputeventmidi-property-controller-value) | `0` |
| [int](class_int.md#class-int) | [instrument](#class-inputeventmidi-property-instrument) | `0` |
| [MIDIMessage](class_@globalscope.md#enum-globalscope-midimessage) | [message](#class-inputeventmidi-property-message) | `0` |
| [int](class_int.md#class-int) | [pitch](#class-inputeventmidi-property-pitch) | `0` |
| [int](class_int.md#class-int) | [pressure](#class-inputeventmidi-property-pressure) | `0` |
| [int](class_int.md#class-int) | [velocity](#class-inputeventmidi-property-velocity) | `0` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **channel** = `0` [🔗](#class-inputeventmidi-property-channel)

- void **set\_channel**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_channel**()


The MIDI channel of this message, ranging from `0` to `15`. MIDI channel `9` is reserved for percussion instruments.

* * *

[int](class_int.md#class-int) **controller\_number** = `0` [🔗](#class-inputeventmidi-property-controller-number)

- void **set\_controller\_number**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_controller\_number**()


The unique number of the controller, if [message](#class-inputeventmidi-property-message) is [@GlobalScope.MIDI\_MESSAGE\_CONTROL\_CHANGE](class_@globalscope.md#class-globalscope-constant-midi-message-control-change), otherwise this is `0`. This value can be used to identify sliders for volume, balance, and panning, as well as switches and pedals on the MIDI device. See the [General MIDI specification](https://en.wikipedia.org/wiki/General_MIDI#Controller_events) for a small list.

* * *

[int](class_int.md#class-int) **controller\_value** = `0` [🔗](#class-inputeventmidi-property-controller-value)

- void **set\_controller\_value**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_controller\_value**()


The value applied to the controller. If [message](#class-inputeventmidi-property-message) is [@GlobalScope.MIDI\_MESSAGE\_CONTROL\_CHANGE](class_@globalscope.md#class-globalscope-constant-midi-message-control-change), this value ranges from `0` to `127`, otherwise it is `0`. See also [controller\_value](#class-inputeventmidi-property-controller-value).

* * *

[int](class_int.md#class-int) **instrument** = `0` [🔗](#class-inputeventmidi-property-instrument)

- void **set\_instrument**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_instrument**()


The instrument (also called _program_ or _preset_) used on this MIDI message. This value ranges from `0` to `127`.

To see what each value means, refer to the [General MIDI's instrument list](https://en.wikipedia.org/wiki/General_MIDI#Program_change_events). Keep in mind that the list is off by 1 because it does not begin from 0. A value of `0` corresponds to the acoustic grand piano.

* * *

[MIDIMessage](class_@globalscope.md#enum-globalscope-midimessage) **message** = `0` [🔗](#class-inputeventmidi-property-message)

- void **set\_message**(value: [MIDIMessage](class_@globalscope.md#enum-globalscope-midimessage))

- [MIDIMessage](class_@globalscope.md#enum-globalscope-midimessage) **get\_message**()


Represents the type of MIDI message (see the [MIDIMessage](class_@globalscope.md#enum-globalscope-midimessage) enum).

For more information, see the [MIDI message status byte list chart](https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes).

* * *

[int](class_int.md#class-int) **pitch** = `0` [🔗](#class-inputeventmidi-property-pitch)

- void **set\_pitch**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_pitch**()


The pitch index number of this MIDI message. This value ranges from `0` to `127`.

On a piano, the **middle C** is `60`, followed by a **C-sharp** ( `61`), then a **D** ( `62`), and so on. Each octave is split in offsets of 12. See the "MIDI note number" column of the [piano key frequency chart](https://en.wikipedia.org/wiki/Piano_key_frequencies) a full list.

* * *

[int](class_int.md#class-int) **pressure** = `0` [🔗](#class-inputeventmidi-property-pressure)

- void **set\_pressure**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_pressure**()


The strength of the key being pressed. This value ranges from `0` to `127`.

**Note:** For many devices, this value is always `0`. Other devices such as musical keyboards may simulate pressure by changing the [velocity](#class-inputeventmidi-property-velocity), instead.

* * *

[int](class_int.md#class-int) **velocity** = `0` [🔗](#class-inputeventmidi-property-velocity)

- void **set\_velocity**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_velocity**()


The velocity of the MIDI message. This value ranges from `0` to `127`. For a musical keyboard, this corresponds to how quickly the key was pressed, and is rarely above `110` in practice.

**Note:** Some MIDI devices may send a [@GlobalScope.MIDI\_MESSAGE\_NOTE\_ON](class_@globalscope.md#class-globalscope-constant-midi-message-note-on) message with `0` velocity and expect it to be treated the same as a [@GlobalScope.MIDI\_MESSAGE\_NOTE\_OFF](class_@globalscope.md#class-globalscope-constant-midi-message-note-off) message. If necessary, this can be handled with a few lines of code:

```
func _input(event):
    if event is InputEventMIDI:
        if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
            print("Note pressed!")

```

[Previous](class_inputeventmagnifygesture.md "InputEventMagnifyGesture") [Next](class_inputeventmouse.md "InputEventMouse")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventmagnifygesture.md "InputEventMagnifyGesture") [Next](class_inputeventmouse.md "InputEventMouse")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).