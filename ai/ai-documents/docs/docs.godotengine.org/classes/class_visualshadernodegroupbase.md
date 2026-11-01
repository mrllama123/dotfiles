---
title: VisualShaderNodeGroupBase — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodegroupbase.html
crawled_at: "2026-08-13T10:21:29+12:00"
content_hash: ef7057bdf2177bf3ee3e9cf3d1cfbf91a5420e13ff165f0ca90d3ecae2f85cb8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeGroupBase

* * *

# VisualShaderNodeGroupBase

**Inherits:** [VisualShaderNodeResizableBase](class_visualshadernoderesizablebase.md#class-visualshadernoderesizablebase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeExpression](class_visualshadernodeexpression.md#class-visualshadernodeexpression)

Base class for a family of nodes with variable number of input and output ports within the visual shader graph.

## Description

Currently, has no direct usage, use the derived classes instead.

## Methods

|     |     |
| --- | --- |
| void | [add\_input\_port](#class-visualshadernodegroupbase-method-add-input-port)(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [add\_output\_port](#class-visualshadernodegroupbase-method-add-output-port)(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [clear\_input\_ports](#class-visualshadernodegroupbase-method-clear-input-ports)() |
| void | [clear\_output\_ports](#class-visualshadernodegroupbase-method-clear-output-ports)() |
| [int](class_int.md#class-int) | [get\_free\_input\_port\_id](#class-visualshadernodegroupbase-method-get-free-input-port-id)() const |
| [int](class_int.md#class-int) | [get\_free\_output\_port\_id](#class-visualshadernodegroupbase-method-get-free-output-port-id)() const |
| [int](class_int.md#class-int) | [get\_input\_port\_count](#class-visualshadernodegroupbase-method-get-input-port-count)() const |
| [String](class_string.md#class-string) | [get\_inputs](#class-visualshadernodegroupbase-method-get-inputs)() const |
| [int](class_int.md#class-int) | [get\_output\_port\_count](#class-visualshadernodegroupbase-method-get-output-port-count)() const |
| [String](class_string.md#class-string) | [get\_outputs](#class-visualshadernodegroupbase-method-get-outputs)() const |
| [bool](class_bool.md#class-bool) | [has\_input\_port](#class-visualshadernodegroupbase-method-has-input-port)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_output\_port](#class-visualshadernodegroupbase-method-has-output-port)(id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_port\_name](#class-visualshadernodegroupbase-method-is-valid-port-name)(name: [String](class_string.md#class-string)) const |
| void | [remove\_input\_port](#class-visualshadernodegroupbase-method-remove-input-port)(id: [int](class_int.md#class-int)) |
| void | [remove\_output\_port](#class-visualshadernodegroupbase-method-remove-output-port)(id: [int](class_int.md#class-int)) |
| void | [set\_input\_port\_name](#class-visualshadernodegroupbase-method-set-input-port-name)(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_input\_port\_type](#class-visualshadernodegroupbase-method-set-input-port-type)(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) |
| void | [set\_inputs](#class-visualshadernodegroupbase-method-set-inputs)(inputs: [String](class_string.md#class-string)) |
| void | [set\_output\_port\_name](#class-visualshadernodegroupbase-method-set-output-port-name)(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) |
| void | [set\_output\_port\_type](#class-visualshadernodegroupbase-method-set-output-port-type)(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) |
| void | [set\_outputs](#class-visualshadernodegroupbase-method-set-outputs)(outputs: [String](class_string.md#class-string)) |

* * *

## Method Descriptions

void **add\_input\_port**(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-add-input-port)

Adds an input port with the specified `type` (see [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)) and `name`.

* * *

void **add\_output\_port**(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-add-output-port)

Adds an output port with the specified `type` (see [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)) and `name`.

* * *

void **clear\_input\_ports**() [🔗](#class-visualshadernodegroupbase-method-clear-input-ports)

Removes all previously specified input ports.

* * *

void **clear\_output\_ports**() [🔗](#class-visualshadernodegroupbase-method-clear-output-ports)

Removes all previously specified output ports.

* * *

[int](class_int.md#class-int) **get\_free\_input\_port\_id**() const [🔗](#class-visualshadernodegroupbase-method-get-free-input-port-id)

Returns a free input port ID which can be used in [add\_input\_port()](#class-visualshadernodegroupbase-method-add-input-port).

* * *

[int](class_int.md#class-int) **get\_free\_output\_port\_id**() const [🔗](#class-visualshadernodegroupbase-method-get-free-output-port-id)

Returns a free output port ID which can be used in [add\_output\_port()](#class-visualshadernodegroupbase-method-add-output-port).

* * *

[int](class_int.md#class-int) **get\_input\_port\_count**() const [🔗](#class-visualshadernodegroupbase-method-get-input-port-count)

Returns the number of input ports in use. Alternative for [get\_free\_input\_port\_id()](#class-visualshadernodegroupbase-method-get-free-input-port-id).

* * *

[String](class_string.md#class-string) **get\_inputs**() const [🔗](#class-visualshadernodegroupbase-method-get-inputs)

Returns a [String](class_string.md#class-string) description of the input ports as a colon-separated list using the format `id,type,name;` (see [add\_input\_port()](#class-visualshadernodegroupbase-method-add-input-port)).

* * *

[int](class_int.md#class-int) **get\_output\_port\_count**() const [🔗](#class-visualshadernodegroupbase-method-get-output-port-count)

Returns the number of output ports in use. Alternative for [get\_free\_output\_port\_id()](#class-visualshadernodegroupbase-method-get-free-output-port-id).

* * *

[String](class_string.md#class-string) **get\_outputs**() const [🔗](#class-visualshadernodegroupbase-method-get-outputs)

Returns a [String](class_string.md#class-string) description of the output ports as a colon-separated list using the format `id,type,name;` (see [add\_output\_port()](#class-visualshadernodegroupbase-method-add-output-port)).

* * *

[bool](class_bool.md#class-bool) **has\_input\_port**(id: [int](class_int.md#class-int)) const [🔗](#class-visualshadernodegroupbase-method-has-input-port)

Returns `true` if the specified input port exists.

* * *

[bool](class_bool.md#class-bool) **has\_output\_port**(id: [int](class_int.md#class-int)) const [🔗](#class-visualshadernodegroupbase-method-has-output-port)

Returns `true` if the specified output port exists.

* * *

[bool](class_bool.md#class-bool) **is\_valid\_port\_name**(name: [String](class_string.md#class-string)) const [🔗](#class-visualshadernodegroupbase-method-is-valid-port-name)

Returns `true` if the specified port name does not override an existed port name and is valid within the shader.

* * *

void **remove\_input\_port**(id: [int](class_int.md#class-int)) [🔗](#class-visualshadernodegroupbase-method-remove-input-port)

Removes the specified input port.

* * *

void **remove\_output\_port**(id: [int](class_int.md#class-int)) [🔗](#class-visualshadernodegroupbase-method-remove-output-port)

Removes the specified output port.

* * *

void **set\_input\_port\_name**(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-set-input-port-name)

Renames the specified input port.

* * *

void **set\_input\_port\_type**(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) [🔗](#class-visualshadernodegroupbase-method-set-input-port-type)

Sets the specified input port's type (see [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)).

* * *

void **set\_inputs**(inputs: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-set-inputs)

Defines all input ports using a [String](class_string.md#class-string) formatted as a colon-separated list: `id,type,name;` (see [add\_input\_port()](#class-visualshadernodegroupbase-method-add-input-port)).

* * *

void **set\_output\_port\_name**(id: [int](class_int.md#class-int), name: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-set-output-port-name)

Renames the specified output port.

* * *

void **set\_output\_port\_type**(id: [int](class_int.md#class-int), type: [int](class_int.md#class-int)) [🔗](#class-visualshadernodegroupbase-method-set-output-port-type)

Sets the specified output port's type (see [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)).

* * *

void **set\_outputs**(outputs: [String](class_string.md#class-string)) [🔗](#class-visualshadernodegroupbase-method-set-outputs)

Defines all output ports using a [String](class_string.md#class-string) formatted as a colon-separated list: `id,type,name;` (see [add\_output\_port()](#class-visualshadernodegroupbase-method-add-output-port)).

[Previous](class_visualshadernodeglobalexpression.md "VisualShaderNodeGlobalExpression") [Next](class_visualshadernodeif.md "VisualShaderNodeIf")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeglobalexpression.md "VisualShaderNodeGlobalExpression") [Next](class_visualshadernodeif.md "VisualShaderNodeIf")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).