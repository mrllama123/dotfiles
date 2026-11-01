---
title: VehicleWheel3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_vehiclewheel3d.html
crawled_at: "2026-08-13T10:22:08+12:00"
content_hash: f8dbf18fbef1885d20df83279a303b700784a106c5638655bae9205ed8593f0c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VehicleWheel3D

* * *

# VehicleWheel3D

**Inherits:** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D physics body for a [VehicleBody3D](class_vehiclebody3d.md#class-vehiclebody3d) that simulates the behavior of a wheel.

## Description

A node used as a child of a [VehicleBody3D](class_vehiclebody3d.md#class-vehiclebody3d) parent to simulate the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface.

**Note:** This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may need to write your own physics integration using another [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) class.

## Tutorials

- [3D Truck Town Demo](https://godotengine.org/asset-library/asset/2752)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [brake](#class-vehiclewheel3d-property-brake) | `0.0` |
| [float](class_float.md#class-float) | [damping\_compression](#class-vehiclewheel3d-property-damping-compression) | `0.83` |
| [float](class_float.md#class-float) | [damping\_relaxation](#class-vehiclewheel3d-property-damping-relaxation) | `0.88` |
| [float](class_float.md#class-float) | [engine\_force](#class-vehiclewheel3d-property-engine-force) | `0.0` |
| [PhysicsInterpolationMode](class_node.md#enum-node-physicsinterpolationmode) | physics\_interpolation\_mode | `2` (overrides [Node](class_node.md#class-node-property-physics-interpolation-mode)) |
| [float](class_float.md#class-float) | [steering](#class-vehiclewheel3d-property-steering) | `0.0` |
| [float](class_float.md#class-float) | [suspension\_max\_force](#class-vehiclewheel3d-property-suspension-max-force) | `6000.0` |
| [float](class_float.md#class-float) | [suspension\_stiffness](#class-vehiclewheel3d-property-suspension-stiffness) | `5.88` |
| [float](class_float.md#class-float) | [suspension\_travel](#class-vehiclewheel3d-property-suspension-travel) | `0.2` |
| [bool](class_bool.md#class-bool) | [use\_as\_steering](#class-vehiclewheel3d-property-use-as-steering) | `false` |
| [bool](class_bool.md#class-bool) | [use\_as\_traction](#class-vehiclewheel3d-property-use-as-traction) | `false` |
| [float](class_float.md#class-float) | [wheel\_friction\_slip](#class-vehiclewheel3d-property-wheel-friction-slip) | `10.5` |
| [float](class_float.md#class-float) | [wheel\_radius](#class-vehiclewheel3d-property-wheel-radius) | `0.5` |
| [float](class_float.md#class-float) | [wheel\_rest\_length](#class-vehiclewheel3d-property-wheel-rest-length) | `0.15` |
| [float](class_float.md#class-float) | [wheel\_roll\_influence](#class-vehiclewheel3d-property-wheel-roll-influence) | `0.1` |

## Methods

|     |     |
| --- | --- |
| [Node3D](class_node3d.md#class-node3d) | [get\_contact\_body](#class-vehiclewheel3d-method-get-contact-body)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_normal](#class-vehiclewheel3d-method-get-contact-normal)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_contact\_point](#class-vehiclewheel3d-method-get-contact-point)() const |
| [float](class_float.md#class-float) | [get\_rpm](#class-vehiclewheel3d-method-get-rpm)() const |
| [float](class_float.md#class-float) | [get\_skidinfo](#class-vehiclewheel3d-method-get-skidinfo)() const |
| [bool](class_bool.md#class-bool) | [is\_in\_contact](#class-vehiclewheel3d-method-is-in-contact)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **brake** = `0.0` [🔗](#class-vehiclewheel3d-property-brake)

- void **set\_brake**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_brake**()


Slows down the wheel by applying a braking force. The wheel is only slowed down if it is in contact with a surface. The force you need to apply to adequately slow down your vehicle depends on the [RigidBody3D.mass](class_rigidbody3d.md#class-rigidbody3d-property-mass) of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 30 range for hard braking.

* * *

[float](class_float.md#class-float) **damping\_compression** = `0.83` [🔗](#class-vehiclewheel3d-property-damping-compression)

- void **set\_damping\_compression**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping\_compression**()


The damping applied to the suspension spring when being compressed, meaning when the wheel is moving up relative to the vehicle. It is measured in Newton-seconds per millimeter (N⋅s/mm), or megagrams per second (Mg/s). This value should be between 0.0 (no damping) and 1.0, but may be more. A value of 0.0 means the car will keep bouncing as the spring keeps its energy. A good value for this is around 0.3 for a normal car, 0.5 for a race car.

* * *

[float](class_float.md#class-float) **damping\_relaxation** = `0.88` [🔗](#class-vehiclewheel3d-property-damping-relaxation)

- void **set\_damping\_relaxation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping\_relaxation**()


The damping applied to the suspension spring when rebounding or extending, meaning when the wheel is moving down relative to the vehicle. It is measured in Newton-seconds per millimeter (N⋅s/mm), or megagrams per second (Mg/s). This value should be between 0.0 (no damping) and 1.0, but may be more. This value should always be slightly higher than the [damping\_compression](#class-vehiclewheel3d-property-damping-compression) property. For a [damping\_compression](#class-vehiclewheel3d-property-damping-compression) value of 0.3, try a relaxation value of 0.5.

* * *

[float](class_float.md#class-float) **engine\_force** = `0.0` [🔗](#class-vehiclewheel3d-property-engine-force)

- void **set\_engine\_force**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_engine\_force**()


Accelerates the wheel by applying an engine force. The wheel is only sped up if it is in contact with a surface. The [RigidBody3D.mass](class_rigidbody3d.md#class-rigidbody3d-property-mass) of the vehicle has an effect on the acceleration of the vehicle. For a vehicle with a mass set to 1000, try a value in the 25 - 50 range for acceleration.

**Note:** The simulation does not take the effect of gears into account, you will need to add logic for this if you wish to simulate gears.

A negative value will result in the wheel reversing.

* * *

[float](class_float.md#class-float) **steering** = `0.0` [🔗](#class-vehiclewheel3d-property-steering)

- void **set\_steering**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_steering**()


The steering angle for the wheel, in radians. Setting this to a non-zero value will result in the vehicle turning when it's moving.

* * *

[float](class_float.md#class-float) **suspension\_max\_force** = `6000.0` [🔗](#class-vehiclewheel3d-property-suspension-max-force)

- void **set\_suspension\_max\_force**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_suspension\_max\_force**()


The maximum force the spring can resist. This value should be higher than a quarter of the [RigidBody3D.mass](class_rigidbody3d.md#class-rigidbody3d-property-mass) of the [VehicleBody3D](class_vehiclebody3d.md#class-vehiclebody3d) or the spring will not carry the weight of the vehicle. Good results are often obtained by a value that is about 3× to 4× this number.

* * *

[float](class_float.md#class-float) **suspension\_stiffness** = `5.88` [🔗](#class-vehiclewheel3d-property-suspension-stiffness)

- void **set\_suspension\_stiffness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_suspension\_stiffness**()


The stiffness of the suspension, measured in Newtons per millimeter (N/mm), or megagrams per second squared (Mg/s²). Use a value lower than 50 for an off-road car, a value between 50 and 100 for a race car and try something around 200 for something like a Formula 1 car.

* * *

[float](class_float.md#class-float) **suspension\_travel** = `0.2` [🔗](#class-vehiclewheel3d-property-suspension-travel)

- void **set\_suspension\_travel**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_suspension\_travel**()


This is the distance the suspension can travel. As Godot units are equivalent to meters, keep this setting relatively low. Try a value between 0.1 and 0.3 depending on the type of car.

* * *

[bool](class_bool.md#class-bool) **use\_as\_steering** = `false` [🔗](#class-vehiclewheel3d-property-use-as-steering)

- void **set\_use\_as\_steering**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_used\_as\_steering**()


If `true`, this wheel will be turned when the car steers. This value is used in conjunction with [VehicleBody3D.steering](class_vehiclebody3d.md#class-vehiclebody3d-property-steering) and ignored if you are using the per-wheel [steering](#class-vehiclewheel3d-property-steering) value instead.

* * *

[bool](class_bool.md#class-bool) **use\_as\_traction** = `false` [🔗](#class-vehiclewheel3d-property-use-as-traction)

- void **set\_use\_as\_traction**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_used\_as\_traction**()


If `true`, this wheel transfers engine force to the ground to propel the vehicle forward. This value is used in conjunction with [VehicleBody3D.engine\_force](class_vehiclebody3d.md#class-vehiclebody3d-property-engine-force) and ignored if you are using the per-wheel [engine\_force](#class-vehiclewheel3d-property-engine-force) value instead.

* * *

[float](class_float.md#class-float) **wheel\_friction\_slip** = `10.5` [🔗](#class-vehiclewheel3d-property-wheel-friction-slip)

- void **set\_friction\_slip**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_friction\_slip**()


This determines how much grip this wheel has. It is combined with the friction setting of the surface the wheel is in contact with. 0.0 means no grip, 1.0 is normal grip. For a drift car setup, try setting the grip of the rear wheels slightly lower than the front wheels, or use a lower value to simulate tire wear.

It's best to set this to 1.0 when starting out.

* * *

[float](class_float.md#class-float) **wheel\_radius** = `0.5` [🔗](#class-vehiclewheel3d-property-wheel-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The radius of the wheel in meters.

* * *

[float](class_float.md#class-float) **wheel\_rest\_length** = `0.15` [🔗](#class-vehiclewheel3d-property-wheel-rest-length)

- void **set\_suspension\_rest\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_suspension\_rest\_length**()


This is the distance in meters the wheel is lowered from its origin point. Don't set this to 0.0 and move the wheel into position, instead move the origin point of your wheel (the gizmo in Godot) to the position the wheel will take when bottoming out, then use the rest length to move the wheel down to the position it should be in when the car is in rest.

* * *

[float](class_float.md#class-float) **wheel\_roll\_influence** = `0.1` [🔗](#class-vehiclewheel3d-property-wheel-roll-influence)

- void **set\_roll\_influence**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_roll\_influence**()


This value affects the roll of your vehicle. If set to 1.0 for all wheels, your vehicle will resist body roll, while a value of 0.0 will be prone to rolling over.

* * *

## Method Descriptions

[Node3D](class_node3d.md#class-node3d) **get\_contact\_body**() const [🔗](#class-vehiclewheel3d-method-get-contact-body)

Returns the contacting body node if valid in the tree, as [Node3D](class_node3d.md#class-node3d). At the moment, [GridMap](class_gridmap.md#class-gridmap) is not supported so the node will be always of type [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d).

Returns `null` if the wheel is not in contact with a surface, or the contact body is not a [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_normal**() const [🔗](#class-vehiclewheel3d-method-get-contact-normal)

Returns the normal of the suspension's collision in world space if the wheel is in contact. If the wheel isn't in contact with anything, returns a vector pointing directly along the suspension axis toward the vehicle in world space.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_contact\_point**() const [🔗](#class-vehiclewheel3d-method-get-contact-point)

Returns the point of the suspension's collision in world space if the wheel is in contact. If the wheel isn't in contact with anything, returns the maximum point of the wheel's ray cast in world space, which is defined by `wheel_rest_length + wheel_radius`.

* * *

[float](class_float.md#class-float) **get\_rpm**() const [🔗](#class-vehiclewheel3d-method-get-rpm)

Returns the rotational speed of the wheel in revolutions per minute.

* * *

[float](class_float.md#class-float) **get\_skidinfo**() const [🔗](#class-vehiclewheel3d-method-get-skidinfo)

Returns a value between 0.0 and 1.0 that indicates whether this wheel is skidding. 0.0 is skidding (the wheel has lost grip, e.g. icy terrain), 1.0 means not skidding (the wheel has full grip, e.g. dry asphalt road).

* * *

[bool](class_bool.md#class-bool) **is\_in\_contact**() const [🔗](#class-vehiclewheel3d-method-is-in-contact)

Returns `true` if this wheel is in contact with a surface.

[Previous](class_vehiclebody3d.md "VehicleBody3D") [Next](class_vflowcontainer.md "VFlowContainer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_vehiclebody3d.md "VehicleBody3D") [Next](class_vflowcontainer.md "VFlowContainer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).