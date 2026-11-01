---
title: VisualShaderNodeCustom — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecustom.html
crawled_at: "2026-08-13T10:37:03+12:00"
content_hash: 4f10440a03c24aaecb2ab057960999097a172e8a0e63cb588d09f0de3d38bdda
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeCustom

* * *

# VisualShaderNodeCustom

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Virtual class to define custom [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) s for use in the Visual Shader Editor.

## Description

By inheriting this class you can create a custom [VisualShader](class_visualshader.md#class-visualshader) script addon which will be automatically added to the Visual Shader Editor. The [VisualShaderNode](class_visualshadernode.md#class-visualshadernode)'s behavior is defined by overriding the provided virtual methods.

In order for the node to be registered as an editor addon, you must use the `@tool` annotation and provide a `class_name` for your custom script. For example:

```
@tool
extends VisualShaderNodeCustom
class_name VisualShaderNodeNoise

```

## Tutorials

- [Visual Shader plugins](../tutorials/plugins/editor/visual_shader_plugins.md)


## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [\_get\_category](#class-visualshadernodecustom-private-method-get-category)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_code](#class-visualshadernodecustom-private-method-get-code)(input\_vars: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], output\_vars: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_default\_input\_port](#class-visualshadernodecustom-private-method-get-default-input-port)(type: [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_description](#class-visualshadernodecustom-private-method-get-description)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_func\_code](#class-visualshadernodecustom-private-method-get-func-code)(mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_global\_code](#class-visualshadernodecustom-private-method-get-global-code)(mode: [Mode](class_shader.md#enum-shader-mode)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_input\_port\_count](#class-visualshadernodecustom-private-method-get-input-port-count)() virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_input\_port\_default\_value](#class-visualshadernodecustom-private-method-get-input-port-default-value)(port: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_input\_port\_name](#class-visualshadernodecustom-private-method-get-input-port-name)(port: [int](class_int.md#class-int)) virtualconst |
| [PortType](class_visualshadernode.md#enum-visualshadernode-porttype) | [\_get\_input\_port\_type](#class-visualshadernodecustom-private-method-get-input-port-type)(port: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-visualshadernodecustom-private-method-get-name)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_output\_port\_count](#class-visualshadernodecustom-private-method-get-output-port-count)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_output\_port\_name](#class-visualshadernodecustom-private-method-get-output-port-name)(port: [int](class_int.md#class-int)) virtualconst |
| [PortType](class_visualshadernode.md#enum-visualshadernode-porttype) | [\_get\_output\_port\_type](#class-visualshadernodecustom-private-method-get-output-port-type)(port: [int](class_int.md#class-int)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_property\_count](#class-visualshadernodecustom-private-method-get-property-count)() virtualconst |
| [int](class_int.md#class-int) | [\_get\_property\_default\_index](#class-visualshadernodecustom-private-method-get-property-default-index)(index: [int](class_int.md#class-int)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_property\_name](#class-visualshadernodecustom-private-method-get-property-name)(index: [int](class_int.md#class-int)) virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_property\_options](#class-visualshadernodecustom-private-method-get-property-options)(index: [int](class_int.md#class-int)) virtualconst |
| [PortType](class_visualshadernode.md#enum-visualshadernode-porttype) | [\_get\_return\_icon\_type](#class-visualshadernodecustom-private-method-get-return-icon-type)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_available](#class-visualshadernodecustom-private-method-is-available)(mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_highend](#class-visualshadernodecustom-private-method-is-highend)() virtualconst |
| [int](class_int.md#class-int) | [get\_option\_index](#class-visualshadernodecustom-method-get-option-index)(option: [int](class_int.md#class-int)) const |

* * *

## Method Descriptions

[String](class_string.md#class-string) **\_get\_category**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-category)

Override this method to define the path to the associated custom node in the Visual Shader Editor's members dialog. The path may look like `"MyGame/MyFunctions/Noise"`.

Defining this method is **optional**. If not overridden, the node will be filed under the "Addons" category.

* * *

[String](class_string.md#class-string) **\_get\_code**(input\_vars: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], output\_vars: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\], mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-code)

Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).

The `input_vars` and `output_vars` arrays contain the string names of the various input and output variables, as defined by `_get_input_*` and `_get_output_*` virtual methods in this class.

The output ports can be assigned values in the shader code. For example, `return output_vars[0] + " = " + input_vars[0] + ";"`.

You can customize the generated code based on the shader `mode` and/or `type`.

Defining this method is **required**.

* * *

[int](class_int.md#class-int) **\_get\_default\_input\_port**(type: [PortType](class_visualshadernode.md#enum-visualshadernode-porttype)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-default-input-port)

Override this method to define the input port which should be connected by default when this node is created as a result of dragging a connection from an existing node to the empty space on the graph.

Defining this method is **optional**. If not overridden, the connection will be created to the first valid port.

* * *

[String](class_string.md#class-string) **\_get\_description**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-description)

Override this method to define the description of the associated custom node in the Visual Shader Editor's members dialog.

Defining this method is **optional**.

* * *

[String](class_string.md#class-string) **\_get\_func\_code**(mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-func-code)

Override this method to add a shader code to the beginning of each shader function (once). The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).

If there are multiple custom nodes of different types which use this feature the order of each insertion is undefined.

You can customize the generated code based on the shader `mode` and/or `type`.

Defining this method is **optional**.

* * *

[String](class_string.md#class-string) **\_get\_global\_code**(mode: [Mode](class_shader.md#enum-shader-mode)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-global-code)

Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).

Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.

You can customize the generated code based on the shader `mode`.

Defining this method is **optional**.

* * *

[int](class_int.md#class-int) **\_get\_input\_port\_count**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-input-port-count)

Override this method to define the number of input ports of the associated custom node.

Defining this method is **required**. If not overridden, the node has no input ports.

* * *

[Variant](class_variant.md#class-variant) **\_get\_input\_port\_default\_value**(port: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-input-port-default-value)

Override this method to define the default value for the specified input port. Prefer use this over [VisualShaderNode.set\_input\_port\_default\_value()](class_visualshadernode.md#class-visualshadernode-method-set-input-port-default-value).

Defining this method is **required**. If not overridden, the node has no default values for their input ports.

* * *

[String](class_string.md#class-string) **\_get\_input\_port\_name**(port: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-input-port-name)

Override this method to define the names of input ports of the associated custom node. The names are used both for the input slots in the editor and as identifiers in the shader code, and are passed in the `input_vars` array in [\_get\_code()](#class-visualshadernodecustom-private-method-get-code).

Defining this method is **optional**, but recommended. If not overridden, input ports are named as `"in" + str(port)`.

* * *

[PortType](class_visualshadernode.md#enum-visualshadernode-porttype) **\_get\_input\_port\_type**(port: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-input-port-type)

Override this method to define the returned type of each input port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, input ports will return the [VisualShaderNode.PORT\_TYPE\_SCALAR](class_visualshadernode.md#class-visualshadernode-constant-port-type-scalar) type.

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-name)

Override this method to define the name of the associated custom node in the Visual Shader Editor's members dialog and graph.

Defining this method is **optional**, but recommended. If not overridden, the node will be named as "Unnamed".

* * *

[int](class_int.md#class-int) **\_get\_output\_port\_count**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-output-port-count)

Override this method to define the number of output ports of the associated custom node.

Defining this method is **required**. If not overridden, the node has no output ports.

* * *

[String](class_string.md#class-string) **\_get\_output\_port\_name**(port: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-output-port-name)

Override this method to define the names of output ports of the associated custom node. The names are used both for the output slots in the editor and as identifiers in the shader code, and are passed in the `output_vars` array in [\_get\_code()](#class-visualshadernodecustom-private-method-get-code).

Defining this method is **optional**, but recommended. If not overridden, output ports are named as `"out" + str(port)`.

* * *

[PortType](class_visualshadernode.md#enum-visualshadernode-porttype) **\_get\_output\_port\_type**(port: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-output-port-type)

Override this method to define the returned type of each output port of the associated custom node.

Defining this method is **optional**, but recommended. If not overridden, output ports will return the [VisualShaderNode.PORT\_TYPE\_SCALAR](class_visualshadernode.md#class-visualshadernode-constant-port-type-scalar) type.

* * *

[int](class_int.md#class-int) **\_get\_property\_count**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-property-count)

Override this method to define the number of the properties.

Defining this method is **optional**.

* * *

[int](class_int.md#class-int) **\_get\_property\_default\_index**(index: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-property-default-index)

Override this method to define the default index of the property of the associated custom node.

Defining this method is **optional**.

* * *

[String](class_string.md#class-string) **\_get\_property\_name**(index: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-property-name)

Override this method to define the names of the property of the associated custom node.

Defining this method is **optional**.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_property\_options**(index: [int](class_int.md#class-int)) virtualconst [🔗](#class-visualshadernodecustom-private-method-get-property-options)

Override this method to define the options inside the drop-down list property of the associated custom node.

Defining this method is **optional**.

* * *

[PortType](class_visualshadernode.md#enum-visualshadernode-porttype) **\_get\_return\_icon\_type**() virtualconst [🔗](#class-visualshadernodecustom-private-method-get-return-icon-type)

Override this method to define the return icon of the associated custom node in the Visual Shader Editor's members dialog.

Defining this method is **optional**. If not overridden, no return icon is shown.

* * *

[bool](class_bool.md#class-bool) **\_is\_available**(mode: [Mode](class_shader.md#enum-shader-mode), type: [Type](class_visualshader.md#enum-visualshader-type)) virtualconst [🔗](#class-visualshadernodecustom-private-method-is-available)

Override this method to prevent the node to be visible in the member dialog for the certain `mode` and/or `type`.

Defining this method is **optional**. If not overridden, it's `true`.

* * *

[bool](class_bool.md#class-bool) **\_is\_highend**() virtualconst [🔗](#class-visualshadernodecustom-private-method-is-highend)

Override this method to enable high-end mark in the Visual Shader Editor's members dialog.

Defining this method is **optional**. If not overridden, it's `false`.

* * *

[int](class_int.md#class-int) **get\_option\_index**(option: [int](class_int.md#class-int)) const [🔗](#class-visualshadernodecustom-method-get-option-index)

Returns the selected index of the drop-down list option within a graph. You may use this function to define the specific behavior in the [\_get\_code()](#class-visualshadernodecustom-private-method-get-code) or [\_get\_global\_code()](#class-visualshadernodecustom-private-method-get-global-code).

[Previous](class_visualshadernodecurvexyztexture.md "VisualShaderNodeCurveXYZTexture") [Next](class_visualshadernodederivativefunc.md "VisualShaderNodeDerivativeFunc")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodecurvexyztexture.md "VisualShaderNodeCurveXYZTexture") [Next](class_visualshadernodederivativefunc.md "VisualShaderNodeDerivativeFunc")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).