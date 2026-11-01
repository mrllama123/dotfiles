---
title: Customizing the mouse cursor — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/inputs/custom_mouse_cursor.html
crawled_at: "2026-08-13T10:26:21+12:00"
content_hash: ebe3b3b1d4799a7f0653115d72646c404dde910ff2e2de535627424eaf0dd79f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Input handling](index.md)
  - Customizing the mouse cursor
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/inputs/custom_mouse_cursor.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Customizing the mouse cursor

You might want to change the appearance of the mouse cursor in your game in
order to suit the overall design. There are two ways to customize the mouse
cursor:

1. Using project settings. This is simpler, but more limited.

2. Using a script. This is more customizable, but involves scripting.


Note

You could display a "software" mouse cursor by hiding the mouse cursor and
moving a Sprite2D to the cursor position in a `_process()` method, but
this will add at least one frame of latency compared to a "hardware" mouse
cursor. Therefore, it's recommended to use the approach described here
whenever possible.

If you have to use the "software" approach, consider adding an extrapolation step
to better display the actual mouse input.

## Using project settings

Open the **Project Settings** and go to **Display > Mouse Cursor**. You will see the settings
[Custom Image](../../classes/class_projectsettings.md#class-projectsettings-property-display-mouse-cursor-custom-image),
[Custom Image Hotspot](../../classes/class_projectsettings.md#class-projectsettings-property-display-mouse-cursor-custom-image-hotspot),
and [Tooltip Position Offset](../../classes/class_projectsettings.md#class-projectsettings-property-display-mouse-cursor-tooltip-position-offset).

![../../_images/cursor_project_settings.webp](../../_images/cursor_project_settings.webp)

**Custom Image** is the desired image that you would like to set as the mouse cursor.
**Custom Hotspot** is the point in the image that you would like to use as the cursor's detection point.

Warning

The custom image **must** be 256×256 pixels at most. To avoid rendering
issues, sizes of 128×128 or smaller are recommended.

On the web platform, the maximum allowed cursor image size is 128×128.

## Using a script

Create a Node and attach the following script.

GDScriptC#

```
extends Node

# Load the custom images for the mouse cursor.
var arrow = load("res://arrow.png")
var beam = load("res://beam.png")

func _ready():
    # Changes only the arrow shape of the cursor.
    # This is similar to changing it in the project settings.
    Input.set_custom_mouse_cursor(arrow)

    # Changes a specific shape of the cursor (here, the I-beam shape).
    Input.set_custom_mouse_cursor(beam, Input.CURSOR_IBEAM)

```

```
using Godot;

public partial class MyNode : Node
{
    public override void _Ready()
    {
        // Load the custom images for the mouse cursor.
        var arrow = ResourceLoader.Load("res://arrow.png");
        var beam = ResourceLoader.Load("res://beam.png");

        // Changes only the arrow shape of the cursor.
        // This is similar to changing it in the project settings.
        Input.SetCustomMouseCursor(arrow);

        // Changes a specific shape of the cursor (here, the I-beam shape).
        Input.SetCustomMouseCursor(beam, Input.CursorShape.Ibeam);
    }
}

```

See also

Check [Input.set\_custom\_mouse\_cursor()](../../classes/class_input.md#class-input-method-set-custom-mouse-cursor)'s
documentation for more information on usage and platform-specific caveats.

## Cursor list

There are multiple mouse cursors you can define, documented in the
[Input.CursorShape](../../classes/class_input.md#enum-input-cursorshape) enum. Which ones you want to use
depends on your use case.

[Previous](mouse_and_input_coordinates.md "Mouse and input coordinates") [Next](controllers_gamepads_joysticks.md "Controllers, gamepads, and joysticks")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](mouse_and_input_coordinates.md "Mouse and input coordinates") [Next](controllers_gamepads_joysticks.md "Controllers, gamepads, and joysticks")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).