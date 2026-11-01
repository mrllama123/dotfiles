---
title: Semaphore — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_semaphore.html
crawled_at: "2026-08-13T10:30:46+12:00"
content_hash: 4169d9b45b5e7f266f4a914e936d9802dfec6b83751f873061db3574b49f3010
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Semaphore

* * *

# Semaphore

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A synchronization mechanism used to control access to a shared resource by [Thread](class_thread.md#class-thread) s.

## Description

A synchronization semaphore that can be used to synchronize multiple [Thread](class_thread.md#class-thread) s. Initialized to zero on creation. For a binary version, see [Mutex](class_mutex.md#class-mutex).

**Warning:** Semaphores must be used carefully to avoid deadlocks.

**Warning:** To guarantee that the operating system is able to perform proper cleanup (no crashes, no deadlocks), these conditions must be met:

- When a **Semaphore**'s reference count reaches zero and it is therefore destroyed, no threads must be waiting on it.

- When a [Thread](class_thread.md#class-thread)'s reference count reaches zero and it is therefore destroyed, it must not be waiting on any semaphore.


## Tutorials

- [Using multiple threads](../tutorials/performance/using_multiple_threads.md)

- [Thread-safe APIs](../tutorials/performance/thread_safe_apis.md)


## Methods

|     |     |
| --- | --- |
| void | [post](#class-semaphore-method-post)(count: [int](class_int.md#class-int) = 1) |
| [bool](class_bool.md#class-bool) | [try\_wait](#class-semaphore-method-try-wait)() |
| void | [wait](#class-semaphore-method-wait)() |

* * *

## Method Descriptions

void **post**(count: [int](class_int.md#class-int) = 1) [🔗](#class-semaphore-method-post)

Lowers the **Semaphore**, allowing one thread in, or more if `count` is specified.

* * *

[bool](class_bool.md#class-bool) **try\_wait**() [🔗](#class-semaphore-method-try-wait)

Like [wait()](#class-semaphore-method-wait), but won't block, so if the value is zero, fails immediately and returns `false`. If non-zero, it returns `true` to report success.

* * *

void **wait**() [🔗](#class-semaphore-method-wait)

Waits for the **Semaphore**, if its value is zero, blocks until non-zero.

[Previous](class_scriptlanguageextension.md "ScriptLanguageExtension") [Next](class_shaderincludedb.md "ShaderIncludeDB")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scriptlanguageextension.md "ScriptLanguageExtension") [Next](class_shaderincludedb.md "ShaderIncludeDB")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).