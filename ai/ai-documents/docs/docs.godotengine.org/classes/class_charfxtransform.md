---
title: CharFXTransform — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_charfxtransform.html
crawled_at: "2026-08-13T10:24:42+12:00"
content_hash: dbf015b9a88d9d13f05b1a82325a03af86413771cb4887cc05ce30ab8160af1d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CharFXTransform

* * *

# CharFXTransform

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Controls how an individual character will be displayed in a [RichTextEffect](class_richtexteffect.md#class-richtexteffect).

## Description

By setting various properties on this object, you can control how individual characters will be displayed in a [RichTextEffect](class_richtexteffect.md#class-richtexteffect).

## Tutorials

- [BBCode in RichTextLabel](../tutorials/ui/bbcode_in_richtextlabel.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [color](#class-charfxtransform-property-color) | `Color(0, 0, 0, 1)` |
| [float](class_float.md#class-float) | [elapsed\_time](#class-charfxtransform-property-elapsed-time) | `0.0` |
| [Dictionary](class_dictionary.md#class-dictionary) | [env](#class-charfxtransform-property-env) | `{}` |
| [RID](class_rid.md#class-rid) | [font](#class-charfxtransform-property-font) | `RID()` |
| [int](class_int.md#class-int) | [glyph\_count](#class-charfxtransform-property-glyph-count) | `0` |
| [int](class_int.md#class-int) | [glyph\_flags](#class-charfxtransform-property-glyph-flags) | `0` |
| [int](class_int.md#class-int) | [glyph\_index](#class-charfxtransform-property-glyph-index) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [offset](#class-charfxtransform-property-offset) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [outline](#class-charfxtransform-property-outline) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [range](#class-charfxtransform-property-range) | `Vector2i(0, 0)` |
| [int](class_int.md#class-int) | [relative\_index](#class-charfxtransform-property-relative-index) | `0` |
| [Transform2D](class_transform2d.md#class-transform2d) | [transform](#class-charfxtransform-property-transform) | `Transform2D(1, 0, 0, 1, 0, 0)` |
| [bool](class_bool.md#class-bool) | [visible](#class-charfxtransform-property-visible) | `true` |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **color** = `Color(0, 0, 0, 1)` [🔗](#class-charfxtransform-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The color the character will be drawn with.

* * *

[float](class_float.md#class-float) **elapsed\_time** = `0.0` [🔗](#class-charfxtransform-property-elapsed-time)

- void **set\_elapsed\_time**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_elapsed\_time**()


The time elapsed since the [RichTextLabel](class_richtextlabel.md#class-richtextlabel) was added to the scene tree (in seconds). Time stops when the [RichTextLabel](class_richtextlabel.md#class-richtextlabel) is paused (see [Node.process\_mode](class_node.md#class-node-property-process-mode)). Resets when the text in the [RichTextLabel](class_richtextlabel.md#class-richtextlabel) is changed.

**Note:** Time still passes while the [RichTextLabel](class_richtextlabel.md#class-richtextlabel) is hidden.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **env** = `{}` [🔗](#class-charfxtransform-property-env)

- void **set\_environment**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_environment**()


Contains the arguments passed in the opening BBCode tag. By default, arguments are strings; if their contents match a type such as [bool](class_bool.md#class-bool), [int](class_int.md#class-int) or [float](class_float.md#class-float), they will be converted automatically. Color codes in the form `#rrggbb` or `#rgb` will be converted to an opaque [Color](class_color.md#class-color). String arguments may not contain spaces, even if they're quoted. If present, quotes will also be present in the final string.

For example, the opening BBCode tag `[example foo=hello bar=true baz=42 color=#ffffff]` will map to the following [Dictionary](class_dictionary.md#class-dictionary):

```
{"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}

```

* * *

[RID](class_rid.md#class-rid) **font** = `RID()` [🔗](#class-charfxtransform-property-font)

- void **set\_font**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_font**()


[TextServer](class_textserver.md#class-textserver) RID of the font used to render glyph, this value can be used with `TextServer.font_*` methods to retrieve font information.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[int](class_int.md#class-int) **glyph\_count** = `0` [🔗](#class-charfxtransform-property-glyph-count)

- void **set\_glyph\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_glyph\_count**()


Number of glyphs in the grapheme cluster. This value is set in the first glyph of a cluster.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[int](class_int.md#class-int) **glyph\_flags** = `0` [🔗](#class-charfxtransform-property-glyph-flags)

- void **set\_glyph\_flags**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_glyph\_flags**()


Glyph flags. See [GraphemeFlag](class_textserver.md#enum-textserver-graphemeflag) for more info.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[int](class_int.md#class-int) **glyph\_index** = `0` [🔗](#class-charfxtransform-property-glyph-index)

- void **set\_glyph\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_glyph\_index**()


Glyph index specific to the [font](#class-charfxtransform-property-font). If you want to replace this glyph, use [TextServer.font\_get\_glyph\_index()](class_textserver.md#class-textserver-method-font-get-glyph-index) with [font](#class-charfxtransform-property-font) to get a new glyph index for a single character.

* * *

[Vector2](class_vector2.md#class-vector2) **offset** = `Vector2(0, 0)` [🔗](#class-charfxtransform-property-offset)

- void **set\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_offset**()


The position offset the character will be drawn with (in pixels).

* * *

[bool](class_bool.md#class-bool) **outline** = `false` [🔗](#class-charfxtransform-property-outline)

- void **set\_outline**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_outline**()


If `true`, FX transform is called for outline drawing.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **range** = `Vector2i(0, 0)` [🔗](#class-charfxtransform-property-range)

- void **set\_range**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_range**()


Absolute character range in the string, corresponding to the glyph.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[int](class_int.md#class-int) **relative\_index** = `0` [🔗](#class-charfxtransform-property-relative-index)

- void **set\_relative\_index**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_relative\_index**()


The character offset of the glyph, relative to the current [RichTextEffect](class_richtexteffect.md#class-richtexteffect) custom block.

**Note:** Read-only. Setting this property won't affect drawing.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **transform** = `Transform2D(1, 0, 0, 1, 0, 0)` [🔗](#class-charfxtransform-property-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The current transform of the current glyph. It can be overridden (for example, by driving the position and rotation from a curve). You can also alter the existing value to apply transforms on top of other effects.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-charfxtransform-property-visible)

- void **set\_visibility**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, the character will be drawn. If `false`, the character will be hidden. Characters around hidden characters will reflow to take the space of hidden characters. If this is not desired, set their [color](#class-charfxtransform-property-color) to `Color(1, 1, 1, 0)` instead.

[Previous](class_cameraserver.md "CameraServer") [Next](class_classdb.md "ClassDB")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cameraserver.md "CameraServer") [Next](class_classdb.md "ClassDB")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).