---
title: Color — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_color.html
crawled_at: "2026-08-13T10:36:54+12:00"
content_hash: 58a2ff0edcb4375d1be5ff618af1b932c986a78a269b21b0966020154e4c3eb6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Color

* * *

# Color

A color represented in RGBA format.

## Description

A color represented in RGBA format by a red ( [r](#class-color-property-r)), green ( [g](#class-color-property-g)), blue ( [b](#class-color-property-b)), and alpha ( [a](#class-color-property-a)) component. Each component is a 32-bit floating-point value, usually ranging from `0.0` to `1.0`. Some properties (such as [CanvasItem.modulate](class_canvasitem.md#class-canvasitem-property-modulate)) may support values greater than `1.0`, for overbright or HDR (High Dynamic Range) colors.

Colors can be created in various ways: By the various **Color** constructors, by static methods such as [from\_hsv()](#class-color-method-from-hsv), and by using a name from the set of standardized colors based on [X11 color names](https://en.wikipedia.org/wiki/X11_color_names) with the addition of [TRANSPARENT](#class-color-constant-transparent). GDScript also provides [@GDScript.Color8()](class_@gdscript.md#class-gdscript-method-color8), which uses integers from `0` to `255` and doesn't support overbright colors.

Color data may be stored in many color spaces and encodings. The [srgb\_to\_linear()](#class-color-method-srgb-to-linear) and [linear\_to\_srgb()](#class-color-method-linear-to-srgb) methods can convert between nonlinear sRGB encoding and linear RGB encoding.

**Note:** In a boolean context, a Color will evaluate to `false` if it is equal to `Color(0, 0, 0, 1)` (opaque black). Otherwise, a Color will always evaluate to `true`.

[Color constants cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png)

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [2D GD Paint Demo](https://godotengine.org/asset-library/asset/2768)

- [Tween Interpolation Demo](https://godotengine.org/asset-library/asset/2733)

- [GUI Drag And Drop Demo](https://godotengine.org/asset-library/asset/2767)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [a](#class-color-property-a) | `1.0` |
| [int](class_int.md#class-int) | [a8](#class-color-property-a8) | `255` |
| [float](class_float.md#class-float) | [b](#class-color-property-b) | `0.0` |
| [int](class_int.md#class-int) | [b8](#class-color-property-b8) | `0` |
| [float](class_float.md#class-float) | [g](#class-color-property-g) | `0.0` |
| [int](class_int.md#class-int) | [g8](#class-color-property-g8) | `0` |
| [float](class_float.md#class-float) | [h](#class-color-property-h) | `0.0` |
| [float](class_float.md#class-float) | [ok\_hsl\_h](#class-color-property-ok-hsl-h) | `0.0` |
| [float](class_float.md#class-float) | [ok\_hsl\_l](#class-color-property-ok-hsl-l) | `0.0` |
| [float](class_float.md#class-float) | [ok\_hsl\_s](#class-color-property-ok-hsl-s) | `0.0` |
| [float](class_float.md#class-float) | [r](#class-color-property-r) | `0.0` |
| [int](class_int.md#class-int) | [r8](#class-color-property-r8) | `0` |
| [float](class_float.md#class-float) | [s](#class-color-property-s) | `0.0` |
| [float](class_float.md#class-float) | [v](#class-color-property-v) | `0.0` |

## Constructors

|     |     |
| --- | --- |
| [Color](#class-color) | [Color](#class-color-constructor-color)() |
| [Color](#class-color) | [Color](#class-color-constructor-color)(from: [Color](#class-color), alpha: [float](class_float.md#class-float)) |
| [Color](#class-color) | [Color](#class-color-constructor-color)(from: [Color](#class-color)) |
| [Color](#class-color) | [Color](#class-color-constructor-color)(code: [String](class_string.md#class-string)) |
| [Color](#class-color) | [Color](#class-color-constructor-color)(code: [String](class_string.md#class-string), alpha: [float](class_float.md#class-float)) |
| [Color](#class-color) | [Color](#class-color-constructor-color)(r: [float](class_float.md#class-float), g: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) |
| [Color](#class-color) | [Color](#class-color-constructor-color)(r: [float](class_float.md#class-float), g: [float](class_float.md#class-float), b: [float](class_float.md#class-float), a: [float](class_float.md#class-float)) |

## Methods

|     |     |
| --- | --- |
| [Color](#class-color) | [blend](#class-color-method-blend)(over: [Color](#class-color)) const |
| [Color](#class-color) | [clamp](#class-color-method-clamp)(min: [Color](#class-color) = Color(0, 0, 0, 0), max: [Color](#class-color) = Color(1, 1, 1, 1)) const |
| [Color](#class-color) | [darkened](#class-color-method-darkened)(amount: [float](class_float.md#class-float)) const |
| [Color](#class-color) | [from\_hsv](#class-color-method-from-hsv)(h: [float](class_float.md#class-float), s: [float](class_float.md#class-float), v: [float](class_float.md#class-float), alpha: [float](class_float.md#class-float) = 1.0) static |
| [Color](#class-color) | [from\_ok\_hsl](#class-color-method-from-ok-hsl)(h: [float](class_float.md#class-float), s: [float](class_float.md#class-float), l: [float](class_float.md#class-float), alpha: [float](class_float.md#class-float) = 1.0) static |
| [Color](#class-color) | [from\_rgba8](#class-color-method-from-rgba8)(r8: [int](class_int.md#class-int), g8: [int](class_int.md#class-int), b8: [int](class_int.md#class-int), a8: [int](class_int.md#class-int) = 255) static |
| [Color](#class-color) | [from\_rgbe9995](#class-color-method-from-rgbe9995)(rgbe: [int](class_int.md#class-int)) static |
| [Color](#class-color) | [from\_string](#class-color-method-from-string)(str: [String](class_string.md#class-string), default: [Color](#class-color)) static |
| [float](class_float.md#class-float) | [get\_luminance](#class-color-method-get-luminance)() const |
| [Color](#class-color) | [hex](#class-color-method-hex)(hex: [int](class_int.md#class-int)) static |
| [Color](#class-color) | [hex64](#class-color-method-hex64)(hex: [int](class_int.md#class-int)) static |
| [Color](#class-color) | [html](#class-color-method-html)(rgba: [String](class_string.md#class-string)) static |
| [bool](class_bool.md#class-bool) | [html\_is\_valid](#class-color-method-html-is-valid)(color: [String](class_string.md#class-string)) static |
| [Color](#class-color) | [inverted](#class-color-method-inverted)() const |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-color-method-is-equal-approx)(to: [Color](#class-color)) const |
| [Color](#class-color) | [lerp](#class-color-method-lerp)(to: [Color](#class-color), weight: [float](class_float.md#class-float)) const |
| [Color](#class-color) | [lightened](#class-color-method-lightened)(amount: [float](class_float.md#class-float)) const |
| [Color](#class-color) | [linear\_to\_srgb](#class-color-method-linear-to-srgb)() const |
| [Color](#class-color) | [srgb\_to\_linear](#class-color-method-srgb-to-linear)() const |
| [int](class_int.md#class-int) | [to\_abgr32](#class-color-method-to-abgr32)() const |
| [int](class_int.md#class-int) | [to\_abgr64](#class-color-method-to-abgr64)() const |
| [int](class_int.md#class-int) | [to\_argb32](#class-color-method-to-argb32)() const |
| [int](class_int.md#class-int) | [to\_argb64](#class-color-method-to-argb64)() const |
| [String](class_string.md#class-string) | [to\_html](#class-color-method-to-html)(with\_alpha: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [to\_rgba32](#class-color-method-to-rgba32)() const |
| [int](class_int.md#class-int) | [to\_rgba64](#class-color-method-to-rgba64)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-color-operator-neq-color)(right: [Color](#class-color)) |
| [Color](#class-color) | [operator \*](#class-color-operator-mul-color)(right: [Color](#class-color)) |
| [Color](#class-color) | [operator \*](#class-color-operator-mul-float)(right: [float](class_float.md#class-float)) |
| [Color](#class-color) | [operator \*](#class-color-operator-mul-int)(right: [int](class_int.md#class-int)) |
| [Color](#class-color) | [operator +](#class-color-operator-sum-color)(right: [Color](#class-color)) |
| [Color](#class-color) | [operator -](#class-color-operator-dif-color)(right: [Color](#class-color)) |
| [Color](#class-color) | [operator /](#class-color-operator-div-color)(right: [Color](#class-color)) |
| [Color](#class-color) | [operator /](#class-color-operator-div-float)(right: [float](class_float.md#class-float)) |
| [Color](#class-color) | [operator /](#class-color-operator-div-int)(right: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-color-operator-eq-color)(right: [Color](#class-color)) |
| [float](class_float.md#class-float) | [operator \[\]](#class-color-operator-idx-int)(index: [int](class_int.md#class-int)) |
| [Color](#class-color) | [operator unary+](#class-color-operator-unplus)() |
| [Color](#class-color) | [operator unary-](#class-color-operator-unminus)() |

* * *

## Constants

**ALICE\_BLUE** = `Color(0.9411765, 0.972549, 1, 1)` [🔗](#class-color-constant-alice-blue)

Alice blue color.

**ANTIQUE\_WHITE** = `Color(0.98039216, 0.92156863, 0.84313726, 1)` [🔗](#class-color-constant-antique-white)

Antique white color.

**AQUA** = `Color(0, 1, 1, 1)` [🔗](#class-color-constant-aqua)

Aqua color.

**AQUAMARINE** = `Color(0.49803922, 1, 0.83137256, 1)` [🔗](#class-color-constant-aquamarine)

Aquamarine color.

**AZURE** = `Color(0.9411765, 1, 1, 1)` [🔗](#class-color-constant-azure)

Azure color.

**BEIGE** = `Color(0.9607843, 0.9607843, 0.8627451, 1)` [🔗](#class-color-constant-beige)

Beige color.

**BISQUE** = `Color(1, 0.89411765, 0.76862746, 1)` [🔗](#class-color-constant-bisque)

Bisque color.

**BLACK** = `Color(0, 0, 0, 1)` [🔗](#class-color-constant-black)

Black color. In GDScript, this is the default value of any color.

**BLANCHED\_ALMOND** = `Color(1, 0.92156863, 0.8039216, 1)` [🔗](#class-color-constant-blanched-almond)

Blanched almond color.

**BLUE** = `Color(0, 0, 1, 1)` [🔗](#class-color-constant-blue)

Blue color.

**BLUE\_VIOLET** = `Color(0.5411765, 0.16862746, 0.8862745, 1)` [🔗](#class-color-constant-blue-violet)

Blue violet color.

**BROWN** = `Color(0.64705884, 0.16470589, 0.16470589, 1)` [🔗](#class-color-constant-brown)

Brown color.

**BURLYWOOD** = `Color(0.87058824, 0.72156864, 0.5294118, 1)` [🔗](#class-color-constant-burlywood)

Burlywood color.

**CADET\_BLUE** = `Color(0.37254903, 0.61960787, 0.627451, 1)` [🔗](#class-color-constant-cadet-blue)

Cadet blue color.

**CHARTREUSE** = `Color(0.49803922, 1, 0, 1)` [🔗](#class-color-constant-chartreuse)

Chartreuse color.

**CHOCOLATE** = `Color(0.8235294, 0.4117647, 0.11764706, 1)` [🔗](#class-color-constant-chocolate)

Chocolate color.

**CORAL** = `Color(1, 0.49803922, 0.3137255, 1)` [🔗](#class-color-constant-coral)

Coral color.

**CORNFLOWER\_BLUE** = `Color(0.39215687, 0.58431375, 0.92941177, 1)` [🔗](#class-color-constant-cornflower-blue)

Cornflower blue color.

**CORNSILK** = `Color(1, 0.972549, 0.8627451, 1)` [🔗](#class-color-constant-cornsilk)

Cornsilk color.

**CRIMSON** = `Color(0.8627451, 0.078431375, 0.23529412, 1)` [🔗](#class-color-constant-crimson)

Crimson color.

**CYAN** = `Color(0, 1, 1, 1)` [🔗](#class-color-constant-cyan)

Cyan color.

**DARK\_BLUE** = `Color(0, 0, 0.54509807, 1)` [🔗](#class-color-constant-dark-blue)

Dark blue color.

**DARK\_CYAN** = `Color(0, 0.54509807, 0.54509807, 1)` [🔗](#class-color-constant-dark-cyan)

Dark cyan color.

**DARK\_GOLDENROD** = `Color(0.72156864, 0.5254902, 0.043137256, 1)` [🔗](#class-color-constant-dark-goldenrod)

Dark goldenrod color.

**DARK\_GRAY** = `Color(0.6627451, 0.6627451, 0.6627451, 1)` [🔗](#class-color-constant-dark-gray)

Dark gray color.

**DARK\_GREEN** = `Color(0, 0.39215687, 0, 1)` [🔗](#class-color-constant-dark-green)

Dark green color.

**DARK\_KHAKI** = `Color(0.7411765, 0.7176471, 0.41960785, 1)` [🔗](#class-color-constant-dark-khaki)

Dark khaki color.

**DARK\_MAGENTA** = `Color(0.54509807, 0, 0.54509807, 1)` [🔗](#class-color-constant-dark-magenta)

Dark magenta color.

**DARK\_OLIVE\_GREEN** = `Color(0.33333334, 0.41960785, 0.18431373, 1)` [🔗](#class-color-constant-dark-olive-green)

Dark olive green color.

**DARK\_ORANGE** = `Color(1, 0.54901963, 0, 1)` [🔗](#class-color-constant-dark-orange)

Dark orange color.

**DARK\_ORCHID** = `Color(0.6, 0.19607843, 0.8, 1)` [🔗](#class-color-constant-dark-orchid)

Dark orchid color.

**DARK\_RED** = `Color(0.54509807, 0, 0, 1)` [🔗](#class-color-constant-dark-red)

Dark red color.

**DARK\_SALMON** = `Color(0.9137255, 0.5882353, 0.47843137, 1)` [🔗](#class-color-constant-dark-salmon)

Dark salmon color.

**DARK\_SEA\_GREEN** = `Color(0.56078434, 0.7372549, 0.56078434, 1)` [🔗](#class-color-constant-dark-sea-green)

Dark sea green color.

**DARK\_SLATE\_BLUE** = `Color(0.28235295, 0.23921569, 0.54509807, 1)` [🔗](#class-color-constant-dark-slate-blue)

Dark slate blue color.

**DARK\_SLATE\_GRAY** = `Color(0.18431373, 0.30980393, 0.30980393, 1)` [🔗](#class-color-constant-dark-slate-gray)

Dark slate gray color.

**DARK\_TURQUOISE** = `Color(0, 0.80784315, 0.81960785, 1)` [🔗](#class-color-constant-dark-turquoise)

Dark turquoise color.

**DARK\_VIOLET** = `Color(0.5803922, 0, 0.827451, 1)` [🔗](#class-color-constant-dark-violet)

Dark violet color.

**DEEP\_PINK** = `Color(1, 0.078431375, 0.5764706, 1)` [🔗](#class-color-constant-deep-pink)

Deep pink color.

**DEEP\_SKY\_BLUE** = `Color(0, 0.7490196, 1, 1)` [🔗](#class-color-constant-deep-sky-blue)

Deep sky blue color.

**DIM\_GRAY** = `Color(0.4117647, 0.4117647, 0.4117647, 1)` [🔗](#class-color-constant-dim-gray)

Dim gray color.

**DODGER\_BLUE** = `Color(0.11764706, 0.5647059, 1, 1)` [🔗](#class-color-constant-dodger-blue)

Dodger blue color.

**FIREBRICK** = `Color(0.69803923, 0.13333334, 0.13333334, 1)` [🔗](#class-color-constant-firebrick)

Firebrick color.

**FLORAL\_WHITE** = `Color(1, 0.98039216, 0.9411765, 1)` [🔗](#class-color-constant-floral-white)

Floral white color.

**FOREST\_GREEN** = `Color(0.13333334, 0.54509807, 0.13333334, 1)` [🔗](#class-color-constant-forest-green)

Forest green color.

**FUCHSIA** = `Color(1, 0, 1, 1)` [🔗](#class-color-constant-fuchsia)

Fuchsia color.

**GAINSBORO** = `Color(0.8627451, 0.8627451, 0.8627451, 1)` [🔗](#class-color-constant-gainsboro)

Gainsboro color.

**GHOST\_WHITE** = `Color(0.972549, 0.972549, 1, 1)` [🔗](#class-color-constant-ghost-white)

Ghost white color.

**GOLD** = `Color(1, 0.84313726, 0, 1)` [🔗](#class-color-constant-gold)

Gold color.

**GOLDENROD** = `Color(0.85490197, 0.64705884, 0.1254902, 1)` [🔗](#class-color-constant-goldenrod)

Goldenrod color.

**GRAY** = `Color(0.74509805, 0.74509805, 0.74509805, 1)` [🔗](#class-color-constant-gray)

Gray color.

**GREEN** = `Color(0, 1, 0, 1)` [🔗](#class-color-constant-green)

Green color.

**GREEN\_YELLOW** = `Color(0.6784314, 1, 0.18431373, 1)` [🔗](#class-color-constant-green-yellow)

Green yellow color.

**HONEYDEW** = `Color(0.9411765, 1, 0.9411765, 1)` [🔗](#class-color-constant-honeydew)

Honeydew color.

**HOT\_PINK** = `Color(1, 0.4117647, 0.7058824, 1)` [🔗](#class-color-constant-hot-pink)

Hot pink color.

**INDIAN\_RED** = `Color(0.8039216, 0.36078432, 0.36078432, 1)` [🔗](#class-color-constant-indian-red)

Indian red color.

**INDIGO** = `Color(0.29411766, 0, 0.50980395, 1)` [🔗](#class-color-constant-indigo)

Indigo color.

**IVORY** = `Color(1, 1, 0.9411765, 1)` [🔗](#class-color-constant-ivory)

Ivory color.

**KHAKI** = `Color(0.9411765, 0.9019608, 0.54901963, 1)` [🔗](#class-color-constant-khaki)

Khaki color.

**LAVENDER** = `Color(0.9019608, 0.9019608, 0.98039216, 1)` [🔗](#class-color-constant-lavender)

Lavender color.

**LAVENDER\_BLUSH** = `Color(1, 0.9411765, 0.9607843, 1)` [🔗](#class-color-constant-lavender-blush)

Lavender blush color.

**LAWN\_GREEN** = `Color(0.4862745, 0.9882353, 0, 1)` [🔗](#class-color-constant-lawn-green)

Lawn green color.

**LEMON\_CHIFFON** = `Color(1, 0.98039216, 0.8039216, 1)` [🔗](#class-color-constant-lemon-chiffon)

Lemon chiffon color.

**LIGHT\_BLUE** = `Color(0.6784314, 0.84705883, 0.9019608, 1)` [🔗](#class-color-constant-light-blue)

Light blue color.

**LIGHT\_CORAL** = `Color(0.9411765, 0.5019608, 0.5019608, 1)` [🔗](#class-color-constant-light-coral)

Light coral color.

**LIGHT\_CYAN** = `Color(0.8784314, 1, 1, 1)` [🔗](#class-color-constant-light-cyan)

Light cyan color.

**LIGHT\_GOLDENROD** = `Color(0.98039216, 0.98039216, 0.8235294, 1)` [🔗](#class-color-constant-light-goldenrod)

Light goldenrod color.

**LIGHT\_GRAY** = `Color(0.827451, 0.827451, 0.827451, 1)` [🔗](#class-color-constant-light-gray)

Light gray color.

**LIGHT\_GREEN** = `Color(0.5647059, 0.93333334, 0.5647059, 1)` [🔗](#class-color-constant-light-green)

Light green color.

**LIGHT\_PINK** = `Color(1, 0.7137255, 0.75686276, 1)` [🔗](#class-color-constant-light-pink)

Light pink color.

**LIGHT\_SALMON** = `Color(1, 0.627451, 0.47843137, 1)` [🔗](#class-color-constant-light-salmon)

Light salmon color.

**LIGHT\_SEA\_GREEN** = `Color(0.1254902, 0.69803923, 0.6666667, 1)` [🔗](#class-color-constant-light-sea-green)

Light sea green color.

**LIGHT\_SKY\_BLUE** = `Color(0.5294118, 0.80784315, 0.98039216, 1)` [🔗](#class-color-constant-light-sky-blue)

Light sky blue color.

**LIGHT\_SLATE\_GRAY** = `Color(0.46666667, 0.53333336, 0.6, 1)` [🔗](#class-color-constant-light-slate-gray)

Light slate gray color.

**LIGHT\_STEEL\_BLUE** = `Color(0.6901961, 0.76862746, 0.87058824, 1)` [🔗](#class-color-constant-light-steel-blue)

Light steel blue color.

**LIGHT\_YELLOW** = `Color(1, 1, 0.8784314, 1)` [🔗](#class-color-constant-light-yellow)

Light yellow color.

**LIME** = `Color(0, 1, 0, 1)` [🔗](#class-color-constant-lime)

Lime color.

**LIME\_GREEN** = `Color(0.19607843, 0.8039216, 0.19607843, 1)` [🔗](#class-color-constant-lime-green)

Lime green color.

**LINEN** = `Color(0.98039216, 0.9411765, 0.9019608, 1)` [🔗](#class-color-constant-linen)

Linen color.

**MAGENTA** = `Color(1, 0, 1, 1)` [🔗](#class-color-constant-magenta)

Magenta color.

**MAROON** = `Color(0.6901961, 0.1882353, 0.3764706, 1)` [🔗](#class-color-constant-maroon)

Maroon color.

**MEDIUM\_AQUAMARINE** = `Color(0.4, 0.8039216, 0.6666667, 1)` [🔗](#class-color-constant-medium-aquamarine)

Medium aquamarine color.

**MEDIUM\_BLUE** = `Color(0, 0, 0.8039216, 1)` [🔗](#class-color-constant-medium-blue)

Medium blue color.

**MEDIUM\_ORCHID** = `Color(0.7294118, 0.33333334, 0.827451, 1)` [🔗](#class-color-constant-medium-orchid)

Medium orchid color.

**MEDIUM\_PURPLE** = `Color(0.5764706, 0.4392157, 0.85882354, 1)` [🔗](#class-color-constant-medium-purple)

Medium purple color.

**MEDIUM\_SEA\_GREEN** = `Color(0.23529412, 0.7019608, 0.44313726, 1)` [🔗](#class-color-constant-medium-sea-green)

Medium sea green color.

**MEDIUM\_SLATE\_BLUE** = `Color(0.48235294, 0.40784314, 0.93333334, 1)` [🔗](#class-color-constant-medium-slate-blue)

Medium slate blue color.

**MEDIUM\_SPRING\_GREEN** = `Color(0, 0.98039216, 0.6039216, 1)` [🔗](#class-color-constant-medium-spring-green)

Medium spring green color.

**MEDIUM\_TURQUOISE** = `Color(0.28235295, 0.81960785, 0.8, 1)` [🔗](#class-color-constant-medium-turquoise)

Medium turquoise color.

**MEDIUM\_VIOLET\_RED** = `Color(0.78039217, 0.08235294, 0.52156866, 1)` [🔗](#class-color-constant-medium-violet-red)

Medium violet red color.

**MIDNIGHT\_BLUE** = `Color(0.09803922, 0.09803922, 0.4392157, 1)` [🔗](#class-color-constant-midnight-blue)

Midnight blue color.

**MINT\_CREAM** = `Color(0.9607843, 1, 0.98039216, 1)` [🔗](#class-color-constant-mint-cream)

Mint cream color.

**MISTY\_ROSE** = `Color(1, 0.89411765, 0.88235295, 1)` [🔗](#class-color-constant-misty-rose)

Misty rose color.

**MOCCASIN** = `Color(1, 0.89411765, 0.70980394, 1)` [🔗](#class-color-constant-moccasin)

Moccasin color.

**NAVAJO\_WHITE** = `Color(1, 0.87058824, 0.6784314, 1)` [🔗](#class-color-constant-navajo-white)

Navajo white color.

**NAVY\_BLUE** = `Color(0, 0, 0.5019608, 1)` [🔗](#class-color-constant-navy-blue)

Navy blue color.

**OLD\_LACE** = `Color(0.99215686, 0.9607843, 0.9019608, 1)` [🔗](#class-color-constant-old-lace)

Old lace color.

**OLIVE** = `Color(0.5019608, 0.5019608, 0, 1)` [🔗](#class-color-constant-olive)

Olive color.

**OLIVE\_DRAB** = `Color(0.41960785, 0.5568628, 0.13725491, 1)` [🔗](#class-color-constant-olive-drab)

Olive drab color.

**ORANGE** = `Color(1, 0.64705884, 0, 1)` [🔗](#class-color-constant-orange)

Orange color.

**ORANGE\_RED** = `Color(1, 0.27058825, 0, 1)` [🔗](#class-color-constant-orange-red)

Orange red color.

**ORCHID** = `Color(0.85490197, 0.4392157, 0.8392157, 1)` [🔗](#class-color-constant-orchid)

Orchid color.

**PALE\_GOLDENROD** = `Color(0.93333334, 0.9098039, 0.6666667, 1)` [🔗](#class-color-constant-pale-goldenrod)

Pale goldenrod color.

**PALE\_GREEN** = `Color(0.59607846, 0.9843137, 0.59607846, 1)` [🔗](#class-color-constant-pale-green)

Pale green color.

**PALE\_TURQUOISE** = `Color(0.6862745, 0.93333334, 0.93333334, 1)` [🔗](#class-color-constant-pale-turquoise)

Pale turquoise color.

**PALE\_VIOLET\_RED** = `Color(0.85882354, 0.4392157, 0.5764706, 1)` [🔗](#class-color-constant-pale-violet-red)

Pale violet red color.

**PAPAYA\_WHIP** = `Color(1, 0.9372549, 0.8352941, 1)` [🔗](#class-color-constant-papaya-whip)

Papaya whip color.

**PEACH\_PUFF** = `Color(1, 0.85490197, 0.7254902, 1)` [🔗](#class-color-constant-peach-puff)

Peach puff color.

**PERU** = `Color(0.8039216, 0.52156866, 0.24705882, 1)` [🔗](#class-color-constant-peru)

Peru color.

**PINK** = `Color(1, 0.7529412, 0.79607844, 1)` [🔗](#class-color-constant-pink)

Pink color.

**PLUM** = `Color(0.8666667, 0.627451, 0.8666667, 1)` [🔗](#class-color-constant-plum)

Plum color.

**POWDER\_BLUE** = `Color(0.6901961, 0.8784314, 0.9019608, 1)` [🔗](#class-color-constant-powder-blue)

Powder blue color.

**PURPLE** = `Color(0.627451, 0.1254902, 0.9411765, 1)` [🔗](#class-color-constant-purple)

Purple color.

**REBECCA\_PURPLE** = `Color(0.4, 0.2, 0.6, 1)` [🔗](#class-color-constant-rebecca-purple)

Rebecca purple color.

**RED** = `Color(1, 0, 0, 1)` [🔗](#class-color-constant-red)

Red color.

**ROSY\_BROWN** = `Color(0.7372549, 0.56078434, 0.56078434, 1)` [🔗](#class-color-constant-rosy-brown)

Rosy brown color.

**ROYAL\_BLUE** = `Color(0.25490198, 0.4117647, 0.88235295, 1)` [🔗](#class-color-constant-royal-blue)

Royal blue color.

**SADDLE\_BROWN** = `Color(0.54509807, 0.27058825, 0.07450981, 1)` [🔗](#class-color-constant-saddle-brown)

Saddle brown color.

**SALMON** = `Color(0.98039216, 0.5019608, 0.44705883, 1)` [🔗](#class-color-constant-salmon)

Salmon color.

**SANDY\_BROWN** = `Color(0.95686275, 0.6431373, 0.3764706, 1)` [🔗](#class-color-constant-sandy-brown)

Sandy brown color.

**SEA\_GREEN** = `Color(0.18039216, 0.54509807, 0.34117648, 1)` [🔗](#class-color-constant-sea-green)

Sea green color.

**SEASHELL** = `Color(1, 0.9607843, 0.93333334, 1)` [🔗](#class-color-constant-seashell)

Seashell color.

**SIENNA** = `Color(0.627451, 0.32156864, 0.1764706, 1)` [🔗](#class-color-constant-sienna)

Sienna color.

**SILVER** = `Color(0.7529412, 0.7529412, 0.7529412, 1)` [🔗](#class-color-constant-silver)

Silver color.

**SKY\_BLUE** = `Color(0.5294118, 0.80784315, 0.92156863, 1)` [🔗](#class-color-constant-sky-blue)

Sky blue color.

**SLATE\_BLUE** = `Color(0.41568628, 0.3529412, 0.8039216, 1)` [🔗](#class-color-constant-slate-blue)

Slate blue color.

**SLATE\_GRAY** = `Color(0.4392157, 0.5019608, 0.5647059, 1)` [🔗](#class-color-constant-slate-gray)

Slate gray color.

**SNOW** = `Color(1, 0.98039216, 0.98039216, 1)` [🔗](#class-color-constant-snow)

Snow color.

**SPRING\_GREEN** = `Color(0, 1, 0.49803922, 1)` [🔗](#class-color-constant-spring-green)

Spring green color.

**STEEL\_BLUE** = `Color(0.27450982, 0.50980395, 0.7058824, 1)` [🔗](#class-color-constant-steel-blue)

Steel blue color.

**TAN** = `Color(0.8235294, 0.7058824, 0.54901963, 1)` [🔗](#class-color-constant-tan)

Tan color.

**TEAL** = `Color(0, 0.5019608, 0.5019608, 1)` [🔗](#class-color-constant-teal)

Teal color.

**THISTLE** = `Color(0.84705883, 0.7490196, 0.84705883, 1)` [🔗](#class-color-constant-thistle)

Thistle color.

**TOMATO** = `Color(1, 0.3882353, 0.2784314, 1)` [🔗](#class-color-constant-tomato)

Tomato color.

**TRANSPARENT** = `Color(1, 1, 1, 0)` [🔗](#class-color-constant-transparent)

Transparent color (white with zero alpha).

**TURQUOISE** = `Color(0.2509804, 0.8784314, 0.8156863, 1)` [🔗](#class-color-constant-turquoise)

Turquoise color.

**VIOLET** = `Color(0.93333334, 0.50980395, 0.93333334, 1)` [🔗](#class-color-constant-violet)

Violet color.

**WEB\_GRAY** = `Color(0.5019608, 0.5019608, 0.5019608, 1)` [🔗](#class-color-constant-web-gray)

Web gray color.

**WEB\_GREEN** = `Color(0, 0.5019608, 0, 1)` [🔗](#class-color-constant-web-green)

Web green color.

**WEB\_MAROON** = `Color(0.5019608, 0, 0, 1)` [🔗](#class-color-constant-web-maroon)

Web maroon color.

**WEB\_PURPLE** = `Color(0.5019608, 0, 0.5019608, 1)` [🔗](#class-color-constant-web-purple)

Web purple color.

**WHEAT** = `Color(0.9607843, 0.87058824, 0.7019608, 1)` [🔗](#class-color-constant-wheat)

Wheat color.

**WHITE** = `Color(1, 1, 1, 1)` [🔗](#class-color-constant-white)

White color.

**WHITE\_SMOKE** = `Color(0.9607843, 0.9607843, 0.9607843, 1)` [🔗](#class-color-constant-white-smoke)

White smoke color.

**YELLOW** = `Color(1, 1, 0, 1)` [🔗](#class-color-constant-yellow)

Yellow color.

**YELLOW\_GREEN** = `Color(0.6039216, 0.8039216, 0.19607843, 1)` [🔗](#class-color-constant-yellow-green)

Yellow green color.

* * *

## Property Descriptions

[float](class_float.md#class-float) **a** = `1.0` [🔗](#class-color-property-a)

The color's alpha component, typically on the range of 0 to 1. A value of 0 means that the color is fully transparent. A value of 1 means that the color is fully opaque.

**Note:** The alpha channel is always stored with linear encoding, regardless of the color space of the other color channels. The [linear\_to\_srgb()](#class-color-method-linear-to-srgb) and [srgb\_to\_linear()](#class-color-method-srgb-to-linear) methods do not affect the alpha channel.

* * *

[int](class_int.md#class-int) **a8** = `255` [🔗](#class-color-property-a8)

Wrapper for [a](#class-color-property-a) that uses the range 0 to 255, instead of 0 to 1.

* * *

[float](class_float.md#class-float) **b** = `0.0` [🔗](#class-color-property-b)

The color's blue component, typically on the range of 0 to 1.

* * *

[int](class_int.md#class-int) **b8** = `0` [🔗](#class-color-property-b8)

Wrapper for [b](#class-color-property-b) that uses the range 0 to 255, instead of 0 to 1.

* * *

[float](class_float.md#class-float) **g** = `0.0` [🔗](#class-color-property-g)

The color's green component, typically on the range of 0 to 1.

* * *

[int](class_int.md#class-int) **g8** = `0` [🔗](#class-color-property-g8)

Wrapper for [g](#class-color-property-g) that uses the range 0 to 255, instead of 0 to 1.

* * *

[float](class_float.md#class-float) **h** = `0.0` [🔗](#class-color-property-h)

The HSV hue of this color, on the range 0 to 1.

* * *

[float](class_float.md#class-float) **ok\_hsl\_h** = `0.0` [🔗](#class-color-property-ok-hsl-h)

The OKHSL hue of this color, on the range 0 to 1.

* * *

[float](class_float.md#class-float) **ok\_hsl\_l** = `0.0` [🔗](#class-color-property-ok-hsl-l)

The OKHSL lightness of this color, on the range 0 to 1.

* * *

[float](class_float.md#class-float) **ok\_hsl\_s** = `0.0` [🔗](#class-color-property-ok-hsl-s)

The OKHSL saturation of this color, on the range 0 to 1.

* * *

[float](class_float.md#class-float) **r** = `0.0` [🔗](#class-color-property-r)

The color's red component, typically on the range of 0 to 1.

* * *

[int](class_int.md#class-int) **r8** = `0` [🔗](#class-color-property-r8)

Wrapper for [r](#class-color-property-r) that uses the range 0 to 255, instead of 0 to 1.

* * *

[float](class_float.md#class-float) **s** = `0.0` [🔗](#class-color-property-s)

The HSV saturation of this color, on the range 0 to 1.

* * *

[float](class_float.md#class-float) **v** = `0.0` [🔗](#class-color-property-v)

The HSV value (brightness) of this color, on the range 0 to 1.

* * *

## Constructor Descriptions

[Color](#class-color) **Color**() [🔗](#class-color-constructor-color)

Constructs a default **Color** from opaque black. This is the same as [BLACK](#class-color-constant-black).

**Note:** In C#, this constructs a **Color** with all of its components set to `0.0` (transparent black).

* * *

[Color](#class-color) **Color**(from: [Color](#class-color), alpha: [float](class_float.md#class-float))

Constructs a **Color** from the existing color, with [a](#class-color-property-a) set to the given `alpha` value.

GDScriptC#

```
var red = Color(Color.RED, 0.2) # 20% opaque red.

```

```
var red = new Color(Colors.Red, 0.2f); // 20% opaque red.

```

* * *

[Color](#class-color) **Color**(from: [Color](#class-color))

Constructs a **Color** as a copy of the given **Color**.

* * *

[Color](#class-color) **Color**(code: [String](class_string.md#class-string))

Constructs a **Color** either from an HTML color code or from a standardized color name. The supported color names are the same as the constants.

* * *

[Color](#class-color) **Color**(code: [String](class_string.md#class-string), alpha: [float](class_float.md#class-float))

Constructs a **Color** either from an HTML color code or from a standardized color name, with `alpha` on the range of 0.0 to 1.0. The supported color names are the same as the constants.

* * *

[Color](#class-color) **Color**(r: [float](class_float.md#class-float), g: [float](class_float.md#class-float), b: [float](class_float.md#class-float))

Constructs a **Color** from RGB values, typically between 0.0 and 1.0. [a](#class-color-property-a) is set to 1.0.

GDScriptC#

```
var color = Color(0.2, 1.0, 0.7) # Similar to `Color8(51, 255, 178, 255)`

```

```
var color = new Color(0.2f, 1.0f, 0.7f); // Similar to `Color.Color8(51, 255, 178, 255)`

```

* * *

[Color](#class-color) **Color**(r: [float](class_float.md#class-float), g: [float](class_float.md#class-float), b: [float](class_float.md#class-float), a: [float](class_float.md#class-float))

Constructs a **Color** from RGBA values, typically between 0.0 and 1.0.

GDScriptC#

```
var color = Color(0.2, 1.0, 0.7, 0.8) # Similar to `Color8(51, 255, 178, 204)`

```

```
var color = new Color(0.2f, 1.0f, 0.7f, 0.8f); // Similar to `Color.Color8(51, 255, 178, 255, 204)`

```

* * *

## Method Descriptions

[Color](#class-color) **blend**(over: [Color](#class-color)) const [🔗](#class-color-method-blend)

Returns a new color resulting from overlaying this color over the given color. In a painting program, you can imagine it as the `over` color painted over this color (including alpha).

GDScriptC#

```
var bg = Color(0.0, 1.0, 0.0, 0.5) # Green with alpha of 50%
var fg = Color(1.0, 0.0, 0.0, 0.5) # Red with alpha of 50%
var blended_color = bg.blend(fg) # Brown with alpha of 75%

```

```
var bg = new Color(0.0f, 1.0f, 0.0f, 0.5f); // Green with alpha of 50%
var fg = new Color(1.0f, 0.0f, 0.0f, 0.5f); // Red with alpha of 50%
Color blendedColor = bg.Blend(fg); // Brown with alpha of 75%

```

* * *

[Color](#class-color) **clamp**(min: [Color](#class-color) = Color(0, 0, 0, 0), max: [Color](#class-color) = Color(1, 1, 1, 1)) const [🔗](#class-color-method-clamp)

Returns a new color with all components clamped between the components of `min` and `max`, by running [@GlobalScope.clamp()](class_@globalscope.md#class-globalscope-method-clamp) on each component.

* * *

[Color](#class-color) **darkened**(amount: [float](class_float.md#class-float)) const [🔗](#class-color-method-darkened)

Returns a new color resulting from making this color darker by the specified `amount` (ratio from 0.0 to 1.0). See also [lightened()](#class-color-method-lightened).

GDScriptC#

```
var green = Color(0.0, 1.0, 0.0)
var darkgreen = green.darkened(0.2) # 20% darker than regular green

```

```
var green = new Color(0.0f, 1.0f, 0.0f);
Color darkgreen = green.Darkened(0.2f); // 20% darker than regular green

```

* * *

[Color](#class-color) **from\_hsv**(h: [float](class_float.md#class-float), s: [float](class_float.md#class-float), v: [float](class_float.md#class-float), alpha: [float](class_float.md#class-float) = 1.0) static [🔗](#class-color-method-from-hsv)

Constructs a color from an [HSV profile](https://en.wikipedia.org/wiki/HSL_and_HSV). The hue ( `h`), saturation ( `s`), and value ( `v`) are typically between 0.0 and 1.0.

GDScriptC#

```
var color = Color.from_hsv(0.58, 0.5, 0.79, 0.8)

```

```
var color = Color.FromHsv(0.58f, 0.5f, 0.79f, 0.8f);

```

* * *

[Color](#class-color) **from\_ok\_hsl**(h: [float](class_float.md#class-float), s: [float](class_float.md#class-float), l: [float](class_float.md#class-float), alpha: [float](class_float.md#class-float) = 1.0) static [🔗](#class-color-method-from-ok-hsl)

Constructs a color from an [OK HSL profile](https://bottosson.github.io/posts/colorpicker/). The hue ( `h`), saturation ( `s`), and lightness ( `l`) are typically between 0.0 and 1.0.

GDScriptC#

```
var color = Color.from_ok_hsl(0.58, 0.5, 0.79, 0.8)

```

```
var color = Color.FromOkHsl(0.58f, 0.5f, 0.79f, 0.8f);

```

* * *

[Color](#class-color) **from\_rgba8**(r8: [int](class_int.md#class-int), g8: [int](class_int.md#class-int), b8: [int](class_int.md#class-int), a8: [int](class_int.md#class-int) = 255) static [🔗](#class-color-method-from-rgba8)

Returns a **Color** constructed from red ( `r8`), green ( `g8`), blue ( `b8`), and optionally alpha ( `a8`) integer channels, each divided by `255.0` for their final value.

```
var red = Color.from_rgba8(255, 0, 0)             # Same as Color(1, 0, 0).
var dark_blue = Color.from_rgba8(0, 0, 51)        # Same as Color(0, 0, 0.2).
var my_color = Color.from_rgba8(306, 255, 0, 102) # Same as Color(1.2, 1, 0, 0.4).

```

**Note:** Due to the lower precision of [from\_rgba8()](#class-color-method-from-rgba8) compared to the standard **Color** constructor, a color created with [from\_rgba8()](#class-color-method-from-rgba8) will generally not be equal to the same color created with the standard **Color** constructor. Use [is\_equal\_approx()](#class-color-method-is-equal-approx) for comparisons to avoid issues with floating-point precision error.

* * *

[Color](#class-color) **from\_rgbe9995**(rgbe: [int](class_int.md#class-int)) static [🔗](#class-color-method-from-rgbe9995)

Decodes a **Color** from an RGBE9995 format integer. See [Image.FORMAT\_RGBE9995](class_image.md#class-image-constant-format-rgbe9995).

* * *

[Color](#class-color) **from\_string**(str: [String](class_string.md#class-string), default: [Color](#class-color)) static [🔗](#class-color-method-from-string)

Creates a **Color** from the given string, which can be either an HTML color code or a named color (case-insensitive). Returns `default` if the color cannot be inferred from the string.

If you want to create a color from String in a constant expression, use the equivalent constructor instead (i.e. `Color("color string")`).

* * *

[float](class_float.md#class-float) **get\_luminance**() const [🔗](#class-color-method-get-luminance)

Returns the light intensity of the color, as a value between 0.0 and 1.0 (inclusive). This is useful when determining light or dark color. Colors with a luminance smaller than 0.5 can be generally considered dark.

**Note:** [get\_luminance()](#class-color-method-get-luminance) relies on the color being in the linear color space to return an accurate relative luminance value. If the color is in the sRGB color space, use [srgb\_to\_linear()](#class-color-method-srgb-to-linear) to convert it to the linear color space first.

* * *

[Color](#class-color) **hex**(hex: [int](class_int.md#class-int)) static [🔗](#class-color-method-hex)

Returns the **Color** associated with the provided `hex` integer in 32-bit RGBA format (8 bits per channel). This method is the inverse of [to\_rgba32()](#class-color-method-to-rgba32).

In GDScript and C#, the [int](class_int.md#class-int) is best visualized with hexadecimal notation ( `"0x"` prefix, making it `"0xRRGGBBAA"`).

GDScriptC#

```
var red = Color.hex(0xff0000ff)
var dark_cyan = Color.hex(0x008b8bff)
var my_color = Color.hex(0xbbefd2a4)

```

```
var red = new Color(0xff0000ff);
var dark_cyan = new Color(0x008b8bff);
var my_color = new Color(0xbbefd2a4);

```

If you want to use hex notation in a constant expression, use the equivalent constructor instead (i.e. `Color(0xRRGGBBAA)`).

* * *

[Color](#class-color) **hex64**(hex: [int](class_int.md#class-int)) static [🔗](#class-color-method-hex64)

Returns the **Color** associated with the provided `hex` integer in 64-bit RGBA format (16 bits per channel). This method is the inverse of [to\_rgba64()](#class-color-method-to-rgba64).

In GDScript and C#, the [int](class_int.md#class-int) is best visualized with hexadecimal notation ( `"0x"` prefix, making it `"0xRRRRGGGGBBBBAAAA"`).

* * *

[Color](#class-color) **html**(rgba: [String](class_string.md#class-string)) static [🔗](#class-color-method-html)

Returns a new color from `rgba`, an HTML hexadecimal color string. `rgba` is not case-sensitive, and may be prefixed by a hash sign ( `#`).

`rgba` must be a valid three-digit or six-digit hexadecimal color string, and may contain an alpha channel value. If `rgba` does not contain an alpha channel value, an alpha channel value of 1.0 is applied. If `rgba` is invalid, returns an empty color.

GDScriptC#

```
var blue = Color.html("#0000ff") # blue is Color(0.0, 0.0, 1.0, 1.0)
var green = Color.html("#0F0")   # green is Color(0.0, 1.0, 0.0, 1.0)
var col = Color.html("663399cc") # col is Color(0.4, 0.2, 0.6, 0.8)

```

```
var blue = Color.FromHtml("#0000ff"); // blue is Color(0.0, 0.0, 1.0, 1.0)
var green = Color.FromHtml("#0F0");   // green is Color(0.0, 1.0, 0.0, 1.0)
var col = Color.FromHtml("663399cc"); // col is Color(0.4, 0.2, 0.6, 0.8)

```

* * *

[bool](class_bool.md#class-bool) **html\_is\_valid**(color: [String](class_string.md#class-string)) static [🔗](#class-color-method-html-is-valid)

Returns `true` if `color` is a valid HTML hexadecimal color string. The string must be a hexadecimal value (case-insensitive) of either 3, 4, 6 or 8 digits, and may be prefixed by a hash sign ( `#`). This method is identical to [String.is\_valid\_html\_color()](class_string.md#class-string-method-is-valid-html-color).

GDScriptC#

```
Color.html_is_valid("#55aaFF")   # Returns true
Color.html_is_valid("#55AAFF20") # Returns true
Color.html_is_valid("55AAFF")    # Returns true
Color.html_is_valid("#F2C")      # Returns true

Color.html_is_valid("#AABBC")    # Returns false
Color.html_is_valid("#55aaFF5")  # Returns false

```

```
Color.HtmlIsValid("#55AAFF");   // Returns true
Color.HtmlIsValid("#55AAFF20"); // Returns true
Color.HtmlIsValid("55AAFF");    // Returns true
Color.HtmlIsValid("#F2C");      // Returns true

Color.HtmlIsValid("#AABBC");    // Returns false
Color.HtmlIsValid("#55aaFF5");  // Returns false

```

* * *

[Color](#class-color) **inverted**() const [🔗](#class-color-method-inverted)

Returns the color with its [r](#class-color-property-r), [g](#class-color-property-g), and [b](#class-color-property-b) components inverted ( `(1 - r, 1 - g, 1 - b, a)`).

GDScriptC#

```
var black = Color.WHITE.inverted()
var color = Color(0.3, 0.4, 0.9)
var inverted_color = color.inverted() # Equivalent to `Color(0.7, 0.6, 0.1)`

```

```
var black = Colors.White.Inverted();
var color = new Color(0.3f, 0.4f, 0.9f);
Color invertedColor = color.Inverted(); // Equivalent to `new Color(0.7f, 0.6f, 0.1f)`

```

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(to: [Color](#class-color)) const [🔗](#class-color-method-is-equal-approx)

Returns `true` if this color and `to` are approximately equal, by running [@GlobalScope.is\_equal\_approx()](class_@globalscope.md#class-globalscope-method-is-equal-approx) on each component.

* * *

[Color](#class-color) **lerp**(to: [Color](#class-color), weight: [float](class_float.md#class-float)) const [🔗](#class-color-method-lerp)

Returns the linear interpolation between this color's components and `to`'s components. The interpolation factor `weight` should be between 0.0 and 1.0 (inclusive). See also [@GlobalScope.lerp()](class_@globalscope.md#class-globalscope-method-lerp).

GDScriptC#

```
var red = Color(1.0, 0.0, 0.0)
var aqua = Color(0.0, 1.0, 0.8)

red.lerp(aqua, 0.2) # Returns Color(0.8, 0.2, 0.16)
red.lerp(aqua, 0.5) # Returns Color(0.5, 0.5, 0.4)
red.lerp(aqua, 1.0) # Returns Color(0.0, 1.0, 0.8)

```

```
var red = new Color(1.0f, 0.0f, 0.0f);
var aqua = new Color(0.0f, 1.0f, 0.8f);

red.Lerp(aqua, 0.2f); // Returns Color(0.8f, 0.2f, 0.16f)
red.Lerp(aqua, 0.5f); // Returns Color(0.5f, 0.5f, 0.4f)
red.Lerp(aqua, 1.0f); // Returns Color(0.0f, 1.0f, 0.8f)

```

* * *

[Color](#class-color) **lightened**(amount: [float](class_float.md#class-float)) const [🔗](#class-color-method-lightened)

Returns a new color resulting from making this color lighter by the specified `amount`, which should be a ratio from 0.0 to 1.0. See also [darkened()](#class-color-method-darkened).

GDScriptC#

```
var green = Color(0.0, 1.0, 0.0)
var light_green = green.lightened(0.2) # 20% lighter than regular green

```

```
var green = new Color(0.0f, 1.0f, 0.0f);
Color lightGreen = green.Lightened(0.2f); // 20% lighter than regular green

```

* * *

[Color](#class-color) **linear\_to\_srgb**() const [🔗](#class-color-method-linear-to-srgb)

Returns the color converted to the [sRGB](https://en.wikipedia.org/wiki/SRGB) color space. This method assumes the original color is in the linear color space. See also [srgb\_to\_linear()](#class-color-method-srgb-to-linear) which performs the opposite operation.

**Note:** The color's [a](#class-color-property-a) lpha channel is not affected. The alpha channel is always stored with linear encoding, regardless of the color space of the other color channels.

* * *

[Color](#class-color) **srgb\_to\_linear**() const [🔗](#class-color-method-srgb-to-linear)

Returns the color converted to the linear color space. This method assumes the original color already is in the sRGB color space. See also [linear\_to\_srgb()](#class-color-method-linear-to-srgb) which performs the opposite operation.

**Note:** The color's [a](#class-color-property-a) lpha channel is not affected. The alpha channel is always stored with linear encoding, regardless of the color space of the other color channels.

* * *

[int](class_int.md#class-int) **to\_abgr32**() const [🔗](#class-color-method-to-abgr32)

Returns the color converted to a 32-bit integer in ABGR format (each component is 8 bits). ABGR is the reversed version of the default RGBA format.

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_abgr32()) # Prints 4281565439

```

```
var color = new Color(1.0f, 0.5f, 0.2f);
GD.Print(color.ToAbgr32()); // Prints 4281565439

```

* * *

[int](class_int.md#class-int) **to\_abgr64**() const [🔗](#class-color-method-to-abgr64)

Returns the color converted to a 64-bit integer in ABGR format (each component is 16 bits). ABGR is the reversed version of the default RGBA format.

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_abgr64()) # Prints -225178692812801

```

```
var color = new Color(1.0f, 0.5f, 0.2f);
GD.Print(color.ToAbgr64()); // Prints -225178692812801

```

* * *

[int](class_int.md#class-int) **to\_argb32**() const [🔗](#class-color-method-to-argb32)

Returns the color converted to a 32-bit integer in ARGB format (each component is 8 bits). ARGB is more compatible with DirectX.

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_argb32()) # Prints 4294934323

```

```
var color = new Color(1.0f, 0.5f, 0.2f);
GD.Print(color.ToArgb32()); // Prints 4294934323

```

* * *

[int](class_int.md#class-int) **to\_argb64**() const [🔗](#class-color-method-to-argb64)

Returns the color converted to a 64-bit integer in ARGB format (each component is 16 bits). ARGB is more compatible with DirectX.

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_argb64()) # Prints -2147470541

```

```
var color = new Color(1.0f, 0.5f, 0.2f);
GD.Print(color.ToArgb64()); // Prints -2147470541

```

* * *

[String](class_string.md#class-string) **to\_html**(with\_alpha: [bool](class_bool.md#class-bool) = true) const [🔗](#class-color-method-to-html)

Returns the color converted to an HTML hexadecimal color [String](class_string.md#class-string) in RGBA format, without the hash ( `#`) prefix.

Setting `with_alpha` to `false`, excludes alpha from the hexadecimal string, using RGB format instead of RGBA format.

GDScriptC#

```
var white = Color(1, 1, 1, 0.5)
var with_alpha = white.to_html() # Returns "ffffff7f"
var without_alpha = white.to_html(false) # Returns "ffffff"

```

```
var white = new Color(1, 1, 1, 0.5f);
string withAlpha = white.ToHtml(); // Returns "ffffff7f"
string withoutAlpha = white.ToHtml(false); // Returns "ffffff"

```

* * *

[int](class_int.md#class-int) **to\_rgba32**() const [🔗](#class-color-method-to-rgba32)

Returns the color converted to a 32-bit integer in RGBA format (each component is 8 bits). RGBA is Godot's default format. This method is the inverse of [hex()](#class-color-method-hex).

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_rgba32()) # Prints 4286526463

```

```
var color = new Color(1, 0.5f, 0.2f);
GD.Print(color.ToRgba32()); // Prints 4286526463

```

* * *

[int](class_int.md#class-int) **to\_rgba64**() const [🔗](#class-color-method-to-rgba64)

Returns the color converted to a 64-bit integer in RGBA format (each component is 16 bits). RGBA is Godot's default format. This method is the inverse of [hex64()](#class-color-method-hex64).

GDScriptC#

```
var color = Color(1, 0.5, 0.2)
print(color.to_rgba64()) # Prints -140736629309441

```

```
var color = new Color(1, 0.5f, 0.2f);
GD.Print(color.ToRgba64()); // Prints -140736629309441

```

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Color](#class-color)) [🔗](#class-color-operator-neq-color)

Returns `true` if the colors are not exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-color-method-is-equal-approx) instead, which is more reliable.

* * *

[Color](#class-color) **operator \***(right: [Color](#class-color)) [🔗](#class-color-operator-mul-color)

Multiplies each component of the **Color** by the components of the given **Color**.

* * *

[Color](#class-color) **operator \***(right: [float](class_float.md#class-float)) [🔗](#class-color-operator-mul-float)

Multiplies each component of the **Color** by the given [float](class_float.md#class-float).

* * *

[Color](#class-color) **operator \***(right: [int](class_int.md#class-int)) [🔗](#class-color-operator-mul-int)

Multiplies each component of the **Color** by the given [int](class_int.md#class-int).

* * *

[Color](#class-color) **operator +**(right: [Color](#class-color)) [🔗](#class-color-operator-sum-color)

Adds each component of the **Color** with the components of the given **Color**.

* * *

[Color](#class-color) **operator -**(right: [Color](#class-color)) [🔗](#class-color-operator-dif-color)

Subtracts each component of the **Color** by the components of the given **Color**.

* * *

[Color](#class-color) **operator /**(right: [Color](#class-color)) [🔗](#class-color-operator-div-color)

Divides each component of the **Color** by the components of the given **Color**.

* * *

[Color](#class-color) **operator /**(right: [float](class_float.md#class-float)) [🔗](#class-color-operator-div-float)

Divides each component of the **Color** by the given [float](class_float.md#class-float).

* * *

[Color](#class-color) **operator /**(right: [int](class_int.md#class-int)) [🔗](#class-color-operator-div-int)

Divides each component of the **Color** by the given [int](class_int.md#class-int).

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Color](#class-color)) [🔗](#class-color-operator-eq-color)

Returns `true` if the colors are exactly equal.

**Note:** Due to floating-point precision errors, consider using [is\_equal\_approx()](#class-color-method-is-equal-approx) instead, which is more reliable.

* * *

[float](class_float.md#class-float) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-color-operator-idx-int)

Access color components using their index. `[0]` is equivalent to [r](#class-color-property-r), `[1]` is equivalent to [g](#class-color-property-g), `[2]` is equivalent to [b](#class-color-property-b), and `[3]` is equivalent to [a](#class-color-property-a).

* * *

[Color](#class-color) **operator unary+**() [🔗](#class-color-operator-unplus)

Returns the same value as if the `+` was not there. Unary `+` does nothing, but sometimes it can make your code more readable.

* * *

[Color](#class-color) **operator unary-**() [🔗](#class-color-operator-unminus)

Inverts the given color. This is equivalent to `Color.WHITE - c` or `Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)`. Unlike with [inverted()](#class-color-method-inverted), the [a](#class-color-property-a) component is inverted, too.

[Previous](class_callable.md "Callable") [Next](class_dictionary.md "Dictionary")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_callable.md "Callable") [Next](class_dictionary.md "Dictionary")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).