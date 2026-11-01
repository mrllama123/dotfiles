---
title: Expression — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_expression.html
crawled_at: "2026-08-13T10:22:20+12:00"
content_hash: e3557e5a346febde7c44a53327cfb449891d972b5c4041a9ace61876961d2850
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Expression

* * *

# Expression

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A class that stores an expression you can execute.

## Description

An expression can be made of any arithmetic operation, built-in math function call, method call of a passed instance, or built-in type construction call.

An example expression text using the built-in math functions could be `sqrt(pow(3, 2) + pow(4, 2))`.

In the following example we use a [LineEdit](class_lineedit.md#class-lineedit) node to write our expression and show the result.

GDScriptC#

```
var expression = Expression.new()

func _ready():
    $LineEdit.text_submitted.connect(self._on_text_submitted)

func _on_text_submitted(command):
    var error = expression.parse(command)
    if error != OK:
        print(expression.get_error_text())
        return
    var result = expression.execute()
    if not expression.has_execute_failed():
        $LineEdit.text = str(result)

```

```
private Expression _expression = new Expression();

public override void _Ready()
{
    GetNode<LineEdit>("LineEdit").TextSubmitted += OnTextEntered;
}

private void OnTextEntered(string command)
{
    Error error = _expression.Parse(command);
    if (error != Error.Ok)
    {
        GD.Print(_expression.GetErrorText());
        return;
    }
    Variant result = _expression.Execute();
    if (!_expression.HasExecuteFailed())
    {
        GetNode<LineEdit>("LineEdit").Text = result.ToString();
    }
}

```

## Tutorials

- [Evaluating Expressions](../tutorials/scripting/evaluating_expressions.md)


## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [execute](#class-expression-method-execute)(inputs: [Array](class_array.md#class-array) = \[\], base\_instance: [Object](class_object.md#class-object) = null, show\_error: [bool](class_bool.md#class-bool) = true, const\_calls\_only: [bool](class_bool.md#class-bool) = false) |
| [String](class_string.md#class-string) | [get\_error\_text](#class-expression-method-get-error-text)() const |
| [bool](class_bool.md#class-bool) | [has\_execute\_failed](#class-expression-method-has-execute-failed)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [parse](#class-expression-method-parse)(expression: [String](class_string.md#class-string), input\_names: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray()) |

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **execute**(inputs: [Array](class_array.md#class-array) = \[\], base\_instance: [Object](class_object.md#class-object) = null, show\_error: [bool](class_bool.md#class-bool) = true, const\_calls\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-expression-method-execute)

Executes the expression that was previously parsed by [parse()](#class-expression-method-parse) and returns the result. Before you use the returned object, you should check if the method failed by calling [has\_execute\_failed()](#class-expression-method-has-execute-failed).

If you defined input variables in [parse()](#class-expression-method-parse), you can specify their values in the inputs array, in the same order.

* * *

[String](class_string.md#class-string) **get\_error\_text**() const [🔗](#class-expression-method-get-error-text)

Returns the error text if [parse()](#class-expression-method-parse) or [execute()](#class-expression-method-execute) has failed.

* * *

[bool](class_bool.md#class-bool) **has\_execute\_failed**() const [🔗](#class-expression-method-has-execute-failed)

Returns `true` if [execute()](#class-expression-method-execute) has failed.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **parse**(expression: [String](class_string.md#class-string), input\_names: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray()) [🔗](#class-expression-method-parse)

Parses the expression and returns an [Error](class_@globalscope.md#enum-globalscope-error) code.

You can optionally specify names of variables that may appear in the expression with `input_names`, so that you can bind them when it gets executed.

[Previous](class_engineprofiler.md "EngineProfiler") [Next](class_fileaccess.md "FileAccess")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_engineprofiler.md "EngineProfiler") [Next](class_fileaccess.md "FileAccess")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).