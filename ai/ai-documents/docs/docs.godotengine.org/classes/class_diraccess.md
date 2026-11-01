---
title: DirAccess — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_diraccess.html
crawled_at: "2026-08-13T10:30:54+12:00"
content_hash: 1462cb996f1f42568f9fe5a705921ef0a49bc98944cac54674a4bc8cfef27672
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - DirAccess

* * *

# DirAccess

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides methods for managing directories and their content.

## Description

This class is used to manage directories and their content, even outside of the project folder.

**DirAccess** can't be instantiated directly. Instead it is created with a static method that takes a path for which it will be opened.

Most of the methods have a static alternative that can be used without creating a **DirAccess**. Static methods only support absolute paths (including `res://` and `user://`).

```
# Standard
var dir = DirAccess.open("user://levels")
dir.make_dir("world1")
# Static
DirAccess.make_dir_absolute("user://levels/world1")

```

**Note:** Accessing project (" [res://](res://)") directories once exported may behave unexpectedly as some files are converted to engine-specific formats and their original source files may not be present in the expected PCK package. Because of this, to access resources in an exported project, it is recommended to use [ResourceLoader](class_resourceloader.md#class-resourceloader) instead of [FileAccess](class_fileaccess.md#class-fileaccess).

Here is an example on how to iterate through the files of a directory:

GDScriptC#

```
func dir_contents(path):
    var dir = DirAccess.open(path)
    if dir:
        dir.list_dir_begin()
        var file_name = dir.get_next()
        while file_name != "":
            if dir.current_is_dir():
                print("Found directory: " + file_name)
            else:
                print("Found file: " + file_name)
            file_name = dir.get_next()
    else:
        print("An error occurred when trying to access the path.")

```

```
public void DirContents(string path)
{
    using var dir = DirAccess.Open(path);
    if (dir != null)
    {
        dir.ListDirBegin();
        string fileName = dir.GetNext();
        while (fileName != "")
        {
            if (dir.CurrentIsDir())
            {
                GD.Print($"Found directory: {fileName}");
            }
            else
            {
                GD.Print($"Found file: {fileName}");
            }
            fileName = dir.GetNext();
        }
    }
    else
    {
        GD.Print("An error occurred when trying to access the path.");
    }
}

```

Keep in mind that file names may change or be remapped after export. If you want to see the actual resource file list as it appears in the editor, use [ResourceLoader.list\_directory()](class_resourceloader.md#class-resourceloader-method-list-directory) instead.

## Tutorials

- [File system](../tutorials/scripting/filesystem.md)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [include\_hidden](#class-diraccess-property-include-hidden) |
| [bool](class_bool.md#class-bool) | [include\_navigational](#class-diraccess-property-include-navigational) |

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [change\_dir](#class-diraccess-method-change-dir)(to\_dir: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [copy](#class-diraccess-method-copy)(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string), chmod\_flags: [int](class_int.md#class-int) = -1) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [copy\_absolute](#class-diraccess-method-copy-absolute)(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string), chmod\_flags: [int](class_int.md#class-int) = -1) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create\_link](#class-diraccess-method-create-link)(source: [String](class_string.md#class-string), target: [String](class_string.md#class-string)) |
| [DirAccess](#class-diraccess) | [create\_temp](#class-diraccess-method-create-temp)(prefix: [String](class_string.md#class-string) = "", keep: [bool](class_bool.md#class-bool) = false) static |
| [bool](class_bool.md#class-bool) | [current\_is\_dir](#class-diraccess-method-current-is-dir)() const |
| [bool](class_bool.md#class-bool) | [dir\_exists](#class-diraccess-method-dir-exists)(path: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [dir\_exists\_absolute](#class-diraccess-method-dir-exists-absolute)(path: [String](class_string.md#class-string)) static |
| [bool](class_bool.md#class-bool) | [file\_exists](#class-diraccess-method-file-exists)(path: [String](class_string.md#class-string)) |
| [String](class_string.md#class-string) | [get\_current\_dir](#class-diraccess-method-get-current-dir)(include\_drive: [bool](class_bool.md#class-bool) = true) const |
| [int](class_int.md#class-int) | [get\_current\_drive](#class-diraccess-method-get-current-drive)() |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_directories](#class-diraccess-method-get-directories)() |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_directories\_at](#class-diraccess-method-get-directories-at)(path: [String](class_string.md#class-string)) static |
| [int](class_int.md#class-int) | [get\_drive\_count](#class-diraccess-method-get-drive-count)() static |
| [String](class_string.md#class-string) | [get\_drive\_name](#class-diraccess-method-get-drive-name)(idx: [int](class_int.md#class-int)) static |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_files](#class-diraccess-method-get-files)() |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_files\_at](#class-diraccess-method-get-files-at)(path: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [get\_filesystem\_type](#class-diraccess-method-get-filesystem-type)() const |
| [String](class_string.md#class-string) | [get\_next](#class-diraccess-method-get-next)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [get\_open\_error](#class-diraccess-method-get-open-error)() static |
| [int](class_int.md#class-int) | [get\_space\_left](#class-diraccess-method-get-space-left)() |
| [bool](class_bool.md#class-bool) | [is\_bundle](#class-diraccess-method-is-bundle)(path: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_case\_sensitive](#class-diraccess-method-is-case-sensitive)(path: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_equivalent](#class-diraccess-method-is-equivalent)(path\_a: [String](class_string.md#class-string), path\_b: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_link](#class-diraccess-method-is-link)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [list\_dir\_begin](#class-diraccess-method-list-dir-begin)() |
| void | [list\_dir\_end](#class-diraccess-method-list-dir-end)() |
| [Error](class_@globalscope.md#enum-globalscope-error) | [make\_dir](#class-diraccess-method-make-dir)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [make\_dir\_absolute](#class-diraccess-method-make-dir-absolute)(path: [String](class_string.md#class-string)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [make\_dir\_recursive](#class-diraccess-method-make-dir-recursive)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [make\_dir\_recursive\_absolute](#class-diraccess-method-make-dir-recursive-absolute)(path: [String](class_string.md#class-string)) static |
| [DirAccess](#class-diraccess) | [open](#class-diraccess-method-open)(path: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [read\_link](#class-diraccess-method-read-link)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [remove](#class-diraccess-method-remove)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [remove\_absolute](#class-diraccess-method-remove-absolute)(path: [String](class_string.md#class-string)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [rename](#class-diraccess-method-rename)(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [rename\_absolute](#class-diraccess-method-rename-absolute)(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string)) static |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **include\_hidden** [🔗](#class-diraccess-property-include-hidden)

- void **set\_include\_hidden**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_include\_hidden**()


If `true`, hidden files are included when navigating the directory.

Affects [list\_dir\_begin()](#class-diraccess-method-list-dir-begin), [get\_directories()](#class-diraccess-method-get-directories) and [get\_files()](#class-diraccess-method-get-files).

* * *

[bool](class_bool.md#class-bool) **include\_navigational** [🔗](#class-diraccess-property-include-navigational)

- void **set\_include\_navigational**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_include\_navigational**()


If `true`, `.` and `..` are included when navigating the directory.

Affects [list\_dir\_begin()](#class-diraccess-method-list-dir-begin) and [get\_directories()](#class-diraccess-method-get-directories).

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **change\_dir**(to\_dir: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-change-dir)

Changes the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

**Note:** The new directory must be within the same scope, e.g. when you had opened a directory inside `res://`, you can't change it to `user://` directory. If you need to open a directory in another access scope, use [open()](#class-diraccess-method-open) to create a new instance instead.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **copy**(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string), chmod\_flags: [int](class_int.md#class-int) = -1) [🔗](#class-diraccess-method-copy)

Copies the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.

If `chmod_flags` is different than `-1`, the Unix permissions for the destination path will be set to the provided value, if available on the current operating system.

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **copy\_absolute**(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string), chmod\_flags: [int](class_int.md#class-int) = -1) static [🔗](#class-diraccess-method-copy-absolute)

Static version of [copy()](#class-diraccess-method-copy). Supports only absolute paths.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **create\_link**(source: [String](class_string.md#class-string), target: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-create-link)

Creates symbolic link between files or folders.

**Note:** On Windows, this method works only if the application is running with elevated privileges or Developer Mode is enabled.

**Note:** This method is implemented on macOS, Linux, and Windows.

* * *

[DirAccess](#class-diraccess) **create\_temp**(prefix: [String](class_string.md#class-string) = "", keep: [bool](class_bool.md#class-bool) = false) static [🔗](#class-diraccess-method-create-temp)

Creates a temporary directory. This directory will be freed when the returned **DirAccess** is freed.

If `prefix` is not empty, it will be prefixed to the directory name, separated by a `-`.

If `keep` is `true`, the directory is not deleted when the returned **DirAccess** is freed.

Returns `null` if opening the directory failed. You can use [get\_open\_error()](#class-diraccess-method-get-open-error) to check the error that occurred.

* * *

[bool](class_bool.md#class-bool) **current\_is\_dir**() const [🔗](#class-diraccess-method-current-is-dir)

Returns whether the current item processed with the last [get\_next()](#class-diraccess-method-get-next) call is a directory ( `.` and `..` are considered directories).

* * *

[bool](class_bool.md#class-bool) **dir\_exists**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-dir-exists)

Returns whether the target directory exists. The argument can be relative to the current directory, or an absolute path.

**Note:** The returned [bool](class_bool.md#class-bool) in the editor and after exporting when used on a path in the `res://` directory may be different. Some files are converted to engine-specific formats when exported, potentially changing the directory structure.

* * *

[bool](class_bool.md#class-bool) **dir\_exists\_absolute**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-dir-exists-absolute)

Static version of [dir\_exists()](#class-diraccess-method-dir-exists). Supports only absolute paths.

**Note:** The returned [bool](class_bool.md#class-bool) in the editor and after exporting when used on a path in the `res://` directory may be different. Some files are converted to engine-specific formats when exported, potentially changing the directory structure.

* * *

[bool](class_bool.md#class-bool) **file\_exists**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-file-exists)

Returns whether the target file exists. The argument can be relative to the current directory, or an absolute path.

For a static equivalent, use [FileAccess.file\_exists()](class_fileaccess.md#class-fileaccess-method-file-exists).

**Note:** Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. See [ResourceLoader.exists()](class_resourceloader.md#class-resourceloader-method-exists) for an alternative approach that takes resource remapping into account.

* * *

[String](class_string.md#class-string) **get\_current\_dir**(include\_drive: [bool](class_bool.md#class-bool) = true) const [🔗](#class-diraccess-method-get-current-dir)

Returns the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).

* * *

[int](class_int.md#class-int) **get\_current\_drive**() [🔗](#class-diraccess-method-get-current-drive)

Returns the currently opened directory's drive index. See [get\_drive\_name()](#class-diraccess-method-get-drive-name) to convert returned index to the name of the drive.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_directories**() [🔗](#class-diraccess-method-get-directories)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) containing filenames of the directory contents, excluding files. The array is sorted alphabetically.

Affected by [include\_hidden](#class-diraccess-property-include-hidden) and [include\_navigational](#class-diraccess-property-include-navigational).

**Note:** The returned directories in the editor and after exporting in the `res://` directory may differ as some files are converted to engine-specific formats when exported.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_directories\_at**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-get-directories-at)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) containing filenames of the directory contents, excluding files, at the given `path`. The array is sorted alphabetically.

Use [get\_directories()](#class-diraccess-method-get-directories) if you want more control of what gets included.

**Note:** The returned directories in the editor and after exporting in the `res://` directory may differ as some files are converted to engine-specific formats when exported.

* * *

[int](class_int.md#class-int) **get\_drive\_count**() static [🔗](#class-diraccess-method-get-drive-count)

On Windows, returns the number of drives (partitions) mounted on the current filesystem.

On macOS and Android, returns the number of mounted volumes.

On Linux, returns the number of mounted volumes and GTK 3 bookmarks.

On other platforms, the method returns 0.

* * *

[String](class_string.md#class-string) **get\_drive\_name**(idx: [int](class_int.md#class-int)) static [🔗](#class-diraccess-method-get-drive-name)

On Windows, returns the name of the drive (partition) passed as an argument (e.g. `C:`).

On macOS, returns the path to the mounted volume passed as an argument.

On Linux, returns the path to the mounted volume or GTK 3 bookmark passed as an argument.

On Android (API level 30+), returns the path to the mounted volume as an argument.

On other platforms, or if the requested drive does not exist, the method returns an empty String.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_files**() [🔗](#class-diraccess-method-get-files)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) containing filenames of the directory contents, excluding directories. The array is sorted alphabetically.

Affected by [include\_hidden](#class-diraccess-property-include-hidden).

**Note:** When used on a `res://` path in an exported project, only the files actually included in the PCK at the given folder level are returned. In practice, this means that since imported resources are stored in a top-level `.godot/` folder, only paths to `*.gd` and `*.import` files are returned (plus a few files such as `project.godot` or `project.binary` and the project icon). In an exported project, the list of returned files will also vary depending on whether [ProjectSettings.editor/export/convert\_text\_resources\_to\_binary](class_projectsettings.md#class-projectsettings-property-editor-export-convert-text-resources-to-binary) is `true`.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_files\_at**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-get-files-at)

Returns a [PackedStringArray](class_packedstringarray.md#class-packedstringarray) containing filenames of the directory contents, excluding directories, at the given `path`. The array is sorted alphabetically.

Use [get\_files()](#class-diraccess-method-get-files) if you want more control of what gets included.

**Note:** When used on a `res://` path in an exported project, only the files included in the PCK at the given folder level are returned. In practice, this means that since imported resources are stored in a top-level `.godot/` folder, only paths to `.gd` and `.import` files are returned (plus a few other files, such as `project.godot` or `project.binary` and the project icon). In an exported project, the list of returned files will also vary depending on [ProjectSettings.editor/export/convert\_text\_resources\_to\_binary](class_projectsettings.md#class-projectsettings-property-editor-export-convert-text-resources-to-binary).

* * *

[String](class_string.md#class-string) **get\_filesystem\_type**() const [🔗](#class-diraccess-method-get-filesystem-type)

Returns file system type name of the current directory's disk. Returned values are uppercase strings like `NTFS`, `FAT32`, `EXFAT`, `APFS`, `EXT4`, `BTRFS`, and so on.

**Note:** This method is implemented on macOS, Linux, Windows and for PCK virtual file system.

* * *

[String](class_string.md#class-string) **get\_next**() [🔗](#class-diraccess-method-get-next)

Returns the next element (file or directory) in the current directory.

The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty [String](class_string.md#class-string) and closes the stream automatically (i.e. [list\_dir\_end()](#class-diraccess-method-list-dir-end) would not be mandatory in such a case).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **get\_open\_error**() static [🔗](#class-diraccess-method-get-open-error)

Returns the result of the last [open()](#class-diraccess-method-open) call in the current thread.

* * *

[int](class_int.md#class-int) **get\_space\_left**() [🔗](#class-diraccess-method-get-space-left)

Returns the available space on the current directory's disk, in bytes. Returns `0` if the platform-specific method to query the available space fails.

* * *

[bool](class_bool.md#class-bool) **is\_bundle**(path: [String](class_string.md#class-string)) const [🔗](#class-diraccess-method-is-bundle)

Returns `true` if the directory is a macOS bundle.

**Note:** This method is implemented on macOS.

* * *

[bool](class_bool.md#class-bool) **is\_case\_sensitive**(path: [String](class_string.md#class-string)) const [🔗](#class-diraccess-method-is-case-sensitive)

Returns `true` if the file system or directory use case sensitive file names.

**Note:** This method is implemented on macOS, Linux (for EXT4 and F2FS filesystems only) and Windows. On other platforms, it always returns `true`.

* * *

[bool](class_bool.md#class-bool) **is\_equivalent**(path\_a: [String](class_string.md#class-string), path\_b: [String](class_string.md#class-string)) const [🔗](#class-diraccess-method-is-equivalent)

Returns `true` if paths `path_a` and `path_b` resolve to the same file system object. Returns `false` otherwise, even if the files are bit-for-bit identical (e.g., identical copies of the file that are not symbolic links).

* * *

[bool](class_bool.md#class-bool) **is\_link**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-is-link)

Returns `true` if the file or directory is a symbolic link, directory junction, or other reparse point.

**Note:** This method is implemented on macOS, Linux, and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **list\_dir\_begin**() [🔗](#class-diraccess-method-list-dir-begin)

Initializes the stream used to list all files and directories using the [get\_next()](#class-diraccess-method-get-next) function, closing the currently opened stream if needed. Once the stream has been processed, it should typically be closed with [list\_dir\_end()](#class-diraccess-method-list-dir-end).

Affected by [include\_hidden](#class-diraccess-property-include-hidden) and [include\_navigational](#class-diraccess-property-include-navigational).

**Note:** The order of files and directories returned by this method is not deterministic, and can vary between operating systems. If you want a list of all files or folders sorted alphabetically, use [get\_files()](#class-diraccess-method-get-files) or [get\_directories()](#class-diraccess-method-get-directories).

* * *

void **list\_dir\_end**() [🔗](#class-diraccess-method-list-dir-end)

Closes the current stream opened with [list\_dir\_begin()](#class-diraccess-method-list-dir-begin) (whether it has been fully processed with [get\_next()](#class-diraccess-method-get-next) does not matter).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **make\_dir**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-make-dir)

Creates a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see [make\_dir\_recursive()](#class-diraccess-method-make-dir-recursive)).

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **make\_dir\_absolute**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-make-dir-absolute)

Static version of [make\_dir()](#class-diraccess-method-make-dir). Supports only absolute paths.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **make\_dir\_recursive**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-make-dir-recursive)

Creates a target directory and all necessary intermediate directories in its path, by calling [make\_dir()](#class-diraccess-method-make-dir) recursively. The argument can be relative to the current directory, or an absolute path.

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **make\_dir\_recursive\_absolute**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-make-dir-recursive-absolute)

Static version of [make\_dir\_recursive()](#class-diraccess-method-make-dir-recursive). Supports only absolute paths.

* * *

[DirAccess](#class-diraccess) **open**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-open)

Creates a new **DirAccess** object and opens an existing directory of the filesystem. The `path` argument can be within the project tree ( `res://folder`), the user directory ( `user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).

Returns `null` if opening the directory failed. You can use [get\_open\_error()](#class-diraccess-method-get-open-error) to check the error that occurred.

* * *

[String](class_string.md#class-string) **read\_link**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-read-link)

Returns target of the symbolic link.

**Note:** This method is implemented on macOS, Linux, and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **remove**(path: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-remove)

Permanently deletes the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.

If you don't want to delete the file/directory permanently, use [OS.move\_to\_trash()](class_os.md#class-os-method-move-to-trash) instead.

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **remove\_absolute**(path: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-remove-absolute)

Static version of [remove()](#class-diraccess-method-remove). Supports only absolute paths.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **rename**(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string)) [🔗](#class-diraccess-method-rename)

Renames (move) the `from` file or directory to the `to` destination. Both arguments should be paths to files or directories, either relative or absolute. If the destination file or directory exists and is not access-protected, it will be overwritten.

Returns one of the [Error](class_@globalscope.md#enum-globalscope-error) code constants ( [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **rename\_absolute**(from: [String](class_string.md#class-string), to: [String](class_string.md#class-string)) static [🔗](#class-diraccess-method-rename-absolute)

Static version of [rename()](#class-diraccess-method-rename). Supports only absolute paths.

[Previous](class_crypto.md "Crypto") [Next](class_displayserver.md "DisplayServer")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_crypto.md "Crypto") [Next](class_displayserver.md "DisplayServer")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).