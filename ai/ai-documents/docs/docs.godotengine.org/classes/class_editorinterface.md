---
title: EditorInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorinterface.html
crawled_at: "2026-08-13T10:42:45+12:00"
content_hash: 9c78efe363879f82f393cbed84aca7d19cdd649ca445bce0d305a782a9cc84fe
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorInterface

* * *

# EditorInterface

**Inherits:** [Object](class_object.md#class-object)

Godot editor's interface.

## Description

**EditorInterface** gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to [EditorSettings](class_editorsettings.md#class-editorsettings), [EditorFileSystem](class_editorfilesystem.md#class-editorfilesystem), [EditorResourcePreview](class_editorresourcepreview.md#class-editorresourcepreview), [ScriptEditor](class_scripteditor.md#class-scripteditor), the editor viewport, and information about scenes.

**Note:** This class shouldn't be instantiated directly. Instead, access the singleton directly by its name.

GDScriptC#

```
var editor_settings = EditorInterface.get_editor_settings()

```

```
// In C# you can access it via the static Singleton property.
EditorSettings settings = EditorInterface.Singleton.GetEditorSettings();

```

## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [distraction\_free\_mode](#class-editorinterface-property-distraction-free-mode) |
| [bool](class_bool.md#class-bool) | [movie\_maker\_enabled](#class-editorinterface-property-movie-maker-enabled) |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [close\_scene](#class-editorinterface-method-close-scene)() |
| void | [edit\_node](#class-editorinterface-method-edit-node)(node: [Node](class_node.md#class-node)) |
| void | [edit\_resource](#class-editorinterface-method-edit-resource)(resource: [Resource](class_resource.md#class-resource)) |
| void | [edit\_script](#class-editorinterface-method-edit-script)(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int) = -1, column: [int](class_int.md#class-int) = 0, grab\_focus: [bool](class_bool.md#class-bool) = true) |
| [Control](class_control.md#class-control) | [get\_base\_control](#class-editorinterface-method-get-base-control)() const |
| [EditorCommandPalette](class_editorcommandpalette.md#class-editorcommandpalette) | [get\_command\_palette](#class-editorinterface-method-get-command-palette)() const |
| [String](class_string.md#class-string) | [get\_current\_directory](#class-editorinterface-method-get-current-directory)() const |
| [String](class_string.md#class-string) | [get\_current\_feature\_profile](#class-editorinterface-method-get-current-feature-profile)() const |
| [String](class_string.md#class-string) | [get\_current\_path](#class-editorinterface-method-get-current-path)() const |
| [Node](class_node.md#class-node) | [get\_edited\_scene\_root](#class-editorinterface-method-get-edited-scene-root)() const |
| [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) | [get\_editor\_main\_screen](#class-editorinterface-method-get-editor-main-screen)() const |
| [EditorPaths](class_editorpaths.md#class-editorpaths) | [get\_editor\_paths](#class-editorinterface-method-get-editor-paths)() const |
| [float](class_float.md#class-float) | [get\_editor\_scale](#class-editorinterface-method-get-editor-scale)() const |
| [EditorSettings](class_editorsettings.md#class-editorsettings) | [get\_editor\_settings](#class-editorinterface-method-get-editor-settings)() const |
| [Theme](class_theme.md#class-theme) | [get\_editor\_theme](#class-editorinterface-method-get-editor-theme)() const |
| [EditorToaster](class_editortoaster.md#class-editortoaster) | [get\_editor\_toaster](#class-editorinterface-method-get-editor-toaster)() const |
| [EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager) | [get\_editor\_undo\_redo](#class-editorinterface-method-get-editor-undo-redo)() const |
| [SubViewport](class_subviewport.md#class-subviewport) | [get\_editor\_viewport\_2d](#class-editorinterface-method-get-editor-viewport-2d)() const |
| [SubViewport](class_subviewport.md#class-subviewport) | [get\_editor\_viewport\_3d](#class-editorinterface-method-get-editor-viewport-3d)(idx: [int](class_int.md#class-int) = 0) const |
| [FileSystemDock](class_filesystemdock.md#class-filesystemdock) | [get\_file\_system\_dock](#class-editorinterface-method-get-file-system-dock)() const |
| [EditorInspector](class_editorinspector.md#class-editorinspector) | [get\_inspector](#class-editorinterface-method-get-inspector)() const |
| [Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] | [get\_open\_scene\_roots](#class-editorinterface-method-get-open-scene-roots)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_open\_scenes](#class-editorinterface-method-get-open-scenes)() const |
| [String](class_string.md#class-string) | [get\_playing\_scene](#class-editorinterface-method-get-playing-scene)() const |
| [EditorFileSystem](class_editorfilesystem.md#class-editorfilesystem) | [get\_resource\_filesystem](#class-editorinterface-method-get-resource-filesystem)() const |
| [EditorResourcePreview](class_editorresourcepreview.md#class-editorresourcepreview) | [get\_resource\_previewer](#class-editorinterface-method-get-resource-previewer)() const |
| [ScriptEditor](class_scripteditor.md#class-scripteditor) | [get\_script\_editor](#class-editorinterface-method-get-script-editor)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_selected\_paths](#class-editorinterface-method-get-selected-paths)() const |
| [EditorSelection](class_editorselection.md#class-editorselection) | [get\_selection](#class-editorinterface-method-get-selection)() const |
| void | [inspect\_object](#class-editorinterface-method-inspect-object)(object: [Object](class_object.md#class-object), for\_property: [String](class_string.md#class-string) = "", inspector\_only: [bool](class_bool.md#class-bool) = false) |
| [bool](class_bool.md#class-bool) | [is\_multi\_window\_enabled](#class-editorinterface-method-is-multi-window-enabled)() const |
| [bool](class_bool.md#class-bool) | [is\_playing\_scene](#class-editorinterface-method-is-playing-scene)() const |
| [bool](class_bool.md#class-bool) | [is\_plugin\_enabled](#class-editorinterface-method-is-plugin-enabled)(plugin: [String](class_string.md#class-string)) const |
| [Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\] | [make\_mesh\_previews](#class-editorinterface-method-make-mesh-previews)(meshes: [Array](class_array.md#class-array)\[ [Mesh](class_mesh.md#class-mesh)\], preview\_size: [int](class_int.md#class-int)) |
| void | [mark\_scene\_as\_unsaved](#class-editorinterface-method-mark-scene-as-unsaved)() |
| void | [open\_scene\_from\_path](#class-editorinterface-method-open-scene-from-path)(scene\_filepath: [String](class_string.md#class-string), set\_inherited: [bool](class_bool.md#class-bool) = false) |
| void | [play\_current\_scene](#class-editorinterface-method-play-current-scene)() |
| void | [play\_custom\_scene](#class-editorinterface-method-play-custom-scene)(scene\_filepath: [String](class_string.md#class-string)) |
| void | [play\_main\_scene](#class-editorinterface-method-play-main-scene)() |
| void | [popup\_create\_dialog](#class-editorinterface-method-popup-create-dialog)(callback: [Callable](class_callable.md#class-callable), base\_type: [StringName](class_stringname.md#class-stringname) = "", current\_type: [String](class_string.md#class-string) = "", dialog\_title: [String](class_string.md#class-string) = "", type\_blocklist: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |
| void | [popup\_dialog](#class-editorinterface-method-popup-dialog)(dialog: [Window](class_window.md#class-window), rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) |
| void | [popup\_dialog\_centered](#class-editorinterface-method-popup-dialog-centered)(dialog: [Window](class_window.md#class-window), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) |
| void | [popup\_dialog\_centered\_clamped](#class-editorinterface-method-popup-dialog-centered-clamped)(dialog: [Window](class_window.md#class-window), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) |
| void | [popup\_dialog\_centered\_ratio](#class-editorinterface-method-popup-dialog-centered-ratio)(dialog: [Window](class_window.md#class-window), ratio: [float](class_float.md#class-float) = 0.8) |
| void | [popup\_method\_selector](#class-editorinterface-method-popup-method-selector)(object: [Object](class_object.md#class-object), callback: [Callable](class_callable.md#class-callable), current\_value: [String](class_string.md#class-string) = "") |
| void | [popup\_node\_selector](#class-editorinterface-method-popup-node-selector)(callback: [Callable](class_callable.md#class-callable), valid\_types: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\], current\_value: [Node](class_node.md#class-node) = null) |
| void | [popup\_property\_selector](#class-editorinterface-method-popup-property-selector)(object: [Object](class_object.md#class-object), callback: [Callable](class_callable.md#class-callable), type\_filter: [PackedInt32Array](class_packedint32array.md#class-packedint32array) = PackedInt32Array(), current\_value: [String](class_string.md#class-string) = "") |
| void | [popup\_quick\_open](#class-editorinterface-method-popup-quick-open)(callback: [Callable](class_callable.md#class-callable), base\_types: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) |
| void | [reload\_scene\_from\_path](#class-editorinterface-method-reload-scene-from-path)(scene\_filepath: [String](class_string.md#class-string)) |
| void | [restart\_editor](#class-editorinterface-method-restart-editor)(save: [bool](class_bool.md#class-bool) = true) |
| void | [save\_all\_scenes](#class-editorinterface-method-save-all-scenes)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_scene](#class-editorinterface-method-save-scene)() |
| void | [save\_scene\_as](#class-editorinterface-method-save-scene-as)(path: [String](class_string.md#class-string), with\_preview: [bool](class_bool.md#class-bool) = true) |
| void | [select\_file](#class-editorinterface-method-select-file)(file: [String](class_string.md#class-string)) |
| void | [set\_current\_feature\_profile](#class-editorinterface-method-set-current-feature-profile)(profile\_name: [String](class_string.md#class-string)) |
| void | [set\_main\_screen\_editor](#class-editorinterface-method-set-main-screen-editor)(name: [String](class_string.md#class-string)) |
| void | [set\_plugin\_enabled](#class-editorinterface-method-set-plugin-enabled)(plugin: [String](class_string.md#class-string), enabled: [bool](class_bool.md#class-bool)) |
| void | [stop\_playing\_scene](#class-editorinterface-method-stop-playing-scene)() |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **distraction\_free\_mode** [🔗](#class-editorinterface-property-distraction-free-mode)

- void **set\_distraction\_free\_mode**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_distraction\_free\_mode\_enabled**()


If `true`, enables distraction-free mode which hides side docks to increase the space available for the main view.

* * *

[bool](class_bool.md#class-bool) **movie\_maker\_enabled** [🔗](#class-editorinterface-property-movie-maker-enabled)

- void **set\_movie\_maker\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_movie\_maker\_enabled**()


If `true`, the Movie Maker mode is enabled in the editor. See [MovieWriter](class_moviewriter.md#class-moviewriter) for more information.

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **close\_scene**() [🔗](#class-editorinterface-method-close-scene)

Closes the currently active scene, discarding any pending changes in the process. Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success or [@GlobalScope.ERR\_DOES\_NOT\_EXIST](class_@globalscope.md#class-globalscope-constant-err-does-not-exist) if there is no scene to close.

* * *

void **edit\_node**(node: [Node](class_node.md#class-node)) [🔗](#class-editorinterface-method-edit-node)

Edits the given [Node](class_node.md#class-node). The node will be also selected if it's inside the scene tree.

* * *

void **edit\_resource**(resource: [Resource](class_resource.md#class-resource)) [🔗](#class-editorinterface-method-edit-resource)

Edits the given [Resource](class_resource.md#class-resource). If the resource is a [Script](class_script.md#class-script) you can also edit it with [edit\_script()](#class-editorinterface-method-edit-script) to specify the line and column position.

* * *

void **edit\_script**(script: [Script](class_script.md#class-script), line: [int](class_int.md#class-int) = -1, column: [int](class_int.md#class-int) = 0, grab\_focus: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorinterface-method-edit-script)

Edits the given [Script](class_script.md#class-script). The line and column on which to open the script can also be specified. The script will be open with the user-configured editor for the script's language which may be an external editor.

* * *

[Control](class_control.md#class-control) **get\_base\_control**() const [🔗](#class-editorinterface-method-get-base-control)

Returns the main container of Godot editor's window. For example, you can use it to retrieve the size of the container and place your controls accordingly.

**Warning:** Removing and freeing this node will render the editor useless and may cause a crash.

* * *

[EditorCommandPalette](class_editorcommandpalette.md#class-editorcommandpalette) **get\_command\_palette**() const [🔗](#class-editorinterface-method-get-command-palette)

Returns the editor's [EditorCommandPalette](class_editorcommandpalette.md#class-editorcommandpalette) instance.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[String](class_string.md#class-string) **get\_current\_directory**() const [🔗](#class-editorinterface-method-get-current-directory)

Returns the current directory being viewed in the [FileSystemDock](class_filesystemdock.md#class-filesystemdock). If a file is selected, its base directory will be returned using [String.get\_base\_dir()](class_string.md#class-string-method-get-base-dir) instead.

* * *

[String](class_string.md#class-string) **get\_current\_feature\_profile**() const [🔗](#class-editorinterface-method-get-current-feature-profile)

Returns the name of the currently activated feature profile. If the default profile is currently active, an empty string is returned instead.

In order to get a reference to the [EditorFeatureProfile](class_editorfeatureprofile.md#class-editorfeatureprofile), you must load the feature profile using [EditorFeatureProfile.load\_from\_file()](class_editorfeatureprofile.md#class-editorfeatureprofile-method-load-from-file).

**Note:** Feature profiles created via the user interface are loaded from the `feature_profiles` directory, as a file with the `.profile` extension. The editor configuration folder can be found by using [EditorPaths.get\_config\_dir()](class_editorpaths.md#class-editorpaths-method-get-config-dir).

* * *

[String](class_string.md#class-string) **get\_current\_path**() const [🔗](#class-editorinterface-method-get-current-path)

Returns the current path being viewed in the [FileSystemDock](class_filesystemdock.md#class-filesystemdock).

* * *

[Node](class_node.md#class-node) **get\_edited\_scene\_root**() const [🔗](#class-editorinterface-method-get-edited-scene-root)

Returns the edited (current) scene's root [Node](class_node.md#class-node).

* * *

[VBoxContainer](class_vboxcontainer.md#class-vboxcontainer) **get\_editor\_main\_screen**() const [🔗](#class-editorinterface-method-get-editor-main-screen)

Returns the editor control responsible for main screen plugins and tools. Use it with plugins that implement [EditorPlugin.\_has\_main\_screen()](class_editorplugin.md#class-editorplugin-private-method-has-main-screen).

**Note:** This node is a [VBoxContainer](class_vboxcontainer.md#class-vboxcontainer), which means that if you add a [Control](class_control.md#class-control) child to it, you need to set the child's [Control.size\_flags\_vertical](class_control.md#class-control-property-size-flags-vertical) to [Control.SIZE\_EXPAND\_FILL](class_control.md#class-control-constant-size-expand-fill) to make it use the full available space.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[EditorPaths](class_editorpaths.md#class-editorpaths) **get\_editor\_paths**() const [🔗](#class-editorinterface-method-get-editor-paths)

Returns the [EditorPaths](class_editorpaths.md#class-editorpaths) singleton.

* * *

[float](class_float.md#class-float) **get\_editor\_scale**() const [🔗](#class-editorinterface-method-get-editor-scale)

Returns the actual scale of the editor UI ( `1.0` being 100% scale). This can be used to adjust position and dimensions of the UI added by plugins.

**Note:** This value is set via the [EditorSettings.interface/editor/display\_scale](class_editorsettings.md#class-editorsettings-property-interface-editor-display-scale) and [EditorSettings.interface/editor/custom\_display\_scale](class_editorsettings.md#class-editorsettings-property-interface-editor-custom-display-scale) settings. The editor must be restarted for changes to be properly applied.

* * *

[EditorSettings](class_editorsettings.md#class-editorsettings) **get\_editor\_settings**() const [🔗](#class-editorinterface-method-get-editor-settings)

Returns the editor's [EditorSettings](class_editorsettings.md#class-editorsettings) instance.

* * *

[Theme](class_theme.md#class-theme) **get\_editor\_theme**() const [🔗](#class-editorinterface-method-get-editor-theme)

Returns the editor's [Theme](class_theme.md#class-theme).

**Note:** When creating custom editor UI, prefer accessing theme items directly from your GUI nodes using the `get_theme_*` methods.

* * *

[EditorToaster](class_editortoaster.md#class-editortoaster) **get\_editor\_toaster**() const [🔗](#class-editorinterface-method-get-editor-toaster)

Returns the editor's [EditorToaster](class_editortoaster.md#class-editortoaster).

* * *

[EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager) **get\_editor\_undo\_redo**() const [🔗](#class-editorinterface-method-get-editor-undo-redo)

Returns the editor's [EditorUndoRedoManager](class_editorundoredomanager.md#class-editorundoredomanager).

* * *

[SubViewport](class_subviewport.md#class-subviewport) **get\_editor\_viewport\_2d**() const [🔗](#class-editorinterface-method-get-editor-viewport-2d)

Returns the 2D editor [SubViewport](class_subviewport.md#class-subviewport). It does not have a camera. Instead, the view transforms are done directly and can be accessed with [Viewport.global\_canvas\_transform](class_viewport.md#class-viewport-property-global-canvas-transform).

* * *

[SubViewport](class_subviewport.md#class-subviewport) **get\_editor\_viewport\_3d**(idx: [int](class_int.md#class-int) = 0) const [🔗](#class-editorinterface-method-get-editor-viewport-3d)

Returns the specified 3D editor [SubViewport](class_subviewport.md#class-subviewport), from `0` to `3`. The viewport can be used to access the active editor cameras with [Viewport.get\_camera\_3d()](class_viewport.md#class-viewport-method-get-camera-3d).

* * *

[FileSystemDock](class_filesystemdock.md#class-filesystemdock) **get\_file\_system\_dock**() const [🔗](#class-editorinterface-method-get-file-system-dock)

Returns the editor's [FileSystemDock](class_filesystemdock.md#class-filesystemdock) instance.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[EditorInspector](class_editorinspector.md#class-editorinspector) **get\_inspector**() const [🔗](#class-editorinterface-method-get-inspector)

Returns the editor's [EditorInspector](class_editorinspector.md#class-editorinspector) instance.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[Array](class_array.md#class-array)\[ [Node](class_node.md#class-node)\] **get\_open\_scene\_roots**() const [🔗](#class-editorinterface-method-get-open-scene-roots)

Returns an array with references to the root nodes of the currently opened scenes.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_open\_scenes**() const [🔗](#class-editorinterface-method-get-open-scenes)

Returns an array with the file paths of the currently opened scenes.

* * *

[String](class_string.md#class-string) **get\_playing\_scene**() const [🔗](#class-editorinterface-method-get-playing-scene)

Returns the name of the scene that is being played. If no scene is currently being played, returns an empty string.

* * *

[EditorFileSystem](class_editorfilesystem.md#class-editorfilesystem) **get\_resource\_filesystem**() const [🔗](#class-editorinterface-method-get-resource-filesystem)

Returns the editor's [EditorFileSystem](class_editorfilesystem.md#class-editorfilesystem) instance.

* * *

[EditorResourcePreview](class_editorresourcepreview.md#class-editorresourcepreview) **get\_resource\_previewer**() const [🔗](#class-editorinterface-method-get-resource-previewer)

Returns the editor's [EditorResourcePreview](class_editorresourcepreview.md#class-editorresourcepreview) instance.

* * *

[ScriptEditor](class_scripteditor.md#class-scripteditor) **get\_script\_editor**() const [🔗](#class-editorinterface-method-get-script-editor)

Returns the editor's [ScriptEditor](class_scripteditor.md#class-scripteditor) instance.

**Warning:** Removing and freeing this node will render a part of the editor useless and may cause a crash.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_selected\_paths**() const [🔗](#class-editorinterface-method-get-selected-paths)

Returns an array containing the paths of the currently selected files (and directories) in the [FileSystemDock](class_filesystemdock.md#class-filesystemdock).

* * *

[EditorSelection](class_editorselection.md#class-editorselection) **get\_selection**() const [🔗](#class-editorinterface-method-get-selection)

Returns the editor's [EditorSelection](class_editorselection.md#class-editorselection) instance.

* * *

void **inspect\_object**(object: [Object](class_object.md#class-object), for\_property: [String](class_string.md#class-string) = "", inspector\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorinterface-method-inspect-object)

Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.

* * *

[bool](class_bool.md#class-bool) **is\_multi\_window\_enabled**() const [🔗](#class-editorinterface-method-is-multi-window-enabled)

Returns `true` if multiple window support is enabled in the editor. Multiple window support is enabled if _all_ of these statements are true:

- [EditorSettings.interface/multi\_window/enable](class_editorsettings.md#class-editorsettings-property-interface-multi-window-enable) is `true`.

- [EditorSettings.interface/editor/single\_window\_mode](class_editorsettings.md#class-editorsettings-property-interface-editor-single-window-mode) is `false`.

- [Viewport.gui\_embed\_subwindows](class_viewport.md#class-viewport-property-gui-embed-subwindows) is `false`. This is forced to `true` on platforms that don't support multiple windows such as Web, or when the `--single-window` [command line argument](../tutorials/editor/command_line_tutorial.md) is used.


* * *

[bool](class_bool.md#class-bool) **is\_playing\_scene**() const [🔗](#class-editorinterface-method-is-playing-scene)

Returns `true` if a scene is currently being played, `false` otherwise. Paused scenes are considered as being played.

* * *

[bool](class_bool.md#class-bool) **is\_plugin\_enabled**(plugin: [String](class_string.md#class-string)) const [🔗](#class-editorinterface-method-is-plugin-enabled)

Returns `true` if the specified `plugin` is enabled. The plugin name is the same as its directory name.

* * *

[Array](class_array.md#class-array)\[ [Texture2D](class_texture2d.md#class-texture2d)\] **make\_mesh\_previews**(meshes: [Array](class_array.md#class-array)\[ [Mesh](class_mesh.md#class-mesh)\], preview\_size: [int](class_int.md#class-int)) [🔗](#class-editorinterface-method-make-mesh-previews)

Returns mesh previews rendered at the given size as an [Array](class_array.md#class-array) of [Texture2D](class_texture2d.md#class-texture2d) s.

* * *

void **mark\_scene\_as\_unsaved**() [🔗](#class-editorinterface-method-mark-scene-as-unsaved)

Marks the current scene tab as unsaved.

* * *

void **open\_scene\_from\_path**(scene\_filepath: [String](class_string.md#class-string), set\_inherited: [bool](class_bool.md#class-bool) = false) [🔗](#class-editorinterface-method-open-scene-from-path)

Opens the scene at the given path. If `set_inherited` is `true`, creates a new inherited scene.

* * *

void **play\_current\_scene**() [🔗](#class-editorinterface-method-play-current-scene)

Plays the currently active scene.

* * *

void **play\_custom\_scene**(scene\_filepath: [String](class_string.md#class-string)) [🔗](#class-editorinterface-method-play-custom-scene)

Plays the scene specified by its filepath.

* * *

void **play\_main\_scene**() [🔗](#class-editorinterface-method-play-main-scene)

Plays the main scene.

* * *

void **popup\_create\_dialog**(callback: [Callable](class_callable.md#class-callable), base\_type: [StringName](class_stringname.md#class-stringname) = "", current\_type: [String](class_string.md#class-string) = "", dialog\_title: [String](class_string.md#class-string) = "", type\_blocklist: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-editorinterface-method-popup-create-dialog)

**Experimental:** This method may be changed or removed in future versions.

Pops up an editor dialog for creating an object.

The `callback` must take a single argument of type [StringName](class_stringname.md#class-stringname) which will contain the type name of the selected object or be empty if no item is selected.

The `base_type` specifies the base type of objects to display. For example, if you set this to "Resource", all types derived from [Resource](class_resource.md#class-resource) will display in the create dialog.

The `current_type` will be passed in the search box of the create dialog, and the specified type can be immediately selected when the dialog pops up. If the `current_type` is not derived from `base_type`, there will be no result of the type in the dialog.

The `dialog_title` allows you to define a custom title for the dialog. This is useful if you want to accurately hint the usage of the dialog. If the `dialog_title` is an empty string, the dialog will use "Create New 'Base Type'" as the default title.

The `type_blocklist` contains a list of type names, and the types in the blocklist will be hidden from the create dialog.

**Note:** Trying to list the base type in the `type_blocklist` will hide all types derived from the base type from the create dialog.

* * *

void **popup\_dialog**(dialog: [Window](class_window.md#class-window), rect: [Rect2i](class_rect2i.md#class-rect2i) = Rect2i(0, 0, 0, 0)) [🔗](#class-editorinterface-method-popup-dialog)

Pops up the `dialog` in the editor UI with [Window.popup\_exclusive()](class_window.md#class-window-method-popup-exclusive). The dialog must have no current parent, otherwise the method fails.

See also [Window.set\_unparent\_when\_invisible()](class_window.md#class-window-method-set-unparent-when-invisible).

* * *

void **popup\_dialog\_centered**(dialog: [Window](class_window.md#class-window), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0)) [🔗](#class-editorinterface-method-popup-dialog-centered)

Pops up the `dialog` in the editor UI with [Window.popup\_exclusive\_centered()](class_window.md#class-window-method-popup-exclusive-centered). The dialog must have no current parent, otherwise the method fails.

See also [Window.set\_unparent\_when\_invisible()](class_window.md#class-window-method-set-unparent-when-invisible).

* * *

void **popup\_dialog\_centered\_clamped**(dialog: [Window](class_window.md#class-window), minsize: [Vector2i](class_vector2i.md#class-vector2i) = Vector2i(0, 0), fallback\_ratio: [float](class_float.md#class-float) = 0.75) [🔗](#class-editorinterface-method-popup-dialog-centered-clamped)

Pops up the `dialog` in the editor UI with [Window.popup\_exclusive\_centered\_clamped()](class_window.md#class-window-method-popup-exclusive-centered-clamped). The dialog must have no current parent, otherwise the method fails.

See also [Window.set\_unparent\_when\_invisible()](class_window.md#class-window-method-set-unparent-when-invisible).

* * *

void **popup\_dialog\_centered\_ratio**(dialog: [Window](class_window.md#class-window), ratio: [float](class_float.md#class-float) = 0.8) [🔗](#class-editorinterface-method-popup-dialog-centered-ratio)

Pops up the `dialog` in the editor UI with [Window.popup\_exclusive\_centered\_ratio()](class_window.md#class-window-method-popup-exclusive-centered-ratio). The dialog must have no current parent, otherwise the method fails.

See also [Window.set\_unparent\_when\_invisible()](class_window.md#class-window-method-set-unparent-when-invisible).

* * *

void **popup\_method\_selector**(object: [Object](class_object.md#class-object), callback: [Callable](class_callable.md#class-callable), current\_value: [String](class_string.md#class-string) = "") [🔗](#class-editorinterface-method-popup-method-selector)

Pops up an editor dialog for selecting a method from `object`. The `callback` must take a single argument of type [String](class_string.md#class-string) which will contain the name of the selected method or be empty if the dialog is canceled. If `current_value` is provided, the method will be selected automatically in the method list, if it exists.

* * *

void **popup\_node\_selector**(callback: [Callable](class_callable.md#class-callable), valid\_types: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\], current\_value: [Node](class_node.md#class-node) = null) [🔗](#class-editorinterface-method-popup-node-selector)

Pops up an editor dialog for selecting a [Node](class_node.md#class-node) from the edited scene. The `callback` must take a single argument of type [NodePath](class_nodepath.md#class-nodepath). It is called on the selected [NodePath](class_nodepath.md#class-nodepath) or the empty path `^""` if the dialog is canceled. If `valid_types` is provided, the dialog will only show Nodes that match one of the listed Node types. If `current_value` is provided, the Node will be automatically selected in the tree, if it exists.

**Example:** Display the node selection dialog as soon as this node is added to the tree for the first time:

```
func _ready():
    if Engine.is_editor_hint():
        EditorInterface.popup_node_selector(_on_node_selected, ["Button"])

func _on_node_selected(node_path):
    if node_path.is_empty():
        print("node selection canceled")
    else:
        print("selected ", node_path)

```

* * *

void **popup\_property\_selector**(object: [Object](class_object.md#class-object), callback: [Callable](class_callable.md#class-callable), type\_filter: [PackedInt32Array](class_packedint32array.md#class-packedint32array) = PackedInt32Array(), current\_value: [String](class_string.md#class-string) = "") [🔗](#class-editorinterface-method-popup-property-selector)

Pops up an editor dialog for selecting properties from `object`. The `callback` must take a single argument of type [NodePath](class_nodepath.md#class-nodepath). It is called on the selected property path (see [NodePath.get\_as\_property\_path()](class_nodepath.md#class-nodepath-method-get-as-property-path)) or the empty path `^""` if the dialog is canceled. If `type_filter` is provided, the dialog will only show properties that match one of the listed [Variant.Type](class_@globalscope.md#enum-globalscope-variant-type) values. If `current_value` is provided, the property will be selected automatically in the property list, if it exists.

```
func _ready():
    if Engine.is_editor_hint():
        EditorInterface.popup_property_selector(this, _on_property_selected, [TYPE_INT])

func _on_property_selected(property_path):
    if property_path.is_empty():
        print("property selection canceled")
    else:
        print("selected ", property_path)

```

* * *

void **popup\_quick\_open**(callback: [Callable](class_callable.md#class-callable), base\_types: [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] = \[\]) [🔗](#class-editorinterface-method-popup-quick-open)

Pops up an editor dialog for quick selecting a resource file. The `callback` must take a single argument of type [String](class_string.md#class-string) which will contain the path of the selected resource or be empty if the dialog is canceled. If `base_types` is provided, the dialog will only show resources that match these types. Only types deriving from [Resource](class_resource.md#class-resource) are supported.

* * *

void **reload\_scene\_from\_path**(scene\_filepath: [String](class_string.md#class-string)) [🔗](#class-editorinterface-method-reload-scene-from-path)

Reloads the scene at the given path.

* * *

void **restart\_editor**(save: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorinterface-method-restart-editor)

Restarts the editor. This closes the editor and then opens the same project. If `save` is `true`, the project will be saved before restarting.

* * *

void **save\_all\_scenes**() [🔗](#class-editorinterface-method-save-all-scenes)

Saves all opened scenes in the editor.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_scene**() [🔗](#class-editorinterface-method-save-scene)

Saves the currently active scene. Returns either [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) or [@GlobalScope.ERR\_CANT\_CREATE](class_@globalscope.md#class-globalscope-constant-err-cant-create).

* * *

void **save\_scene\_as**(path: [String](class_string.md#class-string), with\_preview: [bool](class_bool.md#class-bool) = true) [🔗](#class-editorinterface-method-save-scene-as)

Saves the currently active scene as a file at `path`.

* * *

void **select\_file**(file: [String](class_string.md#class-string)) [🔗](#class-editorinterface-method-select-file)

Selects the file, with the path provided by `file`, in the FileSystem dock.

* * *

void **set\_current\_feature\_profile**(profile\_name: [String](class_string.md#class-string)) [🔗](#class-editorinterface-method-set-current-feature-profile)

Selects and activates the specified feature profile with the given `profile_name`. Set `profile_name` to an empty string to reset to the default feature profile.

A feature profile can be created programmatically using the [EditorFeatureProfile](class_editorfeatureprofile.md#class-editorfeatureprofile) class.

**Note:** The feature profile that gets activated must be located in the `feature_profiles` directory, as a file with the `.profile` extension. If a profile could not be found, an error occurs. The editor configuration folder can be found by using [EditorPaths.get\_config\_dir()](class_editorpaths.md#class-editorpaths-method-get-config-dir).

* * *

void **set\_main\_screen\_editor**(name: [String](class_string.md#class-string)) [🔗](#class-editorinterface-method-set-main-screen-editor)

Sets the editor's current main screen to the one specified in `name`. `name` must match the title of the tab in question exactly (e.g. `2D`, `3D`, `Script`, `Game`, or `AssetLib` for default tabs).

* * *

void **set\_plugin\_enabled**(plugin: [String](class_string.md#class-string), enabled: [bool](class_bool.md#class-bool)) [🔗](#class-editorinterface-method-set-plugin-enabled)

Sets the enabled status of a plugin. The plugin name is the same as its directory name.

* * *

void **stop\_playing\_scene**() [🔗](#class-editorinterface-method-stop-playing-scene)

Stops the scene that is currently playing.

[Previous](class_editorinspectorplugin.md "EditorInspectorPlugin") [Next](class_editornode3dgizmo.md "EditorNode3DGizmo")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorinspectorplugin.md "EditorInspectorPlugin") [Next](class_editornode3dgizmo.md "EditorNode3DGizmo")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).