---
title: VisualShaderNodeFrame — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeframe.html
crawled_at: "2026-08-13T10:33:10+12:00"
content_hash: 82b0d374a8cf5feb10b53400be3ef83c482d37c5a8b7ee323aef2f61572e91bb
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeFrame

* * *

# VisualShaderNodeFrame

**Inherits:** [VisualShaderNodeResizableBase](class_visualshadernoderesizablebase.md#class-visualshadernoderesizablebase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeComment](class_visualshadernodecomment.md#class-visualshadernodecomment)

A frame other visual shader nodes can be attached to for better organization.

## Description

A rectangular frame that can be used to group visual shader nodes together to improve organization.

Nodes attached to the frame will move with it when it is dragged and it can automatically resize to enclose all attached nodes.

Its title, description and color can be customized.

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [attached\_nodes](#class-visualshadernodeframe-property-attached-nodes) | `PackedInt32Array()` |
| [bool](class_bool.md#class-bool) | [autoshrink](#class-visualshadernodeframe-property-autoshrink) | `true` |
| [Color](class_color.md#class-color) | [tint\_color](#class-visualshadernodeframe-property-tint-color) | `Color(0.3, 0.3, 0.3, 0.75)` |
| [bool](class_bool.md#class-bool) | [tint\_color\_enabled](#class-visualshadernodeframe-property-tint-color-enabled) | `false` |
| [String](class_string.md#class-string) | [title](#class-visualshadernodeframe-property-title) | `"Title"` |

## Methods

|     |     |
| --- | --- |
| void | [add\_attached\_node](#class-visualshadernodeframe-method-add-attached-node)(node: [int](class_int.md#class-int)) |
| void | [remove\_attached\_node](#class-visualshadernodeframe-method-remove-attached-node)(node: [int](class_int.md#class-int)) |

* * *

## Property Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **attached\_nodes** = `PackedInt32Array()` [🔗](#class-visualshadernodeframe-property-attached-nodes)

- void **set\_attached\_nodes**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_attached\_nodes**()


The list of nodes attached to the frame.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[bool](class_bool.md#class-bool) **autoshrink** = `true` [🔗](#class-visualshadernodeframe-property-autoshrink)

- void **set\_autoshrink\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_autoshrink\_enabled**()


If `true`, the frame will automatically resize to enclose all attached nodes.

* * *

[Color](class_color.md#class-color) **tint\_color** = `Color(0.3, 0.3, 0.3, 0.75)` [🔗](#class-visualshadernodeframe-property-tint-color)

- void **set\_tint\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_tint\_color**()


The color of the frame when [tint\_color\_enabled](#class-visualshadernodeframe-property-tint-color-enabled) is `true`.

* * *

[bool](class_bool.md#class-bool) **tint\_color\_enabled** = `false` [🔗](#class-visualshadernodeframe-property-tint-color-enabled)

- void **set\_tint\_color\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_tint\_color\_enabled**()


If `true`, the frame will be tinted with the color specified in [tint\_color](#class-visualshadernodeframe-property-tint-color).

* * *

[String](class_string.md#class-string) **title** = `"Title"` [🔗](#class-visualshadernodeframe-property-title)

- void **set\_title**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_title**()


The title of the node.

* * *

## Method Descriptions

void **add\_attached\_node**(node: [int](class_int.md#class-int)) [🔗](#class-visualshadernodeframe-method-add-attached-node)

Adds a node to the list of nodes attached to the frame. Should not be called directly, use the [VisualShader.attach\_node\_to\_frame()](class_visualshader.md#class-visualshader-method-attach-node-to-frame) method instead.

* * *

void **remove\_attached\_node**(node: [int](class_int.md#class-int)) [🔗](#class-visualshadernodeframe-method-remove-attached-node)

Removes a node from the list of nodes attached to the frame. Should not be called directly, use the [VisualShader.detach\_node\_from\_frame()](class_visualshader.md#class-visualshader-method-detach-node-from-frame) method instead.

[Previous](class_visualshadernodefloatparameter.md "VisualShaderNodeFloatParameter") [Next](class_visualshadernodefresnel.md "VisualShaderNodeFresnel")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodefloatparameter.md "VisualShaderNodeFloatParameter") [Next](class_visualshadernodefresnel.md "VisualShaderNodeFresnel")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).