---
title: CSGShape3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_csgshape3d.html
crawled_at: "2026-08-13T10:19:13+12:00"
content_hash: a18454c9e79052e54f249c556b27a6609549b16c6040fead8eedc8d329b05b18
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CSGShape3D

* * *

# CSGShape3D

**Inherits:** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [CSGCombiner3D](class_csgcombiner3d.md#class-csgcombiner3d), [CSGPrimitive3D](class_csgprimitive3d.md#class-csgprimitive3d)

The CSG base class.

## Description

This is the CSG base class that provides CSG operation support to the various CSG nodes in Godot.

**Performance:** CSG nodes are only intended for prototyping as they have a significant CPU performance cost. Consider baking final CSG operation results into static geometry that replaces the CSG nodes.

Individual CSG root node results can be baked to nodes with static resources with the editor menu that appears when a CSG root node is selected.

Individual CSG root nodes can also be baked to static resources with scripts by calling [bake\_static\_mesh()](#class-csgshape3d-method-bake-static-mesh) for the visual mesh or [bake\_collision\_shape()](#class-csgshape3d-method-bake-collision-shape) for the physics collision.

Entire scenes of CSG nodes can be baked to static geometry and exported with the editor glTF scene exporter: **Scene > Export As... > glTF 2.0 Scene...**

## Tutorials

- [Prototyping levels with CSG](../tutorials/3d/csg_tools.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [calculate\_tangents](#class-csgshape3d-property-calculate-tangents) | `true` |
| [int](class_int.md#class-int) | [collision\_layer](#class-csgshape3d-property-collision-layer) | `1` |
| [int](class_int.md#class-int) | [collision\_mask](#class-csgshape3d-property-collision-mask) | `1` |
| [float](class_float.md#class-float) | [collision\_priority](#class-csgshape3d-property-collision-priority) | `1.0` |
| [Operation](#enum-csgshape3d-operation) | [operation](#class-csgshape3d-property-operation) | `0` |
| [float](class_float.md#class-float) | [snap](#class-csgshape3d-property-snap) |  |
| [bool](class_bool.md#class-bool) | [use\_collision](#class-csgshape3d-property-use-collision) | `false` |

## Methods

|     |     |
| --- | --- |
| [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) | [bake\_collision\_shape](#class-csgshape3d-method-bake-collision-shape)() |
| [ArrayMesh](class_arraymesh.md#class-arraymesh) | [bake\_static\_mesh](#class-csgshape3d-method-bake-static-mesh)() |
| [bool](class_bool.md#class-bool) | [get\_collision\_layer\_value](#class-csgshape3d-method-get-collision-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-csgshape3d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array) | [get\_meshes](#class-csgshape3d-method-get-meshes)() const |
| [bool](class_bool.md#class-bool) | [is\_root\_shape](#class-csgshape3d-method-is-root-shape)() const |
| void | [set\_collision\_layer\_value](#class-csgshape3d-method-set-collision-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_collision\_mask\_value](#class-csgshape3d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **Operation**: [🔗](#enum-csgshape3d-operation)

[Operation](#enum-csgshape3d-operation) **OPERATION\_UNION** = `0`

Geometry of both primitives is merged, intersecting geometry is removed.

[Operation](#enum-csgshape3d-operation) **OPERATION\_INTERSECTION** = `1`

Only intersecting geometry remains, the rest is removed.

[Operation](#enum-csgshape3d-operation) **OPERATION\_SUBTRACTION** = `2`

The second shape is subtracted from the first, leaving a dent with its shape.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **calculate\_tangents** = `true` [🔗](#class-csgshape3d-property-calculate-tangents)

- void **set\_calculate\_tangents**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_calculating\_tangents**()


Calculate tangents for the CSG shape which allows the use of normal and height maps. This is only applied on the root shape, this setting is ignored on any child. Setting this to `false` can speed up shape generation slightly.

* * *

[int](class_int.md#class-int) **collision\_layer** = `1` [🔗](#class-csgshape3d-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The physics layers this area is in.

Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision\_mask property.

A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-csgshape3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers this CSG shape scans for collisions. Only effective if [use\_collision](#class-csgshape3d-property-use-collision) is `true`. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[float](class_float.md#class-float) **collision\_priority** = `1.0` [🔗](#class-csgshape3d-property-collision-priority)

- void **set\_collision\_priority**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_priority**()


The priority used to solve colliding when occurring penetration. Only effective if [use\_collision](#class-csgshape3d-property-use-collision) is `true`. The higher the priority is, the lower the penetration into the object will be. This can for example be used to prevent the player from breaking through the boundaries of a level.

* * *

[Operation](#enum-csgshape3d-operation) **operation** = `0` [🔗](#class-csgshape3d-property-operation)

- void **set\_operation**(value: [Operation](#enum-csgshape3d-operation))

- [Operation](#enum-csgshape3d-operation) **get\_operation**()


The operation that is performed on this shape. This is ignored for the first CSG child node as the operation is between this node and the previous child of this nodes parent.

* * *

[float](class_float.md#class-float) **snap** [🔗](#class-csgshape3d-property-snap)

- void **set\_snap**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_snap**()


**Deprecated:** The CSG library no longer uses snapping.

This property does nothing.

* * *

[bool](class_bool.md#class-bool) **use\_collision** = `false` [🔗](#class-csgshape3d-property-use-collision)

- void **set\_use\_collision**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_collision**()


Adds a collision shape to the physics engine for our CSG shape. This will always act like a static body. Note that the collision shape is still active even if the CSG shape itself is hidden. See also [collision\_mask](#class-csgshape3d-property-collision-mask) and [collision\_priority](#class-csgshape3d-property-collision-priority).

* * *

## Method Descriptions

[ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) **bake\_collision\_shape**() [🔗](#class-csgshape3d-method-bake-collision-shape)

Returns a baked physics [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) of this node's CSG operation result. Returns an empty shape if the node is not a CSG root node or has no valid geometry.

**Performance:** If the CSG operation results in a very detailed geometry with many faces physics performance will be very slow. Concave shapes should in general only be used for static level geometry and not with dynamic objects that are moving.

**Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty shape or outdated mesh data, make sure to call `await get_tree().process_frame` before using [bake\_collision\_shape()](#class-csgshape3d-method-bake-collision-shape) in [Node.\_ready()](class_node.md#class-node-private-method-ready) or after changing properties on the **CSGShape3D**.

* * *

[ArrayMesh](class_arraymesh.md#class-arraymesh) **bake\_static\_mesh**() [🔗](#class-csgshape3d-method-bake-static-mesh)

Returns a baked static [ArrayMesh](class_arraymesh.md#class-arraymesh) of this node's CSG operation result. Materials from involved CSG nodes are added as extra mesh surfaces. Returns an empty mesh if the node is not a CSG root node or has no valid geometry.

**Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty mesh or outdated mesh data, make sure to call `await get_tree().process_frame` before using [bake\_static\_mesh()](#class-csgshape3d-method-bake-static-mesh) in [Node.\_ready()](class_node.md#class-node-private-method-ready) or after changing properties on the **CSGShape3D**.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-csgshape3d-method-get-collision-layer-value)

Returns whether or not the specified layer of the [collision\_layer](#class-csgshape3d-property-collision-layer) is enabled, given a `layer_number` between 1 and 32.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-csgshape3d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-csgshape3d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[Array](class_array.md#class-array) **get\_meshes**() const [🔗](#class-csgshape3d-method-get-meshes)

Returns an [Array](class_array.md#class-array) with two elements, the first is the [Transform3D](class_transform3d.md#class-transform3d) of this node and the second is the root [Mesh](class_mesh.md#class-mesh) of this node. Only works when this node is the root shape.

**Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty shape or outdated mesh data, make sure to call `await get_tree().process_frame` before using [get\_meshes()](#class-csgshape3d-method-get-meshes) in [Node.\_ready()](class_node.md#class-node-private-method-ready) or after changing properties on the **CSGShape3D**.

* * *

[bool](class_bool.md#class-bool) **is\_root\_shape**() const [🔗](#class-csgshape3d-method-is-root-shape)

Returns `true` if this is a root shape and is thus the object that is rendered.

* * *

void **set\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-csgshape3d-method-set-collision-layer-value)

Based on `value`, enables or disables the specified layer in the [collision\_layer](#class-csgshape3d-property-collision-layer), given a `layer_number` between 1 and 32.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-csgshape3d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-csgshape3d-property-collision-mask), given a `layer_number` between 1 and 32.

[Previous](class_csgprimitive3d.md "CSGPrimitive3D") [Next](class_csgsphere3d.md "CSGSphere3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csgprimitive3d.md "CSGPrimitive3D") [Next](class_csgsphere3d.md "CSGSphere3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).