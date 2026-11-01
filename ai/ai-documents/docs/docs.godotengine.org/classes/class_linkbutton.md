---
title: LinkButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_linkbutton.html
crawled_at: "2026-08-13T10:23:55+12:00"
content_hash: 75a722ebd0f036b9ea1cacf362bb2794625dddb50bcd195e1afbeee27982b90a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LinkButton

* * *

# LinkButton

**Inherits:** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A button that represents a link.

## Description

A button that represents a link. This type of button is primarily used for interactions that cause a context change (like linking to a web page).

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

## Properties

|     |     |     |
| --- | --- | --- |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `3` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [String](class_string.md#class-string) | [language](#class-linkbutton-property-language) | `""` |
| [CursorShape](class_control.md#enum-control-cursorshape) | mouse\_default\_cursor\_shape | `2` (overrides [Control](class_control.md#class-control-property-mouse-default-cursor-shape)) |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-linkbutton-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-linkbutton-property-structured-text-bidi-override-options) | `[]` |
| [String](class_string.md#class-string) | [text](#class-linkbutton-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-linkbutton-property-text-direction) | `0` |
| [UnderlineMode](#enum-linkbutton-underlinemode) | [underline](#class-linkbutton-property-underline) | `0` |
| [String](class_string.md#class-string) | [uri](#class-linkbutton-property-uri) | `""` |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-linkbutton-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-linkbutton-theme-color-font-disabled-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_focus\_color](#class-linkbutton-theme-color-font-focus-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_color](#class-linkbutton-theme-color-font-hover-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_pressed\_color](#class-linkbutton-theme-color-font-hover-pressed-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-linkbutton-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_pressed\_color](#class-linkbutton-theme-color-font-pressed-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [outline\_size](#class-linkbutton-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [underline\_spacing](#class-linkbutton-theme-constant-underline-spacing) | `2` |
| [Font](class_font.md#class-font) | [font](#class-linkbutton-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-linkbutton-theme-font-size-font-size) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-linkbutton-theme-style-focus) |  |

* * *

## Enumerations

enum **UnderlineMode**: [🔗](#enum-linkbutton-underlinemode)

[UnderlineMode](#enum-linkbutton-underlinemode) **UNDERLINE\_MODE\_ALWAYS** = `0`

The LinkButton will always show an underline at the bottom of its text.

[UnderlineMode](#enum-linkbutton-underlinemode) **UNDERLINE\_MODE\_ON\_HOVER** = `1`

The LinkButton will show an underline at the bottom of its text when the mouse cursor is over it.

[UnderlineMode](#enum-linkbutton-underlinemode) **UNDERLINE\_MODE\_NEVER** = `2`

The LinkButton will never show an underline at the bottom of its text.

* * *

## Property Descriptions

[String](class_string.md#class-string) **language** = `""` [🔗](#class-linkbutton-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-linkbutton-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-linkbutton-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-linkbutton-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The button's text that will be displayed inside the button's area.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-linkbutton-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[UnderlineMode](#enum-linkbutton-underlinemode) **underline** = `0` [🔗](#class-linkbutton-property-underline)

- void **set\_underline\_mode**(value: [UnderlineMode](#enum-linkbutton-underlinemode))

- [UnderlineMode](#enum-linkbutton-underlinemode) **get\_underline\_mode**()


The underline mode to use for the text.

* * *

[String](class_string.md#class-string) **uri** = `""` [🔗](#class-linkbutton-property-uri)

- void **set\_uri**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_uri**()


The [URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) for this **LinkButton**. If set to a valid URI, pressing the button opens the URI using the operating system's default program for the protocol (via [OS.shell\_open()](class_os.md#class-os-method-shell-open)). HTTP and HTTPS URLs open the default web browser.

GDScriptC#

```
uri = "https://godotengine.org"  # Opens the URL in the default web browser.
uri = "C:\SomeFolder"  # Opens the file explorer at the given path.
uri = "C:\SomeImage.png"  # Opens the given image in the default viewing app.

```

```
Uri = "https://godotengine.org"; // Opens the URL in the default web browser.
Uri = "C:\SomeFolder"; // Opens the file explorer at the given path.
Uri = "C:\SomeImage.png"; // Opens the given image in the default viewing app.

```

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-linkbutton-theme-color-font-color)

Default text [Color](class_color.md#class-color) of the **LinkButton**.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0, 0, 0, 1)` [🔗](#class-linkbutton-theme-color-font-disabled-color)

Text [Color](class_color.md#class-color) used when the **LinkButton** is disabled.

* * *

[Color](class_color.md#class-color) **font\_focus\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-linkbutton-theme-color-font-focus-color)

Text [Color](class_color.md#class-color) used when the **LinkButton** is focused. Only replaces the normal text color of the button. Disabled, hovered, and pressed states take precedence over this color.

* * *

[Color](class_color.md#class-color) **font\_hover\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-linkbutton-theme-color-font-hover-color)

Text [Color](class_color.md#class-color) used when the **LinkButton** is being hovered.

* * *

[Color](class_color.md#class-color) **font\_hover\_pressed\_color** = `Color(0, 0, 0, 1)` [🔗](#class-linkbutton-theme-color-font-hover-pressed-color)

Text [Color](class_color.md#class-color) used when the **LinkButton** is being hovered and pressed.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-linkbutton-theme-color-font-outline-color)

The tint of text outline of the **LinkButton**.

* * *

[Color](class_color.md#class-color) **font\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-linkbutton-theme-color-font-pressed-color)

Text [Color](class_color.md#class-color) used when the **LinkButton** is being pressed.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-linkbutton-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-linkbutton-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **underline\_spacing** = `2` [🔗](#class-linkbutton-theme-constant-underline-spacing)

The vertical space between the baseline of text and the underline.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-linkbutton-theme-font-font)

[Font](class_font.md#class-font) of the **LinkButton**'s text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-linkbutton-theme-font-size-font-size)

Font size of the **LinkButton**'s text.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-linkbutton-theme-style-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **LinkButton** is focused. The [focus](#class-linkbutton-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

[Previous](class_lineedit.md "LineEdit") [Next](class_lookatmodifier3d.md "LookAtModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_lineedit.md "LineEdit") [Next](class_lookatmodifier3d.md "LookAtModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).