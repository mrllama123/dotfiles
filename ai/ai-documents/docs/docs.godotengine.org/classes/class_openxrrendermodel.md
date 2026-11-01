---
title: OpenXRRenderModel — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrrendermodel.html
crawled_at: "2026-08-13T10:24:27+12:00"
content_hash: eac3b84ecce96be6ec1c2a8f6814eb7a0a1edc468366dc6d8be9087f57996831
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRRenderModel

* * *

# OpenXRRenderModel

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

This node will display an OpenXR render model.

## Description

This node will display an OpenXR render model by accessing the associated GLTF and processes all animation data (if supported by the XR runtime).

Render models were introduced to allow showing the correct model for the controller (or other device) the user has in hand, since the OpenXR action map does not provide information about the hardware used by the user. Note that while the controller (or device) can be somewhat inferred by the bound action map profile, this is a dangerous approach as the user may be using hardware not known at time of development and OpenXR will simply simulate an available interaction profile.

## Properties

|     |     |     |
| --- | --- | --- |
| [RID](class_rid.md#class-rid) | [render\_model](#class-openxrrendermodel-property-render-model) | `RID()` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_top\_level\_path](#class-openxrrendermodel-method-get-top-level-path)() const |

* * *

## Signals

**render\_model\_top\_level\_path\_changed**() [🔗](#class-openxrrendermodel-signal-render-model-top-level-path-changed)

Emitted when the top level path of this render model has changed.

* * *

## Property Descriptions

[RID](class_rid.md#class-rid) **render\_model** = `RID()` [🔗](#class-openxrrendermodel-property-render-model)

- void **set\_render\_model**(value: [RID](class_rid.md#class-rid))

- [RID](class_rid.md#class-rid) **get\_render\_model**()


The render model RID for the render model to load, as returned by [OpenXRRenderModelExtension.render\_model\_create()](class_openxrrendermodelextension.md#class-openxrrendermodelextension-method-render-model-create) or [OpenXRRenderModelExtension.render\_model\_get\_all()](class_openxrrendermodelextension.md#class-openxrrendermodelextension-method-render-model-get-all).

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_top\_level\_path**() const [🔗](#class-openxrrendermodel-method-get-top-level-path)

Returns the top level path related to this render model.

[Previous](class_openxrinteractionprofileeditorbase.md "OpenXRInteractionProfileEditorBase") [Next](class_openxrrendermodelmanager.md "OpenXRRenderModelManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrinteractionprofileeditorbase.md "OpenXRInteractionProfileEditorBase") [Next](class_openxrrendermodelmanager.md "OpenXRRenderModelManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).