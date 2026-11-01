---
title: MobileVRInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_mobilevrinterface.html
crawled_at: "2026-08-13T10:18:11+12:00"
content_hash: 6546cb288f262a240ff98e6855c5200b554253ef49585fa75ae65b38fea1e9a3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - MobileVRInterface

* * *

# MobileVRInterface

**Inherits:** [XRInterface](class_xrinterface.md#class-xrinterface) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Generic mobile VR implementation.

## Description

This is a generic mobile VR implementation where you need to provide details about the phone and HMD used. It does not rely on any existing framework. This is the most basic interface we have. For the best effect, you need a mobile phone with a gyroscope and accelerometer.

Note that even though there is no positional tracking, the camera will assume the headset is at a height of 1.85 meters. You can change this by setting [eye\_height](#class-mobilevrinterface-property-eye-height).

You can initialize this interface as follows:

```
var interface = XRServer.find_interface("Native mobile")
if interface and interface.initialize():
    get_viewport().use_xr = true

```

**Note:** For Android, [ProjectSettings.input\_devices/sensors/enable\_accelerometer](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-accelerometer), [ProjectSettings.input\_devices/sensors/enable\_gravity](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-gravity), [ProjectSettings.input\_devices/sensors/enable\_gyroscope](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-gyroscope) and [ProjectSettings.input\_devices/sensors/enable\_magnetometer](class_projectsettings.md#class-projectsettings-property-input-devices-sensors-enable-magnetometer) must be enabled.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [display\_to\_lens](#class-mobilevrinterface-property-display-to-lens) | `4.0` |
| [float](class_float.md#class-float) | [display\_width](#class-mobilevrinterface-property-display-width) | `14.5` |
| [float](class_float.md#class-float) | [eye\_height](#class-mobilevrinterface-property-eye-height) | `1.85` |
| [float](class_float.md#class-float) | [iod](#class-mobilevrinterface-property-iod) | `6.0` |
| [float](class_float.md#class-float) | [k1](#class-mobilevrinterface-property-k1) | `0.215` |
| [float](class_float.md#class-float) | [k2](#class-mobilevrinterface-property-k2) | `0.215` |
| [Rect2](class_rect2.md#class-rect2) | [offset\_rect](#class-mobilevrinterface-property-offset-rect) | `Rect2(0, 0, 1, 1)` |
| [float](class_float.md#class-float) | [oversample](#class-mobilevrinterface-property-oversample) | `1.5` |
| [float](class_float.md#class-float) | [vrs\_min\_radius](#class-mobilevrinterface-property-vrs-min-radius) | `20.0` |
| [float](class_float.md#class-float) | [vrs\_strength](#class-mobilevrinterface-property-vrs-strength) | `1.0` |
| [PlayAreaMode](class_xrinterface.md#enum-xrinterface-playareamode) | xr\_play\_area\_mode | `1` (overrides [XRInterface](class_xrinterface.md#class-xrinterface-property-xr-play-area-mode)) |

* * *

## Property Descriptions

[float](class_float.md#class-float) **display\_to\_lens** = `4.0` [🔗](#class-mobilevrinterface-property-display-to-lens)

- void **set\_display\_to\_lens**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_display\_to\_lens**()


The distance between the display and the lenses inside of the device in centimeters.

* * *

[float](class_float.md#class-float) **display\_width** = `14.5` [🔗](#class-mobilevrinterface-property-display-width)

- void **set\_display\_width**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_display\_width**()


The width of the display in centimeters.

* * *

[float](class_float.md#class-float) **eye\_height** = `1.85` [🔗](#class-mobilevrinterface-property-eye-height)

- void **set\_eye\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_eye\_height**()


The height at which the camera is placed in relation to the ground (i.e. [XROrigin3D](class_xrorigin3d.md#class-xrorigin3d) node).

* * *

[float](class_float.md#class-float) **iod** = `6.0` [🔗](#class-mobilevrinterface-property-iod)

- void **set\_iod**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_iod**()


The interocular distance, also known as the interpupillary distance. The distance between the pupils of the left and right eye.

* * *

[float](class_float.md#class-float) **k1** = `0.215` [🔗](#class-mobilevrinterface-property-k1)

- void **set\_k1**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_k1**()


The k1 lens factor is one of the two constants that define the strength of the lens used and directly influences the lens distortion effect.

* * *

[float](class_float.md#class-float) **k2** = `0.215` [🔗](#class-mobilevrinterface-property-k2)

- void **set\_k2**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_k2**()


The k2 lens factor, see k1.

* * *

[Rect2](class_rect2.md#class-rect2) **offset\_rect** = `Rect2(0, 0, 1, 1)` [🔗](#class-mobilevrinterface-property-offset-rect)

- void **set\_offset\_rect**(value: [Rect2](class_rect2.md#class-rect2))

- [Rect2](class_rect2.md#class-rect2) **get\_offset\_rect**()


Set the offset rect relative to the area being rendered. A length of 1 represents the whole rendering area on that axis.

* * *

[float](class_float.md#class-float) **oversample** = `1.5` [🔗](#class-mobilevrinterface-property-oversample)

- void **set\_oversample**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_oversample**()


The oversample setting. Because of the lens distortion we have to render our buffers at a higher resolution then the screen can natively handle. A value between 1.5 and 2.0 often provides good results but at the cost of performance.

* * *

[float](class_float.md#class-float) **vrs\_min\_radius** = `20.0` [🔗](#class-mobilevrinterface-property-vrs-min-radius)

- void **set\_vrs\_min\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_min\_radius**()


The minimum radius around the focal point where full quality is guaranteed if VRS is used as a percentage of screen size.

**Note:** Mobile and Forward+ renderers only. Requires [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to be set to [Viewport.VRS\_XR](class_viewport.md#class-viewport-constant-vrs-xr).

* * *

[float](class_float.md#class-float) **vrs\_strength** = `1.0` [🔗](#class-mobilevrinterface-property-vrs-strength)

- void **set\_vrs\_strength**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_vrs\_strength**()


The strength used to calculate the VRS density map. The greater this value, the more noticeable VRS is. This improves performance at the cost of quality.

**Note:** Mobile and Forward+ renderers only. Requires [Viewport.vrs\_mode](class_viewport.md#class-viewport-property-vrs-mode) to be set to [Viewport.VRS\_XR](class_viewport.md#class-viewport-constant-vrs-xr).

[Previous](class_methodtweener.md "MethodTweener") [Next](class_moviewriter.md "MovieWriter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_methodtweener.md "MethodTweener") [Next](class_moviewriter.md "MovieWriter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).