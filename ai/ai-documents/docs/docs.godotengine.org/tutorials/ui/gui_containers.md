---
title: Using Containers — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/ui/gui_containers.html
crawled_at: "2026-08-13T10:34:55+12:00"
content_hash: 583dc84fbcfc690896255bb226816d5daadf17041493676b5914fbe99a16fa58
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [User interface (UI)](index.md)
  - Using Containers
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/ui/gui_containers.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using Containers

[Anchors](size_and_anchors.md#doc-size-and-anchors) are an efficient way to handle
different aspect ratios for basic multiple resolution handling in GUIs.

For more complex user interfaces, they can become difficult to use.

This is often the case of games, such as RPGs, online chats, tycoons or simulations. Another
common case where more advanced layout features may be required is in-game tools (or simply just tools).

All these situations require a more capable OS-like user interface, with advanced layout and formatting.
For that, [Containers](../../classes/class_container.md#class-container) are more useful.

## Container layout

Containers provide a huge amount of layout power (as an example, the Godot editor user interface is entirely done using them):

> ![../../_images/godot_containers.png](../../_images/godot_containers.png)

When a [Container](../../classes/class_container.md#class-container)-derived node is used, all children [Control](../../classes/class_control.md#class-control) nodes give up their
own positioning ability. This means the _Container_ will control their positioning and any attempt to manually alter these
nodes will be either ignored or invalidated the next time their parent is resized.

Likewise, when a _Container_ derived node is resized, all its children will be re-positioned according to it,
with a behavior based on the type of container used:

> ![../../_images/container_example.gif](../../_images/container_example.gif)

Example of _HBoxContainer_ resizing children buttons.

The real strength of containers is that they can be nested (as nodes), allowing the creation of very complex layouts that resize effortlessly.

## Sizing options

When adding a node to a container, the way the container treats each child depends mainly on their _container sizing options_. These options
can be found by inspecting the layout of any _Control_ that is a child of a _Container_.

> ![../../_images/container_sizing_options.webp](../../_images/container_sizing_options.webp)

Sizing options are independent for vertical and horizontal sizing and not all containers make use of them (but most do):

- **Fill**: Ensures the control _fills_ the designated area within the container. No matter if
a control _expands_ or not (see below), it will only _fill_ the designated area when this is toggled on (it is by default).

- **Expand**: Attempts to use as much space as possible in the parent container (in each axis).
Controls that don't expand will be pushed away by those that do. Between expanding controls, the
amount of space they take from each other is determined by the _Stretch Ratio_ (see below).
This option is only available when the parent Container is of the right type, for example the _HBoxContainer_ has this option
for horizontal sizing.

- **Shrink Begin** When expanding, try to remain at the left or top of the expanded
area.

- **Shrink Center** When expanding, try to remain at the center of the expanded
area.

- **Shrink End** When expanding, try to remain at the right or bottom of the expanded
area.

- **Stretch Ratio**: The ratio of how much expanded controls take up the available space in relation to each
other. A control with "2", will take up twice as much available space as one with "1".


Experimenting with these flags and different containers is recommended to get a better grasp on how they work.

## Container types

Godot provides several container types out of the box as they serve different purposes:

### Box Containers

Arranges child controls vertically or horizontally (via [HBoxContainer](../../classes/class_hboxcontainer.md#class-hboxcontainer) and
[VBoxContainer](../../classes/class_vboxcontainer.md#class-vboxcontainer)). In the opposite of the designated direction
(as in, vertical for a horizontal container), it just expands the children.

> ![../../_images/containers_box.png](../../_images/containers_box.png)

These containers make use of the _Stretch Ratio_ property for children with the _Expand_ flag set.

### Grid Container

Arranges child controls in a grid layout (via [GridContainer](../../classes/class_gridcontainer.md#class-gridcontainer), amount
of columns must be specified). Uses both the vertical and horizontal expand flags.

> ![../../_images/containers_grid.png](../../_images/containers_grid.png)

### Margin Container

Child controls are expanded towards the bounds of this control (via
[MarginContainer](../../classes/class_margincontainer.md#class-margincontainer)). Padding will be added on the margins
depending on the theme configuration.

> ![../../_images/containers_margin.png](../../_images/containers_margin.png)

Again, keep in mind that the margins are a _Theme_ value, so they need to be edited from the
constants overrides section of each control:

> ![../../_images/containers_margin_constants.png](../../_images/containers_margin_constants.png)

### Tab Container

Allows you to place several child controls stacked on top of each other (via
[TabContainer](../../classes/class_tabcontainer.md#class-tabcontainer)), with only the _current_ one visible.

> ![../../_images/containers_tab.png](../../_images/containers_tab.png)

Changing the _current_ one is done via tabs located at the top of the container, via clicking:

> ![../../_images/containers_tab_click.gif](../../_images/containers_tab_click.gif)

The titles are generated from the node names by default (although they can be overridden via _TabContainer_ API).

Settings such as tab placement and _StyleBox_ can be modified in the _TabContainer_ theme overrides.

### Split Container

Accepts only one or two children controls, then places them side to side with a divisor
(via [HSplitContainer](../../classes/class_hsplitcontainer.md#class-hsplitcontainer) and [VSplitContainer](../../classes/class_vsplitcontainer.md#class-vsplitcontainer)).
Respects both horizontal and vertical flags, as well as _Ratio_.

> ![../../_images/containers_split.png](../../_images/containers_split.png)

The divisor can be dragged around to change the size relation between both children:

> ![../../_images/containers_split_drag.gif](../../_images/containers_split_drag.gif)

### PanelContainer

A container that draws a _StyleBox_, then expands children to cover its whole area
(via [PanelContainer](../../classes/class_panelcontainer.md#class-panelcontainer), respecting the _StyleBox_ margins).
It respects both the horizontal and vertical sizing options.

> ![../../_images/containers_panel.png](../../_images/containers_panel.png)

This container is useful as a top-level control, or just to add custom backgrounds to sections of a layout.

### FoldableContainer

A container that can be expanded/collapsed
(via [FoldableContainer](../../classes/class_foldablecontainer.md#class-foldablecontainer)).
Child controls are hidden when it is collapsed.

### ScrollContainer

Accepts a single child node. If the child node is bigger than the container, scrollbars will be added
to allow panning the node around (via [ScrollContainer](../../classes/class_scrollcontainer.md#class-scrollcontainer)). Both
vertical and horizontal size options are respected, and the behavior can be turned on or off
per axis in the properties.

> ![../../_images/containers_scroll.png](../../_images/containers_scroll.png)

Mouse wheel and touch drag (when touch is available) are also valid ways to pan the child control around.

> ![../../_images/containers_center_pan.gif](../../_images/containers_center_pan.gif)

As in the example above, one of the most common ways to use this container is together with a _VBoxContainer_ as child.

### AspectRatioContainer

A container type that arranges its child controls in a way that preserves their proportions
automatically when the container is resized.
(via [AspectRatioContainer](../../classes/class_aspectratiocontainer.md#class-aspectratiocontainer)).
It has multiple stretch modes, providing options for adjusting the child controls' sizes concerning the container:
"fill," "width control height," "height control width," and "cover."

> ![../../_images/containers_aspectratio.webp](../../_images/containers_aspectratio.webp)

It is useful when you have a container that needs to be dynamic and responsive to different screen sizes,
and you want the child elements to scale proportionally without losing their intended shapes.

> ![../../_images/containers_aspectratio_drag.webp](../../_images/containers_aspectratio_drag.webp)

### FlowContainer

FlowContainer is a container that arranges its child controls either horizontally or vertically
(via [HFlowContainer](../../classes/class_hflowcontainer.md#class-hflowcontainer) and via [VFlowContainer](../../classes/class_vflowcontainer.md#class-vflowcontainer)).
When the available space runs out, it wraps the children to the next line or column, similar to how text wraps in a book.

> ![../../_images/containers_hflow.webp](../../_images/containers_hflow.webp)

It is useful for creating flexible layouts where the child controls adjust automatically to the available space without overlapping.

> ![../../_images/containers_hflow_drag.webp](../../_images/containers_hflow_drag.webp)

### CenterContainer

CenterContainer is a container that automatically keeps all of its child controls centered within it at their minimum size.
It ensures that the child controls are always aligned to the center, making it easier to create centered layouts without manual positioning
(via [CenterContainer](../../classes/class_centercontainer.md#class-centercontainer)).

> ![../../_images/containers_center.webp](../../_images/containers_center.webp)![../../_images/containers_center_drag.webp](../../_images/containers_center_drag.webp)

### SubViewportContainer

This is a special control that will only accept a single _Viewport_ node as child, and it will display
it as if it was an image (via [SubViewportContainer](../../classes/class_subviewportcontainer.md#class-subviewportcontainer)).

## Creating custom Containers

It is possible to create a custom container using a script.
Here is an example of a container that fits children to its size:

GDScriptC#

```
extends Container

func _notification(what):
    if what == NOTIFICATION_SORT_CHILDREN:
        # Must re-sort the children
        for c in get_children():
            # Fit to own size
            fit_child_in_rect(c, Rect2(Vector2(), size))

func set_some_setting():
    # Some setting changed, ask for children re-sort.
    queue_sort()

```

```
using Godot;

public partial class CustomContainer : Container
{
    public override void _Notification(int what)
    {
        if (what == NotificationSortChildren)
        {
            // Must re-sort the children
            foreach (Control c in GetChildren())
            {
                // Fit to own size
                FitChildInRect(c, new Rect2(new Vector2(), Size));
            }
        }
    }

    public void SetSomeSetting()
    {
        // Some setting changed, ask for children re-sort.
        QueueSort();
    }
}

```

[Previous](size_and_anchors.md "Size and anchors") [Next](custom_gui_controls.md "Custom GUI controls")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](size_and_anchors.md "Size and anchors") [Next](custom_gui_controls.md "Custom GUI controls")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).