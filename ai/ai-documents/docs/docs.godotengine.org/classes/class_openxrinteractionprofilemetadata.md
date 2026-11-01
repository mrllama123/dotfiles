---
title: OpenXRInteractionProfileMetadata — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrinteractionprofilemetadata.html
crawled_at: "2026-08-13T10:28:29+12:00"
content_hash: f4858906c463ced962f3ec28cc6d9df5a4fe34ebfa66ea0df16dff2b66034872
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRInteractionProfileMetadata

* * *

# OpenXRInteractionProfileMetadata

**Inherits:** [Object](class_object.md#class-object)

Meta class registering supported devices in OpenXR.

## Description

This class allows OpenXR core and extensions to register metadata relating to supported interaction devices such as controllers, trackers, haptic devices, etc. It is primarily used by the action map editor and to sanitize any action map by removing extension-dependent entries when applicable.

## Methods

|     |     |
| --- | --- |
| void | [register\_interaction\_profile](#class-openxrinteractionprofilemetadata-method-register-interaction-profile)(display\_name: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string)) |
| void | [register\_io\_path](#class-openxrinteractionprofilemetadata-method-register-io-path)(interaction\_profile: [String](class_string.md#class-string), display\_name: [String](class_string.md#class-string), toplevel\_path: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string), action\_type: [ActionType](class_openxraction.md#enum-openxraction-actiontype)) |
| void | [register\_profile\_rename](#class-openxrinteractionprofilemetadata-method-register-profile-rename)(old\_name: [String](class_string.md#class-string), new\_name: [String](class_string.md#class-string)) |
| void | [register\_top\_level\_path](#class-openxrinteractionprofilemetadata-method-register-top-level-path)(display\_name: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string)) |

* * *

## Method Descriptions

void **register\_interaction\_profile**(display\_name: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string)) [🔗](#class-openxrinteractionprofilemetadata-method-register-interaction-profile)

Registers an interaction profile using its OpenXR designation (e.g. `/interaction_profiles/khr/simple_controller` is the profile for OpenXR's simple controller profile).

`display_name` is the description shown to the user. `openxr_path` is the interaction profile path being registered. `openxr_extension_name` optionally restricts this profile to the given extension being enabled/available. If the extension is not available, the profile and all related entries used in an action map are filtered out.

* * *

void **register\_io\_path**(interaction\_profile: [String](class_string.md#class-string), display\_name: [String](class_string.md#class-string), toplevel\_path: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string), action\_type: [ActionType](class_openxraction.md#enum-openxraction-actiontype)) [🔗](#class-openxrinteractionprofilemetadata-method-register-io-path)

Registers an input/output path for the given `interaction_profile`. The profile should previously have been registered using [register\_interaction\_profile()](#class-openxrinteractionprofilemetadata-method-register-interaction-profile). `display_name` is the description shown to the user. `toplevel_path` specifies the bind path this input/output can be bound to (e.g. `/user/hand/left` or `/user/hand/right`). `openxr_path` is the action input/output being registered (e.g. `/user/hand/left/input/aim/pose`). `openxr_extension_name` restricts this input/output to an enabled/available extension, this doesn't need to repeat the extension on the profile but relates to overlapping extension (e.g. `XR_EXT_palm_pose` that introduces `…/input/palm_ext/pose` input paths). `action_type` defines the type of input or output provided by OpenXR.

* * *

void **register\_profile\_rename**(old\_name: [String](class_string.md#class-string), new\_name: [String](class_string.md#class-string)) [🔗](#class-openxrinteractionprofilemetadata-method-register-profile-rename)

Allows for renaming old interaction profile paths to new paths to maintain backwards compatibility with older action maps.

* * *

void **register\_top\_level\_path**(display\_name: [String](class_string.md#class-string), openxr\_path: [String](class_string.md#class-string), openxr\_extension\_name: [String](class_string.md#class-string)) [🔗](#class-openxrinteractionprofilemetadata-method-register-top-level-path)

Registers a top level path to which profiles can be bound. For instance `/user/hand/left` refers to the bind point for the player's left hand. Extensions can register additional top level paths, for instance a haptic vest extension might register `/user/body/vest`.

`display_name` is the name shown to the user. `openxr_path` is the top level path being registered. `openxr_extension_name` is optional and ensures the top level path is only used if the specified extension is available/enabled.

When a top level path ends up being bound by OpenXR, an [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) is instantiated to manage the state of the device.

[Previous](class_openxrfutureresult.md "OpenXRFutureResult") [Next](class_openxrinterface.md "OpenXRInterface")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrfutureresult.md "OpenXRFutureResult") [Next](class_openxrinterface.md "OpenXRInterface")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).