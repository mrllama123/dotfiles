---
title: Button — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_button.html
crawled_at: "2026-08-13T10:25:07+12:00"
content_hash: 1a7e47cae1b2be0659f06553ea9491f54faf53e2294841c91b7bd2feb753ea76
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Button

* * *

# Button

**Inherits:** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CheckBox](class_checkbox.md#class-checkbox), [CheckButton](class_checkbutton.md#class-checkbutton), [ColorPickerButton](class_colorpickerbutton.md#class-colorpickerbutton), [MenuButton](class_menubutton.md#class-menubutton), [OptionButton](class_optionbutton.md#class-optionbutton)

A themed button that can contain text and an icon.

## Description

**Button** is the standard themed button. It can contain text and an icon, and it will display them according to the current [Theme](class_theme.md#class-theme).

**Example:** Create a button and connect a method that will be called when the button is pressed:

GDScriptC#

```
func _ready():
    var button = Button.new()
    button.text = "Click me"
    button.pressed.connect(_button_pressed)
    add_child(button)

func _button_pressed():
    print("Hello world!")

```

```
public override void _Ready()
{
    var button = new Button();
    button.Text = "Click me";
    button.Pressed += ButtonPressed;
    AddChild(button);
}

private void ButtonPressed()
{
    GD.Print("Hello world!");
}

```

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

**Note:** Buttons do not detect touch input and therefore don't support multitouch, since mouse emulation can only press one button at a given time. Use [TouchScreenButton](class_touchscreenbutton.md#class-touchscreenbutton) for buttons that trigger gameplay movement or actions.

## Tutorials

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [alignment](#class-button-property-alignment) | `1` |
| [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) | [autowrap\_mode](#class-button-property-autowrap-mode) | `0` |
| BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] | [autowrap\_trim\_flags](#class-button-property-autowrap-trim-flags) | `128` |
| [bool](class_bool.md#class-bool) | [clip\_text](#class-button-property-clip-text) | `false` |
| [bool](class_bool.md#class-bool) | [expand\_icon](#class-button-property-expand-icon) | `false` |
| [bool](class_bool.md#class-bool) | [flat](#class-button-property-flat) | `false` |
| [Texture2D](class_texture2d.md#class-texture2d) | [icon](#class-button-property-icon) |  |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [icon\_alignment](#class-button-property-icon-alignment) | `0` |
| [String](class_string.md#class-string) | [language](#class-button-property-language) | `""` |
| [String](class_string.md#class-string) | [text](#class-button-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-button-property-text-direction) | `0` |
| [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) | [text\_overrun\_behavior](#class-button-property-text-overrun-behavior) | `0` |
| [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) | [vertical\_icon\_alignment](#class-button-property-vertical-icon-alignment) | `1` |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [font\_color](#class-button-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-button-theme-color-font-disabled-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [font\_focus\_color](#class-button-theme-color-font-focus-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_color](#class-button-theme-color-font-hover-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_hover\_pressed\_color](#class-button-theme-color-font-hover-pressed-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-button-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_pressed\_color](#class-button-theme-color-font-pressed-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [icon\_disabled\_color](#class-button-theme-color-icon-disabled-color) | `Color(1, 1, 1, 0.4)` |
| [Color](class_color.md#class-color) | [icon\_focus\_color](#class-button-theme-color-icon-focus-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [icon\_hover\_color](#class-button-theme-color-icon-hover-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [icon\_hover\_pressed\_color](#class-button-theme-color-icon-hover-pressed-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [icon\_normal\_color](#class-button-theme-color-icon-normal-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [icon\_pressed\_color](#class-button-theme-color-icon-pressed-color) | `Color(1, 1, 1, 1)` |
| [int](class_int.md#class-int) | [align\_to\_largest\_stylebox](#class-button-theme-constant-align-to-largest-stylebox) | `0` |
| [int](class_int.md#class-int) | [h\_separation](#class-button-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [icon\_max\_width](#class-button-theme-constant-icon-max-width) | `0` |
| [int](class_int.md#class-int) | [line\_spacing](#class-button-theme-constant-line-spacing) | `0` |
| [int](class_int.md#class-int) | [outline\_size](#class-button-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-button-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-button-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [icon](#class-button-theme-icon-icon) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [disabled](#class-button-theme-style-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [disabled\_mirrored](#class-button-theme-style-disabled-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-button-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover](#class-button-theme-style-hover) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_mirrored](#class-button-theme-style-hover-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_pressed](#class-button-theme-style-hover-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [hover\_pressed\_mirrored](#class-button-theme-style-hover-pressed-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-button-theme-style-normal) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal\_mirrored](#class-button-theme-style-normal-mirrored) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [pressed](#class-button-theme-style-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [pressed\_mirrored](#class-button-theme-style-pressed-mirrored) |  |

* * *

## Property Descriptions

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **alignment** = `1` [🔗](#class-button-property-alignment)

- void **set\_text\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_text\_alignment**()


Text alignment policy for the button's text.

* * *

[AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **autowrap\_mode** = `0` [🔗](#class-button-property-autowrap-mode)

- void **set\_autowrap\_mode**(value: [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode))

- [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode) **get\_autowrap\_mode**()


If set to something other than [TextServer.AUTOWRAP\_OFF](class_textserver.md#class-textserver-constant-autowrap-off), the text gets wrapped inside the node's bounding rectangle.

* * *

BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **autowrap\_trim\_flags** = `128` [🔗](#class-button-property-autowrap-trim-flags)

- void **set\_autowrap\_trim\_flags**(value: BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\])

- BitField\[ [LineBreakFlag](class_textserver.md#enum-textserver-linebreakflag)\] **get\_autowrap\_trim\_flags**()


Autowrap space trimming flags. See [TextServer.BREAK\_TRIM\_START\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-start-edge-spaces) and [TextServer.BREAK\_TRIM\_END\_EDGE\_SPACES](class_textserver.md#class-textserver-constant-break-trim-end-edge-spaces) for more info.

* * *

[bool](class_bool.md#class-bool) **clip\_text** = `false` [🔗](#class-button-property-clip-text)

- void **set\_clip\_text**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_clip\_text**()


If `true`, text that is too large to fit the button is clipped horizontally. If `false`, the button will always be wide enough to hold the text. The text is not vertically clipped, and the button's height is not affected by this property.

* * *

[bool](class_bool.md#class-bool) **expand\_icon** = `false` [🔗](#class-button-property-expand-icon)

- void **set\_expand\_icon**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_expand\_icon**()


When enabled, the button's icon will expand/shrink to fit the button's size while keeping its aspect. See also [icon\_max\_width](#class-button-theme-constant-icon-max-width).

* * *

[bool](class_bool.md#class-bool) **flat** = `false` [🔗](#class-button-property-flat)

- void **set\_flat**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flat**()


Flat buttons don't display decoration.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **icon** [🔗](#class-button-property-icon)

- void **set\_button\_icon**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_button\_icon**()


Button's icon, if text is present the icon will be placed before the text.

To edit margin and spacing of the icon, use [h\_separation](#class-button-theme-constant-h-separation) theme property and `content_margin_*` properties of the used [StyleBox](class_stylebox.md#class-stylebox) es.

* * *

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **icon\_alignment** = `0` [🔗](#class-button-property-icon-alignment)

- void **set\_icon\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_icon\_alignment**()


Specifies if the icon should be aligned horizontally to the left, right, or center of a button. Uses the same [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) constants as the text alignment. If centered horizontally and vertically, text will draw on top of the icon.

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-button-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-button-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


The button's text that will be displayed inside the button's area.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-button-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **text\_overrun\_behavior** = `0` [🔗](#class-button-property-text-overrun-behavior)

- void **set\_text\_overrun\_behavior**(value: [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior))

- [OverrunBehavior](class_textserver.md#enum-textserver-overrunbehavior) **get\_text\_overrun\_behavior**()


Sets the clipping behavior when the text exceeds the node's bounding rectangle.

* * *

[VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **vertical\_icon\_alignment** = `1` [🔗](#class-button-property-vertical-icon-alignment)

- void **set\_vertical\_icon\_alignment**(value: [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment))

- [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) **get\_vertical\_icon\_alignment**()


Specifies if the icon should be aligned vertically to the top, bottom, or center of a button. Uses the same [VerticalAlignment](class_@globalscope.md#enum-globalscope-verticalalignment) constants as the text alignment. If centered horizontally and vertically, text will draw on top of the icon.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-button-theme-color-font-color)

Default text [Color](class_color.md#class-color) of the **Button**.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-button-theme-color-font-disabled-color)

Text [Color](class_color.md#class-color) used when the **Button** is disabled.

* * *

[Color](class_color.md#class-color) **font\_focus\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-button-theme-color-font-focus-color)

Text [Color](class_color.md#class-color) used when the **Button** is focused. Only replaces the normal text color of the button. Disabled, hovered, and pressed states take precedence over this color.

* * *

[Color](class_color.md#class-color) **font\_hover\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-button-theme-color-font-hover-color)

Text [Color](class_color.md#class-color) used when the **Button** is being hovered.

* * *

[Color](class_color.md#class-color) **font\_hover\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-font-hover-pressed-color)

Text [Color](class_color.md#class-color) used when the **Button** is being hovered and pressed.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-button-theme-color-font-outline-color)

The tint of text outline of the **Button**.

* * *

[Color](class_color.md#class-color) **font\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-font-pressed-color)

Text [Color](class_color.md#class-color) used when the **Button** is being pressed.

* * *

[Color](class_color.md#class-color) **icon\_disabled\_color** = `Color(1, 1, 1, 0.4)` [🔗](#class-button-theme-color-icon-disabled-color)

Icon modulate [Color](class_color.md#class-color) used when the **Button** is disabled.

* * *

[Color](class_color.md#class-color) **icon\_focus\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-icon-focus-color)

Icon modulate [Color](class_color.md#class-color) used when the **Button** is focused. Only replaces the normal modulate color of the button. Disabled, hovered, and pressed states take precedence over this color.

* * *

[Color](class_color.md#class-color) **icon\_hover\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-icon-hover-color)

Icon modulate [Color](class_color.md#class-color) used when the **Button** is being hovered.

* * *

[Color](class_color.md#class-color) **icon\_hover\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-icon-hover-pressed-color)

Icon modulate [Color](class_color.md#class-color) used when the **Button** is being hovered and pressed.

* * *

[Color](class_color.md#class-color) **icon\_normal\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-icon-normal-color)

Default icon modulate [Color](class_color.md#class-color) of the **Button**.

* * *

[Color](class_color.md#class-color) **icon\_pressed\_color** = `Color(1, 1, 1, 1)` [🔗](#class-button-theme-color-icon-pressed-color)

Icon modulate [Color](class_color.md#class-color) used when the **Button** is being pressed.

* * *

[int](class_int.md#class-int) **align\_to\_largest\_stylebox** = `0` [🔗](#class-button-theme-constant-align-to-largest-stylebox)

This constant acts as a boolean. If `true`, the minimum size of the button and text/icon alignment is always based on the largest stylebox margins, otherwise it's based on the current button state stylebox margins.

* * *

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-button-theme-constant-h-separation)

The horizontal space between **Button**'s icon and text. Negative values will be treated as `0` when used.

* * *

[int](class_int.md#class-int) **icon\_max\_width** = `0` [🔗](#class-button-theme-constant-icon-max-width)

The maximum allowed width of the **Button**'s icon. This limit is applied on top of the default size of the icon, or its expanded size if [expand\_icon](#class-button-property-expand-icon) is `true`. The height is adjusted according to the icon's ratio. If the button has additional icons (e.g. [CheckBox](class_checkbox.md#class-checkbox)), they will also be limited.

* * *

[int](class_int.md#class-int) **line\_spacing** = `0` [🔗](#class-button-theme-constant-line-spacing)

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-button-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-button-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-button-theme-font-font)

[Font](class_font.md#class-font) of the **Button**'s text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-button-theme-font-size-font-size)

Font size of the **Button**'s text.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **icon** [🔗](#class-button-theme-icon-icon)

Default icon for the **Button**. Appears only if [icon](#class-button-property-icon) is not assigned.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **disabled** [🔗](#class-button-theme-style-disabled)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is disabled.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **disabled\_mirrored** [🔗](#class-button-theme-style-disabled-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is disabled (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-button-theme-style-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is focused. The [focus](#class-button-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover** [🔗](#class-button-theme-style-hover)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being hovered.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_mirrored** [🔗](#class-button-theme-style-hover-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being hovered (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_pressed** [🔗](#class-button-theme-style-hover-pressed)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being pressed and hovered at the same time.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **hover\_pressed\_mirrored** [🔗](#class-button-theme-style-hover-pressed-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being pressed and hovered at the same time (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-button-theme-style-normal)

Default [StyleBox](class_stylebox.md#class-stylebox) for the **Button**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal\_mirrored** [🔗](#class-button-theme-style-normal-mirrored)

Default [StyleBox](class_stylebox.md#class-stylebox) for the **Button** (for right-to-left layouts).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **pressed** [🔗](#class-button-theme-style-pressed)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **pressed\_mirrored** [🔗](#class-button-theme-style-pressed-mirrored)

[StyleBox](class_stylebox.md#class-stylebox) used when the **Button** is being pressed (for right-to-left layouts).

[Previous](class_boxcontainer.md "BoxContainer") [Next](class_camera2d.md "Camera2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_boxcontainer.md "BoxContainer") [Next](class_camera2d.md "Camera2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).