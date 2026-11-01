---
title: EditorSettings — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorsettings.html
crawled_at: "2026-08-13T10:22:24+12:00"
content_hash: 05be53138eabc390f2ef9bb33061813c0785bff437f123fd17a5f4007911f6cd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorSettings

* * *

# EditorSettings

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Object that holds the project-independent editor settings.

## Description

Object that holds the project-independent editor settings. These settings are generally visible in the **Editor > Editor Settings** menu.

Property names use slash delimiters to distinguish sections. Setting values can be of any [Variant](class_variant.md#class-variant) type. It's recommended to use `snake_case` for editor settings to be consistent with the Godot editor itself.

Accessing the settings can be done using the following methods, such as:

GDScriptC#

```
var settings = EditorInterface.get_editor_settings()
# `settings.set("some/property", 10)` also works as this class overrides `_set()` internally.
settings.set_setting("some/property", 10)
# `settings.get("some/property")` also works as this class overrides `_get()` internally.
settings.get_setting("some/property")
var list_of_settings = settings.get_property_list()

```

```
EditorSettings settings = EditorInterface.Singleton.GetEditorSettings();
// `settings.set("some/property", value)` also works as this class overrides `_set()` internally.
settings.SetSetting("some/property", Value);
// `settings.get("some/property", value)` also works as this class overrides `_get()` internally.
settings.GetSetting("some/property");
Godot.Collections.Array<Godot.Collections.Dictionary> listOfSettings = settings.GetPropertyList();

```

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton using [EditorInterface.get\_editor\_settings()](class_editorinterface.md#class-editorinterface-method-get-editor-settings).

## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [asset\_library/use\_threads](#class-editorsettings-property-asset-library-use-threads) |
| [bool](class_bool.md#class-bool) | [debugger/auto\_switch\_to\_remote\_scene\_tree](#class-editorsettings-property-debugger-auto-switch-to-remote-scene-tree) |
| [bool](class_bool.md#class-bool) | [debugger/auto\_switch\_to\_stack\_trace](#class-editorsettings-property-debugger-auto-switch-to-stack-trace) |
| [int](class_int.md#class-int) | [debugger/max\_node\_selection](#class-editorsettings-property-debugger-max-node-selection) |
| [bool](class_bool.md#class-bool) | [debugger/profile\_native\_calls](#class-editorsettings-property-debugger-profile-native-calls) |
| [int](class_int.md#class-int) | [debugger/profiler\_frame\_history\_size](#class-editorsettings-property-debugger-profiler-frame-history-size) |
| [int](class_int.md#class-int) | [debugger/profiler\_frame\_max\_functions](#class-editorsettings-property-debugger-profiler-frame-max-functions) |
| [int](class_int.md#class-int) | [debugger/profiler\_target\_fps](#class-editorsettings-property-debugger-profiler-target-fps) |
| [float](class_float.md#class-float) | [debugger/remote\_inspect\_refresh\_interval](#class-editorsettings-property-debugger-remote-inspect-refresh-interval) |
| [float](class_float.md#class-float) | [debugger/remote\_scene\_tree\_refresh\_interval](#class-editorsettings-property-debugger-remote-scene-tree-refresh-interval) |
| [bool](class_bool.md#class-bool) | [docks/filesystem/always\_show\_folders](#class-editorsettings-property-docks-filesystem-always-show-folders) |
| [String](class_string.md#class-string) | [docks/filesystem/other\_file\_extensions](#class-editorsettings-property-docks-filesystem-other-file-extensions) |
| [String](class_string.md#class-string) | [docks/filesystem/textfile\_extensions](#class-editorsettings-property-docks-filesystem-textfile-extensions) |
| [int](class_int.md#class-int) | [docks/filesystem/thumbnail\_size](#class-editorsettings-property-docks-filesystem-thumbnail-size) |
| [float](class_float.md#class-float) | [docks/property\_editor/auto\_refresh\_interval](#class-editorsettings-property-docks-property-editor-auto-refresh-interval) |
| [float](class_float.md#class-float) | [docks/property\_editor/subresource\_hue\_tint](#class-editorsettings-property-docks-property-editor-subresource-hue-tint) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/accessibility\_warnings](#class-editorsettings-property-docks-scene-tree-accessibility-warnings) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/ask\_before\_deleting\_related\_animation\_tracks](#class-editorsettings-property-docks-scene-tree-ask-before-deleting-related-animation-tracks) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/ask\_before\_revoking\_unique\_name](#class-editorsettings-property-docks-scene-tree-ask-before-revoking-unique-name) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/auto\_expand\_to\_selected](#class-editorsettings-property-docks-scene-tree-auto-expand-to-selected) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/center\_node\_on\_reparent](#class-editorsettings-property-docks-scene-tree-center-node-on-reparent) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/hide\_filtered\_out\_parents](#class-editorsettings-property-docks-scene-tree-hide-filtered-out-parents) |
| [bool](class_bool.md#class-bool) | [docks/scene\_tree/start\_create\_dialog\_fully\_expanded](#class-editorsettings-property-docks-scene-tree-start-create-dialog-fully-expanded) |
| [Color](class_color.md#class-color) | [editors/2d/bone\_color1](#class-editorsettings-property-editors-2d-bone-color1) |
| [Color](class_color.md#class-color) | [editors/2d/bone\_color2](#class-editorsettings-property-editors-2d-bone-color2) |
| [Color](class_color.md#class-color) | [editors/2d/bone\_ik\_color](#class-editorsettings-property-editors-2d-bone-ik-color) |
| [Color](class_color.md#class-color) | [editors/2d/bone\_outline\_color](#class-editorsettings-property-editors-2d-bone-outline-color) |
| [float](class_float.md#class-float) | [editors/2d/bone\_outline\_size](#class-editorsettings-property-editors-2d-bone-outline-size) |
| [Color](class_color.md#class-color) | [editors/2d/bone\_selected\_color](#class-editorsettings-property-editors-2d-bone-selected-color) |
| [float](class_float.md#class-float) | [editors/2d/bone\_width](#class-editorsettings-property-editors-2d-bone-width) |
| [Color](class_color.md#class-color) | [editors/2d/grid\_color](#class-editorsettings-property-editors-2d-grid-color) |
| [Color](class_color.md#class-color) | [editors/2d/guides\_color](#class-editorsettings-property-editors-2d-guides-color) |
| [float](class_float.md#class-float) | [editors/2d/ruler\_width](#class-editorsettings-property-editors-2d-ruler-width) |
| [Color](class_color.md#class-color) | [editors/2d/smart\_snapping\_line\_color](#class-editorsettings-property-editors-2d-smart-snapping-line-color) |
| [bool](class_bool.md#class-bool) | [editors/2d/use\_integer\_zoom\_by\_default](#class-editorsettings-property-editors-2d-use-integer-zoom-by-default) |
| [Color](class_color.md#class-color) | [editors/2d/viewport\_border\_color](#class-editorsettings-property-editors-2d-viewport-border-color) |
| [float](class_float.md#class-float) | [editors/2d/zoom\_speed\_factor](#class-editorsettings-property-editors-2d-zoom-speed-factor) |
| [Color](class_color.md#class-color) | [editors/3d/active\_selection\_box\_color](#class-editorsettings-property-editors-3d-active-selection-box-color) |
| [float](class_float.md#class-float) | [editors/3d/default\_fov](#class-editorsettings-property-editors-3d-default-fov) |
| [float](class_float.md#class-float) | [editors/3d/default\_z\_far](#class-editorsettings-property-editors-3d-default-z-far) |
| [float](class_float.md#class-float) | [editors/3d/default\_z\_near](#class-editorsettings-property-editors-3d-default-z-near) |
| [int](class_int.md#class-int) | [editors/3d/freelook/freelook\_activation\_modifier](#class-editorsettings-property-editors-3d-freelook-freelook-activation-modifier) |
| [float](class_float.md#class-float) | [editors/3d/freelook/freelook\_base\_speed](#class-editorsettings-property-editors-3d-freelook-freelook-base-speed) |
| [float](class_float.md#class-float) | [editors/3d/freelook/freelook\_inertia](#class-editorsettings-property-editors-3d-freelook-freelook-inertia) |
| [int](class_int.md#class-int) | [editors/3d/freelook/freelook\_navigation\_scheme](#class-editorsettings-property-editors-3d-freelook-freelook-navigation-scheme) |
| [float](class_float.md#class-float) | [editors/3d/freelook/freelook\_sensitivity](#class-editorsettings-property-editors-3d-freelook-freelook-sensitivity) |
| [bool](class_bool.md#class-bool) | [editors/3d/freelook/freelook\_speed\_zoom\_link](#class-editorsettings-property-editors-3d-freelook-freelook-speed-zoom-link) |
| [float](class_float.md#class-float) | [editors/3d/grid\_division\_level\_bias](#class-editorsettings-property-editors-3d-grid-division-level-bias) |
| [int](class_int.md#class-int) | [editors/3d/grid\_division\_level\_max](#class-editorsettings-property-editors-3d-grid-division-level-max) |
| [int](class_int.md#class-int) | [editors/3d/grid\_division\_level\_min](#class-editorsettings-property-editors-3d-grid-division-level-min) |
| [int](class_int.md#class-int) | [editors/3d/grid\_size](#class-editorsettings-property-editors-3d-grid-size) |
| [bool](class_bool.md#class-bool) | [editors/3d/grid\_xy\_plane](#class-editorsettings-property-editors-3d-grid-xy-plane) |
| [bool](class_bool.md#class-bool) | [editors/3d/grid\_xz\_plane](#class-editorsettings-property-editors-3d-grid-xz-plane) |
| [bool](class_bool.md#class-bool) | [editors/3d/grid\_yz\_plane](#class-editorsettings-property-editors-3d-grid-yz-plane) |
| [float](class_float.md#class-float) | [editors/3d/manipulator\_gizmo\_opacity](#class-editorsettings-property-editors-3d-manipulator-gizmo-opacity) |
| [int](class_int.md#class-int) | [editors/3d/manipulator\_gizmo\_size](#class-editorsettings-property-editors-3d-manipulator-gizmo-size) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/emulate\_3\_button\_mouse](#class-editorsettings-property-editors-3d-navigation-emulate-3-button-mouse) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/emulate\_numpad](#class-editorsettings-property-editors-3d-navigation-emulate-numpad) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/invert\_x\_axis](#class-editorsettings-property-editors-3d-navigation-invert-x-axis) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/invert\_y\_axis](#class-editorsettings-property-editors-3d-navigation-invert-y-axis) |
| [int](class_int.md#class-int) | [editors/3d/navigation/navigation\_scheme](#class-editorsettings-property-editors-3d-navigation-navigation-scheme) |
| [int](class_int.md#class-int) | [editors/3d/navigation/orbit\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-orbit-mouse-button) |
| [int](class_int.md#class-int) | [editors/3d/navigation/pan\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-pan-mouse-button) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/show\_viewport\_navigation\_gizmo](#class-editorsettings-property-editors-3d-navigation-show-viewport-navigation-gizmo) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/show\_viewport\_rotation\_gizmo](#class-editorsettings-property-editors-3d-navigation-show-viewport-rotation-gizmo) |
| [bool](class_bool.md#class-bool) | [editors/3d/navigation/warped\_mouse\_panning](#class-editorsettings-property-editors-3d-navigation-warped-mouse-panning) |
| [int](class_int.md#class-int) | [editors/3d/navigation/zoom\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-zoom-mouse-button) |
| [int](class_int.md#class-int) | [editors/3d/navigation/zoom\_style](#class-editorsettings-property-editors-3d-navigation-zoom-style) |
| [float](class_float.md#class-float) | [editors/3d/navigation\_feel/orbit\_inertia](#class-editorsettings-property-editors-3d-navigation-feel-orbit-inertia) |
| [float](class_float.md#class-float) | [editors/3d/navigation\_feel/orbit\_sensitivity](#class-editorsettings-property-editors-3d-navigation-feel-orbit-sensitivity) |
| [float](class_float.md#class-float) | [editors/3d/navigation\_feel/translation\_inertia](#class-editorsettings-property-editors-3d-navigation-feel-translation-inertia) |
| [float](class_float.md#class-float) | [editors/3d/navigation\_feel/translation\_sensitivity](#class-editorsettings-property-editors-3d-navigation-feel-translation-sensitivity) |
| [float](class_float.md#class-float) | [editors/3d/navigation\_feel/zoom\_inertia](#class-editorsettings-property-editors-3d-navigation-feel-zoom-inertia) |
| [Color](class_color.md#class-color) | [editors/3d/primary\_grid\_color](#class-editorsettings-property-editors-3d-primary-grid-color) |
| [int](class_int.md#class-int) | [editors/3d/primary\_grid\_steps](#class-editorsettings-property-editors-3d-primary-grid-steps) |
| [Color](class_color.md#class-color) | [editors/3d/secondary\_grid\_color](#class-editorsettings-property-editors-3d-secondary-grid-color) |
| [Color](class_color.md#class-color) | [editors/3d/selection\_box\_color](#class-editorsettings-property-editors-3d-selection-box-color) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/aabb](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-aabb) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/camera](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-camera) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/csg](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-csg) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/decal](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-decal) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/fog\_volume](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-fog-volume) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/gridmap\_grid](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-gridmap-grid) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/instantiated](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-instantiated) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/joint](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/joint\_body\_a](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint-body-a) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/joint\_body\_b](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint-body-b) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/lightmap\_lines](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-lightmap-lines) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/lightprobe\_lines](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-lightprobe-lines) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/occluder](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-occluder) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/particle\_attractor](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particle-attractor) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/particle\_collision](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particle-collision) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/particles](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particles) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/path\_tilt](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-path-tilt) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/reflection\_probe](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-reflection-probe) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/selected\_bone](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-selected-bone) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/skeleton](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-skeleton) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/spring\_bone\_collision](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-collision) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/spring\_bone\_inside\_collision](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-inside-collision) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/spring\_bone\_joint](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-joint) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/stream\_player\_3d](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-stream-player-3d) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/visibility\_notifier](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-visibility-notifier) |
| [Color](class_color.md#class-color) | [editors/3d\_gizmos/gizmo\_colors/voxel\_gi](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-voxel-gi) |
| [float](class_float.md#class-float) | [editors/3d\_gizmos/gizmo\_settings/bone\_axis\_length](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-bone-axis-length) |
| [int](class_int.md#class-int) | [editors/3d\_gizmos/gizmo\_settings/bone\_shape](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-bone-shape) |
| [float](class_float.md#class-float) | [editors/3d\_gizmos/gizmo\_settings/lightmap\_gi\_probe\_size](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-lightmap-gi-probe-size) |
| [float](class_float.md#class-float) | [editors/3d\_gizmos/gizmo\_settings/path3d\_tilt\_disk\_size](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-path3d-tilt-disk-size) |
| [bool](class_bool.md#class-bool) | [editors/animation/autorename\_animation\_tracks](#class-editorsettings-property-editors-animation-autorename-animation-tracks) |
| [bool](class_bool.md#class-bool) | [editors/animation/confirm\_insert\_track](#class-editorsettings-property-editors-animation-confirm-insert-track) |
| [float](class_float.md#class-float) | [editors/animation/default\_animation\_step](#class-editorsettings-property-editors-animation-default-animation-step) |
| [bool](class_bool.md#class-bool) | [editors/animation/default\_create\_bezier\_tracks](#class-editorsettings-property-editors-animation-default-create-bezier-tracks) |
| [bool](class_bool.md#class-bool) | [editors/animation/default\_create\_reset\_tracks](#class-editorsettings-property-editors-animation-default-create-reset-tracks) |
| [bool](class_bool.md#class-bool) | [editors/animation/default\_fps\_compatibility](#class-editorsettings-property-editors-animation-default-fps-compatibility) |
| [int](class_int.md#class-int) | [editors/animation/default\_fps\_mode](#class-editorsettings-property-editors-animation-default-fps-mode) |
| [Color](class_color.md#class-color) | [editors/animation/onion\_layers\_future\_color](#class-editorsettings-property-editors-animation-onion-layers-future-color) |
| [Color](class_color.md#class-color) | [editors/animation/onion\_layers\_past\_color](#class-editorsettings-property-editors-animation-onion-layers-past-color) |
| [Color](class_color.md#class-color) | [editors/bone\_mapper/handle\_colors/error](#class-editorsettings-property-editors-bone-mapper-handle-colors-error) |
| [Color](class_color.md#class-color) | [editors/bone\_mapper/handle\_colors/missing](#class-editorsettings-property-editors-bone-mapper-handle-colors-missing) |
| [Color](class_color.md#class-color) | [editors/bone\_mapper/handle\_colors/set](#class-editorsettings-property-editors-bone-mapper-handle-colors-set) |
| [Color](class_color.md#class-color) | [editors/bone\_mapper/handle\_colors/unset](#class-editorsettings-property-editors-bone-mapper-handle-colors-unset) |
| [int](class_int.md#class-int) | [editors/grid\_map/palette\_min\_width](#class-editorsettings-property-editors-grid-map-palette-min-width) |
| [float](class_float.md#class-float) | [editors/grid\_map/pick\_distance](#class-editorsettings-property-editors-grid-map-pick-distance) |
| [int](class_int.md#class-int) | [editors/grid\_map/preview\_size](#class-editorsettings-property-editors-grid-map-preview-size) |
| [int](class_int.md#class-int) | [editors/panning/2d\_editor\_pan\_speed](#class-editorsettings-property-editors-panning-2d-editor-pan-speed) |
| [int](class_int.md#class-int) | [editors/panning/2d\_editor\_panning\_scheme](#class-editorsettings-property-editors-panning-2d-editor-panning-scheme) |
| [int](class_int.md#class-int) | [editors/panning/animation\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-animation-editors-panning-scheme) |
| [bool](class_bool.md#class-bool) | [editors/panning/simple\_panning](#class-editorsettings-property-editors-panning-simple-panning) |
| [int](class_int.md#class-int) | [editors/panning/sub\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-sub-editors-panning-scheme) |
| [bool](class_bool.md#class-bool) | [editors/panning/warped\_mouse\_panning](#class-editorsettings-property-editors-panning-warped-mouse-panning) |
| [int](class_int.md#class-int) | [editors/panning/zoom\_style](#class-editorsettings-property-editors-panning-zoom-style) |
| [float](class_float.md#class-float) | [editors/polygon\_editor/auto\_bake\_delay](#class-editorsettings-property-editors-polygon-editor-auto-bake-delay) |
| [int](class_int.md#class-int) | [editors/polygon\_editor/point\_grab\_radius](#class-editorsettings-property-editors-polygon-editor-point-grab-radius) |
| [bool](class_bool.md#class-bool) | [editors/polygon\_editor/show\_previous\_outline](#class-editorsettings-property-editors-polygon-editor-show-previous-outline) |
| [bool](class_bool.md#class-bool) | [editors/shader\_editor/behavior/files/restore\_shaders\_on\_load](#class-editorsettings-property-editors-shader-editor-behavior-files-restore-shaders-on-load) |
| [bool](class_bool.md#class-bool) | [editors/tiles\_editor/display\_grid](#class-editorsettings-property-editors-tiles-editor-display-grid) |
| [Color](class_color.md#class-color) | [editors/tiles\_editor/grid\_color](#class-editorsettings-property-editors-tiles-editor-grid-color) |
| [bool](class_bool.md#class-bool) | [editors/tiles\_editor/highlight\_selected\_layer](#class-editorsettings-property-editors-tiles-editor-highlight-selected-layer) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/color\_color](#class-editorsettings-property-editors-visual-editors-category-colors-color-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/conditional\_color](#class-editorsettings-property-editors-visual-editors-category-colors-conditional-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/input\_color](#class-editorsettings-property-editors-visual-editors-category-colors-input-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/output\_color](#class-editorsettings-property-editors-visual-editors-category-colors-output-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/particle\_color](#class-editorsettings-property-editors-visual-editors-category-colors-particle-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/scalar\_color](#class-editorsettings-property-editors-visual-editors-category-colors-scalar-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/special\_color](#class-editorsettings-property-editors-visual-editors-category-colors-special-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/textures\_color](#class-editorsettings-property-editors-visual-editors-category-colors-textures-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/transform\_color](#class-editorsettings-property-editors-visual-editors-category-colors-transform-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/utility\_color](#class-editorsettings-property-editors-visual-editors-category-colors-utility-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/category\_colors/vector\_color](#class-editorsettings-property-editors-visual-editors-category-colors-vector-color) |
| [String](class_string.md#class-string) | [editors/visual\_editors/color\_theme](#class-editorsettings-property-editors-visual-editors-color-theme) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/boolean\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-boolean-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/sampler\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-sampler-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/scalar\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-scalar-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/transform\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-transform-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/vector2\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-vector2-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/vector3\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-vector3-color) |
| [Color](class_color.md#class-color) | [editors/visual\_editors/connection\_colors/vector4\_color](#class-editorsettings-property-editors-visual-editors-connection-colors-vector4-color) |
| [int](class_int.md#class-int) | [editors/visual\_editors/grid\_pattern](#class-editorsettings-property-editors-visual-editors-grid-pattern) |
| [float](class_float.md#class-float) | [editors/visual\_editors/lines\_curvature](#class-editorsettings-property-editors-visual-editors-lines-curvature) |
| [float](class_float.md#class-float) | [editors/visual\_editors/minimap\_opacity](#class-editorsettings-property-editors-visual-editors-minimap-opacity) |
| [int](class_int.md#class-int) | [editors/visual\_editors/visual\_shader/port\_preview\_size](#class-editorsettings-property-editors-visual-editors-visual-shader-port-preview-size) |
| [String](class_string.md#class-string) | [export/ssh/scp](#class-editorsettings-property-export-ssh-scp) |
| [String](class_string.md#class-string) | [export/ssh/ssh](#class-editorsettings-property-export-ssh-ssh) |
| [String](class_string.md#class-string) | [filesystem/directories/autoscan\_project\_path](#class-editorsettings-property-filesystem-directories-autoscan-project-path) |
| [String](class_string.md#class-string) | [filesystem/directories/default\_project\_path](#class-editorsettings-property-filesystem-directories-default-project-path) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/3d\_model\_editor](#class-editorsettings-property-filesystem-external-programs-3d-model-editor) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/audio\_editor](#class-editorsettings-property-filesystem-external-programs-audio-editor) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/raster\_image\_editor](#class-editorsettings-property-filesystem-external-programs-raster-image-editor) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/terminal\_emulator](#class-editorsettings-property-filesystem-external-programs-terminal-emulator) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/terminal\_emulator\_flags](#class-editorsettings-property-filesystem-external-programs-terminal-emulator-flags) |
| [String](class_string.md#class-string) | [filesystem/external\_programs/vector\_image\_editor](#class-editorsettings-property-filesystem-external-programs-vector-image-editor) |
| [int](class_int.md#class-int) | [filesystem/file\_dialog/display\_mode](#class-editorsettings-property-filesystem-file-dialog-display-mode) |
| [bool](class_bool.md#class-bool) | [filesystem/file\_dialog/show\_hidden\_files](#class-editorsettings-property-filesystem-file-dialog-show-hidden-files) |
| [int](class_int.md#class-int) | [filesystem/file\_dialog/thumbnail\_size](#class-editorsettings-property-filesystem-file-dialog-thumbnail-size) |
| [String](class_string.md#class-string) | [filesystem/file\_server/password](#class-editorsettings-property-filesystem-file-server-password) |
| [int](class_int.md#class-int) | [filesystem/file\_server/port](#class-editorsettings-property-filesystem-file-server-port) |
| [String](class_string.md#class-string) | [filesystem/import/blender/blender\_path](#class-editorsettings-property-filesystem-import-blender-blender-path) |
| [int](class_int.md#class-int) | [filesystem/import/blender/rpc\_port](#class-editorsettings-property-filesystem-import-blender-rpc-port) |
| [float](class_float.md#class-float) | [filesystem/import/blender/rpc\_server\_uptime](#class-editorsettings-property-filesystem-import-blender-rpc-server-uptime) |
| [String](class_string.md#class-string) | [filesystem/import/fbx/fbx2gltf\_path](#class-editorsettings-property-filesystem-import-fbx-fbx2gltf-path) |
| [bool](class_bool.md#class-bool) | [filesystem/on\_save/compress\_binary\_resources](#class-editorsettings-property-filesystem-on-save-compress-binary-resources) |
| [bool](class_bool.md#class-bool) | [filesystem/on\_save/safe\_save\_on\_backup\_then\_rename](#class-editorsettings-property-filesystem-on-save-safe-save-on-backup-then-rename) |
| [int](class_int.md#class-int) | [filesystem/quick\_open\_dialog/default\_display\_mode](#class-editorsettings-property-filesystem-quick-open-dialog-default-display-mode) |
| [bool](class_bool.md#class-bool) | [filesystem/quick\_open\_dialog/enable\_fuzzy\_matching](#class-editorsettings-property-filesystem-quick-open-dialog-enable-fuzzy-matching) |
| [bool](class_bool.md#class-bool) | [filesystem/quick\_open\_dialog/include\_addons](#class-editorsettings-property-filesystem-quick-open-dialog-include-addons) |
| [int](class_int.md#class-int) | [filesystem/quick\_open\_dialog/max\_fuzzy\_misses](#class-editorsettings-property-filesystem-quick-open-dialog-max-fuzzy-misses) |
| [int](class_int.md#class-int) | [filesystem/quick\_open\_dialog/max\_results](#class-editorsettings-property-filesystem-quick-open-dialog-max-results) |
| [bool](class_bool.md#class-bool) | [filesystem/quick\_open\_dialog/show\_search\_highlight](#class-editorsettings-property-filesystem-quick-open-dialog-show-search-highlight) |
| [String](class_string.md#class-string) | [filesystem/tools/oidn/oidn\_denoise\_path](#class-editorsettings-property-filesystem-tools-oidn-oidn-denoise-path) |
| [bool](class_bool.md#class-bool) | [input/buffering/agile\_event\_flushing](#class-editorsettings-property-input-buffering-agile-event-flushing) |
| [bool](class_bool.md#class-bool) | [input/buffering/use\_accumulated\_input](#class-editorsettings-property-input-buffering-use-accumulated-input) |
| [int](class_int.md#class-int) | [interface/accessibility/accessibility\_support](#class-editorsettings-property-interface-accessibility-accessibility-support) |
| [int](class_int.md#class-int) | [interface/editor/accept\_dialog\_cancel\_ok\_buttons](#class-editorsettings-property-interface-editor-accept-dialog-cancel-ok-buttons) |
| [bool](class_bool.md#class-bool) | [interface/editor/automatically\_open\_screenshots](#class-editorsettings-property-interface-editor-automatically-open-screenshots) |
| [String](class_string.md#class-string) | [interface/editor/code\_font](#class-editorsettings-property-interface-editor-code-font) |
| [int](class_int.md#class-int) | [interface/editor/code\_font\_contextual\_ligatures](#class-editorsettings-property-interface-editor-code-font-contextual-ligatures) |
| [String](class_string.md#class-string) | [interface/editor/code\_font\_custom\_opentype\_features](#class-editorsettings-property-interface-editor-code-font-custom-opentype-features) |
| [String](class_string.md#class-string) | [interface/editor/code\_font\_custom\_variations](#class-editorsettings-property-interface-editor-code-font-custom-variations) |
| [int](class_int.md#class-int) | [interface/editor/code\_font\_size](#class-editorsettings-property-interface-editor-code-font-size) |
| [bool](class_bool.md#class-bool) | [interface/editor/collapse\_main\_menu](#class-editorsettings-property-interface-editor-collapse-main-menu) |
| [float](class_float.md#class-float) | [interface/editor/custom\_display\_scale](#class-editorsettings-property-interface-editor-custom-display-scale) |
| [int](class_int.md#class-int) | [interface/editor/display\_scale](#class-editorsettings-property-interface-editor-display-scale) |
| [int](class_int.md#class-int) | [interface/editor/dock\_tab\_style](#class-editorsettings-property-interface-editor-dock-tab-style) |
| [String](class_string.md#class-string) | [interface/editor/editor\_language](#class-editorsettings-property-interface-editor-editor-language) |
| [int](class_int.md#class-int) | [interface/editor/editor\_screen](#class-editorsettings-property-interface-editor-editor-screen) |
| [bool](class_bool.md#class-bool) | [interface/editor/expand\_to\_title](#class-editorsettings-property-interface-editor-expand-to-title) |
| [bool](class_bool.md#class-bool) | [interface/editor/font\_allow\_msdf](#class-editorsettings-property-interface-editor-font-allow-msdf) |
| [int](class_int.md#class-int) | [interface/editor/font\_antialiasing](#class-editorsettings-property-interface-editor-font-antialiasing) |
| [bool](class_bool.md#class-bool) | [interface/editor/font\_disable\_embedded\_bitmaps](#class-editorsettings-property-interface-editor-font-disable-embedded-bitmaps) |
| [int](class_int.md#class-int) | [interface/editor/font\_hinting](#class-editorsettings-property-interface-editor-font-hinting) |
| [int](class_int.md#class-int) | [interface/editor/font\_subpixel\_positioning](#class-editorsettings-property-interface-editor-font-subpixel-positioning) |
| [bool](class_bool.md#class-bool) | [interface/editor/import\_resources\_when\_unfocused](#class-editorsettings-property-interface-editor-import-resources-when-unfocused) |
| [bool](class_bool.md#class-bool) | [interface/editor/keep\_screen\_on](#class-editorsettings-property-interface-editor-keep-screen-on) |
| [bool](class_bool.md#class-bool) | [interface/editor/localize\_settings](#class-editorsettings-property-interface-editor-localize-settings) |
| [int](class_int.md#class-int) | [interface/editor/low\_processor\_mode\_sleep\_usec](#class-editorsettings-property-interface-editor-low-processor-mode-sleep-usec) |
| [String](class_string.md#class-string) | [interface/editor/main\_font](#class-editorsettings-property-interface-editor-main-font) |
| [String](class_string.md#class-string) | [interface/editor/main\_font\_bold](#class-editorsettings-property-interface-editor-main-font-bold) |
| [int](class_int.md#class-int) | [interface/editor/main\_font\_size](#class-editorsettings-property-interface-editor-main-font-size) |
| [bool](class_bool.md#class-bool) | [interface/editor/mouse\_extra\_buttons\_navigate\_history](#class-editorsettings-property-interface-editor-mouse-extra-buttons-navigate-history) |
| [int](class_int.md#class-int) | [interface/editor/project\_manager\_screen](#class-editorsettings-property-interface-editor-project-manager-screen) |
| [bool](class_bool.md#class-bool) | [interface/editor/save\_each\_scene\_on\_quit](#class-editorsettings-property-interface-editor-save-each-scene-on-quit) |
| [bool](class_bool.md#class-bool) | [interface/editor/save\_on\_focus\_loss](#class-editorsettings-property-interface-editor-save-on-focus-loss) |
| [bool](class_bool.md#class-bool) | [interface/editor/separate\_distraction\_mode](#class-editorsettings-property-interface-editor-separate-distraction-mode) |
| [int](class_int.md#class-int) | [interface/editor/show\_internal\_errors\_in\_toast\_notifications](#class-editorsettings-property-interface-editor-show-internal-errors-in-toast-notifications) |
| [int](class_int.md#class-int) | [interface/editor/show\_update\_spinner](#class-editorsettings-property-interface-editor-show-update-spinner) |
| [bool](class_bool.md#class-bool) | [interface/editor/single\_window\_mode](#class-editorsettings-property-interface-editor-single-window-mode) |
| [int](class_int.md#class-int) | [interface/editor/tablet\_driver](#class-editorsettings-property-interface-editor-tablet-driver) |
| [int](class_int.md#class-int) | [interface/editor/ui\_layout\_direction](#class-editorsettings-property-interface-editor-ui-layout-direction) |
| [int](class_int.md#class-int) | [interface/editor/unfocused\_low\_processor\_mode\_sleep\_usec](#class-editorsettings-property-interface-editor-unfocused-low-processor-mode-sleep-usec) |
| [bool](class_bool.md#class-bool) | [interface/editor/update\_continuously](#class-editorsettings-property-interface-editor-update-continuously) |
| [bool](class_bool.md#class-bool) | [interface/editor/use\_embedded\_menu](#class-editorsettings-property-interface-editor-use-embedded-menu) |
| [bool](class_bool.md#class-bool) | [interface/editor/use\_native\_file\_dialogs](#class-editorsettings-property-interface-editor-use-native-file-dialogs) |
| [int](class_int.md#class-int) | [interface/editor/vsync\_mode](#class-editorsettings-property-interface-editor-vsync-mode) |
| [bool](class_bool.md#class-bool) | [interface/editors/derive\_script\_globals\_by\_name](#class-editorsettings-property-interface-editors-derive-script-globals-by-name) |
| [bool](class_bool.md#class-bool) | [interface/editors/show\_scene\_tree\_root\_selection](#class-editorsettings-property-interface-editors-show-scene-tree-root-selection) |
| [bool](class_bool.md#class-bool) | [interface/inspector/auto\_unfold\_foreign\_scenes](#class-editorsettings-property-interface-inspector-auto-unfold-foreign-scenes) |
| [bool](class_bool.md#class-bool) | [interface/inspector/color\_picker\_show\_intensity](#class-editorsettings-property-interface-inspector-color-picker-show-intensity) |
| [int](class_int.md#class-int) | [interface/inspector/default\_color\_picker\_mode](#class-editorsettings-property-interface-inspector-default-color-picker-mode) |
| [int](class_int.md#class-int) | [interface/inspector/default\_color\_picker\_shape](#class-editorsettings-property-interface-inspector-default-color-picker-shape) |
| [float](class_float.md#class-float) | [interface/inspector/default\_float\_step](#class-editorsettings-property-interface-inspector-default-float-step) |
| [int](class_int.md#class-int) | [interface/inspector/default\_property\_name\_style](#class-editorsettings-property-interface-inspector-default-property-name-style) |
| [bool](class_bool.md#class-bool) | [interface/inspector/delimitate\_all\_container\_and\_resources](#class-editorsettings-property-interface-inspector-delimitate-all-container-and-resources) |
| [bool](class_bool.md#class-bool) | [interface/inspector/disable\_folding](#class-editorsettings-property-interface-inspector-disable-folding) |
| [float](class_float.md#class-float) | [interface/inspector/float\_drag\_speed](#class-editorsettings-property-interface-inspector-float-drag-speed) |
| [bool](class_bool.md#class-bool) | [interface/inspector/horizontal\_vector2\_editing](#class-editorsettings-property-interface-inspector-horizontal-vector2-editing) |
| [bool](class_bool.md#class-bool) | [interface/inspector/horizontal\_vector\_types\_editing](#class-editorsettings-property-interface-inspector-horizontal-vector-types-editing) |
| [int](class_int.md#class-int) | [interface/inspector/max\_array\_dictionary\_items\_per\_page](#class-editorsettings-property-interface-inspector-max-array-dictionary-items-per-page) |
| [int](class_int.md#class-int) | [interface/inspector/nested\_color\_mode](#class-editorsettings-property-interface-inspector-nested-color-mode) |
| [bool](class_bool.md#class-bool) | [interface/inspector/open\_resources\_in\_current\_inspector](#class-editorsettings-property-interface-inspector-open-resources-in-current-inspector) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [interface/inspector/resources\_to\_open\_in\_new\_inspector](#class-editorsettings-property-interface-inspector-resources-to-open-in-new-inspector) |
| [bool](class_bool.md#class-bool) | [interface/inspector/show\_low\_level\_opentype\_features](#class-editorsettings-property-interface-inspector-show-low-level-opentype-features) |
| [bool](class_bool.md#class-bool) | [interface/multi\_window/enable](#class-editorsettings-property-interface-multi-window-enable) |
| [bool](class_bool.md#class-bool) | [interface/multi\_window/maximize\_window](#class-editorsettings-property-interface-multi-window-maximize-window) |
| [bool](class_bool.md#class-bool) | [interface/multi\_window/restore\_windows\_on\_load](#class-editorsettings-property-interface-multi-window-restore-windows-on-load) |
| [int](class_int.md#class-int) | [interface/scene\_tabs/display\_close\_button](#class-editorsettings-property-interface-scene-tabs-display-close-button) |
| [int](class_int.md#class-int) | [interface/scene\_tabs/maximum\_width](#class-editorsettings-property-interface-scene-tabs-maximum-width) |
| [bool](class_bool.md#class-bool) | [interface/scene\_tabs/restore\_scenes\_on\_load](#class-editorsettings-property-interface-scene-tabs-restore-scenes-on-load) |
| [bool](class_bool.md#class-bool) | [interface/scene\_tabs/show\_script\_button](#class-editorsettings-property-interface-scene-tabs-show-script-button) |
| [bool](class_bool.md#class-bool) | [interface/scene\_tabs/show\_thumbnail\_on\_hover](#class-editorsettings-property-interface-scene-tabs-show-thumbnail-on-hover) |
| [Color](class_color.md#class-color) | [interface/theme/accent\_color](#class-editorsettings-property-interface-theme-accent-color) |
| [int](class_int.md#class-int) | [interface/theme/additional\_spacing](#class-editorsettings-property-interface-theme-additional-spacing) |
| [Color](class_color.md#class-color) | [interface/theme/base\_color](#class-editorsettings-property-interface-theme-base-color) |
| [int](class_int.md#class-int) | [interface/theme/base\_spacing](#class-editorsettings-property-interface-theme-base-spacing) |
| [int](class_int.md#class-int) | [interface/theme/border\_size](#class-editorsettings-property-interface-theme-border-size) |
| [float](class_float.md#class-float) | [interface/theme/contrast](#class-editorsettings-property-interface-theme-contrast) |
| [int](class_int.md#class-int) | [interface/theme/corner\_radius](#class-editorsettings-property-interface-theme-corner-radius) |
| [String](class_string.md#class-string) | [interface/theme/custom\_theme](#class-editorsettings-property-interface-theme-custom-theme) |
| [bool](class_bool.md#class-bool) | [interface/theme/draw\_extra\_borders](#class-editorsettings-property-interface-theme-draw-extra-borders) |
| [bool](class_bool.md#class-bool) | [interface/theme/follow\_system\_theme](#class-editorsettings-property-interface-theme-follow-system-theme) |
| [int](class_int.md#class-int) | [interface/theme/icon\_and\_font\_color](#class-editorsettings-property-interface-theme-icon-and-font-color) |
| [float](class_float.md#class-float) | [interface/theme/icon\_saturation](#class-editorsettings-property-interface-theme-icon-saturation) |
| [String](class_string.md#class-string) | [interface/theme/preset](#class-editorsettings-property-interface-theme-preset) |
| [float](class_float.md#class-float) | [interface/theme/relationship\_line\_opacity](#class-editorsettings-property-interface-theme-relationship-line-opacity) |
| [String](class_string.md#class-string) | [interface/theme/spacing\_preset](#class-editorsettings-property-interface-theme-spacing-preset) |
| [bool](class_bool.md#class-bool) | [interface/theme/use\_system\_accent\_color](#class-editorsettings-property-interface-theme-use-system-accent-color) |
| [bool](class_bool.md#class-bool) | [interface/touchscreen/enable\_long\_press\_as\_right\_click](#class-editorsettings-property-interface-touchscreen-enable-long-press-as-right-click) |
| [bool](class_bool.md#class-bool) | [interface/touchscreen/enable\_pan\_and\_scale\_gestures](#class-editorsettings-property-interface-touchscreen-enable-pan-and-scale-gestures) |
| [bool](class_bool.md#class-bool) | [interface/touchscreen/enable\_touch\_optimizations](#class-editorsettings-property-interface-touchscreen-enable-touch-optimizations) |
| [float](class_float.md#class-float) | [interface/touchscreen/scale\_gizmo\_handles](#class-editorsettings-property-interface-touchscreen-scale-gizmo-handles) |
| [int](class_int.md#class-int) | [interface/touchscreen/touch\_actions\_panel](#class-editorsettings-property-interface-touchscreen-touch-actions-panel) |
| [int](class_int.md#class-int) | [network/connection/check\_for\_updates](#class-editorsettings-property-network-connection-check-for-updates) |
| [int](class_int.md#class-int) | [network/connection/network\_mode](#class-editorsettings-property-network-connection-network-mode) |
| [String](class_string.md#class-string) | [network/debug/remote\_host](#class-editorsettings-property-network-debug-remote-host) |
| [int](class_int.md#class-int) | [network/debug/remote\_port](#class-editorsettings-property-network-debug-remote-port) |
| [String](class_string.md#class-string) | [network/http\_proxy/host](#class-editorsettings-property-network-http-proxy-host) |
| [int](class_int.md#class-int) | [network/http\_proxy/port](#class-editorsettings-property-network-http-proxy-port) |
| [String](class_string.md#class-string) | [network/tls/editor\_tls\_certificates](#class-editorsettings-property-network-tls-editor-tls-certificates) |
| [bool](class_bool.md#class-bool) | [network/tls/enable\_tls\_v1.3](#class-editorsettings-property-network-tls-enable-tls-v1-3) |
| [String](class_string.md#class-string) | [project\_manager/default\_renderer](#class-editorsettings-property-project-manager-default-renderer) |
| [int](class_int.md#class-int) | [project\_manager/directory\_naming\_convention](#class-editorsettings-property-project-manager-directory-naming-convention) |
| [int](class_int.md#class-int) | [project\_manager/sorting\_order](#class-editorsettings-property-project-manager-sorting-order) |
| [bool](class_bool.md#class-bool) | [run/auto\_save/save\_before\_running](#class-editorsettings-property-run-auto-save-save-before-running) |
| [int](class_int.md#class-int) | [run/bottom\_panel/action\_on\_play](#class-editorsettings-property-run-bottom-panel-action-on-play) |
| [int](class_int.md#class-int) | [run/bottom\_panel/action\_on\_stop](#class-editorsettings-property-run-bottom-panel-action-on-stop) |
| [bool](class_bool.md#class-bool) | [run/output/always\_clear\_output\_on\_play](#class-editorsettings-property-run-output-always-clear-output-on-play) |
| [int](class_int.md#class-int) | [run/output/font\_size](#class-editorsettings-property-run-output-font-size) |
| [int](class_int.md#class-int) | [run/output/max\_lines](#class-editorsettings-property-run-output-max-lines) |
| [bool](class_bool.md#class-bool) | [run/platforms/linuxbsd/prefer\_wayland](#class-editorsettings-property-run-platforms-linuxbsd-prefer-wayland) |
| [int](class_int.md#class-int) | [run/window\_placement/android\_window](#class-editorsettings-property-run-window-placement-android-window) |
| [int](class_int.md#class-int) | [run/window\_placement/game\_embed\_mode](#class-editorsettings-property-run-window-placement-game-embed-mode) |
| [int](class_int.md#class-int) | [run/window\_placement/rect](#class-editorsettings-property-run-window-placement-rect) |
| [Vector2](class_vector2.md#class-vector2) | [run/window\_placement/rect\_custom\_position](#class-editorsettings-property-run-window-placement-rect-custom-position) |
| [int](class_int.md#class-int) | [run/window\_placement/screen](#class-editorsettings-property-run-window-placement-screen) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/caret/caret\_blink](#class-editorsettings-property-text-editor-appearance-caret-caret-blink) |
| [float](class_float.md#class-float) | [text\_editor/appearance/caret/caret\_blink\_interval](#class-editorsettings-property-text-editor-appearance-caret-caret-blink-interval) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/caret/highlight\_all\_occurrences](#class-editorsettings-property-text-editor-appearance-caret-highlight-all-occurrences) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/caret/highlight\_current\_line](#class-editorsettings-property-text-editor-appearance-caret-highlight-current-line) |
| [int](class_int.md#class-int) | [text\_editor/appearance/caret/type](#class-editorsettings-property-text-editor-appearance-caret-type) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/enable\_inline\_color\_picker](#class-editorsettings-property-text-editor-appearance-enable-inline-color-picker) |
| [int](class_int.md#class-int) | [text\_editor/appearance/guidelines/line\_length\_guideline\_hard\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-hard-column) |
| [int](class_int.md#class-int) | [text\_editor/appearance/guidelines/line\_length\_guideline\_soft\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-soft-column) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/guidelines/show\_line\_length\_guidelines](#class-editorsettings-property-text-editor-appearance-guidelines-show-line-length-guidelines) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/gutters/highlight\_type\_safe\_lines](#class-editorsettings-property-text-editor-appearance-gutters-highlight-type-safe-lines) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/gutters/line\_numbers\_zero\_padded](#class-editorsettings-property-text-editor-appearance-gutters-line-numbers-zero-padded) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/gutters/show\_info\_gutter](#class-editorsettings-property-text-editor-appearance-gutters-show-info-gutter) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/gutters/show\_line\_numbers](#class-editorsettings-property-text-editor-appearance-gutters-show-line-numbers) |
| [int](class_int.md#class-int) | [text\_editor/appearance/lines/autowrap\_mode](#class-editorsettings-property-text-editor-appearance-lines-autowrap-mode) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/lines/code\_folding](#class-editorsettings-property-text-editor-appearance-lines-code-folding) |
| [int](class_int.md#class-int) | [text\_editor/appearance/lines/word\_wrap](#class-editorsettings-property-text-editor-appearance-lines-word-wrap) |
| [int](class_int.md#class-int) | [text\_editor/appearance/minimap/minimap\_width](#class-editorsettings-property-text-editor-appearance-minimap-minimap-width) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/minimap/show\_minimap](#class-editorsettings-property-text-editor-appearance-minimap-show-minimap) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/whitespace/draw\_spaces](#class-editorsettings-property-text-editor-appearance-whitespace-draw-spaces) |
| [bool](class_bool.md#class-bool) | [text\_editor/appearance/whitespace/draw\_tabs](#class-editorsettings-property-text-editor-appearance-whitespace-draw-tabs) |
| [int](class_int.md#class-int) | [text\_editor/appearance/whitespace/line\_spacing](#class-editorsettings-property-text-editor-appearance-whitespace-line-spacing) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/documentation/enable\_tooltips](#class-editorsettings-property-text-editor-behavior-documentation-enable-tooltips) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/auto\_reload\_and\_parse\_scripts\_on\_save](#class-editorsettings-property-text-editor-behavior-files-auto-reload-and-parse-scripts-on-save) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/auto\_reload\_scripts\_on\_external\_change](#class-editorsettings-property-text-editor-behavior-files-auto-reload-scripts-on-external-change) |
| [int](class_int.md#class-int) | [text\_editor/behavior/files/autosave\_interval\_secs](#class-editorsettings-property-text-editor-behavior-files-autosave-interval-secs) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/convert\_indent\_on\_save](#class-editorsettings-property-text-editor-behavior-files-convert-indent-on-save) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/drop\_preload\_resources\_as\_uid](#class-editorsettings-property-text-editor-behavior-files-drop-preload-resources-as-uid) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/open\_dominant\_script\_on\_scene\_change](#class-editorsettings-property-text-editor-behavior-files-open-dominant-script-on-scene-change) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/restore\_scripts\_on\_load](#class-editorsettings-property-text-editor-behavior-files-restore-scripts-on-load) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/trim\_final\_newlines\_on\_save](#class-editorsettings-property-text-editor-behavior-files-trim-final-newlines-on-save) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/files/trim\_trailing\_whitespace\_on\_save](#class-editorsettings-property-text-editor-behavior-files-trim-trailing-whitespace-on-save) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/general/empty\_selection\_clipboard](#class-editorsettings-property-text-editor-behavior-general-empty-selection-clipboard) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/indent/auto\_indent](#class-editorsettings-property-text-editor-behavior-indent-auto-indent) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/indent/indent\_wrapped\_lines](#class-editorsettings-property-text-editor-behavior-indent-indent-wrapped-lines) |
| [int](class_int.md#class-int) | [text\_editor/behavior/indent/size](#class-editorsettings-property-text-editor-behavior-indent-size) |
| [int](class_int.md#class-int) | [text\_editor/behavior/indent/type](#class-editorsettings-property-text-editor-behavior-indent-type) |
| [String](class_string.md#class-string) | [text\_editor/behavior/navigation/custom\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-custom-word-separators) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/drag\_and\_drop\_selection](#class-editorsettings-property-text-editor-behavior-navigation-drag-and-drop-selection) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/move\_caret\_on\_right\_click](#class-editorsettings-property-text-editor-behavior-navigation-move-caret-on-right-click) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/open\_script\_when\_connecting\_signal\_to\_existing\_method](#class-editorsettings-property-text-editor-behavior-navigation-open-script-when-connecting-signal-to-existing-method) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/scroll\_past\_end\_of\_file](#class-editorsettings-property-text-editor-behavior-navigation-scroll-past-end-of-file) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/smooth\_scrolling](#class-editorsettings-property-text-editor-behavior-navigation-smooth-scrolling) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/stay\_in\_script\_editor\_on\_node\_selected](#class-editorsettings-property-text-editor-behavior-navigation-stay-in-script-editor-on-node-selected) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/use\_custom\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-custom-word-separators) |
| [bool](class_bool.md#class-bool) | [text\_editor/behavior/navigation/use\_default\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-default-word-separators) |
| [int](class_int.md#class-int) | [text\_editor/behavior/navigation/v\_scroll\_speed](#class-editorsettings-property-text-editor-behavior-navigation-v-scroll-speed) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/add\_node\_path\_literals](#class-editorsettings-property-text-editor-completion-add-node-path-literals) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/add\_string\_name\_literals](#class-editorsettings-property-text-editor-completion-add-string-name-literals) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/add\_type\_hints](#class-editorsettings-property-text-editor-completion-add-type-hints) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/auto\_brace\_complete](#class-editorsettings-property-text-editor-completion-auto-brace-complete) |
| [float](class_float.md#class-float) | [text\_editor/completion/code\_complete\_delay](#class-editorsettings-property-text-editor-completion-code-complete-delay) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/code\_complete\_enabled](#class-editorsettings-property-text-editor-completion-code-complete-enabled) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/colorize\_suggestions](#class-editorsettings-property-text-editor-completion-colorize-suggestions) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/complete\_file\_paths](#class-editorsettings-property-text-editor-completion-complete-file-paths) |
| [float](class_float.md#class-float) | [text\_editor/completion/idle\_parse\_delay](#class-editorsettings-property-text-editor-completion-idle-parse-delay) |
| [float](class_float.md#class-float) | [text\_editor/completion/idle\_parse\_delay\_with\_errors\_found](#class-editorsettings-property-text-editor-completion-idle-parse-delay-with-errors-found) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/put\_callhint\_tooltip\_below\_current\_line](#class-editorsettings-property-text-editor-completion-put-callhint-tooltip-below-current-line) |
| [bool](class_bool.md#class-bool) | [text\_editor/completion/use\_single\_quotes](#class-editorsettings-property-text-editor-completion-use-single-quotes) |
| [String](class_string.md#class-string) | [text\_editor/external/exec\_flags](#class-editorsettings-property-text-editor-external-exec-flags) |
| [String](class_string.md#class-string) | [text\_editor/external/exec\_path](#class-editorsettings-property-text-editor-external-exec-path) |
| [bool](class_bool.md#class-bool) | [text\_editor/external/use\_external\_editor](#class-editorsettings-property-text-editor-external-use-external-editor) |
| [int](class_int.md#class-int) | [text\_editor/help/class\_reference\_examples](#class-editorsettings-property-text-editor-help-class-reference-examples) |
| [int](class_int.md#class-int) | [text\_editor/help/help\_font\_size](#class-editorsettings-property-text-editor-help-help-font-size) |
| [int](class_int.md#class-int) | [text\_editor/help/help\_source\_font\_size](#class-editorsettings-property-text-editor-help-help-source-font-size) |
| [int](class_int.md#class-int) | [text\_editor/help/help\_title\_font\_size](#class-editorsettings-property-text-editor-help-help-title-font-size) |
| [bool](class_bool.md#class-bool) | [text\_editor/help/show\_help\_index](#class-editorsettings-property-text-editor-help-show-help-index) |
| [bool](class_bool.md#class-bool) | [text\_editor/help/sort\_functions\_alphabetically](#class-editorsettings-property-text-editor-help-sort-functions-alphabetically) |
| [bool](class_bool.md#class-bool) | [text\_editor/script\_list/group\_help\_pages](#class-editorsettings-property-text-editor-script-list-group-help-pages) |
| [bool](class_bool.md#class-bool) | [text\_editor/script\_list/highlight\_scene\_scripts](#class-editorsettings-property-text-editor-script-list-highlight-scene-scripts) |
| [int](class_int.md#class-int) | [text\_editor/script\_list/list\_script\_names\_as](#class-editorsettings-property-text-editor-script-list-list-script-names-as) |
| [bool](class_bool.md#class-bool) | [text\_editor/script\_list/script\_temperature\_enabled](#class-editorsettings-property-text-editor-script-list-script-temperature-enabled) |
| [int](class_int.md#class-int) | [text\_editor/script\_list/script\_temperature\_history\_size](#class-editorsettings-property-text-editor-script-list-script-temperature-history-size) |
| [bool](class_bool.md#class-bool) | [text\_editor/script\_list/show\_members\_overview](#class-editorsettings-property-text-editor-script-list-show-members-overview) |
| [bool](class_bool.md#class-bool) | [text\_editor/script\_list/sort\_members\_outline\_alphabetically](#class-editorsettings-property-text-editor-script-list-sort-members-outline-alphabetically) |
| [int](class_int.md#class-int) | [text\_editor/script\_list/sort\_scripts\_by](#class-editorsettings-property-text-editor-script-list-sort-scripts-by) |
| [String](class_string.md#class-string) | [text\_editor/theme/color\_theme](#class-editorsettings-property-text-editor-theme-color-theme) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/background\_color](#class-editorsettings-property-text-editor-theme-highlighting-background-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/base\_type\_color](#class-editorsettings-property-text-editor-theme-highlighting-base-type-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/bookmark\_color](#class-editorsettings-property-text-editor-theme-highlighting-bookmark-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/brace\_mismatch\_color](#class-editorsettings-property-text-editor-theme-highlighting-brace-mismatch-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/breakpoint\_color](#class-editorsettings-property-text-editor-theme-highlighting-breakpoint-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/caret\_background\_color](#class-editorsettings-property-text-editor-theme-highlighting-caret-background-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/caret\_color](#class-editorsettings-property-text-editor-theme-highlighting-caret-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/code\_folding\_color](#class-editorsettings-property-text-editor-theme-highlighting-code-folding-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/comment\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/comment\_markers/critical\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-color) |
| [String](class_string.md#class-string) | [text\_editor/theme/highlighting/comment\_markers/critical\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-list) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/comment\_markers/notice\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-color) |
| [String](class_string.md#class-string) | [text\_editor/theme/highlighting/comment\_markers/notice\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-list) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/comment\_markers/warning\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-color) |
| [String](class_string.md#class-string) | [text\_editor/theme/highlighting/comment\_markers/warning\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-list) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_background\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-background-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_existing\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-existing-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_font\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-font-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_scroll\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-scroll-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_scroll\_hovered\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-scroll-hovered-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/completion\_selected\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-selected-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/control\_flow\_keyword\_color](#class-editorsettings-property-text-editor-theme-highlighting-control-flow-keyword-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/current\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/doc\_comment\_color](#class-editorsettings-property-text-editor-theme-highlighting-doc-comment-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/engine\_type\_color](#class-editorsettings-property-text-editor-theme-highlighting-engine-type-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/executing\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-executing-line-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/folded\_code\_region\_color](#class-editorsettings-property-text-editor-theme-highlighting-folded-code-region-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/function\_color](#class-editorsettings-property-text-editor-theme-highlighting-function-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/annotation\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-annotation-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/function\_definition\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-function-definition-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/global\_function\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-global-function-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/node\_path\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-node-path-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/node\_reference\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-node-reference-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/gdscript/string\_name\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-string-name-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/keyword\_color](#class-editorsettings-property-text-editor-theme-highlighting-keyword-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/line\_length\_guideline\_color](#class-editorsettings-property-text-editor-theme-highlighting-line-length-guideline-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-line-number-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/mark\_color](#class-editorsettings-property-text-editor-theme-highlighting-mark-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/member\_variable\_color](#class-editorsettings-property-text-editor-theme-highlighting-member-variable-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/number\_color](#class-editorsettings-property-text-editor-theme-highlighting-number-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/safe\_line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-safe-line-number-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/search\_result\_border\_color](#class-editorsettings-property-text-editor-theme-highlighting-search-result-border-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/search\_result\_color](#class-editorsettings-property-text-editor-theme-highlighting-search-result-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/selection\_color](#class-editorsettings-property-text-editor-theme-highlighting-selection-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/string\_color](#class-editorsettings-property-text-editor-theme-highlighting-string-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/symbol\_color](#class-editorsettings-property-text-editor-theme-highlighting-symbol-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/text\_color](#class-editorsettings-property-text-editor-theme-highlighting-text-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/text\_selected\_color](#class-editorsettings-property-text-editor-theme-highlighting-text-selected-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/user\_type\_color](#class-editorsettings-property-text-editor-theme-highlighting-user-type-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/warning\_color](#class-editorsettings-property-text-editor-theme-highlighting-warning-color) |
| [Color](class_color.md#class-color) | [text\_editor/theme/highlighting/word\_highlighted\_color](#class-editorsettings-property-text-editor-theme-highlighting-word-highlighted-color) |
| [String](class_string.md#class-string) | [version\_control/ssh\_private\_key\_path](#class-editorsettings-property-version-control-ssh-private-key-path) |
| [String](class_string.md#class-string) | [version\_control/ssh\_public\_key\_path](#class-editorsettings-property-version-control-ssh-public-key-path) |
| [String](class_string.md#class-string) | [version\_control/username](#class-editorsettings-property-version-control-username) |

## Methods

|     |     |
| --- | --- |
| void | [add\_property\_info](#class-editorsettings-method-add-property-info)(info: [Dictionary](class_dictionary.md#class-dictionary)) |
| [bool](class_bool.md#class-bool) | [check\_changed\_settings\_in\_group](#class-editorsettings-method-check-changed-settings-in-group)(setting\_prefix: [String](class_string.md#class-string)) const |
| void | [erase](#class-editorsettings-method-erase)(property: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_changed\_settings](#class-editorsettings-method-get-changed-settings)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_favorites](#class-editorsettings-method-get-favorites)() const |
| [Variant](class_variant.md#class-variant) | [get\_project\_metadata](#class-editorsettings-method-get-project-metadata)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), default: [Variant](class_variant.md#class-variant) = null) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_recent\_dirs](#class-editorsettings-method-get-recent-dirs)() const |
| [Variant](class_variant.md#class-variant) | [get\_setting](#class-editorsettings-method-get-setting)(name: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_setting](#class-editorsettings-method-has-setting)(name: [String](class_string.md#class-string)) const |
| void | [mark\_setting\_changed](#class-editorsettings-method-mark-setting-changed)(setting: [String](class_string.md#class-string)) |
| void | [set\_builtin\_action\_override](#class-editorsettings-method-set-builtin-action-override)(name: [String](class_string.md#class-string), actions\_list: [Array](class_array.md#class-array)\[ [InputEvent](class_inputevent.md#class-inputevent)\]) |
| void | [set\_favorites](#class-editorsettings-method-set-favorites)(dirs: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| void | [set\_initial\_value](#class-editorsettings-method-set-initial-value)(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant), update\_current: [bool](class_bool.md#class-bool)) |
| void | [set\_project\_metadata](#class-editorsettings-method-set-project-metadata)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), data: [Variant](class_variant.md#class-variant)) |
| void | [set\_recent\_dirs](#class-editorsettings-method-set-recent-dirs)(dirs: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) |
| void | [set\_setting](#class-editorsettings-method-set-setting)(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |

* * *

## Signals

**settings\_changed**() [🔗](#class-editorsettings-signal-settings-changed)

Emitted after any editor setting has changed.

* * *

## Constants

**NOTIFICATION\_EDITOR\_SETTINGS\_CHANGED** = `10000` [🔗](#class-editorsettings-constant-notification-editor-settings-changed)

Emitted after any editor setting has changed. It's used by various editor plugins to update their visuals on theme changes or logic on configuration changes.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **asset\_library/use\_threads** [🔗](#class-editorsettings-property-asset-library-use-threads)

If `true`, the Asset Library uses multiple threads for its HTTP requests. This prevents the Asset Library from blocking the main thread for every loaded asset.

* * *

[bool](class_bool.md#class-bool) **debugger/auto\_switch\_to\_remote\_scene\_tree** [🔗](#class-editorsettings-property-debugger-auto-switch-to-remote-scene-tree)

If `true`, automatically switches to the **Remote** scene tree when running the project from the editor. If `false`, stays on the **Local** scene tree when running the project from the editor.

**Warning:** Enabling this setting can cause stuttering when running a project with a large amount of nodes (typically a few thousands of nodes or more), even if the editor window isn't focused. This is due to the remote scene tree being updated every second regardless of whether the editor is focused.

* * *

[bool](class_bool.md#class-bool) **debugger/auto\_switch\_to\_stack\_trace** [🔗](#class-editorsettings-property-debugger-auto-switch-to-stack-trace)

If `true`, automatically switches to the **Stack Trace** panel when the debugger hits a breakpoint or steps.

* * *

[int](class_int.md#class-int) **debugger/max\_node\_selection** [🔗](#class-editorsettings-property-debugger-max-node-selection)

The limit of how many remote nodes can be selected at once.

**Warning:** Increasing this value is not recommended, as selecting too many can make the editing and inspection of remote properties unreliable.

* * *

[bool](class_bool.md#class-bool) **debugger/profile\_native\_calls** [🔗](#class-editorsettings-property-debugger-profile-native-calls)

If `true`, enables collection of profiling data from non-GDScript Godot functions, such as engine class methods. Enabling this slows execution while profiling further.

* * *

[int](class_int.md#class-int) **debugger/profiler\_frame\_history\_size** [🔗](#class-editorsettings-property-debugger-profiler-frame-history-size)

The size of the profiler's frame history. The default value (3600) allows seeing up to 60 seconds of profiling if the project renders at a constant 60 FPS. Higher values allow viewing longer periods of profiling in the graphs, especially when the project is running at high framerates.

* * *

[int](class_int.md#class-int) **debugger/profiler\_frame\_max\_functions** [🔗](#class-editorsettings-property-debugger-profiler-frame-max-functions)

The maximum number of script functions that can be displayed per frame in the profiler. If there are more script functions called in a given profiler frame, these functions will be discarded from the profiling results entirely.

**Note:** This setting is only read when the profiler is first started, so changing it during profiling will have no effect.

* * *

[int](class_int.md#class-int) **debugger/profiler\_target\_fps** [🔗](#class-editorsettings-property-debugger-profiler-target-fps)

The target frame rate shown in the visual profiler graph, in frames per second.

* * *

[float](class_float.md#class-float) **debugger/remote\_inspect\_refresh\_interval** [🔗](#class-editorsettings-property-debugger-remote-inspect-refresh-interval)

The refresh interval for the remote inspector's properties (in seconds). Lower values are more reactive, but may cause stuttering while the project is running from the editor and the **Remote** scene tree is selected in the Scene tree dock.

* * *

[float](class_float.md#class-float) **debugger/remote\_scene\_tree\_refresh\_interval** [🔗](#class-editorsettings-property-debugger-remote-scene-tree-refresh-interval)

The refresh interval for the remote scene tree (in seconds). Lower values are more reactive, but may cause stuttering while the project is running from the editor and the **Remote** scene tree is selected in the Scene tree dock.

* * *

[bool](class_bool.md#class-bool) **docks/filesystem/always\_show\_folders** [🔗](#class-editorsettings-property-docks-filesystem-always-show-folders)

If `true`, displays folders in the FileSystem dock's bottom pane when split mode is enabled. If `false`, only files will be displayed in the bottom pane. Split mode can be toggled by pressing the icon next to the `res://` folder path.

**Note:** This setting has no effect when split mode is disabled (which is the default).

* * *

[String](class_string.md#class-string) **docks/filesystem/other\_file\_extensions** [🔗](#class-editorsettings-property-docks-filesystem-other-file-extensions)

A comma separated list of unsupported file extensions to show in the FileSystem dock, e.g. `"ico,icns"`.

* * *

[String](class_string.md#class-string) **docks/filesystem/textfile\_extensions** [🔗](#class-editorsettings-property-docks-filesystem-textfile-extensions)

A comma separated list of file extensions to consider as editable text files in the FileSystem dock (by double-clicking on the files), e.g. `"txt,md,cfg,ini,log,json,yml,yaml,toml,xml"`.

* * *

[int](class_int.md#class-int) **docks/filesystem/thumbnail\_size** [🔗](#class-editorsettings-property-docks-filesystem-thumbnail-size)

The thumbnail size to use in the FileSystem dock (in pixels). See also [filesystem/file\_dialog/thumbnail\_size](#class-editorsettings-property-filesystem-file-dialog-thumbnail-size).

* * *

[float](class_float.md#class-float) **docks/property\_editor/auto\_refresh\_interval** [🔗](#class-editorsettings-property-docks-property-editor-auto-refresh-interval)

The refresh interval to use for the Inspector dock's properties. The effect of this setting is mainly noticeable when adjusting gizmos in the 2D/3D editor and looking at the inspector at the same time. Lower values make the inspector refresh more often, but take up more CPU time.

* * *

[float](class_float.md#class-float) **docks/property\_editor/subresource\_hue\_tint** [🔗](#class-editorsettings-property-docks-property-editor-subresource-hue-tint)

The tint intensity to use for the subresources background in the Inspector dock. The tint is used to distinguish between different subresources in the inspector. Higher values result in a more noticeable background color difference.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/accessibility\_warnings** [🔗](#class-editorsettings-property-docks-scene-tree-accessibility-warnings)

If `true`, accessibility related warnings are displayed alongside other configuration warnings.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/ask\_before\_deleting\_related\_animation\_tracks** [🔗](#class-editorsettings-property-docks-scene-tree-ask-before-deleting-related-animation-tracks)

If `true`, when a node is deleted with animation tracks referencing it, a confirmation dialog appears before the tracks are deleted. The dialog will appear even when using the "Delete (No Confirm)" shortcut.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/ask\_before\_revoking\_unique\_name** [🔗](#class-editorsettings-property-docks-scene-tree-ask-before-revoking-unique-name)

If `true`, displays a confirmation dialog after left-clicking the "percent" icon next to a node name in the Scene tree dock. When clicked, this icon revokes the node's scene-unique name, which can impact the behavior of scripts that rely on this scene-unique name due to identifiers not being found anymore.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/auto\_expand\_to\_selected** [🔗](#class-editorsettings-property-docks-scene-tree-auto-expand-to-selected)

If `true`, the scene tree dock will automatically unfold nodes when a node that has folded parents is selected.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/center\_node\_on\_reparent** [🔗](#class-editorsettings-property-docks-scene-tree-center-node-on-reparent)

If `true`, new node created when reparenting node(s) will be positioned at the average position of the selected node(s).

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/hide\_filtered\_out\_parents** [🔗](#class-editorsettings-property-docks-scene-tree-hide-filtered-out-parents)

If `true`, the scene tree dock will only show nodes that match the filter, without showing parents that don't. This settings can also be changed in the Scene dock's top menu.

* * *

[bool](class_bool.md#class-bool) **docks/scene\_tree/start\_create\_dialog\_fully\_expanded** [🔗](#class-editorsettings-property-docks-scene-tree-start-create-dialog-fully-expanded)

If `true`, the Create dialog (Create New Node/Create New Resource) will start with all its sections expanded. Otherwise, sections will be collapsed until the user starts searching (which will automatically expand sections as needed).

* * *

[Color](class_color.md#class-color) **editors/2d/bone\_color1** [🔗](#class-editorsettings-property-editors-2d-bone-color1)

The "start" stop of the color gradient to use for bones in the 2D skeleton editor.

* * *

[Color](class_color.md#class-color) **editors/2d/bone\_color2** [🔗](#class-editorsettings-property-editors-2d-bone-color2)

The "end" stop of the color gradient to use for bones in the 2D skeleton editor.

* * *

[Color](class_color.md#class-color) **editors/2d/bone\_ik\_color** [🔗](#class-editorsettings-property-editors-2d-bone-ik-color)

The color to use for inverse kinematics-enabled bones in the 2D skeleton editor.

* * *

[Color](class_color.md#class-color) **editors/2d/bone\_outline\_color** [🔗](#class-editorsettings-property-editors-2d-bone-outline-color)

The outline color to use for non-selected bones in the 2D skeleton editor. See also [editors/2d/bone\_selected\_color](#class-editorsettings-property-editors-2d-bone-selected-color).

* * *

[float](class_float.md#class-float) **editors/2d/bone\_outline\_size** [🔗](#class-editorsettings-property-editors-2d-bone-outline-size)

The outline size in the 2D skeleton editor (in pixels). See also [editors/2d/bone\_width](#class-editorsettings-property-editors-2d-bone-width).

**Note:** Changes to this value only apply after modifying a [Bone2D](class_bone2d.md#class-bone2d) node in any way, or closing and reopening the scene.

* * *

[Color](class_color.md#class-color) **editors/2d/bone\_selected\_color** [🔗](#class-editorsettings-property-editors-2d-bone-selected-color)

The color to use for selected bones in the 2D skeleton editor. See also [editors/2d/bone\_outline\_color](#class-editorsettings-property-editors-2d-bone-outline-color).

* * *

[float](class_float.md#class-float) **editors/2d/bone\_width** [🔗](#class-editorsettings-property-editors-2d-bone-width)

The bone width in the 2D skeleton editor (in pixels). See also [editors/2d/bone\_outline\_size](#class-editorsettings-property-editors-2d-bone-outline-size).

**Note:** Changes to this value only apply after modifying a [Bone2D](class_bone2d.md#class-bone2d) node in any way, or closing and reopening the scene.

* * *

[Color](class_color.md#class-color) **editors/2d/grid\_color** [🔗](#class-editorsettings-property-editors-2d-grid-color)

The grid color to use in the 2D editor.

* * *

[Color](class_color.md#class-color) **editors/2d/guides\_color** [🔗](#class-editorsettings-property-editors-2d-guides-color)

The guides color to use in the 2D editor. Guides can be created by dragging the mouse cursor from the rulers.

* * *

[float](class_float.md#class-float) **editors/2d/ruler\_width** [🔗](#class-editorsettings-property-editors-2d-ruler-width)

The thickness of the coordinate ruler in the 2D editor. Increasing this will also increase the size of the ruler font, improving readability when using a lower editor scale. The editor may force a minimum size to keep the ruler numbers legible.

* * *

[Color](class_color.md#class-color) **editors/2d/smart\_snapping\_line\_color** [🔗](#class-editorsettings-property-editors-2d-smart-snapping-line-color)

The color to use when drawing smart snapping lines in the 2D editor. The smart snapping lines will automatically display when moving 2D nodes if smart snapping is enabled in the Snapping Options menu at the top of the 2D editor viewport.

* * *

[bool](class_bool.md#class-bool) **editors/2d/use\_integer\_zoom\_by\_default** [🔗](#class-editorsettings-property-editors-2d-use-integer-zoom-by-default)

If `true`, the 2D editor will snap to integer zoom values when not holding the `Alt` key. If `false`, this behavior is swapped.

* * *

[Color](class_color.md#class-color) **editors/2d/viewport\_border\_color** [🔗](#class-editorsettings-property-editors-2d-viewport-border-color)

The color of the viewport border in the 2D editor. This border represents the viewport's size at the base resolution defined in the Project Settings. Objects placed outside this border will not be visible unless a [Camera2D](class_camera2d.md#class-camera2d) node is used, or unless the window is resized and the stretch mode is set to `disabled`.

* * *

[float](class_float.md#class-float) **editors/2d/zoom\_speed\_factor** [🔗](#class-editorsettings-property-editors-2d-zoom-speed-factor)

The factor to use when zooming in or out in the 2D editor. For example, `1.1` will zoom in by 10% with every step. If set to `2.0`, zooming will only cycle through powers of two.

* * *

[Color](class_color.md#class-color) **editors/3d/active\_selection\_box\_color** [🔗](#class-editorsettings-property-editors-3d-active-selection-box-color)

The color to use for the active selection box that surrounds selected nodes in the 3D editor viewport. The color's alpha channel influences the selection box's opacity.

**Note:** The term "active" indicates that this object is the primary selection used as the basis for certain operations. This is the last selected [Node3D](class_node3d.md#class-node3d), which can be reordered with `Shift + Left mouse button`.

* * *

[float](class_float.md#class-float) **editors/3d/default\_fov** [🔗](#class-editorsettings-property-editors-3d-default-fov)

The default camera vertical field of view to use in the 3D editor (in degrees). The camera field of view can be adjusted on a per-scene basis using the **View** menu at the top of the 3D editor. If a scene had its camera field of view adjusted using the **View** menu, this setting is ignored in the scene in question. This setting is also ignored while a [Camera3D](class_camera3d.md#class-camera3d) node is being previewed in the editor.

**Note:** The editor camera always uses the **Keep Height** aspect mode.

* * *

[float](class_float.md#class-float) **editors/3d/default\_z\_far** [🔗](#class-editorsettings-property-editors-3d-default-z-far)

The default camera far clip distance to use in the 3D editor (in degrees). Higher values make it possible to view objects placed further away from the camera, at the cost of lower precision in the depth buffer (which can result in visible Z-fighting in the distance). The camera far clip distance can be adjusted on a per-scene basis using the **View** menu at the top of the 3D editor. If a scene had its camera far clip distance adjusted using the **View** menu, this setting is ignored in the scene in question. This setting is also ignored while a [Camera3D](class_camera3d.md#class-camera3d) node is being previewed in the editor.

* * *

[float](class_float.md#class-float) **editors/3d/default\_z\_near** [🔗](#class-editorsettings-property-editors-3d-default-z-near)

The default camera near clip distance to use in the 3D editor (in degrees). Lower values make it possible to view objects placed closer to the camera, at the cost of lower precision in the depth buffer (which can result in visible Z-fighting in the distance). The camera near clip distance can be adjusted on a per-scene basis using the **View** menu at the top of the 3D editor. If a scene had its camera near clip distance adjusted using the **View** menu, this setting is ignored in the scene in question. This setting is also ignored while a [Camera3D](class_camera3d.md#class-camera3d) node is being previewed in the editor.

* * *

[int](class_int.md#class-int) **editors/3d/freelook/freelook\_activation\_modifier** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-activation-modifier)

The modifier key to use to enable freelook in the 3D editor (on top of pressing the right mouse button).

**Note:** Regardless of this setting, the freelook toggle keyboard shortcut ( `Shift + F` by default) is always available.

**Note:** On certain window managers on Linux, the `Alt` key will be intercepted by the window manager when clicking a mouse button at the same time. This means Godot will not see the modifier key as being pressed.

* * *

[float](class_float.md#class-float) **editors/3d/freelook/freelook\_base\_speed** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-base-speed)

The base 3D freelook speed in units per second. This can be adjusted by using the mouse wheel while in freelook mode, or by holding down the "fast" or "slow" modifier keys ( `Shift` and `Alt` by default, respectively).

* * *

[float](class_float.md#class-float) **editors/3d/freelook/freelook\_inertia** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-inertia)

The inertia of the 3D freelook camera. Higher values make the camera start and stop slower, which looks smoother but adds latency.

* * *

[int](class_int.md#class-int) **editors/3d/freelook/freelook\_navigation\_scheme** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-navigation-scheme)

The navigation scheme to use when freelook is enabled in the 3D editor. Some of the navigation schemes below may be more convenient when designing specific levels in the 3D editor.

- **Default:** The "Freelook Forward", "Freelook Backward", "Freelook Up" and "Freelook Down" keys will move relative to the camera, taking its pitch angle into account for the movement.

- **Partially Axis-Locked:** The "Freelook Forward" and "Freelook Backward" keys will move relative to the camera, taking its pitch angle into account for the movement. The "Freelook Up" and "Freelook Down" keys will move in an "absolute" manner, _not_ taking the camera's pitch angle into account for the movement.

- **Fully Axis-Locked:** The "Freelook Forward", "Freelook Backward", "Freelook Up" and "Freelook Down" keys will move in an "absolute" manner, _not_ taking the camera's pitch angle into account for the movement.


See also [editors/3d/navigation/navigation\_scheme](#class-editorsettings-property-editors-3d-navigation-navigation-scheme).

* * *

[float](class_float.md#class-float) **editors/3d/freelook/freelook\_sensitivity** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-sensitivity)

The mouse sensitivity to use while freelook mode is active in the 3D editor. See also [editors/3d/navigation\_feel/orbit\_sensitivity](#class-editorsettings-property-editors-3d-navigation-feel-orbit-sensitivity).

* * *

[bool](class_bool.md#class-bool) **editors/3d/freelook/freelook\_speed\_zoom\_link** [🔗](#class-editorsettings-property-editors-3d-freelook-freelook-speed-zoom-link)

If `true`, freelook speed is linked to the zoom value used in the camera orbit mode in the 3D editor.

* * *

[float](class_float.md#class-float) **editors/3d/grid\_division\_level\_bias** [🔗](#class-editorsettings-property-editors-3d-grid-division-level-bias)

The grid division bias to use in the 3D editor. Negative values will cause small grid divisions to appear earlier, whereas positive values will cause small grid divisions to appear later.

* * *

[int](class_int.md#class-int) **editors/3d/grid\_division\_level\_max** [🔗](#class-editorsettings-property-editors-3d-grid-division-level-max)

The largest grid division to use in the 3D editor. Together with [editors/3d/primary\_grid\_steps](#class-editorsettings-property-editors-3d-primary-grid-steps), this determines how large the grid divisions can be. The grid divisions will not be able to get larger than `primary_grid_steps ^ grid_division_level_max` units. By default, when [editors/3d/primary\_grid\_steps](#class-editorsettings-property-editors-3d-primary-grid-steps) is `8`, this means grid divisions cannot get larger than `64` units each (so primary grid lines are `512` units apart), no matter how far away the camera is from the grid.

* * *

[int](class_int.md#class-int) **editors/3d/grid\_division\_level\_min** [🔗](#class-editorsettings-property-editors-3d-grid-division-level-min)

The smallest grid division to use in the 3D editor. Together with [editors/3d/primary\_grid\_steps](#class-editorsettings-property-editors-3d-primary-grid-steps), this determines how small the grid divisions can be. The grid divisions will not be able to get smaller than `primary_grid_steps ^ grid_division_level_min` units. By default, this means grid divisions cannot get smaller than 1 unit each, no matter how close the camera is from the grid.

* * *

[int](class_int.md#class-int) **editors/3d/grid\_size** [🔗](#class-editorsettings-property-editors-3d-grid-size)

The grid size in units. Higher values prevent the grid from appearing "cut off" at certain angles, but make the grid more demanding to render. Depending on the camera's position, the grid may not be fully visible since a shader is used to fade it progressively.

* * *

[bool](class_bool.md#class-bool) **editors/3d/grid\_xy\_plane** [🔗](#class-editorsettings-property-editors-3d-grid-xy-plane)

If `true`, renders the grid on the XY plane in perspective view. This can be useful for 3D side-scrolling games.

* * *

[bool](class_bool.md#class-bool) **editors/3d/grid\_xz\_plane** [🔗](#class-editorsettings-property-editors-3d-grid-xz-plane)

If `true`, renders the grid on the XZ plane in perspective view.

* * *

[bool](class_bool.md#class-bool) **editors/3d/grid\_yz\_plane** [🔗](#class-editorsettings-property-editors-3d-grid-yz-plane)

If `true`, renders the grid on the YZ plane in perspective view. This can be useful for 3D side-scrolling games.

* * *

[float](class_float.md#class-float) **editors/3d/manipulator\_gizmo\_opacity** [🔗](#class-editorsettings-property-editors-3d-manipulator-gizmo-opacity)

Opacity of the default gizmo for moving, rotating, and scaling 3D nodes.

* * *

[int](class_int.md#class-int) **editors/3d/manipulator\_gizmo\_size** [🔗](#class-editorsettings-property-editors-3d-manipulator-gizmo-size)

Size of the default gizmo for moving, rotating, and scaling 3D nodes.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/emulate\_3\_button\_mouse** [🔗](#class-editorsettings-property-editors-3d-navigation-emulate-3-button-mouse)

If `true`, enables 3-button mouse emulation mode. This is useful on laptops when using a trackpad.

When 3-button mouse emulation mode is enabled, the pan, zoom and orbit modifiers can always be used in the 3D editor viewport, even when not holding down any mouse button.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/emulate\_numpad** [🔗](#class-editorsettings-property-editors-3d-navigation-emulate-numpad)

If `true`, allows using the top row `0`- `9` keys to function as their equivalent numpad keys for 3D editor navigation. This should be enabled on keyboards that have no numeric keypad available.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/invert\_x\_axis** [🔗](#class-editorsettings-property-editors-3d-navigation-invert-x-axis)

If `true`, invert the horizontal mouse axis when panning or orbiting in the 3D editor. This setting does _not_ apply to freelook mode.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/invert\_y\_axis** [🔗](#class-editorsettings-property-editors-3d-navigation-invert-y-axis)

If `true`, invert the vertical mouse axis when panning, orbiting, or using freelook mode in the 3D editor.

* * *

[int](class_int.md#class-int) **editors/3d/navigation/navigation\_scheme** [🔗](#class-editorsettings-property-editors-3d-navigation-navigation-scheme)

The navigation scheme preset to use in the 3D editor. Changing this setting will affect the mouse button and modifier keys used to navigate the 3D editor viewport.

All schemes can use `Mouse wheel` to zoom.

- **Godot:**  `Middle mouse button` to orbit. `Shift + Middle mouse button` to pan. `Ctrl + Middle mouse button` to zoom.

- **Maya:**  `Alt + Left mouse button` to orbit. `Middle mouse button` to pan, `Shift + Middle mouse button` to pan 10 times faster. `Alt + Right mouse button` to zoom.

- **Modo:**  `Alt + Left mouse button` to orbit. `Alt + Shift + Left mouse button` to pan. `Ctrl + Alt + Left mouse button` to zoom.

- **Tablet/Trackpad:**  `Alt` to orbit. `Shift` to pan. `Ctrl` to zoom. Enables 3-button mouse emulation mode.


See also [editors/3d/navigation/orbit\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-orbit-mouse-button), [editors/3d/navigation/pan\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-pan-mouse-button), [editors/3d/navigation/zoom\_mouse\_button](#class-editorsettings-property-editors-3d-navigation-zoom-mouse-button), [editors/3d/freelook/freelook\_navigation\_scheme](#class-editorsettings-property-editors-3d-freelook-freelook-navigation-scheme), and [editors/3d/navigation/emulate\_3\_button\_mouse](#class-editorsettings-property-editors-3d-navigation-emulate-3-button-mouse).

**Note:** On certain window managers on Linux, the `Alt` key will be intercepted by the window manager when clicking a mouse button at the same time. This means Godot will not see the modifier key as being pressed.

* * *

[int](class_int.md#class-int) **editors/3d/navigation/orbit\_mouse\_button** [🔗](#class-editorsettings-property-editors-3d-navigation-orbit-mouse-button)

The mouse button that needs to be held down to orbit in the 3D editor viewport.

* * *

[int](class_int.md#class-int) **editors/3d/navigation/pan\_mouse\_button** [🔗](#class-editorsettings-property-editors-3d-navigation-pan-mouse-button)

The mouse button that needs to be held down to pan in the 3D editor viewport.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/show\_viewport\_navigation\_gizmo** [🔗](#class-editorsettings-property-editors-3d-navigation-show-viewport-navigation-gizmo)

If `true`, shows gizmos for moving and rotating the camera in the bottom corners of the 3D editor's viewport. Useful for devices that use touch screen.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/show\_viewport\_rotation\_gizmo** [🔗](#class-editorsettings-property-editors-3d-navigation-show-viewport-rotation-gizmo)

If `true`, shows a small orientation gizmo in the top-right corner of the 3D editor's viewports.

* * *

[bool](class_bool.md#class-bool) **editors/3d/navigation/warped\_mouse\_panning** [🔗](#class-editorsettings-property-editors-3d-navigation-warped-mouse-panning)

If `true`, warps the mouse around the 3D viewport while panning in the 3D editor. This makes it possible to pan over a large area without having to exit panning and adjust the mouse cursor.

* * *

[int](class_int.md#class-int) **editors/3d/navigation/zoom\_mouse\_button** [🔗](#class-editorsettings-property-editors-3d-navigation-zoom-mouse-button)

The mouse button that needs to be held down to zoom in the 3D editor viewport.

* * *

[int](class_int.md#class-int) **editors/3d/navigation/zoom\_style** [🔗](#class-editorsettings-property-editors-3d-navigation-zoom-style)

The mouse cursor movement direction to use when zooming by moving the mouse. This does not affect zooming with the mouse wheel.

* * *

[float](class_float.md#class-float) **editors/3d/navigation\_feel/orbit\_inertia** [🔗](#class-editorsettings-property-editors-3d-navigation-feel-orbit-inertia)

The inertia to use when orbiting in the 3D editor. Higher values make the camera start and stop slower, which looks smoother but adds latency.

* * *

[float](class_float.md#class-float) **editors/3d/navigation\_feel/orbit\_sensitivity** [🔗](#class-editorsettings-property-editors-3d-navigation-feel-orbit-sensitivity)

The mouse sensitivity to use when orbiting in the 3D editor. See also [editors/3d/freelook/freelook\_sensitivity](#class-editorsettings-property-editors-3d-freelook-freelook-sensitivity).

* * *

[float](class_float.md#class-float) **editors/3d/navigation\_feel/translation\_inertia** [🔗](#class-editorsettings-property-editors-3d-navigation-feel-translation-inertia)

The inertia to use when panning in the 3D editor. Higher values make the camera start and stop slower, which looks smoother but adds latency.

* * *

[float](class_float.md#class-float) **editors/3d/navigation\_feel/translation\_sensitivity** [🔗](#class-editorsettings-property-editors-3d-navigation-feel-translation-sensitivity)

The mouse sensitivity to use when panning in the 3D editor.

* * *

[float](class_float.md#class-float) **editors/3d/navigation\_feel/zoom\_inertia** [🔗](#class-editorsettings-property-editors-3d-navigation-feel-zoom-inertia)

The inertia to use when zooming in the 3D editor. Higher values make the camera start and stop slower, which looks smoother but adds latency.

* * *

[Color](class_color.md#class-color) **editors/3d/primary\_grid\_color** [🔗](#class-editorsettings-property-editors-3d-primary-grid-color)

The color to use for the primary 3D grid. The color's alpha channel affects the grid's opacity.

* * *

[int](class_int.md#class-int) **editors/3d/primary\_grid\_steps** [🔗](#class-editorsettings-property-editors-3d-primary-grid-steps)

If set above 0, where a primary grid line should be drawn. By default, primary lines are configured to be more visible than secondary lines. This helps with measurements in the 3D editor. See also [editors/3d/primary\_grid\_color](#class-editorsettings-property-editors-3d-primary-grid-color) and [editors/3d/secondary\_grid\_color](#class-editorsettings-property-editors-3d-secondary-grid-color).

* * *

[Color](class_color.md#class-color) **editors/3d/secondary\_grid\_color** [🔗](#class-editorsettings-property-editors-3d-secondary-grid-color)

The color to use for the secondary 3D grid. This is generally a less visible color than [editors/3d/primary\_grid\_color](#class-editorsettings-property-editors-3d-primary-grid-color). The color's alpha channel affects the grid's opacity.

* * *

[Color](class_color.md#class-color) **editors/3d/selection\_box\_color** [🔗](#class-editorsettings-property-editors-3d-selection-box-color)

The color to use for the selection box that surrounds selected nodes in the 3D editor viewport. The color's alpha channel influences the selection box's opacity.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/aabb** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-aabb)

The color to use for the AABB gizmo that displays the [GeometryInstance3D](class_geometryinstance3d.md#class-geometryinstance3d)'s custom [AABB](class_aabb.md#class-aabb).

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/camera** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-camera)

The 3D editor gizmo color for [Camera3D](class_camera3d.md#class-camera3d) s.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/csg** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-csg)

The 3D editor gizmo color for CSG nodes (such as [CSGShape3D](class_csgshape3d.md#class-csgshape3d) or [CSGBox3D](class_csgbox3d.md#class-csgbox3d)).

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/decal** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-decal)

The 3D editor gizmo color for [Decal](class_decal.md#class-decal) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/fog\_volume** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-fog-volume)

The 3D editor gizmo color for [FogVolume](class_fogvolume.md#class-fogvolume) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/gridmap\_grid** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-gridmap-grid)

The 3D editor gizmo color for the [GridMap](class_gridmap.md#class-gridmap) grid.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/instantiated** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-instantiated)

The color override to use for 3D editor gizmos if the [Node3D](class_node3d.md#class-node3d) in question is part of an instantiated scene file (from the perspective of the current scene).

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/joint** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint)

The 3D editor gizmo color for [Joint3D](class_joint3d.md#class-joint3d) s and [PhysicalBone3D](class_physicalbone3d.md#class-physicalbone3d) s.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/joint\_body\_a** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint-body-a)

Color for representing [Joint3D.node\_a](class_joint3d.md#class-joint3d-property-node-a) for some [Joint3D](class_joint3d.md#class-joint3d) types.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/joint\_body\_b** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-joint-body-b)

Color for representing [Joint3D.node\_b](class_joint3d.md#class-joint3d-property-node-b) for some [Joint3D](class_joint3d.md#class-joint3d) types.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/lightmap\_lines** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-lightmap-lines)

Color of lines displayed in baked [LightmapGI](class_lightmapgi.md#class-lightmapgi) node's grid.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/lightprobe\_lines** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-lightprobe-lines)

The 3D editor gizmo color used for [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/occluder** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-occluder)

The 3D editor gizmo color used for [OccluderInstance3D](class_occluderinstance3d.md#class-occluderinstance3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/particle\_attractor** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particle-attractor)

The 3D editor gizmo color used for [GPUParticlesAttractor3D](class_gpuparticlesattractor3d.md#class-gpuparticlesattractor3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/particle\_collision** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particle-collision)

The 3D editor gizmo color used for [GPUParticlesCollision3D](class_gpuparticlescollision3d.md#class-gpuparticlescollision3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/particles** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-particles)

The 3D editor gizmo color used for [CPUParticles3D](class_cpuparticles3d.md#class-cpuparticles3d) and [GPUParticles3D](class_gpuparticles3d.md#class-gpuparticles3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/path\_tilt** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-path-tilt)

The 3D editor gizmo color used for [Path3D](class_path3d.md#class-path3d) tilt circles, which indicate the direction the [Curve3D](class_curve3d.md#class-curve3d) is tilted towards.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/reflection\_probe** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-reflection-probe)

The 3D editor gizmo color used for [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/selected\_bone** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-selected-bone)

The 3D editor gizmo color used for the currently selected [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/skeleton** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-skeleton)

The 3D editor gizmo color used for [Skeleton3D](class_skeleton3d.md#class-skeleton3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/spring\_bone\_collision** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-collision)

The 3D editor gizmo color used for [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/spring\_bone\_inside\_collision** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-inside-collision)

The 3D editor gizmo color used for [SpringBoneCollision3D](class_springbonecollision3d.md#class-springbonecollision3d) nodes with inside mode.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/spring\_bone\_joint** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-spring-bone-joint)

The 3D editor gizmo color used for [SpringBoneSimulator3D](class_springbonesimulator3d.md#class-springbonesimulator3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/stream\_player\_3d** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-stream-player-3d)

The 3D editor gizmo color used for [AudioStreamPlayer3D](class_audiostreamplayer3d.md#class-audiostreamplayer3d)'s emission angle.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/visibility\_notifier** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-visibility-notifier)

The 3D editor gizmo color used for [VisibleOnScreenNotifier3D](class_visibleonscreennotifier3d.md#class-visibleonscreennotifier3d) and [VisibleOnScreenEnabler3D](class_visibleonscreenenabler3d.md#class-visibleonscreenenabler3d) nodes.

* * *

[Color](class_color.md#class-color) **editors/3d\_gizmos/gizmo\_colors/voxel\_gi** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-colors-voxel-gi)

The 3D editor gizmo color used for [VoxelGI](class_voxelgi.md#class-voxelgi) nodes.

* * *

[float](class_float.md#class-float) **editors/3d\_gizmos/gizmo\_settings/bone\_axis\_length** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-bone-axis-length)

The length of [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone gizmos in the 3D editor.

* * *

[int](class_int.md#class-int) **editors/3d\_gizmos/gizmo\_settings/bone\_shape** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-bone-shape)

The shape of [Skeleton3D](class_skeleton3d.md#class-skeleton3d) bone gizmos in the 3D editor. **Wire** is a thin line, while **Octahedron** is a set of lines that represent a thicker hollow line pointing in a specific direction (similar to most 3D animation software).

* * *

[float](class_float.md#class-float) **editors/3d\_gizmos/gizmo\_settings/lightmap\_gi\_probe\_size** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-lightmap-gi-probe-size)

Size of probe gizmos displayed when editing [LightmapGI](class_lightmapgi.md#class-lightmapgi) and [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) nodes. Setting this to `0.0` will hide the probe spheres of [LightmapGI](class_lightmapgi.md#class-lightmapgi) and wireframes of [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) nodes, but will keep the wireframes linking probes from [LightmapGI](class_lightmapgi.md#class-lightmapgi) and billboard icons from [LightmapProbe](class_lightmapprobe.md#class-lightmapprobe) intact.

* * *

[float](class_float.md#class-float) **editors/3d\_gizmos/gizmo\_settings/path3d\_tilt\_disk\_size** [🔗](#class-editorsettings-property-editors-3d-gizmos-gizmo-settings-path3d-tilt-disk-size)

Size of the disk gizmo displayed when editing [Path3D](class_path3d.md#class-path3d)'s tilt handles.

* * *

[bool](class_bool.md#class-bool) **editors/animation/autorename\_animation\_tracks** [🔗](#class-editorsettings-property-editors-animation-autorename-animation-tracks)

If `true`, automatically updates animation tracks' target paths when renaming or reparenting nodes in the Scene tree dock.

* * *

[bool](class_bool.md#class-bool) **editors/animation/confirm\_insert\_track** [🔗](#class-editorsettings-property-editors-animation-confirm-insert-track)

If `true`, display a confirmation dialog when adding a new track to an animation by pressing the "key" icon next to a property. Holding Shift will bypass the dialog.

If `false`, the behavior is reversed, i.e. the dialog only appears when Shift is held.

* * *

[float](class_float.md#class-float) **editors/animation/default\_animation\_step** [🔗](#class-editorsettings-property-editors-animation-default-animation-step)

Default step used when creating a new [Animation](class_animation.md#class-animation) in the Animation bottom panel. Only affects the first animation created in the [AnimationPlayer](class_animationplayer.md#class-animationplayer). By default, other newly created animations will use the step from the previous ones.

This value is always expressed in seconds. If you want e.g. `10` FPS to be the default, you need to set the default step to `0.1`.

* * *

[bool](class_bool.md#class-bool) **editors/animation/default\_create\_bezier\_tracks** [🔗](#class-editorsettings-property-editors-animation-default-create-bezier-tracks)

If `true`, create a Bezier track instead of a standard track when pressing the "key" icon next to a property. Bezier tracks provide more control over animation curves, but are more difficult to adjust quickly.

* * *

[bool](class_bool.md#class-bool) **editors/animation/default\_create\_reset\_tracks** [🔗](#class-editorsettings-property-editors-animation-default-create-reset-tracks)

If `true`, create a `RESET` track when creating a new animation track. This track can be used to restore the animation to a "default" state.

* * *

[bool](class_bool.md#class-bool) **editors/animation/default\_fps\_compatibility** [🔗](#class-editorsettings-property-editors-animation-default-fps-compatibility)

Controls whether [AnimationPlayer](class_animationplayer.md#class-animationplayer) will apply snapping to nearest integer FPS when snapping is in Seconds mode. The option is remembered locally for a scene and this option only determines the default value when scene doesn't have local state yet.

* * *

[int](class_int.md#class-int) **editors/animation/default\_fps\_mode** [🔗](#class-editorsettings-property-editors-animation-default-fps-mode)

Default step mode for [AnimationPlayer](class_animationplayer.md#class-animationplayer) (seconds or FPS). The option is remembered locally for a scene and this option only determines the default value when scene doesn't have local state yet.

* * *

[Color](class_color.md#class-color) **editors/animation/onion\_layers\_future\_color** [🔗](#class-editorsettings-property-editors-animation-onion-layers-future-color)

The modulate color to use for "future" frames displayed in the animation editor's onion skinning feature.

* * *

[Color](class_color.md#class-color) **editors/animation/onion\_layers\_past\_color** [🔗](#class-editorsettings-property-editors-animation-onion-layers-past-color)

The modulate color to use for "past" frames displayed in the animation editor's onion skinning feature.

* * *

[Color](class_color.md#class-color) **editors/bone\_mapper/handle\_colors/error** [🔗](#class-editorsettings-property-editors-bone-mapper-handle-colors-error)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Color](class_color.md#class-color) **editors/bone\_mapper/handle\_colors/missing** [🔗](#class-editorsettings-property-editors-bone-mapper-handle-colors-missing)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Color](class_color.md#class-color) **editors/bone\_mapper/handle\_colors/set** [🔗](#class-editorsettings-property-editors-bone-mapper-handle-colors-set)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Color](class_color.md#class-color) **editors/bone\_mapper/handle\_colors/unset** [🔗](#class-editorsettings-property-editors-bone-mapper-handle-colors-unset)

There is currently no description for this property. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[int](class_int.md#class-int) **editors/grid\_map/palette\_min\_width** [🔗](#class-editorsettings-property-editors-grid-map-palette-min-width)

Minimum width of GridMap's mesh palette side panel.

* * *

[float](class_float.md#class-float) **editors/grid\_map/pick\_distance** [🔗](#class-editorsettings-property-editors-grid-map-pick-distance)

The maximum distance at which tiles can be placed on a GridMap, relative to the camera position (in 3D units).

* * *

[int](class_int.md#class-int) **editors/grid\_map/preview\_size** [🔗](#class-editorsettings-property-editors-grid-map-preview-size)

Texture size of mesh previews generated for GridMap's MeshLibrary.

* * *

[int](class_int.md#class-int) **editors/panning/2d\_editor\_pan\_speed** [🔗](#class-editorsettings-property-editors-panning-2d-editor-pan-speed)

The panning speed when using the mouse wheel or touchscreen events in the 2D editor. This setting does not apply to panning by holding down the middle or right mouse buttons.

* * *

[int](class_int.md#class-int) **editors/panning/2d\_editor\_panning\_scheme** [🔗](#class-editorsettings-property-editors-panning-2d-editor-panning-scheme)

Controls whether the mouse wheel scroll zooms or pans in the 2D editor. See also [editors/panning/sub\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-sub-editors-panning-scheme) and [editors/panning/animation\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-animation-editors-panning-scheme).

* * *

[int](class_int.md#class-int) **editors/panning/animation\_editors\_panning\_scheme** [🔗](#class-editorsettings-property-editors-panning-animation-editors-panning-scheme)

Controls whether the mouse wheel scroll zooms or pans in the animation track and Bezier editors. See also [editors/panning/2d\_editor\_panning\_scheme](#class-editorsettings-property-editors-panning-2d-editor-panning-scheme) and [editors/panning/sub\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-sub-editors-panning-scheme) (which controls the animation blend tree editor's pan behavior).

* * *

[bool](class_bool.md#class-bool) **editors/panning/simple\_panning** [🔗](#class-editorsettings-property-editors-panning-simple-panning)

If `true`, allows panning by holding down `Space` in the 2D editor viewport (in addition to panning with the middle or right mouse buttons). If `false`, the left mouse button must be held down while holding down `Space` to pan in the 2D editor viewport.

* * *

[int](class_int.md#class-int) **editors/panning/sub\_editors\_panning\_scheme** [🔗](#class-editorsettings-property-editors-panning-sub-editors-panning-scheme)

Controls whether the mouse wheel scroll zooms or pans in subeditors. The list of affected subeditors is: animation blend tree editor, [Polygon2D](class_polygon2d.md#class-polygon2d) editor, tileset editor, texture region editor and visual shader editor. See also [editors/panning/2d\_editor\_panning\_scheme](#class-editorsettings-property-editors-panning-2d-editor-panning-scheme) and [editors/panning/animation\_editors\_panning\_scheme](#class-editorsettings-property-editors-panning-animation-editors-panning-scheme).

* * *

[bool](class_bool.md#class-bool) **editors/panning/warped\_mouse\_panning** [🔗](#class-editorsettings-property-editors-panning-warped-mouse-panning)

If `true`, warps the mouse around the 2D viewport while panning in the 2D editor. This makes it possible to pan over a large area without having to exit panning and adjust the mouse cursor.

* * *

[int](class_int.md#class-int) **editors/panning/zoom\_style** [🔗](#class-editorsettings-property-editors-panning-zoom-style)

The mouse cursor movement direction to use when drag-zooming in any editor (except 3D scene editor) by moving the mouse. This does not affect zooming with the mouse wheel.

* * *

[float](class_float.md#class-float) **editors/polygon\_editor/auto\_bake\_delay** [🔗](#class-editorsettings-property-editors-polygon-editor-auto-bake-delay)

The delay in seconds until more complex and performance costly polygon editors commit their outlines, e.g. the 2D navigation polygon editor rebakes the navigation mesh polygons. A negative value stops the auto bake.

* * *

[int](class_int.md#class-int) **editors/polygon\_editor/point\_grab\_radius** [🔗](#class-editorsettings-property-editors-polygon-editor-point-grab-radius)

The radius in which points can be selected in the [Polygon2D](class_polygon2d.md#class-polygon2d) and [CollisionPolygon2D](class_collisionpolygon2d.md#class-collisionpolygon2d) editors (in pixels). Higher values make it easier to select points quickly, but can make it more difficult to select the expected point when several points are located close to each other.

* * *

[bool](class_bool.md#class-bool) **editors/polygon\_editor/show\_previous\_outline** [🔗](#class-editorsettings-property-editors-polygon-editor-show-previous-outline)

If `true`, displays the polygon's previous shape in the 2D polygon editors with an opaque gray outline. This outline is displayed while dragging a point until the left mouse button is released.

* * *

[bool](class_bool.md#class-bool) **editors/shader\_editor/behavior/files/restore\_shaders\_on\_load** [🔗](#class-editorsettings-property-editors-shader-editor-behavior-files-restore-shaders-on-load)

If `true`, reopens shader files that were open in the shader editor when the project was last closed.

* * *

[bool](class_bool.md#class-bool) **editors/tiles\_editor/display\_grid** [🔗](#class-editorsettings-property-editors-tiles-editor-display-grid)

If `true`, displays a grid while the TileMap editor is active. See also [editors/tiles\_editor/grid\_color](#class-editorsettings-property-editors-tiles-editor-grid-color).

* * *

[Color](class_color.md#class-color) **editors/tiles\_editor/grid\_color** [🔗](#class-editorsettings-property-editors-tiles-editor-grid-color)

The color to use for the TileMap editor's grid.

**Note:** Only effective if [editors/tiles\_editor/display\_grid](#class-editorsettings-property-editors-tiles-editor-display-grid) is `true`.

* * *

[bool](class_bool.md#class-bool) **editors/tiles\_editor/highlight\_selected\_layer** [🔗](#class-editorsettings-property-editors-tiles-editor-highlight-selected-layer)

Highlight the currently selected TileMapLayer by dimming the other ones in the scene.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/color\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-color-color)

The color of a graph node's header when it belongs to the "Color" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/conditional\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-conditional-color)

The color of a graph node's header when it belongs to the "Conditional" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/input\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-input-color)

The color of a graph node's header when it belongs to the "Input" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/output\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-output-color)

The color of a graph node's header when it belongs to the "Output" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/particle\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-particle-color)

The color of a graph node's header when it belongs to the "Particle" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/scalar\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-scalar-color)

The color of a graph node's header when it belongs to the "Scalar" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/special\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-special-color)

The color of a graph node's header when it belongs to the "Special" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/textures\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-textures-color)

The color of a graph node's header when it belongs to the "Textures" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/transform\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-transform-color)

The color of a graph node's header when it belongs to the "Transform" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/utility\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-utility-color)

The color of a graph node's header when it belongs to the "Utility" category.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/category\_colors/vector\_color** [🔗](#class-editorsettings-property-editors-visual-editors-category-colors-vector-color)

The color of a graph node's header when it belongs to the "Vector" category.

* * *

[String](class_string.md#class-string) **editors/visual\_editors/color\_theme** [🔗](#class-editorsettings-property-editors-visual-editors-color-theme)

The color theme to use in the visual shader editor.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/boolean\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-boolean-color)

The color of a port/connection of boolean type.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/sampler\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-sampler-color)

The color of a port/connection of sampler type.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/scalar\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-scalar-color)

The color of a port/connection of scalar type (float, int, unsigned int).

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/transform\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-transform-color)

The color of a port/connection of transform type.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/vector2\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-vector2-color)

The color of a port/connection of Vector2 type.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/vector3\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-vector3-color)

The color of a port/connection of Vector3 type.

* * *

[Color](class_color.md#class-color) **editors/visual\_editors/connection\_colors/vector4\_color** [🔗](#class-editorsettings-property-editors-visual-editors-connection-colors-vector4-color)

The color of a port/connection of Vector4 type.

* * *

[int](class_int.md#class-int) **editors/visual\_editors/grid\_pattern** [🔗](#class-editorsettings-property-editors-visual-editors-grid-pattern)

The pattern used for the background grid.

* * *

[float](class_float.md#class-float) **editors/visual\_editors/lines\_curvature** [🔗](#class-editorsettings-property-editors-visual-editors-lines-curvature)

The curvature to use for connection lines in the visual shader editor. Higher values will make connection lines appear more curved, with values above `0.5` resulting in more "angular" turns in the middle of connection lines.

* * *

[float](class_float.md#class-float) **editors/visual\_editors/minimap\_opacity** [🔗](#class-editorsettings-property-editors-visual-editors-minimap-opacity)

The opacity of the minimap displayed in the bottom-right corner of the visual shader editor.

* * *

[int](class_int.md#class-int) **editors/visual\_editors/visual\_shader/port\_preview\_size** [🔗](#class-editorsettings-property-editors-visual-editors-visual-shader-port-preview-size)

The size to use for port previews in the visual shader uniforms (toggled by clicking the "eye" icon next to an output). The value is defined in pixels at 100% zoom, and will scale with zoom automatically.

* * *

[String](class_string.md#class-string) **export/ssh/scp** [🔗](#class-editorsettings-property-export-ssh-scp)

Path to the SCP (secure copy) executable (used for remote deploy to desktop platforms). If left empty, the editor will attempt to run `scp` from `PATH`.

**Note:** SCP is not the same as SFTP. Specifying the SFTP executable here will not work.

* * *

[String](class_string.md#class-string) **export/ssh/ssh** [🔗](#class-editorsettings-property-export-ssh-ssh)

Path to the SSH executable (used for remote deploy to desktop platforms). If left empty, the editor will attempt to run `ssh` from `PATH`.

* * *

[String](class_string.md#class-string) **filesystem/directories/autoscan\_project\_path** [🔗](#class-editorsettings-property-filesystem-directories-autoscan-project-path)

The folder where projects should be scanned for (recursively), in a way similar to the project manager's **Scan** button. This can be set to the same value as [filesystem/directories/default\_project\_path](#class-editorsettings-property-filesystem-directories-default-project-path) for convenience.

**Note:** Setting this path to a folder with very large amounts of files/folders can slow down the project manager startup significantly. To keep the project manager quick to start up, it is recommended to set this value to a folder as "specific" as possible.

* * *

[String](class_string.md#class-string) **filesystem/directories/default\_project\_path** [🔗](#class-editorsettings-property-filesystem-directories-default-project-path)

The folder where new projects should be created by default when clicking the project manager's **New Project** button. This can be set to the same value as [filesystem/directories/autoscan\_project\_path](#class-editorsettings-property-filesystem-directories-autoscan-project-path) for convenience.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/3d\_model\_editor** [🔗](#class-editorsettings-property-filesystem-external-programs-3d-model-editor)

The program that opens 3D model scene files when clicking "Open in External Program" option in Filesystem Dock. If not specified, the file will be opened in the system's default program.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/audio\_editor** [🔗](#class-editorsettings-property-filesystem-external-programs-audio-editor)

The program that opens audio files when clicking "Open in External Program" option in Filesystem Dock. If not specified, the file will be opened in the system's default program.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/raster\_image\_editor** [🔗](#class-editorsettings-property-filesystem-external-programs-raster-image-editor)

The program that opens raster image files when clicking "Open in External Program" option in Filesystem Dock. If not specified, the file will be opened in the system's default program.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/terminal\_emulator** [🔗](#class-editorsettings-property-filesystem-external-programs-terminal-emulator)

The terminal emulator program to use when using **Open in Terminal** context menu action in the FileSystem dock. You can enter an absolute path to a program binary, or a path to a program that is present in the `PATH` environment variable.

If left empty, Godot will use the default terminal emulator for the system:

- **Windows:** PowerShell

- **macOS:** Terminal.app

- **Linux:** The first terminal found on the system in this order: gnome-terminal, konsole, xfce4-terminal, lxterminal, kitty, alacritty, urxvt, xterm.


To use Command Prompt (cmd) instead of PowerShell on Windows, enter `cmd` in this field and the correct flags will automatically be used.

On macOS, make sure to point to the actual program binary located within the `Programs/MacOS` folder of the .app bundle, rather than the .app bundle directory.

If specifying a custom terminal emulator, you may need to override [filesystem/external\_programs/terminal\_emulator\_flags](#class-editorsettings-property-filesystem-external-programs-terminal-emulator-flags) so it opens in the correct folder.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/terminal\_emulator\_flags** [🔗](#class-editorsettings-property-filesystem-external-programs-terminal-emulator-flags)

The command-line arguments to pass to the terminal emulator that is run when using **Open in Terminal** context menu action in the FileSystem dock. See also [filesystem/external\_programs/terminal\_emulator](#class-editorsettings-property-filesystem-external-programs-terminal-emulator).

If left empty, the default flags are `{directory}`, which is replaced by the absolute path to the directory that is being opened in the terminal.

**Note:** If the terminal emulator is set to PowerShell, cmd, or Konsole, Godot will automatically prepend arguments to this list, as these terminals require nonstandard arguments to open in the correct folder.

* * *

[String](class_string.md#class-string) **filesystem/external\_programs/vector\_image\_editor** [🔗](#class-editorsettings-property-filesystem-external-programs-vector-image-editor)

The program that opens vector image files when clicking "Open in External Program" option in Filesystem Dock. If not specified, the file will be opened in the system's default program.

* * *

[int](class_int.md#class-int) **filesystem/file\_dialog/display\_mode** [🔗](#class-editorsettings-property-filesystem-file-dialog-display-mode)

The display mode to use in the editor's file dialogs.

- **Thumbnails** takes more space, but displays dynamic resource thumbnails, making resources easier to preview without having to open them.

- **List** is more compact but doesn't display dynamic resource thumbnails. Instead, it displays static icons based on the file extension.


* * *

[bool](class_bool.md#class-bool) **filesystem/file\_dialog/show\_hidden\_files** [🔗](#class-editorsettings-property-filesystem-file-dialog-show-hidden-files)

If `true`, display hidden files in the editor's file dialogs. Files that have names starting with `.` are considered hidden (e.g. `.hidden_file`).

* * *

[int](class_int.md#class-int) **filesystem/file\_dialog/thumbnail\_size** [🔗](#class-editorsettings-property-filesystem-file-dialog-thumbnail-size)

The thumbnail size to use in the editor's file dialogs (in pixels). See also [docks/filesystem/thumbnail\_size](#class-editorsettings-property-docks-filesystem-thumbnail-size).

* * *

[String](class_string.md#class-string) **filesystem/file\_server/password** [🔗](#class-editorsettings-property-filesystem-file-server-password)

Password used for file server when exporting project with remote file system.

* * *

[int](class_int.md#class-int) **filesystem/file\_server/port** [🔗](#class-editorsettings-property-filesystem-file-server-port)

Port used for file server when exporting project with remote file system.

* * *

[String](class_string.md#class-string) **filesystem/import/blender/blender\_path** [🔗](#class-editorsettings-property-filesystem-import-blender-blender-path)

The path to the Blender executable used for converting the Blender 3D scene files `.blend` to glTF 2.0 format during import. Blender 3.0 or later is required.

To enable this feature for your specific project, use [ProjectSettings.filesystem/import/blender/enabled](class_projectsettings.md#class-projectsettings-property-filesystem-import-blender-enabled).

If this setting is empty, Blender's default paths will be detected and used automatically if present in this order:

**Windows:**

```
- C:\Program Files\Blender Foundation\blender.exe
- C:\Program Files (x86)\Blender Foundation\blender.exe

```

**macOS:**

```
- /opt/homebrew/bin/blender
- /opt/local/bin/blender
- /usr/local/bin/blender
- /usr/local/opt/blender
- /Applications/Blender.app/Contents/MacOS/Blender

```

**Linux/\*BSD:**

```
- /usr/bin/blender
- /usr/local/bin/blender
- /opt/blender/bin/blender

```

* * *

[int](class_int.md#class-int) **filesystem/import/blender/rpc\_port** [🔗](#class-editorsettings-property-filesystem-import-blender-rpc-port)

The port number used for Remote Procedure Call (RPC) communication with Godot's created process of the blender executable.

Setting this to 0 effectively disables communication with Godot and the blender process, making performance slower.

* * *

[float](class_float.md#class-float) **filesystem/import/blender/rpc\_server\_uptime** [🔗](#class-editorsettings-property-filesystem-import-blender-rpc-server-uptime)

The maximum idle uptime (in seconds) of the Blender process.

This prevents Godot from having to create a new process for each import within the given seconds.

* * *

[String](class_string.md#class-string) **filesystem/import/fbx/fbx2gltf\_path** [🔗](#class-editorsettings-property-filesystem-import-fbx-fbx2gltf-path)

The path to the FBX2glTF executable used for converting Autodesk FBX 3D scene files `.fbx` to glTF 2.0 format during import.

To enable this feature for your specific project, use [ProjectSettings.filesystem/import/fbx2gltf/enabled](class_projectsettings.md#class-projectsettings-property-filesystem-import-fbx2gltf-enabled).

* * *

[bool](class_bool.md#class-bool) **filesystem/on\_save/compress\_binary\_resources** [🔗](#class-editorsettings-property-filesystem-on-save-compress-binary-resources)

If `true`, uses lossless compression for binary resources.

* * *

[bool](class_bool.md#class-bool) **filesystem/on\_save/safe\_save\_on\_backup\_then\_rename** [🔗](#class-editorsettings-property-filesystem-on-save-safe-save-on-backup-then-rename)

If `true`, when saving a file, the editor will rename the old file to a different name, save a new file, then only remove the old file once the new file has been saved. This makes loss of data less likely to happen if the editor or operating system exits unexpectedly while saving (e.g. due to a crash or power outage).

**Note:** On Windows, this feature can interact negatively with certain antivirus programs. In this case, you may have to set this to `false` to prevent file locking issues.

* * *

[int](class_int.md#class-int) **filesystem/quick\_open\_dialog/default\_display\_mode** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-default-display-mode)

If set to `Adaptive`, the dialog opens in list view or grid view depending on the requested type. If set to `Last Used`, the display mode will always open the way you last used it.

* * *

[bool](class_bool.md#class-bool) **filesystem/quick\_open\_dialog/enable\_fuzzy\_matching** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-enable-fuzzy-matching)

If `true`, together with exact matches of a filename, the dialog includes approximate matches.

This is useful for finding the correct files even when there are typos in the search query; for example, searching "nprmal" will find "normal". Additionally, it allows you to write shorter search queries; for example, searching "nml" will also find "normal".

See also [filesystem/quick\_open\_dialog/max\_fuzzy\_misses](#class-editorsettings-property-filesystem-quick-open-dialog-max-fuzzy-misses).

* * *

[bool](class_bool.md#class-bool) **filesystem/quick\_open\_dialog/include\_addons** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-include-addons)

If `true`, results will include files located in the `addons` folder.

* * *

[int](class_int.md#class-int) **filesystem/quick\_open\_dialog/max\_fuzzy\_misses** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-max-fuzzy-misses)

The number of missed query characters allowed in a match when fuzzy matching is enabled. For example, with the default value of `2`, `"normal"` would match `"narmal"` and `"norma"` but not `"nor"`.

* * *

[int](class_int.md#class-int) **filesystem/quick\_open\_dialog/max\_results** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-max-results)

Maximum number of matches to show in dialog.

* * *

[bool](class_bool.md#class-bool) **filesystem/quick\_open\_dialog/show\_search\_highlight** [🔗](#class-editorsettings-property-filesystem-quick-open-dialog-show-search-highlight)

If `true`, results will be highlighted with their search matches.

* * *

[String](class_string.md#class-string) **filesystem/tools/oidn/oidn\_denoise\_path** [🔗](#class-editorsettings-property-filesystem-tools-oidn-oidn-denoise-path)

The path to the directory containing the Open Image Denoise (OIDN) executable, used optionally for denoising lightmaps. It can be downloaded from [openimagedenoise.org](https://www.openimagedenoise.org/downloads.html).

To enable this feature for your specific project, use [ProjectSettings.rendering/lightmapping/denoising/denoiser](class_projectsettings.md#class-projectsettings-property-rendering-lightmapping-denoising-denoiser).

* * *

[bool](class_bool.md#class-bool) **input/buffering/agile\_event\_flushing** [🔗](#class-editorsettings-property-input-buffering-agile-event-flushing)

If `true`, input events will be flushed just before every idle and physics frame.

If `false`, these events will be flushed only once per process frame, between iterations of the engine.

Enabling this setting can greatly improve input responsiveness, especially in devices that struggle to run at the project's intended frame rate.

* * *

[bool](class_bool.md#class-bool) **input/buffering/use\_accumulated\_input** [🔗](#class-editorsettings-property-input-buffering-use-accumulated-input)

If `true`, similar input events sent by the operating system are accumulated. When input accumulation is enabled, all input events generated during a frame will be merged and emitted when the frame is done rendering. Therefore, this limits the number of input method calls per second to the rendering FPS.

Input accumulation can be disabled to get slightly more precise/reactive input at the cost of increased CPU usage.

**Note:** Input accumulation is _enabled_ by default.

* * *

[int](class_int.md#class-int) **interface/accessibility/accessibility\_support** [🔗](#class-editorsettings-property-interface-accessibility-accessibility-support)

Editor accessibility support mode:

- **Auto** ( `0`): Accessibility support is enabled, but updates to the accessibility information are processed only if an assistive app (such as a screen reader or a Braille display) is active (default).

- **Always Active** ( `1`): Accessibility support is enabled, and updates to the accessibility information are always processed, regardless of the status of assistive apps.

- **Disabled** ( `2`): Accessibility support is fully disabled.


**Note:** Accessibility debugging tools, such as Accessibility Insights for Windows, Accessibility Inspector (macOS), or AT-SPI Browser (Linux/BSD) do not count as assistive apps. To test your project with these tools, use **Always Active**.

* * *

[int](class_int.md#class-int) **interface/editor/accept\_dialog\_cancel\_ok\_buttons** [🔗](#class-editorsettings-property-interface-editor-accept-dialog-cancel-ok-buttons)

How to position the Cancel and OK buttons in the editor's [AcceptDialog](class_acceptdialog.md#class-acceptdialog) s. Different platforms have different standard behaviors for this, which can be overridden using this setting. This is useful if you use Godot both on Windows and macOS/Linux and your Godot muscle memory is stronger than your OS specific one.

- **Auto** follows the platform convention: OK first on Windows, KDE, and LXQt, Cancel first on macOS and other Linux desktop environments.

- **Cancel First** forces the ordering Cancel/OK.

- **OK First** forces the ordering OK/Cancel.


* * *

[bool](class_bool.md#class-bool) **interface/editor/automatically\_open\_screenshots** [🔗](#class-editorsettings-property-interface-editor-automatically-open-screenshots)

If `true`, automatically opens screenshots with the default program associated to `.png` files after a screenshot is taken using the **Editor > Take Screenshot** action.

* * *

[String](class_string.md#class-string) **interface/editor/code\_font** [🔗](#class-editorsettings-property-interface-editor-code-font)

The font to use for the script editor. Must be a resource of a [Font](class_font.md#class-font) type such as a `.ttf` or `.otf` font file.

* * *

[int](class_int.md#class-int) **interface/editor/code\_font\_contextual\_ligatures** [🔗](#class-editorsettings-property-interface-editor-code-font-contextual-ligatures)

The font ligatures to enable for the currently configured code font. Not all fonts include support for ligatures.

**Note:** The default editor code font ( [JetBrains Mono](https://www.jetbrains.com/lp/mono/)) has contextual ligatures in its font file.

* * *

[String](class_string.md#class-string) **interface/editor/code\_font\_custom\_opentype\_features** [🔗](#class-editorsettings-property-interface-editor-code-font-custom-opentype-features)

List of custom OpenType features to use, if supported by the currently configured code font. Not all fonts include support for custom OpenType features. The string should follow the OpenType specification.

**Note:** The default editor code font ( [JetBrains Mono](https://www.jetbrains.com/lp/mono/)) has custom OpenType features in its font file, but there is no documented list yet.

* * *

[String](class_string.md#class-string) **interface/editor/code\_font\_custom\_variations** [🔗](#class-editorsettings-property-interface-editor-code-font-custom-variations)

List of alternative characters to use, if supported by the currently configured code font. Not all fonts include support for custom variations. The string should follow the OpenType specification.

**Note:** The default editor code font ( [JetBrains Mono](https://www.jetbrains.com/lp/mono/)) has alternate characters in its font file, but there is no documented list yet.

* * *

[int](class_int.md#class-int) **interface/editor/code\_font\_size** [🔗](#class-editorsettings-property-interface-editor-code-font-size)

The size of the font in the script editor. This setting does not impact the font size of the Output panel (see [run/output/font\_size](#class-editorsettings-property-run-output-font-size)).

* * *

[bool](class_bool.md#class-bool) **interface/editor/collapse\_main\_menu** [🔗](#class-editorsettings-property-interface-editor-collapse-main-menu)

If `true`, the main menu collapses into a [MenuButton](class_menubutton.md#class-menubutton).

**Note:** This setting is only applicable on macOS when [interface/editor/use\_embedded\_menu](#class-editorsettings-property-interface-editor-use-embedded-menu) is `true`.

**Note:** Defaults to `true` on the Android editor.

* * *

[float](class_float.md#class-float) **interface/editor/custom\_display\_scale** [🔗](#class-editorsettings-property-interface-editor-custom-display-scale)

The custom editor scale factor to use. This can be used for displays with very high DPI where a scale factor of 200% is not sufficient.

**Note:** Only effective if [interface/editor/display\_scale](#class-editorsettings-property-interface-editor-display-scale) is set to **Custom**.

* * *

[int](class_int.md#class-int) **interface/editor/display\_scale** [🔗](#class-editorsettings-property-interface-editor-display-scale)

The display scale factor to use for the editor interface. Higher values are more suited to hiDPI/Retina displays.

If set to **Auto**, the editor scale is automatically determined based on the screen resolution and reported display DPI. This heuristic is not always ideal, which means you can get better results by setting the editor scale manually.

If set to **Custom**, the scaling value in [interface/editor/custom\_display\_scale](#class-editorsettings-property-interface-editor-custom-display-scale) will be used.

* * *

[int](class_int.md#class-int) **interface/editor/dock\_tab\_style** [🔗](#class-editorsettings-property-interface-editor-dock-tab-style)

Tab style of editor docks.

* * *

[String](class_string.md#class-string) **interface/editor/editor\_language** [🔗](#class-editorsettings-property-interface-editor-editor-language)

The language to use for the editor interface.

Translations are provided by the community. If you spot a mistake, [contribute to editor translations on Weblate!](https://contributing.godotengine.org/en/latest/documentation/translation/index.html)

* * *

[int](class_int.md#class-int) **interface/editor/editor\_screen** [🔗](#class-editorsettings-property-interface-editor-editor-screen)

The preferred monitor to display the editor. If **Auto**, the editor will remember the last screen it was displayed on across multiple sessions.

* * *

[bool](class_bool.md#class-bool) **interface/editor/expand\_to\_title** [🔗](#class-editorsettings-property-interface-editor-expand-to-title)

Expanding main editor window content to the title, if supported by [DisplayServer](class_displayserver.md#class-displayserver). See [DisplayServer.WINDOW\_FLAG\_EXTEND\_TO\_TITLE](class_displayserver.md#class-displayserver-constant-window-flag-extend-to-title).

Specific to the macOS platform.

* * *

[bool](class_bool.md#class-bool) **interface/editor/font\_allow\_msdf** [🔗](#class-editorsettings-property-interface-editor-font-allow-msdf)

If set to `true`, MSDF font rendering will be used for the visual shader graph editor. You may need to set this to `false` when using a custom main font, as some fonts will look broken due to the use of self-intersecting outlines in their font data. Downloading the font from the font maker's official website as opposed to a service like Google Fonts can help resolve this issue.

* * *

[int](class_int.md#class-int) **interface/editor/font\_antialiasing** [🔗](#class-editorsettings-property-interface-editor-font-antialiasing)

FreeType's font anti-aliasing mode used to render the editor fonts. Most fonts are not designed to look good with anti-aliasing disabled, so it's recommended to leave this enabled unless you're using a pixel art font.

* * *

[bool](class_bool.md#class-bool) **interface/editor/font\_disable\_embedded\_bitmaps** [🔗](#class-editorsettings-property-interface-editor-font-disable-embedded-bitmaps)

If set to `true`, embedded font bitmap loading is disabled (bitmap-only and color fonts ignore this property).

* * *

[int](class_int.md#class-int) **interface/editor/font\_hinting** [🔗](#class-editorsettings-property-interface-editor-font-hinting)

The font hinting mode to use for the editor fonts. FreeType supports the following font hinting modes:

- **None:** Don't use font hinting when rasterizing the font. This results in a smooth font, but it can look blurry.

- **Light:** Use hinting on the X axis only. This is a compromise between font sharpness and smoothness.

- **Normal:** Use hinting on both X and Y axes. This results in a sharp font, but it doesn't look very smooth.


If set to **Auto**, the font hinting mode will be set to match the current operating system in use. This means the **Light** hinting mode will be used on Windows and Linux, and the **None** hinting mode will be used on macOS.

* * *

[int](class_int.md#class-int) **interface/editor/font\_subpixel\_positioning** [🔗](#class-editorsettings-property-interface-editor-font-subpixel-positioning)

The subpixel positioning mode to use when rendering editor font glyphs. This affects both the main and code fonts. **Disabled** is the fastest to render and uses the least memory. **Auto** only uses subpixel positioning for small font sizes (where the benefit is the most noticeable). **One Half of a Pixel** and **One Quarter of a Pixel** force the same subpixel positioning mode for all editor fonts, regardless of their size (with **One Quarter of a Pixel** being the highest-quality option).

* * *

[bool](class_bool.md#class-bool) **interface/editor/import\_resources\_when\_unfocused** [🔗](#class-editorsettings-property-interface-editor-import-resources-when-unfocused)

If `true`, (re)imports resources even if the editor window is unfocused or minimized. If `false`, resources are only (re)imported when the editor window is focused. This can be set to `true` to speed up iteration by starting the import process earlier when saving files in the project folder. This also allows getting visual feedback on changes without having to click the editor window, which is useful with multi-monitor setups. The downside of setting this to `true` is that it increases idle CPU usage and may steal CPU time from other applications when importing resources.

* * *

[bool](class_bool.md#class-bool) **interface/editor/keep\_screen\_on** [🔗](#class-editorsettings-property-interface-editor-keep-screen-on)

If `true`, keeps the screen on (even in case of inactivity), so the screensaver does not take over. Works on desktop and mobile platforms.

* * *

[bool](class_bool.md#class-bool) **interface/editor/localize\_settings** [🔗](#class-editorsettings-property-interface-editor-localize-settings)

If `true`, setting names in the editor are localized when possible.

**Note:** This setting affects most [EditorInspector](class_editorinspector.md#class-editorinspector) s in the editor UI, primarily Project Settings and Editor Settings. To control names displayed in the Inspector dock, use [interface/inspector/default\_property\_name\_style](#class-editorsettings-property-interface-inspector-default-property-name-style) instead.

* * *

[int](class_int.md#class-int) **interface/editor/low\_processor\_mode\_sleep\_usec** [🔗](#class-editorsettings-property-interface-editor-low-processor-mode-sleep-usec)

The amount of sleeping between frames in the editor (in microseconds). Higher values will result in lower CPU/GPU usage, which can improve battery life on laptops. However, higher values will result in a less responsive editor. The default value is set to allow for maximum smoothness on monitors up to 144 Hz. See also [interface/editor/unfocused\_low\_processor\_mode\_sleep\_usec](#class-editorsettings-property-interface-editor-unfocused-low-processor-mode-sleep-usec).

**Note:** This setting is ignored if [interface/editor/update\_continuously](#class-editorsettings-property-interface-editor-update-continuously) is `true`, as enabling that setting disables low-processor mode.

* * *

[String](class_string.md#class-string) **interface/editor/main\_font** [🔗](#class-editorsettings-property-interface-editor-main-font)

The font to use for the editor interface. Must be a resource of a [Font](class_font.md#class-font) type such as a `.ttf` or `.otf` font file.

**Note:** If the provided font is variable, a weight of 400 (normal) will be used.

* * *

[String](class_string.md#class-string) **interface/editor/main\_font\_bold** [🔗](#class-editorsettings-property-interface-editor-main-font-bold)

The font to use for bold text in the editor interface. Must be a resource of a [Font](class_font.md#class-font) type such as a `.ttf` or `.otf` font file.

**Note:** If the provided font is variable, a weight of 700 (bold) will be used.

* * *

[int](class_int.md#class-int) **interface/editor/main\_font\_size** [🔗](#class-editorsettings-property-interface-editor-main-font-size)

The size of the font in the editor interface.

* * *

[bool](class_bool.md#class-bool) **interface/editor/mouse\_extra\_buttons\_navigate\_history** [🔗](#class-editorsettings-property-interface-editor-mouse-extra-buttons-navigate-history)

If `true`, the mouse's additional side buttons will be usable to navigate in the script editor's file history. Set this to `false` if you're using the side buttons for other purposes (such as a push-to-talk button in a VoIP program).

* * *

[int](class_int.md#class-int) **interface/editor/project\_manager\_screen** [🔗](#class-editorsettings-property-interface-editor-project-manager-screen)

The preferred monitor to display the project manager.

* * *

[bool](class_bool.md#class-bool) **interface/editor/save\_each\_scene\_on\_quit** [🔗](#class-editorsettings-property-interface-editor-save-each-scene-on-quit)

If `false`, the editor will save all scenes when confirming the **Save** action when quitting the editor or quitting to the project list. If `true`, the editor will ask to save each scene individually.

* * *

[bool](class_bool.md#class-bool) **interface/editor/save\_on\_focus\_loss** [🔗](#class-editorsettings-property-interface-editor-save-on-focus-loss)

If `true`, scenes and scripts are saved when the editor loses focus. Depending on the work flow, this behavior can be less intrusive than [text\_editor/behavior/files/autosave\_interval\_secs](#class-editorsettings-property-text-editor-behavior-files-autosave-interval-secs) or remembering to save manually.

* * *

[bool](class_bool.md#class-bool) **interface/editor/separate\_distraction\_mode** [🔗](#class-editorsettings-property-interface-editor-separate-distraction-mode)

If `true`, the editor's Script tab will have a separate distraction mode setting from the 2D/3D/Game/AssetLib tabs. If `false`, the distraction-free mode toggle is shared between all tabs.

* * *

[int](class_int.md#class-int) **interface/editor/show\_internal\_errors\_in\_toast\_notifications** [🔗](#class-editorsettings-property-interface-editor-show-internal-errors-in-toast-notifications)

If enabled, displays internal engine errors in toast notifications (toggleable by clicking the "bell" icon at the bottom of the editor). No matter the value of this setting, non-internal engine errors will always be visible in toast notifications.

The default **Auto** value will only enable this if the editor was compiled with the `dev_build=yes` SCons option (the default is `dev_build=no`).

* * *

[int](class_int.md#class-int) **interface/editor/show\_update\_spinner** [🔗](#class-editorsettings-property-interface-editor-show-update-spinner)

If enabled, displays an icon in the top-right corner of the editor that spins when the editor redraws a frame. This can be used to diagnose situations where the engine is constantly redrawing, which should be avoided as this increases CPU and GPU utilization for no good reason. To further troubleshoot these situations, start the editor with the `--debug-canvas-item-redraw` [command line argument](../tutorials/editor/command_line_tutorial.md).

Consider enabling this if you are developing editor plugins to ensure they only make the editor redraw when required.

The default **Auto** value will only enable this if the editor was compiled with the `dev_build=yes` SCons option (the default is `dev_build=no`).

**Note:** If [interface/editor/update\_continuously](#class-editorsettings-property-interface-editor-update-continuously) is `true`, the spinner icon displays in red.

**Note:** If the editor was started with the `--debug-canvas-item-redraw` [command line argument](../tutorials/editor/command_line_tutorial.md), the update spinner will _never_ display regardless of this setting's value. This is to avoid confusion with what would cause redrawing in real world scenarios.

* * *

[bool](class_bool.md#class-bool) **interface/editor/single\_window\_mode** [🔗](#class-editorsettings-property-interface-editor-single-window-mode)

If `true`, embed modal windows such as docks inside the main editor window. When single-window mode is enabled, tooltips will also be embedded inside the main editor window, which means they can't be displayed outside of the editor window. Single-window mode can be faster as it does not need to create a separate window for every popup and tooltip, which can be a slow operation depending on the operating system and rendering method in use.

This is equivalent to [ProjectSettings.display/window/subwindows/embed\_subwindows](class_projectsettings.md#class-projectsettings-property-display-window-subwindows-embed-subwindows) in the running project, except the setting's value is inverted.

**Note:** To query whether the editor can use multiple windows in an editor plugin, use [EditorInterface.is\_multi\_window\_enabled()](class_editorinterface.md#class-editorinterface-method-is-multi-window-enabled) instead of querying the value of this editor setting.

**Note:** If `true`, game embedding is disabled.

* * *

[int](class_int.md#class-int) **interface/editor/tablet\_driver** [🔗](#class-editorsettings-property-interface-editor-tablet-driver)

Overrides the tablet driver used by the editor.

* * *

[int](class_int.md#class-int) **interface/editor/ui\_layout\_direction** [🔗](#class-editorsettings-property-interface-editor-ui-layout-direction)

Editor UI default layout direction.

* * *

[int](class_int.md#class-int) **interface/editor/unfocused\_low\_processor\_mode\_sleep\_usec** [🔗](#class-editorsettings-property-interface-editor-unfocused-low-processor-mode-sleep-usec)

When the editor window is unfocused, the amount of sleeping between frames when the low-processor usage mode is enabled (in microseconds). Higher values will result in lower CPU/GPU usage, which can improve battery life on laptops (in addition to improving the running project's performance if the editor has to redraw continuously). However, higher values will result in a less responsive editor. The default value is set to limit the editor to 10 FPS when the editor window is unfocused. See also [interface/editor/low\_processor\_mode\_sleep\_usec](#class-editorsettings-property-interface-editor-low-processor-mode-sleep-usec).

**Note:** This setting is ignored if [interface/editor/update\_continuously](#class-editorsettings-property-interface-editor-update-continuously) is `true`, as enabling that setting disables low-processor mode.

* * *

[bool](class_bool.md#class-bool) **interface/editor/update\_continuously** [🔗](#class-editorsettings-property-interface-editor-update-continuously)

If `true`, redraws the editor every frame even if nothing has changed on screen. When this setting is enabled, the update spinner displays in red (see [interface/editor/show\_update\_spinner](#class-editorsettings-property-interface-editor-show-update-spinner)).

**Warning:** This greatly increases CPU and GPU utilization, leading to increased power usage. This should only be enabled for troubleshooting purposes.

* * *

[bool](class_bool.md#class-bool) **interface/editor/use\_embedded\_menu** [🔗](#class-editorsettings-property-interface-editor-use-embedded-menu)

If `true`, editor main menu is using embedded [MenuBar](class_menubar.md#class-menubar) instead of system global menu.

Specific to the macOS platform.

* * *

[bool](class_bool.md#class-bool) **interface/editor/use\_native\_file\_dialogs** [🔗](#class-editorsettings-property-interface-editor-use-native-file-dialogs)

If `true`, editor UI uses OS native file/directory selection dialogs.

* * *

[int](class_int.md#class-int) **interface/editor/vsync\_mode** [🔗](#class-editorsettings-property-interface-editor-vsync-mode)

Sets the V-Sync mode for the editor. Does not affect the project when run from the editor (this is controlled by [ProjectSettings.display/window/vsync/vsync\_mode](class_projectsettings.md#class-projectsettings-property-display-window-vsync-vsync-mode)).

Depending on the platform and used renderer, the engine will fall back to **Enabled** if the desired mode is not supported.

**Note:** V-Sync modes other than **Enabled** are only supported in the Forward+ and Mobile rendering methods, not Compatibility.

* * *

[bool](class_bool.md#class-bool) **interface/editors/derive\_script\_globals\_by\_name** [🔗](#class-editorsettings-property-interface-editors-derive-script-globals-by-name)

If `true`, when extending a script, the global class name of the script is inserted in the script creation dialog, if it exists. If `false`, the script's file path is always inserted.

* * *

[bool](class_bool.md#class-bool) **interface/editors/show\_scene\_tree\_root\_selection** [🔗](#class-editorsettings-property-interface-editors-show-scene-tree-root-selection)

If `true`, the Scene dock will display buttons to quickly add a root node to a newly created scene.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/auto\_unfold\_foreign\_scenes** [🔗](#class-editorsettings-property-interface-inspector-auto-unfold-foreign-scenes)

If `true`, automatically unfolds Inspector property groups containing modified values when opening a scene for the first time. Only affects scenes without saved folding preferences and only unfolds groups with properties that have been changed from their default values.

**Note:** This setting only works in specific scenarios: when opening a scene brought in from another project, or when opening a new scene that already has modified properties (e.g., from version control). Duplicated scenes are not considered foreign, so this setting will not affect them.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/color\_picker\_show\_intensity** [🔗](#class-editorsettings-property-interface-inspector-color-picker-show-intensity)

If `true`, show the intensity slider in the [ColorPicker](class_colorpicker.md#class-colorpicker) s opened in the editor.

* * *

[int](class_int.md#class-int) **interface/inspector/default\_color\_picker\_mode** [🔗](#class-editorsettings-property-interface-inspector-default-color-picker-mode)

The default color picker mode to use when opening [ColorPicker](class_colorpicker.md#class-colorpicker) s in the editor. This mode can be temporarily adjusted on the color picker itself.

* * *

[int](class_int.md#class-int) **interface/inspector/default\_color\_picker\_shape** [🔗](#class-editorsettings-property-interface-inspector-default-color-picker-shape)

The default color picker shape to use when opening [ColorPicker](class_colorpicker.md#class-colorpicker) s in the editor. This shape can be temporarily adjusted on the color picker itself.

* * *

[float](class_float.md#class-float) **interface/inspector/default\_float\_step** [🔗](#class-editorsettings-property-interface-inspector-default-float-step)

The floating-point precision to use for properties that don't define an explicit precision step. Lower values allow entering more precise values.

* * *

[int](class_int.md#class-int) **interface/inspector/default\_property\_name\_style** [🔗](#class-editorsettings-property-interface-inspector-default-property-name-style)

The default property name style to display in the Inspector dock. This style can be temporarily adjusted in the Inspector dock's menu.

- **Raw:** Displays properties in `snake_case`.

- **Capitalized:** Displays properties capitalized.

- **Localized:** Displays the localized string for the current editor language if a translation is available for the given property. If no translation is available, falls back to **Capitalized**.


**Note:** To display translated setting names in Project Settings and Editor Settings, use [interface/editor/localize\_settings](#class-editorsettings-property-interface-editor-localize-settings) instead.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/delimitate\_all\_container\_and\_resources** [🔗](#class-editorsettings-property-interface-inspector-delimitate-all-container-and-resources)

If `true`, add a margin around Array, Dictionary, and Resource Editors that are not already colored.

**Note:** If [interface/inspector/nested\_color\_mode](#class-editorsettings-property-interface-inspector-nested-color-mode) is set to **Containers & Resources** this parameter will have no effect since those editors will already be colored.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/disable\_folding** [🔗](#class-editorsettings-property-interface-inspector-disable-folding)

If `true`, forces all property groups to be expanded in the Inspector dock and prevents collapsing them.

* * *

[float](class_float.md#class-float) **interface/inspector/float\_drag\_speed** [🔗](#class-editorsettings-property-interface-inspector-float-drag-speed)

Base speed for increasing/decreasing float values by dragging them in the inspector.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/horizontal\_vector2\_editing** [🔗](#class-editorsettings-property-interface-inspector-horizontal-vector2-editing)

If `true`, [Vector2](class_vector2.md#class-vector2) and [Vector2i](class_vector2i.md#class-vector2i) properties are shown on a single line in the inspector instead of two lines. This is overall more compact, but it can be harder to view and edit large values without expanding the inspector horizontally.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/horizontal\_vector\_types\_editing** [🔗](#class-editorsettings-property-interface-inspector-horizontal-vector-types-editing)

If `true`, [Vector3](class_vector3.md#class-vector3), [Vector3i](class_vector3i.md#class-vector3i), [Vector4](class_vector4.md#class-vector4), [Vector4i](class_vector4i.md#class-vector4i), [Rect2](class_rect2.md#class-rect2), [Rect2i](class_rect2i.md#class-rect2i), [Plane](class_plane.md#class-plane), and [Quaternion](class_quaternion.md#class-quaternion) properties are shown on a single line in the inspector instead of multiple lines. This is overall more compact, but it can be harder to view and edit large values without expanding the inspector horizontally.

* * *

[int](class_int.md#class-int) **interface/inspector/max\_array\_dictionary\_items\_per\_page** [🔗](#class-editorsettings-property-interface-inspector-max-array-dictionary-items-per-page)

The number of [Array](class_array.md#class-array) or [Dictionary](class_dictionary.md#class-dictionary) items to display on each "page" in the inspector. Higher values allow viewing more values per page, but take more time to load. This increased load time is noticeable when selecting nodes that have array or dictionary properties in the editor.

* * *

[int](class_int.md#class-int) **interface/inspector/nested\_color\_mode** [🔗](#class-editorsettings-property-interface-inspector-nested-color-mode)

Control which property editors are colored when they are opened.

- **Containers & Resources:** Color all Array, Dictionary, and Resource Editors.

- **Resources:** Color all Resource Editors.

- **External Resources:** Color Resource Editors that edits an external resource.


* * *

[bool](class_bool.md#class-bool) **interface/inspector/open\_resources\_in\_current\_inspector** [🔗](#class-editorsettings-property-interface-inspector-open-resources-in-current-inspector)

If `true`, subresources can be edited in the current inspector view. If the resource type is defined in [interface/inspector/resources\_to\_open\_in\_new\_inspector](#class-editorsettings-property-interface-inspector-resources-to-open-in-new-inspector) or if this setting is `false`, attempting to edit a subresource always opens a new inspector view.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **interface/inspector/resources\_to\_open\_in\_new\_inspector** [🔗](#class-editorsettings-property-interface-inspector-resources-to-open-in-new-inspector)

List of resources that should always be opened in a new inspector view, even if [interface/inspector/open\_resources\_in\_current\_inspector](#class-editorsettings-property-interface-inspector-open-resources-in-current-inspector) is `true`.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[bool](class_bool.md#class-bool) **interface/inspector/show\_low\_level\_opentype\_features** [🔗](#class-editorsettings-property-interface-inspector-show-low-level-opentype-features)

If `true`, display OpenType features marked as `hidden` by the font file in the [Font](class_font.md#class-font) editor.

* * *

[bool](class_bool.md#class-bool) **interface/multi\_window/enable** [🔗](#class-editorsettings-property-interface-multi-window-enable)

If `true`, multiple window support in editor is enabled. The following panels can become dedicated windows (i.e. made floating): Docks, Script editor, Shader editor, and Game Workspace.

**Note:** When [interface/editor/single\_window\_mode](#class-editorsettings-property-interface-editor-single-window-mode) is `true`, the multi window support is always disabled.

**Note:** To query whether the editor can use multiple windows in an editor plugin, use [EditorInterface.is\_multi\_window\_enabled()](class_editorinterface.md#class-editorinterface-method-is-multi-window-enabled) instead of querying the value of this editor setting.

* * *

[bool](class_bool.md#class-bool) **interface/multi\_window/maximize\_window** [🔗](#class-editorsettings-property-interface-multi-window-maximize-window)

If `true`, when panels are made floating they will be maximized.

If `false`, when panels are made floating their position and size will match the ones when they are attached (excluding window border) to the editor window.

* * *

[bool](class_bool.md#class-bool) **interface/multi\_window/restore\_windows\_on\_load** [🔗](#class-editorsettings-property-interface-multi-window-restore-windows-on-load)

If `true`, the floating panel position, size, and screen will be saved on editor exit. On next launch the panels that were floating will be made floating in the saved positions, sizes and screens, if possible.

* * *

[int](class_int.md#class-int) **interface/scene\_tabs/display\_close\_button** [🔗](#class-editorsettings-property-interface-scene-tabs-display-close-button)

Controls when the Close (X) button is displayed on scene tabs at the top of the editor.

* * *

[int](class_int.md#class-int) **interface/scene\_tabs/maximum\_width** [🔗](#class-editorsettings-property-interface-scene-tabs-maximum-width)

The maximum width of each scene tab at the top editor (in pixels).

* * *

[bool](class_bool.md#class-bool) **interface/scene\_tabs/restore\_scenes\_on\_load** [🔗](#class-editorsettings-property-interface-scene-tabs-restore-scenes-on-load)

If `true`, when a project is loaded, restores scenes that were opened on the last editor session.

**Note:** With many opened scenes, the editor may take longer to become usable. If starting the editor quickly is necessary, consider setting this to `false`.

* * *

[bool](class_bool.md#class-bool) **interface/scene\_tabs/show\_script\_button** [🔗](#class-editorsettings-property-interface-scene-tabs-show-script-button)

If `true`, show a button next to each scene tab that opens the scene's "dominant" script when clicked. The "dominant" script is the one that is at the highest level in the scene's hierarchy.

* * *

[bool](class_bool.md#class-bool) **interface/scene\_tabs/show\_thumbnail\_on\_hover** [🔗](#class-editorsettings-property-interface-scene-tabs-show-thumbnail-on-hover)

If `true`, display an automatically-generated thumbnail when hovering scene tabs with the mouse. Scene thumbnails are generated when saving the scene.

* * *

[Color](class_color.md#class-color) **interface/theme/accent\_color** [🔗](#class-editorsettings-property-interface-theme-accent-color)

The color to use for "highlighted" user interface elements in the editor (pressed and hovered items).

* * *

[int](class_int.md#class-int) **interface/theme/additional\_spacing** [🔗](#class-editorsettings-property-interface-theme-additional-spacing)

The extra spacing to add to various GUI elements in the editor (in pixels). Increasing this value is useful to improve usability on touch screens, at the cost of reducing the amount of usable screen real estate.

See also [interface/theme/spacing\_preset](#class-editorsettings-property-interface-theme-spacing-preset).

* * *

[Color](class_color.md#class-color) **interface/theme/base\_color** [🔗](#class-editorsettings-property-interface-theme-base-color)

The base color to use for user interface elements in the editor. Secondary colors (such as darker/lighter variants) are derived from this color.

* * *

[int](class_int.md#class-int) **interface/theme/base\_spacing** [🔗](#class-editorsettings-property-interface-theme-base-spacing)

The base spacing used by various GUI elements in the editor (in pixels). See also [interface/theme/spacing\_preset](#class-editorsettings-property-interface-theme-spacing-preset).

* * *

[int](class_int.md#class-int) **interface/theme/border\_size** [🔗](#class-editorsettings-property-interface-theme-border-size)

The border size to use for interface elements (in pixels).

* * *

[float](class_float.md#class-float) **interface/theme/contrast** [🔗](#class-editorsettings-property-interface-theme-contrast)

The contrast factor to use when deriving the editor theme's base color (see [interface/theme/base\_color](#class-editorsettings-property-interface-theme-base-color)). When using a positive values, the derived colors will be _darker_ than the base color. This contrast factor can be set to a negative value, which will make the derived colors _brighter_ than the base color. Negative contrast rates often look better for light themes.

* * *

[int](class_int.md#class-int) **interface/theme/corner\_radius** [🔗](#class-editorsettings-property-interface-theme-corner-radius)

The corner radius to use for interface elements (in pixels). `0` is square.

* * *

[String](class_string.md#class-string) **interface/theme/custom\_theme** [🔗](#class-editorsettings-property-interface-theme-custom-theme)

The custom theme resource to use for the editor. Must be a Godot theme resource in `.tres` or `.res` format.

* * *

[bool](class_bool.md#class-bool) **interface/theme/draw\_extra\_borders** [🔗](#class-editorsettings-property-interface-theme-draw-extra-borders)

If `true`, draws additional borders around interactive UI elements in the editor. This is automatically enabled when using the **Black (OLED)** theme preset, as this theme preset uses a fully black background.

* * *

[bool](class_bool.md#class-bool) **interface/theme/follow\_system\_theme** [🔗](#class-editorsettings-property-interface-theme-follow-system-theme)

If `true`, the editor theme preset will attempt to automatically match the system theme.

* * *

[int](class_int.md#class-int) **interface/theme/icon\_and\_font\_color** [🔗](#class-editorsettings-property-interface-theme-icon-and-font-color)

The icon and font color scheme to use in the editor.

- **Auto** determines the color scheme to use automatically based on [interface/theme/base\_color](#class-editorsettings-property-interface-theme-base-color).

- **Dark** makes fonts and icons dark (suitable for light themes). Icon colors are automatically converted by the editor following the set of rules defined in [this file](https://github.com/godotengine/godot/blob/master/editor/themes/editor_theme_manager.cpp).

- **Light** makes fonts and icons light (suitable for dark themes).


* * *

[float](class_float.md#class-float) **interface/theme/icon\_saturation** [🔗](#class-editorsettings-property-interface-theme-icon-saturation)

The saturation to use for editor icons. Higher values result in more vibrant colors.

**Note:** The default editor icon saturation was increased by 30% in Godot 4.0 and later. To get Godot 3.x's icon saturation back, set [interface/theme/icon\_saturation](#class-editorsettings-property-interface-theme-icon-saturation) to `0.77`.

* * *

[String](class_string.md#class-string) **interface/theme/preset** [🔗](#class-editorsettings-property-interface-theme-preset)

The editor theme preset to use.

* * *

[float](class_float.md#class-float) **interface/theme/relationship\_line\_opacity** [🔗](#class-editorsettings-property-interface-theme-relationship-line-opacity)

The opacity to use when drawing relationship lines in the editor's [Tree](class_tree.md#class-tree)-based GUIs (such as the Scene tree dock).

* * *

[String](class_string.md#class-string) **interface/theme/spacing\_preset** [🔗](#class-editorsettings-property-interface-theme-spacing-preset)

The editor theme spacing preset to use. See also [interface/theme/base\_spacing](#class-editorsettings-property-interface-theme-base-spacing) and [interface/theme/additional\_spacing](#class-editorsettings-property-interface-theme-additional-spacing).

* * *

[bool](class_bool.md#class-bool) **interface/theme/use\_system\_accent\_color** [🔗](#class-editorsettings-property-interface-theme-use-system-accent-color)

If `true`, set accent color based on system settings.

**Note:** This setting is only effective on Windows, MacOS, and Android.

* * *

[bool](class_bool.md#class-bool) **interface/touchscreen/enable\_long\_press\_as\_right\_click** [🔗](#class-editorsettings-property-interface-touchscreen-enable-long-press-as-right-click)

If `true`, long press on touchscreen is treated as right click.

**Note:** Defaults to `true` on touchscreen devices.

* * *

[bool](class_bool.md#class-bool) **interface/touchscreen/enable\_pan\_and\_scale\_gestures** [🔗](#class-editorsettings-property-interface-touchscreen-enable-pan-and-scale-gestures)

If `true`, enable two finger pan and scale gestures on touchscreen devices.

**Note:** Defaults to `true` on touchscreen devices.

* * *

[bool](class_bool.md#class-bool) **interface/touchscreen/enable\_touch\_optimizations** [🔗](#class-editorsettings-property-interface-touchscreen-enable-touch-optimizations)

If `true`, increases the scrollbar touch area and enables a larger dragger for split containers to improve usability on touchscreen devices

**Note:** Defaults to `true` on touchscreen devices.

* * *

[float](class_float.md#class-float) **interface/touchscreen/scale\_gizmo\_handles** [🔗](#class-editorsettings-property-interface-touchscreen-scale-gizmo-handles)

Specify the multiplier to apply to the scale for the editor gizmo handles to improve usability on touchscreen devices.

**Note:** Defaults to `1` on non-touchscreen devices.

* * *

[int](class_int.md#class-int) **interface/touchscreen/touch\_actions\_panel** [🔗](#class-editorsettings-property-interface-touchscreen-touch-actions-panel)

A touch-friendly panel that provides easy access to common actions such as save, delete, undo, and redo without requiring a keyboard.

**Note:** Only available in the Android and XR editor.

* * *

[int](class_int.md#class-int) **network/connection/check\_for\_updates** [🔗](#class-editorsettings-property-network-connection-check-for-updates)

Specifies how the engine should check for updates.

- **Disable Update Checks** will block the engine from checking updates (see also [network/connection/network\_mode](#class-editorsettings-property-network-connection-network-mode)).

- **Check Newest Preview** (default for preview versions) will check for the newest available development snapshot.

- **Check Newest Stable** (default for stable versions) will check for the newest available stable version.

- **Check Newest Patch** will check for the latest available stable version, but only within the same minor version. E.g. if your version is `4.3.stable`, you will be notified about `4.3.1.stable`, but not `4.4.stable`.


All update modes will ignore builds with different major versions (e.g. Godot 4 -> Godot 5).

* * *

[int](class_int.md#class-int) **network/connection/network\_mode** [🔗](#class-editorsettings-property-network-connection-network-mode)

Determines whether online features are enabled in the editor, such as the Asset Library or update checks. Disabling these online features helps alleviate privacy concerns by preventing the editor from making HTTP requests to the Godot website or third-party platforms hosting assets from the Asset Library.

Editor plugins and tool scripts are recommended to follow this setting. However, Godot can't prevent them from violating this rule.

* * *

[String](class_string.md#class-string) **network/debug/remote\_host** [🔗](#class-editorsettings-property-network-debug-remote-host)

The address to listen to when starting the remote debugger. This can be set to this device's local IP address to allow external clients to connect to the remote debugger (instead of restricting the remote debugger to connections from `localhost`).

* * *

[int](class_int.md#class-int) **network/debug/remote\_port** [🔗](#class-editorsettings-property-network-debug-remote-port)

The port to listen to when starting the remote debugger. Godot will try to use port numbers above the configured number if the configured number is already taken by another application.

* * *

[String](class_string.md#class-string) **network/http\_proxy/host** [🔗](#class-editorsettings-property-network-http-proxy-host)

The host to use to contact the HTTP and HTTPS proxy in the editor (for the asset library and export template downloads). See also [network/http\_proxy/port](#class-editorsettings-property-network-http-proxy-port).

**Note:** Godot currently doesn't automatically use system proxy settings, so you have to enter them manually here if needed.

* * *

[int](class_int.md#class-int) **network/http\_proxy/port** [🔗](#class-editorsettings-property-network-http-proxy-port)

The port number to use to contact the HTTP and HTTPS proxy in the editor (for the asset library and export template downloads). See also [network/http\_proxy/host](#class-editorsettings-property-network-http-proxy-host).

**Note:** Godot currently doesn't automatically use system proxy settings, so you have to enter them manually here if needed.

* * *

[String](class_string.md#class-string) **network/tls/editor\_tls\_certificates** [🔗](#class-editorsettings-property-network-tls-editor-tls-certificates)

The TLS certificate bundle to use for HTTP requests made within the editor (e.g. from the AssetLib tab). If left empty, the [included Mozilla certificate bundle](https://github.com/godotengine/godot/blob/master/thirdparty/certs/ca-certificates.crt) will be used.

* * *

[bool](class_bool.md#class-bool) **network/tls/enable\_tls\_v1.3** [🔗](#class-editorsettings-property-network-tls-enable-tls-v1-3)

If `true`, enable TLSv1.3 negotiation.

**Note:** Only supported when using Mbed TLS 3.0 or later (Linux distribution packages may be compiled against older system Mbed TLS packages), otherwise the maximum supported TLS version is always TLSv1.2.

* * *

[String](class_string.md#class-string) **project\_manager/default\_renderer** [🔗](#class-editorsettings-property-project-manager-default-renderer)

The renderer type that will be checked off by default when creating a new project. Accepted strings are "forward\_plus", "mobile" or "gl\_compatibility".

* * *

[int](class_int.md#class-int) **project\_manager/directory\_naming\_convention** [🔗](#class-editorsettings-property-project-manager-directory-naming-convention)

Directory naming convention for the project manager. Options are "No convention" (project name is directory name), "kebab-case" (default), "snake\_case", "camelCase", "PascalCase", or "Title Case".

* * *

[int](class_int.md#class-int) **project\_manager/sorting\_order** [🔗](#class-editorsettings-property-project-manager-sorting-order)

The sorting order to use in the project manager. When changing the sorting order in the project manager, this setting is set permanently in the editor settings.

* * *

[bool](class_bool.md#class-bool) **run/auto\_save/save\_before\_running** [🔗](#class-editorsettings-property-run-auto-save-save-before-running)

If `true`, saves all scenes and scripts automatically before running the project. Setting this to `false` prevents the editor from saving if there are no changes which can speed up the project startup slightly, but it makes it possible to run a project that has unsaved changes. (Unsaved changes will not be visible in the running project.)

* * *

[int](class_int.md#class-int) **run/bottom\_panel/action\_on\_play** [🔗](#class-editorsettings-property-run-bottom-panel-action-on-play)

The action to execute on the bottom panel when running the project.

**Note:** This option won't do anything if the bottom panel switching is locked using the pin button in the corner of the bottom panel.

* * *

[int](class_int.md#class-int) **run/bottom\_panel/action\_on\_stop** [🔗](#class-editorsettings-property-run-bottom-panel-action-on-stop)

The action to execute on the bottom panel when stopping the project.

**Note:** This option won't do anything if the bottom panel switching is locked using the pin button in the corner of the bottom panel.

* * *

[bool](class_bool.md#class-bool) **run/output/always\_clear\_output\_on\_play** [🔗](#class-editorsettings-property-run-output-always-clear-output-on-play)

If `true`, the editor will clear the Output panel when running the project.

* * *

[int](class_int.md#class-int) **run/output/font\_size** [🔗](#class-editorsettings-property-run-output-font-size)

The size of the font in the **Output** panel at the bottom of the editor. This setting does not impact the font size of the script editor (see [interface/editor/code\_font\_size](#class-editorsettings-property-interface-editor-code-font-size)).

* * *

[int](class_int.md#class-int) **run/output/max\_lines** [🔗](#class-editorsettings-property-run-output-max-lines)

Maximum number of lines to show at any one time in the Output panel.

* * *

[bool](class_bool.md#class-bool) **run/platforms/linuxbsd/prefer\_wayland** [🔗](#class-editorsettings-property-run-platforms-linuxbsd-prefer-wayland)

If `true`, on Linux/BSD, the editor will check for Wayland first instead of X11 (if available).

* * *

[int](class_int.md#class-int) **run/window\_placement/android\_window** [🔗](#class-editorsettings-property-run-window-placement-android-window)

Specifies how the Play window is launched relative to the Android editor.

- **Auto (based on screen size)** (default) will automatically choose how to launch the Play window based on the device and screen metrics. Defaults to **Same as Editor** on phones and **Side-by-side with Editor** on tablets.

- **Same as Editor** will launch the Play window in the same window as the Editor.

- **Side-by-side with Editor** will launch the Play window side-by-side with the Editor window.


**Note:** Only available in the Android editor.

* * *

[int](class_int.md#class-int) **run/window\_placement/game\_embed\_mode** [🔗](#class-editorsettings-property-run-window-placement-game-embed-mode)

Overrides game embedding setting for all newly opened projects. If enabled, game embedding settings are not saved.

* * *

[int](class_int.md#class-int) **run/window\_placement/rect** [🔗](#class-editorsettings-property-run-window-placement-rect)

The window mode to use to display the project when starting the project from the editor.

**Note:** Game embedding is not available for **"Force Maximized"** or **"Force Fullscreen"**.

* * *

[Vector2](class_vector2.md#class-vector2) **run/window\_placement/rect\_custom\_position** [🔗](#class-editorsettings-property-run-window-placement-rect-custom-position)

The custom position to use when starting the project from the editor (in pixels from the top-left corner). Only effective if [run/window\_placement/rect](#class-editorsettings-property-run-window-placement-rect) is set to **Custom Position**.

* * *

[int](class_int.md#class-int) **run/window\_placement/screen** [🔗](#class-editorsettings-property-run-window-placement-screen)

The monitor to display the project on when starting the project from the editor.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/caret/caret\_blink** [🔗](#class-editorsettings-property-text-editor-appearance-caret-caret-blink)

If `true`, makes the caret blink according to [text\_editor/appearance/caret/caret\_blink\_interval](#class-editorsettings-property-text-editor-appearance-caret-caret-blink-interval). Disabling this setting can improve battery life on laptops if you spend long amounts of time in the script editor, since it will reduce the frequency at which the editor needs to be redrawn.

* * *

[float](class_float.md#class-float) **text\_editor/appearance/caret/caret\_blink\_interval** [🔗](#class-editorsettings-property-text-editor-appearance-caret-caret-blink-interval)

The interval at which the caret will blink (in seconds). See also [text\_editor/appearance/caret/caret\_blink](#class-editorsettings-property-text-editor-appearance-caret-caret-blink).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/caret/highlight\_all\_occurrences** [🔗](#class-editorsettings-property-text-editor-appearance-caret-highlight-all-occurrences)

If `true`, highlights all occurrences of the currently selected text in the script editor. See also [text\_editor/theme/highlighting/word\_highlighted\_color](#class-editorsettings-property-text-editor-theme-highlighting-word-highlighted-color).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/caret/highlight\_current\_line** [🔗](#class-editorsettings-property-text-editor-appearance-caret-highlight-current-line)

If `true`, colors the background of the line the caret is currently on with [text\_editor/theme/highlighting/current\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color).

* * *

[int](class_int.md#class-int) **text\_editor/appearance/caret/type** [🔗](#class-editorsettings-property-text-editor-appearance-caret-type)

The shape of the caret to use in the script editor. **Line** displays a vertical line to the left of the current character, whereas **Block** displays an outline over the current character.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/enable\_inline\_color\_picker** [🔗](#class-editorsettings-property-text-editor-appearance-enable-inline-color-picker)

If `true`, displays a colored button before any [Color](class_color.md#class-color) constructor in the script editor. Clicking on them allows the color to be modified through a color picker.

* * *

[int](class_int.md#class-int) **text\_editor/appearance/guidelines/line\_length\_guideline\_hard\_column** [🔗](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-hard-column)

The column at which to display a subtle line as a line length guideline for scripts. This should generally be greater than [text\_editor/appearance/guidelines/line\_length\_guideline\_soft\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-soft-column).

* * *

[int](class_int.md#class-int) **text\_editor/appearance/guidelines/line\_length\_guideline\_soft\_column** [🔗](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-soft-column)

The column at which to display a _very_ subtle line as a line length guideline for scripts. This should generally be lower than [text\_editor/appearance/guidelines/line\_length\_guideline\_hard\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-hard-column).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/guidelines/show\_line\_length\_guidelines** [🔗](#class-editorsettings-property-text-editor-appearance-guidelines-show-line-length-guidelines)

If `true`, displays line length guidelines to help you keep line lengths in check. See also [text\_editor/appearance/guidelines/line\_length\_guideline\_soft\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-soft-column) and [text\_editor/appearance/guidelines/line\_length\_guideline\_hard\_column](#class-editorsettings-property-text-editor-appearance-guidelines-line-length-guideline-hard-column).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/gutters/highlight\_type\_safe\_lines** [🔗](#class-editorsettings-property-text-editor-appearance-gutters-highlight-type-safe-lines)

If `true`, highlights type-safe lines by displaying their line number color with [text\_editor/theme/highlighting/safe\_line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-safe-line-number-color) instead of [text\_editor/theme/highlighting/line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-line-number-color). Type-safe lines are lines of code where the type of all variables is known at compile-time. These type-safe lines may run faster thanks to typed instructions.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/gutters/line\_numbers\_zero\_padded** [🔗](#class-editorsettings-property-text-editor-appearance-gutters-line-numbers-zero-padded)

If `true`, displays line numbers with zero padding (e.g. `007` instead of `7`).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/gutters/show\_info\_gutter** [🔗](#class-editorsettings-property-text-editor-appearance-gutters-show-info-gutter)

If `true`, displays a gutter at the left containing icons for methods with signal connections and for overridden methods.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/gutters/show\_line\_numbers** [🔗](#class-editorsettings-property-text-editor-appearance-gutters-show-line-numbers)

If `true`, displays line numbers in a gutter at the left.

* * *

[int](class_int.md#class-int) **text\_editor/appearance/lines/autowrap\_mode** [🔗](#class-editorsettings-property-text-editor-appearance-lines-autowrap-mode)

If [text\_editor/appearance/lines/word\_wrap](#class-editorsettings-property-text-editor-appearance-lines-word-wrap) is set to `1`, sets text wrapping mode. To see how each mode behaves, see [AutowrapMode](class_textserver.md#enum-textserver-autowrapmode).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/lines/code\_folding** [🔗](#class-editorsettings-property-text-editor-appearance-lines-code-folding)

If `true`, displays the folding arrows next to indented code sections and allows code folding. If `false`, hides the folding arrows next to indented code sections and disallows code folding.

* * *

[int](class_int.md#class-int) **text\_editor/appearance/lines/word\_wrap** [🔗](#class-editorsettings-property-text-editor-appearance-lines-word-wrap)

If `true`, wraps long lines over multiple lines to avoid horizontal scrolling. This is a display-only feature; it does not actually insert line breaks in your scripts.

* * *

[int](class_int.md#class-int) **text\_editor/appearance/minimap/minimap\_width** [🔗](#class-editorsettings-property-text-editor-appearance-minimap-minimap-width)

The width of the minimap in the script editor (in pixels).

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/minimap/show\_minimap** [🔗](#class-editorsettings-property-text-editor-appearance-minimap-show-minimap)

If `true`, draws an overview of the script near the scroll bar. The minimap can be left-clicked to scroll directly to a location in an "absolute" manner.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/whitespace/draw\_spaces** [🔗](#class-editorsettings-property-text-editor-appearance-whitespace-draw-spaces)

If `true`, draws space characters as centered points.

* * *

[bool](class_bool.md#class-bool) **text\_editor/appearance/whitespace/draw\_tabs** [🔗](#class-editorsettings-property-text-editor-appearance-whitespace-draw-tabs)

If `true`, draws tab characters as chevrons.

* * *

[int](class_int.md#class-int) **text\_editor/appearance/whitespace/line\_spacing** [🔗](#class-editorsettings-property-text-editor-appearance-whitespace-line-spacing)

The space to add between lines (in pixels). Greater line spacing can help improve readability at the cost of displaying fewer lines on screen.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/documentation/enable\_tooltips** [🔗](#class-editorsettings-property-text-editor-behavior-documentation-enable-tooltips)

If `true`, documentation tooltips will appear when hovering over a symbol.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/auto\_reload\_and\_parse\_scripts\_on\_save** [🔗](#class-editorsettings-property-text-editor-behavior-files-auto-reload-and-parse-scripts-on-save)

If `true`, tool scripts will be automatically soft-reloaded after they are saved.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/auto\_reload\_scripts\_on\_external\_change** [🔗](#class-editorsettings-property-text-editor-behavior-files-auto-reload-scripts-on-external-change)

If `true`, automatically reloads scripts and text-based shaders in the editor when they have been modified and saved by external editors or tools and the editor regains focus. External changes can be discarded by using the Undo function after they've been loaded in the editor.

If `false`, a file conflict dialog will always be displayed when the editor regains focus. This dialog allows you to choose whether to keep local changes or discard them.

**Note:** Even when this setting is `true`, a file conflict dialog is still displayed in certain situations. For instance, it will display when the script editor has unsaved changes that the external editor did not account for.

* * *

[int](class_int.md#class-int) **text\_editor/behavior/files/autosave\_interval\_secs** [🔗](#class-editorsettings-property-text-editor-behavior-files-autosave-interval-secs)

If set to a value greater than `0`, automatically saves the current script following the specified interval (in seconds). This can be used to prevent data loss if the editor crashes.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/convert\_indent\_on\_save** [🔗](#class-editorsettings-property-text-editor-behavior-files-convert-indent-on-save)

If `true`, converts indentation to match the script editor's indentation settings when saving a script. See also [text\_editor/behavior/indent/type](#class-editorsettings-property-text-editor-behavior-indent-type).

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/drop\_preload\_resources\_as\_uid** [🔗](#class-editorsettings-property-text-editor-behavior-files-drop-preload-resources-as-uid)

If `true`, when dropping a [Resource](class_resource.md#class-resource) file to script editor while `Ctrl` is held, the resource will be preloaded with a UID. If `false`, the resource will be preloaded with a path.

When you hold `Ctrl+Shift`, the behavior is reversed.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/open\_dominant\_script\_on\_scene\_change** [🔗](#class-editorsettings-property-text-editor-behavior-files-open-dominant-script-on-scene-change)

If `true`, opening a scene automatically opens the script attached to the root node, or the topmost node if the root has no script.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/restore\_scripts\_on\_load** [🔗](#class-editorsettings-property-text-editor-behavior-files-restore-scripts-on-load)

If `true`, reopens scripts that were opened in the last session when the editor is reopened on a given project.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/trim\_final\_newlines\_on\_save** [🔗](#class-editorsettings-property-text-editor-behavior-files-trim-final-newlines-on-save)

If `true`, trims all empty newlines after the final newline when saving a script. Final newlines refer to the empty newlines found at the end of files. Since these serve no practical purpose, they can and should be removed to make version control diffs less noisy.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/files/trim\_trailing\_whitespace\_on\_save** [🔗](#class-editorsettings-property-text-editor-behavior-files-trim-trailing-whitespace-on-save)

If `true`, trims trailing whitespace when saving a script. Trailing whitespace refers to tab and space characters placed at the end of lines. Since these serve no practical purpose, they can and should be removed to make version control diffs less noisy.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/general/empty\_selection\_clipboard** [🔗](#class-editorsettings-property-text-editor-behavior-general-empty-selection-clipboard)

If `true`, copying or cutting without a selection is performed on all lines with a caret. Otherwise, copy and cut require a selection.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/indent/auto\_indent** [🔗](#class-editorsettings-property-text-editor-behavior-indent-auto-indent)

If `true`, automatically indents code when pressing the `Enter` key based on blocks above the new line.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/indent/indent\_wrapped\_lines** [🔗](#class-editorsettings-property-text-editor-behavior-indent-indent-wrapped-lines)

If `true`, all wrapped lines are indented to the same amount as the unwrapped line.

* * *

[int](class_int.md#class-int) **text\_editor/behavior/indent/size** [🔗](#class-editorsettings-property-text-editor-behavior-indent-size)

When using tab indentation, determines the length of each tab. When using space indentation, determines how many spaces are inserted when pressing `Tab` and when automatic indentation is performed.

* * *

[int](class_int.md#class-int) **text\_editor/behavior/indent/type** [🔗](#class-editorsettings-property-text-editor-behavior-indent-type)

The indentation style to use (tabs or spaces).

**Note:** The [GDScript style guide](../tutorials/scripting/gdscript/gdscript_styleguide.md) recommends using tabs for indentation. It is advised to change this setting only if you need to work on a project that currently uses spaces for indentation.

* * *

[String](class_string.md#class-string) **text\_editor/behavior/navigation/custom\_word\_separators** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-custom-word-separators)

The characters to consider as word delimiters if [text\_editor/behavior/navigation/use\_custom\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-custom-word-separators) is `true`. This is in addition to default characters if [text\_editor/behavior/navigation/use\_default\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-default-word-separators) is `true`. The characters should be defined without separation, for example `_♥=`.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/drag\_and\_drop\_selection** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-drag-and-drop-selection)

If `true`, allows drag-and-dropping text in the script editor to move text. Disable this if you find yourself accidentally drag-and-dropping text in the script editor.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/move\_caret\_on\_right\_click** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-move-caret-on-right-click)

If `true`, the caret will be moved when right-clicking somewhere in the script editor (like when left-clicking or middle-clicking). If `false`, the caret will only be moved when left-clicking or middle-clicking somewhere.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/open\_script\_when\_connecting\_signal\_to\_existing\_method** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-open-script-when-connecting-signal-to-existing-method)

If `true`, opens the script editor when connecting a signal to an existing script method from the Node dock.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/scroll\_past\_end\_of\_file** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-scroll-past-end-of-file)

If `true`, allows scrolling past the end of the file.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/smooth\_scrolling** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-smooth-scrolling)

If `true`, enables a smooth scrolling animation when using the mouse wheel to scroll. See [text\_editor/behavior/navigation/v\_scroll\_speed](#class-editorsettings-property-text-editor-behavior-navigation-v-scroll-speed) for the speed of this animation.

**Note:** [text\_editor/behavior/navigation/smooth\_scrolling](#class-editorsettings-property-text-editor-behavior-navigation-smooth-scrolling) currently behaves poorly in projects where [ProjectSettings.physics/common/physics\_ticks\_per\_second](class_projectsettings.md#class-projectsettings-property-physics-common-physics-ticks-per-second) has been increased significantly from its default value ( `60`). In this case, it is recommended to disable this setting.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/stay\_in\_script\_editor\_on\_node\_selected** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-stay-in-script-editor-on-node-selected)

If `true`, prevents automatically switching between the Script and 2D/3D screens when selecting a node in the Scene tree dock.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/use\_custom\_word\_separators** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-use-custom-word-separators)

If `true`, uses the characters in [text\_editor/behavior/navigation/custom\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-custom-word-separators) as word separators for word navigation and operations. This is in addition to the default characters if [text\_editor/behavior/navigation/use\_default\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-default-word-separators) is also enabled. Word navigation and operations include double-clicking on a word or holding `Ctrl` ( `Cmd` on macOS) while pressing `left`, `right`, `backspace`, or `delete`.

* * *

[bool](class_bool.md#class-bool) **text\_editor/behavior/navigation/use\_default\_word\_separators** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-use-default-word-separators)

If `true`, uses the characters in `` `!"#$%&'()*+,-./:;<=>?@[\]^`{|}~``, the Unicode General Punctuation table, and the Unicode CJK Punctuation table as word separators for word navigation and operations. If `false`, a subset of these characters are used and does not include the characters `<>$~^=+|`. This is in addition to custom characters if [text\_editor/behavior/navigation/use\_custom\_word\_separators](#class-editorsettings-property-text-editor-behavior-navigation-use-custom-word-separators) is also enabled. These characters are used to determine where a word stops. Word navigation and operations include double-clicking on a word or holding `Ctrl` ( `Cmd` on macOS) while pressing `left`, `right`, `backspace`, or `delete`.

* * *

[int](class_int.md#class-int) **text\_editor/behavior/navigation/v\_scroll\_speed** [🔗](#class-editorsettings-property-text-editor-behavior-navigation-v-scroll-speed)

The speed of scrolling in lines per second when [text\_editor/behavior/navigation/smooth\_scrolling](#class-editorsettings-property-text-editor-behavior-navigation-smooth-scrolling) is `true`. Higher values make the script scroll by faster when using the mouse wheel.

**Note:** You can hold down `Alt` while using the mouse wheel to temporarily scroll 5 times faster.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/add\_node\_path\_literals** [🔗](#class-editorsettings-property-text-editor-completion-add-node-path-literals)

If `true`, uses [NodePath](class_nodepath.md#class-nodepath) instead of [String](class_string.md#class-string) when appropriate for code autocompletion or for drag and dropping object properties into the script editor.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/add\_string\_name\_literals** [🔗](#class-editorsettings-property-text-editor-completion-add-string-name-literals)

If `true`, uses [StringName](class_stringname.md#class-stringname) instead of [String](class_string.md#class-string) when appropriate for code autocompletion.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/add\_type\_hints** [🔗](#class-editorsettings-property-text-editor-completion-add-type-hints)

If `true`, automatically adds [GDScript static typing](../tutorials/scripting/gdscript/static_typing.md) (such as `-> void` and `: int`) in many situations where it's possible to, including when:

- Accepting a suggestion from code autocompletion;

- Creating a new script from a template;

- Connecting signals from the Node dock;

- Creating variables prefixed with [@GDScript.@onready](class_@gdscript.md#class-gdscript-annotation-onready), by dropping nodes from the Scene dock into the script editor while holding `Ctrl`.


* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/auto\_brace\_complete** [🔗](#class-editorsettings-property-text-editor-completion-auto-brace-complete)

If `true`, automatically inserts the matching closing brace when the opening brace is inserted by typing or autocompletion. Also automatically removes the closing brace when pressing `Backspace` on the opening brace. This includes brackets ( `()`, `[]`, `{}`), string quotation marks ( `''`, `""`), and comments ( `/**/`) if the language supports it.

* * *

[float](class_float.md#class-float) **text\_editor/completion/code\_complete\_delay** [🔗](#class-editorsettings-property-text-editor-completion-code-complete-delay)

The delay in seconds after which autocompletion suggestions should be displayed when the user stops typing.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/code\_complete\_enabled** [🔗](#class-editorsettings-property-text-editor-completion-code-complete-enabled)

If `true`, code completion will be triggered automatically after [text\_editor/completion/code\_complete\_delay](#class-editorsettings-property-text-editor-completion-code-complete-delay). Even if `false`, code completion can be triggered manually with the `ui_text_completion_query` action (by default `Ctrl + Space` or `Cmd + Space` on macOS).

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/colorize\_suggestions** [🔗](#class-editorsettings-property-text-editor-completion-colorize-suggestions)

If `true` enables the coloring for some items in the autocompletion suggestions, like vector components.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/complete\_file\_paths** [🔗](#class-editorsettings-property-text-editor-completion-complete-file-paths)

If `true`, provides autocompletion suggestions for file paths in methods such as `load()` and `preload()`.

* * *

[float](class_float.md#class-float) **text\_editor/completion/idle\_parse\_delay** [🔗](#class-editorsettings-property-text-editor-completion-idle-parse-delay)

The delay in seconds after which the script editor should check for errors when the user stops typing.

* * *

[float](class_float.md#class-float) **text\_editor/completion/idle\_parse\_delay\_with\_errors\_found** [🔗](#class-editorsettings-property-text-editor-completion-idle-parse-delay-with-errors-found)

The delay used instead of [text\_editor/completion/idle\_parse\_delay](#class-editorsettings-property-text-editor-completion-idle-parse-delay), when the parser has found errors. A lower value should feel more responsive while fixing code, but may cause notable stuttering and increase CPU usage.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/put\_callhint\_tooltip\_below\_current\_line** [🔗](#class-editorsettings-property-text-editor-completion-put-callhint-tooltip-below-current-line)

If `true`, the code completion tooltip will appear below the current line unless there is no space on screen below the current line. If `false`, the code completion tooltip will appear above the current line.

* * *

[bool](class_bool.md#class-bool) **text\_editor/completion/use\_single\_quotes** [🔗](#class-editorsettings-property-text-editor-completion-use-single-quotes)

If `true`, performs string autocompletion with single quotes. If `false`, performs string autocompletion with double quotes (which matches the [GDScript style guide](../tutorials/scripting/gdscript/gdscript_styleguide.md)).

* * *

[String](class_string.md#class-string) **text\_editor/external/exec\_flags** [🔗](#class-editorsettings-property-text-editor-external-exec-flags)

The command-line arguments to pass to the external text editor that is run when [text\_editor/external/use\_external\_editor](#class-editorsettings-property-text-editor-external-use-external-editor) is `true`. See also [text\_editor/external/exec\_path](#class-editorsettings-property-text-editor-external-exec-path).

* * *

[String](class_string.md#class-string) **text\_editor/external/exec\_path** [🔗](#class-editorsettings-property-text-editor-external-exec-path)

The path to the text editor executable used to edit text files if [text\_editor/external/use\_external\_editor](#class-editorsettings-property-text-editor-external-use-external-editor) is `true`.

* * *

[bool](class_bool.md#class-bool) **text\_editor/external/use\_external\_editor** [🔗](#class-editorsettings-property-text-editor-external-use-external-editor)

If `true`, uses an external editor instead of the built-in Script Editor. See also [text\_editor/external/exec\_path](#class-editorsettings-property-text-editor-external-exec-path) and [text\_editor/external/exec\_flags](#class-editorsettings-property-text-editor-external-exec-flags).

* * *

[int](class_int.md#class-int) **text\_editor/help/class\_reference\_examples** [🔗](#class-editorsettings-property-text-editor-help-class-reference-examples)

Controls which multi-line code blocks should be displayed in the editor help. This setting does not affect single-line code literals in the editor help.

* * *

[int](class_int.md#class-int) **text\_editor/help/help\_font\_size** [🔗](#class-editorsettings-property-text-editor-help-help-font-size)

The font size to use for the editor help (built-in class reference).

* * *

[int](class_int.md#class-int) **text\_editor/help/help\_source\_font\_size** [🔗](#class-editorsettings-property-text-editor-help-help-source-font-size)

The font size to use for code samples in the editor help (built-in class reference).

* * *

[int](class_int.md#class-int) **text\_editor/help/help\_title\_font\_size** [🔗](#class-editorsettings-property-text-editor-help-help-title-font-size)

The font size to use for headings in the editor help (built-in class reference).

* * *

[bool](class_bool.md#class-bool) **text\_editor/help/show\_help\_index** [🔗](#class-editorsettings-property-text-editor-help-show-help-index)

If `true`, displays a table of contents at the left of the editor help (at the location where the members overview would appear when editing a script).

* * *

[bool](class_bool.md#class-bool) **text\_editor/help/sort\_functions\_alphabetically** [🔗](#class-editorsettings-property-text-editor-help-sort-functions-alphabetically)

If `true`, the script's method list in the Script Editor is sorted alphabetically.

* * *

[bool](class_bool.md#class-bool) **text\_editor/script\_list/group\_help\_pages** [🔗](#class-editorsettings-property-text-editor-script-list-group-help-pages)

If `true`, class reference pages are grouped together at the bottom of the Script Editor's script list.

* * *

[bool](class_bool.md#class-bool) **text\_editor/script\_list/highlight\_scene\_scripts** [🔗](#class-editorsettings-property-text-editor-script-list-highlight-scene-scripts)

If `true`, the scripts that are used by the current scene are highlighted in the Script Editor's script list.

* * *

[int](class_int.md#class-int) **text\_editor/script\_list/list\_script\_names\_as** [🔗](#class-editorsettings-property-text-editor-script-list-list-script-names-as)

Specifies how script paths should be displayed in Script Editor's script list. If using the "Name" option and some scripts share the same file name, more parts of their paths are revealed to avoid conflicts.

* * *

[bool](class_bool.md#class-bool) **text\_editor/script\_list/script\_temperature\_enabled** [🔗](#class-editorsettings-property-text-editor-script-list-script-temperature-enabled)

If `true`, the names of recently opened scripts in the Script Editor are highlighted with the accent color, with its intensity based on how recently they were opened.

* * *

[int](class_int.md#class-int) **text\_editor/script\_list/script\_temperature\_history\_size** [🔗](#class-editorsettings-property-text-editor-script-list-script-temperature-history-size)

How many script names can be highlighted at most, if [text\_editor/script\_list/script\_temperature\_enabled](#class-editorsettings-property-text-editor-script-list-script-temperature-enabled) is `true`. Scripts older than this value use the default font color.

* * *

[bool](class_bool.md#class-bool) **text\_editor/script\_list/show\_members\_overview** [🔗](#class-editorsettings-property-text-editor-script-list-show-members-overview)

If `true`, displays an overview of the current script's member variables and functions at the left of the script editor. See also [text\_editor/script\_list/sort\_members\_outline\_alphabetically](#class-editorsettings-property-text-editor-script-list-sort-members-outline-alphabetically).

* * *

[bool](class_bool.md#class-bool) **text\_editor/script\_list/sort\_members\_outline\_alphabetically** [🔗](#class-editorsettings-property-text-editor-script-list-sort-members-outline-alphabetically)

If `true`, sorts the members outline (located at the left of the script editor) using alphabetical order. If `false`, sorts the members outline depending on the order in which members are found in the script.

**Note:** Only effective if [text\_editor/script\_list/show\_members\_overview](#class-editorsettings-property-text-editor-script-list-show-members-overview) is `true`.

* * *

[int](class_int.md#class-int) **text\_editor/script\_list/sort\_scripts\_by** [🔗](#class-editorsettings-property-text-editor-script-list-sort-scripts-by)

Specifies sorting used for Script Editor's open script list.

* * *

[String](class_string.md#class-string) **text\_editor/theme/color\_theme** [🔗](#class-editorsettings-property-text-editor-theme-color-theme)

The syntax theme to use in the script editor.

You can save your own syntax theme from your current settings by using **File > Theme > Save As...** at the top of the script editor. The syntax theme will then be available locally in the list of color themes.

You can find additional syntax themes to install in the [godot-syntax-themes](https://github.com/godotengine/godot-syntax-themes) repository.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/background\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-background-color)

The script editor's background color. If set to a translucent color, the editor theme's base color will be visible behind.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/base\_type\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-base-type-color)

The script editor's base type color (used for types like [Vector2](class_vector2.md#class-vector2), [Vector3](class_vector3.md#class-vector3), [Color](class_color.md#class-color), ...).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/bookmark\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-bookmark-color)

The script editor's bookmark icon color (displayed in the gutter).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/brace\_mismatch\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-brace-mismatch-color)

The script editor's brace mismatch color. Used when the caret is currently on a mismatched brace, parenthesis or bracket character.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/breakpoint\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-breakpoint-color)

The script editor's breakpoint icon color (displayed in the gutter).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/caret\_background\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-caret-background-color)

The script editor's caret background color.

**Note:** This setting has no effect as it's currently unused.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/caret\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-caret-color)

The script editor's caret color.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/code\_folding\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-code-folding-color)

The script editor's color for the code folding icon (displayed in the gutter).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/comment\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-color)

The script editor's comment color.

**Note:** In GDScript, unlike Python, multiline strings are not considered to be comments, and will use the string highlighting color instead.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/comment\_markers/critical\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-color)

The script editor's critical comment marker text color. These markers are determined by [text\_editor/theme/highlighting/comment\_markers/critical\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-list).

* * *

[String](class_string.md#class-string) **text\_editor/theme/highlighting/comment\_markers/critical\_list** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-list)

A comma-separated list of case-sensitive words to highlight in comments. The text will be highlighted in the script editor with the [text\_editor/theme/highlighting/comment\_markers/critical\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-critical-color) color. These must not include spaces or symbols or they will not be highlighted.

**Note:** This is only implemented in the GDScript syntax highlighter.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/comment\_markers/notice\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-color)

The script editor's notice comment marker text color. These markers are determined by [text\_editor/theme/highlighting/comment\_markers/notice\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-list).

* * *

[String](class_string.md#class-string) **text\_editor/theme/highlighting/comment\_markers/notice\_list** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-list)

A comma-separated list of case-sensitive words to highlight in comments. The text will be highlighted in the script editor with the [text\_editor/theme/highlighting/comment\_markers/notice\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-notice-color) color. These must not include spaces or symbols or they will not be highlighted.

**Note:** This is only implemented in the GDScript syntax highlighter.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/comment\_markers/warning\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-color)

The script editor's warning comment marker text color. These markers are determined by [text\_editor/theme/highlighting/comment\_markers/warning\_list](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-list).

* * *

[String](class_string.md#class-string) **text\_editor/theme/highlighting/comment\_markers/warning\_list** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-list)

A comma-separated list of case-sensitive words to highlight in comments. The text will be highlighted in the script editor with the [text\_editor/theme/highlighting/comment\_markers/warning\_color](#class-editorsettings-property-text-editor-theme-highlighting-comment-markers-warning-color) color. These must not include spaces or symbols or they will not be highlighted.

**Note:** This is only implemented in the GDScript syntax highlighter.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_background\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-background-color)

The script editor's autocompletion box background color.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_existing\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-existing-color)

The script editor's autocompletion box background color to highlight existing characters in the completion results. This should be a translucent color so that [text\_editor/theme/highlighting/completion\_selected\_color](#class-editorsettings-property-text-editor-theme-highlighting-completion-selected-color) can be seen behind.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_font\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-font-color)

The script editor's autocompletion box text color.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_scroll\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-scroll-color)

The script editor's autocompletion box scroll bar color.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_scroll\_hovered\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-scroll-hovered-color)

The script editor's autocompletion box scroll bar color when hovered or pressed with the mouse.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/completion\_selected\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-completion-selected-color)

The script editor's autocompletion box background color for the currently selected line.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/control\_flow\_keyword\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-control-flow-keyword-color)

The script editor's control flow keyword color (used for keywords like `if`, `for`, `return`, ...).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/current\_line\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color)

The script editor's background color for the line the caret is currently on. This should be set to a translucent color so that it can display on top of other line color modifiers such as [text\_editor/theme/highlighting/mark\_color](#class-editorsettings-property-text-editor-theme-highlighting-mark-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/doc\_comment\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-doc-comment-color)

The script editor's documentation comment color. In GDScript, this is used for comments starting with `##`. In C#, this is used for comments starting with `///` or `/**`.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/engine\_type\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-engine-type-color)

The script editor's engine type color ( [Object](class_object.md#class-object), [Mesh](class_mesh.md#class-mesh), [Node](class_node.md#class-node), ...).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/executing\_line\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-executing-line-color)

The script editor's color for the debugger's executing line icon (displayed in the gutter).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/folded\_code\_region\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-folded-code-region-color)

The script editor's background line highlighting color for folded code region.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/function\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-function-color)

The script editor's function call color.

**Note:** When using the GDScript syntax highlighter, this is only used when calling some functions since function definitions and global functions have their own colors [text\_editor/theme/highlighting/gdscript/function\_definition\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-function-definition-color) and [text\_editor/theme/highlighting/gdscript/global\_function\_color](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-global-function-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/annotation\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-annotation-color)

The GDScript syntax highlighter text color for annotations (e.g. `@export`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/function\_definition\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-function-definition-color)

The GDScript syntax highlighter text color for function definitions (e.g. the `_ready` in `func _ready():`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/global\_function\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-global-function-color)

The GDScript syntax highlighter text color for global functions, such as the ones in [@GlobalScope](class_@globalscope.md#class-globalscope) (e.g. `preload()`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/node\_path\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-node-path-color)

The GDScript syntax highlighter text color for [NodePath](class_nodepath.md#class-nodepath) literals (e.g. `^"position:x"`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/node\_reference\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-node-reference-color)

The GDScript syntax highlighter text color for node reference literals (e.g. `$"Sprite"` and `%"Sprite"`\]).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/gdscript/string\_name\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-gdscript-string-name-color)

The GDScript syntax highlighter text color for [StringName](class_stringname.md#class-stringname) literals (e.g. `&"example"`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/keyword\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-keyword-color)

The script editor's non-control flow keyword color (used for keywords like `var`, `func`, `extends`, ...).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/line\_length\_guideline\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-line-length-guideline-color)

The script editor's color for the line length guideline. The "hard" line length guideline will be drawn with this color, whereas the "soft" line length guideline will be drawn with half of its opacity.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/line\_number\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-line-number-color)

The script editor's color for line numbers. See also [text\_editor/theme/highlighting/safe\_line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-safe-line-number-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/mark\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-mark-color)

The script editor's background color for lines with errors. This should be set to a translucent color so that it can display on top of other line color modifiers such as [text\_editor/theme/highlighting/current\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/member\_variable\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-member-variable-color)

The script editor's color for member variables on objects (e.g. `self.some_property`).

**Note:** This color is not used for local variable declaration and access.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/number\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-number-color)

The script editor's color for numbers (integer and floating-point).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/safe\_line\_number\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-safe-line-number-color)

The script editor's color for type-safe line numbers. See also [text\_editor/theme/highlighting/line\_number\_color](#class-editorsettings-property-text-editor-theme-highlighting-line-number-color).

**Note:** Only displayed if [text\_editor/appearance/gutters/highlight\_type\_safe\_lines](#class-editorsettings-property-text-editor-appearance-gutters-highlight-type-safe-lines) is `true`.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/search\_result\_border\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-search-result-border-color)

The script editor's color for the border of search results. This border helps bring further attention to the search result. Set this color's opacity to 0 to disable the border.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/search\_result\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-search-result-color)

The script editor's background color for search results.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/selection\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-selection-color)

The script editor's background color for the currently selected text.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/string\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-string-color)

The script editor's color for strings (single-line and multi-line).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/symbol\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-symbol-color)

The script editor's color for operators ( `( ) [ ] { } + - * /`, ...).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/text\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-text-color)

The script editor's color for text not highlighted by any syntax highlighting rule.

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/text\_selected\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-text-selected-color)

The script editor's background color for text. This should be set to a translucent color so that it can display on top of other line color modifiers such as [text\_editor/theme/highlighting/current\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/user\_type\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-user-type-color)

The script editor's color for user-defined types (using `class_name`).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/warning\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-warning-color)

The script editor's background color for lines with warnings. This should be set to a translucent color so that it can display on top of other line color modifiers such as [text\_editor/theme/highlighting/current\_line\_color](#class-editorsettings-property-text-editor-theme-highlighting-current-line-color).

* * *

[Color](class_color.md#class-color) **text\_editor/theme/highlighting/word\_highlighted\_color** [🔗](#class-editorsettings-property-text-editor-theme-highlighting-word-highlighted-color)

The script editor's color for words highlighted by selecting them. Only visible if [text\_editor/appearance/caret/highlight\_all\_occurrences](#class-editorsettings-property-text-editor-appearance-caret-highlight-all-occurrences) is `true`.

* * *

[String](class_string.md#class-string) **version\_control/ssh\_private\_key\_path** [🔗](#class-editorsettings-property-version-control-ssh-private-key-path)

Path to private SSH key file for the editor's Version Control integration credentials.

* * *

[String](class_string.md#class-string) **version\_control/ssh\_public\_key\_path** [🔗](#class-editorsettings-property-version-control-ssh-public-key-path)

Path to public SSH key file for the editor's Version Control integration credentials.

* * *

[String](class_string.md#class-string) **version\_control/username** [🔗](#class-editorsettings-property-version-control-username)

Default username for editor's Version Control integration.

* * *

## Method Descriptions

void **add\_property\_info**(info: [Dictionary](class_dictionary.md#class-dictionary)) [🔗](#class-editorsettings-method-add-property-info)

Adds a custom property info to a property. The dictionary must contain:

- `name`: [String](class_string.md#class-string) (the name of the property)

- `type`: [int](class_int.md#class-int) (see [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type))

- optionally `hint`: [int](class_int.md#class-int) (see [PropertyHint](class_@globalscope.md#enum-globalscope-propertyhint)) and `hint_string`: [String](class_string.md#class-string)


GDScriptC#

```
var settings = EditorInterface.get_editor_settings()
settings.set("category/property_name", 0)

var property_info = {
    "name": "category/property_name",
    "type": TYPE_INT,
    "hint": PROPERTY_HINT_ENUM,
    "hint_string": "one,two,three"
}

settings.add_property_info(property_info)

```

```
var settings = GetEditorInterface().GetEditorSettings();
settings.Set("category/property_name", 0);

var propertyInfo = new Godot.Collections.Dictionary
{
    { "name", "category/propertyName" },
    { "type", Variant.Type.Int },
    { "hint", PropertyHint.Enum },
    { "hint_string", "one,two,three" },
};

settings.AddPropertyInfo(propertyInfo);

```

* * *

[bool](class_bool.md#class-bool) **check\_changed\_settings\_in\_group**(setting\_prefix: [String](class_string.md#class-string)) const [🔗](#class-editorsettings-method-check-changed-settings-in-group)

Checks if any settings with the prefix `setting_prefix` exist in the set of changed settings. See also [get\_changed\_settings()](#class-editorsettings-method-get-changed-settings).

* * *

void **erase**(property: [String](class_string.md#class-string)) [🔗](#class-editorsettings-method-erase)

Erases the setting whose name is specified by `property`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_changed\_settings**() const [🔗](#class-editorsettings-method-get-changed-settings)

Gets an array of the settings which have been changed since the last save. Note that internally `changed_settings` is cleared after a successful save, so generally the most appropriate place to use this method is when processing [NOTIFICATION\_EDITOR\_SETTINGS\_CHANGED](#class-editorsettings-constant-notification-editor-settings-changed).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_favorites**() const [🔗](#class-editorsettings-method-get-favorites)

Returns the list of favorite files and directories for this project.

* * *

[Variant](class_variant.md#class-variant) **get\_project\_metadata**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), default: [Variant](class_variant.md#class-variant) = null) const [🔗](#class-editorsettings-method-get-project-metadata)

Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also [set\_project\_metadata()](#class-editorsettings-method-set-project-metadata).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_recent\_dirs**() const [🔗](#class-editorsettings-method-get-recent-dirs)

Returns the list of recently visited folders in the file dialog for this project.

* * *

[Variant](class_variant.md#class-variant) **get\_setting**(name: [String](class_string.md#class-string)) const [🔗](#class-editorsettings-method-get-setting)

Returns the value of the setting specified by `name`. This is equivalent to using [Object.get()](class_object.md#class-object-method-get) on the EditorSettings instance.

* * *

[bool](class_bool.md#class-bool) **has\_setting**(name: [String](class_string.md#class-string)) const [🔗](#class-editorsettings-method-has-setting)

Returns `true` if the setting specified by `name` exists, `false` otherwise.

* * *

void **mark\_setting\_changed**(setting: [String](class_string.md#class-string)) [🔗](#class-editorsettings-method-mark-setting-changed)

Marks the passed editor setting as being changed, see [get\_changed\_settings()](#class-editorsettings-method-get-changed-settings). Only settings which exist (see [has\_setting()](#class-editorsettings-method-has-setting)) will be accepted.

* * *

void **set\_builtin\_action\_override**(name: [String](class_string.md#class-string), actions\_list: [Array](class_array.md#class-array)\[ [InputEvent](class_inputevent.md#class-inputevent)\]) [🔗](#class-editorsettings-method-set-builtin-action-override)

Overrides the built-in editor action `name` with the input actions defined in `actions_list`.

* * *

void **set\_favorites**(dirs: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorsettings-method-set-favorites)

Sets the list of favorite files and directories for this project.

* * *

void **set\_initial\_value**(name: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant), update\_current: [bool](class_bool.md#class-bool)) [🔗](#class-editorsettings-method-set-initial-value)

Sets the initial value of the setting specified by `name` to `value`. This is used to provide a value for the Revert button in the Editor Settings. If `update_current` is `true`, the setting is reset to `value` as well.

* * *

void **set\_project\_metadata**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), data: [Variant](class_variant.md#class-variant)) [🔗](#class-editorsettings-method-set-project-metadata)

Sets project-specific metadata with the `section`, `key` and `data` specified. This metadata is stored outside the project folder and therefore won't be checked into version control. See also [get\_project\_metadata()](#class-editorsettings-method-get-project-metadata).

* * *

void **set\_recent\_dirs**(dirs: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) [🔗](#class-editorsettings-method-set-recent-dirs)

Sets the list of recently visited folders in the file dialog for this project.

* * *

void **set\_setting**(name: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-editorsettings-method-set-setting)

Sets the `value` of the setting specified by `name`. This is equivalent to using [Object.set()](class_object.md#class-object-method-set) on the EditorSettings instance.

[Previous](class_editornode3dgizmoplugin.md "EditorNode3DGizmoPlugin") [Next](class_editorsyntaxhighlighter.md "EditorSyntaxHighlighter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editornode3dgizmoplugin.md "EditorNode3DGizmoPlugin") [Next](class_editorsyntaxhighlighter.md "EditorSyntaxHighlighter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).