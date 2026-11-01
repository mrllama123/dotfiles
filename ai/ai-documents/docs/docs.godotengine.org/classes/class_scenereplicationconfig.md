---
title: SceneReplicationConfig — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_scenereplicationconfig.html
crawled_at: "2026-08-13T10:18:32+12:00"
content_hash: 1b040811e5533f1b408a77112c25102cf594cb98483edae412d7f8b89d37e14c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SceneReplicationConfig

* * *

# SceneReplicationConfig

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Configuration for properties to synchronize with a [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer).

## Methods

|     |     |
| --- | --- |
| void | [add\_property](#class-scenereplicationconfig-method-add-property)(path: [NodePath](class_nodepath.md#class-nodepath), index: [int](class_int.md#class-int) = -1) |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [get\_properties](#class-scenereplicationconfig-method-get-properties)() const |
| [bool](class_bool.md#class-bool) | [has\_property](#class-scenereplicationconfig-method-has-property)(path: [NodePath](class_nodepath.md#class-nodepath)) const |
| [int](class_int.md#class-int) | [property\_get\_index](#class-scenereplicationconfig-method-property-get-index)(path: [NodePath](class_nodepath.md#class-nodepath)) const |
| [ReplicationMode](#enum-scenereplicationconfig-replicationmode) | [property\_get\_replication\_mode](#class-scenereplicationconfig-method-property-get-replication-mode)(path: [NodePath](class_nodepath.md#class-nodepath)) |
| [bool](class_bool.md#class-bool) | [property\_get\_spawn](#class-scenereplicationconfig-method-property-get-spawn)(path: [NodePath](class_nodepath.md#class-nodepath)) |
| [bool](class_bool.md#class-bool) | [property\_get\_sync](#class-scenereplicationconfig-method-property-get-sync)(path: [NodePath](class_nodepath.md#class-nodepath)) |
| [bool](class_bool.md#class-bool) | [property\_get\_watch](#class-scenereplicationconfig-method-property-get-watch)(path: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [property\_set\_replication\_mode](#class-scenereplicationconfig-method-property-set-replication-mode)(path: [NodePath](class_nodepath.md#class-nodepath), mode: [ReplicationMode](#enum-scenereplicationconfig-replicationmode)) |
| void | [property\_set\_spawn](#class-scenereplicationconfig-method-property-set-spawn)(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) |
| void | [property\_set\_sync](#class-scenereplicationconfig-method-property-set-sync)(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) |
| void | [property\_set\_watch](#class-scenereplicationconfig-method-property-set-watch)(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) |
| void | [remove\_property](#class-scenereplicationconfig-method-remove-property)(path: [NodePath](class_nodepath.md#class-nodepath)) |

* * *

## Enumerations

enum **ReplicationMode**: [🔗](#enum-scenereplicationconfig-replicationmode)

[ReplicationMode](#enum-scenereplicationconfig-replicationmode) **REPLICATION\_MODE\_NEVER** = `0`

Do not keep the given property synchronized.

[ReplicationMode](#enum-scenereplicationconfig-replicationmode) **REPLICATION\_MODE\_ALWAYS** = `1`

Replicate the given property on process by constantly sending updates using unreliable transfer mode.

[ReplicationMode](#enum-scenereplicationconfig-replicationmode) **REPLICATION\_MODE\_ON\_CHANGE** = `2`

Replicate the given property on process by sending updates using reliable transfer mode when its value changes.

* * *

## Method Descriptions

void **add\_property**(path: [NodePath](class_nodepath.md#class-nodepath), index: [int](class_int.md#class-int) = -1) [🔗](#class-scenereplicationconfig-method-add-property)

Adds the property identified by the given `path` to the list of the properties being synchronized, optionally passing an `index`.

**Note:** For details on restrictions and limitations on property synchronization, see [MultiplayerSynchronizer](class_multiplayersynchronizer.md#class-multiplayersynchronizer).

* * *

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_properties**() const [🔗](#class-scenereplicationconfig-method-get-properties)

Returns a list of synchronized property [NodePath](class_nodepath.md#class-nodepath) s.

* * *

[bool](class_bool.md#class-bool) **has\_property**(path: [NodePath](class_nodepath.md#class-nodepath)) const [🔗](#class-scenereplicationconfig-method-has-property)

Returns `true` if the given `path` is configured for synchronization.

* * *

[int](class_int.md#class-int) **property\_get\_index**(path: [NodePath](class_nodepath.md#class-nodepath)) const [🔗](#class-scenereplicationconfig-method-property-get-index)

Finds the index of the given `path`.

* * *

[ReplicationMode](#enum-scenereplicationconfig-replicationmode) **property\_get\_replication\_mode**(path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-scenereplicationconfig-method-property-get-replication-mode)

Returns the replication mode for the property identified by the given `path`.

* * *

[bool](class_bool.md#class-bool) **property\_get\_spawn**(path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-scenereplicationconfig-method-property-get-spawn)

Returns `true` if the property identified by the given `path` is configured to be synchronized on spawn.

* * *

[bool](class_bool.md#class-bool) **property\_get\_sync**(path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-scenereplicationconfig-method-property-get-sync)

**Deprecated:** Use [property\_get\_replication\_mode()](#class-scenereplicationconfig-method-property-get-replication-mode) instead.

Returns `true` if the property identified by the given `path` is configured to be synchronized on process.

* * *

[bool](class_bool.md#class-bool) **property\_get\_watch**(path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-scenereplicationconfig-method-property-get-watch)

**Deprecated:** Use [property\_get\_replication\_mode()](#class-scenereplicationconfig-method-property-get-replication-mode) instead.

Returns `true` if the property identified by the given `path` is configured to be reliably synchronized when changes are detected on process.

* * *

void **property\_set\_replication\_mode**(path: [NodePath](class_nodepath.md#class-nodepath), mode: [ReplicationMode](#enum-scenereplicationconfig-replicationmode)) [🔗](#class-scenereplicationconfig-method-property-set-replication-mode)

Sets the synchronization mode for the property identified by the given `path`.

* * *

void **property\_set\_spawn**(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-scenereplicationconfig-method-property-set-spawn)

Sets whether the property identified by the given `path` is configured to be synchronized on spawn.

* * *

void **property\_set\_sync**(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-scenereplicationconfig-method-property-set-sync)

**Deprecated:** Use [property\_set\_replication\_mode()](#class-scenereplicationconfig-method-property-set-replication-mode) with [REPLICATION\_MODE\_ALWAYS](#class-scenereplicationconfig-constant-replication-mode-always) instead.

Sets whether the property identified by the given `path` is configured to be synchronized on process.

* * *

void **property\_set\_watch**(path: [NodePath](class_nodepath.md#class-nodepath), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-scenereplicationconfig-method-property-set-watch)

**Deprecated:** Use [property\_set\_replication\_mode()](#class-scenereplicationconfig-method-property-set-replication-mode) with [REPLICATION\_MODE\_ON\_CHANGE](#class-scenereplicationconfig-constant-replication-mode-on-change) instead.

Sets whether the property identified by the given `path` is configured to be reliably synchronized when changes are detected on process.

* * *

void **remove\_property**(path: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-scenereplicationconfig-method-remove-property)

Removes the property identified by the given `path` from the configuration.

[Previous](class_richtexteffect.md "RichTextEffect") [Next](class_script.md "Script")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_richtexteffect.md "RichTextEffect") [Next](class_script.md "Script")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).