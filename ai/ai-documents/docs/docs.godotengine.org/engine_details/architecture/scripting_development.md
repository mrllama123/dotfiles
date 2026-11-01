---
title: Scripting development — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/architecture/scripting_development.html
crawled_at: "2026-08-13T10:20:44+12:00"
content_hash: 74e9af464ec7cc87579bc60efa3ffa27e34c51c2e17dd95393bf8da673396301
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Engine architecture](index.md)
  - Scripting development
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/architecture/scripting_development.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Scripting development

## GDScript

### Annotation guidelines

Create annotations for modifiers that act on the script or its code.
Additionally, create annotations for behavior that is specific to the Godot
engine and editor; if the primary purpose is to affect the way that the engine
or editor treats or interacts with the script, implement the token as an
annotation.

Do not create annotations for general programming language features.

```
# Affects how the editor treats this script.
@icon("res://path/to/class/icon.svg")

# Affects how the engine interacts with this script.
@onready var character_name = $Label

# static is a general programming language feature.
static var num_players = 2

```

For historical reasons, some existing annotations and keywords do not strictly
follow these guidelines. Choosing between implementing a feature as an
annotation or as a language keyword is a nuanced decision that should be made
through discussion with other GDScript developers.

[Previous](2d_coordinate_systems.md "2D coordinate systems and 2D transforms") [Next](custom_modules_in_cpp.md "Custom modules in C++")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](2d_coordinate_systems.md "2D coordinate systems and 2D transforms") [Next](custom_modules_in_cpp.md "Custom modules in C++")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).