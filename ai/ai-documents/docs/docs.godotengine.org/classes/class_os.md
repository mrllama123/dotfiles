---
title: OS — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_os.html
crawled_at: "2026-08-13T10:20:40+12:00"
content_hash: 56671edeba4a514cfa64a1b72ade3cf1f0b2fa269ebf2a274500b7179b2b8417
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OS

* * *

# OS

**Inherits:** [Object](class_object.md#class-object)

Provides access to common operating system functionalities.

## Description

The **OS** class wraps the most common functionalities for communicating with the host operating system, such as the video driver, delays, environment variables, execution of binaries, command line, etc.

**Note:** In Godot 4, **OS** functions related to window management, clipboard, and TTS were moved to the [DisplayServer](class_displayserver.md#class-displayserver) singleton (and the [Window](class_window.md#class-window) class). Functions related to time were removed and are only available in the [Time](class_time.md#class-time) class.

## Tutorials

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [delta\_smoothing](#class-os-property-delta-smoothing) | `true` |
| [bool](class_bool.md#class-bool) | [low\_processor\_usage\_mode](#class-os-property-low-processor-usage-mode) | `false` |
| [int](class_int.md#class-int) | [low\_processor\_usage\_mode\_sleep\_usec](#class-os-property-low-processor-usage-mode-sleep-usec) | `6900` |

## Methods

|     |     |
| --- | --- |
| void | [add\_logger](#class-os-method-add-logger)(logger: [Logger](class_logger.md#class-logger)) |
| void | [alert](#class-os-method-alert)(text: [String](class_string.md#class-string), title: [String](class_string.md#class-string) = "Alert!") |
| void | [close\_midi\_inputs](#class-os-method-close-midi-inputs)() |
| void | [crash](#class-os-method-crash)(message: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [create\_instance](#class-os-method-create-instance)(arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| [int](class_int.md#class-int) | [create\_process](#class-os-method-create-process)(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), open\_console: [bool](class_bool.md#class-bool) = false) |
| void | [delay\_msec](#class-os-method-delay-msec)(msec: [int](class_int.md#class-int)) const |
| void | [delay\_usec](#class-os-method-delay-usec)(usec: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [execute](#class-os-method-execute)(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), output: [Array](class_array.md#class-array) = \[\], read\_stderr: [bool](class_bool.md#class-bool) = false, open\_console: [bool](class_bool.md#class-bool) = false) |
| [Dictionary](class_dictionary.md#class-dictionary) | [execute\_with\_pipe](#class-os-method-execute-with-pipe)(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), blocking: [bool](class_bool.md#class-bool) = true) |
| [Key](class_@globalscope.md#enum-globalscope-key) | [find\_keycode\_from\_string](#class-os-method-find-keycode-from-string)(string: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_cache\_dir](#class-os-method-get-cache-dir)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_cmdline\_args](#class-os-method-get-cmdline-args)() |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_cmdline\_user\_args](#class-os-method-get-cmdline-user-args)() |
| [String](class_string.md#class-string) | [get\_config\_dir](#class-os-method-get-config-dir)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_connected\_midi\_inputs](#class-os-method-get-connected-midi-inputs)() |
| [String](class_string.md#class-string) | [get\_data\_dir](#class-os-method-get-data-dir)() const |
| [String](class_string.md#class-string) | [get\_distribution\_name](#class-os-method-get-distribution-name)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_entropy](#class-os-method-get-entropy)(size: [int](class_int.md#class-int)) |
| [String](class_string.md#class-string) | [get\_environment](#class-os-method-get-environment)(variable: [String](class_string.md#class-string)) const |
| [String](class_string.md#class-string) | [get\_executable\_path](#class-os-method-get-executable-path)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_granted\_permissions](#class-os-method-get-granted-permissions)() const |
| [String](class_string.md#class-string) | [get\_keycode\_string](#class-os-method-get-keycode-string)(code: [Key](class_@globalscope.md#enum-globalscope-key)) const |
| [String](class_string.md#class-string) | [get\_locale](#class-os-method-get-locale)() const |
| [String](class_string.md#class-string) | [get\_locale\_language](#class-os-method-get-locale-language)() const |
| [int](class_int.md#class-int) | [get\_main\_thread\_id](#class-os-method-get-main-thread-id)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_memory\_info](#class-os-method-get-memory-info)() const |
| [String](class_string.md#class-string) | [get\_model\_name](#class-os-method-get-model-name)() const |
| [String](class_string.md#class-string) | [get\_name](#class-os-method-get-name)() const |
| [int](class_int.md#class-int) | [get\_process\_exit\_code](#class-os-method-get-process-exit-code)(pid: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_process\_id](#class-os-method-get-process-id)() const |
| [int](class_int.md#class-int) | [get\_processor\_count](#class-os-method-get-processor-count)() const |
| [String](class_string.md#class-string) | [get\_processor\_name](#class-os-method-get-processor-name)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_restart\_on\_exit\_arguments](#class-os-method-get-restart-on-exit-arguments)() const |
| [int](class_int.md#class-int) | [get\_static\_memory\_peak\_usage](#class-os-method-get-static-memory-peak-usage)() const |
| [int](class_int.md#class-int) | [get\_static\_memory\_usage](#class-os-method-get-static-memory-usage)() const |
| [StdHandleType](#enum-os-stdhandletype) | [get\_stderr\_type](#class-os-method-get-stderr-type)() const |
| [StdHandleType](#enum-os-stdhandletype) | [get\_stdin\_type](#class-os-method-get-stdin-type)() const |
| [StdHandleType](#enum-os-stdhandletype) | [get\_stdout\_type](#class-os-method-get-stdout-type)() const |
| [String](class_string.md#class-string) | [get\_system\_ca\_certificates](#class-os-method-get-system-ca-certificates)() |
| [String](class_string.md#class-string) | [get\_system\_dir](#class-os-method-get-system-dir)(dir: [SystemDir](#enum-os-systemdir), shared\_storage: [bool](class_bool.md#class-bool) = true) const |
| [String](class_string.md#class-string) | [get\_system\_font\_path](#class-os-method-get-system-font-path)(font\_name: [String](class_string.md#class-string), weight: [int](class_int.md#class-int) = 400, stretch: [int](class_int.md#class-int) = 100, italic: [bool](class_bool.md#class-bool) = false) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_system\_font\_path\_for\_text](#class-os-method-get-system-font-path-for-text)(font\_name: [String](class_string.md#class-string), text: [String](class_string.md#class-string), locale: [String](class_string.md#class-string) = "", script: [String](class_string.md#class-string) = "", weight: [int](class_int.md#class-int) = 400, stretch: [int](class_int.md#class-int) = 100, italic: [bool](class_bool.md#class-bool) = false) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_system\_fonts](#class-os-method-get-system-fonts)() const |
| [String](class_string.md#class-string) | [get\_temp\_dir](#class-os-method-get-temp-dir)() const |
| [int](class_int.md#class-int) | [get\_thread\_caller\_id](#class-os-method-get-thread-caller-id)() const |
| [String](class_string.md#class-string) | [get\_unique\_id](#class-os-method-get-unique-id)() const |
| [String](class_string.md#class-string) | [get\_user\_data\_dir](#class-os-method-get-user-data-dir)() const |
| [String](class_string.md#class-string) | [get\_version](#class-os-method-get-version)() const |
| [String](class_string.md#class-string) | [get\_version\_alias](#class-os-method-get-version-alias)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_video\_adapter\_driver\_info](#class-os-method-get-video-adapter-driver-info)() const |
| [bool](class_bool.md#class-bool) | [has\_environment](#class-os-method-has-environment)(variable: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-os-method-has-feature)(tag\_name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_debug\_build](#class-os-method-is-debug-build)() const |
| [bool](class_bool.md#class-bool) | [is\_keycode\_unicode](#class-os-method-is-keycode-unicode)(code: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_process\_running](#class-os-method-is-process-running)(pid: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_restart\_on\_exit\_set](#class-os-method-is-restart-on-exit-set)() const |
| [bool](class_bool.md#class-bool) | [is\_sandboxed](#class-os-method-is-sandboxed)() const |
| [bool](class_bool.md#class-bool) | [is\_stdout\_verbose](#class-os-method-is-stdout-verbose)() const |
| [bool](class_bool.md#class-bool) | [is\_userfs\_persistent](#class-os-method-is-userfs-persistent)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [kill](#class-os-method-kill)(pid: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [move\_to\_trash](#class-os-method-move-to-trash)(path: [String](class_string.md#class-string)) const |
| void | [open\_midi\_inputs](#class-os-method-open-midi-inputs)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [open\_with\_program](#class-os-method-open-with-program)(program\_path: [String](class_string.md#class-string), paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [read\_buffer\_from\_stdin](#class-os-method-read-buffer-from-stdin)(buffer\_size: [int](class_int.md#class-int) = 1024) |
| [String](class_string.md#class-string) | [read\_string\_from\_stdin](#class-os-method-read-string-from-stdin)(buffer\_size: [int](class_int.md#class-int) = 1024) |
| void | [remove\_logger](#class-os-method-remove-logger)(logger: [Logger](class_logger.md#class-logger)) |
| [bool](class_bool.md#class-bool) | [request\_permission](#class-os-method-request-permission)(name: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [request\_permissions](#class-os-method-request-permissions)() |
| void | [revoke\_granted\_permissions](#class-os-method-revoke-granted-permissions)() |
| void | [set\_environment](#class-os-method-set-environment)(variable: [String](class_string.md#class-string), value: [String](class_string.md#class-string)) const |
| void | [set\_restart\_on\_exit](#class-os-method-set-restart-on-exit)(restart: [bool](class_bool.md#class-bool), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray()) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_thread\_name](#class-os-method-set-thread-name)(name: [String](class_string.md#class-string)) |
| void | [set\_use\_file\_access\_save\_and\_swap](#class-os-method-set-use-file-access-save-and-swap)(enabled: [bool](class_bool.md#class-bool)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [shell\_open](#class-os-method-shell-open)(uri: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [shell\_show\_in\_file\_manager](#class-os-method-shell-show-in-file-manager)(file\_or\_dir\_path: [String](class_string.md#class-string), open\_folder: [bool](class_bool.md#class-bool) = true) |
| void | [unset\_environment](#class-os-method-unset-environment)(variable: [String](class_string.md#class-string)) const |

* * *

## Enumerations

enum **RenderingDriver**: [🔗](#enum-os-renderingdriver)

[RenderingDriver](#enum-os-renderingdriver) **RENDERING\_DRIVER\_VULKAN** = `0`

The Vulkan rendering driver. It requires Vulkan 1.0 support and automatically uses features from Vulkan 1.1 and 1.2 if available.

[RenderingDriver](#enum-os-renderingdriver) **RENDERING\_DRIVER\_OPENGL3** = `1`

The OpenGL 3 rendering driver. It uses OpenGL 3.3 Core Profile on desktop platforms, OpenGL ES 3.0 on mobile devices, and WebGL 2.0 on Web.

[RenderingDriver](#enum-os-renderingdriver) **RENDERING\_DRIVER\_D3D12** = `2`

The Direct3D 12 rendering driver.

[RenderingDriver](#enum-os-renderingdriver) **RENDERING\_DRIVER\_METAL** = `3`

The Metal rendering driver.

* * *

enum **SystemDir**: [🔗](#enum-os-systemdir)

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_DESKTOP** = `0`

Refers to the Desktop directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_DCIM** = `1`

Refers to the DCIM (Digital Camera Images) directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_DOCUMENTS** = `2`

Refers to the Documents directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_DOWNLOADS** = `3`

Refers to the Downloads directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_MOVIES** = `4`

Refers to the Movies (or Videos) directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_MUSIC** = `5`

Refers to the Music directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_PICTURES** = `6`

Refers to the Pictures directory path.

[SystemDir](#enum-os-systemdir) **SYSTEM\_DIR\_RINGTONES** = `7`

Refers to the Ringtones directory path.

* * *

enum **StdHandleType**: [🔗](#enum-os-stdhandletype)

[StdHandleType](#enum-os-stdhandletype) **STD\_HANDLE\_INVALID** = `0`

Standard I/O device is invalid. No data can be received from or sent to these standard I/O devices.

[StdHandleType](#enum-os-stdhandletype) **STD\_HANDLE\_CONSOLE** = `1`

Standard I/O device is a console. This typically occurs when Godot is run from a terminal with no redirection. This is also used for all standard I/O devices when running Godot from the editor, at least on desktop platforms.

[StdHandleType](#enum-os-stdhandletype) **STD\_HANDLE\_FILE** = `2`

Standard I/O device is a regular file. This typically occurs with redirection from a terminal, e.g. `godot > stdout.txt`, `godot < stdin.txt` or `godot > stdout_stderr.txt 2>&1`.

[StdHandleType](#enum-os-stdhandletype) **STD\_HANDLE\_PIPE** = `3`

Standard I/O device is a FIFO/pipe. This typically occurs with pipe usage from a terminal, e.g. `echo "Hello" | godot`.

[StdHandleType](#enum-os-stdhandletype) **STD\_HANDLE\_UNKNOWN** = `4`

Standard I/O device type is unknown.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **delta\_smoothing** = `true` [🔗](#class-os-property-delta-smoothing)

- void **set\_delta\_smoothing**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_delta\_smoothing\_enabled**()


If `true`, the engine filters the time delta measured between each frame, and attempts to compensate for random variation. This only works on systems where V-Sync is active.

**Note:** On start-up, this is the same as [ProjectSettings.application/run/delta\_smoothing](class_projectsettings.md#class-projectsettings-property-application-run-delta-smoothing).

* * *

[bool](class_bool.md#class-bool) **low\_processor\_usage\_mode** = `false` [🔗](#class-os-property-low-processor-usage-mode)

- void **set\_low\_processor\_usage\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_in\_low\_processor\_usage\_mode**()


If `true`, the engine optimizes for low processor usage by only refreshing the screen if needed. Can improve battery consumption on mobile.

**Note:** On start-up, this is the same as [ProjectSettings.application/run/low\_processor\_mode](class_projectsettings.md#class-projectsettings-property-application-run-low-processor-mode).

* * *

[int](class_int.md#class-int) **low\_processor\_usage\_mode\_sleep\_usec** = `6900` [🔗](#class-os-property-low-processor-usage-mode-sleep-usec)

- void **set\_low\_processor\_usage\_mode\_sleep\_usec**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_low\_processor\_usage\_mode\_sleep\_usec**()


The amount of sleeping between frames when the low-processor usage mode is enabled, in microseconds. Higher values will result in lower CPU usage. See also [low\_processor\_usage\_mode](#class-os-property-low-processor-usage-mode).

**Note:** On start-up, this is the same as [ProjectSettings.application/run/low\_processor\_mode\_sleep\_usec](class_projectsettings.md#class-projectsettings-property-application-run-low-processor-mode-sleep-usec).

* * *

## Method Descriptions

void **add\_logger**(logger: [Logger](class_logger.md#class-logger)) [🔗](#class-os-method-add-logger)

Add a custom logger to intercept the internal message stream.

* * *

void **alert**(text: [String](class_string.md#class-string), title: [String](class_string.md#class-string) = "Alert!") [🔗](#class-os-method-alert)

Displays a modal dialog box using the host platform's implementation. The engine execution is blocked until the dialog is closed.

* * *

void **close\_midi\_inputs**() [🔗](#class-os-method-close-midi-inputs)

Shuts down the system MIDI driver. Godot will no longer receive [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi). See also [open\_midi\_inputs()](#class-os-method-open-midi-inputs) and [get\_connected\_midi\_inputs()](#class-os-method-get-connected-midi-inputs).

**Note:** This method is implemented on Linux, macOS, Windows, and Web.

* * *

void **crash**(message: [String](class_string.md#class-string)) [🔗](#class-os-method-crash)

Crashes the engine (or the editor if called within a `@tool` script). See also [kill()](#class-os-method-kill).

**Note:** This method should _only_ be used for testing the system's crash handler, not for any other purpose. For general error reporting, use (in order of preference) [@GDScript.assert()](class_@gdscript.md#class-gdscript-method-assert), [@GlobalScope.push\_error()](class_@globalscope.md#class-globalscope-method-push-error), or [alert()](#class-os-method-alert).

* * *

[int](class_int.md#class-int) **create\_instance**(arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-os-method-create-instance)

Creates a new instance of Godot that runs independently. The `arguments` are used in the given order and separated by a space.

If the process is successfully created, this method returns the new process' ID, which you can use to monitor the process (and potentially terminate it with [kill()](#class-os-method-kill)). If the process cannot be created, this method returns `-1`.

See [create\_process()](#class-os-method-create-process) if you wish to run a different process.

**Note:** This method is implemented on Android, Linux, macOS and Windows.

* * *

[int](class_int.md#class-int) **create\_process**(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), open\_console: [bool](class_bool.md#class-bool) = false) [🔗](#class-os-method-create-process)

Creates a new process that runs independently of Godot. It will not terminate when Godot terminates. The path specified in `path` must exist and be an executable file or macOS `.app` bundle. The path is resolved based on the current platform. The `arguments` are used in the given order and separated by a space.

On Windows, if `open_console` is `true` and the process is a console app, a new terminal window will be opened.

If the process is successfully created, this method returns its process ID, which you can use to monitor the process (and potentially terminate it with [kill()](#class-os-method-kill)). Otherwise, this method returns `-1`.

**Example:** Run another instance of the project:

GDScriptC#

```
var pid = OS.create_process(OS.get_executable_path(), [])

```

```
var pid = OS.CreateProcess(OS.GetExecutablePath(), []);

```

See [execute()](#class-os-method-execute) if you wish to run an external command and retrieve the results.

**Note:** This method is implemented on Android, Linux, macOS, and Windows.

**Note:** On macOS, sandboxed applications are limited to run only embedded helper executables, specified during export or system .app bundle, system .app bundles will ignore arguments.

* * *

void **delay\_msec**(msec: [int](class_int.md#class-int)) const [🔗](#class-os-method-delay-msec)

Delays execution of the current thread by `msec` milliseconds. `msec` must be greater than or equal to `0`. Otherwise, [delay\_msec()](#class-os-method-delay-msec) does nothing and prints an error message.

**Note:** [delay\_msec()](#class-os-method-delay-msec) is a _blocking_ way to delay code execution. To delay code execution in a non-blocking way, you may use [SceneTree.create\_timer()](class_scenetree.md#class-scenetree-method-create-timer). Awaiting with [SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer) delays the execution of code placed below the `await` without affecting the rest of the project (or editor, for [EditorPlugin](class_editorplugin.md#class-editorplugin) s and [EditorScript](class_editorscript.md#class-editorscript) s).

**Note:** When [delay\_msec()](#class-os-method-delay-msec) is called on the main thread, it will freeze the project and will prevent it from redrawing and registering input until the delay has passed. When using [delay\_msec()](#class-os-method-delay-msec) as part of an [EditorPlugin](class_editorplugin.md#class-editorplugin) or [EditorScript](class_editorscript.md#class-editorscript), it will freeze the editor but won't freeze the project if it is currently running (since the project is an independent child process).

* * *

void **delay\_usec**(usec: [int](class_int.md#class-int)) const [🔗](#class-os-method-delay-usec)

Delays execution of the current thread by `usec` microseconds. `usec` must be greater than or equal to `0`. Otherwise, [delay\_usec()](#class-os-method-delay-usec) does nothing and prints an error message.

**Note:** [delay\_usec()](#class-os-method-delay-usec) is a _blocking_ way to delay code execution. To delay code execution in a non-blocking way, you may use [SceneTree.create\_timer()](class_scenetree.md#class-scenetree-method-create-timer). Awaiting with a [SceneTreeTimer](class_scenetreetimer.md#class-scenetreetimer) delays the execution of code placed below the `await` without affecting the rest of the project (or editor, for [EditorPlugin](class_editorplugin.md#class-editorplugin) s and [EditorScript](class_editorscript.md#class-editorscript) s).

**Note:** When [delay\_usec()](#class-os-method-delay-usec) is called on the main thread, it will freeze the project and will prevent it from redrawing and registering input until the delay has passed. When using [delay\_usec()](#class-os-method-delay-usec) as part of an [EditorPlugin](class_editorplugin.md#class-editorplugin) or [EditorScript](class_editorscript.md#class-editorscript), it will freeze the editor but won't freeze the project if it is currently running (since the project is an independent child process).

* * *

[int](class_int.md#class-int) **execute**(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), output: [Array](class_array.md#class-array) = \[\], read\_stderr: [bool](class_bool.md#class-bool) = false, open\_console: [bool](class_bool.md#class-bool) = false) [🔗](#class-os-method-execute)

Executes the given process in a _blocking_ way. The file specified in `path` must exist and be executable. The system path resolution will be used. The `arguments` are used in the given order, separated by spaces, and wrapped in quotes.

If an `output` array is provided, the complete shell output of the process is appended to `output` as a single [String](class_string.md#class-string) element. If `read_stderr` is `true`, the output to the standard error stream is also appended to the array.

On Windows, if `open_console` is `true` and the process is a console app, a new terminal window is opened.

This method returns the exit code of the command, or `-1` if the process fails to execute.

**Note:** The main thread will be blocked until the executed command terminates. Use [Thread](class_thread.md#class-thread) to create a separate thread that will not block the main thread, or use [create\_process()](#class-os-method-create-process) to create a completely independent process.

For example, to retrieve a list of the working directory's contents:

GDScriptC#

```
var output = []
var exit_code = OS.execute("ls", ["-l", "/tmp"], output)

```

```
Godot.Collections.Array output = [];
int exitCode = OS.Execute("ls", ["-l", "/tmp"], output);

```

If you wish to access a shell built-in or execute a composite command, a platform-specific shell can be invoked. For example:

GDScriptC#

```
var output = []
OS.execute("CMD.exe", ["/C", "cd %TEMP% && dir"], output)

```

```
Godot.Collections.Array output = [];
OS.Execute("CMD.exe", ["/C", "cd %TEMP% && dir"], output);

```

**Note:** This method is implemented on Android, Linux, macOS, and Windows.

**Note:** To execute a Windows command interpreter built-in command, specify `cmd.exe` in `path`, `/c` as the first argument, and the desired command as the second argument.

**Note:** To execute a PowerShell built-in command, specify `powershell.exe` in `path`, `-Command` as the first argument, and the desired command as the second argument.

**Note:** To execute a Unix shell built-in command, specify shell executable name in `path`, `-c` as the first argument, and the desired command as the second argument.

**Note:** On macOS, sandboxed applications are limited to run only embedded helper executables, specified during export.

**Note:** On Android, system commands such as `dumpsys` can only be run on a rooted device.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **execute\_with\_pipe**(path: [String](class_string.md#class-string), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), blocking: [bool](class_bool.md#class-bool) = true) [🔗](#class-os-method-execute-with-pipe)

Creates a new process that runs independently of Godot with redirected IO. It will not terminate when Godot terminates. The path specified in `path` must exist and be an executable file or macOS `.app` bundle. The path is resolved based on the current platform. The `arguments` are used in the given order and separated by a space.

If `blocking` is `false`, created pipes work in non-blocking mode, i.e. read and write operations will return immediately. Use [FileAccess.get\_error()](class_fileaccess.md#class-fileaccess-method-get-error) to check if the last read/write operation was successful.

If the process cannot be created, this method returns an empty [Dictionary](class_dictionary.md#class-dictionary). Otherwise, this method returns a [Dictionary](class_dictionary.md#class-dictionary) with the following keys:

- `"stdio"` \- [FileAccess](class_fileaccess.md#class-fileaccess) to access the process stdin and stdout pipes (read/write).

- `"stderr"` \- [FileAccess](class_fileaccess.md#class-fileaccess) to access the process stderr pipe (read only).

- `"pid"` \- Process ID as an [int](class_int.md#class-int), which you can use to monitor the process (and potentially terminate it with [kill()](#class-os-method-kill)).


**Note:** This method is implemented on Android, Linux, macOS, and Windows.

**Note:** To execute a Windows command interpreter built-in command, specify `cmd.exe` in `path`, `/c` as the first argument, and the desired command as the second argument.

**Note:** To execute a PowerShell built-in command, specify `powershell.exe` in `path`, `-Command` as the first argument, and the desired command as the second argument.

**Note:** To execute a Unix shell built-in command, specify shell executable name in `path`, `-c` as the first argument, and the desired command as the second argument.

**Note:** On macOS, sandboxed applications are limited to run only embedded helper executables, specified during export or system .app bundle, system .app bundles will ignore arguments.

* * *

[Key](class_@globalscope.md#enum-globalscope-key) **find\_keycode\_from\_string**(string: [String](class_string.md#class-string)) const [🔗](#class-os-method-find-keycode-from-string)

Finds the keycode for the given string. The returned values are equivalent to the [Key](class_@globalscope.md#enum-globalscope-key) constants.

GDScriptC#

```
print(OS.find_keycode_from_string("C"))         # Prints 67 (KEY_C)
print(OS.find_keycode_from_string("Escape"))    # Prints 4194305 (KEY_ESCAPE)
print(OS.find_keycode_from_string("Shift+Tab")) # Prints 37748738 (KEY_MASK_SHIFT | KEY_TAB)
print(OS.find_keycode_from_string("Unknown"))   # Prints 0 (KEY_NONE)

```

```
GD.Print(OS.FindKeycodeFromString("C"));         // Prints C (Key.C)
GD.Print(OS.FindKeycodeFromString("Escape"));    // Prints Escape (Key.Escape)
GD.Print(OS.FindKeycodeFromString("Shift+Tab")); // Prints 37748738 (KeyModifierMask.MaskShift | Key.Tab)
GD.Print(OS.FindKeycodeFromString("Unknown"));   // Prints None (Key.None)

```

See also [get\_keycode\_string()](#class-os-method-get-keycode-string).

* * *

[String](class_string.md#class-string) **get\_cache\_dir**() const [🔗](#class-os-method-get-cache-dir)

Returns the _global_ cache data directory according to the operating system's standards.

On the Linux/BSD platform, this path can be overridden by setting the `XDG_CACHE_HOME` environment variable before starting the project. See [File paths in Godot projects](../tutorials/io/data_paths.md) in the documentation for more information. See also [get\_config\_dir()](#class-os-method-get-config-dir) and [get\_data\_dir()](#class-os-method-get-data-dir).

Not to be confused with [get\_user\_data\_dir()](#class-os-method-get-user-data-dir), which returns the _project-specific_ user data path.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_cmdline\_args**() [🔗](#class-os-method-get-cmdline-args)

Returns the command-line arguments passed to the engine.

Command-line arguments can be written in any form, including both `--key value` and `--key=value` forms so they can be properly parsed, as long as custom command-line arguments do not conflict with engine arguments.

You can also incorporate environment variables using the [get\_environment()](#class-os-method-get-environment) method.

You can set [ProjectSettings.editor/run/main\_run\_args](class_projectsettings.md#class-projectsettings-property-editor-run-main-run-args) to define command-line arguments to be passed by the editor when running the project.

**Example:** Parse command-line arguments into a [Dictionary](class_dictionary.md#class-dictionary) using the `--key=value` form for arguments:

GDScriptC#

```
var arguments = {}
for argument in OS.get_cmdline_args():
    if argument.contains("="):
        var key_value = argument.split("=")
        arguments[key_value[0].trim_prefix("--")] = key_value[1]
    else:
        # Options without an argument will be present in the dictionary,
        # with the value set to an empty string.
        arguments[argument.trim_prefix("--")] = ""

```

```
var arguments = new Dictionary<string, string>();
foreach (var argument in OS.GetCmdlineArgs())
{
    if (argument.Contains('='))
    {
        string[] keyValue = argument.Split("=");
        arguments[keyValue[0].TrimPrefix("--")] = keyValue[1];
    }
    else
    {
        // Options without an argument will be present in the dictionary,
        // with the value set to an empty string.
        arguments[argument.TrimPrefix("--")] = "";
    }
}

```

**Note:** Passing custom user arguments directly is not recommended, as the engine may discard or modify them. Instead, pass the standard UNIX double dash ( `--`) and then the custom arguments, which the engine will ignore by design. These can be read via [get\_cmdline\_user\_args()](#class-os-method-get-cmdline-user-args).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_cmdline\_user\_args**() [🔗](#class-os-method-get-cmdline-user-args)

Returns the command-line user arguments passed to the engine. User arguments are ignored by the engine and reserved for the user. They are passed after the double dash `--` argument. `++` may be used when `--` is intercepted by another program (such as `startx`).

```
# Godot has been executed with the following command:
# godot --fullscreen -- --level=2 --hardcore

OS.get_cmdline_args()      # Returns ["--fullscreen", "--level=2", "--hardcore"]
OS.get_cmdline_user_args() # Returns ["--level=2", "--hardcore"]

```

To get all passed arguments, use [get\_cmdline\_args()](#class-os-method-get-cmdline-args).

* * *

[String](class_string.md#class-string) **get\_config\_dir**() const [🔗](#class-os-method-get-config-dir)

Returns the _global_ user configuration directory according to the operating system's standards.

On the Linux/BSD platform, this path can be overridden by setting the `XDG_CONFIG_HOME` environment variable before starting the project. See [File paths in Godot projects](../tutorials/io/data_paths.md) in the documentation for more information. See also [get\_cache\_dir()](#class-os-method-get-cache-dir) and [get\_data\_dir()](#class-os-method-get-data-dir).

Not to be confused with [get\_user\_data\_dir()](#class-os-method-get-user-data-dir), which returns the _project-specific_ user data path.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_connected\_midi\_inputs**() [🔗](#class-os-method-get-connected-midi-inputs)

Returns an array of connected MIDI device names, if they exist. Returns an empty array if the system MIDI driver has not previously been initialized with [open\_midi\_inputs()](#class-os-method-open-midi-inputs). See also [close\_midi\_inputs()](#class-os-method-close-midi-inputs).

**Note:** This method is implemented on Linux, macOS, Windows, and Web.

**Note:** On the Web platform, Web MIDI needs to be supported by the browser. [For the time being](https://caniuse.com/midi), it is currently supported by all major browsers, except Safari.

**Note:** On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling [open\_midi\_inputs()](#class-os-method-open-midi-inputs). The browser will refrain from processing MIDI input until the user accepts the permission request.

* * *

[String](class_string.md#class-string) **get\_data\_dir**() const [🔗](#class-os-method-get-data-dir)

Returns the _global_ user data directory according to the operating system's standards.

On the Linux/BSD platform, this path can be overridden by setting the `XDG_DATA_HOME` environment variable before starting the project. See [File paths in Godot projects](../tutorials/io/data_paths.md) in the documentation for more information. See also [get\_cache\_dir()](#class-os-method-get-cache-dir) and [get\_config\_dir()](#class-os-method-get-config-dir).

Not to be confused with [get\_user\_data\_dir()](#class-os-method-get-user-data-dir), which returns the _project-specific_ user data path.

* * *

[String](class_string.md#class-string) **get\_distribution\_name**() const [🔗](#class-os-method-get-distribution-name)

Returns the name of the distribution for Linux and BSD platforms (e.g. "Ubuntu", "Manjaro", "OpenBSD", etc.).

Returns the same value as [get\_name()](#class-os-method-get-name) for stock Android ROMs, but attempts to return the custom ROM name for popular Android derivatives such as "LineageOS".

Returns the same value as [get\_name()](#class-os-method-get-name) for other platforms.

**Note:** This method is not supported on the Web platform. It returns an empty string.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_entropy**(size: [int](class_int.md#class-int)) [🔗](#class-os-method-get-entropy)

Generates a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) of cryptographically secure random bytes with given `size`.

**Note:** Generating large quantities of bytes using this method can result in locking and entropy of lower quality on most platforms. Using [Crypto.generate\_random\_bytes()](class_crypto.md#class-crypto-method-generate-random-bytes) is preferred in most cases.

* * *

[String](class_string.md#class-string) **get\_environment**(variable: [String](class_string.md#class-string)) const [🔗](#class-os-method-get-environment)

Returns the value of the given environment variable, or an empty string if `variable` doesn't exist.

**Note:** Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.

**Note:** On macOS, applications do not have access to shell environment variables.

* * *

[String](class_string.md#class-string) **get\_executable\_path**() const [🔗](#class-os-method-get-executable-path)

Returns the file path to the current engine executable.

**Note:** On macOS, if you want to launch another instance of Godot, always use [create\_instance()](#class-os-method-create-instance) instead of relying on the executable path.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_granted\_permissions**() const [🔗](#class-os-method-get-granted-permissions)

On Android devices: Returns the list of dangerous permissions that have been granted.

On macOS: Returns the list of granted permissions and user selected folders accessible to the application (sandboxed applications only). Use the native file dialog to request folder access permission.

On iOS, visionOS: Returns the list of granted permissions.

* * *

[String](class_string.md#class-string) **get\_keycode\_string**(code: [Key](class_@globalscope.md#enum-globalscope-key)) const [🔗](#class-os-method-get-keycode-string)

Returns the given keycode as a [String](class_string.md#class-string).

GDScriptC#

```
print(OS.get_keycode_string(KEY_C))                    # Prints "C"
print(OS.get_keycode_string(KEY_ESCAPE))               # Prints "Escape"
print(OS.get_keycode_string(KEY_MASK_SHIFT | KEY_TAB)) # Prints "Shift+Tab"

```

```
GD.Print(OS.GetKeycodeString(Key.C));                                    // Prints "C"
GD.Print(OS.GetKeycodeString(Key.Escape));                               // Prints "Escape"
GD.Print(OS.GetKeycodeString((Key)KeyModifierMask.MaskShift | Key.Tab)); // Prints "Shift+Tab"

```

See also [find\_keycode\_from\_string()](#class-os-method-find-keycode-from-string), [InputEventKey.keycode](class_inputeventkey.md#class-inputeventkey-property-keycode), and [InputEventKey.get\_keycode\_with\_modifiers()](class_inputeventkey.md#class-inputeventkey-method-get-keycode-with-modifiers).

* * *

[String](class_string.md#class-string) **get\_locale**() const [🔗](#class-os-method-get-locale)

Returns the host OS locale as a [String](class_string.md#class-string) of the form `language_Script_COUNTRY_VARIANT@extra`. Every substring after `language` is optional and may not exist.

- `language` \- 2 or 3-letter [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes), in lower case.

- `Script` \- 4-letter [script code](https://en.wikipedia.org/wiki/ISO_15924), in title case.

- `COUNTRY` \- 2 or 3-letter [country code](https://en.wikipedia.org/wiki/ISO_3166-1), in upper case.

- `VARIANT` \- language variant, region and sort order. The variant can have any number of underscored keywords.

- `extra` \- semicolon separated list of additional key words. This may include currency, calendar, sort order and numbering system information.


If you want only the language code and not the fully specified locale from the OS, you can use [get\_locale\_language()](#class-os-method-get-locale-language).

* * *

[String](class_string.md#class-string) **get\_locale\_language**() const [🔗](#class-os-method-get-locale-language)

Returns the host OS locale's 2 or 3-letter [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) as a string which should be consistent on all platforms. This is equivalent to extracting the `language` part of the [get\_locale()](#class-os-method-get-locale) string.

This can be used to narrow down fully specified locale strings to only the "common" language code, when you don't need the additional information about country code or variants. For example, for a French Canadian user with `fr_CA` locale, this would return `fr`.

* * *

[int](class_int.md#class-int) **get\_main\_thread\_id**() const [🔗](#class-os-method-get-main-thread-id)

Returns the ID of the main thread. See [get\_thread\_caller\_id()](#class-os-method-get-thread-caller-id).

**Note:** Thread IDs are not deterministic and may be reused across application restarts.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_memory\_info**() const [🔗](#class-os-method-get-memory-info)

Returns a [Dictionary](class_dictionary.md#class-dictionary) containing information about the current memory with the following entries:

- `"physical"` \- total amount of usable physical memory in bytes. This value can be slightly less than the actual physical memory amount, since it does not include memory reserved by the kernel and devices.

- `"free"` \- amount of physical memory, that can be immediately allocated without disk access or other costly operations, in bytes. The process might be able to allocate more physical memory, but this action will require moving inactive pages to disk, which can be expensive.

- `"available"` \- amount of memory that can be allocated without extending the swap file(s), in bytes. This value includes both physical memory and swap.

- `"stack"` \- size of the current thread stack in bytes.


**Note:** Each entry's value may be `-1` if it is unknown.

* * *

[String](class_string.md#class-string) **get\_model\_name**() const [🔗](#class-os-method-get-model-name)

Returns the model name of the current device.

**Note:** This method is implemented on Android, iOS, macOS, and Windows. Returns `"GenericDevice"` on unsupported platforms.

* * *

[String](class_string.md#class-string) **get\_name**() const [🔗](#class-os-method-get-name)

Returns the name of the host platform.

- On Windows, this is `"Windows"`.

- On macOS, this is `"macOS"`.

- On Linux-based operating systems, this is `"Linux"`.

- On BSD-based operating systems, this is `"FreeBSD"`, `"NetBSD"`, `"OpenBSD"`, or `"BSD"` as a fallback.

- On Android, this is `"Android"`.

- On iOS, this is `"iOS"`.

- On Web, this is `"Web"`.


**Note:** Custom builds of the engine may support additional platforms, such as consoles, possibly returning other names.

GDScriptC#

```
match OS.get_name():
    "Windows":
        print("Welcome to Windows!")
    "macOS":
        print("Welcome to macOS!")
    "Linux", "FreeBSD", "NetBSD", "OpenBSD", "BSD":
        print("Welcome to Linux/BSD!")
    "Android":
        print("Welcome to Android!")
    "iOS":
        print("Welcome to iOS!")
    "Web":
        print("Welcome to the Web!")

```

```
switch (OS.GetName())
{
    case "Windows":
        GD.Print("Welcome to Windows");
        break;
    case "macOS":
        GD.Print("Welcome to macOS!");
        break;
    case "Linux":
    case "FreeBSD":
    case "NetBSD":
    case "OpenBSD":
    case "BSD":
        GD.Print("Welcome to Linux/BSD!");
        break;
    case "Android":
        GD.Print("Welcome to Android!");
        break;
    case "iOS":
        GD.Print("Welcome to iOS!");
        break;
    case "Web":
        GD.Print("Welcome to the Web!");
        break;
}

```

**Note:** On Web platforms, it is still possible to determine the host platform's OS with feature tags. See [has\_feature()](#class-os-method-has-feature).

* * *

[int](class_int.md#class-int) **get\_process\_exit\_code**(pid: [int](class_int.md#class-int)) const [🔗](#class-os-method-get-process-exit-code)

Returns the exit code of a spawned process once it has finished running (see [is\_process\_running()](#class-os-method-is-process-running)).

Returns `-1` if the `pid` is not a PID of a spawned child process, the process is still running, or the method is not implemented for the current platform.

**Note:** Returns `-1` if the `pid` is a macOS bundled app process.

**Note:** This method is implemented on Android, Linux, macOS and Windows.

* * *

[int](class_int.md#class-int) **get\_process\_id**() const [🔗](#class-os-method-get-process-id)

Returns the number used by the host machine to uniquely identify this application.

**Note:** On Web, this method always returns `0`.

* * *

[int](class_int.md#class-int) **get\_processor\_count**() const [🔗](#class-os-method-get-processor-count)

Returns the number of _logical_ CPU cores available on the host machine. On CPUs with HyperThreading enabled, this number will be greater than the number of _physical_ CPU cores.

* * *

[String](class_string.md#class-string) **get\_processor\_name**() const [🔗](#class-os-method-get-processor-name)

Returns the full name of the CPU model on the host machine (e.g. `"Intel(R) Core(TM) i7-6700K CPU @ 4.00GHz"`).

**Note:** This method is only implemented on Windows, macOS, Linux and iOS. On Android and Web, [get\_processor\_name()](#class-os-method-get-processor-name) returns an empty string.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_restart\_on\_exit\_arguments**() const [🔗](#class-os-method-get-restart-on-exit-arguments)

Returns the list of command line arguments that will be used when the project automatically restarts using [set\_restart\_on\_exit()](#class-os-method-set-restart-on-exit). See also [is\_restart\_on\_exit\_set()](#class-os-method-is-restart-on-exit-set).

* * *

[int](class_int.md#class-int) **get\_static\_memory\_peak\_usage**() const [🔗](#class-os-method-get-static-memory-peak-usage)

Returns the maximum amount of static memory used. Only works in debug builds.

* * *

[int](class_int.md#class-int) **get\_static\_memory\_usage**() const [🔗](#class-os-method-get-static-memory-usage)

Returns the amount of static memory being used by the program in bytes. Only works in debug builds.

* * *

[StdHandleType](#enum-os-stdhandletype) **get\_stderr\_type**() const [🔗](#class-os-method-get-stderr-type)

Returns the type of the standard error device.

**Note:** This method is implemented on Linux, macOS, and Windows.

* * *

[StdHandleType](#enum-os-stdhandletype) **get\_stdin\_type**() const [🔗](#class-os-method-get-stdin-type)

Returns the type of the standard input device.

**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** On exported Windows builds, run the console wrapper executable to access the standard input. If you need a single executable with full console support, use a custom build compiled with the `windows_subsystem=console` flag.

* * *

[StdHandleType](#enum-os-stdhandletype) **get\_stdout\_type**() const [🔗](#class-os-method-get-stdout-type)

Returns the type of the standard output device.

**Note:** This method is implemented on Linux, macOS, and Windows.

* * *

[String](class_string.md#class-string) **get\_system\_ca\_certificates**() [🔗](#class-os-method-get-system-ca-certificates)

Returns the list of certification authorities trusted by the operating system as a string of concatenated certificates in PEM format.

* * *

[String](class_string.md#class-string) **get\_system\_dir**(dir: [SystemDir](#enum-os-systemdir), shared\_storage: [bool](class_bool.md#class-bool) = true) const [🔗](#class-os-method-get-system-dir)

Returns the path to commonly used folders across different platforms, as defined by `dir`. See the [SystemDir](#enum-os-systemdir) constants for available locations.

**Note:** This method is implemented on Android, Linux, macOS and Windows.

**Note:** Shared storage is implemented on Android and allows to differentiate between app specific and shared directories, if `shared_storage` is `true`. Shared directories have additional restrictions on Android.

* * *

[String](class_string.md#class-string) **get\_system\_font\_path**(font\_name: [String](class_string.md#class-string), weight: [int](class_int.md#class-int) = 400, stretch: [int](class_int.md#class-int) = 100, italic: [bool](class_bool.md#class-bool) = false) const [🔗](#class-os-method-get-system-font-path)

Returns the path to the system font file with `font_name` and style. Returns an empty string if no matching fonts found.

The following aliases can be used to request default fonts: "sans-serif", "serif", "monospace", "cursive", and "fantasy".

**Note:** Returned font might have different style if the requested style is not available.

**Note:** This method is implemented on Android, iOS, Linux, macOS and Windows.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_system\_font\_path\_for\_text**(font\_name: [String](class_string.md#class-string), text: [String](class_string.md#class-string), locale: [String](class_string.md#class-string) = "", script: [String](class_string.md#class-string) = "", weight: [int](class_int.md#class-int) = 400, stretch: [int](class_int.md#class-int) = 100, italic: [bool](class_bool.md#class-bool) = false) const [🔗](#class-os-method-get-system-font-path-for-text)

Returns an array of the system substitute font file paths, which are similar to the font with `font_name` and style for the specified text, locale, and script. Returns an empty array if no matching fonts found.

The following aliases can be used to request default fonts: "sans-serif", "serif", "monospace", "cursive", and "fantasy".

**Note:** Depending on OS, it's not guaranteed that any of the returned fonts will be suitable for rendering specified text. Fonts should be loaded and checked in the order they are returned, and the first suitable one used.

**Note:** Returned fonts might have different style if the requested style is not available or belong to a different font family.

**Note:** This method is implemented on Android, iOS, Linux, macOS and Windows.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_system\_fonts**() const [🔗](#class-os-method-get-system-fonts)

Returns the list of font family names available.

**Note:** This method is implemented on Android, iOS, Linux, macOS and Windows.

* * *

[String](class_string.md#class-string) **get\_temp\_dir**() const [🔗](#class-os-method-get-temp-dir)

Returns the _global_ temporary data directory according to the operating system's standards.

* * *

[int](class_int.md#class-int) **get\_thread\_caller\_id**() const [🔗](#class-os-method-get-thread-caller-id)

Returns the ID of the current thread. This can be used in logs to ease debugging of multi-threaded applications.

**Note:** Thread IDs are not deterministic and may be reused across application restarts.

* * *

[String](class_string.md#class-string) **get\_unique\_id**() const [🔗](#class-os-method-get-unique-id)

Returns a string that is unique to the device.

**Note:** This string may change without notice if the user reinstalls their operating system, upgrades it, or modifies their hardware. This means it should generally not be used to encrypt persistent data, as the data saved before an unexpected ID change would become inaccessible. The returned string may also be falsified using external programs, so do not rely on the string returned by this method for security purposes.

**Note:** On Web, returns an empty string and generates an error, as this method cannot be implemented for security reasons.

* * *

[String](class_string.md#class-string) **get\_user\_data\_dir**() const [🔗](#class-os-method-get-user-data-dir)

Returns the absolute directory path where user data is written (the `user://` directory in Godot). The path depends on the project name and [ProjectSettings.application/config/use\_custom\_user\_dir](class_projectsettings.md#class-projectsettings-property-application-config-use-custom-user-dir).

- On Windows, this is `%AppData%\Godot\app_userdata\[project_name]`, or `%AppData%\[custom_name]` if `use_custom_user_dir` is set. `%AppData%` expands to `%UserProfile%\AppData\Roaming`.

- On macOS, this is `~/Library/Application Support/Godot/app_userdata/[project_name]`, or `~/Library/Application Support/[custom_name]` if `use_custom_user_dir` is set.

- On Linux and BSD, this is `~/.local/share/godot/app_userdata/[project_name]`, or `~/.local/share/[custom_name]` if `use_custom_user_dir` is set.

- On Android and iOS, this is a sandboxed directory in either internal or external storage, depending on the user's configuration.

- On Web, this is a virtual directory managed by the browser.


If the project name is empty, `[project_name]` falls back to `[unnamed project]`.

Not to be confused with [get\_data\_dir()](#class-os-method-get-data-dir), which returns the _global_ (non-project-specific) user home directory.

* * *

[String](class_string.md#class-string) **get\_version**() const [🔗](#class-os-method-get-version)

Returns the exact production and build version of the operating system. This is different from the branded version used in marketing. This helps to distinguish between different releases of operating systems, including minor versions, and insider and custom builds.

- For Windows, the major and minor version are returned, as well as the build number. For example, the returned string may look like `10.0.9926` for a build of Windows 10.

- For rolling distributions, such as Arch Linux, an empty string is returned.

- For macOS and iOS, the major and minor version are returned, as well as the patch number.

- For Android, the SDK version and the incremental build number are returned. If it's a custom ROM, it attempts to return its version instead.


**Note:** This method is not supported on the Web platform. It returns an empty string.

* * *

[String](class_string.md#class-string) **get\_version\_alias**() const [🔗](#class-os-method-get-version-alias)

Returns the branded version used in marketing, followed by the build number (on Windows), the version number (on macOS), or the SDK version and incremental build number (on Android). Examples include `11 (build 22000)`, `Sequoia (15.0.0)`, and `15 (SDK 35 build abc528-11988f)`.

This value can then be appended to [get\_name()](#class-os-method-get-name) to get a full, human-readable operating system name and version combination for the operating system. Windows feature updates such as 24H2 are not contained in the resulting string, but Windows Server is recognized as such (e.g. `2025 (build 26100)` for Windows Server 2025).

**Note:** This method is only supported on Windows, macOS, and Android. On other operating systems, it returns the same value as [get\_version()](#class-os-method-get-version).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_video\_adapter\_driver\_info**() const [🔗](#class-os-method-get-video-adapter-driver-info)

Returns the video adapter driver name and version for the user's currently active graphics card, as a [PackedStringArray](class_packedstringarray.md#class-packedstringarray). See also [RenderingServer.get\_video\_adapter\_api\_version()](class_renderingserver.md#class-renderingserver-method-get-video-adapter-api-version).

The first element holds the driver name, such as `nvidia`, `amdgpu`, etc.

The second element holds the driver version. For example, on the `nvidia` driver on a Linux/BSD platform, the version is in the format `510.85.02`. For Windows, the driver's format is `31.0.15.1659`.

**Note:** This method is only supported on Linux/BSD and Windows when not running in headless mode. On other platforms, it returns an empty array.

**Note:** This method will run slowly the first time it is called in a session; it can take several seconds depending on the operating system and hardware. It is blocking if called on the main thread, so it's recommended to call it on a separate thread using [Thread](class_thread.md#class-thread). This allows the engine to keep running while the information is being retrieved. However, [get\_video\_adapter\_driver\_info()](#class-os-method-get-video-adapter-driver-info) is _not_ thread-safe, so it should not be called from multiple threads at the same time.

GDScript

```
var thread = Thread.new()

func _ready():
    thread.start(
        func():
            var driver_info = OS.get_video_adapter_driver_info()
            if not driver_info.is_empty():
                print("Driver: %s %s" % [driver_info[0], driver_info[1]])
            else:
                print("Driver: (unknown)")
    )

func _exit_tree():
    thread.wait_to_finish()

```

* * *

[bool](class_bool.md#class-bool) **has\_environment**(variable: [String](class_string.md#class-string)) const [🔗](#class-os-method-has-environment)

Returns `true` if the environment variable with the name `variable` exists.

**Note:** Double-check the casing of `variable`. Environment variable names are case-sensitive on all platforms except Windows.

* * *

[bool](class_bool.md#class-bool) **has\_feature**(tag\_name: [String](class_string.md#class-string)) const [🔗](#class-os-method-has-feature)

Returns `true` if the feature for the given feature tag is supported in the currently running instance, depending on the platform, build, etc. Can be used to check whether you're currently running a debug build, on a certain platform or arch, etc. Refer to the [Feature Tags](../tutorials/export/feature_tags.md) documentation for more details.

**Note:** Tag names are case-sensitive.

**Note:** On the Web platform, one of the following additional tags is defined to indicate the host platform: `web_android`, `web_ios`, `web_linuxbsd`, `web_macos`, or `web_windows`.

* * *

[bool](class_bool.md#class-bool) **is\_debug\_build**() const [🔗](#class-os-method-is-debug-build)

Returns `true` if the Godot binary used to run the project is a _debug_ export template, or when running in the editor.

Returns `false` if the Godot binary used to run the project is a _release_ export template.

**Note:** To check whether the Godot binary used to run the project is an export template (debug or release), use `OS.has_feature("template")` instead.

* * *

[bool](class_bool.md#class-bool) **is\_keycode\_unicode**(code: [int](class_int.md#class-int)) const [🔗](#class-os-method-is-keycode-unicode)

Returns `true` if the input keycode corresponds to a Unicode character. For a list of codes, see the [Key](class_@globalscope.md#enum-globalscope-key) constants.

GDScriptC#

```
print(OS.is_keycode_unicode(KEY_G))      # Prints true
print(OS.is_keycode_unicode(KEY_KP_4))   # Prints true
print(OS.is_keycode_unicode(KEY_TAB))    # Prints false
print(OS.is_keycode_unicode(KEY_ESCAPE)) # Prints false

```

```
GD.Print(OS.IsKeycodeUnicode((long)Key.G));      // Prints True
GD.Print(OS.IsKeycodeUnicode((long)Key.Kp4));    // Prints True
GD.Print(OS.IsKeycodeUnicode((long)Key.Tab));    // Prints False
GD.Print(OS.IsKeycodeUnicode((long)Key.Escape)); // Prints False

```

* * *

[bool](class_bool.md#class-bool) **is\_process\_running**(pid: [int](class_int.md#class-int)) const [🔗](#class-os-method-is-process-running)

Returns `true` if the child process ID ( `pid`) is still running or `false` if it has terminated. `pid` must be a valid ID generated from [create\_process()](#class-os-method-create-process).

**Note:** This method is implemented on Android, iOS, Linux, macOS, and Windows.

* * *

[bool](class_bool.md#class-bool) **is\_restart\_on\_exit\_set**() const [🔗](#class-os-method-is-restart-on-exit-set)

Returns `true` if the project will automatically restart when it exits for any reason, `false` otherwise. See also [set\_restart\_on\_exit()](#class-os-method-set-restart-on-exit) and [get\_restart\_on\_exit\_arguments()](#class-os-method-get-restart-on-exit-arguments).

* * *

[bool](class_bool.md#class-bool) **is\_sandboxed**() const [🔗](#class-os-method-is-sandboxed)

Returns `true` if the application is running in the sandbox.

**Note:** This method is only implemented on macOS and Linux.

* * *

[bool](class_bool.md#class-bool) **is\_stdout\_verbose**() const [🔗](#class-os-method-is-stdout-verbose)

Returns `true` if the engine was executed with the `--verbose` or `-v` command line argument, or if [ProjectSettings.debug/settings/stdout/verbose\_stdout](class_projectsettings.md#class-projectsettings-property-debug-settings-stdout-verbose-stdout) is `true`. See also [@GlobalScope.print\_verbose()](class_@globalscope.md#class-globalscope-method-print-verbose).

* * *

[bool](class_bool.md#class-bool) **is\_userfs\_persistent**() const [🔗](#class-os-method-is-userfs-persistent)

Returns `true` if the `user://` file system is persistent, that is, its state is the same after a player quits and starts the game again. Relevant to the Web platform, where this persistence may be unavailable.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **kill**(pid: [int](class_int.md#class-int)) [🔗](#class-os-method-kill)

Kill (terminate) the process identified by the given process ID ( `pid`), such as the ID returned by [execute()](#class-os-method-execute) in non-blocking mode. See also [crash()](#class-os-method-crash).

**Note:** This method can also be used to kill processes that were not spawned by the engine.

**Note:** This method is implemented on Android, iOS, Linux, macOS and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **move\_to\_trash**(path: [String](class_string.md#class-string)) const [🔗](#class-os-method-move-to-trash)

Moves the file or directory at the given `path` to the system's recycle bin. See also [DirAccess.remove()](class_diraccess.md#class-diraccess-method-remove).

The method takes only global paths, so you may need to use [ProjectSettings.globalize\_path()](class_projectsettings.md#class-projectsettings-method-globalize-path). Do not use it for files in `res://` as it will not work in exported projects.

Returns [@GlobalScope.FAILED](class_@globalscope.md#class-globalscope-constant-failed) if the file or directory cannot be found, or the system does not support this method.

GDScriptC#

```
var file_to_remove = "user://slot1.save"
OS.move_to_trash(ProjectSettings.globalize_path(file_to_remove))

```

```
var fileToRemove = "user://slot1.save";
OS.MoveToTrash(ProjectSettings.GlobalizePath(fileToRemove));

```

**Note:** This method is implemented on Android, Linux, macOS and Windows.

**Note:** If the user has disabled the recycle bin on their system, the file will be permanently deleted instead.

* * *

void **open\_midi\_inputs**() [🔗](#class-os-method-open-midi-inputs)

Initializes the singleton for the system MIDI driver, allowing Godot to receive [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi). See also [get\_connected\_midi\_inputs()](#class-os-method-get-connected-midi-inputs) and [close\_midi\_inputs()](#class-os-method-close-midi-inputs).

**Note:** This method is implemented on Linux, macOS, Windows, and Web.

**Note:** On the Web platform, Web MIDI needs to be supported by the browser. [For the time being](https://caniuse.com/midi), it is currently supported by all major browsers, except Safari.

**Note:** On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling [open\_midi\_inputs()](#class-os-method-open-midi-inputs). The browser will refrain from processing MIDI input until the user accepts the permission request.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **open\_with\_program**(program\_path: [String](class_string.md#class-string), paths: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-os-method-open-with-program)

Opens one or more files/directories with the specified application. The `program_path` specifies the path to the application to use for opening the files, and `paths` contains an array of file/directory paths to open.

**Note:** This method is mostly only relevant for macOS, where opening files using [create\_process()](#class-os-method-create-process) might fail. On other platforms, this falls back to using [create\_process()](#class-os-method-create-process).

**Note:** On macOS, `program_path` should ideally be the path to a `.app` bundle.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **read\_buffer\_from\_stdin**(buffer\_size: [int](class_int.md#class-int) = 1024) [🔗](#class-os-method-read-buffer-from-stdin)

Reads a user input as raw data from the standard input. This operation can be _blocking_, which causes the window to freeze if [read\_buffer\_from\_stdin()](#class-os-method-read-buffer-from-stdin) is called on the main thread.

- If standard input is console, this method will block until the program receives a line break in standard input (usually by the user pressing `Enter`).

- If standard input is pipe, this method will block until a specific amount of data is read or pipe is closed.

- If standard input is a file, this method will read a specific amount of data (or less if end-of-file is reached) and return immediately.


**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** On exported Windows builds, run the console wrapper executable to access the terminal. If standard input is console, calling this method without console wrapped will freeze permanently. If standard input is pipe or file, it can be used without console wrapper. If you need a single executable with full console support, use a custom build compiled with the `windows_subsystem=console` flag.

* * *

[String](class_string.md#class-string) **read\_string\_from\_stdin**(buffer\_size: [int](class_int.md#class-int) = 1024) [🔗](#class-os-method-read-string-from-stdin)

Reads a user input as a UTF-8 encoded string from the standard input. This operation can be _blocking_, which causes the window to freeze if [read\_string\_from\_stdin()](#class-os-method-read-string-from-stdin) is called on the main thread.

- If standard input is console, this method will block until the program receives a line break in standard input (usually by the user pressing `Enter`).

- If standard input is pipe, this method will block until a specific amount of data is read or pipe is closed.

- If standard input is a file, this method will read a specific amount of data (or less if end-of-file is reached) and return immediately.


**Note:** This method automatically replaces `\r\n` line breaks with `\n` and removes them from the end of the string. Use [read\_buffer\_from\_stdin()](#class-os-method-read-buffer-from-stdin) to read the unprocessed data.

**Note:** This method is implemented on Linux, macOS, and Windows.

**Note:** On exported Windows builds, run the console wrapper executable to access the terminal. If standard input is console, calling this method without console wrapped will freeze permanently. If standard input is pipe or file, it can be used without console wrapper. If you need a single executable with full console support, use a custom build compiled with the `windows_subsystem=console` flag.

* * *

void **remove\_logger**(logger: [Logger](class_logger.md#class-logger)) [🔗](#class-os-method-remove-logger)

Remove a custom logger added by [add\_logger()](#class-os-method-add-logger).

* * *

[bool](class_bool.md#class-bool) **request\_permission**(name: [String](class_string.md#class-string)) [🔗](#class-os-method-request-permission)

Requests permission from the OS for the given `name`. Returns `true` if the permission has already been granted. See also [MainLoop.on\_request\_permissions\_result](class_mainloop.md#class-mainloop-signal-on-request-permissions-result).

The `name` must be the full permission name. For example:

- `OS.request_permission("android.permission.READ_EXTERNAL_STORAGE")`

- `OS.request_permission("android.permission.POST_NOTIFICATIONS")`

- `OS.request_permission("macos.permission.RECORD_SCREEN")`

- `OS.request_permission("appleembedded.permission.AUDIO_RECORD")`


**Note:** On Android, permission must be checked during export.

**Note:** This method is implemented on Android, macOS, and visionOS platforms.

* * *

[bool](class_bool.md#class-bool) **request\_permissions**() [🔗](#class-os-method-request-permissions)

Requests _dangerous_ permissions from the OS. Returns `true` if permissions have already been granted. See also [MainLoop.on\_request\_permissions\_result](class_mainloop.md#class-mainloop-signal-on-request-permissions-result).

**Note:** Permissions must be checked during export.

**Note:** This method is only implemented on Android. Normal permissions are automatically granted at install time in Android applications.

* * *

void **revoke\_granted\_permissions**() [🔗](#class-os-method-revoke-granted-permissions)

On macOS (sandboxed applications only), this function clears list of user selected folders accessible to the application.

* * *

void **set\_environment**(variable: [String](class_string.md#class-string), value: [String](class_string.md#class-string)) const [🔗](#class-os-method-set-environment)

Sets the value of the environment variable `variable` to `value`. The environment variable will be set for the Godot process and any process executed with [execute()](#class-os-method-execute) after running [set\_environment()](#class-os-method-set-environment). The environment variable will _not_ persist to processes run after the Godot process was terminated.

**Note:** Environment variable names are case-sensitive on all platforms except Windows. The `variable` name cannot be empty or include the `=` character. On Windows, there is a 32767 characters limit for the combined length of `variable`, `value`, and the `=` and null terminator characters that will be registered in the environment block.

* * *

void **set\_restart\_on\_exit**(restart: [bool](class_bool.md#class-bool), arguments: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray()) [🔗](#class-os-method-set-restart-on-exit)

If `restart` is `true`, restarts the project automatically when it is exited with [SceneTree.quit()](class_scenetree.md#class-scenetree-method-quit) or [Node.NOTIFICATION\_WM\_CLOSE\_REQUEST](class_node.md#class-node-constant-notification-wm-close-request). Command-line `arguments` can be supplied. To restart the project with the same command line arguments as originally used to run the project, pass [get\_cmdline\_args()](#class-os-method-get-cmdline-args) as the value for `arguments`.

This method can be used to apply setting changes that require a restart. See also [is\_restart\_on\_exit\_set()](#class-os-method-is-restart-on-exit-set) and [get\_restart\_on\_exit\_arguments()](#class-os-method-get-restart-on-exit-arguments).

**Note:** This method is only effective on desktop platforms, and only when the project isn't started from the editor. It will have no effect on mobile and Web platforms, or when the project is started from the editor.

**Note:** If the project process crashes or is _killed_ by the user (by sending `SIGKILL` instead of the usual `SIGTERM`), the project won't restart automatically.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_thread\_name**(name: [String](class_string.md#class-string)) [🔗](#class-os-method-set-thread-name)

Assigns the given name to the current thread. Returns [@GlobalScope.ERR\_UNAVAILABLE](class_@globalscope.md#class-globalscope-constant-err-unavailable) if unavailable on the current platform.

* * *

void **set\_use\_file\_access\_save\_and\_swap**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-os-method-set-use-file-access-save-and-swap)

If `enabled` is `true`, when opening a file for writing, a temporary file is used in its place. When closed, it is automatically applied to the target file.

This can useful when files may be opened by other applications, such as antiviruses, text editors, or even the Godot editor itself.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **shell\_open**(uri: [String](class_string.md#class-string)) [🔗](#class-os-method-shell-open)

Requests the OS to open a resource identified by `uri` with the most appropriate program. For example:

- `OS.shell_open("C:\\Users\\name\\Downloads")` on Windows opens the file explorer at the user's Downloads folder.

- `OS.shell_open("C:/Users/name/Downloads")` also works on Windows and opens the file explorer at the user's Downloads folder.

- `OS.shell_open("https://godotengine.org")` opens the default web browser on the official Godot website.

- `OS.shell_open("mailto:example@example.com")` opens the default email client with the "To" field set to `example@example.com`. See [RFC 2368 - The \[code\]mailto\[/code\] URL scheme](https://datatracker.ietf.org/doc/html/rfc2368) for a list of fields that can be added.


Use [ProjectSettings.globalize\_path()](class_projectsettings.md#class-projectsettings-method-globalize-path) to convert a `res://` or `user://` project path into a system path for use with this method.

**Note:** Use [String.uri\_encode()](class_string.md#class-string-method-uri-encode) to encode characters within URLs in a URL-safe, portable way. This is especially required for line breaks. Otherwise, [shell\_open()](#class-os-method-shell-open) may not work correctly in a project exported to the Web platform.

**Note:** This method is implemented on Android, iOS, Web, Linux, macOS and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **shell\_show\_in\_file\_manager**(file\_or\_dir\_path: [String](class_string.md#class-string), open\_folder: [bool](class_bool.md#class-bool) = true) [🔗](#class-os-method-shell-show-in-file-manager)

Requests the OS to open the file manager, navigate to the given `file_or_dir_path` and select the target file or folder.

If `open_folder` is `true` and `file_or_dir_path` is a valid directory path, the OS will open the file manager and navigate to the target folder without selecting anything.

Use [ProjectSettings.globalize\_path()](class_projectsettings.md#class-projectsettings-method-globalize-path) to convert a `res://` or `user://` project path into a system path to use with this method.

**Note:** This method is currently only implemented on Windows and macOS. On other platforms, it will fallback to [shell\_open()](#class-os-method-shell-open) with a directory path of `file_or_dir_path` prefixed with `file://`.

* * *

void **unset\_environment**(variable: [String](class_string.md#class-string)) const [🔗](#class-os-method-unset-environment)

Removes the given environment variable from the current environment, if it exists. The `variable` name cannot be empty or include the `=` character. The environment variable will be removed for the Godot process and any process executed with [execute()](#class-os-method-execute) after running [unset\_environment()](#class-os-method-unset-environment). The removal of the environment variable will _not_ persist to processes run after the Godot process was terminated.

**Note:** Environment variable names are case-sensitive on all platforms except Windows.

[Previous](class_openxrrendermodelextension.md "OpenXRRenderModelExtension") [Next](class_packeddatacontainerref.md "PackedDataContainerRef")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrrendermodelextension.md "OpenXRRenderModelExtension") [Next](class_packeddatacontainerref.md "PackedDataContainerRef")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).