---
title: Node2D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_node2d.html
crawled_at: "2026-08-13T10:40:58+12:00"
content_hash: 952f9e53f7bbacc0a509e349487e5fe0d8b7b032fabbb8cc371e7d6b90cd2d06
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Node2D

* * *

# Node2D

**Inherits:** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [AnimatedSprite2D](class_animatedsprite2d.md#class-animatedsprite2d), [AudioListener2D](class_audiolistener2d.md#class-audiolistener2d), [AudioStreamPlayer2D](class_audiostreamplayer2d.md#class-audiostreamplayer2d), [BackBufferCopy](class_backbuffercopy.md#class-backbuffercopy), [Bone2D](class_bone2d.md#class-bone2d), [Camera2D](class_camera2d.md#class-camera2d), [CanvasGroup](class_canvasgroup.md#class-canvasgroup), [CanvasModulate](class_canvasmodulate.md#class-canvasmodulate), [CollisionObject2D](class_collisionobject2d.md#class-collisionobject2d), [CollisionPolygon2D](class_collisionpolygon2d.md#class-collisionpolygon2d), [CollisionShape2D](class_collisionshape2d.md#class-collisionshape2d), [CPUParticles2D](class_cpuparticles2d.md#class-cpuparticles2d), [GPUParticles2D](class_gpuparticles2d.md#class-gpuparticles2d), [Joint2D](class_joint2d.md#class-joint2d), [Light2D](class_light2d.md#class-light2d), [LightOccluder2D](class_lightoccluder2d.md#class-lightoccluder2d), [Line2D](class_line2d.md#class-line2d), [Marker2D](class_marker2d.md#class-marker2d), [MeshInstance2D](class_meshinstance2d.md#class-meshinstance2d), [MultiMeshInstance2D](class_multimeshinstance2d.md#class-multimeshinstance2d), [NavigationLink2D](class_navigationlink2d.md#class-navigationlink2d), [NavigationObstacle2D](class_navigationobstacle2d.md#class-navigationobstacle2d), [NavigationRegion2D](class_navigationregion2d.md#class-navigationregion2d), [Parallax2D](class_parallax2d.md#class-parallax2d), [ParallaxLayer](class_parallaxlayer.md#class-parallaxlayer), [Path2D](class_path2d.md#class-path2d), [PathFollow2D](class_pathfollow2d.md#class-pathfollow2d), [Polygon2D](class_polygon2d.md#class-polygon2d), [RayCast2D](class_raycast2d.md#class-raycast2d), [RemoteTransform2D](class_remotetransform2d.md#class-remotetransform2d), [ShapeCast2D](class_shapecast2d.md#class-shapecast2d), [Skeleton2D](class_skeleton2d.md#class-skeleton2d), [Sprite2D](class_sprite2d.md#class-sprite2d), [TileMap](class_tilemap.md#class-tilemap), [TileMapLayer](class_tilemaplayer.md#class-tilemaplayer), [TouchScreenButton](class_touchscreenbutton.md#class-touchscreenbutton), [VisibleOnScreenNotifier2D](class_visibleonscreennotifier2d.md#class-visibleonscreennotifier2d)

A 2D game object, inherited by all 2D-related nodes. Has a position, rotation, scale, and skew.

## Description

A 2D game object, with a transform (position, rotation, and scale). All 2D nodes, including physics objects and sprites, inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control of the node's render order.

**Note:** Since both **Node2D** and [Control](class_control.md#class-control) inherit from [CanvasItem](class_canvasitem.md#class-canvasitem), they share several concepts from the class such as the [CanvasItem.z\_index](class_canvasitem.md#class-canvasitem-property-z-index) and [CanvasItem.visible](class_canvasitem.md#class-canvasitem-property-visible) properties.

## Tutorials

- [Custom drawing in 2D](../tutorials/2d/custom_drawing_in_2d.md)

- [All 2D Demos](https://github.com/godotengine/godot-demo-projects/tree/master/2d)


## Properties

|     |     |     |
| --- | --- | --- |
| [Vector2](class_vector2.md#class-vector2) | [global\_position](#class-node2d-property-global-position) |  |
| [float](class_float.md#class-float) | [global\_rotation](#class-node2d-property-global-rotation) |  |
| [float](class_float.md#class-float) | [global\_rotation\_degrees](#class-node2d-property-global-rotation-degrees) |  |
| [Vector2](class_vector2.md#class-vector2) | [global\_scale](#class-node2d-property-global-scale) |  |
| [float](class_float.md#class-float) | [global\_skew](#class-node2d-property-global-skew) |  |
| [Transform2D](class_transform2d.md#class-transform2d) | [global\_transform](#class-node2d-property-global-transform) |  |
| [Vector2](class_vector2.md#class-vector2) | [position](#class-node2d-property-position) | `Vector2(0, 0)` |
| [float](class_float.md#class-float) | [rotation](#class-node2d-property-rotation) | `0.0` |
| [float](class_float.md#class-float) | [rotation\_degrees](#class-node2d-property-rotation-degrees) |  |
| [Vector2](class_vector2.md#class-vector2) | [scale](#class-node2d-property-scale) | `Vector2(1, 1)` |
| [float](class_float.md#class-float) | [skew](#class-node2d-property-skew) | `0.0` |
| [Transform2D](class_transform2d.md#class-transform2d) | [transform](#class-node2d-property-transform) |  |

## Methods

|     |     |
| --- | --- |
| void | [apply\_scale](#class-node2d-method-apply-scale)(ratio: [Vector2](class_vector2.md#class-vector2)) |
| [float](class_float.md#class-float) | [get\_angle\_to](#class-node2d-method-get-angle-to)(point: [Vector2](class_vector2.md#class-vector2)) const |
| [Transform2D](class_transform2d.md#class-transform2d) | [get\_relative\_transform\_to\_parent](#class-node2d-method-get-relative-transform-to-parent)(parent: [Node](class_node.md#class-node)) const |
| void | [global\_translate](#class-node2d-method-global-translate)(offset: [Vector2](class_vector2.md#class-vector2)) |
| void | [look\_at](#class-node2d-method-look-at)(point: [Vector2](class_vector2.md#class-vector2)) |
| void | [move\_local\_x](#class-node2d-method-move-local-x)(delta: [float](class_float.md#class-float), scaled: [bool](class_bool.md#class-bool) = false) |
| void | [move\_local\_y](#class-node2d-method-move-local-y)(delta: [float](class_float.md#class-float), scaled: [bool](class_bool.md#class-bool) = false) |
| void | [rotate](#class-node2d-method-rotate)(radians: [float](class_float.md#class-float)) |
| [Vector2](class_vector2.md#class-vector2) | [to\_global](#class-node2d-method-to-global)(local\_point: [Vector2](class_vector2.md#class-vector2)) const |
| [Vector2](class_vector2.md#class-vector2) | [to\_local](#class-node2d-method-to-local)(global\_point: [Vector2](class_vector2.md#class-vector2)) const |
| void | [translate](#class-node2d-method-translate)(offset: [Vector2](class_vector2.md#class-vector2)) |

* * *

## Property Descriptions

[Vector2](class_vector2.md#class-vector2) **global\_position** [🔗](#class-node2d-property-global-position)

- void **set\_global\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_global\_position**()


Global position. See also [position](#class-node2d-property-position).

* * *

[float](class_float.md#class-float) **global\_rotation** [🔗](#class-node2d-property-global-rotation)

- void **set\_global\_rotation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_global\_rotation**()


Global rotation in radians. See also [rotation](#class-node2d-property-rotation).

* * *

[float](class_float.md#class-float) **global\_rotation\_degrees** [🔗](#class-node2d-property-global-rotation-degrees)

- void **set\_global\_rotation\_degrees**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_global\_rotation\_degrees**()


Helper property to access [global\_rotation](#class-node2d-property-global-rotation) in degrees instead of radians. See also [rotation\_degrees](#class-node2d-property-rotation-degrees).

* * *

[Vector2](class_vector2.md#class-vector2) **global\_scale** [🔗](#class-node2d-property-global-scale)

- void **set\_global\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_global\_scale**()


Global scale. See also [scale](#class-node2d-property-scale).

* * *

[float](class_float.md#class-float) **global\_skew** [🔗](#class-node2d-property-global-skew)

- void **set\_global\_skew**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_global\_skew**()


Global skew in radians. See also [skew](#class-node2d-property-skew).

* * *

[Transform2D](class_transform2d.md#class-transform2d) **global\_transform** [🔗](#class-node2d-property-global-transform)

- void **set\_global\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_global\_transform**()


Global [Transform2D](class_transform2d.md#class-transform2d). See also [transform](#class-node2d-property-transform).

* * *

[Vector2](class_vector2.md#class-vector2) **position** = `Vector2(0, 0)` [🔗](#class-node2d-property-position)

- void **set\_position**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_position**()


Position, relative to the node's parent. See also [global\_position](#class-node2d-property-global-position).

* * *

[float](class_float.md#class-float) **rotation** = `0.0` [🔗](#class-node2d-property-rotation)

- void **set\_rotation**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation**()


Rotation in radians, relative to the node's parent. See also [global\_rotation](#class-node2d-property-global-rotation).

**Note:** This property is edited in the inspector in degrees. If you want to use degrees in a script, use [rotation\_degrees](#class-node2d-property-rotation-degrees).

* * *

[float](class_float.md#class-float) **rotation\_degrees** [🔗](#class-node2d-property-rotation-degrees)

- void **set\_rotation\_degrees**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_rotation\_degrees**()


Helper property to access [rotation](#class-node2d-property-rotation) in degrees instead of radians. See also [global\_rotation\_degrees](#class-node2d-property-global-rotation-degrees).

* * *

[Vector2](class_vector2.md#class-vector2) **scale** = `Vector2(1, 1)` [🔗](#class-node2d-property-scale)

- void **set\_scale**(value: [Vector2](class_vector2.md#class-vector2))

- [Vector2](class_vector2.md#class-vector2) **get\_scale**()


The node's scale, relative to the node's parent. Unscaled value: `(1, 1)`. See also [global\_scale](#class-node2d-property-global-scale).

**Note:** Negative X scales in 2D are not decomposable from the transformation matrix. Due to the way scale is represented with transformation matrices in Godot, negative scales on the X axis will be changed to negative scales on the Y axis and a rotation of 180 degrees when decomposed.

* * *

[float](class_float.md#class-float) **skew** = `0.0` [🔗](#class-node2d-property-skew)

- void **set\_skew**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_skew**()


If set to a non-zero value, slants the node in one direction or another. This can be used for pseudo-3D effects. See also [global\_skew](#class-node2d-property-global-skew).

**Note:** Skew is performed on the X axis only, and _between_ rotation and scaling.

**Note:** This property is edited in the inspector in degrees. If you want to use degrees in a script, use `skew = deg_to_rad(value_in_degrees)`.

* * *

[Transform2D](class_transform2d.md#class-transform2d) **transform** [🔗](#class-node2d-property-transform)

- void **set\_transform**(value: [Transform2D](class_transform2d.md#class-transform2d))

- [Transform2D](class_transform2d.md#class-transform2d) **get\_transform**()


The node's [Transform2D](class_transform2d.md#class-transform2d), relative to the node's parent. See also [global\_transform](#class-node2d-property-global-transform).

* * *

## Method Descriptions

void **apply\_scale**(ratio: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-node2d-method-apply-scale)

Multiplies the current scale by the `ratio` vector.

* * *

[float](class_float.md#class-float) **get\_angle\_to**(point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-node2d-method-get-angle-to)

Returns the angle between the node and the `point` in radians.

[Illustration of the returned angle.](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/node2d_get_angle_to.png)

* * *

[Transform2D](class_transform2d.md#class-transform2d) **get\_relative\_transform\_to\_parent**(parent: [Node](class_node.md#class-node)) const [🔗](#class-node2d-method-get-relative-transform-to-parent)

Returns the [Transform2D](class_transform2d.md#class-transform2d) relative to this node's parent.

* * *

void **global\_translate**(offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-node2d-method-global-translate)

Adds the `offset` vector to the node's global position.

* * *

void **look\_at**(point: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-node2d-method-look-at)

Rotates the node so that its local +X axis points towards the `point`, which is expected to use global coordinates.

`point` should not be the same as the node's position, otherwise the node always looks to the right.

* * *

void **move\_local\_x**(delta: [float](class_float.md#class-float), scaled: [bool](class_bool.md#class-bool) = false) [🔗](#class-node2d-method-move-local-x)

Applies a local translation on the node's X axis with the amount specified in `delta`. If `scaled` is `false`, normalizes the movement to occur independently of the node's [scale](#class-node2d-property-scale).

* * *

void **move\_local\_y**(delta: [float](class_float.md#class-float), scaled: [bool](class_bool.md#class-bool) = false) [🔗](#class-node2d-method-move-local-y)

Applies a local translation on the node's Y axis with the amount specified in `delta`. If `scaled` is `false`, normalizes the movement to occur independently of the node's [scale](#class-node2d-property-scale).

* * *

void **rotate**(radians: [float](class_float.md#class-float)) [🔗](#class-node2d-method-rotate)

Applies a rotation to the node, in radians, starting from its current rotation.

* * *

[Vector2](class_vector2.md#class-vector2) **to\_global**(local\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-node2d-method-to-global)

Transforms the provided local position into a position in global coordinate space. The input is expected to be local relative to the **Node2D** it is called on. e.g. Applying this method to the positions of child nodes will correctly transform their positions into the global coordinate space, but applying it to a node's own position will give an incorrect result, as it will incorporate the node's own transformation into its global position.

* * *

[Vector2](class_vector2.md#class-vector2) **to\_local**(global\_point: [Vector2](class_vector2.md#class-vector2)) const [🔗](#class-node2d-method-to-local)

Transforms the provided global position into a position in local coordinate space. The output will be local relative to the **Node2D** it is called on. e.g. It is appropriate for determining the positions of child nodes, but it is not appropriate for determining its own position relative to its parent.

* * *

void **translate**(offset: [Vector2](class_vector2.md#class-vector2)) [🔗](#class-node2d-method-translate)

Translates the node by the given `offset` in local coordinates.

[Previous](class_ninepatchrect.md "NinePatchRect") [Next](class_node3d.md "Node3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_ninepatchrect.md "NinePatchRect") [Next](class_node3d.md "Node3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).