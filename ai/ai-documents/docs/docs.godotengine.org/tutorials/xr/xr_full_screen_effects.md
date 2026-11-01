---
title: XR full screen effects — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/xr/xr_full_screen_effects.html
crawled_at: "2026-08-13T10:33:36+12:00"
content_hash: c7b7f3ed59d18d8e012ab4692b6d6082a1c18cdfb9270e6fe586114666eafa33
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [XR](index.md)
  - XR full screen effects
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/xr/xr_full_screen_effects.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# XR full screen effects

When adding custom full screen effects to your XR application, one approach is
using a full screen quad and applying effects to that quad's shader.
Add a [MeshInstance3D](../../classes/class_meshinstance3d.md#class-meshinstance3d) node
to your scene as a child of your [XRCamera3D](../../classes/class_xrcamera3d.md#class-xrcamera3d),
and set the `mesh` property to a [QuadMesh](../../classes/class_quadmesh.md#class-quadmesh).
Set the width and height of the quad to `2`.

![../../_images/xr_full_screen_effects_starting_quad.webp](../../_images/xr_full_screen_effects_starting_quad.webp)

You can then add a shader to your quad to make it cover the screen. This is done by setting the
vertex shader's `POSITION` built-in to `vec4(VERTEX.xy, 1.0, 1.0)`.
However, when creating an effect that is centered straight ahead in the user's view
(such as a vignette effect), the end result may look incorrect in XR.

Below shows captures of the right-eye view with a vignette shader, both from the headset and the render target itself.
The left captures are an unmodified shader; the right captures adjust the full screen quad using the projection matrix.
While the capture on the left is centered in the render target, it is off-center in the headset view.
But, after applying the projection matrix, we see that the effect is centered in the headset itself.

![../../_images/xr_full_screen_effects_vignette_before_after.webp](../../_images/xr_full_screen_effects_vignette_before_after.webp)

## Applying the projection matrix

To properly center the effect, the `POSITION` of the full screen quad
needs to take the asymmetric field of view into account. To do this while also ensuring the quad
has full coverage of the entire render target, we can subdivide the quad and apply the projection matrix
to the inner vertices. Let's increase the subdivide width and depth of the quad.

![../../_images/xr_full_screen_effects_ending_quad.webp](../../_images/xr_full_screen_effects_ending_quad.webp)

Then, in the vertex function of our shader, we apply an offset from the projection matrix to
the inner vertices. Here's an example of how you might do this with the above simple vignette shader:

```
shader_type spatial;
render_mode depth_test_disabled, skip_vertex_transform, unshaded, cull_disabled;

// Modify VERTEX.xy using the projection matrix to correctly center the effect.
void vertex() {
        vec2 vert_pos = VERTEX.xy;

        if (length(vert_pos) < 0.99) {
                vec4 offset = PROJECTION_MATRIX * vec4(0.0, 0.0, 1.0, 1.0);
                vert_pos += (offset.xy / offset.w);
        }

        POSITION = vec4(vert_pos, 1.0, 1.0);
}

void fragment() {
        ALBEDO = vec3(0.0);
        ALPHA = dot(UV * 2.0 - 1.0, UV * 2.0 - 1.0) * 2.0;
}

```

Note

For more info on asymmetric FOV and its purpose, see this
[Meta Asymmetric Field of View FAQ](https://developers.meta.com/horizon/documentation/unity/unity-asymmetric-fov-faq/).

## Limitations

This full screen effect method has no performance concerns for per-pixel effects such as the above vignette shader.
However, it is not recommended to read from the screen texture when using this technique.
Full screen effects that require reading from the screen texture effectively disable all rendering performance optimizations in XR.
This is because, when reading from the screen texture, Godot makes a full copy of the render buffer;
this drastically increases the workload for the GPU and can create performance concerns.

[Previous](xr_room_scale.md "Room scale in XR") [Next](openxr_composition_layers.md "OpenXR composition layers")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](xr_room_scale.md "Room scale in XR") [Next](openxr_composition_layers.md "OpenXR composition layers")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).