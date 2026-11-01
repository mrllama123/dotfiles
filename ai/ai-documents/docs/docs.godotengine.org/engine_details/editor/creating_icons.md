---
title: Editor icons — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/editor/creating_icons.html
crawled_at: "2026-08-13T10:29:05+12:00"
content_hash: d5bc97b15515f3aa3bef62f3a15afa5d549fee6ea815f465a2f11a3e61da7052
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Editor development](index.md)
  - Editor icons
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/editor/creating_icons.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Editor icons

When a new class is created and exposed to scripting, the editor's interface
will display it with a default icon representing the base class it inherits
from. In most cases, it's still recommended to create icons for new classes to
improve the user experience.

## Creating icons

To create new icons, you first need a vector graphics editor installed.
For instance, you can use the open source [Inkscape](https://inkscape.org/) editor.

Clone the `godot` repository containing all the editor icons:

```
git clone https://github.com/godotengine/godot.git

```

The icons must be created in a vector graphics editor in SVG format. There are
two main requirements to follow:

- Icons must be 16×16. In Inkscape, you can configure the document size in
**File > Document Properties**.

- Lines should be snapped to pixels whenever possible to remain crisp at lower DPI.
You can create a 16×16 grid in Inkscape to make this easier.


Once you're satisfied with the icon's design, save the icon in the cloned
repository's `editor/icons` folder. The icon name should match the intended
name in a case-sensitive manner. For example, to create an icon for
CPUParticles2D, name the file `CPUParticles2D.svg`.

## Color conversion for light editor themes

If the user has configured their editor to use a light theme, Godot will
convert the icon's colors based on a
[set of predefined color mappings](https://github.com/godotengine/godot/blob/master/editor/themes/editor_color_map.cpp).
This is to ensure the icon always displays with a sufficient contrast rate.
Try to restrict your icon's color palette to colors found in the list above.
Otherwise, your icon may become difficult to read on a light background.

Note

To enable color conversion for light editor themes:

1. Import > Import As > Texture2D

2. Set `editor/convert_colors_with_editor_theme` to `true`


## Icon optimization

Because the editor renders SVGs once at load time, they need to be small
in size so they can be efficiently parsed. When the
[pre-commit hook](https://contributing.godotengine.org/en/latest/engine/guidelines/code_style.html#pre-commit-hook) runs, it automatically optimizes
the SVG using [svgo](https://github.com/svg/svgo).

Note

While this optimization step won't impact the icon's quality noticeably, it
will still remove editor-only information such as guides. Therefore, it's
recommended to keep the source SVG around if you need to make further
changes.

## Integrating and sharing the icons

If you're contributing to the engine itself, you should make a pull request to
add optimized icons to `editor/icons` in the main repository. Recompile the
engine to make it pick up new icons for classes.

It's also possible to create custom icons within a module. If you're creating
your own module and don't plan to integrate it with Godot, you don't need to
make a separate pull request for your icons to be available within the editor
as they can be self-contained.

For specific instructions on how to create module icons, refer to
[Creating custom module icons](../architecture/custom_modules_in_cpp.md#doc-custom-module-icons).

## Troubleshooting

If icons don't appear in the editor, make sure that:

1. Each icon's filename matches the naming requirement as described previously.

2. `modules/svg` is enabled (it should be enabled by default). Without it,
icons won't appear in the editor at all.


## References

- [editor/icons](https://github.com/godotengine/godot/tree/master/editor/icons)


[Previous](introduction_to_editor_development.md "Introduction to editor development") [Next](../class_reference/index.md "Class reference primer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](introduction_to_editor_development.md "Introduction to editor development") [Next](../class_reference/index.md "Class reference primer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).