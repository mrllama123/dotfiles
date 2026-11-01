---
title: DPITexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_dpitexture.html
crawled_at: "2026-08-13T10:30:55+12:00"
content_hash: cc459485c56ee3576cc641ace5ce3bf795aab4c510289086a41fa85e6d944738
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DPITexture

* * *

# DPITexture

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An automatically scalable [Texture2D](class_texture2d.md#class-texture2d) based on an SVG image.

## Description

An automatically scalable [Texture2D](class_texture2d.md#class-texture2d) based on an SVG image. **DPITexture** s are used to automatically re-rasterize icons and other texture based UI theme elements to match viewport scale and font oversampling. See also [ProjectSettings.display/window/stretch/mode](class_projectsettings.md#class-projectsettings-property-display-window-stretch-mode) ("canvas\_items" mode) and [Viewport.oversampling\_override](class_viewport.md#class-viewport-property-oversampling-override).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [base\_scale](#class-dpitexture-property-base-scale) | `1.0` |
| [Dictionary](class_dictionary.md#class-dictionary) | [color\_map](#class-dpitexture-property-color-map) | `{}` |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [float](class_float.md#class-float) | [saturation](#class-dpitexture-property-saturation) | `1.0` |

## Methods

|     |     |
| --- | --- |
| [DPITexture](#class-dpitexture) | [create\_from\_string](#class-dpitexture-method-create-from-string)(source: [String](class_string.md#class-string), scale: [float](class_float.md#class-float) = 1.0, saturation: [float](class_float.md#class-float) = 1.0, color\_map: [Dictionary](class_dictionary.md#class-dictionary) = {}) static |
| [RID](class_rid.md#class-rid) | [get\_scaled\_rid](#class-dpitexture-method-get-scaled-rid)() const |
| [String](class_string.md#class-string) | [get\_source](#class-dpitexture-method-get-source)() const |
| void | [set\_size\_override](#class-dpitexture-method-set-size-override)(size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_source](#class-dpitexture-method-set-source)(source: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **base\_scale** = `1.0` [🔗](#class-dpitexture-property-base-scale)

- void **set\_base\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_base\_scale**()


Texture scale. `1.0` is the original SVG size. Higher values result in a larger image.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **color\_map** = `{}` [🔗](#class-dpitexture-property-color-map)

- void **set\_color\_map**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_color\_map**()


If set, remaps texture colors according to [Color](class_color.md#class-color)- [Color](class_color.md#class-color) map.

* * *

[float](class_float.md#class-float) **saturation** = `1.0` [🔗](#class-dpitexture-property-saturation)

- void **set\_saturation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_saturation**()


Overrides texture saturation.

* * *

## Method Descriptions

[DPITexture](#class-dpitexture) **create\_from\_string**(source: [String](class_string.md#class-string), scale: [float](class_float.md#class-float) = 1.0, saturation: [float](class_float.md#class-float) = 1.0, color\_map: [Dictionary](class_dictionary.md#class-dictionary) = {}) static [🔗](#class-dpitexture-method-create-from-string)

Creates a new **DPITexture** and initializes it by allocating and setting the SVG data from string.

* * *

[RID](class_rid.md#class-rid) **get\_scaled\_rid**() const [🔗](#class-dpitexture-method-get-scaled-rid)

Returns the [RID](class_rid.md#class-rid) of the texture rasterized to match the oversampling of the currently drawn canvas item.

* * *

[String](class_string.md#class-string) **get\_source**() const [🔗](#class-dpitexture-method-get-source)

Returns SVG source code.

* * *

void **set\_size\_override**(size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-dpitexture-method-set-size-override)

Resizes the texture to the specified dimensions.

* * *

void **set\_source**(source: [String](class_string.md#class-string)) [🔗](#class-dpitexture-method-set-source)

Sets SVG source code.

[Previous](class_cylindershape3d.md "CylinderShape3D") [Next](class_editornode3dgizmoplugin.md "EditorNode3DGizmoPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cylindershape3d.md "CylinderShape3D") [Next](class_editornode3dgizmoplugin.md "EditorNode3DGizmoPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).