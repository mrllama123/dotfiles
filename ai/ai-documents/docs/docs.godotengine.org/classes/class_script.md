---
title: Script — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_script.html
crawled_at: "2026-08-13T10:40:40+12:00"
content_hash: a557af1fd4495a006d04c36dff2640ea5f239df71b78cc0236e7bd4c79cff807
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Script

* * *

# Script

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CSharpScript](class_csharpscript.md#class-csharpscript), [GDScript](class_gdscript.md#class-gdscript), [ScriptExtension](class_scriptextension.md#class-scriptextension)

A class stored as a resource.

## Description

A class stored as a resource. A script extends the functionality of all objects that instantiate it.

This is the base class for all scripts and should not be used directly. Trying to create a new script with this class will result in an error.

The `new` method of a script subclass creates a new instance. [Object.set\_script()](class_object.md#class-object-method-set-script) extends an existing object, if that object's class matches one of the script's base classes.

## Tutorials

- [Scripting documentation index](../tutorials/scripting/index.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [source\_code](#class-script-property-source-code) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [can\_instantiate](#class-script-method-can-instantiate)() const |
| [Script](#class-script) | [get\_base\_script](#class-script-method-get-base-script)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_global\_name](#class-script-method-get-global-name)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_instance\_base\_type](#class-script-method-get-instance-base-type)() const |
| [Variant](class_variant.md#class-variant) | [get\_property\_default\_value](#class-script-method-get-property-default-value)(property: [StringName](class_stringname.md#class-stringname)) |
| [Variant](class_variant.md#class-variant) | [get\_rpc\_config](#class-script-method-get-rpc-config)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_script\_constant\_map](#class-script-method-get-script-constant-map)() |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_script\_method\_list](#class-script-method-get-script-method-list)() |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_script\_property\_list](#class-script-method-get-script-property-list)() |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_script\_signal\_list](#class-script-method-get-script-signal-list)() |
| [bool](class_bool.md#class-bool) | [has\_script\_signal](#class-script-method-has-script-signal)(signal\_name: [StringName](class_stringname.md#class-stringname)) const |
| [bool](class_bool.md#class-bool) | [has\_source\_code](#class-script-method-has-source-code)() const |
| [bool](class_bool.md#class-bool) | [instance\_has](#class-script-method-instance-has)(base\_object: [Object](class_object.md#class-object)) const |
| [bool](class_bool.md#class-bool) | [is\_abstract](#class-script-method-is-abstract)() const |
| [bool](class_bool.md#class-bool) | [is\_tool](#class-script-method-is-tool)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [reload](#class-script-method-reload)(keep\_state: [bool](class_bool.md#class-bool) = false) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **source\_code** [🔗](#class-script-property-source-code)

- void **set\_source\_code**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_source\_code**()


The script source code or an empty string if source code is not available. When set, does not reload the class implementation automatically.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **can\_instantiate**() const [🔗](#class-script-method-can-instantiate)

Returns `true` if the script can be instantiated.

* * *

[Script](#class-script) **get\_base\_script**() const [🔗](#class-script-method-get-base-script)

Returns the script directly inherited by this script.

* * *

[StringName](class_stringname.md#class-stringname) **get\_global\_name**() const [🔗](#class-script-method-get-global-name)

Returns the class name associated with the script, if there is one. Returns an empty string otherwise.

To give the script a global name, you can use the `class_name` keyword in GDScript and the `[GlobalClass]` attribute in C#.

GDScriptC#

```
class_name MyNode
extends Node

```

```
using Godot;

[GlobalClass]
public partial class MyNode : Node
{
}

```

* * *

[StringName](class_stringname.md#class-stringname) **get\_instance\_base\_type**() const [🔗](#class-script-method-get-instance-base-type)

Returns the script's base type.

* * *

[Variant](class_variant.md#class-variant) **get\_property\_default\_value**(property: [StringName](class_stringname.md#class-stringname)) [🔗](#class-script-method-get-property-default-value)

Returns the default value of the specified property.

* * *

[Variant](class_variant.md#class-variant) **get\_rpc\_config**() const [🔗](#class-script-method-get-rpc-config)

Returns a [Dictionary](class_dictionary.md#class-dictionary) mapping method names to their RPC configuration defined by this script.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_script\_constant\_map**() [🔗](#class-script-method-get-script-constant-map)

Returns a dictionary containing constant names and their values.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_script\_method\_list**() [🔗](#class-script-method-get-script-method-list)

Returns the list of methods in this **Script**.

**Note:** The dictionaries returned by this method are formatted identically to those returned by [Object.get\_method\_list()](class_object.md#class-object-method-get-method-list).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_script\_property\_list**() [🔗](#class-script-method-get-script-property-list)

Returns the list of properties in this **Script**.

**Note:** The dictionaries returned by this method are formatted identically to those returned by [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list).

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_script\_signal\_list**() [🔗](#class-script-method-get-script-signal-list)

Returns the list of user signals defined in this **Script**.

**Note:** The dictionaries returned by this method are formatted identically to those returned by [Object.get\_signal\_list()](class_object.md#class-object-method-get-signal-list).

* * *

[bool](class_bool.md#class-bool) **has\_script\_signal**(signal\_name: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-script-method-has-script-signal)

Returns `true` if the script, or a base class, defines a signal with the given name.

* * *

[bool](class_bool.md#class-bool) **has\_source\_code**() const [🔗](#class-script-method-has-source-code)

Returns `true` if the script contains non-empty source code.

**Note:** If a script does not have source code, this does not mean that it is invalid or unusable. For example, a [GDScript](class_gdscript.md#class-gdscript) that was exported with binary tokenization has no source code, but still behaves as expected and could be instantiated. This can be checked with [can\_instantiate()](#class-script-method-can-instantiate).

* * *

[bool](class_bool.md#class-bool) **instance\_has**(base\_object: [Object](class_object.md#class-object)) const [🔗](#class-script-method-instance-has)

Returns `true` if `base_object` is an instance of this script.

* * *

[bool](class_bool.md#class-bool) **is\_abstract**() const [🔗](#class-script-method-is-abstract)

Returns `true` if the script is an abstract script. An abstract script does not have a constructor and cannot be instantiated.

* * *

[bool](class_bool.md#class-bool) **is\_tool**() const [🔗](#class-script-method-is-tool)

Returns `true` if the script is a tool script. A tool script can run in the editor.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **reload**(keep\_state: [bool](class_bool.md#class-bool) = false) [🔗](#class-script-method-reload)

Reloads the script's class implementation. Returns an error code.

[Previous](class_scenereplicationconfig.md "SceneReplicationConfig") [Next](class_scriptextension.md "ScriptExtension")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_scenereplicationconfig.md "SceneReplicationConfig") [Next](class_scriptextension.md "ScriptExtension")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).