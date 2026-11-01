---
title: WorldEnvironment — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_worldenvironment.html
crawled_at: "2026-08-13T10:40:34+12:00"
content_hash: b548feaad4193c37744b41ed9459411b64e55304ecbf61f05449966b7c2afc43
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - WorldEnvironment

* * *

# WorldEnvironment

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Default environment properties for the entire scene (post-processing effects, lighting and background settings).

## Description

The **WorldEnvironment** node is used to configure the default [Environment](class_environment.md#class-environment) for the scene.

The parameters defined in the **WorldEnvironment** can be overridden by an [Environment](class_environment.md#class-environment) node set on the current [Camera3D](class_camera3d.md#class-camera3d). Additionally, only one **WorldEnvironment** may be instantiated in a given scene at a time.

The **WorldEnvironment** allows the user to specify default lighting parameters (e.g. ambient lighting), various post-processing effects (e.g. SSAO, DOF, Tonemapping), and how to draw the background (e.g. solid color, skybox). Usually, these are added in order to improve the realism/color balance of the scene.

## Tutorials

- [Environment and post-processing](../tutorials/3d/environment_and_post_processing.md)

- [3D Material Testers Demo](https://godotengine.org/asset-library/asset/2742)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |
| --- | --- |
| [CameraAttributes](class_cameraattributes.md#class-cameraattributes) | [camera\_attributes](#class-worldenvironment-property-camera-attributes) |
| [Compositor](class_compositor.md#class-compositor) | [compositor](#class-worldenvironment-property-compositor) |
| [Environment](class_environment.md#class-environment) | [environment](#class-worldenvironment-property-environment) |

* * *

## Property Descriptions

[CameraAttributes](class_cameraattributes.md#class-cameraattributes) **camera\_attributes** [🔗](#class-worldenvironment-property-camera-attributes)

- void **set\_camera\_attributes**(value: [CameraAttributes](class_cameraattributes.md#class-cameraattributes))

- [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **get\_camera\_attributes**()


The default [CameraAttributes](class_cameraattributes.md#class-cameraattributes) resource to use if none set on the [Camera3D](class_camera3d.md#class-camera3d).

* * *

[Compositor](class_compositor.md#class-compositor) **compositor** [🔗](#class-worldenvironment-property-compositor)

- void **set\_compositor**(value: [Compositor](class_compositor.md#class-compositor))

- [Compositor](class_compositor.md#class-compositor) **get\_compositor**()


The default [Compositor](class_compositor.md#class-compositor) resource to use if none set on the [Camera3D](class_camera3d.md#class-camera3d).

* * *

[Environment](class_environment.md#class-environment) **environment** [🔗](#class-worldenvironment-property-environment)

- void **set\_environment**(value: [Environment](class_environment.md#class-environment))

- [Environment](class_environment.md#class-environment) **get\_environment**()


The [Environment](class_environment.md#class-environment) resource used by this **WorldEnvironment**, defining the default properties.

[Previous](class_window.md "Window") [Next](class_xranchor3d.md "XRAnchor3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_window.md "Window") [Next](class_xranchor3d.md "XRAnchor3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).