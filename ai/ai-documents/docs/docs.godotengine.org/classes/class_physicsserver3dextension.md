---
title: PhysicsServer3DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver3dextension.html
crawled_at: "2026-08-13T10:41:16+12:00"
content_hash: 34aad365a0ec093ce628b139147c698d2f76354bbaddc03984e70358257e9db7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer3DExtension

* * *

# PhysicsServer3DExtension

**Inherits:** [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) implementations.

## Description

This class extends [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d).

## Methods

|     |     |
| --- | --- |
| void | [\_area\_add\_shape](#class-physicsserver3dextension-private-method-area-add-shape)(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_attach\_object\_instance\_id](#class-physicsserver3dextension-private-method-area-attach-object-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_clear\_shapes](#class-physicsserver3dextension-private-method-area-clear-shapes)(area: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_area\_create](#class-physicsserver3dextension-private-method-area-create)() virtualrequired |
| [int](class_int.md#class-int) | [\_area\_get\_collision\_layer](#class-physicsserver3dextension-private-method-area-get-collision-layer)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_collision\_mask](#class-physicsserver3dextension-private-method-area-get-collision-mask)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_object\_instance\_id](#class-physicsserver3dextension-private-method-area-get-object-instance-id)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_area\_get\_param](#class-physicsserver3dextension-private-method-area-get-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver3d.md#enum-physicsserver3d-areaparameter)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_area\_get\_shape](#class-physicsserver3dextension-private-method-area-get-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_shape\_count](#class-physicsserver3dextension-private-method-area-get-shape-count)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_area\_get\_shape\_transform](#class-physicsserver3dextension-private-method-area-get-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_area\_get\_space](#class-physicsserver3dextension-private-method-area-get-space)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_area\_get\_transform](#class-physicsserver3dextension-private-method-area-get-transform)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_area\_remove\_shape](#class-physicsserver3dextension-private-method-area-remove-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_area\_monitor\_callback](#class-physicsserver3dextension-private-method-area-set-area-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired |
| void | [\_area\_set\_collision\_layer](#class-physicsserver3dextension-private-method-area-set-collision-layer)(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_collision\_mask](#class-physicsserver3dextension-private-method-area-set-collision-mask)(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_monitor\_callback](#class-physicsserver3dextension-private-method-area-set-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired |
| void | [\_area\_set\_monitorable](#class-physicsserver3dextension-private-method-area-set-monitorable)(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_param](#class-physicsserver3dextension-private-method-area-set-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver3d.md#enum-physicsserver3d-areaparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_area\_set\_ray\_pickable](#class-physicsserver3dextension-private-method-area-set-ray-pickable)(area: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_shape](#class-physicsserver3dextension-private-method-area-set-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_area\_set\_shape\_disabled](#class-physicsserver3dextension-private-method-area-set-shape-disabled)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_shape\_transform](#class-physicsserver3dextension-private-method-area-set-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_area\_set\_space](#class-physicsserver3dextension-private-method-area-set-space)(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_area\_set\_transform](#class-physicsserver3dextension-private-method-area-set-transform)(area: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_body\_add\_collision\_exception](#class-physicsserver3dextension-private-method-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_add\_constant\_central\_force](#class-physicsserver3dextension-private-method-body-add-constant-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_add\_constant\_force](#class-physicsserver3dextension-private-method-body-add-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_add\_constant\_torque](#class-physicsserver3dextension-private-method-body-add-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_add\_shape](#class-physicsserver3dextension-private-method-body-add-shape)(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_apply\_central\_force](#class-physicsserver3dextension-private-method-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_apply\_central\_impulse](#class-physicsserver3dextension-private-method-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_apply\_force](#class-physicsserver3dextension-private-method-body-apply-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_apply\_impulse](#class-physicsserver3dextension-private-method-body-apply-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_apply\_torque](#class-physicsserver3dextension-private-method-body-apply-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_apply\_torque\_impulse](#class-physicsserver3dextension-private-method-body-apply-torque-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_attach\_object\_instance\_id](#class-physicsserver3dextension-private-method-body-attach-object-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_clear\_shapes](#class-physicsserver3dextension-private-method-body-clear-shapes)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_body\_create](#class-physicsserver3dextension-private-method-body-create)() virtualrequired |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [\_body\_get\_collision\_exceptions](#class-physicsserver3dextension-private-method-body-get-collision-exceptions)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_collision\_layer](#class-physicsserver3dextension-private-method-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_collision\_mask](#class-physicsserver3dextension-private-method-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_body\_get\_collision\_priority](#class-physicsserver3dextension-private-method-body-get-collision-priority)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_body\_get\_constant\_force](#class-physicsserver3dextension-private-method-body-get-constant-force)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_body\_get\_constant\_torque](#class-physicsserver3dextension-private-method-body-get-constant-torque)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_body\_get\_contacts\_reported\_depth\_threshold](#class-physicsserver3dextension-private-method-body-get-contacts-reported-depth-threshold)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) | [\_body\_get\_direct\_state](#class-physicsserver3dextension-private-method-body-get-direct-state)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| [int](class_int.md#class-int) | [\_body\_get\_max\_contacts\_reported](#class-physicsserver3dextension-private-method-body-get-max-contacts-reported)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [BodyMode](class_physicsserver3d.md#enum-physicsserver3d-bodymode) | [\_body\_get\_mode](#class-physicsserver3dextension-private-method-body-get-mode)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_object\_instance\_id](#class-physicsserver3dextension-private-method-body-get-object-instance-id)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_body\_get\_param](#class-physicsserver3dextension-private-method-body-get-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver3d.md#enum-physicsserver3d-bodyparameter)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_body\_get\_shape](#class-physicsserver3dextension-private-method-body-get-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_shape\_count](#class-physicsserver3dextension-private-method-body-get-shape-count)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform3D](class_transform3d.md#class-transform3d) | [\_body\_get\_shape\_transform](#class-physicsserver3dextension-private-method-body-get-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_body\_get\_space](#class-physicsserver3dextension-private-method-body-get-space)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_body\_get\_state](#class-physicsserver3dextension-private-method-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_user\_flags](#class-physicsserver3dextension-private-method-body-get-user-flags)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_body\_is\_axis\_locked](#class-physicsserver3dextension-private-method-body-is-axis-locked)(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_body\_is\_continuous\_collision\_detection\_enabled](#class-physicsserver3dextension-private-method-body-is-continuous-collision-detection-enabled)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_body\_is\_omitting\_force\_integration](#class-physicsserver3dextension-private-method-body-is-omitting-force-integration)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_body\_remove\_collision\_exception](#class-physicsserver3dextension-private-method-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_remove\_shape](#class-physicsserver3dextension-private-method-body-remove-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_reset\_mass\_properties](#class-physicsserver3dextension-private-method-body-reset-mass-properties)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_axis\_lock](#class-physicsserver3dextension-private-method-body-set-axis-lock)(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_axis\_velocity](#class-physicsserver3dextension-private-method-body-set-axis-velocity)(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_set\_collision\_layer](#class-physicsserver3dextension-private-method-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_collision\_mask](#class-physicsserver3dextension-private-method-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_collision\_priority](#class-physicsserver3dextension-private-method-body-set-collision-priority)(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_constant\_force](#class-physicsserver3dextension-private-method-body-set-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_set\_constant\_torque](#class-physicsserver3dextension-private-method-body-set-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_body\_set\_contacts\_reported\_depth\_threshold](#class-physicsserver3dextension-private-method-body-set-contacts-reported-depth-threshold)(body: [RID](class_rid.md#class-rid), threshold: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_enable\_continuous\_collision\_detection](#class-physicsserver3dextension-private-method-body-set-enable-continuous-collision-detection)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_force\_integration\_callback](#class-physicsserver3dextension-private-method-body-set-force-integration-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_max\_contacts\_reported](#class-physicsserver3dextension-private-method-body-set-max-contacts-reported)(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_mode](#class-physicsserver3dextension-private-method-body-set-mode)(body: [RID](class_rid.md#class-rid), mode: [BodyMode](class_physicsserver3d.md#enum-physicsserver3d-bodymode)) virtualrequired |
| void | [\_body\_set\_omit\_force\_integration](#class-physicsserver3dextension-private-method-body-set-omit-force-integration)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_param](#class-physicsserver3dextension-private-method-body-set-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver3d.md#enum-physicsserver3d-bodyparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_ray\_pickable](#class-physicsserver3dextension-private-method-body-set-ray-pickable)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_shape](#class-physicsserver3dextension-private-method-body-set-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_shape\_disabled](#class-physicsserver3dextension-private-method-body-set-shape-disabled)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_shape\_transform](#class-physicsserver3dextension-private-method-body-set-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_body\_set\_space](#class-physicsserver3dextension-private-method-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_state](#class-physicsserver3dextension-private-method-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_state\_sync\_callback](#class-physicsserver3dextension-private-method-body-set-state-sync-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) virtualrequired |
| void | [\_body\_set\_user\_flags](#class-physicsserver3dextension-private-method-body-set-user-flags)(body: [RID](class_rid.md#class-rid), flags: [int](class_int.md#class-int)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_body\_test\_motion](#class-physicsserver3dextension-private-method-body-test-motion)(body: [RID](class_rid.md#class-rid), from: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), max\_collisions: [int](class_int.md#class-int), collide\_separation\_ray: [bool](class_bool.md#class-bool), recovery\_as\_collision: [bool](class_bool.md#class-bool), result: `PhysicsServer3DExtensionMotionResult*`) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_box\_shape\_create](#class-physicsserver3dextension-private-method-box-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_capsule\_shape\_create](#class-physicsserver3dextension-private-method-capsule-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_concave\_polygon\_shape\_create](#class-physicsserver3dextension-private-method-concave-polygon-shape-create)() virtualrequired |
| [float](class_float.md#class-float) | [\_cone\_twist\_joint\_get\_param](#class-physicsserver3dextension-private-method-cone-twist-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](class_physicsserver3d.md#enum-physicsserver3d-conetwistjointparam)) virtualrequiredconst |
| void | [\_cone\_twist\_joint\_set\_param](#class-physicsserver3dextension-private-method-cone-twist-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](class_physicsserver3d.md#enum-physicsserver3d-conetwistjointparam), value: [float](class_float.md#class-float)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_convex\_polygon\_shape\_create](#class-physicsserver3dextension-private-method-convex-polygon-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_custom\_shape\_create](#class-physicsserver3dextension-private-method-custom-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_cylinder\_shape\_create](#class-physicsserver3dextension-private-method-cylinder-shape-create)() virtualrequired |
| void | [\_end\_sync](#class-physicsserver3dextension-private-method-end-sync)() virtualrequired |
| void | [\_finish](#class-physicsserver3dextension-private-method-finish)() virtualrequired |
| void | [\_flush\_queries](#class-physicsserver3dextension-private-method-flush-queries)() virtualrequired |
| void | [\_free\_rid](#class-physicsserver3dextension-private-method-free-rid)(rid: [RID](class_rid.md#class-rid)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_generic\_6dof\_joint\_get\_flag](#class-physicsserver3dextension-private-method-generic-6dof-joint-get-flag)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisflag)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_generic\_6dof\_joint\_get\_param](#class-physicsserver3dextension-private-method-generic-6dof-joint-get-param)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisparam)) virtualrequiredconst |
| void | [\_generic\_6dof\_joint\_set\_flag](#class-physicsserver3dextension-private-method-generic-6dof-joint-set-flag)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisflag), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_generic\_6dof\_joint\_set\_param](#class-physicsserver3dextension-private-method-generic-6dof-joint-set-param)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisparam), value: [float](class_float.md#class-float)) virtualrequired |
| [int](class_int.md#class-int) | [\_get\_process\_info](#class-physicsserver3dextension-private-method-get-process-info)(process\_info: [ProcessInfo](class_physicsserver3d.md#enum-physicsserver3d-processinfo)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_heightmap\_shape\_create](#class-physicsserver3dextension-private-method-heightmap-shape-create)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_hinge\_joint\_get\_flag](#class-physicsserver3dextension-private-method-hinge-joint-get-flag)(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](class_physicsserver3d.md#enum-physicsserver3d-hingejointflag)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_hinge\_joint\_get\_param](#class-physicsserver3dextension-private-method-hinge-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](class_physicsserver3d.md#enum-physicsserver3d-hingejointparam)) virtualrequiredconst |
| void | [\_hinge\_joint\_set\_flag](#class-physicsserver3dextension-private-method-hinge-joint-set-flag)(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](class_physicsserver3d.md#enum-physicsserver3d-hingejointflag), enabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_hinge\_joint\_set\_param](#class-physicsserver3dextension-private-method-hinge-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](class_physicsserver3d.md#enum-physicsserver3d-hingejointparam), value: [float](class_float.md#class-float)) virtualrequired |
| void | [\_init](#class-physicsserver3dextension-private-method-init)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_is\_flushing\_queries](#class-physicsserver3dextension-private-method-is-flushing-queries)() virtualrequiredconst |
| void | [\_joint\_clear](#class-physicsserver3dextension-private-method-joint-clear)(joint: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_joint\_create](#class-physicsserver3dextension-private-method-joint-create)() virtualrequired |
| void | [\_joint\_disable\_collisions\_between\_bodies](#class-physicsserver3dextension-private-method-joint-disable-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) virtualrequired |
| [int](class_int.md#class-int) | [\_joint\_get\_solver\_priority](#class-physicsserver3dextension-private-method-joint-get-solver-priority)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [JointType](class_physicsserver3d.md#enum-physicsserver3d-jointtype) | [\_joint\_get\_type](#class-physicsserver3dextension-private-method-joint-get-type)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_joint\_is\_disabled\_collisions\_between\_bodies](#class-physicsserver3dextension-private-method-joint-is-disabled-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_joint\_make\_cone\_twist](#class-physicsserver3dextension-private-method-joint-make-cone-twist)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_joint\_make\_generic\_6dof](#class-physicsserver3dextension-private-method-joint-make-generic-6dof)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_joint\_make\_hinge](#class-physicsserver3dextension-private-method-joint-make-hinge)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), hinge\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), hinge\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_joint\_make\_hinge\_simple](#class-physicsserver3dextension-private-method-joint-make-hinge-simple)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), pivot\_A: [Vector3](class_vector3.md#class-vector3), axis\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), pivot\_B: [Vector3](class_vector3.md#class-vector3), axis\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_joint\_make\_pin](#class-physicsserver3dextension-private-method-joint-make-pin)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_joint\_make\_slider](#class-physicsserver3dextension-private-method-joint-make-slider)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_joint\_set\_solver\_priority](#class-physicsserver3dextension-private-method-joint-set-solver-priority)(joint: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) virtualrequired |
| [Vector3](class_vector3.md#class-vector3) | [\_pin\_joint\_get\_local\_a](#class-physicsserver3dextension-private-method-pin-joint-get-local-a)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_pin\_joint\_get\_local\_b](#class-physicsserver3dextension-private-method-pin-joint-get-local-b)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_pin\_joint\_get\_param](#class-physicsserver3dextension-private-method-pin-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver3d.md#enum-physicsserver3d-pinjointparam)) virtualrequiredconst |
| void | [\_pin\_joint\_set\_local\_a](#class-physicsserver3dextension-private-method-pin-joint-set-local-a)(joint: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_pin\_joint\_set\_local\_b](#class-physicsserver3dextension-private-method-pin-joint-set-local-b)(joint: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_pin\_joint\_set\_param](#class-physicsserver3dextension-private-method-pin-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver3d.md#enum-physicsserver3d-pinjointparam), value: [float](class_float.md#class-float)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_separation\_ray\_shape\_create](#class-physicsserver3dextension-private-method-separation-ray-shape-create)() virtualrequired |
| void | [\_set\_active](#class-physicsserver3dextension-private-method-set-active)(active: [bool](class_bool.md#class-bool)) virtualrequired |
| [float](class_float.md#class-float) | [\_shape\_get\_custom\_solver\_bias](#class-physicsserver3dextension-private-method-shape-get-custom-solver-bias)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_shape\_get\_data](#class-physicsserver3dextension-private-method-shape-get-data)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_shape\_get\_margin](#class-physicsserver3dextension-private-method-shape-get-margin)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [ShapeType](class_physicsserver3d.md#enum-physicsserver3d-shapetype) | [\_shape\_get\_type](#class-physicsserver3dextension-private-method-shape-get-type)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_shape\_set\_custom\_solver\_bias](#class-physicsserver3dextension-private-method-shape-set-custom-solver-bias)(shape: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) virtualrequired |
| void | [\_shape\_set\_data](#class-physicsserver3dextension-private-method-shape-set-data)(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_shape\_set\_margin](#class-physicsserver3dextension-private-method-shape-set-margin)(shape: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) virtualrequired |
| [float](class_float.md#class-float) | [\_slider\_joint\_get\_param](#class-physicsserver3dextension-private-method-slider-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](class_physicsserver3d.md#enum-physicsserver3d-sliderjointparam)) virtualrequiredconst |
| void | [\_slider\_joint\_set\_param](#class-physicsserver3dextension-private-method-slider-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](class_physicsserver3d.md#enum-physicsserver3d-sliderjointparam), value: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_add\_collision\_exception](#class-physicsserver3dextension-private-method-soft-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_soft\_body\_apply\_central\_force](#class-physicsserver3dextension-private-method-soft-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_soft\_body\_apply\_central\_impulse](#class-physicsserver3dextension-private-method-soft-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_soft\_body\_apply\_point\_force](#class-physicsserver3dextension-private-method-soft-body-apply-point-force)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_soft\_body\_apply\_point\_impulse](#class-physicsserver3dextension-private-method-soft-body-apply-point-impulse)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_soft\_body\_create](#class-physicsserver3dextension-private-method-soft-body-create)() virtualrequired |
| [AABB](class_aabb.md#class-aabb) | [\_soft\_body\_get\_bounds](#class-physicsserver3dextension-private-method-soft-body-get-bounds)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [\_soft\_body\_get\_collision\_exceptions](#class-physicsserver3dextension-private-method-soft-body-get-collision-exceptions)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_soft\_body\_get\_collision\_layer](#class-physicsserver3dextension-private-method-soft-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_soft\_body\_get\_collision\_mask](#class-physicsserver3dextension-private-method-soft-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_damping\_coefficient](#class-physicsserver3dextension-private-method-soft-body-get-damping-coefficient)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_drag\_coefficient](#class-physicsserver3dextension-private-method-soft-body-get-drag-coefficient)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_linear\_stiffness](#class-physicsserver3dextension-private-method-soft-body-get-linear-stiffness)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector3](class_vector3.md#class-vector3) | [\_soft\_body\_get\_point\_global\_position](#class-physicsserver3dextension-private-method-soft-body-get-point-global-position)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_pressure\_coefficient](#class-physicsserver3dextension-private-method-soft-body-get-pressure-coefficient)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_shrinking\_factor](#class-physicsserver3dextension-private-method-soft-body-get-shrinking-factor)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_soft\_body\_get\_simulation\_precision](#class-physicsserver3dextension-private-method-soft-body-get-simulation-precision)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_soft\_body\_get\_space](#class-physicsserver3dextension-private-method-soft-body-get-space)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_soft\_body\_get\_state](#class-physicsserver3dextension-private-method-soft-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_soft\_body\_get\_total\_mass](#class-physicsserver3dextension-private-method-soft-body-get-total-mass)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_soft\_body\_is\_point\_pinned](#class-physicsserver3dextension-private-method-soft-body-is-point-pinned)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) virtualrequiredconst |
| void | [\_soft\_body\_move\_point](#class-physicsserver3dextension-private-method-soft-body-move-point)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), global\_position: [Vector3](class_vector3.md#class-vector3)) virtualrequired |
| void | [\_soft\_body\_pin\_point](#class-physicsserver3dextension-private-method-soft-body-pin-point)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), pin: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_soft\_body\_remove\_all\_pinned\_points](#class-physicsserver3dextension-private-method-soft-body-remove-all-pinned-points)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_soft\_body\_remove\_collision\_exception](#class-physicsserver3dextension-private-method-soft-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_soft\_body\_set\_collision\_layer](#class-physicsserver3dextension-private-method-soft-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_soft\_body\_set\_collision\_mask](#class-physicsserver3dextension-private-method-soft-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_soft\_body\_set\_damping\_coefficient](#class-physicsserver3dextension-private-method-soft-body-set-damping-coefficient)(body: [RID](class_rid.md#class-rid), damping\_coefficient: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_drag\_coefficient](#class-physicsserver3dextension-private-method-soft-body-set-drag-coefficient)(body: [RID](class_rid.md#class-rid), drag\_coefficient: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_linear\_stiffness](#class-physicsserver3dextension-private-method-soft-body-set-linear-stiffness)(body: [RID](class_rid.md#class-rid), linear\_stiffness: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_mesh](#class-physicsserver3dextension-private-method-soft-body-set-mesh)(body: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_soft\_body\_set\_pressure\_coefficient](#class-physicsserver3dextension-private-method-soft-body-set-pressure-coefficient)(body: [RID](class_rid.md#class-rid), pressure\_coefficient: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_ray\_pickable](#class-physicsserver3dextension-private-method-soft-body-set-ray-pickable)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_soft\_body\_set\_shrinking\_factor](#class-physicsserver3dextension-private-method-soft-body-set-shrinking-factor)(body: [RID](class_rid.md#class-rid), shrinking\_factor: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_simulation\_precision](#class-physicsserver3dextension-private-method-soft-body-set-simulation-precision)(body: [RID](class_rid.md#class-rid), simulation\_precision: [int](class_int.md#class-int)) virtualrequired |
| void | [\_soft\_body\_set\_space](#class-physicsserver3dextension-private-method-soft-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_soft\_body\_set\_state](#class-physicsserver3dextension-private-method-soft-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate), variant: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_soft\_body\_set\_total\_mass](#class-physicsserver3dextension-private-method-soft-body-set-total-mass)(body: [RID](class_rid.md#class-rid), total\_mass: [float](class_float.md#class-float)) virtualrequired |
| void | [\_soft\_body\_set\_transform](#class-physicsserver3dextension-private-method-soft-body-set-transform)(body: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired |
| void | [\_soft\_body\_update\_rendering\_server](#class-physicsserver3dextension-private-method-soft-body-update-rendering-server)(body: [RID](class_rid.md#class-rid), rendering\_server\_handler: [PhysicsServer3DRenderingServerHandler](class_physicsserver3drenderingserverhandler.md#class-physicsserver3drenderingserverhandler)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_space\_create](#class-physicsserver3dextension-private-method-space-create)() virtualrequired |
| [int](class_int.md#class-int) | [\_space\_get\_contact\_count](#class-physicsserver3dextension-private-method-space-get-contact-count)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PackedVector3Array](class_packedvector3array.md#class-packedvector3array) | [\_space\_get\_contacts](#class-physicsserver3dextension-private-method-space-get-contacts)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) | [\_space\_get\_direct\_state](#class-physicsserver3dextension-private-method-space-get-direct-state)(space: [RID](class_rid.md#class-rid)) virtualrequired |
| [float](class_float.md#class-float) | [\_space\_get\_param](#class-physicsserver3dextension-private-method-space-get-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver3d.md#enum-physicsserver3d-spaceparameter)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_space\_is\_active](#class-physicsserver3dextension-private-method-space-is-active)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_space\_set\_active](#class-physicsserver3dextension-private-method-space-set-active)(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_space\_set\_debug\_contacts](#class-physicsserver3dextension-private-method-space-set-debug-contacts)(space: [RID](class_rid.md#class-rid), max\_contacts: [int](class_int.md#class-int)) virtualrequired |
| void | [\_space\_set\_param](#class-physicsserver3dextension-private-method-space-set-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver3d.md#enum-physicsserver3d-spaceparameter), value: [float](class_float.md#class-float)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_sphere\_shape\_create](#class-physicsserver3dextension-private-method-sphere-shape-create)() virtualrequired |
| void | [\_step](#class-physicsserver3dextension-private-method-step)(step: [float](class_float.md#class-float)) virtualrequired |
| void | [\_sync](#class-physicsserver3dextension-private-method-sync)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_world\_boundary\_shape\_create](#class-physicsserver3dextension-private-method-world-boundary-shape-create)() virtualrequired |
| [bool](class_bool.md#class-bool) | [body\_test\_motion\_is\_excluding\_body](#class-physicsserver3dextension-method-body-test-motion-is-excluding-body)(body: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [body\_test\_motion\_is\_excluding\_object](#class-physicsserver3dextension-method-body-test-motion-is-excluding-object)(object: [int](class_int.md#class-int)) const |

* * *

## Method Descriptions

void **\_area\_add\_shape**(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-add-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_attach\_object\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-attach-object-instance-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_clear\_shapes**(area: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-clear-shapes)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_area\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_area\_get\_collision\_layer**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_area\_get\_collision\_mask**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_area\_get\_object\_instance\_id**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-object-instance-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_area\_get\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver3d.md#enum-physicsserver3d-areaparameter)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_area\_get\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_area\_get\_shape\_count**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-shape-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_area\_get\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-shape-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_area\_get\_space**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_area\_get\_transform**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-area-get-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_remove\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-remove-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_area\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-area-monitor-callback)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_collision\_layer**(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_collision\_mask**(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-monitor-callback)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_monitorable**(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-monitorable)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver3d.md#enum-physicsserver3d-areaparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_ray\_pickable**(area: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-ray-pickable)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_shape\_disabled**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-shape-disabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-shape-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_space**(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_area\_set\_transform**(area: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-area-set-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-add-collision-exception)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_add\_constant\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-add-constant-central-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_add\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-add-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_add\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-add-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_add\_shape**(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-add-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-central-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-central-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_apply\_torque\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-apply-torque-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_attach\_object\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-attach-object-instance-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_clear\_shapes**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-clear-shapes)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_body\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **\_body\_get\_collision\_exceptions**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-collision-exceptions)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_body\_get\_collision\_priority**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-collision-priority)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_body\_get\_constant\_force**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_body\_get\_constant\_torque**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_body\_get\_contacts\_reported\_depth\_threshold**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-contacts-reported-depth-threshold)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) **\_body\_get\_direct\_state**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-get-direct-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-max-contacts-reported)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[BodyMode](class_physicsserver3d.md#enum-physicsserver3d-bodymode) **\_body\_get\_mode**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-mode)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_object\_instance\_id**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-object-instance-id)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_body\_get\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver3d.md#enum-physicsserver3d-bodyparameter)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_body\_get\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_shape\_count**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-shape-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Transform3D](class_transform3d.md#class-transform3d) **\_body\_get\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-shape-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_body\_get\_space**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_body\_get\_user\_flags**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-get-user-flags)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_body\_is\_axis\_locked**(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-is-axis-locked)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_body\_is\_continuous\_collision\_detection\_enabled**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-is-continuous-collision-detection-enabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_body\_is\_omitting\_force\_integration**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-is-omitting-force-integration)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-remove-collision-exception)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_remove\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-remove-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_reset\_mass\_properties**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-reset-mass-properties)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_axis\_lock**(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](class_physicsserver3d.md#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-axis-lock)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_axis\_velocity**(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-axis-velocity)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_collision\_priority**(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-collision-priority)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-constant-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-constant-torque)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_contacts\_reported\_depth\_threshold**(body: [RID](class_rid.md#class-rid), threshold: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-contacts-reported-depth-threshold)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_enable\_continuous\_collision\_detection**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-enable-continuous-collision-detection)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_force\_integration\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-force-integration-callback)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-max-contacts-reported)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_mode**(body: [RID](class_rid.md#class-rid), mode: [BodyMode](class_physicsserver3d.md#enum-physicsserver3d-bodymode)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-mode)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_omit\_force\_integration**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-omit-force-integration)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver3d.md#enum-physicsserver3d-bodyparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_ray\_pickable**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-ray-pickable)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-shape)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_shape\_disabled**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-shape-disabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-shape-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_state\_sync\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-state-sync-callback)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_body\_set\_user\_flags**(body: [RID](class_rid.md#class-rid), flags: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-body-set-user-flags)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_body\_test\_motion**(body: [RID](class_rid.md#class-rid), from: [Transform3D](class_transform3d.md#class-transform3d), motion: [Vector3](class_vector3.md#class-vector3), margin: [float](class_float.md#class-float), max\_collisions: [int](class_int.md#class-int), collide\_separation\_ray: [bool](class_bool.md#class-bool), recovery\_as\_collision: [bool](class_bool.md#class-bool), result: `PhysicsServer3DExtensionMotionResult*`) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-body-test-motion)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_box\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-box-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_capsule\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-capsule-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_concave\_polygon\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-concave-polygon-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_cone\_twist\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](class_physicsserver3d.md#enum-physicsserver3d-conetwistjointparam)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-cone-twist-joint-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_cone\_twist\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](class_physicsserver3d.md#enum-physicsserver3d-conetwistjointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-cone-twist-joint-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_convex\_polygon\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-convex-polygon-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_custom\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-custom-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_cylinder\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-cylinder-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_end\_sync**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-end-sync)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_finish**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-finish)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_flush\_queries**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-flush-queries)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_free\_rid**(rid: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-free-rid)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_generic\_6dof\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisflag)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-generic-6dof-joint-get-flag)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_generic\_6dof\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisparam)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-generic-6dof-joint-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_generic\_6dof\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisflag), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-generic-6dof-joint-set-flag)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_generic\_6dof\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](class_physicsserver3d.md#enum-physicsserver3d-g6dofjointaxisparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-generic-6dof-joint-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_get\_process\_info**(process\_info: [ProcessInfo](class_physicsserver3d.md#enum-physicsserver3d-processinfo)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-get-process-info)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_heightmap\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-heightmap-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_hinge\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](class_physicsserver3d.md#enum-physicsserver3d-hingejointflag)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-hinge-joint-get-flag)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_hinge\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](class_physicsserver3d.md#enum-physicsserver3d-hingejointparam)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-hinge-joint-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_hinge\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](class_physicsserver3d.md#enum-physicsserver3d-hingejointflag), enabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-hinge-joint-set-flag)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_hinge\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](class_physicsserver3d.md#enum-physicsserver3d-hingejointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-hinge-joint-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_init**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-init)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_is\_flushing\_queries**() virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-is-flushing-queries)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_clear**(joint: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-clear)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_joint\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_disable\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-disable-collisions-between-bodies)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_joint\_get\_solver\_priority**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-joint-get-solver-priority)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[JointType](class_physicsserver3d.md#enum-physicsserver3d-jointtype) **\_joint\_get\_type**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-joint-get-type)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_joint\_is\_disabled\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-joint-is-disabled-collisions-between-bodies)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_cone\_twist**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-cone-twist)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_generic\_6dof**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-generic-6dof)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_hinge**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), hinge\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), hinge\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-hinge)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_hinge\_simple**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), pivot\_A: [Vector3](class_vector3.md#class-vector3), axis\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), pivot\_B: [Vector3](class_vector3.md#class-vector3), axis\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-hinge-simple)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_pin**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-pin)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_make\_slider**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-make-slider)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_joint\_set\_solver\_priority**(joint: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-joint-set-solver-priority)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_pin\_joint\_get\_local\_a**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-pin-joint-get-local-a)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_pin\_joint\_get\_local\_b**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-pin-joint-get-local-b)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_pin\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver3d.md#enum-physicsserver3d-pinjointparam)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-pin-joint-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_pin\_joint\_set\_local\_a**(joint: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-pin-joint-set-local-a)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_pin\_joint\_set\_local\_b**(joint: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-pin-joint-set-local-b)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_pin\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver3d.md#enum-physicsserver3d-pinjointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-pin-joint-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_separation\_ray\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-separation-ray-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_set\_active**(active: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-set-active)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_shape\_get\_custom\_solver\_bias**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-shape-get-custom-solver-bias)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_shape\_get\_data**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-shape-get-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_shape\_get\_margin**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-shape-get-margin)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[ShapeType](class_physicsserver3d.md#enum-physicsserver3d-shapetype) **\_shape\_get\_type**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-shape-get-type)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_shape\_set\_custom\_solver\_bias**(shape: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-shape-set-custom-solver-bias)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_shape\_set\_data**(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-shape-set-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_shape\_set\_margin**(shape: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-shape-set-margin)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_slider\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](class_physicsserver3d.md#enum-physicsserver3d-sliderjointparam)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-slider-joint-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_slider\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](class_physicsserver3d.md#enum-physicsserver3d-sliderjointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-slider-joint-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-add-collision-exception)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-apply-central-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-apply-central-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_apply\_point\_force**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-apply-point-force)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_apply\_point\_impulse**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-apply-point-impulse)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_soft\_body\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[AABB](class_aabb.md#class-aabb) **\_soft\_body\_get\_bounds**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-bounds)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **\_soft\_body\_get\_collision\_exceptions**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-collision-exceptions)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_soft\_body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_soft\_body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_damping\_coefficient**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-damping-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_drag\_coefficient**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-drag-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_linear\_stiffness**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-linear-stiffness)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Vector3](class_vector3.md#class-vector3) **\_soft\_body\_get\_point\_global\_position**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-point-global-position)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_pressure\_coefficient**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-pressure-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_shrinking\_factor**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-shrinking-factor)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_soft\_body\_get\_simulation\_precision**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-simulation-precision)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_soft\_body\_get\_space**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Variant](class_variant.md#class-variant) **\_soft\_body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_soft\_body\_get\_total\_mass**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-get-total-mass)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_soft\_body\_is\_point\_pinned**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-soft-body-is-point-pinned)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_move\_point**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), global\_position: [Vector3](class_vector3.md#class-vector3)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-move-point)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_pin\_point**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), pin: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-pin-point)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_remove\_all\_pinned\_points**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-remove-all-pinned-points)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-remove-collision-exception)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-collision-layer)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-collision-mask)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_damping\_coefficient**(body: [RID](class_rid.md#class-rid), damping\_coefficient: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-damping-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_drag\_coefficient**(body: [RID](class_rid.md#class-rid), drag\_coefficient: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-drag-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_linear\_stiffness**(body: [RID](class_rid.md#class-rid), linear\_stiffness: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-linear-stiffness)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_mesh**(body: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-mesh)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_pressure\_coefficient**(body: [RID](class_rid.md#class-rid), pressure\_coefficient: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-pressure-coefficient)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_ray\_pickable**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-ray-pickable)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_shrinking\_factor**(body: [RID](class_rid.md#class-rid), shrinking\_factor: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-shrinking-factor)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_simulation\_precision**(body: [RID](class_rid.md#class-rid), simulation\_precision: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-simulation-precision)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-space)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver3d.md#enum-physicsserver3d-bodystate), variant: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_total\_mass**(body: [RID](class_rid.md#class-rid), total\_mass: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-total-mass)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_set\_transform**(body: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-set-transform)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_soft\_body\_update\_rendering\_server**(body: [RID](class_rid.md#class-rid), rendering\_server\_handler: [PhysicsServer3DRenderingServerHandler](class_physicsserver3drenderingserverhandler.md#class-physicsserver3drenderingserverhandler)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-soft-body-update-rendering-server)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_space\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-space-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **\_space\_get\_contact\_count**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-space-get-contact-count)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PackedVector3Array](class_packedvector3array.md#class-packedvector3array) **\_space\_get\_contacts**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-space-get-contacts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **\_space\_get\_direct\_state**(space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-space-get-direct-state)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **\_space\_get\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver3d.md#enum-physicsserver3d-spaceparameter)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-space-get-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **\_space\_is\_active**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver3dextension-private-method-space-is-active)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_space\_set\_active**(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-space-set-active)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_space\_set\_debug\_contacts**(space: [RID](class_rid.md#class-rid), max\_contacts: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-space-set-debug-contacts)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_space\_set\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver3d.md#enum-physicsserver3d-spaceparameter), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-space-set-param)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_sphere\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-sphere-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_step**(step: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver3dextension-private-method-step)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **\_sync**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-sync)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **\_world\_boundary\_shape\_create**() virtualrequired [🔗](#class-physicsserver3dextension-private-method-world-boundary-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **body\_test\_motion\_is\_excluding\_body**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3dextension-method-body-test-motion-is-excluding-body)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **body\_test\_motion\_is\_excluding\_object**(object: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3dextension-method-body-test-motion-is-excluding-object)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_physicsserver3d.md "PhysicsServer3D") [Next](class_physicsserver3dmanager.md "PhysicsServer3DManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver3d.md "PhysicsServer3D") [Next](class_physicsserver3dmanager.md "PhysicsServer3DManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).