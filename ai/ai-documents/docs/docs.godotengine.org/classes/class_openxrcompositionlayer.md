---
title: OpenXRCompositionLayer — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrcompositionlayer.html
crawled_at: "2026-08-13T10:24:56+12:00"
content_hash: 141a1fb27490ed327c53eb2b51de35fdc64fa0eca2a212a608ed3cb1da6d0c00
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRCompositionLayer

* * *

# OpenXRCompositionLayer

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [OpenXRCompositionLayerCylinder](class_openxrcompositionlayercylinder.md#class-openxrcompositionlayercylinder), [OpenXRCompositionLayerEquirect](class_openxrcompositionlayerequirect.md#class-openxrcompositionlayerequirect), [OpenXRCompositionLayerQuad](class_openxrcompositionlayerquad.md#class-openxrcompositionlayerquad)

The parent class of all OpenXR composition layer nodes.

## Description

Composition layers allow 2D viewports to be displayed inside of the headset by the XR compositor through special projections that retain their quality. This allows for rendering clear text while keeping the layer at a native resolution.

**Note:** If the OpenXR runtime doesn't support the given composition layer type, a fallback mesh can be generated with a [ViewportTexture](class_viewporttexture.md#class-viewporttexture), in order to emulate the composition layer.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [alpha\_blend](#class-openxrcompositionlayer-property-alpha-blend) | `false` |
| [Vector2i](class_vector2i.md#class-vector2i) | [android\_surface\_size](#class-openxrcompositionlayer-property-android-surface-size) | `Vector2i(1024, 1024)` |
| [bool](class_bool.md#class-bool) | [enable\_hole\_punch](#class-openxrcompositionlayer-property-enable-hole-punch) | `false` |
| [SubViewport](class_subviewport.md#class-subviewport) | [layer\_viewport](#class-openxrcompositionlayer-property-layer-viewport) |  |
| [int](class_int.md#class-int) | [sort\_order](#class-openxrcompositionlayer-property-sort-order) | `1` |
| [Swizzle](#enum-openxrcompositionlayer-swizzle) | [swapchain\_state\_alpha\_swizzle](#class-openxrcompositionlayer-property-swapchain-state-alpha-swizzle) | `3` |
| [Swizzle](#enum-openxrcompositionlayer-swizzle) | [swapchain\_state\_blue\_swizzle](#class-openxrcompositionlayer-property-swapchain-state-blue-swizzle) | `2` |
| [Color](class_color.md#class-color) | [swapchain\_state\_border\_color](#class-openxrcompositionlayer-property-swapchain-state-border-color) | `Color(0, 0, 0, 0)` |
| [Swizzle](#enum-openxrcompositionlayer-swizzle) | [swapchain\_state\_green\_swizzle](#class-openxrcompositionlayer-property-swapchain-state-green-swizzle) | `1` |
| [Wrap](#enum-openxrcompositionlayer-wrap) | [swapchain\_state\_horizontal\_wrap](#class-openxrcompositionlayer-property-swapchain-state-horizontal-wrap) | `0` |
| [Filter](#enum-openxrcompositionlayer-filter) | [swapchain\_state\_mag\_filter](#class-openxrcompositionlayer-property-swapchain-state-mag-filter) | `1` |
| [float](class_float.md#class-float) | [swapchain\_state\_max\_anisotropy](#class-openxrcompositionlayer-property-swapchain-state-max-anisotropy) | `1.0` |
| [Filter](#enum-openxrcompositionlayer-filter) | [swapchain\_state\_min\_filter](#class-openxrcompositionlayer-property-swapchain-state-min-filter) | `1` |
| [MipmapMode](#enum-openxrcompositionlayer-mipmapmode) | [swapchain\_state\_mipmap\_mode](#class-openxrcompositionlayer-property-swapchain-state-mipmap-mode) | `2` |
| [Swizzle](#enum-openxrcompositionlayer-swizzle) | [swapchain\_state\_red\_swizzle](#class-openxrcompositionlayer-property-swapchain-state-red-swizzle) | `0` |
| [Wrap](#enum-openxrcompositionlayer-wrap) | [swapchain\_state\_vertical\_wrap](#class-openxrcompositionlayer-property-swapchain-state-vertical-wrap) | `0` |
| [bool](class_bool.md#class-bool) | [use\_android\_surface](#class-openxrcompositionlayer-property-use-android-surface) | `false` |

## Methods

|     |     |
| --- | --- |
| [JavaObject](class_javaobject.md#class-javaobject) | [get\_android\_surface](#class-openxrcompositionlayer-method-get-android-surface)() |
| [Vector2](class_vector2.md#class-vector2) | [intersects\_ray](#class-openxrcompositionlayer-method-intersects-ray)(origin: [Vector3](class_vector3.md#class-vector3), direction: [Vector3](class_vector3.md#class-vector3)) const |
| [bool](class_bool.md#class-bool) | [is\_natively\_supported](#class-openxrcompositionlayer-method-is-natively-supported)() const |

* * *

## Enumerations

enum **Filter**: [🔗](#enum-openxrcompositionlayer-filter)

[Filter](#enum-openxrcompositionlayer-filter) **FILTER\_NEAREST** = `0`

Perform nearest-neighbor filtering when sampling the texture.

[Filter](#enum-openxrcompositionlayer-filter) **FILTER\_LINEAR** = `1`

Perform linear filtering when sampling the texture.

[Filter](#enum-openxrcompositionlayer-filter) **FILTER\_CUBIC** = `2`

Perform cubic filtering when sampling the texture.

* * *

enum **MipmapMode**: [🔗](#enum-openxrcompositionlayer-mipmapmode)

[MipmapMode](#enum-openxrcompositionlayer-mipmapmode) **MIPMAP\_MODE\_DISABLED** = `0`

Disable mipmapping.

**Note:** Mipmapping can only be disabled in the Compatibility renderer.

[MipmapMode](#enum-openxrcompositionlayer-mipmapmode) **MIPMAP\_MODE\_NEAREST** = `1`

Use the mipmap of the nearest resolution.

[MipmapMode](#enum-openxrcompositionlayer-mipmapmode) **MIPMAP\_MODE\_LINEAR** = `2`

Use linear interpolation of the two mipmaps of the nearest resolution.

* * *

enum **Wrap**: [🔗](#enum-openxrcompositionlayer-wrap)

[Wrap](#enum-openxrcompositionlayer-wrap) **WRAP\_CLAMP\_TO\_BORDER** = `0`

Clamp the texture to its specified border color.

[Wrap](#enum-openxrcompositionlayer-wrap) **WRAP\_CLAMP\_TO\_EDGE** = `1`

Clamp the texture to its edge color.

[Wrap](#enum-openxrcompositionlayer-wrap) **WRAP\_REPEAT** = `2`

Repeat the texture infinitely.

[Wrap](#enum-openxrcompositionlayer-wrap) **WRAP\_MIRRORED\_REPEAT** = `3`

Repeat the texture infinitely, mirroring it on each repeat.

[Wrap](#enum-openxrcompositionlayer-wrap) **WRAP\_MIRROR\_CLAMP\_TO\_EDGE** = `4`

Mirror the texture once and then clamp the texture to its edge color.

**Note:** This wrap mode is not available in the Compatibility renderer.

* * *

enum **Swizzle**: [🔗](#enum-openxrcompositionlayer-swizzle)

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_RED** = `0`

Maps a color channel to the value of the red channel.

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_GREEN** = `1`

Maps a color channel to the value of the green channel.

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_BLUE** = `2`

Maps a color channel to the value of the blue channel.

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_ALPHA** = `3`

Maps a color channel to the value of the alpha channel.

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_ZERO** = `4`

Maps a color channel to the value of zero.

[Swizzle](#enum-openxrcompositionlayer-swizzle) **SWIZZLE\_ONE** = `5`

Maps a color channel to the value of one.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **alpha\_blend** = `false` [🔗](#class-openxrcompositionlayer-property-alpha-blend)

- void **set\_alpha\_blend**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_alpha\_blend**()


Enables the blending the layer using its alpha channel.

Can be combined with [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) to give the layer a transparent background.

* * *

[Vector2i](class_vector2i.md#class-vector2i) **android\_surface\_size** = `Vector2i(1024, 1024)` [🔗](#class-openxrcompositionlayer-property-android-surface-size)

- void **set\_android\_surface\_size**(value: [Vector2i](class_vector2i.md#class-vector2i))

- [Vector2i](class_vector2i.md#class-vector2i) **get\_android\_surface\_size**()


The size of the Android surface to create if [use\_android\_surface](#class-openxrcompositionlayer-property-use-android-surface) is enabled.

* * *

[bool](class_bool.md#class-bool) **enable\_hole\_punch** = `false` [🔗](#class-openxrcompositionlayer-property-enable-hole-punch)

- void **set\_enable\_hole\_punch**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enable\_hole\_punch**()


Enables a technique called "hole punching", which allows putting the composition layer behind the main projection layer (i.e. setting [sort\_order](#class-openxrcompositionlayer-property-sort-order) to a negative value) while "punching a hole" through everything rendered by Godot so that the layer is still visible.

This can be used to create the illusion that the composition layer exists in the same 3D space as everything rendered by Godot, allowing objects to appear to pass both behind or in front of the composition layer.

* * *

[SubViewport](class_subviewport.md#class-subviewport) **layer\_viewport** [🔗](#class-openxrcompositionlayer-property-layer-viewport)

- void **set\_layer\_viewport**(value: [SubViewport](class_subviewport.md#class-subviewport))

- [SubViewport](class_subviewport.md#class-subviewport) **get\_layer\_viewport**()


The [SubViewport](class_subviewport.md#class-subviewport) to render on the composition layer.

* * *

[int](class_int.md#class-int) **sort\_order** = `1` [🔗](#class-openxrcompositionlayer-property-sort-order)

- void **set\_sort\_order**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sort\_order**()


The sort order for this composition layer. Higher numbers will be shown in front of lower numbers.

**Note:** This will have no effect if a fallback mesh is being used.

* * *

[Swizzle](#enum-openxrcompositionlayer-swizzle) **swapchain\_state\_alpha\_swizzle** = `3` [🔗](#class-openxrcompositionlayer-property-swapchain-state-alpha-swizzle)

- void **set\_alpha\_swizzle**(value: [Swizzle](#enum-openxrcompositionlayer-swizzle))

- [Swizzle](#enum-openxrcompositionlayer-swizzle) **get\_alpha\_swizzle**()


The swizzle value for the alpha channel of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Swizzle](#enum-openxrcompositionlayer-swizzle) **swapchain\_state\_blue\_swizzle** = `2` [🔗](#class-openxrcompositionlayer-property-swapchain-state-blue-swizzle)

- void **set\_blue\_swizzle**(value: [Swizzle](#enum-openxrcompositionlayer-swizzle))

- [Swizzle](#enum-openxrcompositionlayer-swizzle) **get\_blue\_swizzle**()


The swizzle value for the blue channel of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Color](class_color.md#class-color) **swapchain\_state\_border\_color** = `Color(0, 0, 0, 0)` [🔗](#class-openxrcompositionlayer-property-swapchain-state-border-color)

- void **set\_border\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_border\_color**()


The border color of the swapchain state that is used when the wrap mode clamps to the border.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Swizzle](#enum-openxrcompositionlayer-swizzle) **swapchain\_state\_green\_swizzle** = `1` [🔗](#class-openxrcompositionlayer-property-swapchain-state-green-swizzle)

- void **set\_green\_swizzle**(value: [Swizzle](#enum-openxrcompositionlayer-swizzle))

- [Swizzle](#enum-openxrcompositionlayer-swizzle) **get\_green\_swizzle**()


The swizzle value for the green channel of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Wrap](#enum-openxrcompositionlayer-wrap) **swapchain\_state\_horizontal\_wrap** = `0` [🔗](#class-openxrcompositionlayer-property-swapchain-state-horizontal-wrap)

- void **set\_horizontal\_wrap**(value: [Wrap](#enum-openxrcompositionlayer-wrap))

- [Wrap](#enum-openxrcompositionlayer-wrap) **get\_horizontal\_wrap**()


The horizontal wrap mode of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Filter](#enum-openxrcompositionlayer-filter) **swapchain\_state\_mag\_filter** = `1` [🔗](#class-openxrcompositionlayer-property-swapchain-state-mag-filter)

- void **set\_mag\_filter**(value: [Filter](#enum-openxrcompositionlayer-filter))

- [Filter](#enum-openxrcompositionlayer-filter) **get\_mag\_filter**()


The magnification filter of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[float](class_float.md#class-float) **swapchain\_state\_max\_anisotropy** = `1.0` [🔗](#class-openxrcompositionlayer-property-swapchain-state-max-anisotropy)

- void **set\_max\_anisotropy**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_max\_anisotropy**()


The max anisotropy of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Filter](#enum-openxrcompositionlayer-filter) **swapchain\_state\_min\_filter** = `1` [🔗](#class-openxrcompositionlayer-property-swapchain-state-min-filter)

- void **set\_min\_filter**(value: [Filter](#enum-openxrcompositionlayer-filter))

- [Filter](#enum-openxrcompositionlayer-filter) **get\_min\_filter**()


The minification filter of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[MipmapMode](#enum-openxrcompositionlayer-mipmapmode) **swapchain\_state\_mipmap\_mode** = `2` [🔗](#class-openxrcompositionlayer-property-swapchain-state-mipmap-mode)

- void **set\_mipmap\_mode**(value: [MipmapMode](#enum-openxrcompositionlayer-mipmapmode))

- [MipmapMode](#enum-openxrcompositionlayer-mipmapmode) **get\_mipmap\_mode**()


The mipmap mode of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Swizzle](#enum-openxrcompositionlayer-swizzle) **swapchain\_state\_red\_swizzle** = `0` [🔗](#class-openxrcompositionlayer-property-swapchain-state-red-swizzle)

- void **set\_red\_swizzle**(value: [Swizzle](#enum-openxrcompositionlayer-swizzle))

- [Swizzle](#enum-openxrcompositionlayer-swizzle) **get\_red\_swizzle**()


The swizzle value for the red channel of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[Wrap](#enum-openxrcompositionlayer-wrap) **swapchain\_state\_vertical\_wrap** = `0` [🔗](#class-openxrcompositionlayer-property-swapchain-state-vertical-wrap)

- void **set\_vertical\_wrap**(value: [Wrap](#enum-openxrcompositionlayer-wrap))

- [Wrap](#enum-openxrcompositionlayer-wrap) **get\_vertical\_wrap**()


The vertical wrap mode of the swapchain state.

**Note:** This property only has an effect on devices that support the OpenXR XR\_FB\_swapchain\_update\_state OpenGLES/Vulkan extensions.

* * *

[bool](class_bool.md#class-bool) **use\_android\_surface** = `false` [🔗](#class-openxrcompositionlayer-property-use-android-surface)

- void **set\_use\_android\_surface**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_use\_android\_surface**()


If enabled, an Android surface will be created (with the dimensions from [android\_surface\_size](#class-openxrcompositionlayer-property-android-surface-size)) which will provide the 2D content for the composition layer, rather than using [layer\_viewport](#class-openxrcompositionlayer-property-layer-viewport).

See [get\_android\_surface()](#class-openxrcompositionlayer-method-get-android-surface) for information about how to get the surface so that your application can draw to it.

**Note:** This will only work in Android builds.

* * *

## Method Descriptions

[JavaObject](class_javaobject.md#class-javaobject) **get\_android\_surface**() [🔗](#class-openxrcompositionlayer-method-get-android-surface)

Returns a [JavaObject](class_javaobject.md#class-javaobject) representing an `android.view.Surface` if [use\_android\_surface](#class-openxrcompositionlayer-property-use-android-surface) is enabled and OpenXR has created the surface. Otherwise, this will return `null`.

**Note:** The surface can only be created during an active OpenXR session. So, if [use\_android\_surface](#class-openxrcompositionlayer-property-use-android-surface) is enabled outside of an OpenXR session, it won't be created until a new session fully starts.

* * *

[Vector2](class_vector2.md#class-vector2) **intersects\_ray**(origin: [Vector3](class_vector3.md#class-vector3), direction: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-openxrcompositionlayer-method-intersects-ray)

Returns UV coordinates where the given ray intersects with the composition layer. `origin` and `direction` must be in global space.

Returns `Vector2(-1.0, -1.0)` if the ray doesn't intersect.

* * *

[bool](class_bool.md#class-bool) **is\_natively\_supported**() const [🔗](#class-openxrcompositionlayer-method-is-natively-supported)

Returns `true` if the OpenXR runtime natively supports this composition layer type.

**Note:** This will only return an accurate result after the OpenXR session has started.

[Previous](class_openxrbindingmodifiereditor.md "OpenXRBindingModifierEditor") [Next](class_openxrcompositionlayercylinder.md "OpenXRCompositionLayerCylinder")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrbindingmodifiereditor.md "OpenXRBindingModifierEditor") [Next](class_openxrcompositionlayercylinder.md "OpenXRCompositionLayerCylinder")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).