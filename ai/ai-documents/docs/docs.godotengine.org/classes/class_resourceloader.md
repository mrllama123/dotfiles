---
title: ResourceLoader — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_resourceloader.html
crawled_at: "2026-08-13T10:31:49+12:00"
content_hash: d572c5ce7a702b1e29d30171a8974f4e99bb4720085673d7023706fe6aacb518
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ResourceLoader

* * *

# ResourceLoader

**Inherits:** [Object](class_object.md#class-object)

A singleton for loading resource files.

## Description

A singleton used to load resource files from the filesystem.

It uses the many [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader) classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.

**Note:** You have to import the files into the engine first to load them using [load()](#class-resourceloader-method-load). If you want to load [Image](class_image.md#class-image) s at run-time, you may use [Image.load()](class_image.md#class-image-method-load). If you want to import audio files, you can use the snippet described in [AudioStreamMP3.data](class_audiostreammp3.md#class-audiostreammp3-property-data).

**Note:** Non-resource files such as plain text files cannot be read using **ResourceLoader**. Use [FileAccess](class_fileaccess.md#class-fileaccess) for those files instead, and be aware that non-resource files are not exported by default (see notes in the [FileAccess](class_fileaccess.md#class-fileaccess) class description for instructions on exporting them).

## Tutorials

- [Operating System Testing Demo](https://godotengine.org/asset-library/asset/2789)


## Methods

|     |     |
| --- | --- |
| void | [add\_resource\_format\_loader](#class-resourceloader-method-add-resource-format-loader)(format\_loader: [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader), at\_front: [bool](class_bool.md#class-bool) = false) |
| [bool](class_bool.md#class-bool) | [exists](#class-resourceloader-method-exists)(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "") |
| [Resource](class_resource.md#class-resource) | [get\_cached\_ref](#class-resourceloader-method-get-cached-ref)(path: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_dependencies](#class-resourceloader-method-get-dependencies)(path: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_recognized\_extensions\_for\_type](#class-resourceloader-method-get-recognized-extensions-for-type)(type: [String](class_string.md#class-string)) |
| [int](class_int.md#class-int) | [get\_resource\_uid](#class-resourceloader-method-get-resource-uid)(path: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [has\_cached](#class-resourceloader-method-has-cached)(path: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [list\_directory](#class-resourceloader-method-list-directory)(directory\_path: [String](class_string.md#class-string)) |
| [Resource](class_resource.md#class-resource) | [load](#class-resourceloader-method-load)(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "", cache\_mode: [CacheMode](#enum-resourceloader-cachemode) = 1) |
| [Resource](class_resource.md#class-resource) | [load\_threaded\_get](#class-resourceloader-method-load-threaded-get)(path: [String](class_string.md#class-string)) |
| [ThreadLoadStatus](#enum-resourceloader-threadloadstatus) | [load\_threaded\_get\_status](#class-resourceloader-method-load-threaded-get-status)(path: [String](class_string.md#class-string), progress: [Array](class_array.md#class-array) = \[\]) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_threaded\_request](#class-resourceloader-method-load-threaded-request)(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "", use\_sub\_threads: [bool](class_bool.md#class-bool) = false, cache\_mode: [CacheMode](#enum-resourceloader-cachemode) = 1) |
| void | [remove\_resource\_format\_loader](#class-resourceloader-method-remove-resource-format-loader)(format\_loader: [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader)) |
| void | [set\_abort\_on\_missing\_resources](#class-resourceloader-method-set-abort-on-missing-resources)(abort: [bool](class_bool.md#class-bool)) |

* * *

## Enumerations

enum **ThreadLoadStatus**: [🔗](#enum-resourceloader-threadloadstatus)

[ThreadLoadStatus](#enum-resourceloader-threadloadstatus) **THREAD\_LOAD\_INVALID\_RESOURCE** = `0`

The resource is invalid, or has not been loaded with [load\_threaded\_request()](#class-resourceloader-method-load-threaded-request).

[ThreadLoadStatus](#enum-resourceloader-threadloadstatus) **THREAD\_LOAD\_IN\_PROGRESS** = `1`

The resource is still being loaded.

[ThreadLoadStatus](#enum-resourceloader-threadloadstatus) **THREAD\_LOAD\_FAILED** = `2`

Some error occurred during loading and it failed.

[ThreadLoadStatus](#enum-resourceloader-threadloadstatus) **THREAD\_LOAD\_LOADED** = `3`

The resource was loaded successfully and can be accessed via [load\_threaded\_get()](#class-resourceloader-method-load-threaded-get).

* * *

enum **CacheMode**: [🔗](#enum-resourceloader-cachemode)

[CacheMode](#enum-resourceloader-cachemode) **CACHE\_MODE\_IGNORE** = `0`

Neither the main resource (the one requested to be loaded) nor any of its subresources are retrieved from cache nor stored into it. Dependencies (external resources) are loaded with [CACHE\_MODE\_REUSE](#class-resourceloader-constant-cache-mode-reuse).

[CacheMode](#enum-resourceloader-cachemode) **CACHE\_MODE\_REUSE** = `1`

The main resource (the one requested to be loaded), its subresources, and its dependencies (external resources) are retrieved from cache if present, instead of loaded. Those not cached are loaded and then stored into the cache. The same rules are propagated recursively down the tree of dependencies (external resources).

[CacheMode](#enum-resourceloader-cachemode) **CACHE\_MODE\_REPLACE** = `2`

Like [CACHE\_MODE\_REUSE](#class-resourceloader-constant-cache-mode-reuse), but the cache is checked for the main resource (the one requested to be loaded) as well as for each of its subresources. Those already in the cache, as long as the loaded and cached types match, have their data refreshed from storage into the already existing instances. Otherwise, they are recreated as completely new objects.

[CacheMode](#enum-resourceloader-cachemode) **CACHE\_MODE\_IGNORE\_DEEP** = `3`

Like [CACHE\_MODE\_IGNORE](#class-resourceloader-constant-cache-mode-ignore), but propagated recursively down the tree of dependencies (external resources).

[CacheMode](#enum-resourceloader-cachemode) **CACHE\_MODE\_REPLACE\_DEEP** = `4`

Like [CACHE\_MODE\_REPLACE](#class-resourceloader-constant-cache-mode-replace), but propagated recursively down the tree of dependencies (external resources).

* * *

## Method Descriptions

void **add\_resource\_format\_loader**(format\_loader: [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader), at\_front: [bool](class_bool.md#class-bool) = false) [🔗](#class-resourceloader-method-add-resource-format-loader)

Registers a new [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader). The ResourceLoader will use the ResourceFormatLoader as described in [load()](#class-resourceloader-method-load).

This method is performed implicitly for ResourceFormatLoaders written in GDScript (see [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader) for more information).

* * *

[bool](class_bool.md#class-bool) **exists**(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "") [🔗](#class-resourceloader-method-exists)

Returns whether a recognized resource exists for the given `path`.

An optional `type_hint` can be used to further specify the [Resource](class_resource.md#class-resource) type that should be handled by the [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader). Anything that inherits from [Resource](class_resource.md#class-resource) can be used as a type hint, for example [Image](class_image.md#class-image).

**Note:** If you use [Resource.take\_over\_path()](class_resource.md#class-resource-method-take-over-path), this method will return `true` for the taken path even if the resource wasn't saved (i.e. exists only in resource cache).

* * *

[Resource](class_resource.md#class-resource) **get\_cached\_ref**(path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-get-cached-ref)

Returns the cached resource reference for the given `path`.

**Note:** If the resource is not cached, the returned [Resource](class_resource.md#class-resource) will be invalid.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_dependencies**(path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-get-dependencies)

Returns the dependencies for the resource at the given `path`.

Each dependency is a string that can be divided into sections by `::`. There can be either one section or three sections, with the second section always being empty. When there is one section, it contains the file path. When there are three sections, the first section contains the UID and the third section contains the fallback path.

```
for dependency in ResourceLoader.get_dependencies(path):
    if dependency.contains("::"):
        print(dependency.get_slice("::", 0)) # Prints the UID.
        print(dependency.get_slice("::", 2)) # Prints the fallback path.
    else:
        print(dependency) # Prints the path.

```

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_recognized\_extensions\_for\_type**(type: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-get-recognized-extensions-for-type)

Returns the list of recognized extensions for a resource type.

* * *

[int](class_int.md#class-int) **get\_resource\_uid**(path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-get-resource-uid)

Returns the ID associated with a given resource path, or `-1` when no such ID exists.

* * *

[bool](class_bool.md#class-bool) **has\_cached**(path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-has-cached)

Returns whether a cached resource is available for the given `path`.

Once a resource has been loaded by the engine, it is cached in memory for faster access, and future calls to the [load()](#class-resourceloader-method-load) method will use the cached version. The cached resource can be overridden by using [Resource.take\_over\_path()](class_resource.md#class-resource-method-take-over-path) on a new resource for that same path.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **list\_directory**(directory\_path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-list-directory)

Lists a directory, returning all resources and subdirectories contained within. The resource files have the original file names as visible in the editor before exporting. The directories have `"/"` appended.

```
# Prints ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
print(ResourceLoader.list_directory("res://assets/enemies/slime"))

```

**Note:** The order of files and directories returned by this method is not deterministic, and can vary between operating systems.

**Note:** To normally traverse the filesystem, see [DirAccess](class_diraccess.md#class-diraccess).

* * *

[Resource](class_resource.md#class-resource) **load**(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "", cache\_mode: [CacheMode](#enum-resourceloader-cachemode) = 1) [🔗](#class-resourceloader-method-load)

Loads a resource at the given `path`, caching the result for further access.

The registered [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader) s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.

An optional `type_hint` can be used to further specify the [Resource](class_resource.md#class-resource) type that should be handled by the [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader). Anything that inherits from [Resource](class_resource.md#class-resource) can be used as a type hint, for example [Image](class_image.md#class-image).

The `cache_mode` property defines whether and how the cache should be used or updated when loading the resource.

Returns an empty resource if no [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader) could handle the file, and prints an error if no file is found at the specified path.

GDScript has a simplified [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load) built-in method which can be used in most situations, leaving the use of **ResourceLoader** for more advanced scenarios.

**Note:** If [ProjectSettings.editor/export/convert\_text\_resources\_to\_binary](class_projectsettings.md#class-projectsettings-property-editor-export-convert-text-resources-to-binary) is `true`, [@GDScript.load()](class_@gdscript.md#class-gdscript-method-load) will not be able to read converted files in an exported project. If you rely on run-time loading of files present within the PCK, set [ProjectSettings.editor/export/convert\_text\_resources\_to\_binary](class_projectsettings.md#class-projectsettings-property-editor-export-convert-text-resources-to-binary) to `false`.

**Note:** Relative paths will be prefixed with `"res://"` before loading, to avoid unexpected results make sure your paths are absolute.

* * *

[Resource](class_resource.md#class-resource) **load\_threaded\_get**(path: [String](class_string.md#class-string)) [🔗](#class-resourceloader-method-load-threaded-get)

Returns the resource loaded by [load\_threaded\_request()](#class-resourceloader-method-load-threaded-request).

If this is called before the loading thread is done (i.e. [load\_threaded\_get\_status()](#class-resourceloader-method-load-threaded-get-status) is not [THREAD\_LOAD\_LOADED](#class-resourceloader-constant-thread-load-loaded)), the calling thread will be blocked until the resource has finished loading. However, it's recommended to use [load\_threaded\_get\_status()](#class-resourceloader-method-load-threaded-get-status) to known when the load has actually completed.

* * *

[ThreadLoadStatus](#enum-resourceloader-threadloadstatus) **load\_threaded\_get\_status**(path: [String](class_string.md#class-string), progress: [Array](class_array.md#class-array) = \[\]) [🔗](#class-resourceloader-method-load-threaded-get-status)

Returns the status of a threaded loading operation started with [load\_threaded\_request()](#class-resourceloader-method-load-threaded-request) for the resource at `path`.

An array variable can optionally be passed via `progress`, and will return a one-element array containing the ratio of completion of the threaded loading (between `0.0` and `1.0`).

**Note:** The recommended way of using this method is to call it during different frames (e.g., in [Node.\_process()](class_node.md#class-node-private-method-process), instead of a loop).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_threaded\_request**(path: [String](class_string.md#class-string), type\_hint: [String](class_string.md#class-string) = "", use\_sub\_threads: [bool](class_bool.md#class-bool) = false, cache\_mode: [CacheMode](#enum-resourceloader-cachemode) = 1) [🔗](#class-resourceloader-method-load-threaded-request)

Loads the resource using threads. If `use_sub_threads` is `true`, multiple threads will be used to load the resource, which makes loading faster, but may affect the main thread (and thus cause game slowdowns).

The `cache_mode` parameter defines whether and how the cache should be used or updated when loading the resource.

* * *

void **remove\_resource\_format\_loader**(format\_loader: [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader)) [🔗](#class-resourceloader-method-remove-resource-format-loader)

Unregisters the given [ResourceFormatLoader](class_resourceformatloader.md#class-resourceformatloader).

* * *

void **set\_abort\_on\_missing\_resources**(abort: [bool](class_bool.md#class-bool)) [🔗](#class-resourceloader-method-set-abort-on-missing-resources)

Changes the behavior on missing sub-resources. The default behavior is to abort loading.

[Previous](class_resourceimporterwav.md "ResourceImporterWAV") [Next](class_resourcesaver.md "ResourceSaver")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_resourceimporterwav.md "ResourceImporterWAV") [Next](class_resourcesaver.md "ResourceSaver")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).