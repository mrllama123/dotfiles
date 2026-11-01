---
title: VisualShader — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshader.html
crawled_at: "2026-08-13T10:19:49+12:00"
content_hash: 1033d727f14f4001fcfda9c7bc7c01bb90aba82edd9ee4482d7bf2e27b0b43be
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShader

* * *

# VisualShader

**Inherits:** [Shader](class_shader.md#class-shader) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A custom shader program with a visual editor.

## Description

This class provides a graph-like visual editor for creating a [Shader](class_shader.md#class-shader). Although **VisualShader** s do not require coding, they share the same logic with script shaders. They use [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) s that can be connected to each other to control the flow of the shader. The visual shader graph is converted to a script shader behind the scenes.

## Tutorials

- [Using VisualShaders](../tutorials/shaders/visual_shaders.md)


## Properties

|     |     |
| --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [graph\_offset](#class-visualshader-property-graph-offset) |

## Methods

|     |     |
| --- | --- |
| void | [add\_node](#class-visualshader-method-add-node)(type: [Type](#enum-visualshader-type), node: [VisualShaderNode](class_visualshadernode.md#class-visualshadernode), position: [Vector2](class_vector2.md#class-vector2), id: [int](class_int.md#class-int)) |
| void | [add\_varying](#class-visualshader-method-add-varying)(name: [String](class_string.md#class-string), mode: [VaryingMode](#enum-visualshader-varyingmode), type: [VaryingType](#enum-visualshader-varyingtype)) |
| void | [attach\_node\_to\_frame](#class-visualshader-method-attach-node-to-frame)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), frame: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [can\_connect\_nodes](#class-visualshader-method-can-connect-nodes)(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_nodes](#class-visualshader-method-connect-nodes)(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) |
| void | [connect\_nodes\_forced](#class-visualshader-method-connect-nodes-forced)(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) |
| void | [detach\_node\_from\_frame](#class-visualshader-method-detach-node-from-frame)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) |
| void | [disconnect\_nodes](#class-visualshader-method-disconnect-nodes)(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) |
| [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) | [get\_node](#class-visualshader-method-get-node)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_node\_connections](#class-visualshader-method-get-node-connections)(type: [Type](#enum-visualshader-type)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_node\_list](#class-visualshader-method-get-node-list)(type: [Type](#enum-visualshader-type)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_node\_position](#class-visualshader-method-get-node-position)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_valid\_node\_id](#class-visualshader-method-get-valid-node-id)(type: [Type](#enum-visualshader-type)) const |
| [bool](class_bool.md#class-bool) | [has\_varying](#class-visualshader-method-has-varying)(name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_node\_connection](#class-visualshader-method-is-node-connection)(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) const |
| void | [remove\_node](#class-visualshader-method-remove-node)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) |
| void | [remove\_varying](#class-visualshader-method-remove-varying)(name: [String](class_string.md#class-string)) |
| void | [replace\_node](#class-visualshader-method-replace-node)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), new\_class: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_mode](#class-visualshader-method-set-mode)(mode: [Mode](class_shader.md#enum-shader-mode)) |
| void | [set\_node\_position](#class-visualshader-method-set-node-position)(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Enumerations

enum **Type**: [🔗](#enum-visualshader-type)

[Type](#enum-visualshader-type) **TYPE\_VERTEX** = `0`

A vertex shader, operating on vertices.

[Type](#enum-visualshader-type) **TYPE\_FRAGMENT** = `1`

A fragment shader, operating on fragments (pixels).

[Type](#enum-visualshader-type) **TYPE\_LIGHT** = `2`

A shader for light calculations.

[Type](#enum-visualshader-type) **TYPE\_START** = `3`

A function for the "start" stage of particle shader.

[Type](#enum-visualshader-type) **TYPE\_PROCESS** = `4`

A function for the "process" stage of particle shader.

[Type](#enum-visualshader-type) **TYPE\_COLLIDE** = `5`

A function for the "collide" stage (particle collision handler) of particle shader.

[Type](#enum-visualshader-type) **TYPE\_START\_CUSTOM** = `6`

A function for the "start" stage of particle shader, with customized output.

[Type](#enum-visualshader-type) **TYPE\_PROCESS\_CUSTOM** = `7`

A function for the "process" stage of particle shader, with customized output.

[Type](#enum-visualshader-type) **TYPE\_SKY** = `8`

A shader for 3D environment's sky.

[Type](#enum-visualshader-type) **TYPE\_FOG** = `9`

A compute shader that runs for each froxel of the volumetric fog map.

[Type](#enum-visualshader-type) **TYPE\_MAX** = `10`

Represents the size of the [Type](#enum-visualshader-type) enum.

* * *

enum **VaryingMode**: [🔗](#enum-visualshader-varyingmode)

[VaryingMode](#enum-visualshader-varyingmode) **VARYING\_MODE\_VERTEX\_TO\_FRAG\_LIGHT** = `0`

Varying is passed from `Vertex` function to `Fragment` and `Light` functions.

[VaryingMode](#enum-visualshader-varyingmode) **VARYING\_MODE\_FRAG\_TO\_LIGHT** = `1`

Varying is passed from `Fragment` function to `Light` function.

[VaryingMode](#enum-visualshader-varyingmode) **VARYING\_MODE\_MAX** = `2`

Represents the size of the [VaryingMode](#enum-visualshader-varyingmode) enum.

* * *

enum **VaryingType**: [🔗](#enum-visualshader-varyingtype)

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_FLOAT** = `0`

Varying is of type [float](class_float.md#class-float).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_INT** = `1`

Varying is of type [int](class_int.md#class-int).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_UINT** = `2`

Varying is of type unsigned [int](class_int.md#class-int).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_VECTOR\_2D** = `3`

Varying is of type [Vector2](class_vector2.md#class-vector2).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_VECTOR\_3D** = `4`

Varying is of type [Vector3](class_vector3.md#class-vector3).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_VECTOR\_4D** = `5`

Varying is of type [Vector4](class_vector4.md#class-vector4).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_BOOLEAN** = `6`

Varying is of type [bool](class_bool.md#class-bool).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_TRANSFORM** = `7`

Varying is of type [Transform3D](class_transform3d.md#class-transform3d).

[VaryingType](#enum-visualshader-varyingtype) **VARYING\_TYPE\_MAX** = `8`

Represents the size of the [VaryingType](#enum-visualshader-varyingtype) enum.

* * *

## Constants

**NODE\_ID\_INVALID** = `-1` [🔗](#class-visualshader-constant-node-id-invalid)

Indicates an invalid **VisualShader** node.

**NODE\_ID\_OUTPUT** = `0` [🔗](#class-visualshader-constant-node-id-output)

Indicates an output node of **VisualShader**.

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **graph\_offset** [🔗](#class-visualshader-property-graph-offset)

- void **set\_graph\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_graph\_offset**()


**Deprecated:** This property does nothing and always equals to zero.

Deprecated.

* * *

## Method Descriptions

void **add\_node**(type: [Type](#enum-visualshader-type), node: [VisualShaderNode](class_visualshadernode.md#class-visualshadernode), position: [Vector2](class_vector2.md#class-vector2), id: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-add-node)

Adds the specified `node` to the shader.

* * *

void **add\_varying**(name: [String](class_string.md#class-string), mode: [VaryingMode](#enum-visualshader-varyingmode), type: [VaryingType](#enum-visualshader-varyingtype)) [🔗](#class-visualshader-method-add-varying)

Adds a new varying value node to the shader.

* * *

void **attach\_node\_to\_frame**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), frame: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-attach-node-to-frame)

Attaches the given node to the given frame.

* * *

[bool](class_bool.md#class-bool) **can\_connect\_nodes**(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) const [🔗](#class-visualshader-method-can-connect-nodes)

Returns `true` if the specified nodes and ports can be connected together.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_nodes**(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-connect-nodes)

Connects the specified nodes and ports.

* * *

void **connect\_nodes\_forced**(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-connect-nodes-forced)

Connects the specified nodes and ports, even if they can't be connected. Such connection is invalid and will not function properly.

* * *

void **detach\_node\_from\_frame**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-detach-node-from-frame)

Detaches the given node from the frame it is attached to.

* * *

void **disconnect\_nodes**(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-disconnect-nodes)

Connects the specified nodes and ports.

* * *

[VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **get\_node**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) const [🔗](#class-visualshader-method-get-node)

Returns the shader node instance with specified `type` and `id`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_node\_connections**(type: [Type](#enum-visualshader-type)) const [🔗](#class-visualshader-method-get-node-connections)

Returns the list of connected nodes with the specified type.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_node\_list**(type: [Type](#enum-visualshader-type)) const [🔗](#class-visualshader-method-get-node-list)

Returns the list of all nodes in the shader with the specified type.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_node\_position**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) const [🔗](#class-visualshader-method-get-node-position)

Returns the position of the specified node within the shader graph.

* * *

[int](class_int.md#class-int) **get\_valid\_node\_id**(type: [Type](#enum-visualshader-type)) const [🔗](#class-visualshader-method-get-valid-node-id)

Returns next valid node ID that can be added to the shader graph.

* * *

[bool](class_bool.md#class-bool) **has\_varying**(name: [String](class_string.md#class-string)) const [🔗](#class-visualshader-method-has-varying)

Returns `true` if the shader has a varying with the given `name`.

* * *

[bool](class_bool.md#class-bool) **is\_node\_connection**(type: [Type](#enum-visualshader-type), from\_node: [int](class_int.md#class-int), from\_port: [int](class_int.md#class-int), to\_node: [int](class_int.md#class-int), to\_port: [int](class_int.md#class-int)) const [🔗](#class-visualshader-method-is-node-connection)

Returns `true` if the specified node and port connection exist.

* * *

void **remove\_node**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int)) [🔗](#class-visualshader-method-remove-node)

Removes the specified node from the shader.

* * *

void **remove\_varying**(name: [String](class_string.md#class-string)) [🔗](#class-visualshader-method-remove-varying)

Removes a varying value node with the given `name`. Prints an error if a node with this name is not found.

* * *

void **replace\_node**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), new\_class: [StringName](class_stringname.md#class-stringname)) [🔗](#class-visualshader-method-replace-node)

Replaces the specified node with a node of new class type.

* * *

void **set\_mode**(mode: [Mode](class_shader.md#enum-shader-mode)) [🔗](#class-visualshader-method-set-mode)

Sets the mode of this shader.

* * *

void **set\_node\_position**(type: [Type](#enum-visualshader-type), id: [int](class_int.md#class-int), position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-visualshader-method-set-node-position)

Sets the position of the specified node.

[Previous](class_viewporttexture.md "ViewportTexture") [Next](class_visualshadernode.md "VisualShaderNode")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_viewporttexture.md "ViewportTexture") [Next](class_visualshadernode.md "VisualShaderNode")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).