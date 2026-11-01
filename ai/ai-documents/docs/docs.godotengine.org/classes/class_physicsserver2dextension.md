---
title: PhysicsServer2DExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver2dextension.html
crawled_at: "2026-08-13T10:26:24+12:00"
content_hash: c738e9cef072b5135c7b85d9d0691144ea143174f5c169257ed2f7181aee44b5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer2DExtension

* * *

# PhysicsServer2DExtension

**Inherits:** [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) **<** [Object](class_object.md#class-object)

Provides virtual methods that can be overridden to create custom [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) implementations.

## Description

This class extends [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.

Intended for use with GDExtension to create custom implementations of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d).

## Methods

|     |     |
| --- | --- |
| void | [\_area\_add\_shape](#class-physicsserver2dextension-private-method-area-add-shape)(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_attach\_canvas\_instance\_id](#class-physicsserver2dextension-private-method-area-attach-canvas-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_attach\_object\_instance\_id](#class-physicsserver2dextension-private-method-area-attach-object-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_clear\_shapes](#class-physicsserver2dextension-private-method-area-clear-shapes)(area: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_area\_create](#class-physicsserver2dextension-private-method-area-create)() virtualrequired |
| [int](class_int.md#class-int) | [\_area\_get\_canvas\_instance\_id](#class-physicsserver2dextension-private-method-area-get-canvas-instance-id)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_collision\_layer](#class-physicsserver2dextension-private-method-area-get-collision-layer)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_collision\_mask](#class-physicsserver2dextension-private-method-area-get-collision-mask)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_object\_instance\_id](#class-physicsserver2dextension-private-method-area-get-object-instance-id)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_area\_get\_param](#class-physicsserver2dextension-private-method-area-get-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver2d.md#enum-physicsserver2d-areaparameter)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_area\_get\_shape](#class-physicsserver2dextension-private-method-area-get-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_area\_get\_shape\_count](#class-physicsserver2dextension-private-method-area-get-shape-count)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform2D](class_transform2d.md#class-transform2d) | [\_area\_get\_shape\_transform](#class-physicsserver2dextension-private-method-area-get-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_area\_get\_space](#class-physicsserver2dextension-private-method-area-get-space)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform2D](class_transform2d.md#class-transform2d) | [\_area\_get\_transform](#class-physicsserver2dextension-private-method-area-get-transform)(area: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_area\_remove\_shape](#class-physicsserver2dextension-private-method-area-remove-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_area\_monitor\_callback](#class-physicsserver2dextension-private-method-area-set-area-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired |
| void | [\_area\_set\_collision\_layer](#class-physicsserver2dextension-private-method-area-set-collision-layer)(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_collision\_mask](#class-physicsserver2dextension-private-method-area-set-collision-mask)(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_area\_set\_monitor\_callback](#class-physicsserver2dextension-private-method-area-set-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired |
| void | [\_area\_set\_monitorable](#class-physicsserver2dextension-private-method-area-set-monitorable)(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_param](#class-physicsserver2dextension-private-method-area-set-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver2d.md#enum-physicsserver2d-areaparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_area\_set\_pickable](#class-physicsserver2dextension-private-method-area-set-pickable)(area: [RID](class_rid.md#class-rid), pickable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_shape](#class-physicsserver2dextension-private-method-area-set-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_area\_set\_shape\_disabled](#class-physicsserver2dextension-private-method-area-set-shape-disabled)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_area\_set\_shape\_transform](#class-physicsserver2dextension-private-method-area-set-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired |
| void | [\_area\_set\_space](#class-physicsserver2dextension-private-method-area-set-space)(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_area\_set\_transform](#class-physicsserver2dextension-private-method-area-set-transform)(area: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired |
| void | [\_body\_add\_collision\_exception](#class-physicsserver2dextension-private-method-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_add\_constant\_central\_force](#class-physicsserver2dextension-private-method-body-add-constant-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_add\_constant\_force](#class-physicsserver2dextension-private-method-body-add-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_add\_constant\_torque](#class-physicsserver2dextension-private-method-body-add-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_add\_shape](#class-physicsserver2dextension-private-method-body-add-shape)(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_apply\_central\_force](#class-physicsserver2dextension-private-method-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_apply\_central\_impulse](#class-physicsserver2dextension-private-method-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_apply\_force](#class-physicsserver2dextension-private-method-body-apply-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_apply\_impulse](#class-physicsserver2dextension-private-method-body-apply-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_apply\_torque](#class-physicsserver2dextension-private-method-body-apply-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_apply\_torque\_impulse](#class-physicsserver2dextension-private-method-body-apply-torque-impulse)(body: [RID](class_rid.md#class-rid), impulse: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_attach\_canvas\_instance\_id](#class-physicsserver2dextension-private-method-body-attach-canvas-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_attach\_object\_instance\_id](#class-physicsserver2dextension-private-method-body-attach-object-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_clear\_shapes](#class-physicsserver2dextension-private-method-body-clear-shapes)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_body\_collide\_shape](#class-physicsserver2dextension-private-method-body-collide-shape)(body: [RID](class_rid.md#class-rid), body\_shape: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), results: `void*`, result\_max: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_body\_create](#class-physicsserver2dextension-private-method-body-create)() virtualrequired |
| [int](class_int.md#class-int) | [\_body\_get\_canvas\_instance\_id](#class-physicsserver2dextension-private-method-body-get-canvas-instance-id)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] | [\_body\_get\_collision\_exceptions](#class-physicsserver2dextension-private-method-body-get-collision-exceptions)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_collision\_layer](#class-physicsserver2dextension-private-method-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_collision\_mask](#class-physicsserver2dextension-private-method-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_body\_get\_collision\_priority](#class-physicsserver2dextension-private-method-body-get-collision-priority)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Vector2](class_vector2.md#class-vector2) | [\_body\_get\_constant\_force](#class-physicsserver2dextension-private-method-body-get-constant-force)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_body\_get\_constant\_torque](#class-physicsserver2dextension-private-method-body-get-constant-torque)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_body\_get\_contacts\_reported\_depth\_threshold](#class-physicsserver2dextension-private-method-body-get-contacts-reported-depth-threshold)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [CCDMode](class_physicsserver2d.md#enum-physicsserver2d-ccdmode) | [\_body\_get\_continuous\_collision\_detection\_mode](#class-physicsserver2dextension-private-method-body-get-continuous-collision-detection-mode)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) | [\_body\_get\_direct\_state](#class-physicsserver2dextension-private-method-body-get-direct-state)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| [int](class_int.md#class-int) | [\_body\_get\_max\_contacts\_reported](#class-physicsserver2dextension-private-method-body-get-max-contacts-reported)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [BodyMode](class_physicsserver2d.md#enum-physicsserver2d-bodymode) | [\_body\_get\_mode](#class-physicsserver2dextension-private-method-body-get-mode)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_object\_instance\_id](#class-physicsserver2dextension-private-method-body-get-object-instance-id)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_body\_get\_param](#class-physicsserver2dextension-private-method-body-get-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver2d.md#enum-physicsserver2d-bodyparameter)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_body\_get\_shape](#class-physicsserver2dextension-private-method-body-get-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [int](class_int.md#class-int) | [\_body\_get\_shape\_count](#class-physicsserver2dextension-private-method-body-get-shape-count)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Transform2D](class_transform2d.md#class-transform2d) | [\_body\_get\_shape\_transform](#class-physicsserver2dextension-private-method-body-get-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_body\_get\_space](#class-physicsserver2dextension-private-method-body-get-space)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_body\_get\_state](#class-physicsserver2dextension-private-method-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver2d.md#enum-physicsserver2d-bodystate)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_body\_is\_omitting\_force\_integration](#class-physicsserver2dextension-private-method-body-is-omitting-force-integration)(body: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_body\_remove\_collision\_exception](#class-physicsserver2dextension-private-method-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_remove\_shape](#class-physicsserver2dextension-private-method-body-remove-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_reset\_mass\_properties](#class-physicsserver2dextension-private-method-body-reset-mass-properties)(body: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_axis\_velocity](#class-physicsserver2dextension-private-method-body-set-axis-velocity)(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_set\_collision\_layer](#class-physicsserver2dextension-private-method-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_collision\_mask](#class-physicsserver2dextension-private-method-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_collision\_priority](#class-physicsserver2dextension-private-method-body-set-collision-priority)(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_constant\_force](#class-physicsserver2dextension-private-method-body-set-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired |
| void | [\_body\_set\_constant\_torque](#class-physicsserver2dextension-private-method-body-set-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_contacts\_reported\_depth\_threshold](#class-physicsserver2dextension-private-method-body-set-contacts-reported-depth-threshold)(body: [RID](class_rid.md#class-rid), threshold: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_continuous\_collision\_detection\_mode](#class-physicsserver2dextension-private-method-body-set-continuous-collision-detection-mode)(body: [RID](class_rid.md#class-rid), mode: [CCDMode](class_physicsserver2d.md#enum-physicsserver2d-ccdmode)) virtualrequired |
| void | [\_body\_set\_force\_integration\_callback](#class-physicsserver2dextension-private-method-body-set-force-integration-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_max\_contacts\_reported](#class-physicsserver2dextension-private-method-body-set-max-contacts-reported)(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) virtualrequired |
| void | [\_body\_set\_mode](#class-physicsserver2dextension-private-method-body-set-mode)(body: [RID](class_rid.md#class-rid), mode: [BodyMode](class_physicsserver2d.md#enum-physicsserver2d-bodymode)) virtualrequired |
| void | [\_body\_set\_omit\_force\_integration](#class-physicsserver2dextension-private-method-body-set-omit-force-integration)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_param](#class-physicsserver2dextension-private-method-body-set-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver2d.md#enum-physicsserver2d-bodyparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_pickable](#class-physicsserver2dextension-private-method-body-set-pickable)(body: [RID](class_rid.md#class-rid), pickable: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_shape](#class-physicsserver2dextension-private-method-body-set-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_shape\_as\_one\_way\_collision](#class-physicsserver2dextension-private-method-body-set-shape-as-one-way-collision)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool), margin: [float](class_float.md#class-float)) virtualrequired |
| void | [\_body\_set\_shape\_disabled](#class-physicsserver2dextension-private-method-body-set-shape-disabled)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_body\_set\_shape\_transform](#class-physicsserver2dextension-private-method-body-set-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired |
| void | [\_body\_set\_space](#class-physicsserver2dextension-private-method-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_body\_set\_state](#class-physicsserver2dextension-private-method-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver2d.md#enum-physicsserver2d-bodystate), value: [Variant](class_variant.md#class-variant)) virtualrequired |
| void | [\_body\_set\_state\_sync\_callback](#class-physicsserver2dextension-private-method-body-set-state-sync-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_body\_test\_motion](#class-physicsserver2dextension-private-method-body-test-motion)(body: [RID](class_rid.md#class-rid), from: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collide\_separation\_ray: [bool](class_bool.md#class-bool), recovery\_as\_collision: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionMotionResult*`) virtualrequiredconst |
| [RID](class_rid.md#class-rid) | [\_capsule\_shape\_create](#class-physicsserver2dextension-private-method-capsule-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_circle\_shape\_create](#class-physicsserver2dextension-private-method-circle-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_concave\_polygon\_shape\_create](#class-physicsserver2dextension-private-method-concave-polygon-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_convex\_polygon\_shape\_create](#class-physicsserver2dextension-private-method-convex-polygon-shape-create)() virtualrequired |
| [float](class_float.md#class-float) | [\_damped\_spring\_joint\_get\_param](#class-physicsserver2dextension-private-method-damped-spring-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](class_physicsserver2d.md#enum-physicsserver2d-dampedspringparam)) virtualrequiredconst |
| void | [\_damped\_spring\_joint\_set\_param](#class-physicsserver2dextension-private-method-damped-spring-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](class_physicsserver2d.md#enum-physicsserver2d-dampedspringparam), value: [float](class_float.md#class-float)) virtualrequired |
| void | [\_end\_sync](#class-physicsserver2dextension-private-method-end-sync)() virtualrequired |
| void | [\_finish](#class-physicsserver2dextension-private-method-finish)() virtualrequired |
| void | [\_flush\_queries](#class-physicsserver2dextension-private-method-flush-queries)() virtualrequired |
| void | [\_free\_rid](#class-physicsserver2dextension-private-method-free-rid)(rid: [RID](class_rid.md#class-rid)) virtualrequired |
| [int](class_int.md#class-int) | [\_get\_process\_info](#class-physicsserver2dextension-private-method-get-process-info)(process\_info: [ProcessInfo](class_physicsserver2d.md#enum-physicsserver2d-processinfo)) virtualrequired |
| void | [\_init](#class-physicsserver2dextension-private-method-init)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_is\_flushing\_queries](#class-physicsserver2dextension-private-method-is-flushing-queries)() virtualrequiredconst |
| void | [\_joint\_clear](#class-physicsserver2dextension-private-method-joint-clear)(joint: [RID](class_rid.md#class-rid)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_joint\_create](#class-physicsserver2dextension-private-method-joint-create)() virtualrequired |
| void | [\_joint\_disable\_collisions\_between\_bodies](#class-physicsserver2dextension-private-method-joint-disable-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) virtualrequired |
| [float](class_float.md#class-float) | [\_joint\_get\_param](#class-physicsserver2dextension-private-method-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [JointParam](class_physicsserver2d.md#enum-physicsserver2d-jointparam)) virtualrequiredconst |
| [JointType](class_physicsserver2d.md#enum-physicsserver2d-jointtype) | [\_joint\_get\_type](#class-physicsserver2dextension-private-method-joint-get-type)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_joint\_is\_disabled\_collisions\_between\_bodies](#class-physicsserver2dextension-private-method-joint-is-disabled-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_joint\_make\_damped\_spring](#class-physicsserver2dextension-private-method-joint-make-damped-spring)(joint: [RID](class_rid.md#class-rid), anchor\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_joint\_make\_groove](#class-physicsserver2dextension-private-method-joint-make-groove)(joint: [RID](class_rid.md#class-rid), a\_groove1: [Vector2](class_vector2.md#class-vector2), a\_groove2: [Vector2](class_vector2.md#class-vector2), b\_anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_joint\_make\_pin](#class-physicsserver2dextension-private-method-joint-make-pin)(joint: [RID](class_rid.md#class-rid), anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired |
| void | [\_joint\_set\_param](#class-physicsserver2dextension-private-method-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [JointParam](class_physicsserver2d.md#enum-physicsserver2d-jointparam), value: [float](class_float.md#class-float)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_pin\_joint\_get\_flag](#class-physicsserver2dextension-private-method-pin-joint-get-flag)(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](class_physicsserver2d.md#enum-physicsserver2d-pinjointflag)) virtualrequiredconst |
| [float](class_float.md#class-float) | [\_pin\_joint\_get\_param](#class-physicsserver2dextension-private-method-pin-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver2d.md#enum-physicsserver2d-pinjointparam)) virtualrequiredconst |
| void | [\_pin\_joint\_set\_flag](#class-physicsserver2dextension-private-method-pin-joint-set-flag)(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](class_physicsserver2d.md#enum-physicsserver2d-pinjointflag), enabled: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_pin\_joint\_set\_param](#class-physicsserver2dextension-private-method-pin-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver2d.md#enum-physicsserver2d-pinjointparam), value: [float](class_float.md#class-float)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_rectangle\_shape\_create](#class-physicsserver2dextension-private-method-rectangle-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_segment\_shape\_create](#class-physicsserver2dextension-private-method-segment-shape-create)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_separation\_ray\_shape\_create](#class-physicsserver2dextension-private-method-separation-ray-shape-create)() virtualrequired |
| void | [\_set\_active](#class-physicsserver2dextension-private-method-set-active)(active: [bool](class_bool.md#class-bool)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_shape\_collide](#class-physicsserver2dextension-private-method-shape-collide)(shape\_A: [RID](class_rid.md#class-rid), xform\_A: [Transform2D](class_transform2d.md#class-transform2d), motion\_A: [Vector2](class_vector2.md#class-vector2), shape\_B: [RID](class_rid.md#class-rid), xform\_B: [Transform2D](class_transform2d.md#class-transform2d), motion\_B: [Vector2](class_vector2.md#class-vector2), results: `void*`, result\_max: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired |
| [float](class_float.md#class-float) | [\_shape\_get\_custom\_solver\_bias](#class-physicsserver2dextension-private-method-shape-get-custom-solver-bias)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [Variant](class_variant.md#class-variant) | [\_shape\_get\_data](#class-physicsserver2dextension-private-method-shape-get-data)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [ShapeType](class_physicsserver2d.md#enum-physicsserver2d-shapetype) | [\_shape\_get\_type](#class-physicsserver2dextension-private-method-shape-get-type)(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_shape\_set\_custom\_solver\_bias](#class-physicsserver2dextension-private-method-shape-set-custom-solver-bias)(shape: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) virtualrequired |
| void | [\_shape\_set\_data](#class-physicsserver2dextension-private-method-shape-set-data)(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) virtualrequired |
| [RID](class_rid.md#class-rid) | [\_space\_create](#class-physicsserver2dextension-private-method-space-create)() virtualrequired |
| [int](class_int.md#class-int) | [\_space\_get\_contact\_count](#class-physicsserver2dextension-private-method-space-get-contact-count)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) | [\_space\_get\_contacts](#class-physicsserver2dextension-private-method-space-get-contacts)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) | [\_space\_get\_direct\_state](#class-physicsserver2dextension-private-method-space-get-direct-state)(space: [RID](class_rid.md#class-rid)) virtualrequired |
| [float](class_float.md#class-float) | [\_space\_get\_param](#class-physicsserver2dextension-private-method-space-get-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver2d.md#enum-physicsserver2d-spaceparameter)) virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_space\_is\_active](#class-physicsserver2dextension-private-method-space-is-active)(space: [RID](class_rid.md#class-rid)) virtualrequiredconst |
| void | [\_space\_set\_active](#class-physicsserver2dextension-private-method-space-set-active)(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_space\_set\_debug\_contacts](#class-physicsserver2dextension-private-method-space-set-debug-contacts)(space: [RID](class_rid.md#class-rid), max\_contacts: [int](class_int.md#class-int)) virtualrequired |
| void | [\_space\_set\_param](#class-physicsserver2dextension-private-method-space-set-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver2d.md#enum-physicsserver2d-spaceparameter), value: [float](class_float.md#class-float)) virtualrequired |
| void | [\_step](#class-physicsserver2dextension-private-method-step)(step: [float](class_float.md#class-float)) virtualrequired |
| void | [\_sync](#class-physicsserver2dextension-private-method-sync)() virtualrequired |
| [RID](class_rid.md#class-rid) | [\_world\_boundary\_shape\_create](#class-physicsserver2dextension-private-method-world-boundary-shape-create)() virtualrequired |
| [bool](class_bool.md#class-bool) | [body\_test\_motion\_is\_excluding\_body](#class-physicsserver2dextension-method-body-test-motion-is-excluding-body)(body: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [body\_test\_motion\_is\_excluding\_object](#class-physicsserver2dextension-method-body-test-motion-is-excluding-object)(object: [int](class_int.md#class-int)) const |

* * *

## Method Descriptions

void **\_area\_add\_shape**(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-add-shape)

Overridable version of [PhysicsServer2D.area\_add\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-area-add-shape).

* * *

void **\_area\_attach\_canvas\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-attach-canvas-instance-id)

Overridable version of [PhysicsServer2D.area\_attach\_canvas\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-area-attach-canvas-instance-id).

* * *

void **\_area\_attach\_object\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-attach-object-instance-id)

Overridable version of [PhysicsServer2D.area\_attach\_object\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-area-attach-object-instance-id).

* * *

void **\_area\_clear\_shapes**(area: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-clear-shapes)

Overridable version of [PhysicsServer2D.area\_clear\_shapes()](class_physicsserver2d.md#class-physicsserver2d-method-area-clear-shapes).

* * *

[RID](class_rid.md#class-rid) **\_area\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-create)

Overridable version of [PhysicsServer2D.area\_create()](class_physicsserver2d.md#class-physicsserver2d-method-area-create).

* * *

[int](class_int.md#class-int) **\_area\_get\_canvas\_instance\_id**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-canvas-instance-id)

Overridable version of [PhysicsServer2D.area\_get\_canvas\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-canvas-instance-id).

* * *

[int](class_int.md#class-int) **\_area\_get\_collision\_layer**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-collision-layer)

Overridable version of [PhysicsServer2D.area\_get\_collision\_layer()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-collision-layer).

* * *

[int](class_int.md#class-int) **\_area\_get\_collision\_mask**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-collision-mask)

Overridable version of [PhysicsServer2D.area\_get\_collision\_mask()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-collision-mask).

* * *

[int](class_int.md#class-int) **\_area\_get\_object\_instance\_id**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-object-instance-id)

Overridable version of [PhysicsServer2D.area\_get\_object\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-object-instance-id).

* * *

[Variant](class_variant.md#class-variant) **\_area\_get\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver2d.md#enum-physicsserver2d-areaparameter)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-param)

Overridable version of [PhysicsServer2D.area\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-param).

* * *

[RID](class_rid.md#class-rid) **\_area\_get\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-shape)

Overridable version of [PhysicsServer2D.area\_get\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-shape).

* * *

[int](class_int.md#class-int) **\_area\_get\_shape\_count**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-shape-count)

Overridable version of [PhysicsServer2D.area\_get\_shape\_count()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-shape-count).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **\_area\_get\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-shape-transform)

Overridable version of [PhysicsServer2D.area\_get\_shape\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-shape-transform).

* * *

[RID](class_rid.md#class-rid) **\_area\_get\_space**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-space)

Overridable version of [PhysicsServer2D.area\_get\_space()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-space).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **\_area\_get\_transform**(area: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-area-get-transform)

Overridable version of [PhysicsServer2D.area\_get\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-area-get-transform).

* * *

void **\_area\_remove\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-remove-shape)

Overridable version of [PhysicsServer2D.area\_remove\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-area-remove-shape).

* * *

void **\_area\_set\_area\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-area-monitor-callback)

Overridable version of [PhysicsServer2D.area\_set\_area\_monitor\_callback()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-area-monitor-callback).

* * *

void **\_area\_set\_collision\_layer**(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-collision-layer)

Overridable version of [PhysicsServer2D.area\_set\_collision\_layer()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-collision-layer).

* * *

void **\_area\_set\_collision\_mask**(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-collision-mask)

Overridable version of [PhysicsServer2D.area\_set\_collision\_mask()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-collision-mask).

* * *

void **\_area\_set\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-monitor-callback)

Overridable version of [PhysicsServer2D.area\_set\_monitor\_callback()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-monitor-callback).

* * *

void **\_area\_set\_monitorable**(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-monitorable)

Overridable version of [PhysicsServer2D.area\_set\_monitorable()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-monitorable).

* * *

void **\_area\_set\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](class_physicsserver2d.md#enum-physicsserver2d-areaparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-param)

Overridable version of [PhysicsServer2D.area\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-param).

* * *

void **\_area\_set\_pickable**(area: [RID](class_rid.md#class-rid), pickable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-pickable)

If set to `true`, allows the area with the given [RID](class_rid.md#class-rid) to detect mouse inputs when the mouse cursor is hovering on it.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `area_set_pickable` method. Corresponds to [CollisionObject2D.input\_pickable](class_collisionobject2d.md#class-collisionobject2d-property-input-pickable).

* * *

void **\_area\_set\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-shape)

Overridable version of [PhysicsServer2D.area\_set\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-shape).

* * *

void **\_area\_set\_shape\_disabled**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-shape-disabled)

Overridable version of [PhysicsServer2D.area\_set\_shape\_disabled()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-shape-disabled).

* * *

void **\_area\_set\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-shape-transform)

Overridable version of [PhysicsServer2D.area\_set\_shape\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-shape-transform).

* * *

void **\_area\_set\_space**(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-space)

Overridable version of [PhysicsServer2D.area\_set\_space()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-space).

* * *

void **\_area\_set\_transform**(area: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-area-set-transform)

Overridable version of [PhysicsServer2D.area\_set\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-area-set-transform).

* * *

void **\_body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-add-collision-exception)

Overridable version of [PhysicsServer2D.body\_add\_collision\_exception()](class_physicsserver2d.md#class-physicsserver2d-method-body-add-collision-exception).

* * *

void **\_body\_add\_constant\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-add-constant-central-force)

Overridable version of [PhysicsServer2D.body\_add\_constant\_central\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-add-constant-central-force).

* * *

void **\_body\_add\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-add-constant-force)

Overridable version of [PhysicsServer2D.body\_add\_constant\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-add-constant-force).

* * *

void **\_body\_add\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-add-constant-torque)

Overridable version of [PhysicsServer2D.body\_add\_constant\_torque()](class_physicsserver2d.md#class-physicsserver2d-method-body-add-constant-torque).

* * *

void **\_body\_add\_shape**(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-add-shape)

Overridable version of [PhysicsServer2D.body\_add\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-body-add-shape).

* * *

void **\_body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-central-force)

Overridable version of [PhysicsServer2D.body\_apply\_central\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-central-force).

* * *

void **\_body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-central-impulse)

Overridable version of [PhysicsServer2D.body\_apply\_central\_impulse()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-central-impulse).

* * *

void **\_body\_apply\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-force)

Overridable version of [PhysicsServer2D.body\_apply\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-force).

* * *

void **\_body\_apply\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-impulse)

Overridable version of [PhysicsServer2D.body\_apply\_impulse()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-impulse).

* * *

void **\_body\_apply\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-torque)

Overridable version of [PhysicsServer2D.body\_apply\_torque()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-torque).

* * *

void **\_body\_apply\_torque\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-apply-torque-impulse)

Overridable version of [PhysicsServer2D.body\_apply\_torque\_impulse()](class_physicsserver2d.md#class-physicsserver2d-method-body-apply-torque-impulse).

* * *

void **\_body\_attach\_canvas\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-attach-canvas-instance-id)

Overridable version of [PhysicsServer2D.body\_attach\_canvas\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-body-attach-canvas-instance-id).

* * *

void **\_body\_attach\_object\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-attach-object-instance-id)

Overridable version of [PhysicsServer2D.body\_attach\_object\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-body-attach-object-instance-id).

* * *

void **\_body\_clear\_shapes**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-clear-shapes)

Overridable version of [PhysicsServer2D.body\_clear\_shapes()](class_physicsserver2d.md#class-physicsserver2d-method-body-clear-shapes).

* * *

[bool](class_bool.md#class-bool) **\_body\_collide\_shape**(body: [RID](class_rid.md#class-rid), body\_shape: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid), shape\_xform: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), results: `void*`, result\_max: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-collide-shape)

Given a `body`, a `shape`, and their respective parameters, this method should return `true` if a collision between the two would occur, with additional details passed in `results`.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `shape_collide` method. Corresponds to [PhysicsDirectSpaceState2D.collide\_shape()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-collide-shape).

* * *

[RID](class_rid.md#class-rid) **\_body\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-create)

Overridable version of [PhysicsServer2D.body\_create()](class_physicsserver2d.md#class-physicsserver2d-method-body-create).

* * *

[int](class_int.md#class-int) **\_body\_get\_canvas\_instance\_id**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-canvas-instance-id)

Overridable version of [PhysicsServer2D.body\_get\_canvas\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-canvas-instance-id).

* * *

[Array](class_array.md#class-array)\[ [RID](class_rid.md#class-rid)\] **\_body\_get\_collision\_exceptions**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-collision-exceptions)

Returns the [RID](class_rid.md#class-rid) s of all bodies added as collision exceptions for the given `body`. See also [\_body\_add\_collision\_exception()](#class-physicsserver2dextension-private-method-body-add-collision-exception) and [\_body\_remove\_collision\_exception()](#class-physicsserver2dextension-private-method-body-remove-collision-exception).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `body_get_collision_exceptions` method. Corresponds to [PhysicsBody2D.get\_collision\_exceptions()](class_physicsbody2d.md#class-physicsbody2d-method-get-collision-exceptions).

* * *

[int](class_int.md#class-int) **\_body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-collision-layer)

Overridable version of [PhysicsServer2D.body\_get\_collision\_layer()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-collision-layer).

* * *

[int](class_int.md#class-int) **\_body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-collision-mask)

Overridable version of [PhysicsServer2D.body\_get\_collision\_mask()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-collision-mask).

* * *

[float](class_float.md#class-float) **\_body\_get\_collision\_priority**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-collision-priority)

Overridable version of [PhysicsServer2D.body\_get\_collision\_priority()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-collision-priority).

* * *

[Vector2](class_vector2.md#class-vector2) **\_body\_get\_constant\_force**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-constant-force)

Overridable version of [PhysicsServer2D.body\_get\_constant\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-constant-force).

* * *

[float](class_float.md#class-float) **\_body\_get\_constant\_torque**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-constant-torque)

Overridable version of [PhysicsServer2D.body\_get\_constant\_torque()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-constant-torque).

* * *

[float](class_float.md#class-float) **\_body\_get\_contacts\_reported\_depth\_threshold**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-contacts-reported-depth-threshold)

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `body_get_contacts_reported_depth_threshold` method.

**Note:** This method is currently unused by Godot's default physics implementation.

* * *

[CCDMode](class_physicsserver2d.md#enum-physicsserver2d-ccdmode) **\_body\_get\_continuous\_collision\_detection\_mode**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-continuous-collision-detection-mode)

Overridable version of [PhysicsServer2D.body\_get\_continuous\_collision\_detection\_mode()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-continuous-collision-detection-mode).

* * *

[PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) **\_body\_get\_direct\_state**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-get-direct-state)

Overridable version of [PhysicsServer2D.body\_get\_direct\_state()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-direct-state).

* * *

[int](class_int.md#class-int) **\_body\_get\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-max-contacts-reported)

Overridable version of [PhysicsServer2D.body\_get\_max\_contacts\_reported()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-max-contacts-reported).

* * *

[BodyMode](class_physicsserver2d.md#enum-physicsserver2d-bodymode) **\_body\_get\_mode**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-mode)

Overridable version of [PhysicsServer2D.body\_get\_mode()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-mode).

* * *

[int](class_int.md#class-int) **\_body\_get\_object\_instance\_id**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-object-instance-id)

Overridable version of [PhysicsServer2D.body\_get\_object\_instance\_id()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-object-instance-id).

* * *

[Variant](class_variant.md#class-variant) **\_body\_get\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver2d.md#enum-physicsserver2d-bodyparameter)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-param)

Overridable version of [PhysicsServer2D.body\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-param).

* * *

[RID](class_rid.md#class-rid) **\_body\_get\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-shape)

Overridable version of [PhysicsServer2D.body\_get\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-shape).

* * *

[int](class_int.md#class-int) **\_body\_get\_shape\_count**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-shape-count)

Overridable version of [PhysicsServer2D.body\_get\_shape\_count()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-shape-count).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **\_body\_get\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-shape-transform)

Overridable version of [PhysicsServer2D.body\_get\_shape\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-shape-transform).

* * *

[RID](class_rid.md#class-rid) **\_body\_get\_space**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-space)

Overridable version of [PhysicsServer2D.body\_get\_space()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-space).

* * *

[Variant](class_variant.md#class-variant) **\_body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver2d.md#enum-physicsserver2d-bodystate)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-get-state)

Overridable version of [PhysicsServer2D.body\_get\_state()](class_physicsserver2d.md#class-physicsserver2d-method-body-get-state).

* * *

[bool](class_bool.md#class-bool) **\_body\_is\_omitting\_force\_integration**(body: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-is-omitting-force-integration)

Overridable version of [PhysicsServer2D.body\_is\_omitting\_force\_integration()](class_physicsserver2d.md#class-physicsserver2d-method-body-is-omitting-force-integration).

* * *

void **\_body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-remove-collision-exception)

Overridable version of [PhysicsServer2D.body\_remove\_collision\_exception()](class_physicsserver2d.md#class-physicsserver2d-method-body-remove-collision-exception).

* * *

void **\_body\_remove\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-remove-shape)

Overridable version of [PhysicsServer2D.body\_remove\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-body-remove-shape).

* * *

void **\_body\_reset\_mass\_properties**(body: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-reset-mass-properties)

Overridable version of [PhysicsServer2D.body\_reset\_mass\_properties()](class_physicsserver2d.md#class-physicsserver2d-method-body-reset-mass-properties).

* * *

void **\_body\_set\_axis\_velocity**(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-axis-velocity)

Overridable version of [PhysicsServer2D.body\_set\_axis\_velocity()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-axis-velocity).

* * *

void **\_body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-collision-layer)

Overridable version of [PhysicsServer2D.body\_set\_collision\_layer()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-collision-layer).

* * *

void **\_body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-collision-mask)

Overridable version of [PhysicsServer2D.body\_set\_collision\_mask()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-collision-mask).

* * *

void **\_body\_set\_collision\_priority**(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-collision-priority)

Overridable version of [PhysicsServer2D.body\_set\_collision\_priority()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-collision-priority).

* * *

void **\_body\_set\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-constant-force)

Overridable version of [PhysicsServer2D.body\_set\_constant\_force()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-constant-force).

* * *

void **\_body\_set\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-constant-torque)

Overridable version of [PhysicsServer2D.body\_set\_constant\_torque()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-constant-torque).

* * *

void **\_body\_set\_contacts\_reported\_depth\_threshold**(body: [RID](class_rid.md#class-rid), threshold: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-contacts-reported-depth-threshold)

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `body_set_contacts_reported_depth_threshold` method.

**Note:** This method is currently unused by Godot's default physics implementation.

* * *

void **\_body\_set\_continuous\_collision\_detection\_mode**(body: [RID](class_rid.md#class-rid), mode: [CCDMode](class_physicsserver2d.md#enum-physicsserver2d-ccdmode)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-continuous-collision-detection-mode)

Overridable version of [PhysicsServer2D.body\_set\_continuous\_collision\_detection\_mode()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-continuous-collision-detection-mode).

* * *

void **\_body\_set\_force\_integration\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-force-integration-callback)

Overridable version of [PhysicsServer2D.body\_set\_force\_integration\_callback()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-force-integration-callback).

* * *

void **\_body\_set\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-max-contacts-reported)

Overridable version of [PhysicsServer2D.body\_set\_max\_contacts\_reported()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-max-contacts-reported).

* * *

void **\_body\_set\_mode**(body: [RID](class_rid.md#class-rid), mode: [BodyMode](class_physicsserver2d.md#enum-physicsserver2d-bodymode)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-mode)

Overridable version of [PhysicsServer2D.body\_set\_mode()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-mode).

* * *

void **\_body\_set\_omit\_force\_integration**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-omit-force-integration)

Overridable version of [PhysicsServer2D.body\_set\_omit\_force\_integration()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-omit-force-integration).

* * *

void **\_body\_set\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](class_physicsserver2d.md#enum-physicsserver2d-bodyparameter), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-param)

Overridable version of [PhysicsServer2D.body\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-param).

* * *

void **\_body\_set\_pickable**(body: [RID](class_rid.md#class-rid), pickable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-pickable)

If set to `true`, allows the body with the given [RID](class_rid.md#class-rid) to detect mouse inputs when the mouse cursor is hovering on it.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `body_set_pickable` method. Corresponds to [CollisionObject2D.input\_pickable](class_collisionobject2d.md#class-collisionobject2d-property-input-pickable).

* * *

void **\_body\_set\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-shape)

Overridable version of [PhysicsServer2D.body\_set\_shape()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-shape).

* * *

void **\_body\_set\_shape\_as\_one\_way\_collision**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool), margin: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-shape-as-one-way-collision)

Overridable version of [PhysicsServer2D.body\_set\_shape\_as\_one\_way\_collision()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-shape-as-one-way-collision).

* * *

void **\_body\_set\_shape\_disabled**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-shape-disabled)

Overridable version of [PhysicsServer2D.body\_set\_shape\_disabled()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-shape-disabled).

* * *

void **\_body\_set\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-shape-transform)

Overridable version of [PhysicsServer2D.body\_set\_shape\_transform()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-shape-transform).

* * *

void **\_body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-space)

Overridable version of [PhysicsServer2D.body\_set\_space()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-space).

* * *

void **\_body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](class_physicsserver2d.md#enum-physicsserver2d-bodystate), value: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-state)

Overridable version of [PhysicsServer2D.body\_set\_state()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-state).

* * *

void **\_body\_set\_state\_sync\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-body-set-state-sync-callback)

Assigns the `body` to call the given `callable` during the synchronization phase of the loop, before [\_step()](#class-physicsserver2dextension-private-method-step) is called. See also [\_sync()](#class-physicsserver2dextension-private-method-sync).

Overridable version of [PhysicsServer2D.body\_set\_state\_sync\_callback()](class_physicsserver2d.md#class-physicsserver2d-method-body-set-state-sync-callback).

* * *

[bool](class_bool.md#class-bool) **\_body\_test\_motion**(body: [RID](class_rid.md#class-rid), from: [Transform2D](class_transform2d.md#class-transform2d), motion: [Vector2](class_vector2.md#class-vector2), margin: [float](class_float.md#class-float), collide\_separation\_ray: [bool](class_bool.md#class-bool), recovery\_as\_collision: [bool](class_bool.md#class-bool), result: `PhysicsServer2DExtensionMotionResult*`) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-body-test-motion)

Overridable version of [PhysicsServer2D.body\_test\_motion()](class_physicsserver2d.md#class-physicsserver2d-method-body-test-motion). Unlike the exposed implementation, this method does not receive all of the arguments inside a [PhysicsTestMotionParameters2D](class_physicstestmotionparameters2d.md#class-physicstestmotionparameters2d).

* * *

[RID](class_rid.md#class-rid) **\_capsule\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-capsule-shape-create)

Overridable version of [PhysicsServer2D.capsule\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-capsule-shape-create).

* * *

[RID](class_rid.md#class-rid) **\_circle\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-circle-shape-create)

Overridable version of [PhysicsServer2D.circle\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-circle-shape-create).

* * *

[RID](class_rid.md#class-rid) **\_concave\_polygon\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-concave-polygon-shape-create)

Overridable version of [PhysicsServer2D.concave\_polygon\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-concave-polygon-shape-create).

* * *

[RID](class_rid.md#class-rid) **\_convex\_polygon\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-convex-polygon-shape-create)

Overridable version of [PhysicsServer2D.convex\_polygon\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-convex-polygon-shape-create).

* * *

[float](class_float.md#class-float) **\_damped\_spring\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](class_physicsserver2d.md#enum-physicsserver2d-dampedspringparam)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-damped-spring-joint-get-param)

Overridable version of [PhysicsServer2D.damped\_spring\_joint\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-damped-spring-joint-get-param).

* * *

void **\_damped\_spring\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](class_physicsserver2d.md#enum-physicsserver2d-dampedspringparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-damped-spring-joint-set-param)

Overridable version of [PhysicsServer2D.damped\_spring\_joint\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-damped-spring-joint-set-param).

* * *

void **\_end\_sync**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-end-sync)

Called to indicate that the physics server has stopped synchronizing. It is in the loop's iteration/physics phase, and can access physics objects even if running on a separate thread. See also [\_sync()](#class-physicsserver2dextension-private-method-sync).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `end_sync` method.

* * *

void **\_finish**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-finish)

Called when the main loop finalizes to shut down the physics server. See also [MainLoop.\_finalize()](class_mainloop.md#class-mainloop-private-method-finalize) and [\_init()](#class-physicsserver2dextension-private-method-init).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `finish` method.

* * *

void **\_flush\_queries**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-flush-queries)

Called every physics step before [\_step()](#class-physicsserver2dextension-private-method-step) to process all remaining queries.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `flush_queries` method.

* * *

void **\_free\_rid**(rid: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-free-rid)

Overridable version of [PhysicsServer2D.free\_rid()](class_physicsserver2d.md#class-physicsserver2d-method-free-rid).

* * *

[int](class_int.md#class-int) **\_get\_process\_info**(process\_info: [ProcessInfo](class_physicsserver2d.md#enum-physicsserver2d-processinfo)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-get-process-info)

Overridable version of [PhysicsServer2D.get\_process\_info()](class_physicsserver2d.md#class-physicsserver2d-method-get-process-info).

* * *

void **\_init**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-init)

Called when the main loop is initialized and creates a new instance of this physics server. See also [MainLoop.\_initialize()](class_mainloop.md#class-mainloop-private-method-initialize) and [\_finish()](#class-physicsserver2dextension-private-method-finish).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `init` method.

* * *

[bool](class_bool.md#class-bool) **\_is\_flushing\_queries**() virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-is-flushing-queries)

Overridable method that should return `true` when the physics server is processing queries. See also [\_flush\_queries()](#class-physicsserver2dextension-private-method-flush-queries).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `is_flushing_queries` method.

* * *

void **\_joint\_clear**(joint: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-clear)

Overridable version of [PhysicsServer2D.joint\_clear()](class_physicsserver2d.md#class-physicsserver2d-method-joint-clear).

* * *

[RID](class_rid.md#class-rid) **\_joint\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-create)

Overridable version of [PhysicsServer2D.joint\_create()](class_physicsserver2d.md#class-physicsserver2d-method-joint-create).

* * *

void **\_joint\_disable\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-disable-collisions-between-bodies)

Overridable version of [PhysicsServer2D.joint\_disable\_collisions\_between\_bodies()](class_physicsserver2d.md#class-physicsserver2d-method-joint-disable-collisions-between-bodies).

* * *

[float](class_float.md#class-float) **\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [JointParam](class_physicsserver2d.md#enum-physicsserver2d-jointparam)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-joint-get-param)

Overridable version of [PhysicsServer2D.joint\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-joint-get-param).

* * *

[JointType](class_physicsserver2d.md#enum-physicsserver2d-jointtype) **\_joint\_get\_type**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-joint-get-type)

Overridable version of [PhysicsServer2D.joint\_get\_type()](class_physicsserver2d.md#class-physicsserver2d-method-joint-get-type).

* * *

[bool](class_bool.md#class-bool) **\_joint\_is\_disabled\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-joint-is-disabled-collisions-between-bodies)

Overridable version of [PhysicsServer2D.joint\_is\_disabled\_collisions\_between\_bodies()](class_physicsserver2d.md#class-physicsserver2d-method-joint-is-disabled-collisions-between-bodies).

* * *

void **\_joint\_make\_damped\_spring**(joint: [RID](class_rid.md#class-rid), anchor\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-make-damped-spring)

Overridable version of [PhysicsServer2D.joint\_make\_damped\_spring()](class_physicsserver2d.md#class-physicsserver2d-method-joint-make-damped-spring).

* * *

void **\_joint\_make\_groove**(joint: [RID](class_rid.md#class-rid), a\_groove1: [Vector2](class_vector2.md#class-vector2), a\_groove2: [Vector2](class_vector2.md#class-vector2), b\_anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-make-groove)

Overridable version of [PhysicsServer2D.joint\_make\_groove()](class_physicsserver2d.md#class-physicsserver2d-method-joint-make-groove).

* * *

void **\_joint\_make\_pin**(joint: [RID](class_rid.md#class-rid), anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-make-pin)

Overridable version of [PhysicsServer2D.joint\_make\_pin()](class_physicsserver2d.md#class-physicsserver2d-method-joint-make-pin).

* * *

void **\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [JointParam](class_physicsserver2d.md#enum-physicsserver2d-jointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-joint-set-param)

Overridable version of [PhysicsServer2D.joint\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-joint-set-param).

* * *

[bool](class_bool.md#class-bool) **\_pin\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](class_physicsserver2d.md#enum-physicsserver2d-pinjointflag)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-pin-joint-get-flag)

Overridable version of [PhysicsServer2D.pin\_joint\_get\_flag()](class_physicsserver2d.md#class-physicsserver2d-method-pin-joint-get-flag).

* * *

[float](class_float.md#class-float) **\_pin\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver2d.md#enum-physicsserver2d-pinjointparam)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-pin-joint-get-param)

Overridable version of [PhysicsServer2D.pin\_joint\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-pin-joint-get-param).

* * *

void **\_pin\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](class_physicsserver2d.md#enum-physicsserver2d-pinjointflag), enabled: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-pin-joint-set-flag)

Overridable version of [PhysicsServer2D.pin\_joint\_set\_flag()](class_physicsserver2d.md#class-physicsserver2d-method-pin-joint-set-flag).

* * *

void **\_pin\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](class_physicsserver2d.md#enum-physicsserver2d-pinjointparam), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-pin-joint-set-param)

Overridable version of [PhysicsServer2D.pin\_joint\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-pin-joint-set-param).

* * *

[RID](class_rid.md#class-rid) **\_rectangle\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-rectangle-shape-create)

Overridable version of [PhysicsServer2D.rectangle\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-rectangle-shape-create).

* * *

[RID](class_rid.md#class-rid) **\_segment\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-segment-shape-create)

Overridable version of [PhysicsServer2D.segment\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-segment-shape-create).

* * *

[RID](class_rid.md#class-rid) **\_separation\_ray\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-separation-ray-shape-create)

Overridable version of [PhysicsServer2D.separation\_ray\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-separation-ray-shape-create).

* * *

void **\_set\_active**(active: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-set-active)

Overridable version of [PhysicsServer2D.set\_active()](class_physicsserver2d.md#class-physicsserver2d-method-set-active).

* * *

[bool](class_bool.md#class-bool) **\_shape\_collide**(shape\_A: [RID](class_rid.md#class-rid), xform\_A: [Transform2D](class_transform2d.md#class-transform2d), motion\_A: [Vector2](class_vector2.md#class-vector2), shape\_B: [RID](class_rid.md#class-rid), xform\_B: [Transform2D](class_transform2d.md#class-transform2d), motion\_B: [Vector2](class_vector2.md#class-vector2), results: `void*`, result\_max: [int](class_int.md#class-int), result\_count: `int32_t*`) virtualrequired [🔗](#class-physicsserver2dextension-private-method-shape-collide)

Given two shapes and their parameters, should return `true` if a collision between the two would occur, with additional details passed in `results`.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `shape_collide` method. Corresponds to [PhysicsDirectSpaceState2D.collide\_shape()](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d-method-collide-shape).

* * *

[float](class_float.md#class-float) **\_shape\_get\_custom\_solver\_bias**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-shape-get-custom-solver-bias)

Should return the custom solver bias of the given `shape`, which defines how much bodies are forced to separate on contact when this shape is involved.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `shape_get_custom_solver_bias` method. Corresponds to [Shape2D.custom\_solver\_bias](class_shape2d.md#class-shape2d-property-custom-solver-bias).

* * *

[Variant](class_variant.md#class-variant) **\_shape\_get\_data**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-shape-get-data)

Overridable version of [PhysicsServer2D.shape\_get\_data()](class_physicsserver2d.md#class-physicsserver2d-method-shape-get-data).

* * *

[ShapeType](class_physicsserver2d.md#enum-physicsserver2d-shapetype) **\_shape\_get\_type**(shape: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-shape-get-type)

Overridable version of [PhysicsServer2D.shape\_get\_type()](class_physicsserver2d.md#class-physicsserver2d-method-shape-get-type).

* * *

void **\_shape\_set\_custom\_solver\_bias**(shape: [RID](class_rid.md#class-rid), bias: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-shape-set-custom-solver-bias)

Should set the custom solver bias for the given `shape`. It defines how much bodies are forced to separate on contact.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `shape_get_custom_solver_bias` method. Corresponds to [Shape2D.custom\_solver\_bias](class_shape2d.md#class-shape2d-property-custom-solver-bias).

* * *

void **\_shape\_set\_data**(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-shape-set-data)

Overridable version of [PhysicsServer2D.shape\_set\_data()](class_physicsserver2d.md#class-physicsserver2d-method-shape-set-data).

* * *

[RID](class_rid.md#class-rid) **\_space\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-space-create)

Overridable version of [PhysicsServer2D.space\_create()](class_physicsserver2d.md#class-physicsserver2d-method-space-create).

* * *

[int](class_int.md#class-int) **\_space\_get\_contact\_count**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-space-get-contact-count)

Should return how many contacts have occurred during the last physics step in the given `space`. See also [\_space\_get\_contacts()](#class-physicsserver2dextension-private-method-space-get-contacts) and [\_space\_set\_debug\_contacts()](#class-physicsserver2dextension-private-method-space-set-debug-contacts).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `space_get_contact_count` method.

* * *

[PackedVector2Array](class_packedvector2array.md#class-packedvector2array) **\_space\_get\_contacts**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-space-get-contacts)

Should return the positions of all contacts that have occurred during the last physics step in the given `space`. See also [\_space\_get\_contact\_count()](#class-physicsserver2dextension-private-method-space-get-contact-count) and [\_space\_set\_debug\_contacts()](#class-physicsserver2dextension-private-method-space-set-debug-contacts).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `space_get_contacts` method.

* * *

[PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **\_space\_get\_direct\_state**(space: [RID](class_rid.md#class-rid)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-space-get-direct-state)

Overridable version of [PhysicsServer2D.space\_get\_direct\_state()](class_physicsserver2d.md#class-physicsserver2d-method-space-get-direct-state).

* * *

[float](class_float.md#class-float) **\_space\_get\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver2d.md#enum-physicsserver2d-spaceparameter)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-space-get-param)

Overridable version of [PhysicsServer2D.space\_get\_param()](class_physicsserver2d.md#class-physicsserver2d-method-space-get-param).

* * *

[bool](class_bool.md#class-bool) **\_space\_is\_active**(space: [RID](class_rid.md#class-rid)) virtualrequiredconst [🔗](#class-physicsserver2dextension-private-method-space-is-active)

Overridable version of [PhysicsServer2D.space\_is\_active()](class_physicsserver2d.md#class-physicsserver2d-method-space-is-active).

* * *

void **\_space\_set\_active**(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-space-set-active)

Overridable version of [PhysicsServer2D.space\_set\_active()](class_physicsserver2d.md#class-physicsserver2d-method-space-set-active).

* * *

void **\_space\_set\_debug\_contacts**(space: [RID](class_rid.md#class-rid), max\_contacts: [int](class_int.md#class-int)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-space-set-debug-contacts)

Used internally to allow the given `space` to store contact points, up to `max_contacts`. This is automatically set for the main [World2D](class_world2d.md#class-world2d)'s space when [SceneTree.debug\_collisions\_hint](class_scenetree.md#class-scenetree-property-debug-collisions-hint) is `true`, or by checking "Visible Collision Shapes" in the editor. Only works in debug builds.

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `space_set_debug_contacts` method.

* * *

void **\_space\_set\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](class_physicsserver2d.md#enum-physicsserver2d-spaceparameter), value: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-space-set-param)

Overridable version of [PhysicsServer2D.space\_set\_param()](class_physicsserver2d.md#class-physicsserver2d-method-space-set-param).

* * *

void **\_step**(step: [float](class_float.md#class-float)) virtualrequired [🔗](#class-physicsserver2dextension-private-method-step)

Called every physics step to process the physics simulation. `step` is the time elapsed since the last physics step, in seconds. It is usually the same as the value returned by [Node.get\_physics\_process\_delta\_time()](class_node.md#class-node-method-get-physics-process-delta-time).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `step` method.

* * *

void **\_sync**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-sync)

Called to indicate that the physics server is synchronizing and cannot access physics states if running on a separate thread. See also [\_end\_sync()](#class-physicsserver2dextension-private-method-end-sync).

Overridable version of [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d)'s internal `sync` method.

* * *

[RID](class_rid.md#class-rid) **\_world\_boundary\_shape\_create**() virtualrequired [🔗](#class-physicsserver2dextension-private-method-world-boundary-shape-create)

Overridable version of [PhysicsServer2D.world\_boundary\_shape\_create()](class_physicsserver2d.md#class-physicsserver2d-method-world-boundary-shape-create).

* * *

[bool](class_bool.md#class-bool) **body\_test\_motion\_is\_excluding\_body**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2dextension-method-body-test-motion-is-excluding-body)

Returns `true` if the body with the given [RID](class_rid.md#class-rid) is being excluded from [\_body\_test\_motion()](#class-physicsserver2dextension-private-method-body-test-motion). See also [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

* * *

[bool](class_bool.md#class-bool) **body\_test\_motion\_is\_excluding\_object**(object: [int](class_int.md#class-int)) const [🔗](#class-physicsserver2dextension-method-body-test-motion-is-excluding-object)

Returns `true` if the object with the given instance ID is being excluded from [\_body\_test\_motion()](#class-physicsserver2dextension-private-method-body-test-motion). See also [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

[Previous](class_physicsserver2d.md "PhysicsServer2D") [Next](class_physicsserver2dmanager.md "PhysicsServer2DManager")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver2d.md "PhysicsServer2D") [Next](class_physicsserver2dmanager.md "PhysicsServer2DManager")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).