---
title: PhysicsDirectBodyState2DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectbodystate2dextension.html
crawled_at: "2026-08-13T10:20:10+12:00"
content_hash: 757c438182e4c32614e7191c0c588208bc0d0d5b44bda4f9b6ce662919071b26
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectBodyState2DExtension

* * *

# PhysicsDirectBodyState2DExtension

**Inherits:** [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) implementations.

## Description

This class extends [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d).

## Methods

|     |     |
| --- | --- |
| void | [\_add\_constant\_central\_force](#class-physicsdirectbodystate2dextension-private-method-add-constant-central-force)(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_add\_constant\_force](#class-physicsdirectbodystate2dextension-private-method-add-constant-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_add\_constant\_torque](#class-physicsdirectbodystate2dextension-private-method-add-constant-torque)(torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_apply\_central\_force](#class-physicsdirectbodystate2dextension-private-method-apply-central-force)(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_apply\_central\_impulse](#class-physicsdirectbodystate2dextension-private-method-apply-central-impulse)(impulse: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_apply\_force](#class-physicsdirectbodystate2dextension-private-method-apply-force)(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_apply\_impulse](#class-physicsdirectbodystate2dextension-private-method-apply-impulse)(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_apply\_torque](#class-physicsdirectbodystate2dextension-private-method-apply-torque)(torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_apply\_torque\_impulse](#class-physicsdirectbodystate2dextension-private-method-apply-torque-impulse)(impulse: [float](class_float.md#class-float)) virtualrequired |
| [float](class_float.md#class-float) | [\_get\_angular\_velocity](#class-physicsdirectbodystate2dextension-private-method-get-angular-velocity)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_center\_of\_mass](#class-physicsdirectbodystate2dextension-private-method-get-center-of-mass)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_center\_of\_mass\_local](#class-physicsdirectbodystate2dextension-private-method-get-center-of-mass-local)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_collision\_layer](#class-physicsdirectbodystate2dextension-private-method-get-collision-layer)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_collision\_mask](#class-physicsdirectbodystate2dextension-private-method-get-collision-mask)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_constant\_force](#class-physicsdirectbodystate2dextension-private-method-get-constant-force)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_constant\_torque](#class-physicsdirectbodystate2dextension-private-method-get-constant-torque)() virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_get\_contact\_collider](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_collider\_id](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-id)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Object](class_object.md#class-object) | [\_get\_contact\_collider\_object](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-object)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_collider\_position](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_collider\_shape](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-shape)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_collider\_velocity\_at\_position](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_count](#class-physicsdirectbodystate2dextension-private-method-get-contact-count)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_impulse](#class-physicsdirectbodystate2dextension-private-method-get-contact-impulse)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_local\_normal](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-normal)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_local\_position](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_local\_shape](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-shape)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_contact\_local\_velocity\_at\_position](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_inverse\_inertia](#class-physicsdirectbodystate2dextension-private-method-get-inverse-inertia)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_inverse\_mass](#class-physicsdirectbodystate2dextension-private-method-get-inverse-mass)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_linear\_velocity](#class-physicsdirectbodystate2dextension-private-method-get-linear-velocity)() virtualrequiredconst |
| [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) | [\_get\_space\_state](#class-physicsdirectbodystate2dextension-private-method-get-space-state)() virtualrequired |
| [float](class_float.md#class-float) | [\_get\_step](#class-physicsdirectbodystate2dextension-private-method-get-step)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_total\_angular\_damp](#class-physicsdirectbodystate2dextension-private-method-get-total-angular-damp)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_total\_gravity](#class-physicsdirectbodystate2dextension-private-method-get-total-gravity)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_total\_linear\_damp](#class-physicsdirectbodystate2dextension-private-method-get-total-linear-damp)() virtualrequiredconst |
| [Transform2D](class_transform2d.md#class-transform2d) | [\_get\_transform](#class-physicsdirectbodystate2dextension-private-method-get-transform)() virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_get\_velocity\_at\_local\_position](#class-physicsdirectbodystate2dextension-private-method-get-velocity-at-local-position)(local\_position: [Vector2](class_vector2.md#class-vector2)) virtualrequiredconst |
| void | [\_integrate\_forces](#class-physicsdirectbodystate2dextension-private-method-integrate-forces)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_is\_sleeping](#class-physicsdirectbodystate2dextension-private-method-is-sleeping)() virtualrequiredconst |
| void | [\_set\_angular\_velocity](#class-physicsdirectbodystate2dextension-private-method-set-angular-velocity)(velocity: [float](class_float.md#class-float)) virtualrequired |
| void | [\_set\_collision\_layer](#class-physicsdirectbodystate2dextension-private-method-set-collision-layer)(layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_collision\_mask](#class-physicsdirectbodystate2dextension-private-method-set-collision-mask)(mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_constant\_force](#class-physicsdirectbodystate2dextension-private-method-set-constant-force)(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_set\_constant\_torque](#class-physicsdirectbodystate2dextension-private-method-set-constant-torque)(torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_set\_linear\_velocity](#class-physicsdirectbodystate2dextension-private-method-set-linear-velocity)(velocity: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_set\_sleep\_state](#class-physicsdirectbodystate2dextension-private-method-set-sleep-state)(enabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_set\_transform](#class-physicsdirectbodystate2dextension-private-method-set-transform)(transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired |

* * *

## Method Descriptions

void **\_add\_constant\_central\_force**(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-add-constant-central-force)

Overridable version of [PhysicsDirectBodyState2D.add\_constant\_central\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-add-constant-central-force).

* * *

void **\_add\_constant\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-add-constant-force)

Overridable version of [PhysicsDirectBodyState2D.add\_constant\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-add-constant-force).

* * *

void **\_add\_constant\_torque**(torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-add-constant-torque)

Overridable version of [PhysicsDirectBodyState2D.add\_constant\_torque()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-add-constant-torque).

* * *

void **\_apply\_central\_force**(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-central-force)

Overridable version of [PhysicsDirectBodyState2D.apply\_central\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-central-force).

* * *

void **\_apply\_central\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-central-impulse)

Overridable version of [PhysicsDirectBodyState2D.apply\_central\_impulse()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-central-impulse).

* * *

void **\_apply\_force**(force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-force)

Overridable version of [PhysicsDirectBodyState2D.apply\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-force).

* * *

void **\_apply\_impulse**(impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-impulse)

Overridable version of [PhysicsDirectBodyState2D.apply\_impulse()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-impulse).

* * *

void **\_apply\_torque**(torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-torque)

Overridable version of [PhysicsDirectBodyState2D.apply\_torque()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-torque).

* * *

void **\_apply\_torque\_impulse**(impulse: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-apply-torque-impulse)

Overridable version of [PhysicsDirectBodyState2D.apply\_torque\_impulse()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-apply-torque-impulse).

* * *

[float](class_float.md#class-float) **\_get\_angular\_velocity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-angular-velocity)

Implement to override the behavior of [PhysicsDirectBodyState2D.angular\_velocity](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-angular-velocity) and its respective getter.

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_center\_of\_mass**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-center-of-mass)

Implement to override the behavior of [PhysicsDirectBodyState2D.center\_of\_mass](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-center-of-mass) and its respective getter.

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_center\_of\_mass\_local**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-center-of-mass-local)

Implement to override the behavior of [PhysicsDirectBodyState2D.center\_of\_mass\_local](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-center-of-mass-local) and its respective getter.

* * *

[int](class_int.md#class-int) **\_get\_collision\_layer**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_collision\_mask**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_constant\_force**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-constant-force)

Overridable version of [PhysicsDirectBodyState2D.get\_constant\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-constant-force).

* * *

[float](class_float.md#class-float) **\_get\_constant\_torque**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-constant-torque)

Overridable version of [PhysicsDirectBodyState2D.get\_constant\_torque()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-constant-torque).

* * *

[RID](class_rid.md#class-rid) **\_get\_contact\_collider**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider).

* * *

[int](class_int.md#class-int) **\_get\_contact\_collider\_id**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-id)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider\_id()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider-id).

* * *

[Object](class_object.md#class-object) **\_get\_contact\_collider\_object**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-object)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider\_object()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider-object).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_collider\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-position)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider\_position()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider-position).

* * *

[int](class_int.md#class-int) **\_get\_contact\_collider\_shape**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-shape)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider\_shape()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider-shape).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_collider\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-collider-velocity-at-position)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_collider\_velocity\_at\_position()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-collider-velocity-at-position).

* * *

[int](class_int.md#class-int) **\_get\_contact\_count**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-count)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_count()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-count).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_impulse**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-impulse)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_impulse()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-impulse).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_local\_normal**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-normal)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_local\_normal()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-local-normal).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_local\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-position)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_local\_position()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-local-position).

* * *

[int](class_int.md#class-int) **\_get\_contact\_local\_shape**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-shape)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_local\_shape()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-local-shape).

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_contact\_local\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-contact-local-velocity-at-position)

Overridable version of [PhysicsDirectBodyState2D.get\_contact\_local\_velocity\_at\_position()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-contact-local-velocity-at-position).

* * *

[float](class_float.md#class-float) **\_get\_inverse\_inertia**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-inverse-inertia)

Implement to override the behavior of [PhysicsDirectBodyState2D.inverse\_inertia](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-inverse-inertia) and its respective getter.

* * *

[float](class_float.md#class-float) **\_get\_inverse\_mass**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-inverse-mass)

Implement to override the behavior of [PhysicsDirectBodyState2D.inverse\_mass](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-inverse-mass) and its respective getter.

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_linear\_velocity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-linear-velocity)

Implement to override the behavior of [PhysicsDirectBodyState2D.linear\_velocity](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-linear-velocity) and its respective getter.

* * *

[PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **\_get\_space\_state**() virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-get-space-state)

Overridable version of [PhysicsDirectBodyState2D.get\_space\_state()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-space-state).

* * *

[float](class_float.md#class-float) **\_get\_step**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-step)

Implement to override the behavior of [PhysicsDirectBodyState2D.step](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-step) and its respective getter.

* * *

[float](class_float.md#class-float) **\_get\_total\_angular\_damp**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-total-angular-damp)

Implement to override the behavior of [PhysicsDirectBodyState2D.total\_angular\_damp](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-total-angular-damp) and its respective getter.

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_total\_gravity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-total-gravity)

Implement to override the behavior of [PhysicsDirectBodyState2D.total\_gravity](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-total-gravity) and its respective getter.

* * *

[float](class_float.md#class-float) **\_get\_total\_linear\_damp**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-total-linear-damp)

Implement to override the behavior of [PhysicsDirectBodyState2D.total\_linear\_damp](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-total-linear-damp) and its respective getter.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **\_get\_transform**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-transform)

Implement to override the behavior of [PhysicsDirectBodyState2D.transform](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-transform) and its respective getter.

* * *

[Vector2](class_vector2.md#class-vector2) **\_get\_velocity\_at\_local\_position**(local\_position: [Vector2](class_vector2.md#class-vector2)) virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-get-velocity-at-local-position)

Overridable version of [PhysicsDirectBodyState2D.get\_velocity\_at\_local\_position()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-get-velocity-at-local-position).

* * *

void **\_integrate\_forces**() virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-integrate-forces)

Overridable version of [PhysicsDirectBodyState2D.integrate\_forces()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-integrate-forces).

* * *

[bool](class_bool.md#class-bool) **\_is\_sleeping**() virtualrequiredconst [🔗](#class-physicsdirectbodystate2dextension-private-method-is-sleeping)

Implement to override the behavior of [PhysicsDirectBodyState2D.sleeping](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-sleeping) and its respective getter.

* * *

void **\_set\_angular\_velocity**(velocity: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-angular-velocity)

Implement to override the behavior of [PhysicsDirectBodyState2D.angular\_velocity](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-angular-velocity) and its respective setter.

* * *

void **\_set\_collision\_layer**(layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_collision\_mask**(mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_constant\_force**(force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-constant-force)

Overridable version of [PhysicsDirectBodyState2D.set\_constant\_force()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-set-constant-force).

* * *

void **\_set\_constant\_torque**(torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-constant-torque)

Overridable version of [PhysicsDirectBodyState2D.set\_constant\_torque()](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-method-set-constant-torque).

* * *

void **\_set\_linear\_velocity**(velocity: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-linear-velocity)

Implement to override the behavior of [PhysicsDirectBodyState2D.linear\_velocity](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-linear-velocity) and its respective setter.

* * *

void **\_set\_sleep\_state**(enabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-sleep-state)

Implement to override the behavior of [PhysicsDirectBodyState2D.sleeping](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-sleeping) and its respective setter.

* * *

void **\_set\_transform**(transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired [🔗](#class-physicsdirectbodystate2dextension-private-method-set-transform)

Implement to override the behavior of [PhysicsDirectBodyState2D.transform](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d-property-transform) and its respective setter.

[Previous](class_physicsdirectbodystate2d.md "PhysicsDirectBodyState2D") [Next](class_physicsdirectbodystate3d.md "PhysicsDirectBodyState3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectbodystate2d.md "PhysicsDirectBodyState2D") [Next](class_physicsdirectbodystate3d.md "PhysicsDirectBodyState3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).