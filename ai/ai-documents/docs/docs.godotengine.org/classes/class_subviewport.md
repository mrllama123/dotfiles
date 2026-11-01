---
title: SubViewport — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_subviewport.html
crawled_at: "2026-08-13T10:22:42+12:00"
content_hash: 11e98cd2cc2fd1d29187622e067ec493e88ceb8881b65e056d9a8921ed6035af
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SubViewport

* * *

# SubViewport

**Inherits:** [Viewport](class_viewport.md#class-viewport) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

An interface to a game world that doesn't create a window or draw to the screen directly.

## Description

**SubViewport** Isolates a rectangular region of a scene to be displayed independently. This can be used, for example, to display UI in 3D space.

**Note:** **SubViewport** is a [Viewport](class_viewport.md#class-viewport) that isn't a [Window](class_window.md#class-window), i.e. it doesn't draw anything by itself. To display anything, **SubViewport** must have a non-zero size and be either put inside a [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) or assigned to a [ViewportTexture](class_viewporttexture.md#class-viewporttexture).

**Note:** [InputEvent](class_inputevent.md#class-inputevent) s are not passed to a standalone **SubViewport** by default. To ensure [InputEvent](class_inputevent.md#class-inputevent) propagation, a **SubViewport** can be placed inside of a [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer).

## Tutorials

- [Using Viewports](../tutorials/rendering/viewports.md)

- [Viewport and canvas transforms](../tutorials/2d/2d_transforms.md)

- [GUI in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2807)

- [3D in 2D Viewport Demo](https://godotengine.org/asset-library/asset/2804)

- [2D in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2803)

- [Screen Capture Demo](https://godotengine.org/asset-library/asset/2808)

- [Dynamic Split Screen Demo](https://godotengine.org/asset-library/asset/2806)

- [3D Resolution Scaling Demo](https://godotengine.org/asset-library/asset/2805)


## Properties

|     |     |     |
| --- | --- | --- |
| [ClearMode](#enum-subviewport-clearmode) | [render\_target\_clear\_mode](#class-subviewport-property-render-target-clear-mode) | `0` |
| [UpdateMode](#enum-subviewport-updatemode) | [render\_target\_update\_mode](#class-subviewport-property-render-target-update-mode) | `2` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size](#class-subviewport-property-size) | `Vector2i(512, 512)` |
| [Vector2i](class_vector2i.md#class-vector2i) | [size\_2d\_override](#class-subviewport-property-size-2d-override) | `Vector2i(0, 0)` |
| [bool](class_bool.md#class-bool) | [size\_2d\_override\_stretch](#class-subviewport-property-size-2d-override-stretch) | `false` |

* * *

## Enumerations

enum **ClearMode**: [🔗](#enum-subviewport-clearmode)

[ClearMode](#enum-subviewport-clearmode) **CLEAR\_MODE\_ALWAYS** = `0`

Always clear the render target before drawing.

[ClearMode](#enum-subviewport-clearmode) **CLEAR\_MODE\_NEVER** = `1`

Never clear the render target.

[ClearMode](#enum-subviewport-clearmode) **CLEAR\_MODE\_ONCE** = `2`

Clear the render target on the next frame, then switch to [CLEAR\_MODE\_NEVER](#class-subviewport-constant-clear-mode-never).

* * *

enum **UpdateMode**: [🔗](#enum-subviewport-updatemode)

[UpdateMode](#enum-subviewport-updatemode) **UPDATE\_DISABLED** = `0`

Do not update the render target.

[UpdateMode](#enum-subviewport-updatemode) **UPDATE\_ONCE** = `1`

Update the render target once, then switch to [UPDATE\_DISABLED](#class-subviewport-constant-update-disabled).

[UpdateMode](#enum-subviewport-updatemode) **UPDATE\_WHEN\_VISIBLE** = `2`

Update the render target only when it is visible. This is the default value.

[UpdateMode](#enum-subviewport-updatemode) **UPDATE\_WHEN\_PARENT\_VISIBLE** = `3`

Update the render target only when its parent is visible.

[UpdateMode](#enum-subviewport-updatemode) **UPDATE\_ALWAYS** = `4`

Always update the render target.

* * *

## Property Descriptions

[ClearMode](#enum-subviewport-clearmode) **render\_target\_clear\_mode** = `0` [🔗](#class-subviewport-property-render-target-clear-mode)

- void **set\_clear\_mode**(value: [ClearMode](#enum-subviewport-clearmode))

- [ClearMode](#enum-subviewport-clearmode) **get\_clear\_mode**()


The clear mode when the sub-viewport is used as a render target.

**Note:** This property is intended for 2D usage.

* * *

[UpdateMode](#enum-subviewport-updatemode) **render\_target\_update\_mode** = `2` [🔗](#class-subviewport-property-render-target-update-mode)

- void **set\_update\_mode**(value: [UpdateMode](#enum-subviewport-updatemode))

- [UpdateMode](#enum-subviewport-updatemode) **get\_update\_mode**()


The update mode when the sub-viewport is used as a render target.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size** = `Vector2i(512, 512)` [🔗](#class-subviewport-property-size)

- void **set\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_size**()


The width and height of the sub-viewport. Must be set to a value greater than or equal to 2 pixels on both dimensions. Otherwise, nothing will be displayed.

**Note:** If the parent node is a [SubViewportContainer](class_subviewportcontainer.md#class-subviewportcontainer) and its [SubViewportContainer.stretch](class_subviewportcontainer.md#class-subviewportcontainer-property-stretch) is `true`, the viewport size cannot be changed manually.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **size\_2d\_override** = `Vector2i(0, 0)` [🔗](#class-subviewport-property-size-2d-override)

- void **set\_size\_2d\_override**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_size\_2d\_override**()


The 2D size override of the sub-viewport. If either the width or height is `0`, the override is disabled.

* * *

[bool](class_bool.md#class-bool) **size\_2d\_override\_stretch** = `false` [🔗](#class-subviewport-property-size-2d-override-stretch)

- void **set\_size\_2d\_override\_stretch**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_size\_2d\_override\_stretch\_enabled**()


If `true`, the 2D size override affects stretch as well.

[Previous](class_statusindicator.md "StatusIndicator") [Next](class_subviewportcontainer.md "SubViewportContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_statusindicator.md "StatusIndicator") [Next](class_subviewportcontainer.md "SubViewportContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).