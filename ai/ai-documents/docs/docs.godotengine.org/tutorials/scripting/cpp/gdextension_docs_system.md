---
title: Adding documentation — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/scripting/cpp/gdextension_docs_system.html
crawled_at: "2026-08-13T10:28:50+12:00"
content_hash: af9f12b39adeb1dd6561ddfe85aaad021a545fd7b0f46c96b5337c19fd853123
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Scripting](../index.md)
  - [C++ (godot-cpp)](index.md)
  - Adding documentation
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/scripting/cpp/gdextension_docs_system.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Adding documentation

Note

Adding documentation for GDExtensions is only possible for Godot 4.3 and later. The support can be integrated into your project
regardless because the snippet will check if you use the appropriate godot-cpp version.
If you set the `compatibility_minimum` to 4.2 and you load a project with the extension through a 4.2 editor, the
documentation page for that class will be empty. The extension itself will still work.

The GDExtension documentation system works in a similar manner to the built-in engine documentation. It uses a series of
XML files (one per class) to document the exposed constructors, properties, methods, constants, signals, and theme items of each class.

Note

We are assuming you are using the project files explained in the [example project](gdextension_cpp_example.md#doc-godot-cpp-getting-started)
with the following structure:

```
gdextension_cpp_example/  # GDExtension directory
|
+--demo/                  # game example/demo to test the extension
|   |
|   +--main.tscn
|   |
|   +--bin/
|       |
|       +--gdexample.gdextension
|
+--godot-cpp/             # C++ bindings
|
+--src/                   # source code of the extension we are building
|   |
|   +--register_types.cpp
|   +--register_types.h
|   +--gdexample.cpp
|   +--gdexample.h

```

Inside the Godot demo project directory of your GDExtension directory, run the following terminal command:

```
# Replace "godot" with the full path to a Godot editor binary
# if Godot is not installed in your `PATH`.
godot --doctool ../ --gdextension-docs

```

This command calls upon the Godot editor binary to generate documentation via the `--doctool`
and `--gdextension-docs` commands. The `../` addition is to let Godot know where the GDExtension
SConstruct file is located. By calling this command, Godot generates a `doc_classes` directory inside the
project directory in which it generates XML files for the GDExtension classes. Those files
can then be edited to add information about member variables, methods, signals, and more.

To add the now edited documentation to the GDExtension and let the editor load it,
you need to add the following lines to your SConstruct file:

```
if env["target"] in ["editor", "template_debug"]:
    try:
        doc_data = env.GodotCPPDocData("src/gen/doc_data.gen.cpp", source=Glob("doc_classes/*.xml"))
        sources.append(doc_data)
    except AttributeError:
        print("Not including class reference as we're targeting a pre-4.3 baseline.")

```

The if-statement checks if we are compiling the GDExtension library with the `editor` and `template_debug`
flags. SCons then tries to load all the XML files inside the `doc_classes` directory and appends them
to the `sources` variable which already includes all the source files of your extension. If it fails
it means we are currently trying to compile the library when the `godot_cpp` is set to a version before 4.3.

After loading the extension in a 4.3 Godot editor or later and open the documentation of your extension class
either by `Ctrl + Click` in the script editor or the Editor help dialog you will see something like this:

![../../../_images/gdextension_docs_generation.webp](../../../_images/gdextension_docs_generation.webp)

## Documentation styling

To style specific parts of text you can use BBCode tags similarly to how they can be used in [RichTextLabels](../../ui/bbcode_in_richtextlabel.md#doc-bbcode-in-richtextlabel).
You can set text as bold, italic, underlined, colored, codeblocks etc. by embedding them in tags like this:

```
[b]this text will be shown as bold[/b]

```

Currently, the supported tags for the GDExtension documentation system are:

|     |     |
| --- | --- |
| Tag | Example |
| **b**<br>Makes `{text}` use the bold (or bold italics) font of `RichTextLabel`. | `[b]{text}[/b]` |
| **i**<br>Makes `{text}` use the italics (or bold italics) font of `RichTextLabel`. | `[i]{text}[/i]` |
| **u**<br>Makes `{text}` underlined. | `[u]{text}[/u]` |
| **s**<br>Makes `{text}` strikethrough. | `[s]{text}[/s]` |
| **kbd**<br>Makes `{text}` use a grey beveled background, indicating a keyboard shortcut. | `[kbd]{text}[/kbd]` |
| **code**<br>Makes inline `{text}` use the mono font and styles the text color and background like code. | `[code]{text}[/code]` |
| **codeblocks**<br>Makes multiline `{text}` use the mono font and styles the text color and background like code.<br>The addition of the `[gdscript]` tag highlights the GDScript specific syntax. | `[codeblocks]`<br>`[gdscript]`<br>`{text}`<br>`[/gdscript]`<br>`[/codeblocks]` |
| **center**<br>Makes `{text}` horizontally centered.<br>Same as `[p align=center]`. | `[center]{text}[/center]` |
| **url**<br>Creates a hyperlink (underlined and clickable text). Can contain optional `{text}` or display `{link}` as is. | `[url]{link}[/url]`<br>`[url={link}]{text}[/url]` |
| **img**<br>Inserts an image from the `{path}` (can be any valid [Texture2D](../../../classes/class_texture2d.md#class-texture2d) resource).<br>If `{width}` is provided, the image will try to fit that width maintaining<br>the aspect ratio.<br>If both `{width}` and `{height}` are provided, the image will be scaled<br>to that size.<br>Add `%` to the end of `{width}` or `{height}` value to specify it as percentages of the control width instead of pixels.<br>If `{valign}` configuration is provided, the image will try to align to the<br>surrounding text, see [Image and table vertical alignment](../../ui/bbcode_in_richtextlabel.md#doc-bbcode-in-richtextlabel-image-and-table-alignment).<br>Supports configuration options, see [Image options](../../ui/bbcode_in_richtextlabel.md#doc-bbcode-in-richtextlabel-image-options). | `[img]{path}[/img]`<br>`[img={width}]{path}[/img]`<br>`[img={width}x{height}]{path}[/img]`<br>`[img={valign}]{path}[/img]`<br>`[img {options}]{path}[/img]` |
| **color**<br>Changes the color of `{text}`. Color must be provided by a common name (see<br>[Named colors](../../ui/bbcode_in_richtextlabel.md#doc-bbcode-in-richtextlabel-named-colors)) or using the HEX format (e.g.<br>`#ff00ff`, see [Hexadecimal color codes](../../ui/bbcode_in_richtextlabel.md#doc-bbcode-in-richtextlabel-hex-colors)). | `[color={code/name}]{text}[/color]` |

## Publishing documentation online

You may want to publish an online reference for your GDExtension, similar to this website.
The most important step is to build reStructuredText ( `.rst`) files from your XML class reference:

```
# You need a version.py file, so download it first.
curl -sSLO https://raw.githubusercontent.com/godotengine/godot/refs/heads/master/version.py

# Edit version.py according to your project before proceeding.
# Then, run the rst generator. You'll need to have Python installed for this command to work.
curl -sSL https://raw.githubusercontent.com/godotengine/godot/master/doc/tools/make_rst.py | python3 - -o "docs/classes" -l "en" doc_classes

```

Your `.rst` files will now be available in `docs/classes/`. From here, you can use
any documentation builder that supports reStructuredText syntax to create a website from them.

[godot-docs](https://github.com/godotengine/godot-docs) uses [Sphinx](https://www.sphinx-doc.org/en/master/). You can use the repository as a basis to build your own documentation system. The following guide describes the basic steps, but they are not exhaustive: You will need a bit of personal insight to make it work.

1. Add [godot-docs](https://github.com/godotengine/godot-docs) as a submodule to your `docs/` folder.

2. Copy over its `conf.py`, `index.rst`, `.readthedocs.yaml` files into `/docs/`. You may later decide to copy over and edit more of godot-docs' files, like `_templates/layout.html`.

3. Modify these files according to your project. This mostly involves adjusting paths to point to the `godot-docs` subfolder, as well as strings to reflect it's your project rather than Godot you're building the docs for.

4. Create an account on [readthedocs.org](http://readthedocs.org). Import your project, and modify its base `.readthedocs.yaml` file path to `/docs/.readthedocs.yaml`.


Once you have completed all these steps, your documentation should be available at `<repo-name>.readthedocs.io`.

[Previous](gdextension_cpp_example.md "Getting started") [Next](../other_languages.md "Other languages")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](gdextension_cpp_example.md "Getting started") [Next](../other_languages.md "Other languages")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).