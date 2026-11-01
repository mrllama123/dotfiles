---
title: RDFramebufferPass — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdframebufferpass.html
crawled_at: "2026-08-13T10:23:08+12:00"
content_hash: 7e958cbda356c455327bd6bf83368d6ed1427a2650e5b1119039edcc5613ea9b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDFramebufferPass

* * *

# RDFramebufferPass

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Framebuffer pass attachment description (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

This class contains the list of attachment descriptions for a framebuffer pass. Each points with an index to a previously supplied list of texture attachments.

Multipass framebuffers can optimize some configurations in mobile. On desktop, they provide little to no advantage.

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [color\_attachments](#class-rdframebufferpass-property-color-attachments) | `PackedInt32Array()` |
| [int](class_int.md#class-int) | [depth\_attachment](#class-rdframebufferpass-property-depth-attachment) | `-1` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [input\_attachments](#class-rdframebufferpass-property-input-attachments) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [preserve\_attachments](#class-rdframebufferpass-property-preserve-attachments) | `PackedInt32Array()` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [resolve\_attachments](#class-rdframebufferpass-property-resolve-attachments) | `PackedInt32Array()` |

* * *

## Constants

**ATTACHMENT\_UNUSED** = `-1` [🔗](#class-rdframebufferpass-constant-attachment-unused)

Attachment is unused.

* * *

## Property Descriptions

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **color\_attachments** = `PackedInt32Array()` [🔗](#class-rdframebufferpass-property-color-attachments)

- void **set\_color\_attachments**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_color\_attachments**()


Color attachments in order starting from 0. If this attachment is not used by the shader, pass ATTACHMENT\_UNUSED to skip.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[int](class_int.md#class-int) **depth\_attachment** = `-1` [🔗](#class-rdframebufferpass-property-depth-attachment)

- void **set\_depth\_attachment**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_depth\_attachment**()


Depth attachment. ATTACHMENT\_UNUSED should be used if no depth buffer is required for this pass.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **input\_attachments** = `PackedInt32Array()` [🔗](#class-rdframebufferpass-property-input-attachments)

- void **set\_input\_attachments**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_input\_attachments**()


Used for multipass framebuffers (more than one render pass). Converts an attachment to an input. Make sure to also supply it properly in the [RDUniform](class_rduniform.md#class-rduniform) for the uniform set.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **preserve\_attachments** = `PackedInt32Array()` [🔗](#class-rdframebufferpass-property-preserve-attachments)

- void **set\_preserve\_attachments**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_preserve\_attachments**()


Attachments to preserve in this pass (otherwise they are erased).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **resolve\_attachments** = `PackedInt32Array()` [🔗](#class-rdframebufferpass-property-resolve-attachments)

- void **set\_resolve\_attachments**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_resolve\_attachments**()


If the color attachments are multisampled, non-multisampled resolve attachments can be provided.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

[Previous](class_rdattachmentformat.md "RDAttachmentFormat") [Next](class_rdpipelinecolorblendstate.md "RDPipelineColorBlendState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdattachmentformat.md "RDAttachmentFormat") [Next](class_rdpipelinecolorblendstate.md "RDPipelineColorBlendState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).