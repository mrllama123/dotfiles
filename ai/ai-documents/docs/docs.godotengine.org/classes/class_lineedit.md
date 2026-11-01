---
title: LineEdit — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_lineedit.html
crawled_at: "2026-08-13T10:26:49+12:00"
content_hash: c8a943ea12ae637b23e1148862fd4a8b9173caaeaff4cd5803cbc27c09c946ac
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - LineEdit

* * *

# LineEdit

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An input field for single-line text.

## Description

**LineEdit** provides an input field for editing a single line of text.

- When the **LineEdit** control is focused using the keyboard arrow keys, it will only gain focus and not enter edit mode.

- To enter edit mode, click on the control with the mouse, see also [keep\_editing\_on\_text\_submit](#class-lineedit-property-keep-editing-on-text-submit).

- To exit edit mode, press `ui_text_submit` or `ui_cancel` (by default `Escape`) actions.

- Check [edit()](#class-lineedit-method-edit), [unedit()](#class-lineedit-method-unedit), [is\_editing()](#class-lineedit-method-is-editing), and [editing\_toggled](#class-lineedit-signal-editing-toggled) for more information.


While entering text, it is possible to insert special characters using Unicode, OEM or Windows alt codes:

- To enter Unicode codepoints, hold `Alt` and type the codepoint on the numpad. For example, to enter the character `á` (U+00E1), hold `Alt` and type `+E1` on the numpad (the leading zeroes can be omitted).

- To enter OEM codepoints, hold `Alt` and type the code on the numpad. For example, to enter the character `á` (OEM 160), hold `Alt` and type `160` on the numpad.

- To enter Windows codepoints, hold `Alt` and type the code on the numpad. For example, to enter the character `á` (Windows 0225), hold `Alt` and type `0`, `2`, `2`, `5` on the numpad. The leading zero here must **not** be omitted, as this is how Windows codepoints are distinguished from OEM codepoints.


**Important:**

- Focusing the **LineEdit** with `ui_focus_next` (by default `Tab`) or `ui_focus_prev` (by default `Shift + Tab`) or [Control.grab\_focus()](class_control.md#class-control-method-grab-focus) still enters edit mode (for compatibility).


**LineEdit** features many built-in shortcuts that are always available ( `Ctrl` here maps to `Cmd` on macOS):

- `Ctrl + C`: Copy

- `Ctrl + X`: Cut

- `Ctrl + V` or `Ctrl + Y`: Paste/"yank"

- `Ctrl + Z`: Undo

- `Ctrl + ~`: Swap input direction.

- `Ctrl + Shift + Z`: Redo

- `Ctrl + U`: Delete text from the caret position to the beginning of the line

- `Ctrl + K`: Delete text from the caret position to the end of the line

- `Ctrl + A`: Select all text

- `Up Arrow`/ `Down Arrow`: Move the caret to the beginning/end of the line


On macOS, some extra keyboard shortcuts are available:

- `Cmd + F`: Same as `Right Arrow`, move the caret one character right

- `Cmd + B`: Same as `Left Arrow`, move the caret one character left

- `Cmd + P`: Same as `Up Arrow`, move the caret to the previous line

- `Cmd + N`: Same as `Down Arrow`, move the caret to the next line

- `Cmd + D`: Same as `Delete`, delete the character on the right side of caret

- `Cmd + H`: Same as `Backspace`, delete the character on the left side of the caret

- `Cmd + A`: Same as `Home`, move the caret to the beginning of the line

- `Cmd + E`: Same as `End`, move the caret to the end of the line

- `Cmd + Left Arrow`: Same as `Home`, move the caret to the beginning of the line

- `Cmd + Right Arrow`: Same as `End`, move the caret to the end of the line


**Note:** Caret movement shortcuts listed above are not affected by [shortcut\_keys\_enabled](#class-lineedit-property-shortcut-keys-enabled).

## Properties

|     |     |     |
| --- | --- | --- |
| [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) | [alignment](#class-lineedit-property-alignment) | `0` |
| [bool](class_bool.md#class-bool) | [backspace\_deletes\_composite\_character\_enabled](#class-lineedit-property-backspace-deletes-composite-character-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [caret\_blink](#class-lineedit-property-caret-blink) | `false` |
| [float](class_float.md#class-float) | [caret\_blink\_interval](#class-lineedit-property-caret-blink-interval) | `0.65` |
| [int](class_int.md#class-int) | [caret\_column](#class-lineedit-property-caret-column) | `0` |
| [bool](class_bool.md#class-bool) | [caret\_force\_displayed](#class-lineedit-property-caret-force-displayed) | `false` |
| [bool](class_bool.md#class-bool) | [caret\_mid\_grapheme](#class-lineedit-property-caret-mid-grapheme) | `false` |
| [bool](class_bool.md#class-bool) | [clear\_button\_enabled](#class-lineedit-property-clear-button-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [context\_menu\_enabled](#class-lineedit-property-context-menu-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [deselect\_on\_focus\_loss\_enabled](#class-lineedit-property-deselect-on-focus-loss-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [drag\_and\_drop\_selection\_enabled](#class-lineedit-property-drag-and-drop-selection-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [draw\_control\_chars](#class-lineedit-property-draw-control-chars) | `false` |
| [bool](class_bool.md#class-bool) | [editable](#class-lineedit-property-editable) | `true` |
| [bool](class_bool.md#class-bool) | [emoji\_menu\_enabled](#class-lineedit-property-emoji-menu-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [expand\_to\_text\_length](#class-lineedit-property-expand-to-text-length) | `false` |
| [bool](class_bool.md#class-bool) | [flat](#class-lineedit-property-flat) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [keep\_editing\_on\_text\_submit](#class-lineedit-property-keep-editing-on-text-submit) | `false` |
| [String](class_string.md#class-string) | [language](#class-lineedit-property-language) | `""` |
| [int](class_int.md#class-int) | [max\_length](#class-lineedit-property-max-length) | `0` |
| [bool](class_bool.md#class-bool) | [middle\_mouse\_paste\_enabled](#class-lineedit-property-middle-mouse-paste-enabled) | `true` |
| [CursorShape](class_control.md#enum-control-cursorshape) | mouse\_default\_cursor\_shape | `1` (overrides [Control](class_control.md#class-control-property-mouse-default-cursor-shape)) |
| [String](class_string.md#class-string) | [placeholder\_text](#class-lineedit-property-placeholder-text) | `""` |
| [Texture2D](class_texture2d.md#class-texture2d) | [right\_icon](#class-lineedit-property-right-icon) |  |
| [bool](class_bool.md#class-bool) | [secret](#class-lineedit-property-secret) | `false` |
| [String](class_string.md#class-string) | [secret\_character](#class-lineedit-property-secret-character) | `"•"` |
| [bool](class_bool.md#class-bool) | [select\_all\_on\_focus](#class-lineedit-property-select-all-on-focus) | `false` |
| [bool](class_bool.md#class-bool) | [selecting\_enabled](#class-lineedit-property-selecting-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [shortcut\_keys\_enabled](#class-lineedit-property-shortcut-keys-enabled) | `true` |
| [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) | [structured\_text\_bidi\_override](#class-lineedit-property-structured-text-bidi-override) | `0` |
| [Array](class_array.md#class-array) | [structured\_text\_bidi\_override\_options](#class-lineedit-property-structured-text-bidi-override-options) | `[]` |
| [String](class_string.md#class-string) | [text](#class-lineedit-property-text) | `""` |
| [TextDirection](class_control.md#enum-control-textdirection) | [text\_direction](#class-lineedit-property-text-direction) | `0` |
| [bool](class_bool.md#class-bool) | [virtual\_keyboard\_enabled](#class-lineedit-property-virtual-keyboard-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [virtual\_keyboard\_show\_on\_focus](#class-lineedit-property-virtual-keyboard-show-on-focus) | `true` |
| [VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) | [virtual\_keyboard\_type](#class-lineedit-property-virtual-keyboard-type) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [apply\_ime](#class-lineedit-method-apply-ime)() |
| void | [cancel\_ime](#class-lineedit-method-cancel-ime)() |
| void | [clear](#class-lineedit-method-clear)() |
| void | [delete\_char\_at\_caret](#class-lineedit-method-delete-char-at-caret)() |
| void | [delete\_text](#class-lineedit-method-delete-text)(from\_column: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int)) |
| void | [deselect](#class-lineedit-method-deselect)() |
| void | [edit](#class-lineedit-method-edit)() |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_menu](#class-lineedit-method-get-menu)() const |
| [int](class_int.md#class-int) | [get\_next\_composite\_character\_column](#class-lineedit-method-get-next-composite-character-column)(column: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_previous\_composite\_character\_column](#class-lineedit-method-get-previous-composite-character-column)(column: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [get\_scroll\_offset](#class-lineedit-method-get-scroll-offset)() const |
| [String](class_string.md#class-string) | [get\_selected\_text](#class-lineedit-method-get-selected-text)() |
| [int](class_int.md#class-int) | [get\_selection\_from\_column](#class-lineedit-method-get-selection-from-column)() const |
| [int](class_int.md#class-int) | [get\_selection\_to\_column](#class-lineedit-method-get-selection-to-column)() const |
| [bool](class_bool.md#class-bool) | [has\_ime\_text](#class-lineedit-method-has-ime-text)() const |
| [bool](class_bool.md#class-bool) | [has\_redo](#class-lineedit-method-has-redo)() const |
| [bool](class_bool.md#class-bool) | [has\_selection](#class-lineedit-method-has-selection)() const |
| [bool](class_bool.md#class-bool) | [has\_undo](#class-lineedit-method-has-undo)() const |
| void | [insert\_text\_at\_caret](#class-lineedit-method-insert-text-at-caret)(text: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [is\_editing](#class-lineedit-method-is-editing)() const |
| [bool](class_bool.md#class-bool) | [is\_menu\_visible](#class-lineedit-method-is-menu-visible)() const |
| void | [menu\_option](#class-lineedit-method-menu-option)(option: [int](class_int.md#class-int)) |
| void | [select](#class-lineedit-method-select)(from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = -1) |
| void | [select\_all](#class-lineedit-method-select-all)() |
| void | [unedit](#class-lineedit-method-unedit)() |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [caret\_color](#class-lineedit-theme-color-caret-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [clear\_button\_color](#class-lineedit-theme-color-clear-button-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [clear\_button\_color\_pressed](#class-lineedit-theme-color-clear-button-color-pressed) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_color](#class-lineedit-theme-color-font-color) | `Color(0.875, 0.875, 0.875, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-lineedit-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_placeholder\_color](#class-lineedit-theme-color-font-placeholder-color) | `Color(0.875, 0.875, 0.875, 0.6)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-lineedit-theme-color-font-selected-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_uneditable\_color](#class-lineedit-theme-color-font-uneditable-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [selection\_color](#class-lineedit-theme-color-selection-color) | `Color(0.5, 0.5, 0.5, 1)` |
| [int](class_int.md#class-int) | [caret\_width](#class-lineedit-theme-constant-caret-width) | `1` |
| [int](class_int.md#class-int) | [minimum\_character\_width](#class-lineedit-theme-constant-minimum-character-width) | `4` |
| [int](class_int.md#class-int) | [outline\_size](#class-lineedit-theme-constant-outline-size) | `0` |
| [Font](class_font.md#class-font) | [font](#class-lineedit-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-lineedit-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [clear](#class-lineedit-theme-icon-clear) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [focus](#class-lineedit-theme-style-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [normal](#class-lineedit-theme-style-normal) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [read\_only](#class-lineedit-theme-style-read-only) |  |

* * *

## Signals

**editing\_toggled**(toggled\_on: [bool](class_bool.md#class-bool)) [🔗](#class-lineedit-signal-editing-toggled)

Emitted when the **LineEdit** switches in or out of edit mode.

* * *

**text\_change\_rejected**(rejected\_substring: [String](class_string.md#class-string)) [🔗](#class-lineedit-signal-text-change-rejected)

Emitted when appending text that overflows the [max\_length](#class-lineedit-property-max-length). The appended text is truncated to fit [max\_length](#class-lineedit-property-max-length), and the part that couldn't fit is passed as the `rejected_substring` argument.

* * *

**text\_changed**(new\_text: [String](class_string.md#class-string)) [🔗](#class-lineedit-signal-text-changed)

Emitted when the text changes.

* * *

**text\_submitted**(new\_text: [String](class_string.md#class-string)) [🔗](#class-lineedit-signal-text-submitted)

Emitted when the user presses the `ui_text_submit` action (by default: `Enter` or `Kp Enter`) while the **LineEdit** has focus.

* * *

## Enumerations

enum **MenuItems**: [🔗](#enum-lineedit-menuitems)

[MenuItems](#enum-lineedit-menuitems) **MENU\_CUT** = `0`

Cuts (copies and clears) the selected text.

[MenuItems](#enum-lineedit-menuitems) **MENU\_COPY** = `1`

Copies the selected text.

[MenuItems](#enum-lineedit-menuitems) **MENU\_PASTE** = `2`

Pastes the clipboard text over the selected text (or at the caret's position).

Non-printable escape characters are automatically stripped from the OS clipboard via [String.strip\_escapes()](class_string.md#class-string-method-strip-escapes).

[MenuItems](#enum-lineedit-menuitems) **MENU\_CLEAR** = `3`

Erases the whole **LineEdit** text.

[MenuItems](#enum-lineedit-menuitems) **MENU\_SELECT\_ALL** = `4`

Selects the whole **LineEdit** text.

[MenuItems](#enum-lineedit-menuitems) **MENU\_UNDO** = `5`

Undoes the previous action.

[MenuItems](#enum-lineedit-menuitems) **MENU\_REDO** = `6`

Reverse the last undo action.

[MenuItems](#enum-lineedit-menuitems) **MENU\_SUBMENU\_TEXT\_DIR** = `7`

ID of "Text Writing Direction" submenu.

[MenuItems](#enum-lineedit-menuitems) **MENU\_DIR\_INHERITED** = `8`

Sets text direction to inherited.

[MenuItems](#enum-lineedit-menuitems) **MENU\_DIR\_AUTO** = `9`

Sets text direction to automatic.

[MenuItems](#enum-lineedit-menuitems) **MENU\_DIR\_LTR** = `10`

Sets text direction to left-to-right.

[MenuItems](#enum-lineedit-menuitems) **MENU\_DIR\_RTL** = `11`

Sets text direction to right-to-left.

[MenuItems](#enum-lineedit-menuitems) **MENU\_DISPLAY\_UCC** = `12`

Toggles control character display.

[MenuItems](#enum-lineedit-menuitems) **MENU\_SUBMENU\_INSERT\_UCC** = `13`

ID of "Insert Control Character" submenu.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_LRM** = `14`

Inserts left-to-right mark (LRM) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_RLM** = `15`

Inserts right-to-left mark (RLM) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_LRE** = `16`

Inserts start of left-to-right embedding (LRE) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_RLE** = `17`

Inserts start of right-to-left embedding (RLE) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_LRO** = `18`

Inserts start of left-to-right override (LRO) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_RLO** = `19`

Inserts start of right-to-left override (RLO) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_PDF** = `20`

Inserts pop direction formatting (PDF) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_ALM** = `21`

Inserts Arabic letter mark (ALM) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_LRI** = `22`

Inserts left-to-right isolate (LRI) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_RLI** = `23`

Inserts right-to-left isolate (RLI) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_FSI** = `24`

Inserts first strong isolate (FSI) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_PDI** = `25`

Inserts pop direction isolate (PDI) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_ZWJ** = `26`

Inserts zero width joiner (ZWJ) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_ZWNJ** = `27`

Inserts zero width non-joiner (ZWNJ) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_WJ** = `28`

Inserts word joiner (WJ) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_INSERT\_SHY** = `29`

Inserts soft hyphen (SHY) character.

[MenuItems](#enum-lineedit-menuitems) **MENU\_EMOJI\_AND\_SYMBOL** = `30`

Opens system emoji and symbol picker.

[MenuItems](#enum-lineedit-menuitems) **MENU\_MAX** = `31`

Represents the size of the [MenuItems](#enum-lineedit-menuitems) enum.

* * *

enum **VirtualKeyboardType**: [🔗](#enum-lineedit-virtualkeyboardtype)

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_DEFAULT** = `0`

Default text virtual keyboard.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_MULTILINE** = `1`

Multiline virtual keyboard.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_NUMBER** = `2`

Virtual number keypad, useful for PIN entry.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_NUMBER\_DECIMAL** = `3`

Virtual number keypad, useful for entering fractional numbers.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_PHONE** = `4`

Virtual phone number keypad.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_EMAIL\_ADDRESS** = `5`

Virtual keyboard with additional keys to assist with typing email addresses.

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_PASSWORD** = `6`

Virtual keyboard for entering a password. On most platforms, this should disable autocomplete and autocapitalization.

**Note:** This is not supported on Web. Instead, this behaves identically to [KEYBOARD\_TYPE\_DEFAULT](#class-lineedit-constant-keyboard-type-default).

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **KEYBOARD\_TYPE\_URL** = `7`

Virtual keyboard with additional keys to assist with typing URLs.

* * *

## Property Descriptions

[HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **alignment** = `0` [🔗](#class-lineedit-property-alignment)

- void **set\_horizontal\_alignment**(value: [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment))

- [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) **get\_horizontal\_alignment**()


Text alignment as defined in the [HorizontalAlignment](class_@globalscope.md#enum-globalscope-horizontalalignment) enum.

* * *

[bool](class_bool.md#class-bool) **backspace\_deletes\_composite\_character\_enabled** = `false` [🔗](#class-lineedit-property-backspace-deletes-composite-character-enabled)

- void **set\_backspace\_deletes\_composite\_character\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_backspace\_deletes\_composite\_character\_enabled**()


If `true` and [caret\_mid\_grapheme](#class-lineedit-property-caret-mid-grapheme) is `false`, backspace deletes an entire composite character such as ❤️‍🩹, instead of deleting part of the composite character.

* * *

[bool](class_bool.md#class-bool) **caret\_blink** = `false` [🔗](#class-lineedit-property-caret-blink)

- void **set\_caret\_blink\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_caret\_blink\_enabled**()


If `true`, makes the caret blink.

* * *

[float](class_float.md#class-float) **caret\_blink\_interval** = `0.65` [🔗](#class-lineedit-property-caret-blink-interval)

- void **set\_caret\_blink\_interval**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_caret\_blink\_interval**()


The interval at which the caret blinks (in seconds).

* * *

[int](class_int.md#class-int) **caret\_column** = `0` [🔗](#class-lineedit-property-caret-column)

- void **set\_caret\_column**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_caret\_column**()


The caret's column position inside the **LineEdit**. When set, the text may scroll to accommodate it.

* * *

[bool](class_bool.md#class-bool) **caret\_force\_displayed** = `false` [🔗](#class-lineedit-property-caret-force-displayed)

- void **set\_caret\_force\_displayed**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_caret\_force\_displayed**()


If `true`, the **LineEdit** will always show the caret, even if not editing or focus is lost.

* * *

[bool](class_bool.md#class-bool) **caret\_mid\_grapheme** = `false` [🔗](#class-lineedit-property-caret-mid-grapheme)

- void **set\_caret\_mid\_grapheme\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_caret\_mid\_grapheme\_enabled**()


Allow moving caret, selecting and removing the individual composite character components.

**Note:**  `Backspace` is always removing individual composite character components.

* * *

[bool](class_bool.md#class-bool) **clear\_button\_enabled** = `false` [🔗](#class-lineedit-property-clear-button-enabled)

- void **set\_clear\_button\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_clear\_button\_enabled**()


If `true`, the **LineEdit** will show a clear button if [text](#class-lineedit-property-text) is not empty, which can be used to clear the text quickly.

* * *

[bool](class_bool.md#class-bool) **context\_menu\_enabled** = `true` [🔗](#class-lineedit-property-context-menu-enabled)

- void **set\_context\_menu\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_context\_menu\_enabled**()


If `true`, the context menu will appear when right-clicked.

* * *

[bool](class_bool.md#class-bool) **deselect\_on\_focus\_loss\_enabled** = `true` [🔗](#class-lineedit-property-deselect-on-focus-loss-enabled)

- void **set\_deselect\_on\_focus\_loss\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_deselect\_on\_focus\_loss\_enabled**()


If `true`, the selected text will be deselected when focus is lost.

* * *

[bool](class_bool.md#class-bool) **drag\_and\_drop\_selection\_enabled** = `true` [🔗](#class-lineedit-property-drag-and-drop-selection-enabled)

- void **set\_drag\_and\_drop\_selection\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drag\_and\_drop\_selection\_enabled**()


If `true`, allow drag and drop of selected text.

* * *

[bool](class_bool.md#class-bool) **draw\_control\_chars** = `false` [🔗](#class-lineedit-property-draw-control-chars)

- void **set\_draw\_control\_chars**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_draw\_control\_chars**()


If `true`, control characters are displayed.

* * *

[bool](class_bool.md#class-bool) **editable** = `true` [🔗](#class-lineedit-property-editable)

- void **set\_editable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editable**()


If `false`, existing text cannot be modified and new text cannot be added.

* * *

[bool](class_bool.md#class-bool) **emoji\_menu\_enabled** = `true` [🔗](#class-lineedit-property-emoji-menu-enabled)

- void **set\_emoji\_menu\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_emoji\_menu\_enabled**()


If `true`, "Emoji and Symbols" menu is enabled.

* * *

[bool](class_bool.md#class-bool) **expand\_to\_text\_length** = `false` [🔗](#class-lineedit-property-expand-to-text-length)

- void **set\_expand\_to\_text\_length\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_expand\_to\_text\_length\_enabled**()


If `true`, the **LineEdit** width will increase to stay longer than the [text](#class-lineedit-property-text). It will **not** compress if the [text](#class-lineedit-property-text) is shortened.

* * *

[bool](class_bool.md#class-bool) **flat** = `false` [🔗](#class-lineedit-property-flat)

- void **set\_flat**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flat**()


If `true`, the **LineEdit** doesn't display decoration.

* * *

[bool](class_bool.md#class-bool) **keep\_editing\_on\_text\_submit** = `false` [🔗](#class-lineedit-property-keep-editing-on-text-submit)

- void **set\_keep\_editing\_on\_text\_submit**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_editing\_kept\_on\_text\_submit**()


If `true`, the **LineEdit** will not exit edit mode when text is submitted by pressing `ui_text_submit` action (by default: `Enter` or `Kp Enter`).

* * *

[String](class_string.md#class-string) **language** = `""` [🔗](#class-lineedit-property-language)

- void **set\_language**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_language**()


Language code used for line-breaking and text shaping algorithms. If left empty, current locale is used instead.

* * *

[int](class_int.md#class-int) **max\_length** = `0` [🔗](#class-lineedit-property-max-length)

- void **set\_max\_length**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_length**()


Maximum number of characters that can be entered inside the **LineEdit**. If `0`, there is no limit.

When a limit is defined, characters that would exceed [max\_length](#class-lineedit-property-max-length) are truncated. This happens both for existing [text](#class-lineedit-property-text) contents when setting the max length, or for new text inserted in the **LineEdit**, including pasting.

If any input text is truncated, the [text\_change\_rejected](#class-lineedit-signal-text-change-rejected) signal is emitted with the truncated substring as a parameter:

GDScriptC#

```
text = "Hello world"
max_length = 5
# `text` becomes "Hello".
max_length = 10
text += " goodbye"
# `text` becomes "Hello good".
# `text_change_rejected` is emitted with "bye" as a parameter.

```

```
Text = "Hello world";
MaxLength = 5;
// `Text` becomes "Hello".
MaxLength = 10;
Text += " goodbye";
// `Text` becomes "Hello good".
// `text_change_rejected` is emitted with "bye" as a parameter.

```

* * *

[bool](class_bool.md#class-bool) **middle\_mouse\_paste\_enabled** = `true` [🔗](#class-lineedit-property-middle-mouse-paste-enabled)

- void **set\_middle\_mouse\_paste\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_middle\_mouse\_paste\_enabled**()


If `false`, using middle mouse button to paste clipboard will be disabled.

**Note:** This method is only implemented on Linux.

* * *

[String](class_string.md#class-string) **placeholder\_text** = `""` [🔗](#class-lineedit-property-placeholder-text)

- void **set\_placeholder**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_placeholder**()


Text shown when the **LineEdit** is empty. It is **not** the **LineEdit**'s default value (see [text](#class-lineedit-property-text)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **right\_icon** [🔗](#class-lineedit-property-right-icon)

- void **set\_right\_icon**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_right\_icon**()


Sets the icon that will appear in the right end of the **LineEdit** if there's no [text](#class-lineedit-property-text), or always, if [clear\_button\_enabled](#class-lineedit-property-clear-button-enabled) is set to `false`.

* * *

[bool](class_bool.md#class-bool) **secret** = `false` [🔗](#class-lineedit-property-secret)

- void **set\_secret**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_secret**()


If `true`, every character is replaced with the secret character (see [secret\_character](#class-lineedit-property-secret-character)).

* * *

[String](class_string.md#class-string) **secret\_character** = `"•"` [🔗](#class-lineedit-property-secret-character)

- void **set\_secret\_character**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_secret\_character**()


The character to use to mask secret input. Only a single character can be used as the secret character. If it is longer than one character, only the first one will be used. If it is empty, a space will be used instead.

* * *

[bool](class_bool.md#class-bool) **select\_all\_on\_focus** = `false` [🔗](#class-lineedit-property-select-all-on-focus)

- void **set\_select\_all\_on\_focus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_select\_all\_on\_focus**()


If `true`, the **LineEdit** will select the whole text when it gains focus.

* * *

[bool](class_bool.md#class-bool) **selecting\_enabled** = `true` [🔗](#class-lineedit-property-selecting-enabled)

- void **set\_selecting\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_selecting\_enabled**()


If `false`, it's impossible to select the text using mouse nor keyboard.

* * *

[bool](class_bool.md#class-bool) **shortcut\_keys\_enabled** = `true` [🔗](#class-lineedit-property-shortcut-keys-enabled)

- void **set\_shortcut\_keys\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_shortcut\_keys\_enabled**()


If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.

* * *

[StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **structured\_text\_bidi\_override** = `0` [🔗](#class-lineedit-property-structured-text-bidi-override)

- void **set\_structured\_text\_bidi\_override**(value: [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser))

- [StructuredTextParser](class_textserver.md#enum-textserver-structuredtextparser) **get\_structured\_text\_bidi\_override**()


Set BiDi algorithm override for the structured text.

* * *

[Array](class_array.md#class-array) **structured\_text\_bidi\_override\_options** = `[]` [🔗](#class-lineedit-property-structured-text-bidi-override-options)

- void **set\_structured\_text\_bidi\_override\_options**(value: [Array](class_array.md#class-array))

- [Array](class_array.md#class-array) **get\_structured\_text\_bidi\_override\_options**()


Set additional options for BiDi override.

* * *

[String](class_string.md#class-string) **text** = `""` [🔗](#class-lineedit-property-text)

- void **set\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_text**()


String value of the **LineEdit**.

**Note:** Changing text using this property won't emit the [text\_changed](#class-lineedit-signal-text-changed) signal.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **text\_direction** = `0` [🔗](#class-lineedit-property-text-direction)

- void **set\_text\_direction**(value: [TextDirection](class_control.md#enum-control-textdirection))

- [TextDirection](class_control.md#enum-control-textdirection) **get\_text\_direction**()


Base text writing direction.

* * *

[bool](class_bool.md#class-bool) **virtual\_keyboard\_enabled** = `true` [🔗](#class-lineedit-property-virtual-keyboard-enabled)

- void **set\_virtual\_keyboard\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_virtual\_keyboard\_enabled**()


If `true`, the native virtual keyboard is enabled on platforms that support it.

* * *

[bool](class_bool.md#class-bool) **virtual\_keyboard\_show\_on\_focus** = `true` [🔗](#class-lineedit-property-virtual-keyboard-show-on-focus)

- void **set\_virtual\_keyboard\_show\_on\_focus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_virtual\_keyboard\_show\_on\_focus**()


If `true`, the native virtual keyboard is shown on focus events on platforms that support it.

* * *

[VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **virtual\_keyboard\_type** = `0` [🔗](#class-lineedit-property-virtual-keyboard-type)

- void **set\_virtual\_keyboard\_type**(value: [VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype))

- [VirtualKeyboardType](#enum-lineedit-virtualkeyboardtype) **get\_virtual\_keyboard\_type**()


Specifies the type of virtual keyboard to show.

* * *

## Method Descriptions

void **apply\_ime**() [🔗](#class-lineedit-method-apply-ime)

Applies text from the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME) and closes the IME if it is open.

* * *

void **cancel\_ime**() [🔗](#class-lineedit-method-cancel-ime)

Closes the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME) if it is open. Any text in the IME will be lost.

* * *

void **clear**() [🔗](#class-lineedit-method-clear)

Erases the **LineEdit**'s [text](#class-lineedit-property-text).

* * *

void **delete\_char\_at\_caret**() [🔗](#class-lineedit-method-delete-char-at-caret)

Deletes one character at the caret's current position (equivalent to pressing `Delete`).

* * *

void **delete\_text**(from\_column: [int](class_int.md#class-int), to\_column: [int](class_int.md#class-int)) [🔗](#class-lineedit-method-delete-text)

Deletes a section of the [text](#class-lineedit-property-text) going from position `from_column` to `to_column`. Both parameters should be within the text's length.

* * *

void **deselect**() [🔗](#class-lineedit-method-deselect)

Clears the current selection.

* * *

void **edit**() [🔗](#class-lineedit-method-edit)

Allows entering edit mode whether the **LineEdit** is focused or not.

See also [keep\_editing\_on\_text\_submit](#class-lineedit-property-keep-editing-on-text-submit).

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_menu**() const [🔗](#class-lineedit-method-get-menu)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) of this **LineEdit**. By default, this menu is displayed when right-clicking on the **LineEdit**.

You can add custom menu items or remove standard ones. Make sure your IDs don't conflict with the standard ones (see [MenuItems](#enum-lineedit-menuitems)). For example:

GDScriptC#

```
func _ready():
    var menu = get_menu()
    # Remove all items after "Redo".
    menu.item_count = menu.get_item_index(MENU_REDO) + 1
    # Add custom items.
    menu.add_separator()
    menu.add_item("Insert Date", MENU_MAX + 1)
    # Connect callback.
    menu.id_pressed.connect(_on_item_pressed)

func _on_item_pressed(id):
    if id == MENU_MAX + 1:
        insert_text_at_caret(Time.get_date_string_from_system())

```

```
public override void _Ready()
{
    var menu = GetMenu();
    // Remove all items after "Redo".
    menu.ItemCount = menu.GetItemIndex(LineEdit.MenuItems.Redo) + 1;
    // Add custom items.
    menu.AddSeparator();
    menu.AddItem("Insert Date", LineEdit.MenuItems.Max + 1);
    // Add event handler.
    menu.IdPressed += OnItemPressed;
}

public void OnItemPressed(int id)
{
    if (id == LineEdit.MenuItems.Max + 1)
    {
        InsertTextAtCaret(Time.GetDateStringFromSystem());
    }
}

```

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_next\_composite\_character\_column**(column: [int](class_int.md#class-int)) const [🔗](#class-lineedit-method-get-next-composite-character-column)

Returns the correct column at the end of a composite character like ❤️‍🩹 (mending heart; Unicode: `U+2764 U+FE0F U+200D U+1FA79`) which is comprised of more than one Unicode code point, if the caret is at the start of the composite character. Also returns the correct column with the caret at mid grapheme and for non-composite characters.

**Note:** To check at caret location use `get_next_composite_character_column(get_caret_column())`

* * *

[int](class_int.md#class-int) **get\_previous\_composite\_character\_column**(column: [int](class_int.md#class-int)) const [🔗](#class-lineedit-method-get-previous-composite-character-column)

Returns the correct column at the start of a composite character like ❤️‍🩹 (mending heart; Unicode: `U+2764 U+FE0F U+200D U+1FA79`) which is comprised of more than one Unicode code point, if the caret is at the end of the composite character. Also returns the correct column with the caret at mid grapheme and for non-composite characters.

**Note:** To check at caret location use `get_previous_composite_character_column(get_caret_column())`

* * *

[float](class_float.md#class-float) **get\_scroll\_offset**() const [🔗](#class-lineedit-method-get-scroll-offset)

Returns the scroll offset due to [caret\_column](#class-lineedit-property-caret-column), as a number of characters.

* * *

[String](class_string.md#class-string) **get\_selected\_text**() [🔗](#class-lineedit-method-get-selected-text)

Returns the text inside the selection.

* * *

[int](class_int.md#class-int) **get\_selection\_from\_column**() const [🔗](#class-lineedit-method-get-selection-from-column)

Returns the selection begin column.

* * *

[int](class_int.md#class-int) **get\_selection\_to\_column**() const [🔗](#class-lineedit-method-get-selection-to-column)

Returns the selection end column.

* * *

[bool](class_bool.md#class-bool) **has\_ime\_text**() const [🔗](#class-lineedit-method-has-ime-text)

Returns `true` if the user has text in the [Input Method Editor](https://en.wikipedia.org/wiki/Input_method) (IME).

* * *

[bool](class_bool.md#class-bool) **has\_redo**() const [🔗](#class-lineedit-method-has-redo)

Returns `true` if a "redo" action is available.

* * *

[bool](class_bool.md#class-bool) **has\_selection**() const [🔗](#class-lineedit-method-has-selection)

Returns `true` if the user has selected text.

* * *

[bool](class_bool.md#class-bool) **has\_undo**() const [🔗](#class-lineedit-method-has-undo)

Returns `true` if an "undo" action is available.

* * *

void **insert\_text\_at\_caret**(text: [String](class_string.md#class-string)) [🔗](#class-lineedit-method-insert-text-at-caret)

Inserts `text` at the caret. If the resulting value is longer than [max\_length](#class-lineedit-property-max-length), nothing happens.

* * *

[bool](class_bool.md#class-bool) **is\_editing**() const [🔗](#class-lineedit-method-is-editing)

Returns whether the **LineEdit** is being edited.

* * *

[bool](class_bool.md#class-bool) **is\_menu\_visible**() const [🔗](#class-lineedit-method-is-menu-visible)

Returns whether the menu is visible. Use this instead of `get_menu().visible` to improve performance (so the creation of the menu is avoided).

* * *

void **menu\_option**(option: [int](class_int.md#class-int)) [🔗](#class-lineedit-method-menu-option)

Executes a given action as defined in the [MenuItems](#enum-lineedit-menuitems) enum.

* * *

void **select**(from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = -1) [🔗](#class-lineedit-method-select)

Selects characters inside **LineEdit** between `from` and `to`. By default, `from` is at the beginning and `to` at the end.

GDScriptC#

```
text = "Welcome"
select() # Will select "Welcome".
select(4) # Will select "ome".
select(2, 5) # Will select "lco".

```

```
Text = "Welcome";
Select(); // Will select "Welcome".
Select(4); // Will select "ome".
Select(2, 5); // Will select "lco".

```

* * *

void **select\_all**() [🔗](#class-lineedit-method-select-all)

Selects the whole [String](class_string.md#class-string).

* * *

void **unedit**() [🔗](#class-lineedit-method-unedit)

Allows exiting edit mode while preserving focus.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **caret\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-lineedit-theme-color-caret-color)

Color of the **LineEdit**'s caret (text cursor). This can be set to a fully transparent color to hide the caret entirely.

* * *

[Color](class_color.md#class-color) **clear\_button\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-lineedit-theme-color-clear-button-color)

Color used as default tint for the clear button.

* * *

[Color](class_color.md#class-color) **clear\_button\_color\_pressed** = `Color(1, 1, 1, 1)` [🔗](#class-lineedit-theme-color-clear-button-color-pressed)

Color used for the clear button when it's pressed.

* * *

[Color](class_color.md#class-color) **font\_color** = `Color(0.875, 0.875, 0.875, 1)` [🔗](#class-lineedit-theme-color-font-color)

Default font color.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-lineedit-theme-color-font-outline-color)

The tint of text outline of the **LineEdit**.

* * *

[Color](class_color.md#class-color) **font\_placeholder\_color** = `Color(0.875, 0.875, 0.875, 0.6)` [🔗](#class-lineedit-theme-color-font-placeholder-color)

Font color for [placeholder\_text](#class-lineedit-property-placeholder-text).

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(1, 1, 1, 1)` [🔗](#class-lineedit-theme-color-font-selected-color)

Font color for selected text (inside the selection rectangle).

* * *

[Color](class_color.md#class-color) **font\_uneditable\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-lineedit-theme-color-font-uneditable-color)

Font color when editing is disabled.

* * *

[Color](class_color.md#class-color) **selection\_color** = `Color(0.5, 0.5, 0.5, 1)` [🔗](#class-lineedit-theme-color-selection-color)

Color of the selection rectangle.

* * *

[int](class_int.md#class-int) **caret\_width** = `1` [🔗](#class-lineedit-theme-constant-caret-width)

The caret's width in pixels. Greater values can be used to improve accessibility by ensuring the caret is easily visible, or to ensure consistency with a large font size.

* * *

[int](class_int.md#class-int) **minimum\_character\_width** = `4` [🔗](#class-lineedit-theme-constant-minimum-character-width)

Minimum horizontal space for the text (not counting the clear button and content margins). This value is measured in count of 'M' characters (i.e. this number of 'M' characters can be displayed without scrolling).

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-lineedit-theme-constant-outline-size)

The size of the text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-lineedit-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-lineedit-theme-font-font)

Font used for the text.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-lineedit-theme-font-size-font-size)

Font size of the **LineEdit**'s text.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **clear** [🔗](#class-lineedit-theme-icon-clear)

Texture for the clear button. See [clear\_button\_enabled](#class-lineedit-property-clear-button-enabled).

* * *

[StyleBox](class_stylebox.md#class-stylebox) **focus** [🔗](#class-lineedit-theme-style-focus)

Background used when **LineEdit** has GUI focus. The [focus](#class-lineedit-theme-style-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox), so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **normal** [🔗](#class-lineedit-theme-style-normal)

Default background for the **LineEdit**.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **read\_only** [🔗](#class-lineedit-theme-style-read-only)

Background used when **LineEdit** is in read-only mode ( [editable](#class-lineedit-property-editable) is set to `false`).

[Previous](class_line2d.md "Line2D") [Next](class_linkbutton.md "LinkButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_line2d.md "Line2D") [Next](class_linkbutton.md "LinkButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).