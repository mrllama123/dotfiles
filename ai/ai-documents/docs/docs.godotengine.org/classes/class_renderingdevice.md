---
title: RenderingDevice — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderingdevice.html
crawled_at: "2026-08-13T10:41:56+12:00"
content_hash: 5dd75c1c3cd49eddc8e16676afa190b1b640cade20a90b898663ce49816642ab
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderingDevice

* * *

# RenderingDevice

**Inherits:** [Object](class_object.md#class-object)

Abstraction for working with modern low-level graphics APIs.

## Description

**RenderingDevice** is an abstraction for working with modern low-level graphics APIs such as Vulkan. Compared to [RenderingServer](class_renderingserver.md#class-renderingserver) (which works with Godot's own rendering subsystems), **RenderingDevice** is much lower-level and allows working more directly with the underlying graphics APIs. **RenderingDevice** is used in Godot to provide support for several modern low-level graphics APIs while reducing the amount of code duplication required. **RenderingDevice** can also be used in your own projects to perform things that are not exposed by [RenderingServer](class_renderingserver.md#class-renderingserver) or high-level nodes, such as using compute shaders.

On startup, Godot creates a global **RenderingDevice** which can be retrieved using [RenderingServer.get\_rendering\_device()](class_renderingserver.md#class-renderingserver-method-get-rendering-device). This global **RenderingDevice** performs drawing to the screen.

**Local RenderingDevices:** Using [RenderingServer.create\_local\_rendering\_device()](class_renderingserver.md#class-renderingserver-method-create-local-rendering-device), you can create "secondary" rendering devices to perform drawing and GPU compute operations on separate threads.

**Note:** **RenderingDevice** assumes intermediate knowledge of modern graphics APIs such as Vulkan, Direct3D 12, Metal or WebGPU. These graphics APIs are lower-level than OpenGL or Direct3D 11, requiring you to perform what was previously done by the graphics driver itself. If you have difficulty understanding the concepts used in this class, follow the [Vulkan Tutorial](https://vulkan-tutorial.com/) or [Vulkan Guide](https://vkguide.dev/). It's recommended to have existing modern OpenGL or Direct3D 11 knowledge before attempting to learn a low-level graphics API.

**Note:** **RenderingDevice** is not available when running in headless mode or when using the Compatibility rendering method.

## Tutorials

- [Using compute shaders](../tutorials/shaders/compute_shaders.md)


## Methods

|     |     |
| --- | --- |
| void | [barrier](#class-renderingdevice-method-barrier)(from: BitField\[ [BarrierMask](#enum-renderingdevice-barriermask)\] = 32767, to: BitField\[ [BarrierMask](#enum-renderingdevice-barriermask)\] = 32767) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [buffer\_clear](#class-renderingdevice-method-buffer-clear)(buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int), size\_bytes: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [buffer\_copy](#class-renderingdevice-method-buffer-copy)(src\_buffer: [RID](class_rid.md#class-rid), dst\_buffer: [RID](class_rid.md#class-rid), src\_offset: [int](class_int.md#class-int), dst\_offset: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [buffer\_get\_data](#class-renderingdevice-method-buffer-get-data)(buffer: [RID](class_rid.md#class-rid), offset\_bytes: [int](class_int.md#class-int) = 0, size\_bytes: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [buffer\_get\_data\_async](#class-renderingdevice-method-buffer-get-data-async)(buffer: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable), offset\_bytes: [int](class_int.md#class-int) = 0, size\_bytes: [int](class_int.md#class-int) = 0) |
| [int](class_int.md#class-int) | [buffer\_get\_device\_address](#class-renderingdevice-method-buffer-get-device-address)(buffer: [RID](class_rid.md#class-rid)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [buffer\_update](#class-renderingdevice-method-buffer-update)(buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int), size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [capture\_timestamp](#class-renderingdevice-method-capture-timestamp)(name: [String](class_string.md#class-string)) |
| void | [compute\_list\_add\_barrier](#class-renderingdevice-method-compute-list-add-barrier)(compute\_list: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [compute\_list\_begin](#class-renderingdevice-method-compute-list-begin)() |
| void | [compute\_list\_bind\_compute\_pipeline](#class-renderingdevice-method-compute-list-bind-compute-pipeline)(compute\_list: [int](class_int.md#class-int), compute\_pipeline: [RID](class_rid.md#class-rid)) |
| void | [compute\_list\_bind\_uniform\_set](#class-renderingdevice-method-compute-list-bind-uniform-set)(compute\_list: [int](class_int.md#class-int), uniform\_set: [RID](class_rid.md#class-rid), set\_index: [int](class_int.md#class-int)) |
| void | [compute\_list\_dispatch](#class-renderingdevice-method-compute-list-dispatch)(compute\_list: [int](class_int.md#class-int), x\_groups: [int](class_int.md#class-int), y\_groups: [int](class_int.md#class-int), z\_groups: [int](class_int.md#class-int)) |
| void | [compute\_list\_dispatch\_indirect](#class-renderingdevice-method-compute-list-dispatch-indirect)(compute\_list: [int](class_int.md#class-int), buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int)) |
| void | [compute\_list\_end](#class-renderingdevice-method-compute-list-end)() |
| void | [compute\_list\_set\_push\_constant](#class-renderingdevice-method-compute-list-set-push-constant)(compute\_list: [int](class_int.md#class-int), buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), size\_bytes: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [compute\_pipeline\_create](#class-renderingdevice-method-compute-pipeline-create)(shader: [RID](class_rid.md#class-rid), specialization\_constants: [Array](class_array.md#class-array)\[ [RDPipelineSpecializationConstant](class_rdpipelinespecializationconstant.md#class-rdpipelinespecializationconstant)\] = \[\]) |
| [bool](class_bool.md#class-bool) | [compute\_pipeline\_is\_valid](#class-renderingdevice-method-compute-pipeline-is-valid)(compute\_pipeline: [RID](class_rid.md#class-rid)) |
| [RenderingDevice](#class-renderingdevice) | [create\_local\_device](#class-renderingdevice-method-create-local-device)() |
| void | [draw\_command\_begin\_label](#class-renderingdevice-method-draw-command-begin-label)(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) |
| void | [draw\_command\_end\_label](#class-renderingdevice-method-draw-command-end-label)() |
| void | [draw\_command\_insert\_label](#class-renderingdevice-method-draw-command-insert-label)(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) |
| [int](class_int.md#class-int) | [draw\_list\_begin](#class-renderingdevice-method-draw-list-begin)(framebuffer: [RID](class_rid.md#class-rid), draw\_flags: BitField\[ [DrawFlags](#enum-renderingdevice-drawflags)\] = 0, clear\_color\_values: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), clear\_depth\_value: [float](class_float.md#class-float) = 1.0, clear\_stencil\_value: [int](class_int.md#class-int) = 0, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), breadcrumb: [int](class_int.md#class-int) = 0) |
| [int](class_int.md#class-int) | [draw\_list\_begin\_for\_screen](#class-renderingdevice-method-draw-list-begin-for-screen)(screen: [int](class_int.md#class-int) = 0, clear\_color: [Color](class_color.md#class-color) = Color(0, 0, 0, 1)) |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [draw\_list\_begin\_split](#class-renderingdevice-method-draw-list-begin-split)(framebuffer: [RID](class_rid.md#class-rid), splits: [int](class_int.md#class-int), initial\_color\_action: [InitialAction](#enum-renderingdevice-initialaction), final\_color\_action: [FinalAction](#enum-renderingdevice-finalaction), initial\_depth\_action: [InitialAction](#enum-renderingdevice-initialaction), final\_depth\_action: [FinalAction](#enum-renderingdevice-finalaction), clear\_color\_values: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), clear\_depth: [float](class_float.md#class-float) = 1.0, clear\_stencil: [int](class_int.md#class-int) = 0, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), storage\_textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) |
| void | [draw\_list\_bind\_index\_array](#class-renderingdevice-method-draw-list-bind-index-array)(draw\_list: [int](class_int.md#class-int), index\_array: [RID](class_rid.md#class-rid)) |
| void | [draw\_list\_bind\_render\_pipeline](#class-renderingdevice-method-draw-list-bind-render-pipeline)(draw\_list: [int](class_int.md#class-int), render\_pipeline: [RID](class_rid.md#class-rid)) |
| void | [draw\_list\_bind\_uniform\_set](#class-renderingdevice-method-draw-list-bind-uniform-set)(draw\_list: [int](class_int.md#class-int), uniform\_set: [RID](class_rid.md#class-rid), set\_index: [int](class_int.md#class-int)) |
| void | [draw\_list\_bind\_vertex\_array](#class-renderingdevice-method-draw-list-bind-vertex-array)(draw\_list: [int](class_int.md#class-int), vertex\_array: [RID](class_rid.md#class-rid)) |
| void | [draw\_list\_disable\_scissor](#class-renderingdevice-method-draw-list-disable-scissor)(draw\_list: [int](class_int.md#class-int)) |
| void | [draw\_list\_draw](#class-renderingdevice-method-draw-list-draw)(draw\_list: [int](class_int.md#class-int), use\_indices: [bool](class_bool.md#class-bool), instances: [int](class_int.md#class-int), procedural\_vertex\_count: [int](class_int.md#class-int) = 0) |
| void | [draw\_list\_draw\_indirect](#class-renderingdevice-method-draw-list-draw-indirect)(draw\_list: [int](class_int.md#class-int), use\_indices: [bool](class_bool.md#class-bool), buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int) = 0, draw\_count: [int](class_int.md#class-int) = 1, stride: [int](class_int.md#class-int) = 0) |
| void | [draw\_list\_enable\_scissor](#class-renderingdevice-method-draw-list-enable-scissor)(draw\_list: [int](class_int.md#class-int), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0)) |
| void | [draw\_list\_end](#class-renderingdevice-method-draw-list-end)() |
| void | [draw\_list\_set\_blend\_constants](#class-renderingdevice-method-draw-list-set-blend-constants)(draw\_list: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) |
| void | [draw\_list\_set\_push\_constant](#class-renderingdevice-method-draw-list-set-push-constant)(draw\_list: [int](class_int.md#class-int), buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), size\_bytes: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [draw\_list\_switch\_to\_next\_pass](#class-renderingdevice-method-draw-list-switch-to-next-pass)() |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [draw\_list\_switch\_to\_next\_pass\_split](#class-renderingdevice-method-draw-list-switch-to-next-pass-split)(splits: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [framebuffer\_create](#class-renderingdevice-method-framebuffer-create)(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], validate\_with\_format: [int](class_int.md#class-int) = -1, view\_count: [int](class_int.md#class-int) = 1) |
| [RID](class_rid.md#class-rid) | [framebuffer\_create\_empty](#class-renderingdevice-method-framebuffer-create-empty)(size: [Vector2i](class_vector2i.md#class-vector2i), samples: [TextureSamples](#enum-renderingdevice-texturesamples) = 0, validate\_with\_format: [int](class_int.md#class-int) = -1) |
| [RID](class_rid.md#class-rid) | [framebuffer\_create\_multipass](#class-renderingdevice-method-framebuffer-create-multipass)(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], validate\_with\_format: [int](class_int.md#class-int) = -1, view\_count: [int](class_int.md#class-int) = 1) |
| [int](class_int.md#class-int) | [framebuffer\_format\_create](#class-renderingdevice-method-framebuffer-format-create)(attachments: [Array](class_array.md#class-array)\[ [RDAttachmentFormat](class_rdattachmentformat.md#class-rdattachmentformat)\], view\_count: [int](class_int.md#class-int) = 1) |
| [int](class_int.md#class-int) | [framebuffer\_format\_create\_empty](#class-renderingdevice-method-framebuffer-format-create-empty)(samples: [TextureSamples](#enum-renderingdevice-texturesamples) = 0) |
| [int](class_int.md#class-int) | [framebuffer\_format\_create\_multipass](#class-renderingdevice-method-framebuffer-format-create-multipass)(attachments: [Array](class_array.md#class-array)\[ [RDAttachmentFormat](class_rdattachmentformat.md#class-rdattachmentformat)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], view\_count: [int](class_int.md#class-int) = 1) |
| [TextureSamples](#enum-renderingdevice-texturesamples) | [framebuffer\_format\_get\_texture\_samples](#class-renderingdevice-method-framebuffer-format-get-texture-samples)(format: [int](class_int.md#class-int), render\_pass: [int](class_int.md#class-int) = 0) |
| [int](class_int.md#class-int) | [framebuffer\_get\_format](#class-renderingdevice-method-framebuffer-get-format)(framebuffer: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [framebuffer\_is\_valid](#class-renderingdevice-method-framebuffer-is-valid)(framebuffer: [RID](class_rid.md#class-rid)) const |
| void | [free\_rid](#class-renderingdevice-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| void | [full\_barrier](#class-renderingdevice-method-full-barrier)() |
| [int](class_int.md#class-int) | [get\_captured\_timestamp\_cpu\_time](#class-renderingdevice-method-get-captured-timestamp-cpu-time)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_captured\_timestamp\_gpu\_time](#class-renderingdevice-method-get-captured-timestamp-gpu-time)(index: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_captured\_timestamp\_name](#class-renderingdevice-method-get-captured-timestamp-name)(index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_captured\_timestamps\_count](#class-renderingdevice-method-get-captured-timestamps-count)() const |
| [int](class_int.md#class-int) | [get\_captured\_timestamps\_frame](#class-renderingdevice-method-get-captured-timestamps-frame)() const |
| [int](class_int.md#class-int) | [get\_device\_allocation\_count](#class-renderingdevice-method-get-device-allocation-count)() const |
| [int](class_int.md#class-int) | [get\_device\_allocs\_by\_object\_type](#class-renderingdevice-method-get-device-allocs-by-object-type)(type: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_device\_memory\_by\_object\_type](#class-renderingdevice-method-get-device-memory-by-object-type)(type: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_device\_name](#class-renderingdevice-method-get-device-name)() const |
| [String](class_string.md#class-string) | [get\_device\_pipeline\_cache\_uuid](#class-renderingdevice-method-get-device-pipeline-cache-uuid)() const |
| [int](class_int.md#class-int) | [get\_device\_total\_memory](#class-renderingdevice-method-get-device-total-memory)() const |
| [String](class_string.md#class-string) | [get\_device\_vendor\_name](#class-renderingdevice-method-get-device-vendor-name)() const |
| [int](class_int.md#class-int) | [get\_driver\_allocation\_count](#class-renderingdevice-method-get-driver-allocation-count)() const |
| [int](class_int.md#class-int) | [get\_driver\_allocs\_by\_object\_type](#class-renderingdevice-method-get-driver-allocs-by-object-type)(type: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_driver\_and\_device\_memory\_report](#class-renderingdevice-method-get-driver-and-device-memory-report)() const |
| [int](class_int.md#class-int) | [get\_driver\_memory\_by\_object\_type](#class-renderingdevice-method-get-driver-memory-by-object-type)(type: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_driver\_resource](#class-renderingdevice-method-get-driver-resource)(resource: [DriverResource](#enum-renderingdevice-driverresource), rid: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_driver\_total\_memory](#class-renderingdevice-method-get-driver-total-memory)() const |
| [int](class_int.md#class-int) | [get\_frame\_delay](#class-renderingdevice-method-get-frame-delay)() const |
| [int](class_int.md#class-int) | [get\_memory\_usage](#class-renderingdevice-method-get-memory-usage)(type: [MemoryType](#enum-renderingdevice-memorytype)) const |
| [String](class_string.md#class-string) | [get\_perf\_report](#class-renderingdevice-method-get-perf-report)() const |
| [String](class_string.md#class-string) | [get\_tracked\_object\_name](#class-renderingdevice-method-get-tracked-object-name)(type\_index: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_tracked\_object\_type\_count](#class-renderingdevice-method-get-tracked-object-type-count)() const |
| [bool](class_bool.md#class-bool) | [has\_feature](#class-renderingdevice-method-has-feature)(feature: [Features](#enum-renderingdevice-features)) const |
| [RID](class_rid.md#class-rid) | [index\_array\_create](#class-renderingdevice-method-index-array-create)(index\_buffer: [RID](class_rid.md#class-rid), index\_offset: [int](class_int.md#class-int), index\_count: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [index\_buffer\_create](#class-renderingdevice-method-index-buffer-create)(size\_indices: [int](class_int.md#class-int), format: [IndexBufferFormat](#enum-renderingdevice-indexbufferformat), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), use\_restart\_indices: [bool](class_bool.md#class-bool) = false, creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) |
| [int](class_int.md#class-int) | [limit\_get](#class-renderingdevice-method-limit-get)(limit: [Limit](#enum-renderingdevice-limit)) const |
| [RID](class_rid.md#class-rid) | [render\_pipeline\_create](#class-renderingdevice-method-render-pipeline-create)(shader: [RID](class_rid.md#class-rid), framebuffer\_format: [int](class_int.md#class-int), vertex\_format: [int](class_int.md#class-int), primitive: [RenderPrimitive](#enum-renderingdevice-renderprimitive), rasterization\_state: [RDPipelineRasterizationState](class_rdpipelinerasterizationstate.md#class-rdpipelinerasterizationstate), multisample\_state: [RDPipelineMultisampleState](class_rdpipelinemultisamplestate.md#class-rdpipelinemultisamplestate), stencil\_state: [RDPipelineDepthStencilState](class_rdpipelinedepthstencilstate.md#class-rdpipelinedepthstencilstate), color\_blend\_state: [RDPipelineColorBlendState](class_rdpipelinecolorblendstate.md#class-rdpipelinecolorblendstate), dynamic\_state\_flags: BitField\[ [PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags)\] = 0, for\_render\_pass: [int](class_int.md#class-int) = 0, specialization\_constants: [Array](class_array.md#class-array)\[ [RDPipelineSpecializationConstant](class_rdpipelinespecializationconstant.md#class-rdpipelinespecializationconstant)\] = \[\]) |
| [bool](class_bool.md#class-bool) | [render\_pipeline\_is\_valid](#class-renderingdevice-method-render-pipeline-is-valid)(render\_pipeline: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [sampler\_create](#class-renderingdevice-method-sampler-create)(state: [RDSamplerState](class_rdsamplerstate.md#class-rdsamplerstate)) |
| [bool](class_bool.md#class-bool) | [sampler\_is\_format\_supported\_for\_filter](#class-renderingdevice-method-sampler-is-format-supported-for-filter)(format: [DataFormat](#enum-renderingdevice-dataformat), sampler\_filter: [SamplerFilter](#enum-renderingdevice-samplerfilter)) const |
| [int](class_int.md#class-int) | [screen\_get\_framebuffer\_format](#class-renderingdevice-method-screen-get-framebuffer-format)(screen: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [screen\_get\_height](#class-renderingdevice-method-screen-get-height)(screen: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [screen\_get\_width](#class-renderingdevice-method-screen-get-width)(screen: [int](class_int.md#class-int) = 0) const |
| void | [set\_resource\_name](#class-renderingdevice-method-set-resource-name)(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [shader\_compile\_binary\_from\_spirv](#class-renderingdevice-method-shader-compile-binary-from-spirv)(spirv\_data: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), name: [String](class_string.md#class-string) = "") |
| [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv) | [shader\_compile\_spirv\_from\_source](#class-renderingdevice-method-shader-compile-spirv-from-source)(shader\_source: [RDShaderSource](class_rdshadersource.md#class-rdshadersource), allow\_cache: [bool](class_bool.md#class-bool) = true) |
| [RID](class_rid.md#class-rid) | [shader\_create\_from\_bytecode](#class-renderingdevice-method-shader-create-from-bytecode)(binary\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), placeholder\_rid: [RID](class_rid.md#class-rid) = RID()) |
| [RID](class_rid.md#class-rid) | [shader\_create\_from\_spirv](#class-renderingdevice-method-shader-create-from-spirv)(spirv\_data: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), name: [String](class_string.md#class-string) = "") |
| [RID](class_rid.md#class-rid) | [shader\_create\_placeholder](#class-renderingdevice-method-shader-create-placeholder)() |
| [int](class_int.md#class-int) | [shader\_get\_vertex\_input\_attribute\_mask](#class-renderingdevice-method-shader-get-vertex-input-attribute-mask)(shader: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [storage\_buffer\_create](#class-renderingdevice-method-storage-buffer-create)(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), usage: BitField\[ [StorageBufferUsage](#enum-renderingdevice-storagebufferusage)\] = 0, creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) |
| void | [submit](#class-renderingdevice-method-submit)() |
| void | [sync](#class-renderingdevice-method-sync)() |
| [RID](class_rid.md#class-rid) | [texture\_buffer\_create](#class-renderingdevice-method-texture-buffer-create)(size\_bytes: [int](class_int.md#class-int), format: [DataFormat](#enum-renderingdevice-dataformat), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [texture\_clear](#class-renderingdevice-method-texture-clear)(texture: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color), base\_mipmap: [int](class_int.md#class-int), mipmap\_count: [int](class_int.md#class-int), base\_layer: [int](class_int.md#class-int), layer\_count: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [texture\_copy](#class-renderingdevice-method-texture-copy)(from\_texture: [RID](class_rid.md#class-rid), to\_texture: [RID](class_rid.md#class-rid), from\_pos: [Vector3](class_vector3.md#class-vector3), to\_pos: [Vector3](class_vector3.md#class-vector3), size: [Vector3](class_vector3.md#class-vector3), src\_mipmap: [int](class_int.md#class-int), dst\_mipmap: [int](class_int.md#class-int), src\_layer: [int](class_int.md#class-int), dst\_layer: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [texture\_create](#class-renderingdevice-method-texture-create)(format: [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), data: [Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\] = \[\]) |
| [RID](class_rid.md#class-rid) | [texture\_create\_from\_extension](#class-renderingdevice-method-texture-create-from-extension)(type: [TextureType](#enum-renderingdevice-texturetype), format: [DataFormat](#enum-renderingdevice-dataformat), samples: [TextureSamples](#enum-renderingdevice-texturesamples), usage\_flags: BitField\[ [TextureUsageBits](#enum-renderingdevice-textureusagebits)\], image: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int) = 1) |
| [RID](class_rid.md#class-rid) | [texture\_create\_shared](#class-renderingdevice-method-texture-create-shared)(view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), with\_texture: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [texture\_create\_shared\_from\_slice](#class-renderingdevice-method-texture-create-shared-from-slice)(view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), with\_texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int) = 1, slice\_type: [TextureSliceType](#enum-renderingdevice-textureslicetype) = 0) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [texture\_get\_data](#class-renderingdevice-method-texture-get-data)(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [texture\_get\_data\_async](#class-renderingdevice-method-texture-get-data-async)(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) |
| [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) | [texture\_get\_format](#class-renderingdevice-method-texture-get-format)(texture: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [texture\_get\_native\_handle](#class-renderingdevice-method-texture-get-native-handle)(texture: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [texture\_is\_discardable](#class-renderingdevice-method-texture-is-discardable)(texture: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [texture\_is\_format\_supported\_for\_usage](#class-renderingdevice-method-texture-is-format-supported-for-usage)(format: [DataFormat](#enum-renderingdevice-dataformat), usage\_flags: BitField\[ [TextureUsageBits](#enum-renderingdevice-textureusagebits)\]) const |
| [bool](class_bool.md#class-bool) | [texture\_is\_shared](#class-renderingdevice-method-texture-is-shared)(texture: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [texture\_is\_valid](#class-renderingdevice-method-texture-is-valid)(texture: [RID](class_rid.md#class-rid)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [texture\_resolve\_multisample](#class-renderingdevice-method-texture-resolve-multisample)(from\_texture: [RID](class_rid.md#class-rid), to\_texture: [RID](class_rid.md#class-rid)) |
| void | [texture\_set\_discardable](#class-renderingdevice-method-texture-set-discardable)(texture: [RID](class_rid.md#class-rid), discardable: [bool](class_bool.md#class-bool)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [texture\_update](#class-renderingdevice-method-texture-update)(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [RID](class_rid.md#class-rid) | [uniform\_buffer\_create](#class-renderingdevice-method-uniform-buffer-create)(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) |
| [RID](class_rid.md#class-rid) | [uniform\_set\_create](#class-renderingdevice-method-uniform-set-create)(uniforms: [Array](class_array.md#class-array)\[ [RDUniform](class_rduniform.md#class-rduniform)\], shader: [RID](class_rid.md#class-rid), shader\_set: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [uniform\_set\_is\_valid](#class-renderingdevice-method-uniform-set-is-valid)(uniform\_set: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [vertex\_array\_create](#class-renderingdevice-method-vertex-array-create)(vertex\_count: [int](class_int.md#class-int), vertex\_format: [int](class_int.md#class-int), src\_buffers: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], offsets: [PackedInt64Array](class_packedint64array.md#class-packedint64array) = PackedInt64Array()) |
| [RID](class_rid.md#class-rid) | [vertex\_buffer\_create](#class-renderingdevice-method-vertex-buffer-create)(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) |
| [int](class_int.md#class-int) | [vertex\_format\_create](#class-renderingdevice-method-vertex-format-create)(vertex\_descriptions: [Array](class_array.md#class-array)\[ [RDVertexAttribute](class_rdvertexattribute.md#class-rdvertexattribute)\]) |

* * *

## Enumerations

enum **DeviceType**: [🔗](#enum-renderingdevice-devicetype)

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_OTHER** = `0`

Rendering device type does not match any of the other enum values or is unknown.

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_INTEGRATED\_GPU** = `1`

Rendering device is an integrated GPU, which is typically _(but not always)_ slower than dedicated GPUs ( [DEVICE\_TYPE\_DISCRETE\_GPU](#class-renderingdevice-constant-device-type-discrete-gpu)). On Android and iOS, the rendering device type is always considered to be [DEVICE\_TYPE\_INTEGRATED\_GPU](#class-renderingdevice-constant-device-type-integrated-gpu).

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_DISCRETE\_GPU** = `2`

Rendering device is a dedicated GPU, which is typically _(but not always)_ faster than integrated GPUs ( [DEVICE\_TYPE\_INTEGRATED\_GPU](#class-renderingdevice-constant-device-type-integrated-gpu)).

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_VIRTUAL\_GPU** = `3`

Rendering device is an emulated GPU in a virtual environment. This is typically much slower than the host GPU, which means the expected performance level on a dedicated GPU will be roughly equivalent to [DEVICE\_TYPE\_INTEGRATED\_GPU](#class-renderingdevice-constant-device-type-integrated-gpu). Virtual machine GPU passthrough (such as VFIO) will not report the device type as [DEVICE\_TYPE\_VIRTUAL\_GPU](#class-renderingdevice-constant-device-type-virtual-gpu). Instead, the host GPU's device type will be reported as if the GPU was not emulated.

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_CPU** = `4`

Rendering device is provided by software emulation (such as Lavapipe or [SwiftShader](https://github.com/google/swiftshader)). This is the slowest kind of rendering device available; it's typically much slower than [DEVICE\_TYPE\_INTEGRATED\_GPU](#class-renderingdevice-constant-device-type-integrated-gpu).

[DeviceType](#enum-renderingdevice-devicetype) **DEVICE\_TYPE\_MAX** = `5`

Represents the size of the [DeviceType](#enum-renderingdevice-devicetype) enum.

* * *

enum **DriverResource**: [🔗](#enum-renderingdevice-driverresource)

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_LOGICAL\_DEVICE** = `0`

Specific device object based on a physical device ( `rid` parameter is ignored).

- Vulkan: Vulkan device driver resource ( `VkDevice`).

- D3D12: D3D12 device driver resource ( `ID3D12Device`).

- Metal: Metal device driver resource ( `MTLDevice`).


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_PHYSICAL\_DEVICE** = `1`

Physical device the specific logical device is based on ( `rid` parameter is ignored).

- Vulkan: `VkPhysicalDevice`.

- D3D12: `IDXGIAdapter`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_TOPMOST\_OBJECT** = `2`

Top-most graphics API entry object ( `rid` parameter is ignored).

- Vulkan: `VkInstance`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_COMMAND\_QUEUE** = `3`

The main graphics-compute command queue ( `rid` parameter is ignored).

- Vulkan: `VkQueue`.

- Metal: `MTLCommandQueue`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_QUEUE\_FAMILY** = `4`

The specific family the main queue belongs to ( `rid` parameter is ignored).

- Vulkan: The queue family index, a `uint32_t`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_TEXTURE** = `5`

- Vulkan: `VkImage`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_TEXTURE\_VIEW** = `6`

The view of an owned or shared texture.

- Vulkan: `VkImageView`.

- D3D12: `ID3D12Resource`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_TEXTURE\_DATA\_FORMAT** = `7`

The native id of the data format of the texture.

- Vulkan: `VkFormat`.

- D3D12: `DXGI_FORMAT`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_SAMPLER** = `8`

- Vulkan: `VkSampler`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_UNIFORM\_SET** = `9`

- Vulkan: `VkDescriptorSet`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_BUFFER** = `10`

Buffer of any kind of (storage, vertex, etc.).

- Vulkan: `VkBuffer`.

- D3D12: `ID3D12Resource`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_COMPUTE\_PIPELINE** = `11`

- Vulkan: `VkPipeline`.

- Metal: `MTLComputePipelineState`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_RENDER\_PIPELINE** = `12`

- Vulkan: `VkPipeline`.

- Metal: `MTLRenderPipelineState`.


[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_DEVICE** = `0`

**Deprecated:** Use [DRIVER\_RESOURCE\_LOGICAL\_DEVICE](#class-renderingdevice-constant-driver-resource-logical-device) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_PHYSICAL\_DEVICE** = `1`

**Deprecated:** Use [DRIVER\_RESOURCE\_PHYSICAL\_DEVICE](#class-renderingdevice-constant-driver-resource-physical-device) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_INSTANCE** = `2`

**Deprecated:** Use [DRIVER\_RESOURCE\_TOPMOST\_OBJECT](#class-renderingdevice-constant-driver-resource-topmost-object) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_QUEUE** = `3`

**Deprecated:** Use [DRIVER\_RESOURCE\_COMMAND\_QUEUE](#class-renderingdevice-constant-driver-resource-command-queue) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_QUEUE\_FAMILY\_INDEX** = `4`

**Deprecated:** Use [DRIVER\_RESOURCE\_QUEUE\_FAMILY](#class-renderingdevice-constant-driver-resource-queue-family) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_IMAGE** = `5`

**Deprecated:** Use [DRIVER\_RESOURCE\_TEXTURE](#class-renderingdevice-constant-driver-resource-texture) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_IMAGE\_VIEW** = `6`

**Deprecated:** Use [DRIVER\_RESOURCE\_TEXTURE\_VIEW](#class-renderingdevice-constant-driver-resource-texture-view) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_IMAGE\_NATIVE\_TEXTURE\_FORMAT** = `7`

**Deprecated:** Use [DRIVER\_RESOURCE\_TEXTURE\_DATA\_FORMAT](#class-renderingdevice-constant-driver-resource-texture-data-format) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_SAMPLER** = `8`

**Deprecated:** Use [DRIVER\_RESOURCE\_SAMPLER](#class-renderingdevice-constant-driver-resource-sampler) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_DESCRIPTOR\_SET** = `9`

**Deprecated:** Use [DRIVER\_RESOURCE\_UNIFORM\_SET](#class-renderingdevice-constant-driver-resource-uniform-set) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_BUFFER** = `10`

**Deprecated:** Use [DRIVER\_RESOURCE\_BUFFER](#class-renderingdevice-constant-driver-resource-buffer) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_COMPUTE\_PIPELINE** = `11`

**Deprecated:** Use [DRIVER\_RESOURCE\_COMPUTE\_PIPELINE](#class-renderingdevice-constant-driver-resource-compute-pipeline) instead.

[DriverResource](#enum-renderingdevice-driverresource) **DRIVER\_RESOURCE\_VULKAN\_RENDER\_PIPELINE** = `12`

**Deprecated:** Use [DRIVER\_RESOURCE\_RENDER\_PIPELINE](#class-renderingdevice-constant-driver-resource-render-pipeline) instead.

* * *

enum **DataFormat**: [🔗](#enum-renderingdevice-dataformat)

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R4G4\_UNORM\_PACK8** = `0`

4-bit-per-channel red/green channel data format, packed into 8 bits. Values are in the `[0.0, 1.0]` range.

**Note:** More information on all data formats can be found on the [Identification of formats](https://registry.khronos.org/vulkan/specs/1.1/html/vkspec.html#_identification_of_formats) section of the Vulkan specification, as well as the [VkFormat](https://registry.khronos.org/vulkan/specs/1.3-extensions/man/html/VkFormat.html) enum.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R4G4B4A4\_UNORM\_PACK16** = `1`

4-bit-per-channel red/green/blue/alpha channel data format, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B4G4R4A4\_UNORM\_PACK16** = `2`

4-bit-per-channel blue/green/red/alpha channel data format, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R5G6B5\_UNORM\_PACK16** = `3`

Red/green/blue channel data format with 5 bits of red, 6 bits of green and 5 bits of blue, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B5G6R5\_UNORM\_PACK16** = `4`

Blue/green/red channel data format with 5 bits of blue, 6 bits of green and 5 bits of red, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R5G5B5A1\_UNORM\_PACK16** = `5`

Red/green/blue/alpha channel data format with 5 bits of red, 6 bits of green, 5 bits of blue and 1 bit of alpha, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B5G5R5A1\_UNORM\_PACK16** = `6`

Blue/green/red/alpha channel data format with 5 bits of blue, 6 bits of green, 5 bits of red and 1 bit of alpha, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A1R5G5B5\_UNORM\_PACK16** = `7`

Alpha/red/green/blue channel data format with 1 bit of alpha, 5 bits of red, 6 bits of green and 5 bits of blue, packed into 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_UNORM** = `8`

8-bit-per-channel unsigned floating-point red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_SNORM** = `9`

8-bit-per-channel signed floating-point red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_USCALED** = `10`

8-bit-per-channel unsigned floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_SSCALED** = `11`

8-bit-per-channel signed floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_UINT** = `12`

8-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_SINT** = `13`

8-bit-per-channel signed integer red channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8\_SRGB** = `14`

8-bit-per-channel unsigned floating-point red channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_UNORM** = `15`

8-bit-per-channel unsigned floating-point red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_SNORM** = `16`

8-bit-per-channel signed floating-point red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_USCALED** = `17`

8-bit-per-channel unsigned floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_SSCALED** = `18`

8-bit-per-channel signed floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_UINT** = `19`

8-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_SINT** = `20`

8-bit-per-channel signed integer red/green channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8\_SRGB** = `21`

8-bit-per-channel unsigned floating-point red/green channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_UNORM** = `22`

8-bit-per-channel unsigned floating-point red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_SNORM** = `23`

8-bit-per-channel signed floating-point red/green/blue channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_USCALED** = `24`

8-bit-per-channel unsigned floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_SSCALED** = `25`

8-bit-per-channel signed floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_UINT** = `26`

8-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_SINT** = `27`

8-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8\_SRGB** = `28`

8-bit-per-channel unsigned floating-point red/green/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_UNORM** = `29`

8-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_SNORM** = `30`

8-bit-per-channel signed floating-point blue/green/red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_USCALED** = `31`

8-bit-per-channel unsigned floating-point blue/green/red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_SSCALED** = `32`

8-bit-per-channel signed floating-point blue/green/red channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_UINT** = `33`

8-bit-per-channel unsigned integer blue/green/red channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_SINT** = `34`

8-bit-per-channel signed integer blue/green/red channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8\_SRGB** = `35`

8-bit-per-channel unsigned floating-point blue/green/red data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_UNORM** = `36`

8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_SNORM** = `37`

8-bit-per-channel signed floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_USCALED** = `38`

8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_SSCALED** = `39`

8-bit-per-channel signed floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_UINT** = `40`

8-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_SINT** = `41`

8-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R8G8B8A8\_SRGB** = `42`

8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_UNORM** = `43`

8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_SNORM** = `44`

8-bit-per-channel signed floating-point blue/green/red/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_USCALED** = `45`

8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_SSCALED** = `46`

8-bit-per-channel signed floating-point blue/green/red/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_UINT** = `47`

8-bit-per-channel unsigned integer blue/green/red/alpha channel data format. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_SINT** = `48`

8-bit-per-channel signed integer blue/green/red/alpha channel data format. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8A8\_SRGB** = `49`

8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_UNORM\_PACK32** = `50`

8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_SNORM\_PACK32** = `51`

8-bit-per-channel signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_USCALED\_PACK32** = `52`

8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with scaled value (value is converted from integer to float), packed in 32 bits. Values are in the `[0.0, 255.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_SSCALED\_PACK32** = `53`

8-bit-per-channel signed floating-point alpha/red/green/blue channel data format with scaled value (value is converted from integer to float), packed in 32 bits. Values are in the `[-127.0, 127.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_UINT\_PACK32** = `54`

8-bit-per-channel unsigned integer alpha/red/green/blue channel data format, packed in 32 bits. Values are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_SINT\_PACK32** = `55`

8-bit-per-channel signed integer alpha/red/green/blue channel data format, packed in 32 bits. Values are in the `[-127, 127]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A8B8G8R8\_SRGB\_PACK32** = `56`

8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with normalized value and non-linear sRGB encoding, packed in 32 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_UNORM\_PACK32** = `57`

Unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_SNORM\_PACK32** = `58`

Signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_USCALED\_PACK32** = `59`

Unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0.0, 1023.0]` range for red/green/blue and `[0.0, 3.0]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_SSCALED\_PACK32** = `60`

Signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-511.0, 511.0]` range for red/green/blue and `[-1.0, 1.0]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_UINT\_PACK32** = `61`

Unsigned integer alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0, 1023]` range for red/green/blue and `[0, 3]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2R10G10B10\_SINT\_PACK32** = `62`

Signed integer alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-511, 511]` range for red/green/blue and `[-1, 1]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_UNORM\_PACK32** = `63`

Unsigned floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_SNORM\_PACK32** = `64`

Signed floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_USCALED\_PACK32** = `65`

Unsigned floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0.0, 1023.0]` range for blue/green/red and `[0.0, 3.0]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_SSCALED\_PACK32** = `66`

Signed floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-511.0, 511.0]` range for blue/green/red and `[-1.0, 1.0]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_UINT\_PACK32** = `67`

Unsigned integer alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0, 1023]` range for blue/green/red and `[0, 3]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_A2B10G10R10\_SINT\_PACK32** = `68`

Signed integer alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-511, 511]` range for blue/green/red and `[-1, 1]` for alpha.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_UNORM** = `69`

16-bit-per-channel unsigned floating-point red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_SNORM** = `70`

16-bit-per-channel signed floating-point red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_USCALED** = `71`

16-bit-per-channel unsigned floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_SSCALED** = `72`

16-bit-per-channel signed floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_UINT** = `73`

16-bit-per-channel unsigned integer red channel data format. Values are in the `[0.0, 65535]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_SINT** = `74`

16-bit-per-channel signed integer red channel data format. Values are in the `[-32767, 32767]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16\_SFLOAT** = `75`

16-bit-per-channel signed floating-point red channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_UNORM** = `76`

16-bit-per-channel unsigned floating-point red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_SNORM** = `77`

16-bit-per-channel signed floating-point red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_USCALED** = `78`

16-bit-per-channel unsigned floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_SSCALED** = `79`

16-bit-per-channel signed floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_UINT** = `80`

16-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0.0, 65535]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_SINT** = `81`

16-bit-per-channel signed integer red/green channel data format. Values are in the `[-32767, 32767]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16\_SFLOAT** = `82`

16-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_UNORM** = `83`

16-bit-per-channel unsigned floating-point red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_SNORM** = `84`

16-bit-per-channel signed floating-point red/green/blue channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_USCALED** = `85`

16-bit-per-channel unsigned floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_SSCALED** = `86`

16-bit-per-channel signed floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_UINT** = `87`

16-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0.0, 65535]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_SINT** = `88`

16-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[-32767, 32767]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16\_SFLOAT** = `89`

16-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_UNORM** = `90`

16-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_SNORM** = `91`

16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_USCALED** = `92`

16-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_SSCALED** = `93`

16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_UINT** = `94`

16-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0.0, 65535]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_SINT** = `95`

16-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[-32767, 32767]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R16G16B16A16\_SFLOAT** = `96`

16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32\_UINT** = `97`

32-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 2^32 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32\_SINT** = `98`

32-bit-per-channel signed integer red channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32\_SFLOAT** = `99`

32-bit-per-channel signed floating-point red channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32\_UINT** = `100`

32-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 2^32 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32\_SINT** = `101`

32-bit-per-channel signed integer red/green channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32\_SFLOAT** = `102`

32-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32\_UINT** = `103`

32-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 2^32 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32\_SINT** = `104`

32-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32\_SFLOAT** = `105`

32-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32A32\_UINT** = `106`

32-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 2^32 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32A32\_SINT** = `107`

32-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R32G32B32A32\_SFLOAT** = `108`

32-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64\_UINT** = `109`

64-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 2^64 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64\_SINT** = `110`

64-bit-per-channel signed integer red channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64\_SFLOAT** = `111`

64-bit-per-channel signed floating-point red channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64\_UINT** = `112`

64-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 2^64 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64\_SINT** = `113`

64-bit-per-channel signed integer red/green channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64\_SFLOAT** = `114`

64-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64\_UINT** = `115`

64-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 2^64 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64\_SINT** = `116`

64-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64\_SFLOAT** = `117`

64-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64A64\_UINT** = `118`

64-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 2^64 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64A64\_SINT** = `119`

64-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R64G64B64A64\_SFLOAT** = `120`

64-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B10G11R11\_UFLOAT\_PACK32** = `121`

Unsigned floating-point blue/green/red data format with the value stored as-is, packed in 32 bits. The format's precision is 10 bits of blue channel, 11 bits of green channel and 11 bits of red channel.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_E5B9G9R9\_UFLOAT\_PACK32** = `122`

Unsigned floating-point exposure/blue/green/red data format with the value stored as-is, packed in 32 bits. The format's precision is 5 bits of exposure, 9 bits of blue channel, 9 bits of green channel and 9 bits of red channel.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_D16\_UNORM** = `123`

16-bit unsigned floating-point depth data format with normalized value. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_X8\_D24\_UNORM\_PACK32** = `124`

24-bit unsigned floating-point depth data format with normalized value, plus 8 unused bits, packed in 32 bits. Values for depth are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_D32\_SFLOAT** = `125`

32-bit signed floating-point depth data format with the value stored as-is.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_S8\_UINT** = `126`

8-bit unsigned integer stencil data format.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_D16\_UNORM\_S8\_UINT** = `127`

16-bit unsigned floating-point depth data format with normalized value, plus 8 bits of stencil in unsigned integer format. Values for depth are in the `[0.0, 1.0]` range. Values for stencil are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_D24\_UNORM\_S8\_UINT** = `128`

24-bit unsigned floating-point depth data format with normalized value, plus 8 bits of stencil in unsigned integer format. Values for depth are in the `[0.0, 1.0]` range. Values for stencil are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_D32\_SFLOAT\_S8\_UINT** = `129`

32-bit signed floating-point depth data format with the value stored as-is, plus 8 bits of stencil in unsigned integer format. Values for stencil are in the `[0, 255]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC1\_RGB\_UNORM\_BLOCK** = `130`

VRAM-compressed unsigned red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel and 5 bits of blue channel. Using BC1 texture compression (also known as S3TC DXT1).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC1\_RGB\_SRGB\_BLOCK** = `131`

VRAM-compressed unsigned red/green/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel and 5 bits of blue channel. Using BC1 texture compression (also known as S3TC DXT1).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC1\_RGBA\_UNORM\_BLOCK** = `132`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 1 bit of alpha channel. Using BC1 texture compression (also known as S3TC DXT1).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC1\_RGBA\_SRGB\_BLOCK** = `133`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 1 bit of alpha channel. Using BC1 texture compression (also known as S3TC DXT1).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC2\_UNORM\_BLOCK** = `134`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 4 bits of alpha channel. Using BC2 texture compression (also known as S3TC DXT3).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC2\_SRGB\_BLOCK** = `135`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 4 bits of alpha channel. Using BC2 texture compression (also known as S3TC DXT3).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC3\_UNORM\_BLOCK** = `136`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 8 bits of alpha channel. Using BC3 texture compression (also known as S3TC DXT5).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC3\_SRGB\_BLOCK** = `137`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 8 bits of alpha channel. Using BC3 texture compression (also known as S3TC DXT5).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC4\_UNORM\_BLOCK** = `138`

VRAM-compressed unsigned red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 8 bits of red channel. Using BC4 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC4\_SNORM\_BLOCK** = `139`

VRAM-compressed signed red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. The format's precision is 8 bits of red channel. Using BC4 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC5\_UNORM\_BLOCK** = `140`

VRAM-compressed unsigned red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 8 bits of red channel and 8 bits of green channel. Using BC5 texture compression (also known as S3TC RGTC).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC5\_SNORM\_BLOCK** = `141`

VRAM-compressed signed red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. The format's precision is 8 bits of red channel and 8 bits of green channel. Using BC5 texture compression (also known as S3TC RGTC).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC6H\_UFLOAT\_BLOCK** = `142`

VRAM-compressed unsigned red/green/blue channel data format with the floating-point value stored as-is. The format's precision is between 10 and 13 bits for the red/green/blue channels. Using BC6H texture compression (also known as BPTC HDR).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC6H\_SFLOAT\_BLOCK** = `143`

VRAM-compressed signed red/green/blue channel data format with the floating-point value stored as-is. The format's precision is between 10 and 13 bits for the red/green/blue channels. Using BC6H texture compression (also known as BPTC HDR).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC7\_UNORM\_BLOCK** = `144`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is between 4 and 7 bits for the red/green/blue channels and between 0 and 8 bits for the alpha channel. Also known as BPTC LDR.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_BC7\_SRGB\_BLOCK** = `145`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is between 4 and 7 bits for the red/green/blue channels and between 0 and 8 bits for the alpha channel. Also known as BPTC LDR.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8\_UNORM\_BLOCK** = `146`

VRAM-compressed unsigned red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8\_SRGB\_BLOCK** = `147`

VRAM-compressed unsigned red/green/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8A1\_UNORM\_BLOCK** = `148`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bit of precision each, with alpha using 1 bit of precision. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8A1\_SRGB\_BLOCK** = `149`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bit of precision each, with alpha using 1 bit of precision. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8A8\_UNORM\_BLOCK** = `150`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bits of precision each, with alpha using 8 bits of precision. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ETC2\_R8G8B8A8\_SRGB\_BLOCK** = `151`

VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bits of precision each, with alpha using 8 bits of precision. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_EAC\_R11\_UNORM\_BLOCK** = `152`

11-bit VRAM-compressed unsigned red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_EAC\_R11\_SNORM\_BLOCK** = `153`

11-bit VRAM-compressed signed red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_EAC\_R11G11\_UNORM\_BLOCK** = `154`

11-bit VRAM-compressed unsigned red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_EAC\_R11G11\_SNORM\_BLOCK** = `155`

11-bit VRAM-compressed signed red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. Using ETC2 texture compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_4x4\_UNORM\_BLOCK** = `156`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 4×4 blocks (highest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_4x4\_SRGB\_BLOCK** = `157`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 4×4 blocks (highest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x4\_UNORM\_BLOCK** = `158`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 5×4 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x4\_SRGB\_BLOCK** = `159`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 5×4 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x5\_UNORM\_BLOCK** = `160`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 5×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x5\_SRGB\_BLOCK** = `161`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 5×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x5\_UNORM\_BLOCK** = `162`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 6×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x5\_SRGB\_BLOCK** = `163`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 6×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x6\_UNORM\_BLOCK** = `164`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 6×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x6\_SRGB\_BLOCK** = `165`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 6×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x5\_UNORM\_BLOCK** = `166`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x5\_SRGB\_BLOCK** = `167`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x6\_UNORM\_BLOCK** = `168`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x6\_SRGB\_BLOCK** = `169`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x8\_UNORM\_BLOCK** = `170`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x8\_SRGB\_BLOCK** = `171`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x5\_UNORM\_BLOCK** = `172`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x5\_SRGB\_BLOCK** = `173`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x6\_UNORM\_BLOCK** = `174`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x6\_SRGB\_BLOCK** = `175`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x8\_UNORM\_BLOCK** = `176`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x8\_SRGB\_BLOCK** = `177`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x10\_UNORM\_BLOCK** = `178`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x10\_SRGB\_BLOCK** = `179`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x10\_UNORM\_BLOCK** = `180`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 12×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x10\_SRGB\_BLOCK** = `181`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 12×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x12\_UNORM\_BLOCK** = `182`

VRAM-compressed unsigned floating-point data format with normalized value, packed in 12 blocks (lowest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x12\_SRGB\_BLOCK** = `183`

VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 12 blocks (lowest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8B8G8R8\_422\_UNORM** = `184`

8-bit-per-channel unsigned floating-point green/blue/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B8G8R8G8\_422\_UNORM** = `185`

8-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8\_B8\_R8\_3PLANE\_420\_UNORM** = `186`

8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8\_B8R8\_2PLANE\_420\_UNORM** = `187`

8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8\_B8\_R8\_3PLANE\_422\_UNORM** = `188`

8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8\_B8R8\_2PLANE\_422\_UNORM** = `189`

8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G8\_B8\_R8\_3PLANE\_444\_UNORM** = `190`

8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 3 separate planes. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R10X6\_UNORM\_PACK16** = `191`

10-bit-per-channel unsigned floating-point red channel data with normalized value, plus 6 unused bits, packed in 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R10X6G10X6\_UNORM\_2PACK16** = `192`

10-bit-per-channel unsigned floating-point red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 2×16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R10X6G10X6B10X6A10X6\_UNORM\_4PACK16** = `193`

10-bit-per-channel unsigned floating-point red/green/blue/alpha channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6B10X6G10X6R10X6\_422\_UNORM\_4PACK16** = `194`

10-bit-per-channel unsigned floating-point green/blue/green/red channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B10X6G10X6R10X6G10X6\_422\_UNORM\_4PACK16** = `195`

10-bit-per-channel unsigned floating-point blue/green/red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6\_B10X6\_R10X6\_3PLANE\_420\_UNORM\_3PACK16** = `196`

10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6\_B10X6R10X6\_2PLANE\_420\_UNORM\_3PACK16** = `197`

10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6\_B10X6\_R10X6\_3PLANE\_422\_UNORM\_3PACK16** = `198`

10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6\_B10X6R10X6\_2PLANE\_422\_UNORM\_3PACK16** = `199`

10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G10X6\_B10X6\_R10X6\_3PLANE\_444\_UNORM\_3PACK16** = `200`

10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R12X4\_UNORM\_PACK16** = `201`

12-bit-per-channel unsigned floating-point red channel data with normalized value, plus 6 unused bits, packed in 16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R12X4G12X4\_UNORM\_2PACK16** = `202`

12-bit-per-channel unsigned floating-point red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 2×16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_R12X4G12X4B12X4A12X4\_UNORM\_4PACK16** = `203`

12-bit-per-channel unsigned floating-point red/green/blue/alpha channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4B12X4G12X4R12X4\_422\_UNORM\_4PACK16** = `204`

12-bit-per-channel unsigned floating-point green/blue/green/red channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B12X4G12X4R12X4G12X4\_422\_UNORM\_4PACK16** = `205`

12-bit-per-channel unsigned floating-point blue/green/red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4\_B12X4\_R12X4\_3PLANE\_420\_UNORM\_3PACK16** = `206`

12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4\_B12X4R12X4\_2PLANE\_420\_UNORM\_3PACK16** = `207`

12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4\_B12X4\_R12X4\_3PLANE\_422\_UNORM\_3PACK16** = `208`

12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4\_B12X4R12X4\_2PLANE\_422\_UNORM\_3PACK16** = `209`

12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G12X4\_B12X4\_R12X4\_3PLANE\_444\_UNORM\_3PACK16** = `210`

12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16B16G16R16\_422\_UNORM** = `211`

16-bit-per-channel unsigned floating-point green/blue/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_B16G16R16G16\_422\_UNORM** = `212`

16-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16\_B16\_R16\_3PLANE\_420\_UNORM** = `213`

16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16\_B16R16\_2PLANE\_420\_UNORM** = `214`

16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16\_B16\_R16\_3PLANE\_422\_UNORM** = `215`

16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16\_B16R16\_2PLANE\_422\_UNORM** = `216`

16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_G16\_B16\_R16\_3PLANE\_444\_UNORM** = `217`

16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_4x4\_SFLOAT\_BLOCK** = `218`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x4\_SFLOAT\_BLOCK** = `219`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_5x5\_SFLOAT\_BLOCK** = `220`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x5\_SFLOAT\_BLOCK** = `221`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_6x6\_SFLOAT\_BLOCK** = `222`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x5\_SFLOAT\_BLOCK** = `223`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x6\_SFLOAT\_BLOCK** = `224`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_8x8\_SFLOAT\_BLOCK** = `225`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x5\_SFLOAT\_BLOCK** = `226`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x6\_SFLOAT\_BLOCK** = `227`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x8\_SFLOAT\_BLOCK** = `228`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_10x10\_SFLOAT\_BLOCK** = `229`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x10\_SFLOAT\_BLOCK** = `230`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_ASTC\_12x12\_SFLOAT\_BLOCK** = `231`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[DataFormat](#enum-renderingdevice-dataformat) **DATA\_FORMAT\_MAX** = `232`

Represents the size of the [DataFormat](#enum-renderingdevice-dataformat) enum.

* * *

flags **BarrierMask**: [🔗](#enum-renderingdevice-barriermask)

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_VERTEX** = `1`

Vertex shader barrier mask.

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_FRAGMENT** = `8`

Fragment shader barrier mask.

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_COMPUTE** = `2`

Compute barrier mask.

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_TRANSFER** = `4`

Transfer barrier mask.

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_RASTER** = `9`

Raster barrier mask (vertex and fragment). Equivalent to `BARRIER_MASK_VERTEX | BARRIER_MASK_FRAGMENT`.

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_ALL\_BARRIERS** = `32767`

Barrier mask for all types (vertex, fragment, compute, transfer).

[BarrierMask](#enum-renderingdevice-barriermask) **BARRIER\_MASK\_NO\_BARRIER** = `32768`

No barrier for any type.

* * *

enum **TextureType**: [🔗](#enum-renderingdevice-texturetype)

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_1D** = `0`

1-dimensional texture.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_2D** = `1`

2-dimensional texture.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_3D** = `2`

3-dimensional texture.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_CUBE** = `3`

[Cubemap](class_cubemap.md#class-cubemap) texture.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_1D\_ARRAY** = `4`

Array of 1-dimensional textures.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_2D\_ARRAY** = `5`

Array of 2-dimensional textures.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_CUBE\_ARRAY** = `6`

Array of [Cubemap](class_cubemap.md#class-cubemap) textures.

[TextureType](#enum-renderingdevice-texturetype) **TEXTURE\_TYPE\_MAX** = `7`

Represents the size of the [TextureType](#enum-renderingdevice-texturetype) enum.

* * *

enum **TextureSamples**: [🔗](#enum-renderingdevice-texturesamples)

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_1** = `0`

Perform 1 texture sample (this is the fastest but lowest-quality for antialiasing).

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_2** = `1`

Perform 2 texture samples.

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_4** = `2`

Perform 4 texture samples.

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_8** = `3`

Perform 8 texture samples. Not supported on mobile GPUs (including Apple Silicon).

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_16** = `4`

Perform 16 texture samples. Not supported on mobile GPUs and many desktop GPUs.

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_32** = `5`

Perform 32 texture samples. Not supported on most GPUs.

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_64** = `6`

Perform 64 texture samples (this is the slowest but highest-quality for antialiasing). Not supported on most GPUs.

[TextureSamples](#enum-renderingdevice-texturesamples) **TEXTURE\_SAMPLES\_MAX** = `7`

Represents the size of the [TextureSamples](#enum-renderingdevice-texturesamples) enum.

* * *

flags **TextureUsageBits**: [🔗](#enum-renderingdevice-textureusagebits)

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_SAMPLING\_BIT** = `1`

Texture can be sampled.

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_COLOR\_ATTACHMENT\_BIT** = `2`

Texture can be used as a color attachment in a framebuffer.

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_DEPTH\_STENCIL\_ATTACHMENT\_BIT** = `4`

Texture can be used as a depth/stencil attachment in a framebuffer.

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_STORAGE\_BIT** = `8`

Texture can be used as a [storage image](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-storageimage).

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_STORAGE\_ATOMIC\_BIT** = `16`

Texture can be used as a [storage image](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-storageimage) with support for atomic operations.

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_CPU\_READ\_BIT** = `32`

Texture can be read back on the CPU using [texture\_get\_data()](#class-renderingdevice-method-texture-get-data) faster than without this bit, since it is always kept in the system memory.

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_CAN\_UPDATE\_BIT** = `64`

Texture can be updated using [texture\_update()](#class-renderingdevice-method-texture-update).

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_CAN\_COPY\_FROM\_BIT** = `128`

Texture can be a source for [texture\_copy()](#class-renderingdevice-method-texture-copy).

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_CAN\_COPY\_TO\_BIT** = `256`

Texture can be a destination for [texture\_copy()](#class-renderingdevice-method-texture-copy).

[TextureUsageBits](#enum-renderingdevice-textureusagebits) **TEXTURE\_USAGE\_INPUT\_ATTACHMENT\_BIT** = `512`

Texture can be used as a [input attachment](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-inputattachment) in a framebuffer.

* * *

enum **TextureSwizzle**: [🔗](#enum-renderingdevice-textureswizzle)

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_IDENTITY** = `0`

Return the sampled value as-is.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_ZERO** = `1`

Always return `0.0` when sampling.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_ONE** = `2`

Always return `1.0` when sampling.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_R** = `3`

Sample the red color channel.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_G** = `4`

Sample the green color channel.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_B** = `5`

Sample the blue color channel.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_A** = `6`

Sample the alpha channel.

[TextureSwizzle](#enum-renderingdevice-textureswizzle) **TEXTURE\_SWIZZLE\_MAX** = `7`

Represents the size of the [TextureSwizzle](#enum-renderingdevice-textureswizzle) enum.

* * *

enum **TextureSliceType**: [🔗](#enum-renderingdevice-textureslicetype)

[TextureSliceType](#enum-renderingdevice-textureslicetype) **TEXTURE\_SLICE\_2D** = `0`

2-dimensional texture slice.

[TextureSliceType](#enum-renderingdevice-textureslicetype) **TEXTURE\_SLICE\_CUBEMAP** = `1`

Cubemap texture slice.

[TextureSliceType](#enum-renderingdevice-textureslicetype) **TEXTURE\_SLICE\_3D** = `2`

3-dimensional texture slice.

* * *

enum **SamplerFilter**: [🔗](#enum-renderingdevice-samplerfilter)

[SamplerFilter](#enum-renderingdevice-samplerfilter) **SAMPLER\_FILTER\_NEAREST** = `0`

Nearest-neighbor sampler filtering. Sampling at higher resolutions than the source will result in a pixelated look.

[SamplerFilter](#enum-renderingdevice-samplerfilter) **SAMPLER\_FILTER\_LINEAR** = `1`

Bilinear sampler filtering. Sampling at higher resolutions than the source will result in a blurry look.

* * *

enum **SamplerRepeatMode**: [🔗](#enum-renderingdevice-samplerrepeatmode)

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_REPEAT** = `0`

Sample with repeating enabled.

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_MIRRORED\_REPEAT** = `1`

Sample with mirrored repeating enabled. When sampling outside the `[0.0, 1.0]` range, return a mirrored version of the sampler. This mirrored version is mirrored again if sampling further away, with the pattern repeating indefinitely.

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_EDGE** = `2`

Sample with repeating disabled. When sampling outside the `[0.0, 1.0]` range, return the color of the last pixel on the edge.

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER** = `3`

Sample with repeating disabled. When sampling outside the `[0.0, 1.0]` range, return the specified [RDSamplerState.border\_color](class_rdsamplerstate.md#class-rdsamplerstate-property-border-color).

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_MIRROR\_CLAMP\_TO\_EDGE** = `4`

Sample with mirrored repeating enabled, but only once. When sampling in the `[-1.0, 0.0]` range, return a mirrored version of the sampler. When sampling outside the `[-1.0, 1.0]` range, return the color of the last pixel on the edge.

[SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) **SAMPLER\_REPEAT\_MODE\_MAX** = `5`

Represents the size of the [SamplerRepeatMode](#enum-renderingdevice-samplerrepeatmode) enum.

* * *

enum **SamplerBorderColor**: [🔗](#enum-renderingdevice-samplerbordercolor)

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_FLOAT\_TRANSPARENT\_BLACK** = `0`

Return a floating-point transparent black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_INT\_TRANSPARENT\_BLACK** = `1`

Return an integer transparent black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_FLOAT\_OPAQUE\_BLACK** = `2`

Return a floating-point opaque black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_INT\_OPAQUE\_BLACK** = `3`

Return an integer opaque black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_FLOAT\_OPAQUE\_WHITE** = `4`

Return a floating-point opaque white color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_INT\_OPAQUE\_WHITE** = `5`

Return an integer opaque white color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is [SAMPLER\_REPEAT\_MODE\_CLAMP\_TO\_BORDER](#class-renderingdevice-constant-sampler-repeat-mode-clamp-to-border).

[SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) **SAMPLER\_BORDER\_COLOR\_MAX** = `6`

Represents the size of the [SamplerBorderColor](#enum-renderingdevice-samplerbordercolor) enum.

* * *

enum **VertexFrequency**: [🔗](#enum-renderingdevice-vertexfrequency)

[VertexFrequency](#enum-renderingdevice-vertexfrequency) **VERTEX\_FREQUENCY\_VERTEX** = `0`

Vertex attribute addressing is a function of the vertex. This is used to specify the rate at which vertex attributes are pulled from buffers.

[VertexFrequency](#enum-renderingdevice-vertexfrequency) **VERTEX\_FREQUENCY\_INSTANCE** = `1`

Vertex attribute addressing is a function of the instance index. This is used to specify the rate at which vertex attributes are pulled from buffers.

* * *

enum **IndexBufferFormat**: [🔗](#enum-renderingdevice-indexbufferformat)

[IndexBufferFormat](#enum-renderingdevice-indexbufferformat) **INDEX\_BUFFER\_FORMAT\_UINT16** = `0`

Index buffer in 16-bit unsigned integer format. This limits the maximum index that can be specified to `65535`.

[IndexBufferFormat](#enum-renderingdevice-indexbufferformat) **INDEX\_BUFFER\_FORMAT\_UINT32** = `1`

Index buffer in 32-bit unsigned integer format. This limits the maximum index that can be specified to `4294967295`.

* * *

flags **StorageBufferUsage**: [🔗](#enum-renderingdevice-storagebufferusage)

[StorageBufferUsage](#enum-renderingdevice-storagebufferusage) **STORAGE\_BUFFER\_USAGE\_DISPATCH\_INDIRECT** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

flags **BufferCreationBits**: [🔗](#enum-renderingdevice-buffercreationbits)

[BufferCreationBits](#enum-renderingdevice-buffercreationbits) **BUFFER\_CREATION\_DEVICE\_ADDRESS\_BIT** = `1`

Optionally, set this flag if you wish to use [buffer\_get\_device\_address()](#class-renderingdevice-method-buffer-get-device-address) functionality. You must first check the GPU supports it:

GDScript

```
rd = RenderingServer.get_rendering_device()

if rd.has_feature(RenderingDevice.SUPPORTS_BUFFER_DEVICE_ADDRESS):
    storage_buffer = rd.storage_buffer_create(bytes.size(), bytes, RenderingDevice.STORAGE_BUFFER_USAGE_SHADER_DEVICE_ADDRESS)
    storage_buffer_address = rd.buffer_get_device_address(storage_buffer)

```

[BufferCreationBits](#enum-renderingdevice-buffercreationbits) **BUFFER\_CREATION\_AS\_STORAGE\_BIT** = `2`

Set this flag so that it is created as storage. This is useful if Compute Shaders need access (for reading or writing) to the buffer, e.g. skeletal animations are processed in Compute Shaders which need access to vertex buffers, to be later consumed by vertex shaders as part of the regular rasterization pipeline.

* * *

enum **UniformType**: [🔗](#enum-renderingdevice-uniformtype)

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_SAMPLER** = `0`

Sampler uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_SAMPLER\_WITH\_TEXTURE** = `1`

Sampler uniform with a texture.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_TEXTURE** = `2`

Texture uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_IMAGE** = `3`

Image uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_TEXTURE\_BUFFER** = `4`

Texture buffer uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_SAMPLER\_WITH\_TEXTURE\_BUFFER** = `5`

Sampler uniform with a texture buffer.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_IMAGE\_BUFFER** = `6`

Image buffer uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_UNIFORM\_BUFFER** = `7`

Uniform buffer uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_STORAGE\_BUFFER** = `8`

[Storage buffer](https://vkguide.dev/docs/chapter-4/storage_buffers/) uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_INPUT\_ATTACHMENT** = `9`

Input attachment uniform.

[UniformType](#enum-renderingdevice-uniformtype) **UNIFORM\_TYPE\_MAX** = `10`

Represents the size of the [UniformType](#enum-renderingdevice-uniformtype) enum.

* * *

enum **RenderPrimitive**: [🔗](#enum-renderingdevice-renderprimitive)

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_POINTS** = `0`

Point rendering primitive (with constant size, regardless of distance from camera).

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_LINES** = `1`

Line list rendering primitive. Lines are drawn separated from each other.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_LINES\_WITH\_ADJACENCY** = `2`

[Line list rendering primitive with adjacency.](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-line-lists-with-adjacency)

**Note:** Adjacency is only useful with geometry shaders, which Godot does not expose.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_LINESTRIPS** = `3`

Line strip rendering primitive. Lines drawn are connected to the previous vertex.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_LINESTRIPS\_WITH\_ADJACENCY** = `4`

[Line strip rendering primitive with adjacency.](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-line-strips-with-adjacency)

**Note:** Adjacency is only useful with geometry shaders, which Godot does not expose.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TRIANGLES** = `5`

Triangle list rendering primitive. Triangles are drawn separated from each other.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TRIANGLES\_WITH\_ADJACENCY** = `6`

[Triangle list rendering primitive with adjacency.](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-triangle-lists-with-adjacency)

**Note:** Adjacency is only useful with geometry shaders, which Godot does not expose.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TRIANGLE\_STRIPS** = `7`

Triangle strip rendering primitive. Triangles drawn are connected to the previous triangle.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TRIANGLE\_STRIPS\_WITH\_AJACENCY** = `8`

[Triangle strip rendering primitive with adjacency.](https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-triangle-strips-with-adjacency)

**Note:** Adjacency is only useful with geometry shaders, which Godot does not expose.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TRIANGLE\_STRIPS\_WITH\_RESTART\_INDEX** = `9`

Triangle strip rendering primitive with _primitive restart_ enabled. Triangles drawn are connected to the previous triangle, but a primitive restart index can be specified before drawing to create a second triangle strip after the specified index.

**Note:** Only compatible with indexed draws.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_TESSELATION\_PATCH** = `10`

Tessellation patch rendering primitive. Only useful with tessellation shaders, which can be used to deform these patches.

[RenderPrimitive](#enum-renderingdevice-renderprimitive) **RENDER\_PRIMITIVE\_MAX** = `11`

Represents the size of the [RenderPrimitive](#enum-renderingdevice-renderprimitive) enum.

* * *

enum **PolygonCullMode**: [🔗](#enum-renderingdevice-polygoncullmode)

[PolygonCullMode](#enum-renderingdevice-polygoncullmode) **POLYGON\_CULL\_DISABLED** = `0`

Do not use polygon front face or backface culling.

[PolygonCullMode](#enum-renderingdevice-polygoncullmode) **POLYGON\_CULL\_FRONT** = `1`

Use polygon frontface culling (faces pointing towards the camera are hidden).

[PolygonCullMode](#enum-renderingdevice-polygoncullmode) **POLYGON\_CULL\_BACK** = `2`

Use polygon backface culling (faces pointing away from the camera are hidden).

* * *

enum **PolygonFrontFace**: [🔗](#enum-renderingdevice-polygonfrontface)

[PolygonFrontFace](#enum-renderingdevice-polygonfrontface) **POLYGON\_FRONT\_FACE\_CLOCKWISE** = `0`

Clockwise winding order to determine which face of a polygon is its front face.

[PolygonFrontFace](#enum-renderingdevice-polygonfrontface) **POLYGON\_FRONT\_FACE\_COUNTER\_CLOCKWISE** = `1`

Counter-clockwise winding order to determine which face of a polygon is its front face.

* * *

enum **StencilOperation**: [🔗](#enum-renderingdevice-stenciloperation)

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_KEEP** = `0`

Keep the current stencil value.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_ZERO** = `1`

Set the stencil value to `0`.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_REPLACE** = `2`

Replace the existing stencil value with the new one.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_INCREMENT\_AND\_CLAMP** = `3`

Increment the existing stencil value and clamp to the maximum representable unsigned value if reached. Stencil bits are considered as an unsigned integer.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_DECREMENT\_AND\_CLAMP** = `4`

Decrement the existing stencil value and clamp to the minimum value if reached. Stencil bits are considered as an unsigned integer.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_INVERT** = `5`

Bitwise-invert the existing stencil value.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_INCREMENT\_AND\_WRAP** = `6`

Increment the stencil value and wrap around to `0` if reaching the maximum representable unsigned. Stencil bits are considered as an unsigned integer.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_DECREMENT\_AND\_WRAP** = `7`

Decrement the stencil value and wrap around to the maximum representable unsigned if reaching the minimum. Stencil bits are considered as an unsigned integer.

[StencilOperation](#enum-renderingdevice-stenciloperation) **STENCIL\_OP\_MAX** = `8`

Represents the size of the [StencilOperation](#enum-renderingdevice-stenciloperation) enum.

* * *

enum **CompareOperator**: [🔗](#enum-renderingdevice-compareoperator)

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_NEVER** = `0`

"Never" comparison (opposite of [COMPARE\_OP\_ALWAYS](#class-renderingdevice-constant-compare-op-always)).

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_LESS** = `1`

"Less than" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_EQUAL** = `2`

"Equal" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_LESS\_OR\_EQUAL** = `3`

"Less than or equal" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_GREATER** = `4`

"Greater than" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_NOT\_EQUAL** = `5`

"Not equal" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_GREATER\_OR\_EQUAL** = `6`

"Greater than or equal" comparison.

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_ALWAYS** = `7`

"Always" comparison (opposite of [COMPARE\_OP\_NEVER](#class-renderingdevice-constant-compare-op-never)).

[CompareOperator](#enum-renderingdevice-compareoperator) **COMPARE\_OP\_MAX** = `8`

Represents the size of the [CompareOperator](#enum-renderingdevice-compareoperator) enum.

* * *

enum **LogicOperation**: [🔗](#enum-renderingdevice-logicoperation)

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_CLEAR** = `0`

Clear logic operation (result is always `0`). See also [LOGIC\_OP\_SET](#class-renderingdevice-constant-logic-op-set).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_AND** = `1`

AND logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_AND\_REVERSE** = `2`

AND logic operation with the _destination_ operand being inverted. See also [LOGIC\_OP\_AND\_INVERTED](#class-renderingdevice-constant-logic-op-and-inverted).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_COPY** = `3`

Copy logic operation (keeps the _source_ value as-is). See also [LOGIC\_OP\_COPY\_INVERTED](#class-renderingdevice-constant-logic-op-copy-inverted) and [LOGIC\_OP\_NO\_OP](#class-renderingdevice-constant-logic-op-no-op).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_AND\_INVERTED** = `4`

AND logic operation with the _source_ operand being inverted. See also [LOGIC\_OP\_AND\_REVERSE](#class-renderingdevice-constant-logic-op-and-reverse).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_NO\_OP** = `5`

No-op logic operation (keeps the _destination_ value as-is). See also [LOGIC\_OP\_COPY](#class-renderingdevice-constant-logic-op-copy).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_XOR** = `6`

Exclusive or (XOR) logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_OR** = `7`

OR logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_NOR** = `8`

Not-OR (NOR) logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_EQUIVALENT** = `9`

Not-XOR (XNOR) logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_INVERT** = `10`

Invert logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_OR\_REVERSE** = `11`

OR logic operation with the _destination_ operand being inverted. See also [LOGIC\_OP\_OR\_REVERSE](#class-renderingdevice-constant-logic-op-or-reverse).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_COPY\_INVERTED** = `12`

NOT logic operation (inverts the value). See also [LOGIC\_OP\_COPY](#class-renderingdevice-constant-logic-op-copy).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_OR\_INVERTED** = `13`

OR logic operation with the _source_ operand being inverted. See also [LOGIC\_OP\_OR\_REVERSE](#class-renderingdevice-constant-logic-op-or-reverse).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_NAND** = `14`

Not-AND (NAND) logic operation.

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_SET** = `15`

SET logic operation (result is always `1`). See also [LOGIC\_OP\_CLEAR](#class-renderingdevice-constant-logic-op-clear).

[LogicOperation](#enum-renderingdevice-logicoperation) **LOGIC\_OP\_MAX** = `16`

Represents the size of the [LogicOperation](#enum-renderingdevice-logicoperation) enum.

* * *

enum **BlendFactor**: [🔗](#enum-renderingdevice-blendfactor)

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ZERO** = `0`

Constant `0.0` blend factor.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE** = `1`

Constant `1.0` blend factor.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_SRC\_COLOR** = `2`

Color blend factor is `source color`. Alpha blend factor is `source alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_SRC\_COLOR** = `3`

Color blend factor is `1.0 - source color`. Alpha blend factor is `1.0 - source alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_DST\_COLOR** = `4`

Color blend factor is `destination color`. Alpha blend factor is `destination alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_DST\_COLOR** = `5`

Color blend factor is `1.0 - destination color`. Alpha blend factor is `1.0 - destination alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_SRC\_ALPHA** = `6`

Color and alpha blend factor is `source alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_SRC\_ALPHA** = `7`

Color and alpha blend factor is `1.0 - source alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_DST\_ALPHA** = `8`

Color and alpha blend factor is `destination alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_DST\_ALPHA** = `9`

Color and alpha blend factor is `1.0 - destination alpha`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_CONSTANT\_COLOR** = `10`

Color blend factor is `blend constant color`. Alpha blend factor is `blend constant alpha` (see [draw\_list\_set\_blend\_constants()](#class-renderingdevice-method-draw-list-set-blend-constants)).

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_CONSTANT\_COLOR** = `11`

Color blend factor is `1.0 - blend constant color`. Alpha blend factor is `1.0 - blend constant alpha` (see [draw\_list\_set\_blend\_constants()](#class-renderingdevice-method-draw-list-set-blend-constants)).

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_CONSTANT\_ALPHA** = `12`

Color and alpha blend factor is `blend constant alpha` (see [draw\_list\_set\_blend\_constants()](#class-renderingdevice-method-draw-list-set-blend-constants)).

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_CONSTANT\_ALPHA** = `13`

Color and alpha blend factor is `1.0 - blend constant alpha` (see [draw\_list\_set\_blend\_constants()](#class-renderingdevice-method-draw-list-set-blend-constants)).

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_SRC\_ALPHA\_SATURATE** = `14`

Color blend factor is `min(source alpha, 1.0 - destination alpha)`. Alpha blend factor is `1.0`.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_SRC1\_COLOR** = `15`

Color blend factor is `second source color`. Alpha blend factor is `second source alpha`. Only relevant for dual-source blending.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_SRC1\_COLOR** = `16`

Color blend factor is `1.0 - second source color`. Alpha blend factor is `1.0 - second source alpha`. Only relevant for dual-source blending.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_SRC1\_ALPHA** = `17`

Color and alpha blend factor is `second source alpha`. Only relevant for dual-source blending.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_ONE\_MINUS\_SRC1\_ALPHA** = `18`

Color and alpha blend factor is `1.0 - second source alpha`. Only relevant for dual-source blending.

[BlendFactor](#enum-renderingdevice-blendfactor) **BLEND\_FACTOR\_MAX** = `19`

Represents the size of the [BlendFactor](#enum-renderingdevice-blendfactor) enum.

* * *

enum **BlendOperation**: [🔗](#enum-renderingdevice-blendoperation)

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_ADD** = `0`

Additive blending operation ( `source + destination`).

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_SUBTRACT** = `1`

Subtractive blending operation ( `source - destination`).

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_REVERSE\_SUBTRACT** = `2`

Reverse subtractive blending operation ( `destination - source`).

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_MINIMUM** = `3`

Minimum blending operation (keep the lowest value of the two).

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_MAXIMUM** = `4`

Maximum blending operation (keep the highest value of the two).

[BlendOperation](#enum-renderingdevice-blendoperation) **BLEND\_OP\_MAX** = `5`

Represents the size of the [BlendOperation](#enum-renderingdevice-blendoperation) enum.

* * *

flags **PipelineDynamicStateFlags**: [🔗](#enum-renderingdevice-pipelinedynamicstateflags)

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_LINE\_WIDTH** = `1`

Allows dynamically changing the width of rendering lines.

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_DEPTH\_BIAS** = `2`

Allows dynamically changing the depth bias.

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_BLEND\_CONSTANTS** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_DEPTH\_BOUNDS** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_STENCIL\_COMPARE\_MASK** = `16`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_STENCIL\_WRITE\_MASK** = `32`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags) **DYNAMIC\_STATE\_STENCIL\_REFERENCE** = `64`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

enum **InitialAction**: [🔗](#enum-renderingdevice-initialaction)

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_LOAD** = `0`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

Load the previous contents of the framebuffer.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_CLEAR** = `1`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

Clear the whole framebuffer or its specified region.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_DISCARD** = `2`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

Ignore the previous contents of the framebuffer. This is the fastest option if you'll overwrite all of the pixels and don't need to read any of them.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_MAX** = `3`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

Represents the size of the [InitialAction](#enum-renderingdevice-initialaction) enum.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_CLEAR\_REGION** = `1`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_CLEAR\_REGION\_CONTINUE** = `1`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_KEEP** = `0`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_DROP** = `2`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

[InitialAction](#enum-renderingdevice-initialaction) **INITIAL\_ACTION\_CONTINUE** = `0`

**Deprecated:** Initial actions are solved automatically by RenderingDevice.

* * *

enum **FinalAction**: [🔗](#enum-renderingdevice-finalaction)

[FinalAction](#enum-renderingdevice-finalaction) **FINAL\_ACTION\_STORE** = `0`

**Deprecated:** Final actions are solved automatically by RenderingDevice.

Store the result of the draw list in the framebuffer. This is generally what you want to do.

[FinalAction](#enum-renderingdevice-finalaction) **FINAL\_ACTION\_DISCARD** = `1`

**Deprecated:** Final actions are solved automatically by RenderingDevice.

Discard the contents of the framebuffer. This is the fastest option if you don't need to use the results of the draw list.

[FinalAction](#enum-renderingdevice-finalaction) **FINAL\_ACTION\_MAX** = `2`

**Deprecated:** Final actions are solved automatically by RenderingDevice.

Represents the size of the [FinalAction](#enum-renderingdevice-finalaction) enum.

[FinalAction](#enum-renderingdevice-finalaction) **FINAL\_ACTION\_READ** = `0`

**Deprecated:** Final actions are solved automatically by RenderingDevice.

[FinalAction](#enum-renderingdevice-finalaction) **FINAL\_ACTION\_CONTINUE** = `0`

**Deprecated:** Final actions are solved automatically by RenderingDevice.

* * *

enum **ShaderStage**: [🔗](#enum-renderingdevice-shaderstage)

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_VERTEX** = `0`

Vertex shader stage. This can be used to manipulate vertices from a shader (but not create new vertices).

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_FRAGMENT** = `1`

Fragment shader stage (called "pixel shader" in Direct3D). This can be used to manipulate pixels from a shader.

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_TESSELATION\_CONTROL** = `2`

Tessellation control shader stage. This can be used to create additional geometry from a shader.

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_TESSELATION\_EVALUATION** = `3`

Tessellation evaluation shader stage. This can be used to create additional geometry from a shader.

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_COMPUTE** = `4`

Compute shader stage. This can be used to run arbitrary computing tasks in a shader, performing them on the GPU instead of the CPU.

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_MAX** = `5`

Represents the size of the [ShaderStage](#enum-renderingdevice-shaderstage) enum.

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_VERTEX\_BIT** = `1`

Vertex shader stage bit (see also [SHADER\_STAGE\_VERTEX](#class-renderingdevice-constant-shader-stage-vertex)).

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_FRAGMENT\_BIT** = `2`

Fragment shader stage bit (see also [SHADER\_STAGE\_FRAGMENT](#class-renderingdevice-constant-shader-stage-fragment)).

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_TESSELATION\_CONTROL\_BIT** = `4`

Tessellation control shader stage bit (see also [SHADER\_STAGE\_TESSELATION\_CONTROL](#class-renderingdevice-constant-shader-stage-tesselation-control)).

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_TESSELATION\_EVALUATION\_BIT** = `8`

Tessellation evaluation shader stage bit (see also [SHADER\_STAGE\_TESSELATION\_EVALUATION](#class-renderingdevice-constant-shader-stage-tesselation-evaluation)).

[ShaderStage](#enum-renderingdevice-shaderstage) **SHADER\_STAGE\_COMPUTE\_BIT** = `16`

Compute shader stage bit (see also [SHADER\_STAGE\_COMPUTE](#class-renderingdevice-constant-shader-stage-compute)).

* * *

enum **ShaderLanguage**: [🔗](#enum-renderingdevice-shaderlanguage)

[ShaderLanguage](#enum-renderingdevice-shaderlanguage) **SHADER\_LANGUAGE\_GLSL** = `0`

Khronos' GLSL shading language (used natively by OpenGL and Vulkan). This is the language used for core Godot shaders.

[ShaderLanguage](#enum-renderingdevice-shaderlanguage) **SHADER\_LANGUAGE\_HLSL** = `1`

Microsoft's High-Level Shading Language (used natively by Direct3D, but can also be used in Vulkan).

* * *

enum **PipelineSpecializationConstantType**: [🔗](#enum-renderingdevice-pipelinespecializationconstanttype)

[PipelineSpecializationConstantType](#enum-renderingdevice-pipelinespecializationconstanttype) **PIPELINE\_SPECIALIZATION\_CONSTANT\_TYPE\_BOOL** = `0`

Boolean specialization constant.

[PipelineSpecializationConstantType](#enum-renderingdevice-pipelinespecializationconstanttype) **PIPELINE\_SPECIALIZATION\_CONSTANT\_TYPE\_INT** = `1`

Integer specialization constant.

[PipelineSpecializationConstantType](#enum-renderingdevice-pipelinespecializationconstanttype) **PIPELINE\_SPECIALIZATION\_CONSTANT\_TYPE\_FLOAT** = `2`

Floating-point specialization constant.

* * *

enum **Features**: [🔗](#enum-renderingdevice-features)

[Features](#enum-renderingdevice-features) **SUPPORTS\_METALFX\_SPATIAL** = `3`

Support for MetalFX spatial upscaling.

[Features](#enum-renderingdevice-features) **SUPPORTS\_METALFX\_TEMPORAL** = `4`

Support for MetalFX temporal upscaling.

[Features](#enum-renderingdevice-features) **SUPPORTS\_BUFFER\_DEVICE\_ADDRESS** = `6`

Features support for buffer device address extension.

[Features](#enum-renderingdevice-features) **SUPPORTS\_IMAGE\_ATOMIC\_32\_BIT** = `7`

Support for 32-bit image atomic operations.

* * *

enum **Limit**: [🔗](#enum-renderingdevice-limit)

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_BOUND\_UNIFORM\_SETS** = `0`

Maximum number of uniform sets that can be bound at a given time.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_FRAMEBUFFER\_COLOR\_ATTACHMENTS** = `1`

Maximum number of color framebuffer attachments that can be used at a given time.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURES\_PER\_UNIFORM\_SET** = `2`

Maximum number of textures that can be used per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_SAMPLERS\_PER\_UNIFORM\_SET** = `3`

Maximum number of samplers that can be used per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_STORAGE\_BUFFERS\_PER\_UNIFORM\_SET** = `4`

Maximum number of [storage buffers](https://vkguide.dev/docs/chapter-4/storage_buffers/) per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_STORAGE\_IMAGES\_PER\_UNIFORM\_SET** = `5`

Maximum number of storage images per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_UNIFORM\_BUFFERS\_PER\_UNIFORM\_SET** = `6`

Maximum number of uniform buffers per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_DRAW\_INDEXED\_INDEX** = `7`

Maximum index for an indexed draw command.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_FRAMEBUFFER\_HEIGHT** = `8`

Maximum height of a framebuffer (in pixels).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_FRAMEBUFFER\_WIDTH** = `9`

Maximum width of a framebuffer (in pixels).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURE\_ARRAY\_LAYERS** = `10`

Maximum number of texture array layers.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURE\_SIZE\_1D** = `11`

Maximum supported 1-dimensional texture size (in pixels on a single axis).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURE\_SIZE\_2D** = `12`

Maximum supported 2-dimensional texture size (in pixels on a single axis).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURE\_SIZE\_3D** = `13`

Maximum supported 3-dimensional texture size (in pixels on a single axis).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURE\_SIZE\_CUBE** = `14`

Maximum supported cubemap texture size (in pixels on a single axis of a single face).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_TEXTURES\_PER\_SHADER\_STAGE** = `15`

Maximum number of textures per shader stage.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_SAMPLERS\_PER\_SHADER\_STAGE** = `16`

Maximum number of samplers per shader stage.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_STORAGE\_BUFFERS\_PER\_SHADER\_STAGE** = `17`

Maximum number of [storage buffers](https://vkguide.dev/docs/chapter-4/storage_buffers/) per shader stage.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_STORAGE\_IMAGES\_PER\_SHADER\_STAGE** = `18`

Maximum number of storage images per shader stage.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_UNIFORM\_BUFFERS\_PER\_SHADER\_STAGE** = `19`

Maximum number of uniform buffers per uniform set.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_PUSH\_CONSTANT\_SIZE** = `20`

Maximum size of a push constant. A lot of devices are limited to 128 bytes, so try to avoid exceeding 128 bytes in push constants to ensure compatibility even if your GPU is reporting a higher value.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_UNIFORM\_BUFFER\_SIZE** = `21`

Maximum size of a uniform buffer.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VERTEX\_INPUT\_ATTRIBUTE\_OFFSET** = `22`

Maximum vertex input attribute offset.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VERTEX\_INPUT\_ATTRIBUTES** = `23`

Maximum number of vertex input attributes.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VERTEX\_INPUT\_BINDINGS** = `24`

Maximum number of vertex input bindings.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VERTEX\_INPUT\_BINDING\_STRIDE** = `25`

Maximum vertex input binding stride.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MIN\_UNIFORM\_BUFFER\_OFFSET\_ALIGNMENT** = `26`

Minimum uniform buffer offset alignment.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_SHARED\_MEMORY\_SIZE** = `27`

Maximum shared memory size for compute shaders.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_COUNT\_X** = `28`

Maximum number of workgroups for compute shaders on the X axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_COUNT\_Y** = `29`

Maximum number of workgroups for compute shaders on the Y axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_COUNT\_Z** = `30`

Maximum number of workgroups for compute shaders on the Z axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_INVOCATIONS** = `31`

Maximum number of workgroup invocations for compute shaders.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_SIZE\_X** = `32`

Maximum workgroup size for compute shaders on the X axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_SIZE\_Y** = `33`

Maximum workgroup size for compute shaders on the Y axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_COMPUTE\_WORKGROUP\_SIZE\_Z** = `34`

Maximum workgroup size for compute shaders on the Z axis.

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VIEWPORT\_DIMENSIONS\_X** = `35`

Maximum viewport width (in pixels).

[Limit](#enum-renderingdevice-limit) **LIMIT\_MAX\_VIEWPORT\_DIMENSIONS\_Y** = `36`

Maximum viewport height (in pixels).

[Limit](#enum-renderingdevice-limit) **LIMIT\_METALFX\_TEMPORAL\_SCALER\_MIN\_SCALE** = `46`

Returns the smallest value for [ProjectSettings.rendering/scaling\_3d/scale](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-scale) when using the MetalFX temporal upscaler.

**Note:** The returned value is multiplied by a factor of `1000000` to preserve 6 digits of precision. It must be divided by `1000000.0` to convert the value to a floating point number.

[Limit](#enum-renderingdevice-limit) **LIMIT\_METALFX\_TEMPORAL\_SCALER\_MAX\_SCALE** = `47`

Returns the largest value for [ProjectSettings.rendering/scaling\_3d/scale](class_projectsettings.md#class-projectsettings-property-rendering-scaling-3d-scale) when using the MetalFX temporal upscaler.

**Note:** The returned value is multiplied by a factor of `1000000` to preserve 6 digits of precision. It must be divided by `1000000.0` to convert the value to a floating point number.

* * *

enum **MemoryType**: [🔗](#enum-renderingdevice-memorytype)

[MemoryType](#enum-renderingdevice-memorytype) **MEMORY\_TEXTURES** = `0`

Memory taken by textures.

[MemoryType](#enum-renderingdevice-memorytype) **MEMORY\_BUFFERS** = `1`

Memory taken by buffers.

[MemoryType](#enum-renderingdevice-memorytype) **MEMORY\_TOTAL** = `2`

Total memory taken. This is greater than the sum of [MEMORY\_TEXTURES](#class-renderingdevice-constant-memory-textures) and [MEMORY\_BUFFERS](#class-renderingdevice-constant-memory-buffers), as it also includes miscellaneous memory usage.

* * *

enum **BreadcrumbMarker**: [🔗](#enum-renderingdevice-breadcrumbmarker)

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **NONE** = `0`

No breadcrumb marker will be added.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **REFLECTION\_PROBES** = `65536`

During a GPU crash in dev or debug mode, Godot's error message will include `"REFLECTION_PROBES"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **SKY\_PASS** = `131072`

During a GPU crash in dev or debug mode, Godot's error message will include `"SKY_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **LIGHTMAPPER\_PASS** = `196608`

During a GPU crash in dev or debug mode, Godot's error message will include `"LIGHTMAPPER_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **SHADOW\_PASS\_DIRECTIONAL** = `262144`

During a GPU crash in dev or debug mode, Godot's error message will include `"SHADOW_PASS_DIRECTIONAL"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **SHADOW\_PASS\_CUBE** = `327680`

During a GPU crash in dev or debug mode, Godot's error message will include `"SHADOW_PASS_CUBE"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **OPAQUE\_PASS** = `393216`

During a GPU crash in dev or debug mode, Godot's error message will include `"OPAQUE_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **ALPHA\_PASS** = `458752`

During a GPU crash in dev or debug mode, Godot's error message will include `"ALPHA_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **TRANSPARENT\_PASS** = `524288`

During a GPU crash in dev or debug mode, Godot's error message will include `"TRANSPARENT_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **POST\_PROCESSING\_PASS** = `589824`

During a GPU crash in dev or debug mode, Godot's error message will include `"POST_PROCESSING_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **BLIT\_PASS** = `655360`

During a GPU crash in dev or debug mode, Godot's error message will include `"BLIT_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **UI\_PASS** = `720896`

During a GPU crash in dev or debug mode, Godot's error message will include `"UI_PASS"` for added context as to when the crash occurred.

[BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) **DEBUG\_PASS** = `786432`

During a GPU crash in dev or debug mode, Godot's error message will include `"DEBUG_PASS"` for added context as to when the crash occurred.

* * *

flags **DrawFlags**: [🔗](#enum-renderingdevice-drawflags)

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_DEFAULT\_ALL** = `0`

Do not clear or ignore any attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_0** = `1`

Clear the first color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_1** = `2`

Clear the second color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_2** = `4`

Clear the third color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_3** = `8`

Clear the fourth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_4** = `16`

Clear the fifth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_5** = `32`

Clear the sixth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_6** = `64`

Clear the seventh color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_7** = `128`

Clear the eighth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_MASK** = `255`

Mask for clearing all color attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_COLOR\_ALL** = `255`

Clear all color attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_0** = `256`

Ignore the previous contents of the first color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_1** = `512`

Ignore the previous contents of the second color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_2** = `1024`

Ignore the previous contents of the third color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_3** = `2048`

Ignore the previous contents of the fourth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_4** = `4096`

Ignore the previous contents of the fifth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_5** = `8192`

Ignore the previous contents of the sixth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_6** = `16384`

Ignore the previous contents of the seventh color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_7** = `32768`

Ignore the previous contents of the eighth color attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_MASK** = `65280`

Mask for ignoring all the previous contents of the color attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_COLOR\_ALL** = `65280`

Ignore the previous contents of all color attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_DEPTH** = `65536`

Clear the depth attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_DEPTH** = `131072`

Ignore the previous contents of the depth attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_STENCIL** = `262144`

Clear the stencil attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_STENCIL** = `524288`

Ignore the previous contents of the stencil attachment.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_CLEAR\_ALL** = `327935`

Clear all attachments.

[DrawFlags](#enum-renderingdevice-drawflags) **DRAW\_IGNORE\_ALL** = `720640`

Ignore the previous contents of all attachments.

* * *

## Constants

**INVALID\_ID** = `-1` [🔗](#class-renderingdevice-constant-invalid-id)

Returned by functions that return an ID if a value is invalid.

**INVALID\_FORMAT\_ID** = `-1` [🔗](#class-renderingdevice-constant-invalid-format-id)

Returned by functions that return a format ID if a value is invalid.

* * *

## Method Descriptions

void **barrier**(from: BitField\[ [BarrierMask](#enum-renderingdevice-barriermask)\] = 32767, to: BitField\[ [BarrierMask](#enum-renderingdevice-barriermask)\] = 32767) [🔗](#class-renderingdevice-method-barrier)

**Deprecated:** Barriers are automatically inserted by RenderingDevice.

This method does nothing.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **buffer\_clear**(buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int), size\_bytes: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-buffer-clear)

Clears the contents of the `buffer`, clearing `size_bytes` bytes, starting at `offset`.

Prints an error if:

- the size isn't a multiple of four

- the region specified by `offset` \+ `size_bytes` exceeds the buffer

- a draw list is currently active (created by [draw\_list\_begin()](#class-renderingdevice-method-draw-list-begin))

- a compute list is currently active (created by [compute\_list\_begin()](#class-renderingdevice-method-compute-list-begin))


* * *

[Error](class_@globalscope.md#enum-globalscope-error) **buffer\_copy**(src\_buffer: [RID](class_rid.md#class-rid), dst\_buffer: [RID](class_rid.md#class-rid), src\_offset: [int](class_int.md#class-int), dst\_offset: [int](class_int.md#class-int), size: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-buffer-copy)

Copies `size` bytes from the `src_buffer` at `src_offset` into `dst_buffer` at `dst_offset`.

Prints an error if:

- `size` exceeds the size of either `src_buffer` or `dst_buffer` at their corresponding offsets

- a draw list is currently active (created by [draw\_list\_begin()](#class-renderingdevice-method-draw-list-begin))

- a compute list is currently active (created by [compute\_list\_begin()](#class-renderingdevice-method-compute-list-begin))


* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **buffer\_get\_data**(buffer: [RID](class_rid.md#class-rid), offset\_bytes: [int](class_int.md#class-int) = 0, size\_bytes: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-buffer-get-data)

Returns a copy of the data of the specified `buffer`, optionally `offset_bytes` and `size_bytes` can be set to copy only a portion of the buffer.

**Note:** This method will block the GPU from working until the data is retrieved. Refer to [buffer\_get\_data\_async()](#class-renderingdevice-method-buffer-get-data-async) for an alternative that returns the data in more performant way.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **buffer\_get\_data\_async**(buffer: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable), offset\_bytes: [int](class_int.md#class-int) = 0, size\_bytes: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-buffer-get-data-async)

Asynchronous version of [buffer\_get\_data()](#class-renderingdevice-method-buffer-get-data). RenderingDevice will call `callback` in a certain amount of frames with the data the buffer had at the time of the request.

**Note:** At the moment, the delay corresponds to the amount of frames specified by [ProjectSettings.rendering/rendering\_device/vsync/frame\_queue\_size](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-vsync-frame-queue-size).

**Note:** Downloading large buffers can have a prohibitive cost for real-time even when using the asynchronous method due to hardware bandwidth limitations. When dealing with large resources, you can adjust settings such as [ProjectSettings.rendering/rendering\_device/staging\_buffer/block\_size\_kb](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb) to improve the transfer speed at the cost of extra memory.

```
func _buffer_get_data_callback(array):
    value = array.decode_u32(0)

...

rd.buffer_get_data_async(buffer, _buffer_get_data_callback)

```

* * *

[int](class_int.md#class-int) **buffer\_get\_device\_address**(buffer: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-buffer-get-device-address)

Returns the address of the given `buffer` which can be passed to shaders in any way to access underlying data. Buffer must have been created with this feature enabled.

**Note:** You must check that the GPU supports this functionality by calling [has\_feature()](#class-renderingdevice-method-has-feature) with [SUPPORTS\_BUFFER\_DEVICE\_ADDRESS](#class-renderingdevice-constant-supports-buffer-device-address) as a parameter.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **buffer\_update**(buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int), size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingdevice-method-buffer-update)

Updates a region of `size_bytes` bytes, starting at `offset`, in the buffer, with the specified `data`.

Prints an error if:

- the region specified by `offset` \+ `size_bytes` exceeds the buffer

- a draw list is currently active (created by [draw\_list\_begin()](#class-renderingdevice-method-draw-list-begin))

- a compute list is currently active (created by [compute\_list\_begin()](#class-renderingdevice-method-compute-list-begin))


* * *

void **capture\_timestamp**(name: [String](class_string.md#class-string)) [🔗](#class-renderingdevice-method-capture-timestamp)

Creates a timestamp marker with the specified `name`. This is used for performance reporting with the [get\_captured\_timestamp\_cpu\_time()](#class-renderingdevice-method-get-captured-timestamp-cpu-time), [get\_captured\_timestamp\_gpu\_time()](#class-renderingdevice-method-get-captured-timestamp-gpu-time) and [get\_captured\_timestamp\_name()](#class-renderingdevice-method-get-captured-timestamp-name) methods.

* * *

void **compute\_list\_add\_barrier**(compute\_list: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-compute-list-add-barrier)

Raises a Vulkan compute barrier in the specified `compute_list`.

* * *

[int](class_int.md#class-int) **compute\_list\_begin**() [🔗](#class-renderingdevice-method-compute-list-begin)

Starts a list of compute commands created with the `compute_*` methods. The returned value should be passed to other `compute_list_*` functions.

Multiple compute lists cannot be created at the same time; you must finish the previous compute list first using [compute\_list\_end()](#class-renderingdevice-method-compute-list-end).

A simple compute operation might look like this (code is not a complete example):

```
var rd = RenderingDevice.new()
var compute_list = rd.compute_list_begin()

rd.compute_list_bind_compute_pipeline(compute_list, compute_shader_dilate_pipeline)
rd.compute_list_bind_uniform_set(compute_list, compute_base_uniform_set, 0)
rd.compute_list_bind_uniform_set(compute_list, dilate_uniform_set, 1)

for i in atlas_slices:
    rd.compute_list_set_push_constant(compute_list, push_constant, push_constant.size())
    rd.compute_list_dispatch(compute_list, group_size.x, group_size.y, group_size.z)
    # No barrier, let them run all together.

rd.compute_list_end()

```

* * *

void **compute\_list\_bind\_compute\_pipeline**(compute\_list: [int](class_int.md#class-int), compute\_pipeline: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-compute-list-bind-compute-pipeline)

Tells the GPU what compute pipeline to use when processing the compute list. If the shader has changed since the last time this function was called, Godot will unbind all descriptor sets and will re-bind them inside [compute\_list\_dispatch()](#class-renderingdevice-method-compute-list-dispatch).

* * *

void **compute\_list\_bind\_uniform\_set**(compute\_list: [int](class_int.md#class-int), uniform\_set: [RID](class_rid.md#class-rid), set\_index: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-compute-list-bind-uniform-set)

Binds the `uniform_set` to this `compute_list`. Godot ensures that all textures in the uniform set have the correct Vulkan access masks. If Godot had to change access masks of textures, it will raise a Vulkan image memory barrier.

* * *

void **compute\_list\_dispatch**(compute\_list: [int](class_int.md#class-int), x\_groups: [int](class_int.md#class-int), y\_groups: [int](class_int.md#class-int), z\_groups: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-compute-list-dispatch)

Submits the compute list for processing on the GPU. This is the compute equivalent to [draw\_list\_draw()](#class-renderingdevice-method-draw-list-draw).

* * *

void **compute\_list\_dispatch\_indirect**(compute\_list: [int](class_int.md#class-int), buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-compute-list-dispatch-indirect)

Submits the compute list for processing on the GPU with the given group counts stored in the `buffer` at `offset`. Buffer must have been created with [STORAGE\_BUFFER\_USAGE\_DISPATCH\_INDIRECT](#class-renderingdevice-constant-storage-buffer-usage-dispatch-indirect) flag.

* * *

void **compute\_list\_end**() [🔗](#class-renderingdevice-method-compute-list-end)

Finishes a list of compute commands created with the `compute_*` methods.

* * *

void **compute\_list\_set\_push\_constant**(compute\_list: [int](class_int.md#class-int), buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), size\_bytes: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-compute-list-set-push-constant)

Sets the push constant data to `buffer` for the specified `compute_list`. The shader determines how this binary data is used. The buffer's size in bytes must also be specified in `size_bytes` (this can be obtained by calling the [PackedByteArray.size()](class_packedbytearray.md#class-packedbytearray-method-size) method on the passed `buffer`).

* * *

[RID](class_rid.md#class-rid) **compute\_pipeline\_create**(shader: [RID](class_rid.md#class-rid), specialization\_constants: [Array](class_array.md#class-array)\[ [RDPipelineSpecializationConstant](class_rdpipelinespecializationconstant.md#class-rdpipelinespecializationconstant)\] = \[\]) [🔗](#class-renderingdevice-method-compute-pipeline-create)

Creates a new compute pipeline. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[bool](class_bool.md#class-bool) **compute\_pipeline\_is\_valid**(compute\_pipeline: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-compute-pipeline-is-valid)

Returns `true` if the compute pipeline specified by the `compute_pipeline` RID is valid, `false` otherwise.

* * *

[RenderingDevice](#class-renderingdevice) **create\_local\_device**() [🔗](#class-renderingdevice-method-create-local-device)

Create a new local **RenderingDevice**. This is most useful for performing compute operations on the GPU independently from the rest of the engine.

* * *

void **draw\_command\_begin\_label**(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) [🔗](#class-renderingdevice-method-draw-command-begin-label)

Create a command buffer debug label region that can be displayed in third-party tools such as [RenderDoc](https://renderdoc.org/). All regions must be ended with a [draw\_command\_end\_label()](#class-renderingdevice-method-draw-command-end-label) call. When viewed from the linear series of submissions to a single queue, calls to [draw\_command\_begin\_label()](#class-renderingdevice-method-draw-command-begin-label) and [draw\_command\_end\_label()](#class-renderingdevice-method-draw-command-end-label) must be matched and balanced.

The `VK_EXT_DEBUG_UTILS_EXTENSION_NAME` Vulkan extension must be available and enabled for command buffer debug label region to work. See also [draw\_command\_end\_label()](#class-renderingdevice-method-draw-command-end-label).

* * *

void **draw\_command\_end\_label**() [🔗](#class-renderingdevice-method-draw-command-end-label)

Ends the command buffer debug label region started by a [draw\_command\_begin\_label()](#class-renderingdevice-method-draw-command-begin-label) call.

* * *

void **draw\_command\_insert\_label**(name: [String](class_string.md#class-string), color: [Color](class_color.md#class-color)) [🔗](#class-renderingdevice-method-draw-command-insert-label)

**Deprecated:** Inserting labels no longer applies due to command reordering.

This method does nothing.

* * *

[int](class_int.md#class-int) **draw\_list\_begin**(framebuffer: [RID](class_rid.md#class-rid), draw\_flags: BitField\[ [DrawFlags](#enum-renderingdevice-drawflags)\] = 0, clear\_color\_values: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), clear\_depth\_value: [float](class_float.md#class-float) = 1.0, clear\_stencil\_value: [int](class_int.md#class-int) = 0, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), breadcrumb: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-draw-list-begin)

Starts a list of raster drawing commands created with the `draw_*` methods. The returned value should be passed to other `draw_list_*` functions.

Multiple draw lists cannot be created at the same time; you must finish the previous draw list first using [draw\_list\_end()](#class-renderingdevice-method-draw-list-end).

A simple drawing operation might look like this (code is not a complete example):

```
var rd = RenderingDevice.new()
var clear_colors = PackedColorArray([Color(0, 0, 0, 0), Color(0, 0, 0, 0), Color(0, 0, 0, 0)])
var draw_list = rd.draw_list_begin(framebuffers[i], RenderingDevice.CLEAR_COLOR_ALL, clear_colors, true, 1.0f, true, 0, Rect2(), RenderingDevice.OPAQUE_PASS)

# Draw opaque.
rd.draw_list_bind_render_pipeline(draw_list, raster_pipeline)
rd.draw_list_bind_uniform_set(draw_list, raster_base_uniform, 0)
rd.draw_list_set_push_constant(draw_list, raster_push_constant, raster_push_constant.size())
rd.draw_list_draw(draw_list, false, 1, slice_triangle_count[i] * 3)
# Draw wire.
rd.draw_list_bind_render_pipeline(draw_list, raster_pipeline_wire)
rd.draw_list_bind_uniform_set(draw_list, raster_base_uniform, 0)
rd.draw_list_set_push_constant(draw_list, raster_push_constant, raster_push_constant.size())
rd.draw_list_draw(draw_list, false, 1, slice_triangle_count[i] * 3)

rd.draw_list_end()

```

The `draw_flags` indicates if the texture attachments of the framebuffer should be cleared or ignored. Only one of the two flags can be used for each individual attachment. Ignoring an attachment means that any contents that existed before the draw list will be completely discarded, reducing the memory bandwidth used by the render pass but producing garbage results if the pixels aren't replaced. The default behavior allows the engine to figure out the right operation to use if the texture is discardable, which can result in increased performance. See [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) or [texture\_set\_discardable()](#class-renderingdevice-method-texture-set-discardable).

The `breadcrumb` parameter can be an arbitrary 32-bit integer that is useful to diagnose GPU crashes. If Godot is built in dev or debug mode; when the GPU crashes Godot will dump all shaders that were being executed at the time of the crash and the breadcrumb is useful to diagnose what passes did those shaders belong to.

It does not affect rendering behavior and can be set to 0. It is recommended to use [BreadcrumbMarker](#enum-renderingdevice-breadcrumbmarker) enumerations for consistency but it's not required. It is also possible to use bitwise operations to add extra data. e.g.

```
rd.draw_list_begin(fb[i], RenderingDevice.CLEAR_COLOR_ALL, clear_colors, true, 1.0f, true, 0, Rect2(), RenderingDevice.OPAQUE_PASS | 5)

```

* * *

[int](class_int.md#class-int) **draw\_list\_begin\_for\_screen**(screen: [int](class_int.md#class-int) = 0, clear\_color: [Color](class_color.md#class-color) = Color(0, 0, 0, 1)) [🔗](#class-renderingdevice-method-draw-list-begin-for-screen)

High-level variant of [draw\_list\_begin()](#class-renderingdevice-method-draw-list-begin), with the parameters automatically being adjusted for drawing onto the window specified by the `screen` ID.

**Note:** Cannot be used with local RenderingDevices, as these don't have a screen. If called on a local RenderingDevice, [draw\_list\_begin\_for\_screen()](#class-renderingdevice-method-draw-list-begin-for-screen) returns [INVALID\_ID](#class-renderingdevice-constant-invalid-id).

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **draw\_list\_begin\_split**(framebuffer: [RID](class_rid.md#class-rid), splits: [int](class_int.md#class-int), initial\_color\_action: [InitialAction](#enum-renderingdevice-initialaction), final\_color\_action: [FinalAction](#enum-renderingdevice-finalaction), initial\_depth\_action: [InitialAction](#enum-renderingdevice-initialaction), final\_depth\_action: [FinalAction](#enum-renderingdevice-finalaction), clear\_color\_values: [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray) = PackedColorArray(), clear\_depth: [float](class_float.md#class-float) = 1.0, clear\_stencil: [int](class_int.md#class-int) = 0, region: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0), storage\_textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] = \[\]) [🔗](#class-renderingdevice-method-draw-list-begin-split)

**Deprecated:** Split draw lists are used automatically by RenderingDevice.

This method does nothing and always returns an empty [PackedInt64Array](class_packedint64array.md#class-packedint64array).

* * *

void **draw\_list\_bind\_index\_array**(draw\_list: [int](class_int.md#class-int), index\_array: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-draw-list-bind-index-array)

Binds `index_array` to the specified `draw_list`.

* * *

void **draw\_list\_bind\_render\_pipeline**(draw\_list: [int](class_int.md#class-int), render\_pipeline: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-draw-list-bind-render-pipeline)

Binds `render_pipeline` to the specified `draw_list`.

* * *

void **draw\_list\_bind\_uniform\_set**(draw\_list: [int](class_int.md#class-int), uniform\_set: [RID](class_rid.md#class-rid), set\_index: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-draw-list-bind-uniform-set)

Binds `uniform_set` to the specified `draw_list`. A `set_index` must also be specified, which is an identifier starting from `0` that must match the one expected by the draw list.

* * *

void **draw\_list\_bind\_vertex\_array**(draw\_list: [int](class_int.md#class-int), vertex\_array: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-draw-list-bind-vertex-array)

Binds `vertex_array` to the specified `draw_list`.

* * *

void **draw\_list\_disable\_scissor**(draw\_list: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-draw-list-disable-scissor)

Removes and disables the scissor rectangle for the specified `draw_list`. See also [draw\_list\_enable\_scissor()](#class-renderingdevice-method-draw-list-enable-scissor).

* * *

void **draw\_list\_draw**(draw\_list: [int](class_int.md#class-int), use\_indices: [bool](class_bool.md#class-bool), instances: [int](class_int.md#class-int), procedural\_vertex\_count: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-draw-list-draw)

Submits `draw_list` for rendering on the GPU. This is the raster equivalent to [compute\_list\_dispatch()](#class-renderingdevice-method-compute-list-dispatch).

* * *

void **draw\_list\_draw\_indirect**(draw\_list: [int](class_int.md#class-int), use\_indices: [bool](class_bool.md#class-bool), buffer: [RID](class_rid.md#class-rid), offset: [int](class_int.md#class-int) = 0, draw\_count: [int](class_int.md#class-int) = 1, stride: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-draw-list-draw-indirect)

Submits `draw_list` for rendering on the GPU with the given parameters stored in the `buffer` at `offset`. Parameters being integers: vertex count, instance count, first vertex, first instance. And when using indices: index count, instance count, first index, vertex offset, first instance. Buffer must have been created with [STORAGE\_BUFFER\_USAGE\_DISPATCH\_INDIRECT](#class-renderingdevice-constant-storage-buffer-usage-dispatch-indirect) flag.

* * *

void **draw\_list\_enable\_scissor**(draw\_list: [int](class_int.md#class-int), rect: [Rect2](class_rect2.md#class-rect2) = Rect2(0, 0, 0, 0)) [🔗](#class-renderingdevice-method-draw-list-enable-scissor)

Creates a scissor rectangle and enables it for the specified `draw_list`. Scissor rectangles are used for clipping by discarding fragments that fall outside a specified rectangular portion of the screen. See also [draw\_list\_disable\_scissor()](#class-renderingdevice-method-draw-list-disable-scissor).

**Note:** The specified `rect` is automatically intersected with the screen's dimensions, which means it cannot exceed the screen's dimensions.

* * *

void **draw\_list\_end**() [🔗](#class-renderingdevice-method-draw-list-end)

Finishes a list of raster drawing commands created with the `draw_*` methods.

* * *

void **draw\_list\_set\_blend\_constants**(draw\_list: [int](class_int.md#class-int), color: [Color](class_color.md#class-color)) [🔗](#class-renderingdevice-method-draw-list-set-blend-constants)

Sets blend constants for the specified `draw_list` to `color`. Blend constants are used only if the graphics pipeline is created with [DYNAMIC\_STATE\_BLEND\_CONSTANTS](#class-renderingdevice-constant-dynamic-state-blend-constants) flag set.

* * *

void **draw\_list\_set\_push\_constant**(draw\_list: [int](class_int.md#class-int), buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), size\_bytes: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-draw-list-set-push-constant)

Sets the push constant data to `buffer` for the specified `draw_list`. The shader determines how this binary data is used. The buffer's size in bytes must also be specified in `size_bytes` (this can be obtained by calling the [PackedByteArray.size()](class_packedbytearray.md#class-packedbytearray-method-size) method on the passed `buffer`).

* * *

[int](class_int.md#class-int) **draw\_list\_switch\_to\_next\_pass**() [🔗](#class-renderingdevice-method-draw-list-switch-to-next-pass)

Switches to the next draw pass.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **draw\_list\_switch\_to\_next\_pass\_split**(splits: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-draw-list-switch-to-next-pass-split)

**Deprecated:** Split draw lists are used automatically by RenderingDevice.

This method does nothing and always returns an empty [PackedInt64Array](class_packedint64array.md#class-packedint64array).

* * *

[RID](class_rid.md#class-rid) **framebuffer\_create**(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], validate\_with\_format: [int](class_int.md#class-int) = -1, view\_count: [int](class_int.md#class-int) = 1) [🔗](#class-renderingdevice-method-framebuffer-create)

Creates a new framebuffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **framebuffer\_create\_empty**(size: [Vector2i](class_vector2i.md#class-vector2i), samples: [TextureSamples](#enum-renderingdevice-texturesamples) = 0, validate\_with\_format: [int](class_int.md#class-int) = -1) [🔗](#class-renderingdevice-method-framebuffer-create-empty)

Creates a new empty framebuffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **framebuffer\_create\_multipass**(textures: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], validate\_with\_format: [int](class_int.md#class-int) = -1, view\_count: [int](class_int.md#class-int) = 1) [🔗](#class-renderingdevice-method-framebuffer-create-multipass)

Creates a new multipass framebuffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[int](class_int.md#class-int) **framebuffer\_format\_create**(attachments: [Array](class_array.md#class-array)\[ [RDAttachmentFormat](class_rdattachmentformat.md#class-rdattachmentformat)\], view\_count: [int](class_int.md#class-int) = 1) [🔗](#class-renderingdevice-method-framebuffer-format-create)

Creates a new framebuffer format with the specified `attachments` and `view_count`. Returns the new framebuffer's unique framebuffer format ID.

If `view_count` is greater than or equal to `2`, enables multiview which is used for VR rendering. This requires support for the Vulkan multiview extension.

* * *

[int](class_int.md#class-int) **framebuffer\_format\_create\_empty**(samples: [TextureSamples](#enum-renderingdevice-texturesamples) = 0) [🔗](#class-renderingdevice-method-framebuffer-format-create-empty)

Creates a new empty framebuffer format with the specified number of `samples` and returns its ID.

* * *

[int](class_int.md#class-int) **framebuffer\_format\_create\_multipass**(attachments: [Array](class_array.md#class-array)\[ [RDAttachmentFormat](class_rdattachmentformat.md#class-rdattachmentformat)\], passes: [Array](class_array.md#class-array)\[ [RDFramebufferPass](class_rdframebufferpass.md#class-rdframebufferpass)\], view\_count: [int](class_int.md#class-int) = 1) [🔗](#class-renderingdevice-method-framebuffer-format-create-multipass)

Creates a multipass framebuffer format with the specified `attachments`, `passes` and `view_count` and returns its ID. If `view_count` is greater than or equal to `2`, enables multiview which is used for VR rendering. This requires support for the Vulkan multiview extension.

* * *

[TextureSamples](#enum-renderingdevice-texturesamples) **framebuffer\_format\_get\_texture\_samples**(format: [int](class_int.md#class-int), render\_pass: [int](class_int.md#class-int) = 0) [🔗](#class-renderingdevice-method-framebuffer-format-get-texture-samples)

Returns the number of texture samples used for the given framebuffer `format` ID (returned by [framebuffer\_get\_format()](#class-renderingdevice-method-framebuffer-get-format)).

* * *

[int](class_int.md#class-int) **framebuffer\_get\_format**(framebuffer: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-framebuffer-get-format)

Returns the format ID of the framebuffer specified by the `framebuffer` RID. This ID is guaranteed to be unique for the same formats and does not need to be freed.

* * *

[bool](class_bool.md#class-bool) **framebuffer\_is\_valid**(framebuffer: [RID](class_rid.md#class-rid)) const [🔗](#class-renderingdevice-method-framebuffer-is-valid)

Returns `true` if the framebuffer specified by the `framebuffer` RID is valid, `false` otherwise.

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-free-rid)

Tries to free an object in the RenderingDevice. To avoid memory leaks, this should be called after using an object as memory management does not occur automatically when using RenderingDevice directly.

* * *

void **full\_barrier**() [🔗](#class-renderingdevice-method-full-barrier)

**Deprecated:** Barriers are automatically inserted by RenderingDevice.

This method does nothing.

* * *

[int](class_int.md#class-int) **get\_captured\_timestamp\_cpu\_time**(index: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-captured-timestamp-cpu-time)

Returns the timestamp in CPU time for the rendering step specified by `index` (in microseconds since the engine started). See also [get\_captured\_timestamp\_gpu\_time()](#class-renderingdevice-method-get-captured-timestamp-gpu-time) and [capture\_timestamp()](#class-renderingdevice-method-capture-timestamp).

* * *

[int](class_int.md#class-int) **get\_captured\_timestamp\_gpu\_time**(index: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-captured-timestamp-gpu-time)

Returns the timestamp in GPU time for the rendering step specified by `index` (in microseconds since the engine started). See also [get\_captured\_timestamp\_cpu\_time()](#class-renderingdevice-method-get-captured-timestamp-cpu-time) and [capture\_timestamp()](#class-renderingdevice-method-capture-timestamp).

* * *

[String](class_string.md#class-string) **get\_captured\_timestamp\_name**(index: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-captured-timestamp-name)

Returns the timestamp's name for the rendering step specified by `index`. See also [capture\_timestamp()](#class-renderingdevice-method-capture-timestamp).

* * *

[int](class_int.md#class-int) **get\_captured\_timestamps\_count**() const [🔗](#class-renderingdevice-method-get-captured-timestamps-count)

Returns the total number of timestamps (rendering steps) available for profiling.

* * *

[int](class_int.md#class-int) **get\_captured\_timestamps\_frame**() const [🔗](#class-renderingdevice-method-get-captured-timestamps-frame)

Returns the index of the last frame rendered that has rendering timestamps available for querying.

* * *

[int](class_int.md#class-int) **get\_device\_allocation\_count**() const [🔗](#class-renderingdevice-method-get-device-allocation-count)

Returns how many allocations the GPU has performed for internal driver structures.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[int](class_int.md#class-int) **get\_device\_allocs\_by\_object\_type**(type: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-device-allocs-by-object-type)

Same as [get\_device\_allocation\_count()](#class-renderingdevice-method-get-device-allocation-count) but filtered for a given object type.

The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count) is 0, then type argument is ignored and always returns 0.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[int](class_int.md#class-int) **get\_device\_memory\_by\_object\_type**(type: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-device-memory-by-object-type)

Same as [get\_device\_total\_memory()](#class-renderingdevice-method-get-device-total-memory) but filtered for a given object type.

The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count) is 0, then type argument is ignored and always returns 0.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[String](class_string.md#class-string) **get\_device\_name**() const [🔗](#class-renderingdevice-method-get-device-name)

Returns the name of the video adapter (e.g. "GeForce GTX 1080/PCIe/SSE2"). Equivalent to [RenderingServer.get\_video\_adapter\_name()](class_renderingserver.md#class-renderingserver-method-get-video-adapter-name). See also [get\_device\_vendor\_name()](#class-renderingdevice-method-get-device-vendor-name).

* * *

[String](class_string.md#class-string) **get\_device\_pipeline\_cache\_uuid**() const [🔗](#class-renderingdevice-method-get-device-pipeline-cache-uuid)

Returns the universally unique identifier for the pipeline cache. This is used to cache shader files on disk, which avoids shader recompilations on subsequent engine runs. This UUID varies depending on the graphics card model, but also the driver version. Therefore, updating graphics drivers will invalidate the shader cache.

* * *

[int](class_int.md#class-int) **get\_device\_total\_memory**() const [🔗](#class-renderingdevice-method-get-device-total-memory)

Returns how much bytes the GPU is using.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[String](class_string.md#class-string) **get\_device\_vendor\_name**() const [🔗](#class-renderingdevice-method-get-device-vendor-name)

Returns the vendor of the video adapter (e.g. "NVIDIA Corporation"). Equivalent to [RenderingServer.get\_video\_adapter\_vendor()](class_renderingserver.md#class-renderingserver-method-get-video-adapter-vendor). See also [get\_device\_name()](#class-renderingdevice-method-get-device-name).

* * *

[int](class_int.md#class-int) **get\_driver\_allocation\_count**() const [🔗](#class-renderingdevice-method-get-driver-allocation-count)

Returns how many allocations the GPU driver has performed for internal driver structures.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[int](class_int.md#class-int) **get\_driver\_allocs\_by\_object\_type**(type: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-driver-allocs-by-object-type)

Same as [get\_driver\_allocation\_count()](#class-renderingdevice-method-get-driver-allocation-count) but filtered for a given object type.

The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count) is 0, then type argument is ignored and always returns 0.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[String](class_string.md#class-string) **get\_driver\_and\_device\_memory\_report**() const [🔗](#class-renderingdevice-method-get-driver-and-device-memory-report)

Returns string report in CSV format using the following methods:

- [get\_tracked\_object\_name()](#class-renderingdevice-method-get-tracked-object-name)

- [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count)

- [get\_driver\_total\_memory()](#class-renderingdevice-method-get-driver-total-memory)

- [get\_driver\_allocation\_count()](#class-renderingdevice-method-get-driver-allocation-count)

- [get\_driver\_memory\_by\_object\_type()](#class-renderingdevice-method-get-driver-memory-by-object-type)

- [get\_driver\_allocs\_by\_object\_type()](#class-renderingdevice-method-get-driver-allocs-by-object-type)

- [get\_device\_total\_memory()](#class-renderingdevice-method-get-device-total-memory)

- [get\_device\_allocation\_count()](#class-renderingdevice-method-get-device-allocation-count)

- [get\_device\_memory\_by\_object\_type()](#class-renderingdevice-method-get-device-memory-by-object-type)

- [get\_device\_allocs\_by\_object\_type()](#class-renderingdevice-method-get-device-allocs-by-object-type)


This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[int](class_int.md#class-int) **get\_driver\_memory\_by\_object\_type**(type: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-driver-memory-by-object-type)

Same as [get\_driver\_total\_memory()](#class-renderingdevice-method-get-driver-total-memory) but filtered for a given object type.

The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count) is 0, then type argument is ignored and always returns 0.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[int](class_int.md#class-int) **get\_driver\_resource**(resource: [DriverResource](#enum-renderingdevice-driverresource), rid: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-get-driver-resource)

Returns the unique identifier of the driver `resource` for the specified `rid`. Some driver resource types ignore the specified `rid`. `index` is always ignored but must be specified anyway.

* * *

[int](class_int.md#class-int) **get\_driver\_total\_memory**() const [🔗](#class-renderingdevice-method-get-driver-total-memory)

Returns how much bytes the GPU driver is using for internal driver structures.

This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.

* * *

[int](class_int.md#class-int) **get\_frame\_delay**() const [🔗](#class-renderingdevice-method-get-frame-delay)

Returns the frame count kept by the graphics API. Higher values result in higher input lag, but with more consistent throughput. For the main **RenderingDevice**, frames are cycled (usually 3 with triple-buffered V-Sync enabled). However, local **RenderingDevice** s only have 1 frame.

* * *

[int](class_int.md#class-int) **get\_memory\_usage**(type: [MemoryType](#enum-renderingdevice-memorytype)) const [🔗](#class-renderingdevice-method-get-memory-usage)

Returns the memory usage in bytes corresponding to the given `type`. When using Vulkan, these statistics are calculated by [Vulkan Memory Allocator](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator).

* * *

[String](class_string.md#class-string) **get\_perf\_report**() const [🔗](#class-renderingdevice-method-get-perf-report)

Returns a string with a performance report from the past frame. Updates every frame.

* * *

[String](class_string.md#class-string) **get\_tracked\_object\_name**(type\_index: [int](class_int.md#class-int)) const [🔗](#class-renderingdevice-method-get-tracked-object-name)

Returns the name of the type of object for the given `type_index`. This value must be in range `[0; get_tracked_object_type_count - 1]`. If [get\_tracked\_object\_type\_count()](#class-renderingdevice-method-get-tracked-object-type-count) is 0, then type argument is ignored and always returns the same string.

The return value is important because it gives meaning to the types passed to [get\_driver\_memory\_by\_object\_type()](#class-renderingdevice-method-get-driver-memory-by-object-type), [get\_driver\_allocs\_by\_object\_type()](#class-renderingdevice-method-get-driver-allocs-by-object-type), [get\_device\_memory\_by\_object\_type()](#class-renderingdevice-method-get-device-memory-by-object-type), and [get\_device\_allocs\_by\_object\_type()](#class-renderingdevice-method-get-device-allocs-by-object-type). Examples of strings it can return (not exhaustive):

- DEVICE\_MEMORY

- PIPELINE\_CACHE

- SWAPCHAIN\_KHR

- COMMAND\_POOL


Thus if e.g. `get_tracked_object_name(5)` returns "COMMAND\_POOL", then `get_device_memory_by_object_type(5)` returns the bytes used by the GPU for command pools.

This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[int](class_int.md#class-int) **get\_tracked\_object\_type\_count**() const [🔗](#class-renderingdevice-method-get-tracked-object-type-count)

Returns how many types of trackable objects there are.

This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` [command line argument](../tutorials/editor/command_line_tutorial.md).

* * *

[bool](class_bool.md#class-bool) **has\_feature**(feature: [Features](#enum-renderingdevice-features)) const [🔗](#class-renderingdevice-method-has-feature)

Returns `true` if the `feature` is supported by the GPU.

* * *

[RID](class_rid.md#class-rid) **index\_array\_create**(index\_buffer: [RID](class_rid.md#class-rid), index\_offset: [int](class_int.md#class-int), index\_count: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-index-array-create)

Creates a new index array. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **index\_buffer\_create**(size\_indices: [int](class_int.md#class-int), format: [IndexBufferFormat](#enum-renderingdevice-indexbufferformat), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), use\_restart\_indices: [bool](class_bool.md#class-bool) = false, creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) [🔗](#class-renderingdevice-method-index-buffer-create)

Creates a new index buffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[int](class_int.md#class-int) **limit\_get**(limit: [Limit](#enum-renderingdevice-limit)) const [🔗](#class-renderingdevice-method-limit-get)

Returns the value of the specified `limit`. This limit varies depending on the current graphics hardware (and sometimes the driver version). If the given limit is exceeded, rendering errors will occur.

Limits for various graphics hardware can be found in the [Vulkan Hardware Database](https://vulkan.gpuinfo.org/).

* * *

[RID](class_rid.md#class-rid) **render\_pipeline\_create**(shader: [RID](class_rid.md#class-rid), framebuffer\_format: [int](class_int.md#class-int), vertex\_format: [int](class_int.md#class-int), primitive: [RenderPrimitive](#enum-renderingdevice-renderprimitive), rasterization\_state: [RDPipelineRasterizationState](class_rdpipelinerasterizationstate.md#class-rdpipelinerasterizationstate), multisample\_state: [RDPipelineMultisampleState](class_rdpipelinemultisamplestate.md#class-rdpipelinemultisamplestate), stencil\_state: [RDPipelineDepthStencilState](class_rdpipelinedepthstencilstate.md#class-rdpipelinedepthstencilstate), color\_blend\_state: [RDPipelineColorBlendState](class_rdpipelinecolorblendstate.md#class-rdpipelinecolorblendstate), dynamic\_state\_flags: BitField\[ [PipelineDynamicStateFlags](#enum-renderingdevice-pipelinedynamicstateflags)\] = 0, for\_render\_pass: [int](class_int.md#class-int) = 0, specialization\_constants: [Array](class_array.md#class-array)\[ [RDPipelineSpecializationConstant](class_rdpipelinespecializationconstant.md#class-rdpipelinespecializationconstant)\] = \[\]) [🔗](#class-renderingdevice-method-render-pipeline-create)

Creates a new render pipeline. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[bool](class_bool.md#class-bool) **render\_pipeline\_is\_valid**(render\_pipeline: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-render-pipeline-is-valid)

Returns `true` if the render pipeline specified by the `render_pipeline` RID is valid, `false` otherwise.

* * *

[RID](class_rid.md#class-rid) **sampler\_create**(state: [RDSamplerState](class_rdsamplerstate.md#class-rdsamplerstate)) [🔗](#class-renderingdevice-method-sampler-create)

Creates a new sampler. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[bool](class_bool.md#class-bool) **sampler\_is\_format\_supported\_for\_filter**(format: [DataFormat](#enum-renderingdevice-dataformat), sampler\_filter: [SamplerFilter](#enum-renderingdevice-samplerfilter)) const [🔗](#class-renderingdevice-method-sampler-is-format-supported-for-filter)

Returns `true` if implementation supports using a texture of `format` with the given `sampler_filter`.

* * *

[int](class_int.md#class-int) **screen\_get\_framebuffer\_format**(screen: [int](class_int.md#class-int) = 0) const [🔗](#class-renderingdevice-method-screen-get-framebuffer-format)

Returns the framebuffer format of the given screen.

**Note:** Only the main **RenderingDevice** returned by [RenderingServer.get\_rendering\_device()](class_renderingserver.md#class-renderingserver-method-get-rendering-device) has a format. If called on a local **RenderingDevice**, this method prints an error and returns [INVALID\_ID](#class-renderingdevice-constant-invalid-id).

* * *

[int](class_int.md#class-int) **screen\_get\_height**(screen: [int](class_int.md#class-int) = 0) const [🔗](#class-renderingdevice-method-screen-get-height)

Returns the window height matching the graphics API context for the given window ID (in pixels). Despite the parameter being named `screen`, this returns the _window_ size. See also [screen\_get\_width()](#class-renderingdevice-method-screen-get-width).

**Note:** Only the main **RenderingDevice** returned by [RenderingServer.get\_rendering\_device()](class_renderingserver.md#class-renderingserver-method-get-rendering-device) has a height. If called on a local **RenderingDevice**, this method prints an error and returns [INVALID\_ID](#class-renderingdevice-constant-invalid-id).

* * *

[int](class_int.md#class-int) **screen\_get\_width**(screen: [int](class_int.md#class-int) = 0) const [🔗](#class-renderingdevice-method-screen-get-width)

Returns the window width matching the graphics API context for the given window ID (in pixels). Despite the parameter being named `screen`, this returns the _window_ size. See also [screen\_get\_height()](#class-renderingdevice-method-screen-get-height).

**Note:** Only the main **RenderingDevice** returned by [RenderingServer.get\_rendering\_device()](class_renderingserver.md#class-renderingserver-method-get-rendering-device) has a width. If called on a local **RenderingDevice**, this method prints an error and returns [INVALID\_ID](#class-renderingdevice-constant-invalid-id).

* * *

void **set\_resource\_name**(id: [RID](class_rid.md#class-rid), name: [String](class_string.md#class-string)) [🔗](#class-renderingdevice-method-set-resource-name)

Sets the resource name for `id` to `name`. This is used for debugging with third-party tools such as [RenderDoc](https://renderdoc.org/).

The following types of resources can be named: texture, sampler, vertex buffer, index buffer, uniform buffer, texture buffer, storage buffer, uniform set buffer, shader, render pipeline and compute pipeline. Framebuffers cannot be named. Attempting to name an incompatible resource type will print an error.

**Note:** Resource names are only set when the engine runs in verbose mode ( [OS.is\_stdout\_verbose()](class_os.md#class-os-method-is-stdout-verbose) = `true`), or when using an engine build compiled with the `dev_mode=yes` SCons option. The graphics driver must also support the `VK_EXT_DEBUG_UTILS_EXTENSION_NAME` Vulkan extension for named resources to work.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **shader\_compile\_binary\_from\_spirv**(spirv\_data: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), name: [String](class_string.md#class-string) = "") [🔗](#class-renderingdevice-method-shader-compile-binary-from-spirv)

Compiles a binary shader from `spirv_data` and returns the compiled binary data as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This compiled shader is specific to the GPU model and driver version used; it will not work on different GPU models or even different driver versions. See also [shader\_compile\_spirv\_from\_source()](#class-renderingdevice-method-shader-compile-spirv-from-source).

`name` is an optional human-readable name that can be given to the compiled shader for organizational purposes.

* * *

[RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv) **shader\_compile\_spirv\_from\_source**(shader\_source: [RDShaderSource](class_rdshadersource.md#class-rdshadersource), allow\_cache: [bool](class_bool.md#class-bool) = true) [🔗](#class-renderingdevice-method-shader-compile-spirv-from-source)

Compiles a SPIR-V from the shader source code in `shader_source` and returns the SPIR-V as an [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv). This intermediate language shader is portable across different GPU models and driver versions, but cannot be run directly by GPUs until compiled into a binary shader using [shader\_compile\_binary\_from\_spirv()](#class-renderingdevice-method-shader-compile-binary-from-spirv).

If `allow_cache` is `true`, make use of the shader cache generated by Godot. This avoids a potentially lengthy shader compilation step if the shader is already in cache. If `allow_cache` is `false`, Godot's shader cache is ignored and the shader will always be recompiled.

* * *

[RID](class_rid.md#class-rid) **shader\_create\_from\_bytecode**(binary\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), placeholder\_rid: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-renderingdevice-method-shader-create-from-bytecode)

Creates a new shader instance from a binary compiled shader. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method. See also [shader\_compile\_binary\_from\_spirv()](#class-renderingdevice-method-shader-compile-binary-from-spirv) and [shader\_create\_from\_spirv()](#class-renderingdevice-method-shader-create-from-spirv).

* * *

[RID](class_rid.md#class-rid) **shader\_create\_from\_spirv**(spirv\_data: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), name: [String](class_string.md#class-string) = "") [🔗](#class-renderingdevice-method-shader-create-from-spirv)

Creates a new shader instance from SPIR-V intermediate code. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method. See also [shader\_compile\_spirv\_from\_source()](#class-renderingdevice-method-shader-compile-spirv-from-source) and [shader\_create\_from\_bytecode()](#class-renderingdevice-method-shader-create-from-bytecode).

* * *

[RID](class_rid.md#class-rid) **shader\_create\_placeholder**() [🔗](#class-renderingdevice-method-shader-create-placeholder)

Create a placeholder RID by allocating an RID without initializing it for use in [shader\_create\_from\_bytecode()](#class-renderingdevice-method-shader-create-from-bytecode). This allows you to create an RID for a shader and pass it around, but defer compiling the shader to a later time.

* * *

[int](class_int.md#class-int) **shader\_get\_vertex\_input\_attribute\_mask**(shader: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-shader-get-vertex-input-attribute-mask)

Returns the internal vertex input mask. Internally, the vertex input mask is an unsigned integer consisting of the locations (specified in GLSL via. `layout(location = ...)`) of the input variables (specified in GLSL by the `in` keyword).

* * *

[RID](class_rid.md#class-rid) **storage\_buffer\_create**(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), usage: BitField\[ [StorageBufferUsage](#enum-renderingdevice-storagebufferusage)\] = 0, creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) [🔗](#class-renderingdevice-method-storage-buffer-create)

Creates a [storage buffer](https://vkguide.dev/docs/chapter-4/storage_buffers/) with the specified `data` and `usage`. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

void **submit**() [🔗](#class-renderingdevice-method-submit)

Pushes the frame setup and draw command buffers then marks the local device as currently processing (which allows calling [sync()](#class-renderingdevice-method-sync)).

**Note:** Only available in local RenderingDevices.

* * *

void **sync**() [🔗](#class-renderingdevice-method-sync)

Forces a synchronization between the CPU and GPU, which may be required in certain cases. Only call this when needed, as CPU-GPU synchronization has a performance cost.

**Note:** Only available in local RenderingDevices.

**Note:** [sync()](#class-renderingdevice-method-sync) can only be called after a [submit()](#class-renderingdevice-method-submit).

* * *

[RID](class_rid.md#class-rid) **texture\_buffer\_create**(size\_bytes: [int](class_int.md#class-int), format: [DataFormat](#enum-renderingdevice-dataformat), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) [🔗](#class-renderingdevice-method-texture-buffer-create)

Creates a new texture buffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **texture\_clear**(texture: [RID](class_rid.md#class-rid), color: [Color](class_color.md#class-color), base\_mipmap: [int](class_int.md#class-int), mipmap\_count: [int](class_int.md#class-int), base\_layer: [int](class_int.md#class-int), layer\_count: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-texture-clear)

Clears the specified `texture` by replacing all of its pixels with the specified `color`. `base_mipmap` and `mipmap_count` determine which mipmaps of the texture are affected by this clear operation, while `base_layer` and `layer_count` determine which layers of a 3D texture (or texture array) are affected by this clear operation. For 2D textures (which only have one layer by design), `base_layer` must be `0` and `layer_count` must be `1`.

**Note:** `texture` can't be cleared while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to clear this texture.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **texture\_copy**(from\_texture: [RID](class_rid.md#class-rid), to\_texture: [RID](class_rid.md#class-rid), from\_pos: [Vector3](class_vector3.md#class-vector3), to\_pos: [Vector3](class_vector3.md#class-vector3), size: [Vector3](class_vector3.md#class-vector3), src\_mipmap: [int](class_int.md#class-int), dst\_mipmap: [int](class_int.md#class-int), src\_layer: [int](class_int.md#class-int), dst\_layer: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-texture-copy)

Copies the `from_texture` to `to_texture` with the specified `from_pos`, `to_pos` and `size` coordinates. The Z axis of the `from_pos`, `to_pos` and `size` must be `0` for 2-dimensional textures. Source and destination mipmaps/layers must also be specified, with these parameters being `0` for textures without mipmaps or single-layer textures. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the texture copy was successful or [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) otherwise.

**Note:** `from_texture` texture can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to copy this texture.

**Note:** `from_texture` texture requires the [TEXTURE\_USAGE\_CAN\_COPY\_FROM\_BIT](#class-renderingdevice-constant-texture-usage-can-copy-from-bit) to be retrieved.

**Note:** `to_texture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to copy this texture.

**Note:** `to_texture` requires the [TEXTURE\_USAGE\_CAN\_COPY\_TO\_BIT](#class-renderingdevice-constant-texture-usage-can-copy-to-bit) to be retrieved.

**Note:** `from_texture` and `to_texture` must be of the same type (color or depth).

* * *

[RID](class_rid.md#class-rid) **texture\_create**(format: [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), data: [Array](class_array.md#class-array)\[ [PackedByteArray](class_packedbytearray.md#class-packedbytearray)\] = \[\]) [🔗](#class-renderingdevice-method-texture-create)

Creates a new texture. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

**Note:** `data` takes an [Array](class_array.md#class-array) of [PackedByteArray](class_packedbytearray.md#class-packedbytearray) s. For [TEXTURE\_TYPE\_1D](#class-renderingdevice-constant-texture-type-1d), [TEXTURE\_TYPE\_2D](#class-renderingdevice-constant-texture-type-2d), and [TEXTURE\_TYPE\_3D](#class-renderingdevice-constant-texture-type-3d) types, this array should only have one element, a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) containing all the data for the texture. For `_ARRAY` and `_CUBE` types, the length should be the same as the number of [RDTextureFormat.array\_layers](class_rdtextureformat.md#class-rdtextureformat-property-array-layers) in `format`.

**Note:** Not to be confused with [RenderingServer.texture\_2d\_create()](class_renderingserver.md#class-renderingserver-method-texture-2d-create), which creates the Godot-specific [Texture2D](class_texture2d.md#class-texture2d) resource as opposed to the graphics API's own texture type.

* * *

[RID](class_rid.md#class-rid) **texture\_create\_from\_extension**(type: [TextureType](#enum-renderingdevice-texturetype), format: [DataFormat](#enum-renderingdevice-dataformat), samples: [TextureSamples](#enum-renderingdevice-texturesamples), usage\_flags: BitField\[ [TextureUsageBits](#enum-renderingdevice-textureusagebits)\], image: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int) = 1) [🔗](#class-renderingdevice-method-texture-create-from-extension)

Returns an RID for an existing `image` ( `VkImage`) with the given `type`, `format`, `samples`, `usage_flags`, `width`, `height`, `depth`, `layers`, and `mipmaps`. This can be used to allow Godot to render onto foreign images.

* * *

[RID](class_rid.md#class-rid) **texture\_create\_shared**(view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), with\_texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-create-shared)

Creates a shared texture using the specified `view` and the texture information from `with_texture`.

* * *

[RID](class_rid.md#class-rid) **texture\_create\_shared\_from\_slice**(view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), with\_texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int) = 1, slice\_type: [TextureSliceType](#enum-renderingdevice-textureslicetype) = 0) [🔗](#class-renderingdevice-method-texture-create-shared-from-slice)

Creates a shared texture using the specified `view` and the texture information from `with_texture`'s `layer` and `mipmap`. The number of included mipmaps from the original texture can be controlled using the `mipmaps` parameter. Only relevant for textures with multiple layers, such as 3D textures, texture arrays and cubemaps. For single-layer textures, use [texture\_create\_shared()](#class-renderingdevice-method-texture-create-shared).

For 2D textures (which only have one layer), `layer` must be `0`.

**Note:** Layer slicing is only supported for 2D texture arrays, not 3D textures or cubemaps.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **texture\_get\_data**(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-texture-get-data)

Returns the `texture` data for the specified `layer` as raw binary data. For 2D textures (which only have one layer), `layer` must be `0`.

**Note:** `texture` can't be retrieved while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to retrieve this texture. Otherwise, an error is printed and an empty [PackedByteArray](class_packedbytearray.md#class-packedbytearray) is returned.

**Note:** `texture` requires the [TEXTURE\_USAGE\_CAN\_COPY\_FROM\_BIT](#class-renderingdevice-constant-texture-usage-can-copy-from-bit) to be retrieved. Otherwise, an error is printed and an empty [PackedByteArray](class_packedbytearray.md#class-packedbytearray) is returned.

**Note:** This method will block the GPU from working until the data is retrieved. Refer to [texture\_get\_data\_async()](#class-renderingdevice-method-texture-get-data-async) for an alternative that returns the data in more performant way.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **texture\_get\_data\_async**(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-renderingdevice-method-texture-get-data-async)

Asynchronous version of [texture\_get\_data()](#class-renderingdevice-method-texture-get-data). RenderingDevice will call `callback` in a certain amount of frames with the data the texture had at the time of the request.

**Note:** At the moment, the delay corresponds to the amount of frames specified by [ProjectSettings.rendering/rendering\_device/vsync/frame\_queue\_size](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-vsync-frame-queue-size).

**Note:** Downloading large textures can have a prohibitive cost for real-time even when using the asynchronous method due to hardware bandwidth limitations. When dealing with large resources, you can adjust settings such as [ProjectSettings.rendering/rendering\_device/staging\_buffer/texture\_download\_region\_size\_px](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-staging-buffer-texture-download-region-size-px) and [ProjectSettings.rendering/rendering\_device/staging\_buffer/block\_size\_kb](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-staging-buffer-block-size-kb) to improve the transfer speed at the cost of extra memory.

```
func _texture_get_data_callback(array):
    value = array.decode_u32(0)

...

rd.texture_get_data_async(texture, 0, _texture_get_data_callback)

```

* * *

[RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) **texture\_get\_format**(texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-get-format)

Returns the data format used to create this texture.

* * *

[int](class_int.md#class-int) **texture\_get\_native\_handle**(texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-get-native-handle)

**Deprecated:** Use [get\_driver\_resource()](#class-renderingdevice-method-get-driver-resource) with [DRIVER\_RESOURCE\_TEXTURE](#class-renderingdevice-constant-driver-resource-texture) instead.

Returns the internal graphics handle for this texture object. For use when communicating with third-party APIs mostly with GDExtension.

**Note:** This function returns a `uint64_t` which internally maps to a `GLuint` (OpenGL) or `VkImage` (Vulkan).

* * *

[bool](class_bool.md#class-bool) **texture\_is\_discardable**(texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-is-discardable)

Returns `true` if the `texture` is discardable, `false` otherwise. See [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) or [texture\_set\_discardable()](#class-renderingdevice-method-texture-set-discardable).

* * *

[bool](class_bool.md#class-bool) **texture\_is\_format\_supported\_for\_usage**(format: [DataFormat](#enum-renderingdevice-dataformat), usage\_flags: BitField\[ [TextureUsageBits](#enum-renderingdevice-textureusagebits)\]) const [🔗](#class-renderingdevice-method-texture-is-format-supported-for-usage)

Returns `true` if the specified `format` is supported for the given `usage_flags`, `false` otherwise.

* * *

[bool](class_bool.md#class-bool) **texture\_is\_shared**(texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-is-shared)

Returns `true` if the `texture` is shared, `false` otherwise. See [RDTextureView](class_rdtextureview.md#class-rdtextureview).

* * *

[bool](class_bool.md#class-bool) **texture\_is\_valid**(texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-is-valid)

Returns `true` if the `texture` is valid, `false` otherwise.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **texture\_resolve\_multisample**(from\_texture: [RID](class_rid.md#class-rid), to\_texture: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-texture-resolve-multisample)

Resolves the `from_texture` texture onto `to_texture` with multisample antialiasing enabled. This must be used when rendering a framebuffer for MSAA to work. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if successful, [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) otherwise.

**Note:** `from_texture` and `to_texture` textures must have the same dimension, format and type (color or depth).

**Note:** `from_texture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to resolve this texture.

**Note:** `from_texture` requires the [TEXTURE\_USAGE\_CAN\_COPY\_FROM\_BIT](#class-renderingdevice-constant-texture-usage-can-copy-from-bit) to be retrieved.

**Note:** `from_texture` must be multisampled and must also be 2D (or a slice of a 3D/cubemap texture).

**Note:** `to_texture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to resolve this texture.

**Note:** `to_texture` texture requires the [TEXTURE\_USAGE\_CAN\_COPY\_TO\_BIT](#class-renderingdevice-constant-texture-usage-can-copy-to-bit) to be retrieved.

**Note:** `to_texture` texture must **not** be multisampled and must also be 2D (or a slice of a 3D/cubemap texture).

* * *

void **texture\_set\_discardable**(texture: [RID](class_rid.md#class-rid), discardable: [bool](class_bool.md#class-bool)) [🔗](#class-renderingdevice-method-texture-set-discardable)

Updates the discardable property of `texture`.

If a texture is discardable, its contents do not need to be preserved between frames. This flag is only relevant when the texture is used as target in a draw list.

This information is used by **RenderingDevice** to figure out if a texture's contents can be discarded, eliminating unnecessary writes to memory and boosting performance.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **texture\_update**(texture: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-renderingdevice-method-texture-update)

Updates texture data with new data, replacing the previous data in place. The updated texture data must have the same dimensions and format. For 2D textures (which only have one layer), `layer` must be `0`. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if the update was successful, [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) otherwise.

**Note:** Updating textures is forbidden during creation of a draw or compute list.

**Note:** The existing `texture` can't be updated while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to [FINAL\_ACTION\_CONTINUE](#class-renderingdevice-constant-final-action-continue)) to update this texture.

**Note:** The existing `texture` requires the [TEXTURE\_USAGE\_CAN\_UPDATE\_BIT](#class-renderingdevice-constant-texture-usage-can-update-bit) to be updatable.

* * *

[RID](class_rid.md#class-rid) **uniform\_buffer\_create**(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) [🔗](#class-renderingdevice-method-uniform-buffer-create)

Creates a new uniform buffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[RID](class_rid.md#class-rid) **uniform\_set\_create**(uniforms: [Array](class_array.md#class-array)\[ [RDUniform](class_rduniform.md#class-rduniform)\], shader: [RID](class_rid.md#class-rid), shader\_set: [int](class_int.md#class-int)) [🔗](#class-renderingdevice-method-uniform-set-create)

Creates a new uniform set. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[bool](class_bool.md#class-bool) **uniform\_set\_is\_valid**(uniform\_set: [RID](class_rid.md#class-rid)) [🔗](#class-renderingdevice-method-uniform-set-is-valid)

Checks if the `uniform_set` is valid, i.e. is owned.

* * *

[RID](class_rid.md#class-rid) **vertex\_array\_create**(vertex\_count: [int](class_int.md#class-int), vertex\_format: [int](class_int.md#class-int), src\_buffers: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\], offsets: [PackedInt64Array](class_packedint64array.md#class-packedint64array) = PackedInt64Array()) [🔗](#class-renderingdevice-method-vertex-array-create)

Creates a vertex array based on the specified buffers. Optionally, `offsets` (in bytes) may be defined for each buffer.

* * *

[RID](class_rid.md#class-rid) **vertex\_buffer\_create**(size\_bytes: [int](class_int.md#class-int), data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray(), creation\_bits: BitField\[ [BufferCreationBits](#enum-renderingdevice-buffercreationbits)\] = 0) [🔗](#class-renderingdevice-method-vertex-buffer-create)

Creates a new vertex buffer. It can be accessed with the RID that is returned.

Once finished with your RID, you will want to free the RID using the RenderingDevice's [free\_rid()](#class-renderingdevice-method-free-rid) method.

* * *

[int](class_int.md#class-int) **vertex\_format\_create**(vertex\_descriptions: [Array](class_array.md#class-array)\[ [RDVertexAttribute](class_rdvertexattribute.md#class-rdvertexattribute)\]) [🔗](#class-renderingdevice-method-vertex-format-create)

Creates a new vertex format with the specified `vertex_descriptions`. Returns a unique vertex format ID corresponding to the newly created vertex format.

[Previous](class_renderdatard.md "RenderDataRD") [Next](class_renderingserver.md "RenderingServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderdatard.md "RenderDataRD") [Next](class_renderingserver.md "RenderingServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).