---
title: Mutex — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_mutex.html
crawled_at: "2026-08-13T10:31:50+12:00"
content_hash: 0ee53b2867454abfc58a33aa8595115cf1f646220c1e30e937efce7709303c76
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Mutex

* * *

# Mutex

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A binary [Semaphore](class_semaphore.md#class-semaphore) for synchronization of multiple [Thread](class_thread.md#class-thread) s.

## Description

A synchronization mutex (mutual exclusion). This is used to synchronize multiple [Thread](class_thread.md#class-thread) s, and is equivalent to a binary [Semaphore](class_semaphore.md#class-semaphore). It guarantees that only one thread can access a critical section at a time.

This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times.

**Warning:** Mutexes must be used carefully to avoid deadlocks.

**Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met:

- When a **Mutex**'s reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked.

- When a [Thread](class_thread.md#class-thread)'s reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.


## Tutorials

- [Using multiple threads](../tutorials/performance/using_multiple_threads.md)

- [Thread-safe APIs](../tutorials/performance/thread_safe_apis.md)


## Methods

|     |     |
| --- | --- |
| void | [lock](#class-mutex-method-lock)() |
| [bool](class_bool.md#class-bool) | [try\_lock](#class-mutex-method-try-lock)() |
| void | [unlock](#class-mutex-method-unlock)() |

* * *

## Method Descriptions

void **lock**() [🔗](#class-mutex-method-lock)

Locks this **Mutex**, blocks until it is unlocked by the current owner.

**Note:** This function returns without blocking if the thread already has ownership of the mutex.

* * *

[bool](class_bool.md#class-bool) **try\_lock**() [🔗](#class-mutex-method-try-lock)

Tries locking this **Mutex**, but does not block. Returns `true` on success, `false` otherwise.

**Note:** This function returns `true` if the thread already has ownership of the mutex.

* * *

void **unlock**() [🔗](#class-mutex-method-unlock)

Unlocks this **Mutex**, leaving it to other threads.

**Note:** If a thread called [lock()](#class-mutex-method-lock) or [try\_lock()](#class-mutex-method-try-lock) multiple times while already having ownership of the mutex, it must also call [unlock()](#class-mutex-method-unlock) the same number of times in order to unlock it correctly.

**Warning:** Calling [unlock()](#class-mutex-method-unlock) more times that [lock()](#class-mutex-method-lock) on a given thread, thus ending up trying to unlock a non-locked mutex, is wrong and may causes crashes or deadlocks.

[Previous](class_multiplayerpeerextension.md "MultiplayerPeerExtension") [Next](class_nativemenu.md "NativeMenu")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_multiplayerpeerextension.md "MultiplayerPeerExtension") [Next](class_nativemenu.md "NativeMenu")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).