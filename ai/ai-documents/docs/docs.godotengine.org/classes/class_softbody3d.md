---
title: SoftBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_softbody3d.html
crawled_at: "2026-08-13T10:29:33+12:00"
content_hash: 2d56a1c336ea8a2cc79d7966cba8e90cc90473cd38f7a88212e6b74a1dac69c4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SoftBody3D

* * *

# SoftBody3D

**Inherits:** [MeshInstance3D](class_meshinstance3d.md#class-meshinstance3d) **<** [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d) **<** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A deformable 3D physics mesh.

## Description

A deformable 3D physics mesh. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.

Additionally, **SoftBody3D** is subject to wind forces defined in [Area3D](class_area3d.md#class-area3d) (see [Area3D.wind\_source\_path](class_area3d.md#class-area3d-property-wind-source-path), [Area3D.wind\_force\_magnitude](class_area3d.md#class-area3d-property-wind-force-magnitude), and [Area3D.wind\_attenuation\_factor](class_area3d.md#class-area3d-property-wind-attenuation-factor)).

**Note:** It's recommended to use Jolt Physics when using **SoftBody3D** instead of the default GodotPhysics3D, as Jolt Physics' soft body implementation is faster and more reliable. You can switch the physics engine using the [ProjectSettings.physics/3d/physics\_engine](class_projectsettings.md#class-projectsettings-property-physics-3d-physics-engine) project setting.

## Tutorials

- [SoftBody](../tutorials/physics/soft_body.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [collision\_layer](#class-softbody3d-property-collision-layer) | `1` |
| [int](class_int.md#class-int) | [collision\_mask](#class-softbody3d-property-collision-mask) | `1` |
| [float](class_float.md#class-float) | [damping\_coefficient](#class-softbody3d-property-damping-coefficient) | `0.01` |
| [DisableMode](#enum-softbody3d-disablemode) | [disable\_mode](#class-softbody3d-property-disable-mode) | `0` |
| [float](class_float.md#class-float) | [drag\_coefficient](#class-softbody3d-property-drag-coefficient) | `0.0` |
| [float](class_float.md#class-float) | [linear\_stiffness](#class-softbody3d-property-linear-stiffness) | `0.5` |
| [NodePath](class_nodepath.md#class-nodepath) | [parent\_collision\_ignore](#class-softbody3d-property-parent-collision-ignore) | `NodePath("")` |
| [float](class_float.md#class-float) | [pressure\_coefficient](#class-softbody3d-property-pressure-coefficient) | `0.0` |
| [bool](class_bool.md#class-bool) | [ray\_pickable](#class-softbody3d-property-ray-pickable) | `true` |
| [float](class_float.md#class-float) | [shrinking\_factor](#class-softbody3d-property-shrinking-factor) | `0.0` |
| [int](class_int.md#class-int) | [simulation\_precision](#class-softbody3d-property-simulation-precision) | `5` |
| [float](class_float.md#class-float) | [total\_mass](#class-softbody3d-property-total-mass) | `1.0` |

## Methods

|     |     |
| --- | --- |
| void | [add\_collision\_exception\_with](#class-softbody3d-method-add-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| void | [apply\_central\_force](#class-softbody3d-method-apply-central-force)(force: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_central\_impulse](#class-softbody3d-method-apply-central-impulse)(impulse: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_force](#class-softbody3d-method-apply-force)(point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) |
| void | [apply\_impulse](#class-softbody3d-method-apply-impulse)(point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) |
| [Array](class_array.md#class-array)\[ [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d)\] | [get\_collision\_exceptions](#class-softbody3d-method-get-collision-exceptions)() |
| [bool](class_bool.md#class-bool) | [get\_collision\_layer\_value](#class-softbody3d-method-get-collision-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-softbody3d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_physics\_rid](#class-softbody3d-method-get-physics-rid)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_point\_transform](#class-softbody3d-method-get-point-transform)(point\_index: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_point\_pinned](#class-softbody3d-method-is-point-pinned)(point\_index: [int](class_int.md#class-int)) const |
| void | [remove\_collision\_exception\_with](#class-softbody3d-method-remove-collision-exception-with)(body: [Node](class_node.md#class-node)) |
| void | [set\_collision\_layer\_value](#class-softbody3d-method-set-collision-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_collision\_mask\_value](#class-softbody3d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_point\_pinned](#class-softbody3d-method-set-point-pinned)(point\_index: [int](class_int.md#class-int), pinned: [bool](class_bool.md#class-bool), attachment\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath(""), insert\_at: [int](class_int.md#class-int) = -1) |

* * *

## Enumerations

enum **DisableMode**: [🔗](#enum-softbody3d-disablemode)

[DisableMode](#enum-softbody3d-disablemode) **DISABLE\_MODE\_REMOVE** = `0`

When [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled), remove from the physics simulation to stop all physics interactions with this **SoftBody3D**.

Automatically re-added to the physics simulation when the [Node](class_node.md#class-node) is processed again.

[DisableMode](#enum-softbody3d-disablemode) **DISABLE\_MODE\_KEEP\_ACTIVE** = `1`

When [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled), do not affect the physics simulation.

* * *

## Property Descriptions

[int](class_int.md#class-int) **collision\_layer** = `1` [🔗](#class-softbody3d-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The physics layers this SoftBody3D **is in**. Collision objects can exist in one or more of 32 different layers. See also [collision\_mask](#class-softbody3d-property-collision-mask).

**Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-softbody3d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers this SoftBody3D **scans**. Collision objects can scan one or more of 32 different layers. See also [collision\_layer](#class-softbody3d-property-collision-layer).

**Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[float](class_float.md#class-float) **damping\_coefficient** = `0.01` [🔗](#class-softbody3d-property-damping-coefficient)

- void **set\_damping\_coefficient**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_damping\_coefficient**()


The body's damping coefficient. Higher values will slow down the body more noticeably when forces are applied.

* * *

[DisableMode](#enum-softbody3d-disablemode) **disable\_mode** = `0` [🔗](#class-softbody3d-property-disable-mode)

- void **set\_disable\_mode**(value: [DisableMode](#enum-softbody3d-disablemode))

- [DisableMode](#enum-softbody3d-disablemode) **get\_disable\_mode**()


Defines the behavior in physics when [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled).

* * *

[float](class_float.md#class-float) **drag\_coefficient** = `0.0` [🔗](#class-softbody3d-property-drag-coefficient)

- void **set\_drag\_coefficient**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_drag\_coefficient**()


The body's drag coefficient. Higher values increase this body's air resistance.

**Note:** This value is currently unused by Godot's default physics implementation.

* * *

[float](class_float.md#class-float) **linear\_stiffness** = `0.5` [🔗](#class-softbody3d-property-linear-stiffness)

- void **set\_linear\_stiffness**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_linear\_stiffness**()


Higher values will result in a stiffer body, while lower values will increase the body's ability to bend. The value can be between `0.0` and `1.0` (inclusive).

* * *

[NodePath](class_nodepath.md#class-nodepath) **parent\_collision\_ignore** = `NodePath("")` [🔗](#class-softbody3d-property-parent-collision-ignore)

- void **set\_parent\_collision\_ignore**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_parent\_collision\_ignore**()


[NodePath](class_nodepath.md#class-nodepath) to a [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) this SoftBody3D should avoid clipping.

* * *

[float](class_float.md#class-float) **pressure\_coefficient** = `0.0` [🔗](#class-softbody3d-property-pressure-coefficient)

- void **set\_pressure\_coefficient**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_pressure\_coefficient**()


The pressure coefficient of this soft body. Simulate pressure build-up from inside this body. Higher values increase the strength of this effect.

* * *

[bool](class_bool.md#class-bool) **ray\_pickable** = `true` [🔗](#class-softbody3d-property-ray-pickable)

- void **set\_ray\_pickable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_ray\_pickable**()


If `true`, the **SoftBody3D** will respond to [RayCast3D](class_raycast3d.md#class-raycast3d) s.

* * *

[float](class_float.md#class-float) **shrinking\_factor** = `0.0` [🔗](#class-softbody3d-property-shrinking-factor)

- void **set\_shrinking\_factor**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_shrinking\_factor**()


Scales the rest lengths of **SoftBody3D**'s edge constraints. Positive values shrink the mesh, while negative values expand it. For example, a value of `0.1` shortens the edges of the mesh by 10%, while `-0.1` expands the edges by 10%.

**Note:** [shrinking\_factor](#class-softbody3d-property-shrinking-factor) is best used on surface meshes with pinned points.

* * *

[int](class_int.md#class-int) **simulation\_precision** = `5` [🔗](#class-softbody3d-property-simulation-precision)

- void **set\_simulation\_precision**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_simulation\_precision**()


Increasing this value will improve the resulting simulation, but can affect performance. Use with care.

* * *

[float](class_float.md#class-float) **total\_mass** = `1.0` [🔗](#class-softbody3d-property-total-mass)

- void **set\_total\_mass**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_total\_mass**()


The SoftBody3D's mass.

* * *

## Method Descriptions

void **add\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-softbody3d-method-add-collision-exception-with)

Adds a body to the list of bodies that this body can't collide with.

* * *

void **apply\_central\_force**(force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-softbody3d-method-apply-central-force)

Distributes and applies a force to all points. A force is time dependent and meant to be applied every physics update.

* * *

void **apply\_central\_impulse**(impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-softbody3d-method-apply-central-impulse)

Distributes and applies an impulse to all points.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

void **apply\_force**(point\_index: [int](class_int.md#class-int), force: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-softbody3d-method-apply-force)

Applies a force to a point. A force is time dependent and meant to be applied every physics update.

* * *

void **apply\_impulse**(point\_index: [int](class_int.md#class-int), impulse: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-softbody3d-method-apply-impulse)

Applies an impulse to a point.

An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "\_force" functions otherwise).

* * *

[Array](class_array.md#class-array)\[ [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d)\] **get\_collision\_exceptions**() [🔗](#class-softbody3d-method-get-collision-exceptions)

Returns an array of nodes that were added as collision exceptions for this body.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-softbody3d-method-get-collision-layer-value)

Returns whether or not the specified layer of the [collision\_layer](#class-softbody3d-property-collision-layer) is enabled, given a `layer_number` between 1 and 32.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-softbody3d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-softbody3d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_physics\_rid**() const [🔗](#class-softbody3d-method-get-physics-rid)

Returns the internal [RID](class_rid.md#class-rid) used by the [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) for this body.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_point\_transform**(point\_index: [int](class_int.md#class-int)) [🔗](#class-softbody3d-method-get-point-transform)

Returns local translation of a vertex in the surface array.

* * *

[bool](class_bool.md#class-bool) **is\_point\_pinned**(point\_index: [int](class_int.md#class-int)) const [🔗](#class-softbody3d-method-is-point-pinned)

Returns `true` if vertex is set to pinned.

* * *

void **remove\_collision\_exception\_with**(body: [Node](class_node.md#class-node)) [🔗](#class-softbody3d-method-remove-collision-exception-with)

Removes a body from the list of bodies that this body can't collide with.

* * *

void **set\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-softbody3d-method-set-collision-layer-value)

Based on `value`, enables or disables the specified layer in the [collision\_layer](#class-softbody3d-property-collision-layer), given a `layer_number` between 1 and 32.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-softbody3d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-softbody3d-property-collision-mask), given a `layer_number` between 1 and 32.

* * *

void **set\_point\_pinned**(point\_index: [int](class_int.md#class-int), pinned: [bool](class_bool.md#class-bool), attachment\_path: [NodePath](class_nodepath.md#class-nodepath) = NodePath(""), insert\_at: [int](class_int.md#class-int) = -1) [🔗](#class-softbody3d-method-set-point-pinned)

Sets the pinned state of a surface vertex. When set to `true`, the optional `attachment_path` can define a [Node3D](class_node3d.md#class-node3d) the pinned vertex will be attached to.

[Previous](class_sliderjoint3d.md "SliderJoint3D") [Next](class_spinbox.md "SpinBox")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sliderjoint3d.md "SliderJoint3D") [Next](class_spinbox.md "SpinBox")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).