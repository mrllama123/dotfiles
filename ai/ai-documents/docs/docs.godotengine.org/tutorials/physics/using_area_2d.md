---
title: Using Area2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/physics/using_area_2d.html
crawled_at: "2026-08-13T10:20:50+12:00"
content_hash: 6c3fa735a47ce18602b5f414157f2758019e02f5a46d29163a31595dd318fdc3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Physics](index.md)
  - Using Area2D
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/physics/using_area_2d.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Using Area2D

## Introduction

Godot offers a number of collision objects to provide both collision detection
and response. Trying to decide which one to use for your project can be confusing.
You can avoid problems and simplify development if you understand how each of them
works and what their pros and cons are. In this tutorial, we'll look at the
[Area2D](../../classes/class_area2d.md#class-area2d) node and show some examples of how it can be used.

Note

This document assumes you're familiar with Godot's various physics
bodies. Please read [Physics introduction](physics_introduction.md#doc-physics-introduction) first.

## What is an area?

An Area2D defines a region of 2D space. In this space you can detect other
[CollisionObject2D](../../classes/class_collisionobject2d.md#class-collisionobject2d) nodes overlapping, entering,
and exiting. Areas also allow for overriding local physics properties. We'll
explore each of these functions below.

## Area properties

Areas have many properties you can use to customize their behavior.

![../../_images/area2d_properties.webp](../../_images/area2d_properties.webp)

The `Gravity`, `Linear Damp`, and `Angular Damp` sections
are used to configure the area's physics override behavior.
We'll look at how to use those in the _Area influence_ section below.

`Monitoring` and `Monitorable` are used to enable and disable the area.

The `Audio Bus` section allows you to override audio in the area, for example to
apply an audio effect when the player moves through.

Note that Area2D extends [CollisionObject2D](../../classes/class_collisionobject2d.md#class-collisionobject2d), so it
also provides properties inherited from that class.
The `Collision` section of `CollisionObject2D` is where you configure the
area's collision layer(s) and mask(s).

## Overlap detection

Perhaps the most common use of Area2D nodes is for contact and overlap detection.
When you need to know that two objects have touched, but don't need physical
collision, you can use an area to notify you of the contact.

For example, let's say we're making a coin for the player to pick up. The coin is
not a solid object - the player can't stand on it or push it - we just want it
to disappear when the player touches it.

Here's the node setup for the coin:

![../../_images/area2d_coin_nodes.webp](../../_images/area2d_coin_nodes.webp)

To detect the overlap, we'll connect the appropriate signal on the Area2D. Which
signal to use depends on the player's node type. If the player is another area,
use `area_entered`. However, let's assume our player is a `CharacterBody2D`
(and therefore a `CollisionObject2D` type), so we'll connect the
`body_entered` signal.

Note

If you're not familiar with using signals, see [Using signals](../../getting_started/step_by_step/signals.md#doc-signals) for
an introduction.

GDScriptC#

```
extends Area2D

func _on_coin_body_entered(body):
    queue_free()

```

```
using Godot;

public partial class Coin : Area2D
{
    private void OnCoinBodyEntered(PhysicsBody2D body)
    {
        QueueFree();
    }
}

```

Now our player can collect the coins!

Some other usage examples:

- Areas are great for bullets and other projectiles that hit and deal damage, but don't need any other physics such as bouncing.

- Use a large circular area around an enemy to define its "detect" radius. When the player is outside the area, the enemy can't "see" it.

- "Security cameras" - In a large level with multiple cameras, attach areas to each camera and activate them when the player enters.


See the [Your first 2D game](../../getting_started/first_2d_game/index.md#doc-your-first-2d-game) for an example of using Area2D in a game.

## Area influence

The second major use for area nodes is to alter physics. By default, the area
won't do this, but you can enable this with the `Space Override` property. When
areas overlap, they are processed in `Priority` order (higher priority areas are
processed first). There are four options for override:

- _Combine_ \- The area adds its values to what has been calculated so far.

- _Replace_ \- The area replaces physics properties, and lower priority areas are ignored.

- _Combine-Replace_ \- The area adds its gravity/damping values to whatever has been calculated so far (in priority order), ignoring any lower priority areas.

- _Replace-Combine_ \- The area replaces any gravity/damping calculated so far, but keeps calculating the rest of the areas.


Using these properties, you can create very complex behavior with multiple
overlapping areas.

The physics properties that can be overridden are:

- _Gravity_ \- Gravity's strength inside the area.

- _Gravity Direction_ \- This vector does not need to be normalized.

- _Linear Damp_ \- How quickly objects stop moving - linear velocity lost per second.

- _Angular Damp_ \- How quickly objects stop spinning - angular velocity lost per second.


### Point gravity

The `Gravity Point` property allows you to create an "attractor". Gravity in the
area will be calculated towards a point, given by the `Point Center` property.
Values are relative to the Area2D, so for example using `(0, 0)` will attract
objects to the center of the area.

### Examples

The example project attached below has three areas demonstrating physics
override.

![../../_images/area2d_override.gif](../../_images/area2d_override.gif)

You can download this project here:
[area\_2d\_starter.zip](https://github.com/godotengine/godot-docs-project-starters/releases/download/latest-4.x/area_2d_starter.zip)

[Previous](rigid_body.md "Using RigidBody") [Next](using_character_body_2d.md "Using CharacterBody2D/3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](rigid_body.md "Using RigidBody") [Next](using_character_body_2d.md "Using CharacterBody2D/3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).