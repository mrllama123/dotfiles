---
title: '@GlobalScope — Godot Engine (4.5) documentation in English'
url: https://docs.godotengine.org/en/4.5/classes/class_%40globalscope.html
crawled_at: "2026-08-13T10:28:19+12:00"
content_hash: 5ae77110df44f4d4dd17437216204d4be69af3d15657035d466e36c3764817a5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - @GlobalScope

* * *

# @GlobalScope

Global scope constants and functions.

## Description

A list of global scope enumerated constants and built-in functions. This is all that resides in the globals, constants regarding error codes, keycodes, property hints, etc.

Singletons are also documented here, since they can be accessed from anywhere.

For the entries that can only be accessed from scripts written in GDScript, see [@GDScript](class_@gdscript.md#class-gdscript).

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [Random number generation](../tutorials/math/random_number_generation.md)


## Properties

|     |     |
| --- | --- |
| [AudioServer](class_audioserver.md#class-audioserver) | [AudioServer](#class-globalscope-property-audioserver) |
| [CameraServer](class_cameraserver.md#class-cameraserver) | [CameraServer](#class-globalscope-property-cameraserver) |
| [ClassDB](class_classdb.md#class-classdb) | [ClassDB](#class-globalscope-property-classdb) |
| [DisplayServer](class_displayserver.md#class-displayserver) | [DisplayServer](#class-globalscope-property-displayserver) |
| [EditorInterface](class_editorinterface.md#class-editorinterface) | [EditorInterface](#class-globalscope-property-editorinterface) |
| [Engine](class_engine.md#class-engine) | [Engine](#class-globalscope-property-engine) |
| [EngineDebugger](class_enginedebugger.md#class-enginedebugger) | [EngineDebugger](#class-globalscope-property-enginedebugger) |
| [GDExtensionManager](class_gdextensionmanager.md#class-gdextensionmanager) | [GDExtensionManager](#class-globalscope-property-gdextensionmanager) |
| [Geometry2D](class_geometry2d.md#class-geometry2d) | [Geometry2D](#class-globalscope-property-geometry2d) |
| [Geometry3D](class_geometry3d.md#class-geometry3d) | [Geometry3D](#class-globalscope-property-geometry3d) |
| [IP](class_ip.md#class-ip) | [IP](#class-globalscope-property-ip) |
| [Input](class_input.md#class-input) | [Input](#class-globalscope-property-input) |
| [InputMap](class_inputmap.md#class-inputmap) | [InputMap](#class-globalscope-property-inputmap) |
| [JavaClassWrapper](class_javaclasswrapper.md#class-javaclasswrapper) | [JavaClassWrapper](#class-globalscope-property-javaclasswrapper) |
| [JavaScriptBridge](class_javascriptbridge.md#class-javascriptbridge) | [JavaScriptBridge](#class-globalscope-property-javascriptbridge) |
| [Marshalls](class_marshalls.md#class-marshalls) | [Marshalls](#class-globalscope-property-marshalls) |
| [NativeMenu](class_nativemenu.md#class-nativemenu) | [NativeMenu](#class-globalscope-property-nativemenu) |
| [NavigationMeshGenerator](class_navigationmeshgenerator.md#class-navigationmeshgenerator) | [NavigationMeshGenerator](#class-globalscope-property-navigationmeshgenerator) |
| [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) | [NavigationServer2D](#class-globalscope-property-navigationserver2d) |
| [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d) | [NavigationServer3D](#class-globalscope-property-navigationserver3d) |
| [OS](class_os.md#class-os) | [OS](#class-globalscope-property-os) |
| [Performance](class_performance.md#class-performance) | [Performance](#class-globalscope-property-performance) |
| [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) | [PhysicsServer2D](#class-globalscope-property-physicsserver2d) |
| [PhysicsServer2DManager](class_physicsserver2dmanager.md#class-physicsserver2dmanager) | [PhysicsServer2DManager](#class-globalscope-property-physicsserver2dmanager) |
| [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) | [PhysicsServer3D](#class-globalscope-property-physicsserver3d) |
| [PhysicsServer3DManager](class_physicsserver3dmanager.md#class-physicsserver3dmanager) | [PhysicsServer3DManager](#class-globalscope-property-physicsserver3dmanager) |
| [ProjectSettings](class_projectsettings.md#class-projectsettings) | [ProjectSettings](#class-globalscope-property-projectsettings) |
| [RenderingServer](class_renderingserver.md#class-renderingserver) | [RenderingServer](#class-globalscope-property-renderingserver) |
| [ResourceLoader](class_resourceloader.md#class-resourceloader) | [ResourceLoader](#class-globalscope-property-resourceloader) |
| [ResourceSaver](class_resourcesaver.md#class-resourcesaver) | [ResourceSaver](#class-globalscope-property-resourcesaver) |
| [ResourceUID](class_resourceuid.md#class-resourceuid) | [ResourceUID](#class-globalscope-property-resourceuid) |
| [TextServerManager](class_textservermanager.md#class-textservermanager) | [TextServerManager](#class-globalscope-property-textservermanager) |
| [ThemeDB](class_themedb.md#class-themedb) | [ThemeDB](#class-globalscope-property-themedb) |
| [Time](class_time.md#class-time) | [Time](#class-globalscope-property-time) |
| [TranslationServer](class_translationserver.md#class-translationserver) | [TranslationServer](#class-globalscope-property-translationserver) |
| [WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool) | [WorkerThreadPool](#class-globalscope-property-workerthreadpool) |
| [XRServer](class_xrserver.md#class-xrserver) | [XRServer](#class-globalscope-property-xrserver) |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [abs](#class-globalscope-method-abs)(x: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [absf](#class-globalscope-method-absf)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [absi](#class-globalscope-method-absi)(x: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [acos](#class-globalscope-method-acos)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [acosh](#class-globalscope-method-acosh)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [angle\_difference](#class-globalscope-method-angle-difference)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [asin](#class-globalscope-method-asin)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [asinh](#class-globalscope-method-asinh)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [atan](#class-globalscope-method-atan)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [atan2](#class-globalscope-method-atan2)(y: [float](class_float.md#class-float), x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [atanh](#class-globalscope-method-atanh)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [bezier\_derivative](#class-globalscope-method-bezier-derivative)(start: [float](class_float.md#class-float), control\_1: [float](class_float.md#class-float), control\_2: [float](class_float.md#class-float), end: [float](class_float.md#class-float), t: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [bezier\_interpolate](#class-globalscope-method-bezier-interpolate)(start: [float](class_float.md#class-float), control\_1: [float](class_float.md#class-float), control\_2: [float](class_float.md#class-float), end: [float](class_float.md#class-float), t: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [bytes\_to\_var](#class-globalscope-method-bytes-to-var)(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Variant](class_variant.md#class-variant) | [bytes\_to\_var\_with\_objects](#class-globalscope-method-bytes-to-var-with-objects)(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Variant](class_variant.md#class-variant) | [ceil](#class-globalscope-method-ceil)(x: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [ceilf](#class-globalscope-method-ceilf)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [ceili](#class-globalscope-method-ceili)(x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [clamp](#class-globalscope-method-clamp)(value: [Variant](class_variant.md#class-variant), min: [Variant](class_variant.md#class-variant), max: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [clampf](#class-globalscope-method-clampf)(value: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [clampi](#class-globalscope-method-clampi)(value: [int](class_int.md#class-int), min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [cos](#class-globalscope-method-cos)(angle\_rad: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [cosh](#class-globalscope-method-cosh)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [cubic\_interpolate](#class-globalscope-method-cubic-interpolate)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [cubic\_interpolate\_angle](#class-globalscope-method-cubic-interpolate-angle)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [cubic\_interpolate\_angle\_in\_time](#class-globalscope-method-cubic-interpolate-angle-in-time)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float), to\_t: [float](class_float.md#class-float), pre\_t: [float](class_float.md#class-float), post\_t: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [cubic\_interpolate\_in\_time](#class-globalscope-method-cubic-interpolate-in-time)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float), to\_t: [float](class_float.md#class-float), pre\_t: [float](class_float.md#class-float), post\_t: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [db\_to\_linear](#class-globalscope-method-db-to-linear)(db: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [deg\_to\_rad](#class-globalscope-method-deg-to-rad)(deg: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [ease](#class-globalscope-method-ease)(x: [float](class_float.md#class-float), curve: [float](class_float.md#class-float)) |
| [String](class_string.md#class-string) | [error\_string](#class-globalscope-method-error-string)(error: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [exp](#class-globalscope-method-exp)(x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [floor](#class-globalscope-method-floor)(x: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [floorf](#class-globalscope-method-floorf)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [floori](#class-globalscope-method-floori)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [fmod](#class-globalscope-method-fmod)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [fposmod](#class-globalscope-method-fposmod)(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [hash](#class-globalscope-method-hash)(variable: [Variant](class_variant.md#class-variant)) |
| [Object](class_object.md#class-object) | [instance\_from\_id](#class-globalscope-method-instance-from-id)(instance\_id: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [inverse\_lerp](#class-globalscope-method-inverse-lerp)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_equal\_approx](#class-globalscope-method-is-equal-approx)(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_finite](#class-globalscope-method-is-finite)(x: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_inf](#class-globalscope-method-is-inf)(x: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_instance\_id\_valid](#class-globalscope-method-is-instance-id-valid)(id: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [is\_instance\_valid](#class-globalscope-method-is-instance-valid)(instance: [Variant](class_variant.md#class-variant)) |
| [bool](class_bool.md#class-bool) | [is\_nan](#class-globalscope-method-is-nan)(x: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [is\_same](#class-globalscope-method-is-same)(a: [Variant](class_variant.md#class-variant), b: [Variant](class_variant.md#class-variant)) |
| [bool](class_bool.md#class-bool) | [is\_zero\_approx](#class-globalscope-method-is-zero-approx)(x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [lerp](#class-globalscope-method-lerp)(from: [Variant](class_variant.md#class-variant), to: [Variant](class_variant.md#class-variant), weight: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [lerp\_angle](#class-globalscope-method-lerp-angle)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [lerpf](#class-globalscope-method-lerpf)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [linear\_to\_db](#class-globalscope-method-linear-to-db)(lin: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [log](#class-globalscope-method-log)(x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [max](#class-globalscope-method-max)(...) vararg |
| [float](class_float.md#class-float) | [maxf](#class-globalscope-method-maxf)(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [maxi](#class-globalscope-method-maxi)(a: [int](class_int.md#class-int), b: [int](class_int.md#class-int)) |
| [Variant](class_variant.md#class-variant) | [min](#class-globalscope-method-min)(...) vararg |
| [float](class_float.md#class-float) | [minf](#class-globalscope-method-minf)(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [mini](#class-globalscope-method-mini)(a: [int](class_int.md#class-int), b: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [move\_toward](#class-globalscope-method-move-toward)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), delta: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [nearest\_po2](#class-globalscope-method-nearest-po2)(value: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [pingpong](#class-globalscope-method-pingpong)(value: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [posmod](#class-globalscope-method-posmod)(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [pow](#class-globalscope-method-pow)(base: [float](class_float.md#class-float), exp: [float](class_float.md#class-float)) |
| void | [print](#class-globalscope-method-print)(...) vararg |
| void | [print\_rich](#class-globalscope-method-print-rich)(...) vararg |
| void | [print\_verbose](#class-globalscope-method-print-verbose)(...) vararg |
| void | [printerr](#class-globalscope-method-printerr)(...) vararg |
| void | [printraw](#class-globalscope-method-printraw)(...) vararg |
| void | [prints](#class-globalscope-method-prints)(...) vararg |
| void | [printt](#class-globalscope-method-printt)(...) vararg |
| void | [push\_error](#class-globalscope-method-push-error)(...) vararg |
| void | [push\_warning](#class-globalscope-method-push-warning)(...) vararg |
| [float](class_float.md#class-float) | [rad\_to\_deg](#class-globalscope-method-rad-to-deg)(rad: [float](class_float.md#class-float)) |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [rand\_from\_seed](#class-globalscope-method-rand-from-seed)(seed: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [randf](#class-globalscope-method-randf)() |
| [float](class_float.md#class-float) | [randf\_range](#class-globalscope-method-randf-range)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [randfn](#class-globalscope-method-randfn)(mean: [float](class_float.md#class-float), deviation: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [randi](#class-globalscope-method-randi)() |
| [int](class_int.md#class-int) | [randi\_range](#class-globalscope-method-randi-range)(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) |
| void | [randomize](#class-globalscope-method-randomize)() |
| [float](class_float.md#class-float) | [remap](#class-globalscope-method-remap)(value: [float](class_float.md#class-float), istart: [float](class_float.md#class-float), istop: [float](class_float.md#class-float), ostart: [float](class_float.md#class-float), ostop: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [rid\_allocate\_id](#class-globalscope-method-rid-allocate-id)() |
| [RID](class_rid.md#class-rid) | [rid\_from\_int64](#class-globalscope-method-rid-from-int64)(base: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [rotate\_toward](#class-globalscope-method-rotate-toward)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), delta: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [round](#class-globalscope-method-round)(x: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [roundf](#class-globalscope-method-roundf)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [roundi](#class-globalscope-method-roundi)(x: [float](class_float.md#class-float)) |
| void | [seed](#class-globalscope-method-seed)(base: [int](class_int.md#class-int)) |
| [Variant](class_variant.md#class-variant) | [sign](#class-globalscope-method-sign)(x: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [signf](#class-globalscope-method-signf)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [signi](#class-globalscope-method-signi)(x: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [sin](#class-globalscope-method-sin)(angle\_rad: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [sinh](#class-globalscope-method-sinh)(x: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [smoothstep](#class-globalscope-method-smoothstep)(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [snapped](#class-globalscope-method-snapped)(x: [Variant](class_variant.md#class-variant), step: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [snappedf](#class-globalscope-method-snappedf)(x: [float](class_float.md#class-float), step: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [snappedi](#class-globalscope-method-snappedi)(x: [float](class_float.md#class-float), step: [int](class_int.md#class-int)) |
| [float](class_float.md#class-float) | [sqrt](#class-globalscope-method-sqrt)(x: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [step\_decimals](#class-globalscope-method-step-decimals)(x: [float](class_float.md#class-float)) |
| [String](class_string.md#class-string) | [str](#class-globalscope-method-str)(...) vararg |
| [Variant](class_variant.md#class-variant) | [str\_to\_var](#class-globalscope-method-str-to-var)(string: [String](class_string.md#class-string)) |
| [float](class_float.md#class-float) | [tan](#class-globalscope-method-tan)(angle\_rad: [float](class_float.md#class-float)) |
| [float](class_float.md#class-float) | [tanh](#class-globalscope-method-tanh)(x: [float](class_float.md#class-float)) |
| [Variant](class_variant.md#class-variant) | [type\_convert](#class-globalscope-method-type-convert)(variant: [Variant](class_variant.md#class-variant), type: [int](class_int.md#class-int)) |
| [String](class_string.md#class-string) | [type\_string](#class-globalscope-method-type-string)(type: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [typeof](#class-globalscope-method-typeof)(variable: [Variant](class_variant.md#class-variant)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [var\_to\_bytes](#class-globalscope-method-var-to-bytes)(variable: [Variant](class_variant.md#class-variant)) |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [var\_to\_bytes\_with\_objects](#class-globalscope-method-var-to-bytes-with-objects)(variable: [Variant](class_variant.md#class-variant)) |
| [String](class_string.md#class-string) | [var\_to\_str](#class-globalscope-method-var-to-str)(variable: [Variant](class_variant.md#class-variant)) |
| [Variant](class_variant.md#class-variant) | [weakref](#class-globalscope-method-weakref)(obj: [Variant](class_variant.md#class-variant)) |
| [Variant](class_variant.md#class-variant) | [wrap](#class-globalscope-method-wrap)(value: [Variant](class_variant.md#class-variant), min: [Variant](class_variant.md#class-variant), max: [Variant](class_variant.md#class-variant)) |
| [float](class_float.md#class-float) | [wrapf](#class-globalscope-method-wrapf)(value: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) |
| [int](class_int.md#class-int) | [wrapi](#class-globalscope-method-wrapi)(value: [int](class_int.md#class-int), min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) |

* * *

## Enumerations

enum **Side**: [🔗](#enum-globalscope-side)

[Side](#enum-globalscope-side) **SIDE\_LEFT** = `0`

Left side, usually used for [Control](class_control.md#class-control) or [StyleBox](class_stylebox.md#class-stylebox)-derived classes.

[Side](#enum-globalscope-side) **SIDE\_TOP** = `1`

Top side, usually used for [Control](class_control.md#class-control) or [StyleBox](class_stylebox.md#class-stylebox)-derived classes.

[Side](#enum-globalscope-side) **SIDE\_RIGHT** = `2`

Right side, usually used for [Control](class_control.md#class-control) or [StyleBox](class_stylebox.md#class-stylebox)-derived classes.

[Side](#enum-globalscope-side) **SIDE\_BOTTOM** = `3`

Bottom side, usually used for [Control](class_control.md#class-control) or [StyleBox](class_stylebox.md#class-stylebox)-derived classes.

* * *

enum **Corner**: [🔗](#enum-globalscope-corner)

[Corner](#enum-globalscope-corner) **CORNER\_TOP\_LEFT** = `0`

Top-left corner.

[Corner](#enum-globalscope-corner) **CORNER\_TOP\_RIGHT** = `1`

Top-right corner.

[Corner](#enum-globalscope-corner) **CORNER\_BOTTOM\_RIGHT** = `2`

Bottom-right corner.

[Corner](#enum-globalscope-corner) **CORNER\_BOTTOM\_LEFT** = `3`

Bottom-left corner.

* * *

enum **Orientation**: [🔗](#enum-globalscope-orientation)

[Orientation](#enum-globalscope-orientation) **VERTICAL** = `1`

General vertical alignment, usually used for [Separator](class_separator.md#class-separator), [ScrollBar](class_scrollbar.md#class-scrollbar), [Slider](class_slider.md#class-slider), etc.

[Orientation](#enum-globalscope-orientation) **HORIZONTAL** = `0`

General horizontal alignment, usually used for [Separator](class_separator.md#class-separator), [ScrollBar](class_scrollbar.md#class-scrollbar), [Slider](class_slider.md#class-slider), etc.

* * *

enum **ClockDirection**: [🔗](#enum-globalscope-clockdirection)

[ClockDirection](#enum-globalscope-clockdirection) **CLOCKWISE** = `0`

Clockwise rotation. Used by some methods (e.g. [Image.rotate\_90()](class_image.md#class-image-method-rotate-90)).

[ClockDirection](#enum-globalscope-clockdirection) **COUNTERCLOCKWISE** = `1`

Counter-clockwise rotation. Used by some methods (e.g. [Image.rotate\_90()](class_image.md#class-image-method-rotate-90)).

* * *

enum **HorizontalAlignment**: [🔗](#enum-globalscope-horizontalalignment)

[HorizontalAlignment](#enum-globalscope-horizontalalignment) **HORIZONTAL\_ALIGNMENT\_LEFT** = `0`

Horizontal left alignment, usually for text-derived classes.

[HorizontalAlignment](#enum-globalscope-horizontalalignment) **HORIZONTAL\_ALIGNMENT\_CENTER** = `1`

Horizontal center alignment, usually for text-derived classes.

[HorizontalAlignment](#enum-globalscope-horizontalalignment) **HORIZONTAL\_ALIGNMENT\_RIGHT** = `2`

Horizontal right alignment, usually for text-derived classes.

[HorizontalAlignment](#enum-globalscope-horizontalalignment) **HORIZONTAL\_ALIGNMENT\_FILL** = `3`

Expand row to fit width, usually for text-derived classes.

* * *

enum **VerticalAlignment**: [🔗](#enum-globalscope-verticalalignment)

[VerticalAlignment](#enum-globalscope-verticalalignment) **VERTICAL\_ALIGNMENT\_TOP** = `0`

Vertical top alignment, usually for text-derived classes.

[VerticalAlignment](#enum-globalscope-verticalalignment) **VERTICAL\_ALIGNMENT\_CENTER** = `1`

Vertical center alignment, usually for text-derived classes.

[VerticalAlignment](#enum-globalscope-verticalalignment) **VERTICAL\_ALIGNMENT\_BOTTOM** = `2`

Vertical bottom alignment, usually for text-derived classes.

[VerticalAlignment](#enum-globalscope-verticalalignment) **VERTICAL\_ALIGNMENT\_FILL** = `3`

Expand rows to fit height, usually for text-derived classes.

* * *

enum **InlineAlignment**: [🔗](#enum-globalscope-inlinealignment)

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TOP\_TO** = `0`

Aligns the top of the inline object (e.g. image, table) to the position of the text specified by `INLINE_ALIGNMENT_TO_*` constant.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_CENTER\_TO** = `1`

Aligns the center of the inline object (e.g. image, table) to the position of the text specified by `INLINE_ALIGNMENT_TO_*` constant.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_BASELINE\_TO** = `3`

Aligns the baseline (user defined) of the inline object (e.g. image, table) to the position of the text specified by `INLINE_ALIGNMENT_TO_*` constant.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_BOTTOM\_TO** = `2`

Aligns the bottom of the inline object (e.g. image, table) to the position of the text specified by `INLINE_ALIGNMENT_TO_*` constant.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TO\_TOP** = `0`

Aligns the position of the inline object (e.g. image, table) specified by `INLINE_ALIGNMENT_*_TO` constant to the top of the text.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TO\_CENTER** = `4`

Aligns the position of the inline object (e.g. image, table) specified by `INLINE_ALIGNMENT_*_TO` constant to the center of the text.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TO\_BASELINE** = `8`

Aligns the position of the inline object (e.g. image, table) specified by `INLINE_ALIGNMENT_*_TO` constant to the baseline of the text.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TO\_BOTTOM** = `12`

Aligns inline object (e.g. image, table) to the bottom of the text.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TOP** = `0`

Aligns top of the inline object (e.g. image, table) to the top of the text. Equivalent to `INLINE_ALIGNMENT_TOP_TO | INLINE_ALIGNMENT_TO_TOP`.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_CENTER** = `5`

Aligns center of the inline object (e.g. image, table) to the center of the text. Equivalent to `INLINE_ALIGNMENT_CENTER_TO | INLINE_ALIGNMENT_TO_CENTER`.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_BOTTOM** = `14`

Aligns bottom of the inline object (e.g. image, table) to the bottom of the text. Equivalent to `INLINE_ALIGNMENT_BOTTOM_TO | INLINE_ALIGNMENT_TO_BOTTOM`.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_IMAGE\_MASK** = `3`

A bit mask for `INLINE_ALIGNMENT_*_TO` alignment constants.

[InlineAlignment](#enum-globalscope-inlinealignment) **INLINE\_ALIGNMENT\_TEXT\_MASK** = `12`

A bit mask for `INLINE_ALIGNMENT_TO_*` alignment constants.

* * *

enum **EulerOrder**: [🔗](#enum-globalscope-eulerorder)

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_XYZ** = `0`

Specifies that Euler angles should be in XYZ order. When composing, the order is X, Y, Z. When decomposing, the order is reversed, first Z, then Y, and X last.

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_XZY** = `1`

Specifies that Euler angles should be in XZY order. When composing, the order is X, Z, Y. When decomposing, the order is reversed, first Y, then Z, and X last.

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_YXZ** = `2`

Specifies that Euler angles should be in YXZ order. When composing, the order is Y, X, Z. When decomposing, the order is reversed, first Z, then X, and Y last.

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_YZX** = `3`

Specifies that Euler angles should be in YZX order. When composing, the order is Y, Z, X. When decomposing, the order is reversed, first X, then Z, and Y last.

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_ZXY** = `4`

Specifies that Euler angles should be in ZXY order. When composing, the order is Z, X, Y. When decomposing, the order is reversed, first Y, then X, and Z last.

[EulerOrder](#enum-globalscope-eulerorder) **EULER\_ORDER\_ZYX** = `5`

Specifies that Euler angles should be in ZYX order. When composing, the order is Z, Y, X. When decomposing, the order is reversed, first X, then Y, and Z last.

* * *

enum **Key**: [🔗](#enum-globalscope-key)

[Key](#enum-globalscope-key) **KEY\_NONE** = `0`

Enum value which doesn't correspond to any key. This is used to initialize [Key](#enum-globalscope-key) properties with a generic state.

[Key](#enum-globalscope-key) **KEY\_SPECIAL** = `4194304`

Keycodes with this bit applied are non-printable.

[Key](#enum-globalscope-key) **KEY\_ESCAPE** = `4194305`

Escape key.

[Key](#enum-globalscope-key) **KEY\_TAB** = `4194306`

Tab key.

[Key](#enum-globalscope-key) **KEY\_BACKTAB** = `4194307`

Shift + Tab key.

[Key](#enum-globalscope-key) **KEY\_BACKSPACE** = `4194308`

Backspace key.

[Key](#enum-globalscope-key) **KEY\_ENTER** = `4194309`

Return key (on the main keyboard).

[Key](#enum-globalscope-key) **KEY\_KP\_ENTER** = `4194310`

Enter key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_INSERT** = `4194311`

Insert key.

[Key](#enum-globalscope-key) **KEY\_DELETE** = `4194312`

Delete key.

[Key](#enum-globalscope-key) **KEY\_PAUSE** = `4194313`

Pause key.

[Key](#enum-globalscope-key) **KEY\_PRINT** = `4194314`

Print Screen key.

[Key](#enum-globalscope-key) **KEY\_SYSREQ** = `4194315`

System Request key.

[Key](#enum-globalscope-key) **KEY\_CLEAR** = `4194316`

Clear key.

[Key](#enum-globalscope-key) **KEY\_HOME** = `4194317`

Home key.

[Key](#enum-globalscope-key) **KEY\_END** = `4194318`

End key.

[Key](#enum-globalscope-key) **KEY\_LEFT** = `4194319`

Left arrow key.

[Key](#enum-globalscope-key) **KEY\_UP** = `4194320`

Up arrow key.

[Key](#enum-globalscope-key) **KEY\_RIGHT** = `4194321`

Right arrow key.

[Key](#enum-globalscope-key) **KEY\_DOWN** = `4194322`

Down arrow key.

[Key](#enum-globalscope-key) **KEY\_PAGEUP** = `4194323`

Page Up key.

[Key](#enum-globalscope-key) **KEY\_PAGEDOWN** = `4194324`

Page Down key.

[Key](#enum-globalscope-key) **KEY\_SHIFT** = `4194325`

Shift key.

[Key](#enum-globalscope-key) **KEY\_CTRL** = `4194326`

Control key.

[Key](#enum-globalscope-key) **KEY\_META** = `4194327`

Meta key.

[Key](#enum-globalscope-key) **KEY\_ALT** = `4194328`

Alt key.

[Key](#enum-globalscope-key) **KEY\_CAPSLOCK** = `4194329`

Caps Lock key.

[Key](#enum-globalscope-key) **KEY\_NUMLOCK** = `4194330`

Num Lock key.

[Key](#enum-globalscope-key) **KEY\_SCROLLLOCK** = `4194331`

Scroll Lock key.

[Key](#enum-globalscope-key) **KEY\_F1** = `4194332`

F1 key.

[Key](#enum-globalscope-key) **KEY\_F2** = `4194333`

F2 key.

[Key](#enum-globalscope-key) **KEY\_F3** = `4194334`

F3 key.

[Key](#enum-globalscope-key) **KEY\_F4** = `4194335`

F4 key.

[Key](#enum-globalscope-key) **KEY\_F5** = `4194336`

F5 key.

[Key](#enum-globalscope-key) **KEY\_F6** = `4194337`

F6 key.

[Key](#enum-globalscope-key) **KEY\_F7** = `4194338`

F7 key.

[Key](#enum-globalscope-key) **KEY\_F8** = `4194339`

F8 key.

[Key](#enum-globalscope-key) **KEY\_F9** = `4194340`

F9 key.

[Key](#enum-globalscope-key) **KEY\_F10** = `4194341`

F10 key.

[Key](#enum-globalscope-key) **KEY\_F11** = `4194342`

F11 key.

[Key](#enum-globalscope-key) **KEY\_F12** = `4194343`

F12 key.

[Key](#enum-globalscope-key) **KEY\_F13** = `4194344`

F13 key.

[Key](#enum-globalscope-key) **KEY\_F14** = `4194345`

F14 key.

[Key](#enum-globalscope-key) **KEY\_F15** = `4194346`

F15 key.

[Key](#enum-globalscope-key) **KEY\_F16** = `4194347`

F16 key.

[Key](#enum-globalscope-key) **KEY\_F17** = `4194348`

F17 key.

[Key](#enum-globalscope-key) **KEY\_F18** = `4194349`

F18 key.

[Key](#enum-globalscope-key) **KEY\_F19** = `4194350`

F19 key.

[Key](#enum-globalscope-key) **KEY\_F20** = `4194351`

F20 key.

[Key](#enum-globalscope-key) **KEY\_F21** = `4194352`

F21 key.

[Key](#enum-globalscope-key) **KEY\_F22** = `4194353`

F22 key.

[Key](#enum-globalscope-key) **KEY\_F23** = `4194354`

F23 key.

[Key](#enum-globalscope-key) **KEY\_F24** = `4194355`

F24 key.

[Key](#enum-globalscope-key) **KEY\_F25** = `4194356`

F25 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F26** = `4194357`

F26 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F27** = `4194358`

F27 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F28** = `4194359`

F28 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F29** = `4194360`

F29 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F30** = `4194361`

F30 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F31** = `4194362`

F31 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F32** = `4194363`

F32 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F33** = `4194364`

F33 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F34** = `4194365`

F34 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_F35** = `4194366`

F35 key. Only supported on macOS and Linux due to a Windows limitation.

[Key](#enum-globalscope-key) **KEY\_KP\_MULTIPLY** = `4194433`

Multiply (\*) key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_DIVIDE** = `4194434`

Divide (/) key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_SUBTRACT** = `4194435`

Subtract (-) key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_PERIOD** = `4194436`

Period (.) key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_ADD** = `4194437`

Add (+) key on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_0** = `4194438`

Number 0 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_1** = `4194439`

Number 1 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_2** = `4194440`

Number 2 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_3** = `4194441`

Number 3 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_4** = `4194442`

Number 4 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_5** = `4194443`

Number 5 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_6** = `4194444`

Number 6 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_7** = `4194445`

Number 7 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_8** = `4194446`

Number 8 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_KP\_9** = `4194447`

Number 9 on the numeric keypad.

[Key](#enum-globalscope-key) **KEY\_MENU** = `4194370`

Context menu key.

[Key](#enum-globalscope-key) **KEY\_HYPER** = `4194371`

Hyper key. (On Linux/X11 only).

[Key](#enum-globalscope-key) **KEY\_HELP** = `4194373`

Help key.

[Key](#enum-globalscope-key) **KEY\_BACK** = `4194376`

Back key.

[Key](#enum-globalscope-key) **KEY\_FORWARD** = `4194377`

Forward key.

[Key](#enum-globalscope-key) **KEY\_STOP** = `4194378`

Media stop key.

[Key](#enum-globalscope-key) **KEY\_REFRESH** = `4194379`

Refresh key.

[Key](#enum-globalscope-key) **KEY\_VOLUMEDOWN** = `4194380`

Volume down key.

[Key](#enum-globalscope-key) **KEY\_VOLUMEMUTE** = `4194381`

Mute volume key.

[Key](#enum-globalscope-key) **KEY\_VOLUMEUP** = `4194382`

Volume up key.

[Key](#enum-globalscope-key) **KEY\_MEDIAPLAY** = `4194388`

Media play key.

[Key](#enum-globalscope-key) **KEY\_MEDIASTOP** = `4194389`

Media stop key.

[Key](#enum-globalscope-key) **KEY\_MEDIAPREVIOUS** = `4194390`

Previous song key.

[Key](#enum-globalscope-key) **KEY\_MEDIANEXT** = `4194391`

Next song key.

[Key](#enum-globalscope-key) **KEY\_MEDIARECORD** = `4194392`

Media record key.

[Key](#enum-globalscope-key) **KEY\_HOMEPAGE** = `4194393`

Home page key.

[Key](#enum-globalscope-key) **KEY\_FAVORITES** = `4194394`

Favorites key.

[Key](#enum-globalscope-key) **KEY\_SEARCH** = `4194395`

Search key.

[Key](#enum-globalscope-key) **KEY\_STANDBY** = `4194396`

Standby key.

[Key](#enum-globalscope-key) **KEY\_OPENURL** = `4194397`

Open URL / Launch Browser key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHMAIL** = `4194398`

Launch Mail key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHMEDIA** = `4194399`

Launch Media key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH0** = `4194400`

Launch Shortcut 0 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH1** = `4194401`

Launch Shortcut 1 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH2** = `4194402`

Launch Shortcut 2 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH3** = `4194403`

Launch Shortcut 3 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH4** = `4194404`

Launch Shortcut 4 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH5** = `4194405`

Launch Shortcut 5 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH6** = `4194406`

Launch Shortcut 6 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH7** = `4194407`

Launch Shortcut 7 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH8** = `4194408`

Launch Shortcut 8 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCH9** = `4194409`

Launch Shortcut 9 key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHA** = `4194410`

Launch Shortcut A key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHB** = `4194411`

Launch Shortcut B key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHC** = `4194412`

Launch Shortcut C key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHD** = `4194413`

Launch Shortcut D key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHE** = `4194414`

Launch Shortcut E key.

[Key](#enum-globalscope-key) **KEY\_LAUNCHF** = `4194415`

Launch Shortcut F key.

[Key](#enum-globalscope-key) **KEY\_GLOBE** = `4194416`

"Globe" key on Mac / iPad keyboard.

[Key](#enum-globalscope-key) **KEY\_KEYBOARD** = `4194417`

"On-screen keyboard" key on iPad keyboard.

[Key](#enum-globalscope-key) **KEY\_JIS\_EISU** = `4194418`

英数 key on Mac keyboard.

[Key](#enum-globalscope-key) **KEY\_JIS\_KANA** = `4194419`

かな key on Mac keyboard.

[Key](#enum-globalscope-key) **KEY\_UNKNOWN** = `8388607`

Unknown key.

[Key](#enum-globalscope-key) **KEY\_SPACE** = `32`

Space key.

[Key](#enum-globalscope-key) **KEY\_EXCLAM** = `33`

Exclamation mark ( `!`) key.

[Key](#enum-globalscope-key) **KEY\_QUOTEDBL** = `34`

Double quotation mark ( `"`) key.

[Key](#enum-globalscope-key) **KEY\_NUMBERSIGN** = `35`

Number sign or _hash_ ( `#`) key.

[Key](#enum-globalscope-key) **KEY\_DOLLAR** = `36`

Dollar sign ( `$`) key.

[Key](#enum-globalscope-key) **KEY\_PERCENT** = `37`

Percent sign ( `%`) key.

[Key](#enum-globalscope-key) **KEY\_AMPERSAND** = `38`

Ampersand ( `&`) key.

[Key](#enum-globalscope-key) **KEY\_APOSTROPHE** = `39`

Apostrophe ( `'`) key.

[Key](#enum-globalscope-key) **KEY\_PARENLEFT** = `40`

Left parenthesis ( `(`) key.

[Key](#enum-globalscope-key) **KEY\_PARENRIGHT** = `41`

Right parenthesis (\`\`)\`\`) key.

[Key](#enum-globalscope-key) **KEY\_ASTERISK** = `42`

Asterisk ( `*`) key.

[Key](#enum-globalscope-key) **KEY\_PLUS** = `43`

Plus ( `+`) key.

[Key](#enum-globalscope-key) **KEY\_COMMA** = `44`

Comma ( `,`) key.

[Key](#enum-globalscope-key) **KEY\_MINUS** = `45`

Minus ( `-`) key.

[Key](#enum-globalscope-key) **KEY\_PERIOD** = `46`

Period ( `.`) key.

[Key](#enum-globalscope-key) **KEY\_SLASH** = `47`

Slash ( `/`) key.

[Key](#enum-globalscope-key) **KEY\_0** = `48`

Number 0 key.

[Key](#enum-globalscope-key) **KEY\_1** = `49`

Number 1 key.

[Key](#enum-globalscope-key) **KEY\_2** = `50`

Number 2 key.

[Key](#enum-globalscope-key) **KEY\_3** = `51`

Number 3 key.

[Key](#enum-globalscope-key) **KEY\_4** = `52`

Number 4 key.

[Key](#enum-globalscope-key) **KEY\_5** = `53`

Number 5 key.

[Key](#enum-globalscope-key) **KEY\_6** = `54`

Number 6 key.

[Key](#enum-globalscope-key) **KEY\_7** = `55`

Number 7 key.

[Key](#enum-globalscope-key) **KEY\_8** = `56`

Number 8 key.

[Key](#enum-globalscope-key) **KEY\_9** = `57`

Number 9 key.

[Key](#enum-globalscope-key) **KEY\_COLON** = `58`

Colon ( `:`) key.

[Key](#enum-globalscope-key) **KEY\_SEMICOLON** = `59`

Semicolon ( `;`) key.

[Key](#enum-globalscope-key) **KEY\_LESS** = `60`

Less-than sign ( `<`) key.

[Key](#enum-globalscope-key) **KEY\_EQUAL** = `61`

Equal sign ( `=`) key.

[Key](#enum-globalscope-key) **KEY\_GREATER** = `62`

Greater-than sign ( `>`) key.

[Key](#enum-globalscope-key) **KEY\_QUESTION** = `63`

Question mark ( `?`) key.

[Key](#enum-globalscope-key) **KEY\_AT** = `64`

At sign ( `@`) key.

[Key](#enum-globalscope-key) **KEY\_A** = `65`

A key.

[Key](#enum-globalscope-key) **KEY\_B** = `66`

B key.

[Key](#enum-globalscope-key) **KEY\_C** = `67`

C key.

[Key](#enum-globalscope-key) **KEY\_D** = `68`

D key.

[Key](#enum-globalscope-key) **KEY\_E** = `69`

E key.

[Key](#enum-globalscope-key) **KEY\_F** = `70`

F key.

[Key](#enum-globalscope-key) **KEY\_G** = `71`

G key.

[Key](#enum-globalscope-key) **KEY\_H** = `72`

H key.

[Key](#enum-globalscope-key) **KEY\_I** = `73`

I key.

[Key](#enum-globalscope-key) **KEY\_J** = `74`

J key.

[Key](#enum-globalscope-key) **KEY\_K** = `75`

K key.

[Key](#enum-globalscope-key) **KEY\_L** = `76`

L key.

[Key](#enum-globalscope-key) **KEY\_M** = `77`

M key.

[Key](#enum-globalscope-key) **KEY\_N** = `78`

N key.

[Key](#enum-globalscope-key) **KEY\_O** = `79`

O key.

[Key](#enum-globalscope-key) **KEY\_P** = `80`

P key.

[Key](#enum-globalscope-key) **KEY\_Q** = `81`

Q key.

[Key](#enum-globalscope-key) **KEY\_R** = `82`

R key.

[Key](#enum-globalscope-key) **KEY\_S** = `83`

S key.

[Key](#enum-globalscope-key) **KEY\_T** = `84`

T key.

[Key](#enum-globalscope-key) **KEY\_U** = `85`

U key.

[Key](#enum-globalscope-key) **KEY\_V** = `86`

V key.

[Key](#enum-globalscope-key) **KEY\_W** = `87`

W key.

[Key](#enum-globalscope-key) **KEY\_X** = `88`

X key.

[Key](#enum-globalscope-key) **KEY\_Y** = `89`

Y key.

[Key](#enum-globalscope-key) **KEY\_Z** = `90`

Z key.

[Key](#enum-globalscope-key) **KEY\_BRACKETLEFT** = `91`

Left bracket ( `[lb]`) key.

[Key](#enum-globalscope-key) **KEY\_BACKSLASH** = `92`

Backslash ( `\`) key.

[Key](#enum-globalscope-key) **KEY\_BRACKETRIGHT** = `93`

Right bracket ( `[rb]`) key.

[Key](#enum-globalscope-key) **KEY\_ASCIICIRCUM** = `94`

Caret ( `^`) key.

[Key](#enum-globalscope-key) **KEY\_UNDERSCORE** = `95`

Underscore ( `_`) key.

[Key](#enum-globalscope-key) **KEY\_QUOTELEFT** = `96`

Backtick ( `` ` ``) key.

[Key](#enum-globalscope-key) **KEY\_BRACELEFT** = `123`

Left brace ( `{`) key.

[Key](#enum-globalscope-key) **KEY\_BAR** = `124`

Vertical bar or _pipe_ ( `|`) key.

[Key](#enum-globalscope-key) **KEY\_BRACERIGHT** = `125`

Right brace ( `}`) key.

[Key](#enum-globalscope-key) **KEY\_ASCIITILDE** = `126`

Tilde ( `~`) key.

[Key](#enum-globalscope-key) **KEY\_YEN** = `165`

Yen symbol ( `¥`) key.

[Key](#enum-globalscope-key) **KEY\_SECTION** = `167`

Section sign ( `§`) key.

* * *

flags **KeyModifierMask**: [🔗](#enum-globalscope-keymodifiermask)

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_CODE\_MASK** = `8388607`

Key Code mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MODIFIER\_MASK** = `2130706432`

Modifier key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_CMD\_OR\_CTRL** = `16777216`

Automatically remapped to [KEY\_META](#class-globalscope-constant-key-meta) on macOS and [KEY\_CTRL](#class-globalscope-constant-key-ctrl) on other platforms, this mask is never set in the actual events, and should be used for key mapping only.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_SHIFT** = `33554432`

Shift key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_ALT** = `67108864`

Alt or Option (on macOS) key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_META** = `134217728`

Command (on macOS) or Meta/Windows key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_CTRL** = `268435456`

Control key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_KPAD** = `536870912`

Keypad key mask.

[KeyModifierMask](#enum-globalscope-keymodifiermask) **KEY\_MASK\_GROUP\_SWITCH** = `1073741824`

Group Switch key mask.

* * *

enum **KeyLocation**: [🔗](#enum-globalscope-keylocation)

[KeyLocation](#enum-globalscope-keylocation) **KEY\_LOCATION\_UNSPECIFIED** = `0`

Used for keys which only appear once, or when a comparison doesn't need to differentiate the `LEFT` and `RIGHT` versions.

For example, when using [InputEvent.is\_match()](class_inputevent.md#class-inputevent-method-is-match), an event which has [KEY\_LOCATION\_UNSPECIFIED](#class-globalscope-constant-key-location-unspecified) will match any [KeyLocation](#enum-globalscope-keylocation) on the passed event.

[KeyLocation](#enum-globalscope-keylocation) **KEY\_LOCATION\_LEFT** = `1`

A key which is to the left of its twin.

[KeyLocation](#enum-globalscope-keylocation) **KEY\_LOCATION\_RIGHT** = `2`

A key which is to the right of its twin.

* * *

enum **MouseButton**: [🔗](#enum-globalscope-mousebutton)

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_NONE** = `0`

Enum value which doesn't correspond to any mouse button. This is used to initialize [MouseButton](#enum-globalscope-mousebutton) properties with a generic state.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_LEFT** = `1`

Primary mouse button, usually assigned to the left button.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_RIGHT** = `2`

Secondary mouse button, usually assigned to the right button.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_MIDDLE** = `3`

Middle mouse button.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_WHEEL\_UP** = `4`

Mouse wheel scrolling up.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_WHEEL\_DOWN** = `5`

Mouse wheel scrolling down.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_WHEEL\_LEFT** = `6`

Mouse wheel left button (only present on some mice).

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_WHEEL\_RIGHT** = `7`

Mouse wheel right button (only present on some mice).

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_XBUTTON1** = `8`

Extra mouse button 1. This is sometimes present, usually to the sides of the mouse.

[MouseButton](#enum-globalscope-mousebutton) **MOUSE\_BUTTON\_XBUTTON2** = `9`

Extra mouse button 2. This is sometimes present, usually to the sides of the mouse.

* * *

flags **MouseButtonMask**: [🔗](#enum-globalscope-mousebuttonmask)

[MouseButtonMask](#enum-globalscope-mousebuttonmask) **MOUSE\_BUTTON\_MASK\_LEFT** = `1`

Primary mouse button mask, usually for the left button.

[MouseButtonMask](#enum-globalscope-mousebuttonmask) **MOUSE\_BUTTON\_MASK\_RIGHT** = `2`

Secondary mouse button mask, usually for the right button.

[MouseButtonMask](#enum-globalscope-mousebuttonmask) **MOUSE\_BUTTON\_MASK\_MIDDLE** = `4`

Middle mouse button mask.

[MouseButtonMask](#enum-globalscope-mousebuttonmask) **MOUSE\_BUTTON\_MASK\_MB\_XBUTTON1** = `128`

Extra mouse button 1 mask.

[MouseButtonMask](#enum-globalscope-mousebuttonmask) **MOUSE\_BUTTON\_MASK\_MB\_XBUTTON2** = `256`

Extra mouse button 2 mask.

* * *

enum **JoyButton**: [🔗](#enum-globalscope-joybutton)

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_INVALID** = `-1`

An invalid game controller button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_A** = `0`

Game controller SDL button A. Corresponds to the bottom action button: Sony Cross, Xbox A, Nintendo B.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_B** = `1`

Game controller SDL button B. Corresponds to the right action button: Sony Circle, Xbox B, Nintendo A.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_X** = `2`

Game controller SDL button X. Corresponds to the left action button: Sony Square, Xbox X, Nintendo Y.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_Y** = `3`

Game controller SDL button Y. Corresponds to the top action button: Sony Triangle, Xbox Y, Nintendo X.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_BACK** = `4`

Game controller SDL back button. Corresponds to the Sony Select, Xbox Back, Nintendo - button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_GUIDE** = `5`

Game controller SDL guide button. Corresponds to the Sony PS, Xbox Home button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_START** = `6`

Game controller SDL start button. Corresponds to the Sony Options, Xbox Menu, Nintendo + button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_LEFT\_STICK** = `7`

Game controller SDL left stick button. Corresponds to the Sony L3, Xbox L/LS button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_RIGHT\_STICK** = `8`

Game controller SDL right stick button. Corresponds to the Sony R3, Xbox R/RS button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_LEFT\_SHOULDER** = `9`

Game controller SDL left shoulder button. Corresponds to the Sony L1, Xbox LB button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_RIGHT\_SHOULDER** = `10`

Game controller SDL right shoulder button. Corresponds to the Sony R1, Xbox RB button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_DPAD\_UP** = `11`

Game controller D-pad up button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_DPAD\_DOWN** = `12`

Game controller D-pad down button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_DPAD\_LEFT** = `13`

Game controller D-pad left button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_DPAD\_RIGHT** = `14`

Game controller D-pad right button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_MISC1** = `15`

Game controller SDL miscellaneous button. Corresponds to Xbox share button, PS5 microphone button, Nintendo Switch capture button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_PADDLE1** = `16`

Game controller SDL paddle 1 button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_PADDLE2** = `17`

Game controller SDL paddle 2 button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_PADDLE3** = `18`

Game controller SDL paddle 3 button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_PADDLE4** = `19`

Game controller SDL paddle 4 button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_TOUCHPAD** = `20`

Game controller SDL touchpad button.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_SDL\_MAX** = `21`

The number of SDL game controller buttons.

[JoyButton](#enum-globalscope-joybutton) **JOY\_BUTTON\_MAX** = `128`

The maximum number of game controller buttons supported by the engine. The actual limit may be lower on specific platforms:

- **Android:** Up to 36 buttons.

- **Linux:** Up to 80 buttons.

- **Windows** and **macOS:** Up to 128 buttons.


* * *

enum **JoyAxis**: [🔗](#enum-globalscope-joyaxis)

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_INVALID** = `-1`

An invalid game controller axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_LEFT\_X** = `0`

Game controller left joystick x-axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_LEFT\_Y** = `1`

Game controller left joystick y-axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_RIGHT\_X** = `2`

Game controller right joystick x-axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_RIGHT\_Y** = `3`

Game controller right joystick y-axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_TRIGGER\_LEFT** = `4`

Game controller left trigger axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_TRIGGER\_RIGHT** = `5`

Game controller right trigger axis.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_SDL\_MAX** = `6`

The number of SDL game controller axes.

[JoyAxis](#enum-globalscope-joyaxis) **JOY\_AXIS\_MAX** = `10`

The maximum number of game controller axes: OpenVR supports up to 5 Joysticks making a total of 10 axes.

* * *

enum **MIDIMessage**: [🔗](#enum-globalscope-midimessage)

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_NONE** = `0`

Does not correspond to any MIDI message. This is the default value of [InputEventMIDI.message](class_inputeventmidi.md#class-inputeventmidi-property-message).

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_NOTE\_OFF** = `8`

MIDI message sent when a note is released.

**Note:** Not all MIDI devices send this message; some may send [MIDI\_MESSAGE\_NOTE\_ON](#class-globalscope-constant-midi-message-note-on) with [InputEventMIDI.velocity](class_inputeventmidi.md#class-inputeventmidi-property-velocity) set to `0`.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_NOTE\_ON** = `9`

MIDI message sent when a note is pressed.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_AFTERTOUCH** = `10`

MIDI message sent to indicate a change in pressure while a note is being pressed down, also called aftertouch.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_CONTROL\_CHANGE** = `11`

MIDI message sent when a controller value changes. In a MIDI device, a controller is any input that doesn't play notes. These may include sliders for volume, balance, and panning, as well as switches and pedals. See the [General MIDI specification](https://en.wikipedia.org/wiki/General_MIDI#Controller_events) for a small list.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_PROGRAM\_CHANGE** = `12`

MIDI message sent when the MIDI device changes its current instrument (also called _program_ or _preset_).

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_CHANNEL\_PRESSURE** = `13`

MIDI message sent to indicate a change in pressure for the whole channel. Some MIDI devices may send this instead of [MIDI\_MESSAGE\_AFTERTOUCH](#class-globalscope-constant-midi-message-aftertouch).

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_PITCH\_BEND** = `14`

MIDI message sent when the value of the pitch bender changes, usually a wheel on the MIDI device.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_SYSTEM\_EXCLUSIVE** = `240`

MIDI system exclusive (SysEx) message. This type of message is not standardized and it's highly dependent on the MIDI device sending it.

**Note:** Getting this message's data from [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi) is not implemented.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_QUARTER\_FRAME** = `241`

MIDI message sent every quarter frame to keep connected MIDI devices synchronized. Related to [MIDI\_MESSAGE\_TIMING\_CLOCK](#class-globalscope-constant-midi-message-timing-clock).

**Note:** Getting this message's data from [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi) is not implemented.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_SONG\_POSITION\_POINTER** = `242`

MIDI message sent to jump onto a new position in the current sequence or song.

**Note:** Getting this message's data from [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi) is not implemented.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_SONG\_SELECT** = `243`

MIDI message sent to select a sequence or song to play.

**Note:** Getting this message's data from [InputEventMIDI](class_inputeventmidi.md#class-inputeventmidi) is not implemented.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_TUNE\_REQUEST** = `246`

MIDI message sent to request a tuning calibration. Used on analog synthesizers. Most modern MIDI devices do not need this message.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_TIMING\_CLOCK** = `248`

MIDI message sent 24 times after [MIDI\_MESSAGE\_QUARTER\_FRAME](#class-globalscope-constant-midi-message-quarter-frame), to keep connected MIDI devices synchronized.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_START** = `250`

MIDI message sent to start the current sequence or song from the beginning.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_CONTINUE** = `251`

MIDI message sent to resume from the point the current sequence or song was paused.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_STOP** = `252`

MIDI message sent to pause the current sequence or song.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_ACTIVE\_SENSING** = `254`

MIDI message sent repeatedly while the MIDI device is idle, to tell the receiver that the connection is alive. Most MIDI devices do not send this message.

[MIDIMessage](#enum-globalscope-midimessage) **MIDI\_MESSAGE\_SYSTEM\_RESET** = `255`

MIDI message sent to reset a MIDI device to its default state, as if it was just turned on. It should not be sent when the MIDI device is being turned on.

* * *

enum **Error**: [🔗](#enum-globalscope-error)

[Error](#enum-globalscope-error) **OK** = `0`

Methods that return [Error](#enum-globalscope-error) return [OK](#class-globalscope-constant-ok) when no error occurred.

Since [OK](#class-globalscope-constant-ok) has value `0`, and all other error constants are positive integers, it can also be used in boolean checks.

```
var error = method_that_returns_error()
if error != OK:
    printerr("Failure!")

# Or, alternatively:
if error:
    printerr("Still failing!")

```

**Note:** Many functions do not return an error code, but will print error messages to standard output.

[Error](#enum-globalscope-error) **FAILED** = `1`

Generic error.

[Error](#enum-globalscope-error) **ERR\_UNAVAILABLE** = `2`

Unavailable error.

[Error](#enum-globalscope-error) **ERR\_UNCONFIGURED** = `3`

Unconfigured error.

[Error](#enum-globalscope-error) **ERR\_UNAUTHORIZED** = `4`

Unauthorized error.

[Error](#enum-globalscope-error) **ERR\_PARAMETER\_RANGE\_ERROR** = `5`

Parameter range error.

[Error](#enum-globalscope-error) **ERR\_OUT\_OF\_MEMORY** = `6`

Out of memory (OOM) error.

[Error](#enum-globalscope-error) **ERR\_FILE\_NOT\_FOUND** = `7`

File: Not found error.

[Error](#enum-globalscope-error) **ERR\_FILE\_BAD\_DRIVE** = `8`

File: Bad drive error.

[Error](#enum-globalscope-error) **ERR\_FILE\_BAD\_PATH** = `9`

File: Bad path error.

[Error](#enum-globalscope-error) **ERR\_FILE\_NO\_PERMISSION** = `10`

File: No permission error.

[Error](#enum-globalscope-error) **ERR\_FILE\_ALREADY\_IN\_USE** = `11`

File: Already in use error.

[Error](#enum-globalscope-error) **ERR\_FILE\_CANT\_OPEN** = `12`

File: Can't open error.

[Error](#enum-globalscope-error) **ERR\_FILE\_CANT\_WRITE** = `13`

File: Can't write error.

[Error](#enum-globalscope-error) **ERR\_FILE\_CANT\_READ** = `14`

File: Can't read error.

[Error](#enum-globalscope-error) **ERR\_FILE\_UNRECOGNIZED** = `15`

File: Unrecognized error.

[Error](#enum-globalscope-error) **ERR\_FILE\_CORRUPT** = `16`

File: Corrupt error.

[Error](#enum-globalscope-error) **ERR\_FILE\_MISSING\_DEPENDENCIES** = `17`

File: Missing dependencies error.

[Error](#enum-globalscope-error) **ERR\_FILE\_EOF** = `18`

File: End of file (EOF) error.

[Error](#enum-globalscope-error) **ERR\_CANT\_OPEN** = `19`

Can't open error.

[Error](#enum-globalscope-error) **ERR\_CANT\_CREATE** = `20`

Can't create error.

[Error](#enum-globalscope-error) **ERR\_QUERY\_FAILED** = `21`

Query failed error.

[Error](#enum-globalscope-error) **ERR\_ALREADY\_IN\_USE** = `22`

Already in use error.

[Error](#enum-globalscope-error) **ERR\_LOCKED** = `23`

Locked error.

[Error](#enum-globalscope-error) **ERR\_TIMEOUT** = `24`

Timeout error.

[Error](#enum-globalscope-error) **ERR\_CANT\_CONNECT** = `25`

Can't connect error.

[Error](#enum-globalscope-error) **ERR\_CANT\_RESOLVE** = `26`

Can't resolve error.

[Error](#enum-globalscope-error) **ERR\_CONNECTION\_ERROR** = `27`

Connection error.

[Error](#enum-globalscope-error) **ERR\_CANT\_ACQUIRE\_RESOURCE** = `28`

Can't acquire resource error.

[Error](#enum-globalscope-error) **ERR\_CANT\_FORK** = `29`

Can't fork process error.

[Error](#enum-globalscope-error) **ERR\_INVALID\_DATA** = `30`

Invalid data error.

[Error](#enum-globalscope-error) **ERR\_INVALID\_PARAMETER** = `31`

Invalid parameter error.

[Error](#enum-globalscope-error) **ERR\_ALREADY\_EXISTS** = `32`

Already exists error.

[Error](#enum-globalscope-error) **ERR\_DOES\_NOT\_EXIST** = `33`

Does not exist error.

[Error](#enum-globalscope-error) **ERR\_DATABASE\_CANT\_READ** = `34`

Database: Read error.

[Error](#enum-globalscope-error) **ERR\_DATABASE\_CANT\_WRITE** = `35`

Database: Write error.

[Error](#enum-globalscope-error) **ERR\_COMPILATION\_FAILED** = `36`

Compilation failed error.

[Error](#enum-globalscope-error) **ERR\_METHOD\_NOT\_FOUND** = `37`

Method not found error.

[Error](#enum-globalscope-error) **ERR\_LINK\_FAILED** = `38`

Linking failed error.

[Error](#enum-globalscope-error) **ERR\_SCRIPT\_FAILED** = `39`

Script failed error.

[Error](#enum-globalscope-error) **ERR\_CYCLIC\_LINK** = `40`

Cycling link (import cycle) error.

[Error](#enum-globalscope-error) **ERR\_INVALID\_DECLARATION** = `41`

Invalid declaration error.

[Error](#enum-globalscope-error) **ERR\_DUPLICATE\_SYMBOL** = `42`

Duplicate symbol error.

[Error](#enum-globalscope-error) **ERR\_PARSE\_ERROR** = `43`

Parse error.

[Error](#enum-globalscope-error) **ERR\_BUSY** = `44`

Busy error.

[Error](#enum-globalscope-error) **ERR\_SKIP** = `45`

Skip error.

[Error](#enum-globalscope-error) **ERR\_HELP** = `46`

Help error. Used internally when passing `--version` or `--help` as executable options.

[Error](#enum-globalscope-error) **ERR\_BUG** = `47`

Bug error, caused by an implementation issue in the method.

**Note:** If a built-in method returns this code, please open an issue on [the GitHub Issue Tracker](https://github.com/godotengine/godot/issues).

[Error](#enum-globalscope-error) **ERR\_PRINTER\_ON\_FIRE** = `48`

Printer on fire error (This is an easter egg, no built-in methods return this error code).

* * *

enum **PropertyHint**: [🔗](#enum-globalscope-propertyhint)

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_NONE** = `0`

The property has no hint for the editor.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_RANGE** = `1`

Hints that an [int](class_int.md#class-int) or [float](class_float.md#class-float) property should be within a range specified via the hint string `"min,max"` or `"min,max,step"`. The hint string can optionally include `"or_greater"` and/or `"or_less"` to allow manual input going respectively above the max or below the min values.

**Example:** `"-360,360,1,or_greater,or_less"`.

Additionally, other keywords can be included: `"exp"` for exponential range editing, `"radians_as_degrees"` for editing radian angles in degrees (the range values are also in degrees), `"degrees"` to hint at an angle and `"hide_slider"` to hide the slider.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_ENUM** = `2`

Hints that an [int](class_int.md#class-int) or [String](class_string.md#class-string) property is an enumerated value to pick in a list specified via a hint string.

The hint string is a comma separated list of names such as `"Hello,Something,Else"`. Whitespaces are **not** removed from either end of a name. For integer properties, the first name in the list has value 0, the next 1, and so on. Explicit values can also be specified by appending `:integer` to the name, e.g. `"Zero,One,Three:3,Four,Six:6"`.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_ENUM\_SUGGESTION** = `3`

Hints that a [String](class_string.md#class-string) property can be an enumerated value to pick in a list specified via a hint string such as `"Hello,Something,Else"`.

Unlike [PROPERTY\_HINT\_ENUM](#class-globalscope-constant-property-hint-enum), a property with this hint still accepts arbitrary values and can be empty. The list of values serves to suggest possible values.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_EXP\_EASING** = `4`

Hints that a [float](class_float.md#class-float) property should be edited via an exponential easing function. The hint string can include `"attenuation"` to flip the curve horizontally and/or `"positive_only"` to exclude in/out easing and limit values to be greater than or equal to zero.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LINK** = `5`

Hints that a vector property should allow its components to be linked. For example, this allows [Vector2.x](class_vector2.md#class-vector2-property-x) and [Vector2.y](class_vector2.md#class-vector2-property-y) to be edited together.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_FLAGS** = `6`

Hints that an [int](class_int.md#class-int) property is a bitmask with named bit flags.

The hint string is a comma separated list of names such as `"Bit0,Bit1,Bit2,Bit3"`. Whitespaces are **not** removed from either end of a name. The first name in the list has value 1, the next 2, then 4, 8, 16 and so on. Explicit values can also be specified by appending `:integer` to the name, e.g. `"A:4,B:8,C:16"`. You can also combine several flags ( `"A:4,B:8,AB:12,C:16"`).

**Note:** A flag value must be at least `1` and at most `2 ** 32 - 1`.

**Note:** Unlike [PROPERTY\_HINT\_ENUM](#class-globalscope-constant-property-hint-enum), the previous explicit value is not taken into account. For the hint `"A:16,B,C"`, A is 16, B is 2, C is 4.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_2D\_RENDER** = `7`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 2D render layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_2D\_PHYSICS** = `8`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 2D physics layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_2D\_NAVIGATION** = `9`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 2D navigation layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_3D\_RENDER** = `10`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 3D render layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_3D\_PHYSICS** = `11`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 3D physics layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_3D\_NAVIGATION** = `12`

Hints that an [int](class_int.md#class-int) property is a bitmask using the optionally named 3D navigation layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LAYERS\_AVOIDANCE** = `37`

Hints that an integer property is a bitmask using the optionally named avoidance layers.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_FILE** = `13`

Hints that a [String](class_string.md#class-string) property is a path to a file. Editing it will show a file dialog for picking the path. The hint string can be a set of filters with wildcards like `"*.png,*.jpg"`. By default the file will be stored as UID whenever available. You can use [ResourceUID](class_resourceuid.md#class-resourceuid) methods to convert it back to path. For storing a raw path, use [PROPERTY\_HINT\_FILE\_PATH](#class-globalscope-constant-property-hint-file-path).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_DIR** = `14`

Hints that a [String](class_string.md#class-string) property is a path to a directory. Editing it will show a file dialog for picking the path.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_GLOBAL\_FILE** = `15`

Hints that a [String](class_string.md#class-string) property is an absolute path to a file outside the project folder. Editing it will show a file dialog for picking the path. The hint string can be a set of filters with wildcards, like `"*.png,*.jpg"`.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_GLOBAL\_DIR** = `16`

Hints that a [String](class_string.md#class-string) property is an absolute path to a directory outside the project folder. Editing it will show a file dialog for picking the path.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_RESOURCE\_TYPE** = `17`

Hints that a property is an instance of a [Resource](class_resource.md#class-resource)-derived type, optionally specified via the hint string (e.g. `"Texture2D"`). Editing it will show a popup menu of valid resource types to instantiate.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_MULTILINE\_TEXT** = `18`

Hints that a [String](class_string.md#class-string) property is text with line breaks. Editing it will show a text input field where line breaks can be typed.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_EXPRESSION** = `19`

Hints that a [String](class_string.md#class-string) property is an [Expression](class_expression.md#class-expression).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_PLACEHOLDER\_TEXT** = `20`

Hints that a [String](class_string.md#class-string) property should show a placeholder text on its input field, if empty. The hint string is the placeholder text to use.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_COLOR\_NO\_ALPHA** = `21`

Hints that a [Color](class_color.md#class-color) property should be edited without affecting its transparency ( [Color.a](class_color.md#class-color-property-a) is not editable).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_OBJECT\_ID** = `22`

Hints that the property's value is an object encoded as object ID, with its type specified in the hint string. Used by the debugger.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_TYPE\_STRING** = `23`

If a property is [String](class_string.md#class-string), hints that the property represents a particular type (class). This allows to select a type from the create dialog. The property will store the selected type as a string.

If a property is [Array](class_array.md#class-array), hints the editor how to show elements. The `hint_string` must encode nested types using `":"` and `"/"`.

If a property is [Dictionary](class_dictionary.md#class-dictionary), hints the editor how to show elements. The `hint_string` is the same as [Array](class_array.md#class-array), with a `";"` separating the key and value.

GDScriptC#

```
# Array of elem_type.
hint_string = "%d:" % [elem_type]
hint_string = "%d/%d:%s" % [elem_type, elem_hint, elem_hint_string]
# Two-dimensional array of elem_type (array of arrays of elem_type).
hint_string = "%d:%d:" % [TYPE_ARRAY, elem_type]
hint_string = "%d:%d/%d:%s" % [TYPE_ARRAY, elem_type, elem_hint, elem_hint_string]
# Three-dimensional array of elem_type (array of arrays of arrays of elem_type).
hint_string = "%d:%d:%d:" % [TYPE_ARRAY, TYPE_ARRAY, elem_type]
hint_string = "%d:%d:%d/%d:%s" % [TYPE_ARRAY, TYPE_ARRAY, elem_type, elem_hint, elem_hint_string]

```

```
// Array of elemType.
hintString = $"{elemType:D}:";
hintString = $"{elemType:}/{elemHint:D}:{elemHintString}";
// Two-dimensional array of elemType (array of arrays of elemType).
hintString = $"{Variant.Type.Array:D}:{elemType:D}:";
hintString = $"{Variant.Type.Array:D}:{elemType:D}/{elemHint:D}:{elemHintString}";
// Three-dimensional array of elemType (array of arrays of arrays of elemType).
hintString = $"{Variant.Type.Array:D}:{Variant.Type.Array:D}:{elemType:D}:";
hintString = $"{Variant.Type.Array:D}:{Variant.Type.Array:D}:{elemType:D}/{elemHint:D}:{elemHintString}";

```

**Examples:**

GDScriptC#

```
hint_string = "%d:" % [TYPE_INT] # Array of integers.
hint_string = "%d/%d:1,10,1" % [TYPE_INT, PROPERTY_HINT_RANGE] # Array of integers (in range from 1 to 10).
hint_string = "%d/%d:Zero,One,Two" % [TYPE_INT, PROPERTY_HINT_ENUM] # Array of integers (an enum).
hint_string = "%d/%d:Zero,One,Three:3,Six:6" % [TYPE_INT, PROPERTY_HINT_ENUM] # Array of integers (an enum).
hint_string = "%d/%d:*.png" % [TYPE_STRING, PROPERTY_HINT_FILE] # Array of strings (file paths).
hint_string = "%d/%d:Texture2D" % [TYPE_OBJECT, PROPERTY_HINT_RESOURCE_TYPE] # Array of textures.

hint_string = "%d:%d:" % [TYPE_ARRAY, TYPE_FLOAT] # Two-dimensional array of floats.
hint_string = "%d:%d/%d:" % [TYPE_ARRAY, TYPE_STRING, PROPERTY_HINT_MULTILINE_TEXT] # Two-dimensional array of multiline strings.
hint_string = "%d:%d/%d:-1,1,0.1" % [TYPE_ARRAY, TYPE_FLOAT, PROPERTY_HINT_RANGE] # Two-dimensional array of floats (in range from -1 to 1).
hint_string = "%d:%d/%d:Texture2D" % [TYPE_ARRAY, TYPE_OBJECT, PROPERTY_HINT_RESOURCE_TYPE] # Two-dimensional array of textures.

```

```
hintString = $"{Variant.Type.Int:D}/{PropertyHint.Range:D}:1,10,1"; // Array of integers (in range from 1 to 10).
hintString = $"{Variant.Type.Int:D}/{PropertyHint.Enum:D}:Zero,One,Two"; // Array of integers (an enum).
hintString = $"{Variant.Type.Int:D}/{PropertyHint.Enum:D}:Zero,One,Three:3,Six:6"; // Array of integers (an enum).
hintString = $"{Variant.Type.String:D}/{PropertyHint.File:D}:*.png"; // Array of strings (file paths).
hintString = $"{Variant.Type.Object:D}/{PropertyHint.ResourceType:D}:Texture2D"; // Array of textures.

hintString = $"{Variant.Type.Array:D}:{Variant.Type.Float:D}:"; // Two-dimensional array of floats.
hintString = $"{Variant.Type.Array:D}:{Variant.Type.String:D}/{PropertyHint.MultilineText:D}:"; // Two-dimensional array of multiline strings.
hintString = $"{Variant.Type.Array:D}:{Variant.Type.Float:D}/{PropertyHint.Range:D}:-1,1,0.1"; // Two-dimensional array of floats (in range from -1 to 1).
hintString = $"{Variant.Type.Array:D}:{Variant.Type.Object:D}/{PropertyHint.ResourceType:D}:Texture2D"; // Two-dimensional array of textures.

```

**Note:** The trailing colon is required for properly detecting built-in types.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_NODE\_PATH\_TO\_EDITED\_NODE** = `24`

**Deprecated:** This hint is not used by the engine.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_OBJECT\_TOO\_BIG** = `25`

Hints that an object is too big to be sent via the debugger.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_NODE\_PATH\_VALID\_TYPES** = `26`

Hints that the hint string specifies valid node types for property of type [NodePath](class_nodepath.md#class-nodepath).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_SAVE\_FILE** = `27`

Hints that a [String](class_string.md#class-string) property is a path to a file. Editing it will show a file dialog for picking the path for the file to be saved at. The dialog has access to the project's directory. The hint string can be a set of filters with wildcards like `"*.png,*.jpg"`. See also [FileDialog.filters](class_filedialog.md#class-filedialog-property-filters).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_GLOBAL\_SAVE\_FILE** = `28`

Hints that a [String](class_string.md#class-string) property is a path to a file. Editing it will show a file dialog for picking the path for the file to be saved at. The dialog has access to the entire filesystem. The hint string can be a set of filters with wildcards like `"*.png,*.jpg"`. See also [FileDialog.filters](class_filedialog.md#class-filedialog-property-filters).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_INT\_IS\_OBJECTID** = `29`

**Deprecated:** This hint is not used by the engine.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_INT\_IS\_POINTER** = `30`

Hints that an [int](class_int.md#class-int) property is a pointer. Used by GDExtension.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_ARRAY\_TYPE** = `31`

Hints that a property is an [Array](class_array.md#class-array) with the stored type specified in the hint string. The hint string contains the type of the array (e.g. `"String"`).

Use the hint string format from [PROPERTY\_HINT\_TYPE\_STRING](#class-globalscope-constant-property-hint-type-string) for more control over the stored type.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_DICTIONARY\_TYPE** = `38`

Hints that a property is a [Dictionary](class_dictionary.md#class-dictionary) with the stored types specified in the hint string. The hint string contains the key and value types separated by a semicolon (e.g. `"int;String"`).

Use the hint string format from [PROPERTY\_HINT\_TYPE\_STRING](#class-globalscope-constant-property-hint-type-string) for more control over the stored types.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LOCALE\_ID** = `32`

Hints that a string property is a locale code. Editing it will show a locale dialog for picking language and country.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_LOCALIZABLE\_STRING** = `33`

Hints that a dictionary property is string translation map. Dictionary keys are locale codes and, values are translated strings.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_NODE\_TYPE** = `34`

Hints that a property is an instance of a [Node](class_node.md#class-node)-derived type, optionally specified via the hint string (e.g. `"Node2D"`). Editing it will show a dialog for picking a node from the scene.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_HIDE\_QUATERNION\_EDIT** = `35`

Hints that a quaternion property should disable the temporary euler editor.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_PASSWORD** = `36`

Hints that a string property is a password, and every character is replaced with the secret character.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_TOOL\_BUTTON** = `39`

Hints that a [Callable](class_callable.md#class-callable) property should be displayed as a clickable button. When the button is pressed, the callable is called. The hint string specifies the button text and optionally an icon from the `"EditorIcons"` theme type.

```
"Click me!" - A button with the text "Click me!" and the default "Callable" icon.
"Click me!,ColorRect" - A button with the text "Click me!" and the "ColorRect" icon.

```

**Note:** A [Callable](class_callable.md#class-callable) cannot be properly serialized and stored in a file, so it is recommended to use [PROPERTY\_USAGE\_EDITOR](#class-globalscope-constant-property-usage-editor) instead of [PROPERTY\_USAGE\_DEFAULT](#class-globalscope-constant-property-usage-default).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_ONESHOT** = `40`

Hints that a property will be changed on its own after setting, such as [AudioStreamPlayer.playing](class_audiostreamplayer.md#class-audiostreamplayer-property-playing) or [GPUParticles3D.emitting](class_gpuparticles3d.md#class-gpuparticles3d-property-emitting).

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_GROUP\_ENABLE** = `42`

Hints that a boolean property will enable the feature associated with the group that it occurs in. The property will be displayed as a checkbox on the group header. Only works within a group or subgroup.

By default, disabling the property hides all properties in the group. Use the optional hint string `"checkbox_only"` to disable this behavior.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_INPUT\_NAME** = `43`

Hints that a [String](class_string.md#class-string) or [StringName](class_stringname.md#class-stringname) property is the name of an input action. This allows the selection of any action name from the Input Map in the Project Settings. The hint string may contain two options separated by commas:

- If it contains `"show_builtin"`, built-in input actions are included in the selection.

- If it contains `"loose_mode"`, loose mode is enabled. This allows inserting any action name even if it's not present in the input map.


[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_FILE\_PATH** = `44`

Like [PROPERTY\_HINT\_FILE](#class-globalscope-constant-property-hint-file), but the property is stored as a raw path, not UID. That means the reference will be broken if you move the file. Consider using [PROPERTY\_HINT\_FILE](#class-globalscope-constant-property-hint-file) when possible.

[PropertyHint](#enum-globalscope-propertyhint) **PROPERTY\_HINT\_MAX** = `45`

Represents the size of the [PropertyHint](#enum-globalscope-propertyhint) enum.

* * *

flags **PropertyUsageFlags**: [🔗](#enum-globalscope-propertyusageflags)

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NONE** = `0`

The property is not stored, and does not display in the editor. This is the default for non-exported properties.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_STORAGE** = `2`

The property is serialized and saved in the scene file (default for exported properties).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_EDITOR** = `4`

The property is shown in the [EditorInspector](class_editorinspector.md#class-editorinspector) (default for exported properties).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_INTERNAL** = `8`

The property is excluded from the class reference.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_CHECKABLE** = `16`

The property can be checked in the [EditorInspector](class_editorinspector.md#class-editorinspector).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_CHECKED** = `32`

The property is checked in the [EditorInspector](class_editorinspector.md#class-editorinspector).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_GROUP** = `64`

Used to group properties together in the editor. See [EditorInspector](class_editorinspector.md#class-editorinspector).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_CATEGORY** = `128`

Used to categorize properties together in the editor.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_SUBGROUP** = `256`

Used to group properties together in the editor in a subgroup (under a group). See [EditorInspector](class_editorinspector.md#class-editorinspector).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_CLASS\_IS\_BITFIELD** = `512`

The property is a bitfield, i.e. it contains multiple flags represented as bits.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NO\_INSTANCE\_STATE** = `1024`

The property does not save its state in [PackedScene](class_packedscene.md#class-packedscene).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_RESTART\_IF\_CHANGED** = `2048`

Editing the property prompts the user for restarting the editor.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_SCRIPT\_VARIABLE** = `4096`

The property is a script variable. [PROPERTY\_USAGE\_SCRIPT\_VARIABLE](#class-globalscope-constant-property-usage-script-variable) can be used to distinguish between exported script variables from built-in variables (which don't have this usage flag). By default, [PROPERTY\_USAGE\_SCRIPT\_VARIABLE](#class-globalscope-constant-property-usage-script-variable) is **not** applied to variables that are created by overriding [Object.\_get\_property\_list()](class_object.md#class-object-private-method-get-property-list) in a script.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_STORE\_IF\_NULL** = `8192`

The property value of type [Object](class_object.md#class-object) will be stored even if its value is `null`.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_UPDATE\_ALL\_IF\_MODIFIED** = `16384`

If this property is modified, all inspector fields will be refreshed.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_SCRIPT\_DEFAULT\_VALUE** = `32768`

**Deprecated:** This flag is not used by the engine.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_CLASS\_IS\_ENUM** = `65536`

The property is a variable of enum type, i.e. it only takes named integer constants from its associated enumeration.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NIL\_IS\_VARIANT** = `131072`

If property has `nil` as default value, its type will be [Variant](class_variant.md#class-variant).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_ARRAY** = `262144`

The property is an array.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_ALWAYS\_DUPLICATE** = `524288`

When duplicating a resource with [Resource.duplicate()](class_resource.md#class-resource-method-duplicate), and this flag is set on a property of that resource, the property should always be duplicated, regardless of the `subresources` bool parameter.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NEVER\_DUPLICATE** = `1048576`

When duplicating a resource with [Resource.duplicate()](class_resource.md#class-resource-method-duplicate), and this flag is set on a property of that resource, the property should never be duplicated, regardless of the `subresources` bool parameter.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_HIGH\_END\_GFX** = `2097152`

The property is only shown in the editor if modern renderers are supported (the Compatibility rendering method is excluded).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NODE\_PATH\_FROM\_SCENE\_ROOT** = `4194304`

The [NodePath](class_nodepath.md#class-nodepath) property will always be relative to the scene's root. Mostly useful for local resources.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_RESOURCE\_NOT\_PERSISTENT** = `8388608`

Use when a resource is created on the fly, i.e. the getter will always return a different instance. [ResourceSaver](class_resourcesaver.md#class-resourcesaver) needs this information to properly save such resources.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_KEYING\_INCREMENTS** = `16777216`

Inserting an animation key frame of this property will automatically increment the value, allowing to easily keyframe multiple values in a row.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_DEFERRED\_SET\_RESOURCE** = `33554432`

**Deprecated:** This flag is not used by the engine.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_EDITOR\_INSTANTIATE\_OBJECT** = `67108864`

When this property is a [Resource](class_resource.md#class-resource) and base object is a [Node](class_node.md#class-node), a resource instance will be automatically created whenever the node is created in the editor.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_EDITOR\_BASIC\_SETTING** = `134217728`

The property is considered a basic setting and will appear even when advanced mode is disabled. Used for project settings.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_READ\_ONLY** = `268435456`

The property is read-only in the [EditorInspector](class_editorinspector.md#class-editorinspector).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_SECRET** = `536870912`

An export preset property with this flag contains confidential information and is stored separately from the rest of the export preset configuration.

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_DEFAULT** = `6`

Default usage (storage and editor).

[PropertyUsageFlags](#enum-globalscope-propertyusageflags) **PROPERTY\_USAGE\_NO\_EDITOR** = `2`

Default usage but without showing the property in the editor (storage).

* * *

flags **MethodFlags**: [🔗](#enum-globalscope-methodflags)

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_NORMAL** = `1`

Flag for a normal method.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_EDITOR** = `2`

Flag for an editor method.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_CONST** = `4`

Flag for a constant method.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_VIRTUAL** = `8`

Flag for a virtual method.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_VARARG** = `16`

Flag for a method with a variable number of arguments.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_STATIC** = `32`

Flag for a static method.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_OBJECT\_CORE** = `64`

Used internally. Allows to not dump core virtual methods (such as [Object.\_notification()](class_object.md#class-object-private-method-notification)) to the JSON API.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAG\_VIRTUAL\_REQUIRED** = `128`

Flag for a virtual method that is required. In GDScript, this flag is set for abstract functions.

[MethodFlags](#enum-globalscope-methodflags) **METHOD\_FLAGS\_DEFAULT** = `1`

Default method flags (normal).

* * *

enum **Variant.Type**: [🔗](#enum-globalscope-variant-type)

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_NIL** = `0`

Variable is `null`.

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_BOOL** = `1`

Variable is of type [bool](class_bool.md#class-bool).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_INT** = `2`

Variable is of type [int](class_int.md#class-int).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_FLOAT** = `3`

Variable is of type [float](class_float.md#class-float).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_STRING** = `4`

Variable is of type [String](class_string.md#class-string).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR2** = `5`

Variable is of type [Vector2](class_vector2.md#class-vector2).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR2I** = `6`

Variable is of type [Vector2i](class_vector2i.md#class-vector2i).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_RECT2** = `7`

Variable is of type [Rect2](class_rect2.md#class-rect2).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_RECT2I** = `8`

Variable is of type [Rect2i](class_rect2i.md#class-rect2i).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR3** = `9`

Variable is of type [Vector3](class_vector3.md#class-vector3).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR3I** = `10`

Variable is of type [Vector3i](class_vector3i.md#class-vector3i).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_TRANSFORM2D** = `11`

Variable is of type [Transform2D](class_transform2d.md#class-transform2d).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR4** = `12`

Variable is of type [Vector4](class_vector4.md#class-vector4).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_VECTOR4I** = `13`

Variable is of type [Vector4i](class_vector4i.md#class-vector4i).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PLANE** = `14`

Variable is of type [Plane](class_plane.md#class-plane).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_QUATERNION** = `15`

Variable is of type [Quaternion](class_quaternion.md#class-quaternion).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_AABB** = `16`

Variable is of type [AABB](class_aabb.md#class-aabb).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_BASIS** = `17`

Variable is of type [Basis](class_basis.md#class-basis).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_TRANSFORM3D** = `18`

Variable is of type [Transform3D](class_transform3d.md#class-transform3d).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PROJECTION** = `19`

Variable is of type [Projection](class_projection.md#class-projection).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_COLOR** = `20`

Variable is of type [Color](class_color.md#class-color).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_STRING\_NAME** = `21`

Variable is of type [StringName](class_stringname.md#class-stringname).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_NODE\_PATH** = `22`

Variable is of type [NodePath](class_nodepath.md#class-nodepath).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_RID** = `23`

Variable is of type [RID](class_rid.md#class-rid).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_OBJECT** = `24`

Variable is of type [Object](class_object.md#class-object).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_CALLABLE** = `25`

Variable is of type [Callable](class_callable.md#class-callable).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_SIGNAL** = `26`

Variable is of type [Signal](class_signal.md#class-signal).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_DICTIONARY** = `27`

Variable is of type [Dictionary](class_dictionary.md#class-dictionary).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_ARRAY** = `28`

Variable is of type [Array](class_array.md#class-array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_BYTE\_ARRAY** = `29`

Variable is of type [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_INT32\_ARRAY** = `30`

Variable is of type [PackedInt32Array](class_packedint32array.md#class-packedint32array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_INT64\_ARRAY** = `31`

Variable is of type [PackedInt64Array](class_packedint64array.md#class-packedint64array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_FLOAT32\_ARRAY** = `32`

Variable is of type [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_FLOAT64\_ARRAY** = `33`

Variable is of type [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_STRING\_ARRAY** = `34`

Variable is of type [PackedStringArray](class_packedstringarray.md#class-packedstringarray).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_VECTOR2\_ARRAY** = `35`

Variable is of type [PackedVector2Array](class_packedvector2array.md#class-packedvector2array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_VECTOR3\_ARRAY** = `36`

Variable is of type [PackedVector3Array](class_packedvector3array.md#class-packedvector3array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_COLOR\_ARRAY** = `37`

Variable is of type [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_PACKED\_VECTOR4\_ARRAY** = `38`

Variable is of type [PackedVector4Array](class_packedvector4array.md#class-packedvector4array).

[Variant.Type](#enum-globalscope-variant-type) **TYPE\_MAX** = `39`

Represents the size of the [Variant.Type](#enum-globalscope-variant-type) enum.

* * *

enum **Variant.Operator**: [🔗](#enum-globalscope-variant-operator)

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_EQUAL** = `0`

Equality operator ( `==`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_NOT\_EQUAL** = `1`

Inequality operator ( `!=`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_LESS** = `2`

Less than operator ( `<`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_LESS\_EQUAL** = `3`

Less than or equal operator ( `<=`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_GREATER** = `4`

Greater than operator ( `>`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_GREATER\_EQUAL** = `5`

Greater than or equal operator ( `>=`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_ADD** = `6`

Addition operator ( `+`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_SUBTRACT** = `7`

Subtraction operator ( `-`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_MULTIPLY** = `8`

Multiplication operator ( `*`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_DIVIDE** = `9`

Division operator ( `/`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_NEGATE** = `10`

Unary negation operator ( `-`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_POSITIVE** = `11`

Unary plus operator ( `+`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_MODULE** = `12`

Remainder/modulo operator ( `%`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_POWER** = `13`

Power operator ( `**`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_SHIFT\_LEFT** = `14`

Left shift operator ( `<<`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_SHIFT\_RIGHT** = `15`

Right shift operator ( `>>`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_BIT\_AND** = `16`

Bitwise AND operator ( `&`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_BIT\_OR** = `17`

Bitwise OR operator ( `|`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_BIT\_XOR** = `18`

Bitwise XOR operator ( `^`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_BIT\_NEGATE** = `19`

Bitwise NOT operator ( `~`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_AND** = `20`

Logical AND operator ( `and` or `&&`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_OR** = `21`

Logical OR operator ( `or` or `||`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_XOR** = `22`

Logical XOR operator (not implemented in GDScript).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_NOT** = `23`

Logical NOT operator ( `not` or `!`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_IN** = `24`

Logical IN operator ( `in`).

[Variant.Operator](#enum-globalscope-variant-operator) **OP\_MAX** = `25`

Represents the size of the [Variant.Operator](#enum-globalscope-variant-operator) enum.

* * *

## Property Descriptions

[AudioServer](class_audioserver.md#class-audioserver) **AudioServer** [🔗](#class-globalscope-property-audioserver)

The [AudioServer](class_audioserver.md#class-audioserver) singleton.

* * *

[CameraServer](class_cameraserver.md#class-cameraserver) **CameraServer** [🔗](#class-globalscope-property-cameraserver)

The [CameraServer](class_cameraserver.md#class-cameraserver) singleton.

* * *

[ClassDB](class_classdb.md#class-classdb) **ClassDB** [🔗](#class-globalscope-property-classdb)

The [ClassDB](class_classdb.md#class-classdb) singleton.

* * *

[DisplayServer](class_displayserver.md#class-displayserver) **DisplayServer** [🔗](#class-globalscope-property-displayserver)

The [DisplayServer](class_displayserver.md#class-displayserver) singleton.

* * *

[EditorInterface](class_editorinterface.md#class-editorinterface) **EditorInterface** [🔗](#class-globalscope-property-editorinterface)

The [EditorInterface](class_editorinterface.md#class-editorinterface) singleton.

**Note:** Only available in editor builds.

* * *

[Engine](class_engine.md#class-engine) **Engine** [🔗](#class-globalscope-property-engine)

The [Engine](class_engine.md#class-engine) singleton.

* * *

[EngineDebugger](class_enginedebugger.md#class-enginedebugger) **EngineDebugger** [🔗](#class-globalscope-property-enginedebugger)

The [EngineDebugger](class_enginedebugger.md#class-enginedebugger) singleton.

* * *

[GDExtensionManager](class_gdextensionmanager.md#class-gdextensionmanager) **GDExtensionManager** [🔗](#class-globalscope-property-gdextensionmanager)

The [GDExtensionManager](class_gdextensionmanager.md#class-gdextensionmanager) singleton.

* * *

[Geometry2D](class_geometry2d.md#class-geometry2d) **Geometry2D** [🔗](#class-globalscope-property-geometry2d)

The [Geometry2D](class_geometry2d.md#class-geometry2d) singleton.

* * *

[Geometry3D](class_geometry3d.md#class-geometry3d) **Geometry3D** [🔗](#class-globalscope-property-geometry3d)

The [Geometry3D](class_geometry3d.md#class-geometry3d) singleton.

* * *

[IP](class_ip.md#class-ip) **IP** [🔗](#class-globalscope-property-ip)

The [IP](class_ip.md#class-ip) singleton.

* * *

[Input](class_input.md#class-input) **Input** [🔗](#class-globalscope-property-input)

The [Input](class_input.md#class-input) singleton.

* * *

[InputMap](class_inputmap.md#class-inputmap) **InputMap** [🔗](#class-globalscope-property-inputmap)

The [InputMap](class_inputmap.md#class-inputmap) singleton.

* * *

[JavaClassWrapper](class_javaclasswrapper.md#class-javaclasswrapper) **JavaClassWrapper** [🔗](#class-globalscope-property-javaclasswrapper)

The [JavaClassWrapper](class_javaclasswrapper.md#class-javaclasswrapper) singleton.

**Note:** Only implemented on Android.

* * *

[JavaScriptBridge](class_javascriptbridge.md#class-javascriptbridge) **JavaScriptBridge** [🔗](#class-globalscope-property-javascriptbridge)

The [JavaScriptBridge](class_javascriptbridge.md#class-javascriptbridge) singleton.

**Note:** Only implemented on the Web platform.

* * *

[Marshalls](class_marshalls.md#class-marshalls) **Marshalls** [🔗](#class-globalscope-property-marshalls)

The [Marshalls](class_marshalls.md#class-marshalls) singleton.

* * *

[NativeMenu](class_nativemenu.md#class-nativemenu) **NativeMenu** [🔗](#class-globalscope-property-nativemenu)

The [NativeMenu](class_nativemenu.md#class-nativemenu) singleton.

**Note:** Only implemented on macOS.

* * *

[NavigationMeshGenerator](class_navigationmeshgenerator.md#class-navigationmeshgenerator) **NavigationMeshGenerator** [🔗](#class-globalscope-property-navigationmeshgenerator)

The [NavigationMeshGenerator](class_navigationmeshgenerator.md#class-navigationmeshgenerator) singleton.

* * *

[NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) **NavigationServer2D** [🔗](#class-globalscope-property-navigationserver2d)

The [NavigationServer2D](class_navigationserver2d.md#class-navigationserver2d) singleton.

* * *

[NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d) **NavigationServer3D** [🔗](#class-globalscope-property-navigationserver3d)

The [NavigationServer3D](class_navigationserver3d.md#class-navigationserver3d) singleton.

* * *

[OS](class_os.md#class-os) **OS** [🔗](#class-globalscope-property-os)

The [OS](class_os.md#class-os) singleton.

* * *

[Performance](class_performance.md#class-performance) **Performance** [🔗](#class-globalscope-property-performance)

The [Performance](class_performance.md#class-performance) singleton.

* * *

[PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) **PhysicsServer2D** [🔗](#class-globalscope-property-physicsserver2d)

The [PhysicsServer2D](class_physicsserver2d.md#class-physicsserver2d) singleton.

* * *

[PhysicsServer2DManager](class_physicsserver2dmanager.md#class-physicsserver2dmanager) **PhysicsServer2DManager** [🔗](#class-globalscope-property-physicsserver2dmanager)

The [PhysicsServer2DManager](class_physicsserver2dmanager.md#class-physicsserver2dmanager) singleton.

* * *

[PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) **PhysicsServer3D** [🔗](#class-globalscope-property-physicsserver3d)

The [PhysicsServer3D](class_physicsserver3d.md#class-physicsserver3d) singleton.

* * *

[PhysicsServer3DManager](class_physicsserver3dmanager.md#class-physicsserver3dmanager) **PhysicsServer3DManager** [🔗](#class-globalscope-property-physicsserver3dmanager)

The [PhysicsServer3DManager](class_physicsserver3dmanager.md#class-physicsserver3dmanager) singleton.

* * *

[ProjectSettings](class_projectsettings.md#class-projectsettings) **ProjectSettings** [🔗](#class-globalscope-property-projectsettings)

The [ProjectSettings](class_projectsettings.md#class-projectsettings) singleton.

* * *

[RenderingServer](class_renderingserver.md#class-renderingserver) **RenderingServer** [🔗](#class-globalscope-property-renderingserver)

The [RenderingServer](class_renderingserver.md#class-renderingserver) singleton.

* * *

[ResourceLoader](class_resourceloader.md#class-resourceloader) **ResourceLoader** [🔗](#class-globalscope-property-resourceloader)

The [ResourceLoader](class_resourceloader.md#class-resourceloader) singleton.

* * *

[ResourceSaver](class_resourcesaver.md#class-resourcesaver) **ResourceSaver** [🔗](#class-globalscope-property-resourcesaver)

The [ResourceSaver](class_resourcesaver.md#class-resourcesaver) singleton.

* * *

[ResourceUID](class_resourceuid.md#class-resourceuid) **ResourceUID** [🔗](#class-globalscope-property-resourceuid)

The [ResourceUID](class_resourceuid.md#class-resourceuid) singleton.

* * *

[TextServerManager](class_textservermanager.md#class-textservermanager) **TextServerManager** [🔗](#class-globalscope-property-textservermanager)

The [TextServerManager](class_textservermanager.md#class-textservermanager) singleton.

* * *

[ThemeDB](class_themedb.md#class-themedb) **ThemeDB** [🔗](#class-globalscope-property-themedb)

The [ThemeDB](class_themedb.md#class-themedb) singleton.

* * *

[Time](class_time.md#class-time) **Time** [🔗](#class-globalscope-property-time)

The [Time](class_time.md#class-time) singleton.

* * *

[TranslationServer](class_translationserver.md#class-translationserver) **TranslationServer** [🔗](#class-globalscope-property-translationserver)

The [TranslationServer](class_translationserver.md#class-translationserver) singleton.

* * *

[WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool) **WorkerThreadPool** [🔗](#class-globalscope-property-workerthreadpool)

The [WorkerThreadPool](class_workerthreadpool.md#class-workerthreadpool) singleton.

* * *

[XRServer](class_xrserver.md#class-xrserver) **XRServer** [🔗](#class-globalscope-property-xrserver)

The [XRServer](class_xrserver.md#class-xrserver) singleton.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **abs**(x: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-abs)

Returns the absolute value of a [Variant](class_variant.md#class-variant) parameter `x` (i.e. non-negative value). Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
var a = abs(-1)
# a is 1

var b = abs(-1.2)
# b is 1.2

var c = abs(Vector2(-3.5, -4))
# c is (3.5, 4)

var d = abs(Vector2i(-5, -6))
# d is (5, 6)

var e = abs(Vector3(-7, 8.5, -3.8))
# e is (7, 8.5, 3.8)

var f = abs(Vector3i(-7, -8, -9))
# f is (7, 8, 9)

```

**Note:** For better type safety, use [absf()](#class-globalscope-method-absf), [absi()](#class-globalscope-method-absi), [Vector2.abs()](class_vector2.md#class-vector2-method-abs), [Vector2i.abs()](class_vector2i.md#class-vector2i-method-abs), [Vector3.abs()](class_vector3.md#class-vector3-method-abs), [Vector3i.abs()](class_vector3i.md#class-vector3i-method-abs), [Vector4.abs()](class_vector4.md#class-vector4-method-abs), or [Vector4i.abs()](class_vector4i.md#class-vector4i-method-abs).

* * *

[float](class_float.md#class-float) **absf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-absf)

Returns the absolute value of float parameter `x` (i.e. positive value).

```
# a is 1.2
var a = absf(-1.2)

```

* * *

[int](class_int.md#class-int) **absi**(x: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-absi)

Returns the absolute value of int parameter `x` (i.e. positive value).

```
# a is 1
var a = absi(-1)

```

* * *

[float](class_float.md#class-float) **acos**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-acos)

Returns the arc cosine of `x` in radians. Use to get the angle of cosine `x`. `x` will be clamped between `-1.0` and `1.0` (inclusive), in order to prevent [acos()](#class-globalscope-method-acos) from returning [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan).

```
# c is 0.523599 or 30 degrees if converted with rad_to_deg(c)
var c = acos(0.866025)

```

* * *

[float](class_float.md#class-float) **acosh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-acosh)

Returns the hyperbolic arc (also called inverse) cosine of `x`, returning a value in radians. Use it to get the angle from an angle's cosine in hyperbolic space if `x` is larger or equal to 1. For values of `x` lower than 1, it will return 0, in order to prevent [acosh()](#class-globalscope-method-acosh) from returning [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan).

```
var a = acosh(2) # Returns 1.31695789692482
cosh(a) # Returns 2

var b = acosh(-1) # Returns 0

```

* * *

[float](class_float.md#class-float) **angle\_difference**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-angle-difference)

Returns the difference between the two angles (in radians), in the range of `[-PI, +PI]`. When `from` and `to` are opposite, returns `-PI` if `from` is smaller than `to`, or `PI` otherwise.

* * *

[float](class_float.md#class-float) **asin**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-asin)

Returns the arc sine of `x` in radians. Use to get the angle of sine `x`. `x` will be clamped between `-1.0` and `1.0` (inclusive), in order to prevent [asin()](#class-globalscope-method-asin) from returning [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan).

```
# s is 0.523599 or 30 degrees if converted with rad_to_deg(s)
var s = asin(0.5)

```

* * *

[float](class_float.md#class-float) **asinh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-asinh)

Returns the hyperbolic arc (also called inverse) sine of `x`, returning a value in radians. Use it to get the angle from an angle's sine in hyperbolic space.

```
var a = asinh(0.9) # Returns 0.8088669356527824
sinh(a) # Returns 0.9

```

* * *

[float](class_float.md#class-float) **atan**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-atan)

Returns the arc tangent of `x` in radians. Use it to get the angle from an angle's tangent in trigonometry.

The method cannot know in which quadrant the angle should fall. See [atan2()](#class-globalscope-method-atan2) if you have both `y` and `x`.

```
var a = atan(0.5) # a is 0.463648

```

If `x` is between `-PI / 2` and `PI / 2` (inclusive), `atan(tan(x))` is equal to `x`.

* * *

[float](class_float.md#class-float) **atan2**(y: [float](class_float.md#class-float), x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-atan2)

Returns the arc tangent of `y/x` in radians. Use to get the angle of tangent `y/x`. To compute the value, the method takes into account the sign of both arguments in order to determine the quadrant.

Important note: The Y coordinate comes first, by convention.

```
var a = atan2(0, -1) # a is 3.141593

```

* * *

[float](class_float.md#class-float) **atanh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-atanh)

Returns the hyperbolic arc (also called inverse) tangent of `x`, returning a value in radians. Use it to get the angle from an angle's tangent in hyperbolic space if `x` is between -1 and 1 (non-inclusive).

In mathematics, the inverse hyperbolic tangent is only defined for -1 < `x` < 1 in the real set, so values equal or lower to -1 for `x` return negative [@GDScript.INF](class_@gdscript.md#class-gdscript-constant-inf) and values equal or higher than 1 return positive [@GDScript.INF](class_@gdscript.md#class-gdscript-constant-inf) in order to prevent [atanh()](#class-globalscope-method-atanh) from returning [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan).

```
var a = atanh(0.9) # Returns 1.47221948958322
tanh(a) # Returns 0.9

var b = atanh(-2) # Returns -inf
tanh(b) # Returns -1

```

* * *

[float](class_float.md#class-float) **bezier\_derivative**(start: [float](class_float.md#class-float), control\_1: [float](class_float.md#class-float), control\_2: [float](class_float.md#class-float), end: [float](class_float.md#class-float), t: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-bezier-derivative)

Returns the derivative at the given `t` on a one-dimensional [Bézier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) defined by the given `control_1`, `control_2`, and `end` points.

* * *

[float](class_float.md#class-float) **bezier\_interpolate**(start: [float](class_float.md#class-float), control\_1: [float](class_float.md#class-float), control\_2: [float](class_float.md#class-float), end: [float](class_float.md#class-float), t: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-bezier-interpolate)

Returns the point at the given `t` on a one-dimensional [Bézier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) defined by the given `control_1`, `control_2`, and `end` points.

* * *

[Variant](class_variant.md#class-variant) **bytes\_to\_var**(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-globalscope-method-bytes-to-var)

Decodes a byte array back to a [Variant](class_variant.md#class-variant) value, without decoding objects.

**Note:** If you need object deserialization, see [bytes\_to\_var\_with\_objects()](#class-globalscope-method-bytes-to-var-with-objects).

* * *

[Variant](class_variant.md#class-variant) **bytes\_to\_var\_with\_objects**(bytes: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-globalscope-method-bytes-to-var-with-objects)

Decodes a byte array back to a [Variant](class_variant.md#class-variant) value. Decoding objects is allowed.

**Warning:** Deserialized object can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats (remote code execution).

* * *

[Variant](class_variant.md#class-variant) **ceil**(x: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-ceil)

Rounds `x` upward (towards positive infinity), returning the smallest whole number that is not less than `x`. Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
var i = ceil(1.45) # i is 2.0
i = ceil(1.001)    # i is 2.0

```

See also [floor()](#class-globalscope-method-floor), [round()](#class-globalscope-method-round), and [snapped()](#class-globalscope-method-snapped).

**Note:** For better type safety, use [ceilf()](#class-globalscope-method-ceilf), [ceili()](#class-globalscope-method-ceili), [Vector2.ceil()](class_vector2.md#class-vector2-method-ceil), [Vector3.ceil()](class_vector3.md#class-vector3-method-ceil), or [Vector4.ceil()](class_vector4.md#class-vector4-method-ceil).

* * *

[float](class_float.md#class-float) **ceilf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-ceilf)

Rounds `x` upward (towards positive infinity), returning the smallest whole number that is not less than `x`.

A type-safe version of [ceil()](#class-globalscope-method-ceil), returning a [float](class_float.md#class-float).

* * *

[int](class_int.md#class-int) **ceili**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-ceili)

Rounds `x` upward (towards positive infinity), returning the smallest whole number that is not less than `x`.

A type-safe version of [ceil()](#class-globalscope-method-ceil), returning an [int](class_int.md#class-int).

* * *

[Variant](class_variant.md#class-variant) **clamp**(value: [Variant](class_variant.md#class-variant), min: [Variant](class_variant.md#class-variant), max: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-clamp)

Clamps the `value`, returning a [Variant](class_variant.md#class-variant) not less than `min` and not more than `max`. Any values that can be compared with the less than and greater than operators will work.

```
var a = clamp(-10, -1, 5)
# a is -1

var b = clamp(8.1, 0.9, 5.5)
# b is 5.5

```

**Note:** For better type safety, use [clampf()](#class-globalscope-method-clampf), [clampi()](#class-globalscope-method-clampi), [Vector2.clamp()](class_vector2.md#class-vector2-method-clamp), [Vector2i.clamp()](class_vector2i.md#class-vector2i-method-clamp), [Vector3.clamp()](class_vector3.md#class-vector3-method-clamp), [Vector3i.clamp()](class_vector3i.md#class-vector3i-method-clamp), [Vector4.clamp()](class_vector4.md#class-vector4-method-clamp), [Vector4i.clamp()](class_vector4i.md#class-vector4i-method-clamp), or [Color.clamp()](class_color.md#class-color-method-clamp) (not currently supported by this method).

**Note:** When using this on vectors it will _not_ perform component-wise clamping, and will pick `min` if `value < min` or `max` if `value > max`. To perform component-wise clamping use the methods listed above.

* * *

[float](class_float.md#class-float) **clampf**(value: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-clampf)

Clamps the `value`, returning a [float](class_float.md#class-float) not less than `min` and not more than `max`.

```
var speed = 42.1
var a = clampf(speed, 1.0, 20.5) # a is 20.5

speed = -10.0
var b = clampf(speed, -1.0, 1.0) # b is -1.0

```

* * *

[int](class_int.md#class-int) **clampi**(value: [int](class_int.md#class-int), min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-clampi)

Clamps the `value`, returning an [int](class_int.md#class-int) not less than `min` and not more than `max`.

```
var speed = 42
var a = clampi(speed, 1, 20) # a is 20

speed = -10
var b = clampi(speed, -1, 1) # b is -1

```

* * *

[float](class_float.md#class-float) **cos**(angle\_rad: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cos)

Returns the cosine of angle `angle_rad` in radians.

```
cos(PI * 2)         # Returns 1.0
cos(PI)             # Returns -1.0
cos(deg_to_rad(90)) # Returns 0.0

```

* * *

[float](class_float.md#class-float) **cosh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cosh)

Returns the hyperbolic cosine of `x` in radians.

```
print(cosh(1)) # Prints 1.543081

```

* * *

[float](class_float.md#class-float) **cubic\_interpolate**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cubic-interpolate)

Cubic interpolates between two values by the factor defined in `weight` with `pre` and `post` values.

* * *

[float](class_float.md#class-float) **cubic\_interpolate\_angle**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cubic-interpolate-angle)

Cubic interpolates between two rotation values with shortest path by the factor defined in `weight` with `pre` and `post` values. See also [lerp\_angle()](#class-globalscope-method-lerp-angle).

* * *

[float](class_float.md#class-float) **cubic\_interpolate\_angle\_in\_time**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float), to\_t: [float](class_float.md#class-float), pre\_t: [float](class_float.md#class-float), post\_t: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cubic-interpolate-angle-in-time)

Cubic interpolates between two rotation values with shortest path by the factor defined in `weight` with `pre` and `post` values. See also [lerp\_angle()](#class-globalscope-method-lerp-angle).

It can perform smoother interpolation than [cubic\_interpolate()](#class-globalscope-method-cubic-interpolate) by the time values.

* * *

[float](class_float.md#class-float) **cubic\_interpolate\_in\_time**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), pre: [float](class_float.md#class-float), post: [float](class_float.md#class-float), weight: [float](class_float.md#class-float), to\_t: [float](class_float.md#class-float), pre\_t: [float](class_float.md#class-float), post\_t: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-cubic-interpolate-in-time)

Cubic interpolates between two values by the factor defined in `weight` with `pre` and `post` values.

It can perform smoother interpolation than [cubic\_interpolate()](#class-globalscope-method-cubic-interpolate) by the time values.

* * *

[float](class_float.md#class-float) **db\_to\_linear**(db: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-db-to-linear)

Converts from decibels to linear energy (audio).

* * *

[float](class_float.md#class-float) **deg\_to\_rad**(deg: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-deg-to-rad)

Converts an angle expressed in degrees to radians.

```
var r = deg_to_rad(180) # r is 3.141593

```

* * *

[float](class_float.md#class-float) **ease**(x: [float](class_float.md#class-float), curve: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-ease)

Returns an "eased" value of `x` based on an easing function defined with `curve`. This easing function is based on an exponent. The `curve` can be any floating-point number, with specific values leading to the following behaviors:

```
- Lower than -1.0 (exclusive): Ease in-out
- -1.0: Linear
- Between -1.0 and 0.0 (exclusive): Ease out-in
- 0.0: Constant
- Between 0.0 to 1.0 (exclusive): Ease out
- 1.0: Linear
- Greater than 1.0 (exclusive): Ease in

```

[ease() curve values cheatsheet](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/ease_cheatsheet.png)

See also [smoothstep()](#class-globalscope-method-smoothstep). If you need to perform more advanced transitions, use [Tween.interpolate\_value()](class_tween.md#class-tween-method-interpolate-value).

* * *

[String](class_string.md#class-string) **error\_string**(error: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-error-string)

Returns a human-readable name for the given [Error](#enum-globalscope-error) code.

```
print(OK)                              # Prints 0
print(error_string(OK))                # Prints "OK"
print(error_string(ERR_BUSY))          # Prints "Busy"
print(error_string(ERR_OUT_OF_MEMORY)) # Prints "Out of memory"

```

* * *

[float](class_float.md#class-float) **exp**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-exp)

The natural exponential function. It raises the mathematical constant _e_ to the power of `x` and returns it.

_e_ has an approximate value of 2.71828, and can be obtained with `exp(1)`.

For exponents to other bases use the method [pow()](#class-globalscope-method-pow).

```
var a = exp(2) # Approximately 7.39

```

* * *

[Variant](class_variant.md#class-variant) **floor**(x: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-floor)

Rounds `x` downward (towards negative infinity), returning the largest whole number that is not more than `x`. Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
var a = floor(2.99) # a is 2.0
a = floor(-2.99)    # a is -3.0

```

See also [ceil()](#class-globalscope-method-ceil), [round()](#class-globalscope-method-round), and [snapped()](#class-globalscope-method-snapped).

**Note:** For better type safety, use [floorf()](#class-globalscope-method-floorf), [floori()](#class-globalscope-method-floori), [Vector2.floor()](class_vector2.md#class-vector2-method-floor), [Vector3.floor()](class_vector3.md#class-vector3-method-floor), or [Vector4.floor()](class_vector4.md#class-vector4-method-floor).

* * *

[float](class_float.md#class-float) **floorf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-floorf)

Rounds `x` downward (towards negative infinity), returning the largest whole number that is not more than `x`.

A type-safe version of [floor()](#class-globalscope-method-floor), returning a [float](class_float.md#class-float).

* * *

[int](class_int.md#class-int) **floori**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-floori)

Rounds `x` downward (towards negative infinity), returning the largest whole number that is not more than `x`.

A type-safe version of [floor()](#class-globalscope-method-floor), returning an [int](class_int.md#class-int).

**Note:** This function is _not_ the same as `int(x)`, which rounds towards 0.

* * *

[float](class_float.md#class-float) **fmod**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-fmod)

Returns the floating-point remainder of `x` divided by `y`, keeping the sign of `x`.

```
var remainder = fmod(7, 5.5) # remainder is 1.5

```

For the integer remainder operation, use the `%` operator.

* * *

[float](class_float.md#class-float) **fposmod**(x: [float](class_float.md#class-float), y: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-fposmod)

Returns the floating-point modulus of `x` divided by `y`, wrapping equally in positive and negative.

```
print(" (x)  (fmod(x, 1.5))   (fposmod(x, 1.5))")
for i in 7:
    var x = i * 0.5 - 1.5
    print("%4.1f           %4.1f  | %4.1f" % [x, fmod(x, 1.5), fposmod(x, 1.5)])

```

Prints:

```
 (x)  (fmod(x, 1.5))   (fposmod(x, 1.5))
-1.5           -0.0  |  0.0
-1.0           -1.0  |  0.5
-0.5           -0.5  |  1.0
 0.0            0.0  |  0.0
 0.5            0.5  |  0.5
 1.0            1.0  |  1.0
 1.5            0.0  |  0.0

```

* * *

[int](class_int.md#class-int) **hash**(variable: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-hash)

Returns the integer hash of the passed `variable`.

GDScriptC#

```
print(hash("a")) # Prints 177670

```

```
GD.Print(GD.Hash("a")); // Prints 177670

```

* * *

[Object](class_object.md#class-object) **instance\_from\_id**(instance\_id: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-instance-from-id)

Returns the [Object](class_object.md#class-object) that corresponds to `instance_id`. All Objects have a unique instance ID. See also [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id).

GDScriptC#

```
var drink = "water"

func _ready():
    var id = get_instance_id()
    var instance = instance_from_id(id)
    print(instance.foo) # Prints "water"

```

```
public partial class MyNode : Node
{
    public string Drink { get; set; } = "water";

    public override void _Ready()
    {
        ulong id = GetInstanceId();
        var instance = (MyNode)InstanceFromId(Id);
        GD.Print(instance.Drink); // Prints "water"
    }
}

```

* * *

[float](class_float.md#class-float) **inverse\_lerp**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-inverse-lerp)

Returns an interpolation or extrapolation factor considering the range specified in `from` and `to`, and the interpolated value specified in `weight`. The returned value will be between `0.0` and `1.0` if `weight` is between `from` and `to` (inclusive). If `weight` is located outside this range, then an extrapolation factor will be returned (return value lower than `0.0` or greater than `1.0`). Use [clamp()](#class-globalscope-method-clamp) on the result of [inverse\_lerp()](#class-globalscope-method-inverse-lerp) if this is not desired.

```
# The interpolation ratio in the `lerp()` call below is 0.75.
var middle = lerp(20, 30, 0.75)
# middle is now 27.5.

# Now, we pretend to have forgotten the original ratio and want to get it back.
var ratio = inverse_lerp(20, 30, 27.5)
# ratio is now 0.75.

```

See also [lerp()](#class-globalscope-method-lerp), which performs the reverse of this operation, and [remap()](#class-globalscope-method-remap) to map a continuous series of values to another.

* * *

[bool](class_bool.md#class-bool) **is\_equal\_approx**(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-is-equal-approx)

Returns `true` if `a` and `b` are approximately equal to each other.

Here, "approximately equal" means that `a` and `b` are within a small internal epsilon of each other, which scales with the magnitude of the numbers.

Infinity values of the same sign are considered equal.

* * *

[bool](class_bool.md#class-bool) **is\_finite**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-is-finite)

Returns whether `x` is a finite value, i.e. it is not [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan), positive infinity, or negative infinity. See also [is\_inf()](#class-globalscope-method-is-inf) and [is\_nan()](#class-globalscope-method-is-nan).

* * *

[bool](class_bool.md#class-bool) **is\_inf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-is-inf)

Returns `true` if `x` is either positive infinity or negative infinity. See also [is\_finite()](#class-globalscope-method-is-finite) and [is\_nan()](#class-globalscope-method-is-nan).

* * *

[bool](class_bool.md#class-bool) **is\_instance\_id\_valid**(id: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-is-instance-id-valid)

Returns `true` if the Object that corresponds to `id` is a valid object (e.g. has not been deleted from memory). All Objects have a unique instance ID.

* * *

[bool](class_bool.md#class-bool) **is\_instance\_valid**(instance: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-is-instance-valid)

Returns `true` if `instance` is a valid Object (e.g. has not been deleted from memory).

* * *

[bool](class_bool.md#class-bool) **is\_nan**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-is-nan)

Returns `true` if `x` is a NaN ("Not a Number" or invalid) value. This method is needed as [@GDScript.NAN](class_@gdscript.md#class-gdscript-constant-nan) is not equal to itself, which means `x == NAN` can't be used to check whether a value is a NaN.

* * *

[bool](class_bool.md#class-bool) **is\_same**(a: [Variant](class_variant.md#class-variant), b: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-is-same)

Returns `true`, for value types, if `a` and `b` share the same value. Returns `true`, for reference types, if the references of `a` and `b` are the same.

```
# Vector2 is a value type
var vec2_a = Vector2(0, 0)
var vec2_b = Vector2(0, 0)
var vec2_c = Vector2(1, 1)
is_same(vec2_a, vec2_a)  # true
is_same(vec2_a, vec2_b)  # true
is_same(vec2_a, vec2_c)  # false

# Array is a reference type
var arr_a = []
var arr_b = []
is_same(arr_a, arr_a)  # true
is_same(arr_a, arr_b)  # false

```

These are [Variant](class_variant.md#class-variant) value types: `null`, [bool](class_bool.md#class-bool), [int](class_int.md#class-int), [float](class_float.md#class-float), [String](class_string.md#class-string), [StringName](class_stringname.md#class-stringname), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i), [Rect2](class_rect2.md#class-rect2), [Rect2i](class_rect2i.md#class-rect2i), [Transform2D](class_transform2d.md#class-transform2d), [Transform3D](class_transform3d.md#class-transform3d), [Plane](class_plane.md#class-plane), [Quaternion](class_quaternion.md#class-quaternion), [AABB](class_aabb.md#class-aabb), [Basis](class_basis.md#class-basis), [Projection](class_projection.md#class-projection), [Color](class_color.md#class-color), [NodePath](class_nodepath.md#class-nodepath), [RID](class_rid.md#class-rid), [Callable](class_callable.md#class-callable) and [Signal](class_signal.md#class-signal).

These are [Variant](class_variant.md#class-variant) reference types: [Object](class_object.md#class-object), [Dictionary](class_dictionary.md#class-dictionary), [Array](class_array.md#class-array), [PackedByteArray](class_packedbytearray.md#class-packedbytearray), [PackedInt32Array](class_packedint32array.md#class-packedint32array), [PackedInt64Array](class_packedint64array.md#class-packedint64array), [PackedFloat32Array](class_packedfloat32array.md#class-packedfloat32array), [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array), [PackedStringArray](class_packedstringarray.md#class-packedstringarray), [PackedVector2Array](class_packedvector2array.md#class-packedvector2array), [PackedVector3Array](class_packedvector3array.md#class-packedvector3array), [PackedVector4Array](class_packedvector4array.md#class-packedvector4array), and [PackedColorArray](class_packedcolorarray.md#class-packedcolorarray).

* * *

[bool](class_bool.md#class-bool) **is\_zero\_approx**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-is-zero-approx)

Returns `true` if `x` is zero or almost zero. The comparison is done using a tolerance calculation with a small internal epsilon.

This function is faster than using [is\_equal\_approx()](#class-globalscope-method-is-equal-approx) with one value as zero.

* * *

[Variant](class_variant.md#class-variant) **lerp**(from: [Variant](class_variant.md#class-variant), to: [Variant](class_variant.md#class-variant), weight: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-lerp)

Linearly interpolates between two values by the factor defined in `weight`. To perform interpolation, `weight` should be between `0.0` and `1.0` (inclusive). However, values outside this range are allowed and can be used to perform _extrapolation_. If this is not desired, use [clampf()](#class-globalscope-method-clampf) to limit `weight`.

Both `from` and `to` must be the same type. Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector3](class_vector3.md#class-vector3), [Vector4](class_vector4.md#class-vector4), [Color](class_color.md#class-color), [Quaternion](class_quaternion.md#class-quaternion), [Basis](class_basis.md#class-basis), [Transform2D](class_transform2d.md#class-transform2d), [Transform3D](class_transform3d.md#class-transform3d).

```
lerp(0, 4, 0.75) # Returns 3.0

```

See also [inverse\_lerp()](#class-globalscope-method-inverse-lerp) which performs the reverse of this operation. To perform eased interpolation with [lerp()](#class-globalscope-method-lerp), combine it with [ease()](#class-globalscope-method-ease) or [smoothstep()](#class-globalscope-method-smoothstep). See also [remap()](#class-globalscope-method-remap) to map a continuous series of values to another.

**Note:** For better type safety, use [lerpf()](#class-globalscope-method-lerpf), [Vector2.lerp()](class_vector2.md#class-vector2-method-lerp), [Vector3.lerp()](class_vector3.md#class-vector3-method-lerp), [Vector4.lerp()](class_vector4.md#class-vector4-method-lerp), [Color.lerp()](class_color.md#class-color-method-lerp), [Quaternion.slerp()](class_quaternion.md#class-quaternion-method-slerp), [Basis.slerp()](class_basis.md#class-basis-method-slerp), [Transform2D.interpolate\_with()](class_transform2d.md#class-transform2d-method-interpolate-with), or [Transform3D.interpolate\_with()](class_transform3d.md#class-transform3d-method-interpolate-with).

* * *

[float](class_float.md#class-float) **lerp\_angle**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-lerp-angle)

Linearly interpolates between two angles (in radians) by a `weight` value between 0.0 and 1.0.

Similar to [lerp()](#class-globalscope-method-lerp), but interpolates correctly when the angles wrap around [@GDScript.TAU](class_@gdscript.md#class-gdscript-constant-tau). To perform eased interpolation with [lerp\_angle()](#class-globalscope-method-lerp-angle), combine it with [ease()](#class-globalscope-method-ease) or [smoothstep()](#class-globalscope-method-smoothstep).

```
extends Sprite
var elapsed = 0.0
func _process(delta):
    var min_angle = deg_to_rad(0.0)
    var max_angle = deg_to_rad(90.0)
    rotation = lerp_angle(min_angle, max_angle, elapsed)
    elapsed += delta

```

**Note:** This function lerps through the shortest path between `from` and `to`. However, when these two angles are approximately `PI + k * TAU` apart for any integer `k`, it's not obvious which way they lerp due to floating-point precision errors. For example, `lerp_angle(0, PI, weight)` lerps counter-clockwise, while `lerp_angle(0, PI + 5 * TAU, weight)` lerps clockwise.

* * *

[float](class_float.md#class-float) **lerpf**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), weight: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-lerpf)

Linearly interpolates between two values by the factor defined in `weight`. To perform interpolation, `weight` should be between `0.0` and `1.0` (inclusive). However, values outside this range are allowed and can be used to perform _extrapolation_. If this is not desired, use [clampf()](#class-globalscope-method-clampf) on the result of this function.

```
lerpf(0, 4, 0.75) # Returns 3.0

```

See also [inverse\_lerp()](#class-globalscope-method-inverse-lerp) which performs the reverse of this operation. To perform eased interpolation with [lerp()](#class-globalscope-method-lerp), combine it with [ease()](#class-globalscope-method-ease) or [smoothstep()](#class-globalscope-method-smoothstep).

* * *

[float](class_float.md#class-float) **linear\_to\_db**(lin: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-linear-to-db)

Converts from linear energy to decibels (audio). Since volume is not normally linear, this can be used to implement volume sliders that behave as expected.

**Example:** Change the Master bus's volume through a [Slider](class_slider.md#class-slider) node, which ranges from `0.0` to `1.0`:

```
AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db($Slider.value))

```

* * *

[float](class_float.md#class-float) **log**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-log)

Returns the [natural logarithm](https://en.wikipedia.org/wiki/Natural_logarithm) of `x` (base [\[i\]e\[/i\]](https://en.wikipedia.org/wiki/E_(mathematical_constant)), with _e_ being approximately 2.71828). This is the amount of time needed to reach a certain level of continuous growth.

**Note:** This is not the same as the "log" function on most calculators, which uses a base 10 logarithm. To use base 10 logarithm, use `log(x) / log(10)`.

```
log(10) # Returns 2.302585

```

**Note:** The logarithm of `0` returns `-inf`, while negative values return `-nan`.

* * *

[Variant](class_variant.md#class-variant) **max**(...) vararg [🔗](#class-globalscope-method-max)

Returns the maximum of the given numeric values. This function can take any number of arguments.

```
max(1, 7, 3, -6, 5) # Returns 7

```

**Note:** When using this on vectors it will _not_ perform component-wise maximum, and will pick the largest value when compared using `x < y`. To perform component-wise maximum, use [Vector2.max()](class_vector2.md#class-vector2-method-max), [Vector2i.max()](class_vector2i.md#class-vector2i-method-max), [Vector3.max()](class_vector3.md#class-vector3-method-max), [Vector3i.max()](class_vector3i.md#class-vector3i-method-max), [Vector4.max()](class_vector4.md#class-vector4-method-max), and [Vector4i.max()](class_vector4i.md#class-vector4i-method-max).

* * *

[float](class_float.md#class-float) **maxf**(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-maxf)

Returns the maximum of two [float](class_float.md#class-float) values.

```
maxf(3.6, 24)   # Returns 24.0
maxf(-3.99, -4) # Returns -3.99

```

* * *

[int](class_int.md#class-int) **maxi**(a: [int](class_int.md#class-int), b: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-maxi)

Returns the maximum of two [int](class_int.md#class-int) values.

```
maxi(1, 2)   # Returns 2
maxi(-3, -4) # Returns -3

```

* * *

[Variant](class_variant.md#class-variant) **min**(...) vararg [🔗](#class-globalscope-method-min)

Returns the minimum of the given numeric values. This function can take any number of arguments.

```
min(1, 7, 3, -6, 5) # Returns -6

```

**Note:** When using this on vectors it will _not_ perform component-wise minimum, and will pick the smallest value when compared using `x < y`. To perform component-wise minimum, use [Vector2.min()](class_vector2.md#class-vector2-method-min), [Vector2i.min()](class_vector2i.md#class-vector2i-method-min), [Vector3.min()](class_vector3.md#class-vector3-method-min), [Vector3i.min()](class_vector3i.md#class-vector3i-method-min), [Vector4.min()](class_vector4.md#class-vector4-method-min), and [Vector4i.min()](class_vector4i.md#class-vector4i-method-min).

* * *

[float](class_float.md#class-float) **minf**(a: [float](class_float.md#class-float), b: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-minf)

Returns the minimum of two [float](class_float.md#class-float) values.

```
minf(3.6, 24)   # Returns 3.6
minf(-3.99, -4) # Returns -4.0

```

* * *

[int](class_int.md#class-int) **mini**(a: [int](class_int.md#class-int), b: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-mini)

Returns the minimum of two [int](class_int.md#class-int) values.

```
mini(1, 2)   # Returns 1
mini(-3, -4) # Returns -4

```

* * *

[float](class_float.md#class-float) **move\_toward**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), delta: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-move-toward)

Moves `from` toward `to` by the `delta` amount. Will not go past `to`.

Use a negative `delta` value to move away.

```
move_toward(5, 10, 4)    # Returns 9
move_toward(10, 5, 4)    # Returns 6
move_toward(5, 10, 9)    # Returns 10
move_toward(10, 5, -1.5) # Returns 11.5

```

* * *

[int](class_int.md#class-int) **nearest\_po2**(value: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-nearest-po2)

Returns the smallest integer power of 2 that is greater than or equal to `value`.

```
nearest_po2(3) # Returns 4
nearest_po2(4) # Returns 4
nearest_po2(5) # Returns 8

nearest_po2(0)  # Returns 0 (this may not be expected)
nearest_po2(-1) # Returns 0 (this may not be expected)

```

**Warning:** Due to its implementation, this method returns `0` rather than `1` for values less than or equal to `0`, with an exception for `value` being the smallest negative 64-bit integer ( `-9223372036854775808`) in which case the `value` is returned unchanged.

* * *

[float](class_float.md#class-float) **pingpong**(value: [float](class_float.md#class-float), length: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-pingpong)

Wraps `value` between `0` and the `length`. If the limit is reached, the next value the function returns is decreased to the `0` side or increased to the `length` side (like a triangle wave). If `length` is less than zero, it becomes positive.

```
pingpong(-3.0, 3.0) # Returns 3.0
pingpong(-2.0, 3.0) # Returns 2.0
pingpong(-1.0, 3.0) # Returns 1.0
pingpong(0.0, 3.0)  # Returns 0.0
pingpong(1.0, 3.0)  # Returns 1.0
pingpong(2.0, 3.0)  # Returns 2.0
pingpong(3.0, 3.0)  # Returns 3.0
pingpong(4.0, 3.0)  # Returns 2.0
pingpong(5.0, 3.0)  # Returns 1.0
pingpong(6.0, 3.0)  # Returns 0.0

```

* * *

[int](class_int.md#class-int) **posmod**(x: [int](class_int.md#class-int), y: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-posmod)

Returns the integer modulus of `x` divided by `y` that wraps equally in positive and negative.

```
print("#(i)  (i % 3)   (posmod(i, 3))")
for i in range(-3, 4):
    print("%2d       %2d  | %2d" % [i, i % 3, posmod(i, 3)])

```

Prints:

```
(i)  (i % 3)   (posmod(i, 3))
-3        0  |  0
-2       -2  |  1
-1       -1  |  2
 0        0  |  0
 1        1  |  1
 2        2  |  2
 3        0  |  0

```

* * *

[float](class_float.md#class-float) **pow**(base: [float](class_float.md#class-float), exp: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-pow)

Returns the result of `base` raised to the power of `exp`.

In GDScript, this is the equivalent of the `**` operator.

```
pow(2, 5)   # Returns 32.0
pow(4, 1.5) # Returns 8.0

```

* * *

void **print**(...) vararg [🔗](#class-globalscope-method-print)

Converts one or more arguments of any type to string in the best way possible and prints them to the console.

GDScriptC#

```
var a = [1, 2, 3]
print("a", "b", a) # Prints "ab[1, 2, 3]"

```

```
Godot.Collections.Array a = [1, 2, 3];
GD.Print("a", "b", a); // Prints "ab[1, 2, 3]"

```

**Note:** Consider using [push\_error()](#class-globalscope-method-push-error) and [push\_warning()](#class-globalscope-method-push-warning) to print error and warning messages instead of [print()](#class-globalscope-method-print) or [print\_rich()](#class-globalscope-method-print-rich). This distinguishes them from print messages used for debugging purposes, while also displaying a stack trace when an error or warning is printed. See also [Engine.print\_to\_stdout](class_engine.md#class-engine-property-print-to-stdout) and [ProjectSettings.application/run/disable\_stdout](class_projectsettings.md#class-projectsettings-property-application-run-disable-stdout).

* * *

void **print\_rich**(...) vararg [🔗](#class-globalscope-method-print-rich)

Converts one or more arguments of any type to string in the best way possible and prints them to the console.

The following BBCode tags are supported: `b`, `i`, `u`, `s`, `indent`, `code`, `url`, `center`, `right`, `color`, `bgcolor`, `fgcolor`.

URL tags only support URLs wrapped by a URL tag, not URLs with a different title.

When printing to standard output, the supported subset of BBCode is converted to ANSI escape codes for the terminal emulator to display. Support for ANSI escape codes varies across terminal emulators, especially for italic and strikethrough. In standard output, `code` is represented with faint text but without any font change. Unsupported tags are left as-is in standard output.

GDScriptC#

```
print_rich("[color=green][b]Hello world![/b][/color]") # Prints "Hello world!", in green with a bold font.

```

```
GD.PrintRich("[color=green][b]Hello world![/b][/color]"); // Prints "Hello world!", in green with a bold font.

```

**Note:** Consider using [push\_error()](#class-globalscope-method-push-error) and [push\_warning()](#class-globalscope-method-push-warning) to print error and warning messages instead of [print()](#class-globalscope-method-print) or [print\_rich()](#class-globalscope-method-print-rich). This distinguishes them from print messages used for debugging purposes, while also displaying a stack trace when an error or warning is printed.

**Note:** Output displayed in the editor supports clickable `[url=address]text[/url]` tags. The `[url]` tag's `address` value is handled by [OS.shell\_open()](class_os.md#class-os-method-shell-open) when clicked.

* * *

void **print\_verbose**(...) vararg [🔗](#class-globalscope-method-print-verbose)

If verbose mode is enabled ( [OS.is\_stdout\_verbose()](class_os.md#class-os-method-is-stdout-verbose) returning `true`), converts one or more arguments of any type to string in the best way possible and prints them to the console.

* * *

void **printerr**(...) vararg [🔗](#class-globalscope-method-printerr)

Prints one or more arguments to strings in the best way possible to standard error line.

GDScriptC#

```
printerr("prints to stderr")

```

```
GD.PrintErr("prints to stderr");

```

* * *

void **printraw**(...) vararg [🔗](#class-globalscope-method-printraw)

Prints one or more arguments to strings in the best way possible to the OS terminal. Unlike [print()](#class-globalscope-method-print), no newline is automatically added at the end.

**Note:** The OS terminal is _not_ the same as the editor's Output dock. The output sent to the OS terminal can be seen when running Godot from a terminal. On Windows, this requires using the `console.exe` executable.

GDScriptC#

```
# Prints "ABC" to terminal.
printraw("A")
printraw("B")
printraw("C")

```

```
// Prints "ABC" to terminal.
GD.PrintRaw("A");
GD.PrintRaw("B");
GD.PrintRaw("C");

```

* * *

void **prints**(...) vararg [🔗](#class-globalscope-method-prints)

Prints one or more arguments to the console with a space between each argument.

GDScriptC#

```
prints("A", "B", "C") # Prints "A B C"

```

```
GD.PrintS("A", "B", "C"); // Prints "A B C"

```

* * *

void **printt**(...) vararg [🔗](#class-globalscope-method-printt)

Prints one or more arguments to the console with a tab between each argument.

GDScriptC#

```
printt("A", "B", "C") # Prints "A       B       C"

```

```
GD.PrintT("A", "B", "C"); // Prints "A       B       C"

```

* * *

void **push\_error**(...) vararg [🔗](#class-globalscope-method-push-error)

Pushes an error message to Godot's built-in debugger and to the OS terminal.

GDScriptC#

```
push_error("test error") # Prints "test error" to debugger and terminal as an error.

```

```
GD.PushError("test error"); // Prints "test error" to debugger and terminal as an error.

```

**Note:** This function does not pause project execution. To print an error message and pause project execution in debug builds, use `assert(false, "test error")` instead.

* * *

void **push\_warning**(...) vararg [🔗](#class-globalscope-method-push-warning)

Pushes a warning message to Godot's built-in debugger and to the OS terminal.

GDScriptC#

```
push_warning("test warning") # Prints "test warning" to debugger and terminal as a warning.

```

```
GD.PushWarning("test warning"); // Prints "test warning" to debugger and terminal as a warning.

```

* * *

[float](class_float.md#class-float) **rad\_to\_deg**(rad: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-rad-to-deg)

Converts an angle expressed in radians to degrees.

```
rad_to_deg(0.523599) # Returns 30
rad_to_deg(PI)       # Returns 180
rad_to_deg(PI * 2)   # Returns 360

```

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **rand\_from\_seed**(seed: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-rand-from-seed)

Given a `seed`, returns a [PackedInt64Array](class_packedint64array.md#class-packedint64array) of size `2`, where its first element is the randomized [int](class_int.md#class-int) value, and the second element is the same as `seed`. Passing the same `seed` consistently returns the same array.

**Note:** "Seed" here refers to the internal state of the pseudo random number generator, currently implemented as a 64 bit integer.

```
var a = rand_from_seed(4)

print(a[0]) # Prints 2879024997
print(a[1]) # Prints 4

```

* * *

[float](class_float.md#class-float) **randf**() [🔗](#class-globalscope-method-randf)

Returns a random floating-point value between `0.0` and `1.0` (inclusive).

GDScriptC#

```
randf() # Returns e.g. 0.375671

```

```
GD.Randf(); // Returns e.g. 0.375671

```

* * *

[float](class_float.md#class-float) **randf\_range**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-randf-range)

Returns a random floating-point value between `from` and `to` (inclusive).

GDScriptC#

```
randf_range(0, 20.5) # Returns e.g. 7.45315
randf_range(-10, 10) # Returns e.g. -3.844535

```

```
GD.RandRange(0.0, 20.5);   // Returns e.g. 7.45315
GD.RandRange(-10.0, 10.0); // Returns e.g. -3.844535

```

* * *

[float](class_float.md#class-float) **randfn**(mean: [float](class_float.md#class-float), deviation: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-randfn)

Returns a [normally-distributed](https://en.wikipedia.org/wiki/Normal_distribution), pseudo-random floating-point value from the specified `mean` and a standard `deviation`. This is also known as a Gaussian distribution.

**Note:** This method uses the [Box-Muller transform](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform) algorithm.

* * *

[int](class_int.md#class-int) **randi**() [🔗](#class-globalscope-method-randi)

Returns a random unsigned 32-bit integer. Use remainder to obtain a random value in the interval `[0, N - 1]` (where N is smaller than 2^32).

GDScriptC#

```
randi()           # Returns random integer between 0 and 2^32 - 1
randi() % 20      # Returns random integer between 0 and 19
randi() % 100     # Returns random integer between 0 and 99
randi() % 100 + 1 # Returns random integer between 1 and 100

```

```
GD.Randi();           // Returns random integer between 0 and 2^32 - 1
GD.Randi() % 20;      // Returns random integer between 0 and 19
GD.Randi() % 100;     // Returns random integer between 0 and 99
GD.Randi() % 100 + 1; // Returns random integer between 1 and 100

```

* * *

[int](class_int.md#class-int) **randi\_range**(from: [int](class_int.md#class-int), to: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-randi-range)

Returns a random signed 32-bit integer between `from` and `to` (inclusive). If `to` is lesser than `from`, they are swapped.

GDScriptC#

```
randi_range(0, 1)      # Returns either 0 or 1
randi_range(-10, 1000) # Returns random integer between -10 and 1000

```

```
GD.RandRange(0, 1);      // Returns either 0 or 1
GD.RandRange(-10, 1000); // Returns random integer between -10 and 1000

```

* * *

void **randomize**() [🔗](#class-globalscope-method-randomize)

Randomizes the seed (or the internal state) of the random number generator. The current implementation uses a number based on the device's time.

**Note:** This function is called automatically when the project is run. If you need to fix the seed to have consistent, reproducible results, use [seed()](#class-globalscope-method-seed) to initialize the random number generator.

* * *

[float](class_float.md#class-float) **remap**(value: [float](class_float.md#class-float), istart: [float](class_float.md#class-float), istop: [float](class_float.md#class-float), ostart: [float](class_float.md#class-float), ostop: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-remap)

Maps a `value` from range `[istart, istop]` to `[ostart, ostop]`. See also [lerp()](#class-globalscope-method-lerp) and [inverse\_lerp()](#class-globalscope-method-inverse-lerp). If `value` is outside `[istart, istop]`, then the resulting value will also be outside `[ostart, ostop]`. If this is not desired, use [clamp()](#class-globalscope-method-clamp) on the result of this function.

```
remap(75, 0, 100, -1, 1) # Returns 0.5

```

For complex use cases where multiple ranges are needed, consider using [Curve](class_curve.md#class-curve) or [Gradient](class_gradient.md#class-gradient) instead.

**Note:** If `istart == istop`, the return value is undefined (most likely NaN, INF, or -INF).

* * *

[int](class_int.md#class-int) **rid\_allocate\_id**() [🔗](#class-globalscope-method-rid-allocate-id)

Allocates a unique ID which can be used by the implementation to construct an RID. This is used mainly from native extensions to implement servers.

* * *

[RID](class_rid.md#class-rid) **rid\_from\_int64**(base: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-rid-from-int64)

Creates an RID from a `base`. This is used mainly from native extensions to build servers.

* * *

[float](class_float.md#class-float) **rotate\_toward**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), delta: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-rotate-toward)

Rotates `from` toward `to` by the `delta` amount. Will not go past `to`.

Similar to [move\_toward()](#class-globalscope-method-move-toward), but interpolates correctly when the angles wrap around [@GDScript.TAU](class_@gdscript.md#class-gdscript-constant-tau).

If `delta` is negative, this function will rotate away from `to`, toward the opposite angle, and will not go past the opposite angle.

* * *

[Variant](class_variant.md#class-variant) **round**(x: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-round)

Rounds `x` to the nearest whole number, with halfway cases rounded away from 0. Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
round(2.4) # Returns 2
round(2.5) # Returns 3
round(2.6) # Returns 3

```

See also [floor()](#class-globalscope-method-floor), [ceil()](#class-globalscope-method-ceil), and [snapped()](#class-globalscope-method-snapped).

**Note:** For better type safety, use [roundf()](#class-globalscope-method-roundf), [roundi()](#class-globalscope-method-roundi), [Vector2.round()](class_vector2.md#class-vector2-method-round), [Vector3.round()](class_vector3.md#class-vector3-method-round), or [Vector4.round()](class_vector4.md#class-vector4-method-round).

* * *

[float](class_float.md#class-float) **roundf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-roundf)

Rounds `x` to the nearest whole number, with halfway cases rounded away from 0.

A type-safe version of [round()](#class-globalscope-method-round), returning a [float](class_float.md#class-float).

* * *

[int](class_int.md#class-int) **roundi**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-roundi)

Rounds `x` to the nearest whole number, with halfway cases rounded away from 0.

A type-safe version of [round()](#class-globalscope-method-round), returning an [int](class_int.md#class-int).

* * *

void **seed**(base: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-seed)

Sets the seed for the random number generator to `base`. Setting the seed manually can ensure consistent, repeatable results for most random functions.

GDScriptC#

```
var my_seed = "Godot Rocks".hash()
seed(my_seed)
var a = randf() + randi()
seed(my_seed)
var b = randf() + randi()
# a and b are now identical

```

```
ulong mySeed = (ulong)GD.Hash("Godot Rocks");
GD.Seed(mySeed);
var a = GD.Randf() + GD.Randi();
GD.Seed(mySeed);
var b = GD.Randf() + GD.Randi();
// a and b are now identical

```

* * *

[Variant](class_variant.md#class-variant) **sign**(x: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-sign)

Returns the same type of [Variant](class_variant.md#class-variant) as `x`, with `-1` for negative values, `1` for positive values, and `0` for zeros. For `nan` values it returns 0.

Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
sign(-6.0) # Returns -1
sign(0.0)  # Returns 0
sign(6.0)  # Returns 1
sign(NAN)  # Returns 0

sign(Vector3(-6.0, 0.0, 6.0)) # Returns (-1, 0, 1)

```

**Note:** For better type safety, use [signf()](#class-globalscope-method-signf), [signi()](#class-globalscope-method-signi), [Vector2.sign()](class_vector2.md#class-vector2-method-sign), [Vector2i.sign()](class_vector2i.md#class-vector2i-method-sign), [Vector3.sign()](class_vector3.md#class-vector3-method-sign), [Vector3i.sign()](class_vector3i.md#class-vector3i-method-sign), [Vector4.sign()](class_vector4.md#class-vector4-method-sign), or [Vector4i.sign()](class_vector4i.md#class-vector4i-method-sign).

* * *

[float](class_float.md#class-float) **signf**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-signf)

Returns `-1.0` if `x` is negative, `1.0` if `x` is positive, and `0.0` if `x` is zero. For `nan` values of `x` it returns 0.0.

```
signf(-6.5) # Returns -1.0
signf(0.0)  # Returns 0.0
signf(6.5)  # Returns 1.0
signf(NAN)  # Returns 0.0

```

* * *

[int](class_int.md#class-int) **signi**(x: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-signi)

Returns `-1` if `x` is negative, `1` if `x` is positive, and `0` if `x` is zero.

```
signi(-6) # Returns -1
signi(0)  # Returns 0
signi(6)  # Returns 1

```

* * *

[float](class_float.md#class-float) **sin**(angle\_rad: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-sin)

Returns the sine of angle `angle_rad` in radians.

```
sin(0.523599)       # Returns 0.5
sin(deg_to_rad(90)) # Returns 1.0

```

* * *

[float](class_float.md#class-float) **sinh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-sinh)

Returns the hyperbolic sine of `x`.

```
var a = log(2.0) # Returns 0.693147
sinh(a) # Returns 0.75

```

* * *

[float](class_float.md#class-float) **smoothstep**(from: [float](class_float.md#class-float), to: [float](class_float.md#class-float), x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-smoothstep)

Returns a smooth cubic Hermite interpolation between `0` and `1`.

For positive ranges (when `from <= to`) the return value is `0` when `x <= from`, and `1` when `x >= to`. If `x` lies between `from` and `to`, the return value follows an S-shaped curve that smoothly transitions from `0` to `1`.

For negative ranges (when `from > to`) the function is mirrored and returns `1` when `x <= to` and `0` when `x >= from`.

This S-shaped curve is the cubic Hermite interpolator, given by `f(y) = 3*y^2 - 2*y^3` where `y = (x-from) / (to-from)`.

```
smoothstep(0, 2, -5.0) # Returns 0.0
smoothstep(0, 2, 0.5) # Returns 0.15625
smoothstep(0, 2, 1.0) # Returns 0.5
smoothstep(0, 2, 2.0) # Returns 1.0

```

Compared to [ease()](#class-globalscope-method-ease) with a curve value of `-1.6521`, [smoothstep()](#class-globalscope-method-smoothstep) returns the smoothest possible curve with no sudden changes in the derivative. If you need to perform more advanced transitions, use [Tween](class_tween.md#class-tween) or [AnimationPlayer](class_animationplayer.md#class-animationplayer).

[Comparison between smoothstep() and ease(x, -1.6521) return values](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/smoothstep_ease_comparison.png)

[Smoothstep() return values with positive, zero, and negative ranges](https://raw.githubusercontent.com/godotengine/godot-docs/master/img/smoothstep_range.webp)

* * *

[Variant](class_variant.md#class-variant) **snapped**(x: [Variant](class_variant.md#class-variant), step: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-snapped)

Returns the multiple of `step` that is the closest to `x`. This can also be used to round a floating-point number to an arbitrary number of decimals.

The returned value is the same type of [Variant](class_variant.md#class-variant) as `step`. Supported types: [int](class_int.md#class-int), [float](class_float.md#class-float), [Vector2](class_vector2.md#class-vector2), [Vector2i](class_vector2i.md#class-vector2i), [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i).

```
snapped(100, 32)  # Returns 96
snapped(3.14159, 0.01)  # Returns 3.14

snapped(Vector2(34, 70), Vector2(8, 8))  # Returns (32, 72)

```

See also [ceil()](#class-globalscope-method-ceil), [floor()](#class-globalscope-method-floor), and [round()](#class-globalscope-method-round).

**Note:** For better type safety, use [snappedf()](#class-globalscope-method-snappedf), [snappedi()](#class-globalscope-method-snappedi), [Vector2.snapped()](class_vector2.md#class-vector2-method-snapped), [Vector2i.snapped()](class_vector2i.md#class-vector2i-method-snapped), [Vector3.snapped()](class_vector3.md#class-vector3-method-snapped), [Vector3i.snapped()](class_vector3i.md#class-vector3i-method-snapped), [Vector4.snapped()](class_vector4.md#class-vector4-method-snapped), or [Vector4i.snapped()](class_vector4i.md#class-vector4i-method-snapped).

* * *

[float](class_float.md#class-float) **snappedf**(x: [float](class_float.md#class-float), step: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-snappedf)

Returns the multiple of `step` that is the closest to `x`. This can also be used to round a floating-point number to an arbitrary number of decimals.

A type-safe version of [snapped()](#class-globalscope-method-snapped), returning a [float](class_float.md#class-float).

```
snappedf(32.0, 2.5)  # Returns 32.5
snappedf(3.14159, 0.01)  # Returns 3.14

```

* * *

[int](class_int.md#class-int) **snappedi**(x: [float](class_float.md#class-float), step: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-snappedi)

Returns the multiple of `step` that is the closest to `x`.

A type-safe version of [snapped()](#class-globalscope-method-snapped), returning an [int](class_int.md#class-int).

```
snappedi(53, 16)  # Returns 48
snappedi(4096, 100)  # Returns 4100

```

* * *

[float](class_float.md#class-float) **sqrt**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-sqrt)

Returns the square root of `x`, where `x` is a non-negative number.

```
sqrt(9)     # Returns 3
sqrt(10.24) # Returns 3.2
sqrt(-1)    # Returns NaN

```

**Note:** Negative values of `x` return NaN ("Not a Number"). In C#, if you need negative inputs, use `System.Numerics.Complex`.

* * *

[int](class_int.md#class-int) **step\_decimals**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-step-decimals)

Returns the position of the first non-zero digit, after the decimal point. Note that the maximum return value is 10, which is a design decision in the implementation.

```
var n = step_decimals(5)       # n is 0
n = step_decimals(1.0005)      # n is 4
n = step_decimals(0.000000005) # n is 9

```

* * *

[String](class_string.md#class-string) **str**(...) vararg [🔗](#class-globalscope-method-str)

Converts one or more arguments of any [Variant](class_variant.md#class-variant) type to a [String](class_string.md#class-string) in the best way possible.

```
var a = [10, 20, 30]
var b = str(a)
print(len(a)) # Prints 3 (the number of elements in the array).
print(len(b)) # Prints 12 (the length of the string "[10, 20, 30]").

```

* * *

[Variant](class_variant.md#class-variant) **str\_to\_var**(string: [String](class_string.md#class-string)) [🔗](#class-globalscope-method-str-to-var)

Converts a formatted `string` that was returned by [var\_to\_str()](#class-globalscope-method-var-to-str) to the original [Variant](class_variant.md#class-variant).

GDScriptC#

```
var data = '{ "a": 1, "b": 2 }' # data is a String
var dict = str_to_var(data)     # dict is a Dictionary
print(dict["a"])                # Prints 1

```

```
string data = "{ \"a\": 1, \"b\": 2 }";           // data is a string
var dict = GD.StrToVar(data).AsGodotDictionary(); // dict is a Dictionary
GD.Print(dict["a"]);                              // Prints 1

```

* * *

[float](class_float.md#class-float) **tan**(angle\_rad: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-tan)

Returns the tangent of angle `angle_rad` in radians.

```
tan(deg_to_rad(45)) # Returns 1

```

* * *

[float](class_float.md#class-float) **tanh**(x: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-tanh)

Returns the hyperbolic tangent of `x`.

```
var a = log(2.0) # Returns 0.693147
tanh(a)          # Returns 0.6

```

* * *

[Variant](class_variant.md#class-variant) **type\_convert**(variant: [Variant](class_variant.md#class-variant), type: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-type-convert)

Converts the given `variant` to the given `type`, using the [Variant.Type](#enum-globalscope-variant-type) values. This method is generous with how it handles types, it can automatically convert between array types, convert numeric [String](class_string.md#class-string) s to [int](class_int.md#class-int), and converting most things to [String](class_string.md#class-string).

If the type conversion cannot be done, this method will return the default value for that type, for example converting [Rect2](class_rect2.md#class-rect2) to [Vector2](class_vector2.md#class-vector2) will always return [Vector2.ZERO](class_vector2.md#class-vector2-constant-zero). This method will never show error messages as long as `type` is a valid Variant type.

The returned value is a [Variant](class_variant.md#class-variant), but the data inside and its type will be the same as the requested type.

```
type_convert("Hi!", TYPE_INT) # Returns 0
type_convert("123", TYPE_INT) # Returns 123
type_convert(123.4, TYPE_INT) # Returns 123
type_convert(5, TYPE_VECTOR2) # Returns (0, 0)
type_convert("Hi!", TYPE_NIL) # Returns null

```

* * *

[String](class_string.md#class-string) **type\_string**(type: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-type-string)

Returns a human-readable name of the given `type`, using the [Variant.Type](#enum-globalscope-variant-type) values.

```
print(TYPE_INT) # Prints 2
print(type_string(TYPE_INT)) # Prints "int"
print(type_string(TYPE_STRING)) # Prints "String"

```

See also [typeof()](#class-globalscope-method-typeof).

* * *

[int](class_int.md#class-int) **typeof**(variable: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-typeof)

Returns the internal type of the given `variable`, using the [Variant.Type](#enum-globalscope-variant-type) values.

```
var json = JSON.new()
json.parse('["a", "b", "c"]')
var result = json.get_data()
if result is Array:
    print(result[0]) # Prints "a"
else:
    print("Unexpected result!")

```

See also [type\_string()](#class-globalscope-method-type-string).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **var\_to\_bytes**(variable: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-var-to-bytes)

Encodes a [Variant](class_variant.md#class-variant) value to a byte array, without encoding objects. Deserialization can be done with [bytes\_to\_var()](#class-globalscope-method-bytes-to-var).

**Note:** If you need object serialization, see [var\_to\_bytes\_with\_objects()](#class-globalscope-method-var-to-bytes-with-objects).

**Note:** Encoding [Callable](class_callable.md#class-callable) is not supported and will result in an empty value, regardless of the data.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **var\_to\_bytes\_with\_objects**(variable: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-var-to-bytes-with-objects)

Encodes a [Variant](class_variant.md#class-variant) value to a byte array. Encoding objects is allowed (and can potentially include executable code). Deserialization can be done with [bytes\_to\_var\_with\_objects()](#class-globalscope-method-bytes-to-var-with-objects).

**Note:** Encoding [Callable](class_callable.md#class-callable) is not supported and will result in an empty value, regardless of the data.

* * *

[String](class_string.md#class-string) **var\_to\_str**(variable: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-var-to-str)

Converts a [Variant](class_variant.md#class-variant) `variable` to a formatted [String](class_string.md#class-string) that can then be parsed using [str\_to\_var()](#class-globalscope-method-str-to-var).

GDScriptC#

```
var a = { "a": 1, "b": 2 }
print(var_to_str(a))

```

```
var a = new Godot.Collections.Dictionary { ["a"] = 1, ["b"] = 2 };
GD.Print(GD.VarToStr(a));

```

Prints:

```
{
    "a": 1,
    "b": 2
}

```

**Note:** Converting [Signal](class_signal.md#class-signal) or [Callable](class_callable.md#class-callable) is not supported and will result in an empty value for these types, regardless of their data.

* * *

[Variant](class_variant.md#class-variant) **weakref**(obj: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-weakref)

Returns a [WeakRef](class_weakref.md#class-weakref) instance holding a weak reference to `obj`. Returns an empty [WeakRef](class_weakref.md#class-weakref) instance if `obj` is `null`. Prints an error and returns `null` if `obj` is neither [Object](class_object.md#class-object)-derived nor `null`.

A weak reference to an object is not enough to keep the object alive: when the only remaining references to a referent are weak references, garbage collection is free to destroy the referent and reuse its memory for something else. However, until the object is actually destroyed the weak reference may return the object even if there are no strong references to it.

* * *

[Variant](class_variant.md#class-variant) **wrap**(value: [Variant](class_variant.md#class-variant), min: [Variant](class_variant.md#class-variant), max: [Variant](class_variant.md#class-variant)) [🔗](#class-globalscope-method-wrap)

Wraps the [Variant](class_variant.md#class-variant) `value` between `min` and `max`. `min` is _inclusive_ while `max` is _exclusive_. This can be used for creating loop-like behavior or infinite surfaces.

Variant types [int](class_int.md#class-int) and [float](class_float.md#class-float) are supported. If any of the arguments is [float](class_float.md#class-float), this function returns a [float](class_float.md#class-float), otherwise it returns an [int](class_int.md#class-int).

```
var a = wrap(4, 5, 10)
# a is 9 (int)

var a = wrap(7, 5, 10)
# a is 7 (int)

var a = wrap(10.5, 5, 10)
# a is 5.5 (float)

```

* * *

[float](class_float.md#class-float) **wrapf**(value: [float](class_float.md#class-float), min: [float](class_float.md#class-float), max: [float](class_float.md#class-float)) [🔗](#class-globalscope-method-wrapf)

Wraps the float `value` between `min` and `max`. `min` is _inclusive_ while `max` is _exclusive_. This can be used for creating loop-like behavior or infinite surfaces.

```
# Infinite loop between 5.0 and 9.9
value = wrapf(value + 0.1, 5.0, 10.0)

```

```
# Infinite rotation (in radians)
angle = wrapf(angle + 0.1, 0.0, TAU)

```

```
# Infinite rotation (in radians)
angle = wrapf(angle + 0.1, -PI, PI)

```

**Note:** If `min` is `0`, this is equivalent to [fposmod()](#class-globalscope-method-fposmod), so prefer using that instead. [wrapf()](#class-globalscope-method-wrapf) is more flexible than using the [fposmod()](#class-globalscope-method-fposmod) approach by giving the user control over the minimum value.

* * *

[int](class_int.md#class-int) **wrapi**(value: [int](class_int.md#class-int), min: [int](class_int.md#class-int), max: [int](class_int.md#class-int)) [🔗](#class-globalscope-method-wrapi)

Wraps the integer `value` between `min` and `max`. `min` is _inclusive_ while `max` is _exclusive_. This can be used for creating loop-like behavior or infinite surfaces.

```
# Infinite loop between 5 and 9
frame = wrapi(frame + 1, 5, 10)

```

```
# result is -2
var result = wrapi(-6, -5, -1)

```

[Previous](class_@gdscript.md "@GDScript") [Next](class_node.md "Node")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_@gdscript.md "@GDScript") [Next](class_node.md "Node")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).