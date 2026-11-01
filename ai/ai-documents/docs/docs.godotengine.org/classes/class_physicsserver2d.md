---
title: PhysicsServer2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver2d.html
crawled_at: "2026-08-13T10:18:51+12:00"
content_hash: ec81fd91512cdd2fa416f28cd8166bb5716a89a2366b818afe2fdb7f3a9a5f77
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer2D

* * *

# PhysicsServer2D

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [PhysicsServer2DExtension](class_physicsserver2dextension.md#class-physicsserver2dextension)

A server interface for low-level 2D physics access.

## Description

PhysicsServer2D is the server responsible for all 2D physics. It can directly create and manipulate all physics objects:

- A _space_ is a self-contained world for a physics simulation. It contains bodies, areas, and joints. Its state can be queried for collision and intersection information, and several parameters of the simulation can be modified.

- A _shape_ is a geometric shape such as a circle, a rectangle, a capsule, or a polygon. It can be used for collision detection by adding it to a body/area, possibly with an extra transformation relative to the body/area's origin. Bodies/areas can have multiple (transformed) shapes added to them, and a single shape can be added to bodies/areas multiple times with different local transformations.

- A _body_ is a physical object which can be in static, kinematic, or rigid mode. Its state (such as position and velocity) can be queried and updated. A force integration callback can be set to customize the body's physics.

- An _area_ is a region in space which can be used to detect bodies and areas entering and exiting it. A body monitoring callback can be set to report entering/exiting body shapes, and similarly an area monitoring callback can be set. Gravity and damping can be overridden within the area by setting area parameters.

- A _joint_ is a constraint, either between two bodies or on one body relative to a point. Parameters such as the joint bias and the rest length of a spring joint can be adjusted.


Physics objects in **PhysicsServer2D** may be created and manipulated independently; they do not have to be tied to nodes in the scene tree.

**Note:** All the 2D physics nodes use the physics server internally. Adding a physics node to the scene tree will cause a corresponding physics object to be created in the physics server. A rigid body node registers a callback that updates the node's transform with the transform of the respective body object in the physics server (every physics update). An area node registers a callback to inform the area node about overlaps with the respective area object in the physics server. The raycast node queries the direct state of the relevant space in the physics server.

## Methods

|     |     |
| --- | --- |
| void | [area\_add\_shape](#class-physicsserver2d-method-area-add-shape)(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) |
| void | [area\_attach\_canvas\_instance\_id](#class-physicsserver2d-method-area-attach-canvas-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [area\_attach\_object\_instance\_id](#class-physicsserver2d-method-area-attach-object-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [area\_clear\_shapes](#class-physicsserver2d-method-area-clear-shapes)(area: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [area\_create](#class-physicsserver2d-method-area-create)() |
| [int](class_int.md#class-int) | [area\_get\_canvas\_instance\_id](#class-physicsserver2d-method-area-get-canvas-instance-id)(area: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [area\_get\_collision\_layer](#class-physicsserver2d-method-area-get-collision-layer)(area: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [area\_get\_collision\_mask](#class-physicsserver2d-method-area-get-collision-mask)(area: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [area\_get\_object\_instance\_id](#class-physicsserver2d-method-area-get-object-instance-id)(area: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [area\_get\_param](#class-physicsserver2d-method-area-get-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver2d-areaparameter)) const |
| [RID](class_rid.md#class-rid) | [area\_get\_shape](#class-physicsserver2d-method-area-get-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [area\_get\_shape\_count](#class-physicsserver2d-method-area-get-shape-count)(area: [RID](class_rid.md#class-rid)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [area\_get\_shape\_transform](#class-physicsserver2d-method-area-get-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [area\_get\_space](#class-physicsserver2d-method-area-get-space)(area: [RID](class_rid.md#class-rid)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [area\_get\_transform](#class-physicsserver2d-method-area-get-transform)(area: [RID](class_rid.md#class-rid)) const |
| void | [area\_remove\_shape](#class-physicsserver2d-method-area-remove-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) |
| void | [area\_set\_area\_monitor\_callback](#class-physicsserver2d-method-area-set-area-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [area\_set\_collision\_layer](#class-physicsserver2d-method-area-set-collision-layer)(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| void | [area\_set\_collision\_mask](#class-physicsserver2d-method-area-set-collision-mask)(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [area\_set\_monitor\_callback](#class-physicsserver2d-method-area-set-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [area\_set\_monitorable](#class-physicsserver2d-method-area-set-monitorable)(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) |
| void | [area\_set\_param](#class-physicsserver2d-method-area-set-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver2d-areaparameter), value: [Variant](class_variant.md#class-variant)) |
| void | [area\_set\_shape](#class-physicsserver2d-method-area-set-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) |
| void | [area\_set\_shape\_disabled](#class-physicsserver2d-method-area-set-shape-disabled)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [area\_set\_shape\_transform](#class-physicsserver2d-method-area-set-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [area\_set\_space](#class-physicsserver2d-method-area-set-space)(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) |
| void | [area\_set\_transform](#class-physicsserver2d-method-area-set-transform)(area: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [body\_add\_collision\_exception](#class-physicsserver2d-method-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) |
| void | [body\_add\_constant\_central\_force](#class-physicsserver2d-method-body-add-constant-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) |
| void | [body\_add\_constant\_force](#class-physicsserver2d-method-body-add-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [body\_add\_constant\_torque](#class-physicsserver2d-method-body-add-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) |
| void | [body\_add\_shape](#class-physicsserver2d-method-body-add-shape)(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) |
| void | [body\_apply\_central\_force](#class-physicsserver2d-method-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) |
| void | [body\_apply\_central\_impulse](#class-physicsserver2d-method-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2)) |
| void | [body\_apply\_force](#class-physicsserver2d-method-body-apply-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [body\_apply\_impulse](#class-physicsserver2d-method-body-apply-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) |
| void | [body\_apply\_torque](#class-physicsserver2d-method-body-apply-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) |
| void | [body\_apply\_torque\_impulse](#class-physicsserver2d-method-body-apply-torque-impulse)(body: [RID](class_rid.md#class-rid), impulse: [float](class_float.md#class-float)) |
| void | [body\_attach\_canvas\_instance\_id](#class-physicsserver2d-method-body-attach-canvas-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [body\_attach\_object\_instance\_id](#class-physicsserver2d-method-body-attach-object-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [body\_clear\_shapes](#class-physicsserver2d-method-body-clear-shapes)(body: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [body\_create](#class-physicsserver2d-method-body-create)() |
| [int](class_int.md#class-int) | [body\_get\_canvas\_instance\_id](#class-physicsserver2d-method-body-get-canvas-instance-id)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [body\_get\_collision\_layer](#class-physicsserver2d-method-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [body\_get\_collision\_mask](#class-physicsserver2d-method-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [body\_get\_collision\_priority](#class-physicsserver2d-method-body-get-collision-priority)(body: [RID](class_rid.md#class-rid)) const |
| [Vector2](class_vector2.md#class-vector2) | [body\_get\_constant\_force](#class-physicsserver2d-method-body-get-constant-force)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [body\_get\_constant\_torque](#class-physicsserver2d-method-body-get-constant-torque)(body: [RID](class_rid.md#class-rid)) const |
| [CCDMode](#enum-physicsserver2d-ccdmode) | [body\_get\_continuous\_collision\_detection\_mode](#class-physicsserver2d-method-body-get-continuous-collision-detection-mode)(body: [RID](class_rid.md#class-rid)) const |
| [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) | [body\_get\_direct\_state](#class-physicsserver2d-method-body-get-direct-state)(body: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [body\_get\_max\_contacts\_reported](#class-physicsserver2d-method-body-get-max-contacts-reported)(body: [RID](class_rid.md#class-rid)) const |
| [BodyMode](#enum-physicsserver2d-bodymode) | [body\_get\_mode](#class-physicsserver2d-method-body-get-mode)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [body\_get\_object\_instance\_id](#class-physicsserver2d-method-body-get-object-instance-id)(body: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [body\_get\_param](#class-physicsserver2d-method-body-get-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver2d-bodyparameter)) const |
| [RID](class_rid.md#class-rid) | [body\_get\_shape](#class-physicsserver2d-method-body-get-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [body\_get\_shape\_count](#class-physicsserver2d-method-body-get-shape-count)(body: [RID](class_rid.md#class-rid)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [body\_get\_shape\_transform](#class-physicsserver2d-method-body-get-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [body\_get\_space](#class-physicsserver2d-method-body-get-space)(body: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [body\_get\_state](#class-physicsserver2d-method-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver2d-bodystate)) const |
| [bool](class_bool.md#class-bool) | [body\_is\_omitting\_force\_integration](#class-physicsserver2d-method-body-is-omitting-force-integration)(body: [RID](class_rid.md#class-rid)) const |
| void | [body\_remove\_collision\_exception](#class-physicsserver2d-method-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) |
| void | [body\_remove\_shape](#class-physicsserver2d-method-body-remove-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) |
| void | [body\_reset\_mass\_properties](#class-physicsserver2d-method-body-reset-mass-properties)(body: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_axis\_velocity](#class-physicsserver2d-method-body-set-axis-velocity)(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector2](class_vector2.md#class-vector2)) |
| void | [body\_set\_collision\_layer](#class-physicsserver2d-method-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| void | [body\_set\_collision\_mask](#class-physicsserver2d-method-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [body\_set\_collision\_priority](#class-physicsserver2d-method-body-set-collision-priority)(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) |
| void | [body\_set\_constant\_force](#class-physicsserver2d-method-body-set-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) |
| void | [body\_set\_constant\_torque](#class-physicsserver2d-method-body-set-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) |
| void | [body\_set\_continuous\_collision\_detection\_mode](#class-physicsserver2d-method-body-set-continuous-collision-detection-mode)(body: [RID](class_rid.md#class-rid), mode: [CCDMode](#enum-physicsserver2d-ccdmode)) |
| void | [body\_set\_force\_integration\_callback](#class-physicsserver2d-method-body-set-force-integration-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant) = null) |
| void | [body\_set\_max\_contacts\_reported](#class-physicsserver2d-method-body-set-max-contacts-reported)(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) |
| void | [body\_set\_mode](#class-physicsserver2d-method-body-set-mode)(body: [RID](class_rid.md#class-rid), mode: [BodyMode](#enum-physicsserver2d-bodymode)) |
| void | [body\_set\_omit\_force\_integration](#class-physicsserver2d-method-body-set-omit-force-integration)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_param](#class-physicsserver2d-method-body-set-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver2d-bodyparameter), value: [Variant](class_variant.md#class-variant)) |
| void | [body\_set\_shape](#class-physicsserver2d-method-body-set-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_shape\_as\_one\_way\_collision](#class-physicsserver2d-method-body-set-shape-as-one-way-collision)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool), margin: [float](class_float.md#class-float)) |
| void | [body\_set\_shape\_disabled](#class-physicsserver2d-method-body-set-shape-disabled)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_shape\_transform](#class-physicsserver2d-method-body-set-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |
| void | [body\_set\_space](#class-physicsserver2d-method-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_state](#class-physicsserver2d-method-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver2d-bodystate), value: [Variant](class_variant.md#class-variant)) |
| void | [body\_set\_state\_sync\_callback](#class-physicsserver2d-method-body-set-state-sync-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) |
| [bool](class_bool.md#class-bool) | [body\_test\_motion](#class-physicsserver2d-method-body-test-motion)(body: [RID](class_rid.md#class-rid), parameters: [PhysicsTestMotionParameters2D](class_physicstestmotionparameters2d.md#class-physicstestmotionparameters2d), result: [PhysicsTestMotionResult2D](class_physicstestmotionresult2d.md#class-physicstestmotionresult2d) = null) |
| [RID](class_rid.md#class-rid) | [capsule\_shape\_create](#class-physicsserver2d-method-capsule-shape-create)() |
| [RID](class_rid.md#class-rid) | [circle\_shape\_create](#class-physicsserver2d-method-circle-shape-create)() |
| [RID](class_rid.md#class-rid) | [concave\_polygon\_shape\_create](#class-physicsserver2d-method-concave-polygon-shape-create)() |
| [RID](class_rid.md#class-rid) | [convex\_polygon\_shape\_create](#class-physicsserver2d-method-convex-polygon-shape-create)() |
| [float](class_float.md#class-float) | [damped\_spring\_joint\_get\_param](#class-physicsserver2d-method-damped-spring-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](#enum-physicsserver2d-dampedspringparam)) const |
| void | [damped\_spring\_joint\_set\_param](#class-physicsserver2d-method-damped-spring-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](#enum-physicsserver2d-dampedspringparam), value: [float](class_float.md#class-float)) |
| void | [free\_rid](#class-physicsserver2d-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [get\_process\_info](#class-physicsserver2d-method-get-process-info)(process\_info: [ProcessInfo](#enum-physicsserver2d-processinfo)) |
| void | [joint\_clear](#class-physicsserver2d-method-joint-clear)(joint: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [joint\_create](#class-physicsserver2d-method-joint-create)() |
| void | [joint\_disable\_collisions\_between\_bodies](#class-physicsserver2d-method-joint-disable-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) |
| [float](class_float.md#class-float) | [joint\_get\_param](#class-physicsserver2d-method-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [JointParam](#enum-physicsserver2d-jointparam)) const |
| [JointType](#enum-physicsserver2d-jointtype) | [joint\_get\_type](#class-physicsserver2d-method-joint-get-type)(joint: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [joint\_is\_disabled\_collisions\_between\_bodies](#class-physicsserver2d-method-joint-is-disabled-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid)) const |
| void | [joint\_make\_damped\_spring](#class-physicsserver2d-method-joint-make-damped-spring)(joint: [RID](class_rid.md#class-rid), anchor\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid) = RID()) |
| void | [joint\_make\_groove](#class-physicsserver2d-method-joint-make-groove)(joint: [RID](class_rid.md#class-rid), groove1\_a: [Vector2](class_vector2.md#class-vector2), groove2\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid) = RID(), body\_b: [RID](class_rid.md#class-rid) = RID()) |
| void | [joint\_make\_pin](#class-physicsserver2d-method-joint-make-pin)(joint: [RID](class_rid.md#class-rid), anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid) = RID()) |
| void | [joint\_set\_param](#class-physicsserver2d-method-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [JointParam](#enum-physicsserver2d-jointparam), value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [pin\_joint\_get\_flag](#class-physicsserver2d-method-pin-joint-get-flag)(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](#enum-physicsserver2d-pinjointflag)) const |
| [float](class_float.md#class-float) | [pin\_joint\_get\_param](#class-physicsserver2d-method-pin-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver2d-pinjointparam)) const |
| void | [pin\_joint\_set\_flag](#class-physicsserver2d-method-pin-joint-set-flag)(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](#enum-physicsserver2d-pinjointflag), enabled: [bool](class_bool.md#class-bool)) |
| void | [pin\_joint\_set\_param](#class-physicsserver2d-method-pin-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver2d-pinjointparam), value: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [rectangle\_shape\_create](#class-physicsserver2d-method-rectangle-shape-create)() |
| [RID](class_rid.md#class-rid) | [segment\_shape\_create](#class-physicsserver2d-method-segment-shape-create)() |
| [RID](class_rid.md#class-rid) | [separation\_ray\_shape\_create](#class-physicsserver2d-method-separation-ray-shape-create)() |
| void | [set\_active](#class-physicsserver2d-method-set-active)(active: [bool](class_bool.md#class-bool)) |
| [Variant](class_variant.md#class-variant) | [shape\_get\_data](#class-physicsserver2d-method-shape-get-data)(shape: [RID](class_rid.md#class-rid)) const |
| [ShapeType](#enum-physicsserver2d-shapetype) | [shape\_get\_type](#class-physicsserver2d-method-shape-get-type)(shape: [RID](class_rid.md#class-rid)) const |
| void | [shape\_set\_data](#class-physicsserver2d-method-shape-set-data)(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) |
| [RID](class_rid.md#class-rid) | [space\_create](#class-physicsserver2d-method-space-create)() |
| [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) | [space\_get\_direct\_state](#class-physicsserver2d-method-space-get-direct-state)(space: [RID](class_rid.md#class-rid)) |
| [float](class_float.md#class-float) | [space\_get\_param](#class-physicsserver2d-method-space-get-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver2d-spaceparameter)) const |
| [bool](class_bool.md#class-bool) | [space\_is\_active](#class-physicsserver2d-method-space-is-active)(space: [RID](class_rid.md#class-rid)) const |
| void | [space\_set\_active](#class-physicsserver2d-method-space-set-active)(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) |
| void | [space\_set\_param](#class-physicsserver2d-method-space-set-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver2d-spaceparameter), value: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [world\_boundary\_shape\_create](#class-physicsserver2d-method-world-boundary-shape-create)() |

* * *

## Enumerations

enum **SpaceParameter**: [🔗](#enum-physicsserver2d-spaceparameter)

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_CONTACT\_RECYCLE\_RADIUS** = `0`

Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated. The default value of this parameter is [ProjectSettings.physics/2d/solver/contact\_recycle\_radius](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-contact-recycle-radius).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_CONTACT\_MAX\_SEPARATION** = `1`

Constant to set/get the maximum distance a shape can be from another before they are considered separated and the contact is discarded. The default value of this parameter is [ProjectSettings.physics/2d/solver/contact\_max\_separation](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-contact-max-separation).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_CONTACT\_MAX\_ALLOWED\_PENETRATION** = `2`

Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision. The default value of this parameter is [ProjectSettings.physics/2d/solver/contact\_max\_allowed\_penetration](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-contact-max-allowed-penetration).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_CONTACT\_DEFAULT\_BIAS** = `3`

Constant to set/get the default solver bias for all physics contacts. A solver bias is a factor controlling how much two objects "rebound", after overlapping, to avoid leaving them in that state because of numerical imprecision. The default value of this parameter is [ProjectSettings.physics/2d/solver/default\_contact\_bias](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-default-contact-bias).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_BODY\_LINEAR\_VELOCITY\_SLEEP\_THRESHOLD** = `4`

Constant to set/get the threshold linear velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given. The default value of this parameter is [ProjectSettings.physics/2d/sleep\_threshold\_linear](class_projectsettings.md#class-projectsettings-property-physics-2d-sleep-threshold-linear).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_BODY\_ANGULAR\_VELOCITY\_SLEEP\_THRESHOLD** = `5`

Constant to set/get the threshold angular velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given. The default value of this parameter is [ProjectSettings.physics/2d/sleep\_threshold\_angular](class_projectsettings.md#class-projectsettings-property-physics-2d-sleep-threshold-angular).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_BODY\_TIME\_TO\_SLEEP** = `6`

Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time. The default value of this parameter is [ProjectSettings.physics/2d/time\_before\_sleep](class_projectsettings.md#class-projectsettings-property-physics-2d-time-before-sleep).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_CONSTRAINT\_DEFAULT\_BIAS** = `7`

Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision. The default value of this parameter is [ProjectSettings.physics/2d/solver/default\_constraint\_bias](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-default-constraint-bias).

[SpaceParameter](#enum-physicsserver2d-spaceparameter) **SPACE\_PARAM\_SOLVER\_ITERATIONS** = `8`

Constant to set/get the number of solver iterations for all contacts and constraints. The greater the number of iterations, the more accurate the collisions will be. However, a greater number of iterations requires more CPU power, which can decrease performance. The default value of this parameter is [ProjectSettings.physics/2d/solver/solver\_iterations](class_projectsettings.md#class-projectsettings-property-physics-2d-solver-solver-iterations).

* * *

enum **ShapeType**: [🔗](#enum-physicsserver2d-shapetype)

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_WORLD\_BOUNDARY** = `0`

This is the constant for creating world boundary shapes. A world boundary shape is an _infinite_ line with an origin point, and a normal. Thus, it can be used for front/behind checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_SEPARATION\_RAY** = `1`

This is the constant for creating separation ray shapes. A separation ray is defined by a length and separates itself from what is touching its far endpoint. Useful for character controllers.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_SEGMENT** = `2`

This is the constant for creating segment shapes. A segment shape is a _finite_ line from a point A to a point B. It can be checked for intersections.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_CIRCLE** = `3`

This is the constant for creating circle shapes. A circle shape only has a radius. It can be used for intersections and inside/outside checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_RECTANGLE** = `4`

This is the constant for creating rectangle shapes. A rectangle shape is defined by a width and a height. It can be used for intersections and inside/outside checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_CAPSULE** = `5`

This is the constant for creating capsule shapes. A capsule shape is defined by a radius and a length. It can be used for intersections and inside/outside checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_CONVEX\_POLYGON** = `6`

This is the constant for creating convex polygon shapes. A polygon is defined by a list of points. It can be used for intersections and inside/outside checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_CONCAVE\_POLYGON** = `7`

This is the constant for creating concave polygon shapes. A polygon is defined by a list of points. It can be used for intersections checks, but not for inside/outside checks.

[ShapeType](#enum-physicsserver2d-shapetype) **SHAPE\_CUSTOM** = `8`

This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.

* * *

enum **AreaParameter**: [🔗](#enum-physicsserver2d-areaparameter)

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_GRAVITY\_OVERRIDE\_MODE** = `0`

Constant to set/get gravity override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) for possible values. The default value of this parameter is [AREA\_SPACE\_OVERRIDE\_DISABLED](#class-physicsserver2d-constant-area-space-override-disabled).

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_GRAVITY** = `1`

Constant to set/get gravity strength in an area. The default value of this parameter is `9.80665`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_GRAVITY\_VECTOR** = `2`

Constant to set/get gravity vector/center in an area. The default value of this parameter is `Vector2(0, -1)`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_GRAVITY\_IS\_POINT** = `3`

Constant to set/get whether the gravity vector of an area is a direction, or a center point. The default value of this parameter is `false`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_GRAVITY\_POINT\_UNIT\_DISTANCE** = `4`

Constant to set/get the distance at which the gravity strength is equal to the gravity controlled by [AREA\_PARAM\_GRAVITY](#class-physicsserver2d-constant-area-param-gravity). For example, on a planet 100 pixels in radius with a surface gravity of 4.0 px/s², set the gravity to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 pixels from the center the gravity will be 1.0 px/s² (twice the distance, 1/4th the gravity), at 50 pixels it will be 16.0 px/s² (half the distance, 4x the gravity), and so on.

The above is true only when the unit distance is a positive number. When the unit distance is set to 0.0, the gravity will be constant regardless of distance. The default value of this parameter is `0.0`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_LINEAR\_DAMP\_OVERRIDE\_MODE** = `5`

Constant to set/get linear damping override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) for possible values. The default value of this parameter is [AREA\_SPACE\_OVERRIDE\_DISABLED](#class-physicsserver2d-constant-area-space-override-disabled).

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_LINEAR\_DAMP** = `6`

Constant to set/get the linear damping factor of an area. The default value of this parameter is `0.1`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_ANGULAR\_DAMP\_OVERRIDE\_MODE** = `7`

Constant to set/get angular damping override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) for possible values. The default value of this parameter is [AREA\_SPACE\_OVERRIDE\_DISABLED](#class-physicsserver2d-constant-area-space-override-disabled).

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_ANGULAR\_DAMP** = `8`

Constant to set/get the angular damping factor of an area. The default value of this parameter is `1.0`.

[AreaParameter](#enum-physicsserver2d-areaparameter) **AREA\_PARAM\_PRIORITY** = `9`

Constant to set/get the priority (order of processing) of an area. The default value of this parameter is `0`.

* * *

enum **AreaSpaceOverrideMode**: [🔗](#enum-physicsserver2d-areaspaceoverridemode)

[AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_DISABLED** = `0`

This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.

[AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_COMBINE** = `1`

This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.

[AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_COMBINE\_REPLACE** = `2`

This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.

[AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_REPLACE** = `3`

This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.

[AreaSpaceOverrideMode](#enum-physicsserver2d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_REPLACE\_COMBINE** = `4`

This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.

* * *

enum **BodyMode**: [🔗](#enum-physicsserver2d-bodymode)

[BodyMode](#enum-physicsserver2d-bodymode) **BODY\_MODE\_STATIC** = `0`

Constant for static bodies. In this mode, a body can be only moved by user code and doesn't collide with other bodies along its path when moved.

[BodyMode](#enum-physicsserver2d-bodymode) **BODY\_MODE\_KINEMATIC** = `1`

Constant for kinematic bodies. In this mode, a body can be only moved by user code and collides with other bodies along its path.

[BodyMode](#enum-physicsserver2d-bodymode) **BODY\_MODE\_RIGID** = `2`

Constant for rigid bodies. In this mode, a body can be pushed by other bodies and has forces applied.

[BodyMode](#enum-physicsserver2d-bodymode) **BODY\_MODE\_RIGID\_LINEAR** = `3`

Constant for linear rigid bodies. In this mode, a body can not rotate, and only its linear velocity is affected by external forces.

* * *

enum **BodyParameter**: [🔗](#enum-physicsserver2d-bodyparameter)

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_BOUNCE** = `0`

Constant to set/get a body's bounce factor. The default value of this parameter is `0.0`.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_FRICTION** = `1`

Constant to set/get a body's friction. The default value of this parameter is `1.0`.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_MASS** = `2`

Constant to set/get a body's mass. The default value of this parameter is `1.0`. If the body's mode is set to [BODY\_MODE\_RIGID](#class-physicsserver2d-constant-body-mode-rigid), then setting this parameter will have the following additional effects:

- If the parameter [BODY\_PARAM\_CENTER\_OF\_MASS](#class-physicsserver2d-constant-body-param-center-of-mass) has never been set explicitly, then the value of that parameter will be recalculated based on the body's shapes.

- If the parameter [BODY\_PARAM\_INERTIA](#class-physicsserver2d-constant-body-param-inertia) is set to a value `<= 0.0`, then the value of that parameter will be recalculated based on the body's shapes, mass, and center of mass.


[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_INERTIA** = `3`

Constant to set/get a body's inertia. The default value of this parameter is `0.0`. If the body's inertia is set to a value `<= 0.0`, then the inertia will be recalculated based on the body's shapes, mass, and center of mass.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_CENTER\_OF\_MASS** = `4`

Constant to set/get a body's center of mass position in the body's local coordinate system. The default value of this parameter is `Vector2(0, 0)`. If this parameter is never set explicitly, then it is recalculated based on the body's shapes when setting the parameter [BODY\_PARAM\_MASS](#class-physicsserver2d-constant-body-param-mass) or when calling [body\_set\_space()](#class-physicsserver2d-method-body-set-space).

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_GRAVITY\_SCALE** = `5`

Constant to set/get a body's gravity multiplier. The default value of this parameter is `1.0`.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_LINEAR\_DAMP\_MODE** = `6`

Constant to set/get a body's linear damping mode. See [BodyDampMode](#enum-physicsserver2d-bodydampmode) for possible values. The default value of this parameter is [BODY\_DAMP\_MODE\_COMBINE](#class-physicsserver2d-constant-body-damp-mode-combine).

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_ANGULAR\_DAMP\_MODE** = `7`

Constant to set/get a body's angular damping mode. See [BodyDampMode](#enum-physicsserver2d-bodydampmode) for possible values. The default value of this parameter is [BODY\_DAMP\_MODE\_COMBINE](#class-physicsserver2d-constant-body-damp-mode-combine).

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_LINEAR\_DAMP** = `8`

Constant to set/get a body's linear damping factor. The default value of this parameter is `0.0`.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_ANGULAR\_DAMP** = `9`

Constant to set/get a body's angular damping factor. The default value of this parameter is `0.0`.

[BodyParameter](#enum-physicsserver2d-bodyparameter) **BODY\_PARAM\_MAX** = `10`

Represents the size of the [BodyParameter](#enum-physicsserver2d-bodyparameter) enum.

* * *

enum **BodyDampMode**: [🔗](#enum-physicsserver2d-bodydampmode)

[BodyDampMode](#enum-physicsserver2d-bodydampmode) **BODY\_DAMP\_MODE\_COMBINE** = `0`

The body's damping value is added to any value set in areas or the default value.

[BodyDampMode](#enum-physicsserver2d-bodydampmode) **BODY\_DAMP\_MODE\_REPLACE** = `1`

The body's damping value replaces any value set in areas or the default value.

* * *

enum **BodyState**: [🔗](#enum-physicsserver2d-bodystate)

[BodyState](#enum-physicsserver2d-bodystate) **BODY\_STATE\_TRANSFORM** = `0`

Constant to set/get the current transform matrix of the body.

[BodyState](#enum-physicsserver2d-bodystate) **BODY\_STATE\_LINEAR\_VELOCITY** = `1`

Constant to set/get the current linear velocity of the body.

[BodyState](#enum-physicsserver2d-bodystate) **BODY\_STATE\_ANGULAR\_VELOCITY** = `2`

Constant to set/get the current angular velocity of the body.

[BodyState](#enum-physicsserver2d-bodystate) **BODY\_STATE\_SLEEPING** = `3`

Constant to sleep/wake up a body, or to get whether it is sleeping.

[BodyState](#enum-physicsserver2d-bodystate) **BODY\_STATE\_CAN\_SLEEP** = `4`

Constant to set/get whether the body can sleep.

* * *

enum **JointType**: [🔗](#enum-physicsserver2d-jointtype)

[JointType](#enum-physicsserver2d-jointtype) **JOINT\_TYPE\_PIN** = `0`

Constant to create pin joints.

[JointType](#enum-physicsserver2d-jointtype) **JOINT\_TYPE\_GROOVE** = `1`

Constant to create groove joints.

[JointType](#enum-physicsserver2d-jointtype) **JOINT\_TYPE\_DAMPED\_SPRING** = `2`

Constant to create damped spring joints.

[JointType](#enum-physicsserver2d-jointtype) **JOINT\_TYPE\_MAX** = `3`

Represents the size of the [JointType](#enum-physicsserver2d-jointtype) enum.

* * *

enum **JointParam**: [🔗](#enum-physicsserver2d-jointparam)

[JointParam](#enum-physicsserver2d-jointparam) **JOINT\_PARAM\_BIAS** = `0`

Constant to set/get how fast the joint pulls the bodies back to satisfy the joint constraint. The lower the value, the more the two bodies can pull on the joint. The default value of this parameter is `0.0`.

**Note:** In Godot Physics, this parameter is only used for pin joints and groove joints.

[JointParam](#enum-physicsserver2d-jointparam) **JOINT\_PARAM\_MAX\_BIAS** = `1`

Constant to set/get the maximum speed with which the joint can apply corrections. The default value of this parameter is `3.40282e+38`.

**Note:** In Godot Physics, this parameter is only used for groove joints.

[JointParam](#enum-physicsserver2d-jointparam) **JOINT\_PARAM\_MAX\_FORCE** = `2`

Constant to set/get the maximum force that the joint can use to act on the two bodies. The default value of this parameter is `3.40282e+38`.

**Note:** In Godot Physics, this parameter is only used for groove joints.

* * *

enum **PinJointParam**: [🔗](#enum-physicsserver2d-pinjointparam)

[PinJointParam](#enum-physicsserver2d-pinjointparam) **PIN\_JOINT\_SOFTNESS** = `0`

Constant to set/get a how much the bond of the pin joint can flex. The default value of this parameter is `0.0`.

[PinJointParam](#enum-physicsserver2d-pinjointparam) **PIN\_JOINT\_LIMIT\_UPPER** = `1`

The maximum rotation around the pin.

[PinJointParam](#enum-physicsserver2d-pinjointparam) **PIN\_JOINT\_LIMIT\_LOWER** = `2`

The minimum rotation around the pin.

[PinJointParam](#enum-physicsserver2d-pinjointparam) **PIN\_JOINT\_MOTOR\_TARGET\_VELOCITY** = `3`

Target speed for the motor. In radians per second.

* * *

enum **PinJointFlag**: [🔗](#enum-physicsserver2d-pinjointflag)

[PinJointFlag](#enum-physicsserver2d-pinjointflag) **PIN\_JOINT\_FLAG\_ANGULAR\_LIMIT\_ENABLED** = `0`

If `true`, the pin has a maximum and a minimum rotation.

[PinJointFlag](#enum-physicsserver2d-pinjointflag) **PIN\_JOINT\_FLAG\_MOTOR\_ENABLED** = `1`

If `true`, a motor turns the pin.

* * *

enum **DampedSpringParam**: [🔗](#enum-physicsserver2d-dampedspringparam)

[DampedSpringParam](#enum-physicsserver2d-dampedspringparam) **DAMPED\_SPRING\_REST\_LENGTH** = `0`

Sets the resting length of the spring joint. The joint will always try to go to back this length when pulled apart. The default value of this parameter is the distance between the joint's anchor points.

[DampedSpringParam](#enum-physicsserver2d-dampedspringparam) **DAMPED\_SPRING\_STIFFNESS** = `1`

Sets the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length. The default value of this parameter is `20.0`.

[DampedSpringParam](#enum-physicsserver2d-dampedspringparam) **DAMPED\_SPRING\_DAMPING** = `2`

Sets the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping). The default value of this parameter is `1.5`.

* * *

enum **CCDMode**: [🔗](#enum-physicsserver2d-ccdmode)

[CCDMode](#enum-physicsserver2d-ccdmode) **CCD\_MODE\_DISABLED** = `0`

Disables continuous collision detection. This is the fastest way to detect body collisions, but it can miss small and/or fast-moving objects.

[CCDMode](#enum-physicsserver2d-ccdmode) **CCD\_MODE\_CAST\_RAY** = `1`

Enables continuous collision detection by raycasting. It is faster than shapecasting, but less precise.

[CCDMode](#enum-physicsserver2d-ccdmode) **CCD\_MODE\_CAST\_SHAPE** = `2`

Enables continuous collision detection by shapecasting. It is the slowest CCD method, and the most precise.

* * *

enum **AreaBodyStatus**: [🔗](#enum-physicsserver2d-areabodystatus)

[AreaBodyStatus](#enum-physicsserver2d-areabodystatus) **AREA\_BODY\_ADDED** = `0`

The value of the first parameter and area callback function receives, when an object enters one of its shapes.

[AreaBodyStatus](#enum-physicsserver2d-areabodystatus) **AREA\_BODY\_REMOVED** = `1`

The value of the first parameter and area callback function receives, when an object exits one of its shapes.

* * *

enum **ProcessInfo**: [🔗](#enum-physicsserver2d-processinfo)

[ProcessInfo](#enum-physicsserver2d-processinfo) **INFO\_ACTIVE\_OBJECTS** = `0`

Constant to get the number of objects that are not sleeping.

[ProcessInfo](#enum-physicsserver2d-processinfo) **INFO\_COLLISION\_PAIRS** = `1`

Constant to get the number of possible collisions.

[ProcessInfo](#enum-physicsserver2d-processinfo) **INFO\_ISLAND\_COUNT** = `2`

Constant to get the number of space regions where a collision could occur.

* * *

## Method Descriptions

void **area\_add\_shape**(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsserver2d-method-area-add-shape)

Adds a shape to the area, with the given local transform. The shape (together with its `transform` and `disabled` properties) is added to an array of shapes, and the shapes of an area are usually referenced by their index in this array.

* * *

void **area\_attach\_canvas\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-area-attach-canvas-instance-id)

Attaches the `ObjectID` of a canvas to the area. Use [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id) to get the `ObjectID` of a [CanvasLayer](class_canvaslayer.md#class-canvaslayer).

* * *

void **area\_attach\_object\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-area-attach-object-instance-id)

Attaches the `ObjectID` of an [Object](class_object.md#class-object) to the area. Use [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id) to get the `ObjectID` of a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d).

* * *

void **area\_clear\_shapes**(area: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-area-clear-shapes)

Removes all shapes from the area. This does not delete the shapes themselves, so they can continue to be used elsewhere or added back later.

* * *

[RID](class_rid.md#class-rid) **area\_create**() [🔗](#class-physicsserver2d-method-area-create)

Creates a 2D area object in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. The default settings for the created area include a collision layer and mask set to `1`, and `monitorable` set to `false`.

Use [area\_add\_shape()](#class-physicsserver2d-method-area-add-shape) to add shapes to it, use [area\_set\_transform()](#class-physicsserver2d-method-area-set-transform) to set its transform, and use [area\_set\_space()](#class-physicsserver2d-method-area-set-space) to add the area to a space. If you want the area to be detectable use [area\_set\_monitorable()](#class-physicsserver2d-method-area-set-monitorable).

* * *

[int](class_int.md#class-int) **area\_get\_canvas\_instance\_id**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-canvas-instance-id)

Returns the `ObjectID` of the canvas attached to the area. Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to retrieve a [CanvasLayer](class_canvaslayer.md#class-canvaslayer) from a nonzero `ObjectID`.

* * *

[int](class_int.md#class-int) **area\_get\_collision\_layer**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-collision-layer)

Returns the physics layer or layers the area belongs to, as a bitmask.

* * *

[int](class_int.md#class-int) **area\_get\_collision\_mask**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-collision-mask)

Returns the physics layer or layers the area can contact with, as a bitmask.

* * *

[int](class_int.md#class-int) **area\_get\_object\_instance\_id**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-object-instance-id)

Returns the `ObjectID` attached to the area. Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to retrieve an [Object](class_object.md#class-object) from a nonzero `ObjectID`.

* * *

[Variant](class_variant.md#class-variant) **area\_get\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver2d-areaparameter)) const [🔗](#class-physicsserver2d-method-area-get-param)

Returns the value of the given area parameter.

* * *

[RID](class_rid.md#class-rid) **area\_get\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver2d-method-area-get-shape)

Returns the [RID](class_rid.md#class-rid) of the shape with the given index in the area's array of shapes.

* * *

[int](class_int.md#class-int) **area\_get\_shape\_count**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-shape-count)

Returns the number of shapes added to the area.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **area\_get\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver2d-method-area-get-shape-transform)

Returns the local transform matrix of the shape with the given index in the area's array of shapes.

* * *

[RID](class_rid.md#class-rid) **area\_get\_space**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-space)

Returns the [RID](class_rid.md#class-rid) of the space assigned to the area. Returns an empty [RID](class_rid.md#class-rid) if no space is assigned.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **area\_get\_transform**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-area-get-transform)

Returns the transform matrix of the area.

* * *

void **area\_remove\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-area-remove-shape)

Removes the shape with the given index from the area's array of shapes. The shape itself is not deleted, so it can continue to be used elsewhere or added back later. As a result of this operation, the area's shapes which used to have indices higher than `shape_idx` will have their index decreased by one.

* * *

void **area\_set\_area\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver2d-method-area-set-area-monitor-callback)

Sets the area's area monitor callback. This callback will be called when any other (shape of an) area enters or exits (a shape of) the given area, and must take the following five parameters:

1. an integer `status`: either [AREA\_BODY\_ADDED](#class-physicsserver2d-constant-area-body-added) or [AREA\_BODY\_REMOVED](#class-physicsserver2d-constant-area-body-removed) depending on whether the other area's shape entered or exited the area,

2. an [RID](class_rid.md#class-rid) `area_rid`: the [RID](class_rid.md#class-rid) of the other area that entered or exited the area,

3. an integer `instance_id`: the `ObjectID` attached to the other area,

4. an integer `area_shape_idx`: the index of the shape of the other area that entered or exited the area,

5. an integer `self_shape_idx`: the index of the shape of the area where the other area entered or exited.


By counting (or keeping track of) the shapes that enter and exit, it can be determined if an area (with all its shapes) is entering for the first time or exiting for the last time.

* * *

void **area\_set\_collision\_layer**(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-area-set-collision-layer)

Assigns the area to one or many physics layers, via a bitmask.

* * *

void **area\_set\_collision\_mask**(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-area-set-collision-mask)

Sets which physics layers the area will monitor, via a bitmask.

* * *

void **area\_set\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver2d-method-area-set-monitor-callback)

Sets the area's body monitor callback. This callback will be called when any other (shape of a) body enters or exits (a shape of) the given area, and must take the following five parameters:

1. an integer `status`: either [AREA\_BODY\_ADDED](#class-physicsserver2d-constant-area-body-added) or [AREA\_BODY\_REMOVED](#class-physicsserver2d-constant-area-body-removed) depending on whether the other body shape entered or exited the area,

2. an [RID](class_rid.md#class-rid) `body_rid`: the [RID](class_rid.md#class-rid) of the body that entered or exited the area,

3. an integer `instance_id`: the `ObjectID` attached to the body,

4. an integer `body_shape_idx`: the index of the shape of the body that entered or exited the area,

5. an integer `self_shape_idx`: the index of the shape of the area where the body entered or exited.


By counting (or keeping track of) the shapes that enter and exit, it can be determined if a body (with all its shapes) is entering for the first time or exiting for the last time.

* * *

void **area\_set\_monitorable**(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-area-set-monitorable)

Sets whether the area is monitorable or not. If `monitorable` is `true`, the area monitoring callback of other areas will be called when this area enters or exits them.

* * *

void **area\_set\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver2d-areaparameter), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver2d-method-area-set-param)

Sets the value of the given area parameter.

* * *

void **area\_set\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-area-set-shape)

Replaces the area's shape at the given index by another shape, while not affecting the `transform` and `disabled` properties at the same index.

* * *

void **area\_set\_shape\_disabled**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-area-set-shape-disabled)

Sets the disabled property of the area's shape with the given index. If `disabled` is `true`, then the shape will not detect any other shapes entering or exiting it.

* * *

void **area\_set\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-physicsserver2d-method-area-set-shape-transform)

Sets the local transform matrix of the area's shape with the given index.

* * *

void **area\_set\_space**(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-area-set-space)

Adds the area to the given space, after removing the area from the previously assigned space (if any).

**Note:** To remove an area from a space without immediately adding it back elsewhere, use `PhysicsServer2D.area_set_space(area, RID())`.

* * *

void **area\_set\_transform**(area: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-physicsserver2d-method-area-set-transform)

Sets the transform matrix of the area.

* * *

void **body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-add-collision-exception)

Adds `excepted_body` to the body's list of collision exceptions, so that collisions with it are ignored.

* * *

void **body\_add\_constant\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsserver2d-method-body-add-constant-central-force)

Adds a constant directional force to the body. The force does not affect rotation. The force remains applied over time until cleared with `PhysicsServer2D.body_set_constant_force(body, Vector2(0, 0))`.

This is equivalent to using [body\_add\_constant\_force()](#class-physicsserver2d-method-body-add-constant-force) at the body's center of mass.

* * *

void **body\_add\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsserver2d-method-body-add-constant-force)

Adds a constant positioned force to the body. The force can affect rotation if `position` is different from the body's center of mass. The force remains applied over time until cleared with `PhysicsServer2D.body_set_constant_force(body, Vector2(0, 0))`.

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_add\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-add-constant-torque)

Adds a constant rotational force to the body. The force does not affect position. The force remains applied over time until cleared with `PhysicsServer2D.body_set_constant_torque(body, 0)`.

* * *

void **body\_add\_shape**(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform2D](class_transform2d.md#class-transform2d) = Transform2D(1, 0, 0, 1, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsserver2d-method-body-add-shape)

Adds a shape to the area, with the given local transform. The shape (together with its `transform` and `disabled` properties) is added to an array of shapes, and the shapes of a body are usually referenced by their index in this array.

* * *

void **body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsserver2d-method-body-apply-central-force)

Applies a directional force to the body, at the body's center of mass. The force does not affect rotation. A force is time dependent and meant to be applied every physics update.

This is equivalent to using [body\_apply\_force()](#class-physicsserver2d-method-body-apply-force) at the body's center of mass.

* * *

void **body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsserver2d-method-body-apply-central-impulse)

Applies a directional impulse to the body, at the body's center of mass. The impulse does not affect rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

This is equivalent to using [body\_apply\_impulse()](#class-physicsserver2d-method-body-apply-impulse) at the body's center of mass.

* * *

void **body\_apply\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsserver2d-method-body-apply-force)

Applies a positioned force to the body. The force can affect rotation if `position` is different from the body's center of mass. A force is time dependent and meant to be applied every physics update.

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_apply\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector2](class_vector2.md#class-vector2), position: [Vector2](class_vector2.md#class-vector2) = Vector2(0, 0)) [🔗](#class-physicsserver2d-method-body-apply-impulse)

Applies a positioned impulse to the body. The impulse can affect rotation if `position` is different from the body's center of mass.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_apply\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-apply-torque)

Applies a rotational force to the body. The force does not affect position. A force is time dependent and meant to be applied every physics update.

* * *

void **body\_apply\_torque\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-apply-torque-impulse)

Applies a rotational impulse to the body. The impulse does not affect position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

void **body\_attach\_canvas\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-attach-canvas-instance-id)

Attaches the `ObjectID` of a canvas to the body. Use [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id) to get the `ObjectID` of a [CanvasLayer](class_canvaslayer.md#class-canvaslayer).

* * *

void **body\_attach\_object\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-attach-object-instance-id)

Attaches the `ObjectID` of an [Object](class_object.md#class-object) to the body. Use [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id) to get the `ObjectID` of a [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d).

* * *

void **body\_clear\_shapes**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-clear-shapes)

Removes all shapes from the body. This does not delete the shapes themselves, so they can continue to be used elsewhere or added back later.

* * *

[RID](class_rid.md#class-rid) **body\_create**() [🔗](#class-physicsserver2d-method-body-create)

Creates a 2D body object in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. The default settings for the created area include a collision layer and mask set to `1`, and body mode set to [BODY\_MODE\_RIGID](#class-physicsserver2d-constant-body-mode-rigid).

Use [body\_add\_shape()](#class-physicsserver2d-method-body-add-shape) to add shapes to it, use [body\_set\_state()](#class-physicsserver2d-method-body-set-state) to set its transform, and use [body\_set\_space()](#class-physicsserver2d-method-body-set-space) to add the body to a space.

* * *

[int](class_int.md#class-int) **body\_get\_canvas\_instance\_id**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-canvas-instance-id)

Returns the `ObjectID` of the canvas attached to the body. Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to retrieve a [CanvasLayer](class_canvaslayer.md#class-canvaslayer) from a nonzero `ObjectID`.

* * *

[int](class_int.md#class-int) **body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-collision-layer)

Returns the physics layer or layers the body belongs to, as a bitmask.

* * *

[int](class_int.md#class-int) **body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-collision-mask)

Returns the physics layer or layers the body can collide with, as a bitmask.

* * *

[float](class_float.md#class-float) **body\_get\_collision\_priority**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-collision-priority)

Returns the body's collision priority. This is used in the depenetration phase of [body\_test\_motion()](#class-physicsserver2d-method-body-test-motion). The higher the priority is, the lower the penetration into the body will be.

* * *

[Vector2](class_vector2.md#class-vector2) **body\_get\_constant\_force**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-constant-force)

Returns the body's total constant positional force applied during each physics update.

See [body\_add\_constant\_force()](#class-physicsserver2d-method-body-add-constant-force) and [body\_add\_constant\_central\_force()](#class-physicsserver2d-method-body-add-constant-central-force).

* * *

[float](class_float.md#class-float) **body\_get\_constant\_torque**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-constant-torque)

Returns the body's total constant rotational force applied during each physics update.

See [body\_add\_constant\_torque()](#class-physicsserver2d-method-body-add-constant-torque).

* * *

[CCDMode](#enum-physicsserver2d-ccdmode) **body\_get\_continuous\_collision\_detection\_mode**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-continuous-collision-detection-mode)

Returns the body's continuous collision detection mode.

* * *

[PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) **body\_get\_direct\_state**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-get-direct-state)

Returns the [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) of the body. Returns `null` if the body is destroyed or not assigned to a space.

* * *

[int](class_int.md#class-int) **body\_get\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-max-contacts-reported)

Returns the maximum number of contacts that the body can report. See [body\_set\_max\_contacts\_reported()](#class-physicsserver2d-method-body-set-max-contacts-reported).

* * *

[BodyMode](#enum-physicsserver2d-bodymode) **body\_get\_mode**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-mode)

Returns the body's mode.

* * *

[int](class_int.md#class-int) **body\_get\_object\_instance\_id**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-object-instance-id)

Returns the `ObjectID` attached to the body. Use [@GlobalScope.instance\_from\_id()](class_@globalscope.md#class-globalscope-method-instance-from-id) to retrieve an [Object](class_object.md#class-object) from a nonzero `ObjectID`.

* * *

[Variant](class_variant.md#class-variant) **body\_get\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver2d-bodyparameter)) const [🔗](#class-physicsserver2d-method-body-get-param)

Returns the value of the given body parameter.

* * *

[RID](class_rid.md#class-rid) **body\_get\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver2d-method-body-get-shape)

Returns the [RID](class_rid.md#class-rid) of the shape with the given index in the body's array of shapes.

* * *

[int](class_int.md#class-int) **body\_get\_shape\_count**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-shape-count)

Returns the number of shapes added to the body.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **body\_get\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver2d-method-body-get-shape-transform)

Returns the local transform matrix of the shape with the given index in the area's array of shapes.

* * *

[RID](class_rid.md#class-rid) **body\_get\_space**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-get-space)

Returns the [RID](class_rid.md#class-rid) of the space assigned to the body. Returns an empty [RID](class_rid.md#class-rid) if no space is assigned.

* * *

[Variant](class_variant.md#class-variant) **body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver2d-bodystate)) const [🔗](#class-physicsserver2d-method-body-get-state)

Returns the value of the given state of the body.

* * *

[bool](class_bool.md#class-bool) **body\_is\_omitting\_force\_integration**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-body-is-omitting-force-integration)

Returns `true` if the body is omitting the standard force integration. See [body\_set\_omit\_force\_integration()](#class-physicsserver2d-method-body-set-omit-force-integration).

* * *

void **body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-remove-collision-exception)

Removes `excepted_body` from the body's list of collision exceptions, so that collisions with it are no longer ignored.

* * *

void **body\_remove\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-remove-shape)

Removes the shape with the given index from the body's array of shapes. The shape itself is not deleted, so it can continue to be used elsewhere or added back later. As a result of this operation, the body's shapes which used to have indices higher than `shape_idx` will have their index decreased by one.

* * *

void **body\_reset\_mass\_properties**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-reset-mass-properties)

Restores the default inertia and center of mass of the body based on its shapes. This undoes any custom values previously set using [body\_set\_param()](#class-physicsserver2d-method-body-set-param).

* * *

void **body\_set\_axis\_velocity**(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsserver2d-method-body-set-axis-velocity)

Modifies the body's linear velocity so that its projection to the axis `axis_velocity.normalized()` is exactly `axis_velocity.length()`. This is useful for jumping behavior.

* * *

void **body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-set-collision-layer)

Sets the physics layer or layers the body belongs to, via a bitmask.

* * *

void **body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-set-collision-mask)

Sets the physics layer or layers the body can collide with, via a bitmask.

* * *

void **body\_set\_collision\_priority**(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-set-collision-priority)

Sets the body's collision priority. This is used in the depenetration phase of [body\_test\_motion()](#class-physicsserver2d-method-body-test-motion). The higher the priority is, the lower the penetration into the body will be.

* * *

void **body\_set\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-physicsserver2d-method-body-set-constant-force)

Sets the body's total constant positional force applied during each physics update.

See [body\_add\_constant\_force()](#class-physicsserver2d-method-body-add-constant-force) and [body\_add\_constant\_central\_force()](#class-physicsserver2d-method-body-add-constant-central-force).

* * *

void **body\_set\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-set-constant-torque)

Sets the body's total constant rotational force applied during each physics update.

See [body\_add\_constant\_torque()](#class-physicsserver2d-method-body-add-constant-torque).

* * *

void **body\_set\_continuous\_collision\_detection\_mode**(body: [RID](class_rid.md#class-rid), mode: [CCDMode](#enum-physicsserver2d-ccdmode)) [🔗](#class-physicsserver2d-method-body-set-continuous-collision-detection-mode)

Sets the continuous collision detection mode.

Continuous collision detection tries to predict where a moving body would collide in between physics updates, instead of moving it and correcting its movement if it collided.

* * *

void **body\_set\_force\_integration\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant) = null) [🔗](#class-physicsserver2d-method-body-set-force-integration-callback)

Sets the body's custom force integration callback function to `callable`. Use an empty [Callable](class_callable.md#class-callable) ( `Callable()`) to clear the custom callback.

The function `callable` will be called every physics tick, before the standard force integration (see [body\_set\_omit\_force\_integration()](#class-physicsserver2d-method-body-set-omit-force-integration)). It can be used for example to update the body's linear and angular velocity based on contact with other bodies.

If `userdata` is not `null`, the function `callable` must take the following two parameters:

1. `state`: a [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d) used to retrieve and modify the body's state,

2. `userdata`: a [Variant](class_variant.md#class-variant); its value will be the `userdata` passed into this method.


If `userdata` is `null`, then `callable` must take only the `state` parameter.

* * *

void **body\_set\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) [🔗](#class-physicsserver2d-method-body-set-max-contacts-reported)

Sets the maximum number of contacts that the body can report. If `amount` is greater than zero, then the body will keep track of at most this many contacts with other bodies.

* * *

void **body\_set\_mode**(body: [RID](class_rid.md#class-rid), mode: [BodyMode](#enum-physicsserver2d-bodymode)) [🔗](#class-physicsserver2d-method-body-set-mode)

Sets the body's mode.

* * *

void **body\_set\_omit\_force\_integration**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-body-set-omit-force-integration)

Sets whether the body omits the standard force integration. If `enable` is `true`, the body will not automatically use applied forces, torques, and damping to update the body's linear and angular velocity. In this case, [body\_set\_force\_integration\_callback()](#class-physicsserver2d-method-body-set-force-integration-callback) can be used to manually update the linear and angular velocity instead.

This method is called when the property [RigidBody2D.custom\_integrator](class_rigidbody2d.md#class-rigidbody2d-property-custom-integrator) is set.

* * *

void **body\_set\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver2d-bodyparameter), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver2d-method-body-set-param)

Sets the value of the given body parameter.

* * *

void **body\_set\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-set-shape)

Replaces the body's shape at the given index by another shape, while not affecting the `transform`, `disabled`, and one-way collision properties at the same index.

* * *

void **body\_set\_shape\_as\_one\_way\_collision**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool), margin: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-body-set-shape-as-one-way-collision)

Sets the one-way collision properties of the body's shape with the given index. If `enable` is `true`, the one-way collision direction given by the shape's local upward axis `body_get_shape_transform(body, shape_idx).y` will be used to ignore collisions with the shape in the opposite direction, and to ensure depenetration of kinematic bodies happens in this direction.

* * *

void **body\_set\_shape\_disabled**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-body-set-shape-disabled)

Sets the disabled property of the body's shape with the given index. If `disabled` is `true`, then the shape will be ignored in all collision detection.

* * *

void **body\_set\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-physicsserver2d-method-body-set-shape-transform)

Sets the local transform matrix of the body's shape with the given index.

* * *

void **body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-body-set-space)

Adds the body to the given space, after removing the body from the previously assigned space (if any). If the body's mode is set to [BODY\_MODE\_RIGID](#class-physicsserver2d-constant-body-mode-rigid), then adding the body to a space will have the following additional effects:

- If the parameter [BODY\_PARAM\_CENTER\_OF\_MASS](#class-physicsserver2d-constant-body-param-center-of-mass) has never been set explicitly, then the value of that parameter will be recalculated based on the body's shapes.

- If the parameter [BODY\_PARAM\_INERTIA](#class-physicsserver2d-constant-body-param-inertia) is set to a value `<= 0.0`, then the value of that parameter will be recalculated based on the body's shapes, mass, and center of mass.


**Note:** To remove a body from a space without immediately adding it back elsewhere, use `PhysicsServer2D.body_set_space(body, RID())`.

* * *

void **body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver2d-bodystate), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver2d-method-body-set-state)

Sets the value of a body's state.

**Note:** The state change doesn't take effect immediately. The state will change on the next physics frame.

* * *

void **body\_set\_state\_sync\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver2d-method-body-set-state-sync-callback)

Sets the body's state synchronization callback function to `callable`. Use an empty [Callable](class_callable.md#class-callable) ( `Callable()`) to clear the callback.

The function `callable` will be called every physics frame, assuming that the body was active during the previous physics tick, and can be used to fetch the latest state from the physics server.

The function `callable` must take the following parameters:

1. `state`: a [PhysicsDirectBodyState2D](class_physicsdirectbodystate2d.md#class-physicsdirectbodystate2d), used to retrieve the body's state.


* * *

[bool](class_bool.md#class-bool) **body\_test\_motion**(body: [RID](class_rid.md#class-rid), parameters: [PhysicsTestMotionParameters2D](class_physicstestmotionparameters2d.md#class-physicstestmotionparameters2d), result: [PhysicsTestMotionResult2D](class_physicstestmotionresult2d.md#class-physicstestmotionresult2d) = null) [🔗](#class-physicsserver2d-method-body-test-motion)

Returns `true` if a collision would result from moving the body along a motion vector from a given point in space. See [PhysicsTestMotionParameters2D](class_physicstestmotionparameters2d.md#class-physicstestmotionparameters2d) for the available motion parameters. Optionally a [PhysicsTestMotionResult2D](class_physicstestmotionresult2d.md#class-physicstestmotionresult2d) object can be passed, which will be used to store the information about the resulting collision.

* * *

[RID](class_rid.md#class-rid) **capsule\_shape\_create**() [🔗](#class-physicsserver2d-method-capsule-shape-create)

Creates a 2D capsule shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the capsule's height and radius.

* * *

[RID](class_rid.md#class-rid) **circle\_shape\_create**() [🔗](#class-physicsserver2d-method-circle-shape-create)

Creates a 2D circle shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the circle's radius.

* * *

[RID](class_rid.md#class-rid) **concave\_polygon\_shape\_create**() [🔗](#class-physicsserver2d-method-concave-polygon-shape-create)

Creates a 2D concave polygon shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the concave polygon's segments.

* * *

[RID](class_rid.md#class-rid) **convex\_polygon\_shape\_create**() [🔗](#class-physicsserver2d-method-convex-polygon-shape-create)

Creates a 2D convex polygon shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the convex polygon's points.

* * *

[float](class_float.md#class-float) **damped\_spring\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](#enum-physicsserver2d-dampedspringparam)) const [🔗](#class-physicsserver2d-method-damped-spring-joint-get-param)

Returns the value of the given damped spring joint parameter.

* * *

void **damped\_spring\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [DampedSpringParam](#enum-physicsserver2d-dampedspringparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-damped-spring-joint-set-param)

Sets the value of the given damped spring joint parameter.

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-free-rid)

Destroys any of the objects created by PhysicsServer2D. If the [RID](class_rid.md#class-rid) passed is not one of the objects that can be created by PhysicsServer2D, an error will be printed to the console.

* * *

[int](class_int.md#class-int) **get\_process\_info**(process\_info: [ProcessInfo](#enum-physicsserver2d-processinfo)) [🔗](#class-physicsserver2d-method-get-process-info)

Returns the value of a physics engine state specified by `process_info`.

* * *

void **joint\_clear**(joint: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-joint-clear)

Destroys the joint with the given [RID](class_rid.md#class-rid), creates a new uninitialized joint, and makes the [RID](class_rid.md#class-rid) refer to this new joint.

* * *

[RID](class_rid.md#class-rid) **joint\_create**() [🔗](#class-physicsserver2d-method-joint-create)

Creates a 2D joint in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. To set the joint type, use [joint\_make\_damped\_spring()](#class-physicsserver2d-method-joint-make-damped-spring), [joint\_make\_groove()](#class-physicsserver2d-method-joint-make-groove) or [joint\_make\_pin()](#class-physicsserver2d-method-joint-make-pin). Use [joint\_set\_param()](#class-physicsserver2d-method-joint-set-param) to set generic joint parameters.

* * *

void **joint\_disable\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-joint-disable-collisions-between-bodies)

Sets whether the bodies attached to the [Joint2D](class_joint2d.md#class-joint2d) will collide with each other.

* * *

[float](class_float.md#class-float) **joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [JointParam](#enum-physicsserver2d-jointparam)) const [🔗](#class-physicsserver2d-method-joint-get-param)

Returns the value of the given joint parameter.

* * *

[JointType](#enum-physicsserver2d-jointtype) **joint\_get\_type**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-joint-get-type)

Returns the joint's type.

* * *

[bool](class_bool.md#class-bool) **joint\_is\_disabled\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-joint-is-disabled-collisions-between-bodies)

Returns whether the bodies attached to the [Joint2D](class_joint2d.md#class-joint2d) will collide with each other.

* * *

void **joint\_make\_damped\_spring**(joint: [RID](class_rid.md#class-rid), anchor\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-physicsserver2d-method-joint-make-damped-spring)

Makes the joint a damped spring joint, attached at the point `anchor_a` (given in global coordinates) on the body `body_a` and at the point `anchor_b` (given in global coordinates) on the body `body_b`. To set the parameters which are specific to the damped spring, see [damped\_spring\_joint\_set\_param()](#class-physicsserver2d-method-damped-spring-joint-set-param).

* * *

void **joint\_make\_groove**(joint: [RID](class_rid.md#class-rid), groove1\_a: [Vector2](class_vector2.md#class-vector2), groove2\_a: [Vector2](class_vector2.md#class-vector2), anchor\_b: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid) = RID(), body\_b: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-physicsserver2d-method-joint-make-groove)

Makes the joint a groove joint.

* * *

void **joint\_make\_pin**(joint: [RID](class_rid.md#class-rid), anchor: [Vector2](class_vector2.md#class-vector2), body\_a: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid) = RID()) [🔗](#class-physicsserver2d-method-joint-make-pin)

Makes the joint a pin joint. If `body_b` is an empty [RID](class_rid.md#class-rid), then `body_a` is pinned to the point `anchor` (given in global coordinates); otherwise, `body_a` is pinned to `body_b` at the point `anchor` (given in global coordinates). To set the parameters which are specific to the pin joint, see [pin\_joint\_set\_param()](#class-physicsserver2d-method-pin-joint-set-param).

* * *

void **joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [JointParam](#enum-physicsserver2d-jointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-joint-set-param)

Sets the value of the given joint parameter.

* * *

[bool](class_bool.md#class-bool) **pin\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](#enum-physicsserver2d-pinjointflag)) const [🔗](#class-physicsserver2d-method-pin-joint-get-flag)

Gets a pin joint flag.

* * *

[float](class_float.md#class-float) **pin\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver2d-pinjointparam)) const [🔗](#class-physicsserver2d-method-pin-joint-get-param)

Returns the value of a pin joint parameter.

* * *

void **pin\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), flag: [PinJointFlag](#enum-physicsserver2d-pinjointflag), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-pin-joint-set-flag)

Sets a pin joint flag.

* * *

void **pin\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver2d-pinjointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-pin-joint-set-param)

Sets a pin joint parameter.

* * *

[RID](class_rid.md#class-rid) **rectangle\_shape\_create**() [🔗](#class-physicsserver2d-method-rectangle-shape-create)

Creates a 2D rectangle shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the rectangle's half-extents.

* * *

[RID](class_rid.md#class-rid) **segment\_shape\_create**() [🔗](#class-physicsserver2d-method-segment-shape-create)

Creates a 2D segment shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the segment's start and end points.

* * *

[RID](class_rid.md#class-rid) **separation\_ray\_shape\_create**() [🔗](#class-physicsserver2d-method-separation-ray-shape-create)

Creates a 2D separation ray shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the shape's `length` and `slide_on_slope` properties.

* * *

void **set\_active**(active: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-set-active)

Activates or deactivates the 2D physics server. If `active` is `false`, then the physics server will not do anything in its physics step.

* * *

[Variant](class_variant.md#class-variant) **shape\_get\_data**(shape: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-shape-get-data)

Returns the shape data that defines the configuration of the shape, such as the half-extents of a rectangle or the segments of a concave shape. See [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) for the precise format of this data in each case.

* * *

[ShapeType](#enum-physicsserver2d-shapetype) **shape\_get\_type**(shape: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-shape-get-type)

Returns the shape's type.

* * *

void **shape\_set\_data**(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver2d-method-shape-set-data)

Sets the shape data that defines the configuration of the shape. The `data` to be passed depends on the shape's type (see [shape\_get\_type()](#class-physicsserver2d-method-shape-get-type)):

- [SHAPE\_WORLD\_BOUNDARY](#class-physicsserver2d-constant-shape-world-boundary): an array of length two containing a [Vector2](class_vector2.md#class-vector2) `normal` direction and a [float](class_float.md#class-float) distance `d`,

- [SHAPE\_SEPARATION\_RAY](#class-physicsserver2d-constant-shape-separation-ray): a dictionary containing the key `length` with a [float](class_float.md#class-float) value and the key `slide_on_slope` with a [bool](class_bool.md#class-bool) value,

- [SHAPE\_SEGMENT](#class-physicsserver2d-constant-shape-segment): a [Rect2](class_rect2.md#class-rect2) `rect` containing the first point of the segment in `rect.position` and the second point of the segment in `rect.size`,

- [SHAPE\_CIRCLE](#class-physicsserver2d-constant-shape-circle): a [float](class_float.md#class-float) `radius`,

- [SHAPE\_RECTANGLE](#class-physicsserver2d-constant-shape-rectangle): a [Vector2](class_vector2.md#class-vector2) `half_extents`,

- [SHAPE\_CAPSULE](#class-physicsserver2d-constant-shape-capsule): an array of length two (or a [Vector2](class_vector2.md#class-vector2)) containing a [float](class_float.md#class-float) `height` and a [float](class_float.md#class-float) `radius`,

- [SHAPE\_CONVEX\_POLYGON](#class-physicsserver2d-constant-shape-convex-polygon): either a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) of points defining a convex polygon in counterclockwise order (the clockwise outward normal of each segment formed by consecutive points is calculated internally), or a [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array) of length divisible by four so that every 4-tuple of [float](class_float.md#class-float) s contains the coordinates of a point followed by the coordinates of the clockwise outward normal vector to the segment between the current point and the next point,

- [SHAPE\_CONCAVE\_POLYGON](#class-physicsserver2d-constant-shape-concave-polygon): a [PackedVector2Array](class_packedvector2array.md#class-packedvector2array) of length divisible by two (each pair of points forms one segment).


**Warning:** In the case of [SHAPE\_CONVEX\_POLYGON](#class-physicsserver2d-constant-shape-convex-polygon), this method does not check if the points supplied actually form a convex polygon (unlike the [CollisionPolygon2D.polygon](class_collisionpolygon2d.md#class-collisionpolygon2d-property-polygon) property).

* * *

[RID](class_rid.md#class-rid) **space\_create**() [🔗](#class-physicsserver2d-method-space-create)

Creates a 2D space in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. A space contains bodies and areas, and controls the stepping of the physics simulation of the objects in it.

* * *

[PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d) **space\_get\_direct\_state**(space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver2d-method-space-get-direct-state)

Returns the state of a space, a [PhysicsDirectSpaceState2D](class_physicsdirectspacestate2d.md#class-physicsdirectspacestate2d). This object can be used for collision/intersection queries.

* * *

[float](class_float.md#class-float) **space\_get\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver2d-spaceparameter)) const [🔗](#class-physicsserver2d-method-space-get-param)

Returns the value of the given space parameter.

* * *

[bool](class_bool.md#class-bool) **space\_is\_active**(space: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver2d-method-space-is-active)

Returns `true` if the space is active.

* * *

void **space\_set\_active**(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver2d-method-space-set-active)

Activates or deactivates the space. If `active` is `false`, then the physics server will not do anything with this space in its physics step.

* * *

void **space\_set\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver2d-spaceparameter), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver2d-method-space-set-param)

Sets the value of the given space parameter.

* * *

[RID](class_rid.md#class-rid) **world\_boundary\_shape\_create**() [🔗](#class-physicsserver2d-method-world-boundary-shape-create)

Creates a 2D world boundary shape in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. Use [shape\_set\_data()](#class-physicsserver2d-method-shape-set-data) to set the shape's normal direction and distance properties.

[Previous](class_physicsrayqueryparameters3d.md "PhysicsRayQueryParameters3D") [Next](class_physicsserver2dextension.md "PhysicsServer2DExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsrayqueryparameters3d.md "PhysicsRayQueryParameters3D") [Next](class_physicsserver2dextension.md "PhysicsServer2DExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).