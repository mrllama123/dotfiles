---
title: ConfigFile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_configfile.html
crawled_at: "2026-08-13T10:25:58+12:00"
content_hash: a930c4355d92364aa87be263bc1fec5ca9eacc74835614125b63960fe37e250b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ConfigFile

* * *

# ConfigFile

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Helper class to handle INI-style files.

## Description

This helper class can be used to store [Variant](class_variant.md#class-variant) values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:

```
[section]
some_key=42
string_example="Hello World3D!"
a_vector=Vector3(1, 0, 2)

```

The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.

The following example shows how to create a simple **ConfigFile** and save it on disc:

GDScriptC#

```
# Create new ConfigFile object.
var config = ConfigFile.new()

# Store some values.
config.set_value("Player1", "player_name", "Steve")
config.set_value("Player1", "best_score", 10)
config.set_value("Player2", "player_name", "V3geta")
config.set_value("Player2", "best_score", 9001)

# Save it to a file (overwrite if already exists).
config.save("user://scores.cfg")

```

```
// Create new ConfigFile object.
var config = new ConfigFile();

// Store some values.
config.SetValue("Player1", "player_name", "Steve");
config.SetValue("Player1", "best_score", 10);
config.SetValue("Player2", "player_name", "V3geta");
config.SetValue("Player2", "best_score", 9001);

// Save it to a file (overwrite if already exists).
config.Save("user://scores.cfg");

```

This example shows how the above file could be loaded:

GDScriptC#

```
var score_data = {}
var config = ConfigFile.new()

# Load data from a file.
var err = config.load("user://scores.cfg")

# If the file didn't load, ignore it.
if err != OK:
    return

# Iterate over all sections.
for player in config.get_sections():
    # Fetch the data for each section.
    var player_name = config.get_value(player, "player_name")
    var player_score = config.get_value(player, "best_score")
    score_data[player_name] = player_score

```

```
var score_data = new Godot.Collections.Dictionary();
var config = new ConfigFile();

// Load data from a file.
Error err = config.Load("user://scores.cfg");

// If the file didn't load, ignore it.
if (err != Error.Ok)
{
    return;
}

// Iterate over all sections.
foreach (String player in config.GetSections())
{
    // Fetch the data for each section.
    var player_name = (String)config.GetValue(player, "player_name");
    var player_score = (int)config.GetValue(player, "best_score");
    score_data[player_name] = player_score;
}

```

Any operation that mutates the ConfigFile such as [set\_value()](#class-configfile-method-set-value), [clear()](#class-configfile-method-clear), or [erase\_section()](#class-configfile-method-erase-section), only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with [save()](#class-configfile-method-save), [save\_encrypted()](#class-configfile-method-save-encrypted), or [save\_encrypted\_pass()](#class-configfile-method-save-encrypted-pass).

Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.

ConfigFiles can also contain manually written comment lines starting with a semicolon ( `;`). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.

**Note:** The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the `.cfg` extension is used here, but any other extension such as `.ini` is also valid. Since neither `.cfg` nor `.ini` are standardized, Godot's ConfigFile formatting may differ from files written by other programs.

## Methods

|     |     |
| --- | --- |
| void | [clear](#class-configfile-method-clear)() |
| [String](class_string.md#class-string) | [encode\_to\_text](#class-configfile-method-encode-to-text)() const |
| void | [erase\_section](#class-configfile-method-erase-section)(section: [String](class_string.md#class-string)) |
| void | [erase\_section\_key](#class-configfile-method-erase-section-key)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string)) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_section\_keys](#class-configfile-method-get-section-keys)(section: [String](class_string.md#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [get\_sections](#class-configfile-method-get-sections)() const |
| [Variant](class_variant.md#class-variant) | [get\_value](#class-configfile-method-get-value)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), default: [Variant](class_variant.md#class-variant) = null) const |
| [bool](class_bool.md#class-bool) | [has\_section](#class-configfile-method-has-section)(section: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_section\_key](#class-configfile-method-has-section-key)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string)) const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load](#class-configfile-method-load)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_encrypted](#class-configfile-method-load-encrypted)(path: [String](class_string.md#class-string), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [load\_encrypted\_pass](#class-configfile-method-load-encrypted-pass)(path: [String](class_string.md#class-string), password: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [parse](#class-configfile-method-parse)(data: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save](#class-configfile-method-save)(path: [String](class_string.md#class-string)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_encrypted](#class-configfile-method-save-encrypted)(path: [String](class_string.md#class-string), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| [Error](class_@globalscope.md#enum-globalscope-error) | [save\_encrypted\_pass](#class-configfile-method-save-encrypted-pass)(path: [String](class_string.md#class-string), password: [String](class_string.md#class-string)) |
| void | [set\_value](#class-configfile-method-set-value)(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) |

* * *

## Method Descriptions

void **clear**() [🔗](#class-configfile-method-clear)

Removes the entire contents of the config.

* * *

[String](class_string.md#class-string) **encode\_to\_text**() const [🔗](#class-configfile-method-encode-to-text)

Obtain the text version of this config file (the same text that would be written to a file).

* * *

void **erase\_section**(section: [String](class_string.md#class-string)) [🔗](#class-configfile-method-erase-section)

Deletes the specified section along with all the key-value pairs inside. Raises an error if the section does not exist.

* * *

void **erase\_section\_key**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string)) [🔗](#class-configfile-method-erase-section-key)

Deletes the specified key in a section. Raises an error if either the section or the key do not exist.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_section\_keys**(section: [String](class_string.md#class-string)) const [🔗](#class-configfile-method-get-section-keys)

Returns an array of all defined key identifiers in the specified section. Raises an error and returns an empty array if the section does not exist.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **get\_sections**() const [🔗](#class-configfile-method-get-sections)

Returns an array of all defined section identifiers.

* * *

[Variant](class_variant.md#class-variant) **get\_value**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), default: [Variant](class_variant.md#class-variant) = null) const [🔗](#class-configfile-method-get-value)

Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.

* * *

[bool](class_bool.md#class-bool) **has\_section**(section: [String](class_string.md#class-string)) const [🔗](#class-configfile-method-has-section)

Returns `true` if the specified section exists.

* * *

[bool](class_bool.md#class-bool) **has\_section\_key**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string)) const [🔗](#class-configfile-method-has-section-key)

Returns `true` if the specified section-key pair exists.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load**(path: [String](class_string.md#class-string)) [🔗](#class-configfile-method-load)

Loads the config file specified as a parameter. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_encrypted**(path: [String](class_string.md#class-string), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-configfile-method-load-encrypted)

Loads the encrypted config file specified as a parameter, using the provided `key` to decrypt it. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **load\_encrypted\_pass**(path: [String](class_string.md#class-string), password: [String](class_string.md#class-string)) [🔗](#class-configfile-method-load-encrypted-pass)

Loads the encrypted config file specified as a parameter, using the provided `password` to decrypt it. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **parse**(data: [String](class_string.md#class-string)) [🔗](#class-configfile-method-parse)

Parses the passed string as the contents of a config file. The string is parsed and loaded in the ConfigFile object which the method was called on.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save**(path: [String](class_string.md#class-string)) [🔗](#class-configfile-method-save)

Saves the contents of the **ConfigFile** object to the file specified as a parameter. The output file uses an INI-style structure.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_encrypted**(path: [String](class_string.md#class-string), key: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-configfile-method-save-encrypted)

Saves the contents of the **ConfigFile** object to the AES-256 encrypted file specified as a parameter, using the provided `key` to encrypt it. The output file uses an INI-style structure.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **save\_encrypted\_pass**(path: [String](class_string.md#class-string), password: [String](class_string.md#class-string)) [🔗](#class-configfile-method-save-encrypted-pass)

Saves the contents of the **ConfigFile** object to the AES-256 encrypted file specified as a parameter, using the provided `password` to encrypt it. The output file uses an INI-style structure.

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) on success, or one of the other [Error](class_@globalscope.md#enum-globalscope-error) values if the operation failed.

* * *

void **set\_value**(section: [String](class_string.md#class-string), key: [String](class_string.md#class-string), value: [Variant](class_variant.md#class-variant)) [🔗](#class-configfile-method-set-value)

Assigns a value to the specified key of the specified section. If either the section or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.

[Previous](class_classdb.md "ClassDB") [Next](class_crypto.md "Crypto")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_classdb.md "ClassDB") [Next](class_crypto.md "Crypto")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).