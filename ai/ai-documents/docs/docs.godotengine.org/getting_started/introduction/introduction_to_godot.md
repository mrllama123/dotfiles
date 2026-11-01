---
title: Introduction to Godot — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/getting_started/introduction/introduction_to_godot.html
crawled_at: "2026-08-13T10:22:48+12:00"
content_hash: 697be30912540db185718b5db115b5b0fcb4937450d0bba77c709d41192f81f6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Introduction](index.md)
  - Introduction to Godot
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/getting_started/introduction/introduction_to_godot.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Introduction to Godot

This article is here to help you figure out whether Godot might be a good fit
for you. We will introduce some broad features of the engine to give you a feel
for what you can achieve with it and answer questions such as "what do I need to
know to get started?".

This is by no means an exhaustive overview. We will introduce many more features
in this getting started series.

## What is Godot?

Godot is a general-purpose 2D and 3D game engine designed to support all sorts
of projects. You can use it to create games or applications you can then release
on desktop or mobile, as well as on the web.

You can also create console games with it, although you either need strong
programming skills or a developer to port the game for you.

Note

The Godot team can't provide an open source console export due to the
licensing terms imposed by console manufacturers. Regardless of the
engine you use, though, releasing games on consoles is always a lot of
work. You can read more on that here: [Console support in Godot](../../tutorials/platform/consoles.md#doc-consoles).

## What can the engine do?

Godot was initially developed in-house by an Argentinian game studio. Its
development started in 2001, and the engine was rewritten and improved
tremendously since its open source release in 2014.

Some examples of games created with Godot include Cassette Beasts, PVKK, and
Usagi Shima. As for applications, the open source pixel art drawing program
Pixelorama is powered by Godot, and so is the voxel RPG creator RPG in a Box.
You can find many more examples in the [Official Showcase](https://godotengine.org/showcase/).

![../../_images/introduction_usagi_shima.webp](../../_images/introduction_usagi_shima.webp)

Usagi Shima

![../../_images/introduction_cassette_beasts.webp](../../_images/introduction_cassette_beasts.webp)

Cassette Beasts

![../../_images/introduction_pvkk.webp](../../_images/introduction_pvkk.webp)

PVKK: Planetenverteidigungskanonenkommandant

![../../_images/introduction_rpg_in_a_box.webp](../../_images/introduction_rpg_in_a_box.webp)

RPG in a Box

## How does it work and look?

Godot comes with a fully-fledged game editor with integrated tools to answer the
most common needs. It includes a code editor, an animation editor, a tilemap
editor, a shader editor, a debugger, a profiler, and more.

![../../_images/introduction_editor.webp](../../_images/introduction_editor.webp)

The team strives to offer a feature-rich game editor with a consistent user
experience. While there is always room for improvement, the user interface keeps
getting refined.

Of course, if you prefer, you can work with external programs. We officially
support importing 3D scenes designed in [Blender](https://www.blender.org/) and maintain plugins to code in
[VSCode](https://github.com/godotengine/godot-vscode-plugin) and [Emacs](https://github.com/godotengine/emacs-gdscript-mode) for GDScript and C#. We also support Visual Studio for C# on
Windows.

![../../_images/introduction_vscode.png](../../_images/introduction_vscode.png)

## Programming languages

Let's talk about the available programming languages.

You can code your games using [GDScript](../../tutorials/scripting/gdscript/index.md#doc-gdscript), a
Godot-specific and tightly integrated language with a lightweight syntax, or
[C#](../../tutorials/scripting/c_sharp/index.md#doc-c-sharp), which is popular in the games industry.
These are the two main scripting languages we support.

With the [GDExtension](../../tutorials/scripting/gdextension/what_is_gdextension.md#doc-what-is-gdextension) technology, you can also
write gameplay or high-performance algorithms in [C++](../../tutorials/scripting/cpp/index.md#doc-godot-cpp) or
[other languages](../../tutorials/scripting/other_languages.md#doc-scripting-languages) without recompiling the engine.
You can use this technology to integrate third-party libraries and other
Software Development Kits (SDK) in the engine.

Of course, you can also directly add modules and features to the engine, as it's
completely free and open source.

## What do I need to know to use Godot?

Godot is a feature-packed game engine. With its thousands of features, there is
a lot to learn. To make the most of it, you need good programming foundations.
While we try to make the engine accessible, you will benefit a lot from knowing
how to think like a programmer first.

Godot relies on the object-oriented programming paradigm. Being comfortable with
concepts such as classes and objects will help you code efficiently in it.

If you are entirely new to programming, we recommend following the [CS50 open\
courseware](https://cs50.harvard.edu/x) from Harvard University. It's a great free course that will teach
you everything you need to know to be off to a good start. It will save you
countless hours and hurdles learning any game engine afterward.

Note

In CS50, you will learn multiple programming languages. Don't be
afraid of that: programming languages have many similarities. The
skills you learn with one language transfer well to others.

We will provide you with more Godot-specific learning resources in
[Learning new features](learning_new_features.md#doc-learning-new-features).

In the next part, you will get an overview of the engine's essential concepts.

[Previous](index.md "Introduction") [Next](learn_to_code_with_gdscript.md "Learn to code with GDScript")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Introduction") [Next](learn_to_code_with_gdscript.md "Learn to code with GDScript")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).