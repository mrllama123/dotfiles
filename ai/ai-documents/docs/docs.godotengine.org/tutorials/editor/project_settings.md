---
title: Project Settings — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/editor/project_settings.html
crawled_at: "2026-08-13T10:20:52+12:00"
content_hash: e8d18f8f46a7bc0106ab2280511dc6265e007426c1c16285dea91a30ee51cec6
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Editor introduction](index.md)
  - Project Settings
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/editor/project_settings.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Project Settings

There are dozens of settings you can change to control a project's execution,
including physics, rendering, and windowing settings. These settings can be
changed from the **Project Settings** window, from code, or by manually editing
the `project.godot` file. You can see a full list of settings in the
[ProjectSettings](../../classes/class_projectsettings.md#class-projectsettings) class.

Internally, Godot stores the settings for a project in a `project.godot` file,
a plain text file in INI format. While this is human-readable and version control
friendly, it's not the most convenient to edit. For that reason, the
**Project Settings** window is available to edit these settings. To open the
Project Settings, select **Project > Project Settings** from the main menu.

![../../_images/project_settings_basic.webp](../../_images/project_settings_basic.webp)

The Project Settings window

The **Project Settings** window is mainly used to change settings in the
**General** tab. Additionally, there are tabs for the
[Input Map](../inputs/input_examples.md#doc-input-examples-input-map),
[Localization](../i18n/internationalizing_games.md#doc-internationalizing-games),
[Globals](../scripting/singletons_autoload.md#doc-singletons-autoload),
[Plugins](../plugins/editor/installing_plugins.md#doc-installing-plugins-enabling-a-plugin), and
**Import Defaults**. Usage of these other tabs is documented elsewhere.

## Changing project settings

The **General** tab of the project settings window works much like the inspector.
It displays a list of project settings which you can change, just like inspector
properties. There is a list of categories on the left, which you can use to select
related groups of settings. You can also search for a specific setting with the
**Filter Settings** field.

Each setting has a default value. Settings can be reset to their default values
by clicking the circular arrow **Reset** button next to each property.

### Changing project settings from code

You can use [set\_setting()](../../classes/class_projectsettings.md#class-projectsettings-method-set-setting) to
change a setting's value from code:

GDScriptC#

```
ProjectSettings.set_setting("application/run/max_fps", 60)
ProjectSettings.set_setting("display/window/size/mode", DisplayServer.WINDOW_MODE_WINDOWED)

```

```
ProjectSettings.SetSetting("application/run/max_fps", 60);
ProjectSettings.SetSetting("display/window/size/mode", (int)DisplayServer.WindowMode.Windowed);

```

However, many project settings are only read once when the game starts. After
that, changing the setting with `set_setting()` will have no effect. Instead,
most settings have a corresponding property or method on a runtime class like
[Engine](../../classes/class_engine.md#class-engine) or [DisplayServer](../../classes/class_displayserver.md#class-displayserver):

GDScriptC#

```
Engine.max_fps = 60
DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

```

```
Engine.MaxFps = 60;
DisplayServer.WindowSetMode(DisplayServer.WindowMode.Windowed);

```

In general, project settings are duplicated at runtime in the
[Engine](../../classes/class_engine.md#class-engine), [PhysicsServer2D](../../classes/class_physicsserver2d.md#class-physicsserver2d),
[PhysicsServer3D](../../classes/class_physicsserver3d.md#class-physicsserver3d),
[RenderingServer](../../classes/class_renderingserver.md#class-renderingserver),
[Viewport](../../classes/class_viewport.md#class-viewport), or [Window](../../classes/class_window.md#class-window) classes. In the
[ProjectSettings](../../classes/class_projectsettings.md#class-projectsettings) class reference, settings
links to their equivalent runtime property or method.

## Reading project settings

You can read project settings with
[get\_setting()](../../classes/class_projectsettings.md#class-projectsettings-method-get-setting) or
[get\_setting\_with\_override()](../../classes/class_projectsettings.md#class-projectsettings-method-get-setting-with-override):

GDScriptC#

```
var max_fps = ProjectSettings.get_setting("application/run/max_fps")
var window_mode = ProjectSettings.get_setting("display/window/size/mode")

```

```
int maxFps = (int)ProjectSettings.GetSetting("application/run/max_fps");
var windowMode = (DisplayServer.WindowMode)(int)ProjectSettings.GetSetting("display/window/size/mode");

```

Since many project settings are only read once at startup, the value in the
project settings may no longer be accurate. In these cases, it's better to read
the value from the runtime equivalent property or method:

GDScriptC#

```
var max_fps = Engine.max_fps
var window_mode = DisplayServer.window_get_mode()

```

```
int maxFps = Engine.MaxFps;
DisplayServer.WindowMode windowMode = DisplayServer.WindowGetMode();

```

## Manually editing project.godot

You can open the `project.godot` file using a text editor and manually
change project settings. Note that if the `project.godot` file does not have a
stored value for a particular setting, it is implicitly the default value of
that setting. This means that if you are manually editing the file, you may
have to write in both the setting name _and_ the value.

In general, it is recommended to use the Project Settings window rather than
manually edit `project.godot`.

## Advanced project settings

![../../_images/project_settings_advanced.webp](../../_images/project_settings_advanced.webp)

The advanced project settings

By default, only some project settings are shown. To see all the project
settings, enable the **Advanced Settings** toggle.

[Previous](inspector_dock.md "Inspector Dock") [Next](script_editor.md "Script Editor")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](inspector_dock.md "Inspector Dock") [Next](script_editor.md "Script Editor")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).