---
title: MainLoop — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_mainloop.html
crawled_at: "2026-08-13T10:36:07+12:00"
content_hash: 849523409695d96c228c5e44009b669293df67201980d91af0fda4299ba83fd6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MainLoop

* * *

# MainLoop

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [SceneTree](class_scenetree.md#class-scenetree)

Abstract base class for the game's main loop.

## Description

**MainLoop** is the abstract base class for a Godot project's game loop. It is inherited by [SceneTree](class_scenetree.md#class-scenetree), which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own **MainLoop** subclass instead of the scene tree.

Upon the application start, a **MainLoop** implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a [SceneTree](class_scenetree.md#class-scenetree) is created) unless a **MainLoop** [Script](class_script.md#class-script) is provided from the command line (with e.g. `godot -s my_loop.gd`) or the [ProjectSettings.application/run/main\_loop\_type](class_projectsettings.md#class-projectsettings-property-application-run-main-loop-type) project setting is overwritten.

Here is an example script implementing a simple **MainLoop**:

GDScriptC#

```
class_name CustomMainLoop
extends MainLoop

var time_elapsed = 0

func _initialize():
    print("Initialized:")
    print("  Starting time: %s" % str(time_elapsed))

func _process(delta):
    time_elapsed += delta
    # Return true to end the main loop.
    return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)

func _finalize():
    print("Finalized:")
    print("  End time: %s" % str(time_elapsed))

```

```
using Godot;

[GlobalClass]
public partial class CustomMainLoop : MainLoop
{
    private double _timeElapsed = 0;

    public override void _Initialize()
    {
        GD.Print("Initialized:");
        GD.Print($"  Starting Time: {_timeElapsed}");
    }

    public override bool _Process(double delta)
    {
        _timeElapsed += delta;
        // Return true to end the main loop.
        return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
    }

    private void _Finalize()
    {
        GD.Print("Finalized:");
        GD.Print($"  End Time: {_timeElapsed}");
    }
}

```

## Methods

|     |     |
| --- | --- |
| void | [\_finalize](#class-mainloop-private-method-finalize)() virtual |
| void | [\_initialize](#class-mainloop-private-method-initialize)() virtual |
| [bool](class_bool.md#class-bool) | [\_physics\_process](#class-mainloop-private-method-physics-process)(delta: [float](class_float.md#class-float)) virtual |
| [bool](class_bool.md#class-bool) | [\_process](#class-mainloop-private-method-process)(delta: [float](class_float.md#class-float)) virtual |

* * *

## Signals

**on\_request\_permissions\_result**(permission: [String](class_string.md#class-string), granted: [bool](class_bool.md#class-bool)) [🔗](#class-mainloop-signal-on-request-permissions-result)

Emitted when a user responds to a permission request.

* * *

## Constants

**NOTIFICATION\_OS\_MEMORY\_WARNING** = `2009` [🔗](#class-mainloop-constant-notification-os-memory-warning)

Notification received from the OS when the application is exceeding its allocated memory.

Specific to the iOS platform.

**NOTIFICATION\_TRANSLATION\_CHANGED** = `2010` [🔗](#class-mainloop-constant-notification-translation-changed)

Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like [Object.tr()](class_object.md#class-object-method-tr).

**NOTIFICATION\_WM\_ABOUT** = `2011` [🔗](#class-mainloop-constant-notification-wm-about)

Notification received from the OS when a request for "About" information is sent.

Specific to the macOS platform.

**NOTIFICATION\_CRASH** = `2012` [🔗](#class-mainloop-constant-notification-crash)

Notification received from Godot's crash handler when the engine is about to crash.

Implemented on desktop platforms if the crash handler is enabled.

**NOTIFICATION\_OS\_IME\_UPDATE** = `2013` [🔗](#class-mainloop-constant-notification-os-ime-update)

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Specific to the macOS platform.

**NOTIFICATION\_APPLICATION\_RESUMED** = `2014` [🔗](#class-mainloop-constant-notification-application-resumed)

Notification received from the OS when the application is resumed.

Specific to the Android and iOS platforms.

**NOTIFICATION\_APPLICATION\_PAUSED** = `2015` [🔗](#class-mainloop-constant-notification-application-paused)

Notification received from the OS when the application is paused.

Specific to the Android and iOS platforms.

**Note:** On iOS, you only have approximately 5 seconds to finish a task started by this signal. If you go over this allotment, iOS will kill the app instead of pausing it.

**NOTIFICATION\_APPLICATION\_FOCUS\_IN** = `2016` [🔗](#class-mainloop-constant-notification-application-focus-in)

Notification received from the OS when the application is focused, i.e. when changing the focus from the OS desktop or a thirdparty application to any open window of the Godot instance.

Implemented on desktop and mobile platforms.

**NOTIFICATION\_APPLICATION\_FOCUS\_OUT** = `2017` [🔗](#class-mainloop-constant-notification-application-focus-out)

Notification received from the OS when the application is defocused, i.e. when changing the focus from any open window of the Godot instance to the OS desktop or a thirdparty application.

Implemented on desktop and mobile platforms.

**NOTIFICATION\_TEXT\_SERVER\_CHANGED** = `2018` [🔗](#class-mainloop-constant-notification-text-server-changed)

Notification received when text server is changed.

* * *

## Method Descriptions

void **\_finalize**() virtual [🔗](#class-mainloop-private-method-finalize)

Called before the program exits.

* * *

void **\_initialize**() virtual [🔗](#class-mainloop-private-method-initialize)

Called once during initialization.

* * *

[bool](class_bool.md#class-bool) **\_physics\_process**(delta: [float](class_float.md#class-float)) virtual [🔗](#class-mainloop-private-method-physics-process)

Called each physics tick. `delta` is the logical time between physics ticks in seconds and is equal to [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) / [Engine.physics\_ticks\_per\_second](class_engine.md#class-engine-property-physics-ticks-per-second). Equivalent to [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process).

If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next step.

**Note:** [\_physics\_process()](#class-mainloop-private-method-physics-process) may be called up to [Engine.max\_physics\_steps\_per\_frame](class_engine.md#class-engine-property-max-physics-steps-per-frame) times per (idle) frame. This step limit may be reached when the engine is suffering performance issues.

**Note:** Accumulated `delta` may diverge from real world seconds.

* * *

[bool](class_bool.md#class-bool) **\_process**(delta: [float](class_float.md#class-float)) virtual [🔗](#class-mainloop-private-method-process)

Called on each idle frame, prior to rendering, and after physics ticks have been processed. `delta` is the time between frames in seconds. Equivalent to [Node.\_process()](class_node.md#class-node-private-method-process).

If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.

**Note:** When the engine is struggling and the frame rate is lowered, `delta` will increase. When `delta` is increased, it's capped at a maximum of [Engine.time\_scale](class_engine.md#class-engine-property-time-scale) \\* [Engine.max\_physics\_steps\_per\_frame](class_engine.md#class-engine-property-max-physics-steps-per-frame) / [Engine.physics\_ticks\_per\_second](class_engine.md#class-engine-property-physics-ticks-per-second). As a result, accumulated `delta` may not represent real world time.

**Note:** When `--fixed-fps` is enabled or the engine is running in Movie Maker mode (see [MovieWriter](class_moviewriter.md#class-moviewriter)), process `delta` will always be the same for every frame, regardless of how much time the frame took to render.

**Note:** Frame delta may be post-processed by [OS.delta\_smoothing](class_os.md#class-os-property-delta-smoothing) if this is enabled for the project.

[Previous](class_logger.md "Logger") [Next](class_marshalls.md "Marshalls")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_logger.md "Logger") [Next](class_marshalls.md "Marshalls")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).