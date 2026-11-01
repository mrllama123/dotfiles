---
title: OpenXRFutureResult — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrfutureresult.html
crawled_at: "2026-08-13T10:31:11+12:00"
content_hash: d7ac490bd09e960566ea44dda4fa23ea371db27daf5936a9ce6767f2a8b6f026
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRFutureResult

* * *

# OpenXRFutureResult

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Result object tracking the asynchronous result of an OpenXR Future object.

## Description

Result object tracking the asynchronous result of an OpenXR Future object, you can use this object to track the result status.

## Methods

|     |     |
| --- | --- |
| void | [cancel\_future](#class-openxrfutureresult-method-cancel-future)() |
| [int](class_int.md#class-int) | [get\_future](#class-openxrfutureresult-method-get-future)() const |
| [Variant](class_variant.md#class-variant) | [get\_result\_value](#class-openxrfutureresult-method-get-result-value)() const |
| [ResultStatus](#enum-openxrfutureresult-resultstatus) | [get\_status](#class-openxrfutureresult-method-get-status)() const |
| void | [set\_result\_value](#class-openxrfutureresult-method-set-result-value)(result\_value: [Variant](class_variant.md#class-variant)) |

* * *

## Signals

**completed**(result: [OpenXRFutureResult](#class-openxrfutureresult)) [🔗](#class-openxrfutureresult-signal-completed)

Emitted when the asynchronous function is finished or has been cancelled.

* * *

## Enumerations

enum **ResultStatus**: [🔗](#enum-openxrfutureresult-resultstatus)

[ResultStatus](#enum-openxrfutureresult-resultstatus) **RESULT\_RUNNING** = `0`

The asynchronous function is running.

[ResultStatus](#enum-openxrfutureresult-resultstatus) **RESULT\_FINISHED** = `1`

The asynchronous function has finished.

[ResultStatus](#enum-openxrfutureresult-resultstatus) **RESULT\_CANCELLED** = `2`

The asynchronous function has been cancelled.

* * *

## Method Descriptions

void **cancel\_future**() [🔗](#class-openxrfutureresult-method-cancel-future)

Cancel this future, this will interrupt and stop the asynchronous function.

* * *

[int](class_int.md#class-int) **get\_future**() const [🔗](#class-openxrfutureresult-method-get-future)

Return the `XrFutureEXT` value this result relates to.

* * *

[Variant](class_variant.md#class-variant) **get\_result\_value**() const [🔗](#class-openxrfutureresult-method-get-result-value)

Returns the result value of our asynchronous function (if set by the extension). The type of this result value depends on the function being called. Consult the documentation of the relevant function.

* * *

[ResultStatus](#enum-openxrfutureresult-resultstatus) **get\_status**() const [🔗](#class-openxrfutureresult-method-get-status)

Returns the status of this result.

* * *

void **set\_result\_value**(result\_value: [Variant](class_variant.md#class-variant)) [🔗](#class-openxrfutureresult-method-set-result-value)

Stores the result value we expose to the user.

**Note:** This method should only be called by an OpenXR extension that implements an asynchronous function.

[Previous](class_openxrfutureextension.md "OpenXRFutureExtension") [Next](class_openxrinteractionprofilemetadata.md "OpenXRInteractionProfileMetadata")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrfutureextension.md "OpenXRFutureExtension") [Next](class_openxrinteractionprofilemetadata.md "OpenXRInteractionProfileMetadata")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).