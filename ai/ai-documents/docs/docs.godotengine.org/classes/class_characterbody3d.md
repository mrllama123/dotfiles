---
title: CharacterBody3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_characterbody3d.html
crawled_at: "2026-08-13T10:32:22+12:00"
content_hash: c967b234075b75217a23c2559412fb6027d5728adcb4820d16d80b1c041661f0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CharacterBody3D

* * *

# CharacterBody3D

**Inherits:** [PhysicsBody3D](class_physicsbody3d.md#class-physicsbody3d) **<** [CollisionObject3D](class_collisionobject3d.md#class-collisionobject3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 3D physics body specialized for characters moved by script.

## Description

**CharacterBody3D** is a specialized class for physics bodies that are meant to be user-controlled. They are not affected by physics at all, but they affect other physics bodies in their path. They are mainly used to provide high-level API to move objects with wall and slope detection ( [move\_and\_slide()](#class-characterbody3d-method-move-and-slide) method) in addition to the general collision detection provided by [PhysicsBody3D.move\_and\_collide()](class_physicsbody3d.md#class-physicsbody3d-method-move-and-collide). This makes it useful for highly configurable physics bodies that must move in specific ways and collide with the world, as is often the case with user-controlled characters.

For game objects that don't require complex movement or collision detection, such as moving platforms, [AnimatableBody3D](class_animatablebody3d.md#class-animatablebody3d) is simpler to configure.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)

- [Kinematic character (2D)](../tutorials/physics/kinematic_character_2d.md)

- [3D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2739)

- [3D Platformer Demo](https://godotengine.org/asset-library/asset/2748)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)

- [Third Person Shooter (TPS) Demo](https://godotengine.org/asset-library/asset/2710)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [floor\_block\_on\_wall](#class-characterbody3d-property-floor-block-on-wall) | `true` |
| [bool](class_bool.md#class-bool) | [floor\_constant\_speed](#class-characterbody3d-property-floor-constant-speed) | `false` |
| [float](class_float.md#class-float) | [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) | `0.7853982` |
| [float](class_float.md#class-float) | [floor\_snap\_length](#class-characterbody3d-property-floor-snap-length) | `0.1` |
| [bool](class_bool.md#class-bool) | [floor\_stop\_on\_slope](#class-characterbody3d-property-floor-stop-on-slope) | `true` |
| [int](class_int.md#class-int) | [max\_slides](#class-characterbody3d-property-max-slides) | `6` |
| [MotionMode](#enum-characterbody3d-motionmode) | [motion\_mode](#class-characterbody3d-property-motion-mode) | `0` |
| [int](class_int.md#class-int) | [platform\_floor\_layers](#class-characterbody3d-property-platform-floor-layers) | `4294967295` |
| [PlatformOnLeave](#enum-characterbody3d-platformonleave) | [platform\_on\_leave](#class-characterbody3d-property-platform-on-leave) | `0` |
| [int](class_int.md#class-int) | [platform\_wall\_layers](#class-characterbody3d-property-platform-wall-layers) | `0` |
| [float](class_float.md#class-float) | [safe\_margin](#class-characterbody3d-property-safe-margin) | `0.001` |
| [bool](class_bool.md#class-bool) | [slide\_on\_ceiling](#class-characterbody3d-property-slide-on-ceiling) | `true` |
| [Vector3](class_vector3.md#class-vector3) | [up\_direction](#class-characterbody3d-property-up-direction) | `Vector3(0, 1, 0)` |
| [Vector3](class_vector3.md#class-vector3) | [velocity](#class-characterbody3d-property-velocity) | `Vector3(0, 0, 0)` |
| [float](class_float.md#class-float) | [wall\_min\_slide\_angle](#class-characterbody3d-property-wall-min-slide-angle) | `0.2617994` |

## Methods

|     |     |
| --- | --- |
| void | [apply\_floor\_snap](#class-characterbody3d-method-apply-floor-snap)() |
| [float](class_float.md#class-float) | [get\_floor\_angle](#class-characterbody3d-method-get-floor-angle)(up\_direction: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0)) const |
| [Vector3](class_vector3.md#class-vector3) | [get\_floor\_normal](#class-characterbody3d-method-get-floor-normal)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_last\_motion](#class-characterbody3d-method-get-last-motion)() const |
| [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) | [get\_last\_slide\_collision](#class-characterbody3d-method-get-last-slide-collision)() |
| [Vector3](class_vector3.md#class-vector3) | [get\_platform\_angular\_velocity](#class-characterbody3d-method-get-platform-angular-velocity)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_platform\_velocity](#class-characterbody3d-method-get-platform-velocity)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_position\_delta](#class-characterbody3d-method-get-position-delta)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_real\_velocity](#class-characterbody3d-method-get-real-velocity)() const |
| [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) | [get\_slide\_collision](#class-characterbody3d-method-get-slide-collision)(slide\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_slide\_collision\_count](#class-characterbody3d-method-get-slide-collision-count)() const |
| [Vector3](class_vector3.md#class-vector3) | [get\_wall\_normal](#class-characterbody3d-method-get-wall-normal)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_ceiling](#class-characterbody3d-method-is-on-ceiling)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_ceiling\_only](#class-characterbody3d-method-is-on-ceiling-only)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_floor](#class-characterbody3d-method-is-on-floor)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_floor\_only](#class-characterbody3d-method-is-on-floor-only)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_wall](#class-characterbody3d-method-is-on-wall)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_wall\_only](#class-characterbody3d-method-is-on-wall-only)() const |
| [bool](class_bool.md#class-bool) | [move\_and\_slide](#class-characterbody3d-method-move-and-slide)() |

* * *

## Enumerations

enum **MotionMode**: [🔗](#enum-characterbody3d-motionmode)

[MotionMode](#enum-characterbody3d-motionmode) **MOTION\_MODE\_GROUNDED** = `0`

Apply when notions of walls, ceiling and floor are relevant. In this mode the body motion will react to slopes (acceleration/slowdown). This mode is suitable for grounded games like platformers.

[MotionMode](#enum-characterbody3d-motionmode) **MOTION\_MODE\_FLOATING** = `1`

Apply when there is no notion of floor or ceiling. All collisions will be reported as `on_wall`. In this mode, when you slide, the speed will always be constant. This mode is suitable for games without ground like space games.

* * *

enum **PlatformOnLeave**: [🔗](#enum-characterbody3d-platformonleave)

[PlatformOnLeave](#enum-characterbody3d-platformonleave) **PLATFORM\_ON\_LEAVE\_ADD\_VELOCITY** = `0`

Add the last platform velocity to the [velocity](#class-characterbody3d-property-velocity) when you leave a moving platform.

[PlatformOnLeave](#enum-characterbody3d-platformonleave) **PLATFORM\_ON\_LEAVE\_ADD\_UPWARD\_VELOCITY** = `1`

Add the last platform velocity to the [velocity](#class-characterbody3d-property-velocity) when you leave a moving platform, but any downward motion is ignored. It's useful to keep full jump height even when the platform is moving down.

[PlatformOnLeave](#enum-characterbody3d-platformonleave) **PLATFORM\_ON\_LEAVE\_DO\_NOTHING** = `2`

Do nothing when leaving a platform.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **floor\_block\_on\_wall** = `true` [🔗](#class-characterbody3d-property-floor-block-on-wall)

- void **set\_floor\_block\_on\_wall\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_block\_on\_wall\_enabled**()


If `true`, the body will be able to move on the floor only. This option avoids to be able to walk on walls, it will however allow to slide down along them.

* * *

[bool](class_bool.md#class-bool) **floor\_constant\_speed** = `false` [🔗](#class-characterbody3d-property-floor-constant-speed)

- void **set\_floor\_constant\_speed\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_constant\_speed\_enabled**()


If `false` (by default), the body will move faster on downward slopes and slower on upward slopes.

If `true`, the body will always move at the same speed on the ground no matter the slope. Note that you need to use [floor\_snap\_length](#class-characterbody3d-property-floor-snap-length) to stick along a downward slope at constant speed.

* * *

[float](class_float.md#class-float) **floor\_max\_angle** = `0.7853982` [🔗](#class-characterbody3d-property-floor-max-angle)

- void **set\_floor\_max\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_floor\_max\_angle**()


Maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall, when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). The default value equals 45 degrees.

* * *

[float](class_float.md#class-float) **floor\_snap\_length** = `0.1` [🔗](#class-characterbody3d-property-floor-snap-length)

- void **set\_floor\_snap\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_floor\_snap\_length**()


Sets a snapping distance. When set to a value different from `0.0`, the body is kept attached to slopes when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). The snapping vector is determined by the given distance along the opposite direction of the [up\_direction](#class-characterbody3d-property-up-direction).

As long as the snapping vector is in contact with the ground and the body moves against [up\_direction](#class-characterbody3d-property-up-direction), the body will remain attached to the surface. Snapping is not applied if the body moves along [up\_direction](#class-characterbody3d-property-up-direction), meaning it contains vertical rising velocity, so it will be able to detach from the ground when jumping or when the body is pushed up by something. If you want to apply a snap without taking into account the velocity, use [apply\_floor\_snap()](#class-characterbody3d-method-apply-floor-snap).

* * *

[bool](class_bool.md#class-bool) **floor\_stop\_on\_slope** = `true` [🔗](#class-characterbody3d-property-floor-stop-on-slope)

- void **set\_floor\_stop\_on\_slope\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_stop\_on\_slope\_enabled**()


If `true`, the body will not slide on slopes when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide) when the body is standing still.

If `false`, the body will slide on floor's slopes when [velocity](#class-characterbody3d-property-velocity) applies a downward force.

* * *

[int](class_int.md#class-int) **max\_slides** = `6` [🔗](#class-characterbody3d-property-max-slides)

- void **set\_max\_slides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_slides**()


Maximum number of times the body can change direction before it stops when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Must be greater than zero.

* * *

[MotionMode](#enum-characterbody3d-motionmode) **motion\_mode** = `0` [🔗](#class-characterbody3d-property-motion-mode)

- void **set\_motion\_mode**(value: [MotionMode](#enum-characterbody3d-motionmode))

- [MotionMode](#enum-characterbody3d-motionmode) **get\_motion\_mode**()


Sets the motion mode which defines the behavior of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[int](class_int.md#class-int) **platform\_floor\_layers** = `4294967295` [🔗](#class-characterbody3d-property-platform-floor-layers)

- void **set\_platform\_floor\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_platform\_floor\_layers**()


Collision layers that will be included for detecting floor bodies that will act as moving platforms to be followed by the **CharacterBody3D**. By default, all floor bodies are detected and propagate their velocity.

* * *

[PlatformOnLeave](#enum-characterbody3d-platformonleave) **platform\_on\_leave** = `0` [🔗](#class-characterbody3d-property-platform-on-leave)

- void **set\_platform\_on\_leave**(value: [PlatformOnLeave](#enum-characterbody3d-platformonleave))

- [PlatformOnLeave](#enum-characterbody3d-platformonleave) **get\_platform\_on\_leave**()


Sets the behavior to apply when you leave a moving platform. By default, to be physically accurate, when you leave the last platform velocity is applied.

* * *

[int](class_int.md#class-int) **platform\_wall\_layers** = `0` [🔗](#class-characterbody3d-property-platform-wall-layers)

- void **set\_platform\_wall\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_platform\_wall\_layers**()


Collision layers that will be included for detecting wall bodies that will act as moving platforms to be followed by the **CharacterBody3D**. By default, all wall bodies are ignored.

* * *

[float](class_float.md#class-float) **safe\_margin** = `0.001` [🔗](#class-characterbody3d-property-safe-margin)

- void **set\_safe\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_safe\_margin**()


Extra margin used for collision recovery when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

If the body is at least this close to another body, it will consider them to be colliding and will be pushed away before performing the actual motion.

A higher value means it's more flexible for detecting collision, which helps with consistently detecting walls and floors.

A lower value forces the collision algorithm to use more exact detection, so it can be used in cases that specifically require precision, e.g at very low scale to avoid visible jittering, or for stability with a stack of character bodies.

* * *

[bool](class_bool.md#class-bool) **slide\_on\_ceiling** = `true` [🔗](#class-characterbody3d-property-slide-on-ceiling)

- void **set\_slide\_on\_ceiling\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_slide\_on\_ceiling\_enabled**()


If `true`, during a jump against the ceiling, the body will slide, if `false` it will be stopped and will fall vertically.

* * *

[Vector3](class_vector3.md#class-vector3) **up\_direction** = `Vector3(0, 1, 0)` [🔗](#class-characterbody3d-property-up-direction)

- void **set\_up\_direction**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_up\_direction**()


Vector pointing upwards, used to determine what is a wall and what is a floor (or a ceiling) when calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Defaults to [Vector3.UP](class_vector3.md#class-vector3-constant-up). As the vector will be normalized it can't be equal to [Vector3.ZERO](class_vector3.md#class-vector3-constant-zero), if you want all collisions to be reported as walls, consider using [MOTION\_MODE\_FLOATING](#class-characterbody3d-constant-motion-mode-floating) as [motion\_mode](#class-characterbody3d-property-motion-mode).

* * *

[Vector3](class_vector3.md#class-vector3) **velocity** = `Vector3(0, 0, 0)` [🔗](#class-characterbody3d-property-velocity)

- void **set\_velocity**(value: [Vector3](class_vector3.md#class-vector3))

- [Vector3](class_vector3.md#class-vector3) **get\_velocity**()


Current velocity vector (typically meters per second), used and modified during calls to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

This property should not be set to a value multiplied by `delta`, because this happens internally in [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, the simulation will run at an incorrect speed.

* * *

[float](class_float.md#class-float) **wall\_min\_slide\_angle** = `0.2617994` [🔗](#class-characterbody3d-property-wall-min-slide-angle)

- void **set\_wall\_min\_slide\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wall\_min\_slide\_angle**()


Minimum angle (in radians) where the body is allowed to slide when it encounters a wall. The default value equals 15 degrees. When [motion\_mode](#class-characterbody3d-property-motion-mode) is [MOTION\_MODE\_GROUNDED](#class-characterbody3d-constant-motion-mode-grounded), it only affects movement if [floor\_block\_on\_wall](#class-characterbody3d-property-floor-block-on-wall) is `true`.

* * *

## Method Descriptions

void **apply\_floor\_snap**() [🔗](#class-characterbody3d-method-apply-floor-snap)

Allows to manually apply a snap to the floor regardless of the body's velocity. This function does nothing when [is\_on\_floor()](#class-characterbody3d-method-is-on-floor) returns `true`.

* * *

[float](class_float.md#class-float) **get\_floor\_angle**(up\_direction: [Vector3](class_vector3.md#class-vector3) = Vector3(0, 1, 0)) const [🔗](#class-characterbody3d-method-get-floor-angle)

Returns the floor's collision angle at the last collision point according to `up_direction`, which is [Vector3.UP](class_vector3.md#class-vector3-constant-up) by default. This value is always positive and only valid after calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide) and when [is\_on\_floor()](#class-characterbody3d-method-is-on-floor) returns `true`.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_floor\_normal**() const [🔗](#class-characterbody3d-method-get-floor-normal)

Returns the collision normal of the floor at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide) and when [is\_on\_floor()](#class-characterbody3d-method-is-on-floor) returns `true`.

**Warning:** The collision normal is not always the same as the surface normal.

* * *

[Vector3](class_vector3.md#class-vector3) **get\_last\_motion**() const [🔗](#class-characterbody3d-method-get-last-motion)

Returns the last motion applied to the **CharacterBody3D** during the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). The movement can be split into multiple motions when sliding occurs, and this method return the last one, which is useful to retrieve the current direction of the movement.

* * *

[KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) **get\_last\_slide\_collision**() [🔗](#class-characterbody3d-method-get-last-slide-collision)

Returns a [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d), which contains information about the latest collision that occurred during the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_platform\_angular\_velocity**() const [🔗](#class-characterbody3d-method-get-platform-angular-velocity)

Returns the angular velocity of the platform at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_platform\_velocity**() const [🔗](#class-characterbody3d-method-get-platform-velocity)

Returns the linear velocity of the platform at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_position\_delta**() const [🔗](#class-characterbody3d-method-get-position-delta)

Returns the travel (position delta) that occurred during the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_real\_velocity**() const [🔗](#class-characterbody3d-method-get-real-velocity)

Returns the current real velocity since the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). For example, when you climb a slope, you will move diagonally even though the velocity is horizontal. This method returns the diagonal movement, as opposed to [velocity](#class-characterbody3d-property-velocity) which returns the requested velocity.

* * *

[KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d) **get\_slide\_collision**(slide\_idx: [int](class_int.md#class-int)) [🔗](#class-characterbody3d-method-get-slide-collision)

Returns a [KinematicCollision3D](class_kinematiccollision3d.md#class-kinematiccollision3d), which contains information about a collision that occurred during the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Since the body can collide several times in a single call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide), you must specify the index of the collision in the range 0 to ( [get\_slide\_collision\_count()](#class-characterbody3d-method-get-slide-collision-count) \- 1).

* * *

[int](class_int.md#class-int) **get\_slide\_collision\_count**() const [🔗](#class-characterbody3d-method-get-slide-collision-count)

Returns the number of times the body collided and changed direction during the last call to [move\_and\_slide()](#class-characterbody3d-method-move-and-slide).

* * *

[Vector3](class_vector3.md#class-vector3) **get\_wall\_normal**() const [🔗](#class-characterbody3d-method-get-wall-normal)

Returns the collision normal of the wall at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody3d-method-move-and-slide) and when [is\_on\_wall()](#class-characterbody3d-method-is-on-wall) returns `true`.

**Warning:** The collision normal is not always the same as the surface normal.

* * *

[bool](class_bool.md#class-bool) **is\_on\_ceiling**() const [🔗](#class-characterbody3d-method-is-on-ceiling)

Returns `true` if the body collided with the ceiling on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "ceiling" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_ceiling\_only**() const [🔗](#class-characterbody3d-method-is-on-ceiling-only)

Returns `true` if the body collided only with the ceiling on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "ceiling" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_floor**() const [🔗](#class-characterbody3d-method-is-on-floor)

Returns `true` if the body collided with the floor on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "floor" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_floor\_only**() const [🔗](#class-characterbody3d-method-is-on-floor-only)

Returns `true` if the body collided only with the floor on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "floor" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_wall**() const [🔗](#class-characterbody3d-method-is-on-wall)

Returns `true` if the body collided with a wall on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "wall" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_wall\_only**() const [🔗](#class-characterbody3d-method-is-on-wall-only)

Returns `true` if the body collided only with a wall on the last call of [move\_and\_slide()](#class-characterbody3d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody3d-property-up-direction) and [floor\_max\_angle](#class-characterbody3d-property-floor-max-angle) are used to determine whether a surface is "wall" or not.

* * *

[bool](class_bool.md#class-bool) **move\_and\_slide**() [🔗](#class-characterbody3d-method-move-and-slide)

Moves the body based on [velocity](#class-characterbody3d-property-velocity). If the body collides with another, it will slide along the other body rather than stop immediately. If the other body is a **CharacterBody3D** or [RigidBody3D](class_rigidbody3d.md#class-rigidbody3d), it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.

This method should be used in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) (or in a method called by [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.

Modifies [velocity](#class-characterbody3d-property-velocity) if a slide collision occurred. To get the latest collision call [get\_last\_slide\_collision()](#class-characterbody3d-method-get-last-slide-collision), for more detailed information about collisions that occurred, use [get\_slide\_collision()](#class-characterbody3d-method-get-slide-collision).

When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.

Returns `true` if the body collided, otherwise, returns `false`.

[Previous](class_characterbody2d.md "CharacterBody2D") [Next](class_checkbox.md "CheckBox")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_characterbody2d.md "CharacterBody2D") [Next](class_checkbox.md "CheckBox")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).