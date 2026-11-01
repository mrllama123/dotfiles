---
title: RigidBody2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rigidbody2d.html
crawled_at: "2026-08-13T10:31:09+12:00"
content_hash: 2d2c4ba35f9eb4ca09e99e42be43a187d201c562fbab7cc0d13972e2641ba3c3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RigidBody2D

* * *

# RigidBody2D

**Inherits:** [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) **<** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [PhysicalBone2D](class_physicalbone2d.md#class-physicalbone2d)

A 2D physics body that is moved by a physics simulation.

## Description

**RigidBody2D** implements full 2D physics. It cannot be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path.

The body's behavior can be adjusted via [lock\_rotation](#class-rigidbody2d-property-lock-rotation), [freeze](#class-rigidbody2d-property-freeze), and [freeze\_mode](#class-rigidbody2d-property-freeze-mode). By changing various properties of the object, such as [mass](#class-rigidbody2d-property-mass), you can control how the physics simulation acts on it.

A rigid body will always maintain its shape and size, even when forces are applied to it. It is useful for objects that can be interacted with in an environment, such as a tree that can be knocked over or a stack of crates that can be pushed around.

If you need to directly affect the body, prefer [\_integrate\_forces()](#class-rigidbody2d-private-method-integrate-forces) as it allows you to directly access the physics state.

If you need to override the default physics behavior, you can write a custom force integration function. See [custom\_integrator](#class-rigidbody2d-property-custom-integrator).

**Note:** Changing the 2D transform or [linear\_velocity](#class-rigidbody2d-property-linear-velocity) of a **RigidBody2D** very often may lead to some unpredictable behaviors. This also happens when a **RigidBody2D** is the descendant of a constantly moving node, like another **RigidBody2D**, as that will cause its global transform to be set whenever its ancestor moves.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)

- [2D Physics Platformer Demo](https://godotengine.org/asset-library/asset/2725)

- [Instancing Demo](https://godotengine.org/asset-library/asset/2716)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [angular\_damp](#class-rigidbody2d-property-angular-damp) | `0.0` |
| [DampMode](#enum-rigidbody2d-dampmode) | [angular\_damp\_mode](#class-rigidbody2d-property-angular-damp-mode) | `0` |
| [float](class_float.md#class-float) | [angular\_velocity](#class-rigidbody2d-property-angular-velocity) | `0.0` |
| [bool](class_bool.md#class-bool) | [can\_sleep](#class-rigidbody2d-property-can-sleep) | `true` |
| [Vector2](class_vector2.md#class-vector2) | [center\_of\_mass](#class-rigidbody2d-property-center-of-mass) | `Vector2(0, 0)` |
| [CenterOfMassMode](#enum-rigidbody2d-centerofmassmode) | [center\_of\_mass\_mode](#class-rigidbody2d-property-center-of-mass-mode) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [constant\_force](#class-rigidbody2d-property-constant-force) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [constant\_torque](#class-rigidbody2d-property-constant-torque) | `0.0` |
| [bool](class_bool.md#class-bool) | [contact\_monitor](#class-rigidbody2d-property-contact-monitor) | `false` |
| [CCDMode](#enum-rigidbody2d-ccdmode) | [continuous\_cd](#class-rigidbody2d-property-continuous-cd) | `0` |
| [bool](class_bool.md#class-bool) | [custom\_integrator](#class-rigidbody2d-property-custom-integrator) | `false` |
| [bool](class_bool.md#class-bool) | [freeze](#class-rigidbody2d-property-freeze) | `false` |
| [FreezeMode](#enum-rigidbody2d-freezemode) | [freeze\_mode](#class-rigidbody2d-property-freeze-mode) | `0` |
| [float](class_float.md#class-float) | [gravity\_scale](#class-rigidbody2d-property-gravity-scale) | `1.0` |
| [float](class_float.md#class-float) | [inertia](#class-rigidbody2d-property-inertia) | `0.0` |
| [float](class_float.md#class-float) | [linear\_damp](#class-rigidbody2d-property-linear-damp) | `0.0` |
| [DampMode](#enum-rigidbody2d-dampmode) | [linear\_damp\_mode](#class-rigidbody2d-property-linear-damp-mode) | `0` |
| [Vector2](class_vector2.md#class-vector2) | [linear\_velocity](#class-rigidbody2d-property-linear-velocity) | `Vector2(0, 0)` |
| [bool](class_bool.md#class-bool) | [lock\_rotation](#class-rigidbody2d-property-lock-rotation) | `false` |
| [float](class_float.md#class-float) | [mass](#class-rigidbody2d-property-mass) | `1.0` |
| [int](class_int.md#class-int) | [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) | `0` |
| [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) | [physics\_material\_override](#class-rigidbody2d-property-physics-material-override) |  |
| [bool](class_bool.md#class-bool) | [sleeping](#class-rigidbody2d-property-sleeping) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [\_integrate\_forces](#class-rigidbody2d-private-method-integrate-forces)(state: [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d)) virtual |
| void | [add\_constant\_central\_force](#class-rigidbody2d-method-add-constant-central-force)(force: [Vector2](class_vector2.md#class-vector2)) |
| void | [add\_constant\_force](#class-rigidbody2d-method-add-constant-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [add\_constant\_torque](#class-rigidbody2d-method-add-constant-torque)(torque: [float](class_float.md#class-float)) |
| void | [apply\_central\_force](#class-rigidbody2d-method-apply-central-force)(force: [Vector2](class_vector2.md#class-vector2)) |
| void | [apply\_central\_impulse](#class-rigidbody2d-method-apply-central-impulse)(impulse: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_force](#class-rigidbody2d-method-apply-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_impulse](#class-rigidbody2d-method-apply-impulse)(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_torque](#class-rigidbody2d-method-apply-torque)(torque: [float](class_float.md#class-float)) |
| void | [apply\_torque\_impulse](#class-rigidbody2d-method-apply-torque-impulse)(torque: [float](class_float.md#class-float)) |
| [Array](class_array.md#class-array)\[ [Node2D](class_node2d.md#class-node2d)\] | [get\_colliding\_bodies](#class-rigidbody2d-method-get-colliding-bodies)() const |
| [int](class_int.md#class-int) | [get\_contact\_count](#class-rigidbody2d-method-get-contact-count)() const |
| void | [set\_axis\_velocity](#class-rigidbody2d-method-set-axis-velocity)(axis\_velocity: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Signals

**body\_entered**(body: [Node](class_node.md#class-node)) [🔗](#class-rigidbody2d-signal-body-entered)

Emitted when a collision with another [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap) occurs. Requires [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` and [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) to be set high enough to detect all the collisions. [TileMap](class_tilemap.md#class-tilemap) s are detected if the [TileSet](class_tileset.md#class-tileset) has Collision [Shape2D](class_shape2d.md#class-shape2d) s.

`body` the [Node](class_node.md#class-node), if it exists in the tree, of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap).

* * *

**body\_exited**(body: [Node](class_node.md#class-node)) [🔗](#class-rigidbody2d-signal-body-exited)

Emitted when the collision with another [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap) ends. Requires [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` and [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) to be set high enough to detect all the collisions. [TileMap](class_tilemap.md#class-tilemap) s are detected if the [TileSet](class_tileset.md#class-tileset) has Collision [Shape2D](class_shape2d.md#class-shape2d) s.

`body` the [Node](class_node.md#class-node), if it exists in the tree, of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap).

* * *

**body\_shape\_entered**(body\_rid: [RID](class_rid.md#class-rid), body: [Node](class_node.md#class-node), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-rigidbody2d-signal-body-shape-entered)

Emitted when one of this RigidBody2D's [Shape2D](class_shape2d.md#class-shape2d) s collides with another [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap)'s [Shape2D](class_shape2d.md#class-shape2d) s. Requires [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` and [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) to be set high enough to detect all the collisions. [TileMap](class_tilemap.md#class-tilemap) s are detected if the [TileSet](class_tileset.md#class-tileset) has Collision [Shape2D](class_shape2d.md#class-shape2d) s.

`body_rid` the [RID](class_rid.md#class-rid) of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileSet](class_tileset.md#class-tileset)'s [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

`body` the [Node](class_node.md#class-node), if it exists in the tree, of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap).

`body_shape_index` the index of the [Shape2D](class_shape2d.md#class-shape2d) of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d). Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node with `body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`.

`local_shape_index` the index of the [Shape2D](class_shape2d.md#class-shape2d) of this RigidBody2D used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d). Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node with `self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`.

* * *

**body\_shape\_exited**(body\_rid: [RID](class_rid.md#class-rid), body: [Node](class_node.md#class-node), body\_shape\_index: [int](class_int.md#class-int), local\_shape\_index: [int](class_int.md#class-int)) [🔗](#class-rigidbody2d-signal-body-shape-exited)

Emitted when the collision between one of this RigidBody2D's [Shape2D](class_shape2d.md#class-shape2d) s and another [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap)'s [Shape2D](class_shape2d.md#class-shape2d) s ends. Requires [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` and [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) to be set high enough to detect all the collisions. [TileMap](class_tilemap.md#class-tilemap) s are detected if the [TileSet](class_tileset.md#class-tileset) has Collision [Shape2D](class_shape2d.md#class-shape2d) s.

`body_rid` the [RID](class_rid.md#class-rid) of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileSet](class_tileset.md#class-tileset)'s [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

`body` the [Node](class_node.md#class-node), if it exists in the tree, of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap).

`body_shape_index` the index of the [Shape2D](class_shape2d.md#class-shape2d) of the other [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) or [TileMap](class_tilemap.md#class-tilemap) used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d). Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node with `body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`.

`local_shape_index` the index of the [Shape2D](class_shape2d.md#class-shape2d) of this RigidBody2D used by the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d). Get the [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) node with `self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`.

* * *

**sleeping\_state\_changed**() [🔗](#class-rigidbody2d-signal-sleeping-state-changed)

Emitted when the physics engine changes the body's sleeping state.

**Note:** Changing the value [sleeping](#class-rigidbody2d-property-sleeping) will not trigger this signal. It is only emitted if the sleeping state is changed by the physics engine or `emit_signal("sleeping_state_changed")` is used.

* * *

## Enumerations

enum **FreezeMode**: [🔗](#enum-rigidbody2d-freezemode)

[FreezeMode](#enum-rigidbody2d-freezemode) **FREEZE\_MODE\_STATIC** = `0`

Static body freeze mode (default). The body is not affected by gravity and forces. It can be only moved by user code and doesn't collide with other bodies along its path.

[FreezeMode](#enum-rigidbody2d-freezemode) **FREEZE\_MODE\_KINEMATIC** = `1`

Kinematic body freeze mode. Similar to [FREEZE\_MODE\_STATIC](#class-rigidbody2d-constant-freeze-mode-static), but collides with other bodies along its path when moved. Useful for a frozen body that needs to be animated.

* * *

enum **CenterOfMassMode**: [🔗](#enum-rigidbody2d-centerofmassmode)

[CenterOfMassMode](#enum-rigidbody2d-centerofmassmode) **CENTER\_OF\_MASS\_MODE\_AUTO** = `0`

In this mode, the body's center of mass is calculated automatically based on its shapes. This assumes that the shapes' origins are also their center of mass.

[CenterOfMassMode](#enum-rigidbody2d-centerofmassmode) **CENTER\_OF\_MASS\_MODE\_CUSTOM** = `1`

In this mode, the body's center of mass is set through [center\_of\_mass](#class-rigidbody2d-property-center-of-mass). Defaults to the body's origin position.

* * *

enum **DampMode**: [🔗](#enum-rigidbody2d-dampmode)

[DampMode](#enum-rigidbody2d-dampmode) **DAMP\_MODE\_COMBINE** = `0`

In this mode, the body's damping value is added to any value set in areas or the default value.

[DampMode](#enum-rigidbody2d-dampmode) **DAMP\_MODE\_REPLACE** = `1`

In this mode, the body's damping value replaces any value set in areas or the default value.

* * *

enum **CCDMode**: [🔗](#enum-rigidbody2d-ccdmode)

[CCDMode](#enum-rigidbody2d-ccdmode) **CCD\_MODE\_DISABLED** = `0`

Continuous collision detection disabled. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.

[CCDMode](#enum-rigidbody2d-ccdmode) **CCD\_MODE\_CAST\_RAY** = `1`

Continuous collision detection enabled using raycasting. This is faster than shapecasting but less precise.

[CCDMode](#enum-rigidbody2d-ccdmode) **CCD\_MODE\_CAST\_SHAPE** = `2`

Continuous collision detection enabled using shapecasting. This is the slowest CCD method and the most precise.

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_damp** = `0.0` [🔗](#class-rigidbody2d-property-angular-damp)

- void **set\_angular\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_damp**()


Damps the body's rotation. By default, the body will use the [ProjectSettings.physics/2d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-angular-damp) setting or any value override set by an [Area2D](class_area2d.md#class-area2d) the body is in. Depending on [angular\_damp\_mode](#class-rigidbody2d-property-angular-damp-mode), you can set [angular\_damp](#class-rigidbody2d-property-angular-damp) to be added to or to replace the body's damping value.

See [ProjectSettings.physics/2d/default\_angular\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-angular-damp) for more details about damping.

* * *

[DampMode](#enum-rigidbody2d-dampmode) **angular\_damp\_mode** = `0` [🔗](#class-rigidbody2d-property-angular-damp-mode)

- void **set\_angular\_damp\_mode**(value: [DampMode](#enum-rigidbody2d-dampmode))

- [DampMode](#enum-rigidbody2d-dampmode) **get\_angular\_damp\_mode**()


Defines how [angular\_damp](#class-rigidbody2d-property-angular-damp) is applied.

* * *

[float](class_float.md#class-float) **angular\_velocity** = `0.0` [🔗](#class-rigidbody2d-property-angular-velocity)

- void **set\_angular\_velocity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_velocity**()


The body's rotational velocity in _radians_ per second.

* * *

[bool](class_bool.md#class-bool) **can\_sleep** = `true` [🔗](#class-rigidbody2d-property-can-sleep)

- void **set\_can\_sleep**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_able\_to\_sleep**()


If `true`, the body can enter sleep mode when there is no movement. See [sleeping](#class-rigidbody2d-property-sleeping).

* * *

[Vector2](class_vector2.md#class-vector2) **center\_of\_mass** = `Vector2(0, 0)` [🔗](#class-rigidbody2d-property-center-of-mass)

- void **set\_center\_of\_mass**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_center\_of\_mass**()


The body's custom center of mass, relative to the body's origin position, when [center\_of\_mass\_mode](#class-rigidbody2d-property-center-of-mass-mode) is set to [CENTER\_OF\_MASS\_MODE\_CUSTOM](#class-rigidbody2d-constant-center-of-mass-mode-custom). This is the balanced point of the body, where applied forces only cause linear acceleration. Applying forces outside of the center of mass causes angular acceleration.

When [center\_of\_mass\_mode](#class-rigidbody2d-property-center-of-mass-mode) is set to [CENTER\_OF\_MASS\_MODE\_AUTO](#class-rigidbody2d-constant-center-of-mass-mode-auto) (default value), the center of mass is automatically determined, but this does not update the value of [center\_of\_mass](#class-rigidbody2d-property-center-of-mass).

* * *

[CenterOfMassMode](#enum-rigidbody2d-centerofmassmode) **center\_of\_mass\_mode** = `0` [🔗](#class-rigidbody2d-property-center-of-mass-mode)

- void **set\_center\_of\_mass\_mode**(value: [CenterOfMassMode](#enum-rigidbody2d-centerofmassmode))

- [CenterOfMassMode](#enum-rigidbody2d-centerofmassmode) **get\_center\_of\_mass\_mode**()


Defines the way the body's center of mass is set.

* * *

[Vector2](class_vector2.md#class-vector2) **constant\_force** = `Vector2(0, 0)` [🔗](#class-rigidbody2d-property-constant-force)

- void **set\_constant\_force**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_constant\_force**()


The body's total constant positional forces applied during each physics update.

See [add\_constant\_force()](#class-rigidbody2d-method-add-constant-force) and [add\_constant\_central\_force()](#class-rigidbody2d-method-add-constant-central-force).

* * *

[float](class_float.md#class-float) **constant\_torque** = `0.0` [🔗](#class-rigidbody2d-property-constant-torque)

- void **set\_constant\_torque**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_constant\_torque**()


The body's total constant rotational forces applied during each physics update.

See [add\_constant\_torque()](#class-rigidbody2d-method-add-constant-torque).

* * *

[bool](class_bool.md#class-bool) **contact\_monitor** = `false` [🔗](#class-rigidbody2d-property-contact-monitor)

- void **set\_contact\_monitor**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_contact\_monitor\_enabled**()


If `true`, the RigidBody2D will emit signals when it collides with another body.

**Note:** By default the maximum contacts reported is set to 0, meaning nothing will be recorded, see [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported).

* * *

[CCDMode](#enum-rigidbody2d-ccdmode) **continuous\_cd** = `0` [🔗](#class-rigidbody2d-property-continuous-cd)

- void **set\_continuous\_collision\_detection\_mode**(value: [CCDMode](#enum-rigidbody2d-ccdmode))

- [CCDMode](#enum-rigidbody2d-ccdmode) **get\_continuous\_collision\_detection\_mode**()


Continuous collision detection mode.

Continuous collision detection tries to predict where a moving body will collide instead of moving it and correcting its movement after collision. Continuous collision detection is slower, but more precise and misses fewer collisions with small, fast-moving objects. Raycasting and shapecasting methods are available.

* * *

[bool](class_bool.md#class-bool) **custom\_integrator** = `false` [🔗](#class-rigidbody2d-property-custom-integrator)

- void **set\_use\_custom\_integrator**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_custom\_integrator**()


If `true`, the standard force integration (like gravity or damping) will be disabled for this body. Other than collision response, the body will only move as determined by the [\_integrate\_forces()](#class-rigidbody2d-private-method-integrate-forces) method, if that virtual method is overridden.

Setting this property will call the method [PhysicsServer2D.body\_set\_omit\_force\_integration()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-omit-force-integration) internally.

* * *

[bool](class_bool.md#class-bool) **freeze** = `false` [🔗](#class-rigidbody2d-property-freeze)

- void **set\_freeze\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_freeze\_enabled**()


If `true`, the body is frozen. Gravity and forces are not applied anymore.

See [freeze\_mode](#class-rigidbody2d-property-freeze-mode) to set the body's behavior when frozen.

For a body that is always frozen, use [StaticBody2D](class_staticbody2d.md#class-staticbody2d) or [AnimatableBody2D](class_animatablebody2d.md#class-animatablebody2d) instead.

* * *

[FreezeMode](#enum-rigidbody2d-freezemode) **freeze\_mode** = `0` [🔗](#class-rigidbody2d-property-freeze-mode)

- void **set\_freeze\_mode**(value: [FreezeMode](#enum-rigidbody2d-freezemode))

- [FreezeMode](#enum-rigidbody2d-freezemode) **get\_freeze\_mode**()


The body's freeze mode. Can be used to set the body's behavior when [freeze](#class-rigidbody2d-property-freeze) is enabled.

For a body that is always frozen, use [StaticBody2D](class_staticbody2d.md#class-staticbody2d) or [AnimatableBody2D](class_animatablebody2d.md#class-animatablebody2d) instead.

* * *

[float](class_float.md#class-float) **gravity\_scale** = `1.0` [🔗](#class-rigidbody2d-property-gravity-scale)

- void **set\_gravity\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_gravity\_scale**()


Multiplies the gravity applied to the body. The body's gravity is calculated from the [ProjectSettings.physics/2d/default\_gravity](class_projectsettings.md#class-projectsettings-property-physics-2d-default-gravity) project setting and/or any additional gravity vector applied by [Area2D](class_area2d.md#class-area2d) s.

* * *

[float](class_float.md#class-float) **inertia** = `0.0` [🔗](#class-rigidbody2d-property-inertia)

- void **set\_inertia**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_inertia**()


The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this property allows you to set a custom value.

If set to `0`, inertia is automatically computed (default value).

**Note:** This value does not change when inertia is automatically computed. Use [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) to get the computed inertia.

GDScriptC#

```
@onready var ball = $Ball

func get_ball_inertia():
    return 1.0 / PhysicsServer2D.body_get_direct_state(ball.get_rid()).inverse_inertia

```

```
private RigidBody2D _ball;

public override void _Ready()
{
    _ball = GetNode<RigidBody2D>("Ball");
}

private float GetBallInertia()
{
    return 1.0f / PhysicsServer2D.BodyGetDirectState(_ball.GetRid()).InverseInertia;
}

```

* * *

[float](class_float.md#class-float) **linear\_damp** = `0.0` [🔗](#class-rigidbody2d-property-linear-damp)

- void **set\_linear\_damp**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_linear\_damp**()


Damps the body's movement. By default, the body will use the [ProjectSettings.physics/2d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-linear-damp) setting or any value override set by an [Area2D](class_area2d.md#class-area2d) the body is in. Depending on [linear\_damp\_mode](#class-rigidbody2d-property-linear-damp-mode), you can set [linear\_damp](#class-rigidbody2d-property-linear-damp) to be added to or to replace the body's damping value.

See [ProjectSettings.physics/2d/default\_linear\_damp](class_projectsettings.md#class-projectsettings-property-physics-2d-default-linear-damp) for more details about damping.

* * *

[DampMode](#enum-rigidbody2d-dampmode) **linear\_damp\_mode** = `0` [🔗](#class-rigidbody2d-property-linear-damp-mode)

- void **set\_linear\_damp\_mode**(value: [DampMode](#enum-rigidbody2d-dampmode))

- [DampMode](#enum-rigidbody2d-dampmode) **get\_linear\_damp\_mode**()


Defines how [linear\_damp](#class-rigidbody2d-property-linear-damp) is applied.

* * *

[Vector2](class_vector2.md#class-vector2) **linear\_velocity** = `Vector2(0, 0)` [🔗](#class-rigidbody2d-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_linear\_velocity**()


The body's linear velocity in pixels per second. Can be used sporadically, but **don't set this every frame**, because physics may run in another thread and runs at a different granularity. Use [\_integrate\_forces()](#class-rigidbody2d-private-method-integrate-forces) as your process loop for precise control of the body state.

* * *

[bool](class_bool.md#class-bool) **lock\_rotation** = `false` [🔗](#class-rigidbody2d-property-lock-rotation)

- void **set\_lock\_rotation\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_lock\_rotation\_enabled**()


If `true`, the body cannot rotate. Gravity and forces only apply linear movement.

* * *

[float](class_float.md#class-float) **mass** = `1.0` [🔗](#class-rigidbody2d-property-mass)

- void **set\_mass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_mass**()


The body's mass.

* * *

[int](class_int.md#class-int) **max\_contacts\_reported** = `0` [🔗](#class-rigidbody2d-property-max-contacts-reported)

- void **set\_max\_contacts\_reported**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_contacts\_reported**()


The maximum number of contacts that will be recorded. Requires a value greater than 0 and [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` to start to register contacts. Use [get\_contact\_count()](#class-rigidbody2d-method-get-contact-count) to retrieve the count or [get\_colliding\_bodies()](#class-rigidbody2d-method-get-colliding-bodies) to retrieve bodies that have been collided with.

**Note:** The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end), and collisions between parallel faces will result in four contacts (one at each corner).

* * *

[PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **physics\_material\_override** [🔗](#class-rigidbody2d-property-physics-material-override)

- void **set\_physics\_material\_override**(value: [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial))

- [PhysicsMaterial](class_physicsmaterial.md#class-physicsmaterial) **get\_physics\_material\_override**()


The physics material override for the body.

If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.

* * *

[bool](class_bool.md#class-bool) **sleeping** = `false` [🔗](#class-rigidbody2d-property-sleeping)

- void **set\_sleeping**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sleeping**()


If `true`, the body will not move and will not calculate forces until woken up by another body through, for example, a collision, or by using the [apply\_impulse()](#class-rigidbody2d-method-apply-impulse) or [apply\_force()](#class-rigidbody2d-method-apply-force) methods.

* * *

## Method Descriptions

void **\_integrate\_forces**(state: [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d)) virtual [🔗](#class-rigidbody2d-private-method-integrate-forces)

Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the [custom\_integrator](#class-rigidbody2d-property-custom-integrator) property allows you to disable the standard force integration and do fully custom force integration for a body.

* * *

void **add\_constant\_central\_force**(force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-rigidbody2d-method-add-constant-central-force)

Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.

This is equivalent to using [add\_constant\_force()](#class-rigidbody2d-method-add-constant-force) at the body's center of mass.

* * *

void **add\_constant\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-rigidbody2d-method-add-constant-force)

Adds a constant positioned force to the body that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.

`position` is the offset from the body origin in global coordinates.

* * *

void **add\_constant\_torque**(torque: [float](class_float.md#class-float)) [🔗](#class-rigidbody2d-method-add-constant-torque)

Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `constant_torque = 0`.

* * *

void **apply\_central\_force**(force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-rigidbody2d-method-apply-central-force)

Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.

This is equivalent to using [apply\_force()](#class-rigidbody2d-method-apply-force) at the body's center of mass.

* * *

void **apply\_central\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-rigidbody2d-method-apply-central-impulse)

Applies a directional impulse without affecting rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

This is equivalent to using [apply\_impulse()](#class-rigidbody2d-method-apply-impulse) at the body's center of mass.

* * *

void **apply\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-rigidbody2d-method-apply-force)

Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-rigidbody2d-method-apply-impulse)

Applies a positioned impulse to the body.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_torque**(torque: [float](class_float.md#class-float)) [🔗](#class-rigidbody2d-method-apply-torque)

Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.

**Note:** [inertia](#class-rigidbody2d-property-inertia) is required for this to work. To have [inertia](#class-rigidbody2d-property-inertia), an active [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) must be a child of the node, or you can manually set [inertia](#class-rigidbody2d-property-inertia).

* * *

void **apply\_torque\_impulse**(torque: [float](class_float.md#class-float)) [🔗](#class-rigidbody2d-method-apply-torque-impulse)

Applies a rotational impulse to the body without affecting the position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

**Note:** [inertia](#class-rigidbody2d-property-inertia) is required for this to work. To have [inertia](#class-rigidbody2d-property-inertia), an active [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) must be a child of the node, or you can manually set [inertia](#class-rigidbody2d-property-inertia).

* * *

[Array](class_array.md#class-array)\[ [Node2D](class_node2d.md#class-node2d)\] **get\_colliding\_bodies**() const [🔗](#class-rigidbody2d-method-get-colliding-bodies)

Returns a list of the bodies colliding with this one. Requires [contact\_monitor](#class-rigidbody2d-property-contact-monitor) to be set to `true` and [max\_contacts\_reported](#class-rigidbody2d-property-max-contacts-reported) to be set high enough to detect all the collisions.

**Note:** The result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.

* * *

[int](class_int.md#class-int) **get\_contact\_count**() const [🔗](#class-rigidbody2d-method-get-contact-count)

Returns the number of contacts this body has with other bodies. By default, this returns 0 unless bodies are configured to monitor contacts (see [contact\_monitor](#class-rigidbody2d-property-contact-monitor)).

**Note:** To retrieve the colliding bodies, use [get\_colliding\_bodies()](#class-rigidbody2d-method-get-colliding-bodies).

* * *

void **set\_axis\_velocity**(axis\_velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-rigidbody2d-method-set-axis-velocity)

Sets the body's velocity on the given axis. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.

[Previous](class_richtextlabel.md "RichTextLabel") [Next](class_rigidbody3d.md "RigidBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_richtextlabel.md "RichTextLabel") [Next](class_rigidbody3d.md "RigidBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).