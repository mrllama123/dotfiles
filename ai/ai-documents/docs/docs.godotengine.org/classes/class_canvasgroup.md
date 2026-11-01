---
title: CanvasGroup — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_canvasgroup.html
crawled_at: "2026-08-13T10:19:55+12:00"
content_hash: 5849e44f8eabd35966497ab861d4c1e6ee97c58c9179be4bedb32781e6d13bbf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CanvasGroup

* * *

# CanvasGroup

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Merges several 2D nodes into a single draw operation.

## Description

Child [CanvasItem](class_canvasitem.md#class-canvasitem) nodes of a **CanvasGroup** are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without blending (set [CanvasItem.self\_modulate](class_canvasitem.md#class-canvasitem-property-self-modulate) property of **CanvasGroup** to achieve this effect).

**Note:** The **CanvasGroup** uses a custom shader to read from the backbuffer to draw its children. Assigning a [Material](class_material.md#class-material) to the **CanvasGroup** overrides the builtin shader. To duplicate the behavior of the builtin shader in a custom [Shader](class_shader.md#class-shader) use the following:

```
shader_type canvas_item;
render_mode unshaded;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

void fragment() {
    vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

    if (c.a > 0.0001) {
        c.rgb /= c.a;
    }

    COLOR *= c;
}

```

**Note:** Since **CanvasGroup** and [CanvasItem.clip\_children](class_canvasitem.md#class-canvasitem-property-clip-children) both utilize the backbuffer, children of a **CanvasGroup** who have their [CanvasItem.clip\_children](class_canvasitem.md#class-canvasitem-property-clip-children) set to anything other than [CanvasItem.CLIP\_CHILDREN\_DISABLED](class_canvasitem.md#class-canvasitem-constant-clip-children-disabled) will not function correctly.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [clear\_margin](#class-canvasgroup-property-clear-margin) | `10.0` |
| [float](class_float.md#class-float) | [fit\_margin](#class-canvasgroup-property-fit-margin) | `10.0` |
| [bool](class_bool.md#class-bool) | [use\_mipmaps](#class-canvasgroup-property-use-mipmaps) | `false` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **clear\_margin** = `10.0` [🔗](#class-canvasgroup-property-clear-margin)

- void **set\_clear\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_clear\_margin**()


Sets the size of the margin used to expand the clearing rect of this **CanvasGroup**. This expands the area of the backbuffer that will be used by the **CanvasGroup**. A smaller margin will reduce the area of the backbuffer used which can increase performance, however if [use\_mipmaps](#class-canvasgroup-property-use-mipmaps) is enabled, a small margin may result in mipmap errors at the edge of the **CanvasGroup**. Accordingly, this should be left as small as possible, but should be increased if artifacts appear along the edges of the canvas group.

* * *

[float](class_float.md#class-float) **fit\_margin** = `10.0` [🔗](#class-canvasgroup-property-fit-margin)

- void **set\_fit\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fit\_margin**()


Sets the size of a margin used to expand the drawable rect of this **CanvasGroup**. The size of the **CanvasGroup** is determined by fitting a rect around its children then expanding that rect by [fit\_margin](#class-canvasgroup-property-fit-margin). This increases both the backbuffer area used and the area covered by the **CanvasGroup** both of which can reduce performance. This should be kept as small as possible and should only be expanded when an increased size is needed (e.g. for custom shader effects).

* * *

[bool](class_bool.md#class-bool) **use\_mipmaps** = `false` [🔗](#class-canvasgroup-property-use-mipmaps)

- void **set\_use\_mipmaps**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_mipmaps**()


If `true`, calculates mipmaps for the backbuffer before drawing the **CanvasGroup** so that mipmaps can be used in a custom [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) attached to the **CanvasGroup**. Generating mipmaps has a performance cost so this should not be enabled unless required.

[Previous](class_camera3d.md "Camera3D") [Next](class_canvasitem.md "CanvasItem")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_camera3d.md "Camera3D") [Next](class_canvasitem.md "CanvasItem")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).