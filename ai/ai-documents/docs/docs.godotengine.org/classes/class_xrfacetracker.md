---
title: XRFaceTracker — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_xrfacetracker.html
crawled_at: "2026-08-13T10:24:35+12:00"
content_hash: 81bca6f12e225a7bb943186b34775802b233e449168fbf3e751604159ad0e5a3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - XRFaceTracker

* * *

# XRFaceTracker

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [XRTracker](class_xrtracker.md#class-xrtracker) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A tracked face.

## Description

An instance of this object represents a tracked face and its corresponding blend shapes. The blend shapes come from the [Unified Expressions](https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes) standard, and contain extended details and visuals for each blend shape. Additionally the [Tracking Standard Comparison](https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview) page documents the relationship between Unified Expressions and other standards.

As face trackers are turned on they are registered with the [XRServer](class_xrserver.md#class-xrserver).

## Tutorials

- [XR documentation index](../tutorials/xr/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) | [blend\_shapes](#class-xrfacetracker-property-blend-shapes) | `PackedFloat32Array()` |
| [TrackerType](class_xrserver.md#enum-xrserver-trackertype) | type | `64` (overrides [XRTracker](class_xrtracker.md#class-xrtracker-property-type)) |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_blend\_shape](#class-xrfacetracker-method-get-blend-shape)(blend\_shape: [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry)) const |
| void | [set\_blend\_shape](#class-xrfacetracker-method-set-blend-shape)(blend\_shape: [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry), weight: [float](class_float.md#class-float)) |

* * *

## Enumerations

enum **BlendShapeEntry**: [🔗](#enum-xrfacetracker-blendshapeentry)

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_OUT\_RIGHT** = `0`

Right eye looks outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_IN\_RIGHT** = `1`

Right eye looks inwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_UP\_RIGHT** = `2`

Right eye looks upwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_DOWN\_RIGHT** = `3`

Right eye looks downwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_OUT\_LEFT** = `4`

Left eye looks outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_IN\_LEFT** = `5`

Left eye looks inwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_UP\_LEFT** = `6`

Left eye looks upwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_LOOK\_DOWN\_LEFT** = `7`

Left eye looks downwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CLOSED\_RIGHT** = `8`

Closes the right eyelid.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CLOSED\_LEFT** = `9`

Closes the left eyelid.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_SQUINT\_RIGHT** = `10`

Squeezes the right eye socket muscles.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_SQUINT\_LEFT** = `11`

Squeezes the left eye socket muscles.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_WIDE\_RIGHT** = `12`

Right eyelid widens beyond relaxed.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_WIDE\_LEFT** = `13`

Left eyelid widens beyond relaxed.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_DILATION\_RIGHT** = `14`

Dilates the right eye pupil.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_DILATION\_LEFT** = `15`

Dilates the left eye pupil.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CONSTRICT\_RIGHT** = `16`

Constricts the right eye pupil.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CONSTRICT\_LEFT** = `17`

Constricts the left eye pupil.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_PINCH\_RIGHT** = `18`

Right eyebrow pinches in.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_PINCH\_LEFT** = `19`

Left eyebrow pinches in.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_LOWERER\_RIGHT** = `20`

Outer right eyebrow pulls down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_LOWERER\_LEFT** = `21`

Outer left eyebrow pulls down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_INNER\_UP\_RIGHT** = `22`

Inner right eyebrow pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_INNER\_UP\_LEFT** = `23`

Inner left eyebrow pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_OUTER\_UP\_RIGHT** = `24`

Outer right eyebrow pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_OUTER\_UP\_LEFT** = `25`

Outer left eyebrow pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NOSE\_SNEER\_RIGHT** = `26`

Right side face sneers.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NOSE\_SNEER\_LEFT** = `27`

Left side face sneers.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_DILATION\_RIGHT** = `28`

Right side nose canal dilates.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_DILATION\_LEFT** = `29`

Left side nose canal dilates.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_CONSTRICT\_RIGHT** = `30`

Right side nose canal constricts.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_CONSTRICT\_LEFT** = `31`

Left side nose canal constricts.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SQUINT\_RIGHT** = `32`

Raises the right side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SQUINT\_LEFT** = `33`

Raises the left side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_PUFF\_RIGHT** = `34`

Puffs the right side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_PUFF\_LEFT** = `35`

Puffs the left side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SUCK\_RIGHT** = `36`

Sucks in the right side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SUCK\_LEFT** = `37`

Sucks in the left side cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_OPEN** = `38`

Opens jawbone.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_CLOSED** = `39`

Closes the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_RIGHT** = `40`

Pushes jawbone right.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_LEFT** = `41`

Pushes jawbone left.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_FORWARD** = `42`

Pushes jawbone forward.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_BACKWARD** = `43`

Pushes jawbone backward.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_CLENCH** = `44`

Flexes jaw muscles.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_JAW\_MANDIBLE\_RAISE** = `45`

Raises the jawbone.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_UPPER\_RIGHT** = `46`

Upper right lip part tucks in the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_UPPER\_LEFT** = `47`

Upper left lip part tucks in the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_LOWER\_RIGHT** = `48`

Lower right lip part tucks in the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_LOWER\_LEFT** = `49`

Lower left lip part tucks in the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_CORNER\_RIGHT** = `50`

Right lip corner folds into the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_CORNER\_LEFT** = `51`

Left lip corner folds into the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_UPPER\_RIGHT** = `52`

Upper right lip part pushes into a funnel.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_UPPER\_LEFT** = `53`

Upper left lip part pushes into a funnel.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_LOWER\_RIGHT** = `54`

Lower right lip part pushes into a funnel.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_LOWER\_LEFT** = `55`

Lower left lip part pushes into a funnel.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_UPPER\_RIGHT** = `56`

Upper right lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_UPPER\_LEFT** = `57`

Upper left lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_LOWER\_RIGHT** = `58`

Lower right lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_LOWER\_LEFT** = `59`

Lower left lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_UP\_RIGHT** = `60`

Upper right part of the lip pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_UP\_LEFT** = `61`

Upper left part of the lip pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LOWER\_DOWN\_RIGHT** = `62`

Lower right part of the lip pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LOWER\_DOWN\_LEFT** = `63`

Lower left part of the lip pulls up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_DEEPEN\_RIGHT** = `64`

Upper right lip part pushes in the cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_DEEPEN\_LEFT** = `65`

Upper left lip part pushes in the cheek.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_RIGHT** = `66`

Moves upper lip right.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_LEFT** = `67`

Moves upper lip left.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LOWER\_RIGHT** = `68`

Moves lower lip right.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LOWER\_LEFT** = `69`

Moves lower lip left.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_CORNER\_PULL\_RIGHT** = `70`

Right lip corner pulls diagonally up and out.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_CORNER\_PULL\_LEFT** = `71`

Left lip corner pulls diagonally up and out.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_CORNER\_SLANT\_RIGHT** = `72`

Right corner lip slants up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_CORNER\_SLANT\_LEFT** = `73`

Left corner lip slants up.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_FROWN\_RIGHT** = `74`

Right corner lip pulls down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_FROWN\_LEFT** = `75`

Left corner lip pulls down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_STRETCH\_RIGHT** = `76`

Mouth corner lip pulls out and down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_STRETCH\_LEFT** = `77`

Mouth corner lip pulls out and down.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_DIMPLE\_RIGHT** = `78`

Right lip corner is pushed backwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_DIMPLE\_LEFT** = `79`

Left lip corner is pushed backwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_RAISER\_UPPER** = `80`

Raises and slightly pushes out the upper mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_RAISER\_LOWER** = `81`

Raises and slightly pushes out the lower mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_PRESS\_RIGHT** = `82`

Right side lips press and flatten together vertically.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_PRESS\_LEFT** = `83`

Left side lips press and flatten together vertically.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_TIGHTENER\_RIGHT** = `84`

Right side lips squeeze together horizontally.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_TIGHTENER\_LEFT** = `85`

Left side lips squeeze together horizontally.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_OUT** = `86`

Tongue visibly sticks out of the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_UP** = `87`

Tongue points upwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_DOWN** = `88`

Tongue points downwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_RIGHT** = `89`

Tongue points right.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_LEFT** = `90`

Tongue points left.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_ROLL** = `91`

Sides of the tongue funnel, creating a roll.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_BLEND\_DOWN** = `92`

Tongue arches up then down inside the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_CURL\_UP** = `93`

Tongue arches down then up inside the mouth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_SQUISH** = `94`

Tongue squishes together and thickens.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_FLAT** = `95`

Tongue flattens and thins out.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_TWIST\_RIGHT** = `96`

Tongue tip rotates clockwise, with the rest following gradually.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_TONGUE\_TWIST\_LEFT** = `97`

Tongue tip rotates counter-clockwise, with the rest following gradually.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_SOFT\_PALATE\_CLOSE** = `98`

Inner mouth throat closes.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_THROAT\_SWALLOW** = `99`

The Adam's apple visibly swallows.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NECK\_FLEX\_RIGHT** = `100`

Right side neck visibly flexes.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NECK\_FLEX\_LEFT** = `101`

Left side neck visibly flexes.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CLOSED** = `102`

Closes both eye lids.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_WIDE** = `103`

Widens both eye lids.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_SQUINT** = `104`

Squints both eye lids.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_DILATION** = `105`

Dilates both pupils.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_EYE\_CONSTRICT** = `106`

Constricts both pupils.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_DOWN\_RIGHT** = `107`

Pulls the right eyebrow down and in.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_DOWN\_LEFT** = `108`

Pulls the left eyebrow down and in.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_DOWN** = `109`

Pulls both eyebrows down and in.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_UP\_RIGHT** = `110`

Right brow appears worried.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_UP\_LEFT** = `111`

Left brow appears worried.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_BROW\_UP** = `112`

Both brows appear worried.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NOSE\_SNEER** = `113`

Entire face sneers.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_DILATION** = `114`

Both nose canals dilate.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_NASAL\_CONSTRICT** = `115`

Both nose canals constrict.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_PUFF** = `116`

Puffs both cheeks.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SUCK** = `117`

Sucks in both cheeks.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_CHEEK\_SQUINT** = `118`

Raises both cheeks.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_UPPER** = `119`

Tucks in the upper lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK\_LOWER** = `120`

Tucks in the lower lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_SUCK** = `121`

Tucks in both lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_UPPER** = `122`

Funnels in the upper lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL\_LOWER** = `123`

Funnels in the lower lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_FUNNEL** = `124`

Funnels in both lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_UPPER** = `125`

Upper lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER\_LOWER** = `126`

Lower lip part pushes outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_LIP\_PUCKER** = `127`

Lips push outwards.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_UPPER\_UP** = `128`

Raises the upper lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LOWER\_DOWN** = `129`

Lowers the lower lips.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_OPEN** = `130`

Mouth opens, revealing teeth.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_RIGHT** = `131`

Moves mouth right.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_LEFT** = `132`

Moves mouth left.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SMILE\_RIGHT** = `133`

Right side of the mouth smiles.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SMILE\_LEFT** = `134`

Left side of the mouth smiles.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SMILE** = `135`

Mouth expresses a smile.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SAD\_RIGHT** = `136`

Right side of the mouth expresses sadness.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SAD\_LEFT** = `137`

Left side of the mouth expresses sadness.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_SAD** = `138`

Mouth expresses sadness.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_STRETCH** = `139`

Mouth stretches.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_DIMPLE** = `140`

Lip corners dimple.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_TIGHTENER** = `141`

Mouth tightens.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MOUTH\_PRESS** = `142`

Mouth presses together.

[BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) **FT\_MAX** = `143`

Represents the size of the [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) enum.

* * *

## Property Descriptions

[PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **blend\_shapes** = `PackedFloat32Array()` [🔗](#class-xrfacetracker-property-blend-shapes)

- void **set\_blend\_shapes**(value: [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array))

- [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) **get\_blend\_shapes**()


The array of face blend shape weights with indices corresponding to the [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry) enum.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) for more details.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_blend\_shape**(blend\_shape: [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry)) const [🔗](#class-xrfacetracker-method-get-blend-shape)

Returns the requested face blend shape weight.

* * *

void **set\_blend\_shape**(blend\_shape: [BlendShapeEntry](#enum-xrfacetracker-blendshapeentry), weight: [float](class_float.md#class-float)) [🔗](#class-xrfacetracker-method-set-blend-shape)

Sets a face blend shape weight.

[Previous](class_xrcontrollertracker.md "XRControllerTracker") [Next](class_xrhandtracker.md "XRHandTracker")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_xrcontrollertracker.md "XRControllerTracker") [Next](class_xrhandtracker.md "XRHandTracker")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).