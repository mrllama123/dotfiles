---
title: SubViewportContainer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_subviewportcontainer.html
crawled_at: "2026-08-13T10:35:49+12:00"
content_hash: 7f65fea7b3c072dbc9ffd97abc26a5acf0a5edbcf1dac95a4ca40a411152a044
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SubViewportContainer

* * *

# SubViewportContainer

**Inherits:** [Container](class_container.md#class-container) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A container used for displaying the contents of a [SubViewport](class_subviewport.md#class-subviewport).

## Description

A container that displays the contents of underlying [SubViewport](class_subviewport.md#class-subviewport) child nodes. It uses the combined size of the [SubViewport](class_subviewport.md#class-subviewport) s as minimum size, unless [stretch](#class-subviewportcontainer-property-stretch) is enabled.

**Note:** Changing a **SubViewportContainer**'s [Control.scale](class_control.md#class-control-property-scale) will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).

**Note:** The **SubViewportContainer** forwards mouse-enter and mouse-exit notifications to its sub-viewports.

## Properties

|     |     |     |
| --- | --- | --- |
| [FocusMode](class_control.md#enum-control-focusmode) | focus\_mode | `1` (overrides [Control](class_control.md#class-control-property-focus-mode)) |
| [bool](class_bool.md#class-bool) | [mouse\_target](#class-subviewportcontainer-property-mouse-target) | `false` |
| [bool](class_bool.md#class-bool) | [stretch](#class-subviewportcontainer-property-stretch) | `false` |
| [int](class_int.md#class-int) | [stretch\_shrink](#class-subviewportcontainer-property-stretch-shrink) | `1` |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_propagate\_input\_event](#class-subviewportcontainer-private-method-propagate-input-event)(event: [InputEvent](class_inputevent.md#class-inputevent)) virtualconst |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **mouse\_target** = `false` [🔗](#class-subviewportcontainer-property-mouse-target)

- void **set\_mouse\_target**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_mouse\_target\_enabled**()


Configure, if either the **SubViewportContainer** or alternatively the [Control](class_control.md#class-control) nodes of its [SubViewport](class_subviewport.md#class-subviewport) children should be available as targets of mouse-related functionalities, like identifying the drop target in drag-and-drop operations or cursor shape of hovered [Control](class_control.md#class-control) node.

If `false`, the [Control](class_control.md#class-control) nodes inside its [SubViewport](class_subviewport.md#class-subviewport) children are considered as targets.

If `true`, the **SubViewportContainer** itself will be considered as a target.

* * *

[bool](class_bool.md#class-bool) **stretch** = `false` [🔗](#class-subviewportcontainer-property-stretch)

- void **set\_stretch**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_stretch\_enabled**()


If `true`, the sub-viewport will be automatically resized to the control's size.

**Note:** If `true`, this will prohibit changing [SubViewport.size](class_subviewport.md#class-subviewport-property-size) of its children manually.

* * *

[int](class_int.md#class-int) **stretch\_shrink** = `1` [🔗](#class-subviewportcontainer-property-stretch-shrink)

- void **set\_stretch\_shrink**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_stretch\_shrink**()


Divides the sub-viewport's effective resolution by this value while preserving its scale. This can be used to speed up rendering.

For example, a 1280×720 sub-viewport with [stretch\_shrink](#class-subviewportcontainer-property-stretch-shrink) set to `2` will be rendered at 640×360 while occupying the same size in the container.

**Note:** [stretch](#class-subviewportcontainer-property-stretch) must be `true` for this property to work.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_propagate\_input\_event**(event: [InputEvent](class_inputevent.md#class-inputevent)) virtualconst [🔗](#class-subviewportcontainer-private-method-propagate-input-event)

**Experimental:** This method may be changed or removed in future versions.

Virtual method to be implemented by the user. If it returns `true`, the `event` is propagated to [SubViewport](class_subviewport.md#class-subviewport) children. Propagation doesn't happen if it returns `false`. If the function is not implemented, all events are propagated to SubViewports.

[Previous](class_subviewport.md "SubViewport") [Next](class_tabbar.md "TabBar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_subviewport.md "SubViewport") [Next](class_tabbar.md "TabBar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).