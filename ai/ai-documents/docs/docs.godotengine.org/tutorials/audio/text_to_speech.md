---
title: Text to speech — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/audio/text_to_speech.html
crawled_at: "2026-08-13T10:28:46+12:00"
content_hash: 1572c258850891a1f4d71ca0940ef44e2865d9ffe422b3e3ed3dda4203ab2fa8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Audio](index.md)
  - Text to speech
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/audio/text_to_speech.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Text to speech

## Basic Usage

Basic usage of text-to-speech involves the following one-time steps:

- Enable TTS in the Godot editor for your project

- Query the system for a list of usable voices

- Store the ID of the voice you want to use


By default, the Godot project-level setting for text-to-speech is disabled, to avoid unnecessary overhead. To enable it:

- Go to **Project > Project Settings**

- Make sure the **Advanced Settings** toggle is enabled

- Click on **Audio > General**

- Ensure the **Text to Speech** option is checked

- Restart Godot if prompted to do so.


Text-to-speech uses a specific voice. Depending on the user's system, they might have multiple voices installed. Once you have the voice ID, you can use it to speak some text:

GDScriptC#

```
# One-time steps.
# Pick a voice. Here, we arbitrarily pick the first English voice.
var voices = DisplayServer.tts_get_voices_for_language("en")
var voice_id = voices[0]

# Say "Hello, world!".
DisplayServer.tts_speak("Hello, world!", voice_id)

# Say a longer sentence, and then interrupt it.
# Note that this method is asynchronous: execution proceeds to the next line immediately,
# before the voice finishes speaking.
var long_message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur"
DisplayServer.tts_speak(long_message, voice_id)

# Immediately stop the current text mid-sentence and say goodbye instead.
DisplayServer.tts_stop()
DisplayServer.tts_speak("Goodbye!", voice_id)

```

```
// One-time steps.
// Pick a voice. Here, we arbitrarily pick the first English voice.
string[] voices = DisplayServer.TtsGetVoicesForLanguage("en");
string voiceId = voices[0];

// Say "Hello, world!".
DisplayServer.TtsSpeak("Hello, world!", voiceId);

// Say a longer sentence, and then interrupt it.
// Note that this method is asynchronous: execution proceeds to the next line immediately,
// before the voice finishes speaking.
string longMessage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur";
DisplayServer.TtsSpeak(longMessage, voiceId);

// Immediately stop the current text mid-sentence and say goodbye instead.
DisplayServer.TtsStop();
DisplayServer.TtsSpeak("Goodbye!", voiceId);

```

## Requirements for functionality

Godot includes text-to-speech functionality. You can find these under the [DisplayServer class](../../classes/class_displayserver.md#class-displayserver).

Godot depends on system libraries for text-to-speech functionality. These libraries are installed by default on Windows, macOS, Web, Android and iOS, but not on all Linux distributions. If they are not present, text-to-speech functionality will not work. Specifically, the `tts_get_voices()` method will return an empty list, indicating that there are no usable voices.

Both Godot users on Linux and end-users on Linux running Godot games need to ensure that their system includes the system libraries for text-to-speech to work. Please consult the table below or your own distribution's documentation to determine what libraries you need to install.

### Distro-specific one-liners

|     |     |
| --- | --- |
| **Arch Linux** | ```<br>pacman -S speech-dispatcher festival espeakup<br>``` |

## Troubleshooting

If you get the error Invalid get index '0' (on base: 'PackedStringArray'). for the line var voice\_id = voices\[0\], check if there are any items in voices. If not:

- All users: make sure you enabled **Text to Speech** in project settings

- Linux users: ensure you installed the system-specific libraries for text to speech


## Best practices

The best practices for text-to-speech, in terms of the ideal player experience for blind players, is to send output to the player's screen reader. This preserves the choice of language, speed, pitch, etc. that the user set, as well as allows advanced features like allowing players to scroll backward and forward through text. As of now, Godot doesn't provide this level of integration.

With the current state of the Godot text-to-speech APIs, best practices include:

- Develop the game with text-to-speech enabled, and ensure that everything sounds correct

- Allow players to control which voice to use, and save/persist that selection across game sessions

- Allow players to control the speech rate, and save/persist that selection across game sessions


This provides your blind players with the most flexibility and comfort available when not using a screen reader, and minimizes the chance of frustrating and alienating them.

## Caveats and Other Information

- Expect delays when you call tts\_speak and tts\_stop. The actual delay time varies depending on both the OS and on your machine's specifications. This is especially critical on Android and Web, where some of the voices depend on web services, and the actual time to playback depends on server load, network latency, and other factors.

- Non-English text works if the correct voices are installed and used. On Windows, you can consult the instructions in [this article](https://www.ghacks.net/2018/08/11/unlock-all-windows-10-tts-voices-system-wide-to-get-more-of-them/) to enable additional language voices on Windows.

- Non-ASCII characters, such as umlaut, are pronounced correctly if you select the correct voice.

- Blind players use a number of screen readers, including JAWS, NVDA, VoiceOver, Narrator, and more.

- Windows text-to-speech APIs generally perform better than their equivalents on other systems (e.g. tts\_stop followed by tts\_speak immediately speaks the new message).


[Previous](recording_with_microphone.md "Recording with microphone") [Next](../export/index.md "Export")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](recording_with_microphone.md "Recording with microphone") [Next](../export/index.md "Export")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).