---
title: NodePath — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_nodepath.html
crawled_at: "2026-08-13T10:21:49+12:00"
content_hash: 538bd2e2222ac22904142dfb5a3b89f81fa9eda68405c90e0f2f18b3b0ff7c33
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - NodePath

* * *

# NodePath

A pre-parsed scene tree path.

## Description

The **NodePath** built-in [Variant](class_variant.md#class-variant) type represents a path to a node or property in a hierarchy of nodes. It is designed to be efficiently passed into many built-in methods (such as [Node.get\_node()](class_node.md#class-node-method-get-node), [Object.set\_indexed()](class_object.md#class-object-method-set-indexed), [Tween.tween\_property()](class_tween.md#class-tween-method-tween-property), etc.) without a hard dependence on the node or property they point to.

A node path is represented as a [String](class_string.md#class-string) composed of slash-separated ( `/`) node names and colon-separated ( `:`) property names (also called "subnames"). Similar to a filesystem path, `".."` and `"."` are special node names. They refer to the parent node and the current node, respectively.

The following examples are paths relative to the current node:

```
^"A"     # Points to the direct child A.
^"A/B"   # Points to A's child B.
^"."     # Points to the current node.
^".."    # Points to the parent node.
^"../C"  # Points to the sibling node C.
^"../.." # Points to the grandparent node.

```

A leading slash means the path is absolute, and begins from the [SceneTree](class_scenetree.md#class-scenetree):

```
^"/root"            # Points to the SceneTree's root Window.
^"/root/Title"      # May point to the main scene's root node named "Title".
^"/root/Global"     # May point to an autoloaded node or scene named "Global".

```

Despite their name, node paths may also point to a property:

```
^":position"           # Points to this object's position.
^":position:x"         # Points to this object's position in the x axis.
^"Camera3D:rotation:y" # Points to the child Camera3D and its y rotation.
^"/root:size:x"        # Points to the root Window and its width.

```

In some situations, it's possible to omit the leading `:` when pointing to an object's property. As an example, this is the case with [Object.set\_indexed()](class_object.md#class-object-method-set-indexed) and [Tween.tween\_property()](class_tween.md#class-tween-method-tween-property), as those methods call [get\_as\_property\_path()](#class-nodepath-method-get-as-property-path) under the hood. However, it's generally recommended to keep the `:` prefix.

Node paths cannot check whether they are valid and may point to nodes or properties that do not exist. Their meaning depends entirely on the context in which they're used.

You usually do not have to worry about the **NodePath** type, as strings are automatically converted to the type when necessary. There are still times when defining node paths is useful. For example, exported **NodePath** properties allow you to easily select any node within the currently edited scene. They are also automatically updated when moving, renaming or deleting nodes in the scene tree editor. See also [@GDScript.@export\_node\_path](class_@gdscript.md#class-gdscript-annotation-export-node-path).

See also [StringName](class_stringname.md#class-stringname), which is a similar type designed for optimized strings.

**Note:** In a boolean context, a **NodePath** will evaluate to `false` if it is empty ( `NodePath("")`). Otherwise, a **NodePath** will always evaluate to `true`.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [2D Role Playing Game (RPG) Demo](https://godotengine.org/asset-library/asset/2729)


## Constructors

|     |     |
| --- | --- |
| [NodePath](#class-nodepath) | [NodePath](#class-nodepath-constructor-nodepath)() |
| [NodePath](#class-nodepath) | [NodePath](#class-nodepath-constructor-nodepath)(from: [NodePath](#class-nodepath)) |
| [NodePath](#class-nodepath) | [NodePath](#class-nodepath-constructor-nodepath)(from: [String](class_string.md#class-string)) |

## Methods

|     |     |
| --- | --- |
| [NodePath](#class-nodepath) | [get\_as\_property\_path](#class-nodepath-method-get-as-property-path)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_concatenated\_names](#class-nodepath-method-get-concatenated-names)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_concatenated\_subnames](#class-nodepath-method-get-concatenated-subnames)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_name](#class-nodepath-method-get-name)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_name\_count](#class-nodepath-method-get-name-count)() const |
| [StringName](class_stringname.md#class-stringname) | [get\_subname](#class-nodepath-method-get-subname)(idx: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_subname\_count](#class-nodepath-method-get-subname-count)() const |
| [int](class_int.md#class-int) | [hash](#class-nodepath-method-hash)() const |
| [bool](class_bool.md#class-bool) | [is\_absolute](#class-nodepath-method-is-absolute)() const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-nodepath-method-is-empty)() const |
| [NodePath](#class-nodepath) | [slice](#class-nodepath-method-slice)(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-nodepath-operator-neq-nodepath)(right: [NodePath](#class-nodepath)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-nodepath-operator-eq-nodepath)(right: [NodePath](#class-nodepath)) |

* * *

## Constructor Descriptions

[NodePath](#class-nodepath) **NodePath**() [🔗](#class-nodepath-constructor-nodepath)

Constructs an empty **NodePath**.

* * *

[NodePath](#class-nodepath) **NodePath**(from: [NodePath](#class-nodepath))

Constructs a **NodePath** as a copy of the given **NodePath**.

* * *

[NodePath](#class-nodepath) **NodePath**(from: [String](class_string.md#class-string))

Constructs a **NodePath** from a [String](class_string.md#class-string). The created path is absolute if prefixed with a slash (see [is\_absolute()](#class-nodepath-method-is-absolute)).

The "subnames" optionally included after the path to the target node can point to properties, and can also be nested.

The following strings can be valid node paths:

```
# Points to the Sprite2D node.
"Level/RigidBody2D/Sprite2D"

# Points to the Sprite2D node and its "texture" resource.
# get_node() would retrieve the Sprite2D, while get_node_and_resource()
# would retrieve both the Sprite2D node and the "texture" resource.
"Level/RigidBody2D/Sprite2D:texture"

# Points to the Sprite2D node and its "position" property.
"Level/RigidBody2D/Sprite2D:position"

# Points to the Sprite2D node and the "x" component of its "position" property.
"Level/RigidBody2D/Sprite2D:position:x"

# Points to the RigidBody2D node as an absolute path beginning from the SceneTree.
"/root/Level/RigidBody2D"

```

**Note:** In GDScript, it's also possible to convert a constant string into a node path by prefixing it with `^`. `^"path/to/node"` is equivalent to `NodePath("path/to/node")`.

* * *

## Method Descriptions

[NodePath](#class-nodepath) **get\_as\_property\_path**() const [🔗](#class-nodepath-method-get-as-property-path)

Returns a copy of this node path with a colon character ( `:`) prefixed, transforming it to a pure property path with no node names (relative to the current node).

GDScriptC#

```
# node_path points to the "x" property of the child node named "position".
var node_path = ^"position:x"

# property_path points to the "position" in the "x" axis of this node.
var property_path = node_path.get_as_property_path()
print(property_path) # Prints ":position:x"

```

```
// nodePath points to the "x" property of the child node named "position".
var nodePath = new NodePath("position:x");

// propertyPath points to the "position" in the "x" axis of this node.
NodePath propertyPath = nodePath.GetAsPropertyPath();
GD.Print(propertyPath); // Prints ":position:x"

```

* * *

[StringName](class_stringname.md#class-stringname) **get\_concatenated\_names**() const [🔗](#class-nodepath-method-get-concatenated-names)

Returns all node names concatenated with a slash character ( `/`) as a single [StringName](class_stringname.md#class-stringname).

* * *

[StringName](class_stringname.md#class-stringname) **get\_concatenated\_subnames**() const [🔗](#class-nodepath-method-get-concatenated-subnames)

Returns all property subnames concatenated with a colon character ( `:`) as a single [StringName](class_stringname.md#class-stringname).

GDScriptC#

```
var node_path = ^"Sprite2D:texture:resource_name"
print(node_path.get_concatenated_subnames()) # Prints "texture:resource_name"

```

```
var nodePath = new NodePath("Sprite2D:texture:resource_name");
GD.Print(nodePath.GetConcatenatedSubnames()); // Prints "texture:resource_name"

```

* * *

[StringName](class_stringname.md#class-stringname) **get\_name**(idx: [int](class_int.md#class-int)) const [🔗](#class-nodepath-method-get-name)

Returns the node name indicated by `idx`, starting from 0. If `idx` is out of bounds, an error is generated. See also [get\_subname\_count()](#class-nodepath-method-get-subname-count) and [get\_name\_count()](#class-nodepath-method-get-name-count).

GDScriptC#

```
var sprite_path = NodePath("../RigidBody2D/Sprite2D")
print(sprite_path.get_name(0)) # Prints ".."
print(sprite_path.get_name(1)) # Prints "RigidBody2D"
print(sprite_path.get_name(2)) # Prints "Sprite"

```

```
var spritePath = new NodePath("../RigidBody2D/Sprite2D");
GD.Print(spritePath.GetName(0)); // Prints ".."
GD.Print(spritePath.GetName(1)); // Prints "PathFollow2D"
GD.Print(spritePath.GetName(2)); // Prints "Sprite"

```

* * *

[int](class_int.md#class-int) **get\_name\_count**() const [🔗](#class-nodepath-method-get-name-count)

Returns the number of node names in the path. Property subnames are not included.

For example, `"../RigidBody2D/Sprite2D:texture"` contains 3 node names.

* * *

[StringName](class_stringname.md#class-stringname) **get\_subname**(idx: [int](class_int.md#class-int)) const [🔗](#class-nodepath-method-get-subname)

Returns the property name indicated by `idx`, starting from 0. If `idx` is out of bounds, an error is generated. See also [get\_subname\_count()](#class-nodepath-method-get-subname-count).

GDScriptC#

```
var path_to_name = NodePath("Sprite2D:texture:resource_name")
print(path_to_name.get_subname(0)) # Prints "texture"
print(path_to_name.get_subname(1)) # Prints "resource_name"

```

```
var pathToName = new NodePath("Sprite2D:texture:resource_name");
GD.Print(pathToName.GetSubname(0)); // Prints "texture"
GD.Print(pathToName.GetSubname(1)); // Prints "resource_name"

```

* * *

[int](class_int.md#class-int) **get\_subname\_count**() const [🔗](#class-nodepath-method-get-subname-count)

Returns the number of property names ("subnames") in the path. Each subname in the node path is listed after a colon character ( `:`).

For example, `"Level/RigidBody2D/Sprite2D:texture:resource_name"` contains 2 subnames.

* * *

[int](class_int.md#class-int) **hash**() const [🔗](#class-nodepath-method-hash)

Returns the 32-bit hash value representing the node path's contents.

**Note:** Node paths with equal hash values are _not_ guaranteed to be the same, as a result of hash collisions. Node paths with different hash values are guaranteed to be different.

* * *

[bool](class_bool.md#class-bool) **is\_absolute**() const [🔗](#class-nodepath-method-is-absolute)

Returns `true` if the node path is absolute. Unlike a relative path, an absolute path is represented by a leading slash character ( `/`) and always begins from the [SceneTree](class_scenetree.md#class-scenetree). It can be used to reliably access nodes from the root node (e.g. `"/root/Global"` if an autoload named "Global" exists).

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-nodepath-method-is-empty)

Returns `true` if the node path has been constructed from an empty [String](class_string.md#class-string) ( `""`).

* * *

[NodePath](#class-nodepath) **slice**(begin: [int](class_int.md#class-int), end: [int](class_int.md#class-int) = 2147483647) const [🔗](#class-nodepath-method-slice)

Returns the slice of the **NodePath**, from `begin` (inclusive) to `end` (exclusive), as a new **NodePath**.

The absolute value of `begin` and `end` will be clamped to the sum of [get\_name\_count()](#class-nodepath-method-get-name-count) and [get\_subname\_count()](#class-nodepath-method-get-subname-count), so the default value for `end` makes it slice to the end of the **NodePath** by default (i.e. `path.slice(1)` is a shorthand for `path.slice(1, path.get_name_count() + path.get_subname_count())`).

If either `begin` or `end` are negative, they will be relative to the end of the **NodePath** (i.e. `path.slice(0, -2)` is a shorthand for `path.slice(0, path.get_name_count() + path.get_subname_count() - 2)`).

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [NodePath](#class-nodepath)) [🔗](#class-nodepath-operator-neq-nodepath)

Returns `true` if two node paths are not equal.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [NodePath](#class-nodepath)) [🔗](#class-nodepath-operator-eq-nodepath)

Returns `true` if two node paths are equal, that is, they are composed of the same node names and subnames in the same order.

[Previous](class_int.md "int") [Next](class_packedbytearray.md "PackedByteArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_int.md "int") [Next](class_packedbytearray.md "PackedByteArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).