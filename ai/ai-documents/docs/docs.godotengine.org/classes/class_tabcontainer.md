---
title: TabContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tabcontainer.html
crawled_at: "2026-08-13T10:23:04+12:00"
content_hash: d39b11af5138cb701523be4f3b8628e8eba39cab4da120ca84b2aeceb2da67c3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TabContainer

* * *

# TabContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container that creates a tab for each child control, displaying only the active tab's control.

## Description

Arranges child controls into a tabbed view, creating a tab for each one. The active tab's corresponding control is made visible, while all other child controls are hidden. Ignores non-control children.

**Note:** The drawing of the clickable tabs is handled by this node; [TabBar](class_tabbar.md#class-tabbar) is not needed.

## Tutorials

- [Using Containers](../tutorials/ui/gui_containers.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [all\_tabs\_in\_front](#class-tabcontainer-property-all-tabs-in-front) | `false` |
| [bool](class_bool.md#class-bool) | [clip\_tabs](#class-tabcontainer-property-clip-tabs) | `true` |
| [int](class_int.md#class-int) | [current\_tab](#class-tabcontainer-property-current-tab) | `-1` |
| [bool](class_bool.md#class-bool) | [deselect\_enabled](#class-tabcontainer-property-deselect-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [drag\_to\_rearrange\_enabled](#class-tabcontainer-property-drag-to-rearrange-enabled) | `false` |
| [AlignmentMode](class_tabbar.md#enum-tabbar-alignmentmode) | [tab\_alignment](#class-tabcontainer-property-tab-alignment) | `0` |
| [FocusMode](class_control.md#enum-control-focusmode) | [tab\_focus\_mode](#class-tabcontainer-property-tab-focus-mode) | `2` |
| [TabPosition](#enum-tabcontainer-tabposition) | [tabs\_position](#class-tabcontainer-property-tabs-position) | `0` |
| [int](class_int.md#class-int) | [tabs\_rearrange\_group](#class-tabcontainer-property-tabs-rearrange-group) | `-1` |
| [bool](class_bool.md#class-bool) | [tabs\_visible](#class-tabcontainer-property-tabs-visible) | `true` |
| [bool](class_bool.md#class-bool) | [use\_hidden\_tabs\_for\_min\_size](#class-tabcontainer-property-use-hidden-tabs-for-min-size) | `false` |

## Methods

|     |     |
| --- | --- |
| [Control](class_control.md#class-control) | [get\_current\_tab\_control](#class-tabcontainer-method-get-current-tab-control)() const |
| [Popup](class_popup.md#class-popup) | [get\_popup](#class-tabcontainer-method-get-popup)() const |
| [int](class_int.md#class-int) | [get\_previous\_tab](#class-tabcontainer-method-get-previous-tab)() const |
| [TabBar](class_tabbar.md#class-tabbar) | [get\_tab\_bar](#class-tabcontainer-method-get-tab-bar)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_tab\_button\_icon](#class-tabcontainer-method-get-tab-button-icon)(tab\_idx: [int](class_int.md#class-int)) const |
| [Control](class_control.md#class-control) | [get\_tab\_control](#class-tabcontainer-method-get-tab-control)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_count](#class-tabcontainer-method-get-tab-count)() const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_tab\_icon](#class-tabcontainer-method-get-tab-icon)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_icon\_max\_width](#class-tabcontainer-method-get-tab-icon-max-width)(tab\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tab\_idx\_at\_point](#class-tabcontainer-method-get-tab-idx-at-point)(point: [Vector2](class_vector2.md#class-vector2)) const |
| [int](class_int.md#class-int) | [get\_tab\_idx\_from\_control](#class-tabcontainer-method-get-tab-idx-from-control)(control: [Control](class_control.md#class-control)) const |
| [Variant](class_variant.md#class-variant) | [get\_tab\_metadata](#class-tabcontainer-method-get-tab-metadata)(tab\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_tab\_title](#class-tabcontainer-method-get-tab-title)(tab\_idx: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_tab\_tooltip](#class-tabcontainer-method-get-tab-tooltip)(tab\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_tab\_disabled](#class-tabcontainer-method-is-tab-disabled)(tab\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_tab\_hidden](#class-tabcontainer-method-is-tab-hidden)(tab\_idx: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [select\_next\_available](#class-tabcontainer-method-select-next-available)() |
| [bool](class_bool.md#class-bool) | [select\_previous\_available](#class-tabcontainer-method-select-previous-available)() |
| void | [set\_popup](#class-tabcontainer-method-set-popup)(popup: [Node](class_node.md#class-node)) |
| void | [set\_tab\_button\_icon](#class-tabcontainer-method-set-tab-button-icon)(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_tab\_disabled](#class-tabcontainer-method-set-tab-disabled)(tab\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [set\_tab\_hidden](#class-tabcontainer-method-set-tab-hidden)(tab\_idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) |
| void | [set\_tab\_icon](#class-tabcontainer-method-set-tab-icon)(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_tab\_icon\_max\_width](#class-tabcontainer-method-set-tab-icon-max-width)(tab\_idx: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) |
| void | [set\_tab\_metadata](#class-tabcontainer-method-set-tab-metadata)(tab\_idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) |
| void | [set\_tab\_title](#class-tabcontainer-method-set-tab-title)(tab\_idx: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) |
| void | [set\_tab\_tooltip](#class-tabcontainer-method-set-tab-tooltip)(tab\_idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [drop\_mark\_color](#class-tabcontainer-theme-color-drop-mark-color) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [font\_disabled\_color](#class-tabcontainer-theme-color-font-disabled-color) | `Color(0.875, 0.875, 0.875, 0.5)` |
| [Color](class_color.md#class-color) | [font\_hovered\_color](#class-tabcontainer-theme-color-font-hovered-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_outline\_color](#class-tabcontainer-theme-color-font-outline-color) | `Color(0, 0, 0, 1)` |
| [Color](class_color.md#class-color) | [font\_selected\_color](#class-tabcontainer-theme-color-font-selected-color) | `Color(0.95, 0.95, 0.95, 1)` |
| [Color](class_color.md#class-color) | [font\_unselected\_color](#class-tabcontainer-theme-color-font-unselected-color) | `Color(0.7, 0.7, 0.7, 1)` |
| [int](class_int.md#class-int) | [icon\_max\_width](#class-tabcontainer-theme-constant-icon-max-width) | `0` |
| [int](class_int.md#class-int) | [icon\_separation](#class-tabcontainer-theme-constant-icon-separation) | `4` |
| [int](class_int.md#class-int) | [outline\_size](#class-tabcontainer-theme-constant-outline-size) | `0` |
| [int](class_int.md#class-int) | [side\_margin](#class-tabcontainer-theme-constant-side-margin) | `8` |
| [int](class_int.md#class-int) | [tab\_separation](#class-tabcontainer-theme-constant-tab-separation) | `0` |
| [Font](class_font.md#class-font) | [font](#class-tabcontainer-theme-font-font) |  |
| [int](class_int.md#class-int) | [font\_size](#class-tabcontainer-theme-font-size-font-size) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement](#class-tabcontainer-theme-icon-decrement) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [decrement\_highlight](#class-tabcontainer-theme-icon-decrement-highlight) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [drop\_mark](#class-tabcontainer-theme-icon-drop-mark) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment](#class-tabcontainer-theme-icon-increment) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [increment\_highlight](#class-tabcontainer-theme-icon-increment-highlight) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [menu](#class-tabcontainer-theme-icon-menu) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [menu\_highlight](#class-tabcontainer-theme-icon-menu-highlight) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-tabcontainer-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_disabled](#class-tabcontainer-theme-style-tab-disabled) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_focus](#class-tabcontainer-theme-style-tab-focus) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_hovered](#class-tabcontainer-theme-style-tab-hovered) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_selected](#class-tabcontainer-theme-style-tab-selected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tab\_unselected](#class-tabcontainer-theme-style-tab-unselected) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [tabbar\_background](#class-tabcontainer-theme-style-tabbar-background) |  |

* * *

## Signals

**active\_tab\_rearranged**(idx\_to: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-active-tab-rearranged)

Emitted when the active tab is rearranged via mouse drag. See [drag\_to\_rearrange\_enabled](#class-tabcontainer-property-drag-to-rearrange-enabled).

* * *

**pre\_popup\_pressed**() [🔗](#class-tabcontainer-signal-pre-popup-pressed)

Emitted when the **TabContainer**'s [Popup](class_popup.md#class-popup) button is clicked. See [set\_popup()](#class-tabcontainer-method-set-popup) for details.

* * *

**tab\_button\_pressed**(tab: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-tab-button-pressed)

Emitted when the user clicks on the button icon on this tab.

* * *

**tab\_changed**(tab: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-tab-changed)

Emitted when switching to another tab.

* * *

**tab\_clicked**(tab: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-tab-clicked)

Emitted when a tab is clicked, even if it is the current tab.

* * *

**tab\_hovered**(tab: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-tab-hovered)

Emitted when a tab is hovered by the mouse.

* * *

**tab\_selected**(tab: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-signal-tab-selected)

Emitted when a tab is selected via click, directional input, or script, even if it is the current tab.

* * *

## Enumerations

enum **TabPosition**: [🔗](#enum-tabcontainer-tabposition)

[TabPosition](#enum-tabcontainer-tabposition) **POSITION\_TOP** = `0`

Places the tab bar at the top.

[TabPosition](#enum-tabcontainer-tabposition) **POSITION\_BOTTOM** = `1`

Places the tab bar at the bottom. The tab bar's [StyleBox](class_stylebox.md#class-stylebox) will be flipped vertically.

[TabPosition](#enum-tabcontainer-tabposition) **POSITION\_MAX** = `2`

Represents the size of the [TabPosition](#enum-tabcontainer-tabposition) enum.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **all\_tabs\_in\_front** = `false` [🔗](#class-tabcontainer-property-all-tabs-in-front)

- void **set\_all\_tabs\_in\_front**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_all\_tabs\_in\_front**()


If `true`, all tabs are drawn in front of the panel. If `false`, inactive tabs are drawn behind the panel.

* * *

[bool](class_bool.md#class-bool) **clip\_tabs** = `true` [🔗](#class-tabcontainer-property-clip-tabs)

- void **set\_clip\_tabs**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_clip\_tabs**()


If `true`, tabs overflowing this node's width will be hidden, displaying two navigation buttons instead. Otherwise, this node's minimum size is updated so that all tabs are visible.

* * *

[int](class_int.md#class-int) **current\_tab** = `-1` [🔗](#class-tabcontainer-property-current-tab)

- void **set\_current\_tab**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_current\_tab**()


The current tab index. When set, this index's [Control](class_control.md#class-control) node's `visible` property is set to `true` and all others are set to `false`.

A value of `-1` means that no tab is selected.

* * *

[bool](class_bool.md#class-bool) **deselect\_enabled** = `false` [🔗](#class-tabcontainer-property-deselect-enabled)

- void **set\_deselect\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_deselect\_enabled**()


If `true`, all tabs can be deselected so that no tab is selected. Click on the [current\_tab](#class-tabcontainer-property-current-tab) to deselect it.

Only the tab header will be shown if no tabs are selected.

* * *

[bool](class_bool.md#class-bool) **drag\_to\_rearrange\_enabled** = `false` [🔗](#class-tabcontainer-property-drag-to-rearrange-enabled)

- void **set\_drag\_to\_rearrange\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_drag\_to\_rearrange\_enabled**()


If `true`, tabs can be rearranged with mouse drag.

* * *

[AlignmentMode](class_tabbar.md#enum-tabbar-alignmentmode) **tab\_alignment** = `0` [🔗](#class-tabcontainer-property-tab-alignment)

- void **set\_tab\_alignment**(value: [AlignmentMode](class_tabbar.md#enum-tabbar-alignmentmode))

- [AlignmentMode](class_tabbar.md#enum-tabbar-alignmentmode) **get\_tab\_alignment**()


The position at which tabs will be placed.

* * *

[FocusMode](class_control.md#enum-control-focusmode) **tab\_focus\_mode** = `2` [🔗](#class-tabcontainer-property-tab-focus-mode)

- void **set\_tab\_focus\_mode**(value: [FocusMode](class_control.md#enum-control-focusmode))

- [FocusMode](class_control.md#enum-control-focusmode) **get\_tab\_focus\_mode**()


The focus access mode for the internal [TabBar](class_tabbar.md#class-tabbar) node.

* * *

[TabPosition](#enum-tabcontainer-tabposition) **tabs\_position** = `0` [🔗](#class-tabcontainer-property-tabs-position)

- void **set\_tabs\_position**(value: [TabPosition](#enum-tabcontainer-tabposition))

- [TabPosition](#enum-tabcontainer-tabposition) **get\_tabs\_position**()


The position of the tab bar.

* * *

[int](class_int.md#class-int) **tabs\_rearrange\_group** = `-1` [🔗](#class-tabcontainer-property-tabs-rearrange-group)

- void **set\_tabs\_rearrange\_group**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_tabs\_rearrange\_group**()


**TabContainer** s with the same rearrange group ID will allow dragging the tabs between them. Enable drag with [drag\_to\_rearrange\_enabled](#class-tabcontainer-property-drag-to-rearrange-enabled).

Setting this to `-1` will disable rearranging between **TabContainer** s.

* * *

[bool](class_bool.md#class-bool) **tabs\_visible** = `true` [🔗](#class-tabcontainer-property-tabs-visible)

- void **set\_tabs\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **are\_tabs\_visible**()


If `true`, tabs are visible. If `false`, tabs' content and titles are hidden.

* * *

[bool](class_bool.md#class-bool) **use\_hidden\_tabs\_for\_min\_size** = `false` [🔗](#class-tabcontainer-property-use-hidden-tabs-for-min-size)

- void **set\_use\_hidden\_tabs\_for\_min\_size**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_hidden\_tabs\_for\_min\_size**()


If `true`, child [Control](class_control.md#class-control) nodes that are hidden have their minimum size take into account in the total, instead of only the currently visible one.

* * *

## Method Descriptions

[Control](class_control.md#class-control) **get\_current\_tab\_control**() const [🔗](#class-tabcontainer-method-get-current-tab-control)

Returns the child [Control](class_control.md#class-control) node located at the active tab index.

* * *

[Popup](class_popup.md#class-popup) **get\_popup**() const [🔗](#class-tabcontainer-method-get-popup)

Returns the [Popup](class_popup.md#class-popup) node instance if one has been set already with [set\_popup()](#class-tabcontainer-method-set-popup).

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [Window.visible](class_window.md#class-window-property-visible) property.

* * *

[int](class_int.md#class-int) **get\_previous\_tab**() const [🔗](#class-tabcontainer-method-get-previous-tab)

Returns the previously active tab index.

* * *

[TabBar](class_tabbar.md#class-tabbar) **get\_tab\_bar**() const [🔗](#class-tabcontainer-method-get-tab-bar)

Returns the [TabBar](class_tabbar.md#class-tabbar) contained in this container.

**Warning:** This is a required internal node, removing and freeing it or editing its tabs may cause a crash. If you wish to edit the tabs, use the methods provided in **TabContainer**.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_tab\_button\_icon**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-button-icon)

Returns the button icon from the tab at index `tab_idx`.

* * *

[Control](class_control.md#class-control) **get\_tab\_control**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-control)

Returns the [Control](class_control.md#class-control) node from the tab at index `tab_idx`.

* * *

[int](class_int.md#class-int) **get\_tab\_count**() const [🔗](#class-tabcontainer-method-get-tab-count)

Returns the number of tabs.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_tab\_icon**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-icon)

Returns the [Texture2D](class_texture2d.md#class-texture2d) for the tab at index `tab_idx` or `null` if the tab has no [Texture2D](class_texture2d.md#class-texture2d).

* * *

[int](class_int.md#class-int) **get\_tab\_icon\_max\_width**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-icon-max-width)

Returns the maximum allowed width of the icon for the tab at index `tab_idx`.

* * *

[int](class_int.md#class-int) **get\_tab\_idx\_at\_point**(point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-tabcontainer-method-get-tab-idx-at-point)

Returns the index of the tab at local coordinates `point`. Returns `-1` if the point is outside the control boundaries or if there's no tab at the queried position.

* * *

[int](class_int.md#class-int) **get\_tab\_idx\_from\_control**(control: [Control](class_control.md#class-control)) const [🔗](#class-tabcontainer-method-get-tab-idx-from-control)

Returns the index of the tab tied to the given `control`. The control must be a child of the **TabContainer**.

* * *

[Variant](class_variant.md#class-variant) **get\_tab\_metadata**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-metadata)

Returns the metadata value set to the tab at index `tab_idx` using [set\_tab\_metadata()](#class-tabcontainer-method-set-tab-metadata). If no metadata was previously set, returns `null` by default.

* * *

[String](class_string.md#class-string) **get\_tab\_title**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-title)

Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with [set\_tab\_title()](#class-tabcontainer-method-set-tab-title).

* * *

[String](class_string.md#class-string) **get\_tab\_tooltip**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-get-tab-tooltip)

Returns the tooltip text of the tab at index `tab_idx`.

* * *

[bool](class_bool.md#class-bool) **is\_tab\_disabled**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-is-tab-disabled)

Returns `true` if the tab at index `tab_idx` is disabled.

* * *

[bool](class_bool.md#class-bool) **is\_tab\_hidden**(tab\_idx: [int](class_int.md#class-int)) const [🔗](#class-tabcontainer-method-is-tab-hidden)

Returns `true` if the tab at index `tab_idx` is hidden.

* * *

[bool](class_bool.md#class-bool) **select\_next\_available**() [🔗](#class-tabcontainer-method-select-next-available)

Selects the first available tab with greater index than the currently selected. Returns `true` if tab selection changed.

* * *

[bool](class_bool.md#class-bool) **select\_previous\_available**() [🔗](#class-tabcontainer-method-select-previous-available)

Selects the first available tab with lower index than the currently selected. Returns `true` if tab selection changed.

* * *

void **set\_popup**(popup: [Node](class_node.md#class-node)) [🔗](#class-tabcontainer-method-set-popup)

If set on a [Popup](class_popup.md#class-popup) node instance, a popup menu icon appears in the top-right corner of the **TabContainer** (setting it to `null` will make it go away). Clicking it will expand the [Popup](class_popup.md#class-popup) node.

* * *

void **set\_tab\_button\_icon**(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-tabcontainer-method-set-tab-button-icon)

Sets the button icon from the tab at index `tab_idx`.

* * *

void **set\_tab\_disabled**(tab\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-tabcontainer-method-set-tab-disabled)

If `disabled` is `true`, disables the tab at index `tab_idx`, making it non-interactable.

* * *

void **set\_tab\_hidden**(tab\_idx: [int](class_int.md#class-int), hidden: [bool](class_bool.md#class-bool)) [🔗](#class-tabcontainer-method-set-tab-hidden)

If `hidden` is `true`, hides the tab at index `tab_idx`, making it disappear from the tab area.

* * *

void **set\_tab\_icon**(tab\_idx: [int](class_int.md#class-int), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-tabcontainer-method-set-tab-icon)

Sets an icon for the tab at index `tab_idx`.

* * *

void **set\_tab\_icon\_max\_width**(tab\_idx: [int](class_int.md#class-int), width: [int](class_int.md#class-int)) [🔗](#class-tabcontainer-method-set-tab-icon-max-width)

Sets the maximum allowed width of the icon for the tab at index `tab_idx`. This limit is applied on top of the default size of the icon and on top of [icon\_max\_width](#class-tabcontainer-theme-constant-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

void **set\_tab\_metadata**(tab\_idx: [int](class_int.md#class-int), metadata: [Variant](class_variant.md#class-variant)) [🔗](#class-tabcontainer-method-set-tab-metadata)

Sets the metadata value for the tab at index `tab_idx`, which can be retrieved later using [get\_tab\_metadata()](#class-tabcontainer-method-get-tab-metadata).

* * *

void **set\_tab\_title**(tab\_idx: [int](class_int.md#class-int), title: [String](class_string.md#class-string)) [🔗](#class-tabcontainer-method-set-tab-title)

Sets a custom title for the tab at index `tab_idx` (tab titles default to the name of the indexed child node). Set it back to the child's name to make the tab default to it again.

* * *

void **set\_tab\_tooltip**(tab\_idx: [int](class_int.md#class-int), tooltip: [String](class_string.md#class-string)) [🔗](#class-tabcontainer-method-set-tab-tooltip)

Sets a custom tooltip text for tab at index `tab_idx`.

**Note:** By default, if the `tooltip` is empty and the tab text is truncated (not all characters fit into the tab), the title will be displayed as a tooltip. To hide the tooltip, assign `" "` as the `tooltip` text.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **drop\_mark\_color** = `Color(1, 1, 1, 1)` [🔗](#class-tabcontainer-theme-color-drop-mark-color)

Modulation color for the [drop\_mark](#class-tabcontainer-theme-icon-drop-mark) icon.

* * *

[Color](class_color.md#class-color) **font\_disabled\_color** = `Color(0.875, 0.875, 0.875, 0.5)` [🔗](#class-tabcontainer-theme-color-font-disabled-color)

Font color of disabled tabs.

* * *

[Color](class_color.md#class-color) **font\_hovered\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-tabcontainer-theme-color-font-hovered-color)

Font color of the currently hovered tab.

* * *

[Color](class_color.md#class-color) **font\_outline\_color** = `Color(0, 0, 0, 1)` [🔗](#class-tabcontainer-theme-color-font-outline-color)

The tint of text outline of the tab name.

* * *

[Color](class_color.md#class-color) **font\_selected\_color** = `Color(0.95, 0.95, 0.95, 1)` [🔗](#class-tabcontainer-theme-color-font-selected-color)

Font color of the currently selected tab.

* * *

[Color](class_color.md#class-color) **font\_unselected\_color** = `Color(0.7, 0.7, 0.7, 1)` [🔗](#class-tabcontainer-theme-color-font-unselected-color)

Font color of the other, unselected tabs.

* * *

[int](class_int.md#class-int) **icon\_max\_width** = `0` [🔗](#class-tabcontainer-theme-constant-icon-max-width)

The maximum allowed width of the tab's icon. This limit is applied on top of the default size of the icon, but before the value set with [TabBar.set\_tab\_icon\_max\_width()](class_tabbar.md#class-tabbar-method-set-tab-icon-max-width). The height is adjusted according to the icon's ratio.

* * *

[int](class_int.md#class-int) **icon\_separation** = `4` [🔗](#class-tabcontainer-theme-constant-icon-separation)

Space between tab's name and its icon.

* * *

[int](class_int.md#class-int) **outline\_size** = `0` [🔗](#class-tabcontainer-theme-constant-outline-size)

The size of the tab text outline.

**Note:** If using a font with [FontFile.multichannel\_signed\_distance\_field](class_fontfile.md#class-fontfile-property-multichannel-signed-distance-field) enabled, its [FontFile.msdf\_pixel\_range](class_fontfile.md#class-fontfile-property-msdf-pixel-range) must be set to at least _twice_ the value of [outline\_size](#class-tabcontainer-theme-constant-outline-size) for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

* * *

[int](class_int.md#class-int) **side\_margin** = `8` [🔗](#class-tabcontainer-theme-constant-side-margin)

The space at the left or right edges of the tab bar, accordingly with the current [tab\_alignment](#class-tabcontainer-property-tab-alignment).

The margin is ignored with [TabBar.ALIGNMENT\_RIGHT](class_tabbar.md#class-tabbar-constant-alignment-right) if the tabs are clipped (see [clip\_tabs](#class-tabcontainer-property-clip-tabs)) or a popup has been set (see [set\_popup()](#class-tabcontainer-method-set-popup)). The margin is always ignored with [TabBar.ALIGNMENT\_CENTER](class_tabbar.md#class-tabbar-constant-alignment-center).

* * *

[int](class_int.md#class-int) **tab\_separation** = `0` [🔗](#class-tabcontainer-theme-constant-tab-separation)

The space between tabs in the tab bar.

* * *

[Font](class_font.md#class-font) **font** [🔗](#class-tabcontainer-theme-font-font)

The font used to draw tab names.

* * *

[int](class_int.md#class-int) **font\_size** [🔗](#class-tabcontainer-theme-font-size-font-size)

Font size of the tab names.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement** [🔗](#class-tabcontainer-theme-icon-decrement)

Icon for the left arrow button that appears when there are too many tabs to fit in the container width. When the button is disabled (i.e. the first tab is visible), it appears semi-transparent.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **decrement\_highlight** [🔗](#class-tabcontainer-theme-icon-decrement-highlight)

Icon for the left arrow button that appears when there are too many tabs to fit in the container width. Used when the button is being hovered with the cursor.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **drop\_mark** [🔗](#class-tabcontainer-theme-icon-drop-mark)

Icon shown to indicate where a dragged tab is gonna be dropped (see [drag\_to\_rearrange\_enabled](#class-tabcontainer-property-drag-to-rearrange-enabled)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment** [🔗](#class-tabcontainer-theme-icon-increment)

Icon for the right arrow button that appears when there are too many tabs to fit in the container width. When the button is disabled (i.e. the last tab is visible) it appears semi-transparent.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **increment\_highlight** [🔗](#class-tabcontainer-theme-icon-increment-highlight)

Icon for the right arrow button that appears when there are too many tabs to fit in the container width. Used when the button is being hovered with the cursor.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **menu** [🔗](#class-tabcontainer-theme-icon-menu)

The icon for the menu button (see [set\_popup()](#class-tabcontainer-method-set-popup)).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **menu\_highlight** [🔗](#class-tabcontainer-theme-icon-menu-highlight)

The icon for the menu button (see [set\_popup()](#class-tabcontainer-method-set-popup)) when it's being hovered with the cursor.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-tabcontainer-theme-style-panel)

The style for the background fill.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_disabled** [🔗](#class-tabcontainer-theme-style-tab-disabled)

The style of disabled tabs.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_focus** [🔗](#class-tabcontainer-theme-style-tab-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the [TabBar](class_tabbar.md#class-tabbar) is focused. The [tab\_focus](#class-tabcontainer-theme-style-tab-focus) [StyleBox](class_stylebox.md#class-stylebox) is displayed _over_ the base [StyleBox](class_stylebox.md#class-stylebox) of the selected tab, so a partially transparent [StyleBox](class_stylebox.md#class-stylebox) should be used to ensure the base [StyleBox](class_stylebox.md#class-stylebox) remains visible. A [StyleBox](class_stylebox.md#class-stylebox) that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a [StyleBoxEmpty](class_styleboxempty.md#class-styleboxempty) resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_hovered** [🔗](#class-tabcontainer-theme-style-tab-hovered)

The style of the currently hovered tab.

**Note:** This style will be drawn with the same width as [tab\_unselected](#class-tabcontainer-theme-style-tab-unselected) at minimum.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_selected** [🔗](#class-tabcontainer-theme-style-tab-selected)

The style of the currently selected tab.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tab\_unselected** [🔗](#class-tabcontainer-theme-style-tab-unselected)

The style of the other, unselected tabs.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **tabbar\_background** [🔗](#class-tabcontainer-theme-style-tabbar-background)

The style for the background fill of the [TabBar](class_tabbar.md#class-tabbar) area.

[Previous](class_tabbar.md "TabBar") [Next](class_textedit.md "TextEdit")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tabbar.md "TabBar") [Next](class_textedit.md "TextEdit")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).