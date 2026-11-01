---
title: XRBodyTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrbodytracker.html
crawled_at: "2026-08-13T10:38:58+12:00"
content_hash: e5d354f11a59493bcf689551a998b046032d1e1bbc28a475a0fb91744d111d67
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRBodyTracker

* * *

# XRBodyTracker

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [XRPositionalTracker](class_xrpositionaltracker.md#class-xrpositionaltracker) **<** [XRTracker](class_xrtracker.md#class-xrtracker) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A tracked body in XR.

## Description

A body tracking system will create an instance of this object and add it to the [XRServer](class_xrserver.md#class-xrserver). This tracking system will then obtain skeleton data, convert it to the Godot Humanoid skeleton and store this data on the **XRBodyTracker** object.

Use [XRBodyModifier3D](class_xrbodymodifier3d.md#class-xrbodymodifier3d) to animate a body mesh using body tracking data.

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| BitField\[ [BodyFlags](#enum-xrbodytracker-bodyflags)\] | [body\_flags](#class-xrbodytracker-property-body-flags) | `0` |
| [bool](class_bool.md#class-bool) | [has\_tracking\_data](#class-xrbodytracker-property-has-tracking-data) | `false` |
| [TrackerType](class_xrserver.md#enum-xrserver-trackertype) | type | `32` (overrides [XRTracker](class_xrtracker.md#class-xrtracker-property-type)) |

## Methods

|     |     |
| --- | --- |
| BitField\[ [JointFlags](#enum-xrbodytracker-jointflags)\] | [get\_joint\_flags](#class-xrbodytracker-method-get-joint-flags)(joint: [Joint](#enum-xrbodytracker-joint)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_joint\_transform](#class-xrbodytracker-method-get-joint-transform)(joint: [Joint](#enum-xrbodytracker-joint)) const |
| void | [set\_joint\_flags](#class-xrbodytracker-method-set-joint-flags)(joint: [Joint](#enum-xrbodytracker-joint), flags: BitField\[ [JointFlags](#enum-xrbodytracker-jointflags)\]) |
| void | [set\_joint\_transform](#class-xrbodytracker-method-set-joint-transform)(joint: [Joint](#enum-xrbodytracker-joint), transform: [Transform3D](class_transform3d.md#class-transform3d)) |

* * *

## Enumerations

flags **BodyFlags**: [🔗](#enum-xrbodytracker-bodyflags)

[BodyFlags](#enum-xrbodytracker-bodyflags) **BODY\_FLAG\_UPPER\_BODY\_SUPPORTED** = `1`

Upper body tracking supported.

[BodyFlags](#enum-xrbodytracker-bodyflags) **BODY\_FLAG\_LOWER\_BODY\_SUPPORTED** = `2`

Lower body tracking supported.

[BodyFlags](#enum-xrbodytracker-bodyflags) **BODY\_FLAG\_HANDS\_SUPPORTED** = `4`

Hand tracking supported.

* * *

enum **Joint**: [🔗](#enum-xrbodytracker-joint)

[Joint](#enum-xrbodytracker-joint) **JOINT\_ROOT** = `0`

Root joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_HIPS** = `1`

Hips joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_SPINE** = `2`

Spine joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_CHEST** = `3`

Chest joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_UPPER\_CHEST** = `4`

Upper chest joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_NECK** = `5`

Neck joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_HEAD** = `6`

Head joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_HEAD\_TIP** = `7`

Head tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_SHOULDER** = `8`

Left shoulder joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_UPPER\_ARM** = `9`

Left upper arm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_LOWER\_ARM** = `10`

Left lower arm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_SHOULDER** = `11`

Right shoulder joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_UPPER\_ARM** = `12`

Right upper arm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_LOWER\_ARM** = `13`

Right lower arm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_UPPER\_LEG** = `14`

Left upper leg joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_LOWER\_LEG** = `15`

Left lower leg joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_FOOT** = `16`

Left foot joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_TOES** = `17`

Left toes joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_UPPER\_LEG** = `18`

Right upper leg joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_LOWER\_LEG** = `19`

Right lower leg joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_FOOT** = `20`

Right foot joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_TOES** = `21`

Right toes joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_HAND** = `22`

Left hand joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PALM** = `23`

Left palm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_WRIST** = `24`

Left wrist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_THUMB\_METACARPAL** = `25`

Left thumb metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_THUMB\_PHALANX\_PROXIMAL** = `26`

Left thumb phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_THUMB\_PHALANX\_DISTAL** = `27`

Left thumb phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_THUMB\_TIP** = `28`

Left thumb tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_INDEX\_FINGER\_METACARPAL** = `29`

Left index finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_INDEX\_FINGER\_PHALANX\_PROXIMAL** = `30`

Left index finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_INDEX\_FINGER\_PHALANX\_INTERMEDIATE** = `31`

Left index finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_INDEX\_FINGER\_PHALANX\_DISTAL** = `32`

Left index finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_INDEX\_FINGER\_TIP** = `33`

Left index finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FINGER\_METACARPAL** = `34`

Left middle finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FINGER\_PHALANX\_PROXIMAL** = `35`

Left middle finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FINGER\_PHALANX\_INTERMEDIATE** = `36`

Left middle finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FINGER\_PHALANX\_DISTAL** = `37`

Left middle finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FINGER\_TIP** = `38`

Left middle finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_RING\_FINGER\_METACARPAL** = `39`

Left ring finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_RING\_FINGER\_PHALANX\_PROXIMAL** = `40`

Left ring finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_RING\_FINGER\_PHALANX\_INTERMEDIATE** = `41`

Left ring finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_RING\_FINGER\_PHALANX\_DISTAL** = `42`

Left ring finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_RING\_FINGER\_TIP** = `43`

Left ring finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PINKY\_FINGER\_METACARPAL** = `44`

Left pinky finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PINKY\_FINGER\_PHALANX\_PROXIMAL** = `45`

Left pinky finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PINKY\_FINGER\_PHALANX\_INTERMEDIATE** = `46`

Left pinky finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PINKY\_FINGER\_PHALANX\_DISTAL** = `47`

Left pinky finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_PINKY\_FINGER\_TIP** = `48`

Left pinky finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_HAND** = `49`

Right hand joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PALM** = `50`

Right palm joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_WRIST** = `51`

Right wrist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_THUMB\_METACARPAL** = `52`

Right thumb metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_THUMB\_PHALANX\_PROXIMAL** = `53`

Right thumb phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_THUMB\_PHALANX\_DISTAL** = `54`

Right thumb phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_THUMB\_TIP** = `55`

Right thumb tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_INDEX\_FINGER\_METACARPAL** = `56`

Right index finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_INDEX\_FINGER\_PHALANX\_PROXIMAL** = `57`

Right index finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_INDEX\_FINGER\_PHALANX\_INTERMEDIATE** = `58`

Right index finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_INDEX\_FINGER\_PHALANX\_DISTAL** = `59`

Right index finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_INDEX\_FINGER\_TIP** = `60`

Right index finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FINGER\_METACARPAL** = `61`

Right middle finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FINGER\_PHALANX\_PROXIMAL** = `62`

Right middle finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FINGER\_PHALANX\_INTERMEDIATE** = `63`

Right middle finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FINGER\_PHALANX\_DISTAL** = `64`

Right middle finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FINGER\_TIP** = `65`

Right middle finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_RING\_FINGER\_METACARPAL** = `66`

Right ring finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_RING\_FINGER\_PHALANX\_PROXIMAL** = `67`

Right ring finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_RING\_FINGER\_PHALANX\_INTERMEDIATE** = `68`

Right ring finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_RING\_FINGER\_PHALANX\_DISTAL** = `69`

Right ring finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_RING\_FINGER\_TIP** = `70`

Right ring finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PINKY\_FINGER\_METACARPAL** = `71`

Right pinky finger metacarpal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PINKY\_FINGER\_PHALANX\_PROXIMAL** = `72`

Right pinky finger phalanx proximal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PINKY\_FINGER\_PHALANX\_INTERMEDIATE** = `73`

Right pinky finger phalanx intermediate joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PINKY\_FINGER\_PHALANX\_DISTAL** = `74`

Right pinky finger phalanx distal joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_PINKY\_FINGER\_TIP** = `75`

Right pinky finger tip joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LOWER\_CHEST** = `76`

Lower chest joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_SCAPULA** = `77`

Left scapula joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_WRIST\_TWIST** = `78`

Left wrist twist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_SCAPULA** = `79`

Right scapula joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_WRIST\_TWIST** = `80`

Right wrist twist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_FOOT\_TWIST** = `81`

Left foot twist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_HEEL** = `82`

Left heel joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_LEFT\_MIDDLE\_FOOT** = `83`

Left middle foot joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_FOOT\_TWIST** = `84`

Right foot twist joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_HEEL** = `85`

Right heel joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_RIGHT\_MIDDLE\_FOOT** = `86`

Right middle foot joint.

[Joint](#enum-xrbodytracker-joint) **JOINT\_MAX** = `87`

Represents the size of the [Joint](#enum-xrbodytracker-joint) enum.

* * *

flags **JointFlags**: [🔗](#enum-xrbodytracker-jointflags)

[JointFlags](#enum-xrbodytracker-jointflags) **JOINT\_FLAG\_ORIENTATION\_VALID** = `1`

The joint's orientation data is valid.

[JointFlags](#enum-xrbodytracker-jointflags) **JOINT\_FLAG\_ORIENTATION\_TRACKED** = `2`

The joint's orientation is actively tracked. May not be set if tracking has been temporarily lost.

[JointFlags](#enum-xrbodytracker-jointflags) **JOINT\_FLAG\_POSITION\_VALID** = `4`

The joint's position data is valid.

[JointFlags](#enum-xrbodytracker-jointflags) **JOINT\_FLAG\_POSITION\_TRACKED** = `8`

The joint's position is actively tracked. May not be set if tracking has been temporarily lost.

* * *

## Property Descriptions

BitField\[ [BodyFlags](#enum-xrbodytracker-bodyflags)\] **body\_flags** = `0` [🔗](#class-xrbodytracker-property-body-flags)

- void **set\_body\_flags**(value: BitField\[ [BodyFlags](#enum-xrbodytracker-bodyflags)\])

- BitField\[ [BodyFlags](#enum-xrbodytracker-bodyflags)\] **get\_body\_flags**()


The type of body tracking data captured.

* * *

[bool](class_bool.md#class-bool) **has\_tracking\_data** = `false` [🔗](#class-xrbodytracker-property-has-tracking-data)

- void **set\_has\_tracking\_data**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_has\_tracking\_data**()


If `true`, the body tracking data is valid.

* * *

## Method Descriptions

BitField\[ [JointFlags](#enum-xrbodytracker-jointflags)\] **get\_joint\_flags**(joint: [Joint](#enum-xrbodytracker-joint)) const [🔗](#class-xrbodytracker-method-get-joint-flags)

Returns flags about the validity of the tracking data for the given body joint.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_joint\_transform**(joint: [Joint](#enum-xrbodytracker-joint)) const [🔗](#class-xrbodytracker-method-get-joint-transform)

Returns the transform for the given body joint.

* * *

void **set\_joint\_flags**(joint: [Joint](#enum-xrbodytracker-joint), flags: BitField\[ [JointFlags](#enum-xrbodytracker-jointflags)\]) [🔗](#class-xrbodytracker-method-set-joint-flags)

Sets flags about the validity of the tracking data for the given body joint.

* * *

void **set\_joint\_transform**(joint: [Joint](#enum-xrbodytracker-joint), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-xrbodytracker-method-set-joint-transform)

Sets the transform for the given body joint.

[Previous](class_xmlparser.md "XMLParser") [Next](class_xrcontrollertracker.md "XRControllerTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xmlparser.md "XMLParser") [Next](class_xrcontrollertracker.md "XRControllerTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).