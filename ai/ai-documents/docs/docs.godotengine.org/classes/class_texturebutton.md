---
title: TextureButton — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_texturebutton.html
crawled_at: "2026-08-13T10:24:33+12:00"
content_hash: 5171b33877a60b30f3db9a80b30f8d40300f01705f254aea9fded6acbf5e3316
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TextureButton

* * *

# TextureButton

**Inherits:** [BaseButton](class_basebutton.md#class-basebutton) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Texture-based button. Supports Pressed, Hover, Disabled and Focused states.

## Description

**TextureButton** has the same functionality as [Button](class_button.md#class-button), except it uses sprites instead of Godot's [Theme](class_theme.md#class-theme) resource. It is faster to create, but it doesn't support localization like more complex [Control](class_control.md#class-control) s.

See also [BaseButton](class_basebutton.md#class-basebutton) which contains common properties and methods associated with this node.

**Note:** Setting a texture for the "normal" state ( [texture\_normal](#class-texturebutton-property-texture-normal)) is recommended. If [texture\_normal](#class-texturebutton-property-texture-normal) is not set, the **TextureButton** will still receive input events and be clickable, but the user will not be able to see it unless they activate another one of its states with a texture assigned (e.g., hover over it to show [texture\_hover](#class-texturebutton-property-texture-hover)).

## Tutorials

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [flip\_h](#class-texturebutton-property-flip-h) | `false` |
| [bool](class_bool.md#class-bool) | [flip\_v](#class-texturebutton-property-flip-v) | `false` |
| [bool](class_bool.md#class-bool) | [ignore\_texture\_size](#class-texturebutton-property-ignore-texture-size) | `false` |
| [StretchMode](#enum-texturebutton-stretchmode) | [stretch\_mode](#class-texturebutton-property-stretch-mode) | `2` |
| [BitMap](class_bitmap.md#class-bitmap) | [texture\_click\_mask](#class-texturebutton-property-texture-click-mask) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_disabled](#class-texturebutton-property-texture-disabled) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_focused](#class-texturebutton-property-texture-focused) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_hover](#class-texturebutton-property-texture-hover) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_normal](#class-texturebutton-property-texture-normal) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture\_pressed](#class-texturebutton-property-texture-pressed) |  |

* * *

## Enumerations

enum **StretchMode**: [🔗](#enum-texturebutton-stretchmode)

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_SCALE** = `0`

Scale to fit the node's bounding rectangle.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_TILE** = `1`

Tile inside the node's bounding rectangle.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_KEEP** = `2`

The texture keeps its original size and stays in the bounding rectangle's top-left corner.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_KEEP\_CENTERED** = `3`

The texture keeps its original size and stays centered in the node's bounding rectangle.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_KEEP\_ASPECT** = `4`

Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_KEEP\_ASPECT\_CENTERED** = `5`

Scale the texture to fit the node's bounding rectangle, center it, and maintain its aspect ratio.

[StretchMode](#enum-texturebutton-stretchmode) **STRETCH\_KEEP\_ASPECT\_COVERED** = `6`

Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **flip\_h** = `false` [🔗](#class-texturebutton-property-flip-h)

- void **set\_flip\_h**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_h**()


If `true`, texture is flipped horizontally.

* * *

[bool](class_bool.md#class-bool) **flip\_v** = `false` [🔗](#class-texturebutton-property-flip-v)

- void **set\_flip\_v**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_flipped\_v**()


If `true`, texture is flipped vertically.

* * *

[bool](class_bool.md#class-bool) **ignore\_texture\_size** = `false` [🔗](#class-texturebutton-property-ignore-texture-size)

- void **set\_ignore\_texture\_size**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_ignore\_texture\_size**()


If `true`, the size of the texture won't be considered for minimum size calculation, so the **TextureButton** can be shrunk down past the texture size.

* * *

[StretchMode](#enum-texturebutton-stretchmode) **stretch\_mode** = `2` [🔗](#class-texturebutton-property-stretch-mode)

- void **set\_stretch\_mode**(value: [StretchMode](#enum-texturebutton-stretchmode))

- [StretchMode](#enum-texturebutton-stretchmode) **get\_stretch\_mode**()


Controls the texture's behavior when you resize the node's bounding rectangle. See the [StretchMode](#enum-texturebutton-stretchmode) constants for available options.

* * *

[BitMap](class_bitmap.md#class-bitmap) **texture\_click\_mask** [🔗](#class-texturebutton-property-texture-click-mask)

- void **set\_click\_mask**(value: [BitMap](class_bitmap.md#class-bitmap))

- [BitMap](class_bitmap.md#class-bitmap) **get\_click\_mask**()


Pure black and white [BitMap](class_bitmap.md#class-bitmap) image to use for click detection. On the mask, white pixels represent the button's clickable area. Use it to create buttons with curved shapes.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_disabled** [🔗](#class-texturebutton-property-texture-disabled)

- void **set\_texture\_disabled**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_disabled**()


Texture to display when the node is disabled. See [BaseButton.disabled](class_basebutton.md#class-basebutton-property-disabled). If not assigned, the **TextureButton** displays [texture\_normal](#class-texturebutton-property-texture-normal) instead.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_focused** [🔗](#class-texturebutton-property-texture-focused)

- void **set\_texture\_focused**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_focused**()


Texture to _overlay on the base texture_ when the node has mouse or keyboard focus. Because [texture\_focused](#class-texturebutton-property-texture-focused) is displayed on top of the base texture, a partially transparent texture should be used to ensure the base texture remains visible. A texture that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a fully transparent texture of any size. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_hover** [🔗](#class-texturebutton-property-texture-hover)

- void **set\_texture\_hover**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_hover**()


Texture to display when the mouse hovers over the node. If not assigned, the **TextureButton** displays [texture\_normal](#class-texturebutton-property-texture-normal) instead when hovered over.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_normal** [🔗](#class-texturebutton-property-texture-normal)

- void **set\_texture\_normal**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_normal**()


Texture to display by default, when the node is **not** in the disabled, hover or pressed state. This texture is still displayed in the focused state, with [texture\_focused](#class-texturebutton-property-texture-focused) drawn on top.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture\_pressed** [🔗](#class-texturebutton-property-texture-pressed)

- void **set\_texture\_pressed**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture\_pressed**()


Texture to display on mouse down over the node, if the node has keyboard focus and the player presses the Enter key or if the player presses the [BaseButton.shortcut](class_basebutton.md#class-basebutton-property-shortcut) key. If not assigned, the **TextureButton** displays [texture\_hover](#class-texturebutton-property-texture-hover) instead when pressed.

[Previous](class_textedit.md "TextEdit") [Next](class_textureprogressbar.md "TextureProgressBar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_textedit.md "TextEdit") [Next](class_textureprogressbar.md "TextureProgressBar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).