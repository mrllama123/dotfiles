---
title: AR / Passthrough — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/xr/ar_passthrough.html
crawled_at: "2026-08-13T10:35:52+12:00"
content_hash: 20ba8a1edfa5f20af4d3dd530e64d95d2b396830a0df39b7e107a6a17a288c5c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [XR](index.md)
  - AR / Passthrough
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/xr/ar_passthrough.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# AR / Passthrough

Augmented Reality is supported through various methods depending on the capabilities of the hardware.

Headsets such as the Magic Leap and glasses such as TiltFive show the rendered result on
[see-through displays](https://en.wikipedia.org/wiki/See-through_display) allowing the user
to see the real world.

Headsets such as the Quest, HTC Elite, and Lynx R1 implement this through a technique called video passthrough,
where cameras record the real world and these images are used as the background on top of which our rendered
result is used.

Note

Passthrough is implemented very differently across platforms.

In Godot 4.3 we have implemented a unified approach that is explained on this help page
so you don't need to worry about these differences, the [XRInterface](../../classes/class_xrinterface.md#class-xrinterface)
implementation is now responsible for applying the correct platform-dependent method [\[1\]](#id3).

For headsets such as the Meta Quest and HTC Elite you will need to use the
[OpenXR vendors plugin v3.0.0](https://github.com/GodotVR/godot_openxr_vendors/releases)
or later to enable video passthrough.

For backwards compatibility the old API for passthrough is still available but it is recommended
to follow the new instructions below.

## Environment blend modes

The way we configure VR or AR functionality is through setting the environment blend mode.
This mode determines how the (real world) environment is blended with the virtual world.

| Blend mode | Description |
| --- | --- |
| XR\_ENV\_BLEND\_MODE\_OPAQUE | The rendered image is opaque, we do not see the real world. We're in VR mode.<br>This will turn off passthrough if video-passthrough is used. |
| XR\_ENV\_BLEND\_MODE\_ADDITIVE | The rendered image is added to the real world and will look semi transparent.<br>This mode is generally used with see-through devices that are unable to obscure<br>the real world.<br>This will turn on passthrough if video-passthrough is used. |
| XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND | The rendered image is alpha blended with the real world.<br>On see-through devices that support this, the alpha will control the translucency<br>of the optics.<br>On video-passthrough devices alpha blending is applied with the video image.<br>passthrough will also be enabled if applicable. |

Blend modes

You can set the environment blend mode for your application through the `environment_blend_mode`
property of the [XRInterface](../../classes/class_xrinterface.md#class-xrinterface) instance.

You can query the supported blend modes on the hardware using the
`get_supported_environment_blend_modes` property on the same instance.

## Configuring your background

When setting the blend mode to `XR_ENV_BLEND_MODE_ALPHA_BLEND` you must set
the `transparent_bg` property on [Viewport](../../classes/class_viewport.md#class-viewport) to true.
When using the `XR_ENV_BLEND_MODE_ADDITIVE` blend mode you should set your
background color to black.

Either solution will result in the background rendering not contributing to lighting.
It is thus also recommended you adjust your environment settings accordingly and ensure
there is adequate ambient light set to illuminate your scene.

Note

Some AR SDKs do provide ambient lighting information or even provide a full radiance
map to allow for real world reflections in your virtual objects.
The core Godot XR functionality doesn't currently have support for this, however this
functionality can be exposed through plugins.

## OpenXR specific

In OpenXR you can configure the default blend mode you want to use.
Godot will select this blend mode at startup if available.
If not available Godot will default to the first supported blend mode provided
by the XR runtime.

![../../_images/openxr_default_blend_mode.webp](../../_images/openxr_default_blend_mode.webp)

For passthrough devices OpenXR requires additional settings to be configured.
These settings are platform-dependent and provided through the OpenXR vendors plugin.

For example, these are the settings required on Meta Quest:

![../../_images/openxr_export_passthrough.webp](../../_images/openxr_export_passthrough.webp)

The `Passthrough` setting defines whether passthrough is supported or even required.

The `Boundary Mode` allows you to define whether the guardian is needed,
disabling this fully requires passthrough to be enabled at all times.

## Putting it together

Putting the above together we can use the following code as a base:

```
@onready var viewport : Viewport = get_viewport()
@onready var environment : Environment = $WorldEnvironment.environment

func switch_to_ar() -> bool:
    var xr_interface: XRInterface = XRServer.primary_interface
    if xr_interface:
        var modes = xr_interface.get_supported_environment_blend_modes()
        if XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND in modes:
            xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND
            viewport.transparent_bg = true
        elif XRInterface.XR_ENV_BLEND_MODE_ADDITIVE in modes:
            xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ADDITIVE
            viewport.transparent_bg = false
    else:
        return false

    environment.background_mode = Environment.BG_COLOR
    environment.background_color = Color(0.0, 0.0, 0.0, 0.0)
    environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
    return true

func switch_to_vr() -> bool:
    var xr_interface: XRInterface = XRServer.primary_interface
    if xr_interface:
        var modes = xr_interface.get_supported_environment_blend_modes()
        if XRInterface.XR_ENV_BLEND_MODE_OPAQUE in modes:
            xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_OPAQUE
        else:
            return false

    viewport.transparent_bg = false
    environment.background_mode = Environment.BG_SKY
    environment.ambient_light_source = Environment.AMBIENT_SOURCE_BG
    return true

```

## Shadow to opacity

Shadow to opacity is a render mode for Godot spatial shaders
that was introduced in Godot 3 specifically for AR.
It is a special render mode where the more a surface is in shadow,
the more opaque the surface becomes. When a surface is fully lit,
the surface becomes fully transparent and thus shows the real world.

However the surface is rendered during the opaque state effectively.
This has two consequences:

- As both the depth buffer and color buffer are written to, we occlude
any geometry behind our surface even when fully transparent.

- As we are making the surface opaque if in shadow, we can have virtual
objects cast shadows on real world objects [\[2\]](#id4).


![Image showing shadow to opacity being used to show the user's desk.](../../_images/xr_passthrough_example.webp)

Image showing shadow to opacity being used to show the user's desk.

This enabled the following use cases:

- You can render a box mesh around a real world table, this ensures the
table remains visible even if a virtual object is placed underneath it.
The virtual object will be correctly occluded.
Placing a virtual object on top of the real world table, will result in
a shadow being cast on the table.

- You can use a shader with this render mode when render a hand mesh
using the hand tracking functionality, and ensure your hands properly
occlude virtual objects.


The following shader code is a good base for this functionality:

```
shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, shadow_to_opacity;

void fragment() {
    ALBEDO = vec3(0.0, 0.0, 0.0);
}

```

\[ [1](#id1)\]

Restrictions may apply depending on XR interface implementation.

\[ [2](#id2)\]

This feature is still being perfected.

[Previous](a_better_xr_start_script.md "A better XR start script") [Next](xr_next_steps.md "Where to go from here")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](a_better_xr_start_script.md "A better XR start script") [Next](xr_next_steps.md "Where to go from here")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).