---
title: RDPipelineColorBlendStateAttachment — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinecolorblendstateattachment.html
crawled_at: "2026-08-13T10:25:39+12:00"
content_hash: 4b41c7d46bd9971134526ba1078812f4211a0de85efdd81ec51667d2429a651d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineColorBlendStateAttachment

* * *

# RDPipelineColorBlendStateAttachment

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline color blend state attachment (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

Controls how blending between source and destination fragments is performed when using [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

For reference, this is how common user-facing blend modes are implemented in Godot's 2D renderer:

**Mix:**

```
var attachment = RDPipelineColorBlendStateAttachment.new()
attachment.enable_blend = true
attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

```

**Add:**

```
var attachment = RDPipelineColorBlendStateAttachment.new()
attachment.enable_blend = true
attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

```

**Subtract:**

```
var attachment = RDPipelineColorBlendStateAttachment.new()
attachment.enable_blend = true
attachment.alpha_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
attachment.color_blend_op = RenderingDevice.BLEND_OP_REVERSE_SUBTRACT
attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_SRC_ALPHA
attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE

```

**Multiply:**

```
var attachment = RDPipelineColorBlendStateAttachment.new()
attachment.enable_blend = true
attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_DST_COLOR
attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO
attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_DST_ALPHA
attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ZERO

```

**Pre-multiplied alpha:**

```
var attachment = RDPipelineColorBlendStateAttachment.new()
attachment.enable_blend = true
attachment.alpha_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.color_blend_op = RenderingDevice.BLEND_OP_ADD
attachment.src_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
attachment.dst_color_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
attachment.src_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE
attachment.dst_alpha_blend_factor = RenderingDevice.BLEND_FACTOR_ONE_MINUS_SRC_ALPHA

```

## Properties

|     |     |     |
| --- | --- | --- |
| [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) | [alpha\_blend\_op](#class-rdpipelinecolorblendstateattachment-property-alpha-blend-op) | `0` |
| [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) | [color\_blend\_op](#class-rdpipelinecolorblendstateattachment-property-color-blend-op) | `0` |
| [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) | [dst\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-alpha-blend-factor) | `0` |
| [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) | [dst\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-color-blend-factor) | `0` |
| [bool](class_bool.md#class-bool) | [enable\_blend](#class-rdpipelinecolorblendstateattachment-property-enable-blend) | `false` |
| [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) | [src\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-alpha-blend-factor) | `0` |
| [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) | [src\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-color-blend-factor) | `0` |
| [bool](class_bool.md#class-bool) | [write\_a](#class-rdpipelinecolorblendstateattachment-property-write-a) | `true` |
| [bool](class_bool.md#class-bool) | [write\_b](#class-rdpipelinecolorblendstateattachment-property-write-b) | `true` |
| [bool](class_bool.md#class-bool) | [write\_g](#class-rdpipelinecolorblendstateattachment-property-write-g) | `true` |
| [bool](class_bool.md#class-bool) | [write\_r](#class-rdpipelinecolorblendstateattachment-property-write-r) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [set\_as\_mix](#class-rdpipelinecolorblendstateattachment-method-set-as-mix)() |

* * *

## Property Descriptions

[BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) **alpha\_blend\_op** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-alpha-blend-op)

- void **set\_alpha\_blend\_op**(value: [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation))

- [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) **get\_alpha\_blend\_op**()


The blend mode to use for the alpha channel.

* * *

[BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) **color\_blend\_op** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-color-blend-op)

- void **set\_color\_blend\_op**(value: [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation))

- [BlendOperation](class_renderingdevice.md#enum-renderingdevice-blendoperation) **get\_color\_blend\_op**()


The blend mode to use for the red/green/blue color channels.

* * *

[BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **dst\_alpha\_blend\_factor** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-dst-alpha-blend-factor)

- void **set\_dst\_alpha\_blend\_factor**(value: [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor))

- [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **get\_dst\_alpha\_blend\_factor**()


Controls how the blend factor for the alpha channel is determined based on the destination's fragments.

* * *

[BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **dst\_color\_blend\_factor** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-dst-color-blend-factor)

- void **set\_dst\_color\_blend\_factor**(value: [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor))

- [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **get\_dst\_color\_blend\_factor**()


Controls how the blend factor for the color channels is determined based on the destination's fragments.

* * *

[bool](class_bool.md#class-bool) **enable\_blend** = `false` [🔗](#class-rdpipelinecolorblendstateattachment-property-enable-blend)

- void **set\_enable\_blend**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_blend**()


If `true`, performs blending between the source and destination according to the factors defined in [src\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-color-blend-factor), [dst\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-color-blend-factor), [src\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-alpha-blend-factor) and [dst\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-alpha-blend-factor). The blend modes [color\_blend\_op](#class-rdpipelinecolorblendstateattachment-property-color-blend-op) and [alpha\_blend\_op](#class-rdpipelinecolorblendstateattachment-property-alpha-blend-op) are also taken into account, with [write\_r](#class-rdpipelinecolorblendstateattachment-property-write-r), [write\_g](#class-rdpipelinecolorblendstateattachment-property-write-g), [write\_b](#class-rdpipelinecolorblendstateattachment-property-write-b) and [write\_a](#class-rdpipelinecolorblendstateattachment-property-write-a) controlling the output.

* * *

[BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **src\_alpha\_blend\_factor** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-src-alpha-blend-factor)

- void **set\_src\_alpha\_blend\_factor**(value: [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor))

- [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **get\_src\_alpha\_blend\_factor**()


Controls how the blend factor for the alpha channel is determined based on the source's fragments.

* * *

[BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **src\_color\_blend\_factor** = `0` [🔗](#class-rdpipelinecolorblendstateattachment-property-src-color-blend-factor)

- void **set\_src\_color\_blend\_factor**(value: [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor))

- [BlendFactor](class_renderingdevice.md#enum-renderingdevice-blendfactor) **get\_src\_color\_blend\_factor**()


Controls how the blend factor for the color channels is determined based on the source's fragments.

* * *

[bool](class_bool.md#class-bool) **write\_a** = `true` [🔗](#class-rdpipelinecolorblendstateattachment-property-write-a)

- void **set\_write\_a**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_write\_a**()


If `true`, writes the new alpha channel to the final result.

* * *

[bool](class_bool.md#class-bool) **write\_b** = `true` [🔗](#class-rdpipelinecolorblendstateattachment-property-write-b)

- void **set\_write\_b**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_write\_b**()


If `true`, writes the new blue color channel to the final result.

* * *

[bool](class_bool.md#class-bool) **write\_g** = `true` [🔗](#class-rdpipelinecolorblendstateattachment-property-write-g)

- void **set\_write\_g**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_write\_g**()


If `true`, writes the new green color channel to the final result.

* * *

[bool](class_bool.md#class-bool) **write\_r** = `true` [🔗](#class-rdpipelinecolorblendstateattachment-property-write-r)

- void **set\_write\_r**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_write\_r**()


If `true`, writes the new red color channel to the final result.

* * *

## Method Descriptions

void **set\_as\_mix**() [🔗](#class-rdpipelinecolorblendstateattachment-method-set-as-mix)

Convenience method to perform standard mix blending with straight (non-premultiplied) alpha. This sets [enable\_blend](#class-rdpipelinecolorblendstateattachment-property-enable-blend) to `true`, [src\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-color-blend-factor) to [RenderingDevice.BLEND\_FACTOR\_SRC\_ALPHA](class_renderingdevice.md#class-renderingdevice-constant-blend-factor-src-alpha), [dst\_color\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-color-blend-factor) to [RenderingDevice.BLEND\_FACTOR\_ONE\_MINUS\_SRC\_ALPHA](class_renderingdevice.md#class-renderingdevice-constant-blend-factor-one-minus-src-alpha), [src\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-src-alpha-blend-factor) to [RenderingDevice.BLEND\_FACTOR\_SRC\_ALPHA](class_renderingdevice.md#class-renderingdevice-constant-blend-factor-src-alpha) and [dst\_alpha\_blend\_factor](#class-rdpipelinecolorblendstateattachment-property-dst-alpha-blend-factor) to [RenderingDevice.BLEND\_FACTOR\_ONE\_MINUS\_SRC\_ALPHA](class_renderingdevice.md#class-renderingdevice-constant-blend-factor-one-minus-src-alpha).

[Previous](class_rdpipelinecolorblendstate.md "RDPipelineColorBlendState") [Next](class_rdpipelinedepthstencilstate.md "RDPipelineDepthStencilState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinecolorblendstate.md "RDPipelineColorBlendState") [Next](class_rdpipelinedepthstencilstate.md "RDPipelineDepthStencilState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).