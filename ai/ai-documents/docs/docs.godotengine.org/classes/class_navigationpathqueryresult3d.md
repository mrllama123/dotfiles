---
title: NavigationPathQueryResult3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_navigationpathqueryresult3d.html
crawled_at: "2026-08-13T10:39:32+12:00"
content_hash: 1f7a70f61a90be040af5f14667d2a9be0f07c7ad516c11bdfdd8e1114d3e8ac4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NavigationPathQueryResult3D

* * *

# NavigationPathQueryResult3D

**Experimental:** This class may be changed or removed in future versions.

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents the result of a 3D pathfinding query.

## Description

This class stores the result of a 3D navigation path query from the [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d).

## Tutorials

- [Using NavigationPathQueryObjects](../tutorials/navigation/navigation_using_navigationpathqueryobjects.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [path](#class-navigationpathqueryresult3d-property-path) | `PackedVector3Array()` |
| [float](class_float.md#class-float) | [path\_length](#class-navigationpathqueryresult3d-property-path-length) | `0.0` |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [path\_owner\_ids](#class-navigationpathqueryresult3d-property-path-owner-ids) | `PackedInt64Array()` |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [path\_rids](#class-navigationpathqueryresult3d-property-path-rids) | `[]` |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [path\_types](#class-navigationpathqueryresult3d-property-path-types) | `PackedInt32Array()` |

## Methods

|     |     |
| --- | --- |
| void | [reset](#class-navigationpathqueryresult3d-method-reset)() |

* * *

## Enumerations

enum **PathSegmentType**: [🔗](#enum-navigationpathqueryresult3d-pathsegmenttype)

[PathSegmentType](#enum-navigationpathqueryresult3d-pathsegmenttype) **PATH\_SEGMENT\_TYPE\_REGION** = `0`

This segment of the path goes through a region.

[PathSegmentType](#enum-navigationpathqueryresult3d-pathsegmenttype) **PATH\_SEGMENT\_TYPE\_LINK** = `1`

This segment of the path goes through a link.

* * *

## Property Descriptions

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **path** = `PackedVector3Array()` [🔗](#class-navigationpathqueryresult3d-property-path)

- void **set\_path**(value: [PackedVector3Array](class_packedvector3array.md#class-packedvector3array))

- [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **get\_path**()


The resulting path array from the navigation query. All path array positions are in global coordinates. Without customized query parameters this is the same path as returned by [NavigationServer3D.map\_get\_path()](class_navigationserver3d.md#class-navigationserver3d-method-map-get-path).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) for more details.

* * *

[float](class_float.md#class-float) **path\_length** = `0.0` [🔗](#class-navigationpathqueryresult3d-property-path-length)

- void **set\_path\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_path\_length**()


Returns the length of the path.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **path\_owner\_ids** = `PackedInt64Array()` [🔗](#class-navigationpathqueryresult3d-property-path-owner-ids)

- void **set\_path\_owner\_ids**(value: [PackedInt64Array](class_packedint64array.md#class-packedint64array))

- [PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_path\_owner\_ids**()


The `ObjectID` s of the [Object](class_object.md#class-object) s which manage the regions and links each point of the path goes through.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt64Array](class_packedint64array.md#class-packedint64array) for more details.

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **path\_rids** = `[]` [🔗](#class-navigationpathqueryresult3d-property-path-rids)

- void **set\_path\_rids**(value: [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\])

- [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **get\_path\_rids**()


The [RID](class_rid.md#class-rid) s of the regions and links that each point of the path goes through.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **path\_types** = `PackedInt32Array()` [🔗](#class-navigationpathqueryresult3d-property-path-types)

- void **set\_path\_types**(value: [PackedInt32Array](class_packedint32array.md#class-packedint32array))

- [PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_path\_types**()


The type of navigation primitive (region or link) that each point of the path goes through.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedInt32Array](class_packedint32array.md#class-packedint32array) for more details.

* * *

## Method Descriptions

void **reset**() [🔗](#class-navigationpathqueryresult3d-method-reset)

Reset the result object to its initial state. This is useful to reuse the object across multiple queries.

[Previous](class_navigationpathqueryresult2d.md "NavigationPathQueryResult2D") [Next](class_navigationserver2d.md "NavigationServer2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_navigationpathqueryresult2d.md "NavigationPathQueryResult2D") [Next](class_navigationserver2d.md "NavigationServer2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).