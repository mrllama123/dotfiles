---
title: Introduction to editor development — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/editor/introduction_to_editor_development.html
crawled_at: "2026-08-13T10:37:20+12:00"
content_hash: b8d1971f108ca0a7d35ec2dabe2fb37a08e7677d20ffe4ef66eba50646764a3a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Editor development](index.md)
  - Introduction to editor development
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/editor/introduction_to_editor_development.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Introduction to editor development

On this page, you will learn:

- The **design decisions** behind the Godot editor.

- How to work efficiently on the Godot editor's C++ code.


This guide is aimed at current or future engine contributors.
To create editor plugins in GDScript, see [Making plugins](../../tutorials/plugins/editor/making_plugins.md#doc-making-plugins) instead.

See also

If you are new to Godot, we recommended you to read
[Godot's design philosophy](../../getting_started/introduction/godot_design_philosophy.md#doc-godot-design-philosophy) before continuing. Since the Godot editor
is a Godot project written in C++, much of the engine's philosophy applies
to the editor.

## Technical choices

The Godot editor is drawn using Godot's renderer and
[UI system](../../tutorials/ui/index.md#doc-user-interface). It does _not_ rely on a toolkit
such as GTK or Qt. This is similar in spirit to software like Blender.
While using toolkits makes it easier to achieve a "native" appearance, they are
also quite heavy and their licensing is not compatible with Godot's.

The editor is fully written in C++. It can't contain any GDScript or C# code.

## Directory structure

The editor's code is fully self-contained in the
[editor/](https://github.com/godotengine/godot/tree/master/editor) folder
of the Godot source repository.

Some editor functionality is also implemented via
[modules](../architecture/custom_modules_in_cpp.md#doc-custom-modules-in-cpp). Some of these are only enabled in
editor builds to decrease the binary size of export templates. See the
[modules/](https://github.com/godotengine/godot/tree/master/modules) folder
in the Godot source repository.

Some important files in the editor are:

- [editor/editor\_node.cpp](https://github.com/godotengine/godot/blob/master/editor/editor_node.cpp):
Main editor initialization file. Effectively the "main scene" of the editor.

- [editor/project\_manager.cpp](https://github.com/godotengine/godot/blob/master/editor/project_manager.cpp):
Main Project Manager initialization file. Effectively the "main scene" of the Project Manager.

- [editor/plugins/canvas\_item\_editor\_plugin.cpp](https://github.com/godotengine/godot/blob/master/editor/plugins/canvas_item_editor_plugin.cpp):
The 2D editor viewport and related functionality (toolbar at the top, editing modes, overlaid helpers/panels, …).

- [editor/plugins/node\_3d\_editor\_plugin.cpp](https://github.com/godotengine/godot/blob/master/editor/plugins/node_3d_editor_plugin.cpp):
The 3D editor viewport and related functionality (toolbar at the top, editing modes, overlaid panels, …).

- [editor/plugins/node\_3d\_editor\_gizmos.cpp](https://github.com/godotengine/godot/blob/master/editor/plugins/node_3d_editor_gizmos.cpp):
Where the 3D editor gizmos are defined and drawn.
This file doesn't have a 2D counterpart as 2D gizmos are drawn by the nodes themselves.


## Editor dependencies in `scene/` files

When working on an editor feature, you may have to modify files in
Godot's GUI nodes, which you can find in the `scene/` folder.

One rule to keep in mind is that you must **not** introduce new dependencies to
`editor/` includes in other folders such as `scene/`. This applies even if
you use `#ifdef TOOLS_ENABLED`.

To make the codebase easier to follow and more self-contained, the allowed
dependency order is:

- `editor/` -\> `scene/` -\> `servers/` -\> `core/`


This means that files in `editor/` can depend on includes from `scene/`,
`servers/`, and `core/`. But, for example, while `scene/` can depend on includes
from `servers/` and `core/`, it cannot depend on includes from `editor/`.

Currently, there are some dependencies to `editor/` includes in `scene/`
files, but
[they are in the process of being removed](https://github.com/godotengine/godot/issues/53295).

## Development tips

To iterate quickly on the editor, we recommend to set up a test project and
[open it from the command line](../../tutorials/editor/command_line_tutorial.md#doc-command-line-tutorial) after compiling
the editor. This way, you don't have to go through the Project Manager every
time you start Godot.

[Previous](index.md "Editor development") [Next](creating_icons.md "Editor icons")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Editor development") [Next](creating_icons.md "Editor icons")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).