---
title: OpenXRAPIExtension — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrapiextension.html
crawled_at: "2026-08-13T10:24:24+12:00"
content_hash: 40448546af8da341538eedbc438ad05b7d6a1b8ba86c8044109c45127b07a24e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRAPIExtension

* * *

# OpenXRAPIExtension

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Makes the OpenXR API available for GDExtension.

## Description

**OpenXRAPIExtension** makes OpenXR available for GDExtension. It provides the OpenXR API to GDExtension through the [get\_instance\_proc\_addr()](#class-openxrapiextension-method-get-instance-proc-addr) method, and the OpenXR instance through [get\_instance()](#class-openxrapiextension-method-get-instance).

It also provides methods for querying the status of OpenXR initialization, and helper methods for ease of use of the API with GDExtension.

## Tutorials

- [XrResult documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html)

- [XrInstance documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrInstance.html)

- [XrSpace documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSpace.html)

- [XrSession documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSession.html)

- [XrSystemId documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSystemId.html)

- [xrBeginSession documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/xrBeginSession.html)

- [XrPosef documentation](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrPosef.html)


## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [action\_get\_handle](#class-openxrapiextension-method-action-get-handle)(action: [RID](class_rid.md#class-rid)) |
| void | [begin\_debug\_label\_region](#class-openxrapiextension-method-begin-debug-label-region)(label\_name: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [can\_render](#class-openxrapiextension-method-can-render)() |
| void | [end\_debug\_label\_region](#class-openxrapiextension-method-end-debug-label-region)() |
| [RID](class_rid.md#class-rid) | [find\_action](#class-openxrapiextension-method-find-action)(name: [String](class_string.md#class-string), action\_set: [RID](class_rid.md#class-rid)) |
| [String](class_string.md#class-string) | [get\_error\_string](#class-openxrapiextension-method-get-error-string)(result: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_hand\_tracker](#class-openxrapiextension-method-get-hand-tracker)(hand\_index: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_instance](#class-openxrapiextension-method-get-instance)() |
| [int](class_int.md#class-int) | [get\_instance\_proc\_addr](#class-openxrapiextension-method-get-instance-proc-addr)(name: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [get\_next\_frame\_time](#class-openxrapiextension-method-get-next-frame-time)() |
| [int](class_int.md#class-int) | [get\_play\_space](#class-openxrapiextension-method-get-play-space)() |
| [int](class_int.md#class-int) | [get\_predicted\_display\_time](#class-openxrapiextension-method-get-predicted-display-time)() |
| [int](class_int.md#class-int) | [get\_projection\_layer](#class-openxrapiextension-method-get-projection-layer)() |
| [float](class_float.md#class-float) | [get\_render\_state\_z\_far](#class-openxrapiextension-method-get-render-state-z-far)() |
| [float](class_float.md#class-float) | [get\_render\_state\_z\_near](#class-openxrapiextension-method-get-render-state-z-near)() |
| [int](class_int.md#class-int) | [get\_session](#class-openxrapiextension-method-get-session)() |
| [PackedInt64Array](class_packedint64array.md#class-packedint64array) | [get\_supported\_swapchain\_formats](#class-openxrapiextension-method-get-supported-swapchain-formats)() |
| [String](class_string.md#class-string) | [get\_swapchain\_format\_name](#class-openxrapiextension-method-get-swapchain-format-name)(swapchain\_format: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [get\_system\_id](#class-openxrapiextension-method-get-system-id)() |
| void | [insert\_debug\_label](#class-openxrapiextension-method-insert-debug-label)(label\_name: [String](class_string.md#class-string)) |
| [OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) | [is\_environment\_blend\_mode\_alpha\_supported](#class-openxrapiextension-method-is-environment-blend-mode-alpha-supported)() |
| [bool](class_bool.md#class-bool) | [is\_initialized](#class-openxrapiextension-method-is-initialized)() |
| [bool](class_bool.md#class-bool) | [is\_running](#class-openxrapiextension-method-is-running)() |
| [bool](class_bool.md#class-bool) | [openxr\_is\_enabled](#class-openxrapiextension-method-openxr-is-enabled)(check\_run\_in\_editor: [bool](class_bool.md#class-bool)) static |
| void | [openxr\_swapchain\_acquire](#class-openxrapiextension-method-openxr-swapchain-acquire)(swapchain: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [openxr\_swapchain\_create](#class-openxrapiextension-method-openxr-swapchain-create)(create\_flags: [int](class_int.md#class-int), usage\_flags: [int](class_int.md#class-int), swapchain\_format: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), sample\_count: [int](class_int.md#class-int), array\_size: [int](class_int.md#class-int)) |
| void | [openxr\_swapchain\_free](#class-openxrapiextension-method-openxr-swapchain-free)(swapchain: [int](class_int.md#class-int)) |
| [RID](class_rid.md#class-rid) | [openxr\_swapchain\_get\_image](#class-openxrapiextension-method-openxr-swapchain-get-image)(swapchain: [int](class_int.md#class-int)) |
| [int](class_int.md#class-int) | [openxr\_swapchain\_get\_swapchain](#class-openxrapiextension-method-openxr-swapchain-get-swapchain)(swapchain: [int](class_int.md#class-int)) |
| void | [openxr\_swapchain\_release](#class-openxrapiextension-method-openxr-swapchain-release)(swapchain: [int](class_int.md#class-int)) |
| void | [register\_composition\_layer\_provider](#class-openxrapiextension-method-register-composition-layer-provider)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| void | [register\_frame\_info\_extension](#class-openxrapiextension-method-register-frame-info-extension)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| void | [register\_projection\_views\_extension](#class-openxrapiextension-method-register-projection-views-extension)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| void | [set\_custom\_play\_space](#class-openxrapiextension-method-set-custom-play-space)(space: `const void*`) |
| void | [set\_emulate\_environment\_blend\_mode\_alpha\_blend](#class-openxrapiextension-method-set-emulate-environment-blend-mode-alpha-blend)(enabled: [bool](class_bool.md#class-bool)) |
| void | [set\_object\_name](#class-openxrapiextension-method-set-object-name)(object\_type: [int](class_int.md#class-int), object\_handle: [int](class_int.md#class-int), object\_name: [String](class_string.md#class-string)) |
| void | [set\_render\_region](#class-openxrapiextension-method-set-render-region)(render\_region: [Rect2i](class_rect2i.md#class-rect2i)) |
| void | [set\_velocity\_depth\_texture](#class-openxrapiextension-method-set-velocity-depth-texture)(render\_target: [RID](class_rid.md#class-rid)) |
| void | [set\_velocity\_target\_size](#class-openxrapiextension-method-set-velocity-target-size)(target\_size: [Vector2i](class_vector2i.md#class-vector2i)) |
| void | [set\_velocity\_texture](#class-openxrapiextension-method-set-velocity-texture)(render\_target: [RID](class_rid.md#class-rid)) |
| [Transform3D](class_transform3d.md#class-transform3d) | [transform\_from\_pose](#class-openxrapiextension-method-transform-from-pose)(pose: `const void*`) |
| void | [unregister\_composition\_layer\_provider](#class-openxrapiextension-method-unregister-composition-layer-provider)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| void | [unregister\_frame\_info\_extension](#class-openxrapiextension-method-unregister-frame-info-extension)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| void | [unregister\_projection\_views\_extension](#class-openxrapiextension-method-unregister-projection-views-extension)(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) |
| [bool](class_bool.md#class-bool) | [xr\_result](#class-openxrapiextension-method-xr-result)(result: [int](class_int.md#class-int), format: [String](class_string.md#class-string), args: [Array](class_array.md#class-array)) |

* * *

## Enumerations

enum **OpenXRAlphaBlendModeSupport**: [🔗](#enum-openxrapiextension-openxralphablendmodesupport)

[OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) **OPENXR\_ALPHA\_BLEND\_MODE\_SUPPORT\_NONE** = `0`

Means that [XRInterface.XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](class_xrinterface.md#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) isn't supported at all.

[OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) **OPENXR\_ALPHA\_BLEND\_MODE\_SUPPORT\_REAL** = `1`

Means that [XRInterface.XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](class_xrinterface.md#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) is really supported.

[OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) **OPENXR\_ALPHA\_BLEND\_MODE\_SUPPORT\_EMULATING** = `2`

Means that [XRInterface.XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](class_xrinterface.md#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) is emulated.

* * *

## Method Descriptions

[int](class_int.md#class-int) **action\_get\_handle**(action: [RID](class_rid.md#class-rid)) [🔗](#class-openxrapiextension-method-action-get-handle)

Returns the corresponding `XrAction` OpenXR handle for the given action RID.

* * *

void **begin\_debug\_label\_region**(label\_name: [String](class_string.md#class-string)) [🔗](#class-openxrapiextension-method-begin-debug-label-region)

Begins a new debug label region, this label will be reported in debug messages for any calls following this until [end\_debug\_label\_region()](#class-openxrapiextension-method-end-debug-label-region) is called. Debug labels can be stacked.

* * *

[bool](class_bool.md#class-bool) **can\_render**() [🔗](#class-openxrapiextension-method-can-render)

Returns `true` if OpenXR is initialized for rendering with an XR viewport.

* * *

void **end\_debug\_label\_region**() [🔗](#class-openxrapiextension-method-end-debug-label-region)

Marks the end of a debug label region. Removes the latest debug label region added by calling [begin\_debug\_label\_region()](#class-openxrapiextension-method-begin-debug-label-region).

* * *

[RID](class_rid.md#class-rid) **find\_action**(name: [String](class_string.md#class-string), action\_set: [RID](class_rid.md#class-rid)) [🔗](#class-openxrapiextension-method-find-action)

Returns the [RID](class_rid.md#class-rid) corresponding to an `Action` of a matching name, optionally limited to a specified action set.

* * *

[String](class_string.md#class-string) **get\_error\_string**(result: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-get-error-string)

Returns an error string for the given [XrResult](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html).

* * *

[int](class_int.md#class-int) **get\_hand\_tracker**(hand\_index: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-get-hand-tracker)

Returns the corresponding `XRHandTrackerEXT` handle for the given hand index value.

* * *

[int](class_int.md#class-int) **get\_instance**() [🔗](#class-openxrapiextension-method-get-instance)

Returns the [XrInstance](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrInstance.html) created during the initialization of the OpenXR API.

* * *

[int](class_int.md#class-int) **get\_instance\_proc\_addr**(name: [String](class_string.md#class-string)) [🔗](#class-openxrapiextension-method-get-instance-proc-addr)

Returns the function pointer of the OpenXR function with the specified name, cast to an integer. If the function with the given name does not exist, the method returns `0`.

**Note:** `openxr/util.h` contains utility macros for acquiring OpenXR functions, e.g. `GDEXTENSION_INIT_XR_FUNC_V(xrCreateAction)`.

* * *

[int](class_int.md#class-int) **get\_next\_frame\_time**() [🔗](#class-openxrapiextension-method-get-next-frame-time)

Returns the predicted display timing for the next frame.

* * *

[int](class_int.md#class-int) **get\_play\_space**() [🔗](#class-openxrapiextension-method-get-play-space)

Returns the play space, which is an [XrSpace](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSpace.html) cast to an integer.

* * *

[int](class_int.md#class-int) **get\_predicted\_display\_time**() [🔗](#class-openxrapiextension-method-get-predicted-display-time)

Returns the predicted display timing for the current frame.

* * *

[int](class_int.md#class-int) **get\_projection\_layer**() [🔗](#class-openxrapiextension-method-get-projection-layer)

Returns a pointer to the render state's `XrCompositionLayerProjection` struct.

**Note:** This method should only be called from the rendering thread.

* * *

[float](class_float.md#class-float) **get\_render\_state\_z\_far**() [🔗](#class-openxrapiextension-method-get-render-state-z-far)

Returns the far boundary value of the camera frustum.

**Note:** This is only accessible in the render thread.

* * *

[float](class_float.md#class-float) **get\_render\_state\_z\_near**() [🔗](#class-openxrapiextension-method-get-render-state-z-near)

Returns the near boundary value of the camera frustum.

**Note:** This is only accessible in the render thread.

* * *

[int](class_int.md#class-int) **get\_session**() [🔗](#class-openxrapiextension-method-get-session)

Returns the OpenXR session, which is an [XrSession](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSession.html) cast to an integer.

* * *

[PackedInt64Array](class_packedint64array.md#class-packedint64array) **get\_supported\_swapchain\_formats**() [🔗](#class-openxrapiextension-method-get-supported-swapchain-formats)

Returns an array of supported swapchain formats.

* * *

[String](class_string.md#class-string) **get\_swapchain\_format\_name**(swapchain\_format: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-get-swapchain-format-name)

Returns the name of the specified swapchain format.

* * *

[int](class_int.md#class-int) **get\_system\_id**() [🔗](#class-openxrapiextension-method-get-system-id)

Returns the id of the system, which is an [XrSystemId](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSystemId.html) cast to an integer.

* * *

void **insert\_debug\_label**(label\_name: [String](class_string.md#class-string)) [🔗](#class-openxrapiextension-method-insert-debug-label)

Inserts a debug label, this label is reported in any debug message resulting from the OpenXR calls that follows, until any of [begin\_debug\_label\_region()](#class-openxrapiextension-method-begin-debug-label-region), [end\_debug\_label\_region()](#class-openxrapiextension-method-end-debug-label-region), or [insert\_debug\_label()](#class-openxrapiextension-method-insert-debug-label) is called.

* * *

[OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) **is\_environment\_blend\_mode\_alpha\_supported**() [🔗](#class-openxrapiextension-method-is-environment-blend-mode-alpha-supported)

Returns [OpenXRAlphaBlendModeSupport](#enum-openxrapiextension-openxralphablendmodesupport) denoting if [XRInterface.XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](class_xrinterface.md#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) is really supported, emulated or not supported at all.

* * *

[bool](class_bool.md#class-bool) **is\_initialized**() [🔗](#class-openxrapiextension-method-is-initialized)

Returns `true` if OpenXR is initialized.

* * *

[bool](class_bool.md#class-bool) **is\_running**() [🔗](#class-openxrapiextension-method-is-running)

Returns `true` if OpenXR is running ( [xrBeginSession](https://registry.khronos.org/OpenXR/specs/1.0/man/html/xrBeginSession.html) was successfully called and the swapchains were created).

* * *

[bool](class_bool.md#class-bool) **openxr\_is\_enabled**(check\_run\_in\_editor: [bool](class_bool.md#class-bool)) static [🔗](#class-openxrapiextension-method-openxr-is-enabled)

Returns `true` if OpenXR is enabled.

* * *

void **openxr\_swapchain\_acquire**(swapchain: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-acquire)

Acquires the image of the provided swapchain.

* * *

[int](class_int.md#class-int) **openxr\_swapchain\_create**(create\_flags: [int](class_int.md#class-int), usage\_flags: [int](class_int.md#class-int), swapchain\_format: [int](class_int.md#class-int), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), sample\_count: [int](class_int.md#class-int), array\_size: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-create)

Returns a pointer to a new swapchain created using the provided parameters.

* * *

void **openxr\_swapchain\_free**(swapchain: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-free)

Destroys the provided swapchain and frees it from memory.

* * *

[RID](class_rid.md#class-rid) **openxr\_swapchain\_get\_image**(swapchain: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-get-image)

Returns the RID of the provided swapchain's image.

* * *

[int](class_int.md#class-int) **openxr\_swapchain\_get\_swapchain**(swapchain: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-get-swapchain)

Returns the `XrSwapchain` handle of the provided swapchain.

* * *

void **openxr\_swapchain\_release**(swapchain: [int](class_int.md#class-int)) [🔗](#class-openxrapiextension-method-openxr-swapchain-release)

Releases the image of the provided swapchain.

* * *

void **register\_composition\_layer\_provider**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-register-composition-layer-provider)

Registers the given extension as a composition layer provider.

* * *

void **register\_frame\_info\_extension**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-register-frame-info-extension)

Registers the given extension as modifying frame info via the [OpenXRExtensionWrapper.\_set\_frame\_wait\_info\_and\_get\_next\_pointer()](class_openxrextensionwrapper.md#class-openxrextensionwrapper-private-method-set-frame-wait-info-and-get-next-pointer), [OpenXRExtensionWrapper.\_set\_view\_locate\_info\_and\_get\_next\_pointer()](class_openxrextensionwrapper.md#class-openxrextensionwrapper-private-method-set-view-locate-info-and-get-next-pointer), or [OpenXRExtensionWrapper.\_set\_frame\_end\_info\_and\_get\_next\_pointer()](class_openxrextensionwrapper.md#class-openxrextensionwrapper-private-method-set-frame-end-info-and-get-next-pointer) virtual methods.

* * *

void **register\_projection\_views\_extension**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-register-projection-views-extension)

Registers the given extension as a provider of additional data structures to projections views.

* * *

void **set\_custom\_play\_space**(space: `const void*`) [🔗](#class-openxrapiextension-method-set-custom-play-space)

Sets the reference space used by OpenXR to the given [XrSpace](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSpace.html) (cast to a `void *`).

* * *

void **set\_emulate\_environment\_blend\_mode\_alpha\_blend**(enabled: [bool](class_bool.md#class-bool)) [🔗](#class-openxrapiextension-method-set-emulate-environment-blend-mode-alpha-blend)

If set to `true`, an OpenXR extension is loaded which is capable of emulating the [XRInterface.XR\_ENV\_BLEND\_MODE\_ALPHA\_BLEND](class_xrinterface.md#class-xrinterface-constant-xr-env-blend-mode-alpha-blend) blend mode.

* * *

void **set\_object\_name**(object\_type: [int](class_int.md#class-int), object\_handle: [int](class_int.md#class-int), object\_name: [String](class_string.md#class-string)) [🔗](#class-openxrapiextension-method-set-object-name)

Set the object name of an OpenXR object, used for debug output. `object_type` must be a valid OpenXR `XrObjectType` enum and `object_handle` must be a valid OpenXR object handle.

* * *

void **set\_render\_region**(render\_region: [Rect2i](class_rect2i.md#class-rect2i)) [🔗](#class-openxrapiextension-method-set-render-region)

Sets the render region to `render_region`, overriding the normal render target's rect.

* * *

void **set\_velocity\_depth\_texture**(render\_target: [RID](class_rid.md#class-rid)) [🔗](#class-openxrapiextension-method-set-velocity-depth-texture)

Sets the render target of the velocity depth texture.

* * *

void **set\_velocity\_target\_size**(target\_size: [Vector2i](class_vector2i.md#class-vector2i)) [🔗](#class-openxrapiextension-method-set-velocity-target-size)

Sets the target size of the velocity and velocity depth textures.

* * *

void **set\_velocity\_texture**(render\_target: [RID](class_rid.md#class-rid)) [🔗](#class-openxrapiextension-method-set-velocity-texture)

Sets the render target of the velocity texture.

* * *

[Transform3D](class_transform3d.md#class-transform3d) **transform\_from\_pose**(pose: `const void*`) [🔗](#class-openxrapiextension-method-transform-from-pose)

Creates a [Transform3D](class_transform3d.md#class-transform3d) from an [XrPosef](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrPosef.html).

* * *

void **unregister\_composition\_layer\_provider**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-unregister-composition-layer-provider)

Unregisters the given extension as a composition layer provider.

* * *

void **unregister\_frame\_info\_extension**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-unregister-frame-info-extension)

Unregisters the given extension as modifying frame info.

* * *

void **unregister\_projection\_views\_extension**(extension: [OpenXRExtensionWrapper](class_openxrextensionwrapper.md#class-openxrextensionwrapper)) [🔗](#class-openxrapiextension-method-unregister-projection-views-extension)

Unregisters the given extension as a provider of additional data structures to projections views.

* * *

[bool](class_bool.md#class-bool) **xr\_result**(result: [int](class_int.md#class-int), format: [String](class_string.md#class-string), args: [Array](class_array.md#class-array)) [🔗](#class-openxrapiextension-method-xr-result)

Returns `true` if the provided [XrResult](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html) (cast to an integer) is successful. Otherwise returns `false` and prints the [XrResult](https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html) converted to a string, with the specified additional information.

[Previous](class_oggpacketsequenceplayback.md "OggPacketSequencePlayback") [Next](class_openxrextensionwrapper.md "OpenXRExtensionWrapper")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_oggpacketsequenceplayback.md "OggPacketSequencePlayback") [Next](class_openxrextensionwrapper.md "OpenXRExtensionWrapper")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).