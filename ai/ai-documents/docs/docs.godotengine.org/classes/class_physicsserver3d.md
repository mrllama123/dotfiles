---
title: PhysicsServer3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_physicsserver3d.html
crawled_at: "2026-08-13T10:35:04+12:00"
content_hash: cd165b402ed31bced6d73ba6daae7a1b28625c7f88f08cc580cb0e420ee3ceff
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PhysicsServer3D

* * *

# PhysicsServer3D

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [PhysicsServer3DExtension](class_physicsserver3dextension.md#class-physicsserver3dextension)

A server interface for low-level 3D physics access.

## Description

PhysicsServer3D is the server responsible for all 3D physics. It can directly create and manipulate all physics objects:

- A _space_ is a self-contained world for a physics simulation. It contains bodies, areas, and joints. Its state can be queried for collision and intersection information, and several parameters of the simulation can be modified.

- A _shape_ is a geometric shape such as a sphere, a box, a cylinder, or a polygon. It can be used for collision detection by adding it to a body/area, possibly with an extra transformation relative to the body/area's origin. Bodies/areas can have multiple (transformed) shapes added to them, and a single shape can be added to bodies/areas multiple times with different local transformations.

- A _body_ is a physical object which can be in static, kinematic, or rigid mode. Its state (such as position and velocity) can be queried and updated. A force integration callback can be set to customize the body's physics.

- An _area_ is a region in space which can be used to detect bodies and areas entering and exiting it. A body monitoring callback can be set to report entering/exiting body shapes, and similarly an area monitoring callback can be set. Gravity and damping can be overridden within the area by setting area parameters.

- A _joint_ is a constraint, either between two bodies or on one body relative to a point. Parameters such as the joint bias and the rest length of a spring joint can be adjusted.


Physics objects in **PhysicsServer3D** may be created and manipulated independently; they do not have to be tied to nodes in the scene tree.

**Note:** All the 3D physics nodes use the physics server internally. Adding a physics node to the scene tree will cause a corresponding physics object to be created in the physics server. A rigid body node registers a callback that updates the node's transform with the transform of the respective body object in the physics server (every physics update). An area node registers a callback to inform the area node about overlaps with the respective area object in the physics server. The raycast node queries the direct state of the relevant space in the physics server.

## Methods

|     |     |
| --- | --- |
| void | [area\_add\_shape](#class-physicsserver3d-method-area-add-shape)(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) |
| void | [area\_attach\_object\_instance\_id](#class-physicsserver3d-method-area-attach-object-instance-id)(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [area\_clear\_shapes](#class-physicsserver3d-method-area-clear-shapes)(area: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [area\_create](#class-physicsserver3d-method-area-create)() |
| [int](class_int.md#class-int) | [area\_get\_collision\_layer](#class-physicsserver3d-method-area-get-collision-layer)(area: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [area\_get\_collision\_mask](#class-physicsserver3d-method-area-get-collision-mask)(area: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [area\_get\_object\_instance\_id](#class-physicsserver3d-method-area-get-object-instance-id)(area: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [area\_get\_param](#class-physicsserver3d-method-area-get-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver3d-areaparameter)) const |
| [RID](class_rid.md#class-rid) | [area\_get\_shape](#class-physicsserver3d-method-area-get-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [area\_get\_shape\_count](#class-physicsserver3d-method-area-get-shape-count)(area: [RID](class_rid.md#class-rid)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [area\_get\_shape\_transform](#class-physicsserver3d-method-area-get-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [area\_get\_space](#class-physicsserver3d-method-area-get-space)(area: [RID](class_rid.md#class-rid)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [area\_get\_transform](#class-physicsserver3d-method-area-get-transform)(area: [RID](class_rid.md#class-rid)) const |
| void | [area\_remove\_shape](#class-physicsserver3d-method-area-remove-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) |
| void | [area\_set\_area\_monitor\_callback](#class-physicsserver3d-method-area-set-area-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [area\_set\_collision\_layer](#class-physicsserver3d-method-area-set-collision-layer)(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| void | [area\_set\_collision\_mask](#class-physicsserver3d-method-area-set-collision-mask)(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [area\_set\_monitor\_callback](#class-physicsserver3d-method-area-set-monitor-callback)(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) |
| void | [area\_set\_monitorable](#class-physicsserver3d-method-area-set-monitorable)(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) |
| void | [area\_set\_param](#class-physicsserver3d-method-area-set-param)(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver3d-areaparameter), value: [Variant](class_variant.md#class-variant)) |
| void | [area\_set\_ray\_pickable](#class-physicsserver3d-method-area-set-ray-pickable)(area: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [area\_set\_shape](#class-physicsserver3d-method-area-set-shape)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) |
| void | [area\_set\_shape\_disabled](#class-physicsserver3d-method-area-set-shape-disabled)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [area\_set\_shape\_transform](#class-physicsserver3d-method-area-set-shape-transform)(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [area\_set\_space](#class-physicsserver3d-method-area-set-space)(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) |
| void | [area\_set\_transform](#class-physicsserver3d-method-area-set-transform)(area: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [body\_add\_collision\_exception](#class-physicsserver3d-method-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) |
| void | [body\_add\_constant\_central\_force](#class-physicsserver3d-method-body-add-constant-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_add\_constant\_force](#class-physicsserver3d-method-body-add-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [body\_add\_constant\_torque](#class-physicsserver3d-method-body-add-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_add\_shape](#class-physicsserver3d-method-body-add-shape)(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) |
| void | [body\_apply\_central\_force](#class-physicsserver3d-method-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_apply\_central\_impulse](#class-physicsserver3d-method-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_apply\_force](#class-physicsserver3d-method-body-apply-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [body\_apply\_impulse](#class-physicsserver3d-method-body-apply-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) |
| void | [body\_apply\_torque](#class-physicsserver3d-method-body-apply-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_apply\_torque\_impulse](#class-physicsserver3d-method-body-apply-torque-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_attach\_object\_instance\_id](#class-physicsserver3d-method-body-attach-object-instance-id)(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) |
| void | [body\_clear\_shapes](#class-physicsserver3d-method-body-clear-shapes)(body: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [body\_create](#class-physicsserver3d-method-body-create)() |
| [int](class_int.md#class-int) | [body\_get\_collision\_layer](#class-physicsserver3d-method-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [body\_get\_collision\_mask](#class-physicsserver3d-method-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [body\_get\_collision\_priority](#class-physicsserver3d-method-body-get-collision-priority)(body: [RID](class_rid.md#class-rid)) const |
| [Vector3](class_vector3.md#class-vector3) | [body\_get\_constant\_force](#class-physicsserver3d-method-body-get-constant-force)(body: [RID](class_rid.md#class-rid)) const |
| [Vector3](class_vector3.md#class-vector3) | [body\_get\_constant\_torque](#class-physicsserver3d-method-body-get-constant-torque)(body: [RID](class_rid.md#class-rid)) const |
| [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) | [body\_get\_direct\_state](#class-physicsserver3d-method-body-get-direct-state)(body: [RID](class_rid.md#class-rid)) |
| [int](class_int.md#class-int) | [body\_get\_max\_contacts\_reported](#class-physicsserver3d-method-body-get-max-contacts-reported)(body: [RID](class_rid.md#class-rid)) const |
| [BodyMode](#enum-physicsserver3d-bodymode) | [body\_get\_mode](#class-physicsserver3d-method-body-get-mode)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [body\_get\_object\_instance\_id](#class-physicsserver3d-method-body-get-object-instance-id)(body: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [body\_get\_param](#class-physicsserver3d-method-body-get-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver3d-bodyparameter)) const |
| [RID](class_rid.md#class-rid) | [body\_get\_shape](#class-physicsserver3d-method-body-get-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [body\_get\_shape\_count](#class-physicsserver3d-method-body-get-shape-count)(body: [RID](class_rid.md#class-rid)) const |
| [Transform3D](class_transform3d.md#class-transform3d) | [body\_get\_shape\_transform](#class-physicsserver3d-method-body-get-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [body\_get\_space](#class-physicsserver3d-method-body-get-space)(body: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [body\_get\_state](#class-physicsserver3d-method-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate)) const |
| [bool](class_bool.md#class-bool) | [body\_is\_axis\_locked](#class-physicsserver3d-method-body-is-axis-locked)(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](#enum-physicsserver3d-bodyaxis)) const |
| [bool](class_bool.md#class-bool) | [body\_is\_continuous\_collision\_detection\_enabled](#class-physicsserver3d-method-body-is-continuous-collision-detection-enabled)(body: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [body\_is\_omitting\_force\_integration](#class-physicsserver3d-method-body-is-omitting-force-integration)(body: [RID](class_rid.md#class-rid)) const |
| void | [body\_remove\_collision\_exception](#class-physicsserver3d-method-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) |
| void | [body\_remove\_shape](#class-physicsserver3d-method-body-remove-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) |
| void | [body\_reset\_mass\_properties](#class-physicsserver3d-method-body-reset-mass-properties)(body: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_axis\_lock](#class-physicsserver3d-method-body-set-axis-lock)(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_axis\_velocity](#class-physicsserver3d-method-body-set-axis-velocity)(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_set\_collision\_layer](#class-physicsserver3d-method-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| void | [body\_set\_collision\_mask](#class-physicsserver3d-method-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [body\_set\_collision\_priority](#class-physicsserver3d-method-body-set-collision-priority)(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) |
| void | [body\_set\_constant\_force](#class-physicsserver3d-method-body-set-constant-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_set\_constant\_torque](#class-physicsserver3d-method-body-set-constant-torque)(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) |
| void | [body\_set\_enable\_continuous\_collision\_detection](#class-physicsserver3d-method-body-set-enable-continuous-collision-detection)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_force\_integration\_callback](#class-physicsserver3d-method-body-set-force-integration-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant) = null) |
| void | [body\_set\_max\_contacts\_reported](#class-physicsserver3d-method-body-set-max-contacts-reported)(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) |
| void | [body\_set\_mode](#class-physicsserver3d-method-body-set-mode)(body: [RID](class_rid.md#class-rid), mode: [BodyMode](#enum-physicsserver3d-bodymode)) |
| void | [body\_set\_omit\_force\_integration](#class-physicsserver3d-method-body-set-omit-force-integration)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_param](#class-physicsserver3d-method-body-set-param)(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver3d-bodyparameter), value: [Variant](class_variant.md#class-variant)) |
| void | [body\_set\_ray\_pickable](#class-physicsserver3d-method-body-set-ray-pickable)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_shape](#class-physicsserver3d-method-body-set-shape)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_shape\_disabled](#class-physicsserver3d-method-body-set-shape-disabled)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [body\_set\_shape\_transform](#class-physicsserver3d-method-body-set-shape-transform)(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [body\_set\_space](#class-physicsserver3d-method-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) |
| void | [body\_set\_state](#class-physicsserver3d-method-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate), value: [Variant](class_variant.md#class-variant)) |
| void | [body\_set\_state\_sync\_callback](#class-physicsserver3d-method-body-set-state-sync-callback)(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) |
| [bool](class_bool.md#class-bool) | [body\_test\_motion](#class-physicsserver3d-method-body-test-motion)(body: [RID](class_rid.md#class-rid), parameters: [PhysicsTestMotionParameters3D](class_physicstestmotionparameters3d.md#class-physicstestmotionparameters3d), result: [PhysicsTestMotionResult3D](class_physicstestmotionresult3d.md#class-physicstestmotionresult3d) = null) |
| [RID](class_rid.md#class-rid) | [box\_shape\_create](#class-physicsserver3d-method-box-shape-create)() |
| [RID](class_rid.md#class-rid) | [capsule\_shape\_create](#class-physicsserver3d-method-capsule-shape-create)() |
| [RID](class_rid.md#class-rid) | [concave\_polygon\_shape\_create](#class-physicsserver3d-method-concave-polygon-shape-create)() |
| [float](class_float.md#class-float) | [cone\_twist\_joint\_get\_param](#class-physicsserver3d-method-cone-twist-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam)) const |
| void | [cone\_twist\_joint\_set\_param](#class-physicsserver3d-method-cone-twist-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam), value: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [convex\_polygon\_shape\_create](#class-physicsserver3d-method-convex-polygon-shape-create)() |
| [RID](class_rid.md#class-rid) | [custom\_shape\_create](#class-physicsserver3d-method-custom-shape-create)() |
| [RID](class_rid.md#class-rid) | [cylinder\_shape\_create](#class-physicsserver3d-method-cylinder-shape-create)() |
| void | [free\_rid](#class-physicsserver3d-method-free-rid)(rid: [RID](class_rid.md#class-rid)) |
| [bool](class_bool.md#class-bool) | [generic\_6dof\_joint\_get\_flag](#class-physicsserver3d-method-generic-6dof-joint-get-flag)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag)) const |
| [float](class_float.md#class-float) | [generic\_6dof\_joint\_get\_param](#class-physicsserver3d-method-generic-6dof-joint-get-param)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam)) const |
| void | [generic\_6dof\_joint\_set\_flag](#class-physicsserver3d-method-generic-6dof-joint-set-flag)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag), enable: [bool](class_bool.md#class-bool)) |
| void | [generic\_6dof\_joint\_set\_param](#class-physicsserver3d-method-generic-6dof-joint-set-param)(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam), value: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [get\_process\_info](#class-physicsserver3d-method-get-process-info)(process\_info: [ProcessInfo](#enum-physicsserver3d-processinfo)) |
| [RID](class_rid.md#class-rid) | [heightmap\_shape\_create](#class-physicsserver3d-method-heightmap-shape-create)() |
| [bool](class_bool.md#class-bool) | [hinge\_joint\_get\_flag](#class-physicsserver3d-method-hinge-joint-get-flag)(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](#enum-physicsserver3d-hingejointflag)) const |
| [float](class_float.md#class-float) | [hinge\_joint\_get\_param](#class-physicsserver3d-method-hinge-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](#enum-physicsserver3d-hingejointparam)) const |
| void | [hinge\_joint\_set\_flag](#class-physicsserver3d-method-hinge-joint-set-flag)(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](#enum-physicsserver3d-hingejointflag), enabled: [bool](class_bool.md#class-bool)) |
| void | [hinge\_joint\_set\_param](#class-physicsserver3d-method-hinge-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](#enum-physicsserver3d-hingejointparam), value: [float](class_float.md#class-float)) |
| void | [joint\_clear](#class-physicsserver3d-method-joint-clear)(joint: [RID](class_rid.md#class-rid)) |
| [RID](class_rid.md#class-rid) | [joint\_create](#class-physicsserver3d-method-joint-create)() |
| void | [joint\_disable\_collisions\_between\_bodies](#class-physicsserver3d-method-joint-disable-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) |
| [int](class_int.md#class-int) | [joint\_get\_solver\_priority](#class-physicsserver3d-method-joint-get-solver-priority)(joint: [RID](class_rid.md#class-rid)) const |
| [JointType](#enum-physicsserver3d-jointtype) | [joint\_get\_type](#class-physicsserver3d-method-joint-get-type)(joint: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [joint\_is\_disabled\_collisions\_between\_bodies](#class-physicsserver3d-method-joint-is-disabled-collisions-between-bodies)(joint: [RID](class_rid.md#class-rid)) const |
| void | [joint\_make\_cone\_twist](#class-physicsserver3d-method-joint-make-cone-twist)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [joint\_make\_generic\_6dof](#class-physicsserver3d-method-joint-make-generic-6dof)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [joint\_make\_hinge](#class-physicsserver3d-method-joint-make-hinge)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), hinge\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), hinge\_B: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [joint\_make\_pin](#class-physicsserver3d-method-joint-make-pin)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) |
| void | [joint\_make\_slider](#class-physicsserver3d-method-joint-make-slider)(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [joint\_set\_solver\_priority](#class-physicsserver3d-method-joint-set-solver-priority)(joint: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) |
| [Vector3](class_vector3.md#class-vector3) | [pin\_joint\_get\_local\_a](#class-physicsserver3d-method-pin-joint-get-local-a)(joint: [RID](class_rid.md#class-rid)) const |
| [Vector3](class_vector3.md#class-vector3) | [pin\_joint\_get\_local\_b](#class-physicsserver3d-method-pin-joint-get-local-b)(joint: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [pin\_joint\_get\_param](#class-physicsserver3d-method-pin-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver3d-pinjointparam)) const |
| void | [pin\_joint\_set\_local\_a](#class-physicsserver3d-method-pin-joint-set-local-a)(joint: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3)) |
| void | [pin\_joint\_set\_local\_b](#class-physicsserver3d-method-pin-joint-set-local-b)(joint: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) |
| void | [pin\_joint\_set\_param](#class-physicsserver3d-method-pin-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver3d-pinjointparam), value: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [separation\_ray\_shape\_create](#class-physicsserver3d-method-separation-ray-shape-create)() |
| void | [set\_active](#class-physicsserver3d-method-set-active)(active: [bool](class_bool.md#class-bool)) |
| [Variant](class_variant.md#class-variant) | [shape\_get\_data](#class-physicsserver3d-method-shape-get-data)(shape: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [shape\_get\_margin](#class-physicsserver3d-method-shape-get-margin)(shape: [RID](class_rid.md#class-rid)) const |
| [ShapeType](#enum-physicsserver3d-shapetype) | [shape\_get\_type](#class-physicsserver3d-method-shape-get-type)(shape: [RID](class_rid.md#class-rid)) const |
| void | [shape\_set\_data](#class-physicsserver3d-method-shape-set-data)(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) |
| void | [shape\_set\_margin](#class-physicsserver3d-method-shape-set-margin)(shape: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [slider\_joint\_get\_param](#class-physicsserver3d-method-slider-joint-get-param)(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](#enum-physicsserver3d-sliderjointparam)) const |
| void | [slider\_joint\_set\_param](#class-physicsserver3d-method-slider-joint-set-param)(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](#enum-physicsserver3d-sliderjointparam), value: [float](class_float.md#class-float)) |
| void | [soft\_body\_add\_collision\_exception](#class-physicsserver3d-method-soft-body-add-collision-exception)(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) |
| void | [soft\_body\_apply\_central\_force](#class-physicsserver3d-method-soft-body-apply-central-force)(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [soft\_body\_apply\_central\_impulse](#class-physicsserver3d-method-soft-body-apply-central-impulse)(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) |
| void | [soft\_body\_apply\_point\_force](#class-physicsserver3d-method-soft-body-apply-point-force)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [soft\_body\_apply\_point\_impulse](#class-physicsserver3d-method-soft-body-apply-point-impulse)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) |
| [RID](class_rid.md#class-rid) | [soft\_body\_create](#class-physicsserver3d-method-soft-body-create)() |
| [AABB](class_aabb.md#class-aabb) | [soft\_body\_get\_bounds](#class-physicsserver3d-method-soft-body-get-bounds)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [soft\_body\_get\_collision\_layer](#class-physicsserver3d-method-soft-body-get-collision-layer)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [soft\_body\_get\_collision\_mask](#class-physicsserver3d-method-soft-body-get-collision-mask)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_damping\_coefficient](#class-physicsserver3d-method-soft-body-get-damping-coefficient)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_drag\_coefficient](#class-physicsserver3d-method-soft-body-get-drag-coefficient)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_linear\_stiffness](#class-physicsserver3d-method-soft-body-get-linear-stiffness)(body: [RID](class_rid.md#class-rid)) const |
| [Vector3](class_vector3.md#class-vector3) | [soft\_body\_get\_point\_global\_position](#class-physicsserver3d-method-soft-body-get-point-global-position)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_pressure\_coefficient](#class-physicsserver3d-method-soft-body-get-pressure-coefficient)(body: [RID](class_rid.md#class-rid)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_shrinking\_factor](#class-physicsserver3d-method-soft-body-get-shrinking-factor)(body: [RID](class_rid.md#class-rid)) const |
| [int](class_int.md#class-int) | [soft\_body\_get\_simulation\_precision](#class-physicsserver3d-method-soft-body-get-simulation-precision)(body: [RID](class_rid.md#class-rid)) const |
| [RID](class_rid.md#class-rid) | [soft\_body\_get\_space](#class-physicsserver3d-method-soft-body-get-space)(body: [RID](class_rid.md#class-rid)) const |
| [Variant](class_variant.md#class-variant) | [soft\_body\_get\_state](#class-physicsserver3d-method-soft-body-get-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate)) const |
| [float](class_float.md#class-float) | [soft\_body\_get\_total\_mass](#class-physicsserver3d-method-soft-body-get-total-mass)(body: [RID](class_rid.md#class-rid)) const |
| [bool](class_bool.md#class-bool) | [soft\_body\_is\_point\_pinned](#class-physicsserver3d-method-soft-body-is-point-pinned)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) const |
| void | [soft\_body\_move\_point](#class-physicsserver3d-method-soft-body-move-point)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), global\_position: [Vector3](class_vector3.md#class-vector3)) |
| void | [soft\_body\_pin\_point](#class-physicsserver3d-method-soft-body-pin-point)(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), pin: [bool](class_bool.md#class-bool)) |
| void | [soft\_body\_remove\_all\_pinned\_points](#class-physicsserver3d-method-soft-body-remove-all-pinned-points)(body: [RID](class_rid.md#class-rid)) |
| void | [soft\_body\_remove\_collision\_exception](#class-physicsserver3d-method-soft-body-remove-collision-exception)(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) |
| void | [soft\_body\_set\_collision\_layer](#class-physicsserver3d-method-soft-body-set-collision-layer)(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) |
| void | [soft\_body\_set\_collision\_mask](#class-physicsserver3d-method-soft-body-set-collision-mask)(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) |
| void | [soft\_body\_set\_damping\_coefficient](#class-physicsserver3d-method-soft-body-set-damping-coefficient)(body: [RID](class_rid.md#class-rid), damping\_coefficient: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_drag\_coefficient](#class-physicsserver3d-method-soft-body-set-drag-coefficient)(body: [RID](class_rid.md#class-rid), drag\_coefficient: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_linear\_stiffness](#class-physicsserver3d-method-soft-body-set-linear-stiffness)(body: [RID](class_rid.md#class-rid), stiffness: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_mesh](#class-physicsserver3d-method-soft-body-set-mesh)(body: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) |
| void | [soft\_body\_set\_pressure\_coefficient](#class-physicsserver3d-method-soft-body-set-pressure-coefficient)(body: [RID](class_rid.md#class-rid), pressure\_coefficient: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_ray\_pickable](#class-physicsserver3d-method-soft-body-set-ray-pickable)(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) |
| void | [soft\_body\_set\_shrinking\_factor](#class-physicsserver3d-method-soft-body-set-shrinking-factor)(body: [RID](class_rid.md#class-rid), shrinking\_factor: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_simulation\_precision](#class-physicsserver3d-method-soft-body-set-simulation-precision)(body: [RID](class_rid.md#class-rid), simulation\_precision: [int](class_int.md#class-int)) |
| void | [soft\_body\_set\_space](#class-physicsserver3d-method-soft-body-set-space)(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) |
| void | [soft\_body\_set\_state](#class-physicsserver3d-method-soft-body-set-state)(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate), variant: [Variant](class_variant.md#class-variant)) |
| void | [soft\_body\_set\_total\_mass](#class-physicsserver3d-method-soft-body-set-total-mass)(body: [RID](class_rid.md#class-rid), total\_mass: [float](class_float.md#class-float)) |
| void | [soft\_body\_set\_transform](#class-physicsserver3d-method-soft-body-set-transform)(body: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [soft\_body\_update\_rendering\_server](#class-physicsserver3d-method-soft-body-update-rendering-server)(body: [RID](class_rid.md#class-rid), rendering\_server\_handler: [PhysicsServer3DRenderingServerHandler](class_physicsserver3drenderingserverhandler.md#class-physicsserver3drenderingserverhandler)) |
| [RID](class_rid.md#class-rid) | [space\_create](#class-physicsserver3d-method-space-create)() |
| [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) | [space\_get\_direct\_state](#class-physicsserver3d-method-space-get-direct-state)(space: [RID](class_rid.md#class-rid)) |
| [float](class_float.md#class-float) | [space\_get\_param](#class-physicsserver3d-method-space-get-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver3d-spaceparameter)) const |
| [bool](class_bool.md#class-bool) | [space\_is\_active](#class-physicsserver3d-method-space-is-active)(space: [RID](class_rid.md#class-rid)) const |
| void | [space\_set\_active](#class-physicsserver3d-method-space-set-active)(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) |
| void | [space\_set\_param](#class-physicsserver3d-method-space-set-param)(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver3d-spaceparameter), value: [float](class_float.md#class-float)) |
| [RID](class_rid.md#class-rid) | [sphere\_shape\_create](#class-physicsserver3d-method-sphere-shape-create)() |
| [RID](class_rid.md#class-rid) | [world\_boundary\_shape\_create](#class-physicsserver3d-method-world-boundary-shape-create)() |

* * *

## Enumerations

enum **JointType**: [🔗](#enum-physicsserver3d-jointtype)

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_PIN** = `0`

The [Joint3D](class_joint3d.md#class-joint3d) is a [PinJoint3D](class_pinjoint3d.md#class-pinjoint3d).

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_HINGE** = `1`

The [Joint3D](class_joint3d.md#class-joint3d) is a [HingeJoint3D](class_hingejoint3d.md#class-hingejoint3d).

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_SLIDER** = `2`

The [Joint3D](class_joint3d.md#class-joint3d) is a [SliderJoint3D](class_sliderjoint3d.md#class-sliderjoint3d).

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_CONE\_TWIST** = `3`

The [Joint3D](class_joint3d.md#class-joint3d) is a [ConeTwistJoint3D](class_conetwistjoint3d.md#class-conetwistjoint3d).

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_6DOF** = `4`

The [Joint3D](class_joint3d.md#class-joint3d) is a [Generic6DOFJoint3D](class_generic6dofjoint3d.md#class-generic6dofjoint3d).

[JointType](#enum-physicsserver3d-jointtype) **JOINT\_TYPE\_MAX** = `5`

Represents the size of the [JointType](#enum-physicsserver3d-jointtype) enum.

* * *

enum **PinJointParam**: [🔗](#enum-physicsserver3d-pinjointparam)

[PinJointParam](#enum-physicsserver3d-pinjointparam) **PIN\_JOINT\_BIAS** = `0`

The strength with which the pinned objects try to stay in positional relation to each other.

The higher, the stronger.

[PinJointParam](#enum-physicsserver3d-pinjointparam) **PIN\_JOINT\_DAMPING** = `1`

The strength with which the pinned objects try to stay in velocity relation to each other.

The higher, the stronger.

[PinJointParam](#enum-physicsserver3d-pinjointparam) **PIN\_JOINT\_IMPULSE\_CLAMP** = `2`

If above 0, this value is the maximum value for an impulse that this Joint3D puts on its ends.

* * *

enum **HingeJointParam**: [🔗](#enum-physicsserver3d-hingejointparam)

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_BIAS** = `0`

The speed with which the two bodies get pulled together when they move in different directions.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_LIMIT\_UPPER** = `1`

The maximum rotation across the Hinge.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_LIMIT\_LOWER** = `2`

The minimum rotation across the Hinge.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_LIMIT\_BIAS** = `3`

The speed with which the rotation across the axis perpendicular to the hinge gets corrected.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_LIMIT\_SOFTNESS** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_LIMIT\_RELAXATION** = `5`

The lower this value, the more the rotation gets slowed down.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_MOTOR\_TARGET\_VELOCITY** = `6`

Target speed for the motor.

[HingeJointParam](#enum-physicsserver3d-hingejointparam) **HINGE\_JOINT\_MOTOR\_MAX\_IMPULSE** = `7`

Maximum acceleration for the motor.

* * *

enum **HingeJointFlag**: [🔗](#enum-physicsserver3d-hingejointflag)

[HingeJointFlag](#enum-physicsserver3d-hingejointflag) **HINGE\_JOINT\_FLAG\_USE\_LIMIT** = `0`

If `true`, the Hinge has a maximum and a minimum rotation.

[HingeJointFlag](#enum-physicsserver3d-hingejointflag) **HINGE\_JOINT\_FLAG\_ENABLE\_MOTOR** = `1`

If `true`, a motor turns the Hinge.

* * *

enum **SliderJointParam**: [🔗](#enum-physicsserver3d-sliderjointparam)

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_LIMIT\_UPPER** = `0`

The maximum difference between the pivot points on their X axis before damping happens.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_LIMIT\_LOWER** = `1`

The minimum difference between the pivot points on their X axis before damping happens.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_LIMIT\_SOFTNESS** = `2`

A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_LIMIT\_RESTITUTION** = `3`

The amount of restitution once the limits are surpassed. The lower, the more velocity-energy gets lost.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_LIMIT\_DAMPING** = `4`

The amount of damping once the slider limits are surpassed.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_MOTION\_SOFTNESS** = `5`

A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_MOTION\_RESTITUTION** = `6`

The amount of restitution inside the slider limits.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_MOTION\_DAMPING** = `7`

The amount of damping inside the slider limits.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_ORTHOGONAL\_SOFTNESS** = `8`

A factor applied to the movement across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_ORTHOGONAL\_RESTITUTION** = `9`

The amount of restitution when movement is across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_LINEAR\_ORTHOGONAL\_DAMPING** = `10`

The amount of damping when movement is across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_LIMIT\_UPPER** = `11`

The upper limit of rotation in the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_LIMIT\_LOWER** = `12`

The lower limit of rotation in the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_LIMIT\_SOFTNESS** = `13`

A factor applied to the all rotation once the limit is surpassed.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_LIMIT\_RESTITUTION** = `14`

The amount of restitution of the rotation when the limit is surpassed.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_LIMIT\_DAMPING** = `15`

The amount of damping of the rotation when the limit is surpassed.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_MOTION\_SOFTNESS** = `16`

A factor that gets applied to the all rotation in the limits.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_MOTION\_RESTITUTION** = `17`

The amount of restitution of the rotation in the limits.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_MOTION\_DAMPING** = `18`

The amount of damping of the rotation in the limits.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_ORTHOGONAL\_SOFTNESS** = `19`

A factor that gets applied to the all rotation across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_ORTHOGONAL\_RESTITUTION** = `20`

The amount of restitution of the rotation across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_ANGULAR\_ORTHOGONAL\_DAMPING** = `21`

The amount of damping of the rotation across axes orthogonal to the slider.

[SliderJointParam](#enum-physicsserver3d-sliderjointparam) **SLIDER\_JOINT\_MAX** = `22`

Represents the size of the [SliderJointParam](#enum-physicsserver3d-sliderjointparam) enum.

* * *

enum **ConeTwistJointParam**: [🔗](#enum-physicsserver3d-conetwistjointparam)

[ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam) **CONE\_TWIST\_JOINT\_SWING\_SPAN** = `0`

Swing is rotation from side to side, around the axis perpendicular to the twist axis.

The swing span defines, how much rotation will not get corrected along the swing axis.

Could be defined as looseness in the [ConeTwistJoint3D](class_conetwistjoint3d.md#class-conetwistjoint3d).

If below 0.05, this behavior is locked.

[ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam) **CONE\_TWIST\_JOINT\_TWIST\_SPAN** = `1`

Twist is the rotation around the twist axis, this value defined how far the joint can twist.

Twist is locked if below 0.05.

[ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam) **CONE\_TWIST\_JOINT\_BIAS** = `2`

The speed with which the swing or twist will take place.

The higher, the faster.

[ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam) **CONE\_TWIST\_JOINT\_SOFTNESS** = `3`

The ease with which the Joint3D twists, if it's too low, it takes more force to twist the joint.

[ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam) **CONE\_TWIST\_JOINT\_RELAXATION** = `4`

Defines, how fast the swing- and twist-speed-difference on both sides gets synced.

* * *

enum **G6DOFJointAxisParam**: [🔗](#enum-physicsserver3d-g6dofjointaxisparam)

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_LOWER\_LIMIT** = `0`

The minimum difference between the pivot points' axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_UPPER\_LIMIT** = `1`

The maximum difference between the pivot points' axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_LIMIT\_SOFTNESS** = `2`

A factor that gets applied to the movement across the axes. The lower, the slower the movement.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_RESTITUTION** = `3`

The amount of restitution on the axes movement. The lower, the more velocity-energy gets lost.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_DAMPING** = `4`

The amount of damping that happens at the linear motion across the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_MOTOR\_TARGET\_VELOCITY** = `5`

The velocity that the joint's linear motor will attempt to reach.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_MOTOR\_FORCE\_LIMIT** = `6`

The maximum force that the linear motor can apply while trying to reach the target velocity.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_SPRING\_STIFFNESS** = `7`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_SPRING\_DAMPING** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_LINEAR\_SPRING\_EQUILIBRIUM\_POINT** = `9`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_LOWER\_LIMIT** = `10`

The minimum rotation in negative direction to break loose and rotate around the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_UPPER\_LIMIT** = `11`

The minimum rotation in positive direction to break loose and rotate around the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_LIMIT\_SOFTNESS** = `12`

A factor that gets multiplied onto all rotations across the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_DAMPING** = `13`

The amount of rotational damping across the axes. The lower, the more damping occurs.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_RESTITUTION** = `14`

The amount of rotational restitution across the axes. The lower, the more restitution occurs.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_FORCE\_LIMIT** = `15`

The maximum amount of force that can occur, when rotating around the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_ERP** = `16`

When correcting the crossing of limits in rotation across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_MOTOR\_TARGET\_VELOCITY** = `17`

Target speed for the motor at the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_MOTOR\_FORCE\_LIMIT** = `18`

Maximum acceleration for the motor at the axes.

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_SPRING\_STIFFNESS** = `19`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_SPRING\_DAMPING** = `20`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_ANGULAR\_SPRING\_EQUILIBRIUM\_POINT** = `21`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) **G6DOF\_JOINT\_MAX** = `22`

Represents the size of the [G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam) enum.

* * *

enum **G6DOFJointAxisFlag**: [🔗](#enum-physicsserver3d-g6dofjointaxisflag)

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_LINEAR\_LIMIT** = `0`

If set, linear motion is possible within the given limits.

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_ANGULAR\_LIMIT** = `1`

If set, rotational motion is possible.

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_ANGULAR\_SPRING** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_LINEAR\_SPRING** = `3`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_MOTOR** = `4`

If set, there is a rotational motor across these axes.

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_ENABLE\_LINEAR\_MOTOR** = `5`

If set, there is a linear motor on this axis that targets a specific velocity.

[G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) **G6DOF\_JOINT\_FLAG\_MAX** = `6`

Represents the size of the [G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag) enum.

* * *

enum **ShapeType**: [🔗](#enum-physicsserver3d-shapetype)

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_WORLD\_BOUNDARY** = `0`

The [Shape3D](class_shape3d.md#class-shape3d) is a [WorldBoundaryShape3D](class_worldboundaryshape3d.md#class-worldboundaryshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_SEPARATION\_RAY** = `1`

The [Shape3D](class_shape3d.md#class-shape3d) is a [SeparationRayShape3D](class_separationrayshape3d.md#class-separationrayshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_SPHERE** = `2`

The [Shape3D](class_shape3d.md#class-shape3d) is a [SphereShape3D](class_sphereshape3d.md#class-sphereshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_BOX** = `3`

The [Shape3D](class_shape3d.md#class-shape3d) is a [BoxShape3D](class_boxshape3d.md#class-boxshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_CAPSULE** = `4`

The [Shape3D](class_shape3d.md#class-shape3d) is a [CapsuleShape3D](class_capsuleshape3d.md#class-capsuleshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_CYLINDER** = `5`

The [Shape3D](class_shape3d.md#class-shape3d) is a [CylinderShape3D](class_cylindershape3d.md#class-cylindershape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_CONVEX\_POLYGON** = `6`

The [Shape3D](class_shape3d.md#class-shape3d) is a [ConvexPolygonShape3D](class_convexpolygonshape3d.md#class-convexpolygonshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_CONCAVE\_POLYGON** = `7`

The [Shape3D](class_shape3d.md#class-shape3d) is a [ConcavePolygonShape3D](class_concavepolygonshape3d.md#class-concavepolygonshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_HEIGHTMAP** = `8`

The [Shape3D](class_shape3d.md#class-shape3d) is a [HeightMapShape3D](class_heightmapshape3d.md#class-heightmapshape3d).

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_SOFT\_BODY** = `9`

The [Shape3D](class_shape3d.md#class-shape3d) is used internally for a soft body. Any attempt to create this kind of shape results in an error.

[ShapeType](#enum-physicsserver3d-shapetype) **SHAPE\_CUSTOM** = `10`

This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.

* * *

enum **AreaParameter**: [🔗](#enum-physicsserver3d-areaparameter)

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_GRAVITY\_OVERRIDE\_MODE** = `0`

Constant to set/get gravity override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) for possible values.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_GRAVITY** = `1`

Constant to set/get gravity strength in an area.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_GRAVITY\_VECTOR** = `2`

Constant to set/get gravity vector/center in an area.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_GRAVITY\_IS\_POINT** = `3`

Constant to set/get whether the gravity vector of an area is a direction, or a center point.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_GRAVITY\_POINT\_UNIT\_DISTANCE** = `4`

Constant to set/get the distance at which the gravity strength is equal to the gravity controlled by [AREA\_PARAM\_GRAVITY](#class-physicsserver3d-constant-area-param-gravity). For example, on a planet 100 meters in radius with a surface gravity of 4.0 m/s², set the gravity to 4.0 and the unit distance to 100.0. The gravity will have falloff according to the inverse square law, so in the example, at 200 meters from the center the gravity will be 1.0 m/s² (twice the distance, 1/4th the gravity), at 50 meters it will be 16.0 m/s² (half the distance, 4x the gravity), and so on.

The above is true only when the unit distance is a positive number. When this is set to 0.0, the gravity will be constant regardless of distance.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_LINEAR\_DAMP\_OVERRIDE\_MODE** = `5`

Constant to set/get linear damping override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) for possible values.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_LINEAR\_DAMP** = `6`

Constant to set/get the linear damping factor of an area.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_ANGULAR\_DAMP\_OVERRIDE\_MODE** = `7`

Constant to set/get angular damping override mode in an area. See [AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) for possible values.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_ANGULAR\_DAMP** = `8`

Constant to set/get the angular damping factor of an area.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_PRIORITY** = `9`

Constant to set/get the priority (order of processing) of an area.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_WIND\_FORCE\_MAGNITUDE** = `10`

Constant to set/get the magnitude of area-specific wind force. This wind force only applies to [SoftBody3D](class_softbody3d.md#class-softbody3d) nodes. Other physics bodies are currently not affected by wind.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_WIND\_SOURCE** = `11`

Constant to set/get the 3D vector that specifies the origin from which an area-specific wind blows.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_WIND\_DIRECTION** = `12`

Constant to set/get the 3D vector that specifies the direction in which an area-specific wind blows.

[AreaParameter](#enum-physicsserver3d-areaparameter) **AREA\_PARAM\_WIND\_ATTENUATION\_FACTOR** = `13`

Constant to set/get the exponential rate at which wind force decreases with distance from its origin.

* * *

enum **AreaSpaceOverrideMode**: [🔗](#enum-physicsserver3d-areaspaceoverridemode)

[AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_DISABLED** = `0`

This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.

[AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_COMBINE** = `1`

This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.

[AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_COMBINE\_REPLACE** = `2`

This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.

[AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_REPLACE** = `3`

This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.

[AreaSpaceOverrideMode](#enum-physicsserver3d-areaspaceoverridemode) **AREA\_SPACE\_OVERRIDE\_REPLACE\_COMBINE** = `4`

This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.

* * *

enum **BodyMode**: [🔗](#enum-physicsserver3d-bodymode)

[BodyMode](#enum-physicsserver3d-bodymode) **BODY\_MODE\_STATIC** = `0`

Constant for static bodies. In this mode, a body can be only moved by user code and doesn't collide with other bodies along its path when moved.

[BodyMode](#enum-physicsserver3d-bodymode) **BODY\_MODE\_KINEMATIC** = `1`

Constant for kinematic bodies. In this mode, a body can be only moved by user code and collides with other bodies along its path.

[BodyMode](#enum-physicsserver3d-bodymode) **BODY\_MODE\_RIGID** = `2`

Constant for rigid bodies. In this mode, a body can be pushed by other bodies and has forces applied.

[BodyMode](#enum-physicsserver3d-bodymode) **BODY\_MODE\_RIGID\_LINEAR** = `3`

Constant for linear rigid bodies. In this mode, a body can not rotate, and only its linear velocity is affected by external forces.

* * *

enum **BodyParameter**: [🔗](#enum-physicsserver3d-bodyparameter)

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_BOUNCE** = `0`

Constant to set/get a body's bounce factor.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_FRICTION** = `1`

Constant to set/get a body's friction.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_MASS** = `2`

Constant to set/get a body's mass.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_INERTIA** = `3`

Constant to set/get a body's inertia.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_CENTER\_OF\_MASS** = `4`

Constant to set/get a body's center of mass position in the body's local coordinate system.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_GRAVITY\_SCALE** = `5`

Constant to set/get a body's gravity multiplier.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_LINEAR\_DAMP\_MODE** = `6`

Constant to set/get a body's linear damping mode. See [BodyDampMode](#enum-physicsserver3d-bodydampmode) for possible values.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_ANGULAR\_DAMP\_MODE** = `7`

Constant to set/get a body's angular damping mode. See [BodyDampMode](#enum-physicsserver3d-bodydampmode) for possible values.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_LINEAR\_DAMP** = `8`

Constant to set/get a body's linear damping factor.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_ANGULAR\_DAMP** = `9`

Constant to set/get a body's angular damping factor.

[BodyParameter](#enum-physicsserver3d-bodyparameter) **BODY\_PARAM\_MAX** = `10`

Represents the size of the [BodyParameter](#enum-physicsserver3d-bodyparameter) enum.

* * *

enum **BodyDampMode**: [🔗](#enum-physicsserver3d-bodydampmode)

[BodyDampMode](#enum-physicsserver3d-bodydampmode) **BODY\_DAMP\_MODE\_COMBINE** = `0`

The body's damping value is added to any value set in areas or the default value.

[BodyDampMode](#enum-physicsserver3d-bodydampmode) **BODY\_DAMP\_MODE\_REPLACE** = `1`

The body's damping value replaces any value set in areas or the default value.

* * *

enum **BodyState**: [🔗](#enum-physicsserver3d-bodystate)

[BodyState](#enum-physicsserver3d-bodystate) **BODY\_STATE\_TRANSFORM** = `0`

Constant to set/get the current transform matrix of the body.

[BodyState](#enum-physicsserver3d-bodystate) **BODY\_STATE\_LINEAR\_VELOCITY** = `1`

Constant to set/get the current linear velocity of the body.

[BodyState](#enum-physicsserver3d-bodystate) **BODY\_STATE\_ANGULAR\_VELOCITY** = `2`

Constant to set/get the current angular velocity of the body.

[BodyState](#enum-physicsserver3d-bodystate) **BODY\_STATE\_SLEEPING** = `3`

Constant to sleep/wake up a body, or to get whether it is sleeping.

[BodyState](#enum-physicsserver3d-bodystate) **BODY\_STATE\_CAN\_SLEEP** = `4`

Constant to set/get whether the body can sleep.

* * *

enum **AreaBodyStatus**: [🔗](#enum-physicsserver3d-areabodystatus)

[AreaBodyStatus](#enum-physicsserver3d-areabodystatus) **AREA\_BODY\_ADDED** = `0`

The value of the first parameter and area callback function receives, when an object enters one of its shapes.

[AreaBodyStatus](#enum-physicsserver3d-areabodystatus) **AREA\_BODY\_REMOVED** = `1`

The value of the first parameter and area callback function receives, when an object exits one of its shapes.

* * *

enum **ProcessInfo**: [🔗](#enum-physicsserver3d-processinfo)

[ProcessInfo](#enum-physicsserver3d-processinfo) **INFO\_ACTIVE\_OBJECTS** = `0`

Constant to get the number of objects that are not sleeping.

[ProcessInfo](#enum-physicsserver3d-processinfo) **INFO\_COLLISION\_PAIRS** = `1`

Constant to get the number of possible collisions.

[ProcessInfo](#enum-physicsserver3d-processinfo) **INFO\_ISLAND\_COUNT** = `2`

Constant to get the number of space regions where a collision could occur.

* * *

enum **SpaceParameter**: [🔗](#enum-physicsserver3d-spaceparameter)

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_CONTACT\_RECYCLE\_RADIUS** = `0`

Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_CONTACT\_MAX\_SEPARATION** = `1`

Constant to set/get the maximum distance a shape can be from another before they are considered separated and the contact is discarded.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_CONTACT\_MAX\_ALLOWED\_PENETRATION** = `2`

Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_CONTACT\_DEFAULT\_BIAS** = `3`

Constant to set/get the default solver bias for all physics contacts. A solver bias is a factor controlling how much two objects "rebound", after overlapping, to avoid leaving them in that state because of numerical imprecision.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_BODY\_LINEAR\_VELOCITY\_SLEEP\_THRESHOLD** = `4`

Constant to set/get the threshold linear velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_BODY\_ANGULAR\_VELOCITY\_SLEEP\_THRESHOLD** = `5`

Constant to set/get the threshold angular velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_BODY\_TIME\_TO\_SLEEP** = `6`

Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time.

[SpaceParameter](#enum-physicsserver3d-spaceparameter) **SPACE\_PARAM\_SOLVER\_ITERATIONS** = `7`

Constant to set/get the number of solver iterations for contacts and constraints. The greater the number of iterations, the more accurate the collisions and constraints will be. However, a greater number of iterations requires more CPU power, which can decrease performance.

* * *

enum **BodyAxis**: [🔗](#enum-physicsserver3d-bodyaxis)

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_LINEAR\_X** = `1`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_LINEAR\_Y** = `2`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_LINEAR\_Z** = `4`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_ANGULAR\_X** = `8`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_ANGULAR\_Y** = `16`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[BodyAxis](#enum-physicsserver3d-bodyaxis) **BODY\_AXIS\_ANGULAR\_Z** = `32`

There is currently no description for this enum. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

## Method Descriptions

void **area\_add\_shape**(area: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsserver3d-method-area-add-shape)

Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.

* * *

void **area\_attach\_object\_instance\_id**(area: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-area-attach-object-instance-id)

Assigns the area to a descendant of [Object](class_object.md#class-object), so it can exist in the node tree.

* * *

void **area\_clear\_shapes**(area: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-area-clear-shapes)

Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.

* * *

[RID](class_rid.md#class-rid) **area\_create**() [🔗](#class-physicsserver3d-method-area-create)

Creates a 3D area object in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. The default settings for the created area include a collision layer and mask set to `1`, and `monitorable` set to `false`.

Use [area\_add\_shape()](#class-physicsserver3d-method-area-add-shape) to add shapes to it, use [area\_set\_transform()](#class-physicsserver3d-method-area-set-transform) to set its transform, and use [area\_set\_space()](#class-physicsserver3d-method-area-set-space) to add the area to a space. If you want the area to be detectable use [area\_set\_monitorable()](#class-physicsserver3d-method-area-set-monitorable).

* * *

[int](class_int.md#class-int) **area\_get\_collision\_layer**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-collision-layer)

Returns the physics layer or layers an area belongs to.

* * *

[int](class_int.md#class-int) **area\_get\_collision\_mask**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-collision-mask)

Returns the physics layer or layers an area can contact with.

* * *

[int](class_int.md#class-int) **area\_get\_object\_instance\_id**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-object-instance-id)

Gets the instance ID of the object the area is assigned to.

* * *

[Variant](class_variant.md#class-variant) **area\_get\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver3d-areaparameter)) const [🔗](#class-physicsserver3d-method-area-get-param)

Returns an area parameter value. A list of available parameters is on the [AreaParameter](#enum-physicsserver3d-areaparameter) constants.

* * *

[RID](class_rid.md#class-rid) **area\_get\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-area-get-shape)

Returns the [RID](class_rid.md#class-rid) of the nth shape of an area.

* * *

[int](class_int.md#class-int) **area\_get\_shape\_count**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-shape-count)

Returns the number of shapes assigned to an area.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **area\_get\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-area-get-shape-transform)

Returns the transform matrix of a shape within an area.

* * *

[RID](class_rid.md#class-rid) **area\_get\_space**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-space)

Returns the space assigned to the area.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **area\_get\_transform**(area: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-area-get-transform)

Returns the transform matrix for an area.

* * *

void **area\_remove\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-area-remove-shape)

Removes a shape from an area. It does not delete the shape, so it can be reassigned later.

* * *

void **area\_set\_area\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver3d-method-area-set-area-monitor-callback)

Sets the area's area monitor callback. This callback will be called when any other (shape of an) area enters or exits (a shape of) the given area, and must take the following five parameters:

1. an integer `status`: either [AREA\_BODY\_ADDED](#class-physicsserver3d-constant-area-body-added) or [AREA\_BODY\_REMOVED](#class-physicsserver3d-constant-area-body-removed) depending on whether the other area's shape entered or exited the area,

2. an [RID](class_rid.md#class-rid) `area_rid`: the [RID](class_rid.md#class-rid) of the other area that entered or exited the area,

3. an integer `instance_id`: the `ObjectID` attached to the other area,

4. an integer `area_shape_idx`: the index of the shape of the other area that entered or exited the area,

5. an integer `self_shape_idx`: the index of the shape of the area where the other area entered or exited.


By counting (or keeping track of) the shapes that enter and exit, it can be determined if an area (with all its shapes) is entering for the first time or exiting for the last time.

* * *

void **area\_set\_collision\_layer**(area: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-area-set-collision-layer)

Assigns the area to one or many physics layers.

* * *

void **area\_set\_collision\_mask**(area: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-area-set-collision-mask)

Sets which physics layers the area will monitor.

* * *

void **area\_set\_monitor\_callback**(area: [RID](class_rid.md#class-rid), callback: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver3d-method-area-set-monitor-callback)

Sets the area's body monitor callback. This callback will be called when any other (shape of a) body enters or exits (a shape of) the given area, and must take the following five parameters:

1. an integer `status`: either [AREA\_BODY\_ADDED](#class-physicsserver3d-constant-area-body-added) or [AREA\_BODY\_REMOVED](#class-physicsserver3d-constant-area-body-removed) depending on whether the other body shape entered or exited the area,

2. an [RID](class_rid.md#class-rid) `body_rid`: the [RID](class_rid.md#class-rid) of the body that entered or exited the area,

3. an integer `instance_id`: the `ObjectID` attached to the body,

4. an integer `body_shape_idx`: the index of the shape of the body that entered or exited the area,

5. an integer `self_shape_idx`: the index of the shape of the area where the body entered or exited.


By counting (or keeping track of) the shapes that enter and exit, it can be determined if a body (with all its shapes) is entering for the first time or exiting for the last time.

* * *

void **area\_set\_monitorable**(area: [RID](class_rid.md#class-rid), monitorable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-area-set-monitorable)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **area\_set\_param**(area: [RID](class_rid.md#class-rid), param: [AreaParameter](#enum-physicsserver3d-areaparameter), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver3d-method-area-set-param)

Sets the value for an area parameter. A list of available parameters is on the [AreaParameter](#enum-physicsserver3d-areaparameter) constants.

* * *

void **area\_set\_ray\_pickable**(area: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-area-set-ray-pickable)

Sets object pickable with rays.

* * *

void **area\_set\_shape**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-area-set-shape)

Substitutes a given area shape by another. The old shape is selected by its index, the new one by its [RID](class_rid.md#class-rid).

* * *

void **area\_set\_shape\_disabled**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-area-set-shape-disabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **area\_set\_shape\_transform**(area: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-area-set-shape-transform)

Sets the transform matrix for an area shape.

* * *

void **area\_set\_space**(area: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-area-set-space)

Assigns a space to the area.

* * *

void **area\_set\_transform**(area: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-area-set-transform)

Sets the transform matrix for an area.

* * *

void **body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-add-collision-exception)

Adds a body to the list of bodies exempt from collisions.

* * *

void **body\_add\_constant\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-add-constant-central-force)

Adds a constant directional force without affecting rotation that keeps being applied over time until cleared with `body_set_constant_force(body, Vector3(0, 0, 0))`.

This is equivalent to using [body\_add\_constant\_force()](#class-physicsserver3d-method-body-add-constant-force) at the body's center of mass.

* * *

void **body\_add\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsserver3d-method-body-add-constant-force)

Adds a constant positioned force to the body that keeps being applied over time until cleared with `body_set_constant_force(body, Vector3(0, 0, 0))`.

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_add\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-add-constant-torque)

Adds a constant rotational force without affecting position that keeps being applied over time until cleared with `body_set_constant_torque(body, Vector3(0, 0, 0))`.

* * *

void **body\_add\_shape**(body: [RID](class_rid.md#class-rid), shape: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d) = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: [bool](class_bool.md#class-bool) = false) [🔗](#class-physicsserver3d-method-body-add-shape)

Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.

* * *

void **body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-apply-central-force)

Applies a directional force without affecting rotation. A force is time dependent and meant to be applied every physics update.

This is equivalent to using [body\_apply\_force()](#class-physicsserver3d-method-body-apply-force) at the body's center of mass.

* * *

void **body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-apply-central-impulse)

Applies a directional impulse without affecting rotation.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

This is equivalent to using [body\_apply\_impulse()](#class-physicsserver3d-method-body-apply-impulse) at the body's center of mass.

* * *

void **body\_apply\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsserver3d-method-body-apply-force)

Applies a positioned force to the body. A force is time dependent and meant to be applied every physics update.

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_apply\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3), position: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 0, 0)) [🔗](#class-physicsserver3d-method-body-apply-impulse)

Applies a positioned impulse to the body.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

`position` is the offset from the body origin in global coordinates.

* * *

void **body\_apply\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-apply-torque)

Applies a rotational force without affecting position. A force is time dependent and meant to be applied every physics update.

* * *

void **body\_apply\_torque\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-apply-torque-impulse)

Applies a rotational impulse to the body without affecting the position.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

void **body\_attach\_object\_instance\_id**(body: [RID](class_rid.md#class-rid), id: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-body-attach-object-instance-id)

Assigns the area to a descendant of [Object](class_object.md#class-object), so it can exist in the node tree.

* * *

void **body\_clear\_shapes**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-clear-shapes)

Removes all shapes from a body.

* * *

[RID](class_rid.md#class-rid) **body\_create**() [🔗](#class-physicsserver3d-method-body-create)

Creates a 3D body object in the physics server, and returns the [RID](class_rid.md#class-rid) that identifies it. The default settings for the created area include a collision layer and mask set to `1`, and body mode set to [BODY\_MODE\_RIGID](#class-physicsserver3d-constant-body-mode-rigid).

Use [body\_add\_shape()](#class-physicsserver3d-method-body-add-shape) to add shapes to it, use [body\_set\_state()](#class-physicsserver3d-method-body-set-state) to set its transform, and use [body\_set\_space()](#class-physicsserver3d-method-body-set-space) to add the body to a space.

* * *

[int](class_int.md#class-int) **body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-collision-layer)

Returns the physics layer or layers a body belongs to.

* * *

[int](class_int.md#class-int) **body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-collision-mask)

Returns the physics layer or layers a body can collide with.

* * *

[float](class_float.md#class-float) **body\_get\_collision\_priority**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-collision-priority)

Returns the body's collision priority.

* * *

[Vector3](class_vector3.md#class-vector3) **body\_get\_constant\_force**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-constant-force)

Returns the body's total constant positional forces applied during each physics update.

See [body\_add\_constant\_force()](#class-physicsserver3d-method-body-add-constant-force) and [body\_add\_constant\_central\_force()](#class-physicsserver3d-method-body-add-constant-central-force).

* * *

[Vector3](class_vector3.md#class-vector3) **body\_get\_constant\_torque**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-constant-torque)

Returns the body's total constant rotational forces applied during each physics update.

See [body\_add\_constant\_torque()](#class-physicsserver3d-method-body-add-constant-torque).

* * *

[PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) **body\_get\_direct\_state**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-get-direct-state)

Returns the [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d) of the body. Returns `null` if the body is destroyed or removed from the physics space.

* * *

[int](class_int.md#class-int) **body\_get\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-max-contacts-reported)

Returns the maximum contacts that can be reported. See [body\_set\_max\_contacts\_reported()](#class-physicsserver3d-method-body-set-max-contacts-reported).

* * *

[BodyMode](#enum-physicsserver3d-bodymode) **body\_get\_mode**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-mode)

Returns the body mode.

* * *

[int](class_int.md#class-int) **body\_get\_object\_instance\_id**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-object-instance-id)

Gets the instance ID of the object the area is assigned to.

* * *

[Variant](class_variant.md#class-variant) **body\_get\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver3d-bodyparameter)) const [🔗](#class-physicsserver3d-method-body-get-param)

Returns the value of a body parameter. A list of available parameters is on the [BodyParameter](#enum-physicsserver3d-bodyparameter) constants.

* * *

[RID](class_rid.md#class-rid) **body\_get\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-body-get-shape)

Returns the [RID](class_rid.md#class-rid) of the nth shape of a body.

* * *

[int](class_int.md#class-int) **body\_get\_shape\_count**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-shape-count)

Returns the number of shapes assigned to a body.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **body\_get\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-body-get-shape-transform)

Returns the transform matrix of a body shape.

* * *

[RID](class_rid.md#class-rid) **body\_get\_space**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-get-space)

Returns the [RID](class_rid.md#class-rid) of the space assigned to a body.

* * *

[Variant](class_variant.md#class-variant) **body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate)) const [🔗](#class-physicsserver3d-method-body-get-state)

Returns a body state.

* * *

[bool](class_bool.md#class-bool) **body\_is\_axis\_locked**(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](#enum-physicsserver3d-bodyaxis)) const [🔗](#class-physicsserver3d-method-body-is-axis-locked)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **body\_is\_continuous\_collision\_detection\_enabled**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-is-continuous-collision-detection-enabled)

If `true`, the continuous collision detection mode is enabled.

* * *

[bool](class_bool.md#class-bool) **body\_is\_omitting\_force\_integration**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-body-is-omitting-force-integration)

Returns `true` if the body is omitting the standard force integration. See [body\_set\_omit\_force\_integration()](#class-physicsserver3d-method-body-set-omit-force-integration).

* * *

void **body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), excepted\_body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-remove-collision-exception)

Removes a body from the list of bodies exempt from collisions.

Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.

* * *

void **body\_remove\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-body-remove-shape)

Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.

* * *

void **body\_reset\_mass\_properties**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-reset-mass-properties)

Restores the default inertia and center of mass based on shapes to cancel any custom values previously set using [body\_set\_param()](#class-physicsserver3d-method-body-set-param).

* * *

void **body\_set\_axis\_lock**(body: [RID](class_rid.md#class-rid), axis: [BodyAxis](#enum-physicsserver3d-bodyaxis), lock: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-body-set-axis-lock)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **body\_set\_axis\_velocity**(body: [RID](class_rid.md#class-rid), axis\_velocity: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-set-axis-velocity)

Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.

* * *

void **body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-body-set-collision-layer)

Sets the physics layer or layers a body belongs to.

* * *

void **body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-body-set-collision-mask)

Sets the physics layer or layers a body can collide with.

* * *

void **body\_set\_collision\_priority**(body: [RID](class_rid.md#class-rid), priority: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-body-set-collision-priority)

Sets the body's collision priority.

* * *

void **body\_set\_constant\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-set-constant-force)

Sets the body's total constant positional forces applied during each physics update.

See [body\_add\_constant\_force()](#class-physicsserver3d-method-body-add-constant-force) and [body\_add\_constant\_central\_force()](#class-physicsserver3d-method-body-add-constant-central-force).

* * *

void **body\_set\_constant\_torque**(body: [RID](class_rid.md#class-rid), torque: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-body-set-constant-torque)

Sets the body's total constant rotational forces applied during each physics update.

See [body\_add\_constant\_torque()](#class-physicsserver3d-method-body-add-constant-torque).

* * *

void **body\_set\_enable\_continuous\_collision\_detection**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-body-set-enable-continuous-collision-detection)

If `true`, the continuous collision detection mode is enabled.

Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.

* * *

void **body\_set\_force\_integration\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable), userdata: [Variant](class_variant.md#class-variant) = null) [🔗](#class-physicsserver3d-method-body-set-force-integration-callback)

Sets the body's custom force integration callback function to `callable`. Use an empty [Callable](class_callable.md#class-callable) ( `Callable()`) to clear the custom callback.

The function `callable` will be called every physics tick, before the standard force integration (see [body\_set\_omit\_force\_integration()](#class-physicsserver3d-method-body-set-omit-force-integration)). It can be used for example to update the body's linear and angular velocity based on contact with other bodies.

If `userdata` is not `null`, the function `callable` must take the following two parameters:

1. `state`: a [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d), used to retrieve and modify the body's state,

2. `userdata`: a [Variant](class_variant.md#class-variant); its value will be the `userdata` passed into this method.


If `userdata` is `null`, then `callable` must take only the `state` parameter.

* * *

void **body\_set\_max\_contacts\_reported**(body: [RID](class_rid.md#class-rid), amount: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-body-set-max-contacts-reported)

Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies. This is enabled by setting the maximum number of contacts reported to a number greater than 0.

* * *

void **body\_set\_mode**(body: [RID](class_rid.md#class-rid), mode: [BodyMode](#enum-physicsserver3d-bodymode)) [🔗](#class-physicsserver3d-method-body-set-mode)

Sets the body mode.

* * *

void **body\_set\_omit\_force\_integration**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-body-set-omit-force-integration)

Sets whether the body omits the standard force integration. If `enable` is `true`, the body will not automatically use applied forces, torques, and damping to update the body's linear and angular velocity. In this case, [body\_set\_force\_integration\_callback()](#class-physicsserver3d-method-body-set-force-integration-callback) can be used to manually update the linear and angular velocity instead.

This method is called when the property [RigidBody3D.custom\_integrator](class_rigidbody3d.md#class-rigidbody3d-property-custom-integrator) is set.

* * *

void **body\_set\_param**(body: [RID](class_rid.md#class-rid), param: [BodyParameter](#enum-physicsserver3d-bodyparameter), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver3d-method-body-set-param)

Sets a body parameter. A list of available parameters is on the [BodyParameter](#enum-physicsserver3d-bodyparameter) constants.

* * *

void **body\_set\_ray\_pickable**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-body-set-ray-pickable)

Sets the body pickable with rays if `enable` is set.

* * *

void **body\_set\_shape**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), shape: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-set-shape)

Substitutes a given body shape by another. The old shape is selected by its index, the new one by its [RID](class_rid.md#class-rid).

* * *

void **body\_set\_shape\_disabled**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-body-set-shape-disabled)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **body\_set\_shape\_transform**(body: [RID](class_rid.md#class-rid), shape\_idx: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-body-set-shape-transform)

Sets the transform matrix for a body shape.

* * *

void **body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-body-set-space)

Assigns a space to the body (see [space\_create()](#class-physicsserver3d-method-space-create)).

* * *

void **body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate), value: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver3d-method-body-set-state)

Sets a body state.

* * *

void **body\_set\_state\_sync\_callback**(body: [RID](class_rid.md#class-rid), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-physicsserver3d-method-body-set-state-sync-callback)

Sets the body's state synchronization callback function to `callable`. Use an empty [Callable](class_callable.md#class-callable) ( `Callable()`) to clear the callback.

The function `callable` will be called every physics frame, assuming that the body was active during the previous physics tick, and can be used to fetch the latest state from the physics server.

The function `callable` must take the following parameters:

1. `state`: a [PhysicsDirectBodyState3D](class_physicsdirectbodystate3d.md#class-physicsdirectbodystate3d), used to retrieve the body's state.


* * *

[bool](class_bool.md#class-bool) **body\_test\_motion**(body: [RID](class_rid.md#class-rid), parameters: [PhysicsTestMotionParameters3D](class_physicstestmotionparameters3d.md#class-physicstestmotionparameters3d), result: [PhysicsTestMotionResult3D](class_physicstestmotionresult3d.md#class-physicstestmotionresult3d) = null) [🔗](#class-physicsserver3d-method-body-test-motion)

Returns `true` if a collision would result from moving along a motion vector from a given point in space. [PhysicsTestMotionParameters3D](class_physicstestmotionparameters3d.md#class-physicstestmotionparameters3d) is passed to set motion parameters. [PhysicsTestMotionResult3D](class_physicstestmotionresult3d.md#class-physicstestmotionresult3d) can be passed to return additional information.

* * *

[RID](class_rid.md#class-rid) **box\_shape\_create**() [🔗](#class-physicsserver3d-method-box-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **capsule\_shape\_create**() [🔗](#class-physicsserver3d-method-capsule-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **concave\_polygon\_shape\_create**() [🔗](#class-physicsserver3d-method-concave-polygon-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[float](class_float.md#class-float) **cone\_twist\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam)) const [🔗](#class-physicsserver3d-method-cone-twist-joint-get-param)

Gets a cone twist joint parameter.

* * *

void **cone\_twist\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [ConeTwistJointParam](#enum-physicsserver3d-conetwistjointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-cone-twist-joint-set-param)

Sets a cone twist joint parameter.

* * *

[RID](class_rid.md#class-rid) **convex\_polygon\_shape\_create**() [🔗](#class-physicsserver3d-method-convex-polygon-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **custom\_shape\_create**() [🔗](#class-physicsserver3d-method-custom-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **cylinder\_shape\_create**() [🔗](#class-physicsserver3d-method-cylinder-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **free\_rid**(rid: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-free-rid)

Destroys any of the objects created by PhysicsServer3D. If the [RID](class_rid.md#class-rid) passed is not one of the objects that can be created by PhysicsServer3D, an error will be sent to the console.

* * *

[bool](class_bool.md#class-bool) **generic\_6dof\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag)) const [🔗](#class-physicsserver3d-method-generic-6dof-joint-get-flag)

Returns the value of a generic 6DOF joint flag.

* * *

[float](class_float.md#class-float) **generic\_6dof\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam)) const [🔗](#class-physicsserver3d-method-generic-6dof-joint-get-param)

Returns the value of a generic 6DOF joint parameter.

* * *

void **generic\_6dof\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), flag: [G6DOFJointAxisFlag](#enum-physicsserver3d-g6dofjointaxisflag), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-generic-6dof-joint-set-flag)

Sets the value of a given generic 6DOF joint flag.

* * *

void **generic\_6dof\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), axis: [Axis](class_vector3.md#enum-vector3-axis), param: [G6DOFJointAxisParam](#enum-physicsserver3d-g6dofjointaxisparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-generic-6dof-joint-set-param)

Sets the value of a given generic 6DOF joint parameter.

* * *

[int](class_int.md#class-int) **get\_process\_info**(process\_info: [ProcessInfo](#enum-physicsserver3d-processinfo)) [🔗](#class-physicsserver3d-method-get-process-info)

Returns the value of a physics engine state specified by `process_info`.

* * *

[RID](class_rid.md#class-rid) **heightmap\_shape\_create**() [🔗](#class-physicsserver3d-method-heightmap-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[bool](class_bool.md#class-bool) **hinge\_joint\_get\_flag**(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](#enum-physicsserver3d-hingejointflag)) const [🔗](#class-physicsserver3d-method-hinge-joint-get-flag)

Gets a hinge joint flag.

* * *

[float](class_float.md#class-float) **hinge\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](#enum-physicsserver3d-hingejointparam)) const [🔗](#class-physicsserver3d-method-hinge-joint-get-param)

Gets a hinge joint parameter.

* * *

void **hinge\_joint\_set\_flag**(joint: [RID](class_rid.md#class-rid), flag: [HingeJointFlag](#enum-physicsserver3d-hingejointflag), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-hinge-joint-set-flag)

Sets a hinge joint flag.

* * *

void **hinge\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [HingeJointParam](#enum-physicsserver3d-hingejointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-hinge-joint-set-param)

Sets a hinge joint parameter.

* * *

void **joint\_clear**(joint: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-joint-clear)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **joint\_create**() [🔗](#class-physicsserver3d-method-joint-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **joint\_disable\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid), disable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-joint-disable-collisions-between-bodies)

Sets whether the bodies attached to the [Joint3D](class_joint3d.md#class-joint3d) will collide with each other.

* * *

[int](class_int.md#class-int) **joint\_get\_solver\_priority**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-joint-get-solver-priority)

Gets the priority value of the Joint3D.

* * *

[JointType](#enum-physicsserver3d-jointtype) **joint\_get\_type**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-joint-get-type)

Returns the type of the Joint3D.

* * *

[bool](class_bool.md#class-bool) **joint\_is\_disabled\_collisions\_between\_bodies**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-joint-is-disabled-collisions-between-bodies)

Returns whether the bodies attached to the [Joint3D](class_joint3d.md#class-joint3d) will collide with each other.

* * *

void **joint\_make\_cone\_twist**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-joint-make-cone-twist)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **joint\_make\_generic\_6dof**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-joint-make-generic-6dof)

Make the joint a generic six degrees of freedom (6DOF) joint. Use [generic\_6dof\_joint\_set\_flag()](#class-physicsserver3d-method-generic-6dof-joint-set-flag) and [generic\_6dof\_joint\_set\_param()](#class-physicsserver3d-method-generic-6dof-joint-set-param) to set the joint's flags and parameters respectively.

* * *

void **joint\_make\_hinge**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), hinge\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), hinge\_B: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-joint-make-hinge)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **joint\_make\_pin**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3), body\_B: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-joint-make-pin)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **joint\_make\_slider**(joint: [RID](class_rid.md#class-rid), body\_A: [RID](class_rid.md#class-rid), local\_ref\_A: [Transform3D](class_transform3d.md#class-transform3d), body\_B: [RID](class_rid.md#class-rid), local\_ref\_B: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-joint-make-slider)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **joint\_set\_solver\_priority**(joint: [RID](class_rid.md#class-rid), priority: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-joint-set-solver-priority)

Sets the priority value of the Joint3D.

* * *

[Vector3](class_vector3.md#class-vector3) **pin\_joint\_get\_local\_a**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-pin-joint-get-local-a)

Returns position of the joint in the local space of body a of the joint.

* * *

[Vector3](class_vector3.md#class-vector3) **pin\_joint\_get\_local\_b**(joint: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-pin-joint-get-local-b)

Returns position of the joint in the local space of body b of the joint.

* * *

[float](class_float.md#class-float) **pin\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver3d-pinjointparam)) const [🔗](#class-physicsserver3d-method-pin-joint-get-param)

Gets a pin joint parameter.

* * *

void **pin\_joint\_set\_local\_a**(joint: [RID](class_rid.md#class-rid), local\_A: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-pin-joint-set-local-a)

Sets position of the joint in the local space of body a of the joint.

* * *

void **pin\_joint\_set\_local\_b**(joint: [RID](class_rid.md#class-rid), local\_B: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-pin-joint-set-local-b)

Sets position of the joint in the local space of body b of the joint.

* * *

void **pin\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [PinJointParam](#enum-physicsserver3d-pinjointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-pin-joint-set-param)

Sets a pin joint parameter.

* * *

[RID](class_rid.md#class-rid) **separation\_ray\_shape\_create**() [🔗](#class-physicsserver3d-method-separation-ray-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_active**(active: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-set-active)

Activates or deactivates the 3D physics engine.

* * *

[Variant](class_variant.md#class-variant) **shape\_get\_data**(shape: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-shape-get-data)

Returns the shape data.

* * *

[float](class_float.md#class-float) **shape\_get\_margin**(shape: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-shape-get-margin)

Returns the collision margin for the shape.

**Note:** This is not used in Godot Physics, so will always return `0`.

* * *

[ShapeType](#enum-physicsserver3d-shapetype) **shape\_get\_type**(shape: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-shape-get-type)

Returns the type of shape.

* * *

void **shape\_set\_data**(shape: [RID](class_rid.md#class-rid), data: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver3d-method-shape-set-data)

Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created [shape\_get\_type()](#class-physicsserver3d-method-shape-get-type).

* * *

void **shape\_set\_margin**(shape: [RID](class_rid.md#class-rid), margin: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-shape-set-margin)

Sets the collision margin for the shape.

**Note:** This is not used in Godot Physics.

* * *

[float](class_float.md#class-float) **slider\_joint\_get\_param**(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](#enum-physicsserver3d-sliderjointparam)) const [🔗](#class-physicsserver3d-method-slider-joint-get-param)

Gets a slider joint parameter.

* * *

void **slider\_joint\_set\_param**(joint: [RID](class_rid.md#class-rid), param: [SliderJointParam](#enum-physicsserver3d-sliderjointparam), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-slider-joint-set-param)

Gets a slider joint parameter.

* * *

void **soft\_body\_add\_collision\_exception**(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-soft-body-add-collision-exception)

Adds the given body to the list of bodies exempt from collisions.

* * *

void **soft\_body\_apply\_central\_force**(body: [RID](class_rid.md#class-rid), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-soft-body-apply-central-force)

Distributes and applies a force to all points. A force is time dependent and meant to be applied every physics update.

* * *

void **soft\_body\_apply\_central\_impulse**(body: [RID](class_rid.md#class-rid), impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-soft-body-apply-central-impulse)

Distributes and applies an impulse to all points.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

void **soft\_body\_apply\_point\_force**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-soft-body-apply-point-force)

Applies a force to a point. A force is time dependent and meant to be applied every physics update.

* * *

void **soft\_body\_apply\_point\_impulse**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-soft-body-apply-point-impulse)

Applies an impulse to a point.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

[RID](class_rid.md#class-rid) **soft\_body\_create**() [🔗](#class-physicsserver3d-method-soft-body-create)

Creates a new soft body and returns its internal [RID](class_rid.md#class-rid).

* * *

[AABB](class_aabb.md#class-aabb) **soft\_body\_get\_bounds**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-bounds)

Returns the bounds of the given soft body in global coordinates.

* * *

[int](class_int.md#class-int) **soft\_body\_get\_collision\_layer**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-collision-layer)

Returns the physics layer or layers that the given soft body belongs to.

* * *

[int](class_int.md#class-int) **soft\_body\_get\_collision\_mask**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-collision-mask)

Returns the physics layer or layers that the given soft body can collide with.

* * *

[float](class_float.md#class-float) **soft\_body\_get\_damping\_coefficient**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-damping-coefficient)

Returns the damping coefficient of the given soft body.

* * *

[float](class_float.md#class-float) **soft\_body\_get\_drag\_coefficient**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-drag-coefficient)

Returns the drag coefficient of the given soft body.

* * *

[float](class_float.md#class-float) **soft\_body\_get\_linear\_stiffness**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-linear-stiffness)

Returns the linear stiffness of the given soft body.

* * *

[Vector3](class_vector3.md#class-vector3) **soft\_body\_get\_point\_global\_position**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-soft-body-get-point-global-position)

Returns the current position of the given soft body point in global coordinates.

* * *

[float](class_float.md#class-float) **soft\_body\_get\_pressure\_coefficient**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-pressure-coefficient)

Returns the pressure coefficient of the given soft body.

* * *

[float](class_float.md#class-float) **soft\_body\_get\_shrinking\_factor**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-shrinking-factor)

Returns the shrinking factor of the given soft body.

* * *

[int](class_int.md#class-int) **soft\_body\_get\_simulation\_precision**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-simulation-precision)

Returns the simulation precision of the given soft body.

* * *

[RID](class_rid.md#class-rid) **soft\_body\_get\_space**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-space)

Returns the [RID](class_rid.md#class-rid) of the space assigned to the given soft body.

* * *

[Variant](class_variant.md#class-variant) **soft\_body\_get\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate)) const [🔗](#class-physicsserver3d-method-soft-body-get-state)

Returns the given soft body state.

**Note:** Godot's default physics implementation does not support [BODY\_STATE\_LINEAR\_VELOCITY](#class-physicsserver3d-constant-body-state-linear-velocity), [BODY\_STATE\_ANGULAR\_VELOCITY](#class-physicsserver3d-constant-body-state-angular-velocity), [BODY\_STATE\_SLEEPING](#class-physicsserver3d-constant-body-state-sleeping), or [BODY\_STATE\_CAN\_SLEEP](#class-physicsserver3d-constant-body-state-can-sleep).

* * *

[float](class_float.md#class-float) **soft\_body\_get\_total\_mass**(body: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-soft-body-get-total-mass)

Returns the total mass assigned to the given soft body.

* * *

[bool](class_bool.md#class-bool) **soft\_body\_is\_point\_pinned**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int)) const [🔗](#class-physicsserver3d-method-soft-body-is-point-pinned)

Returns whether the given soft body point is pinned.

* * *

void **soft\_body\_move\_point**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), global\_position: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-physicsserver3d-method-soft-body-move-point)

Moves the given soft body point to a position in global coordinates.

* * *

void **soft\_body\_pin\_point**(body: [RID](class_rid.md#class-rid), point\_index: [int](class_int.md#class-int), pin: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-soft-body-pin-point)

Pins or unpins the given soft body point based on the value of `pin`.

**Note:** Pinning a point effectively makes it kinematic, preventing it from being affected by forces, but you can still move it using [soft\_body\_move\_point()](#class-physicsserver3d-method-soft-body-move-point).

* * *

void **soft\_body\_remove\_all\_pinned\_points**(body: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-soft-body-remove-all-pinned-points)

Unpins all points of the given soft body.

* * *

void **soft\_body\_remove\_collision\_exception**(body: [RID](class_rid.md#class-rid), body\_b: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-soft-body-remove-collision-exception)

Removes the given body from the list of bodies exempt from collisions.

* * *

void **soft\_body\_set\_collision\_layer**(body: [RID](class_rid.md#class-rid), layer: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-soft-body-set-collision-layer)

Sets the physics layer or layers the given soft body belongs to.

* * *

void **soft\_body\_set\_collision\_mask**(body: [RID](class_rid.md#class-rid), mask: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-soft-body-set-collision-mask)

Sets the physics layer or layers the given soft body can collide with.

* * *

void **soft\_body\_set\_damping\_coefficient**(body: [RID](class_rid.md#class-rid), damping\_coefficient: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-damping-coefficient)

Sets the damping coefficient of the given soft body. Higher values will slow down the body more noticeably when forces are applied.

* * *

void **soft\_body\_set\_drag\_coefficient**(body: [RID](class_rid.md#class-rid), drag\_coefficient: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-drag-coefficient)

Sets the drag coefficient of the given soft body. Higher values increase this body's air resistance.

**Note:** This value is currently unused by Godot's default physics implementation.

* * *

void **soft\_body\_set\_linear\_stiffness**(body: [RID](class_rid.md#class-rid), stiffness: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-linear-stiffness)

Sets the linear stiffness of the given soft body. Higher values will result in a stiffer body, while lower values will increase the body's ability to bend. The value can be between `0.0` and `1.0` (inclusive).

* * *

void **soft\_body\_set\_mesh**(body: [RID](class_rid.md#class-rid), mesh: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-soft-body-set-mesh)

Sets the mesh of the given soft body.

* * *

void **soft\_body\_set\_pressure\_coefficient**(body: [RID](class_rid.md#class-rid), pressure\_coefficient: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-pressure-coefficient)

Sets the pressure coefficient of the given soft body. Simulates pressure build-up from inside this body. Higher values increase the strength of this effect.

* * *

void **soft\_body\_set\_ray\_pickable**(body: [RID](class_rid.md#class-rid), enable: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-soft-body-set-ray-pickable)

Sets whether the given soft body will be pickable when using object picking.

* * *

void **soft\_body\_set\_shrinking\_factor**(body: [RID](class_rid.md#class-rid), shrinking\_factor: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-shrinking-factor)

Sets the shrinking factor of the given soft body.

* * *

void **soft\_body\_set\_simulation\_precision**(body: [RID](class_rid.md#class-rid), simulation\_precision: [int](class_int.md#class-int)) [🔗](#class-physicsserver3d-method-soft-body-set-simulation-precision)

Sets the simulation precision of the given soft body. Increasing this value will improve the resulting simulation, but can affect performance. Use with care.

* * *

void **soft\_body\_set\_space**(body: [RID](class_rid.md#class-rid), space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-soft-body-set-space)

Assigns a space to the given soft body (see [space\_create()](#class-physicsserver3d-method-space-create)).

* * *

void **soft\_body\_set\_state**(body: [RID](class_rid.md#class-rid), state: [BodyState](#enum-physicsserver3d-bodystate), variant: [Variant](class_variant.md#class-variant)) [🔗](#class-physicsserver3d-method-soft-body-set-state)

Sets the given body state for the given body.

**Note:** Godot's default physics implementation does not support [BODY\_STATE\_LINEAR\_VELOCITY](#class-physicsserver3d-constant-body-state-linear-velocity), [BODY\_STATE\_ANGULAR\_VELOCITY](#class-physicsserver3d-constant-body-state-angular-velocity), [BODY\_STATE\_SLEEPING](#class-physicsserver3d-constant-body-state-sleeping), or [BODY\_STATE\_CAN\_SLEEP](#class-physicsserver3d-constant-body-state-can-sleep).

* * *

void **soft\_body\_set\_total\_mass**(body: [RID](class_rid.md#class-rid), total\_mass: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-soft-body-set-total-mass)

Sets the total mass for the given soft body.

* * *

void **soft\_body\_set\_transform**(body: [RID](class_rid.md#class-rid), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-physicsserver3d-method-soft-body-set-transform)

Sets the global transform of the given soft body.

* * *

void **soft\_body\_update\_rendering\_server**(body: [RID](class_rid.md#class-rid), rendering\_server\_handler: [PhysicsServer3DRenderingServerHandler](class_physicsserver3drenderingserverhandler.md#class-physicsserver3drenderingserverhandler)) [🔗](#class-physicsserver3d-method-soft-body-update-rendering-server)

Requests that the physics server updates the rendering server with the latest positions of the given soft body's points through the `rendering_server_handler` interface.

* * *

[RID](class_rid.md#class-rid) **space\_create**() [🔗](#class-physicsserver3d-method-space-create)

Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with [area\_set\_space()](#class-physicsserver3d-method-area-set-space), or to a body with [body\_set\_space()](#class-physicsserver3d-method-body-set-space).

* * *

[PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d) **space\_get\_direct\_state**(space: [RID](class_rid.md#class-rid)) [🔗](#class-physicsserver3d-method-space-get-direct-state)

Returns the state of a space, a [PhysicsDirectSpaceState3D](class_physicsdirectspacestate3d.md#class-physicsdirectspacestate3d). This object can be used to make collision/intersection queries.

* * *

[float](class_float.md#class-float) **space\_get\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver3d-spaceparameter)) const [🔗](#class-physicsserver3d-method-space-get-param)

Returns the value of a space parameter.

* * *

[bool](class_bool.md#class-bool) **space\_is\_active**(space: [RID](class_rid.md#class-rid)) const [🔗](#class-physicsserver3d-method-space-is-active)

Returns whether the space is active.

* * *

void **space\_set\_active**(space: [RID](class_rid.md#class-rid), active: [bool](class_bool.md#class-bool)) [🔗](#class-physicsserver3d-method-space-set-active)

Marks a space as active. It will not have an effect, unless it is assigned to an area or body.

* * *

void **space\_set\_param**(space: [RID](class_rid.md#class-rid), param: [SpaceParameter](#enum-physicsserver3d-spaceparameter), value: [float](class_float.md#class-float)) [🔗](#class-physicsserver3d-method-space-set-param)

Sets the value for a space parameter. A list of available parameters is on the [SpaceParameter](#enum-physicsserver3d-spaceparameter) constants.

* * *

[RID](class_rid.md#class-rid) **sphere\_shape\_create**() [🔗](#class-physicsserver3d-method-sphere-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[RID](class_rid.md#class-rid) **world\_boundary\_shape\_create**() [🔗](#class-physicsserver3d-method-world-boundary-shape-create)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

[Previous](class_physicsserver2dmanager.md "PhysicsServer2DManager") [Next](class_physicsserver3dextension.md "PhysicsServer3DExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_physicsserver2dmanager.md "PhysicsServer2DManager") [Next](class_physicsserver3dextension.md "PhysicsServer3DExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).