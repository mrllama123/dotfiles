---
title: JavaScriptBridge — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_javascriptbridge.html
crawled_at: "2026-08-13T10:33:33+12:00"
content_hash: 336c3f008439678456b7f588c8c48a9c554b4dfd9ed3c15e22377344e8c13114
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JavaScriptBridge

* * *

# JavaScriptBridge

**Inherits:** [Object](class_object.md#class-object)

Singleton that connects the engine with the browser's JavaScript context in Web export.

## Description

The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.

**Note:** This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See [Compiling for the Web](../engine_details/development/compiling/compiling_for_web.md) in the documentation for more information.

## Tutorials

- [Exporting for the Web: Calling JavaScript from script](../tutorials/export/exporting_for_web.md#calling-javascript-from-script)


## Methods

|     |     |
| --- | --- |
| [JavaScriptObject](class_javascriptobject.md#class-javascriptobject) | [create\_callback](#class-javascriptbridge-method-create-callback)(callable: [Callable](class_callable.md#class-callable)) |
| [Variant](class_variant.md#class-variant) | [create\_object](#class-javascriptbridge-method-create-object)(object: [String](class_string.md#class-string), ...) vararg |
| void | [download\_buffer](#class-javascriptbridge-method-download-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), name: [String](class_string.md#class-string), mime: [String](class_string.md#class-string) = "application/octet-stream") |
| [Variant](class_variant.md#class-variant) | [eval](#class-javascriptbridge-method-eval)(code: [String](class_string.md#class-string), use\_global\_execution\_context: [bool](class_bool.md#class-bool) = false) |
| void | [force\_fs\_sync](#class-javascriptbridge-method-force-fs-sync)() |
| [JavaScriptObject](class_javascriptobject.md#class-javascriptobject) | [get\_interface](#class-javascriptbridge-method-get-interface)(interface: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [is\_js\_buffer](#class-javascriptbridge-method-is-js-buffer)(javascript\_object: [JavaScriptObject](class_javascriptobject.md#class-javascriptobject)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [js\_buffer\_to\_packed\_byte\_array](#class-javascriptbridge-method-js-buffer-to-packed-byte-array)(javascript\_buffer: [JavaScriptObject](class_javascriptobject.md#class-javascriptobject)) |
| [bool](class_bool.md#class-bool) | [pwa\_needs\_update](#class-javascriptbridge-method-pwa-needs-update)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [pwa\_update](#class-javascriptbridge-method-pwa-update)() |

* * *

## Signals

**pwa\_update\_available**() [🔗](#class-javascriptbridge-signal-pwa-update-available)

Emitted when an update for this progressive web app has been detected but is waiting to be activated because a previous version is active. See [pwa\_update()](#class-javascriptbridge-method-pwa-update) to force the update to take place immediately.

* * *

## Method Descriptions

[JavaScriptObject](class_javascriptobject.md#class-javascriptobject) **create\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-javascriptbridge-method-create-callback)

Creates a reference to a [Callable](class_callable.md#class-callable) that can be used as a callback by JavaScript. The reference must be kept until the callback happens, or it won't be called at all. See [JavaScriptObject](class_javascriptobject.md#class-javascriptobject) for usage.

**Note:** The callback function must take exactly one [Array](class_array.md#class-array) argument, which is going to be the JavaScript [arguments object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments) converted to an array.

* * *

[Variant](class_variant.md#class-variant) **create\_object**(object: [String](class_string.md#class-string), ...) vararg [🔗](#class-javascriptbridge-method-create-object)

Creates a new JavaScript object using the `new` constructor. The `object` must a valid property of the JavaScript `window`. See [JavaScriptObject](class_javascriptobject.md#class-javascriptobject) for usage.

* * *

void **download\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), name: [String](class_string.md#class-string), mime: [String](class_string.md#class-string) = "application/octet-stream") [🔗](#class-javascriptbridge-method-download-buffer)

Prompts the user to download a file containing the specified `buffer`. The file will have the given `name` and `mime` type.

**Note:** The browser may override the [MIME type](https://en.wikipedia.org/wiki/Media_type) provided based on the file `name`'s extension.

**Note:** Browsers might block the download if [download\_buffer()](#class-javascriptbridge-method-download-buffer) is not being called from a user interaction (e.g. button click).

**Note:** Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.

* * *

[Variant](class_variant.md#class-variant) **eval**(code: [String](class_string.md#class-string), use\_global\_execution\_context: [bool](class_bool.md#class-bool) = false) [🔗](#class-javascriptbridge-method-eval)

Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.

If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.

* * *

void **force\_fs\_sync**() [🔗](#class-javascriptbridge-method-force-fs-sync)

Force synchronization of the persistent file system (when enabled).

**Note:** This is only useful for modules or extensions that can't use [FileAccess](class_fileaccess.md#class-fileaccess) to write files.

* * *

[JavaScriptObject](class_javascriptobject.md#class-javascriptobject) **get\_interface**(interface: [String](class_string.md#class-string)) [🔗](#class-javascriptbridge-method-get-interface)

Returns an interface to a JavaScript object that can be used by scripts. The `interface` must be a valid property of the JavaScript `window`. The callback must accept a single [Array](class_array.md#class-array) argument, which will contain the JavaScript `arguments`. See [JavaScriptObject](class_javascriptobject.md#class-javascriptobject) for usage.

* * *

[bool](class_bool.md#class-bool) **is\_js\_buffer**(javascript\_object: [JavaScriptObject](class_javascriptobject.md#class-javascriptobject)) [🔗](#class-javascriptbridge-method-is-js-buffer)

Returns `true` if the given `javascript_object` is of type [\[code\]ArrayBuffer\[/code\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer), [\[code\]DataView\[/code\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView), or one of the many [typed array objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **js\_buffer\_to\_packed\_byte\_array**(javascript\_buffer: [JavaScriptObject](class_javascriptobject.md#class-javascriptobject)) [🔗](#class-javascriptbridge-method-js-buffer-to-packed-byte-array)

Returns a copy of `javascript_buffer`'s contents as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray). See also [is\_js\_buffer()](#class-javascriptbridge-method-is-js-buffer).

* * *

[bool](class_bool.md#class-bool) **pwa\_needs\_update**() const [🔗](#class-javascriptbridge-method-pwa-needs-update)

Returns `true` if a new version of the progressive web app is waiting to be activated.

**Note:** Only relevant when exported as a Progressive Web App.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **pwa\_update**() [🔗](#class-javascriptbridge-method-pwa-update)

Performs the live update of the progressive web app. Forcing the new version to be installed and the page to be reloaded.

**Note:** Your application will be **reloaded in all browser tabs**.

**Note:** Only relevant when exported as a Progressive Web App and [pwa\_needs\_update()](#class-javascriptbridge-method-pwa-needs-update) returns `true`.

[Previous](class_javaobject.md "JavaObject") [Next](class_javascriptobject.md "JavaScriptObject")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_javaobject.md "JavaObject") [Next](class_javascriptobject.md "JavaScriptObject")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).