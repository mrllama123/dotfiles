---
title: CharacterBody2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_characterbody2d.html
crawled_at: "2026-08-13T10:22:51+12:00"
content_hash: 71f9d2f1231df5526941b12a63c4e1b70441d939c190846c6253ed232e82890d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CharacterBody2D

* * *

# CharacterBody2D

**Inherits:** [PhysicsBody2D](class_physicsbody2d.md#class-physicsbody2d) **<** [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d) **<** [Node2D](class_node2d.md#class-node2d) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A 2D physics body specialized for characters moved by script.

## Description

**CharacterBody2D** is a specialized class for physics bodies that are meant to be user-controlled. They are not affected by physics at all, but they affect other physics bodies in their path. They are mainly used to provide high-level API to move objects with wall and slope detection ( [move\_and\_slide()](#class-characterbody2d-method-move-and-slide) method) in addition to the general collision detection provided by [PhysicsBody2D.move\_and\_collide()](class_physicsbody2d.md#class-physicsbody2d-method-move-and-collide). This makes it useful for highly configurable physics bodies that must move in specific ways and collide with the world, as is often the case with user-controlled characters.

For game objects that don't require complex movement or collision detection, such as moving platforms, [AnimatableBody2D](class_animatablebody2d.md#class-animatablebody2d) is simpler to configure.

## Tutorials

- [Physics introduction](../tutorials/physics/physics_introduction.md)

- [Troubleshooting physics issues](../tutorials/physics/troubleshooting_physics_issues.md)

- [Kinematic character (2D)](../tutorials/physics/kinematic_character_2d.md)

- [Using CharacterBody2D](../tutorials/physics/using_character_body_2d.md)

- [2D Kinematic Character Demo](https://godotengine.org/asset-library/asset/2719)

- [2D Platformer Demo](https://godotengine.org/asset-library/asset/2727)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [floor\_block\_on\_wall](#class-characterbody2d-property-floor-block-on-wall) | `true` |
| [bool](class_bool.md#class-bool) | [floor\_constant\_speed](#class-characterbody2d-property-floor-constant-speed) | `false` |
| [float](class_float.md#class-float) | [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) | `0.7853982` |
| [float](class_float.md#class-float) | [floor\_snap\_length](#class-characterbody2d-property-floor-snap-length) | `1.0` |
| [bool](class_bool.md#class-bool) | [floor\_stop\_on\_slope](#class-characterbody2d-property-floor-stop-on-slope) | `true` |
| [int](class_int.md#class-int) | [max\_slides](#class-characterbody2d-property-max-slides) | `4` |
| [MotionMode](#enum-characterbody2d-motionmode) | [motion\_mode](#class-characterbody2d-property-motion-mode) | `0` |
| [int](class_int.md#class-int) | [platform\_floor\_layers](#class-characterbody2d-property-platform-floor-layers) | `4294967295` |
| [PlatformOnLeave](#enum-characterbody2d-platformonleave) | [platform\_on\_leave](#class-characterbody2d-property-platform-on-leave) | `0` |
| [int](class_int.md#class-int) | [platform\_wall\_layers](#class-characterbody2d-property-platform-wall-layers) | `0` |
| [float](class_float.md#class-float) | [safe\_margin](#class-characterbody2d-property-safe-margin) | `0.08` |
| [bool](class_bool.md#class-bool) | [slide\_on\_ceiling](#class-characterbody2d-property-slide-on-ceiling) | `true` |
| [Vector2](class_vector2.md#class-vector2) | [up\_direction](#class-characterbody2d-property-up-direction) | `Vector2(0, -1)` |
| [Vector2](class_vector2.md#class-vector2) | [velocity](#class-characterbody2d-property-velocity) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [wall\_min\_slide\_angle](#class-characterbody2d-property-wall-min-slide-angle) | `0.2617994` |

## Methods

|     |     |
| --- | --- |
| void | [apply\_floor\_snap](#class-characterbody2d-method-apply-floor-snap)() |
| [float](class_float.md#class-float) | [get\_floor\_angle](#class-characterbody2d-method-get-floor-angle)(up\_direction: [Vector2](class_vector2.md#class-vector2) = Vector2(0, -1)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_floor\_normal](#class-characterbody2d-method-get-floor-normal)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_last\_motion](#class-characterbody2d-method-get-last-motion)() const |
| [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) | [get\_last\_slide\_collision](#class-characterbody2d-method-get-last-slide-collision)() |
| [Vector2](class_vector2.md#class-vector2) | [get\_platform\_velocity](#class-characterbody2d-method-get-platform-velocity)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_position\_delta](#class-characterbody2d-method-get-position-delta)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_real\_velocity](#class-characterbody2d-method-get-real-velocity)() const |
| [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) | [get\_slide\_collision](#class-characterbody2d-method-get-slide-collision)(slide\_idx: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_slide\_collision\_count](#class-characterbody2d-method-get-slide-collision-count)() const |
| [Vector2](class_vector2.md#class-vector2) | [get\_wall\_normal](#class-characterbody2d-method-get-wall-normal)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_ceiling](#class-characterbody2d-method-is-on-ceiling)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_ceiling\_only](#class-characterbody2d-method-is-on-ceiling-only)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_floor](#class-characterbody2d-method-is-on-floor)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_floor\_only](#class-characterbody2d-method-is-on-floor-only)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_wall](#class-characterbody2d-method-is-on-wall)() const |
| [bool](class_bool.md#class-bool) | [is\_on\_wall\_only](#class-characterbody2d-method-is-on-wall-only)() const |
| [bool](class_bool.md#class-bool) | [move\_and\_slide](#class-characterbody2d-method-move-and-slide)() |

* * *

## Enumerations

enum **MotionMode**: [🔗](#enum-characterbody2d-motionmode)

[MotionMode](#enum-characterbody2d-motionmode) **MOTION\_MODE\_GROUNDED** = `0`

Apply when notions of walls, ceiling and floor are relevant. In this mode the body motion will react to slopes (acceleration/slowdown). This mode is suitable for sided games like platformers.

[MotionMode](#enum-characterbody2d-motionmode) **MOTION\_MODE\_FLOATING** = `1`

Apply when there is no notion of floor or ceiling. All collisions will be reported as `on_wall`. In this mode, when you slide, the speed will always be constant. This mode is suitable for top-down games.

* * *

enum **PlatformOnLeave**: [🔗](#enum-characterbody2d-platformonleave)

[PlatformOnLeave](#enum-characterbody2d-platformonleave) **PLATFORM\_ON\_LEAVE\_ADD\_VELOCITY** = `0`

Add the last platform velocity to the [velocity](#class-characterbody2d-property-velocity) when you leave a moving platform.

[PlatformOnLeave](#enum-characterbody2d-platformonleave) **PLATFORM\_ON\_LEAVE\_ADD\_UPWARD\_VELOCITY** = `1`

Add the last platform velocity to the [velocity](#class-characterbody2d-property-velocity) when you leave a moving platform, but any downward motion is ignored. It's useful to keep full jump height even when the platform is moving down.

[PlatformOnLeave](#enum-characterbody2d-platformonleave) **PLATFORM\_ON\_LEAVE\_DO\_NOTHING** = `2`

Do nothing when leaving a platform.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **floor\_block\_on\_wall** = `true` [🔗](#class-characterbody2d-property-floor-block-on-wall)

- void **set\_floor\_block\_on\_wall\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_block\_on\_wall\_enabled**()


If `true`, the body will be able to move on the floor only. This option avoids to be able to walk on walls, it will however allow to slide down along them.

* * *

[bool](class_bool.md#class-bool) **floor\_constant\_speed** = `false` [🔗](#class-characterbody2d-property-floor-constant-speed)

- void **set\_floor\_constant\_speed\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_constant\_speed\_enabled**()


If `false` (by default), the body will move faster on downward slopes and slower on upward slopes.

If `true`, the body will always move at the same speed on the ground no matter the slope. Note that you need to use [floor\_snap\_length](#class-characterbody2d-property-floor-snap-length) to stick along a downward slope at constant speed.

* * *

[float](class_float.md#class-float) **floor\_max\_angle** = `0.7853982` [🔗](#class-characterbody2d-property-floor-max-angle)

- void **set\_floor\_max\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_floor\_max\_angle**()


Maximum angle (in radians) where a slope is still considered a floor (or a ceiling), rather than a wall, when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). The default value equals 45 degrees.

* * *

[float](class_float.md#class-float) **floor\_snap\_length** = `1.0` [🔗](#class-characterbody2d-property-floor-snap-length)

- void **set\_floor\_snap\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_floor\_snap\_length**()


Sets a snapping distance. When set to a value different from `0.0`, the body is kept attached to slopes when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). The snapping vector is determined by the given distance along the opposite direction of the [up\_direction](#class-characterbody2d-property-up-direction).

As long as the snapping vector is in contact with the ground and the body moves against [up\_direction](#class-characterbody2d-property-up-direction), the body will remain attached to the surface. Snapping is not applied if the body moves along [up\_direction](#class-characterbody2d-property-up-direction), meaning it contains vertical rising velocity, so it will be able to detach from the ground when jumping or when the body is pushed up by something. If you want to apply a snap without taking into account the velocity, use [apply\_floor\_snap()](#class-characterbody2d-method-apply-floor-snap).

* * *

[bool](class_bool.md#class-bool) **floor\_stop\_on\_slope** = `true` [🔗](#class-characterbody2d-property-floor-stop-on-slope)

- void **set\_floor\_stop\_on\_slope\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_floor\_stop\_on\_slope\_enabled**()


If `true`, the body will not slide on slopes when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide) when the body is standing still.

If `false`, the body will slide on floor's slopes when [velocity](#class-characterbody2d-property-velocity) applies a downward force.

* * *

[int](class_int.md#class-int) **max\_slides** = `4` [🔗](#class-characterbody2d-property-max-slides)

- void **set\_max\_slides**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_slides**()


Maximum number of times the body can change direction before it stops when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Must be greater than zero.

* * *

[MotionMode](#enum-characterbody2d-motionmode) **motion\_mode** = `0` [🔗](#class-characterbody2d-property-motion-mode)

- void **set\_motion\_mode**(value: [MotionMode](#enum-characterbody2d-motionmode))

- [MotionMode](#enum-characterbody2d-motionmode) **get\_motion\_mode**()


Sets the motion mode which defines the behavior of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

* * *

[int](class_int.md#class-int) **platform\_floor\_layers** = `4294967295` [🔗](#class-characterbody2d-property-platform-floor-layers)

- void **set\_platform\_floor\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_platform\_floor\_layers**()


Collision layers that will be included for detecting floor bodies that will act as moving platforms to be followed by the **CharacterBody2D**. By default, all floor bodies are detected and propagate their velocity.

* * *

[PlatformOnLeave](#enum-characterbody2d-platformonleave) **platform\_on\_leave** = `0` [🔗](#class-characterbody2d-property-platform-on-leave)

- void **set\_platform\_on\_leave**(value: [PlatformOnLeave](#enum-characterbody2d-platformonleave))

- [PlatformOnLeave](#enum-characterbody2d-platformonleave) **get\_platform\_on\_leave**()


Sets the behavior to apply when you leave a moving platform. By default, to be physically accurate, when you leave the last platform velocity is applied.

* * *

[int](class_int.md#class-int) **platform\_wall\_layers** = `0` [🔗](#class-characterbody2d-property-platform-wall-layers)

- void **set\_platform\_wall\_layers**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_platform\_wall\_layers**()


Collision layers that will be included for detecting wall bodies that will act as moving platforms to be followed by the **CharacterBody2D**. By default, all wall bodies are ignored.

* * *

[float](class_float.md#class-float) **safe\_margin** = `0.08` [🔗](#class-characterbody2d-property-safe-margin)

- void **set\_safe\_margin**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_safe\_margin**()


Extra margin used for collision recovery when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

If the body is at least this close to another body, it will consider them to be colliding and will be pushed away before performing the actual motion.

A higher value means it's more flexible for detecting collision, which helps with consistently detecting walls and floors.

A lower value forces the collision algorithm to use more exact detection, so it can be used in cases that specifically require precision, e.g at very low scale to avoid visible jittering, or for stability with a stack of character bodies.

* * *

[bool](class_bool.md#class-bool) **slide\_on\_ceiling** = `true` [🔗](#class-characterbody2d-property-slide-on-ceiling)

- void **set\_slide\_on\_ceiling\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_slide\_on\_ceiling\_enabled**()


If `true`, during a jump against the ceiling, the body will slide, if `false` it will be stopped and will fall vertically.

* * *

[Vector2](class_vector2.md#class-vector2) **up\_direction** = `Vector2(0, -1)` [🔗](#class-characterbody2d-property-up-direction)

- void **set\_up\_direction**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_up\_direction**()


Vector pointing upwards, used to determine what is a wall and what is a floor (or a ceiling) when calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Defaults to [Vector2.UP](class_vector2.md#class-vector2-constant-up). As the vector will be normalized it can't be equal to [Vector2.ZERO](class_vector2.md#class-vector2-constant-zero), if you want all collisions to be reported as walls, consider using [MOTION\_MODE\_FLOATING](#class-characterbody2d-constant-motion-mode-floating) as [motion\_mode](#class-characterbody2d-property-motion-mode).

* * *

[Vector2](class_vector2.md#class-vector2) **velocity** = `Vector2(0, 0)` [🔗](#class-characterbody2d-property-velocity)

- void **set\_velocity**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_velocity**()


Current velocity vector in pixels per second, used and modified during calls to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

This property should not be set to a value multiplied by `delta`, because this happens internally in [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, the simulation will run at an incorrect speed.

* * *

[float](class_float.md#class-float) **wall\_min\_slide\_angle** = `0.2617994` [🔗](#class-characterbody2d-property-wall-min-slide-angle)

- void **set\_wall\_min\_slide\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_wall\_min\_slide\_angle**()


Minimum angle (in radians) where the body is allowed to slide when it encounters a wall. The default value equals 15 degrees. This property only affects movement when [motion\_mode](#class-characterbody2d-property-motion-mode) is [MOTION\_MODE\_FLOATING](#class-characterbody2d-constant-motion-mode-floating).

* * *

## Method Descriptions

void **apply\_floor\_snap**() [🔗](#class-characterbody2d-method-apply-floor-snap)

Allows to manually apply a snap to the floor regardless of the body's velocity. This function does nothing when [is\_on\_floor()](#class-characterbody2d-method-is-on-floor) returns `true`.

* * *

[float](class_float.md#class-float) **get\_floor\_angle**(up\_direction: [Vector2](class_vector2.md#class-vector2) = Vector2(0, -1)) const [🔗](#class-characterbody2d-method-get-floor-angle)

Returns the floor's collision angle at the last collision point according to `up_direction`, which is [Vector2.UP](class_vector2.md#class-vector2-constant-up) by default. This value is always positive and only valid after calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide) and when [is\_on\_floor()](#class-characterbody2d-method-is-on-floor) returns `true`.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_floor\_normal**() const [🔗](#class-characterbody2d-method-get-floor-normal)

Returns the collision normal of the floor at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide) and when [is\_on\_floor()](#class-characterbody2d-method-is-on-floor) returns `true`.

**Warning:** The collision normal is not always the same as the surface normal.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_last\_motion**() const [🔗](#class-characterbody2d-method-get-last-motion)

Returns the last motion applied to the **CharacterBody2D** during the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). The movement can be split into multiple motions when sliding occurs, and this method return the last one, which is useful to retrieve the current direction of the movement.

* * *

[KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) **get\_last\_slide\_collision**() [🔗](#class-characterbody2d-method-get-last-slide-collision)

Returns a [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d), which contains information about the latest collision that occurred during the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_platform\_velocity**() const [🔗](#class-characterbody2d-method-get-platform-velocity)

Returns the linear velocity of the platform at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_position\_delta**() const [🔗](#class-characterbody2d-method-get-position-delta)

Returns the travel (position delta) that occurred during the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_real\_velocity**() const [🔗](#class-characterbody2d-method-get-real-velocity)

Returns the current real velocity since the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). For example, when you climb a slope, you will move diagonally even though the velocity is horizontal. This method returns the diagonal movement, as opposed to [velocity](#class-characterbody2d-property-velocity) which returns the requested velocity.

* * *

[KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d) **get\_slide\_collision**(slide\_idx: [int](class_int.md#class-int)) [🔗](#class-characterbody2d-method-get-slide-collision)

Returns a [KinematicCollision2D](class_kinematiccollision2d.md#class-kinematiccollision2d), which contains information about a collision that occurred during the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Since the body can collide several times in a single call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide), you must specify the index of the collision in the range 0 to ( [get\_slide\_collision\_count()](#class-characterbody2d-method-get-slide-collision-count) \- 1).

**Example:** Iterate through the collisions with a `for` loop:

GDScriptC#

```
for i in get_slide_collision_count():
    var collision = get_slide_collision(i)
    print("Collided with: ", collision.get_collider().name)

```

```
for (int i = 0; i < GetSlideCollisionCount(); i++)
{
    KinematicCollision2D collision = GetSlideCollision(i);
    GD.Print("Collided with: ", (collision.GetCollider() as Node).Name);
}

```

* * *

[int](class_int.md#class-int) **get\_slide\_collision\_count**() const [🔗](#class-characterbody2d-method-get-slide-collision-count)

Returns the number of times the body collided and changed direction during the last call to [move\_and\_slide()](#class-characterbody2d-method-move-and-slide).

* * *

[Vector2](class_vector2.md#class-vector2) **get\_wall\_normal**() const [🔗](#class-characterbody2d-method-get-wall-normal)

Returns the collision normal of the wall at the last collision point. Only valid after calling [move\_and\_slide()](#class-characterbody2d-method-move-and-slide) and when [is\_on\_wall()](#class-characterbody2d-method-is-on-wall) returns `true`.

**Warning:** The collision normal is not always the same as the surface normal.

* * *

[bool](class_bool.md#class-bool) **is\_on\_ceiling**() const [🔗](#class-characterbody2d-method-is-on-ceiling)

Returns `true` if the body collided with the ceiling on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "ceiling" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_ceiling\_only**() const [🔗](#class-characterbody2d-method-is-on-ceiling-only)

Returns `true` if the body collided only with the ceiling on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "ceiling" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_floor**() const [🔗](#class-characterbody2d-method-is-on-floor)

Returns `true` if the body collided with the floor on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "floor" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_floor\_only**() const [🔗](#class-characterbody2d-method-is-on-floor-only)

Returns `true` if the body collided only with the floor on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "floor" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_wall**() const [🔗](#class-characterbody2d-method-is-on-wall)

Returns `true` if the body collided with a wall on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "wall" or not.

* * *

[bool](class_bool.md#class-bool) **is\_on\_wall\_only**() const [🔗](#class-characterbody2d-method-is-on-wall-only)

Returns `true` if the body collided only with a wall on the last call of [move\_and\_slide()](#class-characterbody2d-method-move-and-slide). Otherwise, returns `false`. The [up\_direction](#class-characterbody2d-property-up-direction) and [floor\_max\_angle](#class-characterbody2d-property-floor-max-angle) are used to determine whether a surface is "wall" or not.

* * *

[bool](class_bool.md#class-bool) **move\_and\_slide**() [🔗](#class-characterbody2d-method-move-and-slide)

Moves the body based on [velocity](#class-characterbody2d-property-velocity). If the body collides with another, it will slide along the other body (by default only on floor) rather than stop immediately. If the other body is a **CharacterBody2D** or [RigidBody2D](class_rigidbody2d.md#class-rigidbody2d), it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.

This method should be used in [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process) (or in a method called by [Node.\_physics\_process()](class_node.md#class-node-private-method-physics-process)), as it uses the physics step's `delta` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.

Modifies [velocity](#class-characterbody2d-property-velocity) if a slide collision occurred. To get the latest collision call [get\_last\_slide\_collision()](#class-characterbody2d-method-get-last-slide-collision), for detailed information about collisions that occurred, use [get\_slide\_collision()](#class-characterbody2d-method-get-slide-collision).

When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.

The general behavior and available properties change according to the [motion\_mode](#class-characterbody2d-property-motion-mode).

Returns `true` if the body collided, otherwise, returns `false`.

[Previous](class_centercontainer.md "CenterContainer") [Next](class_characterbody3d.md "CharacterBody3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_centercontainer.md "CenterContainer") [Next](class_characterbody3d.md "CharacterBody3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).