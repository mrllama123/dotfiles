---
title: RenderSceneBuffersRD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenebuffersrd.html
crawled_at: "2026-08-13T10:23:02+12:00"
content_hash: 7aa58a7e39e6fc7f660dfd96e0c782af52f0abb3ab74a2d01010ea25b777510a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneBuffersRD

* * *

# RenderSceneBuffersRD

**Inherits:** [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Render scene buffer implementation for the RenderingDevice based renderers.

## Description

This object manages all 3D rendering buffers for the rendering device based renderers. An instance of this object is created for every viewport that has 3D rendering enabled.

All buffers are organized in **contexts**. The default context is called **render\_buffers** and can contain amongst others the color buffer, depth buffer, velocity buffers, VRS density map and MSAA variants of these buffers.

Buffers are only guaranteed to exist during rendering of the viewport.

**Note:** This is an internal rendering server object, do not instantiate this from script.

## Methods

|     |     |
| --- | --- |
| void | [clear\_context](#class-renderscenebuffersrd-method-clear-context)(context: [StringName](class_stringname.md#class-stringname)) |
| [RID](class_rid.md#class-rid) | [create\_texture](#class-renderscenebuffersrd-method-create-texture)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), data\_format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat), usage\_bits: [int](class_int.md#class-int), texture\_samples: [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples), size: [Vector2i](class_vector2i.md#class-vector2i), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int), unique: [bool](class_bool.md#class-bool), discardable: [bool](class_bool.md#class-bool)) |
| [RID](class_rid.md#class-rid) | [create\_texture\_from\_format](#class-renderscenebuffersrd-method-create-texture-from-format)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), format: [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), unique: [bool](class_bool.md#class-bool)) |
| [RID](class_rid.md#class-rid) | [create\_texture\_view](#class-renderscenebuffersrd-method-create-texture-view)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), view\_name: [StringName](class_stringname.md#class-stringname), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview)) |
| [RID](class_rid.md#class-rid) | [get\_color\_layer](#class-renderscenebuffersrd-method-get-color-layer)(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) |
| [RID](class_rid.md#class-rid) | [get\_color\_texture](#class-renderscenebuffersrd-method-get-color-texture)(msaa: [bool](class_bool.md#class-bool) = false) |
| [RID](class_rid.md#class-rid) | [get\_depth\_layer](#class-renderscenebuffersrd-method-get-depth-layer)(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) |
| [RID](class_rid.md#class-rid) | [get\_depth\_texture](#class-renderscenebuffersrd-method-get-depth-texture)(msaa: [bool](class_bool.md#class-bool) = false) |
| [float](class_float.md#class-float) | [get\_fsr\_sharpness](#class-renderscenebuffersrd-method-get-fsr-sharpness)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_internal\_size](#class-renderscenebuffersrd-method-get-internal-size)() const |
| [ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa) | [get\_msaa\_3d](#class-renderscenebuffersrd-method-get-msaa-3d)() const |
| [RID](class_rid.md#class-rid) | [get\_render\_target](#class-renderscenebuffersrd-method-get-render-target)() const |
| [ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode) | [get\_scaling\_3d\_mode](#class-renderscenebuffersrd-method-get-scaling-3d-mode)() const |
| [ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa) | [get\_screen\_space\_aa](#class-renderscenebuffersrd-method-get-screen-space-aa)() const |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_target\_size](#class-renderscenebuffersrd-method-get-target-size)() const |
| [RID](class_rid.md#class-rid) | [get\_texture](#class-renderscenebuffersrd-method-get-texture)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const |
| [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) | [get\_texture\_format](#class-renderscenebuffersrd-method-get-texture-format)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const |
| [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) | [get\_texture\_samples](#class-renderscenebuffersrd-method-get-texture-samples)() const |
| [RID](class_rid.md#class-rid) | [get\_texture\_slice](#class-renderscenebuffersrd-method-get-texture-slice)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int)) |
| [Vector2i](class_vector2i.md#class-vector2i) | [get\_texture\_slice\_size](#class-renderscenebuffersrd-method-get-texture-slice-size)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), mipmap: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [get\_texture\_slice\_view](#class-renderscenebuffersrd-method-get-texture-slice-view)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview)) |
| [bool](class_bool.md#class-bool) | [get\_use\_debanding](#class-renderscenebuffersrd-method-get-use-debanding)() const |
| [bool](class_bool.md#class-bool) | [get\_use\_taa](#class-renderscenebuffersrd-method-get-use-taa)() const |
| [RID](class_rid.md#class-rid) | [get\_velocity\_layer](#class-renderscenebuffersrd-method-get-velocity-layer)(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) |
| [RID](class_rid.md#class-rid) | [get\_velocity\_texture](#class-renderscenebuffersrd-method-get-velocity-texture)(msaa: [bool](class_bool.md#class-bool) = false) |
| [int](class_int.md#class-int) | [get\_view\_count](#class-renderscenebuffersrd-method-get-view-count)() const |
| [bool](class_bool.md#class-bool) | [has\_texture](#class-renderscenebuffersrd-method-has-texture)(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const |

* * *

## Method Descriptions

void **clear\_context**(context: [StringName](class_stringname.md#class-stringname)) [🔗](#class-renderscenebuffersrd-method-clear-context)

Frees all buffers related to this context.

* * *

[RID](class_rid.md#class-rid) **create\_texture**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), data\_format: [DataFormat](class_renderingdevice.md#enum-renderingdevice-dataformat), usage\_bits: [int](class_int.md#class-int), texture\_samples: [TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples), size: [Vector2i](class_vector2i.md#class-vector2i), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int), unique: [bool](class_bool.md#class-bool), discardable: [bool](class_bool.md#class-bool)) [🔗](#class-renderscenebuffersrd-method-create-texture)

Create a new texture with the given definition and cache this under the given name. Will return the existing texture if it already exists.

* * *

[RID](class_rid.md#class-rid) **create\_texture\_from\_format**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), format: [RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview), unique: [bool](class_bool.md#class-bool)) [🔗](#class-renderscenebuffersrd-method-create-texture-from-format)

Create a new texture using the given format and view and cache this under the given name. Will return the existing texture if it already exists.

* * *

[RID](class_rid.md#class-rid) **create\_texture\_view**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), view\_name: [StringName](class_stringname.md#class-stringname), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview)) [🔗](#class-renderscenebuffersrd-method-create-texture-view)

Create a new texture view for an existing texture and cache this under the given `view_name`. Will return the existing texture view if it already exists. Will error if the source texture doesn't exist.

* * *

[RID](class_rid.md#class-rid) **get\_color\_layer**(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-color-layer)

Returns the specified layer from the color texture we are rendering 3D content to.

If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.

* * *

[RID](class_rid.md#class-rid) **get\_color\_texture**(msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-color-texture)

Returns the color texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.

* * *

[RID](class_rid.md#class-rid) **get\_depth\_layer**(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-depth-layer)

Returns the specified layer from the depth texture we are rendering 3D content to.

If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.

* * *

[RID](class_rid.md#class-rid) **get\_depth\_texture**(msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-depth-texture)

Returns the depth texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If `msaa` is `true` and MSAA is enabled, this returns the MSAA variant of the buffer.

* * *

[float](class_float.md#class-float) **get\_fsr\_sharpness**() const [🔗](#class-renderscenebuffersrd-method-get-fsr-sharpness)

Returns the FSR sharpness value used while rendering the 3D content (if [get\_scaling\_3d\_mode()](#class-renderscenebuffersrd-method-get-scaling-3d-mode) is an FSR mode).

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_internal\_size**() const [🔗](#class-renderscenebuffersrd-method-get-internal-size)

Returns the internal size of the render buffer (size before upscaling) with which textures are created by default.

* * *

[ViewportMSAA](class_renderingserver.md#enum-renderingserver-viewportmsaa) **get\_msaa\_3d**() const [🔗](#class-renderscenebuffersrd-method-get-msaa-3d)

Returns the applied 3D MSAA mode for this viewport.

* * *

[RID](class_rid.md#class-rid) **get\_render\_target**() const [🔗](#class-renderscenebuffersrd-method-get-render-target)

Returns the render target associated with this buffers object.

* * *

[ViewportScaling3DMode](class_renderingserver.md#enum-renderingserver-viewportscaling3dmode) **get\_scaling\_3d\_mode**() const [🔗](#class-renderscenebuffersrd-method-get-scaling-3d-mode)

Returns the scaling mode used for upscaling.

* * *

[ViewportScreenSpaceAA](class_renderingserver.md#enum-renderingserver-viewportscreenspaceaa) **get\_screen\_space\_aa**() const [🔗](#class-renderscenebuffersrd-method-get-screen-space-aa)

Returns the screen-space antialiasing method applied.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_target\_size**() const [🔗](#class-renderscenebuffersrd-method-get-target-size)

Returns the target size of the render buffer (size after upscaling).

* * *

[RID](class_rid.md#class-rid) **get\_texture**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderscenebuffersrd-method-get-texture)

Returns a cached texture with this name.

* * *

[RDTextureFormat](class_rdtextureformat.md#class-rdtextureformat) **get\_texture\_format**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderscenebuffersrd-method-get-texture-format)

Returns the texture format information with which a cached texture was created.

* * *

[TextureSamples](class_renderingdevice.md#enum-renderingdevice-texturesamples) **get\_texture\_samples**() const [🔗](#class-renderscenebuffersrd-method-get-texture-samples)

Returns the number of MSAA samples used.

* * *

[RID](class_rid.md#class-rid) **get\_texture\_slice**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int)) [🔗](#class-renderscenebuffersrd-method-get-texture-slice)

Returns a specific slice (layer or mipmap) for a cached texture.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **get\_texture\_slice\_size**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), mipmap: [int](class_int.md#class-int)) [🔗](#class-renderscenebuffersrd-method-get-texture-slice-size)

Returns the texture size of a given slice of a cached texture.

* * *

[RID](class_rid.md#class-rid) **get\_texture\_slice\_view**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname), layer: [int](class_int.md#class-int), mipmap: [int](class_int.md#class-int), layers: [int](class_int.md#class-int), mipmaps: [int](class_int.md#class-int), view: [RDTextureView](class_rdtextureview.md#class-rdtextureview)) [🔗](#class-renderscenebuffersrd-method-get-texture-slice-view)

Returns a specific view of a slice (layer or mipmap) for a cached texture.

* * *

[bool](class_bool.md#class-bool) **get\_use\_debanding**() const [🔗](#class-renderscenebuffersrd-method-get-use-debanding)

Returns `true` if debanding is enabled.

* * *

[bool](class_bool.md#class-bool) **get\_use\_taa**() const [🔗](#class-renderscenebuffersrd-method-get-use-taa)

Returns `true` if TAA is enabled.

* * *

[RID](class_rid.md#class-rid) **get\_velocity\_layer**(layer: [int](class_int.md#class-int), msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-velocity-layer)

Returns the specified layer from the velocity texture we are rendering 3D content to.

* * *

[RID](class_rid.md#class-rid) **get\_velocity\_texture**(msaa: [bool](class_bool.md#class-bool) = false) [🔗](#class-renderscenebuffersrd-method-get-velocity-texture)

Returns the velocity texture we are rendering 3D content to. If multiview is used this will be a texture array with all views.

If `msaa` is **true** and MSAA is enabled, this returns the MSAA variant of the buffer.

* * *

[int](class_int.md#class-int) **get\_view\_count**() const [🔗](#class-renderscenebuffersrd-method-get-view-count)

Returns the view count for the associated viewport.

* * *

[bool](class_bool.md#class-bool) **has\_texture**(context: [StringName](class_stringname.md#class-stringname), name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-renderscenebuffersrd-method-has-texture)

Returns `true` if a cached texture exists for this name.

[Previous](class_renderscenebuffersextension.md "RenderSceneBuffersExtension") [Next](class_renderscenedata.md "RenderSceneData")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderscenebuffersextension.md "RenderSceneBuffersExtension") [Next](class_renderscenedata.md "RenderSceneData")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).