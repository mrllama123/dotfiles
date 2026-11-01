---
title: PhysicsDirectBodyState2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectbodystate2d.html
crawled_at: "2026-08-13T10:40:09+12:00"
content_hash: 31c00d2f6dd50d8c01290b4f89b493fed91ce4eb910ba74b7614e3b7305a770a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectBodyState2D

* * *

# PhysicsDirectBodyState2D

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [PhysicsDirectBodyState2DExtension](class_physicsdirectbodystate2dextension.md#class-physicsdirectbodystate2dextension)

Provides direct access to a physics body in the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

## Description

Provides direct access to a physics body in the [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d), allowing safe changes to physics properties. This object is passed via the direct state callback of [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d), and is intended for changing the direct state of that body. See [RigidBody2D.\_integrate\_forces()](class_rigidbody2d.md#class-rigidbody2d-private-method-integrate-forces).

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Properties

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [angular\_velocity](#class-physicsdirectbodystate2d-property-angular-velocity) |
| [Vector2](class_vector2.md#class-vector2) | [center\_of\_mass](#class-physicsdirectbodystate2d-property-center-of-mass) |
| [Vector2](class_vector2.md#class-vector2) | [center\_of\_mass\_local](#class-physicsdirectbodystate2d-property-center-of-mass-local) |
| [int](class_int.md#class-int) | [collision\_layer](#class-physicsdirectbodystate2d-property-collision-layer) |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsdirectbodystate2d-property-collision-mask) |
| [float](class_float.md#class-float) | [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia) |
| [float](class_float.md#class-float) | [inverse\_mass](#class-physicsdirectbodystate2d-property-inverse-mass) |
| [Vector2](class_vector2.md#class-vector2) | [linear\_velocity](#class-physicsdirectbodystate2d-property-linear-velocity) |
| [bool](class_bool.md#class-bool) | [sleeping](#class-physicsdirectbodystate2d-property-sleeping) |
| [float](class_float.md#class-float) | [step](#class-physicsdirectbodystate2d-property-step) |
| [float](class_float.md#class-float) | [total\_angular\_damp](#class-physicsdirectbodystate2d-property-total-angular-damp) |
| [Vector2](class_vector2.md#class-vector2) | [total\_gravity](#class-physicsdirectbodystate2d-property-total-gravity) |
| [float](class_float.md#class-float) | [total\_linear\_damp](#class-physicsdirectbodystate2d-property-total-linear-damp) |
| [Transform2D](class_transform2d.md#class-transform2d) | [transform](#class-physicsdirectbodystate2d-property-transform) |

## Methods

|     |     |
| --- | --- |
| void | [add\_constant\_central\_force](#class-physicsdirectbodystate2d-method-add-constant-central-force)(force: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [add\_constant\_force](#class-physicsdirectbodystate2d-method-add-constant-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [add\_constant\_torque](#class-physicsdirectbodystate2d-method-add-constant-torque)(torque: [float](class_float.md#class-float)) |
| void | [apply\_central\_force](#class-physicsdirectbodystate2d-method-apply-central-force)(force: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_central\_impulse](#class-physicsdirectbodystate2d-method-apply-central-impulse)(impulse: [Vector2](class_vector2.md#class-vector2)) |
| void | [apply\_force](#class-physicsdirectbodystate2d-method-apply-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_impulse](#class-physicsdirectbodystate2d-method-apply-impulse)(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [apply\_torque](#class-physicsdirectbodystate2d-method-apply-torque)(torque: [float](class_float.md#class-float)) |
| void | [apply\_torque\_impulse](#class-physicsdirectbodystate2d-method-apply-torque-impulse)(impulse: [float](class_float.md#class-float)) |
| [Vector2](class_vector2.md#class-vector2) | [get\_constant\_force](#class-physicsdirectbodystate2d-method-get-constant-force)() const |
| [float](class_float.md#class-float) | [get\_constant\_torque](#class-physicsdirectbodystate2d-method-get-constant-torque)() const |
| [RID](class_rid.md#class-rid) | [get\_contact\_collider](#class-physicsdirectbodystate2d-method-get-contact-collider)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_collider\_id](#class-physicsdirectbodystate2d-method-get-contact-collider-id)(contact\_idx: [int](class_int.md#class-int)) const |
| [Object](class_object.md#class-object) | [get\_contact\_collider\_object](#class-physicsdirectbodystate2d-method-get-contact-collider-object)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_collider\_position](#class-physicsdirectbodystate2d-method-get-contact-collider-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_collider\_shape](#class-physicsdirectbodystate2d-method-get-contact-collider-shape)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_collider\_velocity\_at\_position](#class-physicsdirectbodystate2d-method-get-contact-collider-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_count](#class-physicsdirectbodystate2d-method-get-contact-count)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_impulse](#class-physicsdirectbodystate2d-method-get-contact-impulse)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_local\_normal](#class-physicsdirectbodystate2d-method-get-contact-local-normal)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_local\_position](#class-physicsdirectbodystate2d-method-get-contact-local-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_local\_shape](#class-physicsdirectbodystate2d-method-get-contact-local-shape)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_contact\_local\_velocity\_at\_position](#class-physicsdirectbodystate2d-method-get-contact-local-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) | [get\_space\_state](#class-physicsdirectbodystate2d-method-get-space-state)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_velocity\_at\_local\_position](#class-physicsdirectbodystate2d-method-get-velocity-at-local-position)(local\_position: [Vector2](class_vector2.md#class-vector2)) const |
| void | [integrate\_forces](#class-physicsdirectbodystate2d-method-integrate-forces)() |
| void | [set\_constant\_force](#class-physicsdirectbodystate2d-method-set-constant-force)(force: [Vector2](class_vector2.md#class-vector2)) |
| void | [set\_constant\_torque](#class-physicsdirectbodystate2d-method-set-constant-torque)(torque: [float](class_float.md#class-float)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **angular\_velocity** [🔗](#class-physicsdirectbodystate2d-property-angular-velocity)

- void **set\_angular\_velocity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_angular\_velocity**()


The body's rotational velocity in _radians_ per second.

* * *

[Vector2](class_vector2.md#class-vector2) **center\_of\_mass** [🔗](#class-physicsdirectbodystate2d-property-center-of-mass)

- [Vector2](class_vector2.md#class-vector2) **get\_center\_of\_mass**()


The body's center of mass position relative to the body's center in the global coordinate system.

* * *

[Vector2](class_vector2.md#class-vector2) **center\_of\_mass\_local** [🔗](#class-physicsdirectbodystate2d-property-center-of-mass-local)

- [Vector2](class_vector2.md#class-vector2) **get\_center\_of\_mass\_local**()


The body's center of mass position in the body's local coordinate system.

* * *

[int](class_int.md#class-int) **collision\_layer** [🔗](#class-physicsdirectbodystate2d-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The body's collision layer.

* * *

[int](class_int.md#class-int) **collision\_mask** [🔗](#class-physicsdirectbodystate2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The body's collision mask.

* * *

[float](class_float.md#class-float) **inverse\_inertia** [🔗](#class-physicsdirectbodystate2d-property-inverse-inertia)

- [float](class_float.md#class-float) **get\_inverse\_inertia**()


The inverse of the inertia of the body.

* * *

[float](class_float.md#class-float) **inverse\_mass** [🔗](#class-physicsdirectbodystate2d-property-inverse-mass)

- [float](class_float.md#class-float) **get\_inverse\_mass**()


The inverse of the mass of the body.

* * *

[Vector2](class_vector2.md#class-vector2) **linear\_velocity** [🔗](#class-physicsdirectbodystate2d-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_linear\_velocity**()


The body's linear velocity in pixels per second.

* * *

[bool](class_bool.md#class-bool) **sleeping** [🔗](#class-physicsdirectbodystate2d-property-sleeping)

- void **set\_sleep\_state**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sleeping**()


If `true`, this body is currently sleeping (not active).

* * *

[float](class_float.md#class-float) **step** [🔗](#class-physicsdirectbodystate2d-property-step)

- [float](class_float.md#class-float) **get\_step**()


The timestep (delta) used for the simulation.

* * *

[float](class_float.md#class-float) **total\_angular\_damp** [🔗](#class-physicsdirectbodystate2d-property-total-angular-damp)

- [float](class_float.md#class-float) **get\_total\_angular\_damp**()


The rate at which the body stops rotating, if there are not any other forces moving it.

* * *

[Vector2](class_vector2.md#class-vector2) **total\_gravity** [🔗](#class-physicsdirectbodystate2d-property-total-gravity)

- [Vector2](class_vector2.md#class-vector2) **get\_total\_gravity**()


The total gravity vector being currently applied to this body.

* * *

[float](class_float.md#class-float) **total\_linear\_damp** [🔗](#class-physicsdirectbodystate2d-property-total-linear-damp)

- [float](class_float.md#class-float) **get\_total\_linear\_damp**()


The rate at which the body stops moving, if there are not any other forces moving it.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **transform** [🔗](#class-physicsdirectbodystate2d-property-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The body's transformation matrix.

* * *

## Method Descriptions

void **add\_constant\_central\_force**(force: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsdirectbodystate2d-method-add-constant-central-force)

Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.

This is equivalent to using [add\_constant\_force()](#class-physicsdirectbodystate2d-method-add-constant-force) at the body's center of mass.

* * *

void **add\_constant\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsdirectbodystate2d-method-add-constant-force)

Adds a constant positioned force to the body that keeps being applied over time until cleared with `constant_force = Vector2(0, 0)`.

`position` is the offset from the body origin in global coordinates.

* * *

void **add\_constant\_torque**(torque: [float](class_float.md#class-float)) [🔗](#class-physicsdirectbodystate2d-method-add-constant-torque)

Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `constant_torque = 0`.

* * *

void **apply\_central\_force**(force: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsdirectbodystate2d-method-apply-central-force)

Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.

This is equivalent to using [apply\_force()](#class-physicsdirectbodystate2d-method-apply-force) at the body's center of mass.

* * *

void **apply\_central\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsdirectbodystate2d-method-apply-central-impulse)

Applies a directional impulse without affecting rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

This is equivalent to using [apply\_impulse()](#class-physicsdirectbodystate2d-method-apply-impulse) at the body's center of mass.

* * *

void **apply\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsdirectbodystate2d-method-apply-force)

Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsdirectbodystate2d-method-apply-impulse)

Applies a positioned impulse to the body.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_torque**(torque: [float](class_float.md#class-float)) [🔗](#class-physicsdirectbodystate2d-method-apply-torque)

Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.

**Note:** [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia) is required for this to work. To have [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia), an active [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) must be a child of the node, or you can manually set [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia).

* * *

void **apply\_torque\_impulse**(impulse: [float](class_float.md#class-float)) [🔗](#class-physicsdirectbodystate2d-method-apply-torque-impulse)

Applies a rotational impulse to the body without affecting the position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

**Note:** [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia) is required for this to work. To have [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia), an active [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d) must be a child of the node, or you can manually set [inverse\_inertia](#class-physicsdirectbodystate2d-property-inverse-inertia).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_constant\_force**() const [🔗](#class-physicsdirectbodystate2d-method-get-constant-force)

Returns the body's total constant positional forces applied during each physics update.

See [add\_constant\_force()](#class-physicsdirectbodystate2d-method-add-constant-force) and [add\_constant\_central\_force()](#class-physicsdirectbodystate2d-method-add-constant-central-force).

* * *

[float](class_float.md#class-float) **get\_constant\_torque**() const [🔗](#class-physicsdirectbodystate2d-method-get-constant-torque)

Returns the body's total constant rotational forces applied during each physics update.

See [add\_constant\_torque()](#class-physicsdirectbodystate2d-method-add-constant-torque).

* * *

[RID](class_rid.md#class-rid) **get\_contact\_collider**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider)

Returns the collider's [RID](class_rid.md#class-rid).

* * *

[int](class_int.md#class-int) **get\_contact\_collider\_id**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider-id)

Returns the collider's object id.

* * *

[Object](class_object.md#class-object) **get\_contact\_collider\_object**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider-object)

Returns the collider object. This depends on how it was created (will return a scene node if such was used to create it).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_collider\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider-position)

Returns the position of the contact point on the collider in the global coordinate system.

* * *

[int](class_int.md#class-int) **get\_contact\_collider\_shape**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider-shape)

Returns the collider's shape index.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_collider\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-collider-velocity-at-position)

Returns the velocity vector at the collider's contact point.

* * *

[int](class_int.md#class-int) **get\_contact\_count**() const [🔗](#class-physicsdirectbodystate2d-method-get-contact-count)

Returns the number of contacts this body has with other bodies.

**Note:** By default, this returns 0 unless bodies are configured to monitor contacts. See [RigidBody2D.contact\_monitor](class_rigidbody2d.md#class-rigidbody2d-property-contact-monitor).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_impulse**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-impulse)

Returns the impulse created by the contact.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_local\_normal**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-local-normal)

Returns the local normal at the contact point.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_local\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-local-position)

Returns the position of the contact point on the body in the global coordinate system.

* * *

[int](class_int.md#class-int) **get\_contact\_local\_shape**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-local-shape)

Returns the local shape index of the collision.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_contact\_local\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate2d-method-get-contact-local-velocity-at-position)

Returns the velocity vector at the body's contact point.

* * *

[PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **get\_space\_state**() [🔗](#class-physicsdirectbodystate2d-method-get-space-state)

Returns the current state of the space, useful for queries.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_velocity\_at\_local\_position**(local\_position: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-physicsdirectbodystate2d-method-get-velocity-at-local-position)

Returns the body's velocity at the given relative position, including both translation and rotation.

* * *

void **integrate\_forces**() [🔗](#class-physicsdirectbodystate2d-method-integrate-forces)

Updates the body's linear and angular velocity by applying gravity and damping for the equivalent of one physics tick.

* * *

void **set\_constant\_force**(force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsdirectbodystate2d-method-set-constant-force)

Sets the body's total constant positional forces applied during each physics update.

See [add\_constant\_force()](#class-physicsdirectbodystate2d-method-add-constant-force) and [add\_constant\_central\_force()](#class-physicsdirectbodystate2d-method-add-constant-central-force).

* * *

void **set\_constant\_torque**(torque: [float](class_float.md#class-float)) [🔗](#class-physicsdirectbodystate2d-method-set-constant-torque)

Sets the body's total constant rotational forces applied during each physics update.

See [add\_constant\_torque()](#class-physicsdirectbodystate2d-method-add-constant-torque).

[Previous](class_performance.md "Performance") [Next](class_physicsdirectbodystate2dextension.md "PhysicsDirectBodyState2DExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_performance.md "Performance") [Next](class_physicsdirectbodystate2dextension.md "PhysicsDirectBodyState2DExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).