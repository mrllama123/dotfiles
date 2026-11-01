---
title: JSON — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_json.html
crawled_at: "2026-08-13T10:18:25+12:00"
content_hash: fcda8a3542b35bff93e805d6062a3a02081253935fe9acc87dbe5645b75d689e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - JSON

* * *

# JSON

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Helper class for creating and parsing JSON data.

## Description

The **JSON** class enables all data types to be converted to and from a JSON string. This is useful for serializing data, e.g. to save to a file or send over the network.

[stringify()](#class-json-method-stringify) is used to convert any data type into a JSON string.

[parse()](#class-json-method-parse) is used to convert any existing JSON data into a [Variant](class_variant.md#class-variant) that can be used within Godot. If successfully parsed, use [data](#class-json-property-data) to retrieve the [Variant](class_variant.md#class-variant), and use [@GlobalScope.typeof()](class_@globalscope.md#class-globalscope-method-typeof) to check if the Variant's type is what you expect. JSON Objects are converted into a [Dictionary](class_dictionary.md#class-dictionary), but JSON data can be used to store [Array](class_array.md#class-array) s, numbers, [String](class_string.md#class-string) s and even just a boolean.

```
var data_to_send = ["a", "b", "c"]
var json_string = JSON.stringify(data_to_send)
# Save data
# ...
# Retrieve data
var json = JSON.new()
var error = json.parse(json_string)
if error == OK:
    var data_received = json.data
    if typeof(data_received) == TYPE_ARRAY:
        print(data_received) # Prints the array.
    else:
        print("Unexpected data")
else:
    print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())

```

Alternatively, you can parse strings using the static [parse\_string()](#class-json-method-parse-string) method, but it doesn't handle errors.

```
var data = JSON.parse_string(json_string) # Returns null if parsing failed.

```

**Note:** Both parse methods do not fully comply with the JSON specification:

- Trailing commas in arrays or objects are ignored, instead of causing a parser error.

- New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences `\n` and `\t`.

- Numbers are parsed using [String.to\_float()](class_string.md#class-string-method-to-float) which is generally more lax than the JSON specification.

- Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleaned up and an error is logged to the console.


## Properties

|     |     |     |
| --- | --- | --- |
| [Variant](class_variant.md#class-variant) | [data](#class-json-property-data) | `null` |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [from\_native](#class-json-method-from-native)(variant: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) static |
| [int](class_int.md#class-int) | [get\_error\_line](#class-json-method-get-error-line)() const |
| [String](class_string.md#class-string) | [get\_error\_message](#class-json-method-get-error-message)() const |
| [String](class_string.md#class-string) | [get\_parsed\_text](#class-json-method-get-parsed-text)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [parse](#class-json-method-parse)(json\_text: [String](class_string.md#class-string), keep\_text: [bool](class_bool.md#class-bool) = false) |
| [Variant](class_variant.md#class-variant) | [parse\_string](#class-json-method-parse-string)(json\_string: [String](class_string.md#class-string)) static |
| [String](class_string.md#class-string) | [stringify](#class-json-method-stringify)(data: [Variant](class_variant.md#class-variant), indent: [String](class_string.md#class-string) = "", sort\_keys: [bool](class_bool.md#class-bool) = true, full\_precision: [bool](class_bool.md#class-bool) = false) static |
| [Variant](class_variant.md#class-variant) | [to\_native](#class-json-method-to-native)(json: [Variant](class_variant.md#class-variant), allow\_objects: [bool](class_bool.md#class-bool) = false) static |

* * *

## Property Descriptions

[Variant](class_variant.md#class-variant) **data** = `null` [🔗](#class-json-property-data)

- void **set\_data**(value: [Variant](class_variant.md#class-variant))

- [Variant](class_variant.md#class-variant) **get\_data**()


Contains the parsed JSON data in [Variant](class_variant.md#class-variant) form.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **from\_native**(variant: [Variant](class_variant.md#class-variant), full\_objects: [bool](class_bool.md#class-bool) = false) static [🔗](#class-json-method-from-native)

Converts a native engine type to a JSON-compliant value.

By default, objects are ignored for security reasons, unless `full_objects` is `true`.

You can convert a native value to a JSON string like this:

```
func encode_data(value, full_objects = false):
    return JSON.stringify(JSON.from_native(value, full_objects))

```

* * *

[int](class_int.md#class-int) **get\_error\_line**() const [🔗](#class-json-method-get-error-line)

Returns `0` if the last call to [parse()](#class-json-method-parse) was successful, or the line number where the parse failed.

* * *

[String](class_string.md#class-string) **get\_error\_message**() const [🔗](#class-json-method-get-error-message)

Returns an empty string if the last call to [parse()](#class-json-method-parse) was successful, or the error message if it failed.

* * *

[String](class_string.md#class-string) **get\_parsed\_text**() const [🔗](#class-json-method-get-parsed-text)

Return the text parsed by [parse()](#class-json-method-parse) (requires passing `keep_text` to [parse()](#class-json-method-parse)).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **parse**(json\_text: [String](class_string.md#class-string), keep\_text: [bool](class_bool.md#class-bool) = false) [🔗](#class-json-method-parse)

Attempts to parse the `json_text` provided.

Returns an [Error](class_@globalscope.md#enum-globalscope-error). If the parse was successful, it returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) and the result can be retrieved using [data](#class-json-property-data). If unsuccessful, use [get\_error\_line()](#class-json-method-get-error-line) and [get\_error\_message()](#class-json-method-get-error-message) to identify the source of the failure.

Non-static variant of [parse\_string()](#class-json-method-parse-string), if you want custom error handling.

The optional `keep_text` argument instructs the parser to keep a copy of the original text. This text can be obtained later by using the [get\_parsed\_text()](#class-json-method-get-parsed-text) function and is used when saving the resource (instead of generating new text from [data](#class-json-property-data)).

* * *

[Variant](class_variant.md#class-variant) **parse\_string**(json\_string: [String](class_string.md#class-string)) static [🔗](#class-json-method-parse-string)

Attempts to parse the `json_string` provided and returns the parsed data. Returns `null` if parse failed.

* * *

[String](class_string.md#class-string) **stringify**(data: [Variant](class_variant.md#class-variant), indent: [String](class_string.md#class-string) = "", sort\_keys: [bool](class_bool.md#class-bool) = true, full\_precision: [bool](class_bool.md#class-bool) = false) static [🔗](#class-json-method-stringify)

Converts a [Variant](class_variant.md#class-variant) var to JSON text and returns the result. Useful for serializing data to store or send over the network.

**Note:** The JSON specification does not define integer or float types, but only a _number_ type. Therefore, converting a Variant to JSON text will convert all numerical values to [float](class_float.md#class-float) types.

**Note:** If `full_precision` is `true`, when stringifying floats, the unreliable digits are stringified in addition to the reliable digits to guarantee exact decoding.

The `indent` parameter controls if and how something is indented; its contents will be used where there should be an indent in the output. Even spaces like `"   "` will work. `\t` and `\n` can also be used for a tab indent, or to make a newline for each indent respectively.

**Example output:**

```
## JSON.stringify(my_dictionary)
{"name":"my_dictionary","version":"1.0.0","entities":[{"name":"entity_0","value":"value_0"},{"name":"entity_1","value":"value_1"}]}

## JSON.stringify(my_dictionary, "\t")
{
    "name": "my_dictionary",
    "version": "1.0.0",
    "entities": [
        {
            "name": "entity_0",
            "value": "value_0"
        },
        {
            "name": "entity_1",
            "value": "value_1"
        }
    ]
}

## JSON.stringify(my_dictionary, "...")
{
..."name": "my_dictionary",
..."version": "1.0.0",
..."entities": [
......{
........."name": "entity_0",
........."value": "value_0"
......},
......{
........."name": "entity_1",
........."value": "value_1"
......}
...]
}

```

* * *

[Variant](class_variant.md#class-variant) **to\_native**(json: [Variant](class_variant.md#class-variant), allow\_objects: [bool](class_bool.md#class-bool) = false) static [🔗](#class-json-method-to-native)

Converts a JSON-compliant value that was created with [from\_native()](#class-json-method-from-native) back to native engine types.

By default, objects are ignored for security reasons, unless `allow_objects` is `true`.

You can convert a JSON string back to a native value like this:

```
func decode_data(string, allow_objects = false):
    return JSON.to_native(JSON.parse_string(string), allow_objects)

```

[Previous](class_inputeventwithmodifiers.md "InputEventWithModifiers") [Next](class_labelsettings.md "LabelSettings")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_inputeventwithmodifiers.md "InputEventWithModifiers") [Next](class_labelsettings.md "LabelSettings")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).