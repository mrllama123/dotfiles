---
title: CollisionObject2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_collisionobject2d.html
crawled_at: "2026-08-13T10:33:00+12:00"
content_hash: daaa363a3ab0a890236ffd8a6805831d6d4312e3714a1241e116fd3c5d30d18c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CollisionObject2D

* * *

# CollisionObject2D

**Inherits:** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [Area2D](class_area2d.md#class-area2d), [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d)

Abstract base class for 2D physics objects.

## Description

Abstract base class for 2D physics objects. **CollisionObject2D** can hold any number of [Shape2D](class_shape2d.md#class-shape2d) s for collision. Each shape must be assigned to a _shape owner_. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.

**Note:** Only collisions between objects within the same canvas ( [Viewport](class_viewport.md#class-viewport) canvas or [CanvasLayer](class_canvaslayer.md#class-canvaslayer)) are supported. The behavior of collisions between objects in different canvases is undefined.

## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [collision\_layer](#class-collisionobject2d-property-collision-layer) | `1` |
| [int](class_int.md#class-int) | [collision\_mask](#class-collisionobject2d-property-collision-mask) | `1` |
| [float](class_float.md#class-float) | [collision\_priority](#class-collisionobject2d-property-collision-priority) | `1.0` |
| [DisableMode](#enum-collisionobject2d-disablemode) | [disable\_mode](#class-collisionobject2d-property-disable-mode) | `0` |
| [bool](class_bool.md#class-bool) | [input\_pickable](#class-collisionobject2d-property-input-pickable) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [\_input\_event](#class-collisionobject2d-private-method-input-event)(viewport: [Viewport](class_viewport.md#class-viewport), event: [InputEvent](class_inputevent.md#class-inputevent), shape\_idx: [int](class_int.md#class-int)) virtual |
| void | [\_mouse\_enter](#class-collisionobject2d-private-method-mouse-enter)() virtual |
| void | [\_mouse\_exit](#class-collisionobject2d-private-method-mouse-exit)() virtual |
| void | [\_mouse\_shape\_enter](#class-collisionobject2d-private-method-mouse-shape-enter)(shape\_idx: [int](class_int.md#class-int)) virtual |
| void | [\_mouse\_shape\_exit](#class-collisionobject2d-private-method-mouse-shape-exit)(shape\_idx: [int](class_int.md#class-int)) virtual |
| [int](class_int.md#class-int) | [create\_shape\_owner](#class-collisionobject2d-method-create-shape-owner)(owner: [Object](class_object.md#class-object)) |
| [bool](class_bool.md#class-bool) | [get\_collision\_layer\_value](#class-collisionobject2d-method-get-collision-layer-value)(layer\_number: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [get\_collision\_mask\_value](#class-collisionobject2d-method-get-collision-mask-value)(layer\_number: [int](class_int.md#class-int)) const |
| [RID](class_rid.md#class-rid) | [get\_rid](#class-collisionobject2d-method-get-rid)() const |
| [float](class_float.md#class-float) | [get\_shape\_owner\_one\_way\_collision\_margin](#class-collisionobject2d-method-get-shape-owner-one-way-collision-margin)(owner\_id: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_shape\_owners](#class-collisionobject2d-method-get-shape-owners)() |
| [bool](class_bool.md#class-bool) | [is\_shape\_owner\_disabled](#class-collisionobject2d-method-is-shape-owner-disabled)(owner\_id: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_shape\_owner\_one\_way\_collision\_enabled](#class-collisionobject2d-method-is-shape-owner-one-way-collision-enabled)(owner\_id: [int](class_int.md#class-int)) const |
| void | [remove\_shape\_owner](#class-collisionobject2d-method-remove-shape-owner)(owner\_id: [int](class_int.md#class-int)) |
| void | [set\_collision\_layer\_value](#class-collisionobject2d-method-set-collision-layer-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| void | [set\_collision\_mask\_value](#class-collisionobject2d-method-set-collision-mask-value)(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) |
| [int](class_int.md#class-int) | [shape\_find\_owner](#class-collisionobject2d-method-shape-find-owner)(shape\_index: [int](class_int.md#class-int)) const |
| void | [shape\_owner\_add\_shape](#class-collisionobject2d-method-shape-owner-add-shape)(owner\_id: [int](class_int.md#class-int), shape: [Shape2D](class_shape2d.md#class-shape2d)) |
| void | [shape\_owner\_clear\_shapes](#class-collisionobject2d-method-shape-owner-clear-shapes)(owner\_id: [int](class_int.md#class-int)) |
| [Object](class_object.md#class-object) | [shape\_owner\_get\_owner](#class-collisionobject2d-method-shape-owner-get-owner)(owner\_id: [int](class_int.md#class-int)) const |
| [Shape2D](class_shape2d.md#class-shape2d) | [shape\_owner\_get\_shape](#class-collisionobject2d-method-shape-owner-get-shape)(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shape\_owner\_get\_shape\_count](#class-collisionobject2d-method-shape-owner-get-shape-count)(owner\_id: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [shape\_owner\_get\_shape\_index](#class-collisionobject2d-method-shape-owner-get-shape-index)(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [shape\_owner\_get\_transform](#class-collisionobject2d-method-shape-owner-get-transform)(owner\_id: [int](class_int.md#class-int)) const |
| void | [shape\_owner\_remove\_shape](#class-collisionobject2d-method-shape-owner-remove-shape)(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) |
| void | [shape\_owner\_set\_disabled](#class-collisionobject2d-method-shape-owner-set-disabled)(owner\_id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) |
| void | [shape\_owner\_set\_one\_way\_collision](#class-collisionobject2d-method-shape-owner-set-one-way-collision)(owner\_id: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) |
| void | [shape\_owner\_set\_one\_way\_collision\_margin](#class-collisionobject2d-method-shape-owner-set-one-way-collision-margin)(owner\_id: [int](class_int.md#class-int), margin: [float](class_float.md#class-float)) |
| void | [shape\_owner\_set\_transform](#class-collisionobject2d-method-shape-owner-set-transform)(owner\_id: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) |

* * *

## Signals

**input\_event**(viewport: [Node](class_node.md#class-node), event: [InputEvent](class_inputevent.md#class-inputevent), shape\_idx: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-signal-input-event)

Emitted when an input event occurs. Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set. See [\_input\_event()](#class-collisionobject2d-private-method-input-event) for details.

* * *

**mouse\_entered**() [🔗](#class-collisionobject2d-signal-mouse-entered)

Emitted when the mouse pointer enters any of this object's shapes. Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set. Note that moving between different shapes within a single **CollisionObject2D** won't cause this signal to be emitted.

**Note:** Due to the lack of continuous collision detection, this signal may not be emitted in the expected order if the mouse moves fast enough and the **CollisionObject2D**'s area is small. This signal may also not be emitted if another **CollisionObject2D** is overlapping the **CollisionObject2D** in question.

* * *

**mouse\_exited**() [🔗](#class-collisionobject2d-signal-mouse-exited)

Emitted when the mouse pointer exits all this object's shapes. Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set. Note that moving between different shapes within a single **CollisionObject2D** won't cause this signal to be emitted.

**Note:** Due to the lack of continuous collision detection, this signal may not be emitted in the expected order if the mouse moves fast enough and the **CollisionObject2D**'s area is small. This signal may also not be emitted if another **CollisionObject2D** is overlapping the **CollisionObject2D** in question.

* * *

**mouse\_shape\_entered**(shape\_idx: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-signal-mouse-shape-entered)

Emitted when the mouse pointer enters any of this object's shapes or moves from one shape to another. `shape_idx` is the child index of the newly entered [Shape2D](class_shape2d.md#class-shape2d). Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set.

* * *

**mouse\_shape\_exited**(shape\_idx: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-signal-mouse-shape-exited)

Emitted when the mouse pointer exits any of this object's shapes. `shape_idx` is the child index of the exited [Shape2D](class_shape2d.md#class-shape2d). Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set.

* * *

## Enumerations

enum **DisableMode**: [🔗](#enum-collisionobject2d-disablemode)

[DisableMode](#enum-collisionobject2d-disablemode) **DISABLE\_MODE\_REMOVE** = `0`

When [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled), remove from the physics simulation to stop all physics interactions with this **CollisionObject2D**.

Automatically re-added to the physics simulation when the [Node](class_node.md#class-node) is processed again.

[DisableMode](#enum-collisionobject2d-disablemode) **DISABLE\_MODE\_MAKE\_STATIC** = `1`

When [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled), make the body static. Doesn't affect [Area2D](class_area2d.md#class-area2d). [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) can't be affected by forces or other bodies while static.

Automatically set [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) back to its original mode when the [Node](class_node.md#class-node) is processed again.

[DisableMode](#enum-collisionobject2d-disablemode) **DISABLE\_MODE\_KEEP\_ACTIVE** = `2`

When [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled), do not affect the physics simulation.

* * *

## Property Descriptions

[int](class_int.md#class-int) **collision\_layer** = `1` [🔗](#class-collisionobject2d-property-collision-layer)

- void **set\_collision\_layer**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_layer**()


The physics layers this CollisionObject2D is in. Collision objects can exist in one or more of 32 different layers. See also [collision\_mask](#class-collisionobject2d-property-collision-mask).

**Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[int](class_int.md#class-int) **collision\_mask** = `1` [🔗](#class-collisionobject2d-property-collision-mask)

- void **set\_collision\_mask**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_collision\_mask**()


The physics layers this CollisionObject2D scans. Collision objects can scan one or more of 32 different layers. See also [collision\_layer](#class-collisionobject2d-property-collision-layer).

**Note:** Object A can detect a contact with object B only if object B is in any of the layers that object A scans. See [Collision layers and masks](../tutorials/physics/physics_introduction.md#collision-layers-and-masks) in the documentation for more information.

* * *

[float](class_float.md#class-float) **collision\_priority** = `1.0` [🔗](#class-collisionobject2d-property-collision-priority)

- void **set\_collision\_priority**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_collision\_priority**()


The priority used to solve colliding when occurring penetration. The higher the priority is, the lower the penetration into the object will be. This can for example be used to prevent the player from breaking through the boundaries of a level.

* * *

[DisableMode](#enum-collisionobject2d-disablemode) **disable\_mode** = `0` [🔗](#class-collisionobject2d-property-disable-mode)

- void **set\_disable\_mode**(value: [DisableMode](#enum-collisionobject2d-disablemode))

- [DisableMode](#enum-collisionobject2d-disablemode) **get\_disable\_mode**()


Defines the behavior in physics when [Node.process\_mode](class_node.md#class-node-property-process-mode) is set to [Node.PROCESS\_MODE\_DISABLED](class_node.md#class-node-constant-process-mode-disabled).

* * *

[bool](class_bool.md#class-bool) **input\_pickable** = `true` [🔗](#class-collisionobject2d-property-input-pickable)

- void **set\_pickable**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_pickable**()


If `true`, this object is pickable. A pickable object can detect the mouse pointer entering/leaving, and if the mouse is inside it, report input events. Requires at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set.

* * *

## Method Descriptions

void **\_input\_event**(viewport: [Viewport](class_viewport.md#class-viewport), event: [InputEvent](class_inputevent.md#class-inputevent), shape\_idx: [int](class_int.md#class-int)) virtual [🔗](#class-collisionobject2d-private-method-input-event)

Accepts unhandled [InputEvent](class_inputevent.md#class-inputevent) s. `shape_idx` is the child index of the clicked [Shape2D](class_shape2d.md#class-shape2d). Connect to [input\_event](#class-collisionobject2d-signal-input-event) to easily pick up these events.

**Note:** [\_input\_event()](#class-collisionobject2d-private-method-input-event) requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set.

* * *

void **\_mouse\_enter**() virtual [🔗](#class-collisionobject2d-private-method-mouse-enter)

Called when the mouse pointer enters any of this object's shapes. Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set. Note that moving between different shapes within a single **CollisionObject2D** won't cause this function to be called.

* * *

void **\_mouse\_exit**() virtual [🔗](#class-collisionobject2d-private-method-mouse-exit)

Called when the mouse pointer exits all this object's shapes. Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be set. Note that moving between different shapes within a single **CollisionObject2D** won't cause this function to be called.

* * *

void **\_mouse\_shape\_enter**(shape\_idx: [int](class_int.md#class-int)) virtual [🔗](#class-collisionobject2d-private-method-mouse-shape-enter)

Called when the mouse pointer enters any of this object's shapes or moves from one shape to another. `shape_idx` is the child index of the newly entered [Shape2D](class_shape2d.md#class-shape2d). Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be called.

* * *

void **\_mouse\_shape\_exit**(shape\_idx: [int](class_int.md#class-int)) virtual [🔗](#class-collisionobject2d-private-method-mouse-shape-exit)

Called when the mouse pointer exits any of this object's shapes. `shape_idx` is the child index of the exited [Shape2D](class_shape2d.md#class-shape2d). Requires [input\_pickable](#class-collisionobject2d-property-input-pickable) to be `true` and at least one [collision\_layer](#class-collisionobject2d-property-collision-layer) bit to be called.

* * *

[int](class_int.md#class-int) **create\_shape\_owner**(owner: [Object](class_object.md#class-object)) [🔗](#class-collisionobject2d-method-create-shape-owner)

Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-get-collision-layer-value)

Returns whether or not the specified layer of the [collision\_layer](#class-collisionobject2d-property-collision-layer) is enabled, given a `layer_number` between 1 and 32.

* * *

[bool](class_bool.md#class-bool) **get\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-get-collision-mask-value)

Returns whether or not the specified layer of the [collision\_mask](#class-collisionobject2d-property-collision-mask) is enabled, given a `layer_number` between 1 and 32.

* * *

[RID](class_rid.md#class-rid) **get\_rid**() const [🔗](#class-collisionobject2d-method-get-rid)

Returns the object's [RID](class_rid.md#class-rid).

* * *

[float](class_float.md#class-float) **get\_shape\_owner\_one\_way\_collision\_margin**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-get-shape-owner-one-way-collision-margin)

Returns the `one_way_collision_margin` of the shape owner identified by given `owner_id`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_shape\_owners**() [🔗](#class-collisionobject2d-method-get-shape-owners)

Returns an [Array](class_array.md#class-array) of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.

* * *

[bool](class_bool.md#class-bool) **is\_shape\_owner\_disabled**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-is-shape-owner-disabled)

If `true`, the shape owner and its shapes are disabled.

* * *

[bool](class_bool.md#class-bool) **is\_shape\_owner\_one\_way\_collision\_enabled**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-is-shape-owner-one-way-collision-enabled)

Returns `true` if collisions for the shape owner originating from this **CollisionObject2D** will not be reported to collided with **CollisionObject2D** s.

* * *

void **remove\_shape\_owner**(owner\_id: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-method-remove-shape-owner)

Removes the given shape owner.

* * *

void **set\_collision\_layer\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-collisionobject2d-method-set-collision-layer-value)

Based on `value`, enables or disables the specified layer in the [collision\_layer](#class-collisionobject2d-property-collision-layer), given a `layer_number` between 1 and 32.

* * *

void **set\_collision\_mask\_value**(layer\_number: [int](class_int.md#class-int), value: [bool](class_bool.md#class-bool)) [🔗](#class-collisionobject2d-method-set-collision-mask-value)

Based on `value`, enables or disables the specified layer in the [collision\_mask](#class-collisionobject2d-property-collision-mask), given a `layer_number` between 1 and 32.

* * *

[int](class_int.md#class-int) **shape\_find\_owner**(shape\_index: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-find-owner)

Returns the `owner_id` of the given shape.

* * *

void **shape\_owner\_add\_shape**(owner\_id: [int](class_int.md#class-int), shape: [Shape2D](class_shape2d.md#class-shape2d)) [🔗](#class-collisionobject2d-method-shape-owner-add-shape)

Adds a [Shape2D](class_shape2d.md#class-shape2d) to the shape owner.

* * *

void **shape\_owner\_clear\_shapes**(owner\_id: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-method-shape-owner-clear-shapes)

Removes all shapes from the shape owner.

* * *

[Object](class_object.md#class-object) **shape\_owner\_get\_owner**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-owner-get-owner)

Returns the parent object of the given shape owner.

* * *

[Shape2D](class_shape2d.md#class-shape2d) **shape\_owner\_get\_shape**(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-owner-get-shape)

Returns the [Shape2D](class_shape2d.md#class-shape2d) with the given ID from the given shape owner.

* * *

[int](class_int.md#class-int) **shape\_owner\_get\_shape\_count**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-owner-get-shape-count)

Returns the number of shapes the given shape owner contains.

* * *

[int](class_int.md#class-int) **shape\_owner\_get\_shape\_index**(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-owner-get-shape-index)

Returns the child index of the [Shape2D](class_shape2d.md#class-shape2d) with the given ID from the given shape owner.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **shape\_owner\_get\_transform**(owner\_id: [int](class_int.md#class-int)) const [🔗](#class-collisionobject2d-method-shape-owner-get-transform)

Returns the shape owner's [Transform2D](class_transform2d.md#class-transform2d).

* * *

void **shape\_owner\_remove\_shape**(owner\_id: [int](class_int.md#class-int), shape\_id: [int](class_int.md#class-int)) [🔗](#class-collisionobject2d-method-shape-owner-remove-shape)

Removes a shape from the given shape owner.

* * *

void **shape\_owner\_set\_disabled**(owner\_id: [int](class_int.md#class-int), disabled: [bool](class_bool.md#class-bool)) [🔗](#class-collisionobject2d-method-shape-owner-set-disabled)

If `true`, disables the given shape owner.

* * *

void **shape\_owner\_set\_one\_way\_collision**(owner\_id: [int](class_int.md#class-int), enable: [bool](class_bool.md#class-bool)) [🔗](#class-collisionobject2d-method-shape-owner-set-one-way-collision)

If `enable` is `true`, collisions for the shape owner originating from this **CollisionObject2D** will not be reported to collided with **CollisionObject2D** s.

* * *

void **shape\_owner\_set\_one\_way\_collision\_margin**(owner\_id: [int](class_int.md#class-int), margin: [float](class_float.md#class-float)) [🔗](#class-collisionobject2d-method-shape-owner-set-one-way-collision-margin)

Sets the `one_way_collision_margin` of the shape owner identified by given `owner_id` to `margin` pixels.

* * *

void **shape\_owner\_set\_transform**(owner\_id: [int](class_int.md#class-int), transform: [Transform2D](class_transform2d.md#class-transform2d)) [🔗](#class-collisionobject2d-method-shape-owner-set-transform)

Sets the [Transform2D](class_transform2d.md#class-transform2d) of the given shape owner.

[Previous](class_codeedit.md "CodeEdit") [Next](class_collisionobject3d.md "CollisionObject3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_codeedit.md "CodeEdit") [Next](class_collisionobject3d.md "CollisionObject3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).