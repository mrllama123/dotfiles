---
title: CompositorEffect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_compositoreffect.html
crawled_at: "2026-08-13T10:42:52+12:00"
content_hash: 92e01c7b8868214bf5f9f1d1a030ab1307a3b331cd61cd8fcd6c2d32829fc929
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CompositorEffect

* * *

# CompositorEffect

**Experimental:** The implementation may change as more of the rendering internals are exposed over time.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

This resource allows for creating a custom rendering effect.

## Description

This resource defines a custom rendering effect that can be applied to [Viewport](class_viewport.md#class-viewport) s through the viewports' [Environment](class_environment.md#class-environment). You can implement a callback that is called during rendering at a given stage of the rendering pipeline and allows you to insert additional passes. Note that this callback happens on the rendering thread. CompositorEffect is an abstract base class and must be extended to implement specific rendering logic.

## Tutorials

- [The Compositor](../tutorials/rendering/compositor.md)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [access\_resolved\_color](#class-compositoreffect-property-access-resolved-color) |
| [bool](class_bool.md#class-bool) | [access\_resolved\_depth](#class-compositoreffect-property-access-resolved-depth) |
| [EffectCallbackType](#enum-compositoreffect-effectcallbacktype) | [effect\_callback\_type](#class-compositoreffect-property-effect-callback-type) |
| [bool](class_bool.md#class-bool) | [enabled](#class-compositoreffect-property-enabled) |
| [bool](class_bool.md#class-bool) | [needs\_motion\_vectors](#class-compositoreffect-property-needs-motion-vectors) |
| [bool](class_bool.md#class-bool) | [needs\_normal\_roughness](#class-compositoreffect-property-needs-normal-roughness) |
| [bool](class_bool.md#class-bool) | [needs\_separate\_specular](#class-compositoreffect-property-needs-separate-specular) |

## Methods

|     |     |
| --- | --- |
| void | [\_render\_callback](#class-compositoreffect-private-method-render-callback)(effect\_callback\_type: [int](class_int.md#class-int), render\_data: [RenderData](class_renderdata.md#class-renderdata)) virtual |

* * *

## Enumerations

enum **EffectCallbackType**: [🔗](#enum-compositoreffect-effectcallbacktype)

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_PRE\_OPAQUE** = `0`

The callback is called before our opaque rendering pass, but after depth prepass (if applicable).

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_POST\_OPAQUE** = `1`

The callback is called after our opaque rendering pass, but before our sky is rendered.

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_POST\_SKY** = `2`

The callback is called after our sky is rendered, but before our back buffers are created (and if enabled, before subsurface scattering and/or screen space reflections).

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_PRE\_TRANSPARENT** = `3`

The callback is called before our transparent rendering pass, but after our sky is rendered and we've created our back buffers.

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_POST\_TRANSPARENT** = `4`

The callback is called after our transparent rendering pass, but before any built-in post-processing effects and output to our render target.

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **EFFECT\_CALLBACK\_TYPE\_MAX** = `5`

Represents the size of the [EffectCallbackType](#enum-compositoreffect-effectcallbacktype) enum.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **access\_resolved\_color** [🔗](#class-compositoreffect-property-access-resolved-color)

- void **set\_access\_resolved\_color**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_access\_resolved\_color**()


If `true` and MSAA is enabled, this will trigger a color buffer resolve before the effect is run.

**Note:** In [\_render\_callback()](#class-compositoreffect-private-method-render-callback), to access the resolved buffer use:

```
var render_scene_buffers = render_data.get_render_scene_buffers()
var color_buffer = render_scene_buffers.get_texture("render_buffers", "color")

```

* * *

[bool](class_bool.md#class-bool) **access\_resolved\_depth** [🔗](#class-compositoreffect-property-access-resolved-depth)

- void **set\_access\_resolved\_depth**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_access\_resolved\_depth**()


If `true` and MSAA is enabled, this will trigger a depth buffer resolve before the effect is run.

**Note:** In [\_render\_callback()](#class-compositoreffect-private-method-render-callback), to access the resolved buffer use:

```
var render_scene_buffers = render_data.get_render_scene_buffers()
var depth_buffer = render_scene_buffers.get_texture("render_buffers", "depth")

```

* * *

[EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **effect\_callback\_type** [🔗](#class-compositoreffect-property-effect-callback-type)

- void **set\_effect\_callback\_type**(value: [EffectCallbackType](#enum-compositoreffect-effectcallbacktype))

- [EffectCallbackType](#enum-compositoreffect-effectcallbacktype) **get\_effect\_callback\_type**()


The type of effect that is implemented, determines at what stage of rendering the callback is called.

* * *

[bool](class_bool.md#class-bool) **enabled** [🔗](#class-compositoreffect-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enabled**()


If `true` this rendering effect is applied to any viewport it is added to.

* * *

[bool](class_bool.md#class-bool) **needs\_motion\_vectors** [🔗](#class-compositoreffect-property-needs-motion-vectors)

- void **set\_needs\_motion\_vectors**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_needs\_motion\_vectors**()


If `true` this triggers motion vectors being calculated during the opaque render state.

**Note:** In [\_render\_callback()](#class-compositoreffect-private-method-render-callback), to access the motion vector buffer use:

```
var render_scene_buffers = render_data.get_render_scene_buffers()
var motion_buffer = render_scene_buffers.get_velocity_texture()

```

* * *

[bool](class_bool.md#class-bool) **needs\_normal\_roughness** [🔗](#class-compositoreffect-property-needs-normal-roughness)

- void **set\_needs\_normal\_roughness**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_needs\_normal\_roughness**()


If `true` this triggers normal and roughness data to be output during our depth pre-pass, only applicable for the Forward+ renderer.

**Note:** In [\_render\_callback()](#class-compositoreffect-private-method-render-callback), to access the roughness buffer use:

```
var render_scene_buffers = render_data.get_render_scene_buffers()
var roughness_buffer = render_scene_buffers.get_texture("forward_clustered", "normal_roughness")

```

The raw normal and roughness buffer is stored in an optimized format, different than the one available in Spatial shaders. When sampling the buffer, a conversion function must be applied. Use this function, copied from [here](https://github.com/godotengine/godot/blob/da5f39889f155658cef7f7ec3cc1abb94e17d815/servers/rendering/renderer_rd/shaders/forward_clustered/scene_forward_clustered_inc.glsl#L334-L341):

```
vec4 normal_roughness_compatibility(vec4 p_normal_roughness) {
    float roughness = p_normal_roughness.w;
    if (roughness > 0.5) {
        roughness = 1.0 - roughness;
    }
    roughness /= (127.0 / 255.0);
    return vec4(normalize(p_normal_roughness.xyz * 2.0 - 1.0) * 0.5 + 0.5, roughness);
}

```

* * *

[bool](class_bool.md#class-bool) **needs\_separate\_specular** [🔗](#class-compositoreffect-property-needs-separate-specular)

- void **set\_needs\_separate\_specular**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_needs\_separate\_specular**()


If `true` this triggers specular data being rendered to a separate buffer and combined after effects have been applied, only applicable for the Forward+ renderer.

* * *

## Method Descriptions

void **\_render\_callback**(effect\_callback\_type: [int](class_int.md#class-int), render\_data: [RenderData](class_renderdata.md#class-renderdata)) virtual [🔗](#class-compositoreffect-private-method-render-callback)

Implement this function with your custom rendering code. `effect_callback_type` should always match the effect callback type you've specified in [effect\_callback\_type](#class-compositoreffect-property-effect-callback-type). `render_data` provides access to the rendering state, it is only valid during rendering and should not be stored.

[Previous](class_compositor.md "Compositor") [Next](class_compressedcubemap.md "CompressedCubemap")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_compositor.md "Compositor") [Next](class_compressedcubemap.md "CompressedCubemap")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).