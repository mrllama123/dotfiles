---
title: FastNoiseLite — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fastnoiselite.html
crawled_at: "2026-08-13T10:25:30+12:00"
content_hash: 682507f39fd6ee0cef891d61304949fc853e0447eecbd10d53c1719a12efa877
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FastNoiseLite

* * *

# FastNoiseLite

**Inherits:** [Noise](class_noise.md#class-noise) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Generates noise using the FastNoiseLite library.

## Description

This class generates noise using the FastNoiseLite library, which is a collection of several noise algorithms including Cellular, Perlin, Value, and more.

Most generated noise values are in the range of `[-1, 1]`, but not always. Some of the cellular noise algorithms return results above `1`.

## Properties

|     |     |     |
| --- | --- | --- |
| [CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) | [cellular\_distance\_function](#class-fastnoiselite-property-cellular-distance-function) | `0` |
| [float](class_float.md#class-float) | [cellular\_jitter](#class-fastnoiselite-property-cellular-jitter) | `1.0` |
| [CellularReturnType](#enum-fastnoiselite-cellularreturntype) | [cellular\_return\_type](#class-fastnoiselite-property-cellular-return-type) | `1` |
| [float](class_float.md#class-float) | [domain\_warp\_amplitude](#class-fastnoiselite-property-domain-warp-amplitude) | `30.0` |
| [bool](class_bool.md#class-bool) | [domain\_warp\_enabled](#class-fastnoiselite-property-domain-warp-enabled) | `false` |
| [float](class_float.md#class-float) | [domain\_warp\_fractal\_gain](#class-fastnoiselite-property-domain-warp-fractal-gain) | `0.5` |
| [float](class_float.md#class-float) | [domain\_warp\_fractal\_lacunarity](#class-fastnoiselite-property-domain-warp-fractal-lacunarity) | `6.0` |
| [int](class_int.md#class-int) | [domain\_warp\_fractal\_octaves](#class-fastnoiselite-property-domain-warp-fractal-octaves) | `5` |
| [DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) | [domain\_warp\_fractal\_type](#class-fastnoiselite-property-domain-warp-fractal-type) | `1` |
| [float](class_float.md#class-float) | [domain\_warp\_frequency](#class-fastnoiselite-property-domain-warp-frequency) | `0.05` |
| [DomainWarpType](#enum-fastnoiselite-domainwarptype) | [domain\_warp\_type](#class-fastnoiselite-property-domain-warp-type) | `0` |
| [float](class_float.md#class-float) | [fractal\_gain](#class-fastnoiselite-property-fractal-gain) | `0.5` |
| [float](class_float.md#class-float) | [fractal\_lacunarity](#class-fastnoiselite-property-fractal-lacunarity) | `2.0` |
| [int](class_int.md#class-int) | [fractal\_octaves](#class-fastnoiselite-property-fractal-octaves) | `5` |
| [float](class_float.md#class-float) | [fractal\_ping\_pong\_strength](#class-fastnoiselite-property-fractal-ping-pong-strength) | `2.0` |
| [FractalType](#enum-fastnoiselite-fractaltype) | [fractal\_type](#class-fastnoiselite-property-fractal-type) | `1` |
| [float](class_float.md#class-float) | [fractal\_weighted\_strength](#class-fastnoiselite-property-fractal-weighted-strength) | `0.0` |
| [float](class_float.md#class-float) | [frequency](#class-fastnoiselite-property-frequency) | `0.01` |
| [NoiseType](#enum-fastnoiselite-noisetype) | [noise\_type](#class-fastnoiselite-property-noise-type) | `1` |
| [Vector3](class_vector3.md#class-vector3) | [offset](#class-fastnoiselite-property-offset) | `Vector3(0, 0, 0)` |
| [int](class_int.md#class-int) | [seed](#class-fastnoiselite-property-seed) | `0` |

* * *

## Enumerations

enum **NoiseType**: [🔗](#enum-fastnoiselite-noisetype)

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_VALUE** = `5`

A lattice of points are assigned random values then interpolated based on neighboring values.

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_VALUE\_CUBIC** = `4`

Similar to value noise ( [TYPE\_VALUE](#class-fastnoiselite-constant-type-value)), but slower. Has more variance in peaks and valleys.

Cubic noise can be used to avoid certain artifacts when using value noise to create a bumpmap. In general, you should always use this mode if the value noise is being used for a heightmap or bumpmap.

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_PERLIN** = `3`

A lattice of random gradients. Their dot products are interpolated to obtain values in between the lattices.

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_CELLULAR** = `2`

Cellular includes both Worley noise and Voronoi diagrams which creates various regions of the same value.

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_SIMPLEX** = `0`

As opposed to [TYPE\_PERLIN](#class-fastnoiselite-constant-type-perlin), gradients exist in a simplex lattice rather than a grid lattice, avoiding directional artifacts. Internally uses FastNoiseLite's OpenSimplex2 noise type.

[NoiseType](#enum-fastnoiselite-noisetype) **TYPE\_SIMPLEX\_SMOOTH** = `1`

Modified, higher quality version of [TYPE\_SIMPLEX](#class-fastnoiselite-constant-type-simplex), but slower. Internally uses FastNoiseLite's OpenSimplex2S noise type.

* * *

enum **FractalType**: [🔗](#enum-fastnoiselite-fractaltype)

[FractalType](#enum-fastnoiselite-fractaltype) **FRACTAL\_NONE** = `0`

No fractal noise.

[FractalType](#enum-fastnoiselite-fractaltype) **FRACTAL\_FBM** = `1`

Method using Fractional Brownian Motion to combine octaves into a fractal.

[FractalType](#enum-fastnoiselite-fractaltype) **FRACTAL\_RIDGED** = `2`

Method of combining octaves into a fractal resulting in a "ridged" look.

[FractalType](#enum-fastnoiselite-fractaltype) **FRACTAL\_PING\_PONG** = `3`

Method of combining octaves into a fractal with a ping pong effect.

* * *

enum **CellularDistanceFunction**: [🔗](#enum-fastnoiselite-cellulardistancefunction)

[CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **DISTANCE\_EUCLIDEAN** = `0`

Euclidean distance to the nearest point.

[CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **DISTANCE\_EUCLIDEAN\_SQUARED** = `1`

Squared Euclidean distance to the nearest point.

[CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **DISTANCE\_MANHATTAN** = `2`

Manhattan distance (taxicab metric) to the nearest point.

[CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **DISTANCE\_HYBRID** = `3`

Blend of [DISTANCE\_EUCLIDEAN](#class-fastnoiselite-constant-distance-euclidean) and [DISTANCE\_MANHATTAN](#class-fastnoiselite-constant-distance-manhattan) to give curved cell boundaries.

* * *

enum **CellularReturnType**: [🔗](#enum-fastnoiselite-cellularreturntype)

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_CELL\_VALUE** = `0`

The cellular distance function will return the same value for all points within a cell.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE** = `1`

The cellular distance function will return a value determined by the distance to the nearest point.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE2** = `2`

The cellular distance function returns the distance to the second-nearest point.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE2\_ADD** = `3`

The distance to the nearest point is added to the distance to the second-nearest point.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE2\_SUB** = `4`

The distance to the nearest point is subtracted from the distance to the second-nearest point.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE2\_MUL** = `5`

The distance to the nearest point is multiplied with the distance to the second-nearest point.

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **RETURN\_DISTANCE2\_DIV** = `6`

The distance to the nearest point is divided by the distance to the second-nearest point.

* * *

enum **DomainWarpType**: [🔗](#enum-fastnoiselite-domainwarptype)

[DomainWarpType](#enum-fastnoiselite-domainwarptype) **DOMAIN\_WARP\_SIMPLEX** = `0`

The domain is warped using the simplex noise algorithm.

[DomainWarpType](#enum-fastnoiselite-domainwarptype) **DOMAIN\_WARP\_SIMPLEX\_REDUCED** = `1`

The domain is warped using a simplified version of the simplex noise algorithm.

[DomainWarpType](#enum-fastnoiselite-domainwarptype) **DOMAIN\_WARP\_BASIC\_GRID** = `2`

The domain is warped using a simple noise grid (not as smooth as the other methods, but more performant).

* * *

enum **DomainWarpFractalType**: [🔗](#enum-fastnoiselite-domainwarpfractaltype)

[DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) **DOMAIN\_WARP\_FRACTAL\_NONE** = `0`

No fractal noise for warping the space.

[DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) **DOMAIN\_WARP\_FRACTAL\_PROGRESSIVE** = `1`

Warping the space progressively, octave for octave, resulting in a more "liquified" distortion.

[DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) **DOMAIN\_WARP\_FRACTAL\_INDEPENDENT** = `2`

Warping the space independently for each octave, resulting in a more chaotic distortion.

* * *

## Property Descriptions

[CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **cellular\_distance\_function** = `0` [🔗](#class-fastnoiselite-property-cellular-distance-function)

- void **set\_cellular\_distance\_function**(value: [CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction))

- [CellularDistanceFunction](#enum-fastnoiselite-cellulardistancefunction) **get\_cellular\_distance\_function**()


Determines how the distance to the nearest/second-nearest point is computed.

* * *

[float](class_float.md#class-float) **cellular\_jitter** = `1.0` [🔗](#class-fastnoiselite-property-cellular-jitter)

- void **set\_cellular\_jitter**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_cellular\_jitter**()


Maximum distance a point can move off of its grid position. Set to `0` for an even grid.

* * *

[CellularReturnType](#enum-fastnoiselite-cellularreturntype) **cellular\_return\_type** = `1` [🔗](#class-fastnoiselite-property-cellular-return-type)

- void **set\_cellular\_return\_type**(value: [CellularReturnType](#enum-fastnoiselite-cellularreturntype))

- [CellularReturnType](#enum-fastnoiselite-cellularreturntype) **get\_cellular\_return\_type**()


Return type from cellular noise calculations.

* * *

[float](class_float.md#class-float) **domain\_warp\_amplitude** = `30.0` [🔗](#class-fastnoiselite-property-domain-warp-amplitude)

- void **set\_domain\_warp\_amplitude**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_domain\_warp\_amplitude**()


Sets the maximum warp distance from the origin.

* * *

[bool](class_bool.md#class-bool) **domain\_warp\_enabled** = `false` [🔗](#class-fastnoiselite-property-domain-warp-enabled)

- void **set\_domain\_warp\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_domain\_warp\_enabled**()


If enabled, another FastNoiseLite instance is used to warp the space, resulting in a distortion of the noise.

* * *

[float](class_float.md#class-float) **domain\_warp\_fractal\_gain** = `0.5` [🔗](#class-fastnoiselite-property-domain-warp-fractal-gain)

- void **set\_domain\_warp\_fractal\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_domain\_warp\_fractal\_gain**()


Determines the strength of each subsequent layer of the noise which is used to warp the space.

A low value places more emphasis on the lower frequency base layers, while a high value puts more emphasis on the higher frequency layers.

* * *

[float](class_float.md#class-float) **domain\_warp\_fractal\_lacunarity** = `6.0` [🔗](#class-fastnoiselite-property-domain-warp-fractal-lacunarity)

- void **set\_domain\_warp\_fractal\_lacunarity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_domain\_warp\_fractal\_lacunarity**()


The change in frequency between octaves, also known as "lacunarity", of the fractal noise which warps the space. Increasing this value results in higher octaves, producing noise with finer details and a rougher appearance.

* * *

[int](class_int.md#class-int) **domain\_warp\_fractal\_octaves** = `5` [🔗](#class-fastnoiselite-property-domain-warp-fractal-octaves)

- void **set\_domain\_warp\_fractal\_octaves**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_domain\_warp\_fractal\_octaves**()


The number of noise layers that are sampled to get the final value for the fractal noise which warps the space.

* * *

[DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) **domain\_warp\_fractal\_type** = `1` [🔗](#class-fastnoiselite-property-domain-warp-fractal-type)

- void **set\_domain\_warp\_fractal\_type**(value: [DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype))

- [DomainWarpFractalType](#enum-fastnoiselite-domainwarpfractaltype) **get\_domain\_warp\_fractal\_type**()


The method for combining octaves into a fractal which is used to warp the space.

* * *

[float](class_float.md#class-float) **domain\_warp\_frequency** = `0.05` [🔗](#class-fastnoiselite-property-domain-warp-frequency)

- void **set\_domain\_warp\_frequency**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_domain\_warp\_frequency**()


Frequency of the noise which warps the space. Low frequency results in smooth noise while high frequency results in rougher, more granular noise.

* * *

[DomainWarpType](#enum-fastnoiselite-domainwarptype) **domain\_warp\_type** = `0` [🔗](#class-fastnoiselite-property-domain-warp-type)

- void **set\_domain\_warp\_type**(value: [DomainWarpType](#enum-fastnoiselite-domainwarptype))

- [DomainWarpType](#enum-fastnoiselite-domainwarptype) **get\_domain\_warp\_type**()


The warp algorithm.

* * *

[float](class_float.md#class-float) **fractal\_gain** = `0.5` [🔗](#class-fastnoiselite-property-fractal-gain)

- void **set\_fractal\_gain**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fractal\_gain**()


Determines the strength of each subsequent layer of noise in fractal noise.

A low value places more emphasis on the lower frequency base layers, while a high value puts more emphasis on the higher frequency layers.

* * *

[float](class_float.md#class-float) **fractal\_lacunarity** = `2.0` [🔗](#class-fastnoiselite-property-fractal-lacunarity)

- void **set\_fractal\_lacunarity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fractal\_lacunarity**()


Frequency multiplier between subsequent octaves. Increasing this value results in higher octaves producing noise with finer details and a rougher appearance.

* * *

[int](class_int.md#class-int) **fractal\_octaves** = `5` [🔗](#class-fastnoiselite-property-fractal-octaves)

- void **set\_fractal\_octaves**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_fractal\_octaves**()


The number of noise layers that are sampled to get the final value for fractal noise types.

* * *

[float](class_float.md#class-float) **fractal\_ping\_pong\_strength** = `2.0` [🔗](#class-fastnoiselite-property-fractal-ping-pong-strength)

- void **set\_fractal\_ping\_pong\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fractal\_ping\_pong\_strength**()


Sets the strength of the fractal ping pong type.

* * *

[FractalType](#enum-fastnoiselite-fractaltype) **fractal\_type** = `1` [🔗](#class-fastnoiselite-property-fractal-type)

- void **set\_fractal\_type**(value: [FractalType](#enum-fastnoiselite-fractaltype))

- [FractalType](#enum-fastnoiselite-fractaltype) **get\_fractal\_type**()


The method for combining octaves into a fractal.

* * *

[float](class_float.md#class-float) **fractal\_weighted\_strength** = `0.0` [🔗](#class-fastnoiselite-property-fractal-weighted-strength)

- void **set\_fractal\_weighted\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fractal\_weighted\_strength**()


Higher weighting means higher octaves have less impact if lower octaves have a large impact.

* * *

[float](class_float.md#class-float) **frequency** = `0.01` [🔗](#class-fastnoiselite-property-frequency)

- void **set\_frequency**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_frequency**()


The frequency for all noise types. Low frequency results in smooth noise while high frequency results in rougher, more granular noise.

* * *

[NoiseType](#enum-fastnoiselite-noisetype) **noise\_type** = `1` [🔗](#class-fastnoiselite-property-noise-type)

- void **set\_noise\_type**(value: [NoiseType](#enum-fastnoiselite-noisetype))

- [NoiseType](#enum-fastnoiselite-noisetype) **get\_noise\_type**()


The noise algorithm used.

* * *

[Vector3](class_vector3.md#class-vector3) **offset** = `Vector3(0, 0, 0)` [🔗](#class-fastnoiselite-property-offset)

- void **set\_offset**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_offset**()


Translate the noise input coordinates by the given [Vector3](class_vector3.md#class-vector3).

* * *

[int](class_int.md#class-int) **seed** = `0` [🔗](#class-fastnoiselite-property-seed)

- void **set\_seed**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_seed**()


The random number seed for all noise types.

[Previous](class_externaltexture.md "ExternalTexture") [Next](class_fbxdocument.md "FBXDocument")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_externaltexture.md "ExternalTexture") [Next](class_fbxdocument.md "FBXDocument")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).