---
title: FileAccess — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_fileaccess.html
crawled_at: "2026-08-13T10:42:50+12:00"
content_hash: 8a9d0caf36024bb0f65e3d290cfb9563aa1227f56e9230f6842747aee5120c28
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - FileAccess

* * *

# FileAccess

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Provides methods for file reading and writing operations.

## Description

This class can be used to permanently store data in the user device's file system and to read from it. This is useful for storing game save data or player configuration files.

**Example:** How to write and read from a file. The file named `"save_game.dat"` will be stored in the user data folder, as specified in the [Data paths](../tutorials/io/data_paths.md) documentation:

GDScriptC#

```
func save_to_file(content):
    var file = FileAccess.open("user://save_game.dat", FileAccess.WRITE)
    file.store_string(content)

func load_from_file():
    var file = FileAccess.open("user://save_game.dat", FileAccess.READ)
    var content = file.get_as_text()
    return content

```

```
public void SaveToFile(string content)
{
    using var file = FileAccess.Open("user://save_game.dat", FileAccess.ModeFlags.Write);
    file.StoreString(content);
}

public string LoadFromFile()
{
    using var file = FileAccess.Open("user://save_game.dat", FileAccess.ModeFlags.Read);
    string content = file.GetAsText();
    return content;
}

```

A **FileAccess** instance has its own file cursor, which is the position in bytes in the file where the next read/write operation will occur. Functions such as [get\_8()](#class-fileaccess-method-get-8), [get\_16()](#class-fileaccess-method-get-16), [store\_8()](#class-fileaccess-method-store-8), and [store\_16()](#class-fileaccess-method-store-16) will move the file cursor forward by the number of bytes read/written. The file cursor can be moved to a specific position using [seek()](#class-fileaccess-method-seek) or [seek\_end()](#class-fileaccess-method-seek-end), and its position can be retrieved using [get\_position()](#class-fileaccess-method-get-position).

A **FileAccess** instance will close its file when the instance is freed. Since it inherits [RefCounted](class_refcounted.md#class-refcounted), this happens automatically when it is no longer in use. [close()](#class-fileaccess-method-close) can be called to close it earlier. In C#, the reference must be disposed manually, which can be done with the `using` statement or by calling the `Dispose` method directly.

**Note:** To access project resources once exported, it is recommended to use [ResourceLoader](class_resourceloader.md#class-resourceloader) instead of **FileAccess**, as some files are converted to engine-specific formats and their original source files might not be present in the exported PCK package. If using **FileAccess**, make sure the file is included in the export by changing its import mode to **Keep File (exported as is)** in the Import dock, or, for files where this option is not available, change the non-resource export filter in the Export dialog to include the file's extension (e.g. `*.txt`).

**Note:** Files are automatically closed only if the process exits "normally" (such as by clicking the window manager's close button or pressing `Alt + F4`). If you stop the project execution by pressing `F8` while the project is running, the file won't be closed as the game process will be killed. You can work around this by calling [flush()](#class-fileaccess-method-flush) at regular intervals.

## Tutorials

- [File system](../tutorials/scripting/filesystem.md)

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [Binary serialization API](../tutorials/io/binary_serialization_api.md)

- [3D Voxel Demo](https://godotengine.org/asset-library/asset/2755)


## Properties

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [big\_endian](#class-fileaccess-property-big-endian) |

## Methods

|     |     |
| --- | --- |
| void | [close](#class-fileaccess-method-close)() |
| [FileAccess](#class-fileaccess) | [create\_temp](#class-fileaccess-method-create-temp)(mode\_flags: [int](class_int.md#class-int), prefix: [String](class_string.md#class-string) = "", extension: [String](class_string.md#class-string) = "", keep: [bool](class_bool.md#class-bool) = false) static |
| [bool](class_bool.md#class-bool) | [eof\_reached](#class-fileaccess-method-eof-reached)() const |
| [bool](class_bool.md#class-bool) | [file\_exists](#class-fileaccess-method-file-exists)(path: [String](class_string.md#class-string)) static |
| void | [flush](#class-fileaccess-method-flush)() |
| [int](class_int.md#class-int) | [get\_8](#class-fileaccess-method-get-8)() const |
| [int](class_int.md#class-int) | [get\_16](#class-fileaccess-method-get-16)() const |
| [int](class_int.md#class-int) | [get\_32](#class-fileaccess-method-get-32)() const |
| [int](class_int.md#class-int) | [get\_64](#class-fileaccess-method-get-64)() const |
| [int](class_int.md#class-int) | [get\_access\_time](#class-fileaccess-method-get-access-time)(file: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [get\_as\_text](#class-fileaccess-method-get-as-text)(skip\_cr: [bool](class_bool.md#class-bool) = false) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_buffer](#class-fileaccess-method-get-buffer)(length: [int](class_int.md#class-int)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_csv\_line](#class-fileaccess-method-get-csv-line)(delim: [String](class_string.md#class-string) = ",") const |
| [float](class_float.md#class-float) | [get\_double](#class-fileaccess-method-get-double)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [get\_error](#class-fileaccess-method-get-error)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_file\_as\_bytes](#class-fileaccess-method-get-file-as-bytes)(path: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [get\_file\_as\_string](#class-fileaccess-method-get-file-as-string)(path: [String](class_string.md#class-string)) static |
| [float](class_float.md#class-float) | [get\_float](#class-fileaccess-method-get-float)() const |
| [float](class_float.md#class-float) | [get\_half](#class-fileaccess-method-get-half)() const |
| [bool](class_bool.md#class-bool) | [get\_hidden\_attribute](#class-fileaccess-method-get-hidden-attribute)(file: [String](class_string.md#class-string)) static |
| [int](class_int.md#class-int) | [get\_length](#class-fileaccess-method-get-length)() const |
| [String](class_string.md#class-string) | [get\_line](#class-fileaccess-method-get-line)() const |
| [String](class_string.md#class-string) | [get\_md5](#class-fileaccess-method-get-md5)(path: [String](class_string.md#class-string)) static |
| [int](class_int.md#class-int) | [get\_modified\_time](#class-fileaccess-method-get-modified-time)(file: [String](class_string.md#class-string)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [get\_open\_error](#class-fileaccess-method-get-open-error)() static |
| [String](class_string.md#class-string) | [get\_pascal\_string](#class-fileaccess-method-get-pascal-string)() |
| [String](class_string.md#class-string) | [get\_path](#class-fileaccess-method-get-path)() const |
| [String](class_string.md#class-string) | [get\_path\_absolute](#class-fileaccess-method-get-path-absolute)() const |
| [int](class_int.md#class-int) | [get\_position](#class-fileaccess-method-get-position)() const |
| [bool](class_bool.md#class-bool) | [get\_read\_only\_attribute](#class-fileaccess-method-get-read-only-attribute)(file: [String](class_string.md#class-string)) static |
| [float](class_float.md#class-float) | [get\_real](#class-fileaccess-method-get-real)() const |
| [String](class_string.md#class-string) | [get\_sha256](#class-fileaccess-method-get-sha256)(path: [String](class_string.md#class-string)) static |
| [int](class_int.md#class-int) | [get\_size](#class-fileaccess-method-get-size)(file: [String](class_string.md#class-string)) static |
| BitField\[ [UnixPermissionFlags](#enum-fileaccess-unixpermissionflags)\] | [get\_unix\_permissions](#class-fileaccess-method-get-unix-permissions)(file: [String](class_string.md#class-string)) static |
| [Variant](class_variant.md#class-variant) | [get\_var](#class-fileaccess-method-get-var)(allow\_objects: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_open](#class-fileaccess-method-is-open)() const |
| [FileAccess](#class-fileaccess) | [open](#class-fileaccess-method-open)(path: [String](class_string.md#class-string), flags: [ModeFlags](#enum-fileaccess-modeflags)) static |
| [FileAccess](#class-fileaccess) | [open\_compressed](#class-fileaccess-method-open-compressed)(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), compression\_mode: [CompressionMode](#enum-fileaccess-compressionmode) = 0) static |
| [FileAccess](#class-fileaccess) | [open\_encrypted](#class-fileaccess-method-open-encrypted)(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), iv: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) static |
| [FileAccess](#class-fileaccess) | [open\_encrypted\_with\_pass](#class-fileaccess-method-open-encrypted-with-pass)(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), pass: [String](class_string.md#class-string)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [resize](#class-fileaccess-method-resize)(length: [int](class_int.md#class-int)) |
| void | [seek](#class-fileaccess-method-seek)(position: [int](class_int.md#class-int)) |
| void | [seek\_end](#class-fileaccess-method-seek-end)(position: [int](class_int.md#class-int) = 0) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_hidden\_attribute](#class-fileaccess-method-set-hidden-attribute)(file: [String](class_string.md#class-string), hidden: [bool](class_bool.md#class-bool)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_read\_only\_attribute](#class-fileaccess-method-set-read-only-attribute)(file: [String](class_string.md#class-string), ro: [bool](class_bool.md#class-bool)) static |
| [Error](class_@globalscope.md#enum-globalscope-error) | [set\_unix\_permissions](#class-fileaccess-method-set-unix-permissions)(file: [String](class_string.md#class-string), permissions: BitField\[ [UnixPermissionFlags](#enum-fileaccess-unixpermissionflags)\]) static |
| [bool](class_bool.md#class-bool) | [store\_8](#class-fileaccess-method-store-8)(value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [store\_16](#class-fileaccess-method-store-16)(value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [store\_32](#class-fileaccess-method-store-32)(value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [store\_64](#class-fileaccess-method-store-64)(value: [int](class_int.md#class-int)) |
| [bool](class_bool.md#class-bool) | [store\_buffer](#class-fileaccess-method-store-buffer)(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [bool](class_bool.md#class-bool) | [store\_csv\_line](#class-fileaccess-method-store-csv-line)(values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), delim: [String](class_string.md#class-string) = ",") |
| [bool](class_bool.md#class-bool) | [store\_double](#class-fileaccess-method-store-double)(value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [store\_float](#class-fileaccess-method-store-float)(value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [store\_half](#class-fileaccess-method-store-half)(value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [store\_line](#class-fileaccess-method-store-line)(line: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [store\_pascal\_string](#class-fileaccess-method-store-pascal-string)(string: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [store\_real](#class-fileaccess-method-store-real)(value: [float](class_float.md#class-float)) |
| [bool](class_bool.md#class-bool) | [store\_string](#class-fileaccess-method-store-string)(string: [String](class_string.md#class-string)) |
| [bool](class_bool.md#class-bool) | [store\_var](#class-fileaccess-method-store-var)(value: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) |

* * *

## Enumerations

enum **ModeFlags**: [🔗](#enum-fileaccess-modeflags)

[ModeFlags](#enum-fileaccess-modeflags) **READ** = `1`

Opens the file for read operations. The file cursor is positioned at the beginning of the file.

[ModeFlags](#enum-fileaccess-modeflags) **WRITE** = `2`

Opens the file for write operations. The file is created if it does not exist, and truncated if it does.

**Note:** When creating a file it must be in an already existing directory. To recursively create directories for a file path, see [DirAccess.make\_dir\_recursive()](class_diraccess.md#class-diraccess-method-make-dir-recursive).

[ModeFlags](#enum-fileaccess-modeflags) **READ\_WRITE** = `3`

Opens the file for read and write operations. Does not truncate the file. The file cursor is positioned at the beginning of the file.

[ModeFlags](#enum-fileaccess-modeflags) **WRITE\_READ** = `7`

Opens the file for read and write operations. The file is created if it does not exist, and truncated if it does. The file cursor is positioned at the beginning of the file.

**Note:** When creating a file it must be in an already existing directory. To recursively create directories for a file path, see [DirAccess.make\_dir\_recursive()](class_diraccess.md#class-diraccess-method-make-dir-recursive).

* * *

enum **CompressionMode**: [🔗](#enum-fileaccess-compressionmode)

[CompressionMode](#enum-fileaccess-compressionmode) **COMPRESSION\_FASTLZ** = `0`

Uses the [FastLZ](https://fastlz.org/) compression method.

[CompressionMode](#enum-fileaccess-compressionmode) **COMPRESSION\_DEFLATE** = `1`

Uses the [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) compression method.

[CompressionMode](#enum-fileaccess-compressionmode) **COMPRESSION\_ZSTD** = `2`

Uses the [Zstandard](https://facebook.github.io/zstd/) compression method.

[CompressionMode](#enum-fileaccess-compressionmode) **COMPRESSION\_GZIP** = `3`

Uses the [gzip](https://www.gzip.org/) compression method.

[CompressionMode](#enum-fileaccess-compressionmode) **COMPRESSION\_BROTLI** = `4`

Uses the [brotli](https://github.com/google/brotli) compression method (only decompression is supported).

* * *

flags **UnixPermissionFlags**: [🔗](#enum-fileaccess-unixpermissionflags)

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_READ\_OWNER** = `256`

Read for owner bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_WRITE\_OWNER** = `128`

Write for owner bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_EXECUTE\_OWNER** = `64`

Execute for owner bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_READ\_GROUP** = `32`

Read for group bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_WRITE\_GROUP** = `16`

Write for group bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_EXECUTE\_GROUP** = `8`

Execute for group bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_READ\_OTHER** = `4`

Read for other bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_WRITE\_OTHER** = `2`

Write for other bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_EXECUTE\_OTHER** = `1`

Execute for other bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_SET\_USER\_ID** = `2048`

Set user id on execution bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_SET\_GROUP\_ID** = `1024`

Set group id on execution bit.

[UnixPermissionFlags](#enum-fileaccess-unixpermissionflags) **UNIX\_RESTRICTED\_DELETE** = `512`

Restricted deletion (sticky) bit.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **big\_endian** [🔗](#class-fileaccess-property-big-endian)

- void **set\_big\_endian**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_big\_endian**()


If `true`, the file is read with big-endian [endianness](https://en.wikipedia.org/wiki/Endianness). If `false`, the file is read with little-endian endianness. If in doubt, leave this to `false` as most files are written with little-endian endianness.

**Note:** This is always reset to system endianness, which is little-endian on all supported platforms, whenever you open the file. Therefore, you must set [big\_endian](#class-fileaccess-property-big-endian) _after_ opening the file, not before.

* * *

## Method Descriptions

void **close**() [🔗](#class-fileaccess-method-close)

Closes the currently opened file and prevents subsequent read/write operations. Use [flush()](#class-fileaccess-method-flush) to persist the data to disk without closing the file.

**Note:** **FileAccess** will automatically close when it's freed, which happens when it goes out of scope or when it gets assigned with `null`. In C# the reference must be disposed after we are done using it, this can be done with the `using` statement or calling the `Dispose` method directly.

* * *

[FileAccess](#class-fileaccess) **create\_temp**(mode\_flags: [int](class_int.md#class-int), prefix: [String](class_string.md#class-string) = "", extension: [String](class_string.md#class-string) = "", keep: [bool](class_bool.md#class-bool) = false) static [🔗](#class-fileaccess-method-create-temp)

Creates a temporary file. This file will be freed when the returned **FileAccess** is freed.

If `prefix` is not empty, it will be prefixed to the file name, separated by a `-`.

If `extension` is not empty, it will be appended to the temporary file name.

If `keep` is `true`, the file is not deleted when the returned **FileAccess** is freed.

Returns `null` if opening the file failed. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[bool](class_bool.md#class-bool) **eof\_reached**() const [🔗](#class-fileaccess-method-eof-reached)

Returns `true` if the file cursor has already read past the end of the file.

**Note:** `eof_reached() == false` cannot be used to check whether there is more data available. To loop while there is more data available, use:

GDScriptC#

```
while file.get_position() < file.get_length():
    # Read data

```

```
while (file.GetPosition() < file.GetLength())
{
    // Read data
}

```

* * *

[bool](class_bool.md#class-bool) **file\_exists**(path: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-file-exists)

Returns `true` if the file exists in the given path.

**Note:** Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. See [ResourceLoader.exists()](class_resourceloader.md#class-resourceloader-method-exists) for an alternative approach that takes resource remapping into account.

For a non-static, relative equivalent, use [DirAccess.file\_exists()](class_diraccess.md#class-diraccess-method-file-exists).

* * *

void **flush**() [🔗](#class-fileaccess-method-flush)

Writes the file's buffer to disk. Flushing is automatically performed when the file is closed. This means you don't need to call [flush()](#class-fileaccess-method-flush) manually before closing a file. Still, calling [flush()](#class-fileaccess-method-flush) can be used to ensure the data is safe even if the project crashes instead of being closed gracefully.

**Note:** Only call [flush()](#class-fileaccess-method-flush) when you actually need it. Otherwise, it will decrease performance due to constant disk writes.

* * *

[int](class_int.md#class-int) **get\_8**() const [🔗](#class-fileaccess-method-get-8)

Returns the next 8 bits from the file as an integer. This advances the file cursor by 1 byte. See [store\_8()](#class-fileaccess-method-store-8) for details on what values can be stored and retrieved this way.

* * *

[int](class_int.md#class-int) **get\_16**() const [🔗](#class-fileaccess-method-get-16)

Returns the next 16 bits from the file as an integer. This advances the file cursor by 2 bytes. See [store\_16()](#class-fileaccess-method-store-16) for details on what values can be stored and retrieved this way.

* * *

[int](class_int.md#class-int) **get\_32**() const [🔗](#class-fileaccess-method-get-32)

Returns the next 32 bits from the file as an integer. This advances the file cursor by 4 bytes. See [store\_32()](#class-fileaccess-method-store-32) for details on what values can be stored and retrieved this way.

* * *

[int](class_int.md#class-int) **get\_64**() const [🔗](#class-fileaccess-method-get-64)

Returns the next 64 bits from the file as an integer. This advances the file cursor by 8 bytes. See [store\_64()](#class-fileaccess-method-store-64) for details on what values can be stored and retrieved this way.

* * *

[int](class_int.md#class-int) **get\_access\_time**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-access-time)

Returns the last time the `file` was accessed in Unix timestamp format, or `0` on error. This Unix timestamp can be converted to another format using the [Time](class_time.md#class-time) singleton.

* * *

[String](class_string.md#class-string) **get\_as\_text**(skip\_cr: [bool](class_bool.md#class-bool) = false) const [🔗](#class-fileaccess-method-get-as-text)

Returns the whole file as a [String](class_string.md#class-string). Text is interpreted as being UTF-8 encoded. This ignores the file cursor and does not affect it.

If `skip_cr` is `true`, carriage return characters ( `\r`, CR) will be ignored when parsing the UTF-8, so that only line feed characters ( `\n`, LF) represent a new line (Unix convention).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_buffer**(length: [int](class_int.md#class-int)) const [🔗](#class-fileaccess-method-get-buffer)

Returns next `length` bytes of the file as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This advances the file cursor by `length` bytes.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_csv\_line**(delim: [String](class_string.md#class-string) = ",") const [🔗](#class-fileaccess-method-get-csv-line)

Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long, and cannot be a double quotation mark.

Text is interpreted as being UTF-8 encoded. Text values must be enclosed in double quotes if they include the delimiter character. Double quotes within a text value can be escaped by doubling their occurrence. This advances the file cursor to after the newline character at the end of the line.

For example, the following CSV lines are valid and will be properly parsed as two strings each:

```
Alice,"Hello, Bob!"
Bob,Alice! What a surprise!
Alice,"I thought you'd reply with ""Hello, world""."

```

Note how the second line can omit the enclosing quotes as it does not include the delimiter. However it _could_ very well use quotes, it was only written without for demonstration purposes. The third line must use `""` for each quotation mark that needs to be interpreted as such instead of the end of a text value.

* * *

[float](class_float.md#class-float) **get\_double**() const [🔗](#class-fileaccess-method-get-double)

Returns the next 64 bits from the file as a floating-point number. This advances the file cursor by 8 bytes.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **get\_error**() const [🔗](#class-fileaccess-method-get-error)

Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from [Error](class_@globalscope.md#enum-globalscope-error).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_file\_as\_bytes**(path: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-file-as-bytes)

Returns the whole `path` file contents as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray) without any decoding.

Returns an empty [PackedByteArray](class_packedbytearray.md#class-packedbytearray) if an error occurred while opening the file. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[String](class_string.md#class-string) **get\_file\_as\_string**(path: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-file-as-string)

Returns the whole `path` file contents as a [String](class_string.md#class-string). Text is interpreted as being UTF-8 encoded.

Returns an empty [String](class_string.md#class-string) if an error occurred while opening the file. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[float](class_float.md#class-float) **get\_float**() const [🔗](#class-fileaccess-method-get-float)

Returns the next 32 bits from the file as a floating-point number. This advances the file cursor by 4 bytes.

* * *

[float](class_float.md#class-float) **get\_half**() const [🔗](#class-fileaccess-method-get-half)

Returns the next 16 bits from the file as a half-precision floating-point number. This advances the file cursor by 2 bytes.

* * *

[bool](class_bool.md#class-bool) **get\_hidden\_attribute**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-hidden-attribute)

Returns `true`, if file `hidden` attribute is set.

**Note:** This method is implemented on iOS, BSD, macOS, and Windows.

* * *

[int](class_int.md#class-int) **get\_length**() const [🔗](#class-fileaccess-method-get-length)

Returns the size of the file in bytes. For a pipe, returns the number of bytes available for reading from the pipe.

* * *

[String](class_string.md#class-string) **get\_line**() const [🔗](#class-fileaccess-method-get-line)

Returns the next line of the file as a [String](class_string.md#class-string). The returned string doesn't include newline ( `\n`) or carriage return ( `\r`) characters, but does include any other leading or trailing whitespace. This advances the file cursor to after the newline character at the end of the line.

Text is interpreted as being UTF-8 encoded.

* * *

[String](class_string.md#class-string) **get\_md5**(path: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-md5)

Returns an MD5 String representing the file at the given path or an empty [String](class_string.md#class-string) on failure.

* * *

[int](class_int.md#class-int) **get\_modified\_time**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-modified-time)

Returns the last time the `file` was modified in Unix timestamp format, or `0` on error. This Unix timestamp can be converted to another format using the [Time](class_time.md#class-time) singleton.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **get\_open\_error**() static [🔗](#class-fileaccess-method-get-open-error)

Returns the result of the last [open()](#class-fileaccess-method-open) call in the current thread.

* * *

[String](class_string.md#class-string) **get\_pascal\_string**() [🔗](#class-fileaccess-method-get-pascal-string)

Returns a [String](class_string.md#class-string) saved in Pascal format from the file, meaning that the length of the string is explicitly stored at the start. See [store\_pascal\_string()](#class-fileaccess-method-store-pascal-string). This may include newline characters. The file cursor is advanced after the bytes read.

Text is interpreted as being UTF-8 encoded.

* * *

[String](class_string.md#class-string) **get\_path**() const [🔗](#class-fileaccess-method-get-path)

Returns the path as a [String](class_string.md#class-string) for the current open file.

* * *

[String](class_string.md#class-string) **get\_path\_absolute**() const [🔗](#class-fileaccess-method-get-path-absolute)

Returns the absolute path as a [String](class_string.md#class-string) for the current open file.

* * *

[int](class_int.md#class-int) **get\_position**() const [🔗](#class-fileaccess-method-get-position)

Returns the file cursor's position in bytes from the beginning of the file. This is the file reading/writing cursor set by [seek()](#class-fileaccess-method-seek) or [seek\_end()](#class-fileaccess-method-seek-end) and advanced by read/write operations.

* * *

[bool](class_bool.md#class-bool) **get\_read\_only\_attribute**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-read-only-attribute)

Returns `true`, if file `read only` attribute is set.

**Note:** This method is implemented on iOS, BSD, macOS, and Windows.

* * *

[float](class_float.md#class-float) **get\_real**() const [🔗](#class-fileaccess-method-get-real)

Returns the next bits from the file as a floating-point number. This advances the file cursor by either 4 or 8 bytes, depending on the precision used by the Godot build that saved the file.

If the file was saved by a Godot build compiled with the `precision=single` option (the default), the number of read bits for that file is 32. Otherwise, if compiled with the `precision=double` option, the number of read bits is 64.

* * *

[String](class_string.md#class-string) **get\_sha256**(path: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-sha256)

Returns an SHA-256 [String](class_string.md#class-string) representing the file at the given path or an empty [String](class_string.md#class-string) on failure.

* * *

[int](class_int.md#class-int) **get\_size**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-size)

Returns file size in bytes, or `-1` on error.

* * *

BitField\[ [UnixPermissionFlags](#enum-fileaccess-unixpermissionflags)\] **get\_unix\_permissions**(file: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-get-unix-permissions)

Returns file UNIX permissions.

**Note:** This method is implemented on iOS, Linux/BSD, and macOS.

* * *

[Variant](class_variant.md#class-variant) **get\_var**(allow\_objects: [bool](class_bool.md#class-bool) = false) const [🔗](#class-fileaccess-method-get-var)

Returns the next [Variant](class_variant.md#class-variant) value from the file. If `allow_objects` is `true`, decoding objects is allowed. This advances the file cursor by the number of bytes read.

Internally, this uses the same decoding mechanism as the [@GlobalScope.bytes\_to\_var()](class_@globalscope.md#class-globalscope-method-bytes-to-var) method, as described in the [Binary serialization API](../tutorials/io/binary_serialization_api.md) documentation.

**Warning:** Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.

* * *

[bool](class_bool.md#class-bool) **is\_open**() const [🔗](#class-fileaccess-method-is-open)

Returns `true` if the file is currently opened.

* * *

[FileAccess](#class-fileaccess) **open**(path: [String](class_string.md#class-string), flags: [ModeFlags](#enum-fileaccess-modeflags)) static [🔗](#class-fileaccess-method-open)

Creates a new **FileAccess** object and opens the file for writing or reading, depending on the flags.

Returns `null` if opening the file failed. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[FileAccess](#class-fileaccess) **open\_compressed**(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), compression\_mode: [CompressionMode](#enum-fileaccess-compressionmode) = 0) static [🔗](#class-fileaccess-method-open-compressed)

Creates a new **FileAccess** object and opens a compressed file for reading or writing.

**Note:** [open\_compressed()](#class-fileaccess-method-open-compressed) can only read files that were saved by Godot, not third-party compression formats. See [GitHub issue #28999](https://github.com/godotengine/godot/issues/28999) for a workaround.

Returns `null` if opening the file failed. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[FileAccess](#class-fileaccess) **open\_encrypted**(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray), iv: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) static [🔗](#class-fileaccess-method-open-encrypted)

Creates a new **FileAccess** object and opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.

**Note:** The provided key must be 32 bytes long.

Returns `null` if opening the file failed. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[FileAccess](#class-fileaccess) **open\_encrypted\_with\_pass**(path: [String](class_string.md#class-string), mode\_flags: [ModeFlags](#enum-fileaccess-modeflags), pass: [String](class_string.md#class-string)) static [🔗](#class-fileaccess-method-open-encrypted-with-pass)

Creates a new **FileAccess** object and opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.

Returns `null` if opening the file failed. You can use [get\_open\_error()](#class-fileaccess-method-get-open-error) to check the error that occurred.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **resize**(length: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-resize)

Resizes the file to a specified length. The file must be open in a mode that permits writing. If the file is extended, NUL characters are appended. If the file is truncated, all data from the end file to the original length of the file is lost.

* * *

void **seek**(position: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-seek)

Changes the file reading/writing cursor to the specified position (in bytes from the beginning of the file). This changes the value returned by [get\_position()](#class-fileaccess-method-get-position).

* * *

void **seek\_end**(position: [int](class_int.md#class-int) = 0) [🔗](#class-fileaccess-method-seek-end)

Changes the file reading/writing cursor to the specified position (in bytes from the end of the file). This changes the value returned by [get\_position()](#class-fileaccess-method-get-position).

**Note:** This is an offset, so you should use negative numbers or the file cursor will be at the end of the file.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_hidden\_attribute**(file: [String](class_string.md#class-string), hidden: [bool](class_bool.md#class-bool)) static [🔗](#class-fileaccess-method-set-hidden-attribute)

Sets file **hidden** attribute.

**Note:** This method is implemented on iOS, BSD, macOS, and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_read\_only\_attribute**(file: [String](class_string.md#class-string), ro: [bool](class_bool.md#class-bool)) static [🔗](#class-fileaccess-method-set-read-only-attribute)

Sets file **read only** attribute.

**Note:** This method is implemented on iOS, BSD, macOS, and Windows.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **set\_unix\_permissions**(file: [String](class_string.md#class-string), permissions: BitField\[ [UnixPermissionFlags](#enum-fileaccess-unixpermissionflags)\]) static [🔗](#class-fileaccess-method-set-unix-permissions)

Sets file UNIX permissions.

**Note:** This method is implemented on iOS, Linux/BSD, and macOS.

* * *

[bool](class_bool.md#class-bool) **store\_8**(value: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-store-8)

Stores an integer as 8 bits in the file. This advances the file cursor by 1 byte. Returns `true` if the operation is successful.

**Note:** The `value` should lie in the interval `[0, 255]`. Any other value will overflow and wrap around.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

To store a signed integer, use [store\_64()](#class-fileaccess-method-store-64), or convert it manually (see [store\_16()](#class-fileaccess-method-store-16) for an example).

* * *

[bool](class_bool.md#class-bool) **store\_16**(value: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-store-16)

Stores an integer as 16 bits in the file. This advances the file cursor by 2 bytes. Returns `true` if the operation is successful.

**Note:** The `value` should lie in the interval `[0, 2^16 - 1]`. Any other value will overflow and wrap around.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

To store a signed integer, use [store\_64()](#class-fileaccess-method-store-64) or store a signed integer from the interval `[-2^15, 2^15 - 1]` (i.e. keeping one bit for the signedness) and compute its sign manually when reading. For example:

GDScriptC#

```
const MAX_15B = 1 << 15
const MAX_16B = 1 << 16

func unsigned16_to_signed(unsigned):
    return (unsigned + MAX_15B) % MAX_16B - MAX_15B

func _ready():
    var f = FileAccess.open("user://file.dat", FileAccess.WRITE_READ)
    f.store_16(-42) # This wraps around and stores 65494 (2^16 - 42).
    f.store_16(121) # In bounds, will store 121.
    f.seek(0) # Go back to start to read the stored value.
    var read1 = f.get_16() # 65494
    var read2 = f.get_16() # 121
    var converted1 = unsigned16_to_signed(read1) # -42
    var converted2 = unsigned16_to_signed(read2) # 121

```

```
public override void _Ready()
{
    using var f = FileAccess.Open("user://file.dat", FileAccess.ModeFlags.WriteRead);
    f.Store16(unchecked((ushort)-42)); // This wraps around and stores 65494 (2^16 - 42).
    f.Store16(121); // In bounds, will store 121.
    f.Seek(0); // Go back to start to read the stored value.
    ushort read1 = f.Get16(); // 65494
    ushort read2 = f.Get16(); // 121
    short converted1 = (short)read1; // -42
    short converted2 = (short)read2; // 121
}

```

* * *

[bool](class_bool.md#class-bool) **store\_32**(value: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-store-32)

Stores an integer as 32 bits in the file. This advances the file cursor by 4 bytes. Returns `true` if the operation is successful.

**Note:** The `value` should lie in the interval `[0, 2^32 - 1]`. Any other value will overflow and wrap around.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

To store a signed integer, use [store\_64()](#class-fileaccess-method-store-64), or convert it manually (see [store\_16()](#class-fileaccess-method-store-16) for an example).

* * *

[bool](class_bool.md#class-bool) **store\_64**(value: [int](class_int.md#class-int)) [🔗](#class-fileaccess-method-store-64)

Stores an integer as 64 bits in the file. This advances the file cursor by 8 bytes. Returns `true` if the operation is successful.

**Note:** The `value` must lie in the interval `[-2^63, 2^63 - 1]` (i.e. be a valid [int](class_int.md#class-int) value).

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_buffer**(buffer: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-fileaccess-method-store-buffer)

Stores the given array of bytes in the file. This advances the file cursor by the number of bytes written. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_csv\_line**(values: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), delim: [String](class_string.md#class-string) = ",") [🔗](#class-fileaccess-method-store-csv-line)

Store the given [PackedStringArray](class_packedstringarray.md#class-packedstringarray) in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.

Text will be encoded as UTF-8. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_double**(value: [float](class_float.md#class-float)) [🔗](#class-fileaccess-method-store-double)

Stores a floating-point number as 64 bits in the file. This advances the file cursor by 8 bytes. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_float**(value: [float](class_float.md#class-float)) [🔗](#class-fileaccess-method-store-float)

Stores a floating-point number as 32 bits in the file. This advances the file cursor by 4 bytes. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_half**(value: [float](class_float.md#class-float)) [🔗](#class-fileaccess-method-store-half)

Stores a half-precision floating-point number as 16 bits in the file. This advances the file cursor by 2 bytes. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_line**(line: [String](class_string.md#class-string)) [🔗](#class-fileaccess-method-store-line)

Stores `line` in the file followed by a newline character ( `\n`), encoding the text as UTF-8. This advances the file cursor by the length of the line, after the newline character. The amount of bytes written depends on the UTF-8 encoded bytes, which may be different from [String.length()](class_string.md#class-string-method-length) which counts the number of UTF-32 codepoints. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_pascal\_string**(string: [String](class_string.md#class-string)) [🔗](#class-fileaccess-method-store-pascal-string)

Stores the given [String](class_string.md#class-string) as a line in the file in Pascal format (i.e. also store the length of the string). Text will be encoded as UTF-8. This advances the file cursor by the number of bytes written depending on the UTF-8 encoded bytes, which may be different from [String.length()](class_string.md#class-string-method-length) which counts the number of UTF-32 codepoints. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_real**(value: [float](class_float.md#class-float)) [🔗](#class-fileaccess-method-store-real)

Stores a floating-point number in the file. This advances the file cursor by either 4 or 8 bytes, depending on the precision used by the current Godot build.

If using a Godot build compiled with the `precision=single` option (the default), this method will save a 32-bit float. Otherwise, if compiled with the `precision=double` option, this will save a 64-bit float. Returns `true` if the operation is successful.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_string**(string: [String](class_string.md#class-string)) [🔗](#class-fileaccess-method-store-string)

Stores `string` in the file without a newline character ( `\n`), encoding the text as UTF-8. This advances the file cursor by the length of the string in UTF-8 encoded bytes, which may be different from [String.length()](class_string.md#class-string-method-length) which counts the number of UTF-32 codepoints. Returns `true` if the operation is successful.

**Note:** This method is intended to be used to write text files. The string is stored as a UTF-8 encoded buffer without string length or terminating zero, which means that it can't be loaded back easily. If you want to store a retrievable string in a binary file, consider using [store\_pascal\_string()](#class-fileaccess-method-store-pascal-string) instead. For retrieving strings from a text file, you can use `get_buffer(length).get_string_from_utf8()` (if you know the length) or [get\_as\_text()](#class-fileaccess-method-get-as-text).

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

* * *

[bool](class_bool.md#class-bool) **store\_var**(value: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) [🔗](#class-fileaccess-method-store-var)

Stores any Variant value in the file. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code). This advances the file cursor by the number of bytes written. Returns `true` if the operation is successful.

Internally, this uses the same encoding mechanism as the [@GlobalScope.var\_to\_bytes()](class_@globalscope.md#class-globalscope-method-var-to-bytes) method, as described in the [Binary serialization API](../tutorials/io/binary_serialization_api.md) documentation.

**Note:** Not all properties are included. Only properties that are configured with the [@GlobalScope.PROPERTY\_USAGE\_STORAGE](class_@globalscope.md#class-globalscope-constant-property-usage-storage) flag set will be serialized. You can add a new usage flag to a property by overriding the [Object.\_get\_property\_list()](class_object.md#class-object-private-method-get-property-list) method in your class. You can also check how property usage is configured by calling [Object.\_get\_property\_list()](class_object.md#class-object-private-method-get-property-list). See [PropertyUsageFlags](class_@globalscope.md#enum-globalscope-propertyusageflags) for the possible usage flags.

**Note:** If an error occurs, the resulting value of the file position indicator is indeterminate.

[Previous](class_expression.md "Expression") [Next](class_framebuffercacherd.md "FramebufferCacheRD")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_expression.md "Expression") [Next](class_framebuffercacherd.md "FramebufferCacheRD")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).