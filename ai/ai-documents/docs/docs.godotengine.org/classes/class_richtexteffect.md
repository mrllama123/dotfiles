---
title: RichTextEffect — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_richtexteffect.html
crawled_at: "2026-08-13T10:21:01+12:00"
content_hash: 1ca9f0f228a23a1e21409dc232744722e3d235dbbf02260dbbf88a9770418103
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RichTextEffect

* * *

# RichTextEffect

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A custom effect for a [RichTextLabel](class_richtextlabel.md#class-richtextlabel).

## Description

A custom effect for a [RichTextLabel](class_richtextlabel.md#class-richtextlabel), which can be loaded in the [RichTextLabel](class_richtextlabel.md#class-richtextlabel) inspector or using [RichTextLabel.install\_effect()](class_richtextlabel.md#class-richtextlabel-method-install-effect).

**Note:** For a **RichTextEffect** to be usable, a BBCode tag must be defined as a member variable called `bbcode` in the script.

GDScriptC#

```
# The RichTextEffect will be usable like this: `[example]Some text[/example]`
var bbcode = "example"

```

```
// The RichTextEffect will be usable like this: `[example]Some text[/example]`
string bbcode = "example";

```

**Note:** As soon as a [RichTextLabel](class_richtextlabel.md#class-richtextlabel) contains at least one **RichTextEffect**, it will continuously process the effect unless the project is paused. This may impact battery life negatively.

## Tutorials

- [BBCode in RichTextLabel](../tutorials/ui/bbcode_in_richtextlabel.md)

- [RichTextEffect test project (third-party)](https://github.com/Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_process\_custom\_fx](#class-richtexteffect-private-method-process-custom-fx)(char\_fx: [CharFXTransform](class_charfxtransform.md#class-charfxtransform)) virtualconst |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_process\_custom\_fx**(char\_fx: [CharFXTransform](class_charfxtransform.md#class-charfxtransform)) virtualconst [🔗](#class-richtexteffect-private-method-process-custom-fx)

Override this method to modify properties in `char_fx`. The method must return `true` if the character could be transformed successfully. If the method returns `false`, it will skip transformation to avoid displaying broken text.

[Previous](class_ribbontrailmesh.md "RibbonTrailMesh") [Next](class_scenereplicationconfig.md "SceneReplicationConfig")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_ribbontrailmesh.md "RibbonTrailMesh") [Next](class_scenereplicationconfig.md "SceneReplicationConfig")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).