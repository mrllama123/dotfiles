---
title: Callable — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_callable.html
crawled_at: "2026-08-13T10:21:20+12:00"
content_hash: 6543066b64ae75d9d44fe243c072785827e8c33b561bfb0c3629f143d5f10de0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Callable

* * *

# Callable

A built-in type representing a method or a standalone function.

## Description

**Callable** is a built-in [Variant](class_variant.md#class-variant) type that represents a function. It can either be a method within an [Object](class_object.md#class-object) instance, or a custom callable used for different purposes (see [is\_custom()](#class-callable-method-is-custom)). Like all [Variant](class_variant.md#class-variant) types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks.

GDScriptC#

```
func print_args(arg1, arg2, arg3 = ""):
    prints(arg1, arg2, arg3)

func test():
    var callable = Callable(self, "print_args")
    callable.call("hello", "world")  # Prints "hello world ".
    callable.call(Vector2.UP, 42, callable)  # Prints "(0.0, -1.0) 42 Node(node.gd)::print_args"
    callable.call("invalid")  # Invalid call, should have at least 2 arguments.

```

```
// Default parameter values are not supported.
public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
{
    GD.PrintS(arg1, arg2, arg3);
}

public void Test()
{
    // Invalid calls fail silently.
    Callable callable = new Callable(this, MethodName.PrintArgs);
    callable.Call("hello", "world"); // Default parameter values are not supported, should have 3 arguments.
    callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
    callable.Call("invalid"); // Invalid call, should have 3 arguments.
}

```

In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an [Object](class_object.md#class-object) instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling [get\_method()](#class-callable-method-get-method).

```
func _init():
    var my_lambda = func (message):
        print(message)

    # Prints "Hello everyone!"
    my_lambda.call("Hello everyone!")

    # Prints "Attack!", when the button_pressed signal is emitted.
    button_pressed.connect(func(): print("Attack!"))

```

In GDScript, you can access methods and global functions as **Callable** s:

```
tween.tween_callback(node.queue_free)  # Object methods.
tween.tween_callback(array.clear)  # Methods of built-in types.
tween.tween_callback(print.bind("Test"))  # Global functions.

```

**Note:** [Dictionary](class_dictionary.md#class-dictionary) does not support the above due to ambiguity with keys.

```
var dictionary = { "hello": "world" }

# This will not work, `clear` is treated as a key.
tween.tween_callback(dictionary.clear)

# This will work.
tween.tween_callback(Callable.create(dictionary, "clear"))

```

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Constructors

|     |     |
| --- | --- |
| [Callable](#class-callable) | [Callable](#class-callable-constructor-callable)() |
| [Callable](#class-callable) | [Callable](#class-callable-constructor-callable)(from: [Callable](#class-callable)) |
| [Callable](#class-callable) | [Callable](#class-callable-constructor-callable)(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname)) |

## Methods

|     |     |
| --- | --- |
| [Callable](#class-callable) | [bind](#class-callable-method-bind)(...) varargconst |
| [Callable](#class-callable) | [bindv](#class-callable-method-bindv)(arguments: [Array](class_array.md#class-array)) |
| [Variant](class_variant.md#class-variant) | [call](#class-callable-method-call)(...) varargconst |
| void | [call\_deferred](#class-callable-method-call-deferred)(...) varargconst |
| [Variant](class_variant.md#class-variant) | [callv](#class-callable-method-callv)(arguments: [Array](class_array.md#class-array)) const |
| [Callable](#class-callable) | [create](#class-callable-method-create)(variant: [Variant](class_variant.md#class-variant), method: [StringName](class_stringname.md#class-stringname)) static |
| [int](class_int.md#class-int) | [get\_argument\_count](#class-callable-method-get-argument-count)() const |
| [Array](class_array.md#class-array) | [get\_bound\_arguments](#class-callable-method-get-bound-arguments)() const |
| [int](class_int.md#class-int) | [get\_bound\_arguments\_count](#class-callable-method-get-bound-arguments-count)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_method](#class-callable-method-get-method)() const |
| [Object](class_object.md#class-object) | [get\_object](#class-callable-method-get-object)() const |
| [int](class_int.md#class-int) | [get\_object\_id](#class-callable-method-get-object-id)() const |
| [int](class_int.md#class-int) | [get\_unbound\_arguments\_count](#class-callable-method-get-unbound-arguments-count)() const |
| [int](class_int.md#class-int) | [hash](#class-callable-method-hash)() const |
| [bool](class_bool.md#class-bool) | [is\_custom](#class-callable-method-is-custom)() const |
| [bool](class_bool.md#class-bool) | [is\_null](#class-callable-method-is-null)() const |
| [bool](class_bool.md#class-bool) | [is\_standard](#class-callable-method-is-standard)() const |
| [bool](class_bool.md#class-bool) | [is\_valid](#class-callable-method-is-valid)() const |
| void | [rpc](#class-callable-method-rpc)(...) varargconst |
| void | [rpc\_id](#class-callable-method-rpc-id)(peer\_id: [int](class_int.md#class-int), ...) varargconst |
| [Callable](#class-callable) | [unbind](#class-callable-method-unbind)(argcount: [int](class_int.md#class-int)) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-callable-operator-neq-callable)(right: [Callable](#class-callable)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-callable-operator-eq-callable)(right: [Callable](#class-callable)) |

* * *

## Constructor Descriptions

[Callable](#class-callable) **Callable**() [🔗](#class-callable-constructor-callable)

Constructs an empty **Callable**, with no object nor method bound.

* * *

[Callable](#class-callable) **Callable**(from: [Callable](#class-callable))

Constructs a **Callable** as a copy of the given **Callable**.

* * *

[Callable](#class-callable) **Callable**(object: [Object](class_object.md#class-object), method: [StringName](class_stringname.md#class-stringname))

Creates a new **Callable** for the method named `method` in the specified `object`.

**Note:** For methods of built-in [Variant](class_variant.md#class-variant) types, use [create()](#class-callable-method-create) instead.

* * *

## Method Descriptions

[Callable](#class-callable) **bind**(...) varargconst [🔗](#class-callable-method-bind)

Returns a copy of this **Callable** with one or more arguments bound. When called, the bound arguments are passed _after_ the arguments supplied by [call()](#class-callable-method-call). See also [unbind()](#class-callable-method-unbind).

**Note:** When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.

* * *

[Callable](#class-callable) **bindv**(arguments: [Array](class_array.md#class-array)) [🔗](#class-callable-method-bindv)

Returns a copy of this **Callable** with one or more arguments bound, reading them from an array. When called, the bound arguments are passed _after_ the arguments supplied by [call()](#class-callable-method-call). See also [unbind()](#class-callable-method-unbind).

**Note:** When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.

* * *

[Variant](class_variant.md#class-variant) **call**(...) varargconst [🔗](#class-callable-method-call)

Calls the method represented by this **Callable**. Arguments can be passed and should match the method's signature.

* * *

void **call\_deferred**(...) varargconst [🔗](#class-callable-method-call-deferred)

Calls the method represented by this **Callable** in deferred mode, i.e. at the end of the current frame. Arguments can be passed and should match the method's signature.

GDScriptC#

```
func _ready():
    grab_focus.call_deferred()

```

```
public override void _Ready()
{
    Callable.From(GrabFocus).CallDeferred();
}

```

**Note:** Deferred calls are processed at idle time. Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.

See also [Object.call\_deferred()](class_object.md#class-object-method-call-deferred).

* * *

[Variant](class_variant.md#class-variant) **callv**(arguments: [Array](class_array.md#class-array)) const [🔗](#class-callable-method-callv)

Calls the method represented by this **Callable**. Unlike [call()](#class-callable-method-call), this method expects all arguments to be contained inside the `arguments` [Array](class_array.md#class-array).

* * *

[Callable](#class-callable) **create**(variant: [Variant](class_variant.md#class-variant), method: [StringName](class_stringname.md#class-stringname)) static [🔗](#class-callable-method-create)

Creates a new **Callable** for the method named `method` in the specified `variant`. To represent a method of a built-in [Variant](class_variant.md#class-variant) type, a custom callable is used (see [is\_custom()](#class-callable-method-is-custom)). If `variant` is [Object](class_object.md#class-object), then a standard callable will be created instead.

**Note:** This method is always necessary for the [Dictionary](class_dictionary.md#class-dictionary) type, as property syntax is used to access its entries. You may also use this method when `variant`'s type is not known in advance (for polymorphism).

* * *

[int](class_int.md#class-int) **get\_argument\_count**() const [🔗](#class-callable-method-get-argument-count)

Returns the total number of arguments this **Callable** should take, including optional arguments. This means that any arguments bound with [bind()](#class-callable-method-bind) are _subtracted_ from the result, and any arguments unbound with [unbind()](#class-callable-method-unbind) are _added_ to the result.

* * *

[Array](class_array.md#class-array) **get\_bound\_arguments**() const [🔗](#class-callable-method-get-bound-arguments)

Returns the array of arguments bound via successive [bind()](#class-callable-method-bind) or [unbind()](#class-callable-method-unbind) calls. These arguments will be added _after_ the arguments passed to the call, from which [get\_unbound\_arguments\_count()](#class-callable-method-get-unbound-arguments-count) arguments on the right have been previously excluded.

```
func get_effective_arguments(callable, call_args):
    assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
    var result = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
    result.append_array(callable.get_bound_arguments())
    return result

```

* * *

[int](class_int.md#class-int) **get\_bound\_arguments\_count**() const [🔗](#class-callable-method-get-bound-arguments-count)

Returns the total amount of arguments bound via successive [bind()](#class-callable-method-bind) or [unbind()](#class-callable-method-unbind) calls. This is the same as the size of the array returned by [get\_bound\_arguments()](#class-callable-method-get-bound-arguments). See [get\_bound\_arguments()](#class-callable-method-get-bound-arguments) for details.

**Note:** The [get\_bound\_arguments\_count()](#class-callable-method-get-bound-arguments-count) and [get\_unbound\_arguments\_count()](#class-callable-method-get-unbound-arguments-count) methods can both return positive values.

* * *

[StringName](class_stringname.md#class-stringname) **get\_method**() const [🔗](#class-callable-method-get-method)

Returns the name of the method represented by this **Callable**. If the callable is a GDScript lambda function, returns the function's name or `"<anonymous lambda>"`.

* * *

[Object](class_object.md#class-object) **get\_object**() const [🔗](#class-callable-method-get-object)

Returns the object on which this **Callable** is called.

* * *

[int](class_int.md#class-int) **get\_object\_id**() const [🔗](#class-callable-method-get-object-id)

Returns the ID of this **Callable**'s object (see [Object.get\_instance\_id()](class_object.md#class-object-method-get-instance-id)).

* * *

[int](class_int.md#class-int) **get\_unbound\_arguments\_count**() const [🔗](#class-callable-method-get-unbound-arguments-count)

Returns the total amount of arguments unbound via successive [bind()](#class-callable-method-bind) or [unbind()](#class-callable-method-unbind) calls. See [get\_bound\_arguments()](#class-callable-method-get-bound-arguments) for details.

**Note:** The [get\_bound\_arguments\_count()](#class-callable-method-get-bound-arguments-count) and [get\_unbound\_arguments\_count()](#class-callable-method-get-unbound-arguments-count) methods can both return positive values.

* * *

[int](class_int.md#class-int) **hash**() const [🔗](#class-callable-method-hash)

Returns the 32-bit hash value of this **Callable**'s object.

**Note:** **Callable** s with equal content will always produce identical hash values. However, the reverse is not true. Returning identical hash values does _not_ imply the callables are equal, because different callables can have identical hash values due to hash collisions. The engine uses a 32-bit hash algorithm for [hash()](#class-callable-method-hash).

* * *

[bool](class_bool.md#class-bool) **is\_custom**() const [🔗](#class-callable-method-is-custom)

Returns `true` if this **Callable** is a custom callable. Custom callables are used:

- for binding/unbinding arguments (see [bind()](#class-callable-method-bind) and [unbind()](#class-callable-method-unbind));

- for representing methods of built-in [Variant](class_variant.md#class-variant) types (see [create()](#class-callable-method-create));

- for representing global, lambda, and RPC functions in GDScript;

- for other purposes in the core, GDExtension, and C#.


* * *

[bool](class_bool.md#class-bool) **is\_null**() const [🔗](#class-callable-method-is-null)

Returns `true` if this **Callable** has no target to call the method on. Equivalent to `callable == Callable()`.

**Note:** This is _not_ the same as `not is_valid()` and using `not is_null()` will _not_ guarantee that this callable can be called. Use [is\_valid()](#class-callable-method-is-valid) instead.

* * *

[bool](class_bool.md#class-bool) **is\_standard**() const [🔗](#class-callable-method-is-standard)

Returns `true` if this **Callable** is a standard callable. This method is the opposite of [is\_custom()](#class-callable-method-is-custom). Returns `false` if this callable is a lambda function.

* * *

[bool](class_bool.md#class-bool) **is\_valid**() const [🔗](#class-callable-method-is-valid)

Returns `true` if the callable's object exists and has a valid method name assigned, or is a custom callable.

* * *

void **rpc**(...) varargconst [🔗](#class-callable-method-rpc)

Perform an RPC (Remote Procedure Call) on all connected peers. This is used for multiplayer and is normally not available, unless the function being called has been marked as _RPC_ (using [@GDScript.@rpc](class_@gdscript.md#class-gdscript-annotation-rpc) or [Node.rpc\_config()](class_node.md#class-node-method-rpc-config)). Calling this method on unsupported functions will result in an error. See [Node.rpc()](class_node.md#class-node-method-rpc).

* * *

void **rpc\_id**(peer\_id: [int](class_int.md#class-int), ...) varargconst [🔗](#class-callable-method-rpc-id)

Perform an RPC (Remote Procedure Call) on a specific peer ID (see multiplayer documentation for reference). This is used for multiplayer and is normally not available unless the function being called has been marked as _RPC_ (using [@GDScript.@rpc](class_@gdscript.md#class-gdscript-annotation-rpc) or [Node.rpc\_config()](class_node.md#class-node-method-rpc-config)). Calling this method on unsupported functions will result in an error. See [Node.rpc\_id()](class_node.md#class-node-method-rpc-id).

* * *

[Callable](#class-callable) **unbind**(argcount: [int](class_int.md#class-int)) const [🔗](#class-callable-method-unbind)

Returns a copy of this **Callable** with a number of arguments unbound. In other words, when the new callable is called the last few arguments supplied by the user are ignored, according to `argcount`. The remaining arguments are passed to the callable. This allows to use the original callable in a context that attempts to pass more arguments than this callable can handle, e.g. a signal with a fixed number of arguments. See also [bind()](#class-callable-method-bind).

**Note:** When this method is chained with other similar methods, the order in which the argument list is modified is read from right to left.

```
func _ready():
    foo.unbind(1).call(1, 2) # Calls foo(1).
    foo.bind(3, 4).unbind(1).call(1, 2) # Calls foo(1, 3, 4), note that it does not change the arguments from bind.

```

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [Callable](#class-callable)) [🔗](#class-callable-operator-neq-callable)

Returns `true` if both **Callable** s invoke different targets.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [Callable](#class-callable)) [🔗](#class-callable-operator-eq-callable)

Returns `true` if both **Callable** s invoke the same custom target.

[Previous](class_bool.md "bool") [Next](class_color.md "Color")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_bool.md "bool") [Next](class_color.md "Color")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).