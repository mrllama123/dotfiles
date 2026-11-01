---
title: Engine — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_engine.html
crawled_at: "2026-08-13T10:31:14+12:00"
content_hash: 2a164b13387ad5a23a3e115c89a9888adca63474837b2501278f561c437e2731
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Engine

* * *

# Engine

**Inherits:** [Object](class_object.md#class-object)

Provides access to engine properties.

## Description

The **Engine** singleton allows you to query and modify the project's run-time parameters, such as frames per second, time scale, and others. It also stores information about the current build of Godot, such as the current version.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [max\_fps](#class-engine-property-max-fps) | `0` |
| [int](class_int.md#class-int) | [max\_physics\_steps\_per\_frame](#class-engine-property-max-physics-steps-per-frame) | `8` |
| [float](class_float.md#class-float) | [physics\_jitter\_fix](#class-engine-property-physics-jitter-fix) | `0.5` |
| [int](class_int.md#class-int) | [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second) | `60` |
| [bool](class_bool.md#class-bool) | [print\_error\_messages](#class-engine-property-print-error-messages) | `true` |
| [bool](class_bool.md#class-bool) | [print\_to\_stdout](#class-engine-property-print-to-stdout) | `true` |
| [float](class_float.md#class-float) | [time\_scale](#class-engine-property-time-scale) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace)\] | [capture\_script\_backtraces](#class-engine-method-capture-script-backtraces)(include\_variables: [bool](class_bool.md#class-bool) = false) const |
| [String](class_string.md#class-string) | [get\_architecture\_name](#class-engine-method-get-architecture-name)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_author\_info](#class-engine-method-get-author-info)() const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_copyright\_info](#class-engine-method-get-copyright-info)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_donor\_info](#class-engine-method-get-donor-info)() const |
| [int](class_int.md#class-int) | [get\_frames\_drawn](#class-engine-method-get-frames-drawn)() |
| [float](class_float.md#class-float) | [get\_frames\_per\_second](#class-engine-method-get-frames-per-second)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_license\_info](#class-engine-method-get-license-info)() const |
| [String](class_string.md#class-string) | [get\_license\_text](#class-engine-method-get-license-text)() const |
| [MainLoop](class_mainloop.md#class-mainloop) | [get\_main\_loop](#class-engine-method-get-main-loop)() const |
| [int](class_int.md#class-int) | [get\_physics\_frames](#class-engine-method-get-physics-frames)() const |
| [float](class_float.md#class-float) | [get\_physics\_interpolation\_fraction](#class-engine-method-get-physics-interpolation-fraction)() const |
| [int](class_int.md#class-int) | [get\_process\_frames](#class-engine-method-get-process-frames)() const |
| [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) | [get\_script\_language](#class-engine-method-get-script-language)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_script\_language\_count](#class-engine-method-get-script-language-count)() |
| [Object](class_object.md#class-object) | [get\_singleton](#class-engine-method-get-singleton)(name: [StringName](class_stringname.md#class-stringname)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_singleton\_list](#class-engine-method-get-singleton-list)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_version\_info](#class-engine-method-get-version-info)() const |
| [String](class_string.md#class-string) | [get\_write\_movie\_path](#class-engine-method-get-write-movie-path)() const |
| [bool](class_bool.md#class-bool) | [has\_singleton](#class-engine-method-has-singleton)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_editor\_hint](#class-engine-method-is-editor-hint)() const |
| [bool](class_bool.md#class-bool) | [is\_embedded\_in\_editor](#class-engine-method-is-embedded-in-editor)() const |
| [bool](class_bool.md#class-bool) | [is\_in\_physics\_frame](#class-engine-method-is-in-physics-frame)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [register\_script\_language](#class-engine-method-register-script-language)(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage)) |
| void | [register\_singleton](#class-engine-method-register-singleton)(name: [StringName](class_stringname.md#class-stringname), instance: [Object](class_object.md#class-object)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [unregister\_script\_language](#class-engine-method-unregister-script-language)(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage)) |
| void | [unregister\_singleton](#class-engine-method-unregister-singleton)(name: [StringName](class_stringname.md#class-stringname)) |

* * *

## Property Descriptions

[int](class_int.md#class-int) **max\_fps** = `0` [🔗](#class-engine-property-max-fps)

- void **set\_max\_fps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_fps**()


The maximum number of frames that can be rendered every second (FPS). A value of `0` means the framerate is uncapped.

Limiting the FPS can be useful to reduce the host machine's power consumption, which reduces heat, noise emissions, and improves battery life.

If [ProjectSettings.display/window/vsync/vsync\_mode](class_projectsettings.md#class-projectsettings-property-display-window-vsync-vsync-mode) is **Enabled** or **Adaptive**, the setting takes precedence and the max FPS number cannot exceed the monitor's refresh rate.

If [ProjectSettings.display/window/vsync/vsync\_mode](class_projectsettings.md#class-projectsettings-property-display-window-vsync-vsync-mode) is **Enabled**, on monitors with variable refresh rate enabled (G-Sync/FreeSync), using an FPS limit a few frames lower than the monitor's refresh rate will [reduce input lag while avoiding tearing](https://blurbusters.com/howto-low-lag-vsync-on/).

See also [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second) and [ProjectSettings.application/run/max\_fps](class_projectsettings.md#class-projectsettings-property-application-run-max-fps).

**Note:** The actual number of frames per second may still be below this value if the CPU or GPU cannot keep up with the project's logic and rendering.

**Note:** If [ProjectSettings.display/window/vsync/vsync\_mode](class_projectsettings.md#class-projectsettings-property-display-window-vsync-vsync-mode) is **Disabled**, limiting the FPS to a high value that can be consistently reached on the system can reduce input lag compared to an uncapped framerate. Since this works by ensuring the GPU load is lower than 100%, this latency reduction is only effective in GPU-bottlenecked scenarios, not CPU-bottlenecked scenarios.

* * *

[int](class_int.md#class-int) **max\_physics\_steps\_per\_frame** = `8` [🔗](#class-engine-property-max-physics-steps-per-frame)

- void **set\_max\_physics\_steps\_per\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_physics\_steps\_per\_frame**()


The maximum number of physics steps that can be simulated each rendered frame.

**Note:** The default value is tuned to prevent expensive physics simulations from triggering even more expensive simulations indefinitely. However, the game will appear to slow down if the rendering FPS is less than `1 / max_physics_steps_per_frame` of [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second). This occurs even if `delta` is consistently used in physics calculations. To avoid this, increase [max\_physics\_steps\_per\_frame](#class-engine-property-max-physics-steps-per-frame) if you have increased [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second) significantly above its default value.

* * *

[float](class_float.md#class-float) **physics\_jitter\_fix** = `0.5` [🔗](#class-engine-property-physics-jitter-fix)

- void **set\_physics\_jitter\_fix**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_physics\_jitter\_fix**()


How much physics ticks are synchronized with real time. If `0` or less, the ticks are fully synchronized. Higher values cause the in-game clock to deviate more from the real clock, but they smooth out framerate jitters.

**Note:** The default value of `0.5` should be good enough for most cases; values above `2` could cause the game to react to dropped frames with a noticeable delay and are not recommended.

**Note:** When using a custom physics interpolation solution, or within a network game, it's recommended to disable the physics jitter fix by setting this property to `0`.

* * *

[int](class_int.md#class-int) **physics\_ticks\_per\_second** = `60` [🔗](#class-engine-property-physics-ticks-per-second)

- void **set\_physics\_ticks\_per\_second**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_physics\_ticks\_per\_second**()


The number of fixed iterations per second. This controls how often physics simulation and [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) methods are run. This value should generally always be set to `60` or above, as Godot doesn't interpolate the physics step. As a result, values lower than `60` will look stuttery. This value can be increased to make input more reactive or work around collision tunneling issues, but keep in mind doing so will increase CPU usage. See also [max\_fps](#class-engine-property-max-fps) and [ProjectSettings.physics/common/physics\_ticks\_per\_second](class_projectsettings.md#class-projectsettings-property-physics-common-physics-ticks-per-second).

**Note:** Only [max\_physics\_steps\_per\_frame](#class-engine-property-max-physics-steps-per-frame) physics ticks may be simulated per rendered frame at most. If more physics ticks have to be simulated per rendered frame to keep up with rendering, the project will appear to slow down (even if `delta` is used consistently in physics calculations). Therefore, it is recommended to also increase [max\_physics\_steps\_per\_frame](#class-engine-property-max-physics-steps-per-frame) if increasing [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second) significantly above its default value.

* * *

[bool](class_bool.md#class-bool) **print\_error\_messages** = `true` [🔗](#class-engine-property-print-error-messages)

- void **set\_print\_error\_messages**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_printing\_error\_messages**()


If `false`, stops printing error and warning messages to the console and editor Output log. This can be used to hide error and warning messages during unit test suite runs. This property is equivalent to the [ProjectSettings.application/run/disable\_stderr](class_projectsettings.md#class-projectsettings-property-application-run-disable-stderr) project setting.

**Note:** This property does not impact the editor's Errors tab when running a project from the editor.

**Warning:** If set to `false` anywhere in the project, important error messages may be hidden even if they are emitted from other scripts. In a `@tool` script, this will also impact the editor itself. Do _not_ report bugs before ensuring error messages are enabled (as they are by default).

* * *

[bool](class_bool.md#class-bool) **print\_to\_stdout** = `true` [🔗](#class-engine-property-print-to-stdout)

- void **set\_print\_to\_stdout**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_printing\_to\_stdout**()


If `false`, stops printing messages (for example using [@GlobalScope.print()](class_@globalscope.md#class-globalscope-method-print)) to the console, log files, and editor Output log. This property is equivalent to the [ProjectSettings.application/run/disable\_stdout](class_projectsettings.md#class-projectsettings-property-application-run-disable-stdout) project setting.

**Note:** This does not stop printing errors or warnings produced by scripts to the console or log files, for more details see [print\_error\_messages](#class-engine-property-print-error-messages).

* * *

[float](class_float.md#class-float) **time\_scale** = `1.0` [🔗](#class-engine-property-time-scale)

- void **set\_time\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_time\_scale**()


The speed multiplier at which the in-game clock updates, compared to real time. For example, if set to `2.0` the game runs twice as fast, and if set to `0.5` the game runs half as fast.

This value affects [Timer](class_timer.md#class-timer), [SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer), and all other simulations that make use of `delta` time (such as [Node.\_process()](class_node.md#class-node-private-method-process) and [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)).

**Note:** It's recommended to keep this property above `0.0`, as the game may behave unexpectedly otherwise.

**Note:** This does not affect audio playback speed. Use [AudioServer.playback\_speed\_scale](class_audioserver.md#class-audioserver-property-playback-speed-scale) to adjust audio playback speed independently of [time\_scale](#class-engine-property-time-scale).

**Note:** This does not automatically adjust [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second). With values above `1.0` physics simulation may become less precise, as each physics tick will stretch over a larger period of engine time. If you're modifying [time\_scale](#class-engine-property-time-scale) to speed up simulation by a large factor, consider also increasing [physics\_ticks\_per\_second](#class-engine-property-physics-ticks-per-second) to make the simulation more reliable.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace)\] **capture\_script\_backtraces**(include\_variables: [bool](class_bool.md#class-bool) = false) const [🔗](#class-engine-method-capture-script-backtraces)

Captures and returns backtraces from all registered script languages.

By default, the returned [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace) will only contain stack frames in editor builds and debug builds. To enable them for release builds as well, you need to enable [ProjectSettings.debug/settings/gdscript/always\_track\_call\_stacks](class_projectsettings.md#class-projectsettings-property-debug-settings-gdscript-always-track-call-stacks).

If `include_variables` is `true`, the backtrace will also include the names and values of any global variables (e.g. autoload singletons) at the point of the capture, as well as local variables and class member variables at each stack frame. This will however will only be respected when running the game with a debugger attached, like when running the game from the editor. To enable it for export builds as well, you need to enable [ProjectSettings.debug/settings/gdscript/always\_track\_local\_variables](class_projectsettings.md#class-projectsettings-property-debug-settings-gdscript-always-track-local-variables).

**Warning:** When `include_variables` is `true`, any captured variables can potentially (e.g. with GDScript backtraces) be their actual values, including any object references. This means that storing such a [ScriptBacktrace](class_scriptbacktrace.md#class-scriptbacktrace) will prevent those objects from being deallocated, so it's generally recommended not to do so.

* * *

[String](class_string.md#class-string) **get\_architecture\_name**() const [🔗](#class-engine-method-get-architecture-name)

Returns the name of the CPU architecture the Godot binary was built for. Possible return values include `"x86_64"`, `"x86_32"`, `"arm64"`, `"arm32"`, `"rv64"`, `"ppc64"`, `"loongarch64"`, `"wasm64"`, and `"wasm32"`.

To detect whether the current build is 64-bit, or the type of architecture, don't use the architecture name. Instead, use [OS.has\_feature()](class_os.md#class-os-method-has-feature) to check for the `"64"` feature tag, or tags such as `"x86"` or `"arm"`. See the [Feature Tags](../tutorials/export/feature_tags.md) documentation for more details.

**Note:** This method does _not_ return the name of the system's CPU architecture (like [OS.get\_processor\_name()](class_os.md#class-os-method-get-processor-name)). For example, when running an `x86_32` Godot binary on an `x86_64` system, the returned value will still be `"x86_32"`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_author\_info**() const [🔗](#class-engine-method-get-author-info)

Returns the engine author information as a [Dictionary](class_dictionary.md#class-dictionary), where each entry is an [Array](class_array.md#class-array) of strings with the names of notable contributors to the Godot Engine: `lead_developers`, `founders`, `project_managers`, and `developers`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_copyright\_info**() const [🔗](#class-engine-method-get-copyright-info)

Returns an [Array](class_array.md#class-array) of dictionaries with copyright information for every component of Godot's source code.

Every [Dictionary](class_dictionary.md#class-dictionary) contains a `name` identifier, and a `parts` array of dictionaries. It describes the component in detail with the following entries:

- `files` \- [Array](class_array.md#class-array) of file paths from the source code affected by this component;

- `copyright` \- [Array](class_array.md#class-array) of owners of this component;

- `license` \- The license applied to this component (such as " [Expat](https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants)" or " [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/)").


* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_donor\_info**() const [🔗](#class-engine-method-get-donor-info)

Returns a [Dictionary](class_dictionary.md#class-dictionary) of categorized donor names. Each entry is an [Array](class_array.md#class-array) of strings:

{ `platinum_sponsors`, `gold_sponsors`, `silver_sponsors`, `bronze_sponsors`, `mini_sponsors`, `gold_donors`, `silver_donors`, `bronze_donors`}

* * *

[int](class_int.md#class-int) **get\_frames\_drawn**() [🔗](#class-engine-method-get-frames-drawn)

Returns the total number of frames drawn since the engine started.

**Note:** On headless platforms, or if rendering is disabled with `--disable-render-loop` via command line, this method always returns `0`. See also [get\_process\_frames()](#class-engine-method-get-process-frames).

* * *

[float](class_float.md#class-float) **get\_frames\_per\_second**() const [🔗](#class-engine-method-get-frames-per-second)

Returns the average frames rendered every second (FPS), also known as the framerate.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_license\_info**() const [🔗](#class-engine-method-get-license-info)

Returns a [Dictionary](class_dictionary.md#class-dictionary) of licenses used by Godot and included third party components. Each entry is a license name (such as " [Expat](https://en.wikipedia.org/wiki/MIT_License#Ambiguity_and_variants)") and its associated text.

* * *

[String](class_string.md#class-string) **get\_license\_text**() const [🔗](#class-engine-method-get-license-text)

Returns the full Godot license text.

* * *

[MainLoop](class_mainloop.md#class-mainloop) **get\_main\_loop**() const [🔗](#class-engine-method-get-main-loop)

Returns the instance of the [MainLoop](class_mainloop.md#class-mainloop). This is usually the main [SceneTree](class_scenetree.md#class-scenetree) and is the same as [Node.get\_tree()](class_node.md#class-node-method-get-tree).

**Note:** The type instantiated as the main loop can changed with [ProjectSettings.application/run/main\_loop\_type](class_projectsettings.md#class-projectsettings-property-application-run-main-loop-type).

* * *

[int](class_int.md#class-int) **get\_physics\_frames**() const [🔗](#class-engine-method-get-physics-frames)

Returns the total number of frames passed since the engine started. This number is increased every **physics frame**. See also [get\_process\_frames()](#class-engine-method-get-process-frames).

This method can be used to run expensive logic less often without relying on a [Timer](class_timer.md#class-timer):

GDScriptC#

```
func _physics_process(_delta):
    if Engine.get_physics_frames() % 2 == 0:
        pass # Run expensive logic only once every 2 physics frames here.

```

```
public override void _PhysicsProcess(double delta)
{
    base._PhysicsProcess(delta);

    if (Engine.GetPhysicsFrames() % 2 == 0)
    {
        // Run expensive logic only once every 2 physics frames here.
    }
}

```

* * *

[float](class_float.md#class-float) **get\_physics\_interpolation\_fraction**() const [🔗](#class-engine-method-get-physics-interpolation-fraction)

Returns the fraction through the current physics tick we are at the time of rendering the frame. This can be used to implement fixed timestep interpolation.

* * *

[int](class_int.md#class-int) **get\_process\_frames**() const [🔗](#class-engine-method-get-process-frames)

Returns the total number of frames passed since the engine started. This number is increased every **process frame**, regardless of whether the render loop is enabled. See also [get\_frames\_drawn()](#class-engine-method-get-frames-drawn) and [get\_physics\_frames()](#class-engine-method-get-physics-frames).

This method can be used to run expensive logic less often without relying on a [Timer](class_timer.md#class-timer):

GDScriptC#

```
func _process(_delta):
    if Engine.get_process_frames() % 5 == 0:
        pass # Run expensive logic only once every 5 process (render) frames here.

```

```
public override void _Process(double delta)
{
    base._Process(delta);

    if (Engine.GetProcessFrames() % 5 == 0)
    {
        // Run expensive logic only once every 5 process (render) frames here.
    }
}

```

* * *

[ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) **get\_script\_language**(index: [int](class_int.md#class-int)) const [🔗](#class-engine-method-get-script-language)

Returns an instance of a [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) with the given `index`.

* * *

[int](class_int.md#class-int) **get\_script\_language\_count**() [🔗](#class-engine-method-get-script-language-count)

Returns the number of available script languages. Use with [get\_script\_language()](#class-engine-method-get-script-language).

* * *

[Object](class_object.md#class-object) **get\_singleton**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-engine-method-get-singleton)

Returns the global singleton with the given `name`, or `null` if it does not exist. Often used for plugins. See also [has\_singleton()](#class-engine-method-has-singleton) and [get\_singleton\_list()](#class-engine-method-get-singleton-list).

**Note:** Global singletons are not the same as autoloaded nodes, which are configurable in the project settings.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_singleton\_list**() const [🔗](#class-engine-method-get-singleton-list)

Returns a list of names of all available global singletons. See also [get\_singleton()](#class-engine-method-get-singleton).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_version\_info**() const [🔗](#class-engine-method-get-version-info)

Returns the current engine version information as a [Dictionary](class_dictionary.md#class-dictionary) containing the following entries:

- `major` \- Major version number as an int;

- `minor` \- Minor version number as an int;

- `patch` \- Patch version number as an int;

- `hex` \- Full version encoded as a hexadecimal int with one byte (2 hex digits) per number (see example below);

- `status` \- Status (such as "beta", "rc1", "rc2", "stable", etc.) as a String;

- `build` \- Build name (e.g. "custom\_build") as a String;

- `hash` \- Full Git commit hash as a String;

- `timestamp` \- Holds the Git commit date UNIX timestamp in seconds as an int, or `0` if unavailable;

- `string` \- `major`, `minor`, `patch`, `status`, and `build` in a single String.


The `hex` value is encoded as follows, from left to right: one byte for the major, one byte for the minor, one byte for the patch version. For example, "3.1.12" would be `0x03010C`.

**Note:** The `hex` value is still an [int](class_int.md#class-int) internally, and printing it will give you its decimal representation, which is not particularly meaningful. Use hexadecimal literals for quick version comparisons from code:

GDScriptC#

```
if Engine.get_version_info().hex >= 0x040100:
    pass # Do things specific to version 4.1 or later.
else:
    pass # Do things specific to versions before 4.1.

```

```
if ((int)Engine.GetVersionInfo()["hex"] >= 0x040100)
{
    // Do things specific to version 4.1 or later.
}
else
{
    // Do things specific to versions before 4.1.
}

```

* * *

[String](class_string.md#class-string) **get\_write\_movie\_path**() const [🔗](#class-engine-method-get-write-movie-path)

Returns the path to the [MovieWriter](class_moviewriter.md#class-moviewriter)'s output file, or an empty string if the engine wasn't started in Movie Maker mode. The default path can be changed in [ProjectSettings.editor/movie\_writer/movie\_file](class_projectsettings.md#class-projectsettings-property-editor-movie-writer-movie-file).

* * *

[bool](class_bool.md#class-bool) **has\_singleton**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-engine-method-has-singleton)

Returns `true` if a singleton with the given `name` exists in the global scope. See also [get\_singleton()](#class-engine-method-get-singleton).

GDScriptC#

```
print(Engine.has_singleton("OS"))          # Prints true
print(Engine.has_singleton("Engine"))      # Prints true
print(Engine.has_singleton("AudioServer")) # Prints true
print(Engine.has_singleton("Unknown"))     # Prints false

```

```
GD.Print(Engine.HasSingleton("OS"));          // Prints True
GD.Print(Engine.HasSingleton("Engine"));      // Prints True
GD.Print(Engine.HasSingleton("AudioServer")); // Prints True
GD.Print(Engine.HasSingleton("Unknown"));     // Prints False

```

**Note:** Global singletons are not the same as autoloaded nodes, which are configurable in the project settings.

* * *

[bool](class_bool.md#class-bool) **is\_editor\_hint**() const [🔗](#class-engine-method-is-editor-hint)

Returns `true` if the script is currently running inside the editor, otherwise returns `false`. This is useful for `@tool` scripts to conditionally draw editor helpers, or prevent accidentally running "game" code that would affect the scene state while in the editor:

GDScriptC#

```
if Engine.is_editor_hint():
    draw_gizmos()
else:
    simulate_physics()

```

```
if (Engine.IsEditorHint())
    DrawGizmos();
else
    SimulatePhysics();

```

See [Running code in the editor](../tutorials/plugins/running_code_in_the_editor.md) in the documentation for more information.

**Note:** To detect whether the script is running on an editor _build_ (such as when pressing `F5`), use [OS.has\_feature()](class_os.md#class-os-method-has-feature) with the `"editor"` argument instead. `OS.has_feature("editor")` evaluate to `true` both when the script is running in the editor and when running the project from the editor, but returns `false` when run from an exported project.

* * *

[bool](class_bool.md#class-bool) **is\_embedded\_in\_editor**() const [🔗](#class-engine-method-is-embedded-in-editor)

Returns `true` if the engine is running embedded in the editor. This is useful to prevent attempting to update window mode or window flags that are not supported when running the project embedded in the editor.

* * *

[bool](class_bool.md#class-bool) **is\_in\_physics\_frame**() const [🔗](#class-engine-method-is-in-physics-frame)

Returns `true` if the engine is inside the fixed physics process step of the main loop.

```
func _enter_tree():
    # Depending on when the node is added to the tree,
    # prints either "true" or "false".
    print(Engine.is_in_physics_frame())

func _process(delta):
    print(Engine.is_in_physics_frame()) # Prints false

func _physics_process(delta):
    print(Engine.is_in_physics_frame()) # Prints true

```

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **register\_script\_language**(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage)) [🔗](#class-engine-method-register-script-language)

Registers a [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) instance to be available with `ScriptServer`.

Returns:

- [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success;

- [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) if `ScriptServer` has reached the limit and cannot register any new language;

- [@GlobalScope.ERR\_ALREADY\_EXISTS](class_@globalscope.md#class-globalscope-constant-err-already-exists) if `ScriptServer` already contains a language with similar extension/name/type.


* * *

void **register\_singleton**(name: [StringName](class_stringname.md#class-stringname), instance: [Object](class_object.md#class-object)) [🔗](#class-engine-method-register-singleton)

Registers the given [Object](class_object.md#class-object) `instance` as a singleton, available globally under `name`. Useful for plugins.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **unregister\_script\_language**(language: [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage)) [🔗](#class-engine-method-unregister-script-language)

Unregisters the [ScriptLanguage](class_scriptlanguage.md#class-scriptlanguage) instance from `ScriptServer`.

Returns:

- [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success;

- [@GlobalScope.ERR\_DOES\_NOT\_EXIST](class_@globalscope.md#class-globalscope-constant-err-does-not-exist) if the language is not registered in `ScriptServer`.


* * *

void **unregister\_singleton**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-engine-method-unregister-singleton)

Removes the singleton registered under `name`. The singleton object is _not_ freed. Only works with user-defined singletons registered with [register\_singleton()](#class-engine-method-register-singleton).

[Previous](class_enetpacketpeer.md "ENetPacketPeer") [Next](class_enginedebugger.md "EngineDebugger")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_enetpacketpeer.md "ENetPacketPeer") [Next](class_enginedebugger.md "EngineDebugger")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).