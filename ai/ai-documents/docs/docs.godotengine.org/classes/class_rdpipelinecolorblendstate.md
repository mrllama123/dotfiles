---
title: RDPipelineColorBlendState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinecolorblendstate.html
crawled_at: "2026-08-13T10:25:28+12:00"
content_hash: 34eea58b5f254e1f2e1f95e89f3d9a7f84ae94d066db7b7d21ad089d27d4df6e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineColorBlendState

* * *

# RDPipelineColorBlendState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline color blend state (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [Array](class_array.md#class-array)\[ [RDPipelineColorBlendStateAttachment](class_rdpipelinecolorblendstateattachment.md#class-rdpipelinecolorblendstateattachment)\] | [attachments](#class-rdpipelinecolorblendstate-property-attachments) | `[]` |
| [Color](class_color.md#class-color) | [blend\_constant](#class-rdpipelinecolorblendstate-property-blend-constant) | `Color(0, 0, 0, 1)` |
| [bool](class_bool.md#class-bool) | [enable\_logic\_op](#class-rdpipelinecolorblendstate-property-enable-logic-op) | `false` |
| [LogicOperation](class_renderingdevice.md#enum-renderingdevice-logicoperation) | [logic\_op](#class-rdpipelinecolorblendstate-property-logic-op) | `0` |

* * *

## Property Descriptions

[Array](class_array.md#class-array)\[ [RDPipelineColorBlendStateAttachment](class_rdpipelinecolorblendstateattachment.md#class-rdpipelinecolorblendstateattachment)\] **attachments** = `[]` [🔗](#class-rdpipelinecolorblendstate-property-attachments)

- void **set\_attachments**(value: [Array](class_array.md#class-array)\[ [RDPipelineColorBlendStateAttachment](class_rdpipelinecolorblendstateattachment.md#class-rdpipelinecolorblendstateattachment)\])

- [Array](class_array.md#class-array)\[ [RDPipelineColorBlendStateAttachment](class_rdpipelinecolorblendstateattachment.md#class-rdpipelinecolorblendstateattachment)\] **get\_attachments**()


The attachments that are blended together.

* * *

[Color](class_color.md#class-color) **blend\_constant** = `Color(0, 0, 0, 1)` [🔗](#class-rdpipelinecolorblendstate-property-blend-constant)

- void **set\_blend\_constant**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_blend\_constant**()


The constant color to blend with. See also [RenderingDevice.draw\_list\_set\_blend\_constants()](class_renderingdevice.md#class-renderingdevice-method-draw-list-set-blend-constants).

* * *

[bool](class_bool.md#class-bool) **enable\_logic\_op** = `false` [🔗](#class-rdpipelinecolorblendstate-property-enable-logic-op)

- void **set\_enable\_logic\_op**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_logic\_op**()


If `true`, performs the logic operation defined in [logic\_op](#class-rdpipelinecolorblendstate-property-logic-op).

* * *

[LogicOperation](class_renderingdevice.md#enum-renderingdevice-logicoperation) **logic\_op** = `0` [🔗](#class-rdpipelinecolorblendstate-property-logic-op)

- void **set\_logic\_op**(value: [LogicOperation](class_renderingdevice.md#enum-renderingdevice-logicoperation))

- [LogicOperation](class_renderingdevice.md#enum-renderingdevice-logicoperation) **get\_logic\_op**()


The logic operation to perform for blending. Only effective if [enable\_logic\_op](#class-rdpipelinecolorblendstate-property-enable-logic-op) is `true`.

[Previous](class_rdframebufferpass.md "RDFramebufferPass") [Next](class_rdpipelinecolorblendstateattachment.md "RDPipelineColorBlendStateAttachment")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdframebufferpass.md "RDFramebufferPass") [Next](class_rdpipelinecolorblendstateattachment.md "RDPipelineColorBlendStateAttachment")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).