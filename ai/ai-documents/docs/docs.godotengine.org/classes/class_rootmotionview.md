---
title: RootMotionView — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rootmotionview.html
crawled_at: "2026-08-13T10:19:03+12:00"
content_hash: 5099e257e464d23b7024952e1fca75c8bf48861d52348bd4caf7a00e41ac6e83
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RootMotionView

* * *

# RootMotionView

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Editor-only helper for setting up root motion in [AnimationMixer](class_animationmixer.md#class-animationmixer).

## Description

_Root motion_ refers to an animation technique where a mesh's skeleton is used to give impulse to a character. When working with 3D animations, a popular technique is for animators to use the root skeleton bone to give motion to the rest of the skeleton. This allows animating characters in a way where steps actually match the floor below. It also allows precise interaction with objects during cinematics. See also [AnimationMixer](class_animationmixer.md#class-animationmixer).

**Note:** **RootMotionView** is only visible in the editor. It will be hidden automatically in the running project.

## Tutorials

- [Using AnimationTree - Root motion](../tutorials/animation/animation_tree.md#root-motion)


## Properties

|     |     |     |
| --- | --- | --- |
| [NodePath](class_nodepath.md#class-nodepath) | [animation\_path](#class-rootmotionview-property-animation-path) | `NodePath("")` |
| [float](class_float.md#class-float) | [cell\_size](#class-rootmotionview-property-cell-size) | `1.0` |
| [Color](class_color.md#class-color) | [color](#class-rootmotionview-property-color) | `Color(0.5, 0.5, 1, 1)` |
| [float](class_float.md#class-float) | [radius](#class-rootmotionview-property-radius) | `10.0` |
| [bool](class_bool.md#class-bool) | [zero\_y](#class-rootmotionview-property-zero-y) | `true` |

* * *

## Property Descriptions

[NodePath](class_nodepath.md#class-nodepath) **animation\_path** = `NodePath("")` [🔗](#class-rootmotionview-property-animation-path)

- void **set\_animation\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_animation\_path**()


Path to an [AnimationMixer](class_animationmixer.md#class-animationmixer) node to use as a basis for root motion.

* * *

[float](class_float.md#class-float) **cell\_size** = `1.0` [🔗](#class-rootmotionview-property-cell-size)

- void **set\_cell\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cell\_size**()


The grid's cell size in 3D units.

* * *

[Color](class_color.md#class-color) **color** = `Color(0.5, 0.5, 1, 1)` [🔗](#class-rootmotionview-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The grid's color.

* * *

[float](class_float.md#class-float) **radius** = `10.0` [🔗](#class-rootmotionview-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The grid's radius in 3D units. The grid's opacity will fade gradually as the distance from the origin increases until this [radius](#class-rootmotionview-property-radius) is reached.

* * *

[bool](class_bool.md#class-bool) **zero\_y** = `true` [🔗](#class-rootmotionview-property-zero-y)

- void **set\_zero\_y**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_zero\_y**()


If `true`, the grid's points will all be on the same Y coordinate ( _local_ Y = 0). If `false`, the points' original Y coordinate is preserved.

[Previous](class_rigidbody3d.md "RigidBody3D") [Next](class_scriptcreatedialog.md "ScriptCreateDialog")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rigidbody3d.md "RigidBody3D") [Next](class_scriptcreatedialog.md "ScriptCreateDialog")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).