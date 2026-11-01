---
title: RDPipelineMultisampleState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinemultisamplestate.html
crawled_at: "2026-08-13T10:21:56+12:00"
content_hash: 3a858a06ed83c4854ad7fda7699275a47cf49aa908e43b9c80b49c70fe0642d8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineMultisampleState

* * *

# RDPipelineMultisampleState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline multisample state (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

**RDPipelineMultisampleState** is used to control how multisample or supersample antialiasing is being performed when rendering using [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enable\_alpha\_to\_coverage](#class-rdpipelinemultisamplestate-property-enable-alpha-to-coverage) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_alpha\_to\_one](#class-rdpipelinemultisamplestate-property-enable-alpha-to-one) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_sample\_shading](#class-rdpipelinemultisamplestate-property-enable-sample-shading) | `false` |
| [float](class_float.md#class-float) | [min\_sample\_shading](#class-rdpipelinemultisamplestate-property-min-sample-shading) | `0.0` |
| [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) | [sample\_count](#class-rdpipelinemultisamplestate-property-sample-count) | `0` |
| [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] | [sample\_masks](#class-rdpipelinemultisamplestate-property-sample-masks) | `[]` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enable\_alpha\_to\_coverage** = `false` [🔗](#class-rdpipelinemultisamplestate-property-enable-alpha-to-coverage)

- void **set\_enable\_alpha\_to\_coverage**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_alpha\_to\_coverage**()


If `true`, alpha to coverage is enabled. This generates a temporary coverage value based on the alpha component of the fragment's first color output. This allows alpha transparency to make use of multisample antialiasing.

* * *

[bool](class_bool.md#class-bool) **enable\_alpha\_to\_one** = `false` [🔗](#class-rdpipelinemultisamplestate-property-enable-alpha-to-one)

- void **set\_enable\_alpha\_to\_one**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_alpha\_to\_one**()


If `true`, alpha is forced to either `0.0` or `1.0`. This allows hardening the edges of antialiased alpha transparencies. Only relevant if [enable\_alpha\_to\_coverage](#class-rdpipelinemultisamplestate-property-enable-alpha-to-coverage) is `true`.

* * *

[bool](class_bool.md#class-bool) **enable\_sample\_shading** = `false` [🔗](#class-rdpipelinemultisamplestate-property-enable-sample-shading)

- void **set\_enable\_sample\_shading**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_sample\_shading**()


If `true`, enables per-sample shading which replaces MSAA by SSAA. This provides higher quality antialiasing that works with transparent (alpha scissor) edges. This has a very high performance cost. See also [min\_sample\_shading](#class-rdpipelinemultisamplestate-property-min-sample-shading). See the [per-sample shading Vulkan documentation](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading) for more details.

* * *

[float](class_float.md#class-float) **min\_sample\_shading** = `0.0` [🔗](#class-rdpipelinemultisamplestate-property-min-sample-shading)

- void **set\_min\_sample\_shading**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_min\_sample\_shading**()


The multiplier of [sample\_count](#class-rdpipelinemultisamplestate-property-sample-count) that determines how many samples are performed for each fragment. Must be between `0.0` and `1.0` (inclusive). Only effective if [enable\_sample\_shading](#class-rdpipelinemultisamplestate-property-enable-sample-shading) is `true`. If [min\_sample\_shading](#class-rdpipelinemultisamplestate-property-min-sample-shading) is `1.0`, fragment invocation must only read from the coverage index sample. Tile image access must not be used if [enable\_sample\_shading](#class-rdpipelinemultisamplestate-property-enable-sample-shading) is _not_ `1.0`.

* * *

[TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **sample\_count** = `0` [🔗](#class-rdpipelinemultisamplestate-property-sample-count)

- void **set\_sample\_count**(value: [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples))

- [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **get\_sample\_count**()


The number of MSAA samples (or SSAA samples if [enable\_sample\_shading](#class-rdpipelinemultisamplestate-property-enable-sample-shading) is `true`) to perform. Higher values result in better antialiasing, at the cost of performance.

* * *

[Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **sample\_masks** = `[]` [🔗](#class-rdpipelinemultisamplestate-property-sample-masks)

- void **set\_sample\_masks**(value: [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\])

- [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **get\_sample\_masks**()


The sample mask array. See the [sample mask Vulkan documentation](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask) for more details.

[Previous](class_rdpipelinedepthstencilstate.md "RDPipelineDepthStencilState") [Next](class_rdpipelinerasterizationstate.md "RDPipelineRasterizationState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinedepthstencilstate.md "RDPipelineDepthStencilState") [Next](class_rdpipelinerasterizationstate.md "RDPipelineRasterizationState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).