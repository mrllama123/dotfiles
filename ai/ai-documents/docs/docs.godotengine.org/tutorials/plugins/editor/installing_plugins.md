---
title: Installing plugins — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/plugins/editor/installing_plugins.html
crawled_at: "2026-08-13T10:38:34+12:00"
content_hash: ed986f7e96144867a29ade3a0ce0697d9bfe983469df9e809f83ba97f8d760b5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Plugins](../index.md)
  - [Editor plugins](index.md)
  - Installing plugins
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/plugins/editor/installing_plugins.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Installing plugins

Godot features an editor plugin system with numerous plugins developed by the
community. Plugins can extend the editor's functionality with new nodes,
additional docks, convenience features, and more.

## Finding plugins

The preferred way to find Godot plugins is to use the
[Asset Library](https://godotengine.org/asset-library/). While it can be
browsed online, it's more convenient to use it directly from the editor.
To do so, click the **AssetLib** tab at the top of the editor:

![../../../_images/installing_plugins_assetlib_tab.webp](../../../_images/installing_plugins_assetlib_tab.webp)

You can also find assets on code hosting websites such as GitHub.

Note

Some repositories describe themselves as "plugins" but may not actually be
_editor_ plugins. This is especially the case for scripts that are intended
to be used in a running project. You don't need to enable such plugins to
use them. Download them and extract the files in your project folder.

One way to distinguish editor plugins from non-editor plugins is to look for
a `plugin.cfg` file in the repository that hosts the plugin. If the
repository contains a `plugin.cfg` file in a folder placed in the
`addons/` folder, then it is an editor plugin.

## Installing a plugin

To install a plugin, download it as a ZIP archive. On the Asset Library, this
can be done using the **Download** button, either from the editor or using the
Web interface.

On GitHub, if a plugin has _tags_ (versions) declared, go to the **Releases**
tab to download a stable release. This ensures you download a version that was
declared to be stable by its author.

On GitHub, if the plugin doesn't have any _tags_ declared, use the **Download ZIP**
button to download a ZIP of the latest revision:

![../../../_images/installing_plugins_github_download_zip.png](../../../_images/installing_plugins_github_download_zip.png)

Extract the ZIP archive and move the `addons/` folder it contains into your
project folder. If your project already contains an `addons/` folder, move the
plugin's `addons/` folder into your project folder to merge the new folder
contents with the existing one. Your file manager may ask you whether to write
into the folder; answer **Yes**. No files will be overwritten in the process.

## Enabling a plugin

To enable the freshly installed plugin, open **Project > Project Settings** at
the top of the editor then go the **Plugins** tab. If the plugin was packaged
correctly, you should see it in the list of plugins. Click on the
**Enable** checkbox to enable the plugin.

![../../../_images/installing_plugins_project_settings.webp](../../../_images/installing_plugins_project_settings.webp)

You can use the plugin immediately after enabling it; there's no need to restart
the editor. Likewise, disabling a plugin can be done without having to restart
the editor.

[Previous](index.md "Editor plugins") [Next](making_plugins.md "Making plugins")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Editor plugins") [Next](making_plugins.md "Making plugins")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).