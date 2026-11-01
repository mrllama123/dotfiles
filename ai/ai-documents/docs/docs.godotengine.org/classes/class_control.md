---
title: Control — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_control.html
crawled_at: "2026-08-13T10:31:00+12:00"
content_hash: fc0cc15fde974b7510317831eb3c4f2210c807cc96a5fff06658c32be086e695
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Control

* * *

# Control

**Inherits:** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [BaseButton](class_basebutton.md#class-basebutton), [ColorRect](class_colorrect.md#class-colorrect), [Container](class_container.md#class-container), [GraphEdit](class_graphedit.md#class-graphedit), [ItemList](class_itemlist.md#class-itemlist), [Label](class_label.md#class-label), [LineEdit](class_lineedit.md#class-lineedit), [MenuBar](class_menubar.md#class-menubar), [NinePatchRect](class_ninepatchrect.md#class-ninepatchrect), [Panel](class_panel.md#class-panel), [Range](class_range.md#class-range), [ReferenceRect](class_referencerect.md#class-referencerect), [RichTextLabel](class_richtextlabel.md#class-richtextlabel), [Separator](class_separator.md#class-separator), [TabBar](class_tabbar.md#class-tabbar), [TextEdit](class_textedit.md#class-textedit), [TextureRect](class_texturerect.md#class-texturerect), [Tree](class_tree.md#class-tree), [VideoStreamPlayer](class_videostreamplayer.md#class-videostreamplayer)

Base class for all GUI controls. Adapts its position and size based on its parent control.

## Description

Base class for all UI-related nodes. **Control** features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and offsets relative to the anchor. The offsets update automatically when the node, any of its parents, or the screen size change.

For more information on Godot's UI system, anchors, offsets, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from **Control** and [Container](class_container.md#class-container) nodes.

**Note:** Since both [Node2D](class_node2d.md#class-node2d) and **Control** inherit from [CanvasItem](class_canvasitem.md#class-canvasitem), they share several concepts from the class such as the [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) and [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) properties.

**User Interface nodes and input**

Godot propagates input events via viewports. Each [Viewport](class_viewport.md#class-viewport) is responsible for propagating [InputEvent](class_inputevent.md#class-inputevent) s to their child nodes. As the [SceneTree.root](class_scenetree.md#class-scenetree-property-root) is a [Window](class_window.md#class-window), this already happens automatically for all UI elements in your game.

Input events are propagated through the [SceneTree](class_scenetree.md#class-scenetree) from the root node to all child nodes by calling [Node.\_input()](class_node.md#class-node-private-method-input). For UI elements specifically, it makes more sense to override the virtual method [\_gui\_input()](#class-control-private-method-gui-input), which filters out unrelated input events, such as by checking z-order, [mouse\_filter](#class-control-property-mouse-filter), focus, or if the event was inside of the control's bounding box.

Call [accept\_event()](#class-control-method-accept-event) so no other node receives the event. Once you accept an input, it becomes handled so [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input) will not process it.

Only one **Control** node can be in focus. Only the node in focus will receive events. To get the focus, call [grab\_focus()](#class-control-method-grab-focus). **Control** nodes lose focus when another node grabs it, or if you hide the node in focus.

Sets [mouse\_filter](#class-control-property-mouse-filter) to [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore) to tell a **Control** node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.

[Theme](class_theme.md#class-theme) resources change the control's appearance. The [theme](#class-control-property-theme) of a **Control** node affects all of its direct and indirect children (as long as a chain of controls is uninterrupted). To override some of the theme items, call one of the `add_theme_*_override` methods, like [add\_theme\_font\_override()](#class-control-method-add-theme-font-override). You can also override theme items in the Inspector.

**Note:** Theme items are _not_ [Object](class_object.md#class-object) properties. This means you can't access their values using [Object.get()](class_object.md#class-object-method-get) and [Object.set()](class_object.md#class-object-method-set). Instead, use the `get_theme_*` and `add_theme_*_override` methods provided by this class.

## Tutorials

- [GUI documentation index](../tutorials/ui/index.md)

- [Custom drawing in 2D](../tutorials/2d/custom_drawing_in_2d.md)

- [Control node gallery](../tutorials/ui/control_node_gallery.md)

- [Multiple resolutions](../tutorials/rendering/multiple_resolutions.md)

- [All GUI Demos](https://github.com/godotengine/godot-demo-projects/tree/master/gui)


## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [accessibility\_controls\_nodes](#class-control-property-accessibility-controls-nodes) | `[]` |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [accessibility\_described\_by\_nodes](#class-control-property-accessibility-described-by-nodes) | `[]` |
| [String](class_string.md#class-string) | [accessibility\_description](#class-control-property-accessibility-description) | `""` |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [accessibility\_flow\_to\_nodes](#class-control-property-accessibility-flow-to-nodes) | `[]` |
| [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] | [accessibility\_labeled\_by\_nodes](#class-control-property-accessibility-labeled-by-nodes) | `[]` |
| [AccessibilityLiveMode](class_displayserver.md#enum-displayserver-accessibilitylivemode) | [accessibility\_live](#class-control-property-accessibility-live) | `0` |
| [String](class_string.md#class-string) | [accessibility\_name](#class-control-property-accessibility-name) | `""` |
| [float](class_float.md#class-float) | [anchor\_bottom](#class-control-property-anchor-bottom) | `0.0` |
| [float](class_float.md#class-float) | [anchor\_left](#class-control-property-anchor-left) | `0.0` |
| [float](class_float.md#class-float) | [anchor\_right](#class-control-property-anchor-right) | `0.0` |
| [float](class_float.md#class-float) | [anchor\_top](#class-control-property-anchor-top) | `0.0` |
| [bool](class_bool.md#class-bool) | [auto\_translate](#class-control-property-auto-translate) |  |
| [bool](class_bool.md#class-bool) | [clip\_contents](#class-control-property-clip-contents) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [custom\_minimum\_size](#class-control-property-custom-minimum-size) | `Vector2(0, 0)` |
| [FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) | [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive) | `0` |
| [FocusMode](#enum-control-focusmode) | [focus\_mode](#class-control-property-focus-mode) | `0` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_neighbor\_bottom](#class-control-property-focus-neighbor-bottom) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_neighbor\_left](#class-control-property-focus-neighbor-left) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_neighbor\_right](#class-control-property-focus-neighbor-right) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_neighbor\_top](#class-control-property-focus-neighbor-top) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_next](#class-control-property-focus-next) | `NodePath("")` |
| [NodePath](class_nodepath.md#class-nodepath) | [focus\_previous](#class-control-property-focus-previous) | `NodePath("")` |
| [Vector2](class_vector2.md#class-vector2) | [global\_position](#class-control-property-global-position) |  |
| [GrowDirection](#enum-control-growdirection) | [grow\_horizontal](#class-control-property-grow-horizontal) | `1` |
| [GrowDirection](#enum-control-growdirection) | [grow\_vertical](#class-control-property-grow-vertical) | `1` |
| [LayoutDirection](#enum-control-layoutdirection) | [layout\_direction](#class-control-property-layout-direction) | `0` |
| [bool](class_bool.md#class-bool) | [localize\_numeral\_system](#class-control-property-localize-numeral-system) | `true` |
| [MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) | [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive) | `0` |
| [CursorShape](#enum-control-cursorshape) | [mouse\_default\_cursor\_shape](#class-control-property-mouse-default-cursor-shape) | `0` |
| [MouseFilter](#enum-control-mousefilter) | [mouse\_filter](#class-control-property-mouse-filter) | `0` |
| [bool](class_bool.md#class-bool) | [mouse\_force\_pass\_scroll\_events](#class-control-property-mouse-force-pass-scroll-events) | `true` |
| [float](class_float.md#class-float) | [offset\_bottom](#class-control-property-offset-bottom) | `0.0` |
| [float](class_float.md#class-float) | [offset\_left](#class-control-property-offset-left) | `0.0` |
| [float](class_float.md#class-float) | [offset\_right](#class-control-property-offset-right) | `0.0` |
| [float](class_float.md#class-float) | [offset\_top](#class-control-property-offset-top) | `0.0` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [Vector2](class_vector2.md#class-vector2) | [pivot\_offset](#class-control-property-pivot-offset) | `Vector2(0, 0)` |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-control-property-position) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [rotation](#class-control-property-rotation) | `0.0` |
| [float](class_float.md#class-float) | [rotation\_degrees](#class-control-property-rotation-degrees) |  |
| [Vector2](class_vector2.md#class-vector2) | [scale](#class-control-property-scale) | `Vector2(1, 1)` |
| [Node](class_node.md#class-node) | [shortcut\_context](#class-control-property-shortcut-context) |  |
| [Vector2](class_vector2.md#class-vector2) | [size](#class-control-property-size) | `Vector2(0, 0)` |
| BitField\[ [SizeFlags](#enum-control-sizeflags)\] | [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) | `1` |
| [float](class_float.md#class-float) | [size\_flags\_stretch\_ratio](#class-control-property-size-flags-stretch-ratio) | `1.0` |
| BitField\[ [SizeFlags](#enum-control-sizeflags)\] | [size\_flags\_vertical](#class-control-property-size-flags-vertical) | `1` |
| [Theme](class_theme.md#class-theme) | [theme](#class-control-property-theme) |  |
| [StringName](class_stringname.md#class-stringname) | [theme\_type\_variation](#class-control-property-theme-type-variation) | `&""` |
| [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) | [tooltip\_auto\_translate\_mode](#class-control-property-tooltip-auto-translate-mode) | `0` |
| [String](class_string.md#class-string) | [tooltip\_text](#class-control-property-tooltip-text) | `""` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [\_accessibility\_get\_contextual\_info](#class-control-private-method-accessibility-get-contextual-info)() virtualconst |
| [bool](class_bool.md#class-bool) | [\_can\_drop\_data](#class-control-private-method-can-drop-data)(at\_position: [Vector2](class_vector2.md#class-vector2), data: [Variant](class_variant.md#class-variant)) virtualconst |
| void | [\_drop\_data](#class-control-private-method-drop-data)(at\_position: [Vector2](class_vector2.md#class-vector2), data: [Variant](class_variant.md#class-variant)) virtual |
| [String](class_string.md#class-string) | [\_get\_accessibility\_container\_name](#class-control-private-method-get-accessibility-container-name)(node: [Node](class_node.md#class-node)) virtualconst |
| [Variant](class_variant.md#class-variant) | [\_get\_drag\_data](#class-control-private-method-get-drag-data)(at\_position: [Vector2](class_vector2.md#class-vector2)) virtual |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_minimum\_size](#class-control-private-method-get-minimum-size)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_tooltip](#class-control-private-method-get-tooltip)(at\_position: [Vector2](class_vector2.md#class-vector2)) virtualconst |
| void | [\_gui\_input](#class-control-private-method-gui-input)(event: [InputEvent](class_inputevent.md#class-inputevent)) virtual |
| [bool](class_bool.md#class-bool) | [\_has\_point](#class-control-private-method-has-point)(point: [Vector2](class_vector2.md#class-vector2)) virtualconst |
| [Object](class_object.md#class-object) | [\_make\_custom\_tooltip](#class-control-private-method-make-custom-tooltip)(for\_text: [String](class_string.md#class-string)) virtualconst |
| [Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] | [\_structured\_text\_parser](#class-control-private-method-structured-text-parser)(args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) virtualconst |
| void | [accept\_event](#class-control-method-accept-event)() |
| void | [accessibility\_drag](#class-control-method-accessibility-drag)() |
| void | [accessibility\_drop](#class-control-method-accessibility-drop)() |
| void | [add\_theme\_color\_override](#class-control-method-add-theme-color-override)(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) |
| void | [add\_theme\_constant\_override](#class-control-method-add-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) |
| void | [add\_theme\_font\_override](#class-control-method-add-theme-font-override)(name: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) |
| void | [add\_theme\_font\_size\_override](#class-control-method-add-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) |
| void | [add\_theme\_icon\_override](#class-control-method-add-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [add\_theme\_stylebox\_override](#class-control-method-add-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname), stylebox: [StyleBox](class_stylebox.md#class-stylebox)) |
| void | [begin\_bulk\_theme\_override](#class-control-method-begin-bulk-theme-override)() |
| void | [end\_bulk\_theme\_override](#class-control-method-end-bulk-theme-override)() |
| [Control](#class-control) | [find\_next\_valid\_focus](#class-control-method-find-next-valid-focus)() const |
| [Control](#class-control) | [find\_prev\_valid\_focus](#class-control-method-find-prev-valid-focus)() const |
| [Control](#class-control) | [find\_valid\_focus\_neighbor](#class-control-method-find-valid-focus-neighbor)(side: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| void | [force\_drag](#class-control-method-force-drag)(data: [Variant](class_variant.md#class-variant), preview: [Control](#class-control)) |
| [float](class_float.md#class-float) | [get\_anchor](#class-control-method-get-anchor)(side: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_begin](#class-control-method-get-begin)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_combined\_minimum\_size](#class-control-method-get-combined-minimum-size)() const |
| [CursorShape](#enum-control-cursorshape) | [get\_cursor\_shape](#class-control-method-get-cursor-shape)(position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_end](#class-control-method-get-end)() const |
| [FocusMode](#enum-control-focusmode) | [get\_focus\_mode\_with\_override](#class-control-method-get-focus-mode-with-override)() const |
| [NodePath](class_nodepath.md#class-nodepath) | [get\_focus\_neighbor](#class-control-method-get-focus-neighbor)(side: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [Rect2](class_rect2.md#class-rect2) | [get\_global\_rect](#class-control-method-get-global-rect)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_minimum\_size](#class-control-method-get-minimum-size)() const |
| [MouseFilter](#enum-control-mousefilter) | [get\_mouse\_filter\_with\_override](#class-control-method-get-mouse-filter-with-override)() const |
| [float](class_float.md#class-float) | [get\_offset](#class-control-method-get-offset)(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_parent\_area\_size](#class-control-method-get-parent-area-size)() const |
| [Control](#class-control) | [get\_parent\_control](#class-control-method-get-parent-control)() const |
| [Rect2](class_rect2.md#class-rect2) | [get\_rect](#class-control-method-get-rect)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_screen\_position](#class-control-method-get-screen-position)() const |
| [Color](class_color.md#class-color) | [get\_theme\_color](#class-control-method-get-theme-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_theme\_constant](#class-control-method-get-theme-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [float](class_float.md#class-float) | [get\_theme\_default\_base\_scale](#class-control-method-get-theme-default-base-scale)() const |
| [Font](class_font.md#class-font) | [get\_theme\_default\_font](#class-control-method-get-theme-default-font)() const |
| [int](class_int.md#class-int) | [get\_theme\_default\_font\_size](#class-control-method-get-theme-default-font-size)() const |
| [Font](class_font.md#class-font) | [get\_theme\_font](#class-control-method-get-theme-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [int](class_int.md#class-int) | [get\_theme\_font\_size](#class-control-method-get-theme-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [Texture2D](class_texture2d.md#class-texture2d) | [get\_theme\_icon](#class-control-method-get-theme-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [StyleBox](class_stylebox.md#class-stylebox) | [get\_theme\_stylebox](#class-control-method-get-theme-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [String](class_string.md#class-string) | [get\_tooltip](#class-control-method-get-tooltip)(at\_position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const |
| void | [grab\_click\_focus](#class-control-method-grab-click-focus)() |
| void | [grab\_focus](#class-control-method-grab-focus)() |
| [bool](class_bool.md#class-bool) | [has\_focus](#class-control-method-has-focus)() const |
| [bool](class_bool.md#class-bool) | [has\_theme\_color](#class-control-method-has-theme-color)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_color\_override](#class-control-method-has-theme-color-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_constant](#class-control-method-has-theme-constant)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_constant\_override](#class-control-method-has-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font](#class-control-method-has-theme-font)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_override](#class-control-method-has-theme-font-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_size](#class-control-method-has-theme-font-size)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_font\_size\_override](#class-control-method-has-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_icon](#class-control-method-has-theme-icon)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_icon\_override](#class-control-method-has-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_theme\_stylebox](#class-control-method-has-theme-stylebox)(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const |
| [bool](class_bool.md#class-bool) | [has\_theme\_stylebox\_override](#class-control-method-has-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [is\_drag\_successful](#class-control-method-is-drag-successful)() const |
| [bool](class_bool.md#class-bool) | [is\_layout\_rtl](#class-control-method-is-layout-rtl)() const |
| void | [release\_focus](#class-control-method-release-focus)() |
| void | [remove\_theme\_color\_override](#class-control-method-remove-theme-color-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_constant\_override](#class-control-method-remove-theme-constant-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_font\_override](#class-control-method-remove-theme-font-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_font\_size\_override](#class-control-method-remove-theme-font-size-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_icon\_override](#class-control-method-remove-theme-icon-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [remove\_theme\_stylebox\_override](#class-control-method-remove-theme-stylebox-override)(name: [StringName](class_stringname.md#class-stringname)) |
| void | [reset\_size](#class-control-method-reset-size)() |
| void | [set\_anchor](#class-control-method-set-anchor)(side: [Side](class_@globalscope.md#enum-globalscope-side), anchor: [float](class_float.md#class-float), keep\_offset: [bool](class_bool.md#class-bool) = false, push\_opposite\_anchor: [bool](class_bool.md#class-bool) = true) |
| void | [set\_anchor\_and\_offset](#class-control-method-set-anchor-and-offset)(side: [Side](class_@globalscope.md#enum-globalscope-side), anchor: [float](class_float.md#class-float), offset: [float](class_float.md#class-float), push\_opposite\_anchor: [bool](class_bool.md#class-bool) = false) |
| void | [set\_anchors\_and\_offsets\_preset](#class-control-method-set-anchors-and-offsets-preset)(preset: [LayoutPreset](#enum-control-layoutpreset), resize\_mode: [LayoutPresetMode](#enum-control-layoutpresetmode) = 0, margin: [int](class_int.md#class-int) = 0) |
| void | [set\_anchors\_preset](#class-control-method-set-anchors-preset)(preset: [LayoutPreset](#enum-control-layoutpreset), keep\_offsets: [bool](class_bool.md#class-bool) = false) |
| void | [set\_begin](#class-control-method-set-begin)(position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_drag\_forwarding](#class-control-method-set-drag-forwarding)(drag\_func: [Callable](class_callable.md#class-callable), can\_drop\_func: [Callable](class_callable.md#class-callable), drop\_func: [Callable](class_callable.md#class-callable)) |
| void | [set\_drag\_preview](#class-control-method-set-drag-preview)(control: [Control](#class-control)) |
| void | [set\_end](#class-control-method-set-end)(position: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_focus\_neighbor](#class-control-method-set-focus-neighbor)(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath)) |
| void | [set\_global\_position](#class-control-method-set-global-position)(position: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) |
| void | [set\_offset](#class-control-method-set-offset)(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float)) |
| void | [set\_offsets\_preset](#class-control-method-set-offsets-preset)(preset: [LayoutPreset](#enum-control-layoutpreset), resize\_mode: [LayoutPresetMode](#enum-control-layoutpresetmode) = 0, margin: [int](class_int.md#class-int) = 0) |
| void | [set\_position](#class-control-method-set-position)(position: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) |
| void | [set\_size](#class-control-method-set-size)(size: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) |
| void | [update\_minimum\_size](#class-control-method-update-minimum-size)() |
| void | [warp\_mouse](#class-control-method-warp-mouse)(position: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**focus\_entered**() [🔗](#class-control-signal-focus-entered)

Emitted when the node gains focus.

* * *

**focus\_exited**() [🔗](#class-control-signal-focus-exited)

Emitted when the node loses focus.

* * *

**gui\_input**(event: [InputEvent](class_inputevent.md#class-inputevent)) [🔗](#class-control-signal-gui-input)

Emitted when the node receives an [InputEvent](class_inputevent.md#class-inputevent).

* * *

**minimum\_size\_changed**() [🔗](#class-control-signal-minimum-size-changed)

Emitted when the node's minimum size changes.

* * *

**mouse\_entered**() [🔗](#class-control-signal-mouse-entered)

Emitted when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect, which Control receives the signal.

* * *

**mouse\_exited**() [🔗](#class-control-signal-mouse-exited)

Emitted when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect, which Control receives the signal.

**Note:** If you want to check whether the mouse truly left the area, ignoring any top nodes, you can use code like this:

```
func _on_mouse_exited():
    if not Rect2(Vector2(), size).has_point(get_local_mouse_position()):
        # Not hovering over area.

```

* * *

**resized**() [🔗](#class-control-signal-resized)

Emitted when the control changes size.

* * *

**size\_flags\_changed**() [🔗](#class-control-signal-size-flags-changed)

Emitted when one of the size flags changes. See [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

* * *

**theme\_changed**() [🔗](#class-control-signal-theme-changed)

Emitted when the [NOTIFICATION\_THEME\_CHANGED](#class-control-constant-notification-theme-changed) notification is sent.

* * *

## Enumerations

enum **FocusMode**: [🔗](#enum-control-focusmode)

[FocusMode](#enum-control-focusmode) **FOCUS\_NONE** = `0`

The node cannot grab focus. Use with [focus\_mode](#class-control-property-focus-mode).

[FocusMode](#enum-control-focusmode) **FOCUS\_CLICK** = `1`

The node can only grab focus on mouse clicks. Use with [focus\_mode](#class-control-property-focus-mode).

[FocusMode](#enum-control-focusmode) **FOCUS\_ALL** = `2`

The node can grab focus on mouse click, using the arrows and the Tab keys on the keyboard, or using the D-pad buttons on a gamepad. Use with [focus\_mode](#class-control-property-focus-mode).

[FocusMode](#enum-control-focusmode) **FOCUS\_ACCESSIBILITY** = `3`

The node can grab focus only when screen reader is active. Use with [focus\_mode](#class-control-property-focus-mode).

* * *

enum **FocusBehaviorRecursive**: [🔗](#enum-control-focusbehaviorrecursive)

[FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) **FOCUS\_BEHAVIOR\_INHERITED** = `0`

Inherits the [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive) from the parent control. If there is no parent control, this is the same as [FOCUS\_BEHAVIOR\_ENABLED](#class-control-constant-focus-behavior-enabled).

[FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) **FOCUS\_BEHAVIOR\_DISABLED** = `1`

Prevents the control from getting focused. [get\_focus\_mode\_with\_override()](#class-control-method-get-focus-mode-with-override) will return [FOCUS\_NONE](#class-control-constant-focus-none).

[FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) **FOCUS\_BEHAVIOR\_ENABLED** = `2`

Allows the control to be focused, depending on the [focus\_mode](#class-control-property-focus-mode). This can be used to ignore the parent's [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive). [get\_focus\_mode\_with\_override()](#class-control-method-get-focus-mode-with-override) will return the [focus\_mode](#class-control-property-focus-mode).

* * *

enum **MouseBehaviorRecursive**: [🔗](#enum-control-mousebehaviorrecursive)

[MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) **MOUSE\_BEHAVIOR\_INHERITED** = `0`

Inherits the [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive) from the parent control. If there is no parent control, this is the same as [MOUSE\_BEHAVIOR\_ENABLED](#class-control-constant-mouse-behavior-enabled).

[MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) **MOUSE\_BEHAVIOR\_DISABLED** = `1`

Prevents the control from receiving mouse input. [get\_mouse\_filter\_with\_override()](#class-control-method-get-mouse-filter-with-override) will return [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore).

[MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) **MOUSE\_BEHAVIOR\_ENABLED** = `2`

Allows the control to be receive mouse input, depending on the [mouse\_filter](#class-control-property-mouse-filter). This can be used to ignore the parent's [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive). [get\_mouse\_filter\_with\_override()](#class-control-method-get-mouse-filter-with-override) will return the [mouse\_filter](#class-control-property-mouse-filter).

* * *

enum **CursorShape**: [🔗](#enum-control-cursorshape)

[CursorShape](#enum-control-cursorshape) **CURSOR\_ARROW** = `0`

Show the system's arrow mouse cursor when the user hovers the node. Use with [mouse\_default\_cursor\_shape](#class-control-property-mouse-default-cursor-shape).

[CursorShape](#enum-control-cursorshape) **CURSOR\_IBEAM** = `1`

Show the system's I-beam mouse cursor when the user hovers the node. The I-beam pointer has a shape similar to "I". It tells the user they can highlight or insert text.

[CursorShape](#enum-control-cursorshape) **CURSOR\_POINTING\_HAND** = `2`

Show the system's pointing hand mouse cursor when the user hovers the node.

[CursorShape](#enum-control-cursorshape) **CURSOR\_CROSS** = `3`

Show the system's cross mouse cursor when the user hovers the node.

[CursorShape](#enum-control-cursorshape) **CURSOR\_WAIT** = `4`

Show the system's wait mouse cursor when the user hovers the node. Often an hourglass.

[CursorShape](#enum-control-cursorshape) **CURSOR\_BUSY** = `5`

Show the system's busy mouse cursor when the user hovers the node. Often an arrow with a small hourglass.

[CursorShape](#enum-control-cursorshape) **CURSOR\_DRAG** = `6`

Show the system's drag mouse cursor, often a closed fist or a cross symbol, when the user hovers the node. It tells the user they're currently dragging an item, like a node in the Scene dock.

[CursorShape](#enum-control-cursorshape) **CURSOR\_CAN\_DROP** = `7`

Show the system's drop mouse cursor when the user hovers the node. It can be an open hand. It tells the user they can drop an item they're currently grabbing, like a node in the Scene dock.

[CursorShape](#enum-control-cursorshape) **CURSOR\_FORBIDDEN** = `8`

Show the system's forbidden mouse cursor when the user hovers the node. Often a crossed circle.

[CursorShape](#enum-control-cursorshape) **CURSOR\_VSIZE** = `9`

Show the system's vertical resize mouse cursor when the user hovers the node. A double-headed vertical arrow. It tells the user they can resize the window or the panel vertically.

[CursorShape](#enum-control-cursorshape) **CURSOR\_HSIZE** = `10`

Show the system's horizontal resize mouse cursor when the user hovers the node. A double-headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.

[CursorShape](#enum-control-cursorshape) **CURSOR\_BDIAGSIZE** = `11`

Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.

[CursorShape](#enum-control-cursorshape) **CURSOR\_FDIAGSIZE** = `12`

Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the top left to the bottom right, the opposite of [CURSOR\_BDIAGSIZE](#class-control-constant-cursor-bdiagsize). It tells the user they can resize the window or the panel both horizontally and vertically.

[CursorShape](#enum-control-cursorshape) **CURSOR\_MOVE** = `13`

Show the system's move mouse cursor when the user hovers the node. It shows 2 double-headed arrows at a 90 degree angle. It tells the user they can move a UI element freely.

[CursorShape](#enum-control-cursorshape) **CURSOR\_VSPLIT** = `14`

Show the system's vertical split mouse cursor when the user hovers the node. On Windows, it's the same as [CURSOR\_VSIZE](#class-control-constant-cursor-vsize).

[CursorShape](#enum-control-cursorshape) **CURSOR\_HSPLIT** = `15`

Show the system's horizontal split mouse cursor when the user hovers the node. On Windows, it's the same as [CURSOR\_HSIZE](#class-control-constant-cursor-hsize).

[CursorShape](#enum-control-cursorshape) **CURSOR\_HELP** = `16`

Show the system's help mouse cursor when the user hovers the node, a question mark.

* * *

enum **LayoutPreset**: [🔗](#enum-control-layoutpreset)

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_TOP\_LEFT** = `0`

Snap all 4 anchors to the top-left of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_TOP\_RIGHT** = `1`

Snap all 4 anchors to the top-right of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_BOTTOM\_LEFT** = `2`

Snap all 4 anchors to the bottom-left of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_BOTTOM\_RIGHT** = `3`

Snap all 4 anchors to the bottom-right of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_CENTER\_LEFT** = `4`

Snap all 4 anchors to the center of the left edge of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_CENTER\_TOP** = `5`

Snap all 4 anchors to the center of the top edge of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_CENTER\_RIGHT** = `6`

Snap all 4 anchors to the center of the right edge of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_CENTER\_BOTTOM** = `7`

Snap all 4 anchors to the center of the bottom edge of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_CENTER** = `8`

Snap all 4 anchors to the center of the parent control's bounds. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_LEFT\_WIDE** = `9`

Snap all 4 anchors to the left edge of the parent control. The left offset becomes relative to the left edge and the top offset relative to the top left corner of the node's parent. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_TOP\_WIDE** = `10`

Snap all 4 anchors to the top edge of the parent control. The left offset becomes relative to the top left corner, the top offset relative to the top edge, and the right offset relative to the top right corner of the node's parent. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_RIGHT\_WIDE** = `11`

Snap all 4 anchors to the right edge of the parent control. The right offset becomes relative to the right edge and the top offset relative to the top right corner of the node's parent. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_BOTTOM\_WIDE** = `12`

Snap all 4 anchors to the bottom edge of the parent control. The left offset becomes relative to the bottom left corner, the bottom offset relative to the bottom edge, and the right offset relative to the bottom right corner of the node's parent. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_VCENTER\_WIDE** = `13`

Snap all 4 anchors to a vertical line that cuts the parent control in half. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_HCENTER\_WIDE** = `14`

Snap all 4 anchors to a horizontal line that cuts the parent control in half. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[LayoutPreset](#enum-control-layoutpreset) **PRESET\_FULL\_RECT** = `15`

Snap all 4 anchors to the respective corners of the parent control. Set all 4 offsets to 0 after you applied this preset and the **Control** will fit its parent control. Use with [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

* * *

enum **LayoutPresetMode**: [🔗](#enum-control-layoutpresetmode)

[LayoutPresetMode](#enum-control-layoutpresetmode) **PRESET\_MODE\_MINSIZE** = `0`

The control will be resized to its minimum size.

[LayoutPresetMode](#enum-control-layoutpresetmode) **PRESET\_MODE\_KEEP\_WIDTH** = `1`

The control's width will not change.

[LayoutPresetMode](#enum-control-layoutpresetmode) **PRESET\_MODE\_KEEP\_HEIGHT** = `2`

The control's height will not change.

[LayoutPresetMode](#enum-control-layoutpresetmode) **PRESET\_MODE\_KEEP\_SIZE** = `3`

The control's size will not change.

* * *

flags **SizeFlags**: [🔗](#enum-control-sizeflags)

[SizeFlags](#enum-control-sizeflags) **SIZE\_SHRINK\_BEGIN** = `0`

Tells the parent [Container](class_container.md#class-container) to align the node with its start, either the top or the left edge. It is mutually exclusive with [SIZE\_FILL](#class-control-constant-size-fill) and other shrink size flags, but can be used with [SIZE\_EXPAND](#class-control-constant-size-expand) in some containers. Use with [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

**Note:** Setting this flag is equal to not having any size flags.

[SizeFlags](#enum-control-sizeflags) **SIZE\_FILL** = `1`

Tells the parent [Container](class_container.md#class-container) to expand the bounds of this node to fill all the available space without pushing any other node. It is mutually exclusive with shrink size flags. Use with [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

[SizeFlags](#enum-control-sizeflags) **SIZE\_EXPAND** = `2`

Tells the parent [Container](class_container.md#class-container) to let this node take all the available space on the axis you flag. If multiple neighboring nodes are set to expand, they'll share the space based on their stretch ratio. See [size\_flags\_stretch\_ratio](#class-control-property-size-flags-stretch-ratio). Use with [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

[SizeFlags](#enum-control-sizeflags) **SIZE\_EXPAND\_FILL** = `3`

Sets the node's size flags to both fill and expand. See [SIZE\_FILL](#class-control-constant-size-fill) and [SIZE\_EXPAND](#class-control-constant-size-expand) for more information.

[SizeFlags](#enum-control-sizeflags) **SIZE\_SHRINK\_CENTER** = `4`

Tells the parent [Container](class_container.md#class-container) to center the node in the available space. It is mutually exclusive with [SIZE\_FILL](#class-control-constant-size-fill) and other shrink size flags, but can be used with [SIZE\_EXPAND](#class-control-constant-size-expand) in some containers. Use with [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

[SizeFlags](#enum-control-sizeflags) **SIZE\_SHRINK\_END** = `8`

Tells the parent [Container](class_container.md#class-container) to align the node with its end, either the bottom or the right edge. It is mutually exclusive with [SIZE\_FILL](#class-control-constant-size-fill) and other shrink size flags, but can be used with [SIZE\_EXPAND](#class-control-constant-size-expand) in some containers. Use with [size\_flags\_horizontal](#class-control-property-size-flags-horizontal) and [size\_flags\_vertical](#class-control-property-size-flags-vertical).

* * *

enum **MouseFilter**: [🔗](#enum-control-mousefilter)

[MouseFilter](#enum-control-mousefilter) **MOUSE\_FILTER\_STOP** = `0`

The control will receive mouse movement input events and mouse button input events if clicked on through [\_gui\_input()](#class-control-private-method-gui-input). The control will also receive the [mouse\_entered](#class-control-signal-mouse-entered) and [mouse\_exited](#class-control-signal-mouse-exited) signals. These events are automatically marked as handled, and they will not propagate further to other controls. This also results in blocking signals in other controls.

[MouseFilter](#enum-control-mousefilter) **MOUSE\_FILTER\_PASS** = `1`

The control will receive mouse movement input events and mouse button input events if clicked on through [\_gui\_input()](#class-control-private-method-gui-input). The control will also receive the [mouse\_entered](#class-control-signal-mouse-entered) and [mouse\_exited](#class-control-signal-mouse-exited) signals.

If this control does not handle the event, the event will propagate up to its parent control if it has one. The event is bubbled up the node hierarchy until it reaches a non- [CanvasItem](class_canvasitem.md#class-canvasitem), a control with [MOUSE\_FILTER\_STOP](#class-control-constant-mouse-filter-stop), or a [CanvasItem](class_canvasitem.md#class-canvasitem) with [CanvasItem.top\_level](class_canvasitem.md#class-canvasitem-property-top-level) enabled. This will allow signals to fire in all controls it reaches. If no control handled it, the event will be passed to [Node.\_shortcut\_input()](class_node.md#class-node-private-method-shortcut-input) for further processing.

[MouseFilter](#enum-control-mousefilter) **MOUSE\_FILTER\_IGNORE** = `2`

The control will not receive any mouse movement input events nor mouse button input events through [\_gui\_input()](#class-control-private-method-gui-input). The control will also not receive the [mouse\_entered](#class-control-signal-mouse-entered) nor [mouse\_exited](#class-control-signal-mouse-exited) signals. This will not block other controls from receiving these events or firing the signals. Ignored events will not be handled automatically. If a child has [MOUSE\_FILTER\_PASS](#class-control-constant-mouse-filter-pass) and an event was passed to this control, the event will further propagate up to the control's parent.

**Note:** If the control has received [mouse\_entered](#class-control-signal-mouse-entered) but not [mouse\_exited](#class-control-signal-mouse-exited), changing the [mouse\_filter](#class-control-property-mouse-filter) to [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore) will cause [mouse\_exited](#class-control-signal-mouse-exited) to be emitted.

* * *

enum **GrowDirection**: [🔗](#enum-control-growdirection)

[GrowDirection](#enum-control-growdirection) **GROW\_DIRECTION\_BEGIN** = `0`

The control will grow to the left or top to make up if its minimum size is changed to be greater than its current size on the respective axis.

[GrowDirection](#enum-control-growdirection) **GROW\_DIRECTION\_END** = `1`

The control will grow to the right or bottom to make up if its minimum size is changed to be greater than its current size on the respective axis.

[GrowDirection](#enum-control-growdirection) **GROW\_DIRECTION\_BOTH** = `2`

The control will grow in both directions equally to make up if its minimum size is changed to be greater than its current size.

* * *

enum **Anchor**: [🔗](#enum-control-anchor)

[Anchor](#enum-control-anchor) **ANCHOR\_BEGIN** = `0`

Snaps one of the 4 anchor's sides to the origin of the node's `Rect`, in the top left. Use it with one of the `anchor_*` member variables, like [anchor\_left](#class-control-property-anchor-left). To change all 4 anchors at once, use [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

[Anchor](#enum-control-anchor) **ANCHOR\_END** = `1`

Snaps one of the 4 anchor's sides to the end of the node's `Rect`, in the bottom right. Use it with one of the `anchor_*` member variables, like [anchor\_left](#class-control-property-anchor-left). To change all 4 anchors at once, use [set\_anchors\_preset()](#class-control-method-set-anchors-preset).

* * *

enum **LayoutDirection**: [🔗](#enum-control-layoutdirection)

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_INHERITED** = `0`

Automatic layout direction, determined from the parent control layout direction.

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_APPLICATION\_LOCALE** = `1`

Automatic layout direction, determined from the current locale. Right-to-left layout direction is automatically used for languages that require it such as Arabic and Hebrew, but only if a valid translation file is loaded for the given language (unless said language is configured as a fallback in [ProjectSettings.internationalization/locale/fallback](class_projectsettings.md#class-projectsettings-property-internationalization-locale-fallback)). For all other languages (or if no valid translation file is found by Godot), left-to-right layout direction is used. If using [TextServerFallback](class_textserverfallback.md#class-textserverfallback) ( [ProjectSettings.internationalization/rendering/text\_driver](class_projectsettings.md#class-projectsettings-property-internationalization-rendering-text-driver)), left-to-right layout direction is always used regardless of the language. Right-to-left layout direction can also be forced using [ProjectSettings.internationalization/rendering/force\_right\_to\_left\_layout\_direction](class_projectsettings.md#class-projectsettings-property-internationalization-rendering-force-right-to-left-layout-direction).

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_LTR** = `2`

Left-to-right layout direction.

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_RTL** = `3`

Right-to-left layout direction.

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_SYSTEM\_LOCALE** = `4`

Automatic layout direction, determined from the system locale. Right-to-left layout direction is automatically used for languages that require it such as Arabic and Hebrew, but only if a valid translation file is loaded for the given language. For all other languages (or if no valid translation file is found by Godot), left-to-right layout direction is used. If using [TextServerFallback](class_textserverfallback.md#class-textserverfallback) ( [ProjectSettings.internationalization/rendering/text\_driver](class_projectsettings.md#class-projectsettings-property-internationalization-rendering-text-driver)), left-to-right layout direction is always used regardless of the language.

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_MAX** = `5`

Represents the size of the [LayoutDirection](#enum-control-layoutdirection) enum.

[LayoutDirection](#enum-control-layoutdirection) **LAYOUT\_DIRECTION\_LOCALE** = `1`

**Deprecated:** Use [LAYOUT\_DIRECTION\_APPLICATION\_LOCALE](#class-control-constant-layout-direction-application-locale) instead.

* * *

enum **TextDirection**: [🔗](#enum-control-textdirection)

[TextDirection](#enum-control-textdirection) **TEXT\_DIRECTION\_INHERITED** = `3`

Text writing direction is the same as layout direction.

[TextDirection](#enum-control-textdirection) **TEXT\_DIRECTION\_AUTO** = `0`

Automatic text writing direction, determined from the current locale and text content.

[TextDirection](#enum-control-textdirection) **TEXT\_DIRECTION\_LTR** = `1`

Left-to-right text writing direction.

[TextDirection](#enum-control-textdirection) **TEXT\_DIRECTION\_RTL** = `2`

Right-to-left text writing direction.

* * *

## Constants

**NOTIFICATION\_RESIZED** = `40` [🔗](#class-control-constant-notification-resized)

Sent when the node changes size. Use [size](#class-control-property-size) to get the new size.

**NOTIFICATION\_MOUSE\_ENTER** = `41` [🔗](#class-control-constant-notification-mouse-enter)

Sent when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect which Control receives the notification.

See also [NOTIFICATION\_MOUSE\_ENTER\_SELF](#class-control-constant-notification-mouse-enter-self).

**NOTIFICATION\_MOUSE\_EXIT** = `42` [🔗](#class-control-constant-notification-mouse-exit)

Sent when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect which Control receives the notification.

See also [NOTIFICATION\_MOUSE\_EXIT\_SELF](#class-control-constant-notification-mouse-exit-self).

**NOTIFICATION\_MOUSE\_ENTER\_SELF** = `60` [🔗](#class-control-constant-notification-mouse-enter-self)

**Experimental:** The reason this notification is sent may change in the future.

Sent when the mouse cursor enters the control's visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect which Control receives the notification.

See also [NOTIFICATION\_MOUSE\_ENTER](#class-control-constant-notification-mouse-enter).

**NOTIFICATION\_MOUSE\_EXIT\_SELF** = `61` [🔗](#class-control-constant-notification-mouse-exit-self)

**Experimental:** The reason this notification is sent may change in the future.

Sent when the mouse cursor leaves the control's visible area, that is not occluded behind other Controls or Windows, provided its [mouse\_filter](#class-control-property-mouse-filter) lets the event reach it and regardless if it's currently focused or not.

**Note:** [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) doesn't affect which Control receives the notification.

See also [NOTIFICATION\_MOUSE\_EXIT](#class-control-constant-notification-mouse-exit).

**NOTIFICATION\_FOCUS\_ENTER** = `43` [🔗](#class-control-constant-notification-focus-enter)

Sent when the node grabs focus.

**NOTIFICATION\_FOCUS\_EXIT** = `44` [🔗](#class-control-constant-notification-focus-exit)

Sent when the node loses focus.

**NOTIFICATION\_THEME\_CHANGED** = `45` [🔗](#class-control-constant-notification-theme-changed)

Sent when the node needs to refresh its theme items. This happens in one of the following cases:

- The [theme](#class-control-property-theme) property is changed on this node or any of its ancestors.

- The [theme\_type\_variation](#class-control-property-theme-type-variation) property is changed on this node.

- One of the node's theme property overrides is changed.

- The node enters the scene tree.


**Note:** As an optimization, this notification won't be sent from changes that occur while this node is outside of the scene tree. Instead, all of the theme item updates can be applied at once when the node enters the scene tree.

**Note:** This notification is received alongside [Node.NOTIFICATION\_ENTER\_TREE](class_node.md#class-node-constant-notification-enter-tree), so if you are instantiating a scene, the child nodes will not be initialized yet. You can use it to setup theming for this node, child nodes created from script, or if you want to access child nodes added in the editor, make sure the node is ready using [Node.is\_node\_ready()](class_node.md#class-node-method-is-node-ready).

```
func _notification(what):
    if what == NOTIFICATION_THEME_CHANGED:
        if not is_node_ready():
            await ready # Wait until ready signal.
        $Label.add_theme_color_override("font_color", Color.YELLOW)

```

**NOTIFICATION\_SCROLL\_BEGIN** = `47` [🔗](#class-control-constant-notification-scroll-begin)

Sent when this node is inside a [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer) which has begun being scrolled when dragging the scrollable area _with a touch event_. This notification is _not_ sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

**Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) is enabled.

**NOTIFICATION\_SCROLL\_END** = `48` [🔗](#class-control-constant-notification-scroll-end)

Sent when this node is inside a [ScrollContainer](class_scrollcontainer.md#class-scrollcontainer) which has stopped being scrolled when dragging the scrollable area _with a touch event_. This notification is _not_ sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

**Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when [ProjectSettings.input\_devices/pointing/emulate\_touch\_from\_mouse](class_projectsettings.md#class-projectsettings-property-input-devices-pointing-emulate-touch-from-mouse) is enabled.

**NOTIFICATION\_LAYOUT\_DIRECTION\_CHANGED** = `49` [🔗](#class-control-constant-notification-layout-direction-changed)

Sent when the control layout direction is changed from LTR or RTL or vice versa. This notification is propagated to child Control nodes as result of a change to [layout\_direction](#class-control-property-layout-direction).

* * *

## Property Descriptions

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **accessibility\_controls\_nodes** = `[]` [🔗](#class-control-property-accessibility-controls-nodes)

- void **set\_accessibility\_controls\_nodes**(value: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\])

- [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_accessibility\_controls\_nodes**()


The paths to the nodes which are controlled by this node.

* * *

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **accessibility\_described\_by\_nodes** = `[]` [🔗](#class-control-property-accessibility-described-by-nodes)

- void **set\_accessibility\_described\_by\_nodes**(value: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\])

- [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_accessibility\_described\_by\_nodes**()


The paths to the nodes which are describing this node.

* * *

[String](class_string.md#class-string) **accessibility\_description** = `""` [🔗](#class-control-property-accessibility-description)

- void **set\_accessibility\_description**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_accessibility\_description**()


The human-readable node description that is reported to assistive apps.

* * *

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **accessibility\_flow\_to\_nodes** = `[]` [🔗](#class-control-property-accessibility-flow-to-nodes)

- void **set\_accessibility\_flow\_to\_nodes**(value: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\])

- [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_accessibility\_flow\_to\_nodes**()


The paths to the nodes which this node flows into.

* * *

[Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **accessibility\_labeled\_by\_nodes** = `[]` [🔗](#class-control-property-accessibility-labeled-by-nodes)

- void **set\_accessibility\_labeled\_by\_nodes**(value: [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\])

- [Array](class_array.md#class-array)\[ [NodePath](class_nodepath.md#class-nodepath)\] **get\_accessibility\_labeled\_by\_nodes**()


The paths to the nodes which label this node.

* * *

[AccessibilityLiveMode](class_displayserver.md#enum-displayserver-accessibilitylivemode) **accessibility\_live** = `0` [🔗](#class-control-property-accessibility-live)

- void **set\_accessibility\_live**(value: [AccessibilityLiveMode](class_displayserver.md#enum-displayserver-accessibilitylivemode))

- [AccessibilityLiveMode](class_displayserver.md#enum-displayserver-accessibilitylivemode) **get\_accessibility\_live**()


The mode with which a live region updates. A live region is a [Node](class_node.md#class-node) that is updated as a result of an external event when the user's focus may be elsewhere.

* * *

[String](class_string.md#class-string) **accessibility\_name** = `""` [🔗](#class-control-property-accessibility-name)

- void **set\_accessibility\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_accessibility\_name**()


The human-readable node name that is reported to assistive apps.

* * *

[float](class_float.md#class-float) **anchor\_bottom** = `0.0` [🔗](#class-control-property-anchor-bottom)

- [float](class_float.md#class-float) **get\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Anchors the bottom edge of the node to the origin, the center, or the end of its parent control. It changes how the bottom offset updates when the node moves or changes size. You can use one of the [Anchor](#enum-control-anchor) constants for convenience.

* * *

[float](class_float.md#class-float) **anchor\_left** = `0.0` [🔗](#class-control-property-anchor-left)

- [float](class_float.md#class-float) **get\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Anchors the left edge of the node to the origin, the center or the end of its parent control. It changes how the left offset updates when the node moves or changes size. You can use one of the [Anchor](#enum-control-anchor) constants for convenience.

* * *

[float](class_float.md#class-float) **anchor\_right** = `0.0` [🔗](#class-control-property-anchor-right)

- [float](class_float.md#class-float) **get\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Anchors the right edge of the node to the origin, the center or the end of its parent control. It changes how the right offset updates when the node moves or changes size. You can use one of the [Anchor](#enum-control-anchor) constants for convenience.

* * *

[float](class_float.md#class-float) **anchor\_top** = `0.0` [🔗](#class-control-property-anchor-top)

- [float](class_float.md#class-float) **get\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Anchors the top edge of the node to the origin, the center or the end of its parent control. It changes how the top offset updates when the node moves or changes size. You can use one of the [Anchor](#enum-control-anchor) constants for convenience.

* * *

[bool](class_bool.md#class-bool) **auto\_translate** [🔗](#class-control-property-auto-translate)

- void **set\_auto\_translate**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_translating**()


**Deprecated:** Use [Node.auto\_translate\_mode](class_node.md#class-node-property-auto-translate-mode) and [Node.can\_auto\_translate()](class_node.md#class-node-method-can-auto-translate) instead.

Toggles if any text should automatically change to its translated version depending on the current locale.

* * *

[bool](class_bool.md#class-bool) **clip\_contents** = `false` [🔗](#class-control-property-clip-contents)

- void **set\_clip\_contents**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_clipping\_contents**()


Enables whether rendering of [CanvasItem](class_canvasitem.md#class-canvasitem) based children should be clipped to this control's rectangle. If `true`, parts of a child which would be visibly outside of this control's rectangle will not be rendered and won't receive input.

* * *

[Vector2](class_vector2.md#class-vector2) **custom\_minimum\_size** = `Vector2(0, 0)` [🔗](#class-control-property-custom-minimum-size)

- void **set\_custom\_minimum\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_custom\_minimum\_size**()


The minimum size of the node's bounding rectangle. If you set it to a value greater than `(0, 0)`, the node's bounding rectangle will always have at least this size. Note that **Control** nodes have their internal minimum size returned by [get\_minimum\_size()](#class-control-method-get-minimum-size). It depends on the control's contents, like text, textures, or style boxes. The actual minimum size is the maximum value of this property and the internal minimum size (see [get\_combined\_minimum\_size()](#class-control-method-get-combined-minimum-size)).

* * *

[FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) **focus\_behavior\_recursive** = `0` [🔗](#class-control-property-focus-behavior-recursive)

- void **set\_focus\_behavior\_recursive**(value: [FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive))

- [FocusBehaviorRecursive](#enum-control-focusbehaviorrecursive) **get\_focus\_behavior\_recursive**()


Determines which controls can be focused together with [focus\_mode](#class-control-property-focus-mode). See [get\_focus\_mode\_with\_override()](#class-control-method-get-focus-mode-with-override). Since the default behavior is [FOCUS\_BEHAVIOR\_INHERITED](#class-control-constant-focus-behavior-inherited), this can be used to prevent all children controls from getting focused.

* * *

[FocusMode](#enum-control-focusmode) **focus\_mode** = `0` [🔗](#class-control-property-focus-mode)

- void **set\_focus\_mode**(value: [FocusMode](#enum-control-focusmode))

- [FocusMode](#enum-control-focusmode) **get\_focus\_mode**()


Determines which controls can be focused. Only one control can be focused at a time, and the focused control will receive keyboard, gamepad, and mouse events in [\_gui\_input()](#class-control-private-method-gui-input). Use [get\_focus\_mode\_with\_override()](#class-control-method-get-focus-mode-with-override) to determine if a control can grab focus, since [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive) also affects it. See also [grab\_focus()](#class-control-method-grab-focus).

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_neighbor\_bottom** = `NodePath("")` [🔗](#class-control-property-focus-neighbor-bottom)

- void **set\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Tells Godot which node it should give focus to if the user presses the down arrow on the keyboard or down on a gamepad by default. You can change the key by editing the [ProjectSettings.input/ui\_down](class_projectsettings.md#class-projectsettings-property-input-ui-down) input action. The node must be a **Control**. If this property is not set, Godot will give focus to the closest **Control** to the bottom of this one.

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_neighbor\_left** = `NodePath("")` [🔗](#class-control-property-focus-neighbor-left)

- void **set\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Tells Godot which node it should give focus to if the user presses the left arrow on the keyboard or left on a gamepad by default. You can change the key by editing the [ProjectSettings.input/ui\_left](class_projectsettings.md#class-projectsettings-property-input-ui-left) input action. The node must be a **Control**. If this property is not set, Godot will give focus to the closest **Control** to the left of this one.

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_neighbor\_right** = `NodePath("")` [🔗](#class-control-property-focus-neighbor-right)

- void **set\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Tells Godot which node it should give focus to if the user presses the right arrow on the keyboard or right on a gamepad by default. You can change the key by editing the [ProjectSettings.input/ui\_right](class_projectsettings.md#class-projectsettings-property-input-ui-right) input action. The node must be a **Control**. If this property is not set, Godot will give focus to the closest **Control** to the right of this one.

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_neighbor\_top** = `NodePath("")` [🔗](#class-control-property-focus-neighbor-top)

- void **set\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const


Tells Godot which node it should give focus to if the user presses the top arrow on the keyboard or top on a gamepad by default. You can change the key by editing the [ProjectSettings.input/ui\_up](class_projectsettings.md#class-projectsettings-property-input-ui-up) input action. The node must be a **Control**. If this property is not set, Godot will give focus to the closest **Control** to the top of this one.

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_next** = `NodePath("")` [🔗](#class-control-property-focus-next)

- void **set\_focus\_next**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_next**()


Tells Godot which node it should give focus to if the user presses `Tab` on a keyboard by default. You can change the key by editing the [ProjectSettings.input/ui\_focus\_next](class_projectsettings.md#class-projectsettings-property-input-ui-focus-next) input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

* * *

[NodePath](class_nodepath.md#class-nodepath) **focus\_previous** = `NodePath("")` [🔗](#class-control-property-focus-previous)

- void **set\_focus\_previous**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_focus\_previous**()


Tells Godot which node it should give focus to if the user presses `Shift + Tab` on a keyboard by default. You can change the key by editing the [ProjectSettings.input/ui\_focus\_prev](class_projectsettings.md#class-projectsettings-property-input-ui-focus-prev) input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

* * *

[Vector2](class_vector2.md#class-vector2) **global\_position** [🔗](#class-control-property-global-position)

- [Vector2](class_vector2.md#class-vector2) **get\_global\_position**()


The node's global position, relative to the world (usually to the [CanvasLayer](class_canvaslayer.md#class-canvaslayer)).

* * *

[GrowDirection](#enum-control-growdirection) **grow\_horizontal** = `1` [🔗](#class-control-property-grow-horizontal)

- void **set\_h\_grow\_direction**(value: [GrowDirection](#enum-control-growdirection))

- [GrowDirection](#enum-control-growdirection) **get\_h\_grow\_direction**()


Controls the direction on the horizontal axis in which the control should grow if its horizontal minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.

* * *

[GrowDirection](#enum-control-growdirection) **grow\_vertical** = `1` [🔗](#class-control-property-grow-vertical)

- void **set\_v\_grow\_direction**(value: [GrowDirection](#enum-control-growdirection))

- [GrowDirection](#enum-control-growdirection) **get\_v\_grow\_direction**()


Controls the direction on the vertical axis in which the control should grow if its vertical minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.

* * *

[LayoutDirection](#enum-control-layoutdirection) **layout\_direction** = `0` [🔗](#class-control-property-layout-direction)

- void **set\_layout\_direction**(value: [LayoutDirection](#enum-control-layoutdirection))

- [LayoutDirection](#enum-control-layoutdirection) **get\_layout\_direction**()


Controls layout direction and text writing direction. Right-to-left layouts are necessary for certain languages (e.g. Arabic and Hebrew). See also [is\_layout\_rtl()](#class-control-method-is-layout-rtl).

* * *

[bool](class_bool.md#class-bool) **localize\_numeral\_system** = `true` [🔗](#class-control-property-localize-numeral-system)

- void **set\_localize\_numeral\_system**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_localizing\_numeral\_system**()


If `true`, automatically converts code line numbers, list indices, [SpinBox](class_spinbox.md#class-spinbox) and [ProgressBar](class_progressbar.md#class-progressbar) values from the Western Arabic (0..9) to the numeral systems used in current locale.

**Note:** Numbers within the text are not automatically converted, it can be done manually, using [TextServer.format\_number()](class_textserver.md#class-textserver-method-format-number).

* * *

[MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) **mouse\_behavior\_recursive** = `0` [🔗](#class-control-property-mouse-behavior-recursive)

- void **set\_mouse\_behavior\_recursive**(value: [MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive))

- [MouseBehaviorRecursive](#enum-control-mousebehaviorrecursive) **get\_mouse\_behavior\_recursive**()


Determines which controls can receive mouse input together with [mouse\_filter](#class-control-property-mouse-filter). See [get\_mouse\_filter\_with\_override()](#class-control-method-get-mouse-filter-with-override). Since the default behavior is [MOUSE\_BEHAVIOR\_INHERITED](#class-control-constant-mouse-behavior-inherited), this can be used to prevent all children controls from receiving mouse input.

* * *

[CursorShape](#enum-control-cursorshape) **mouse\_default\_cursor\_shape** = `0` [🔗](#class-control-property-mouse-default-cursor-shape)

- void **set\_default\_cursor\_shape**(value: [CursorShape](#enum-control-cursorshape))

- [CursorShape](#enum-control-cursorshape) **get\_default\_cursor\_shape**()


The default cursor shape for this control. Useful for Godot plugins and applications or games that use the system's mouse cursors.

**Note:** On Linux, shapes may vary depending on the cursor theme of the system.

* * *

[MouseFilter](#enum-control-mousefilter) **mouse\_filter** = `0` [🔗](#class-control-property-mouse-filter)

- void **set\_mouse\_filter**(value: [MouseFilter](#enum-control-mousefilter))

- [MouseFilter](#enum-control-mousefilter) **get\_mouse\_filter**()


Determines which controls will be able to receive mouse button input events through [\_gui\_input()](#class-control-private-method-gui-input) and the [mouse\_entered](#class-control-signal-mouse-entered), and [mouse\_exited](#class-control-signal-mouse-exited) signals. Also determines how these events should be propagated. See the constants to learn what each does. Use [get\_mouse\_filter\_with\_override()](#class-control-method-get-mouse-filter-with-override) to determine if a control can receive mouse input, since [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive) also affects it.

* * *

[bool](class_bool.md#class-bool) **mouse\_force\_pass\_scroll\_events** = `true` [🔗](#class-control-property-mouse-force-pass-scroll-events)

- void **set\_force\_pass\_scroll\_events**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_force\_pass\_scroll\_events**()


When enabled, scroll wheel events processed by [\_gui\_input()](#class-control-private-method-gui-input) will be passed to the parent control even if [mouse\_filter](#class-control-property-mouse-filter) is set to [MOUSE\_FILTER\_STOP](#class-control-constant-mouse-filter-stop).

You should disable it on the root of your UI if you do not want scroll events to go to the [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input) processing.

**Note:** Because this property defaults to `true`, this allows nested scrollable containers to work out of the box.

* * *

[float](class_float.md#class-float) **offset\_bottom** = `0.0` [🔗](#class-control-property-offset-bottom)

- void **set\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_offset**(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const


Distance between the node's bottom edge and its parent control, based on [anchor\_bottom](#class-control-property-anchor-bottom).

Offsets are often controlled by one or multiple parent [Container](class_container.md#class-container) nodes, so you should not modify them manually if your node is a direct child of a [Container](class_container.md#class-container). Offsets update automatically when you move or resize the node.

* * *

[float](class_float.md#class-float) **offset\_left** = `0.0` [🔗](#class-control-property-offset-left)

- void **set\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_offset**(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const


Distance between the node's left edge and its parent control, based on [anchor\_left](#class-control-property-anchor-left).

Offsets are often controlled by one or multiple parent [Container](class_container.md#class-container) nodes, so you should not modify them manually if your node is a direct child of a [Container](class_container.md#class-container). Offsets update automatically when you move or resize the node.

* * *

[float](class_float.md#class-float) **offset\_right** = `0.0` [🔗](#class-control-property-offset-right)

- void **set\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_offset**(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const


Distance between the node's right edge and its parent control, based on [anchor\_right](#class-control-property-anchor-right).

Offsets are often controlled by one or multiple parent [Container](class_container.md#class-container) nodes, so you should not modify them manually if your node is a direct child of a [Container](class_container.md#class-container). Offsets update automatically when you move or resize the node.

* * *

[float](class_float.md#class-float) **offset\_top** = `0.0` [🔗](#class-control-property-offset-top)

- void **set\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_offset**(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const


Distance between the node's top edge and its parent control, based on [anchor\_top](#class-control-property-anchor-top).

Offsets are often controlled by one or multiple parent [Container](class_container.md#class-container) nodes, so you should not modify them manually if your node is a direct child of a [Container](class_container.md#class-container). Offsets update automatically when you move or resize the node.

* * *

[Vector2](class_vector2.md#class-vector2) **pivot\_offset** = `Vector2(0, 0)` [🔗](#class-control-property-pivot-offset)

- void **set\_pivot\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_pivot\_offset**()


By default, the node's pivot is its top-left corner. When you change its [rotation](#class-control-property-rotation) or [scale](#class-control-property-scale), it will rotate or scale around this pivot. Set this property to [size](#class-control-property-size) / 2 to pivot around the Control's center.

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-control-property-position)

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


The node's position, relative to its containing node. It corresponds to the rectangle's top-left corner. The property is not affected by [pivot\_offset](#class-control-property-pivot-offset).

* * *

[float](class_float.md#class-float) **rotation** = `0.0` [🔗](#class-control-property-rotation)

- void **set\_rotation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation**()


The node's rotation around its pivot, in radians. See [pivot\_offset](#class-control-property-pivot-offset) to change the pivot's position.

**Note:** This property is edited in the inspector in degrees. If you want to use degrees in a script, use [rotation\_degrees](#class-control-property-rotation-degrees).

* * *

[float](class_float.md#class-float) **rotation\_degrees** [🔗](#class-control-property-rotation-degrees)

- void **set\_rotation\_degrees**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation\_degrees**()


Helper property to access [rotation](#class-control-property-rotation) in degrees instead of radians.

* * *

[Vector2](class_vector2.md#class-vector2) **scale** = `Vector2(1, 1)` [🔗](#class-control-property-scale)

- void **set\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scale**()


The node's scale, relative to its [size](#class-control-property-size). Change this property to scale the node around its [pivot\_offset](#class-control-property-pivot-offset). The Control's tooltip will also scale according to this value.

**Note:** This property is mainly intended to be used for animation purposes. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the [documentation](../tutorials/rendering/multiple_resolutions.md) instead of scaling Controls individually.

**Note:** [FontFile.oversampling](class_fontfile.md#class-fontfile-property-oversampling) does _not_ take **Control** [scale](#class-control-property-scale) into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling [ProjectSettings.gui/theme/default\_font\_multichannel\_signed\_distance\_field](class_projectsettings.md#class-projectsettings-property-gui-theme-default-font-multichannel-signed-distance-field) (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, [SystemFont.multichannel\_signed\_distance\_field](class_systemfont.md#class-systemfont-property-multichannel-signed-distance-field) can be enabled in the inspector.

**Note:** If the Control node is a child of a [Container](class_container.md#class-container) node, the scale will be reset to `Vector2(1, 1)` when the scene is instantiated. To set the Control's scale when it's instantiated, wait for one frame using `await get_tree().process_frame` then set its [scale](#class-control-property-scale) property.

* * *

[Node](class_node.md#class-node) **shortcut\_context** [🔗](#class-control-property-shortcut-context)

- void **set\_shortcut\_context**(value: [Node](class_node.md#class-node))

- [Node](class_node.md#class-node) **get\_shortcut\_context**()


The [Node](class_node.md#class-node) which must be a parent of the focused **Control** for the shortcut to be activated. If `null`, the shortcut can be activated when any control is focused (a global shortcut). This allows shortcuts to be accepted only when the user has a certain area of the GUI focused.

* * *

[Vector2](class_vector2.md#class-vector2) **size** = `Vector2(0, 0)` [🔗](#class-control-property-size)

- [Vector2](class_vector2.md#class-vector2) **get\_size**()


The size of the node's bounding rectangle, in the node's coordinate system. [Container](class_container.md#class-container) nodes update this property automatically.

* * *

BitField\[ [SizeFlags](#enum-control-sizeflags)\] **size\_flags\_horizontal** = `1` [🔗](#class-control-property-size-flags-horizontal)

- void **set\_h\_size\_flags**(value: BitField\[ [SizeFlags](#enum-control-sizeflags)\])

- BitField\[ [SizeFlags](#enum-control-sizeflags)\] **get\_h\_size\_flags**()


Tells the parent [Container](class_container.md#class-container) nodes how they should resize and place the node on the X axis. Use a combination of the [SizeFlags](#enum-control-sizeflags) constants to change the flags. See the constants to learn what each does.

* * *

[float](class_float.md#class-float) **size\_flags\_stretch\_ratio** = `1.0` [🔗](#class-control-property-size-flags-stretch-ratio)

- void **set\_stretch\_ratio**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_stretch\_ratio**()


If the node and at least one of its neighbors uses the [SIZE\_EXPAND](#class-control-constant-size-expand) size flag, the parent [Container](class_container.md#class-container) will let it take more or less space depending on this property. If this node has a stretch ratio of 2 and its neighbor a ratio of 1, this node will take two thirds of the available space.

* * *

BitField\[ [SizeFlags](#enum-control-sizeflags)\] **size\_flags\_vertical** = `1` [🔗](#class-control-property-size-flags-vertical)

- void **set\_v\_size\_flags**(value: BitField\[ [SizeFlags](#enum-control-sizeflags)\])

- BitField\[ [SizeFlags](#enum-control-sizeflags)\] **get\_v\_size\_flags**()


Tells the parent [Container](class_container.md#class-container) nodes how they should resize and place the node on the Y axis. Use a combination of the [SizeFlags](#enum-control-sizeflags) constants to change the flags. See the constants to learn what each does.

* * *

[Theme](class_theme.md#class-theme) **theme** [🔗](#class-control-property-theme)

- void **set\_theme**(value: [Theme](class_theme.md#class-theme))

- [Theme](class_theme.md#class-theme) **get\_theme**()


The [Theme](class_theme.md#class-theme) resource this node and all its **Control** and [Window](class_window.md#class-window) children use. If a child node has its own [Theme](class_theme.md#class-theme) resource set, theme items are merged with child's definitions having higher priority.

**Note:** [Window](class_window.md#class-window) styles will have no effect unless the window is embedded.

* * *

[StringName](class_stringname.md#class-stringname) **theme\_type\_variation** = `&""` [🔗](#class-control-property-theme-type-variation)

- void **set\_theme\_type\_variation**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_theme\_type\_variation**()


The name of a theme type variation used by this **Control** to look up its own theme items. When empty, the class name of the node is used (e.g. `Button` for the [Button](class_button.md#class-button) control), as well as the class names of all parent classes (in order of inheritance).

When set, this property gives the highest priority to the type of the specified name. This type can in turn extend another type, forming a dependency chain. See [Theme.set\_type\_variation()](class_theme.md#class-theme-method-set-type-variation). If the theme item cannot be found using this type or its base types, lookup falls back on the class names.

**Note:** To look up **Control**'s own items use various `get_theme_*` methods without specifying `theme_type`.

**Note:** Theme items are looked for in the tree order, from branch to root, where each **Control** node is checked for its [theme](#class-control-property-theme) property. The earliest match against any type/class name is returned. The project-level Theme and the default Theme are checked last.

* * *

[AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **tooltip\_auto\_translate\_mode** = `0` [🔗](#class-control-property-tooltip-auto-translate-mode)

- void **set\_tooltip\_auto\_translate\_mode**(value: [AutoTranslateMode](class_node.md#enum-node-autotranslatemode))

- [AutoTranslateMode](class_node.md#enum-node-autotranslatemode) **get\_tooltip\_auto\_translate\_mode**()


Defines if tooltip text should automatically change to its translated version depending on the current locale. Uses the same auto translate mode as this control when set to [Node.AUTO\_TRANSLATE\_MODE\_INHERIT](class_node.md#class-node-constant-auto-translate-mode-inherit).

**Note:** Tooltips customized using [\_make\_custom\_tooltip()](#class-control-private-method-make-custom-tooltip) do not use this auto translate mode automatically.

* * *

[String](class_string.md#class-string) **tooltip\_text** = `""` [🔗](#class-control-property-tooltip-text)

- void **set\_tooltip\_text**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_tooltip\_text**()


The default tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the [mouse\_filter](#class-control-property-mouse-filter) property is not [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore). The time required for the tooltip to appear can be changed with the [ProjectSettings.gui/timers/tooltip\_delay\_sec](class_projectsettings.md#class-projectsettings-property-gui-timers-tooltip-delay-sec) setting.

This string is the default return value of [get\_tooltip()](#class-control-method-get-tooltip). Override [\_get\_tooltip()](#class-control-private-method-get-tooltip) to generate tooltip text dynamically. Override [\_make\_custom\_tooltip()](#class-control-private-method-make-custom-tooltip) to customize the tooltip interface and behavior.

The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding [\_make\_custom\_tooltip()](#class-control-private-method-make-custom-tooltip). The default tooltip includes a [PopupPanel](class_popuppanel.md#class-popuppanel) and [Label](class_label.md#class-label) whose theme properties can be customized using [Theme](class_theme.md#class-theme) methods with the `"TooltipPanel"` and `"TooltipLabel"` respectively. For example:

GDScriptC#

```
var style_box = StyleBoxFlat.new()
style_box.set_bg_color(Color(1, 1, 0))
style_box.set_border_width_all(2)
# We assume here that the `theme` property has been assigned a custom Theme beforehand.
theme.set_stylebox("panel", "TooltipPanel", style_box)
theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))

```

```
var styleBox = new StyleBoxFlat();
styleBox.SetBgColor(new Color(1, 1, 0));
styleBox.SetBorderWidthAll(2);
// We assume here that the `Theme` property has been assigned a custom Theme beforehand.
Theme.SetStyleBox("panel", "TooltipPanel", styleBox);
Theme.SetColor("font_color", "TooltipLabel", new Color(0, 1, 1));

```

* * *

## Method Descriptions

[String](class_string.md#class-string) **\_accessibility\_get\_contextual\_info**() virtualconst [🔗](#class-control-private-method-accessibility-get-contextual-info)

Return the description of the keyboard shortcuts and other contextual help for this control.

* * *

[bool](class_bool.md#class-bool) **\_can\_drop\_data**(at\_position: [Vector2](class_vector2.md#class-vector2), data: [Variant](class_variant.md#class-variant)) virtualconst [🔗](#class-control-private-method-can-drop-data)

Godot calls this method to test if `data` from a control's [\_get\_drag\_data()](#class-control-private-method-get-drag-data) can be dropped at `at_position`. `at_position` is local to this control.

This method should only be used to test the data. Process the data in [\_drop\_data()](#class-control-private-method-drop-data).

**Note:** If the drag was initiated by a keyboard shortcut or [accessibility\_drag()](#class-control-method-accessibility-drag), `at_position` is set to [Vector2.INF](class_vector2.md#class-vector2-constant-inf), and the currently selected item/text position should be used as the drop position.

GDScriptC#

```
func _can_drop_data(position, data):
    # Check position if it is relevant to you
    # Otherwise, just check data
    return typeof(data) == TYPE_DICTIONARY and data.has("expected")

```

```
public override bool _CanDropData(Vector2 atPosition, Variant data)
{
    // Check position if it is relevant to you
    // Otherwise, just check data
    return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("expected");
}

```

* * *

void **\_drop\_data**(at\_position: [Vector2](class_vector2.md#class-vector2), data: [Variant](class_variant.md#class-variant)) virtual [🔗](#class-control-private-method-drop-data)

Godot calls this method to pass you the `data` from a control's [\_get\_drag\_data()](#class-control-private-method-get-drag-data) result. Godot first calls [\_can\_drop\_data()](#class-control-private-method-can-drop-data) to test if `data` is allowed to drop at `at_position` where `at_position` is local to this control.

**Note:** If the drag was initiated by a keyboard shortcut or [accessibility\_drag()](#class-control-method-accessibility-drag), `at_position` is set to [Vector2.INF](class_vector2.md#class-vector2-constant-inf), and the currently selected item/text position should be used as the drop position.

GDScriptC#

```
func _can_drop_data(position, data):
    return typeof(data) == TYPE_DICTIONARY and data.has("color")

func _drop_data(position, data):
    var color = data["color"]

```

```
public override bool _CanDropData(Vector2 atPosition, Variant data)
{
    return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("color");
}

public override void _DropData(Vector2 atPosition, Variant data)
{
    Color color = data.AsGodotDictionary()["color"].AsColor();
}

```

* * *

[String](class_string.md#class-string) **\_get\_accessibility\_container\_name**(node: [Node](class_node.md#class-node)) virtualconst [🔗](#class-control-private-method-get-accessibility-container-name)

Override this method to return a human-readable description of the position of the child `node` in the custom container, added to the [accessibility\_name](#class-control-property-accessibility-name).

* * *

[Variant](class_variant.md#class-variant) **\_get\_drag\_data**(at\_position: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-control-private-method-get-drag-data)

Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns `null` if there is no data to drag. Controls that want to receive drop data should implement [\_can\_drop\_data()](#class-control-private-method-can-drop-data) and [\_drop\_data()](#class-control-private-method-drop-data). `at_position` is local to this control. Drag may be forced with [force\_drag()](#class-control-method-force-drag).

A preview that will follow the mouse that should represent the data can be set with [set\_drag\_preview()](#class-control-method-set-drag-preview). A good time to set the preview is in this method.

**Note:** If the drag was initiated by a keyboard shortcut or [accessibility\_drag()](#class-control-method-accessibility-drag), `at_position` is set to [Vector2.INF](class_vector2.md#class-vector2-constant-inf), and the currently selected item/text position should be used as the drag position.

GDScriptC#

```
func _get_drag_data(position):
    var mydata = make_data() # This is your custom method generating the drag data.
    set_drag_preview(make_preview(mydata)) # This is your custom method generating the preview of the drag data.
    return mydata

```

```
public override Variant _GetDragData(Vector2 atPosition)
{
    var myData = MakeData(); // This is your custom method generating the drag data.
    SetDragPreview(MakePreview(myData)); // This is your custom method generating the preview of the drag data.
    return myData;
}

```

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_minimum\_size**() virtualconst [🔗](#class-control-private-method-get-minimum-size)

Virtual method to be implemented by the user. Returns the minimum size for this control. Alternative to [custom\_minimum\_size](#class-control-property-custom-minimum-size) for controlling minimum size via code. The actual minimum size will be the max value of these two (in each axis separately).

If not overridden, defaults to [Vector2.ZERO](class_vector2.md#class-vector2-constant-zero).

**Note:** This method will not be called when the script is attached to a **Control** node that already overrides its minimum size (e.g. [Label](class_label.md#class-label), [Button](class_button.md#class-button), [PanelContainer](class_panelcontainer.md#class-panelcontainer) etc.). It can only be used with most basic GUI nodes, like **Control**, [Container](class_container.md#class-container), [Panel](class_panel.md#class-panel) etc.

* * *

[String](class_string.md#class-string) **\_get\_tooltip**(at\_position: [Vector2](class_vector2.md#class-vector2)) virtualconst [🔗](#class-control-private-method-get-tooltip)

Virtual method to be implemented by the user. Returns the tooltip text for the position `at_position` in control's local coordinates, which will typically appear when the cursor is resting over this control. See [get\_tooltip()](#class-control-method-get-tooltip).

**Note:** If this method returns an empty [String](class_string.md#class-string) and [\_make\_custom\_tooltip()](#class-control-private-method-make-custom-tooltip) is not overridden, no tooltip is displayed.

* * *

void **\_gui\_input**(event: [InputEvent](class_inputevent.md#class-inputevent)) virtual [🔗](#class-control-private-method-gui-input)

Virtual method to be implemented by the user. Override this method to handle and accept inputs on UI elements. See also [accept\_event()](#class-control-method-accept-event).

**Example:** Click on the control to print a message:

GDScriptC#

```
func _gui_input(event):
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            print("I've been clicked D:")

```

```
public override void _GuiInput(InputEvent @event)
{
    if (@event is InputEventMouseButton mb)
    {
        if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
        {
            GD.Print("I've been clicked D:");
        }
    }
}

```

If the `event` inherits [InputEventMouse](class_inputeventmouse.md#class-inputeventmouse), this method will **not** be called when:

- the control's [mouse\_filter](#class-control-property-mouse-filter) is set to [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore);

- the control is obstructed by another control on top, that doesn't have [mouse\_filter](#class-control-property-mouse-filter) set to [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore);

- the control's parent has [mouse\_filter](#class-control-property-mouse-filter) set to [MOUSE\_FILTER\_STOP](#class-control-constant-mouse-filter-stop) or has accepted the event;

- the control's parent has [clip\_contents](#class-control-property-clip-contents) enabled and the `event`'s position is outside the parent's rectangle;

- the `event`'s position is outside the control (see [\_has\_point()](#class-control-private-method-has-point)).


**Note:** The `event`'s position is relative to this control's origin.

* * *

[bool](class_bool.md#class-bool) **\_has\_point**(point: [Vector2](class_vector2.md#class-vector2)) virtualconst [🔗](#class-control-private-method-has-point)

Virtual method to be implemented by the user. Returns whether the given `point` is inside this control.

If not overridden, default behavior is checking if the point is within control's Rect.

**Note:** If you want to check if a point is inside the control, you can use `Rect2(Vector2.ZERO, size).has_point(point)`.

* * *

[Object](class_object.md#class-object) **\_make\_custom\_tooltip**(for\_text: [String](class_string.md#class-string)) virtualconst [🔗](#class-control-private-method-make-custom-tooltip)

Virtual method to be implemented by the user. Returns a **Control** node that should be used as a tooltip instead of the default one. `for_text` is the return value of [get\_tooltip()](#class-control-method-get-tooltip).

The returned node must be of type **Control** or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance). When `null` or a non-Control node is returned, the default tooltip will be used instead.

The returned node will be added as child to a [PopupPanel](class_popuppanel.md#class-popuppanel), so you should only provide the contents of that panel. That [PopupPanel](class_popuppanel.md#class-popuppanel) can be themed using [Theme.set\_stylebox()](class_theme.md#class-theme-method-set-stylebox) for the type `"TooltipPanel"` (see [tooltip\_text](#class-control-property-tooltip-text) for an example).

**Note:** The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its [custom\_minimum\_size](#class-control-property-custom-minimum-size) to some non-zero value.

**Note:** The node (and any relevant children) should have their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) set to `true` when returned, otherwise, the viewport that instantiates it will not be able to calculate its minimum size reliably.

**Note:** If overridden, this method is called even if [get\_tooltip()](#class-control-method-get-tooltip) returns an empty string. When this happens with the default tooltip, it is not displayed. To copy this behavior, return `null` in this method when `for_text` is empty.

**Example:** Use a constructed node as a tooltip:

GDScriptC#

```
func _make_custom_tooltip(for_text):
    var label = Label.new()
    label.text = for_text
    return label

```

```
public override Control _MakeCustomTooltip(string forText)
{
    var label = new Label();
    label.Text = forText;
    return label;
}

```

**Example:** Usa a scene instance as a tooltip:

GDScriptC#

```
func _make_custom_tooltip(for_text):
    var tooltip = preload("res://some_tooltip_scene.tscn").instantiate()
    tooltip.get_node("Label").text = for_text
    return tooltip

```

```
public override Control _MakeCustomTooltip(string forText)
{
    Node tooltip = ResourceLoader.Load<PackedScene>("res://some_tooltip_scene.tscn").Instantiate();
    tooltip.GetNode<Label>("Label").Text = forText;
    return tooltip;
}

```

* * *

[Array](class_array.md#class-array)\[ [Vector3i](class_vector3i.md#class-vector3i)\] **\_structured\_text\_parser**(args: [Array](class_array.md#class-array), text: [String](class_string.md#class-string)) virtualconst [🔗](#class-control-private-method-structured-text-parser)

User defined BiDi algorithm override function.

Returns an [Array](class_array.md#class-array) of [Vector3i](class_vector3i.md#class-vector3i) text ranges and text base directions, in the left-to-right order. Ranges should cover full source `text` without overlaps. BiDi algorithm will be used on each range separately.

* * *

void **accept\_event**() [🔗](#class-control-method-accept-event)

Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to [Node.\_unhandled\_input()](class_node.md#class-node-private-method-unhandled-input) or [Node.\_unhandled\_key\_input()](class_node.md#class-node-private-method-unhandled-key-input).

**Note:** This does not affect the methods in [Input](class_input.md#class-input), only the way events are propagated.

* * *

void **accessibility\_drag**() [🔗](#class-control-method-accessibility-drag)

Starts drag-and-drop operation without using a mouse.

* * *

void **accessibility\_drop**() [🔗](#class-control-method-accessibility-drop)

Ends drag-and-drop operation without using a mouse.

* * *

void **add\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname), color: [Color](class_color.md#class-color)) [🔗](#class-control-method-add-theme-color-override)

Creates a local override for a theme [Color](class_color.md#class-color) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_color\_override()](#class-control-method-remove-theme-color-override).

See also [get\_theme\_color()](#class-control-method-get-theme-color).

**Example:** Override a [Label](class_label.md#class-label)'s color and reset it later:

GDScriptC#

```
# Given the child Label node "MyLabel", override its font color with a custom value.
$MyLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
# Reset the font color of the child label.
$MyLabel.remove_theme_color_override("font_color")
# Alternatively it can be overridden with the default value from the Label type.
$MyLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

```

```
// Given the child Label node "MyLabel", override its font color with a custom value.
GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
// Reset the font color of the child label.
GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color");
// Alternatively it can be overridden with the default value from the Label type.
GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));

```

* * *

void **add\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname), constant: [int](class_int.md#class-int)) [🔗](#class-control-method-add-theme-constant-override)

Creates a local override for a theme constant with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_constant\_override()](#class-control-method-remove-theme-constant-override).

See also [get\_theme\_constant()](#class-control-method-get-theme-constant).

* * *

void **add\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname), font: [Font](class_font.md#class-font)) [🔗](#class-control-method-add-theme-font-override)

Creates a local override for a theme [Font](class_font.md#class-font) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_font\_override()](#class-control-method-remove-theme-font-override).

See also [get\_theme\_font()](#class-control-method-get-theme-font).

* * *

void **add\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname), font\_size: [int](class_int.md#class-int)) [🔗](#class-control-method-add-theme-font-size-override)

Creates a local override for a theme font size with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_font\_size\_override()](#class-control-method-remove-theme-font-size-override).

See also [get\_theme\_font\_size()](#class-control-method-get-theme-font-size).

* * *

void **add\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname), texture: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-control-method-add-theme-icon-override)

Creates a local override for a theme icon with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_icon\_override()](#class-control-method-remove-theme-icon-override).

See also [get\_theme\_icon()](#class-control-method-get-theme-icon).

* * *

void **add\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname), stylebox: [StyleBox](class_stylebox.md#class-stylebox)) [🔗](#class-control-method-add-theme-stylebox-override)

Creates a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed with [remove\_theme\_stylebox\_override()](#class-control-method-remove-theme-stylebox-override).

See also [get\_theme\_stylebox()](#class-control-method-get-theme-stylebox).

**Example:** Modify a property in a [StyleBox](class_stylebox.md#class-stylebox) by duplicating it:

GDScriptC#

```
# The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
# Resources are shared across instances, so we need to duplicate it
# to avoid modifying the appearance of all other buttons.
var new_stylebox_normal = $MyButton.get_theme_stylebox("normal").duplicate()
new_stylebox_normal.border_width_top = 3
new_stylebox_normal.border_color = Color(0, 1, 0.5)
$MyButton.add_theme_stylebox_override("normal", new_stylebox_normal)
# Remove the stylebox override.
$MyButton.remove_theme_stylebox_override("normal")

```

```
// The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
// Resources are shared across instances, so we need to duplicate it
// to avoid modifying the appearance of all other buttons.
StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
newStyleboxNormal.BorderWidthTop = 3;
newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f);
GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal);
// Remove the stylebox override.
GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");

```

* * *

void **begin\_bulk\_theme\_override**() [🔗](#class-control-method-begin-bulk-theme-override)

Prevents `*_theme_*_override` methods from emitting [NOTIFICATION\_THEME\_CHANGED](#class-control-constant-notification-theme-changed) until [end\_bulk\_theme\_override()](#class-control-method-end-bulk-theme-override) is called.

* * *

void **end\_bulk\_theme\_override**() [🔗](#class-control-method-end-bulk-theme-override)

Ends a bulk theme override update. See [begin\_bulk\_theme\_override()](#class-control-method-begin-bulk-theme-override).

* * *

[Control](#class-control) **find\_next\_valid\_focus**() const [🔗](#class-control-method-find-next-valid-focus)

Finds the next (below in the tree) **Control** that can receive the focus.

* * *

[Control](#class-control) **find\_prev\_valid\_focus**() const [🔗](#class-control-method-find-prev-valid-focus)

Finds the previous (above in the tree) **Control** that can receive the focus.

* * *

[Control](#class-control) **find\_valid\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-control-method-find-valid-focus-neighbor)

Finds the next **Control** that can receive the focus on the specified [Side](class_@globalscope.md#enum-globalscope-side).

**Note:** This is different from [get\_focus\_neighbor()](#class-control-method-get-focus-neighbor), which returns the path of a specified focus neighbor.

* * *

void **force\_drag**(data: [Variant](class_variant.md#class-variant), preview: [Control](#class-control)) [🔗](#class-control-method-force-drag)

Forces drag and bypasses [\_get\_drag\_data()](#class-control-private-method-get-drag-data) and [set\_drag\_preview()](#class-control-method-set-drag-preview) by passing `data` and `preview`. Drag will start even if the mouse is neither over nor pressed on this control.

The methods [\_can\_drop\_data()](#class-control-private-method-can-drop-data) and [\_drop\_data()](#class-control-private-method-drop-data) must be implemented on controls that want to receive drop data.

* * *

[float](class_float.md#class-float) **get\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-control-method-get-anchor)

Returns the anchor for the specified [Side](class_@globalscope.md#enum-globalscope-side). A getter method for [anchor\_bottom](#class-control-property-anchor-bottom), [anchor\_left](#class-control-property-anchor-left), [anchor\_right](#class-control-property-anchor-right) and [anchor\_top](#class-control-property-anchor-top).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_begin**() const [🔗](#class-control-method-get-begin)

Returns [offset\_left](#class-control-property-offset-left) and [offset\_top](#class-control-property-offset-top). See also [position](#class-control-property-position).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_combined\_minimum\_size**() const [🔗](#class-control-method-get-combined-minimum-size)

Returns combined minimum size from [custom\_minimum\_size](#class-control-property-custom-minimum-size) and [get\_minimum\_size()](#class-control-method-get-minimum-size).

* * *

[CursorShape](#enum-control-cursorshape) **get\_cursor\_shape**(position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const [🔗](#class-control-method-get-cursor-shape)

Returns the mouse cursor shape for this control when hovered over `position` in local coordinates. For most controls, this is the same as [mouse\_default\_cursor\_shape](#class-control-property-mouse-default-cursor-shape), but some built-in controls implement more complex logic.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_end**() const [🔗](#class-control-method-get-end)

Returns [offset\_right](#class-control-property-offset-right) and [offset\_bottom](#class-control-property-offset-bottom).

* * *

[FocusMode](#enum-control-focusmode) **get\_focus\_mode\_with\_override**() const [🔗](#class-control-method-get-focus-mode-with-override)

Returns the [focus\_mode](#class-control-property-focus-mode), but takes the [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive) into account. If [focus\_behavior\_recursive](#class-control-property-focus-behavior-recursive) is set to [FOCUS\_BEHAVIOR\_DISABLED](#class-control-constant-focus-behavior-disabled), or it is set to [FOCUS\_BEHAVIOR\_INHERITED](#class-control-constant-focus-behavior-inherited) and its ancestor is set to [FOCUS\_BEHAVIOR\_DISABLED](#class-control-constant-focus-behavior-disabled), then this returns [FOCUS\_NONE](#class-control-constant-focus-none).

* * *

[NodePath](class_nodepath.md#class-nodepath) **get\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-control-method-get-focus-neighbor)

Returns the focus neighbor for the specified [Side](class_@globalscope.md#enum-globalscope-side). A getter method for [focus\_neighbor\_bottom](#class-control-property-focus-neighbor-bottom), [focus\_neighbor\_left](#class-control-property-focus-neighbor-left), [focus\_neighbor\_right](#class-control-property-focus-neighbor-right) and [focus\_neighbor\_top](#class-control-property-focus-neighbor-top).

**Note:** To find the next **Control** on the specific [Side](class_@globalscope.md#enum-globalscope-side), even if a neighbor is not assigned, use [find\_valid\_focus\_neighbor()](#class-control-method-find-valid-focus-neighbor).

* * *

[Rect2](class_rect2.md#class-rect2) **get\_global\_rect**() const [🔗](#class-control-method-get-global-rect)

Returns the position and size of the control relative to the containing canvas. See [global\_position](#class-control-property-global-position) and [size](#class-control-property-size).

**Note:** If the node itself or any parent [CanvasItem](class_canvasitem.md#class-canvasitem) between the node and the canvas have a non default rotation or skew, the resulting size is likely not meaningful.

**Note:** Setting [Viewport.gui\_snap\_controls\_to\_pixels](class_viewport.md#class-viewport-property-gui-snap-controls-to-pixels) to `true` can lead to rounding inaccuracies between the displayed control and the returned [Rect2](class_rect2.md#class-rect2).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_minimum\_size**() const [🔗](#class-control-method-get-minimum-size)

Returns the minimum size for this control. See [custom\_minimum\_size](#class-control-property-custom-minimum-size).

* * *

[MouseFilter](#enum-control-mousefilter) **get\_mouse\_filter\_with\_override**() const [🔗](#class-control-method-get-mouse-filter-with-override)

Returns the [mouse\_filter](#class-control-property-mouse-filter), but takes the [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive) into account. If [mouse\_behavior\_recursive](#class-control-property-mouse-behavior-recursive) is set to [MOUSE\_BEHAVIOR\_DISABLED](#class-control-constant-mouse-behavior-disabled), or it is set to [MOUSE\_BEHAVIOR\_INHERITED](#class-control-constant-mouse-behavior-inherited) and its ancestor is set to [MOUSE\_BEHAVIOR\_DISABLED](#class-control-constant-mouse-behavior-disabled), then this returns [MOUSE\_FILTER\_IGNORE](#class-control-constant-mouse-filter-ignore).

* * *

[float](class_float.md#class-float) **get\_offset**(offset: [Side](class_@globalscope.md#enum-globalscope-side)) const [🔗](#class-control-method-get-offset)

Returns the offset for the specified [Side](class_@globalscope.md#enum-globalscope-side). A getter method for [offset\_bottom](#class-control-property-offset-bottom), [offset\_left](#class-control-property-offset-left), [offset\_right](#class-control-property-offset-right) and [offset\_top](#class-control-property-offset-top).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_parent\_area\_size**() const [🔗](#class-control-method-get-parent-area-size)

Returns the width/height occupied in the parent control.

* * *

[Control](#class-control) **get\_parent\_control**() const [🔗](#class-control-method-get-parent-control)

Returns the parent control node.

* * *

[Rect2](class_rect2.md#class-rect2) **get\_rect**() const [🔗](#class-control-method-get-rect)

Returns the position and size of the control in the coordinate system of the containing node. See [position](#class-control-property-position), [scale](#class-control-property-scale) and [size](#class-control-property-size).

**Note:** If [rotation](#class-control-property-rotation) is not the default rotation, the resulting size is not meaningful.

**Note:** Setting [Viewport.gui\_snap\_controls\_to\_pixels](class_viewport.md#class-viewport-property-gui-snap-controls-to-pixels) to `true` can lead to rounding inaccuracies between the displayed control and the returned [Rect2](class_rect2.md#class-rect2).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_screen\_position**() const [🔗](#class-control-method-get-screen-position)

Returns the position of this **Control** in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.

Equals to [global\_position](#class-control-property-global-position) if the window is embedded (see [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows)).

**Example:** Show a popup at the mouse position:

```
popup_menu.position = get_screen_position() + get_local_mouse_position()
popup_menu.reset_size()
popup_menu.popup()

```

* * *

[Color](class_color.md#class-color) **get\_theme\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-color)

Returns a [Color](class_color.md#class-color) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a color item with the specified `name` and `theme_type`. If `theme_type` is omitted the class name of the current control is used as the type, or [theme\_type\_variation](#class-control-property-theme-type-variation) if it is defined. If the type is a class name its parent classes are also checked, in order of inheritance. If the type is a variation its base types are checked, in order of dependency, then the control's class name and its parent classes are checked.

For the current control its local overrides are considered first (see [add\_theme\_color\_override()](#class-control-method-add-theme-color-override)), then its assigned [theme](#class-control-property-theme). After the current control, each parent control and its assigned [theme](#class-control-property-theme) are considered; controls without a [theme](#class-control-property-theme) assigned are skipped. If no matching [Theme](class_theme.md#class-theme) is found in the tree, the custom project [Theme](class_theme.md#class-theme) (see [ProjectSettings.gui/theme/custom](class_projectsettings.md#class-projectsettings-property-gui-theme-custom)) and the default [Theme](class_theme.md#class-theme) are used (see [ThemeDB](class_themedb.md#class-themedb)).

GDScriptC#

```
func _ready():
    # Get the font color defined for the current Control's class, if it exists.
    modulate = get_theme_color("font_color")
    # Get the font color defined for the Button class.
    modulate = get_theme_color("font_color", "Button")

```

```
public override void _Ready()
{
    // Get the font color defined for the current Control's class, if it exists.
    Modulate = GetThemeColor("font_color");
    // Get the font color defined for the Button class.
    Modulate = GetThemeColor("font_color", "Button");
}

```

* * *

[int](class_int.md#class-int) **get\_theme\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-constant)

Returns a constant from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a constant item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[float](class_float.md#class-float) **get\_theme\_default\_base\_scale**() const [🔗](#class-control-method-get-theme-default-base-scale)

Returns the default base scale value from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_base\_scale](class_theme.md#class-theme-property-default-base-scale) value.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[Font](class_font.md#class-font) **get\_theme\_default\_font**() const [🔗](#class-control-method-get-theme-default-font)

Returns the default font from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_font](class_theme.md#class-theme-property-default-font) value.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[int](class_int.md#class-int) **get\_theme\_default\_font\_size**() const [🔗](#class-control-method-get-theme-default-font-size)

Returns the default font size value from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a valid [Theme.default\_font\_size](class_theme.md#class-theme-property-default-font-size) value.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[Font](class_font.md#class-font) **get\_theme\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-font)

Returns a [Font](class_font.md#class-font) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a font item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[int](class_int.md#class-int) **get\_theme\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-font-size)

Returns a font size from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a font size item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **get\_theme\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-icon)

Returns an icon from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has an icon item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **get\_theme\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-get-theme-stylebox)

Returns a [StyleBox](class_stylebox.md#class-stylebox) from the first matching [Theme](class_theme.md#class-theme) in the tree if that [Theme](class_theme.md#class-theme) has a stylebox item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[String](class_string.md#class-string) **get\_tooltip**(at\_position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) const [🔗](#class-control-method-get-tooltip)

Returns the tooltip text for the position `at_position` in control's local coordinates, which will typically appear when the cursor is resting over this control. By default, it returns [tooltip\_text](#class-control-property-tooltip-text).

This method can be overridden to customize its behavior. See [\_get\_tooltip()](#class-control-private-method-get-tooltip).

**Note:** If this method returns an empty [String](class_string.md#class-string) and [\_make\_custom\_tooltip()](#class-control-private-method-make-custom-tooltip) is not overridden, no tooltip is displayed.

* * *

void **grab\_click\_focus**() [🔗](#class-control-method-grab-click-focus)

Creates an [InputEventMouseButton](class_inputeventmousebutton.md#class-inputeventmousebutton) that attempts to click the control. If the event is received, the control gains focus.

GDScriptC#

```
func _process(delta):
    grab_click_focus() # When clicking another Control node, this node will be clicked instead.

```

```
public override void _Process(double delta)
{
    GrabClickFocus(); // When clicking another Control node, this node will be clicked instead.
}

```

* * *

void **grab\_focus**() [🔗](#class-control-method-grab-focus)

Steal the focus from another control and become the focused control (see [focus\_mode](#class-control-property-focus-mode)).

**Note:** Using this method together with [Callable.call\_deferred()](class_callable.md#class-callable-method-call-deferred) makes it more reliable, especially when called inside [Node.\_ready()](class_node.md#class-node-private-method-ready).

* * *

[bool](class_bool.md#class-bool) **has\_focus**() const [🔗](#class-control-method-has-focus)

Returns `true` if this is the current focused control. See [focus\_mode](#class-control-property-focus-mode).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_color**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-color)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a color item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-color-override)

Returns `true` if there is a local override for a theme [Color](class_color.md#class-color) with the specified `name` in this **Control** node.

See [add\_theme\_color\_override()](#class-control-method-add-theme-color-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_constant**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-constant)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a constant item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-constant-override)

Returns `true` if there is a local override for a theme constant with the specified `name` in this **Control** node.

See [add\_theme\_constant\_override()](#class-control-method-add-theme-constant-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-font)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a font item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-font-override)

Returns `true` if there is a local override for a theme [Font](class_font.md#class-font) with the specified `name` in this **Control** node.

See [add\_theme\_font\_override()](#class-control-method-add-theme-font-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_size**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-font-size)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a font size item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-font-size-override)

Returns `true` if there is a local override for a theme font size with the specified `name` in this **Control** node.

See [add\_theme\_font\_size\_override()](#class-control-method-add-theme-font-size-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_icon**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-icon)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has an icon item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-icon-override)

Returns `true` if there is a local override for a theme icon with the specified `name` in this **Control** node.

See [add\_theme\_icon\_override()](#class-control-method-add-theme-icon-override).

* * *

[bool](class_bool.md#class-bool) **has\_theme\_stylebox**(name: [StringName](class_stringname.md#class-stringname), theme\_type: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-control-method-has-theme-stylebox)

Returns `true` if there is a matching [Theme](class_theme.md#class-theme) in the tree that has a stylebox item with the specified `name` and `theme_type`.

See [get\_theme\_color()](#class-control-method-get-theme-color) for details.

* * *

[bool](class_bool.md#class-bool) **has\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-control-method-has-theme-stylebox-override)

Returns `true` if there is a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name` in this **Control** node.

See [add\_theme\_stylebox\_override()](#class-control-method-add-theme-stylebox-override).

* * *

[bool](class_bool.md#class-bool) **is\_drag\_successful**() const [🔗](#class-control-method-is-drag-successful)

Returns `true` if a drag operation is successful. Alternative to [Viewport.gui\_is\_drag\_successful()](class_viewport.md#class-viewport-method-gui-is-drag-successful).

Best used with [Node.NOTIFICATION\_DRAG\_END](class_node.md#class-node-constant-notification-drag-end).

* * *

[bool](class_bool.md#class-bool) **is\_layout\_rtl**() const [🔗](#class-control-method-is-layout-rtl)

Returns `true` if the layout is right-to-left. See also [layout\_direction](#class-control-property-layout-direction).

* * *

void **release\_focus**() [🔗](#class-control-method-release-focus)

Give up the focus. No other control will be able to receive input.

* * *

void **remove\_theme\_color\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-color-override)

Removes a local override for a theme [Color](class_color.md#class-color) with the specified `name` previously added by [add\_theme\_color\_override()](#class-control-method-add-theme-color-override) or via the Inspector dock.

* * *

void **remove\_theme\_constant\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-constant-override)

Removes a local override for a theme constant with the specified `name` previously added by [add\_theme\_constant\_override()](#class-control-method-add-theme-constant-override) or via the Inspector dock.

* * *

void **remove\_theme\_font\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-font-override)

Removes a local override for a theme [Font](class_font.md#class-font) with the specified `name` previously added by [add\_theme\_font\_override()](#class-control-method-add-theme-font-override) or via the Inspector dock.

* * *

void **remove\_theme\_font\_size\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-font-size-override)

Removes a local override for a theme font size with the specified `name` previously added by [add\_theme\_font\_size\_override()](#class-control-method-add-theme-font-size-override) or via the Inspector dock.

* * *

void **remove\_theme\_icon\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-icon-override)

Removes a local override for a theme icon with the specified `name` previously added by [add\_theme\_icon\_override()](#class-control-method-add-theme-icon-override) or via the Inspector dock.

* * *

void **remove\_theme\_stylebox\_override**(name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-control-method-remove-theme-stylebox-override)

Removes a local override for a theme [StyleBox](class_stylebox.md#class-stylebox) with the specified `name` previously added by [add\_theme\_stylebox\_override()](#class-control-method-add-theme-stylebox-override) or via the Inspector dock.

* * *

void **reset\_size**() [🔗](#class-control-method-reset-size)

Resets the size to [get\_combined\_minimum\_size()](#class-control-method-get-combined-minimum-size). This is equivalent to calling `set_size(Vector2())` (or any size below the minimum).

* * *

void **set\_anchor**(side: [Side](class_@globalscope.md#enum-globalscope-side), anchor: [float](class_float.md#class-float), keep\_offset: [bool](class_bool.md#class-bool) = false, push\_opposite\_anchor: [bool](class_bool.md#class-bool) = true) [🔗](#class-control-method-set-anchor)

Sets the anchor for the specified [Side](class_@globalscope.md#enum-globalscope-side) to `anchor`. A setter method for [anchor\_bottom](#class-control-property-anchor-bottom), [anchor\_left](#class-control-property-anchor-left), [anchor\_right](#class-control-property-anchor-right) and [anchor\_top](#class-control-property-anchor-top).

If `keep_offset` is `true`, offsets aren't updated after this operation.

If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.

* * *

void **set\_anchor\_and\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), anchor: [float](class_float.md#class-float), offset: [float](class_float.md#class-float), push\_opposite\_anchor: [bool](class_bool.md#class-bool) = false) [🔗](#class-control-method-set-anchor-and-offset)

Works the same as [set\_anchor()](#class-control-method-set-anchor), but instead of `keep_offset` argument and automatic update of offset, it allows to set the offset yourself (see [set\_offset()](#class-control-method-set-offset)).

* * *

void **set\_anchors\_and\_offsets\_preset**(preset: [LayoutPreset](#enum-control-layoutpreset), resize\_mode: [LayoutPresetMode](#enum-control-layoutpresetmode) = 0, margin: [int](class_int.md#class-int) = 0) [🔗](#class-control-method-set-anchors-and-offsets-preset)

Sets both anchor preset and offset preset. See [set\_anchors\_preset()](#class-control-method-set-anchors-preset) and [set\_offsets\_preset()](#class-control-method-set-offsets-preset).

* * *

void **set\_anchors\_preset**(preset: [LayoutPreset](#enum-control-layoutpreset), keep\_offsets: [bool](class_bool.md#class-bool) = false) [🔗](#class-control-method-set-anchors-preset)

Sets the anchors to a `preset` from [LayoutPreset](#enum-control-layoutpreset) enum. This is the code equivalent to using the Layout menu in the 2D editor.

If `keep_offsets` is `true`, control's position will also be updated.

* * *

void **set\_begin**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-control-method-set-begin)

Sets [offset\_left](#class-control-property-offset-left) and [offset\_top](#class-control-property-offset-top) at the same time. Equivalent of changing [position](#class-control-property-position).

* * *

void **set\_drag\_forwarding**(drag\_func: [Callable](class_callable.md#class-callable), can\_drop\_func: [Callable](class_callable.md#class-callable), drop\_func: [Callable](class_callable.md#class-callable)) [🔗](#class-control-method-set-drag-forwarding)

Sets the given callables to be used instead of the control's own drag-and-drop virtual methods. If a callable is empty, its respective virtual method is used as normal.

The arguments for each callable should be exactly the same as their respective virtual methods, which would be:

- `drag_func` corresponds to [\_get\_drag\_data()](#class-control-private-method-get-drag-data) and requires a [Vector2](class_vector2.md#class-vector2);

- `can_drop_func` corresponds to [\_can\_drop\_data()](#class-control-private-method-can-drop-data) and requires both a [Vector2](class_vector2.md#class-vector2) and a [Variant](class_variant.md#class-variant);

- `drop_func` corresponds to [\_drop\_data()](#class-control-private-method-drop-data) and requires both a [Vector2](class_vector2.md#class-vector2) and a [Variant](class_variant.md#class-variant).


* * *

void **set\_drag\_preview**(control: [Control](#class-control)) [🔗](#class-control-method-set-drag-preview)

Shows the given control at the mouse pointer. A good time to call this method is in [\_get\_drag\_data()](#class-control-private-method-get-drag-data). The control must not be in the scene tree. You should not free the control, and you should not keep a reference to the control beyond the duration of the drag. It will be deleted automatically after the drag has ended.

GDScriptC#

```
@export var color = Color(1, 0, 0, 1)

func _get_drag_data(position):
    # Use a control that is not in the tree
    var cpb = ColorPickerButton.new()
    cpb.color = color
    cpb.size = Vector2(50, 50)
    set_drag_preview(cpb)
    return color

```

```
[Export]
private Color _color = new Color(1, 0, 0, 1);

public override Variant _GetDragData(Vector2 atPosition)
{
    // Use a control that is not in the tree
    var cpb = new ColorPickerButton();
    cpb.Color = _color;
    cpb.Size = new Vector2(50, 50);
    SetDragPreview(cpb);
    return _color;
}

```

* * *

void **set\_end**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-control-method-set-end)

Sets [offset\_right](#class-control-property-offset-right) and [offset\_bottom](#class-control-property-offset-bottom) at the same time.

* * *

void **set\_focus\_neighbor**(side: [Side](class_@globalscope.md#enum-globalscope-side), neighbor: [NodePath](class_nodepath.md#class-nodepath)) [🔗](#class-control-method-set-focus-neighbor)

Sets the focus neighbor for the specified [Side](class_@globalscope.md#enum-globalscope-side) to the **Control** at `neighbor` node path. A setter method for [focus\_neighbor\_bottom](#class-control-property-focus-neighbor-bottom), [focus\_neighbor\_left](#class-control-property-focus-neighbor-left), [focus\_neighbor\_right](#class-control-property-focus-neighbor-right) and [focus\_neighbor\_top](#class-control-property-focus-neighbor-top).

* * *

void **set\_global\_position**(position: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) [🔗](#class-control-method-set-global-position)

Sets the [global\_position](#class-control-property-global-position) to given `position`.

If `keep_offsets` is `true`, control's anchors will be updated instead of offsets.

* * *

void **set\_offset**(side: [Side](class_@globalscope.md#enum-globalscope-side), offset: [float](class_float.md#class-float)) [🔗](#class-control-method-set-offset)

Sets the offset for the specified [Side](class_@globalscope.md#enum-globalscope-side) to `offset`. A setter method for [offset\_bottom](#class-control-property-offset-bottom), [offset\_left](#class-control-property-offset-left), [offset\_right](#class-control-property-offset-right) and [offset\_top](#class-control-property-offset-top).

* * *

void **set\_offsets\_preset**(preset: [LayoutPreset](#enum-control-layoutpreset), resize\_mode: [LayoutPresetMode](#enum-control-layoutpresetmode) = 0, margin: [int](class_int.md#class-int) = 0) [🔗](#class-control-method-set-offsets-preset)

Sets the offsets to a `preset` from [LayoutPreset](#enum-control-layoutpreset) enum. This is the code equivalent to using the Layout menu in the 2D editor.

Use parameter `resize_mode` with constants from [LayoutPresetMode](#enum-control-layoutpresetmode) to better determine the resulting size of the **Control**. Constant size will be ignored if used with presets that change size, e.g. [PRESET\_LEFT\_WIDE](#class-control-constant-preset-left-wide).

Use parameter `margin` to determine the gap between the **Control** and the edges.

* * *

void **set\_position**(position: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) [🔗](#class-control-method-set-position)

Sets the [position](#class-control-property-position) to given `position`.

If `keep_offsets` is `true`, control's anchors will be updated instead of offsets.

* * *

void **set\_size**(size: [Vector2](class_vector2.md#class-vector2), keep\_offsets: [bool](class_bool.md#class-bool) = false) [🔗](#class-control-method-set-size)

Sets the size (see [size](#class-control-property-size)).

If `keep_offsets` is `true`, control's anchors will be updated instead of offsets.

* * *

void **update\_minimum\_size**() [🔗](#class-control-method-update-minimum-size)

Invalidates the size cache in this node and in parent nodes up to top level. Intended to be used with [get\_minimum\_size()](#class-control-method-get-minimum-size) when the return value is changed. Setting [custom\_minimum\_size](#class-control-property-custom-minimum-size) directly calls this method automatically.

* * *

void **warp\_mouse**(position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-control-method-warp-mouse)

Moves the mouse cursor to `position`, relative to [position](#class-control-property-position) of this **Control**.

**Note:** [warp\_mouse()](#class-control-method-warp-mouse) is only supported on Windows, macOS and Linux. It has no effect on Android, iOS and Web.

[Previous](class_container.md "Container") [Next](class_converttransformmodifier3d.md "ConvertTransformModifier3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_container.md "Container") [Next](class_converttransformmodifier3d.md "ConvertTransformModifier3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).