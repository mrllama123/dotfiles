---
title: Node3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_node3d.html
crawled_at: "2026-08-13T10:23:54+12:00"
content_hash: f870447c6e581508036f2ac0cae282eaa96cf7ce458cd0269fe1d85c666250d6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Node3D

* * *

# Node3D

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AudioListener3D](class_audiolistener3d.md#class-audiolistener3d), [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d), [BoneAttachment3D](class_boneattachment3d.md#class-boneattachment3d), [Camera3D](class_camera3d.md#class-camera3d), [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d), [CollisionPolygon3D](class_collisionpolygon3d.md#class-collisionpolygon3d), [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d), [GridMap](class_gridmap.md#class-gridmap), [ImporterMeshInstance3D](class_importermeshinstance3d.md#class-importermeshinstance3d), [Joint3D](class_joint3d.md#class-joint3d), [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe), [Marker3D](class_marker3d.md#class-marker3d), [NavigationLink3D](class_navigationlink3d.md#class-navigationlink3d), [NavigationObstacle3D](class_navigationobstacle3d.md#class-navigationobstacle3d), [NavigationRegion3D](class_navigationregion3d.md#class-navigationregion3d), [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer), [OpenXRHand](class_openxrhand.md#class-openxrhand), [OpenXRRenderModel](class_openxrrendermodel.md#class-openxrrendermodel), [OpenXRRenderModelManager](class_openxrrendermodelmanager.md#class-openxrrendermodelmanager), [Path3D](class_path3d.md#class-path3d), [PathFollow3D](class_pathfollow3d.md#class-pathfollow3d), [RayCast3D](class_raycast3d.md#class-raycast3d), [RemoteTransform3D](class_remotetransform3d.md#class-remotetransform3d), [ShapeCast3D](class_shapecast3d.md#class-shapecast3d), [Skeleton3D](class_skeleton3d.md#class-skeleton3d), [SkeletonModifier3D](class_skeletonmodifier3d.md#class-skeletonmodifier3d), [SpringArm3D](class_springarm3d.md#class-springarm3d), [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d), [VehicleWheel3D](class_vehiclewheel3d.md#class-vehiclewheel3d), [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d), [XRFaceModifier3D](class_xrfacemodifier3d.md#class-xrfacemodifier3d), [XRNode3D](class_xrnode3d.md#class-xrnode3d), [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d)

Base object in 3D space, inherited by all 3D nodes.

## Description

The **Node3D** node is the base representation of a node in 3D space. All other 3D nodes inherit from this class.

Affine operations (translation, rotation, scale) are calculated in the coordinate system relative to the parent, unless the **Node3D**'s [top\_level](#class-node3d-property-top-level) is `true`. In this coordinate system, affine operations correspond to direct affine operations on the **Node3D**'s [transform](#class-node3d-property-transform). The term _parent space_ refers to this coordinate system. The coordinate system that is attached to the **Node3D** itself is referred to as object-local coordinate system, or _local space_.

**Note:** Unless otherwise specified, all methods that need angle parameters must receive angles in _radians_. To convert degrees to radians, use [@GlobalScope.deg\_to\_rad()](class_@globalscope.md#class-globalscope-method-deg-to-rad).

**Note:** In Godot 3 and older, **Node3D** was named _Spatial_.

## Tutorials

- [Introduction to 3D](../tutorials/3d/introduction_to_3d.md)

- [All 3D Demos](https://github.com/godotengine/godot-demo-projects/tree/master/3d)


## Properties

|     |     |     |
| --- | --- | --- |
| [Basis](class_basis.md#class-basis) | [basis](#class-node3d-property-basis) |  |
| [Basis](class_basis.md#class-basis) | [global\_basis](#class-node3d-property-global-basis) |  |
| [Vector3](class_vector3.md#class-vector3) | [global\_position](#class-node3d-property-global-position) |  |
| [Vector3](class_vector3.md#class-vector3) | [global\_rotation](#class-node3d-property-global-rotation) |  |
| [Vector3](class_vector3.md#class-vector3) | [global\_rotation\_degrees](#class-node3d-property-global-rotation-degrees) |  |
| [Transform3D](class_transform3d.md#class-transform3d) | [global\_transform](#class-node3d-property-global-transform) |  |
| [Vector3](class_vector3.md#class-vector3) | [position](#class-node3d-property-position) | `Vector3(0, 0, 0)` |
| [Quaternion](class_quaternion.md#class-quaternion) | [quaternion](#class-node3d-property-quaternion) |  |
| [Vector3](class_vector3.md#class-vector3) | [rotation](#class-node3d-property-rotation) | `Vector3(0, 0, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [rotation\_degrees](#class-node3d-property-rotation-degrees) |  |
| [RotationEditMode](#enum-node3d-rotationeditmode) | [rotation\_edit\_mode](#class-node3d-property-rotation-edit-mode) | `0` |
| [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) | [rotation\_order](#class-node3d-property-rotation-order) | `2` |
| [Vector3](class_vector3.md#class-vector3) | [scale](#class-node3d-property-scale) | `Vector3(1, 1, 1)` |
| [bool](class_bool.md#class-bool) | [top\_level](#class-node3d-property-top-level) | `false` |
| [Transform3D](class_transform3d.md#class-transform3d) | [transform](#class-node3d-property-transform) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [NodePath](class_nodepath.md#class-nodepath) | [visibility\_parent](#class-node3d-property-visibility-parent) | `NodePath("")` |
| [bool](class_bool.md#class-bool) | [visible](#class-node3d-property-visible) | `true` |

## Methods

|     |     |
| --- | --- |
| void | [add\_gizmo](#class-node3d-method-add-gizmo)(gizmo: [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo)) |
| void | [clear\_gizmos](#class-node3d-method-clear-gizmos)() |
| void | [clear\_subgizmo\_selection](#class-node3d-method-clear-subgizmo-selection)() |
| void | [force\_update\_transform](#class-node3d-method-force-update-transform)() |
| [Array](class_array.md#class-array)\[ [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo)\] | [get\_gizmos](#class-node3d-method-get-gizmos)() const |
| [Transform3D](class_transform3d.md#class-transform3d) | [get\_global\_transform\_interpolated](#class-node3d-method-get-global-transform-interpolated)() |
| [Node3D](#class-node3d) | [get\_parent\_node\_3d](#class-node3d-method-get-parent-node-3d)() const |
| [World3D](class_world3d.md#class-world3d) | [get\_world\_3d](#class-node3d-method-get-world-3d)() const |
| void | [global\_rotate](#class-node3d-method-global-rotate)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) |
| void | [global\_scale](#class-node3d-method-global-scale)(scale: [Vector3](class_vector3.md#class-vector3)) |
| void | [global\_translate](#class-node3d-method-global-translate)(offset: [Vector3](class_vector3.md#class-vector3)) |
| void | [hide](#class-node3d-method-hide)() |
| [bool](class_bool.md#class-bool) | [is\_local\_transform\_notification\_enabled](#class-node3d-method-is-local-transform-notification-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_scale\_disabled](#class-node3d-method-is-scale-disabled)() const |
| [bool](class_bool.md#class-bool) | [is\_transform\_notification\_enabled](#class-node3d-method-is-transform-notification-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_visible\_in\_tree](#class-node3d-method-is-visible-in-tree)() const |
| void | [look\_at](#class-node3d-method-look-at)(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) |
| void | [look\_at\_from\_position](#class-node3d-method-look-at-from-position)(position: [Vector3](class_vector3.md#class-vector3), target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) |
| void | [orthonormalize](#class-node3d-method-orthonormalize)() |
| void | [rotate](#class-node3d-method-rotate)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) |
| void | [rotate\_object\_local](#class-node3d-method-rotate-object-local)(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) |
| void | [rotate\_x](#class-node3d-method-rotate-x)(angle: [float](class_float.md#class-float)) |
| void | [rotate\_y](#class-node3d-method-rotate-y)(angle: [float](class_float.md#class-float)) |
| void | [rotate\_z](#class-node3d-method-rotate-z)(angle: [float](class_float.md#class-float)) |
| void | [scale\_object\_local](#class-node3d-method-scale-object-local)(scale: [Vector3](class_vector3.md#class-vector3)) |
| void | [set\_disable\_scale](#class-node3d-method-set-disable-scale)(disable: [bool](class_bool.md#class-bool)) |
| void | [set\_identity](#class-node3d-method-set-identity)() |
| void | [set\_ignore\_transform\_notification](#class-node3d-method-set-ignore-transform-notification)(enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_notify\_local\_transform](#class-node3d-method-set-notify-local-transform)(enable: [bool](class_bool.md#class-bool)) |
| void | [set\_notify\_transform](#class-node3d-method-set-notify-transform)(enable: [bool](class_bool.md#class-bool)) |
| void | [set\_subgizmo\_selection](#class-node3d-method-set-subgizmo-selection)(gizmo: [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo), id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) |
| void | [show](#class-node3d-method-show)() |
| [Vector3](class_vector3.md#class-vector3) | [to\_global](#class-node3d-method-to-global)(local\_point: [Vector3](class_vector3.md#class-vector3)) const |
| [Vector3](class_vector3.md#class-vector3) | [to\_local](#class-node3d-method-to-local)(global\_point: [Vector3](class_vector3.md#class-vector3)) const |
| void | [translate](#class-node3d-method-translate)(offset: [Vector3](class_vector3.md#class-vector3)) |
| void | [translate\_object\_local](#class-node3d-method-translate-object-local)(offset: [Vector3](class_vector3.md#class-vector3)) |
| void | [update\_gizmos](#class-node3d-method-update-gizmos)() |

* * *

## Signals

**visibility\_changed**() [🔗](#class-node3d-signal-visibility-changed)

Emitted when this node's visibility changes (see [visible](#class-node3d-property-visible) and [is\_visible\_in\_tree()](#class-node3d-method-is-visible-in-tree)).

This signal is emitted _after_ the related [NOTIFICATION\_VISIBILITY\_CHANGED](#class-node3d-constant-notification-visibility-changed) notification.

* * *

## Enumerations

enum **RotationEditMode**: [🔗](#enum-node3d-rotationeditmode)

[RotationEditMode](#enum-node3d-rotationeditmode) **ROTATION\_EDIT\_MODE\_EULER** = `0`

The rotation is edited using a [Vector3](class_vector3.md#class-vector3) in [Euler angles](https://en.wikipedia.org/wiki/Euler_angles).

[RotationEditMode](#enum-node3d-rotationeditmode) **ROTATION\_EDIT\_MODE\_QUATERNION** = `1`

The rotation is edited using a [Quaternion](class_quaternion.md#class-quaternion).

[RotationEditMode](#enum-node3d-rotationeditmode) **ROTATION\_EDIT\_MODE\_BASIS** = `2`

The rotation is edited using a [Basis](class_basis.md#class-basis). In this mode, the raw [basis](#class-node3d-property-basis)'s axes can be freely modified, but the [scale](#class-node3d-property-scale) property is not available.

* * *

## Constants

**NOTIFICATION\_TRANSFORM\_CHANGED** = `2000` [🔗](#class-node3d-constant-notification-transform-changed)

Notification received when this node's [global\_transform](#class-node3d-property-global-transform) changes, if [is\_transform\_notification\_enabled()](#class-node3d-method-is-transform-notification-enabled) is `true`. See also [set\_notify\_transform()](#class-node3d-method-set-notify-transform).

**Note:** Most 3D nodes such as [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) or [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) automatically enable this to function correctly.

**Note:** In the editor, nodes will propagate this notification to their children if a gizmo is attached (see [add\_gizmo()](#class-node3d-method-add-gizmo)).

**NOTIFICATION\_ENTER\_WORLD** = `41` [🔗](#class-node3d-constant-notification-enter-world)

Notification received when this node is registered to a new [World3D](class_world3d.md#class-world3d) (see [get\_world\_3d()](#class-node3d-method-get-world-3d)).

**NOTIFICATION\_EXIT\_WORLD** = `42` [🔗](#class-node3d-constant-notification-exit-world)

Notification received when this node is unregistered from the current [World3D](class_world3d.md#class-world3d) (see [get\_world\_3d()](#class-node3d-method-get-world-3d)).

**NOTIFICATION\_VISIBILITY\_CHANGED** = `43` [🔗](#class-node3d-constant-notification-visibility-changed)

Notification received when this node's visibility changes (see [visible](#class-node3d-property-visible) and [is\_visible\_in\_tree()](#class-node3d-method-is-visible-in-tree)).

This notification is received _before_ the related [visibility\_changed](#class-node3d-signal-visibility-changed) signal.

**NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED** = `44` [🔗](#class-node3d-constant-notification-local-transform-changed)

Notification received when this node's [transform](#class-node3d-property-transform) changes, if [is\_local\_transform\_notification\_enabled()](#class-node3d-method-is-local-transform-notification-enabled) is `true`. This is not received when a parent **Node3D**'s [transform](#class-node3d-property-transform) changes. See also [set\_notify\_local\_transform()](#class-node3d-method-set-notify-local-transform).

**Note:** Some 3D nodes such as [CSGShape3D](class_csgshape3d.md#class-csgshape3d) or [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) automatically enable this to function correctly.

* * *

## Property Descriptions

[Basis](class_basis.md#class-basis) **basis** [🔗](#class-node3d-property-basis)

- void **set\_basis**(value: [Basis](class_basis.md#class-basis))

- [Basis](class_basis.md#class-basis) **get\_basis**()


Basis of the [transform](#class-node3d-property-transform) property. Represents the rotation, scale, and shear of this node in parent space (relative to the parent node).

* * *

[Basis](class_basis.md#class-basis) **global\_basis** [🔗](#class-node3d-property-global-basis)

- void **set\_global\_basis**(value: [Basis](class_basis.md#class-basis))

- [Basis](class_basis.md#class-basis) **get\_global\_basis**()


Basis of the [global\_transform](#class-node3d-property-global-transform) property. Represents the rotation, scale, and shear of this node in global space (relative to the world).

**Note:** If the node is not inside the tree, getting this property fails and returns [Basis.IDENTITY](class_basis.md#class-basis-constant-identity).

* * *

[Vector3](class_vector3.md#class-vector3) **global\_position** [🔗](#class-node3d-property-global-position)

- void **set\_global\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_global\_position**()


Global position (translation) of this node in global space (relative to the world). This is equivalent to the [global\_transform](#class-node3d-property-global-transform)'s [Transform3D.origin](class_transform3d.md#class-transform3d-property-origin).

**Note:** If the node is not inside the tree, getting this property fails and returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[Vector3](class_vector3.md#class-vector3) **global\_rotation** [🔗](#class-node3d-property-global-rotation)

- void **set\_global\_rotation**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_global\_rotation**()


Global rotation of this node as [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians and in global space (relative to the world). This value is obtained from [global\_basis](#class-node3d-property-global-basis)'s rotation.

- The [Vector3.x](class_vector3.md#class-vector3-property-x) is the angle around the global X axis (pitch);

- The [Vector3.y](class_vector3.md#class-vector3-property-y) is the angle around the global Y axis (yaw);

- The [Vector3.z](class_vector3.md#class-vector3-property-z) is the angle around the global Z axis (roll).


**Note:** Unlike [rotation](#class-node3d-property-rotation), this property always follows the YXZ convention ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)).

**Note:** If the node is not inside the tree, getting this property fails and returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[Vector3](class_vector3.md#class-vector3) **global\_rotation\_degrees** [🔗](#class-node3d-property-global-rotation-degrees)

- void **set\_global\_rotation\_degrees**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_global\_rotation\_degrees**()


The [global\_rotation](#class-node3d-property-global-rotation) of this node, in degrees instead of radians.

**Note:** If the node is not inside the tree, getting this property fails and returns [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero).

* * *

[Transform3D](class_transform3d.md#class-transform3d) **global\_transform** [🔗](#class-node3d-property-global-transform)

- void **set\_global\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_global\_transform**()


The transformation of this node, in global space (relative to the world). Contains and represents this node's [global\_position](#class-node3d-property-global-position), [global\_rotation](#class-node3d-property-global-rotation), and global scale.

**Note:** If the node is not inside the tree, getting this property fails and returns [Transform3D.IDENTITY](class_transform3d.md#class-transform3d-constant-identity).

* * *

[Vector3](class_vector3.md#class-vector3) **position** = `Vector3(0, 0, 0)` [🔗](#class-node3d-property-position)

- void **set\_position**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_position**()


Position (translation) of this node in parent space (relative to the parent node). This is equivalent to the [transform](#class-node3d-property-transform)'s [Transform3D.origin](class_transform3d.md#class-transform3d-property-origin).

* * *

[Quaternion](class_quaternion.md#class-quaternion) **quaternion** [🔗](#class-node3d-property-quaternion)

- void **set\_quaternion**(value: [Quaternion](class_quaternion.md#class-quaternion))

- [Quaternion](class_quaternion.md#class-quaternion) **get\_quaternion**()


Rotation of this node represented as a [Quaternion](class_quaternion.md#class-quaternion) in parent space (relative to the parent node). This value is obtained from [basis](#class-node3d-property-basis)'s rotation.

**Note:** Quaternions are much more suitable for 3D math but are less intuitive. Setting this property can be useful for interpolation (see [Quaternion.slerp()](class_quaternion.md#class-quaternion-method-slerp)).

* * *

[Vector3](class_vector3.md#class-vector3) **rotation** = `Vector3(0, 0, 0)` [🔗](#class-node3d-property-rotation)

- void **set\_rotation**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_rotation**()


Rotation of this node as [Euler angles](https://en.wikipedia.org/wiki/Euler_angles), in radians and in parent space (relative to the parent node). This value is obtained from [basis](#class-node3d-property-basis)'s rotation.

- The [Vector3.x](class_vector3.md#class-vector3-property-x) is the angle around the local X axis (pitch);

- The [Vector3.y](class_vector3.md#class-vector3-property-y) is the angle around the local Y axis (yaw);

- The [Vector3.z](class_vector3.md#class-vector3-property-z) is the angle around the local Z axis (roll).


The order of each consecutive rotation can be changed with [rotation\_order](#class-node3d-property-rotation-order) (see [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) constants). By default, the YXZ convention is used ( [@GlobalScope.EULER\_ORDER\_YXZ](class_@globalscope.md#class-globalscope-constant-euler-order-yxz)).

**Note:** This property is edited in degrees in the inspector. If you want to use degrees in a script, use [rotation\_degrees](#class-node3d-property-rotation-degrees).

* * *

[Vector3](class_vector3.md#class-vector3) **rotation\_degrees** [🔗](#class-node3d-property-rotation-degrees)

- void **set\_rotation\_degrees**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_rotation\_degrees**()


The [rotation](#class-node3d-property-rotation) of this node, in degrees instead of radians.

**Note:** This is **not** the property available in the Inspector dock.

* * *

[RotationEditMode](#enum-node3d-rotationeditmode) **rotation\_edit\_mode** = `0` [🔗](#class-node3d-property-rotation-edit-mode)

- void **set\_rotation\_edit\_mode**(value: [RotationEditMode](#enum-node3d-rotationeditmode))

- [RotationEditMode](#enum-node3d-rotationeditmode) **get\_rotation\_edit\_mode**()


How this node's rotation and scale are displayed in the Inspector dock.

* * *

[EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) **rotation\_order** = `2` [🔗](#class-node3d-property-rotation-order)

- void **set\_rotation\_order**(value: [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder))

- [EulerOrder](class_@globalscope.md#enum-globalscope-eulerorder) **get\_rotation\_order**()


The axis rotation order of the [rotation](#class-node3d-property-rotation) property. The final orientation is calculated by rotating around the local X, Y, and Z axis in this order.

* * *

[Vector3](class_vector3.md#class-vector3) **scale** = `Vector3(1, 1, 1)` [🔗](#class-node3d-property-scale)

- void **set\_scale**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_scale**()


Scale of this node in local space (relative to this node). This value is obtained from [basis](#class-node3d-property-basis)'s scale.

**Note:** The behavior of some 3D node types is not affected by this property. These include [Light3D](class_light3d.md#class-light3d), [Camera3D](class_camera3d.md#class-camera3d), [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d), and more.

**Warning:** The scale's components must either be all positive or all negative, and **not** exactly `0.0`. Otherwise, it won't be possible to obtain the scale from the [basis](#class-node3d-property-basis). This may cause the intended scale to be lost when reloaded from disk, and potentially other unstable behavior.

* * *

[bool](class_bool.md#class-bool) **top\_level** = `false` [🔗](#class-node3d-property-top-level)

- void **set\_as\_top\_level**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_set\_as\_top\_level**()


If `true`, the node does not inherit its transformations from its parent. As such, node transformations will only be in global space, which also means that [global\_transform](#class-node3d-property-global-transform) and [transform](#class-node3d-property-transform) will be identical.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **transform** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-node3d-property-transform)

- void **set\_transform**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_transform**()


The local transformation of this node, in parent space (relative to the parent node). Contains and represents this node's [position](#class-node3d-property-position), [rotation](#class-node3d-property-rotation), and [scale](#class-node3d-property-scale).

* * *

[NodePath](class_nodepath.md#class-nodepath) **visibility\_parent** = `NodePath("")` [🔗](#class-node3d-property-visibility-parent)

- void **set\_visibility\_parent**(value: [NodePath](class_nodepath.md#class-nodepath))

- [NodePath](class_nodepath.md#class-nodepath) **get\_visibility\_parent**()


Path to the visibility range parent for this node and its descendants. The visibility parent must be a [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d).

Any visual instance will only be visible if the visibility parent (and all of its visibility ancestors) is hidden by being closer to the camera than its own [GeometryInstance3D.visibility\_range\_begin](class_geometryinstance3d.md#class-geometryinstance3d-property-visibility-range-begin). Nodes hidden via the [visible](#class-node3d-property-visible) property are essentially removed from the visibility dependency tree, so dependent instances will not take the hidden node or its descendants into account.

* * *

[bool](class_bool.md#class-bool) **visible** = `true` [🔗](#class-node3d-property-visible)

- void **set\_visible**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_visible**()


If `true`, this node can be visible. The node is only rendered when all of its ancestors are visible, as well. That means [is\_visible\_in\_tree()](#class-node3d-method-is-visible-in-tree) must return `true`.

* * *

## Method Descriptions

void **add\_gizmo**(gizmo: [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo)) [🔗](#class-node3d-method-add-gizmo)

Attaches the given `gizmo` to this node. Only works in the editor.

**Note:** `gizmo` should be an [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo). The argument type is [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo) to avoid depending on editor classes in **Node3D**.

* * *

void **clear\_gizmos**() [🔗](#class-node3d-method-clear-gizmos)

Clears all [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) objects attached to this node. Only works in the editor.

* * *

void **clear\_subgizmo\_selection**() [🔗](#class-node3d-method-clear-subgizmo-selection)

Deselects all subgizmos for this node. Useful to call when the selected subgizmo may no longer exist after a property change. Only works in the editor.

* * *

void **force\_update\_transform**() [🔗](#class-node3d-method-force-update-transform)

Forces the node's [global\_transform](#class-node3d-property-global-transform) to update, by sending [NOTIFICATION\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-transform-changed). Fails if the node is not inside the tree.

**Note:** For performance reasons, transform changes are usually accumulated and applied _once_ at the end of the frame. The update propagates through **Node3D** children, as well. Therefore, use this method only when you need an up-to-date transform (such as during physics operations).

* * *

[Array](class_array.md#class-array)\[ [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo)\] **get\_gizmos**() const [🔗](#class-node3d-method-get-gizmos)

Returns all the [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) objects attached to this node. Only works in the editor.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **get\_global\_transform\_interpolated**() [🔗](#class-node3d-method-get-global-transform-interpolated)

When using physics interpolation, there will be circumstances in which you want to know the interpolated (displayed) transform of a node rather than the standard transform (which may only be accurate to the most recent physics tick).

This is particularly important for frame-based operations that take place in [Node.\_process()](class_node.md#class-node-private-method-process), rather than [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process). Examples include [Camera3D](class_camera3d.md#class-camera3d) s focusing on a node, or finding where to fire lasers from on a frame rather than physics tick.

**Note:** This function creates an interpolation pump on the **Node3D** the first time it is called, which can respond to physics interpolation resets. If you get problems with "streaking" when initially following a **Node3D**, be sure to call [get\_global\_transform\_interpolated()](#class-node3d-method-get-global-transform-interpolated) at least once _before_ resetting the **Node3D** physics interpolation.

* * *

[Node3D](#class-node3d) **get\_parent\_node\_3d**() const [🔗](#class-node3d-method-get-parent-node-3d)

Returns the parent **Node3D** that directly affects this node's [global\_transform](#class-node3d-property-global-transform). Returns `null` if no parent exists, the parent is not a **Node3D**, or [top\_level](#class-node3d-property-top-level) is `true`.

**Note:** This method is not always equivalent to [Node.get\_parent()](class_node.md#class-node-method-get-parent), which does not take [top\_level](#class-node3d-property-top-level) into account.

* * *

[World3D](class_world3d.md#class-world3d) **get\_world\_3d**() const [🔗](#class-node3d-method-get-world-3d)

Returns the [World3D](class_world3d.md#class-world3d) this node is registered to.

Usually, this is the same as the world used by this node's viewport (see [Node.get\_viewport()](class_node.md#class-node-method-get-viewport) and [Viewport.find\_world\_3d()](class_viewport.md#class-viewport-method-find-world-3d)).

* * *

void **global\_rotate**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-global-rotate)

Rotates this node's [global\_basis](#class-node3d-property-global-basis) around the global `axis` by the given `angle`, in radians. This operation is calculated in global space (relative to the world) and preserves the [global\_position](#class-node3d-property-global-position).

* * *

void **global\_scale**(scale: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-node3d-method-global-scale)

Scales this node's [global\_basis](#class-node3d-property-global-basis) by the given `scale` factor. This operation is calculated in global space (relative to the world) and preserves the [global\_position](#class-node3d-property-global-position).

**Note:** This method is not to be confused with the [scale](#class-node3d-property-scale) property.

* * *

void **global\_translate**(offset: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-node3d-method-global-translate)

Adds the given translation `offset` to the node's [global\_position](#class-node3d-property-global-position) in global space (relative to the world).

* * *

void **hide**() [🔗](#class-node3d-method-hide)

Prevents this node from being rendered. Equivalent to setting [visible](#class-node3d-property-visible) to `false`. This is the opposite of [show()](#class-node3d-method-show).

* * *

[bool](class_bool.md#class-bool) **is\_local\_transform\_notification\_enabled**() const [🔗](#class-node3d-method-is-local-transform-notification-enabled)

Returns `true` if the node receives [NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-local-transform-changed) whenever [transform](#class-node3d-property-transform) changes. This is enabled with [set\_notify\_local\_transform()](#class-node3d-method-set-notify-local-transform).

* * *

[bool](class_bool.md#class-bool) **is\_scale\_disabled**() const [🔗](#class-node3d-method-is-scale-disabled)

Returns `true` if this node's [global\_transform](#class-node3d-property-global-transform) is automatically orthonormalized. This results in this node not appearing distorted, as if its global scale were set to [Vector3.ONE](class_vector3.md#class-vector3-constant-one) (or its negative counterpart). See also [set\_disable\_scale()](#class-node3d-method-set-disable-scale) and [orthonormalize()](#class-node3d-method-orthonormalize).

**Note:** [transform](#class-node3d-property-transform) is not affected by this setting.

* * *

[bool](class_bool.md#class-bool) **is\_transform\_notification\_enabled**() const [🔗](#class-node3d-method-is-transform-notification-enabled)

Returns `true` if the node receives [NOTIFICATION\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-transform-changed) whenever [global\_transform](#class-node3d-property-global-transform) changes. This is enabled with [set\_notify\_transform()](#class-node3d-method-set-notify-transform).

* * *

[bool](class_bool.md#class-bool) **is\_visible\_in\_tree**() const [🔗](#class-node3d-method-is-visible-in-tree)

Returns `true` if this node is inside the scene tree and the [visible](#class-node3d-property-visible) property is `true` for this node and all of its **Node3D** ancestors _in sequence_. An ancestor of any other type (such as [Node](class_node.md#class-node) or [Node2D](class_node2d.md#class-node2d)) breaks the sequence. See also [Node.get\_parent()](class_node.md#class-node-method-get-parent).

**Note:** This method cannot take [VisualInstance3D.layers](class_visualinstance3d.md#class-visualinstance3d-property-layers) into account, so even if this method returns `true`, the node may not be rendered.

* * *

void **look\_at**(target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) [🔗](#class-node3d-method-look-at)

Rotates the node so that the local forward axis (-Z, [Vector3.FORWARD](class_vector3.md#class-vector3-constant-forward)) points toward the `target` position. This operation is calculated in global space (relative to the world).

The local up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the local forward axis. The resulting transform is orthogonal, and the scale is preserved. Non-uniform scaling may not work correctly.

The `target` position cannot be the same as the node's position, the `up` vector cannot be [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero). Furthermore, the direction from the node's position to the `target` position cannot be parallel to the `up` vector, to avoid an unintended rotation around the local Z axis.

If `use_model_front` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position. By default, the -Z axis (camera forward) is treated as forward (implies +X is right).

**Note:** This method fails if the node is not in the scene tree. If necessary, use [look\_at\_from\_position()](#class-node3d-method-look-at-from-position) instead.

* * *

void **look\_at\_from\_position**(position: [Vector3](class_vector3.md#class-vector3), target: [Vector3](class_vector3.md#class-vector3), up: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0), use\_model\_front: [bool](class_bool.md#class-bool) = false) [🔗](#class-node3d-method-look-at-from-position)

Moves the node to the specified `position`, then rotates the node to point toward the `target` position, similar to [look\_at()](#class-node3d-method-look-at). This operation is calculated in global space (relative to the world).

* * *

void **orthonormalize**() [🔗](#class-node3d-method-orthonormalize)

Orthonormalizes this node's [basis](#class-node3d-property-basis). This method sets this node's [scale](#class-node3d-property-scale) to [Vector3.ONE](class_vector3.md#class-vector3-constant-one) (or its negative counterpart), but preserves the [position](#class-node3d-property-position) and [rotation](#class-node3d-property-rotation). See also [Transform3D.orthonormalized()](class_transform3d.md#class-transform3d-method-orthonormalized).

* * *

void **rotate**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-rotate)

Rotates this node's [basis](#class-node3d-property-basis) around the `axis` by the given `angle`, in radians. This operation is calculated in parent space (relative to the parent) and preserves the [position](#class-node3d-property-position).

* * *

void **rotate\_object\_local**(axis: [Vector3](class_vector3.md#class-vector3), angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-rotate-object-local)

Rotates this node's [basis](#class-node3d-property-basis) around the `axis` by the given `angle`, in radians. This operation is calculated in local space (relative to this node) and preserves the [position](#class-node3d-property-position).

* * *

void **rotate\_x**(angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-rotate-x)

Rotates this node's [basis](#class-node3d-property-basis) around the X axis by the given `angle`, in radians. This operation is calculated in parent space (relative to the parent) and preserves the [position](#class-node3d-property-position).

* * *

void **rotate\_y**(angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-rotate-y)

Rotates this node's [basis](#class-node3d-property-basis) around the Y axis by the given `angle`, in radians. This operation is calculated in parent space (relative to the parent) and preserves the [position](#class-node3d-property-position).

* * *

void **rotate\_z**(angle: [float](class_float.md#class-float)) [🔗](#class-node3d-method-rotate-z)

Rotates this node's [basis](#class-node3d-property-basis) around the Z axis by the given `angle`, in radians. This operation is calculated in parent space (relative to the parent) and preserves the [position](#class-node3d-property-position).

* * *

void **scale\_object\_local**(scale: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-node3d-method-scale-object-local)

Scales this node's [basis](#class-node3d-property-basis) by the given `scale` factor. This operation is calculated in local space (relative to this node) and preserves the [position](#class-node3d-property-position).

* * *

void **set\_disable\_scale**(disable: [bool](class_bool.md#class-bool)) [🔗](#class-node3d-method-set-disable-scale)

If `true`, this node's [global\_transform](#class-node3d-property-global-transform) is automatically orthonormalized. This results in this node not appearing distorted, as if its global scale were set to [Vector3.ONE](class_vector3.md#class-vector3-constant-one) (or its negative counterpart). See also [is\_scale\_disabled()](#class-node3d-method-is-scale-disabled) and [orthonormalize()](#class-node3d-method-orthonormalize).

**Note:** [transform](#class-node3d-property-transform) is not affected by this setting.

* * *

void **set\_identity**() [🔗](#class-node3d-method-set-identity)

Sets this node's [transform](#class-node3d-property-transform) to [Transform3D.IDENTITY](class_transform3d.md#class-transform3d-constant-identity), which resets all transformations in parent space ( [position](#class-node3d-property-position), [rotation](#class-node3d-property-rotation), and [scale](#class-node3d-property-scale)).

* * *

void **set\_ignore\_transform\_notification**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-node3d-method-set-ignore-transform-notification)

If `true`, the node will not receive [NOTIFICATION\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-transform-changed) or [NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-local-transform-changed).

It may useful to call this method when handling these notifications to prevent infinite recursion.

* * *

void **set\_notify\_local\_transform**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-node3d-method-set-notify-local-transform)

If `true`, the node will receive [NOTIFICATION\_LOCAL\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-local-transform-changed) whenever [transform](#class-node3d-property-transform) changes.

**Note:** Some 3D nodes such as [CSGShape3D](class_csgshape3d.md#class-csgshape3d) or [CollisionShape3D](class_collisionshape3d.md#class-collisionshape3d) automatically enable this to function correctly.

* * *

void **set\_notify\_transform**(enable: [bool](class_bool.md#class-bool)) [🔗](#class-node3d-method-set-notify-transform)

If `true`, the node will receive [NOTIFICATION\_TRANSFORM\_CHANGED](#class-node3d-constant-notification-transform-changed) whenever [global\_transform](#class-node3d-property-global-transform) changes.

**Note:** Most 3D nodes such as [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) or [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) automatically enable this to function correctly.

**Note:** In the editor, nodes will propagate this notification to their children if a gizmo is attached (see [add\_gizmo()](#class-node3d-method-add-gizmo)).

* * *

void **set\_subgizmo\_selection**(gizmo: [Node3DGizmo](class_node3dgizmo.md#class-node3dgizmo), id: [int](class_int.md#class-int), transform: [Transform3D](class_transform3d.md#class-transform3d)) [🔗](#class-node3d-method-set-subgizmo-selection)

Selects the `gizmo`'s subgizmo with the given `id` and sets its transform. Only works in the editor.

**Note:** The gizmo object would typically be an instance of [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo), but the argument type is kept generic to avoid creating a dependency on editor classes in **Node3D**.

* * *

void **show**() [🔗](#class-node3d-method-show)

Allows this node to be rendered. Equivalent to setting [visible](#class-node3d-property-visible) to `true`. This is the opposite of [hide()](#class-node3d-method-hide).

* * *

[Vector3](class_vector3.md#class-vector3) **to\_global**(local\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-node3d-method-to-global)

Returns the `local_point` converted from this node's local space to global space. This is the opposite of [to\_local()](#class-node3d-method-to-local).

* * *

[Vector3](class_vector3.md#class-vector3) **to\_local**(global\_point: [Vector3](class_vector3.md#class-vector3)) const [🔗](#class-node3d-method-to-local)

Returns the `global_point` converted from global space to this node's local space. This is the opposite of [to\_global()](#class-node3d-method-to-global).

* * *

void **translate**(offset: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-node3d-method-translate)

Adds the given translation `offset` to the node's position, in local space (relative to this node).

**Note:** Prefer using [translate\_object\_local()](#class-node3d-method-translate-object-local), instead, as this method may be changed in a future release.

**Note:** Despite the naming convention, this operation is **not** calculated in parent space for compatibility reasons. To translate in parent space, add `offset` to the [position](#class-node3d-property-position) ( `node_3d.position += offset`).

* * *

void **translate\_object\_local**(offset: [Vector3](class_vector3.md#class-vector3)) [🔗](#class-node3d-method-translate-object-local)

Adds the given translation `offset` to the node's position, in local space (relative to this node).

* * *

void **update\_gizmos**() [🔗](#class-node3d-method-update-gizmos)

Updates all the [EditorNode3DGizmo](class_editornode3dgizmo.md#class-editornode3dgizmo) objects attached to this node. Only works in the editor.

[Previous](class_node2d.md "Node2D") [Next](class_occluderinstance3d.md "OccluderInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_node2d.md "Node2D") [Next](class_occluderinstance3d.md "OccluderInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).