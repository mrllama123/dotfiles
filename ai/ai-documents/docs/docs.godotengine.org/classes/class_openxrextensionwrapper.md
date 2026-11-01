---
title: OpenXRExtensionWrapper — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrextensionwrapper.html
crawled_at: "2026-08-13T10:31:12+12:00"
content_hash: 99d61154ba282a6796c38e89446beef30dc1cd693bbadc85f964b56806d4891f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRExtensionWrapper

* * *

# OpenXRExtensionWrapper

**Inherits:** [Object](class_object.md#class-object)

**Inherited By:** [OpenXRExtensionWrapperExtension](class_openxrextensionwrapperextension.md#class-openxrextensionwrapperextension), [OpenXRFutureExtension](class_openxrfutureextension.md#class-openxrfutureextension), [OpenXRRenderModelExtension](class_openxrrendermodelextension.md#class-openxrrendermodelextension)

Allows implementing OpenXR extensions with GDExtension.

## Description

**OpenXRExtensionWrapper** allows implementing OpenXR extensions with GDExtension. The extension should be registered with [register\_extension\_wrapper()](#class-openxrextensionwrapper-method-register-extension-wrapper).

## Methods

|     |     |
| --- | --- |
| [int](class_int.md#class-int) | [\_get\_composition\_layer](#class-openxrextensionwrapper-private-method-get-composition-layer)(index: [int](class_int.md#class-int)) virtual |
| [int](class_int.md#class-int) | [\_get\_composition\_layer\_count](#class-openxrextensionwrapper-private-method-get-composition-layer-count)() virtual |
| [int](class_int.md#class-int) | [\_get\_composition\_layer\_order](#class-openxrextensionwrapper-private-method-get-composition-layer-order)(index: [int](class_int.md#class-int)) virtual |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_requested\_extensions](#class-openxrextensionwrapper-private-method-get-requested-extensions)() virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_suggested\_tracker\_names](#class-openxrextensionwrapper-private-method-get-suggested-tracker-names)() virtual |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_viewport\_composition\_layer\_extension\_properties](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-properties)() virtual |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_viewport\_composition\_layer\_extension\_property\_defaults](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-property-defaults)() virtual |
| void | [\_on\_before\_instance\_created](#class-openxrextensionwrapper-private-method-on-before-instance-created)() virtual |
| [bool](class_bool.md#class-bool) | [\_on\_event\_polled](#class-openxrextensionwrapper-private-method-on-event-polled)(event: `const void*`) virtual |
| void | [\_on\_instance\_created](#class-openxrextensionwrapper-private-method-on-instance-created)(instance: [int](class_int.md#class-int)) virtual |
| void | [\_on\_instance\_destroyed](#class-openxrextensionwrapper-private-method-on-instance-destroyed)() virtual |
| void | [\_on\_main\_swapchains\_created](#class-openxrextensionwrapper-private-method-on-main-swapchains-created)() virtual |
| void | [\_on\_post\_draw\_viewport](#class-openxrextensionwrapper-private-method-on-post-draw-viewport)(viewport: [RID](class_rid.md#class-rid)) virtual |
| void | [\_on\_pre\_draw\_viewport](#class-openxrextensionwrapper-private-method-on-pre-draw-viewport)(viewport: [RID](class_rid.md#class-rid)) virtual |
| void | [\_on\_pre\_render](#class-openxrextensionwrapper-private-method-on-pre-render)() virtual |
| void | [\_on\_process](#class-openxrextensionwrapper-private-method-on-process)() virtual |
| void | [\_on\_register\_metadata](#class-openxrextensionwrapper-private-method-on-register-metadata)() virtual |
| void | [\_on\_session\_created](#class-openxrextensionwrapper-private-method-on-session-created)(session: [int](class_int.md#class-int)) virtual |
| void | [\_on\_session\_destroyed](#class-openxrextensionwrapper-private-method-on-session-destroyed)() virtual |
| void | [\_on\_state\_exiting](#class-openxrextensionwrapper-private-method-on-state-exiting)() virtual |
| void | [\_on\_state\_focused](#class-openxrextensionwrapper-private-method-on-state-focused)() virtual |
| void | [\_on\_state\_idle](#class-openxrextensionwrapper-private-method-on-state-idle)() virtual |
| void | [\_on\_state\_loss\_pending](#class-openxrextensionwrapper-private-method-on-state-loss-pending)() virtual |
| void | [\_on\_state\_ready](#class-openxrextensionwrapper-private-method-on-state-ready)() virtual |
| void | [\_on\_state\_stopping](#class-openxrextensionwrapper-private-method-on-state-stopping)() virtual |
| void | [\_on\_state\_synchronized](#class-openxrextensionwrapper-private-method-on-state-synchronized)() virtual |
| void | [\_on\_state\_visible](#class-openxrextensionwrapper-private-method-on-state-visible)() virtual |
| void | [\_on\_sync\_actions](#class-openxrextensionwrapper-private-method-on-sync-actions)() virtual |
| void | [\_on\_viewport\_composition\_layer\_destroyed](#class-openxrextensionwrapper-private-method-on-viewport-composition-layer-destroyed)(layer: `const void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_android\_surface\_swapchain\_create\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-android-surface-swapchain-create-info-and-get-next-pointer)(property\_values: [Dictionary](class_dictionary.md#class-dictionary), next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_frame\_end\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-frame-end-info-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_frame\_wait\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-frame-wait-info-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_hand\_joint\_locations\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-hand-joint-locations-and-get-next-pointer)(hand\_index: [int](class_int.md#class-int), next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_instance\_create\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-instance-create-info-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_projection\_views\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-projection-views-and-get-next-pointer)(view\_index: [int](class_int.md#class-int), next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_reference\_space\_create\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-reference-space-create-info-and-get-next-pointer)(reference\_space\_type: [int](class_int.md#class-int), next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_session\_create\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-session-create-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_swapchain\_create\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-swapchain-create-info-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_system\_properties\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-system-properties-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_view\_locate\_info\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-view-locate-info-and-get-next-pointer)(next\_pointer: `void*`) virtual |
| [int](class_int.md#class-int) | [\_set\_viewport\_composition\_layer\_and\_get\_next\_pointer](#class-openxrextensionwrapper-private-method-set-viewport-composition-layer-and-get-next-pointer)(layer: `const void*`, property\_values: [Dictionary](class_dictionary.md#class-dictionary), next\_pointer: `void*`) virtual |
| [OpenXRAPIExtension](class_openxrapiextension.md#class-openxrapiextension) | [get\_openxr\_api](#class-openxrextensionwrapper-method-get-openxr-api)() |
| void | [register\_extension\_wrapper](#class-openxrextensionwrapper-method-register-extension-wrapper)() |

* * *

## Method Descriptions

[int](class_int.md#class-int) **\_get\_composition\_layer**(index: [int](class_int.md#class-int)) virtual [🔗](#class-openxrextensionwrapper-private-method-get-composition-layer)

Returns a pointer to an `XrCompositionLayerBaseHeader` struct to provide the given composition layer.

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_composition\_layer\_provider()](class_openxrapiextension.md#class-openxrapiextension-method-register-composition-layer-provider).

* * *

[int](class_int.md#class-int) **\_get\_composition\_layer\_count**() virtual [🔗](#class-openxrextensionwrapper-private-method-get-composition-layer-count)

Returns the number of composition layers this extension wrapper provides via [\_get\_composition\_layer()](#class-openxrextensionwrapper-private-method-get-composition-layer).

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_composition\_layer\_provider()](class_openxrapiextension.md#class-openxrapiextension-method-register-composition-layer-provider).

* * *

[int](class_int.md#class-int) **\_get\_composition\_layer\_order**(index: [int](class_int.md#class-int)) virtual [🔗](#class-openxrextensionwrapper-private-method-get-composition-layer-order)

Returns an integer that will be used to sort the given composition layer provided via [\_get\_composition\_layer()](#class-openxrextensionwrapper-private-method-get-composition-layer). Lower numbers will move the layer to the front of the list, and higher numbers to the end. The default projection layer has an order of `0`, so layers provided by this method should probably be above or below (but not exactly) `0`.

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_composition\_layer\_provider()](class_openxrapiextension.md#class-openxrapiextension-method-register-composition-layer-provider).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_requested\_extensions**() virtual [🔗](#class-openxrextensionwrapper-private-method-get-requested-extensions)

Returns a [Dictionary](class_dictionary.md#class-dictionary) of OpenXR extensions related to this extension. The [Dictionary](class_dictionary.md#class-dictionary) should contain the name of the extension, mapped to a `bool *` cast to an integer:

- If the `bool *` is a `nullptr` this extension is mandatory.

- If the `bool *` points to a boolean, the boolean will be updated to `true` if the extension is enabled.


* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_suggested\_tracker\_names**() virtual [🔗](#class-openxrextensionwrapper-private-method-get-suggested-tracker-names)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) of positional tracker names that are used within the extension wrapper.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_viewport\_composition\_layer\_extension\_properties**() virtual [🔗](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-properties)

Gets an array of [Dictionary](class_dictionary.md#class-dictionary) s that represent properties, just like [Object.\_get\_property\_list()](class_object.md#class-object-private-method-get-property-list), that will be added to [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer) nodes.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_viewport\_composition\_layer\_extension\_property\_defaults**() virtual [🔗](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-property-defaults)

Gets a [Dictionary](class_dictionary.md#class-dictionary) containing the default values for the properties returned by [\_get\_viewport\_composition\_layer\_extension\_properties()](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-properties).

* * *

void **\_on\_before\_instance\_created**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-before-instance-created)

Called before the OpenXR instance is created.

* * *

[bool](class_bool.md#class-bool) **\_on\_event\_polled**(event: `const void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-on-event-polled)

Called when there is an OpenXR event to process. When implementing, return `true` if the event was handled, return `false` otherwise.

* * *

void **\_on\_instance\_created**(instance: [int](class_int.md#class-int)) virtual [🔗](#class-openxrextensionwrapper-private-method-on-instance-created)

Called right after the OpenXR instance is created.

* * *

void **\_on\_instance\_destroyed**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-instance-destroyed)

Called right before the OpenXR instance is destroyed.

* * *

void **\_on\_main\_swapchains\_created**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-main-swapchains-created)

Called right after the main swapchains are (re)created.

* * *

void **\_on\_post\_draw\_viewport**(viewport: [RID](class_rid.md#class-rid)) virtual [🔗](#class-openxrextensionwrapper-private-method-on-post-draw-viewport)

Called right after the given viewport is rendered.

**Note:** The draw commands might only be queued at this point, not executed.

* * *

void **\_on\_pre\_draw\_viewport**(viewport: [RID](class_rid.md#class-rid)) virtual [🔗](#class-openxrextensionwrapper-private-method-on-pre-draw-viewport)

Called right before the given viewport is rendered.

* * *

void **\_on\_pre\_render**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-pre-render)

Called right before the XR viewports begin their rendering step.

* * *

void **\_on\_process**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-process)

Called as part of the OpenXR process handling. This happens right before general and physics processing steps of the main loop. During this step controller data is queried and made available to game logic.

* * *

void **\_on\_register\_metadata**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-register-metadata)

Allows extensions to register additional controller metadata. This function is called even when the OpenXR API is not constructed as the metadata needs to be available to the editor.

Extensions should also provide metadata regardless of whether they are supported on the host system. The controller data is used to setup action maps for users who may have access to the relevant hardware.

* * *

void **\_on\_session\_created**(session: [int](class_int.md#class-int)) virtual [🔗](#class-openxrextensionwrapper-private-method-on-session-created)

Called right after the OpenXR session is created.

* * *

void **\_on\_session\_destroyed**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-session-destroyed)

Called right before the OpenXR session is destroyed.

* * *

void **\_on\_state\_exiting**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-exiting)

Called when the OpenXR session state is changed to exiting.

* * *

void **\_on\_state\_focused**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-focused)

Called when the OpenXR session state is changed to focused. This state is the active state when the game runs.

* * *

void **\_on\_state\_idle**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-idle)

Called when the OpenXR session state is changed to idle.

* * *

void **\_on\_state\_loss\_pending**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-loss-pending)

Called when the OpenXR session state is changed to loss pending.

* * *

void **\_on\_state\_ready**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-ready)

Called when the OpenXR session state is changed to ready. This means OpenXR is ready to set up the session.

* * *

void **\_on\_state\_stopping**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-stopping)

Called when the OpenXR session state is changed to stopping.

* * *

void **\_on\_state\_synchronized**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-synchronized)

Called when the OpenXR session state is changed to synchronized. OpenXR also returns to this state when the application loses focus.

* * *

void **\_on\_state\_visible**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-state-visible)

Called when the OpenXR session state is changed to visible. This means OpenXR is now ready to receive frames.

* * *

void **\_on\_sync\_actions**() virtual [🔗](#class-openxrextensionwrapper-private-method-on-sync-actions)

Called when OpenXR has performed its action sync.

* * *

void **\_on\_viewport\_composition\_layer\_destroyed**(layer: `const void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-on-viewport-composition-layer-destroyed)

Called when a composition layer created via [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer) is destroyed.

`layer` is a pointer to an `XrCompositionLayerBaseHeader` struct.

* * *

[int](class_int.md#class-int) **\_set\_android\_surface\_swapchain\_create\_info\_and\_get\_next\_pointer**(property\_values: [Dictionary](class_dictionary.md#class-dictionary), next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-android-surface-swapchain-create-info-and-get-next-pointer)

Adds additional data structures to Android surface swapchains created by [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer).

`property_values` contains the values of the properties returned by [\_get\_viewport\_composition\_layer\_extension\_properties()](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-properties).

* * *

[int](class_int.md#class-int) **\_set\_frame\_end\_info\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-frame-end-info-and-get-next-pointer)

Adds additional data structures to `XrFrameEndInfo`.

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_frame\_info\_extension()](class_openxrapiextension.md#class-openxrapiextension-method-register-frame-info-extension).

* * *

[int](class_int.md#class-int) **\_set\_frame\_wait\_info\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-frame-wait-info-and-get-next-pointer)

Adds additional data structures to `XrFrameWaitInfo`.

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_frame\_info\_extension()](class_openxrapiextension.md#class-openxrapiextension-method-register-frame-info-extension).

* * *

[int](class_int.md#class-int) **\_set\_hand\_joint\_locations\_and\_get\_next\_pointer**(hand\_index: [int](class_int.md#class-int), next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-hand-joint-locations-and-get-next-pointer)

Adds additional data structures when each hand tracker is created.

* * *

[int](class_int.md#class-int) **\_set\_instance\_create\_info\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-instance-create-info-and-get-next-pointer)

Adds additional data structures when the OpenXR instance is created.

* * *

[int](class_int.md#class-int) **\_set\_projection\_views\_and\_get\_next\_pointer**(view\_index: [int](class_int.md#class-int), next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-projection-views-and-get-next-pointer)

Adds additional data structures to the projection view of the given `view_index`.

* * *

[int](class_int.md#class-int) **\_set\_reference\_space\_create\_info\_and\_get\_next\_pointer**(reference\_space\_type: [int](class_int.md#class-int), next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-reference-space-create-info-and-get-next-pointer)

Adds additional data structures to `XrReferenceSpaceCreateInfo`.

* * *

[int](class_int.md#class-int) **\_set\_session\_create\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-session-create-and-get-next-pointer)

Adds additional data structures when the OpenXR session is created.

* * *

[int](class_int.md#class-int) **\_set\_swapchain\_create\_info\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-swapchain-create-info-and-get-next-pointer)

Adds additional data structures when creating OpenXR swapchains.

* * *

[int](class_int.md#class-int) **\_set\_system\_properties\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-system-properties-and-get-next-pointer)

Adds additional data structures when querying OpenXR system abilities.

* * *

[int](class_int.md#class-int) **\_set\_view\_locate\_info\_and\_get\_next\_pointer**(next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-view-locate-info-and-get-next-pointer)

Adds additional data structures to `XrViewLocateInfo`.

This will only be called if the extension previously registered itself with [OpenXRAPIExtension.register\_frame\_info\_extension()](class_openxrapiextension.md#class-openxrapiextension-method-register-frame-info-extension).

* * *

[int](class_int.md#class-int) **\_set\_viewport\_composition\_layer\_and\_get\_next\_pointer**(layer: `const void*`, property\_values: [Dictionary](class_dictionary.md#class-dictionary), next\_pointer: `void*`) virtual [🔗](#class-openxrextensionwrapper-private-method-set-viewport-composition-layer-and-get-next-pointer)

Adds additional data structures to composition layers created by [OpenXRCompositionLayer](class_openxrcompositionlayer.md#class-openxrcompositionlayer).

`property_values` contains the values of the properties returned by [\_get\_viewport\_composition\_layer\_extension\_properties()](#class-openxrextensionwrapper-private-method-get-viewport-composition-layer-extension-properties).

`layer` is a pointer to an `XrCompositionLayerBaseHeader` struct.

* * *

[OpenXRAPIExtension](class_openxrapiextension.md#class-openxrapiextension) **get\_openxr\_api**() [🔗](#class-openxrextensionwrapper-method-get-openxr-api)

Returns the created [OpenXRAPIExtension](class_openxrapiextension.md#class-openxrapiextension), which can be used to access the OpenXR API.

* * *

void **register\_extension\_wrapper**() [🔗](#class-openxrextensionwrapper-method-register-extension-wrapper)

Registers the extension. This should happen at core module initialization level.

[Previous](class_openxrapiextension.md "OpenXRAPIExtension") [Next](class_openxrextensionwrapperextension.md "OpenXRExtensionWrapperExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrapiextension.md "OpenXRAPIExtension") [Next](class_openxrextensionwrapperextension.md "OpenXRExtensionWrapperExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).