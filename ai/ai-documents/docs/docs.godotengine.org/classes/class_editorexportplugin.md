---
title: EditorExportPlugin — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplugin.html
crawled_at: "2026-08-13T10:28:41+12:00"
content_hash: 6f107e7ea4829db04c8302a0922866592bac78e091825c7d6570ea067b7dd70d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlugin

* * *

# EditorExportPlugin

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A script that is executed when exporting the project.

## Description

**EditorExportPlugin** s are automatically invoked whenever the user exports the project. Their most common use is to determine what files are being included in the exported project. For each plugin, [\_export\_begin()](#class-editorexportplugin-private-method-export-begin) is called at the beginning of the export process and then [\_export\_file()](#class-editorexportplugin-private-method-export-file) is called for each exported file.

To use **EditorExportPlugin**, register it using the [EditorPlugin.add\_export\_plugin()](class_editorplugin.md#class-editorplugin-method-add-export-plugin) method first.

## Tutorials

- [Export Android plugins](../tutorials/platform/android/android_plugin.md)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_begin\_customize\_resources](#class-editorexportplugin-private-method-begin-customize-resources)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_begin\_customize\_scenes](#class-editorexportplugin-private-method-begin-customize-scenes)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst |
| [Resource](class_resource.md#class-resource) | [\_customize\_resource](#class-editorexportplugin-private-method-customize-resource)(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string)) virtualrequired |
| [Node](class_node.md#class-node) | [\_customize\_scene](#class-editorexportplugin-private-method-customize-scene)(scene: [Node](class_node.md#class-node), path: [String](class_string.md#class-string)) virtualrequired |
| void | [\_end\_customize\_resources](#class-editorexportplugin-private-method-end-customize-resources)() virtual |
| void | [\_end\_customize\_scenes](#class-editorexportplugin-private-method-end-customize-scenes)() virtual |
| void | [\_export\_begin](#class-editorexportplugin-private-method-export-begin)(features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), is\_debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int)) virtual |
| void | [\_export\_end](#class-editorexportplugin-private-method-export-end)() virtual |
| void | [\_export\_file](#class-editorexportplugin-private-method-export-file)(path: [String](class_string.md#class-string), type: [String](class_string.md#class-string), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_android\_dependencies](#class-editorexportplugin-private-method-get-android-dependencies)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_android\_dependencies\_maven\_repos](#class-editorexportplugin-private-method-get-android-dependencies-maven-repos)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_android\_libraries](#class-editorexportplugin-private-method-get-android-libraries)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_android\_manifest\_activity\_element\_contents](#class-editorexportplugin-private-method-get-android-manifest-activity-element-contents)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_android\_manifest\_application\_element\_contents](#class-editorexportplugin-private-method-get-android-manifest-application-element-contents)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_android\_manifest\_element\_contents](#class-editorexportplugin-private-method-get-android-manifest-element-contents)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [int](class_int.md#class-int) | [\_get\_customization\_configuration\_hash](#class-editorexportplugin-private-method-get-customization-configuration-hash)() virtualrequiredconst |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [\_get\_export\_features](#class-editorexportplugin-private-method-get-export-features)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_get\_export\_option\_visibility](#class-editorexportplugin-private-method-get-export-option-visibility)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), option: [String](class_string.md#class-string)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_export\_option\_warning](#class-editorexportplugin-private-method-get-export-option-warning)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), option: [String](class_string.md#class-string)) virtualconst |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_export\_options](#class-editorexportplugin-private-method-get-export-options)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst |
| [Dictionary](class_dictionary.md#class-dictionary) | [\_get\_export\_options\_overrides](#class-editorexportplugin-private-method-get-export-options-overrides)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst |
| [String](class_string.md#class-string) | [\_get\_name](#class-editorexportplugin-private-method-get-name)() virtualrequiredconst |
| [bool](class_bool.md#class-bool) | [\_should\_update\_export\_options](#class-editorexportplugin-private-method-should-update-export-options)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst |
| [bool](class_bool.md#class-bool) | [\_supports\_platform](#class-editorexportplugin-private-method-supports-platform)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [\_update\_android\_prebuilt\_manifest](#class-editorexportplugin-private-method-update-android-prebuilt-manifest)(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), manifest\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtualconst |
| void | [add\_apple\_embedded\_platform\_bundle\_file](#class-editorexportplugin-method-add-apple-embedded-platform-bundle-file)(path: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_cpp\_code](#class-editorexportplugin-method-add-apple-embedded-platform-cpp-code)(code: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_embedded\_framework](#class-editorexportplugin-method-add-apple-embedded-platform-embedded-framework)(path: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_framework](#class-editorexportplugin-method-add-apple-embedded-platform-framework)(path: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_linker\_flags](#class-editorexportplugin-method-add-apple-embedded-platform-linker-flags)(flags: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_plist\_content](#class-editorexportplugin-method-add-apple-embedded-platform-plist-content)(plist\_content: [String](class_string.md#class-string)) |
| void | [add\_apple\_embedded\_platform\_project\_static\_lib](#class-editorexportplugin-method-add-apple-embedded-platform-project-static-lib)(path: [String](class_string.md#class-string)) |
| void | [add\_file](#class-editorexportplugin-method-add-file)(path: [String](class_string.md#class-string), file: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), remap: [bool](class_bool.md#class-bool)) |
| void | [add\_ios\_bundle\_file](#class-editorexportplugin-method-add-ios-bundle-file)(path: [String](class_string.md#class-string)) |
| void | [add\_ios\_cpp\_code](#class-editorexportplugin-method-add-ios-cpp-code)(code: [String](class_string.md#class-string)) |
| void | [add\_ios\_embedded\_framework](#class-editorexportplugin-method-add-ios-embedded-framework)(path: [String](class_string.md#class-string)) |
| void | [add\_ios\_framework](#class-editorexportplugin-method-add-ios-framework)(path: [String](class_string.md#class-string)) |
| void | [add\_ios\_linker\_flags](#class-editorexportplugin-method-add-ios-linker-flags)(flags: [String](class_string.md#class-string)) |
| void | [add\_ios\_plist\_content](#class-editorexportplugin-method-add-ios-plist-content)(plist\_content: [String](class_string.md#class-string)) |
| void | [add\_ios\_project\_static\_lib](#class-editorexportplugin-method-add-ios-project-static-lib)(path: [String](class_string.md#class-string)) |
| void | [add\_macos\_plugin\_file](#class-editorexportplugin-method-add-macos-plugin-file)(path: [String](class_string.md#class-string)) |
| void | [add\_shared\_object](#class-editorexportplugin-method-add-shared-object)(path: [String](class_string.md#class-string), tags: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), target: [String](class_string.md#class-string)) |
| [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) | [get\_export\_platform](#class-editorexportplugin-method-get-export-platform)() const |
| [EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) | [get\_export\_preset](#class-editorexportplugin-method-get-export-preset)() const |
| [Variant](class_variant.md#class-variant) | [get\_option](#class-editorexportplugin-method-get-option)(name: [StringName](class_stringname.md#class-stringname)) const |
| void | [skip](#class-editorexportplugin-method-skip)() |

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_begin\_customize\_resources**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst [🔗](#class-editorexportplugin-private-method-begin-customize-resources)

Return `true` if this plugin will customize resources based on the platform and features used.

When enabled, [\_get\_customization\_configuration\_hash()](#class-editorexportplugin-private-method-get-customization-configuration-hash) and [\_customize\_resource()](#class-editorexportplugin-private-method-customize-resource) will be called and must be implemented.

* * *

[bool](class_bool.md#class-bool) **\_begin\_customize\_scenes**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtualconst [🔗](#class-editorexportplugin-private-method-begin-customize-scenes)

Return `true` if this plugin will customize scenes based on the platform and features used.

When enabled, [\_get\_customization\_configuration\_hash()](#class-editorexportplugin-private-method-get-customization-configuration-hash) and [\_customize\_scene()](#class-editorexportplugin-private-method-customize-scene) will be called and must be implemented.

**Note:** [\_customize\_scene()](#class-editorexportplugin-private-method-customize-scene) will only be called for scenes that have been modified since the last export.

* * *

[Resource](class_resource.md#class-resource) **\_customize\_resource**(resource: [Resource](class_resource.md#class-resource), path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorexportplugin-private-method-customize-resource)

Customize a resource. If changes are made to it, return the same or a new resource. Otherwise, return `null`. When a new resource is returned, `resource` will be replaced by a copy of the new resource.

The `path` argument is only used when customizing an actual file, otherwise this means that this resource is part of another one and it will be empty.

Implementing this method is required if [\_begin\_customize\_resources()](#class-editorexportplugin-private-method-begin-customize-resources) returns `true`.

**Note:** When customizing any of the following types and returning another resource, the other resource should not be skipped using [skip()](#class-editorexportplugin-method-skip) in [\_export\_file()](#class-editorexportplugin-private-method-export-file):

- [AtlasTexture](class_atlastexture.md#class-atlastexture)

- [CompressedCubemap](class_compressedcubemap.md#class-compressedcubemap)

- [CompressedCubemapArray](class_compressedcubemaparray.md#class-compressedcubemaparray)

- [CompressedTexture2D](class_compressedtexture2d.md#class-compressedtexture2d)

- [CompressedTexture2DArray](class_compressedtexture2darray.md#class-compressedtexture2darray)

- [CompressedTexture3D](class_compressedtexture3d.md#class-compressedtexture3d)


* * *

[Node](class_node.md#class-node) **\_customize\_scene**(scene: [Node](class_node.md#class-node), path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorexportplugin-private-method-customize-scene)

Customize a scene. If changes are made to it, return the same or a new scene. Otherwise, return `null`. If a new scene is returned, it is up to you to dispose of the old one.

Implementing this method is required if [\_begin\_customize\_scenes()](#class-editorexportplugin-private-method-begin-customize-scenes) returns `true`.

* * *

void **\_end\_customize\_resources**() virtual [🔗](#class-editorexportplugin-private-method-end-customize-resources)

This is called when the customization process for resources ends.

* * *

void **\_end\_customize\_scenes**() virtual [🔗](#class-editorexportplugin-private-method-end-customize-scenes)

This is called when the customization process for scenes ends.

* * *

void **\_export\_begin**(features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), is\_debug: [bool](class_bool.md#class-bool), path: [String](class_string.md#class-string), flags: [int](class_int.md#class-int)) virtual [🔗](#class-editorexportplugin-private-method-export-begin)

Virtual method to be overridden by the user. It is called when the export starts and provides all information about the export. `features` is the list of features for the export, `is_debug` is `true` for debug builds, `path` is the target path for the exported project. `flags` is only used when running a runnable profile, e.g. when using native run on Android.

* * *

void **\_export\_end**() virtual [🔗](#class-editorexportplugin-private-method-export-end)

Virtual method to be overridden by the user. Called when the export is finished.

* * *

void **\_export\_file**(path: [String](class_string.md#class-string), type: [String](class_string.md#class-string), features: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) virtual [🔗](#class-editorexportplugin-private-method-export-file)

Virtual method to be overridden by the user. Called for each exported file before [\_customize\_resource()](#class-editorexportplugin-private-method-customize-resource) and [\_customize\_scene()](#class-editorexportplugin-private-method-customize-scene). The arguments can be used to identify the file. `path` is the path of the file, `type` is the [Resource](class_resource.md#class-resource) represented by the file (e.g. [PackedScene](class_packedscene.md#class-packedscene)), and `features` is the list of features for the export.

Calling [skip()](#class-editorexportplugin-method-skip) inside this callback will make the file not included in the export.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_android\_dependencies**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-dependencies)

Virtual method to be overridden by the user. This is called to retrieve the set of Android dependencies provided by this plugin. Each returned Android dependency should have the format of an Android remote binary dependency: `org.godot.example:my-plugin:0.0.0`

For more information see [Android documentation on dependencies](https://developer.android.com/build/dependencies?agpversion=4.1#dependency-types).

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_android\_dependencies\_maven\_repos**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-dependencies-maven-repos)

Virtual method to be overridden by the user. This is called to retrieve the URLs of Maven repositories for the set of Android dependencies provided by this plugin.

For more information see [Gradle documentation on dependency management](https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo).

**Note:** Google's Maven repo and the Maven Central repo are already included by default.

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_android\_libraries**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-libraries)

Virtual method to be overridden by the user. This is called to retrieve the local paths of the Android libraries archive (AAR) files provided by this plugin.

**Note:** Relative paths **must** be relative to Godot's `res://addons/` directory. For example, an AAR file located under `res://addons/hello_world_plugin/HelloWorld.release.aar` can be returned as an absolute path using `res://addons/hello_world_plugin/HelloWorld.release.aar` or a relative path using `hello_world_plugin/HelloWorld.release.aar`.

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[String](class_string.md#class-string) **\_get\_android\_manifest\_activity\_element\_contents**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-manifest-activity-element-contents)

Virtual method to be overridden by the user. This is used at export time to update the contents of the `activity` element in the generated Android manifest.

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[String](class_string.md#class-string) **\_get\_android\_manifest\_application\_element\_contents**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-manifest-application-element-contents)

Virtual method to be overridden by the user. This is used at export time to update the contents of the `application` element in the generated Android manifest.

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[String](class_string.md#class-string) **\_get\_android\_manifest\_element\_contents**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-android-manifest-element-contents)

Virtual method to be overridden by the user. This is used at export time to update the contents of the `manifest` element in the generated Android manifest.

**Note:** Only supported on Android and requires [EditorExportPlatformAndroid.gradle\_build/use\_gradle\_build](class_editorexportplatformandroid.md#class-editorexportplatformandroid-property-gradle-build-use-gradle-build) to be enabled.

* * *

[int](class_int.md#class-int) **\_get\_customization\_configuration\_hash**() virtualrequiredconst [🔗](#class-editorexportplugin-private-method-get-customization-configuration-hash)

Return a hash based on the configuration passed (for both scenes and resources). This helps keep separate caches for separate export configurations.

Implementing this method is required if [\_begin\_customize\_resources()](#class-editorexportplugin-private-method-begin-customize-resources) returns `true`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **\_get\_export\_features**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), debug: [bool](class_bool.md#class-bool)) virtualconst [🔗](#class-editorexportplugin-private-method-get-export-features)

Return a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) of additional features this preset, for the given `platform`, should have.

* * *

[bool](class_bool.md#class-bool) **\_get\_export\_option\_visibility**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorexportplugin-private-method-get-export-option-visibility)

Validates `option` and returns the visibility for the specified `platform`. The default implementation returns `true` for all options.

* * *

[String](class_string.md#class-string) **\_get\_export\_option\_warning**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), option: [String](class_string.md#class-string)) virtualconst [🔗](#class-editorexportplugin-private-method-get-export-option-warning)

Check the requirements for the given `option` and return a non-empty warning string if they are not met.

**Note:** Use [get\_option()](#class-editorexportplugin-method-get-option) to check the value of the export options.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_export\_options**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst [🔗](#class-editorexportplugin-private-method-get-export-options)

Return a list of export options that can be configured for this export plugin.

Each element in the return value is a [Dictionary](class_dictionary.md#class-dictionary) with the following keys:

- `option`: A dictionary with the structure documented by [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list), but all keys are optional.

- `default_value`: The default value for this option.

- `update_visibility`: An optional boolean value. If set to `true`, the preset will emit [Object.property\_list\_changed](class_object.md#class-object-signal-property-list-changed) when the option is changed.


* * *

[Dictionary](class_dictionary.md#class-dictionary) **\_get\_export\_options\_overrides**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst [🔗](#class-editorexportplugin-private-method-get-export-options-overrides)

Return a [Dictionary](class_dictionary.md#class-dictionary) of override values for export options, that will be used instead of user-provided values. Overridden options will be hidden from the user interface.

```
class MyExportPlugin extends EditorExportPlugin:
    func _get_name() -> String:
        return "MyExportPlugin"

    func _supports_platform(platform) -> bool:
        if platform is EditorExportPlatformPC:
            # Run on all desktop platforms including Windows, MacOS and Linux.
            return true
        return false

    func _get_export_options_overrides(platform) -> Dictionary:
        # Override "Embed PCK" to always be enabled.
        return {
            "binary_format/embed_pck": true,
        }

```

* * *

[String](class_string.md#class-string) **\_get\_name**() virtualrequiredconst [🔗](#class-editorexportplugin-private-method-get-name)

Return the name identifier of this plugin (for future identification by the exporter). The plugins are sorted by name before exporting.

Implementing this method is required.

* * *

[bool](class_bool.md#class-bool) **\_should\_update\_export\_options**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst [🔗](#class-editorexportplugin-private-method-should-update-export-options)

Return `true` if the result of [\_get\_export\_options()](#class-editorexportplugin-private-method-get-export-options) has changed and the export options of the preset corresponding to `platform` should be updated.

* * *

[bool](class_bool.md#class-bool) **\_supports\_platform**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform)) virtualconst [🔗](#class-editorexportplugin-private-method-supports-platform)

Return `true` if the plugin supports the given `platform`.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **\_update\_android\_prebuilt\_manifest**(platform: [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform), manifest\_data: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) virtualconst [🔗](#class-editorexportplugin-private-method-update-android-prebuilt-manifest)

Provide access to the Android prebuilt manifest and allows the plugin to modify it if needed.

Implementers of this virtual method should take the binary manifest data from `manifest_data`, copy it, modify it, and then return it with the modifications.

If no modifications are needed, then an empty [PackedByteArray](class_packedbytearray.md#class-packedbytearray) should be returned.

* * *

void **add\_apple\_embedded\_platform\_bundle\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-bundle-file)

Adds an Apple embedded platform bundle file from the given `path` to the exported project.

* * *

void **add\_apple\_embedded\_platform\_cpp\_code**(code: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-cpp-code)

Adds C++ code to the Apple embedded platform export. The final code is created from the code appended by each active export plugin.

* * *

void **add\_apple\_embedded\_platform\_embedded\_framework**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-embedded-framework)

Adds a dynamic library (\*.dylib, \*.framework) to the Linking Phase in the Apple embedded platform's Xcode project and embeds it into the resulting binary.

**Note:** For static libraries (\*.a), this works in the same way as [add\_apple\_embedded\_platform\_framework()](#class-editorexportplugin-method-add-apple-embedded-platform-framework).

**Note:** This method should not be used for System libraries as they are already present on the device.

* * *

void **add\_apple\_embedded\_platform\_framework**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-framework)

Adds a static library (\*.a) or a dynamic library (\*.dylib, \*.framework) to the Linking Phase to the Apple embedded platform's Xcode project.

* * *

void **add\_apple\_embedded\_platform\_linker\_flags**(flags: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-linker-flags)

Adds linker flags for the Apple embedded platform export.

* * *

void **add\_apple\_embedded\_platform\_plist\_content**(plist\_content: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-plist-content)

Adds additional fields to the Apple embedded platform's project Info.plist file.

* * *

void **add\_apple\_embedded\_platform\_project\_static\_lib**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-apple-embedded-platform-project-static-lib)

Adds a static library from the given `path` to the Apple embedded platform project.

* * *

void **add\_file**(path: [String](class_string.md#class-string), file: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), remap: [bool](class_bool.md#class-bool)) [🔗](#class-editorexportplugin-method-add-file)

Adds a custom file to be exported. `path` is the virtual path that can be used to load the file, `file` is the binary data of the file.

When called inside [\_export\_file()](#class-editorexportplugin-private-method-export-file) and `remap` is `true`, the current file will not be exported, but instead remapped to this custom file. `remap` is ignored when called in other places.

`file` will not be imported, so consider using [\_customize\_resource()](#class-editorexportplugin-private-method-customize-resource) to remap imported resources.

* * *

void **add\_ios\_bundle\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-bundle-file)

**Deprecated:** Use [add\_apple\_embedded\_platform\_bundle\_file()](#class-editorexportplugin-method-add-apple-embedded-platform-bundle-file) instead.

Adds an iOS bundle file from the given `path` to the exported project.

* * *

void **add\_ios\_cpp\_code**(code: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-cpp-code)

**Deprecated:** Use [add\_apple\_embedded\_platform\_cpp\_code()](#class-editorexportplugin-method-add-apple-embedded-platform-cpp-code) instead.

Adds C++ code to the iOS export. The final code is created from the code appended by each active export plugin.

* * *

void **add\_ios\_embedded\_framework**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-embedded-framework)

**Deprecated:** Use [add\_apple\_embedded\_platform\_embedded\_framework()](#class-editorexportplugin-method-add-apple-embedded-platform-embedded-framework) instead.

Adds a dynamic library (\*.dylib, \*.framework) to Linking Phase in iOS's Xcode project and embeds it into resulting binary.

**Note:** For static libraries (\*.a), this works the in same way as [add\_apple\_embedded\_platform\_framework()](#class-editorexportplugin-method-add-apple-embedded-platform-framework).

**Note:** This method should not be used for System libraries as they are already present on the device.

* * *

void **add\_ios\_framework**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-framework)

**Deprecated:** Use [add\_apple\_embedded\_platform\_framework()](#class-editorexportplugin-method-add-apple-embedded-platform-framework) instead.

Adds a static library (\*.a) or a dynamic library (\*.dylib, \*.framework) to the Linking Phase to the iOS Xcode project.

* * *

void **add\_ios\_linker\_flags**(flags: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-linker-flags)

**Deprecated:** Use [add\_apple\_embedded\_platform\_linker\_flags()](#class-editorexportplugin-method-add-apple-embedded-platform-linker-flags) instead.

Adds linker flags for the iOS export.

* * *

void **add\_ios\_plist\_content**(plist\_content: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-plist-content)

**Deprecated:** Use [add\_apple\_embedded\_platform\_plist\_content()](#class-editorexportplugin-method-add-apple-embedded-platform-plist-content) instead.

Adds additional fields to the iOS project Info.plist file.

* * *

void **add\_ios\_project\_static\_lib**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-ios-project-static-lib)

**Deprecated:** Use [add\_apple\_embedded\_platform\_project\_static\_lib()](#class-editorexportplugin-method-add-apple-embedded-platform-project-static-lib) instead.

Adds a static library from the given `path` to the iOS project.

* * *

void **add\_macos\_plugin\_file**(path: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-macos-plugin-file)

Adds file or directory matching `path` to `PlugIns` directory of macOS app bundle.

**Note:** This is useful only for macOS exports.

* * *

void **add\_shared\_object**(path: [String](class_string.md#class-string), tags: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), target: [String](class_string.md#class-string)) [🔗](#class-editorexportplugin-method-add-shared-object)

Adds a shared object or a directory containing only shared objects with the given `tags` and destination `path`.

**Note:** In case of macOS exports, those shared objects will be added to `Frameworks` directory of app bundle.

In case of a directory code-sign will error if you place non code object in directory.

* * *

[EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **get\_export\_platform**() const [🔗](#class-editorexportplugin-method-get-export-platform)

Returns currently used export platform.

* * *

[EditorExportPreset](class_editorexportpreset.md#class-editorexportpreset) **get\_export\_preset**() const [🔗](#class-editorexportplugin-method-get-export-preset)

Returns currently used export preset.

* * *

[Variant](class_variant.md#class-variant) **get\_option**(name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-editorexportplugin-method-get-option)

Returns the current value of an export option supplied by [\_get\_export\_options()](#class-editorexportplugin-private-method-get-export-options).

* * *

void **skip**() [🔗](#class-editorexportplugin-method-skip)

To be called inside [\_export\_file()](#class-editorexportplugin-private-method-export-file). Skips the current file, so it's not included in the export.

[Previous](class_editorexportplatformwindows.md "EditorExportPlatformWindows") [Next](class_editorexportpreset.md "EditorExportPreset")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformwindows.md "EditorExportPlatformWindows") [Next](class_editorexportpreset.md "EditorExportPreset")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).