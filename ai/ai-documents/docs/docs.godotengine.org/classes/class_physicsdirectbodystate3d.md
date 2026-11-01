---
title: PhysicsDirectBodyState3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectbodystate3d.html
crawled_at: "2026-08-13T10:20:16+12:00"
content_hash: a345ae93e976ffee642f38ca738335b2e7fb0ea73830f67ec2d75ddb228576bd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectBodyState3D

* * *

# PhysicsDirectBodyState3D

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [PhysicsDirectBodyState3DExtension](class_physicsdirectbodystate3dextension.md#class-physicsdirectbodystate3dextension)

Provides direct access to a physics body in the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

## Description

Provides direct access to a physics body in the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d), allowing safe changes to physics properties. This object is passed via the direct state callback of [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d), and is intended for changing the direct state of that body. See [RigidBody3D.\_integrate\_forces()](class_rigidbody3d.md#class-rigidbody3d-private-method-integrate-forces).

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Ray-casting](../tutorials/physics/ray-casting.md)


## Properties

|     |     |
| --- | --- |
| [Vector3](class_vector3.md#class-vector3) | [angular\_velocity](#class-physicsdirectbodystate3d-property-angular-velocity) |
| [Vector3](class_vector3.md#class-vector3) | [center\_of\_mass](#class-physicsdirectbodystate3d-property-center-of-mass) |
| [Vector3](class_vector3.md#class-vector3) | [center\_of\_mass\_local](#class-physicsdirectbodystate3d-property-center-of-mass-local) |
| [int](class_int.md#class-int) | [collision\_layer](#class-physicsdirectbodystate3d-property-collision-layer) |
| [int](class_int.md#class-int) | [collision\_mask](#class-physicsdirectbodystate3d-property-collision-mask) |
| [Vector3](class_vector3.md#class-vector3) | [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia) |
| [Basis](class_basis.md#class-basis) | [inverse\_inertia\_tensor](#class-physicsdirectbodystate3d-property-inverse-inertia-tensor) |
| [float](class_float.md#class-float) | [inverse\_mass](#class-physicsdirectbodystate3d-property-inverse-mass) |
| [Vector3](class_vector3.md#class-vector3) | [linear\_velocity](#class-physicsdirectbodystate3d-property-linear-velocity) |
| [Basis](class_basis.md#class-basis) | [principal\_inertia\_axes](#class-physicsdirectbodystate3d-property-principal-inertia-axes) |
| [bool](class_bool.md#class-bool) | [sleeping](#class-physicsdirectbodystate3d-property-sleeping) |
| [float](class_float.md#class-float) | [step](#class-physicsdirectbodystate3d-property-step) |
| [float](class_float.md#class-float) | [total\_angular\_damp](#class-physicsdirectbodystate3d-property-total-angular-damp) |
| [Vector3](class_vector3.md#class-vector3) | [total\_gravity](#class-physicsdirectbodystate3d-property-total-gravity) |
| [float](class_float.md#class-float) | [total\_linear\_damp](#class-physicsdirectbodystate3d-property-total-linear-damp) |
| [Transform3D](class_transform3d.md#class-transform3d) | [transform](#class-physicsdirectbodystate3d-property-transform) |

## Methods

|     |     |
| --- | --- |
| void | [add\_constant\_central\_force](#class-physicsdirectbodystate3d-method-add-constant-central-force)(force: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [add\_constant\_force](#class-physicsdirectbodystate3d-method-add-constant-force)(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [add\_constant\_torque](#class-physicsdirectbodystate3d-method-add-constant-torque)(torque: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_central\_force](#class-physicsdirectbodystate3d-method-apply-central-force)(force: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [apply\_central\_impulse](#class-physicsdirectbodystate3d-method-apply-central-impulse)(impulse: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [apply\_force](#class-physicsdirectbodystate3d-method-apply-force)(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [apply\_impulse](#class-physicsdirectbodystate3d-method-apply-impulse)(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [apply\_torque](#class-physicsdirectbodystate3d-method-apply-torque)(torque: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_torque\_impulse](#class-physicsdirectbodystate3d-method-apply-torque-impulse)(impulse: [Vector3](class_vector3.md#class-vector3)) |
| [Vector3](class_vector3.md#class-vector3) | [get\_constant\_force](#class-physicsdirectbodystate3d-method-get-constant-force)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_constant\_torque](#class-physicsdirectbodystate3d-method-get-constant-torque)() const |
| [RID](class_rid.md#class-rid) | [get\_contact\_collider](#class-physicsdirectbodystate3d-method-get-contact-collider)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_collider\_id](#class-physicsdirectbodystate3d-method-get-contact-collider-id)(contact\_idx: [int](class_int.md#class-int)) const |
| [Object](class_object.md#class-object) | [get\_contact\_collider\_object](#class-physicsdirectbodystate3d-method-get-contact-collider-object)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_collider\_position](#class-physicsdirectbodystate3d-method-get-contact-collider-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_collider\_shape](#class-physicsdirectbodystate3d-method-get-contact-collider-shape)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_collider\_velocity\_at\_position](#class-physicsdirectbodystate3d-method-get-contact-collider-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_count](#class-physicsdirectbodystate3d-method-get-contact-count)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_impulse](#class-physicsdirectbodystate3d-method-get-contact-impulse)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_local\_normal](#class-physicsdirectbodystate3d-method-get-contact-local-normal)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_local\_position](#class-physicsdirectbodystate3d-method-get-contact-local-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_contact\_local\_shape](#class-physicsdirectbodystate3d-method-get-contact-local-shape)(contact\_idx: [int](class_int.md#class-int)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_local\_velocity\_at\_position](#class-physicsdirectbodystate3d-method-get-contact-local-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) const |
| [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) | [get\_space\_state](#class-physicsdirectbodystate3d-method-get-space-state)() |
| [Vector3](class_vector3.md#class-vector3) | [get\_velocity\_at\_local\_position](#class-physicsdirectbodystate3d-method-get-velocity-at-local-position)(local\_position: [Vector3](class_vector3.md#class-vector3)) const |
| void | [integrate\_forces](#class-physicsdirectbodystate3d-method-integrate-forces)() |
| void | [set\_constant\_force](#class-physicsdirectbodystate3d-method-set-constant-force)(force: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_constant\_torque](#class-physicsdirectbodystate3d-method-set-constant-torque)(torque: [Vector3](class_vector3.md#class-vector3)) |

* * *

## Property Descriptions

[Vector3](class_vector3.md#class-vector3) **angular\_velocity** [🔗](#class-physicsdirectbodystate3d-property-angular-velocity)

- void **set\_angular\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_angular\_velocity**()


The body's rotational velocity in _radians_ per second.

* * *

[Vector3](class_vector3.md#class-vector3) **center\_of\_mass** [🔗](#class-physicsdirectbodystate3d-property-center-of-mass)

- [Vector3](class_vector3.md#class-vector3) **get\_center\_of\_mass**()


The body's center of mass position relative to the body's center in the global coordinate system.

* * *

[Vector3](class_vector3.md#class-vector3) **center\_of\_mass\_local** [🔗](#class-physicsdirectbodystate3d-property-center-of-mass-local)

- [Vector3](class_vector3.md#class-vector3) **get\_center\_of\_mass\_local**()


The body's center of mass position in the body's local coordinate system.

* * *

[int](class_int.md#class-int) **collision\_layer** [🔗](#class-physicsdirectbodystate3d-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The body's collision layer.

* * *

[int](class_int.md#class-int) **collision\_mask** [🔗](#class-physicsdirectbodystate3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The body's collision mask.

* * *

[Vector3](class_vector3.md#class-vector3) **inverse\_inertia** [🔗](#class-physicsdirectbodystate3d-property-inverse-inertia)

- [Vector3](class_vector3.md#class-vector3) **get\_inverse\_inertia**()


The inverse of the inertia of the body.

* * *

[Basis](class_basis.md#class-basis) **inverse\_inertia\_tensor** [🔗](#class-physicsdirectbodystate3d-property-inverse-inertia-tensor)

- [Basis](class_basis.md#class-basis) **get\_inverse\_inertia\_tensor**()


The inverse of the inertia tensor of the body.

* * *

[float](class_float.md#class-float) **inverse\_mass** [🔗](#class-physicsdirectbodystate3d-property-inverse-mass)

- [float](class_float.md#class-float) **get\_inverse\_mass**()


The inverse of the mass of the body.

* * *

[Vector3](class_vector3.md#class-vector3) **linear\_velocity** [🔗](#class-physicsdirectbodystate3d-property-linear-velocity)

- void **set\_linear\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_linear\_velocity**()


The body's linear velocity in units per second.

* * *

[Basis](class_basis.md#class-basis) **principal\_inertia\_axes** [🔗](#class-physicsdirectbodystate3d-property-principal-inertia-axes)

- [Basis](class_basis.md#class-basis) **get\_principal\_inertia\_axes**()


There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **sleeping** [🔗](#class-physicsdirectbodystate3d-property-sleeping)

- void **set\_sleep\_state**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_sleeping**()


If `true`, this body is currently sleeping (not active).

* * *

[float](class_float.md#class-float) **step** [🔗](#class-physicsdirectbodystate3d-property-step)

- [float](class_float.md#class-float) **get\_step**()


The timestep (delta) used for the simulation.

* * *

[float](class_float.md#class-float) **total\_angular\_damp** [🔗](#class-physicsdirectbodystate3d-property-total-angular-damp)

- [float](class_float.md#class-float) **get\_total\_angular\_damp**()


The rate at which the body stops rotating, if there are not any other forces moving it.

* * *

[Vector3](class_vector3.md#class-vector3) **total\_gravity** [🔗](#class-physicsdirectbodystate3d-property-total-gravity)

- [Vector3](class_vector3.md#class-vector3) **get\_total\_gravity**()


The total gravity vector being currently applied to this body.

* * *

[float](class_float.md#class-float) **total\_linear\_damp** [🔗](#class-physicsdirectbodystate3d-property-total-linear-damp)

- [float](class_float.md#class-float) **get\_total\_linear\_damp**()


The rate at which the body stops moving, if there are not any other forces moving it.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **transform** [🔗](#class-physicsdirectbodystate3d-property-transform)

- void **set\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_transform**()


The body's transformation matrix.

* * *

## Method Descriptions

void **add\_constant\_central\_force**(force: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-add-constant-central-force)

Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `constant_force = Vector3(0, 0, 0)`.

This is equivalent to using [add\_constant\_force()](#class-physicsdirectbodystate3d-method-add-constant-force) at the body's center of mass.

* * *

void **add\_constant\_force**(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-add-constant-force)

Adds a constant positioned force to the body that keeps being applied over time until cleared with `constant_force = Vector3(0, 0, 0)`.

`position` is the offset from the body origin in global coordinates.

* * *

void **add\_constant\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsdirectbodystate3d-method-add-constant-torque)

Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `constant_torque = Vector3(0, 0, 0)`.

* * *

void **apply\_central\_force**(force: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-apply-central-force)

Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.

This is equivalent to using [apply\_force()](#class-physicsdirectbodystate3d-method-apply-force) at the body's center of mass.

* * *

void **apply\_central\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-apply-central-impulse)

Applies a directional impulse without affecting rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

This is equivalent to using [apply\_impulse()](#class-physicsdirectbodystate3d-method-apply-impulse) at the body's center of mass.

* * *

void **apply\_force**(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-apply-force)

Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsdirectbodystate3d-method-apply-impulse)

Applies a positioned impulse to the body.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

`position` is the offset from the body origin in global coordinates.

* * *

void **apply\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsdirectbodystate3d-method-apply-torque)

Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.

**Note:** [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia) is required for this to work. To have [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia), an active [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) must be a child of the node, or you can manually set [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia).

* * *

void **apply\_torque\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsdirectbodystate3d-method-apply-torque-impulse)

Applies a rotational impulse to the body without affecting the position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

**Note:** [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia) is required for this to work. To have [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia), an active [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) must be a child of the node, or you can manually set [inverse\_inertia](#class-physicsdirectbodystate3d-property-inverse-inertia).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_constant\_force**() const [🔗](#class-physicsdirectbodystate3d-method-get-constant-force)

Returns the body's total constant positional forces applied during each physics update.

See [add\_constant\_force()](#class-physicsdirectbodystate3d-method-add-constant-force) and [add\_constant\_central\_force()](#class-physicsdirectbodystate3d-method-add-constant-central-force).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_constant\_torque**() const [🔗](#class-physicsdirectbodystate3d-method-get-constant-torque)

Returns the body's total constant rotational forces applied during each physics update.

See [add\_constant\_torque()](#class-physicsdirectbodystate3d-method-add-constant-torque).

* * *

[RID](class_rid.md#class-rid) **get\_contact\_collider**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider)

Returns the collider's [RID](class_rid.md#class-rid).

* * *

[int](class_int.md#class-int) **get\_contact\_collider\_id**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider-id)

Returns the collider's object id.

* * *

[Object](class_object.md#class-object) **get\_contact\_collider\_object**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider-object)

Returns the collider object.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_collider\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider-position)

Returns the position of the contact point on the collider in the global coordinate system.

* * *

[int](class_int.md#class-int) **get\_contact\_collider\_shape**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider-shape)

Returns the collider's shape index.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_collider\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-collider-velocity-at-position)

Returns the linear velocity vector at the collider's contact point.

* * *

[int](class_int.md#class-int) **get\_contact\_count**() const [🔗](#class-physicsdirectbodystate3d-method-get-contact-count)

Returns the number of contacts this body has with other bodies.

**Note:** By default, this returns 0 unless bodies are configured to monitor contacts. See [RigidBody3D.contact\_monitor](class_rigidbody3d.md#class-rigidbody3d-property-contact-monitor).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_impulse**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-impulse)

Impulse created by the contact.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_local\_normal**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-local-normal)

Returns the local normal at the contact point.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_local\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-local-position)

Returns the position of the contact point on the body in the global coordinate system.

* * *

[int](class_int.md#class-int) **get\_contact\_local\_shape**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-local-shape)

Returns the local shape index of the collision.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_local\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsdirectbodystate3d-method-get-contact-local-velocity-at-position)

Returns the linear velocity vector at the body's contact point.

* * *

[PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **get\_space\_state**() [🔗](#class-physicsdirectbodystate3d-method-get-space-state)

Returns the current state of the space, useful for queries.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_velocity\_at\_local\_position**(local\_position: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-physicsdirectbodystate3d-method-get-velocity-at-local-position)

Returns the body's velocity at the given relative position, including both translation and rotation.

* * *

void **integrate\_forces**() [🔗](#class-physicsdirectbodystate3d-method-integrate-forces)

Updates the body's linear and angular velocity by applying gravity and damping for the equivalent of one physics tick.

* * *

void **set\_constant\_force**(force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsdirectbodystate3d-method-set-constant-force)

Sets the body's total constant positional forces applied during each physics update.

See [add\_constant\_force()](#class-physicsdirectbodystate3d-method-add-constant-force) and [add\_constant\_central\_force()](#class-physicsdirectbodystate3d-method-add-constant-central-force).

* * *

void **set\_constant\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsdirectbodystate3d-method-set-constant-torque)

Sets the body's total constant rotational forces applied during each physics update.

See [add\_constant\_torque()](#class-physicsdirectbodystate3d-method-add-constant-torque).

[Previous](class_physicsdirectbodystate2dextension.md "PhysicsDirectBodyState2DExtension") [Next](class_physicsdirectbodystate3dextension.md "PhysicsDirectBodyState3DExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectbodystate2dextension.md "PhysicsDirectBodyState2DExtension") [Next](class_physicsdirectbodystate3dextension.md "PhysicsDirectBodyState3DExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).