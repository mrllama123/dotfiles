---
title: AudioStreamGenerator — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_audiostreamgenerator.html
crawled_at: "2026-08-13T10:28:57+12:00"
content_hash: 7b977d33c4748ff907b710c92a314c29bfaae0e38296874acb704ca6039f06ee
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - AudioStreamGenerator

* * *

# AudioStreamGenerator

**Inherits:** [AudioStream](class_audiostream.md#class-audiostream) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An audio stream with utilities for procedural sound generation.

## Description

**AudioStreamGenerator** is a type of audio stream that does not play back sounds on its own; instead, it expects a script to generate audio data for it. See also [AudioStreamGeneratorPlayback](class_audiostreamgeneratorplayback.md#class-audiostreamgeneratorplayback).

Here's a sample on how to use it to generate a sine wave:

GDScriptC#

```
var playback # Will hold the AudioStreamGeneratorPlayback.
@onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
var pulse_hz = 440.0 # The frequency of the sound wave.
var phase = 0.0

func _ready():
    $AudioStreamPlayer.play()
    playback = $AudioStreamPlayer.get_stream_playback()
    fill_buffer()

func fill_buffer():
    var increment = pulse_hz / sample_hz
    var frames_available = playback.get_frames_available()

    for i in range(frames_available):
        playback.push_frame(Vector2.ONE * sin(phase * TAU))
        phase = fmod(phase + increment, 1.0)

```

```
[Export] public AudioStreamPlayer Player { get; set; }

private AudioStreamGeneratorPlayback _playback; // Will hold the AudioStreamGeneratorPlayback.
private float _sampleHz;
private float _pulseHz = 440.0f; // The frequency of the sound wave.
private double phase = 0.0;

public override void _Ready()
{
    if (Player.Stream is AudioStreamGenerator generator) // Type as a generator to access MixRate.
    {
        _sampleHz = generator.MixRate;
        Player.Play();
        _playback = (AudioStreamGeneratorPlayback)Player.GetStreamPlayback();
        FillBuffer();
    }
}

public void FillBuffer()
{
    float increment = _pulseHz / _sampleHz;
    int framesAvailable = _playback.GetFramesAvailable();

    for (int i = 0; i < framesAvailable; i++)
    {
        _playback.PushFrame(Vector2.One * (float)Mathf.Sin(phase * Mathf.Tau));
        phase = Mathf.PosMod(phase + increment, 1.0);
    }
}

```

In the example above, the "AudioStreamPlayer" node must use an **AudioStreamGenerator** as its stream. The `fill_buffer` function provides audio data for approximating a sine wave.

See also [AudioEffectSpectrumAnalyzer](class_audioeffectspectrumanalyzer.md#class-audioeffectspectrumanalyzer) for performing real-time audio spectrum analysis.

**Note:** Due to performance constraints, this class is best used from C# or from a compiled language via GDExtension. If you still want to use this class from GDScript, consider using a lower [mix\_rate](#class-audiostreamgenerator-property-mix-rate) such as 11,025 Hz or 22,050 Hz.

## Tutorials

- [Audio Generator Demo](https://godotengine.org/asset-library/asset/2759)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [buffer\_length](#class-audiostreamgenerator-property-buffer-length) | `0.5` |
| [float](class_float.md#class-float) | [mix\_rate](#class-audiostreamgenerator-property-mix-rate) | `44100.0` |
| [AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) | [mix\_rate\_mode](#class-audiostreamgenerator-property-mix-rate-mode) | `2` |

* * *

## Enumerations

enum **AudioStreamGeneratorMixRate**: [🔗](#enum-audiostreamgenerator-audiostreamgeneratormixrate)

[AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **MIX\_RATE\_OUTPUT** = `0`

Current [AudioServer](class_audioserver.md#class-audioserver) output mixing rate.

[AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **MIX\_RATE\_INPUT** = `1`

Current [AudioServer](class_audioserver.md#class-audioserver) input mixing rate.

[AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **MIX\_RATE\_CUSTOM** = `2`

Custom mixing rate, specified by [mix\_rate](#class-audiostreamgenerator-property-mix-rate).

[AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **MIX\_RATE\_MAX** = `3`

Maximum value for the mixing rate mode enum.

* * *

## Property Descriptions

[float](class_float.md#class-float) **buffer\_length** = `0.5` [🔗](#class-audiostreamgenerator-property-buffer-length)

- void **set\_buffer\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_buffer\_length**()


The length of the buffer to generate (in seconds). Lower values result in less latency, but require the script to generate audio data faster, resulting in increased CPU usage and more risk for audio cracking if the CPU can't keep up.

* * *

[float](class_float.md#class-float) **mix\_rate** = `44100.0` [🔗](#class-audiostreamgenerator-property-mix-rate)

- void **set\_mix\_rate**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mix\_rate**()


The sample rate to use (in Hz). Higher values are more demanding for the CPU to generate, but result in better quality.

In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.

According to the [Nyquist-Shannon sampling theorem](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem), there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are generating lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.

**Note:** **AudioStreamGenerator** is not automatically resampling input data, to produce expected result [mix\_rate\_mode](#class-audiostreamgenerator-property-mix-rate-mode) should match the sampling rate of input data.

**Note:** If you are using [AudioEffectCapture](class_audioeffectcapture.md#class-audioeffectcapture) as the source of your data, set [mix\_rate\_mode](#class-audiostreamgenerator-property-mix-rate-mode) to [MIX\_RATE\_INPUT](#class-audiostreamgenerator-constant-mix-rate-input) or [MIX\_RATE\_OUTPUT](#class-audiostreamgenerator-constant-mix-rate-output) to automatically match current [AudioServer](class_audioserver.md#class-audioserver) mixing rate.

* * *

[AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **mix\_rate\_mode** = `2` [🔗](#class-audiostreamgenerator-property-mix-rate-mode)

- void **set\_mix\_rate\_mode**(value: [AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate))

- [AudioStreamGeneratorMixRate](#enum-audiostreamgenerator-audiostreamgeneratormixrate) **get\_mix\_rate\_mode**()


Mixing rate mode. If set to [MIX\_RATE\_CUSTOM](#class-audiostreamgenerator-constant-mix-rate-custom), [mix\_rate](#class-audiostreamgenerator-property-mix-rate) is used, otherwise current [AudioServer](class_audioserver.md#class-audioserver) mixing rate is used.

[Previous](class_audiostream.md "AudioStream") [Next](class_audiostreaminteractive.md "AudioStreamInteractive")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_audiostream.md "AudioStream") [Next](class_audiostreaminteractive.md "AudioStreamInteractive")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).