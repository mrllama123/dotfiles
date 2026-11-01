---
title: RenderSceneBuffersExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_renderscenebuffersextension.html
crawled_at: "2026-08-13T10:31:53+12:00"
content_hash: 5fb6e75d2f894a173d416eaaf30b9fef36e5ef63810d41ae5b08fb921ea80cac
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RenderSceneBuffersExtension

* * *

# RenderSceneBuffersExtension

**Inherits:** [RenderSceneBuffers](class_renderscenebuffers.md#class-renderscenebuffers) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

This class allows for a RenderSceneBuffer implementation to be made in GDExtension.

## Description

This class allows for a RenderSceneBuffer implementation to be made in GDExtension.

## Methods

|     |     |
| --- | --- |
| void | [\_configure](#class-renderscenebuffersextension-private-method-configure)(config: [RenderSceneBuffersConfiguration](class_renderscenebuffersconfiguration.md#class-renderscenebuffersconfiguration)) virtual |
| void | [\_set\_anisotropic\_filtering\_level](#class-renderscenebuffersextension-private-method-set-anisotropic-filtering-level)(anisotropic\_filtering\_level: [int](class_int.md#class-int)) virtual |
| void | [\_set\_fsr\_sharpness](#class-renderscenebuffersextension-private-method-set-fsr-sharpness)(fsr\_sharpness: [float](class_float.md#class-float)) virtual |
| void | [\_set\_texture\_mipmap\_bias](#class-renderscenebuffersextension-private-method-set-texture-mipmap-bias)(texture\_mipmap\_bias: [float](class_float.md#class-float)) virtual |
| void | [\_set\_use\_debanding](#class-renderscenebuffersextension-private-method-set-use-debanding)(use\_debanding: [bool](class_bool.md#class-bool)) virtual |

* * *

## Method Descriptions

void **\_configure**(config: [RenderSceneBuffersConfiguration](class_renderscenebuffersconfiguration.md#class-renderscenebuffersconfiguration)) virtual [🔗](#class-renderscenebuffersextension-private-method-configure)

Implement this in GDExtension to handle the (re)sizing of a viewport.

* * *

void **\_set\_anisotropic\_filtering\_level**(anisotropic\_filtering\_level: [int](class_int.md#class-int)) virtual [🔗](#class-renderscenebuffersextension-private-method-set-anisotropic-filtering-level)

Implement this in GDExtension to change the anisotropic filtering level.

* * *

void **\_set\_fsr\_sharpness**(fsr\_sharpness: [float](class_float.md#class-float)) virtual [🔗](#class-renderscenebuffersextension-private-method-set-fsr-sharpness)

Implement this in GDExtension to record a new FSR sharpness value.

* * *

void **\_set\_texture\_mipmap\_bias**(texture\_mipmap\_bias: [float](class_float.md#class-float)) virtual [🔗](#class-renderscenebuffersextension-private-method-set-texture-mipmap-bias)

Implement this in GDExtension to change the texture mipmap bias.

* * *

void **\_set\_use\_debanding**(use\_debanding: [bool](class_bool.md#class-bool)) virtual [🔗](#class-renderscenebuffersextension-private-method-set-use-debanding)

Implement this in GDExtension to react to the debanding flag changing.

[Previous](class_renderscenebuffersconfiguration.md "RenderSceneBuffersConfiguration") [Next](class_renderscenebuffersrd.md "RenderSceneBuffersRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_renderscenebuffersconfiguration.md "RenderSceneBuffersConfiguration") [Next](class_renderscenebuffersrd.md "RenderSceneBuffersRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).