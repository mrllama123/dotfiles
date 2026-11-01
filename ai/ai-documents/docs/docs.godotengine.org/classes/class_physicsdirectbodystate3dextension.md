---
title: PhysicsDirectBodyState3DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsdirectbodystate3dextension.html
crawled_at: "2026-08-13T10:19:30+12:00"
content_hash: 9b156dc264e4f2821cd7be49e9ea751e2a9a05dd1649dedf9d9e9330d5c87a7a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsDirectBodyState3DExtension

* * *

# PhysicsDirectBodyState3DExtension

**Inherits:** [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) implementations.

## Description

This class extends [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d).

## Methods

|     |     |
| --- | --- |
| void | [\_add\_constant\_central\_force](#class-physicsdirectbodystate3dextension-private-method-add-constant-central-force)(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_add\_constant\_force](#class-physicsdirectbodystate3dextension-private-method-add-constant-force)(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_add\_constant\_torque](#class-physicsdirectbodystate3dextension-private-method-add-constant-torque)(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_central\_force](#class-physicsdirectbodystate3dextension-private-method-apply-central-force)(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_central\_impulse](#class-physicsdirectbodystate3dextension-private-method-apply-central-impulse)(impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_force](#class-physicsdirectbodystate3dextension-private-method-apply-force)(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_impulse](#class-physicsdirectbodystate3dextension-private-method-apply-impulse)(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_torque](#class-physicsdirectbodystate3dextension-private-method-apply-torque)(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_apply\_torque\_impulse](#class-physicsdirectbodystate3dextension-private-method-apply-torque-impulse)(impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_angular\_velocity](#class-physicsdirectbodystate3dextension-private-method-get-angular-velocity)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_center\_of\_mass](#class-physicsdirectbodystate3dextension-private-method-get-center-of-mass)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_center\_of\_mass\_local](#class-physicsdirectbodystate3dextension-private-method-get-center-of-mass-local)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_collision\_layer](#class-physicsdirectbodystate3dextension-private-method-get-collision-layer)() virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_collision\_mask](#class-physicsdirectbodystate3dextension-private-method-get-collision-mask)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_constant\_force](#class-physicsdirectbodystate3dextension-private-method-get-constant-force)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_constant\_torque](#class-physicsdirectbodystate3dextension-private-method-get-constant-torque)() virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_get\_contact\_collider](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_collider\_id](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-id)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Object](class_object.md#class-object) | [\_get\_contact\_collider\_object](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-object)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_collider\_position](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_collider\_shape](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-shape)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_collider\_velocity\_at\_position](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_count](#class-physicsdirectbodystate3dextension-private-method-get-contact-count)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_impulse](#class-physicsdirectbodystate3dextension-private-method-get-contact-impulse)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_local\_normal](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-normal)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_local\_position](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_get\_contact\_local\_shape](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-shape)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_contact\_local\_velocity\_at\_position](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-velocity-at-position)(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_inverse\_inertia](#class-physicsdirectbodystate3dextension-private-method-get-inverse-inertia)() virtualrequiredconst |
| [Basis](class_basis.md#class-basis) | [\_get\_inverse\_inertia\_tensor](#class-physicsdirectbodystate3dextension-private-method-get-inverse-inertia-tensor)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_inverse\_mass](#class-physicsdirectbodystate3dextension-private-method-get-inverse-mass)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_linear\_velocity](#class-physicsdirectbodystate3dextension-private-method-get-linear-velocity)() virtualrequiredconst |
| [Basis](class_basis.md#class-basis) | [\_get\_principal\_inertia\_axes](#class-physicsdirectbodystate3dextension-private-method-get-principal-inertia-axes)() virtualrequiredconst |
| [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) | [\_get\_space\_state](#class-physicsdirectbodystate3dextension-private-method-get-space-state)() virtualrequired |
| [float](class_float.md#class-float) | [\_get\_step](#class-physicsdirectbodystate3dextension-private-method-get-step)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_total\_angular\_damp](#class-physicsdirectbodystate3dextension-private-method-get-total-angular-damp)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_total\_gravity](#class-physicsdirectbodystate3dextension-private-method-get-total-gravity)() virtualrequiredconst |
| [float](class_float.md#class-float) | [\_get\_total\_linear\_damp](#class-physicsdirectbodystate3dextension-private-method-get-total-linear-damp)() virtualrequiredconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_get\_transform](#class-physicsdirectbodystate3dextension-private-method-get-transform)() virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_get\_velocity\_at\_local\_position](#class-physicsdirectbodystate3dextension-private-method-get-velocity-at-local-position)(local\_position: [Vector3](class_vector3.md#class-vector3)) virtualrequiredconst |
| void | [\_integrate\_forces](#class-physicsdirectbodystate3dextension-private-method-integrate-forces)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_is\_sleeping](#class-physicsdirectbodystate3dextension-private-method-is-sleeping)() virtualrequiredconst |
| void | [\_set\_angular\_velocity](#class-physicsdirectbodystate3dextension-private-method-set-angular-velocity)(velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_set\_collision\_layer](#class-physicsdirectbodystate3dextension-private-method-set-collision-layer)(layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_collision\_mask](#class-physicsdirectbodystate3dextension-private-method-set-collision-mask)(mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_set\_constant\_force](#class-physicsdirectbodystate3dextension-private-method-set-constant-force)(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_set\_constant\_torque](#class-physicsdirectbodystate3dextension-private-method-set-constant-torque)(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_set\_linear\_velocity](#class-physicsdirectbodystate3dextension-private-method-set-linear-velocity)(velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_set\_sleep\_state](#class-physicsdirectbodystate3dextension-private-method-set-sleep-state)(enabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_set\_transform](#class-physicsdirectbodystate3dextension-private-method-set-transform)(transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |

* * *

## Method Descriptions

void **\_add\_constant\_central\_force**(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-add-constant-central-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_add\_constant\_force**(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-add-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_add\_constant\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-add-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_central\_force**(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-central-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_central\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-central-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_force**(force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_apply\_torque\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-apply-torque-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_angular\_velocity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-angular-velocity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_center\_of\_mass**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-center-of-mass)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_center\_of\_mass\_local**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-center-of-mass-local)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_collision\_layer**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_collision\_mask**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_constant\_force**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_constant\_torque**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_get\_contact\_collider**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_contact\_collider\_id**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Object](class_object.md#class-object) **\_get\_contact\_collider\_object**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-object)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_collider\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_contact\_collider\_shape**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_collider\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-collider-velocity-at-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_contact\_count**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_impulse**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_local\_normal**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-normal)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_local\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_contact\_local\_shape**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_contact\_local\_velocity\_at\_position**(contact\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-contact-local-velocity-at-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_inverse\_inertia**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-inverse-inertia)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Basis](class_basis.md#class-basis) **\_get\_inverse\_inertia\_tensor**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-inverse-inertia-tensor)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_get\_inverse\_mass**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-inverse-mass)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_linear\_velocity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-linear-velocity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Basis](class_basis.md#class-basis) **\_get\_principal\_inertia\_axes**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-principal-inertia-axes)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **\_get\_space\_state**() virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-get-space-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_get\_step**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-step)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_get\_total\_angular\_damp**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-total-angular-damp)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_total\_gravity**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-total-gravity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_get\_total\_linear\_damp**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-total-linear-damp)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_get\_transform**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_get\_velocity\_at\_local\_position**(local\_position: [Vector3](class_vector3.md#class-vector3)) virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-get-velocity-at-local-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_integrate\_forces**() virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-integrate-forces)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_sleeping**() virtualrequiredconst [🔗](#class-physicsdirectbodystate3dextension-private-method-is-sleeping)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_angular\_velocity**(velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-angular-velocity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_collision\_layer**(layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_collision\_mask**(mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_constant\_force**(force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_constant\_torque**(torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_linear\_velocity**(velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-linear-velocity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_sleep\_state**(enabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-sleep-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_transform**(transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsdirectbodystate3dextension-private-method-set-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_physicsdirectbodystate3d.md "PhysicsDirectBodyState3D") [Next](class_physicsdirectspacestate2d.md "PhysicsDirectSpaceState2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsdirectbodystate3d.md "PhysicsDirectBodyState3D") [Next](class_physicsdirectspacestate2d.md "PhysicsDirectSpaceState2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).