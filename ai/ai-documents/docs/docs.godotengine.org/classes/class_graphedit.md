---
title: GraphEdit — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_graphedit.html
crawled_at: "2026-08-13T10:38:32+12:00"
content_hash: 5307d9b58b44d660a4ab722cc07cd0752a16e39beeb581124446f64ef7013b78
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GraphEdit

* * *

# GraphEdit

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An editor for graph-like structures, using [GraphNode](class_graphnode.md#class-graphnode) s.

## Description

**GraphEdit** provides tools for creation, manipulation, and display of various graphs. Its main purpose in the engine is to power the visual programming systems, such as visual shaders, but it is also available for use in user projects.

**GraphEdit** by itself is only an empty container, representing an infinite grid where [GraphNode](class_graphnode.md#class-graphnode) s can be placed. Each [GraphNode](class_graphnode.md#class-graphnode) represents a node in the graph, a single unit of data in the connected scheme. **GraphEdit**, in turn, helps to control various interactions with nodes and between nodes. When the user attempts to connect, disconnect, or delete a [GraphNode](class_graphnode.md#class-graphnode), a signal is emitted in the **GraphEdit**, but no action is taken by default. It is the responsibility of the programmer utilizing this control to implement the necessary logic to determine how each request should be handled.

**Performance:** It is greatly advised to enable low-processor usage mode (see [OS.low\_processor\_usage\_mode](class_os.md#class-os-property-low-processor-usage-mode)) when using GraphEdits.

**Note:** Keep in mind that [Node.get\_children()](class_node.md#class-node-method-get-children) will also return the connection layer node named `_connection_layer` due to technical limitations. This behavior may change in future releases.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | clip\_contents | `true` (overrides [Control](class_control.md#class-control-property-clip-contents)) |
| [bool](class_bool.md#class-bool) | [connection\_lines\_antialiased](#class-graphedit-property-connection-lines-antialiased) | `true` |
| [float](class_float.md#class-float) | [connection\_lines\_curvature](#class-graphedit-property-connection-lines-curvature) | `0.5` |
| [float](class_float.md#class-float) | [connection\_lines\_thickness](#class-graphedit-property-connection-lines-thickness) | `4.0` |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [connections](#class-graphedit-property-connections) | `[]` |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `2` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [GridPattern](#enum-graphedit-gridpattern) | [grid\_pattern](#class-graphedit-property-grid-pattern) | `0` |
| [bool](class_bool.md#class-bool) | [minimap\_enabled](#class-graphedit-property-minimap-enabled) | `true` |
| [float](class_float.md#class-float) | [minimap\_opacity](#class-graphedit-property-minimap-opacity) | `0.65` |
| [Vector2](class_vector2.md#class-vector2) | [minimap\_size](#class-graphedit-property-minimap-size) | `Vector2(240, 160)` |
| [PanningScheme](#enum-graphedit-panningscheme) | [panning\_scheme](#class-graphedit-property-panning-scheme) | `0` |
| [bool](class_bool.md#class-bool) | [right\_disconnects](#class-graphedit-property-right-disconnects) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [scroll\_offset](#class-graphedit-property-scroll-offset) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [show\_arrange\_button](#class-graphedit-property-show-arrange-button) | `true` |
| [bool](class_bool.md#class-bool) | [show\_grid](#class-graphedit-property-show-grid) | `true` |
| [bool](class_bool.md#class-bool) | [show\_grid\_buttons](#class-graphedit-property-show-grid-buttons) | `true` |
| [bool](class_bool.md#class-bool) | [show\_menu](#class-graphedit-property-show-menu) | `true` |
| [bool](class_bool.md#class-bool) | [show\_minimap\_button](#class-graphedit-property-show-minimap-button) | `true` |
| [bool](class_bool.md#class-bool) | [show\_zoom\_buttons](#class-graphedit-property-show-zoom-buttons) | `true` |
| [bool](class_bool.md#class-bool) | [show\_zoom\_label](#class-graphedit-property-show-zoom-label) | `false` |
| [int](class_int.md#class-int) | [snapping\_distance](#class-graphedit-property-snapping-distance) | `20` |
| [bool](class_bool.md#class-bool) | [snapping\_enabled](#class-graphedit-property-snapping-enabled) | `true` |
| [Dictionary](class_dictionary.md#class-dictionary) | [type\_names](#class-graphedit-property-type-names) | `{}` |
| [float](class_float.md#class-float) | [zoom](#class-graphedit-property-zoom) | `1.0` |
| [float](class_float.md#class-float) | [zoom\_max](#class-graphedit-property-zoom-max) | `2.0736003` |
| [float](class_float.md#class-float) | [zoom\_min](#class-graphedit-property-zoom-min) | `0.23256795` |
| [float](class_float.md#class-float) | [zoom\_step](#class-graphedit-property-zoom-step) | `1.2` |

## Methods

|     |     |
| --- | --- |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [\_get\_connection\_line](#class-graphedit-private-method-get-connection-line)(from\_position: [Vector2](class_vector2.md#class-vector2), to\_position: [Vector2](class_vector2.md#class-vector2)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_is\_in\_input\_hotzone](#class-graphedit-private-method-is-in-input-hotzone)(in\_node: [Object](class_object.md#class-object), in\_port: [int](class_int.md#class-int), mouse\_position: [Vector2](class_vector2.md#class-vector2)) virtual |
| [bool](class_bool.md#class-bool) | [\_is\_in\_output\_hotzone](#class-graphedit-private-method-is-in-output-hotzone)(in\_node: [Object](class_object.md#class-object), in\_port: [int](class_int.md#class-int), mouse\_position: [Vector2](class_vector2.md#class-vector2)) virtual |
| [bool](class_bool.md#class-bool) | [\_is\_node\_hover\_valid](#class-graphedit-private-method-is-node-hover-valid)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) virtual |
| void | [add\_valid\_connection\_type](#class-graphedit-method-add-valid-connection-type)(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) |
| void | [add\_valid\_left\_disconnect\_type](#class-graphedit-method-add-valid-left-disconnect-type)(type: [int](class_int.md#class-int)) |
| void | [add\_valid\_right\_disconnect\_type](#class-graphedit-method-add-valid-right-disconnect-type)(type: [int](class_int.md#class-int)) |
| void | [arrange\_nodes](#class-graphedit-method-arrange-nodes)() |
| void | [attach\_graph\_element\_to\_frame](#class-graphedit-method-attach-graph-element-to-frame)(element: [StringName](class_stringname.md#class-stringname), frame: [StringName](class_stringname.md#class-stringname)) |
| void | [clear\_connections](#class-graphedit-method-clear-connections)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [connect\_node](#class-graphedit-method-connect-node)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int), keep\_alive: [bool](class_bool.md#class-bool) = false) |
| void | [detach\_graph\_element\_from\_frame](#class-graphedit-method-detach-graph-element-from-frame)(element: [StringName](class_stringname.md#class-stringname)) |
| void | [disconnect\_node](#class-graphedit-method-disconnect-node)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) |
| void | [force\_connection\_drag\_end](#class-graphedit-method-force-connection-drag-end)() |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_attached\_nodes\_of\_frame](#class-graphedit-method-get-attached-nodes-of-frame)(frame: [StringName](class_stringname.md#class-stringname)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_closest\_connection\_at\_point](#class-graphedit-method-get-closest-connection-at-point)(point: [Vector2](class_vector2.md#class-vector2), max\_distance: [float](class_float.md#class-float) = 4.0) const |
| [int](class_int.md#class-int) | [get\_connection\_count](#class-graphedit-method-get-connection-count)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int)) |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [get\_connection\_line](#class-graphedit-method-get-connection-line)(from\_node: [Vector2](class_vector2.md#class-vector2), to\_node: [Vector2](class_vector2.md#class-vector2)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_connection\_list\_from\_node](#class-graphedit-method-get-connection-list-from-node)(node: [StringName](class_stringname.md#class-stringname)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_connections\_intersecting\_with\_rect](#class-graphedit-method-get-connections-intersecting-with-rect)(rect: [Rect2](class_rect2.md#class-rect2)) const |
| [GraphFrame](class_graphframe.md#class-graphframe) | [get\_element\_frame](#class-graphedit-method-get-element-frame)(element: [StringName](class_stringname.md#class-stringname)) |
| [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) | [get\_menu\_hbox](#class-graphedit-method-get-menu-hbox)() |
| [bool](class_bool.md#class-bool) | [is\_node\_connected](#class-graphedit-method-is-node-connected)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_valid\_connection\_type](#class-graphedit-method-is-valid-connection-type)(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) const |
| void | [remove\_valid\_connection\_type](#class-graphedit-method-remove-valid-connection-type)(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) |
| void | [remove\_valid\_left\_disconnect\_type](#class-graphedit-method-remove-valid-left-disconnect-type)(type: [int](class_int.md#class-int)) |
| void | [remove\_valid\_right\_disconnect\_type](#class-graphedit-method-remove-valid-right-disconnect-type)(type: [int](class_int.md#class-int)) |
| void | [set\_connection\_activity](#class-graphedit-method-set-connection-activity)(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int), amount: [float](class_float.md#class-float)) |
| void | [set\_selected](#class-graphedit-method-set-selected)(node: [Node](class_node.md#class-node)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [activity](#class-graphedit-theme-color-activity) | `Color(1, 1, 1, 1)` |
| [Color](class_color.md#class-color) | [connection\_hover\_tint\_color](#class-graphedit-theme-color-connection-hover-tint-color) | `Color(0, 0, 0, 0.3)` |
| [Color](class_color.md#class-color) | [connection\_rim\_color](#class-graphedit-theme-color-connection-rim-color) | `Color(0.1, 0.1, 0.1, 0.6)` |
| [Color](class_color.md#class-color) | [connection\_valid\_target\_tint\_color](#class-graphedit-theme-color-connection-valid-target-tint-color) | `Color(1, 1, 1, 0.4)` |
| [Color](class_color.md#class-color) | [grid\_major](#class-graphedit-theme-color-grid-major) | `Color(1, 1, 1, 0.2)` |
| [Color](class_color.md#class-color) | [grid\_minor](#class-graphedit-theme-color-grid-minor) | `Color(1, 1, 1, 0.05)` |
| [Color](class_color.md#class-color) | [selection\_fill](#class-graphedit-theme-color-selection-fill) | `Color(1, 1, 1, 0.3)` |
| [Color](class_color.md#class-color) | [selection\_stroke](#class-graphedit-theme-color-selection-stroke) | `Color(1, 1, 1, 0.8)` |
| [int](class_int.md#class-int) | [connection\_hover\_thickness](#class-graphedit-theme-constant-connection-hover-thickness) | `0` |
| [int](class_int.md#class-int) | [port\_hotzone\_inner\_extent](#class-graphedit-theme-constant-port-hotzone-inner-extent) | `22` |
| [int](class_int.md#class-int) | [port\_hotzone\_outer\_extent](#class-graphedit-theme-constant-port-hotzone-outer-extent) | `26` |
| [Texture2D](class_texture2d.md#class-texture2d) | [grid\_toggle](#class-graphedit-theme-icon-grid-toggle) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [layout](#class-graphedit-theme-icon-layout) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [minimap\_toggle](#class-graphedit-theme-icon-minimap-toggle) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [snapping\_toggle](#class-graphedit-theme-icon-snapping-toggle) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [zoom\_in](#class-graphedit-theme-icon-zoom-in) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [zoom\_out](#class-graphedit-theme-icon-zoom-out) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [zoom\_reset](#class-graphedit-theme-icon-zoom-reset) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [menu\_panel](#class-graphedit-theme-style-menu-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel](#class-graphedit-theme-style-panel) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [panel\_focus](#class-graphedit-theme-style-panel-focus) |  |

* * *

## Signals

**begin\_node\_move**() [🔗](#class-graphedit-signal-begin-node-move)

Emitted at the beginning of a [GraphElement](class_graphelement.md#class-graphelement)'s movement.

* * *

**connection\_drag\_ended**() [🔗](#class-graphedit-signal-connection-drag-ended)

Emitted at the end of a connection drag.

* * *

**connection\_drag\_started**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), is\_output: [bool](class_bool.md#class-bool)) [🔗](#class-graphedit-signal-connection-drag-started)

Emitted at the beginning of a connection drag.

* * *

**connection\_from\_empty**(to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int), release\_position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphedit-signal-connection-from-empty)

Emitted when user drags a connection from an input port into the empty space of the graph.

* * *

**connection\_request**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) [🔗](#class-graphedit-signal-connection-request)

Emitted to the GraphEdit when the connection between the `from_port` of the `from_node` [GraphNode](class_graphnode.md#class-graphnode) and the `to_port` of the `to_node` [GraphNode](class_graphnode.md#class-graphnode) is attempted to be created.

* * *

**connection\_to\_empty**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), release\_position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphedit-signal-connection-to-empty)

Emitted when user drags a connection from an output port into the empty space of the graph.

* * *

**copy\_nodes\_request**() [🔗](#class-graphedit-signal-copy-nodes-request)

Emitted when this **GraphEdit** captures a `ui_copy` action ( `Ctrl + C` by default). In general, this signal indicates that the selected [GraphElement](class_graphelement.md#class-graphelement) s should be copied.

* * *

**cut\_nodes\_request**() [🔗](#class-graphedit-signal-cut-nodes-request)

Emitted when this **GraphEdit** captures a `ui_cut` action ( `Ctrl + X` by default). In general, this signal indicates that the selected [GraphElement](class_graphelement.md#class-graphelement) s should be cut.

* * *

**delete\_nodes\_request**(nodes: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\]) [🔗](#class-graphedit-signal-delete-nodes-request)

Emitted when this **GraphEdit** captures a `ui_graph_delete` action ( `Delete` by default).

`nodes` is an array of node names that should be removed. These usually include all selected nodes.

* * *

**disconnection\_request**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) [🔗](#class-graphedit-signal-disconnection-request)

Emitted to the GraphEdit when the connection between `from_port` of `from_node` [GraphNode](class_graphnode.md#class-graphnode) and `to_port` of `to_node` [GraphNode](class_graphnode.md#class-graphnode) is attempted to be removed.

* * *

**duplicate\_nodes\_request**() [🔗](#class-graphedit-signal-duplicate-nodes-request)

Emitted when this **GraphEdit** captures a `ui_graph_duplicate` action ( `Ctrl + D` by default). In general, this signal indicates that the selected [GraphElement](class_graphelement.md#class-graphelement) s should be duplicated.

* * *

**end\_node\_move**() [🔗](#class-graphedit-signal-end-node-move)

Emitted at the end of a [GraphElement](class_graphelement.md#class-graphelement)'s movement.

* * *

**frame\_rect\_changed**(frame: [GraphFrame](class_graphframe.md#class-graphframe), new\_rect: [Rect2](class_rect2.md#class-rect2)) [🔗](#class-graphedit-signal-frame-rect-changed)

Emitted when the [GraphFrame](class_graphframe.md#class-graphframe) `frame` is resized to `new_rect`.

* * *

**graph\_elements\_linked\_to\_frame\_request**(elements: [Array](class_array.md#class-array), frame: [StringName](class_stringname.md#class-stringname)) [🔗](#class-graphedit-signal-graph-elements-linked-to-frame-request)

Emitted when one or more [GraphElement](class_graphelement.md#class-graphelement) s are dropped onto the [GraphFrame](class_graphframe.md#class-graphframe) named `frame`, when they were not previously attached to any other one.

`elements` is an array of [GraphElement](class_graphelement.md#class-graphelement) s to be attached.

* * *

**node\_deselected**(node: [Node](class_node.md#class-node)) [🔗](#class-graphedit-signal-node-deselected)

Emitted when the given [GraphElement](class_graphelement.md#class-graphelement) node is deselected.

* * *

**node\_selected**(node: [Node](class_node.md#class-node)) [🔗](#class-graphedit-signal-node-selected)

Emitted when the given [GraphElement](class_graphelement.md#class-graphelement) node is selected.

* * *

**paste\_nodes\_request**() [🔗](#class-graphedit-signal-paste-nodes-request)

Emitted when this **GraphEdit** captures a `ui_paste` action ( `Ctrl + V` by default). In general, this signal indicates that previously copied [GraphElement](class_graphelement.md#class-graphelement) s should be pasted.

* * *

**popup\_request**(at\_position: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphedit-signal-popup-request)

Emitted when a popup is requested. Happens on right-clicking in the GraphEdit. `at_position` is the position of the mouse pointer when the signal is sent.

* * *

**scroll\_offset\_changed**(offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-graphedit-signal-scroll-offset-changed)

Emitted when the scroll offset is changed by the user. It will not be emitted when changed in code.

* * *

## Enumerations

enum **PanningScheme**: [🔗](#enum-graphedit-panningscheme)

[PanningScheme](#enum-graphedit-panningscheme) **SCROLL\_ZOOMS** = `0`

`Mouse Wheel` will zoom, `Ctrl + Mouse Wheel` will move the view.

[PanningScheme](#enum-graphedit-panningscheme) **SCROLL\_PANS** = `1`

`Mouse Wheel` will move the view, `Ctrl + Mouse Wheel` will zoom.

* * *

enum **GridPattern**: [🔗](#enum-graphedit-gridpattern)

[GridPattern](#enum-graphedit-gridpattern) **GRID\_PATTERN\_LINES** = `0`

Draw the grid using solid lines.

[GridPattern](#enum-graphedit-gridpattern) **GRID\_PATTERN\_DOTS** = `1`

Draw the grid using dots.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **connection\_lines\_antialiased** = `true` [🔗](#class-graphedit-property-connection-lines-antialiased)

- void **set\_connection\_lines\_antialiased**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_connection\_lines\_antialiased**()


If `true`, the lines between nodes will use antialiasing.

* * *

[float](class_float.md#class-float) **connection\_lines\_curvature** = `0.5` [🔗](#class-graphedit-property-connection-lines-curvature)

- void **set\_connection\_lines\_curvature**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_connection\_lines\_curvature**()


The curvature of the lines between the nodes. 0 results in straight lines.

* * *

[float](class_float.md#class-float) **connection\_lines\_thickness** = `4.0` [🔗](#class-graphedit-property-connection-lines-thickness)

- void **set\_connection\_lines\_thickness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_connection\_lines\_thickness**()


The thickness of the lines between the nodes.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **connections** = `[]` [🔗](#class-graphedit-property-connections)

- void **set\_connections**(value: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\])

- [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_connection\_list**()


The connections between [GraphNode](class_graphnode.md#class-graphnode) s.

A connection is represented as a [Dictionary](class_dictionary.md#class-dictionary) in the form of:

```
{
    from_node: StringName,
    from_port: int,
    to_node: StringName,
    to_port: int,
    keep_alive: bool
}

```

Connections with `keep_alive` set to `false` may be deleted automatically if invalid during a redraw.

* * *

[GridPattern](#enum-graphedit-gridpattern) **grid\_pattern** = `0` [🔗](#class-graphedit-property-grid-pattern)

- void **set\_grid\_pattern**(value: [GridPattern](#enum-graphedit-gridpattern))

- [GridPattern](#enum-graphedit-gridpattern) **get\_grid\_pattern**()


The pattern used for drawing the grid.

* * *

[bool](class_bool.md#class-bool) **minimap\_enabled** = `true` [🔗](#class-graphedit-property-minimap-enabled)

- void **set\_minimap\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_minimap\_enabled**()


If `true`, the minimap is visible.

* * *

[float](class_float.md#class-float) **minimap\_opacity** = `0.65` [🔗](#class-graphedit-property-minimap-opacity)

- void **set\_minimap\_opacity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_minimap\_opacity**()


The opacity of the minimap rectangle.

* * *

[Vector2](class_vector2.md#class-vector2) **minimap\_size** = `Vector2(240, 160)` [🔗](#class-graphedit-property-minimap-size)

- void **set\_minimap\_size**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_minimap\_size**()


The size of the minimap rectangle. The map itself is based on the size of the grid area and is scaled to fit this rectangle.

* * *

[PanningScheme](#enum-graphedit-panningscheme) **panning\_scheme** = `0` [🔗](#class-graphedit-property-panning-scheme)

- void **set\_panning\_scheme**(value: [PanningScheme](#enum-graphedit-panningscheme))

- [PanningScheme](#enum-graphedit-panningscheme) **get\_panning\_scheme**()


Defines the control scheme for panning with mouse wheel.

* * *

[bool](class_bool.md#class-bool) **right\_disconnects** = `false` [🔗](#class-graphedit-property-right-disconnects)

- void **set\_right\_disconnects**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_right\_disconnects\_enabled**()


If `true`, enables disconnection of existing connections in the GraphEdit by dragging the right end.

* * *

[Vector2](class_vector2.md#class-vector2) **scroll\_offset** = `Vector2(0, 0)` [🔗](#class-graphedit-property-scroll-offset)

- void **set\_scroll\_offset**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scroll\_offset**()


The scroll offset.

* * *

[bool](class_bool.md#class-bool) **show\_arrange\_button** = `true` [🔗](#class-graphedit-property-show-arrange-button)

- void **set\_show\_arrange\_button**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_arrange\_button**()


If `true`, the button to automatically arrange graph nodes is visible.

* * *

[bool](class_bool.md#class-bool) **show\_grid** = `true` [🔗](#class-graphedit-property-show-grid)

- void **set\_show\_grid**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_grid**()


If `true`, the grid is visible.

* * *

[bool](class_bool.md#class-bool) **show\_grid\_buttons** = `true` [🔗](#class-graphedit-property-show-grid-buttons)

- void **set\_show\_grid\_buttons**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_grid\_buttons**()


If `true`, buttons that allow to configure grid and snapping options are visible.

* * *

[bool](class_bool.md#class-bool) **show\_menu** = `true` [🔗](#class-graphedit-property-show-menu)

- void **set\_show\_menu**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_menu**()


If `true`, the menu toolbar is visible.

* * *

[bool](class_bool.md#class-bool) **show\_minimap\_button** = `true` [🔗](#class-graphedit-property-show-minimap-button)

- void **set\_show\_minimap\_button**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_minimap\_button**()


If `true`, the button to toggle the minimap is visible.

* * *

[bool](class_bool.md#class-bool) **show\_zoom\_buttons** = `true` [🔗](#class-graphedit-property-show-zoom-buttons)

- void **set\_show\_zoom\_buttons**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_zoom\_buttons**()


If `true`, buttons that allow to change and reset the zoom level are visible.

* * *

[bool](class_bool.md#class-bool) **show\_zoom\_label** = `false` [🔗](#class-graphedit-property-show-zoom-label)

- void **set\_show\_zoom\_label**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_showing\_zoom\_label**()


If `true`, the label with the current zoom level is visible. The zoom level is displayed in percents.

* * *

[int](class_int.md#class-int) **snapping\_distance** = `20` [🔗](#class-graphedit-property-snapping-distance)

- void **set\_snapping\_distance**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_snapping\_distance**()


The snapping distance in pixels, also determines the grid line distance.

* * *

[bool](class_bool.md#class-bool) **snapping\_enabled** = `true` [🔗](#class-graphedit-property-snapping-enabled)

- void **set\_snapping\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_snapping\_enabled**()


If `true`, enables snapping.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **type\_names** = `{}` [🔗](#class-graphedit-property-type-names)

- void **set\_type\_names**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_type\_names**()


[Dictionary](class_dictionary.md#class-dictionary) of human readable port type names.

* * *

[float](class_float.md#class-float) **zoom** = `1.0` [🔗](#class-graphedit-property-zoom)

- void **set\_zoom**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_zoom**()


The current zoom value.

* * *

[float](class_float.md#class-float) **zoom\_max** = `2.0736003` [🔗](#class-graphedit-property-zoom-max)

- void **set\_zoom\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_zoom\_max**()


The upper zoom limit.

* * *

[float](class_float.md#class-float) **zoom\_min** = `0.23256795` [🔗](#class-graphedit-property-zoom-min)

- void **set\_zoom\_min**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_zoom\_min**()


The lower zoom limit.

* * *

[float](class_float.md#class-float) **zoom\_step** = `1.2` [🔗](#class-graphedit-property-zoom-step)

- void **set\_zoom\_step**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_zoom\_step**()


The step of each zoom level.

* * *

## Method Descriptions

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **\_get\_connection\_line**(from\_position: [Vector2](class_vector2.md#class-vector2), to\_position: [Vector2](class_vector2.md#class-vector2)) virtualconst [🔗](#class-graphedit-private-method-get-connection-line)

Virtual method which can be overridden to customize how connections are drawn.

* * *

[bool](class_bool.md#class-bool) **\_is\_in\_input\_hotzone**(in\_node: [Object](class_object.md#class-object), in\_port: [int](class_int.md#class-int), mouse\_position: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-graphedit-private-method-is-in-input-hotzone)

Returns whether the `mouse_position` is in the input hot zone.

By default, a hot zone is a [Rect2](class_rect2.md#class-rect2) positioned such that its center is at `in_node`. [GraphNode.get\_input\_port\_position()](class_graphnode.md#class-graphnode-method-get-input-port-position)( `in_port`) (For output's case, call [GraphNode.get\_output\_port\_position()](class_graphnode.md#class-graphnode-method-get-output-port-position) instead). The hot zone's width is twice the Theme Property `port_grab_distance_horizontal`, and its height is twice the `port_grab_distance_vertical`.

Below is a sample code to help get started:

```
func _is_in_input_hotzone(in_node, in_port, mouse_position):
    var port_size = Vector2(get_theme_constant("port_grab_distance_horizontal"), get_theme_constant("port_grab_distance_vertical"))
    var port_pos = in_node.get_position() + in_node.get_input_port_position(in_port) - port_size / 2
    var rect = Rect2(port_pos, port_size)

    return rect.has_point(mouse_position)

```

* * *

[bool](class_bool.md#class-bool) **\_is\_in\_output\_hotzone**(in\_node: [Object](class_object.md#class-object), in\_port: [int](class_int.md#class-int), mouse\_position: [Vector2](class_vector2.md#class-vector2)) virtual [🔗](#class-graphedit-private-method-is-in-output-hotzone)

Returns whether the `mouse_position` is in the output hot zone. For more information on hot zones, see [\_is\_in\_input\_hotzone()](#class-graphedit-private-method-is-in-input-hotzone).

Below is a sample code to help get started:

```
func _is_in_output_hotzone(in_node, in_port, mouse_position):
    var port_size = Vector2(get_theme_constant("port_grab_distance_horizontal"), get_theme_constant("port_grab_distance_vertical"))
    var port_pos = in_node.get_position() + in_node.get_output_port_position(in_port) - port_size / 2
    var rect = Rect2(port_pos, port_size)

    return rect.has_point(mouse_position)

```

* * *

[bool](class_bool.md#class-bool) **\_is\_node\_hover\_valid**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) virtual [🔗](#class-graphedit-private-method-is-node-hover-valid)

This virtual method can be used to insert additional error detection while the user is dragging a connection over a valid port.

Return `true` if the connection is indeed valid or return `false` if the connection is impossible. If the connection is impossible, no snapping to the port and thus no connection request to that port will happen.

In this example a connection to same node is suppressed:

GDScriptC#

```
func _is_node_hover_valid(from, from_port, to, to_port):
    return from != to

```

```
public override bool _IsNodeHoverValid(StringName fromNode, int fromPort, StringName toNode, int toPort)
{
    return fromNode != toNode;
}

```

* * *

void **add\_valid\_connection\_type**(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-add-valid-connection-type)

Allows the connection between two different port types. The port type is defined individually for the left and the right port of each slot with the [GraphNode.set\_slot()](class_graphnode.md#class-graphnode-method-set-slot) method.

See also [is\_valid\_connection\_type()](#class-graphedit-method-is-valid-connection-type) and [remove\_valid\_connection\_type()](#class-graphedit-method-remove-valid-connection-type).

* * *

void **add\_valid\_left\_disconnect\_type**(type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-add-valid-left-disconnect-type)

Allows to disconnect nodes when dragging from the left port of the [GraphNode](class_graphnode.md#class-graphnode)'s slot if it has the specified type. See also [remove\_valid\_left\_disconnect\_type()](#class-graphedit-method-remove-valid-left-disconnect-type).

* * *

void **add\_valid\_right\_disconnect\_type**(type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-add-valid-right-disconnect-type)

Allows to disconnect nodes when dragging from the right port of the [GraphNode](class_graphnode.md#class-graphnode)'s slot if it has the specified type. See also [remove\_valid\_right\_disconnect\_type()](#class-graphedit-method-remove-valid-right-disconnect-type).

* * *

void **arrange\_nodes**() [🔗](#class-graphedit-method-arrange-nodes)

Rearranges selected nodes in a layout with minimum crossings between connections and uniform horizontal and vertical gap between nodes.

* * *

void **attach\_graph\_element\_to\_frame**(element: [StringName](class_stringname.md#class-stringname), frame: [StringName](class_stringname.md#class-stringname)) [🔗](#class-graphedit-method-attach-graph-element-to-frame)

Attaches the `element` [GraphElement](class_graphelement.md#class-graphelement) to the `frame` [GraphFrame](class_graphframe.md#class-graphframe).

* * *

void **clear\_connections**() [🔗](#class-graphedit-method-clear-connections)

Removes all connections between nodes.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **connect\_node**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int), keep\_alive: [bool](class_bool.md#class-bool) = false) [🔗](#class-graphedit-method-connect-node)

Create a connection between the `from_port` of the `from_node` [GraphNode](class_graphnode.md#class-graphnode) and the `to_port` of the `to_node` [GraphNode](class_graphnode.md#class-graphnode). If the connection already exists, no connection is created.

Connections with `keep_alive` set to `false` may be deleted automatically if invalid during a redraw.

* * *

void **detach\_graph\_element\_from\_frame**(element: [StringName](class_stringname.md#class-stringname)) [🔗](#class-graphedit-method-detach-graph-element-from-frame)

Detaches the `element` [GraphElement](class_graphelement.md#class-graphelement) from the [GraphFrame](class_graphframe.md#class-graphframe) it is currently attached to.

* * *

void **disconnect\_node**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-disconnect-node)

Removes the connection between the `from_port` of the `from_node` [GraphNode](class_graphnode.md#class-graphnode) and the `to_port` of the `to_node` [GraphNode](class_graphnode.md#class-graphnode). If the connection does not exist, no connection is removed.

* * *

void **force\_connection\_drag\_end**() [🔗](#class-graphedit-method-force-connection-drag-end)

Ends the creation of the current connection. In other words, if you are dragging a connection you can use this method to abort the process and remove the line that followed your cursor.

This is best used together with [connection\_drag\_started](#class-graphedit-signal-connection-drag-started) and [connection\_drag\_ended](#class-graphedit-signal-connection-drag-ended) to add custom behavior like node addition through shortcuts.

**Note:** This method suppresses any other connection request signals apart from [connection\_drag\_ended](#class-graphedit-signal-connection-drag-ended).

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_attached\_nodes\_of\_frame**(frame: [StringName](class_stringname.md#class-stringname)) [🔗](#class-graphedit-method-get-attached-nodes-of-frame)

Returns an array of node names that are attached to the [GraphFrame](class_graphframe.md#class-graphframe) with the given name.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_closest\_connection\_at\_point**(point: [Vector2](class_vector2.md#class-vector2), max\_distance: [float](class_float.md#class-float) = 4.0) const [🔗](#class-graphedit-method-get-closest-connection-at-point)

Returns the closest connection to the given point in screen space. If no connection is found within `max_distance` pixels, an empty [Dictionary](class_dictionary.md#class-dictionary) is returned.

A connection is represented as a [Dictionary](class_dictionary.md#class-dictionary) in the form of:

```
{
    from_node: StringName,
    from_port: int,
    to_node: StringName,
    to_port: int,
    keep_alive: bool
}

```

For example, getting a connection at a given mouse position can be achieved like this:

GDScript

```
var connection = get_closest_connection_at_point(mouse_event.get_position())

```

* * *

[int](class_int.md#class-int) **get\_connection\_count**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-get-connection-count)

Returns the number of connections from `from_port` of `from_node`.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_connection\_line**(from\_node: [Vector2](class_vector2.md#class-vector2), to\_node: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-graphedit-method-get-connection-line)

Returns the points which would make up a connection between `from_node` and `to_node`.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_connection\_list\_from\_node**(node: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-graphedit-method-get-connection-list-from-node)

Returns an [Array](class_array.md#class-array) containing a list of all connections for `node`.

A connection is represented as a [Dictionary](class_dictionary.md#class-dictionary) in the form of:

```
{
    from_node: StringName,
    from_port: int,
    to_node: StringName,
    to_port: int,
    keep_alive: bool
}

```

**Example:** Get all connections on a specific port:

```
func get_connection_list_from_port(node, port):
    var connections = get_connection_list_from_node(node)
    var result = []
    for connection in connections:
        var dict = {}
        if connection["from_node"] == node and connection["from_port"] == port:
            dict["node"] = connection["to_node"]
            dict["port"] = connection["to_port"]
            dict["type"] = "left"
            result.push_back(dict)
        elif connection["to_node"] == node and connection["to_port"] == port:
            dict["node"] = connection["from_node"]
            dict["port"] = connection["from_port"]
            dict["type"] = "right"
            result.push_back(dict)
    return result

```

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_connections\_intersecting\_with\_rect**(rect: [Rect2](class_rect2.md#class-rect2)) const [🔗](#class-graphedit-method-get-connections-intersecting-with-rect)

Returns an [Array](class_array.md#class-array) containing the list of connections that intersect with the given [Rect2](class_rect2.md#class-rect2).

A connection is represented as a [Dictionary](class_dictionary.md#class-dictionary) in the form of:

```
{
    from_node: StringName,
    from_port: int,
    to_node: StringName,
    to_port: int,
    keep_alive: bool
}

```

* * *

[GraphFrame](class_graphframe.md#class-graphframe) **get\_element\_frame**(element: [StringName](class_stringname.md#class-stringname)) [🔗](#class-graphedit-method-get-element-frame)

Returns the [GraphFrame](class_graphframe.md#class-graphframe) that contains the [GraphElement](class_graphelement.md#class-graphelement) with the given name.

* * *

[HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) **get\_menu\_hbox**() [🔗](#class-graphedit-method-get-menu-hbox)

Gets the [HBoxContainer](class_hboxcontainer.md#class-hboxcontainer) that contains the zooming and grid snap controls in the top left of the graph. You can use this method to reposition the toolbar or to add your own custom controls to it.

**Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) property.

* * *

[bool](class_bool.md#class-bool) **is\_node\_connected**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-is-node-connected)

Returns `true` if the `from_port` of the `from_node` [GraphNode](class_graphnode.md#class-graphnode) is connected to the `to_port` of the `to_node` [GraphNode](class_graphnode.md#class-graphnode).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_connection\_type**(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) const [🔗](#class-graphedit-method-is-valid-connection-type)

Returns whether it's possible to make a connection between two different port types. The port type is defined individually for the left and the right port of each slot with the [GraphNode.set\_slot()](class_graphnode.md#class-graphnode-method-set-slot) method.

See also [add\_valid\_connection\_type()](#class-graphedit-method-add-valid-connection-type) and [remove\_valid\_connection\_type()](#class-graphedit-method-remove-valid-connection-type).

* * *

void **remove\_valid\_connection\_type**(from\_type: [int](class_int.md#class-int), to\_type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-remove-valid-connection-type)

Disallows the connection between two different port types previously allowed by [add\_valid\_connection\_type()](#class-graphedit-method-add-valid-connection-type). The port type is defined individually for the left and the right port of each slot with the [GraphNode.set\_slot()](class_graphnode.md#class-graphnode-method-set-slot) method.

See also [is\_valid\_connection\_type()](#class-graphedit-method-is-valid-connection-type).

* * *

void **remove\_valid\_left\_disconnect\_type**(type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-remove-valid-left-disconnect-type)

Disallows to disconnect nodes when dragging from the left port of the [GraphNode](class_graphnode.md#class-graphnode)'s slot if it has the specified type. Use this to disable disconnection previously allowed with [add\_valid\_left\_disconnect\_type()](#class-graphedit-method-add-valid-left-disconnect-type).

* * *

void **remove\_valid\_right\_disconnect\_type**(type: [int](class_int.md#class-int)) [🔗](#class-graphedit-method-remove-valid-right-disconnect-type)

Disallows to disconnect nodes when dragging from the right port of the [GraphNode](class_graphnode.md#class-graphnode)'s slot if it has the specified type. Use this to disable disconnection previously allowed with [add\_valid\_right\_disconnect\_type()](#class-graphedit-method-add-valid-right-disconnect-type).

* * *

void **set\_connection\_activity**(from\_node: [StringName](class_stringname.md#class-stringname), from\_port: [int](class_int.md#class-int), to\_node: [StringName](class_stringname.md#class-stringname), to\_port: [int](class_int.md#class-int), amount: [float](class_float.md#class-float)) [🔗](#class-graphedit-method-set-connection-activity)

Sets the coloration of the connection between `from_node`'s `from_port` and `to_node`'s `to_port` with the color provided in the [activity](#class-graphedit-theme-color-activity) theme property. The color is linearly interpolated between the connection color and the activity color using `amount` as weight.

* * *

void **set\_selected**(node: [Node](class_node.md#class-node)) [🔗](#class-graphedit-method-set-selected)

Sets the specified `node` as the one selected.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **activity** = `Color(1, 1, 1, 1)` [🔗](#class-graphedit-theme-color-activity)

Color the connection line is interpolated to based on the activity value of a connection (see [set\_connection\_activity()](#class-graphedit-method-set-connection-activity)).

* * *

[Color](class_color.md#class-color) **connection\_hover\_tint\_color** = `Color(0, 0, 0, 0.3)` [🔗](#class-graphedit-theme-color-connection-hover-tint-color)

Color which is blended with the connection line when the mouse is hovering over it.

* * *

[Color](class_color.md#class-color) **connection\_rim\_color** = `Color(0.1, 0.1, 0.1, 0.6)` [🔗](#class-graphedit-theme-color-connection-rim-color)

Color of the rim around each connection line used for making intersecting lines more distinguishable.

* * *

[Color](class_color.md#class-color) **connection\_valid\_target\_tint\_color** = `Color(1, 1, 1, 0.4)` [🔗](#class-graphedit-theme-color-connection-valid-target-tint-color)

Color which is blended with the connection line when the currently dragged connection is hovering over a valid target port.

* * *

[Color](class_color.md#class-color) **grid\_major** = `Color(1, 1, 1, 0.2)` [🔗](#class-graphedit-theme-color-grid-major)

Color of major grid lines/dots.

* * *

[Color](class_color.md#class-color) **grid\_minor** = `Color(1, 1, 1, 0.05)` [🔗](#class-graphedit-theme-color-grid-minor)

Color of minor grid lines/dots.

* * *

[Color](class_color.md#class-color) **selection\_fill** = `Color(1, 1, 1, 0.3)` [🔗](#class-graphedit-theme-color-selection-fill)

The fill color of the selection rectangle.

* * *

[Color](class_color.md#class-color) **selection\_stroke** = `Color(1, 1, 1, 0.8)` [🔗](#class-graphedit-theme-color-selection-stroke)

The outline color of the selection rectangle.

* * *

[int](class_int.md#class-int) **connection\_hover\_thickness** = `0` [🔗](#class-graphedit-theme-constant-connection-hover-thickness)

Widen the line of the connection when the mouse is hovering over it by a percentage factor. A value of `0` disables the highlight. A value of `100` doubles the line width.

* * *

[int](class_int.md#class-int) **port\_hotzone\_inner\_extent** = `22` [🔗](#class-graphedit-theme-constant-port-hotzone-inner-extent)

The horizontal range within which a port can be grabbed (inner side).

* * *

[int](class_int.md#class-int) **port\_hotzone\_outer\_extent** = `26` [🔗](#class-graphedit-theme-constant-port-hotzone-outer-extent)

The horizontal range within which a port can be grabbed (outer side).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **grid\_toggle** [🔗](#class-graphedit-theme-icon-grid-toggle)

The icon for the grid toggle button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **layout** [🔗](#class-graphedit-theme-icon-layout)

The icon for the layout button for auto-arranging the graph.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **minimap\_toggle** [🔗](#class-graphedit-theme-icon-minimap-toggle)

The icon for the minimap toggle button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **snapping\_toggle** [🔗](#class-graphedit-theme-icon-snapping-toggle)

The icon for the snapping toggle button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **zoom\_in** [🔗](#class-graphedit-theme-icon-zoom-in)

The icon for the zoom in button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **zoom\_out** [🔗](#class-graphedit-theme-icon-zoom-out)

The icon for the zoom out button.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **zoom\_reset** [🔗](#class-graphedit-theme-icon-zoom-reset)

The icon for the zoom reset button.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **menu\_panel** [🔗](#class-graphedit-theme-style-menu-panel)

There is currently no description for this theme property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel** [🔗](#class-graphedit-theme-style-panel)

The background drawn under the grid.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **panel\_focus** [🔗](#class-graphedit-theme-style-panel-focus)

[StyleBox](class_stylebox.md#class-stylebox) used when the **GraphEdit** is focused (when used with assistive apps).

[Previous](class_gpuparticlescollisionsphere3d.md "GPUParticlesCollisionSphere3D") [Next](class_graphelement.md "GraphElement")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gpuparticlescollisionsphere3d.md "GPUParticlesCollisionSphere3D") [Next](class_graphelement.md "GraphElement")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).