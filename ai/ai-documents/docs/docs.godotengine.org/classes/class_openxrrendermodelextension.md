---
title: OpenXRRenderModelExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrrendermodelextension.html
crawled_at: "2026-08-13T10:42:13+12:00"
content_hash: 3226b4dc4d6d2fb012dcc717cd22d34c062032a88c3794368b7f798230a31ca6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRRenderModelExtension

* * *

# OpenXRRenderModelExtension

**Inherits:** [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper) **<** [Object](class_object.md#class-object)

This class implements the OpenXR Render Model Extension.

## Description

This class implements the OpenXR Render Model Extension, if enabled it will maintain a list of active render models and provides an interface to the render model data.

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [is\_active](#class-openxrrendermodelextension-method-is-active)() const |
| [RID](class_rid.md#class-rid) | [render\_model\_create](#class-openxrrendermodelextension-method-render-model-create)(render\_model\_id: [int](class_int.md#class-int)) |
| void | [render\_model\_destroy](#class-openxrrendermodelextension-method-render-model-destroy)(render\_model: [RID](class_rid.md#class-rid)) |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [render\_model\_get\_all](#class-openxrrendermodelextension-method-render-model-get-all)() |
| [int](class_int.md#class-int) | [render\_model\_get\_animatable\_node\_count](#class-openxrrendermodelextension-method-render-model-get-animatable-node-count)(render\_model: [RID](class_rid.md#class-rid)) const |
| [String](class_string.md#class-string) | [render\_model\_get\_animatable\_node\_name](#class-openxrrendermodelextension-method-render-model-get-animatable-node-name)(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [render\_model\_get\_animatable\_node\_transform](#class-openxrrendermodelextension-method-render-model-get-animatable-node-transform)(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [TrackingConfidence](class_xrpose.md#enum-xrpose-trackingconfidence) | [render\_model\_get\_confidence](#class-openxrrendermodelextension-method-render-model-get-confidence)(render\_model: [RID](class_rid.md#class-rid)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [render\_model\_get\_root\_transform](#class-openxrrendermodelextension-method-render-model-get-root-transform)(render\_model: [RID](class_rid.md#class-rid)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [render\_model\_get\_subaction\_paths](#class-openxrrendermodelextension-method-render-model-get-subaction-paths)(render\_model: [RID](class_rid.md#class-rid)) |
| [String](class_string.md#class-string) | [render\_model\_get\_top\_level\_path](#class-openxrrendermodelextension-method-render-model-get-top-level-path)(render\_model: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [render\_model\_is\_animatable\_node\_visible](#class-openxrrendermodelextension-method-render-model-is-animatable-node-visible)(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const |
| [Node3D](class_node3d.md#class-node3d) | [render\_model\_new\_scene\_instance](#class-openxrrendermodelextension-method-render-model-new-scene-instance)(render\_model: [RID](class_rid.md#class-rid)) const |

* * *

## Signals

**render\_model\_added**(render\_model: [RID](class_rid.md#class-rid)) [🔗](#class-openxrrendermodelextension-signal-render-model-added)

Emitted when a new render model is added.

* * *

**render\_model\_removed**(render\_model: [RID](class_rid.md#class-rid)) [🔗](#class-openxrrendermodelextension-signal-render-model-removed)

Emitted when a render model is removed.

* * *

**render\_model\_top\_level\_path\_changed**(render\_model: [RID](class_rid.md#class-rid)) [🔗](#class-openxrrendermodelextension-signal-render-model-top-level-path-changed)

Emitted when the top level path associated with a render model changed.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **is\_active**() const [🔗](#class-openxrrendermodelextension-method-is-active)

Returns `true` if OpenXR's render model extension is supported and enabled.

**Note:** This only returns a valid value after OpenXR has been initialized.

* * *

[RID](class_rid.md#class-rid) **render\_model\_create**(render\_model\_id: [int](class_int.md#class-int)) [🔗](#class-openxrrendermodelextension-method-render-model-create)

Creates a render model object within OpenXR using a render model id.

**Note:** This function is exposed for dependent OpenXR extensions that provide render model ids to be used with the render model extension.

* * *

void **render\_model\_destroy**(render\_model: [RID](class_rid.md#class-rid)) [🔗](#class-openxrrendermodelextension-method-render-model-destroy)

Destroys a render model object within OpenXR that was previously created with [render\_model\_create()](#class-openxrrendermodelextension-method-render-model-create).

**Note:** This function is exposed for dependent OpenXR extensions that provide render model ids to be used with the render model extension.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **render\_model\_get\_all**() [🔗](#class-openxrrendermodelextension-method-render-model-get-all)

Returns an array of all currently active render models registered with this extension.

* * *

[int](class_int.md#class-int) **render\_model\_get\_animatable\_node\_count**(render\_model: [RID](class_rid.md#class-rid)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-animatable-node-count)

Returns the number of animatable nodes this render model has.

* * *

[String](class_string.md#class-string) **render\_model\_get\_animatable\_node\_name**(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-animatable-node-name)

Returns the name of the given animatable node.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **render\_model\_get\_animatable\_node\_transform**(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-animatable-node-transform)

Returns the current local transform for an animatable node. This is updated every frame.

* * *

[TrackingConfidence](class_xrpose.md#enum-xrpose-trackingconfidence) **render\_model\_get\_confidence**(render\_model: [RID](class_rid.md#class-rid)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-confidence)

Returns the tracking confidence of the tracking data for the render model.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **render\_model\_get\_root\_transform**(render\_model: [RID](class_rid.md#class-rid)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-root-transform)

Returns the root transform of a render model. This is the tracked position relative to our [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) node.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **render\_model\_get\_subaction\_paths**(render\_model: [RID](class_rid.md#class-rid)) [🔗](#class-openxrrendermodelextension-method-render-model-get-subaction-paths)

Returns a list of active subaction paths for this `render_model`.

**Note:** If different devices are bound to your actions than available in suggested interaction bindings, this information shows paths related to the interaction bindings being mimicked by that device.

* * *

[String](class_string.md#class-string) **render\_model\_get\_top\_level\_path**(render\_model: [RID](class_rid.md#class-rid)) const [🔗](#class-openxrrendermodelextension-method-render-model-get-top-level-path)

Returns the top level path associated with this `render_model`. If provided this identifies whether the render model is associated with the player's hands or other body part.

* * *

[bool](class_bool.md#class-bool) **render\_model\_is\_animatable\_node\_visible**(render\_model: [RID](class_rid.md#class-rid), index: [int](class_int.md#class-int)) const [🔗](#class-openxrrendermodelextension-method-render-model-is-animatable-node-visible)

Returns `true` if this animatable node should be visible.

* * *

[Node3D](class_node3d.md#class-node3d) **render\_model\_new\_scene\_instance**(render\_model: [RID](class_rid.md#class-rid)) const [🔗](#class-openxrrendermodelextension-method-render-model-new-scene-instance)

Returns an instance of a subscene that contains all [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) nodes that allow you to visualize the render model.

[Previous](class_openxrinterface.md "OpenXRInterface") [Next](class_os.md "OS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrinterface.md "OpenXRInterface") [Next](class_os.md "OS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).