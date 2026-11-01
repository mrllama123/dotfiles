---
title: RDPipelineDepthStencilState — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdpipelinedepthstencilstate.html
crawled_at: "2026-08-13T10:32:01+12:00"
content_hash: 65adb857bb04995364f12ab6b238514a1ba7aab80a60eb69688c7ae991941b34
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDPipelineDepthStencilState

* * *

# RDPipelineDepthStencilState

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Pipeline depth/stencil state (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

**RDPipelineDepthStencilState** controls the way depth and stencil comparisons are performed when sampling those values using [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) | [back\_op\_compare](#class-rdpipelinedepthstencilstate-property-back-op-compare) | `7` |
| [int](class_int.md#class-int) | [back\_op\_compare\_mask](#class-rdpipelinedepthstencilstate-property-back-op-compare-mask) | `0` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [back\_op\_depth\_fail](#class-rdpipelinedepthstencilstate-property-back-op-depth-fail) | `1` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [back\_op\_fail](#class-rdpipelinedepthstencilstate-property-back-op-fail) | `1` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [back\_op\_pass](#class-rdpipelinedepthstencilstate-property-back-op-pass) | `1` |
| [int](class_int.md#class-int) | [back\_op\_reference](#class-rdpipelinedepthstencilstate-property-back-op-reference) | `0` |
| [int](class_int.md#class-int) | [back\_op\_write\_mask](#class-rdpipelinedepthstencilstate-property-back-op-write-mask) | `0` |
| [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) | [depth\_compare\_operator](#class-rdpipelinedepthstencilstate-property-depth-compare-operator) | `7` |
| [float](class_float.md#class-float) | [depth\_range\_max](#class-rdpipelinedepthstencilstate-property-depth-range-max) | `0.0` |
| [float](class_float.md#class-float) | [depth\_range\_min](#class-rdpipelinedepthstencilstate-property-depth-range-min) | `0.0` |
| [bool](class_bool.md#class-bool) | [enable\_depth\_range](#class-rdpipelinedepthstencilstate-property-enable-depth-range) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_depth\_test](#class-rdpipelinedepthstencilstate-property-enable-depth-test) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_depth\_write](#class-rdpipelinedepthstencilstate-property-enable-depth-write) | `false` |
| [bool](class_bool.md#class-bool) | [enable\_stencil](#class-rdpipelinedepthstencilstate-property-enable-stencil) | `false` |
| [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) | [front\_op\_compare](#class-rdpipelinedepthstencilstate-property-front-op-compare) | `7` |
| [int](class_int.md#class-int) | [front\_op\_compare\_mask](#class-rdpipelinedepthstencilstate-property-front-op-compare-mask) | `0` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [front\_op\_depth\_fail](#class-rdpipelinedepthstencilstate-property-front-op-depth-fail) | `1` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [front\_op\_fail](#class-rdpipelinedepthstencilstate-property-front-op-fail) | `1` |
| [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) | [front\_op\_pass](#class-rdpipelinedepthstencilstate-property-front-op-pass) | `1` |
| [int](class_int.md#class-int) | [front\_op\_reference](#class-rdpipelinedepthstencilstate-property-front-op-reference) | `0` |
| [int](class_int.md#class-int) | [front\_op\_write\_mask](#class-rdpipelinedepthstencilstate-property-front-op-write-mask) | `0` |

* * *

## Property Descriptions

[CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **back\_op\_compare** = `7` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-compare)

- void **set\_back\_op\_compare**(value: [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator))

- [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **get\_back\_op\_compare**()


The method used for comparing the previous back stencil value and [back\_op\_reference](#class-rdpipelinedepthstencilstate-property-back-op-reference).

* * *

[int](class_int.md#class-int) **back\_op\_compare\_mask** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-compare-mask)

- void **set\_back\_op\_compare\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_back\_op\_compare\_mask**()


Selects which bits from the back stencil value will be compared.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **back\_op\_depth\_fail** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-depth-fail)

- void **set\_back\_op\_depth\_fail**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_back\_op\_depth\_fail**()


The operation to perform on the stencil buffer for back pixels that pass the stencil test but fail the depth test.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **back\_op\_fail** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-fail)

- void **set\_back\_op\_fail**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_back\_op\_fail**()


The operation to perform on the stencil buffer for back pixels that fail the stencil test.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **back\_op\_pass** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-pass)

- void **set\_back\_op\_pass**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_back\_op\_pass**()


The operation to perform on the stencil buffer for back pixels that pass the stencil test.

* * *

[int](class_int.md#class-int) **back\_op\_reference** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-reference)

- void **set\_back\_op\_reference**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_back\_op\_reference**()


The value the previous back stencil value will be compared to.

* * *

[int](class_int.md#class-int) **back\_op\_write\_mask** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-back-op-write-mask)

- void **set\_back\_op\_write\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_back\_op\_write\_mask**()


Selects which bits from the back stencil value will be changed.

* * *

[CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **depth\_compare\_operator** = `7` [🔗](#class-rdpipelinedepthstencilstate-property-depth-compare-operator)

- void **set\_depth\_compare\_operator**(value: [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator))

- [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **get\_depth\_compare\_operator**()


The method used for comparing the previous and current depth values.

* * *

[float](class_float.md#class-float) **depth\_range\_max** = `0.0` [🔗](#class-rdpipelinedepthstencilstate-property-depth-range-max)

- void **set\_depth\_range\_max**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_range\_max**()


The maximum depth that returns `true` for [enable\_depth\_range](#class-rdpipelinedepthstencilstate-property-enable-depth-range).

* * *

[float](class_float.md#class-float) **depth\_range\_min** = `0.0` [🔗](#class-rdpipelinedepthstencilstate-property-depth-range-min)

- void **set\_depth\_range\_min**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_range\_min**()


The minimum depth that returns `true` for [enable\_depth\_range](#class-rdpipelinedepthstencilstate-property-enable-depth-range).

* * *

[bool](class_bool.md#class-bool) **enable\_depth\_range** = `false` [🔗](#class-rdpipelinedepthstencilstate-property-enable-depth-range)

- void **set\_enable\_depth\_range**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_depth\_range**()


If `true`, each depth value will be tested to see if it is between [depth\_range\_min](#class-rdpipelinedepthstencilstate-property-depth-range-min) and [depth\_range\_max](#class-rdpipelinedepthstencilstate-property-depth-range-max). If it is outside of these values, it is discarded.

* * *

[bool](class_bool.md#class-bool) **enable\_depth\_test** = `false` [🔗](#class-rdpipelinedepthstencilstate-property-enable-depth-test)

- void **set\_enable\_depth\_test**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_depth\_test**()


If `true`, enables depth testing which allows objects to be automatically occluded by other objects based on their depth. This also allows objects to be partially occluded by other objects. If `false`, objects will appear in the order they were drawn (like in Godot's 2D renderer).

* * *

[bool](class_bool.md#class-bool) **enable\_depth\_write** = `false` [🔗](#class-rdpipelinedepthstencilstate-property-enable-depth-write)

- void **set\_enable\_depth\_write**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_depth\_write**()


If `true`, writes to the depth buffer whenever the depth test returns `true`. Only works when enable\_depth\_test is also `true`.

* * *

[bool](class_bool.md#class-bool) **enable\_stencil** = `false` [🔗](#class-rdpipelinedepthstencilstate-property-enable-stencil)

- void **set\_enable\_stencil**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_stencil**()


If `true`, enables stencil testing. There are separate stencil buffers for front-facing triangles and back-facing triangles. See properties that begin with "front\_op" and properties with "back\_op" for each.

* * *

[CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **front\_op\_compare** = `7` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-compare)

- void **set\_front\_op\_compare**(value: [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator))

- [CompareOperator](class_renderingdevice.md#enum-renderingdevice-compareoperator) **get\_front\_op\_compare**()


The method used for comparing the previous front stencil value and [front\_op\_reference](#class-rdpipelinedepthstencilstate-property-front-op-reference).

* * *

[int](class_int.md#class-int) **front\_op\_compare\_mask** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-compare-mask)

- void **set\_front\_op\_compare\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_front\_op\_compare\_mask**()


Selects which bits from the front stencil value will be compared.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **front\_op\_depth\_fail** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-depth-fail)

- void **set\_front\_op\_depth\_fail**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_front\_op\_depth\_fail**()


The operation to perform on the stencil buffer for front pixels that pass the stencil test but fail the depth test.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **front\_op\_fail** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-fail)

- void **set\_front\_op\_fail**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_front\_op\_fail**()


The operation to perform on the stencil buffer for front pixels that fail the stencil test.

* * *

[StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **front\_op\_pass** = `1` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-pass)

- void **set\_front\_op\_pass**(value: [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation))

- [StencilOperation](class_renderingdevice.md#enum-renderingdevice-stenciloperation) **get\_front\_op\_pass**()


The operation to perform on the stencil buffer for front pixels that pass the stencil test.

* * *

[int](class_int.md#class-int) **front\_op\_reference** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-reference)

- void **set\_front\_op\_reference**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_front\_op\_reference**()


The value the previous front stencil value will be compared to.

* * *

[int](class_int.md#class-int) **front\_op\_write\_mask** = `0` [🔗](#class-rdpipelinedepthstencilstate-property-front-op-write-mask)

- void **set\_front\_op\_write\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_front\_op\_write\_mask**()


Selects which bits from the front stencil value will be changed.

[Previous](class_rdpipelinecolorblendstateattachment.md "RDPipelineColorBlendStateAttachment") [Next](class_rdpipelinemultisamplestate.md "RDPipelineMultisampleState")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdpipelinecolorblendstateattachment.md "RDPipelineColorBlendStateAttachment") [Next](class_rdpipelinemultisamplestate.md "RDPipelineMultisampleState")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).