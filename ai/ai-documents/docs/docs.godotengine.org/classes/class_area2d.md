---
title: Area2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_area2d.html
crawled_at: "2026-08-13T10:41:18+12:00"
content_hash: 12bacfc25ccbcf2c4c7b2ad61594824639095fcee7efd5e3e9050504892f1298
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Area2D

* * *

# Area2D

**Inherits:** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A region of 2D space that detects other [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) s entering or exiting it.

## Description

**Area2D** is a region of 2D space defined by one or multiple [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) or [CollisionPolygon2D](class_collisionpolygon2d.md#class-collisionpolygon2d) child nodes. It detects when other [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) s enter or exit it, and it also keeps track of which collision objects haven't exited it yet (i.e. which one are overlapping it).

This node can also locally alter or override physics parameters (gravity, damping) and route audio to custom audio buses.

**Note:** Areas and bodies created with [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) might not interact as expected with **Area2D** s, and might not emit signals or track objects correctly.

## Tutorials

- [Using Area2D](../tutorials/physics/using_area_2d.md)

- [2D Dodge The Creeps Demo](https://godotengine.org/asset-library/asset/2712)

- [2D Pong Demo](https://godotengine.org/asset-library/asset/2728)

- [2D Platformer Demo](https://godotengine.org/asset-library/asset/2727)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_damp](#class-area2d-property-angular-damp) | `1.0` |
| [SpaceOverride](#enum-area2d-spaceoverride) | [angular\_damp\_space\_override](#class-area2d-property-angular-damp-space-override) | `0` |
| [StringName](class_stringname.md#class-stringname) | [audio\_bus\_name](#class-area2d-property-audio-bus-name) | `&"Master"` |
| [bool](class_bool.md#class-bool) | [audio\_bus\_override](#class-area2d-property-audio-bus-override) | `false` |
| [float](class_float.md#class-float) | [gravity](#class-area2d-property-gravity) | `980.0` |
| [Vector2](class_vector2.md#class-vector2) | [gravity\_direction](#class-area2d-property-gravity-direction) | `Vector2(0, 1)` |
| [bool](class_bool.md#class-bool) | [gravity\_point](#class-area2d-property-gravity-point) | `false` |
| [Vector2](class_vector2.md#class-vector2) | [gravity\_point\_center](#class-area2d-property-gravity-point-center) | `Vector2(0, 1)` |
| [float](class_float.md#class-float) | [gravity\_point\_unit\_distance](#class-area2d-property-gravity-point-unit-distance) | `0.0` |
| [SpaceOverride](#enum-area2d-spaceoverride) | [gravity\_space\_override](#class-area2d-property-gravity-space-override) | `0` |
| [float](class_float.md#class-float) | [linear\_damp](#class-area2d-property-linear-damp) | `0.1` |
| [SpaceOverride](#enum-area2d-spaceoverride) | [linear\_damp\_space\_override](#class-area2d-property-linear-damp-space-override) | `0` |
| [bool](class_bool.md#class-bool) | [monitorable](#class-area2d-property-monitorable) | `true` |
| [bool](class_bool.md#class-bool) | [monitoring](#class-area2d-property-monitoring) | `true` |
| [int](class_int.md#class-int) | [priority](#class-area2d-property-priority) | `0` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Area2D](#class-area2d)\] | [get\_overlapping\_areas](#class-area2d-method-get-overlapping-areas)() const |
| [Array](class_array.md#class-array)\[ [Node2D](class_node2d.md#class-node2d)\] | [get\_overlapping\_bodies](#class-area2d-method-get-overlapping-bodies)() const |
| [bool](class_bool.md#class-bool) | [has\_overlapping\_areas](#class-area2d-method-has-overlapping-areas)() const |
| [bool](class_bool.md#class-bool) | [has\_overlapping\_bodies](#class-area2d-method-has-overlapping-bodies)() const |
| [bool](class_bool.md#class-bool) | [overlaps\_area](#class-area2d-method-overlaps-area)(area: [Node](class_node.md#class-node)) const |
| [bool](class_bool.md#class-bool) | [overlaps\_body](#class-area2d-method-overlaps-body)(body: [Node](class_node.md#class-node)) const |

* * *

## Signals

**area\_entered**(area: [Area2D](#class-area2d)) [🔗](#class-area2d-signal-area-entered)

Emitted when the received `area` enters this area. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

* * *

**area\_exited**(area: [Area2D](#class-area2d)) [🔗](#class-area2d-signal-area-exited)

Emitted when the received `area` exits this area. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

* * *

**area\_shape\_entered**(area\_rid: [RID](class_rid.md#class-rid), area: [Area2D](#class-area2d), area\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area2d-signal-area-shape-entered)

Emitted when a [Shape2D](class_shape2d.md#class-shape2d) of the received `area` enters a shape of this area. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

`local_shape_index` and `area_shape_index` contain indices of the interacting shapes from this area and the other area, respectively. `area_rid` contains the [RID](class_rid.md#class-rid) of the other area. These values can be used with the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

**Example:** Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node from the shape index:

GDScript

```
var other_shape_owner = area.shape_find_owner(area_shape_index)
var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

var local_shape_owner = shape_find_owner(local_shape_index)
var local_shape_node = shape_owner_get_owner(local_shape_owner)

```

* * *

**area\_shape\_exited**(area\_rid: [RID](class_rid.md#class-rid), area: [Area2D](#class-area2d), area\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area2d-signal-area-shape-exited)

Emitted when a [Shape2D](class_shape2d.md#class-shape2d) of the received `area` exits a shape of this area. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

See also [area\_shape\_entered](#class-area2d-signal-area-shape-entered).

* * *

**body\_entered**(body: [Node2D](class_node2d.md#class-node2d)) [🔗](#class-area2d-signal-body-entered)

Emitted when the received `body` enters this area. `body` can be a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or a [TileMap](class_tilemap.md#class-tilemap). [TileMap](class_tilemap.md#class-tilemap) s are detected if their [TileSet](class_tileset.md#class-tileset) has collision shapes configured. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

* * *

**body\_exited**(body: [Node2D](class_node2d.md#class-node2d)) [🔗](#class-area2d-signal-body-exited)

Emitted when the received `body` exits this area. `body` can be a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or a [TileMap](class_tilemap.md#class-tilemap). [TileMap](class_tilemap.md#class-tilemap) s are detected if their [TileSet](class_tileset.md#class-tileset) has collision shapes configured. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

* * *

**body\_shape\_entered**(body\_rid: [RID](class_rid.md#class-rid), body: [Node2D](class_node2d.md#class-node2d), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area2d-signal-body-shape-entered)

Emitted when a [Shape2D](class_shape2d.md#class-shape2d) of the received `body` enters a shape of this area. `body` can be a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or a [TileMap](class_tilemap.md#class-tilemap). [TileMap](class_tilemap.md#class-tilemap) s are detected if their [TileSet](class_tileset.md#class-tileset) has collision shapes configured. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

`local_shape_index` and `body_shape_index` contain indices of the interacting shapes from this area and the interacting body, respectively. `body_rid` contains the [RID](class_rid.md#class-rid) of the body. These values can be used with the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

**Example:** Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node from the shape index:

GDScript

```
var body_shape_owner = body.shape_find_owner(body_shape_index)
var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

var local_shape_owner = shape_find_owner(local_shape_index)
var local_shape_node = shape_owner_get_owner(local_shape_owner)

```

* * *

**body\_shape\_exited**(body\_rid: [RID](class_rid.md#class-rid), body: [Node2D](class_node2d.md#class-node2d), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area2d-signal-body-shape-exited)

Emitted when a [Shape2D](class_shape2d.md#class-shape2d) of the received `body` exits a shape of this area. `body` can be a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or a [TileMap](class_tilemap.md#class-tilemap). [TileMap](class_tilemap.md#class-tilemap) s are detected if their [TileSet](class_tileset.md#class-tileset) has collision shapes configured. Requires [monitoring](#class-area2d-property-monitoring) to be set to `true`.

See also [body\_shape\_entered](#class-area2d-signal-body-shape-entered).

* * *

## Enumerations

enum **SpaceOverride**: [🔗](#enum-area2d-spaceoverride)

[SpaceOverride](#enum-area2d-spaceoverride) **SPACE\_OVERRIDE\_DISABLED** = `0`

This area does not affect gravity/damping.

[SpaceOverride](#enum-area2d-spaceoverride) **SPACE\_OVERRIDE\_COMBINE** = `1`

This area adds its gravity/damping values to whatever has been calculated so far (in [priority](#class-area2d-property-priority) order).

[SpaceOverride](#enum-area2d-spaceoverride) **SPACE\_OVERRIDE\_COMBINE\_REPLACE** = `2`

This area adds its gravity/damping values to whatever has been calculated so far (in [priority](#class-area2d-property-priority) order), ignoring any lower priority areas.

[SpaceOverride](#enum-area2d-spaceoverride) **SPACE\_OVERRIDE\_REPLACE** = `3`

This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.

[SpaceOverride](#enum-area2d-spaceoverride) **SPACE\_OVERRIDE\_REPLACE\_COMBINE** = `4`

This area replaces any gravity/damping calculated so far (in [priority](#class-area2d-property-priority) order), but keeps calculating the rest of the areas.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_damp** = `1.0` [🔗](#class-area2d-property-angular-damp)

- void **set\_angular\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_damp**()


The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.

See [ProjectSettings.physics/2d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-angular-damp) for more details about damping.

* * *

[SpaceOverride](#enum-area2d-spaceoverride) **angular\_damp\_space\_override** = `0` [🔗](#class-area2d-property-angular-damp-space-override)

- void **set\_angular\_damp\_space\_override\_mode**(value: [SpaceOverride](#enum-area2d-spaceoverride))

- [SpaceOverride](#enum-area2d-spaceoverride) **get\_angular\_damp\_space\_override\_mode**()


Override mode for angular damping calculations within this area.

* * *

[StringName](class_stringname.md#class-stringname) **audio\_bus\_name** = `&"Master"` [🔗](#class-area2d-property-audio-bus-name)

- void **set\_audio\_bus\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_audio\_bus\_name**()


The name of the area's audio bus.

* * *

[bool](class_bool.md#class-bool) **audio\_bus\_override** = `false` [🔗](#class-area2d-property-audio-bus-override)

- void **set\_audio\_bus\_override**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_overriding\_audio\_bus**()


If `true`, the area's audio bus overrides the default audio bus.

* * *

[float](class_float.md#class-float) **gravity** = `980.0` [🔗](#class-area2d-property-gravity)

- void **set\_gravity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity**()


The area's gravity intensity (in pixels per second squared). This value multiplies the gravity direction. This is useful to alter the force of gravity without altering its direction.

* * *

[Vector2](class_vector2.md#class-vector2) **gravity\_direction** = `Vector2(0, 1)` [🔗](#class-area2d-property-gravity-direction)

- void **set\_gravity\_direction**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_gravity\_direction**()


The area's gravity vector (not normalized).

* * *

[bool](class_bool.md#class-bool) **gravity\_point** = `false` [🔗](#class-area2d-property-gravity-point)

- void **set\_gravity\_is\_point**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_gravity\_a\_point**()


If `true`, gravity is calculated from a point (set via [gravity\_point\_center](#class-area2d-property-gravity-point-center)). See also [gravity\_space\_override](#class-area2d-property-gravity-space-override).

* * *

[Vector2](class_vector2.md#class-vector2) **gravity\_point\_center** = `Vector2(0, 1)` [🔗](#class-area2d-property-gravity-point-center)

- void **set\_gravity\_point\_center**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_gravity\_point\_center**()


If gravity is a point (see [gravity\_point](#class-area2d-property-gravity-point)), this will be the point of attraction.

* * *

[float](class_float.md#class-float) **gravity\_point\_unit\_distance** = `0.0` [🔗](#class-area2d-property-gravity-point-unit-distance)

- void **set\_gravity\_point\_unit\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity\_point\_unit\_distance**()


The distance at which the gravity strength is equal to [gravity](#class-area2d-property-gravity). For example, on a planet 100 pixels in radius with a surface gravity of 4.0 px/s², set the [gravity](#class-area2d-property-gravity) to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 pixels from the center the gravity will be 1.0 px/s² (twice the distance, 1/4th the gravity), at 50 pixels it will be 16.0 px/s² (half the distance, 4x the gravity), and so on.

The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.

* * *

[SpaceOverride](#enum-area2d-spaceoverride) **gravity\_space\_override** = `0` [🔗](#class-area2d-property-gravity-space-override)

- void **set\_gravity\_space\_override\_mode**(value: [SpaceOverride](#enum-area2d-spaceoverride))

- [SpaceOverride](#enum-area2d-spaceoverride) **get\_gravity\_space\_override\_mode**()


Override mode for gravity calculations within this area.

* * *

[float](class_float.md#class-float) **linear\_damp** = `0.1` [🔗](#class-area2d-property-linear-damp)

- void **set\_linear\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_linear\_damp**()


The rate at which objects stop moving in this area. Represents the linear velocity lost per second.

See [ProjectSettings.physics/2d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-linear-damp) for more details about damping.

* * *

[SpaceOverride](#enum-area2d-spaceoverride) **linear\_damp\_space\_override** = `0` [🔗](#class-area2d-property-linear-damp-space-override)

- void **set\_linear\_damp\_space\_override\_mode**(value: [SpaceOverride](#enum-area2d-spaceoverride))

- [SpaceOverride](#enum-area2d-spaceoverride) **get\_linear\_damp\_space\_override\_mode**()


Override mode for linear damping calculations within this area.

* * *

[bool](class_bool.md#class-bool) **monitorable** = `true` [🔗](#class-area2d-property-monitorable)

- void **set\_monitorable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_monitorable**()


If `true`, other monitoring areas can detect this area.

* * *

[bool](class_bool.md#class-bool) **monitoring** = `true` [🔗](#class-area2d-property-monitoring)

- void **set\_monitoring**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_monitoring**()


If `true`, the area detects bodies or areas entering and exiting it.

* * *

[int](class_int.md#class-int) **priority** = `0` [🔗](#class-area2d-property-priority)

- void **set\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_priority**()


The area's priority. Higher priority areas are processed first. The [World2D](class_world2d.md#class-world2d)'s physics is always processed last, after all areas.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Area2D](#class-area2d)\] **get\_overlapping\_areas**() const [🔗](#class-area2d-method-get-overlapping-areas)

Returns a list of intersecting **Area2D** s. The overlapping area's [CollisionObject2D.collision\_layer](class_collisionobject2d.md#class-collisionobject2d-property-collision-layer) must be part of this area's [CollisionObject2D.collision\_mask](class_collisionobject2d.md#class-collisionobject2d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[Array](class_array.md#class-array)\[ [Node2D](class_node2d.md#class-node2d)\] **get\_overlapping\_bodies**() const [🔗](#class-area2d-method-get-overlapping-bodies)

Returns a list of intersecting [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s and [TileMap](class_tilemap.md#class-tilemap) s. The overlapping body's [CollisionObject2D.collision\_layer](class_collisionobject2d.md#class-collisionobject2d-property-collision-layer) must be part of this area's [CollisionObject2D.collision\_mask](class_collisionobject2d.md#class-collisionobject2d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **has\_overlapping\_areas**() const [🔗](#class-area2d-method-has-overlapping-areas)

Returns `true` if intersecting any **Area2D** s, otherwise returns `false`. The overlapping area's [CollisionObject2D.collision\_layer](class_collisionobject2d.md#class-collisionobject2d-property-collision-layer) must be part of this area's [CollisionObject2D.collision\_mask](class_collisionobject2d.md#class-collisionobject2d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) the list of overlapping areas is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **has\_overlapping\_bodies**() const [🔗](#class-area2d-method-has-overlapping-bodies)

Returns `true` if intersecting any [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) s or [TileMap](class_tilemap.md#class-tilemap) s, otherwise returns `false`. The overlapping body's [CollisionObject2D.collision\_layer](class_collisionobject2d.md#class-collisionobject2d-property-collision-layer) must be part of this area's [CollisionObject2D.collision\_mask](class_collisionobject2d.md#class-collisionobject2d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) the list of overlapping bodies is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **overlaps\_area**(area: [Node](class_node.md#class-node)) const [🔗](#class-area2d-method-overlaps-area)

Returns `true` if the given **Area2D** intersects or overlaps this **Area2D**, `false` otherwise.

**Note:** The result of this test is not immediate after moving objects. For performance, the list of overlaps is updated once per frame and before the physics step. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **overlaps\_body**(body: [Node](class_node.md#class-node)) const [🔗](#class-area2d-method-overlaps-body)

Returns `true` if the given physics body intersects or overlaps this **Area2D**, `false` otherwise.

**Note:** The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.

The `body` argument can either be a [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or a [TileMap](class_tilemap.md#class-tilemap) instance. While TileMaps are not physics bodies themselves, they register their tiles with collision shapes as a virtual physics body.

[Previous](class_animationtree.md "AnimationTree") [Next](class_area3d.md "Area3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_animationtree.md "AnimationTree") [Next](class_area3d.md "Area3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).