---
title: OpenXRFutureExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrfutureextension.html
crawled_at: "2026-08-13T10:20:54+12:00"
content_hash: 14c398d16647fe7be55a9558853e17edbeef26123939330dd88e0a2abdb4685e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRFutureExtension

* * *

# OpenXRFutureExtension

**Inherits:** [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper) **<** [Object](class_object.md#class-object)

The OpenXR Future extension allows for asynchronous APIs to be used.

## Description

This is a support extension in OpenXR that allows other OpenXR extensions to start asynchronous functions and get a callback after this function finishes. It is not intended for consumption within GDScript but can be accessed from GDExtension.

## Methods

|     |     |
| --- | --- |
| void | [cancel\_future](#class-openxrfutureextension-method-cancel-future)(future: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_active](#class-openxrfutureextension-method-is-active)() const |
| [OpenXRFutureResult](class_openxrfutureresult.md#class-openxrfutureresult) | [register\_future](#class-openxrfutureextension-method-register-future)(future: [int](class_int.md#class-int), on\_success: [Callable](class_callable.md#class-callable) = Callable()) |

* * *

## Method Descriptions

void **cancel\_future**(future: [int](class_int.md#class-int)) [🔗](#class-openxrfutureextension-method-cancel-future)

Cancels an in-progress future. `future` must be an `XrFutureEXT` value previously returned by an API that started an asynchronous function.

* * *

[bool](class_bool.md#class-bool) **is\_active**() const [🔗](#class-openxrfutureextension-method-is-active)

Returns `true` if futures are available in the OpenXR runtime used. This function will only return a usable result after OpenXR has been initialized.

* * *

[OpenXRFutureResult](class_openxrfutureresult.md#class-openxrfutureresult) **register\_future**(future: [int](class_int.md#class-int), on\_success: [Callable](class_callable.md#class-callable) = Callable()) [🔗](#class-openxrfutureextension-method-register-future)

Register an OpenXR Future object so we monitor for completion. `future` must be an `XrFutureEXT` value previously returned by an API that started an asynchronous function.

You can optionally specify `on_success`, it will be invoked on successful completion of the future.

Or you can use the returned [OpenXRFutureResult](class_openxrfutureresult.md#class-openxrfutureresult) object to `await` its [OpenXRFutureResult.completed](class_openxrfutureresult.md#class-openxrfutureresult-signal-completed) signal.

```
var future_result = OpenXRFutureExtension.register_future(future)
await future_result.completed
if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
    # Handle your success
    pass

```

[Previous](class_openxrextensionwrapperextension.md "OpenXRExtensionWrapperExtension") [Next](class_openxrfutureresult.md "OpenXRFutureResult")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrextensionwrapperextension.md "OpenXRExtensionWrapperExtension") [Next](class_openxrfutureresult.md "OpenXRFutureResult")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).