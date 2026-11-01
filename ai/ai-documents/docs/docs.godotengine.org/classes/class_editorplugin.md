---
title: EditorPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorplugin.html
crawled_at: "2026-08-13T10:20:02+12:00"
content_hash: b53bc020645d061b5973bc0e0d21216566740887fe877adba3efd64b59aba08b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorPlugin

* * *

# EditorPlugin

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

**Inherited By:** [GridMapEditorPlugin](class_gridmapeditorplugin.md#class-gridmapeditorplugin)

Used by the editor to extend its functionality.

## Description

Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also [EditorScript](class_editorscript.md#class-editorscript) to add functions to the editor.

**Note:** Some names in this class contain "left" or "right" (e.g. [DOCK\_SLOT\_LEFT\_UL](#class-editorplugin-constant-dock-slot-left-ul)). These APIs assume left-to-right layout, and would be backwards when using right-to-left layout. These names are kept for compatibility reasons.

## Tutorials

- [Editor plugins documentation index](../tutorials/plugins/editor/index.md)


## Methods

|     |     |
| --- | --- |
| void | [\_apply\_changes](#class-editorplugin-private-method-apply-changes)() virtual |
| [bool](class_bool.md#class-bool) | [\_build](#class-editorplugin-private-method-build)() virtual |
| void | [\_clear](#class-editorplugin-private-method-clear)() virtual |
| void | [\_disable\_plugin](#class-editorplugin-private-method-disable-plugin)() virtual |
| void | [\_edit](#class-editorplugin-private-method-edit)(object: [Object](class_object.md#class-object)) virtual |
| void | [\_enable\_plugin](#class-editorplugin-private-method-enable-plugin)() virtual |
| void | [\_forward\_3d\_draw\_over\_viewport](#class-editorplugin-private-method-forward-3d-draw-over-viewport)(viewport\_control: [Control](class_control.md#class-control)) virtual |
| void | [\_forward\_3d\_force\_draw\_over\_viewport](#class-editorplugin-private-method-forward-3d-force-draw-over-viewport)(viewport\_control: [Control](class_control.md#class-control)) virtual |
| [int](class_int.md#class-int) | [\_forward\_3d\_gui\_input](#class-editorplugin-private-method-forward-3d-gui-input)(viewport\_camera: [Camera3D](class_camera3d.md#class-camera3d), event: [InputEvent](class_inputevent.md#class-inputevent)) virtual |
| void | [\_forward\_canvas\_draw\_over\_viewport](#class-editorplugin-private-method-forward-canvas-draw-over-viewport)(viewport\_control: [Control](class_control.md#class-control)) virtual |
| void | [\_forward\_canvas\_force\_draw\_over\_viewport](#class-editorplugin-private-method-forward-canvas-force-draw-over-viewport)(viewport\_control: [Control](class_control.md#class-control)) virtual |
| [bool](class_bool.md#class-bool) | [\_forward\_canvas\_gui\_input](#class-editorplugin-private-method-forward-canvas-gui-input)(event: [InputEvent](class_inputevent.md#class-inputevent)) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_breakpoints](#class-editorplugin-private-method-get-breakpoints)() virtualconst |
| [Texture2D](class_texture2d.md#class-texture2d) | [\_get\_plugin\_icon](#class-editorplugin-private-method-get-plugin-icon)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_plugin\_name](#class-editorplugin-private-method-get-plugin-name)() virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_state](#class-editorplugin-private-method-get-state)() virtualconst |
| [String](class_string.md#class-string) | [\_get\_unsaved\_status](#class-editorplugin-private-method-get-unsaved-status)(for\_scene: [String](class_string.md#class-string)) virtualconst |
| void | [\_get\_window\_layout](#class-editorplugin-private-method-get-window-layout)(configuration: [ConfigFile](class_configfile.md#class-configfile)) virtual |
| [bool](class_bool.md#class-bool) | [\_handles](#class-editorplugin-private-method-handles)(object: [Object](class_object.md#class-object)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_has\_main\_screen](#class-editorplugin-private-method-has-main-screen)() virtualconst |
| void | [\_make\_visible](#class-editorplugin-private-method-make-visible)(visible: [bool](class_bool.md#class-bool)) virtual |
| void | [\_save\_external\_data](#class-editorplugin-private-method-save-external-data)() virtual |
| void | [\_set\_state](#class-editorplugin-private-method-set-state)(state: [Dictionary](class_dictionary.md#class-dictionary)) virtual |
| void | [\_set\_window\_layout](#class-editorplugin-private-method-set-window-layout)(configuration: [ConfigFile](class_configfile.md#class-configfile)) virtual |
| void | [add\_autoload\_singleton](#class-editorplugin-method-add-autoload-singleton)(name: [String](class_string.md#class-string), path: [String](class_string.md#class-string)) |
| void | [add\_context\_menu\_plugin](#class-editorplugin-method-add-context-menu-plugin)(slot: [ContextMenuSlot](class_editorcontextmenuplugin.md#enum-editorcontextmenuplugin-contextmenuslot), plugin: [EditorContextMenuPlugin](class_editorcontextmenuplugin.md#class-editorcontextmenuplugin)) |
| [Button](class_button.md#class-button) | [add\_control\_to\_bottom\_panel](#class-editorplugin-method-add-control-to-bottom-panel)(control: [Control](class_control.md#class-control), title: [String](class_string.md#class-string), shortcut: [Shortcut](class_shortcut.md#class-shortcut) = null) |
| void | [add\_control\_to\_container](#class-editorplugin-method-add-control-to-container)(container: [CustomControlContainer](#enum-editorplugin-customcontrolcontainer), control: [Control](class_control.md#class-control)) |
| void | [add\_control\_to\_dock](#class-editorplugin-method-add-control-to-dock)(slot: [DockSlot](#enum-editorplugin-dockslot), control: [Control](class_control.md#class-control), shortcut: [Shortcut](class_shortcut.md#class-shortcut) = null) |
| void | [add\_custom\_type](#class-editorplugin-method-add-custom-type)(type: [String](class_string.md#class-string), base: [String](class_string.md#class-string), script: [Script](class_script.md#class-script), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [add\_debugger\_plugin](#class-editorplugin-method-add-debugger-plugin)(script: [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin)) |
| void | [add\_export\_platform](#class-editorplugin-method-add-export-platform)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) |
| void | [add\_export\_plugin](#class-editorplugin-method-add-export-plugin)(plugin: [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin)) |
| void | [add\_import\_plugin](#class-editorplugin-method-add-import-plugin)(importer: [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin), first\_priority: [bool](class_bool.md#class-bool) = false) |
| void | [add\_inspector\_plugin](#class-editorplugin-method-add-inspector-plugin)(plugin: [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin)) |
| void | [add\_node\_3d\_gizmo\_plugin](#class-editorplugin-method-add-node-3d-gizmo-plugin)(plugin: [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin)) |
| void | [add\_resource\_conversion\_plugin](#class-editorplugin-method-add-resource-conversion-plugin)(plugin: [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin)) |
| void | [add\_scene\_format\_importer\_plugin](#class-editorplugin-method-add-scene-format-importer-plugin)(scene\_format\_importer: [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter), first\_priority: [bool](class_bool.md#class-bool) = false) |
| void | [add\_scene\_post\_import\_plugin](#class-editorplugin-method-add-scene-post-import-plugin)(scene\_import\_plugin: [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin), first\_priority: [bool](class_bool.md#class-bool) = false) |
| void | [add\_tool\_menu\_item](#class-editorplugin-method-add-tool-menu-item)(name: [String](class_string.md#class-string), callable: [Callable](class_callable.md#class-callable)) |
| void | [add\_tool\_submenu\_item](#class-editorplugin-method-add-tool-submenu-item)(name: [String](class_string.md#class-string), submenu: [PopupMenu](class_popupmenu.md#class-popupmenu)) |
| void | [add\_translation\_parser\_plugin](#class-editorplugin-method-add-translation-parser-plugin)(parser: [EditorTranslationParserPlugin](class_editortranslationparserplugin.md#class-editortranslationparserplugin)) |
| void | [add\_undo\_redo\_inspector\_hook\_callback](#class-editorplugin-method-add-undo-redo-inspector-hook-callback)(callable: [Callable](class_callable.md#class-callable)) |
| [EditorInterface](class_editorinterface.md#class-editorinterface) | [get\_editor\_interface](#class-editorplugin-method-get-editor-interface)() |
| [PopupMenu](class_popupmenu.md#class-popupmenu) | [get\_export\_as\_menu](#class-editorplugin-method-get-export-as-menu)() |
| [String](class_string.md#class-string) | [get\_plugin\_version](#class-editorplugin-method-get-plugin-version)() const |
| [ScriptCreateDialog](class_scriptcreatedialog.md#class-scriptcreatedialog) | [get\_script\_create\_dialog](#class-editorplugin-method-get-script-create-dialog)() |
| [EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager) | [get\_undo\_redo](#class-editorplugin-method-get-undo-redo)() |
| void | [hide\_bottom\_panel](#class-editorplugin-method-hide-bottom-panel)() |
| void | [make\_bottom\_panel\_item\_visible](#class-editorplugin-method-make-bottom-panel-item-visible)(item: [Control](class_control.md#class-control)) |
| void | [queue\_save\_layout](#class-editorplugin-method-queue-save-layout)() |
| void | [remove\_autoload\_singleton](#class-editorplugin-method-remove-autoload-singleton)(name: [String](class_string.md#class-string)) |
| void | [remove\_context\_menu\_plugin](#class-editorplugin-method-remove-context-menu-plugin)(plugin: [EditorContextMenuPlugin](class_editorcontextmenuplugin.md#class-editorcontextmenuplugin)) |
| void | [remove\_control\_from\_bottom\_panel](#class-editorplugin-method-remove-control-from-bottom-panel)(control: [Control](class_control.md#class-control)) |
| void | [remove\_control\_from\_container](#class-editorplugin-method-remove-control-from-container)(container: [CustomControlContainer](#enum-editorplugin-customcontrolcontainer), control: [Control](class_control.md#class-control)) |
| void | [remove\_control\_from\_docks](#class-editorplugin-method-remove-control-from-docks)(control: [Control](class_control.md#class-control)) |
| void | [remove\_custom\_type](#class-editorplugin-method-remove-custom-type)(type: [String](class_string.md#class-string)) |
| void | [remove\_debugger\_plugin](#class-editorplugin-method-remove-debugger-plugin)(script: [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin)) |
| void | [remove\_export\_platform](#class-editorplugin-method-remove-export-platform)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) |
| void | [remove\_export\_plugin](#class-editorplugin-method-remove-export-plugin)(plugin: [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin)) |
| void | [remove\_import\_plugin](#class-editorplugin-method-remove-import-plugin)(importer: [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin)) |
| void | [remove\_inspector\_plugin](#class-editorplugin-method-remove-inspector-plugin)(plugin: [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin)) |
| void | [remove\_node\_3d\_gizmo\_plugin](#class-editorplugin-method-remove-node-3d-gizmo-plugin)(plugin: [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin)) |
| void | [remove\_resource\_conversion\_plugin](#class-editorplugin-method-remove-resource-conversion-plugin)(plugin: [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin)) |
| void | [remove\_scene\_format\_importer\_plugin](#class-editorplugin-method-remove-scene-format-importer-plugin)(scene\_format\_importer: [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter)) |
| void | [remove\_scene\_post\_import\_plugin](#class-editorplugin-method-remove-scene-post-import-plugin)(scene\_import\_plugin: [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin)) |
| void | [remove\_tool\_menu\_item](#class-editorplugin-method-remove-tool-menu-item)(name: [String](class_string.md#class-string)) |
| void | [remove\_translation\_parser\_plugin](#class-editorplugin-method-remove-translation-parser-plugin)(parser: [EditorTranslationParserPlugin](class_editortranslationparserplugin.md#class-editortranslationparserplugin)) |
| void | [remove\_undo\_redo\_inspector\_hook\_callback](#class-editorplugin-method-remove-undo-redo-inspector-hook-callback)(callable: [Callable](class_callable.md#class-callable)) |
| void | [set\_dock\_tab\_icon](#class-editorplugin-method-set-dock-tab-icon)(control: [Control](class_control.md#class-control), icon: [Texture2D](class_texture2d.md#class-texture2d)) |
| void | [set\_force\_draw\_over\_forwarding\_enabled](#class-editorplugin-method-set-force-draw-over-forwarding-enabled)() |
| void | [set\_input\_event\_forwarding\_always\_enabled](#class-editorplugin-method-set-input-event-forwarding-always-enabled)() |
| [int](class_int.md#class-int) | [update\_overlays](#class-editorplugin-method-update-overlays)() const |

* * *

## Signals

**main\_screen\_changed**(screen\_name: [String](class_string.md#class-string)) [🔗](#class-editorplugin-signal-main-screen-changed)

Emitted when user changes the workspace ( **2D**, **3D**, **Script**, **Game**, **AssetLib**). Also works with custom screens defined by plugins.

* * *

**project\_settings\_changed**() [🔗](#class-editorplugin-signal-project-settings-changed)

**Deprecated:** Use [ProjectSettings.settings\_changed](class_projectsettings.md#class-projectsettings-signal-settings-changed) instead.

Emitted when any project setting has changed.

* * *

**resource\_saved**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-editorplugin-signal-resource-saved)

Emitted when the given `resource` was saved on disc. See also [scene\_saved](#class-editorplugin-signal-scene-saved).

* * *

**scene\_changed**(scene\_root: [Node](class_node.md#class-node)) [🔗](#class-editorplugin-signal-scene-changed)

Emitted when the scene is changed in the editor. The argument will return the root node of the scene that has just become active. If this scene is new and empty, the argument will be `null`.

* * *

**scene\_closed**(filepath: [String](class_string.md#class-string)) [🔗](#class-editorplugin-signal-scene-closed)

Emitted when user closes a scene. The argument is a file path to the closed scene.

* * *

**scene\_saved**(filepath: [String](class_string.md#class-string)) [🔗](#class-editorplugin-signal-scene-saved)

Emitted when a scene was saved on disc. The argument is a file path to the saved scene. See also [resource\_saved](#class-editorplugin-signal-resource-saved).

* * *

## Enumerations

enum **CustomControlContainer**: [🔗](#enum-editorplugin-customcontrolcontainer)

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_TOOLBAR** = `0`

Main editor toolbar, next to play buttons.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_SPATIAL\_EDITOR\_MENU** = `1`

The toolbar that appears when 3D editor is active.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_SPATIAL\_EDITOR\_SIDE\_LEFT** = `2`

Left sidebar of the 3D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_SPATIAL\_EDITOR\_SIDE\_RIGHT** = `3`

Right sidebar of the 3D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_SPATIAL\_EDITOR\_BOTTOM** = `4`

Bottom panel of the 3D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_CANVAS\_EDITOR\_MENU** = `5`

The toolbar that appears when 2D editor is active.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_CANVAS\_EDITOR\_SIDE\_LEFT** = `6`

Left sidebar of the 2D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_CANVAS\_EDITOR\_SIDE\_RIGHT** = `7`

Right sidebar of the 2D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_CANVAS\_EDITOR\_BOTTOM** = `8`

Bottom panel of the 2D editor.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_INSPECTOR\_BOTTOM** = `9`

Bottom section of the inspector.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_PROJECT\_SETTING\_TAB\_LEFT** = `10`

Tab of Project Settings dialog, to the left of other tabs.

[CustomControlContainer](#enum-editorplugin-customcontrolcontainer) **CONTAINER\_PROJECT\_SETTING\_TAB\_RIGHT** = `11`

Tab of Project Settings dialog, to the right of other tabs.

* * *

enum **DockSlot**: [🔗](#enum-editorplugin-dockslot)

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_LEFT\_UL** = `0`

Dock slot, left side, upper-left (empty in default layout).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_LEFT\_BL** = `1`

Dock slot, left side, bottom-left (empty in default layout).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_LEFT\_UR** = `2`

Dock slot, left side, upper-right (in default layout includes Scene and Import docks).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_LEFT\_BR** = `3`

Dock slot, left side, bottom-right (in default layout includes FileSystem dock).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_RIGHT\_UL** = `4`

Dock slot, right side, upper-left (in default layout includes Inspector, Node, and History docks).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_RIGHT\_BL** = `5`

Dock slot, right side, bottom-left (empty in default layout).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_RIGHT\_UR** = `6`

Dock slot, right side, upper-right (empty in default layout).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_RIGHT\_BR** = `7`

Dock slot, right side, bottom-right (empty in default layout).

[DockSlot](#enum-editorplugin-dockslot) **DOCK\_SLOT\_MAX** = `8`

Represents the size of the [DockSlot](#enum-editorplugin-dockslot) enum.

* * *

enum **AfterGUIInput**: [🔗](#enum-editorplugin-afterguiinput)

[AfterGUIInput](#enum-editorplugin-afterguiinput) **AFTER\_GUI\_INPUT\_PASS** = `0`

Forwards the [InputEvent](class_inputevent.md#class-inputevent) to other EditorPlugins.

[AfterGUIInput](#enum-editorplugin-afterguiinput) **AFTER\_GUI\_INPUT\_STOP** = `1`

Prevents the [InputEvent](class_inputevent.md#class-inputevent) from reaching other Editor classes.

[AfterGUIInput](#enum-editorplugin-afterguiinput) **AFTER\_GUI\_INPUT\_CUSTOM** = `2`

Pass the [InputEvent](class_inputevent.md#class-inputevent) to other editor plugins except the main [Node3D](class_node3d.md#class-node3d) one. This can be used to prevent node selection changes and work with sub-gizmos instead.

* * *

## Method Descriptions

void **\_apply\_changes**() virtual [🔗](#class-editorplugin-private-method-apply-changes)

This method is called when the editor is about to save the project, switch to another tab, etc. It asks the plugin to apply any pending state changes to ensure consistency.

This is used, for example, in shader editors to let the plugin know that it must apply the shader code being written by the user to the object.

* * *

[bool](class_bool.md#class-bool) **\_build**() virtual [🔗](#class-editorplugin-private-method-build)

This method is called when the editor is about to run the project. The plugin can then perform required operations before the project runs.

This method must return a boolean. If this method returns `false`, the project will not run. The run is aborted immediately, so this also prevents all other plugins' [\_build()](#class-editorplugin-private-method-build) methods from running.

* * *

void **\_clear**() virtual [🔗](#class-editorplugin-private-method-clear)

Clear all the state and reset the object being edited to zero. This ensures your plugin does not keep editing a currently existing node, or a node from the wrong scene.

* * *

void **\_disable\_plugin**() virtual [🔗](#class-editorplugin-private-method-disable-plugin)

Called by the engine when the user disables the **EditorPlugin** in the Plugin tab of the project settings window.

* * *

void **\_edit**(object: [Object](class_object.md#class-object)) virtual [🔗](#class-editorplugin-private-method-edit)

This function is used for plugins that edit specific object types (nodes or resources). It requests the editor to edit the given object.

`object` can be `null` if the plugin was editing an object, but there is no longer any selected object handled by this plugin. It can be used to cleanup editing state.

* * *

void **\_enable\_plugin**() virtual [🔗](#class-editorplugin-private-method-enable-plugin)

Called by the engine when the user enables the **EditorPlugin** in the Plugin tab of the project settings window.

* * *

void **\_forward\_3d\_draw\_over\_viewport**(viewport\_control: [Control](class_control.md#class-control)) virtual [🔗](#class-editorplugin-private-method-forward-3d-draw-over-viewport)

Called by the engine when the 3D editor's viewport is updated. `viewport_control` is an overlay on top of the viewport and it can be used for drawing. You can update the viewport manually by calling [update\_overlays()](#class-editorplugin-method-update-overlays).

GDScriptC#

```
func _forward_3d_draw_over_viewport(overlay):
    # Draw a circle at the cursor's position.
    overlay.draw_circle(overlay.get_local_mouse_position(), 64, Color.WHITE)

func _forward_3d_gui_input(camera, event):
    if event is InputEventMouseMotion:
        # Redraw the viewport when the cursor is moved.
        update_overlays()
        return EditorPlugin.AFTER_GUI_INPUT_STOP
    return EditorPlugin.AFTER_GUI_INPUT_PASS

```

```
public override void _Forward3DDrawOverViewport(Control viewportControl)
{
    // Draw a circle at the cursor's position.
    viewportControl.DrawCircle(viewportControl.GetLocalMousePosition(), 64, Colors.White);
}

public override EditorPlugin.AfterGuiInput _Forward3DGuiInput(Camera3D viewportCamera, InputEvent @event)
{
    if (@event is InputEventMouseMotion)
    {
        // Redraw the viewport when the cursor is moved.
        UpdateOverlays();
        return EditorPlugin.AfterGuiInput.Stop;
    }
    return EditorPlugin.AfterGuiInput.Pass;
}

```

* * *

void **\_forward\_3d\_force\_draw\_over\_viewport**(viewport\_control: [Control](class_control.md#class-control)) virtual [🔗](#class-editorplugin-private-method-forward-3d-force-draw-over-viewport)

This method is the same as [\_forward\_3d\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-3d-draw-over-viewport), except it draws on top of everything. Useful when you need an extra layer that shows over anything else.

You need to enable calling of this method by using [set\_force\_draw\_over\_forwarding\_enabled()](#class-editorplugin-method-set-force-draw-over-forwarding-enabled).

* * *

[int](class_int.md#class-int) **\_forward\_3d\_gui\_input**(viewport\_camera: [Camera3D](class_camera3d.md#class-camera3d), event: [InputEvent](class_inputevent.md#class-inputevent)) virtual [🔗](#class-editorplugin-private-method-forward-3d-gui-input)

Called when there is a root node in the current edited scene, [\_handles()](#class-editorplugin-private-method-handles) is implemented, and an [InputEvent](class_inputevent.md#class-inputevent) happens in the 3D viewport. The return value decides whether the [InputEvent](class_inputevent.md#class-inputevent) is consumed or forwarded to other **EditorPlugin** s. See [AfterGUIInput](#enum-editorplugin-afterguiinput) for options.

GDScriptC#

```
# Prevents the InputEvent from reaching other Editor classes.
func _forward_3d_gui_input(camera, event):
    return EditorPlugin.AFTER_GUI_INPUT_STOP

```

```
// Prevents the InputEvent from reaching other Editor classes.
public override EditorPlugin.AfterGuiInput _Forward3DGuiInput(Camera3D camera, InputEvent @event)
{
    return EditorPlugin.AfterGuiInput.Stop;
}

```

This method must return [AFTER\_GUI\_INPUT\_PASS](#class-editorplugin-constant-after-gui-input-pass) in order to forward the [InputEvent](class_inputevent.md#class-inputevent) to other Editor classes.

GDScriptC#

```
# Consumes InputEventMouseMotion and forwards other InputEvent types.
func _forward_3d_gui_input(camera, event):
    return EditorPlugin.AFTER_GUI_INPUT_STOP if event is InputEventMouseMotion else EditorPlugin.AFTER_GUI_INPUT_PASS

```

```
// Consumes InputEventMouseMotion and forwards other InputEvent types.
public override EditorPlugin.AfterGuiInput _Forward3DGuiInput(Camera3D camera, InputEvent @event)
{
    return @event is InputEventMouseMotion ? EditorPlugin.AfterGuiInput.Stop : EditorPlugin.AfterGuiInput.Pass;
}

```

* * *

void **\_forward\_canvas\_draw\_over\_viewport**(viewport\_control: [Control](class_control.md#class-control)) virtual [🔗](#class-editorplugin-private-method-forward-canvas-draw-over-viewport)

Called by the engine when the 2D editor's viewport is updated. `viewport_control` is an overlay on top of the viewport and it can be used for drawing. You can update the viewport manually by calling [update\_overlays()](#class-editorplugin-method-update-overlays).

GDScriptC#

```
func _forward_canvas_draw_over_viewport(overlay):
    # Draw a circle at the cursor's position.
    overlay.draw_circle(overlay.get_local_mouse_position(), 64, Color.WHITE)

func _forward_canvas_gui_input(event):
    if event is InputEventMouseMotion:
        # Redraw the viewport when the cursor is moved.
        update_overlays()
        return true
    return false

```

```
public override void _ForwardCanvasDrawOverViewport(Control viewportControl)
{
    // Draw a circle at the cursor's position.
    viewportControl.DrawCircle(viewportControl.GetLocalMousePosition(), 64, Colors.White);
}

public override bool _ForwardCanvasGuiInput(InputEvent @event)
{
    if (@event is InputEventMouseMotion)
    {
        // Redraw the viewport when the cursor is moved.
        UpdateOverlays();
        return true;
    }
    return false;
}

```

* * *

void **\_forward\_canvas\_force\_draw\_over\_viewport**(viewport\_control: [Control](class_control.md#class-control)) virtual [🔗](#class-editorplugin-private-method-forward-canvas-force-draw-over-viewport)

This method is the same as [\_forward\_canvas\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-canvas-draw-over-viewport), except it draws on top of everything. Useful when you need an extra layer that shows over anything else.

You need to enable calling of this method by using [set\_force\_draw\_over\_forwarding\_enabled()](#class-editorplugin-method-set-force-draw-over-forwarding-enabled).

* * *

[bool](class_bool.md#class-bool) **\_forward\_canvas\_gui\_input**(event: [InputEvent](class_inputevent.md#class-inputevent)) virtual [🔗](#class-editorplugin-private-method-forward-canvas-gui-input)

Called when there is a root node in the current edited scene, [\_handles()](#class-editorplugin-private-method-handles) is implemented, and an [InputEvent](class_inputevent.md#class-inputevent) happens in the 2D viewport. If this method returns `true`, `event` is intercepted by this **EditorPlugin**, otherwise `event` is forwarded to other Editor classes.

GDScriptC#

```
# Prevents the InputEvent from reaching other Editor classes.
func _forward_canvas_gui_input(event):
    return true

```

```
// Prevents the InputEvent from reaching other Editor classes.
public override bool ForwardCanvasGuiInput(InputEvent @event)
{
    return true;
}

```

This method must return `false` in order to forward the [InputEvent](class_inputevent.md#class-inputevent) to other Editor classes.

GDScriptC#

```
# Consumes InputEventMouseMotion and forwards other InputEvent types.
func _forward_canvas_gui_input(event):
    if (event is InputEventMouseMotion):
        return true
    return false

```

```
// Consumes InputEventMouseMotion and forwards other InputEvent types.
public override bool _ForwardCanvasGuiInput(InputEvent @event)
{
    if (@event is InputEventMouseMotion)
    {
        return true;
    }
    return false;
}

```

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_breakpoints**() virtualconst [🔗](#class-editorplugin-private-method-get-breakpoints)

This is for editors that edit script-based objects. You can return a list of breakpoints in the format ( `script:line`), for example: `res://path_to_script.gd:25`.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **\_get\_plugin\_icon**() virtualconst [🔗](#class-editorplugin-private-method-get-plugin-icon)

Override this method in your plugin to return a [Texture2D](class_texture2d.md#class-texture2d) in order to give it an icon.

For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", "Game", and "AssetLib" buttons.

Ideally, the plugin icon should be white with a transparent background and 16×16 pixels in size.

GDScriptC#

```
func _get_plugin_icon():
    # You can use a custom icon:
    return preload("res://addons/my_plugin/my_plugin_icon.svg")
    # Or use a built-in icon:
    return EditorInterface.get_editor_theme().get_icon("Node", "EditorIcons")

```

```
public override Texture2D _GetPluginIcon()
{
    // You can use a custom icon:
    return ResourceLoader.Load<Texture2D>("res://addons/my_plugin/my_plugin_icon.svg");
    // Or use a built-in icon:
    return EditorInterface.Singleton.GetEditorTheme().GetIcon("Node", "EditorIcons");
}

```

* * *

[String](class_string.md#class-string) **\_get\_plugin\_name**() virtualconst [🔗](#class-editorplugin-private-method-get-plugin-name)

Override this method in your plugin to provide the name of the plugin when displayed in the Godot editor.

For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", "Game", and "AssetLib" buttons.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_state**() virtualconst [🔗](#class-editorplugin-private-method-get-state)

Override this method to provide a state data you want to be saved, like view position, grid settings, folding, etc. This is used when saving the scene (so state is kept when opening it again) and for switching tabs (so state can be restored when the tab returns). This data is automatically saved for each scene in an `editstate` file in the editor metadata folder. If you want to store global (scene-independent) editor data for your plugin, you can use [\_get\_window\_layout()](#class-editorplugin-private-method-get-window-layout) instead.

Use [\_set\_state()](#class-editorplugin-private-method-set-state) to restore your saved state.

**Note:** This method should not be used to save important settings that should persist with the project.

**Note:** You must implement [\_get\_plugin\_name()](#class-editorplugin-private-method-get-plugin-name) for the state to be stored and restored correctly.

```
func _get_state():
    var state = { "zoom": zoom, "preferred_color": my_color }
    return state

```

* * *

[String](class_string.md#class-string) **\_get\_unsaved\_status**(for\_scene: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorplugin-private-method-get-unsaved-status)

Override this method to provide a custom message that lists unsaved changes. The editor will call this method when exiting or when closing a scene, and display the returned string in a confirmation dialog. Return empty string if the plugin has no unsaved changes.

When closing a scene, `for_scene` is the path to the scene being closed. You can use it to handle built-in resources in that scene.

If the user confirms saving, [\_save\_external\_data()](#class-editorplugin-private-method-save-external-data) will be called, before closing the editor.

```
func _get_unsaved_status(for_scene):
    if not unsaved:
        return ""

    if for_scene.is_empty():
        return "Save changes in MyCustomPlugin before closing?"
    else:
        return "Scene %s has changes from MyCustomPlugin. Save before closing?" % for_scene.get_file()

func _save_external_data():
    unsaved = false

```

If the plugin has no scene-specific changes, you can ignore the calls when closing scenes:

```
func _get_unsaved_status(for_scene):
    if not for_scene.is_empty():
        return ""

```

* * *

void **\_get\_window\_layout**(configuration: [ConfigFile](class_configfile.md#class-configfile)) virtual [🔗](#class-editorplugin-private-method-get-window-layout)

Override this method to provide the GUI layout of the plugin or any other data you want to be stored. This is used to save the project's editor layout when [queue\_save\_layout()](#class-editorplugin-method-queue-save-layout) is called or the editor layout was changed (for example changing the position of a dock). The data is stored in the `editor_layout.cfg` file in the editor metadata directory.

Use [\_set\_window\_layout()](#class-editorplugin-private-method-set-window-layout) to restore your saved layout.

```
func _get_window_layout(configuration):
    configuration.set_value("MyPlugin", "window_position", $Window.position)
    configuration.set_value("MyPlugin", "icon_color", $Icon.modulate)

```

* * *

[bool](class_bool.md#class-bool) **\_handles**(object: [Object](class_object.md#class-object)) virtualconst [🔗](#class-editorplugin-private-method-handles)

Implement this function if your plugin edits a specific type of object (Resource or Node). If you return `true`, then you will get the functions [\_edit()](#class-editorplugin-private-method-edit) and [\_make\_visible()](#class-editorplugin-private-method-make-visible) called when the editor requests them. If you have declared the methods [\_forward\_canvas\_gui\_input()](#class-editorplugin-private-method-forward-canvas-gui-input) and [\_forward\_3d\_gui\_input()](#class-editorplugin-private-method-forward-3d-gui-input) these will be called too.

**Note:** Each plugin should handle only one type of objects at a time. If a plugin handles more types of objects and they are edited at the same time, it will result in errors.

* * *

[bool](class_bool.md#class-bool) **\_has\_main\_screen**() virtualconst [🔗](#class-editorplugin-private-method-has-main-screen)

Returns `true` if this is a main screen editor plugin (it goes in the workspace selector together with **2D**, **3D**, **Script**, **Game**, and **AssetLib**).

When the plugin's workspace is selected, other main screen plugins will be hidden, but your plugin will not appear automatically. It needs to be added as a child of [EditorInterface.get\_editor\_main\_screen()](class_editorinterface.md#class-editorinterface-method-get-editor-main-screen) and made visible inside [\_make\_visible()](#class-editorplugin-private-method-make-visible).

Use [\_get\_plugin\_name()](#class-editorplugin-private-method-get-plugin-name) and [\_get\_plugin\_icon()](#class-editorplugin-private-method-get-plugin-icon) to customize the plugin button's appearance.

```
var plugin_control

func _enter_tree():
    plugin_control = preload("my_plugin_control.tscn").instantiate()
    EditorInterface.get_editor_main_screen().add_child(plugin_control)
    plugin_control.hide()

func _has_main_screen():
    return true

func _make_visible(visible):
    plugin_control.visible = visible

func _get_plugin_name():
    return "My Super Cool Plugin 3000"

func _get_plugin_icon():
    return EditorInterface.get_editor_theme().get_icon("Node", "EditorIcons")

```

* * *

void **\_make\_visible**(visible: [bool](class_bool.md#class-bool)) virtual [🔗](#class-editorplugin-private-method-make-visible)

This function will be called when the editor is requested to become visible. It is used for plugins that edit a specific object type.

Remember that you have to manage the visibility of all your editor controls manually.

* * *

void **\_save\_external\_data**() virtual [🔗](#class-editorplugin-private-method-save-external-data)

This method is called after the editor saves the project or when it's closed. It asks the plugin to save edited external scenes/resources.

* * *

void **\_set\_state**(state: [Dictionary](class_dictionary.md#class-dictionary)) virtual [🔗](#class-editorplugin-private-method-set-state)

Restore the state saved by [\_get\_state()](#class-editorplugin-private-method-get-state). This method is called when the current scene tab is changed in the editor.

**Note:** Your plugin must implement [\_get\_plugin\_name()](#class-editorplugin-private-method-get-plugin-name), otherwise it will not be recognized and this method will not be called.

```
func _set_state(data):
    zoom = data.get("zoom", 1.0)
    preferred_color = data.get("my_color", Color.WHITE)

```

* * *

void **\_set\_window\_layout**(configuration: [ConfigFile](class_configfile.md#class-configfile)) virtual [🔗](#class-editorplugin-private-method-set-window-layout)

Restore the plugin GUI layout and data saved by [\_get\_window\_layout()](#class-editorplugin-private-method-get-window-layout). This method is called for every plugin on editor startup. Use the provided `configuration` file to read your saved data.

```
func _set_window_layout(configuration):
    $Window.position = configuration.get_value("MyPlugin", "window_position", Vector2())
    $Icon.modulate = configuration.get_value("MyPlugin", "icon_color", Color.WHITE)

```

* * *

void **add\_autoload\_singleton**(name: [String](class_string.md#class-string), path: [String](class_string.md#class-string)) [🔗](#class-editorplugin-method-add-autoload-singleton)

Adds a script at `path` to the Autoload list as `name`.

* * *

void **add\_context\_menu\_plugin**(slot: [ContextMenuSlot](class_editorcontextmenuplugin.md#enum-editorcontextmenuplugin-contextmenuslot), plugin: [EditorContextMenuPlugin](class_editorcontextmenuplugin.md#class-editorcontextmenuplugin)) [🔗](#class-editorplugin-method-add-context-menu-plugin)

Adds a plugin to the context menu. `slot` is the context menu where the plugin will be added.

**Note:** A plugin instance can belong only to a single context menu slot.

* * *

[Button](class_button.md#class-button) **add\_control\_to\_bottom\_panel**(control: [Control](class_control.md#class-control), title: [String](class_string.md#class-string), shortcut: [Shortcut](class_shortcut.md#class-shortcut) = null) [🔗](#class-editorplugin-method-add-control-to-bottom-panel)

Adds a control to the bottom panel (together with Output, Debug, Animation, etc.). Returns a reference to the button added. It's up to you to hide/show the button when needed. When your plugin is deactivated, make sure to remove your custom control with [remove\_control\_from\_bottom\_panel()](#class-editorplugin-method-remove-control-from-bottom-panel) and free it with [Node.queue\_free()](class_node.md#class-node-method-queue-free).

Optionally, you can specify a shortcut parameter. When pressed, this shortcut will toggle the bottom panel's visibility. See the default editor bottom panel shortcuts in the Editor Settings for inspiration. Per convention, they all use `Alt` modifier.

* * *

void **add\_control\_to\_container**(container: [CustomControlContainer](#enum-editorplugin-customcontrolcontainer), control: [Control](class_control.md#class-control)) [🔗](#class-editorplugin-method-add-control-to-container)

Adds a custom control to a container in the editor UI.

Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).

When your plugin is deactivated, make sure to remove your custom control with [remove\_control\_from\_container()](#class-editorplugin-method-remove-control-from-container) and free it with [Node.queue\_free()](class_node.md#class-node-method-queue-free).

* * *

void **add\_control\_to\_dock**(slot: [DockSlot](#enum-editorplugin-dockslot), control: [Control](class_control.md#class-control), shortcut: [Shortcut](class_shortcut.md#class-shortcut) = null) [🔗](#class-editorplugin-method-add-control-to-dock)

Adds the control to a specific dock slot.

If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.

When your plugin is deactivated, make sure to remove your custom control with [remove\_control\_from\_docks()](#class-editorplugin-method-remove-control-from-docks) and free it with [Node.queue\_free()](class_node.md#class-node-method-queue-free).

Optionally, you can specify a shortcut parameter. When pressed, this shortcut will open and focus the dock.

* * *

void **add\_custom\_type**(type: [String](class_string.md#class-string), base: [String](class_string.md#class-string), script: [Script](class_script.md#class-script), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-editorplugin-method-add-custom-type)

Adds a custom type, which will appear in the list of nodes or resources.

When a given node or resource is selected, the base type will be instantiated (e.g. "Node3D", "Control", "Resource"), then the script will be loaded and set to this object.

**Note:** The base type is the base engine class which this type's class hierarchy inherits, not any custom type parent classes.

You can use the virtual method [\_handles()](#class-editorplugin-private-method-handles) to check if your custom object is being edited by checking the script or using the `is` keyword.

During run-time, this will be a simple object with a script so this function does not need to be called then.

**Note:** Custom types added this way are not true classes. They are just a helper to create a node with specific script.

* * *

void **add\_debugger\_plugin**(script: [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin)) [🔗](#class-editorplugin-method-add-debugger-plugin)

Adds a [Script](class_script.md#class-script) as debugger plugin to the Debugger. The script must extend [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin).

* * *

void **add\_export\_platform**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) [🔗](#class-editorplugin-method-add-export-platform)

Registers a new [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform). Export platforms provides functionality of exporting to the specific platform.

* * *

void **add\_export\_plugin**(plugin: [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin)) [🔗](#class-editorplugin-method-add-export-plugin)

Registers a new [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin). Export plugins are used to perform tasks when the project is being exported.

See [add\_inspector\_plugin()](#class-editorplugin-method-add-inspector-plugin) for an example of how to register a plugin.

* * *

void **add\_import\_plugin**(importer: [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin), first\_priority: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorplugin-method-add-import-plugin)

Registers a new [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin). Import plugins are used to import custom and unsupported assets as a custom [Resource](class_resource.md#class-resource) type.

If `first_priority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.

**Note:** If you want to import custom 3D asset formats use [add\_scene\_format\_importer\_plugin()](#class-editorplugin-method-add-scene-format-importer-plugin) instead.

See [add\_inspector\_plugin()](#class-editorplugin-method-add-inspector-plugin) for an example of how to register a plugin.

* * *

void **add\_inspector\_plugin**(plugin: [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin)) [🔗](#class-editorplugin-method-add-inspector-plugin)

Registers a new [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin). Inspector plugins are used to extend [EditorInspector](class_editorinspector.md#class-editorinspector) and provide custom configuration tools for your object's properties.

**Note:** Always use [remove\_inspector\_plugin()](#class-editorplugin-method-remove-inspector-plugin) to remove the registered [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin) when your **EditorPlugin** is disabled to prevent leaks and an unexpected behavior.

GDScript

```
const MyInspectorPlugin = preload("res://addons/your_addon/path/to/your/script.gd")
var inspector_plugin = MyInspectorPlugin.new()

func _enter_tree():
    add_inspector_plugin(inspector_plugin)

func _exit_tree():
    remove_inspector_plugin(inspector_plugin)

```

* * *

void **add\_node\_3d\_gizmo\_plugin**(plugin: [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin)) [🔗](#class-editorplugin-method-add-node-3d-gizmo-plugin)

Registers a new [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin). Gizmo plugins are used to add custom gizmos to the 3D preview viewport for a [Node3D](class_node3d.md#class-node3d).

See [add\_inspector\_plugin()](#class-editorplugin-method-add-inspector-plugin) for an example of how to register a plugin.

* * *

void **add\_resource\_conversion\_plugin**(plugin: [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin)) [🔗](#class-editorplugin-method-add-resource-conversion-plugin)

Registers a new [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin). Resource conversion plugins are used to add custom resource converters to the editor inspector.

See [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin) for an example of how to create a resource conversion plugin.

* * *

void **add\_scene\_format\_importer\_plugin**(scene\_format\_importer: [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter), first\_priority: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorplugin-method-add-scene-format-importer-plugin)

Registers a new [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter). Scene importers are used to import custom 3D asset formats as scenes.

If `first_priority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.

* * *

void **add\_scene\_post\_import\_plugin**(scene\_import\_plugin: [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin), first\_priority: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorplugin-method-add-scene-post-import-plugin)

Add an [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin). These plugins allow customizing the import process of 3D assets by adding new options to the import dialogs.

If `first_priority` is `true`, the new import plugin is inserted first in the list and takes precedence over pre-existing plugins.

* * *

void **add\_tool\_menu\_item**(name: [String](class_string.md#class-string), callable: [Callable](class_callable.md#class-callable)) [🔗](#class-editorplugin-method-add-tool-menu-item)

Adds a custom menu item to **Project > Tools** named `name`. When clicked, the provided `callable` will be called.

* * *

void **add\_tool\_submenu\_item**(name: [String](class_string.md#class-string), submenu: [PopupMenu](class_popupmenu.md#class-popupmenu)) [🔗](#class-editorplugin-method-add-tool-submenu-item)

Adds a custom [PopupMenu](class_popupmenu.md#class-popupmenu) submenu under **Project > Tools >** `name`. Use [remove\_tool\_menu\_item()](#class-editorplugin-method-remove-tool-menu-item) on plugin clean up to remove the menu.

* * *

void **add\_translation\_parser\_plugin**(parser: [EditorTranslationParserPlugin](class_editortranslationparserplugin.md#class-editortranslationparserplugin)) [🔗](#class-editorplugin-method-add-translation-parser-plugin)

Registers a custom translation parser plugin for extracting translatable strings from custom files.

* * *

void **add\_undo\_redo\_inspector\_hook\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-editorplugin-method-add-undo-redo-inspector-hook-callback)

Hooks a callback into the undo/redo action creation when a property is modified in the inspector. This allows, for example, to save other properties that may be lost when a given property is modified.

The callback should have 4 arguments: [Object](class_object.md#class-object) `undo_redo`, [Object](class_object.md#class-object) `modified_object`, [String](class_string.md#class-string) `property` and [Variant](class_variant.md#class-variant) `new_value`. They are, respectively, the [UndoRedo](class_undoredo.md#class-undoredo) object used by the inspector, the currently modified object, the name of the modified property and the new value the property is about to take.

* * *

[EditorInterface](class_editorinterface.md#class-editorinterface) **get\_editor\_interface**() [🔗](#class-editorplugin-method-get-editor-interface)

**Deprecated:** [EditorInterface](class_editorinterface.md#class-editorinterface) is a global singleton and can be accessed directly by its name.

Returns the [EditorInterface](class_editorinterface.md#class-editorinterface) singleton instance.

* * *

[PopupMenu](class_popupmenu.md#class-popupmenu) **get\_export\_as\_menu**() [🔗](#class-editorplugin-method-get-export-as-menu)

Returns the [PopupMenu](class_popupmenu.md#class-popupmenu) under **Scene > Export As...**.

* * *

[String](class_string.md#class-string) **get\_plugin\_version**() const [🔗](#class-editorplugin-method-get-plugin-version)

Provide the version of the plugin declared in the `plugin.cfg` config file.

* * *

[ScriptCreateDialog](class_scriptcreatedialog.md#class-scriptcreatedialog) **get\_script\_create\_dialog**() [🔗](#class-editorplugin-method-get-script-create-dialog)

Gets the Editor's dialog used for making scripts.

**Note:** Users can configure it before use.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager) **get\_undo\_redo**() [🔗](#class-editorplugin-method-get-undo-redo)

Gets the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.

* * *

void **hide\_bottom\_panel**() [🔗](#class-editorplugin-method-hide-bottom-panel)

Minimizes the bottom panel.

* * *

void **make\_bottom\_panel\_item\_visible**(item: [Control](class_control.md#class-control)) [🔗](#class-editorplugin-method-make-bottom-panel-item-visible)

Makes a specific item in the bottom panel visible.

* * *

void **queue\_save\_layout**() [🔗](#class-editorplugin-method-queue-save-layout)

Queue save the project's editor layout.

* * *

void **remove\_autoload\_singleton**(name: [String](class_string.md#class-string)) [🔗](#class-editorplugin-method-remove-autoload-singleton)

Removes an Autoload `name` from the list.

* * *

void **remove\_context\_menu\_plugin**(plugin: [EditorContextMenuPlugin](class_editorcontextmenuplugin.md#class-editorcontextmenuplugin)) [🔗](#class-editorplugin-method-remove-context-menu-plugin)

Removes the specified context menu plugin.

* * *

void **remove\_control\_from\_bottom\_panel**(control: [Control](class_control.md#class-control)) [🔗](#class-editorplugin-method-remove-control-from-bottom-panel)

Removes the control from the bottom panel. You have to manually [Node.queue\_free()](class_node.md#class-node-method-queue-free) the control.

* * *

void **remove\_control\_from\_container**(container: [CustomControlContainer](#enum-editorplugin-customcontrolcontainer), control: [Control](class_control.md#class-control)) [🔗](#class-editorplugin-method-remove-control-from-container)

Removes the control from the specified container. You have to manually [Node.queue\_free()](class_node.md#class-node-method-queue-free) the control.

* * *

void **remove\_control\_from\_docks**(control: [Control](class_control.md#class-control)) [🔗](#class-editorplugin-method-remove-control-from-docks)

Removes the control from the dock. You have to manually [Node.queue\_free()](class_node.md#class-node-method-queue-free) the control.

* * *

void **remove\_custom\_type**(type: [String](class_string.md#class-string)) [🔗](#class-editorplugin-method-remove-custom-type)

Removes a custom type added by [add\_custom\_type()](#class-editorplugin-method-add-custom-type).

* * *

void **remove\_debugger\_plugin**(script: [EditorDebuggerPlugin](class_editordebuggerplugin.md#class-editordebuggerplugin)) [🔗](#class-editorplugin-method-remove-debugger-plugin)

Removes the debugger plugin with given script from the Debugger.

* * *

void **remove\_export\_platform**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) [🔗](#class-editorplugin-method-remove-export-platform)

Removes an export platform registered by [add\_export\_platform()](#class-editorplugin-method-add-export-platform).

* * *

void **remove\_export\_plugin**(plugin: [EditorExportPlugin](class_editorexportplugin.md#class-editorexportplugin)) [🔗](#class-editorplugin-method-remove-export-plugin)

Removes an export plugin registered by [add\_export\_plugin()](#class-editorplugin-method-add-export-plugin).

* * *

void **remove\_import\_plugin**(importer: [EditorImportPlugin](class_editorimportplugin.md#class-editorimportplugin)) [🔗](#class-editorplugin-method-remove-import-plugin)

Removes an import plugin registered by [add\_import\_plugin()](#class-editorplugin-method-add-import-plugin).

* * *

void **remove\_inspector\_plugin**(plugin: [EditorInspectorPlugin](class_editorinspectorplugin.md#class-editorinspectorplugin)) [🔗](#class-editorplugin-method-remove-inspector-plugin)

Removes an inspector plugin registered by [add\_inspector\_plugin()](#class-editorplugin-method-add-inspector-plugin).

* * *

void **remove\_node\_3d\_gizmo\_plugin**(plugin: [EditorNode3DGizmoPlugin](class_editornode3dgizmoplugin.md#class-editornode3dgizmoplugin)) [🔗](#class-editorplugin-method-remove-node-3d-gizmo-plugin)

Removes a gizmo plugin registered by [add\_node\_3d\_gizmo\_plugin()](#class-editorplugin-method-add-node-3d-gizmo-plugin).

* * *

void **remove\_resource\_conversion\_plugin**(plugin: [EditorResourceConversionPlugin](class_editorresourceconversionplugin.md#class-editorresourceconversionplugin)) [🔗](#class-editorplugin-method-remove-resource-conversion-plugin)

Removes a resource conversion plugin registered by [add\_resource\_conversion\_plugin()](#class-editorplugin-method-add-resource-conversion-plugin).

* * *

void **remove\_scene\_format\_importer\_plugin**(scene\_format\_importer: [EditorSceneFormatImporter](class_editorsceneformatimporter.md#class-editorsceneformatimporter)) [🔗](#class-editorplugin-method-remove-scene-format-importer-plugin)

Removes a scene format importer registered by [add\_scene\_format\_importer\_plugin()](#class-editorplugin-method-add-scene-format-importer-plugin).

* * *

void **remove\_scene\_post\_import\_plugin**(scene\_import\_plugin: [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin)) [🔗](#class-editorplugin-method-remove-scene-post-import-plugin)

Remove the [EditorScenePostImportPlugin](class_editorscenepostimportplugin.md#class-editorscenepostimportplugin), added with [add\_scene\_post\_import\_plugin()](#class-editorplugin-method-add-scene-post-import-plugin).

* * *

void **remove\_tool\_menu\_item**(name: [String](class_string.md#class-string)) [🔗](#class-editorplugin-method-remove-tool-menu-item)

Removes a menu `name` from **Project > Tools**.

* * *

void **remove\_translation\_parser\_plugin**(parser: [EditorTranslationParserPlugin](class_editortranslationparserplugin.md#class-editortranslationparserplugin)) [🔗](#class-editorplugin-method-remove-translation-parser-plugin)

Removes a custom translation parser plugin registered by [add\_translation\_parser\_plugin()](#class-editorplugin-method-add-translation-parser-plugin).

* * *

void **remove\_undo\_redo\_inspector\_hook\_callback**(callable: [Callable](class_callable.md#class-callable)) [🔗](#class-editorplugin-method-remove-undo-redo-inspector-hook-callback)

Removes a callback previously added by [add\_undo\_redo\_inspector\_hook\_callback()](#class-editorplugin-method-add-undo-redo-inspector-hook-callback).

* * *

void **set\_dock\_tab\_icon**(control: [Control](class_control.md#class-control), icon: [Texture2D](class_texture2d.md#class-texture2d)) [🔗](#class-editorplugin-method-set-dock-tab-icon)

Sets the tab icon for the given control in a dock slot. Setting to `null` removes the icon.

* * *

void **set\_force\_draw\_over\_forwarding\_enabled**() [🔗](#class-editorplugin-method-set-force-draw-over-forwarding-enabled)

Enables calling of [\_forward\_canvas\_force\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-canvas-force-draw-over-viewport) for the 2D editor and [\_forward\_3d\_force\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-3d-force-draw-over-viewport) for the 3D editor when their viewports are updated. You need to call this method only once and it will work permanently for this plugin.

* * *

void **set\_input\_event\_forwarding\_always\_enabled**() [🔗](#class-editorplugin-method-set-input-event-forwarding-always-enabled)

Use this method if you always want to receive inputs from 3D view screen inside [\_forward\_3d\_gui\_input()](#class-editorplugin-private-method-forward-3d-gui-input). It might be especially usable if your plugin will want to use raycast in the scene.

* * *

[int](class_int.md#class-int) **update\_overlays**() const [🔗](#class-editorplugin-method-update-overlays)

Updates the overlays of the 2D and 3D editor viewport. Causes methods [\_forward\_canvas\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-canvas-draw-over-viewport), [\_forward\_canvas\_force\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-canvas-force-draw-over-viewport), [\_forward\_3d\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-3d-draw-over-viewport) and [\_forward\_3d\_force\_draw\_over\_viewport()](#class-editorplugin-private-method-forward-3d-force-draw-over-viewport) to be called.

[Previous](class_editorinspector.md "EditorInspector") [Next](class_editorproperty.md "EditorProperty")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorinspector.md "EditorInspector") [Next](class_editorproperty.md "EditorProperty")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).