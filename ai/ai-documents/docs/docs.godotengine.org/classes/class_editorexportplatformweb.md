---
title: EditorExportPlatformWeb — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformweb.html
crawled_at: "2026-08-13T10:20:24+12:00"
content_hash: 6d4b665036aa08ad9f6e977a2115f8f62149d466480cb12aaefb8a014a010f73
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformWeb

* * *

# EditorExportPlatformWeb

**Inherits:** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for the Web.

## Description

The Web exporter customizes how a web build is handled. In the editor's "Export" window, it is created when adding a new "Web" preset.

**Note:** Godot on Web is rendered inside a `<canvas>` tag. Normally, the canvas cannot be positioned or resized manually, but otherwise acts as the main [Window](class_window.md#class-window) of the application.

## Tutorials

- [Exporting for the Web](../tutorials/export/exporting_for_web.md)

- [Web documentation index](../tutorials/platform/web/index.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformweb-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformweb-property-custom-template-release) |
| [int](class_int.md#class-int) | [html/canvas\_resize\_policy](#class-editorexportplatformweb-property-html-canvas-resize-policy) |
| [String](class_string.md#class-string) | [html/custom\_html\_shell](#class-editorexportplatformweb-property-html-custom-html-shell) |
| [bool](class_bool.md#class-bool) | [html/experimental\_virtual\_keyboard](#class-editorexportplatformweb-property-html-experimental-virtual-keyboard) |
| [bool](class_bool.md#class-bool) | [html/export\_icon](#class-editorexportplatformweb-property-html-export-icon) |
| [bool](class_bool.md#class-bool) | [html/focus\_canvas\_on\_start](#class-editorexportplatformweb-property-html-focus-canvas-on-start) |
| [String](class_string.md#class-string) | [html/head\_include](#class-editorexportplatformweb-property-html-head-include) |
| [Color](class_color.md#class-color) | [progressive\_web\_app/background\_color](#class-editorexportplatformweb-property-progressive-web-app-background-color) |
| [int](class_int.md#class-int) | [progressive\_web\_app/display](#class-editorexportplatformweb-property-progressive-web-app-display) |
| [bool](class_bool.md#class-bool) | [progressive\_web\_app/enabled](#class-editorexportplatformweb-property-progressive-web-app-enabled) |
| [bool](class_bool.md#class-bool) | [progressive\_web\_app/ensure\_cross\_origin\_isolation\_headers](#class-editorexportplatformweb-property-progressive-web-app-ensure-cross-origin-isolation-headers) |
| [String](class_string.md#class-string) | [progressive\_web\_app/icon\_144x144](#class-editorexportplatformweb-property-progressive-web-app-icon-144x144) |
| [String](class_string.md#class-string) | [progressive\_web\_app/icon\_180x180](#class-editorexportplatformweb-property-progressive-web-app-icon-180x180) |
| [String](class_string.md#class-string) | [progressive\_web\_app/icon\_512x512](#class-editorexportplatformweb-property-progressive-web-app-icon-512x512) |
| [String](class_string.md#class-string) | [progressive\_web\_app/offline\_page](#class-editorexportplatformweb-property-progressive-web-app-offline-page) |
| [int](class_int.md#class-int) | [progressive\_web\_app/orientation](#class-editorexportplatformweb-property-progressive-web-app-orientation) |
| [int](class_int.md#class-int) | [threads/emscripten\_pool\_size](#class-editorexportplatformweb-property-threads-emscripten-pool-size) |
| [int](class_int.md#class-int) | [threads/godot\_pool\_size](#class-editorexportplatformweb-property-threads-godot-pool-size) |
| [bool](class_bool.md#class-bool) | [variant/extensions\_support](#class-editorexportplatformweb-property-variant-extensions-support) |
| [bool](class_bool.md#class-bool) | [variant/thread\_support](#class-editorexportplatformweb-property-variant-thread-support) |
| [bool](class_bool.md#class-bool) | [vram\_texture\_compression/for\_desktop](#class-editorexportplatformweb-property-vram-texture-compression-for-desktop) |
| [bool](class_bool.md#class-bool) | [vram\_texture\_compression/for\_mobile](#class-editorexportplatformweb-property-vram-texture-compression-for-mobile) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformweb-property-custom-template-debug)

File path to the custom export template used for debug builds. If left empty, the default template is used.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformweb-property-custom-template-release)

File path to the custom export template used for release builds. If left empty, the default template is used.

* * *

[int](class_int.md#class-int) **html/canvas\_resize\_policy** [🔗](#class-editorexportplatformweb-property-html-canvas-resize-policy)

Determines how the canvas should be resized by Godot.

- **None:** The canvas is not automatically resized.

- **Project:** The size of the canvas is dependent on the [ProjectSettings](class_projectsettings.md#class-projectsettings).

- **Adaptive:** The canvas is automatically resized to fit as much of the web page as possible.


* * *

[String](class_string.md#class-string) **html/custom\_html\_shell** [🔗](#class-editorexportplatformweb-property-html-custom-html-shell)

The custom HTML page that wraps the exported web build. If left empty, the default HTML shell is used.

For more information, see the [Customizing HTML5 Shell](../tutorials/platform/web/customizing_html5_shell.md) tutorial.

* * *

[bool](class_bool.md#class-bool) **html/experimental\_virtual\_keyboard** [🔗](#class-editorexportplatformweb-property-html-experimental-virtual-keyboard)

**Experimental:** This property may be changed or removed in future versions.

If `true`, embeds support for a virtual keyboard into the web page, which is shown when necessary on touchscreen devices.

* * *

[bool](class_bool.md#class-bool) **html/export\_icon** [🔗](#class-editorexportplatformweb-property-html-export-icon)

If `true`, the project icon will be used as the favicon for this application's web page.

* * *

[bool](class_bool.md#class-bool) **html/focus\_canvas\_on\_start** [🔗](#class-editorexportplatformweb-property-html-focus-canvas-on-start)

If `true`, the canvas will be focused as soon as the application is loaded, if the browser window is already in focus.

* * *

[String](class_string.md#class-string) **html/head\_include** [🔗](#class-editorexportplatformweb-property-html-head-include)

Additional HTML tags to include inside the `<head>`, such as `<meta>` tags.

**Note:** You do not need to add a `<title>` tag, as it is automatically included based on the project's name.

* * *

[Color](class_color.md#class-color) **progressive\_web\_app/background\_color** [🔗](#class-editorexportplatformweb-property-progressive-web-app-background-color)

The background color used behind the web application.

* * *

[int](class_int.md#class-int) **progressive\_web\_app/display** [🔗](#class-editorexportplatformweb-property-progressive-web-app-display)

The [display mode](https://developer.mozilla.org/en-US/docs/Web/Manifest/display/) to use for this progressive web application. Different browsers and platforms may not behave the same.

- **Fullscreen:** Displays the app in fullscreen and hides all of the browser's UI elements.

- **Standalone:** Displays the app in a separate window and hides all of the browser's UI elements.

- **Minimal UI:** Displays the app in a separate window and only shows the browser's UI elements for navigation.

- **Browser:** Displays the app as a normal web page.


* * *

[bool](class_bool.md#class-bool) **progressive\_web\_app/enabled** [🔗](#class-editorexportplatformweb-property-progressive-web-app-enabled)

If `true`, turns this web build into a [progressive web application](https://en.wikipedia.org/wiki/Progressive_web_app) (PWA).

* * *

[bool](class_bool.md#class-bool) **progressive\_web\_app/ensure\_cross\_origin\_isolation\_headers** [🔗](#class-editorexportplatformweb-property-progressive-web-app-ensure-cross-origin-isolation-headers)

When enabled, the progressive web app will make sure that each request has cross-origin isolation headers (COEP/COOP).

This can simplify the setup to serve the exported game.

* * *

[String](class_string.md#class-string) **progressive\_web\_app/icon\_144x144** [🔗](#class-editorexportplatformweb-property-progressive-web-app-icon-144x144)

File path to the smallest icon for this web application. If not defined, defaults to the project icon.

**Note:** If the icon is not 144×144, it will be automatically resized for the final build.

* * *

[String](class_string.md#class-string) **progressive\_web\_app/icon\_180x180** [🔗](#class-editorexportplatformweb-property-progressive-web-app-icon-180x180)

File path to the small icon for this web application. If not defined, defaults to the project icon.

**Note:** If the icon is not 180×180, it will be automatically resized for the final build.

* * *

[String](class_string.md#class-string) **progressive\_web\_app/icon\_512x512** [🔗](#class-editorexportplatformweb-property-progressive-web-app-icon-512x512)

File path to the largest icon for this web application. If not defined, defaults to the project icon.

**Note:** If the icon is not 512×512, it will be automatically resized for the final build.

* * *

[String](class_string.md#class-string) **progressive\_web\_app/offline\_page** [🔗](#class-editorexportplatformweb-property-progressive-web-app-offline-page)

The page to display, should the server hosting the page not be available. This page is saved in the client's machine.

* * *

[int](class_int.md#class-int) **progressive\_web\_app/orientation** [🔗](#class-editorexportplatformweb-property-progressive-web-app-orientation)

The orientation to use when the web application is run through a mobile device.

- **Any:** No orientation is forced.

- **Landscape:** Forces a horizontal layout (wider than it is taller).

- **Portrait:** Forces a vertical layout (taller than it is wider).


* * *

[int](class_int.md#class-int) **threads/emscripten\_pool\_size** [🔗](#class-editorexportplatformweb-property-threads-emscripten-pool-size)

The number of threads that emscripten will allocate at startup. A smaller value will allocate fewer threads and consume fewer system resources, but you may run the risk of running out of threads in the pool and needing to allocate more threads at run time which may cause a deadlock.

**Note:** Some browsers have a hard cap on the number of threads that can be allocated, so it is best to be cautious and keep this number low.

* * *

[int](class_int.md#class-int) **threads/godot\_pool\_size** [🔗](#class-editorexportplatformweb-property-threads-godot-pool-size)

Override for the default size of the [WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool). This setting is used when [ProjectSettings.threading/worker\_pool/max\_threads](class_projectsettings.md#class-projectsettings-property-threading-worker-pool-max-threads) size is set to -1 (which it is by default). This size must be smaller than [threads/emscripten\_pool\_size](#class-editorexportplatformweb-property-threads-emscripten-pool-size) otherwise deadlocks may occur.

When using threads this size needs to be large enough to accommodate features that rely on having a dedicated thread like [ProjectSettings.physics/2d/run\_on\_separate\_thread](class_projectsettings.md#class-projectsettings-property-physics-2d-run-on-separate-thread) or [ProjectSettings.rendering/driver/threads/thread\_model](class_projectsettings.md#class-projectsettings-property-rendering-driver-threads-thread-model). In general, it is best to ensure that this is at least 4 and is at least 2 or 3 less than [threads/emscripten\_pool\_size](#class-editorexportplatformweb-property-threads-emscripten-pool-size).

* * *

[bool](class_bool.md#class-bool) **variant/extensions\_support** [🔗](#class-editorexportplatformweb-property-variant-extensions-support)

If `true` enables [GDExtension](class_gdextension.md#class-gdextension) support for this web build.

* * *

[bool](class_bool.md#class-bool) **variant/thread\_support** [🔗](#class-editorexportplatformweb-property-variant-thread-support)

If `true`, the exported game will support threads. It requires [a "cross-origin isolated" website](https://web.dev/articles/coop-coep), which may be difficult to set up and is limited for security reasons (such as not being able to communicate with third-party websites).

If `false`, the exported game will not support threads. As a result, it is more prone to performance and audio issues, but will only require to be run on an HTTPS website.

* * *

[bool](class_bool.md#class-bool) **vram\_texture\_compression/for\_desktop** [🔗](#class-editorexportplatformweb-property-vram-texture-compression-for-desktop)

If `true`, allows textures to be optimized for desktop through the S3TC/BPTC algorithm.

* * *

[bool](class_bool.md#class-bool) **vram\_texture\_compression/for\_mobile** [🔗](#class-editorexportplatformweb-property-vram-texture-compression-for-mobile)

If `true` allows textures to be optimized for mobile through the ETC2/ASTC algorithm.

[Previous](class_editorexportplatformvisionos.md "EditorExportPlatformVisionOS") [Next](class_editorexportplatformwindows.md "EditorExportPlatformWindows")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformvisionos.md "EditorExportPlatformVisionOS") [Next](class_editorexportplatformwindows.md "EditorExportPlatformWindows")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).