---
title: OpenXRRenderModelManager — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrrendermodelmanager.html
crawled_at: "2026-08-13T10:37:17+12:00"
content_hash: 2b310eaf2a9c301c7172c86c2fe7166eacd083b065b991ce6aff2e6762175eff
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRRenderModelManager

* * *

# OpenXRRenderModelManager

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Helper node that will automatically manage displaying render models.

## Description

This helper node will automatically manage displaying render models. It will create new [OpenXRRenderModel](class_openxrrendermodel.md#class-openxrrendermodel) nodes as controllers and other hand held devices are detected, and remove those nodes when they are deactivated.

**Note:** If you want more control over this logic you can alternatively call [OpenXRRenderModelExtension.render\_model\_get\_all()](class_openxrrendermodelextension.md#class-openxrrendermodelextension-method-render-model-get-all) to obtain a list of active render model ids and create [OpenXRRenderModel](class_openxrrendermodel.md#class-openxrrendermodel) instances for each render model id provided.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [make\_local\_to\_pose](#class-openxrrendermodelmanager-property-make-local-to-pose) | `""` |
| [RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) | [tracker](#class-openxrrendermodelmanager-property-tracker) | `0` |

* * *

## Signals

**render\_model\_added**(render\_model: [OpenXRRenderModel](class_openxrrendermodel.md#class-openxrrendermodel)) [🔗](#class-openxrrendermodelmanager-signal-render-model-added)

Emitted when a render model node is added as a child to this node.

* * *

**render\_model\_removed**(render\_model: [OpenXRRenderModel](class_openxrrendermodel.md#class-openxrrendermodel)) [🔗](#class-openxrrendermodelmanager-signal-render-model-removed)

Emitted when a render model child node is about to be removed from this node.

* * *

## Enumerations

enum **RenderModelTracker**: [🔗](#enum-openxrrendermodelmanager-rendermodeltracker)

[RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **RENDER\_MODEL\_TRACKER\_ANY** = `0`

All active render models are shown regardless of what tracker they relate to.

[RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **RENDER\_MODEL\_TRACKER\_NONE\_SET** = `1`

Only active render models are shown that are not related to any tracker we manage.

[RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **RENDER\_MODEL\_TRACKER\_LEFT\_HAND** = `2`

Only active render models are shown that are related to the left hand tracker.

[RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **RENDER\_MODEL\_TRACKER\_RIGHT\_HAND** = `3`

Only active render models are shown that are related to the right hand tracker.

* * *

## Property Descriptions

[String](class_string.md#class-string) **make\_local\_to\_pose** = `""` [🔗](#class-openxrrendermodelmanager-property-make-local-to-pose)

- void **set\_make\_local\_to\_pose**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_make\_local\_to\_pose**()


Position render models local to this pose (this will adjust the position of the render models container node).

* * *

[RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **tracker** = `0` [🔗](#class-openxrrendermodelmanager-property-tracker)

- void **set\_tracker**(value: [RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker))

- [RenderModelTracker](#enum-openxrrendermodelmanager-rendermodeltracker) **get\_tracker**()


Limits render models to the specified tracker. Include: 0 = All render models, 1 = Render models not related to a tracker, 2 = Render models related to the left hand tracker, 3 = Render models related to the right hand tracker.

[Previous](class_openxrrendermodel.md "OpenXRRenderModel") [Next](class_openxrvisibilitymask.md "OpenXRVisibilityMask")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrrendermodel.md "OpenXRRenderModel") [Next](class_openxrvisibilitymask.md "OpenXRVisibilityMask")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).