---
title: NavigationPathQueryResult2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationpathqueryresult2d.html
crawled_at: "2026-08-13T10:28:09+12:00"
content_hash: d066cbee065fc51091e2d277f9639eb4a918fff9cc0a1d02be59a2f5078dc49a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationPathQueryResult2D

* * *

# NavigationPathQueryResult2D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents the result of a 2D pathfinding query.

## Description

This class stores the result of a 2D navigation path query from the [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d).

## Tutorials

- [Using NavigationPathQueryObjects](../tutorials/navigation/navigation_using_navigationpathqueryobjects.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [path](#class-navigationpathqueryresult2d-property-path) | `PackedVector2Array()` |
| [float](class_float.md#class-float) | [path\_length](#class-navigationpathqueryresult2d-property-path-length) | `0.0` |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [path\_owner\_ids](#class-navigationpathqueryresult2d-property-path-owner-ids) | `PackedInt64Array()` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [path\_rids](#class-navigationpathqueryresult2d-property-path-rids) | `[]` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [path\_types](#class-navigationpathqueryresult2d-property-path-types) | `PackedInt32Array()` |

## Methods

|     |     |
| --- | --- |
| void | [reset](#class-navigationpathqueryresult2d-method-reset)() |

* * *

## Enumerations

enum **PathSegmentType**: [🔗](#enum-navigationpathqueryresult2d-pathsegmenttype)

[PathSegmentType](#enum-navigationpathqueryresult2d-pathsegmenttype) **PATH\_SEGMENT\_TYPE\_REGION** = `0`

This segment of the path goes through a region.

[PathSegmentType](#enum-navigationpathqueryresult2d-pathsegmenttype) **PATH\_SEGMENT\_TYPE\_LINK** = `1`

This segment of the path goes through a link.

* * *

## Property Descriptions

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **path** = `PackedVector2Array()` [🔗](#class-navigationpathqueryresult2d-property-path)

- void **set\_path**(value: [PackedVector2Array](class_packedvector2array.md#class-packedvector2array))

- [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **get\_path**()


The resulting path array from the navigation query. All path array positions are in global coordinates. Without customized query parameters this is the same path as returned by [NavigationServer2D.map\_get\_path()](class_navigationserver2d.md#class-navigationserver2d-method-map-get-path).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) for more details.

* * *

[float](class_float.md#class-float) **path\_length** = `0.0` [🔗](#class-navigationpathqueryresult2d-property-path-length)

- void **set\_path\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_length**()


Returns the length of the path.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **path\_owner\_ids** = `PackedInt64Array()` [🔗](#class-navigationpathqueryresult2d-property-path-owner-ids)

- void **set\_path\_owner\_ids**(value: [PackedInt64Array](class_packedint64array.md#class-packedint64array))

- [PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_path\_owner\_ids**()


The `ObjectID` s of the [Object](class_object.md#class-object) s which manage the regions and links each point of the path goes through.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt64Array](class_packedint64array.md#class-packedint64array) for more details.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **path\_rids** = `[]` [🔗](#class-navigationpathqueryresult2d-property-path-rids)

- void **set\_path\_rids**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_path\_rids**()


The [RID](class_rid.md#class-rid) s of the regions and links that each point of the path goes through.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **path\_types** = `PackedInt32Array()` [🔗](#class-navigationpathqueryresult2d-property-path-types)

- void **set\_path\_types**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_path\_types**()


The type of navigation primitive (region or link) that each point of the path goes through.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

## Method Descriptions

void **reset**() [🔗](#class-navigationpathqueryresult2d-method-reset)

Reset the result object to its initial state. This is useful to reuse the object across multiple queries.

[Previous](class_navigationpathqueryparameters3d.md "NavigationPathQueryParameters3D") [Next](class_navigationpathqueryresult3d.md "NavigationPathQueryResult3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationpathqueryparameters3d.md "NavigationPathQueryParameters3D") [Next](class_navigationpathqueryresult3d.md "NavigationPathQueryResult3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).