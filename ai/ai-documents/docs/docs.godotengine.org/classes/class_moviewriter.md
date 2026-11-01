---
title: MovieWriter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_moviewriter.html
crawled_at: "2026-08-13T10:19:31+12:00"
content_hash: 7432860de052545af8e83376d234def9691247e513b09f8289bf58e7e4a81cd9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MovieWriter

* * *

# MovieWriter

**Inherits:** [Object](class_object.md#class-object)

Abstract class for non-real-time video recording encoders.

## Description

Godot can record videos with non-real-time simulation. Like the `--fixed-fps` [command line argument](../tutorials/editor/command_line_tutorial.md), this forces the reported `delta` in [Node.\_process()](class_node.md#class-node-private-method-process) functions to be identical across frames, regardless of how long it actually took to render the frame. This can be used to record high-quality videos with perfect frame pacing regardless of your hardware's capabilities.

Godot has 3 built-in **MovieWriter** s:

- OGV container with Theora for video and Vorbis for audio ( `.ogv` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing [ProjectSettings.editor/movie\_writer/video\_quality](class_projectsettings.md#class-projectsettings-property-editor-movie-writer-video-quality) and [ProjectSettings.editor/movie\_writer/ogv/audio\_quality](class_projectsettings.md#class-projectsettings-property-editor-movie-writer-ogv-audio-quality). The resulting file can be viewed in Godot with [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer) and most video players, but not web browsers as they don't support Theora.

- AVI container with MJPEG for video and uncompressed audio ( `.avi` file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing [ProjectSettings.editor/movie\_writer/video\_quality](class_projectsettings.md#class-projectsettings-property-editor-movie-writer-video-quality). The resulting file can be viewed in most video players, but it must be converted to another format for viewing on the web or by Godot with [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer). MJPEG does not support transparency. AVI output is currently limited to a file of 4 GB in size at most.

- PNG image sequence for video and WAV for audio ( `.png` file extension). Lossless compression, large file sizes, slow encoding. Designed to be encoded to a video file with another tool such as [FFmpeg](https://ffmpeg.org/) after recording. Transparency is currently not supported, even if the root viewport is set to be transparent.


If you need to encode to a different format or pipe a stream through third-party software, you can extend the **MovieWriter** class to create your own movie writers. This should typically be done using GDExtension for performance reasons.

**Editor usage:** A default movie file path can be specified in [ProjectSettings.editor/movie\_writer/movie\_file](class_projectsettings.md#class-projectsettings-property-editor-movie-writer-movie-file). Alternatively, for running single scenes, a `movie_file` metadata can be added to the root node, specifying the path to a movie file that will be used when recording that scene. Once a path is set, click the video reel icon in the top-right corner of the editor to enable Movie Maker mode, then run any scene as usual. The engine will start recording as soon as the splash screen is finished, and it will only stop recording when the engine quits. Click the video reel icon again to disable Movie Maker mode. Note that toggling Movie Maker mode does not affect project instances that are already running.

**Note:** MovieWriter is available for use in both the editor and exported projects, but it is _not_ designed for use by end users to record videos while playing. Players wishing to record gameplay videos should install tools such as [OBS Studio](https://obsproject.com/) or [SimpleScreenRecorder](https://www.maartenbaert.be/simplescreenrecorder/) instead.

**Note:** MJPEG support ( `.avi` file extension) depends on the `jpg` module being enabled at compile time (default behavior).

**Note:** OGV support ( `.ogv` file extension) depends on the `theora` module being enabled at compile time (default behavior). Theora compression is only available in editor binaries.

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [\_get\_audio\_mix\_rate](#class-moviewriter-private-method-get-audio-mix-rate)() virtualrequiredconst |
| [SpeakerMode](class_audioserver.md#enum-audioserver-speakermode) | [\_get\_audio\_speaker\_mode](#class-moviewriter-private-method-get-audio-speaker-mode)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_handles\_file](#class-moviewriter-private-method-handles-file)(path: [String](class_string.md#class-string)) virtualrequiredconst |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_write\_begin](#class-moviewriter-private-method-write-begin)(movie\_size: [Vector2i](class_vector2i.md#class-vector2i), fps: [int](class_int.md#class-int), base\_path: [String](class_string.md#class-string)) virtualrequired |
| void | [\_write\_end](#class-moviewriter-private-method-write-end)() virtualrequired |
| [Error](class_@globalscope.md#enum-globalscope-error) | [\_write\_frame](#class-moviewriter-private-method-write-frame)(frame\_image: [Image](class_image.md#class-image), audio\_frame\_block: `const void*`) virtualrequired |
| void | [add\_writer](#class-moviewriter-method-add-writer)(writer: [MovieWriter](#class-moviewriter)) static |

* * *

## Method Descriptions

[int](class_int.md#class-int) **\_get\_audio\_mix\_rate**() virtualrequiredconst [🔗](#class-moviewriter-private-method-get-audio-mix-rate)

Called when the audio sample rate used for recording the audio is requested by the engine. The value returned must be specified in Hz. Defaults to 48000 Hz if [\_get\_audio\_mix\_rate()](#class-moviewriter-private-method-get-audio-mix-rate) is not overridden.

* * *

[SpeakerMode](class_audioserver.md#enum-audioserver-speakermode) **\_get\_audio\_speaker\_mode**() virtualrequiredconst [🔗](#class-moviewriter-private-method-get-audio-speaker-mode)

Called when the audio speaker mode used for recording the audio is requested by the engine. This can affect the number of output channels in the resulting audio file/stream. Defaults to [AudioServer.SPEAKER\_MODE\_STEREO](class_audioserver.md#class-audioserver-constant-speaker-mode-stereo) if [\_get\_audio\_speaker\_mode()](#class-moviewriter-private-method-get-audio-speaker-mode) is not overridden.

* * *

[bool](class_bool.md#class-bool) **\_handles\_file**(path: [String](class_string.md#class-string)) virtualrequiredconst [🔗](#class-moviewriter-private-method-handles-file)

Called when the engine determines whether this **MovieWriter** is able to handle the file at `path`. Must return `true` if this **MovieWriter** is able to handle the given file path, `false` otherwise. Typically, [\_handles\_file()](#class-moviewriter-private-method-handles-file) is overridden as follows to allow the user to record a file at any path with a given file extension:

```
func _handles_file(path):
    # Allows specifying an output file with a `.mkv` file extension (case-insensitive),
    # either in the Project Settings or with the `--write-movie <path>` command line argument.
    return path.get_extension().to_lower() == "mkv"

```

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_write\_begin**(movie\_size: [Vector2i](class_vector2i.md#class-vector2i), fps: [int](class_int.md#class-int), base\_path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-moviewriter-private-method-write-begin)

Called once before the engine starts writing video and audio data. `movie_size` is the width and height of the video to save. `fps` is the number of frames per second specified in the project settings or using the `--fixed-fps <fps>` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

void **\_write\_end**() virtualrequired [🔗](#class-moviewriter-private-method-write-end)

Called when the engine finishes writing. This occurs when the engine quits by pressing the window manager's close button, or when [SceneTree.quit()](class_scenetree.md#class-scenetree-method-quit) is called.

**Note:** Pressing `Ctrl + C` on the terminal running the editor/project does _not_ result in [\_write\_end()](#class-moviewriter-private-method-write-end) being called.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **\_write\_frame**(frame\_image: [Image](class_image.md#class-image), audio\_frame\_block: `const void*`) virtualrequired [🔗](#class-moviewriter-private-method-write-frame)

Called at the end of every rendered frame. The `frame_image` and `audio_frame_block` function arguments should be written to.

* * *

void **add\_writer**(writer: [MovieWriter](#class-moviewriter)) static [🔗](#class-moviewriter-method-add-writer)

Adds a writer to be usable by the engine. The supported file extensions can be set by overriding [\_handles\_file()](#class-moviewriter-private-method-handles-file).

**Note:** [add\_writer()](#class-moviewriter-method-add-writer) must be called early enough in the engine initialization to work, as movie writing is designed to start at the same time as the rest of the engine.

[Previous](class_mobilevrinterface.md "MobileVRInterface") [Next](class_multiplayerapi.md "MultiplayerAPI")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_mobilevrinterface.md "MobileVRInterface") [Next](class_multiplayerapi.md "MultiplayerAPI")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).