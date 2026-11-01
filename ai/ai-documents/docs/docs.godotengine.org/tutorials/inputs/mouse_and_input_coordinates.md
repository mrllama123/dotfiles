---
title: Mouse and input coordinates — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/inputs/mouse_and_input_coordinates.html
crawled_at: "2026-08-13T10:22:43+12:00"
content_hash: 6d6c19bd3ffd5cce12eeb2bff635719ebb43d6f78751b0d931b8e9119240e7b8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Input handling](index.md)
  - Mouse and input coordinates
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/inputs/mouse_and_input_coordinates.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Mouse and input coordinates

## About

The reason for this small tutorial is to clear up many common mistakes
about input coordinates, obtaining mouse position and screen resolution,
etc.

## Hardware display coordinates

Using hardware coordinates makes sense in the case of writing complex
UIs meant to run on PC, such as editors, MMOs, tools, etc. However, it does
not make as much sense outside of that scope.

## Viewport display coordinates

Godot uses viewports to display content, and viewports can be scaled by
several options (see [Multiple resolutions](../rendering/multiple_resolutions.md#doc-multiple-resolutions) tutorial). Use, then, the
functions in nodes to obtain the mouse coordinates and viewport size,
for example:

GDScriptC#

```
func _input(event):
    # Mouse in viewport coordinates.
    if event is InputEventMouseButton:
        print("Mouse Click/Unclick at: ", event.position)
    elif event is InputEventMouseMotion:
        print("Mouse Motion at: ", event.position)

    # Print the size of the viewport.
    print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)

```

```
public override void _Input(InputEvent @event)
{
    // Mouse in viewport coordinates.
    if (@event is InputEventMouseButton eventMouseButton)
    {
        GD.Print("Mouse Click/Unclick at: ", eventMouseButton.Position);
    }
    else if (@event is InputEventMouseMotion eventMouseMotion)
    {
        GD.Print("Mouse Motion at: ", eventMouseMotion.Position);
    }

    // Print the size of the viewport.
    GD.Print("Viewport Resolution is: ", GetViewport().GetVisibleRect().Size);
}

```

Alternatively, it's possible to ask the viewport for the mouse position:

GDScriptC#

```
get_viewport().get_mouse_position()

```

```
GetViewport().GetMousePosition();

```

Note

When the mouse mode is set to `Input.MOUSE_MODE_CAPTURED`, the `event.position` value from `InputEventMouseMotion` is the center of the screen. Use `event.relative` instead of `event.position` and `event.velocity` to process mouse movement and position changes.

[Previous](input_examples.md "Input examples") [Next](custom_mouse_cursor.md "Customizing the mouse cursor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](input_examples.md "Input examples") [Next](custom_mouse_cursor.md "Customizing the mouse cursor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).