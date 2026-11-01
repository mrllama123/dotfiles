---
title: TextMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_textmesh.html
crawled_at: "2026-08-13T10:31:07+12:00"
content_hash: 8084a21a12bd3fa96a9e462c734b2bad4c0a5accc98cb2aff5cd80fe73f3c23e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextMesh

* * *

# TextMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Generate a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) from the text.

## Description

Generate a [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) from the text.

TextMesh can be generated only when using dynamic fonts with vector glyph contours. Bitmap fonts (including bitmap data in the TrueType/OpenType containers, like color emoji fonts) are not supported.

The UV layout is arranged in 4 horizontal strips, top to bottom: 40% of the height for the front face, 40% for the back face, 10% for the outer edges and 10% for the inner edges.

## Tutorials

- [3D text](../tutorials/3d/3d_text.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-textmesh-property-autowrap-mode) | `0` |
| [float](class_float.md#class-float) | [curve\_step](#class-textmesh-property-curve-step) | `0.5` |
| [float](class_float.md#class-float) | [depth](#class-textmesh-property-depth) | `0.05` |
| [Font](class_font.md#class-font) | [font](#class-textmesh-property-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-textmesh-property-font-size) | `16` |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [horizontal\_alignment](#class-textmesh-property-horizontal-alignment) | `1` |
| BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] | [justification\_flags](#class-textmesh-property-justification-flags) | `163` |
| [String](class_string.md#class-string) | [language](#class-textmesh-property-language) | `""` |
| [float](class_float.md#class-float) | [line\_spacing](#class-textmesh-property-line-spacing) | `0.0` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-textmesh-property-offset) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [pixel\_size](#class-textmesh-property-pixel-size) | `0.01` |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-textmesh-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-textmesh-property-structured-text-bidi-override-options) | `[]` |
| [String](class_string.md#class-string) | [text](#class-textmesh-property-text) | `""` |
| [Direction](class_textserver.md#enum-textserver-direction) | [text\_direction](#class-textmesh-property-text-direction) | `0` |
| [bool](class_bool.md#class-bool) | [uppercase](#class-textmesh-property-uppercase) | `false` |
| [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) | [vertical\_alignment](#class-textmesh-property-vertical-alignment) | `1` |
| [float](class_float.md#class-float) | [width](#class-textmesh-property-width) | `500.0` |

* * *

## Property Descriptions

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `0` [🔗](#class-textmesh-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

* * *

[float](class_float.md#class-float) **curve\_step** = `0.5` [🔗](#class-textmesh-property-curve-step)

- void **set\_curve\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_curve\_step**()


Step (in pixels) used to approximate Bézier curves.

* * *

[float](class_float.md#class-float) **depth** = `0.05` [🔗](#class-textmesh-property-depth)

- void **set\_depth**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth**()


Depths of the mesh, if set to `0.0` only front surface, is generated, and UV layout is changed to use full texture for the front face only.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-textmesh-property-font)

- void **set\_font**(value: [Font](class_font.md#class-font))

- [Font](class_font.md#class-font) **get\_font**()


Font configuration used to display text.

* * *

[int](class_int.md#class-int) **font\_size** = `16` [🔗](#class-textmesh-property-font-size)

- void **set\_font\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_font\_size**()


Font size of the **TextMesh**'s text.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **horizontal\_alignment** = `1` [🔗](#class-textmesh-property-horizontal-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Controls the text's horizontal alignment. Supports left, center, right, and fill, or justify.

* * *

BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **justification\_flags** = `163` [🔗](#class-textmesh-property-justification-flags)

- void **set\_justification\_flags**(value: BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\])

- BitField\[ [JustificationFlag](class_textserver.md#enum-textserver-justificationflag)\] **get\_justification\_flags**()


Line fill alignment rules.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-textmesh-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for text shaping algorithms, if left empty current locale is used instead.

* * *

[float](class_float.md#class-float) **line\_spacing** = `0.0` [🔗](#class-textmesh-property-line-spacing)

- void **set\_line\_spacing**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_line\_spacing**()


Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-textmesh-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The text drawing offset (in pixels).

* * *

[float](class_float.md#class-float) **pixel\_size** = `0.01` [🔗](#class-textmesh-property-pixel-size)

- void **set\_pixel\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pixel\_size**()


The size of one pixel's width on the text to scale it in 3D.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-textmesh-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-textmesh-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-textmesh-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The text to generate mesh from.

**Note:** Due to being a [Resource](class_resource.md#class-resource), it doesn't follow the rules of [Node.auto\_translate\_mode](class_node.md#class-node-property-auto-translate-mode). If disabling translation is desired, it should be done manually with [Object.set\_message\_translation()](class_object.md#class-object-method-set-message-translation).

* * *

[Direction](class_textserver.md#enum-textserver-direction) **text\_direction** = `0` [🔗](#class-textmesh-property-text-direction)

- void **set\_text\_direction**(value: [Direction](class_textserver.md#enum-textserver-direction))

- [Direction](class_textserver.md#enum-textserver-direction) **get\_text\_direction**()


Base text writing direction.

* * *

[bool](class_bool.md#class-bool) **uppercase** = `false` [🔗](#class-textmesh-property-uppercase)

- void **set\_uppercase**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_uppercase**()


If `true`, all the text displays as UPPERCASE.

* * *

[VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **vertical\_alignment** = `1` [🔗](#class-textmesh-property-vertical-alignment)

- void **set\_vertical\_alignment**(value: [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment))

- [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **get\_vertical\_alignment**()


Controls the text's vertical alignment. Supports top, center, and bottom.

* * *

[float](class_float.md#class-float) **width** = `500.0` [🔗](#class-textmesh-property-width)

- void **set\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_width**()


Text width (in pixels), used for fill alignment.

[Previous](class_systemfont.md "SystemFont") [Next](class_texture.md "Texture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_systemfont.md "SystemFont") [Next](class_texture.md "Texture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).