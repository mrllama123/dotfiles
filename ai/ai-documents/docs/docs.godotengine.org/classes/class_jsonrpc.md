---
title: JSONRPC — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_jsonrpc.html
crawled_at: "2026-08-13T10:38:53+12:00"
content_hash: 19f0ce3366ed2bbee07b753e2d55f129bba941aeff6812f7f7762490a3dc11d8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JSONRPC

* * *

# JSONRPC

**Inherits:** [Object](class_object.md#class-object)

A helper to handle dictionaries which look like JSONRPC documents.

## Description

[JSON-RPC](https://www.jsonrpc.org/) is a standard which wraps a method call in a [JSON](class_json.md#class-json) object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of [Dictionary](class_dictionary.md#class-dictionary); you will have to convert between a [Dictionary](class_dictionary.md#class-dictionary) and [JSON](class_json.md#class-json) with other functions.

## Methods

|     |     |
| --- | --- |
| [Dictionary](class_dictionary.md#class-dictionary) | [make\_notification](#class-jsonrpc-method-make-notification)(method: [String](class_string.md#class-string), params: [Variant](class_variant.md#class-variant)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [make\_request](#class-jsonrpc-method-make-request)(method: [String](class_string.md#class-string), params: [Variant](class_variant.md#class-variant), id: [Variant](class_variant.md#class-variant)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [make\_response](#class-jsonrpc-method-make-response)(result: [Variant](class_variant.md#class-variant), id: [Variant](class_variant.md#class-variant)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [make\_response\_error](#class-jsonrpc-method-make-response-error)(code: [int](class_int.md#class-int), message: [String](class_string.md#class-string), id: [Variant](class_variant.md#class-variant) = null) const |
| [Variant](class_variant.md#class-variant) | [process\_action](#class-jsonrpc-method-process-action)(action: [Variant](class_variant.md#class-variant), recurse: [bool](class_bool.md#class-bool) = false) |
| [String](class_string.md#class-string) | [process\_string](#class-jsonrpc-method-process-string)(action: [String](class_string.md#class-string)) |
| void | [set\_method](#class-jsonrpc-method-set-method)(name: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) |

* * *

## Enumerations

enum **ErrorCode**: [🔗](#enum-jsonrpc-errorcode)

[ErrorCode](#enum-jsonrpc-errorcode) **PARSE\_ERROR** = `-32700`

The request could not be parsed as it was not valid by JSON standard ( [JSON.parse()](class_json.md#class-json-method-parse) failed).

[ErrorCode](#enum-jsonrpc-errorcode) **INVALID\_REQUEST** = `-32600`

A method call was requested but the request's format is not valid.

[ErrorCode](#enum-jsonrpc-errorcode) **METHOD\_NOT\_FOUND** = `-32601`

A method call was requested but no function of that name existed in the JSONRPC subclass.

[ErrorCode](#enum-jsonrpc-errorcode) **INVALID\_PARAMS** = `-32602`

A method call was requested but the given method parameters are not valid. Not used by the built-in JSONRPC.

[ErrorCode](#enum-jsonrpc-errorcode) **INTERNAL\_ERROR** = `-32603`

An internal error occurred while processing the request. Not used by the built-in JSONRPC.

* * *

## Method Descriptions

[Dictionary](class_dictionary.md#class-dictionary) **make\_notification**(method: [String](class_string.md#class-string), params: [Variant](class_variant.md#class-variant)) [🔗](#class-jsonrpc-method-make-notification)

Returns a dictionary in the form of a JSON-RPC notification. Notifications are one-shot messages which do not expect a response.

- `method`: Name of the method being called.

- `params`: An array or dictionary of parameters being passed to the method.


* * *

[Dictionary](class_dictionary.md#class-dictionary) **make\_request**(method: [String](class_string.md#class-string), params: [Variant](class_variant.md#class-variant), id: [Variant](class_variant.md#class-variant)) [🔗](#class-jsonrpc-method-make-request)

Returns a dictionary in the form of a JSON-RPC request. Requests are sent to a server with the expectation of a response. The ID field is used for the server to specify which exact request it is responding to.

- `method`: Name of the method being called.

- `params`: An array or dictionary of parameters being passed to the method.

- `id`: Uniquely identifies this request. The server is expected to send a response with the same ID.


* * *

[Dictionary](class_dictionary.md#class-dictionary) **make\_response**(result: [Variant](class_variant.md#class-variant), id: [Variant](class_variant.md#class-variant)) [🔗](#class-jsonrpc-method-make-response)

When a server has received and processed a request, it is expected to send a response. If you did not want a response then you need to have sent a Notification instead.

- `result`: The return value of the function which was called.

- `id`: The ID of the request this response is targeted to.


* * *

[Dictionary](class_dictionary.md#class-dictionary) **make\_response\_error**(code: [int](class_int.md#class-int), message: [String](class_string.md#class-string), id: [Variant](class_variant.md#class-variant) = null) const [🔗](#class-jsonrpc-method-make-response-error)

Creates a response which indicates a previous reply has failed in some way.

- `code`: The error code corresponding to what kind of error this is. See the [ErrorCode](#enum-jsonrpc-errorcode) constants.

- `message`: A custom message about this error.

- `id`: The request this error is a response to.


* * *

[Variant](class_variant.md#class-variant) **process\_action**(action: [Variant](class_variant.md#class-variant), recurse: [bool](class_bool.md#class-bool) = false) [🔗](#class-jsonrpc-method-process-action)

Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.

To add new supported methods extend the JSONRPC class and call [process\_action()](#class-jsonrpc-method-process-action) on your subclass.

`action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.

* * *

[String](class_string.md#class-string) **process\_string**(action: [String](class_string.md#class-string)) [🔗](#class-jsonrpc-method-process-string)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_method**(name: [String](class_string.md#class-string), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-jsonrpc-method-set-method)

Registers a callback for the given method name.

- `name` The name that clients can use to access the callback.

- `callback` The callback which will handle the specific method.


[Previous](class_jnisingleton.md "JNISingleton") [Next](class_kinematiccollision2d.md "KinematicCollision2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_jnisingleton.md "JNISingleton") [Next](class_kinematiccollision2d.md "KinematicCollision2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).