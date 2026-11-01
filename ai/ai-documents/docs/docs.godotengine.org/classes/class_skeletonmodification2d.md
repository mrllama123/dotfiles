---
title: SkeletonModification2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_skeletonmodification2d.html
crawled_at: "2026-08-13T10:37:09+12:00"
content_hash: cef1128c97a5503931c513c7b7960cb38e2249a908ef9c04c5e3265368b73641
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SkeletonModification2D

* * *

# SkeletonModification2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [SkeletonModification2DCCDIK](class_skeletonmodification2dccdik.md#class-skeletonmodification2dccdik), [SkeletonModification2DFABRIK](class_skeletonmodification2dfabrik.md#class-skeletonmodification2dfabrik), [SkeletonModification2DJiggle](class_skeletonmodification2djiggle.md#class-skeletonmodification2djiggle), [SkeletonModification2DLookAt](class_skeletonmodification2dlookat.md#class-skeletonmodification2dlookat), [SkeletonModification2DPhysicalBones](class_skeletonmodification2dphysicalbones.md#class-skeletonmodification2dphysicalbones), [SkeletonModification2DStackHolder](class_skeletonmodification2dstackholder.md#class-skeletonmodification2dstackholder), [SkeletonModification2DTwoBoneIK](class_skeletonmodification2dtwoboneik.md#class-skeletonmodification2dtwoboneik)

Base class for resources that operate on [Bone2D](class_bone2d.md#class-bone2d) s in a [Skeleton2D](class_skeleton2d.md#class-skeleton2d).

## Description

This resource provides an interface that can be expanded so code that operates on [Bone2D](class_bone2d.md#class-bone2d) nodes in a [Skeleton2D](class_skeleton2d.md#class-skeleton2d) can be mixed and matched together to create complex interactions.

This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [enabled](#class-skeletonmodification2d-property-enabled) | `true` |
| [int](class_int.md#class-int) | [execution\_mode](#class-skeletonmodification2d-property-execution-mode) | `0` |

## Methods

|     |     |
| --- | --- |
| void | [\_draw\_editor\_gizmo](#class-skeletonmodification2d-private-method-draw-editor-gizmo)() virtual |
| void | [\_execute](#class-skeletonmodification2d-private-method-execute)(delta: [float](class_float.md#class-float)) virtual |
| void | [\_setup\_modification](#class-skeletonmodification2d-private-method-setup-modification)(modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) virtual |
| [float](class_float.md#class-float) | [clamp\_angle](#class-skeletonmodification2d-method-clamp-angle)(angle: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), invert: [bool](class_bool.md#class-bool)) |
| [bool](class_bool.md#class-bool) | [get\_editor\_draw\_gizmo](#class-skeletonmodification2d-method-get-editor-draw-gizmo)() const |
| [bool](class_bool.md#class-bool) | [get\_is\_setup](#class-skeletonmodification2d-method-get-is-setup)() const |
| [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) | [get\_modification\_stack](#class-skeletonmodification2d-method-get-modification-stack)() |
| void | [set\_editor\_draw\_gizmo](#class-skeletonmodification2d-method-set-editor-draw-gizmo)(draw\_gizmo: [bool](class_bool.md#class-bool)) |
| void | [set\_is\_setup](#class-skeletonmodification2d-method-set-is-setup)(is\_setup: [bool](class_bool.md#class-bool)) |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **enabled** = `true` [🔗](#class-skeletonmodification2d-property-enabled)

- void **set\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_enabled**()


If `true`, the modification's [\_execute()](#class-skeletonmodification2d-private-method-execute) function will be called by the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d).

* * *

[int](class_int.md#class-int) **execution\_mode** = `0` [🔗](#class-skeletonmodification2d-property-execution-mode)

- void **set\_execution\_mode**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_execution\_mode**()


The execution mode for the modification. This tells the modification stack when to execute the modification. Some modifications have settings that are only available in certain execution modes.

* * *

## Method Descriptions

void **\_draw\_editor\_gizmo**() virtual [🔗](#class-skeletonmodification2d-private-method-draw-editor-gizmo)

Used for drawing **editor-only** modification gizmos. This function will only be called in the Godot editor and can be overridden to draw custom gizmos.

**Note:** You will need to use the Skeleton2D from [SkeletonModificationStack2D.get\_skeleton()](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d-method-get-skeleton) and it's draw functions, as the **SkeletonModification2D** resource cannot draw on its own.

* * *

void **\_execute**(delta: [float](class_float.md#class-float)) virtual [🔗](#class-skeletonmodification2d-private-method-execute)

Executes the given modification. This is where the modification performs whatever function it is designed to do.

* * *

void **\_setup\_modification**(modification\_stack: [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d)) virtual [🔗](#class-skeletonmodification2d-private-method-setup-modification)

Called when the modification is setup. This is where the modification performs initialization.

* * *

[float](class_float.md#class-float) **clamp\_angle**(angle: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float), invert: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2d-method-clamp-angle)

Takes an angle and clamps it so it is within the passed-in `min` and `max` range. `invert` will inversely clamp the angle, clamping it to the range outside of the given bounds.

* * *

[bool](class_bool.md#class-bool) **get\_editor\_draw\_gizmo**() const [🔗](#class-skeletonmodification2d-method-get-editor-draw-gizmo)

Returns whether this modification will call [\_draw\_editor\_gizmo()](#class-skeletonmodification2d-private-method-draw-editor-gizmo) in the Godot editor to draw modification-specific gizmos.

* * *

[bool](class_bool.md#class-bool) **get\_is\_setup**() const [🔗](#class-skeletonmodification2d-method-get-is-setup)

Returns whether this modification has been successfully setup or not.

* * *

[SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) **get\_modification\_stack**() [🔗](#class-skeletonmodification2d-method-get-modification-stack)

Returns the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) that this modification is bound to. Through the modification stack, you can access the Skeleton2D the modification is operating on.

* * *

void **set\_editor\_draw\_gizmo**(draw\_gizmo: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2d-method-set-editor-draw-gizmo)

Sets whether this modification will call [\_draw\_editor\_gizmo()](#class-skeletonmodification2d-private-method-draw-editor-gizmo) in the Godot editor to draw modification-specific gizmos.

* * *

void **set\_is\_setup**(is\_setup: [bool](class_bool.md#class-bool)) [🔗](#class-skeletonmodification2d-method-set-is-setup)

Manually allows you to set the setup state of the modification. This function should only rarely be used, as the [SkeletonModificationStack2D](class_skeletonmodificationstack2d.md#class-skeletonmodificationstack2d) the modification is bound to should handle setting the modification up.

[Previous](class_shortcut.md "Shortcut") [Next](class_skeletonmodification2dccdik.md "SkeletonModification2DCCDIK")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shortcut.md "Shortcut") [Next](class_skeletonmodification2dccdik.md "SkeletonModification2DCCDIK")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).