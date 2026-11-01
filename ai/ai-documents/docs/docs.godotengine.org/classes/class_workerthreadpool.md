---
title: WorkerThreadPool — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_workerthreadpool.html
crawled_at: "2026-08-13T10:35:03+12:00"
content_hash: 77a58d50b305c065fad3f656427d939cdb00f4b9cded93b1f2a12e6b1a0d5ad1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WorkerThreadPool

* * *

# WorkerThreadPool

**Inherits:** [Object](class_object.md#class-object)

A singleton that allocates some [Thread](class_thread.md#class-thread) s on startup, used to offload tasks to these threads.

## Description

The **WorkerThreadPool** singleton allocates a set of [Thread](class_thread.md#class-thread) s (called worker threads) on project startup and provides methods for offloading tasks to them. This can be used for simple multithreading without having to create [Thread](class_thread.md#class-thread) s.

Tasks hold the [Callable](class_callable.md#class-callable) to be run by the threads. **WorkerThreadPool** can be used to create regular tasks, which will be taken by one worker thread, or group tasks, which can be distributed between multiple worker threads. Group tasks execute the [Callable](class_callable.md#class-callable) multiple times, which makes them useful for iterating over a lot of elements, such as the enemies in an arena.

Here's a sample on how to offload an expensive function to worker threads:

GDScriptC#

```
var enemies = [] # An array to be filled with enemies.

func process_enemy_ai(enemy_index):
    var processed_enemy = enemies[enemy_index]
    # Expensive logic...

func _process(delta):
    var task_id = WorkerThreadPool.add_group_task(process_enemy_ai, enemies.size())
    # Other code...
    WorkerThreadPool.wait_for_group_task_completion(task_id)
    # Other code that depends on the enemy AI already being processed.

```

```
private List<Node> _enemies = new List<Node>(); // A list to be filled with enemies.

private void ProcessEnemyAI(int enemyIndex)
{
    Node processedEnemy = _enemies[enemyIndex];
    // Expensive logic here.
}

public override void _Process(double delta)
{
    long taskId = WorkerThreadPool.AddGroupTask(Callable.From<int>(ProcessEnemyAI), _enemies.Count);
    // Other code...
    WorkerThreadPool.WaitForGroupTaskCompletion(taskId);
    // Other code that depends on the enemy AI already being processed.
}

```

The above code relies on the number of elements in the `enemies` array remaining constant during the multithreaded part.

**Note:** Using this singleton could affect performance negatively if the task being distributed between threads is not computationally expensive.

## Tutorials

- [Using multiple threads](../tutorials/performance/using_multiple_threads.md)

- [Thread-safe APIs](../tutorials/performance/thread_safe_apis.md)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [add\_group\_task](#class-workerthreadpool-method-add-group-task)(action: [Callable](class_callable.md#class-callable), elements: [int](class_int.md#class-int), tasks\_needed: [int](class_int.md#class-int) = -1, high\_priority: [bool](class_bool.md#class-bool) = false, description: [String](class_string.md#class-string) = "") |
| [int](class_int.md#class-int) | [add\_task](#class-workerthreadpool-method-add-task)(action: [Callable](class_callable.md#class-callable), high\_priority: [bool](class_bool.md#class-bool) = false, description: [String](class_string.md#class-string) = "") |
| [int](class_int.md#class-int) | [get\_caller\_group\_id](#class-workerthreadpool-method-get-caller-group-id)() const |
| [int](class_int.md#class-int) | [get\_caller\_task\_id](#class-workerthreadpool-method-get-caller-task-id)() const |
| [int](class_int.md#class-int) | [get\_group\_processed\_element\_count](#class-workerthreadpool-method-get-group-processed-element-count)(group\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_group\_task\_completed](#class-workerthreadpool-method-is-group-task-completed)(group\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_task\_completed](#class-workerthreadpool-method-is-task-completed)(task\_id: [int](class_int.md#class-int)) const |
| void | [wait\_for\_group\_task\_completion](#class-workerthreadpool-method-wait-for-group-task-completion)(group\_id: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [wait\_for\_task\_completion](#class-workerthreadpool-method-wait-for-task-completion)(task\_id: [int](class_int.md#class-int)) |

* * *

## Method Descriptions

[int](class_int.md#class-int) **add\_group\_task**(action: [Callable](class_callable.md#class-callable), elements: [int](class_int.md#class-int), tasks\_needed: [int](class_int.md#class-int) = -1, high\_priority: [bool](class_bool.md#class-bool) = false, description: [String](class_string.md#class-string) = "") [🔗](#class-workerthreadpool-method-add-group-task)

Adds `action` as a group task to be executed by the worker threads. The [Callable](class_callable.md#class-callable) will be called a number of times based on `elements`, with the first thread calling it with the value `0` as a parameter, and each consecutive execution incrementing this value by 1 until it reaches `element - 1`.

The number of threads the task is distributed to is defined by `tasks_needed`, where the default value `-1` means it is distributed to all worker threads. `high_priority` determines if the task has a high priority or a low priority (default). You can optionally provide a `description` to help with debugging.

Returns a group task ID that can be used by other methods.

**Warning:** Every task must be waited for completion using [wait\_for\_task\_completion()](#class-workerthreadpool-method-wait-for-task-completion) or [wait\_for\_group\_task\_completion()](#class-workerthreadpool-method-wait-for-group-task-completion) at some point so that any allocated resources inside the task can be cleaned up.

* * *

[int](class_int.md#class-int) **add\_task**(action: [Callable](class_callable.md#class-callable), high\_priority: [bool](class_bool.md#class-bool) = false, description: [String](class_string.md#class-string) = "") [🔗](#class-workerthreadpool-method-add-task)

Adds `action` as a task to be executed by a worker thread. `high_priority` determines if the task has a high priority or a low priority (default). You can optionally provide a `description` to help with debugging.

Returns a task ID that can be used by other methods.

**Warning:** Every task must be waited for completion using [wait\_for\_task\_completion()](#class-workerthreadpool-method-wait-for-task-completion) or [wait\_for\_group\_task\_completion()](#class-workerthreadpool-method-wait-for-group-task-completion) at some point so that any allocated resources inside the task can be cleaned up.

* * *

[int](class_int.md#class-int) **get\_caller\_group\_id**() const [🔗](#class-workerthreadpool-method-get-caller-group-id)

Returns the task group ID of the current thread calling this method, or `-1` if invalid or the current thread is not part of a task group.

* * *

[int](class_int.md#class-int) **get\_caller\_task\_id**() const [🔗](#class-workerthreadpool-method-get-caller-task-id)

Returns the task ID of the current thread calling this method, or `-1` if the task is a group task, invalid or the current thread is not part of the thread pool (e.g. the main thread).

Can be used by a task to get its own task ID, or to determine whether the current code is running inside the worker thread pool.

**Note:** Group tasks have their own IDs, so this method will return `-1` for group tasks.

* * *

[int](class_int.md#class-int) **get\_group\_processed\_element\_count**(group\_id: [int](class_int.md#class-int)) const [🔗](#class-workerthreadpool-method-get-group-processed-element-count)

Returns how many times the [Callable](class_callable.md#class-callable) of the group task with the given ID has already been executed by the worker threads.

**Note:** If a thread has started executing the [Callable](class_callable.md#class-callable) but is yet to finish, it won't be counted.

* * *

[bool](class_bool.md#class-bool) **is\_group\_task\_completed**(group\_id: [int](class_int.md#class-int)) const [🔗](#class-workerthreadpool-method-is-group-task-completed)

Returns `true` if the group task with the given ID is completed.

**Note:** You should only call this method between adding the group task and awaiting its completion.

* * *

[bool](class_bool.md#class-bool) **is\_task\_completed**(task\_id: [int](class_int.md#class-int)) const [🔗](#class-workerthreadpool-method-is-task-completed)

Returns `true` if the task with the given ID is completed.

**Note:** You should only call this method between adding the task and awaiting its completion.

* * *

void **wait\_for\_group\_task\_completion**(group\_id: [int](class_int.md#class-int)) [🔗](#class-workerthreadpool-method-wait-for-group-task-completion)

Pauses the thread that calls this method until the group task with the given ID is completed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **wait\_for\_task\_completion**(task\_id: [int](class_int.md#class-int)) [🔗](#class-workerthreadpool-method-wait-for-task-completion)

Pauses the thread that calls this method until the task with the given ID is completed.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the task could be successfully awaited.

Returns [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if a task with the passed ID does not exist (maybe because it was already awaited and disposed of).

Returns [@GlobalScope.ERR\_BUSY](class_@globalscope.md#class-globalscope-constant-err-busy) if the call is made from another running task and, due to task scheduling, there's potential for deadlocking (e.g., the task to await may be at a lower level in the call stack and therefore can't progress). This is an advanced situation that should only matter when some tasks depend on others (in the current implementation, the tricky case is a task trying to wait on an older one).

[Previous](class_webxrinterface.md "WebXRInterface") [Next](class_xmlparser.md "XMLParser")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_webxrinterface.md "WebXRInterface") [Next](class_xmlparser.md "XMLParser")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).