---
title: Area3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_area3d.html
crawled_at: "2026-08-13T10:38:50+12:00"
content_hash: a69db27a9c9707edbea70866c01c3206e23ea4ed00ec673cb65ddb43be0929c5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Area3D

* * *

# Area3D

**Inherits:** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A region of 3D space that detects other [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) s entering or exiting it.

## Description

**Area3D** is a region of 3D space defined by one or multiple [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) or [CollisionPolygon3D](class_collisionpolygon3d.md#class-collisionpolygon3d) child nodes. It detects when other [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) s enter or exit it, and it also keeps track of which collision objects haven't exited it yet (i.e. which one are overlapping it).

This node can also locally alter or override physics parameters (gravity, damping) and route audio to custom audio buses.

**Note:** Areas and bodies created with [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) might not interact as expected with **Area3D** s, and might not emit signals or track objects correctly.

**Warning:** Using a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d) inside a [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) child of this node (created e.g. by using the **Create Trimesh Collision Sibling** option in the **Mesh** menu that appears when selecting a [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) node) may give unexpected results, since this collision shape is hollow. If this is not desired, it has to be split into multiple [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d) s or primitive shapes like [BoxShape3D](class_boxshape3d.md#class-boxshape3d), or in some cases it may be replaceable by a [CollisionPolygon3D](class_collisionpolygon3d.md#class-collisionpolygon3d).

## Tutorials

- [Using Area2D](../tutorials/physics/using_area_2d.md)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [GUI in 3D Viewport Demo](https://godotengine.org/asset-library/asset/2807)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_damp](#class-area3d-property-angular-damp) | `0.1` |
| [SpaceOverride](#enum-area3d-spaceoverride) | [angular\_damp\_space\_override](#class-area3d-property-angular-damp-space-override) | `0` |
| [StringName](class_stringname.md#class-stringname) | [audio\_bus\_name](#class-area3d-property-audio-bus-name) | `&"Master"` |
| [bool](class_bool.md#class-bool) | [audio\_bus\_override](#class-area3d-property-audio-bus-override) | `false` |
| [float](class_float.md#class-float) | [gravity](#class-area3d-property-gravity) | `9.8` |
| [Vector3](class_vector3.md#class-vector3) | [gravity\_direction](#class-area3d-property-gravity-direction) | `Vector3(0, -1, 0)` |
| [bool](class_bool.md#class-bool) | [gravity\_point](#class-area3d-property-gravity-point) | `false` |
| [Vector3](class_vector3.md#class-vector3) | [gravity\_point\_center](#class-area3d-property-gravity-point-center) | `Vector3(0, -1, 0)` |
| [float](class_float.md#class-float) | [gravity\_point\_unit\_distance](#class-area3d-property-gravity-point-unit-distance) | `0.0` |
| [SpaceOverride](#enum-area3d-spaceoverride) | [gravity\_space\_override](#class-area3d-property-gravity-space-override) | `0` |
| [float](class_float.md#class-float) | [linear\_damp](#class-area3d-property-linear-damp) | `0.1` |
| [SpaceOverride](#enum-area3d-spaceoverride) | [linear\_damp\_space\_override](#class-area3d-property-linear-damp-space-override) | `0` |
| [bool](class_bool.md#class-bool) | [monitorable](#class-area3d-property-monitorable) | `true` |
| [bool](class_bool.md#class-bool) | [monitoring](#class-area3d-property-monitoring) | `true` |
| [int](class_int.md#class-int) | [priority](#class-area3d-property-priority) | `0` |
| [float](class_float.md#class-float) | [reverb\_bus\_amount](#class-area3d-property-reverb-bus-amount) | `0.0` |
| [bool](class_bool.md#class-bool) | [reverb\_bus\_enabled](#class-area3d-property-reverb-bus-enabled) | `false` |
| [StringName](class_stringname.md#class-stringname) | [reverb\_bus\_name](#class-area3d-property-reverb-bus-name) | `&"Master"` |
| [float](class_float.md#class-float) | [reverb\_bus\_uniformity](#class-area3d-property-reverb-bus-uniformity) | `0.0` |
| [float](class_float.md#class-float) | [wind\_attenuation\_factor](#class-area3d-property-wind-attenuation-factor) | `0.0` |
| [float](class_float.md#class-float) | [wind\_force\_magnitude](#class-area3d-property-wind-force-magnitude) | `0.0` |
| [NodePath](class_nodepath.md#class-nodepath) | [wind\_source\_path](#class-area3d-property-wind-source-path) | `NodePath("")` |

## Methods

|     |     |
| --- | --- |
| [Array](class_array.md#class-array)\[ [Area3D](#class-area3d)\] | [get\_overlapping\_areas](#class-area3d-method-get-overlapping-areas)() const |
| [Array](class_array.md#class-array)\[ [Node3D](class_node3d.md#class-node3d)\] | [get\_overlapping\_bodies](#class-area3d-method-get-overlapping-bodies)() const |
| [bool](class_bool.md#class-bool) | [has\_overlapping\_areas](#class-area3d-method-has-overlapping-areas)() const |
| [bool](class_bool.md#class-bool) | [has\_overlapping\_bodies](#class-area3d-method-has-overlapping-bodies)() const |
| [bool](class_bool.md#class-bool) | [overlaps\_area](#class-area3d-method-overlaps-area)(area: [Node](class_node.md#class-node)) const |
| [bool](class_bool.md#class-bool) | [overlaps\_body](#class-area3d-method-overlaps-body)(body: [Node](class_node.md#class-node)) const |

* * *

## Signals

**area\_entered**(area: [Area3D](#class-area3d)) [🔗](#class-area3d-signal-area-entered)

Emitted when the received `area` enters this area. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

* * *

**area\_exited**(area: [Area3D](#class-area3d)) [🔗](#class-area3d-signal-area-exited)

Emitted when the received `area` exits this area. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

* * *

**area\_shape\_entered**(area\_rid: [RID](class_rid.md#class-rid), area: [Area3D](#class-area3d), area\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area3d-signal-area-shape-entered)

Emitted when a [Shape3D](class_shape3d.md#class-shape3d) of the received `area` enters a shape of this area. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

`local_shape_index` and `area_shape_index` contain indices of the interacting shapes from this area and the other area, respectively. `area_rid` contains the [RID](class_rid.md#class-rid) of the other area. These values can be used with the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

**Example:** Get the [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) node from the shape index:

GDScript

```
var other_shape_owner = area.shape_find_owner(area_shape_index)
var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

var local_shape_owner = shape_find_owner(local_shape_index)
var local_shape_node = shape_owner_get_owner(local_shape_owner)

```

* * *

**area\_shape\_exited**(area\_rid: [RID](class_rid.md#class-rid), area: [Area3D](#class-area3d), area\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area3d-signal-area-shape-exited)

Emitted when a [Shape3D](class_shape3d.md#class-shape3d) of the received `area` exits a shape of this area. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

See also [area\_shape\_entered](#class-area3d-signal-area-shape-entered).

* * *

**body\_entered**(body: [Node3D](class_node3d.md#class-node3d)) [🔗](#class-area3d-signal-body-entered)

Emitted when the received `body` enters this area. `body` can be a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) or a [GridMap](class_gridmap.md#class-gridmap). [GridMap](class_gridmap.md#class-gridmap) s are detected if their [MeshLibrary](class_meshlibrary.md#class-meshlibrary) has collision shapes configured. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

* * *

**body\_exited**(body: [Node3D](class_node3d.md#class-node3d)) [🔗](#class-area3d-signal-body-exited)

Emitted when the received `body` exits this area. `body` can be a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) or a [GridMap](class_gridmap.md#class-gridmap). [GridMap](class_gridmap.md#class-gridmap) s are detected if their [MeshLibrary](class_meshlibrary.md#class-meshlibrary) has collision shapes configured. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

* * *

**body\_shape\_entered**(body\_rid: [RID](class_rid.md#class-rid), body: [Node3D](class_node3d.md#class-node3d), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area3d-signal-body-shape-entered)

Emitted when a [Shape3D](class_shape3d.md#class-shape3d) of the received `body` enters a shape of this area. `body` can be a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) or a [GridMap](class_gridmap.md#class-gridmap). [GridMap](class_gridmap.md#class-gridmap) s are detected if their [MeshLibrary](class_meshlibrary.md#class-meshlibrary) has collision shapes configured. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

`local_shape_index` and `body_shape_index` contain indices of the interacting shapes from this area and the interacting body, respectively. `body_rid` contains the [RID](class_rid.md#class-rid) of the body. These values can be used with the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

**Example:** Get the [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) node from the shape index:

GDScript

```
var body_shape_owner = body.shape_find_owner(body_shape_index)
var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

var local_shape_owner = shape_find_owner(local_shape_index)
var local_shape_node = shape_owner_get_owner(local_shape_owner)

```

* * *

**body\_shape\_exited**(body\_rid: [RID](class_rid.md#class-rid), body: [Node3D](class_node3d.md#class-node3d), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-area3d-signal-body-shape-exited)

Emitted when a [Shape3D](class_shape3d.md#class-shape3d) of the received `body` exits a shape of this area. `body` can be a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) or a [GridMap](class_gridmap.md#class-gridmap). [GridMap](class_gridmap.md#class-gridmap) s are detected if their [MeshLibrary](class_meshlibrary.md#class-meshlibrary) has collision shapes configured. Requires [monitoring](#class-area3d-property-monitoring) to be set to `true`.

See also [body\_shape\_entered](#class-area3d-signal-body-shape-entered).

* * *

## Enumerations

enum **SpaceOverride**: [🔗](#enum-area3d-spaceoverride)

[SpaceOverride](#enum-area3d-spaceoverride) **SPACE\_OVERRIDE\_DISABLED** = `0`

This area does not affect gravity/damping.

[SpaceOverride](#enum-area3d-spaceoverride) **SPACE\_OVERRIDE\_COMBINE** = `1`

This area adds its gravity/damping values to whatever has been calculated so far (in [priority](#class-area3d-property-priority) order).

[SpaceOverride](#enum-area3d-spaceoverride) **SPACE\_OVERRIDE\_COMBINE\_REPLACE** = `2`

This area adds its gravity/damping values to whatever has been calculated so far (in [priority](#class-area3d-property-priority) order), ignoring any lower priority areas.

[SpaceOverride](#enum-area3d-spaceoverride) **SPACE\_OVERRIDE\_REPLACE** = `3`

This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.

[SpaceOverride](#enum-area3d-spaceoverride) **SPACE\_OVERRIDE\_REPLACE\_COMBINE** = `4`

This area replaces any gravity/damping calculated so far (in [priority](#class-area3d-property-priority) order), but keeps calculating the rest of the areas.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_damp** = `0.1` [🔗](#class-area3d-property-angular-damp)

- void **set\_angular\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_damp**()


The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.

See [ProjectSettings.physics/3d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-angular-damp) for more details about damping.

* * *

[SpaceOverride](#enum-area3d-spaceoverride) **angular\_damp\_space\_override** = `0` [🔗](#class-area3d-property-angular-damp-space-override)

- void **set\_angular\_damp\_space\_override\_mode**(value: [SpaceOverride](#enum-area3d-spaceoverride))

- [SpaceOverride](#enum-area3d-spaceoverride) **get\_angular\_damp\_space\_override\_mode**()


Override mode for angular damping calculations within this area.

* * *

[StringName](class_stringname.md#class-stringname) **audio\_bus\_name** = `&"Master"` [🔗](#class-area3d-property-audio-bus-name)

- void **set\_audio\_bus\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_audio\_bus\_name**()


The name of the area's audio bus.

* * *

[bool](class_bool.md#class-bool) **audio\_bus\_override** = `false` [🔗](#class-area3d-property-audio-bus-override)

- void **set\_audio\_bus\_override**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_overriding\_audio\_bus**()


If `true`, the area's audio bus overrides the default audio bus.

* * *

[float](class_float.md#class-float) **gravity** = `9.8` [🔗](#class-area3d-property-gravity)

- void **set\_gravity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity**()


The area's gravity intensity (in meters per second squared). This value multiplies the gravity direction. This is useful to alter the force of gravity without altering its direction.

* * *

[Vector3](class_vector3.md#class-vector3) **gravity\_direction** = `Vector3(0, -1, 0)` [🔗](#class-area3d-property-gravity-direction)

- void **set\_gravity\_direction**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_gravity\_direction**()


The area's gravity vector (not normalized).

* * *

[bool](class_bool.md#class-bool) **gravity\_point** = `false` [🔗](#class-area3d-property-gravity-point)

- void **set\_gravity\_is\_point**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_gravity\_a\_point**()


If `true`, gravity is calculated from a point (set via [gravity\_point\_center](#class-area3d-property-gravity-point-center)). See also [gravity\_space\_override](#class-area3d-property-gravity-space-override).

* * *

[Vector3](class_vector3.md#class-vector3) **gravity\_point\_center** = `Vector3(0, -1, 0)` [🔗](#class-area3d-property-gravity-point-center)

- void **set\_gravity\_point\_center**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_gravity\_point\_center**()


If gravity is a point (see [gravity\_point](#class-area3d-property-gravity-point)), this will be the point of attraction.

* * *

[float](class_float.md#class-float) **gravity\_point\_unit\_distance** = `0.0` [🔗](#class-area3d-property-gravity-point-unit-distance)

- void **set\_gravity\_point\_unit\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity\_point\_unit\_distance**()


The distance at which the gravity strength is equal to [gravity](#class-area3d-property-gravity). For example, on a planet 100 meters in radius with a surface gravity of 4.0 m/s², set the [gravity](#class-area3d-property-gravity) to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 meters from the center the gravity will be 1.0 m/s² (twice the distance, 1/4th the gravity), at 50 meters it will be 16.0 m/s² (half the distance, 4x the gravity), and so on.

The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.

* * *

[SpaceOverride](#enum-area3d-spaceoverride) **gravity\_space\_override** = `0` [🔗](#class-area3d-property-gravity-space-override)

- void **set\_gravity\_space\_override\_mode**(value: [SpaceOverride](#enum-area3d-spaceoverride))

- [SpaceOverride](#enum-area3d-spaceoverride) **get\_gravity\_space\_override\_mode**()


Override mode for gravity calculations within this area.

* * *

[float](class_float.md#class-float) **linear\_damp** = `0.1` [🔗](#class-area3d-property-linear-damp)

- void **set\_linear\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_linear\_damp**()


The rate at which objects stop moving in this area. Represents the linear velocity lost per second.

See [ProjectSettings.physics/3d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-3d-default-linear-damp) for more details about damping.

* * *

[SpaceOverride](#enum-area3d-spaceoverride) **linear\_damp\_space\_override** = `0` [🔗](#class-area3d-property-linear-damp-space-override)

- void **set\_linear\_damp\_space\_override\_mode**(value: [SpaceOverride](#enum-area3d-spaceoverride))

- [SpaceOverride](#enum-area3d-spaceoverride) **get\_linear\_damp\_space\_override\_mode**()


Override mode for linear damping calculations within this area.

* * *

[bool](class_bool.md#class-bool) **monitorable** = `true` [🔗](#class-area3d-property-monitorable)

- void **set\_monitorable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_monitorable**()


If `true`, other monitoring areas can detect this area.

* * *

[bool](class_bool.md#class-bool) **monitoring** = `true` [🔗](#class-area3d-property-monitoring)

- void **set\_monitoring**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_monitoring**()


If `true`, the area detects bodies or areas entering and exiting it.

* * *

[int](class_int.md#class-int) **priority** = `0` [🔗](#class-area3d-property-priority)

- void **set\_priority**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_priority**()


The area's priority. Higher priority areas are processed first. The [World3D](class_world3d.md#class-world3d)'s physics is always processed last, after all areas.

* * *

[float](class_float.md#class-float) **reverb\_bus\_amount** = `0.0` [🔗](#class-area3d-property-reverb-bus-amount)

- void **set\_reverb\_amount**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_reverb\_amount**()


The degree to which this area applies reverb to its associated audio. Ranges from `0` to `1` with `0.1` precision.

* * *

[bool](class_bool.md#class-bool) **reverb\_bus\_enabled** = `false` [🔗](#class-area3d-property-reverb-bus-enabled)

- void **set\_use\_reverb\_bus**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_reverb\_bus**()


If `true`, the area applies reverb to its associated audio.

* * *

[StringName](class_stringname.md#class-stringname) **reverb\_bus\_name** = `&"Master"` [🔗](#class-area3d-property-reverb-bus-name)

- void **set\_reverb\_bus\_name**(value: [StringName](class_stringname.md#class-stringname))

- [StringName](class_stringname.md#class-stringname) **get\_reverb\_bus\_name**()


The name of the reverb bus to use for this area's associated audio.

* * *

[float](class_float.md#class-float) **reverb\_bus\_uniformity** = `0.0` [🔗](#class-area3d-property-reverb-bus-uniformity)

- void **set\_reverb\_uniformity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_reverb\_uniformity**()


The degree to which this area's reverb is a uniform effect. Ranges from `0` to `1` with `0.1` precision.

* * *

[float](class_float.md#class-float) **wind\_attenuation\_factor** = `0.0` [🔗](#class-area3d-property-wind-attenuation-factor)

- void **set\_wind\_attenuation\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wind\_attenuation\_factor**()


The exponential rate at which wind force decreases with distance from its origin.

**Note:** This wind force only applies to [SoftBody3D](class_softbody3d.md#class-softbody3d) nodes. Other physics bodies are currently not affected by wind.

* * *

[float](class_float.md#class-float) **wind\_force\_magnitude** = `0.0` [🔗](#class-area3d-property-wind-force-magnitude)

- void **set\_wind\_force\_magnitude**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wind\_force\_magnitude**()


The magnitude of area-specific wind force.

**Note:** This wind force only applies to [SoftBody3D](class_softbody3d.md#class-softbody3d) nodes. Other physics bodies are currently not affected by wind.

* * *

[NodePath](class_nodepath.md#class-nodepath) **wind\_source\_path** = `NodePath("")` [🔗](#class-area3d-property-wind-source-path)

- void **set\_wind\_source\_path**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_wind\_source\_path**()


The [Node3D](class_node3d.md#class-node3d) which is used to specify the direction and origin of an area-specific wind force. The direction is opposite to the z-axis of the [Node3D](class_node3d.md#class-node3d)'s local transform, and its origin is the origin of the [Node3D](class_node3d.md#class-node3d)'s local transform.

**Note:** This wind force only applies to [SoftBody3D](class_softbody3d.md#class-softbody3d) nodes. Other physics bodies are currently not affected by wind.

* * *

## Method Descriptions

[Array](class_array.md#class-array)\[ [Area3D](#class-area3d)\] **get\_overlapping\_areas**() const [🔗](#class-area3d-method-get-overlapping-areas)

Returns a list of intersecting **Area3D** s. The overlapping area's [CollisionObject3D.collision\_layer](class_collisionobject3d.md#class-collisionobject3d-property-collision-layer) must be part of this area's [CollisionObject3D.collision\_mask](class_collisionobject3d.md#class-collisionobject3d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[Array](class_array.md#class-array)\[ [Node3D](class_node3d.md#class-node3d)\] **get\_overlapping\_bodies**() const [🔗](#class-area3d-method-get-overlapping-bodies)

Returns a list of intersecting [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s and [GridMap](class_gridmap.md#class-gridmap) s. The overlapping body's [CollisionObject3D.collision\_layer](class_collisionobject3d.md#class-collisionobject3d-property-collision-layer) must be part of this area's [CollisionObject3D.collision\_mask](class_collisionobject3d.md#class-collisionobject3d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **has\_overlapping\_areas**() const [🔗](#class-area3d-method-has-overlapping-areas)

Returns `true` if intersecting any **Area3D** s, otherwise returns `false`. The overlapping area's [CollisionObject3D.collision\_layer](class_collisionobject3d.md#class-collisionobject3d-property-collision-layer) must be part of this area's [CollisionObject3D.collision\_mask](class_collisionobject3d.md#class-collisionobject3d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) the list of overlapping areas is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **has\_overlapping\_bodies**() const [🔗](#class-area3d-method-has-overlapping-bodies)

Returns `true` if intersecting any [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) s or [GridMap](class_gridmap.md#class-gridmap) s, otherwise returns `false`. The overlapping body's [CollisionObject3D.collision\_layer](class_collisionobject3d.md#class-collisionobject3d-property-collision-layer) must be part of this area's [CollisionObject3D.collision\_mask](class_collisionobject3d.md#class-collisionobject3d-property-collision-mask) in order to be detected.

For performance reasons (collisions are all processed at the same time) the list of overlapping bodies is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **overlaps\_area**(area: [Node](class_node.md#class-node)) const [🔗](#class-area3d-method-overlaps-area)

Returns `true` if the given **Area3D** intersects or overlaps this **Area3D**, `false` otherwise.

**Note:** The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.

* * *

[bool](class_bool.md#class-bool) **overlaps\_body**(body: [Node](class_node.md#class-node)) const [🔗](#class-area3d-method-overlaps-body)

Returns `true` if the given physics body intersects or overlaps this **Area3D**, `false` otherwise.

**Note:** The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.

The `body` argument can either be a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) or a [GridMap](class_gridmap.md#class-gridmap) instance. While GridMaps are not physics body themselves, they register their tiles with collision shapes as a virtual physics body.

[Previous](class_area2d.md "Area2D") [Next](class_aspectratiocontainer.md "AspectRatioContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_area2d.md "Area2D") [Next](class_aspectratiocontainer.md "AspectRatioContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).