---
title: TabBar — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tabbar.html
crawled_at: "2026-08-13T10:21:53+12:00"
content_hash: bbc7ed35e1c37cb9db00a67fbba8dac88926a7dbe557450d20433b2346a02de1
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TabBar

* * *

# TabBar

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A control that provides a horizontal bar with tabs.

## Description

A control that provides a horizontal bar with tabs. Similar to [TabContainer](class_tabcontainer.md#class-tabcontainer) but is only in charge of drawing tabs, not interacting with children.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [clip\_tabs](#class-tabbar-property-clip-tabs) | `true` |
| [bool](class_bool.md#class-bool) | [close\_with\_middle\_mouse](#class-tabbar-property-close-with-middle-mouse) | `true` |
| [int](class_int.md#class-int) | [current\_tab](#class-tabbar-property-current-tab) | `-1` |
| [bool](class_bool.md#class-bool) | [deselect\_enabled](#class-tabbar-property-deselect-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [drag\_to\_rearrange\_enabled](#class-tabbar-property-drag-to-rearrange-enabled) | `false` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [int](class_int.md#class-int) | [max\_tab\_width](#class-tabbar-property-max-tab-width) | `0` |
| [bool](class_bool.md#class-bool) | [scroll\_to\_selected](#class-tabbar-property-scroll-to-selected) | `true` |
| [bool](class_bool.md#class-bool) | [scrolling\_enabled](#class-tabbar-property-scrolling-enabled) | `true` |
| [bool](class_bool.md#class-bool) | [select\_with\_rmb](#class-tabbar-property-select-with-rmb) | `false` |
| [AlignmentMode](#enum-tabbar-alignmentmode) | [tab\_alignment](#class-tabbar-property-tab-alignment) | `0` |
| [CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) | [tab\_close\_display\_policy](#class-tabbar-property-tab-close-display-policy) | `0` |
| [int](class_int.md#class-int) | [tab\_count](#class-tabbar-property-tab-count) | `0` |
| [int](class_int.md#class-int) | [tabs\_rearrange\_group](#class-tabbar-property-tabs-rearrange-group) | `-1` |

## Methods

|     |     |
| --- | --- |
| void | [add\_tab](#class-tabbar-method-add-tab)(title: [String](class_string.md#class-string) = "", icon: [Texture2D](class_texture2d.md#class-texture2d) = null) |
| void | [clear\_tabs](#class-tabbar-method-clear-tabs)() |
| void | [ensure\_tab\_visible](#class-tabbar-method-ensure-tab-visible)(idx: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [get\_offset\_buttons\_visible](#class-tabbar-method-get-offset-buttons-visible)() const |
| [int](class_int.md#class-int) | [get\_previous\_tab](#class-tabbar-method-get-previous-tab)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_tab\_button\_icon](#class-tabbar-method-get-tab-button-icon)(tab\_idx: [int](class_int.md#class-int)) const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_tab\_icon](#class-tabbar-method-get-tab-icon)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_icon\_max\_width](#class-tabbar-method-get-tab-icon-max-width)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_idx\_at\_point](#class-tabbar-method-get-tab-idx-at-point)(point: [Vector2](class_vector2.md#class-vector2)) const |
| [String](class_string.md#class-string) | [get\_tab\_language](#class-tabbar-method-get-tab-language)(tab\_idx: [int](class_int.md#class-int)) const |
| [Variant](class_variant.md#class-variant) | [get\_tab\_metadata](#class-tabbar-method-get-tab-metadata)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_offset](#class-tabbar-method-get-tab-offset)() const |
| [Rect2](class_rect2.md#class-rect2) | [get\_tab\_rect](#class-tabbar-method-get-tab-rect)(tab\_idx: [int](class_int.md#class-int)) const |
| [TextDirection](class_control.md#enum-control-textdirection) | [get\_tab\_text\_direction](#class-tabbar-method-get-tab-text-direction)(tab\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_tab\_title](#class-tabbar-method-get-tab-title)(tab\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_tab\_tooltip](#class-tabbar-method-get-tab-tooltip)(tab\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_tab\_disabled](#class-tabbar-method-is-tab-disabled)(tab\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_tab\_hidden](#class-tabbar-method-is-tab-hidden)(tab\_idx: [int](class_int.md#class-int)) const |
| void | [move\_tab](#class-tabbar-method-move-tab)(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) |
| void | [remove\_tab](#class-tabbar-method-remove-tab)(tab\_idx: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [select\_next\_available](#class-tabbar-method-select-next-available)() |
| [bool](class_bool.md#class-bool) | [select\_previous\_available](#class-tabbar-method-select-previous-available)() |
| void | [set\_tab\_button\_icon](#class-tabbar-method-set-tab-button-icon)(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_tab\_disabled](#class-tabbar-method-set-tab-disabled)(tab\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_tab\_hidden](#class-tabbar-method-set-tab-hidden)(tab\_idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) |
| void | [set\_tab\_icon](#class-tabbar-method-set-tab-icon)(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_tab\_icon\_max\_width](#class-tabbar-method-set-tab-icon-max-width)(tab\_idx: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) |
| void | [set\_tab\_language](#class-tabbar-method-set-tab-language)(tab\_idx: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) |
| void | [set\_tab\_metadata](#class-tabbar-method-set-tab-metadata)(tab\_idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_tab\_text\_direction](#class-tabbar-method-set-tab-text-direction)(tab\_idx: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) |
| void | [set\_tab\_title](#class-tabbar-method-set-tab-title)(tab\_idx: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) |
| void | [set\_tab\_tooltip](#class-tabbar-method-set-tab-tooltip)(tab\_idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [drop\_mark\_color](#class-tabbar-theme-color-drop-mark-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-tabbar-theme-color-font-disabled-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [font\_hovered\_color](#class-tabbar-theme-color-font-hovered-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-tabbar-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-tabbar-theme-color-font-selected-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_unselected\_color](#class-tabbar-theme-color-font-unselected-color) | `Color(0.7, 0.7, 0.7, 1)` |
| [int](class_int.md#class-int) | [h\_separation](#class-tabbar-theme-constant-h-separation) | `4` |
| [int](class_int.md#class-int) | [icon\_max\_width](#class-tabbar-theme-constant-icon-max-width) | `0` |
| [int](class_int.md#class-int) | [outline\_size](#class-tabbar-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [tab\_separation](#class-tabbar-theme-constant-tab-separation) | `0` |
| [Font](class_font.md#class-font) | [font](#class-tabbar-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-tabbar-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [close](#class-tabbar-theme-icon-close) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement](#class-tabbar-theme-icon-decrement) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement\_highlight](#class-tabbar-theme-icon-decrement-highlight) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [drop\_mark](#class-tabbar-theme-icon-drop-mark) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment](#class-tabbar-theme-icon-increment) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment\_highlight](#class-tabbar-theme-icon-increment-highlight) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [button\_highlight](#class-tabbar-theme-style-button-highlight) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [button\_pressed](#class-tabbar-theme-style-button-pressed) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_disabled](#class-tabbar-theme-style-tab-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_focus](#class-tabbar-theme-style-tab-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_hovered](#class-tabbar-theme-style-tab-hovered) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_selected](#class-tabbar-theme-style-tab-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_unselected](#class-tabbar-theme-style-tab-unselected) |  |

* * *

## Signals

**active\_tab\_rearranged**(idx\_to: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-active-tab-rearranged)

Emitted when the active tab is rearranged via mouse drag. See [drag\_to\_rearrange\_enabled](#class-tabbar-property-drag-to-rearrange-enabled).

* * *

**tab\_button\_pressed**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-button-pressed)

Emitted when a tab's right button is pressed. See [set\_tab\_button\_icon()](#class-tabbar-method-set-tab-button-icon).

* * *

**tab\_changed**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-changed)

Emitted when switching to another tab.

* * *

**tab\_clicked**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-clicked)

Emitted when a tab is clicked, even if it is the current tab.

* * *

**tab\_close\_pressed**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-close-pressed)

Emitted when a tab's close button is pressed or when middle-clicking on a tab, if [close\_with\_middle\_mouse](#class-tabbar-property-close-with-middle-mouse) is enabled.

**Note:** Tabs are not removed automatically once the close button is pressed, this behavior needs to be programmed manually. For example:

GDScriptC#

```
$TabBar.tab_close_pressed.connect($TabBar.remove_tab)

```

```
GetNode<TabBar>("TabBar").TabClosePressed += GetNode<TabBar>("TabBar").RemoveTab;

```

* * *

**tab\_hovered**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-hovered)

Emitted when a tab is hovered by the mouse.

* * *

**tab\_rmb\_clicked**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-rmb-clicked)

Emitted when a tab is right-clicked. [select\_with\_rmb](#class-tabbar-property-select-with-rmb) must be enabled.

* * *

**tab\_selected**(tab: [int](class_int.md#class-int)) [🔗](#class-tabbar-signal-tab-selected)

Emitted when a tab is selected via click, directional input, or script, even if it is the current tab.

* * *

## Enumerations

enum **AlignmentMode**: [🔗](#enum-tabbar-alignmentmode)

[AlignmentMode](#enum-tabbar-alignmentmode) **ALIGNMENT\_LEFT** = `0`

Places tabs to the left.

[AlignmentMode](#enum-tabbar-alignmentmode) **ALIGNMENT\_CENTER** = `1`

Places tabs in the middle.

[AlignmentMode](#enum-tabbar-alignmentmode) **ALIGNMENT\_RIGHT** = `2`

Places tabs to the right.

[AlignmentMode](#enum-tabbar-alignmentmode) **ALIGNMENT\_MAX** = `3`

Represents the size of the [AlignmentMode](#enum-tabbar-alignmentmode) enum.

* * *

enum **CloseButtonDisplayPolicy**: [🔗](#enum-tabbar-closebuttondisplaypolicy)

[CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **CLOSE\_BUTTON\_SHOW\_NEVER** = `0`

Never show the close buttons.

[CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **CLOSE\_BUTTON\_SHOW\_ACTIVE\_ONLY** = `1`

Only show the close button on the currently active tab.

[CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **CLOSE\_BUTTON\_SHOW\_ALWAYS** = `2`

Show the close button on all tabs.

[CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **CLOSE\_BUTTON\_MAX** = `3`

Represents the size of the [CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) enum.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **clip\_tabs** = `true` [🔗](#class-tabbar-property-clip-tabs)

- void **set\_clip\_tabs**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_clip\_tabs**()


If `true`, tabs overflowing this node's width will be hidden, displaying two navigation buttons instead. Otherwise, this node's minimum size is updated so that all tabs are visible.

* * *

[bool](class_bool.md#class-bool) **close\_with\_middle\_mouse** = `true` [🔗](#class-tabbar-property-close-with-middle-mouse)

- void **set\_close\_with\_middle\_mouse**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_close\_with\_middle\_mouse**()


If `true`, middle clicking on the mouse will fire the [tab\_close\_pressed](#class-tabbar-signal-tab-close-pressed) signal.

* * *

[int](class_int.md#class-int) **current\_tab** = `-1` [🔗](#class-tabbar-property-current-tab)

- void **set\_current\_tab**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_current\_tab**()


The index of the current selected tab. A value of `-1` means that no tab is selected and can only be set when [deselect\_enabled](#class-tabbar-property-deselect-enabled) is `true` or if all tabs are hidden or disabled.

* * *

[bool](class_bool.md#class-bool) **deselect\_enabled** = `false` [🔗](#class-tabbar-property-deselect-enabled)

- void **set\_deselect\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_deselect\_enabled**()


If `true`, all tabs can be deselected so that no tab is selected. Click on the current tab to deselect it.

* * *

[bool](class_bool.md#class-bool) **drag\_to\_rearrange\_enabled** = `false` [🔗](#class-tabbar-property-drag-to-rearrange-enabled)

- void **set\_drag\_to\_rearrange\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_drag\_to\_rearrange\_enabled**()


If `true`, tabs can be rearranged with mouse drag.

* * *

[int](class_int.md#class-int) **max\_tab\_width** = `0` [🔗](#class-tabbar-property-max-tab-width)

- void **set\_max\_tab\_width**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_tab\_width**()


Sets the maximum width which all tabs should be limited to. Unlimited if set to `0`.

* * *

[bool](class_bool.md#class-bool) **scroll\_to\_selected** = `true` [🔗](#class-tabbar-property-scroll-to-selected)

- void **set\_scroll\_to\_selected**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_scroll\_to\_selected**()


If `true`, the tab offset will be changed to keep the currently selected tab visible.

* * *

[bool](class_bool.md#class-bool) **scrolling\_enabled** = `true` [🔗](#class-tabbar-property-scrolling-enabled)

- void **set\_scrolling\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_scrolling\_enabled**()


if `true`, the mouse's scroll wheel can be used to navigate the scroll view.

* * *

[bool](class_bool.md#class-bool) **select\_with\_rmb** = `false` [🔗](#class-tabbar-property-select-with-rmb)

- void **set\_select\_with\_rmb**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_select\_with\_rmb**()


If `true`, enables selecting a tab with the right mouse button.

* * *

[AlignmentMode](#enum-tabbar-alignmentmode) **tab\_alignment** = `0` [🔗](#class-tabbar-property-tab-alignment)

- void **set\_tab\_alignment**(value: [AlignmentMode](#enum-tabbar-alignmentmode))

- [AlignmentMode](#enum-tabbar-alignmentmode) **get\_tab\_alignment**()


The position at which tabs will be placed.

* * *

[CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **tab\_close\_display\_policy** = `0` [🔗](#class-tabbar-property-tab-close-display-policy)

- void **set\_tab\_close\_display\_policy**(value: [CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy))

- [CloseButtonDisplayPolicy](#enum-tabbar-closebuttondisplaypolicy) **get\_tab\_close\_display\_policy**()


When the close button will appear on the tabs.

* * *

[int](class_int.md#class-int) **tab\_count** = `0` [🔗](#class-tabbar-property-tab-count)

- void **set\_tab\_count**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_tab\_count**()


The number of tabs currently in the bar.

* * *

[int](class_int.md#class-int) **tabs\_rearrange\_group** = `-1` [🔗](#class-tabbar-property-tabs-rearrange-group)

- void **set\_tabs\_rearrange\_group**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_tabs\_rearrange\_group**()


**TabBar** s with the same rearrange group ID will allow dragging the tabs between them. Enable drag with [drag\_to\_rearrange\_enabled](#class-tabbar-property-drag-to-rearrange-enabled).

Setting this to `-1` will disable rearranging between **TabBar** s.

* * *

## Method Descriptions

void **add\_tab**(title: [String](class_string.md#class-string) = "", icon: [Texture2D](class_texture2d.md#class-texture2d) = null) [🔗](#class-tabbar-method-add-tab)

Adds a new tab.

* * *

void **clear\_tabs**() [🔗](#class-tabbar-method-clear-tabs)

Clears all tabs.

* * *

void **ensure\_tab\_visible**(idx: [int](class_int.md#class-int)) [🔗](#class-tabbar-method-ensure-tab-visible)

Moves the scroll view to make the tab visible.

* * *

[bool](class_bool.md#class-bool) **get\_offset\_buttons\_visible**() const [🔗](#class-tabbar-method-get-offset-buttons-visible)

Returns `true` if the offset buttons (the ones that appear when there's not enough space for all tabs) are visible.

* * *

[int](class_int.md#class-int) **get\_previous\_tab**() const [🔗](#class-tabbar-method-get-previous-tab)

Returns the previously active tab index.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_tab\_button\_icon**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-button-icon)

Returns the icon for the right button of the tab at index `tab_idx` or `null` if the right button has no icon.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_tab\_icon**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-icon)

Returns the icon for the tab at index `tab_idx` or `null` if the tab has no icon.

* * *

[int](class_int.md#class-int) **get\_tab\_icon\_max\_width**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-icon-max-width)

Returns the maximum allowed width of the icon for the tab at index `tab_idx`.

* * *

[int](class_int.md#class-int) **get\_tab\_idx\_at\_point**(point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-tabbar-method-get-tab-idx-at-point)

Returns the index of the tab at local coordinates `point`. Returns `-1` if the point is outside the control boundaries or if there's no tab at the queried position.

* * *

[String](class_string.md#class-string) **get\_tab\_language**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-language)

Returns tab title language code.

* * *

[Variant](class_variant.md#class-variant) **get\_tab\_metadata**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-metadata)

Returns the metadata value set to the tab at index `tab_idx` using [set\_tab\_metadata()](#class-tabbar-method-set-tab-metadata). If no metadata was previously set, returns `null` by default.

* * *

[int](class_int.md#class-int) **get\_tab\_offset**() const [🔗](#class-tabbar-method-get-tab-offset)

Returns the number of hidden tabs offsetted to the left.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_tab\_rect**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-rect)

Returns tab [Rect2](class_rect2.md#class-rect2) with local position and size.

* * *

[TextDirection](class_control.md#enum-control-textdirection) **get\_tab\_text\_direction**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-text-direction)

Returns tab title text base writing direction.

* * *

[String](class_string.md#class-string) **get\_tab\_title**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-title)

Returns the title of the tab at index `tab_idx`.

* * *

[String](class_string.md#class-string) **get\_tab\_tooltip**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-get-tab-tooltip)

Returns the tooltip text of the tab at index `tab_idx`.

* * *

[bool](class_bool.md#class-bool) **is\_tab\_disabled**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-is-tab-disabled)

Returns `true` if the tab at index `tab_idx` is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_tab\_hidden**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabbar-method-is-tab-hidden)

Returns `true` if the tab at index `tab_idx` is hidden.

* * *

void **move\_tab**(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) [🔗](#class-tabbar-method-move-tab)

Moves a tab from `from` to `to`.

* * *

void **remove\_tab**(tab\_idx: [int](class_int.md#class-int)) [🔗](#class-tabbar-method-remove-tab)

Removes the tab at index `tab_idx`.

* * *

[bool](class_bool.md#class-bool) **select\_next\_available**() [🔗](#class-tabbar-method-select-next-available)

Selects the first available tab with greater index than the currently selected. Returns `true` if tab selection changed.

* * *

[bool](class_bool.md#class-bool) **select\_previous\_available**() [🔗](#class-tabbar-method-select-previous-available)

Selects the first available tab with lower index than the currently selected. Returns `true` if tab selection changed.

* * *

void **set\_tab\_button\_icon**(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-tabbar-method-set-tab-button-icon)

Sets an `icon` for the button of the tab at index `tab_idx` (located to the right, before the close button), making it visible and clickable (See [tab\_button\_pressed](#class-tabbar-signal-tab-button-pressed)). Giving it a `null` value will hide the button.

* * *

void **set\_tab\_disabled**(tab\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-tabbar-method-set-tab-disabled)

If `disabled` is `true`, disables the tab at index `tab_idx`, making it non-interactable.

* * *

void **set\_tab\_hidden**(tab\_idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) [🔗](#class-tabbar-method-set-tab-hidden)

If `hidden` is `true`, hides the tab at index `tab_idx`, making it disappear from the tab area.

* * *

void **set\_tab\_icon**(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-tabbar-method-set-tab-icon)

Sets an `icon` for the tab at index `tab_idx`.

* * *

void **set\_tab\_icon\_max\_width**(tab\_idx: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) [🔗](#class-tabbar-method-set-tab-icon-max-width)

Sets the maximum allowed width of the icon for the tab at index `tab_idx`. This limit is applied on top of the default size of the icon and on top of [icon\_max\_width](#class-tabbar-theme-constant-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

void **set\_tab\_language**(tab\_idx: [int](class_int.md#class-int), language: [String](class_string.md#class-string)) [🔗](#class-tabbar-method-set-tab-language)

Sets language code of tab title used for line-breaking and text shaping algorithms, if left empty current locale is used instead.

* * *

void **set\_tab\_metadata**(tab\_idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-tabbar-method-set-tab-metadata)

Sets the metadata value for the tab at index `tab_idx`, which can be retrieved later using [get\_tab\_metadata()](#class-tabbar-method-get-tab-metadata).

* * *

void **set\_tab\_text\_direction**(tab\_idx: [int](class_int.md#class-int), direction: [TextDirection](class_control.md#enum-control-textdirection)) [🔗](#class-tabbar-method-set-tab-text-direction)

Sets tab title base writing direction.

* * *

void **set\_tab\_title**(tab\_idx: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) [🔗](#class-tabbar-method-set-tab-title)

Sets a `title` for the tab at index `tab_idx`.

* * *

void **set\_tab\_tooltip**(tab\_idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-tabbar-method-set-tab-tooltip)

Sets a `tooltip` for tab at index `tab_idx`.

**Note:** By default, if the `tooltip` is empty and the tab text is truncated (not all characters fit into the tab), the title will be displayed as a tooltip. To hide the tooltip, assign `" "` as the `tooltip` text.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **drop\_mark\_color** = `Color(1, 1, 1, 1)` [🔗](#class-tabbar-theme-color-drop-mark-color)

Modulation color for the [drop\_mark](#class-tabbar-theme-icon-drop-mark) icon.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-tabbar-theme-color-font-disabled-color)

Font color of disabled tabs.

* * *

[Color](class_color.md#class-color) **font\_hovered\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-tabbar-theme-color-font-hovered-color)

Font color of the currently hovered tab. Does not apply to the selected tab.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-tabbar-theme-color-font-outline-color)

The tint of text outline of the tab name.

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-tabbar-theme-color-font-selected-color)

Font color of the currently selected tab.

* * *

[Color](class_color.md#class-color) **font\_unselected\_color** = `Color(0.7, 0.7, 0.7, 1)` [🔗](#class-tabbar-theme-color-font-unselected-color)

Font color of the other, unselected tabs.

* * *

[int](class_int.md#class-int) **h\_separation** = `4` [🔗](#class-tabbar-theme-constant-h-separation)

The horizontal separation between the elements inside tabs.

* * *

[int](class_int.md#class-int) **icon\_max\_width** = `0` [🔗](#class-tabbar-theme-constant-icon-max-width)

The maximum allowed width of the tab's icon. This limit is applied on top of the default size of the icon, but before the value set with [set\_tab\_icon\_max\_width()](#class-tabbar-method-set-tab-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-tabbar-theme-constant-outline-size)

The size of the tab text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-tabbar-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **tab\_separation** = `0` [🔗](#class-tabbar-theme-constant-tab-separation)

The space between tabs in the tab bar.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-tabbar-theme-font-font)

The font used to draw tab names.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-tabbar-theme-font-size-font-size)

Font size of the tab names.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **close** [🔗](#class-tabbar-theme-icon-close)

The icon for the close button (see [tab\_close\_display\_policy](#class-tabbar-property-tab-close-display-policy)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement** [🔗](#class-tabbar-theme-icon-decrement)

Icon for the left arrow button that appears when there are too many tabs to fit in the container width. When the button is disabled (i.e. the first tab is visible), it appears semi-transparent.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement\_highlight** [🔗](#class-tabbar-theme-icon-decrement-highlight)

Icon for the left arrow button that appears when there are too many tabs to fit in the container width. Used when the button is being hovered with the cursor.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **drop\_mark** [🔗](#class-tabbar-theme-icon-drop-mark)

Icon shown to indicate where a dragged tab is gonna be dropped (see [drag\_to\_rearrange\_enabled](#class-tabbar-property-drag-to-rearrange-enabled)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment** [🔗](#class-tabbar-theme-icon-increment)

Icon for the right arrow button that appears when there are too many tabs to fit in the container width. When the button is disabled (i.e. the last tab is visible) it appears semi-transparent.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment\_highlight** [🔗](#class-tabbar-theme-icon-increment-highlight)

Icon for the right arrow button that appears when there are too many tabs to fit in the container width. Used when the button is being hovered with the cursor.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **button\_highlight** [🔗](#class-tabbar-theme-style-button-highlight)

Background of the tab and close buttons when they're being hovered with the cursor.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **button\_pressed** [🔗](#class-tabbar-theme-style-button-pressed)

Background of the tab and close buttons when it's being pressed.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_disabled** [🔗](#class-tabbar-theme-style-tab-disabled)

The style of disabled tabs.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_focus** [🔗](#class-tabbar-theme-style-tab-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **TabBar** is focused. The [tab\_focus](#class-tabbar-theme-style-tab-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox) of the selected tab, so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_hovered** [🔗](#class-tabbar-theme-style-tab-hovered)

The style of the currently hovered tab. Does not apply to the selected tab.

**Note:** This style will be drawn with the same width as [tab\_unselected](#class-tabbar-theme-style-tab-unselected) at minimum.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_selected** [🔗](#class-tabbar-theme-style-tab-selected)

The style of the currently selected tab.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_unselected** [🔗](#class-tabbar-theme-style-tab-unselected)

The style of the other, unselected tabs.

[Previous](class_subviewportcontainer.md "SubViewportContainer") [Next](class_tabcontainer.md "TabContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_subviewportcontainer.md "SubViewportContainer") [Next](class_tabcontainer.md "TabContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).