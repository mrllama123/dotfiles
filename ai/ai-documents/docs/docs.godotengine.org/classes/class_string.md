---
title: String — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_string.html
crawled_at: "2026-08-13T10:34:05+12:00"
content_hash: 82e781117d85c1dccca79d97cb9b30c3aea849c8b66e7c2b3c3b28473bbe9649
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - String

* * *

# String

A built-in type for strings.

## Description

This is the built-in string Variant type (and the one used by GDScript). Strings may contain any number of Unicode characters, and expose methods useful for manipulating and generating strings. Strings are reference-counted and use a copy-on-write approach (every modification to a string returns a new **String**), so passing them around is cheap in resources.

Some string methods have corresponding variations. Variations suffixed with `n` ( [countn()](#class-string-method-countn), [findn()](#class-string-method-findn), [replacen()](#class-string-method-replacen), etc.) are **case-insensitive** (they make no distinction between uppercase and lowercase letters). Method variations prefixed with `r` ( [rfind()](#class-string-method-rfind), [rsplit()](#class-string-method-rsplit), etc.) are reversed, and start from the end of the string, instead of the beginning.

To convert any [Variant](class_variant.md#class-variant) to or from a string, see [@GlobalScope.str()](class_@globalscope.md#class-globalscope-method-str), [@GlobalScope.str\_to\_var()](class_@globalscope.md#class-globalscope-method-str-to-var), and [@GlobalScope.var\_to\_str()](class_@globalscope.md#class-globalscope-method-var-to-str).

**Note:** In a boolean context, a string will evaluate to `false` if it is empty ( `""`). Otherwise, a string will always evaluate to `true`.

Note

There are notable differences when using this API with C#. See [C# API differences to GDScript](../tutorials/scripting/c_sharp/c_sharp_differences.md#doc-c-sharp-differences) for more information.

## Tutorials

- [GDScript format strings](../tutorials/scripting/gdscript/gdscript_format_string.md)


## Constructors

|     |     |
| --- | --- |
| [String](#class-string) | [String](#class-string-constructor-string)() |
| [String](#class-string) | [String](#class-string-constructor-string)(from: [String](#class-string)) |
| [String](#class-string) | [String](#class-string-constructor-string)(from: [NodePath](class_nodepath.md#class-nodepath)) |
| [String](#class-string) | [String](#class-string-constructor-string)(from: [StringName](class_stringname.md#class-stringname)) |

## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [begins\_with](#class-string-method-begins-with)(text: [String](#class-string)) const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [bigrams](#class-string-method-bigrams)() const |
| [int](class_int.md#class-int) | [bin\_to\_int](#class-string-method-bin-to-int)() const |
| [String](#class-string) | [c\_escape](#class-string-method-c-escape)() const |
| [String](#class-string) | [c\_unescape](#class-string-method-c-unescape)() const |
| [String](#class-string) | [capitalize](#class-string-method-capitalize)() const |
| [int](class_int.md#class-int) | [casecmp\_to](#class-string-method-casecmp-to)(to: [String](#class-string)) const |
| [String](#class-string) | [chr](#class-string-method-chr)(code: [int](class_int.md#class-int)) static |
| [bool](class_bool.md#class-bool) | [contains](#class-string-method-contains)(what: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [containsn](#class-string-method-containsn)(what: [String](#class-string)) const |
| [int](class_int.md#class-int) | [count](#class-string-method-count)(what: [String](#class-string), from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [countn](#class-string-method-countn)(what: [String](#class-string), from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = 0) const |
| [String](#class-string) | [dedent](#class-string-method-dedent)() const |
| [bool](class_bool.md#class-bool) | [ends\_with](#class-string-method-ends-with)(text: [String](#class-string)) const |
| [String](#class-string) | [erase](#class-string-method-erase)(position: [int](class_int.md#class-int), chars: [int](class_int.md#class-int) = 1) const |
| [int](class_int.md#class-int) | [filecasecmp\_to](#class-string-method-filecasecmp-to)(to: [String](#class-string)) const |
| [int](class_int.md#class-int) | [filenocasecmp\_to](#class-string-method-filenocasecmp-to)(to: [String](#class-string)) const |
| [int](class_int.md#class-int) | [find](#class-string-method-find)(what: [String](#class-string), from: [int](class_int.md#class-int) = 0) const |
| [int](class_int.md#class-int) | [findn](#class-string-method-findn)(what: [String](#class-string), from: [int](class_int.md#class-int) = 0) const |
| [String](#class-string) | [format](#class-string-method-format)(values: [Variant](class_variant.md#class-variant), placeholder: [String](#class-string) = "{\_}") const |
| [String](#class-string) | [get\_base\_dir](#class-string-method-get-base-dir)() const |
| [String](#class-string) | [get\_basename](#class-string-method-get-basename)() const |
| [String](#class-string) | [get\_extension](#class-string-method-get-extension)() const |
| [String](#class-string) | [get\_file](#class-string-method-get-file)() const |
| [String](#class-string) | [get\_slice](#class-string-method-get-slice)(delimiter: [String](#class-string), slice: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [get\_slice\_count](#class-string-method-get-slice-count)(delimiter: [String](#class-string)) const |
| [String](#class-string) | [get\_slicec](#class-string-method-get-slicec)(delimiter: [int](class_int.md#class-int), slice: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [hash](#class-string-method-hash)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [hex\_decode](#class-string-method-hex-decode)() const |
| [int](class_int.md#class-int) | [hex\_to\_int](#class-string-method-hex-to-int)() const |
| [String](#class-string) | [humanize\_size](#class-string-method-humanize-size)(size: [int](class_int.md#class-int)) static |
| [String](#class-string) | [indent](#class-string-method-indent)(prefix: [String](#class-string)) const |
| [String](#class-string) | [insert](#class-string-method-insert)(position: [int](class_int.md#class-int), what: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_absolute\_path](#class-string-method-is-absolute-path)() const |
| [bool](class_bool.md#class-bool) | [is\_empty](#class-string-method-is-empty)() const |
| [bool](class_bool.md#class-bool) | [is\_relative\_path](#class-string-method-is-relative-path)() const |
| [bool](class_bool.md#class-bool) | [is\_subsequence\_of](#class-string-method-is-subsequence-of)(text: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_subsequence\_ofn](#class-string-method-is-subsequence-ofn)(text: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_ascii\_identifier](#class-string-method-is-valid-ascii-identifier)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_filename](#class-string-method-is-valid-filename)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_float](#class-string-method-is-valid-float)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_hex\_number](#class-string-method-is-valid-hex-number)(with\_prefix: [bool](class_bool.md#class-bool) = false) const |
| [bool](class_bool.md#class-bool) | [is\_valid\_html\_color](#class-string-method-is-valid-html-color)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_identifier](#class-string-method-is-valid-identifier)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_int](#class-string-method-is-valid-int)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_ip\_address](#class-string-method-is-valid-ip-address)() const |
| [bool](class_bool.md#class-bool) | [is\_valid\_unicode\_identifier](#class-string-method-is-valid-unicode-identifier)() const |
| [String](#class-string) | [join](#class-string-method-join)(parts: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const |
| [String](#class-string) | [json\_escape](#class-string-method-json-escape)() const |
| [String](#class-string) | [left](#class-string-method-left)(length: [int](class_int.md#class-int)) const |
| [int](class_int.md#class-int) | [length](#class-string-method-length)() const |
| [String](#class-string) | [lpad](#class-string-method-lpad)(min\_length: [int](class_int.md#class-int), character: [String](#class-string) = " ") const |
| [String](#class-string) | [lstrip](#class-string-method-lstrip)(chars: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [match](#class-string-method-match)(expr: [String](#class-string)) const |
| [bool](class_bool.md#class-bool) | [matchn](#class-string-method-matchn)(expr: [String](#class-string)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [md5\_buffer](#class-string-method-md5-buffer)() const |
| [String](#class-string) | [md5\_text](#class-string-method-md5-text)() const |
| [int](class_int.md#class-int) | [naturalcasecmp\_to](#class-string-method-naturalcasecmp-to)(to: [String](#class-string)) const |
| [int](class_int.md#class-int) | [naturalnocasecmp\_to](#class-string-method-naturalnocasecmp-to)(to: [String](#class-string)) const |
| [int](class_int.md#class-int) | [nocasecmp\_to](#class-string-method-nocasecmp-to)(to: [String](#class-string)) const |
| [String](#class-string) | [num](#class-string-method-num)(number: [float](class_float.md#class-float), decimals: [int](class_int.md#class-int) = -1) static |
| [String](#class-string) | [num\_int64](#class-string-method-num-int64)(number: [int](class_int.md#class-int), base: [int](class_int.md#class-int) = 10, capitalize\_hex: [bool](class_bool.md#class-bool) = false) static |
| [String](#class-string) | [num\_scientific](#class-string-method-num-scientific)(number: [float](class_float.md#class-float)) static |
| [String](#class-string) | [num\_uint64](#class-string-method-num-uint64)(number: [int](class_int.md#class-int), base: [int](class_int.md#class-int) = 10, capitalize\_hex: [bool](class_bool.md#class-bool) = false) static |
| [String](#class-string) | [pad\_decimals](#class-string-method-pad-decimals)(digits: [int](class_int.md#class-int)) const |
| [String](#class-string) | [pad\_zeros](#class-string-method-pad-zeros)(digits: [int](class_int.md#class-int)) const |
| [String](#class-string) | [path\_join](#class-string-method-path-join)(path: [String](#class-string)) const |
| [String](#class-string) | [remove\_char](#class-string-method-remove-char)(what: [int](class_int.md#class-int)) const |
| [String](#class-string) | [remove\_chars](#class-string-method-remove-chars)(chars: [String](#class-string)) const |
| [String](#class-string) | [repeat](#class-string-method-repeat)(count: [int](class_int.md#class-int)) const |
| [String](#class-string) | [replace](#class-string-method-replace)(what: [String](#class-string), forwhat: [String](#class-string)) const |
| [String](#class-string) | [replace\_char](#class-string-method-replace-char)(key: [int](class_int.md#class-int), with: [int](class_int.md#class-int)) const |
| [String](#class-string) | [replace\_chars](#class-string-method-replace-chars)(keys: [String](#class-string), with: [int](class_int.md#class-int)) const |
| [String](#class-string) | [replacen](#class-string-method-replacen)(what: [String](#class-string), forwhat: [String](#class-string)) const |
| [String](#class-string) | [reverse](#class-string-method-reverse)() const |
| [int](class_int.md#class-int) | [rfind](#class-string-method-rfind)(what: [String](#class-string), from: [int](class_int.md#class-int) = -1) const |
| [int](class_int.md#class-int) | [rfindn](#class-string-method-rfindn)(what: [String](#class-string), from: [int](class_int.md#class-int) = -1) const |
| [String](#class-string) | [right](#class-string-method-right)(length: [int](class_int.md#class-int)) const |
| [String](#class-string) | [rpad](#class-string-method-rpad)(min\_length: [int](class_int.md#class-int), character: [String](#class-string) = " ") const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [rsplit](#class-string-method-rsplit)(delimiter: [String](#class-string) = "", allow\_empty: [bool](class_bool.md#class-bool) = true, maxsplit: [int](class_int.md#class-int) = 0) const |
| [String](#class-string) | [rstrip](#class-string-method-rstrip)(chars: [String](#class-string)) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [sha1\_buffer](#class-string-method-sha1-buffer)() const |
| [String](#class-string) | [sha1\_text](#class-string-method-sha1-text)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [sha256\_buffer](#class-string-method-sha256-buffer)() const |
| [String](#class-string) | [sha256\_text](#class-string-method-sha256-text)() const |
| [float](class_float.md#class-float) | [similarity](#class-string-method-similarity)(text: [String](#class-string)) const |
| [String](#class-string) | [simplify\_path](#class-string-method-simplify-path)() const |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [split](#class-string-method-split)(delimiter: [String](#class-string) = "", allow\_empty: [bool](class_bool.md#class-bool) = true, maxsplit: [int](class_int.md#class-int) = 0) const |
| [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) | [split\_floats](#class-string-method-split-floats)(delimiter: [String](#class-string), allow\_empty: [bool](class_bool.md#class-bool) = true) const |
| [String](#class-string) | [strip\_edges](#class-string-method-strip-edges)(left: [bool](class_bool.md#class-bool) = true, right: [bool](class_bool.md#class-bool) = true) const |
| [String](#class-string) | [strip\_escapes](#class-string-method-strip-escapes)() const |
| [String](#class-string) | [substr](#class-string-method-substr)(from: [int](class_int.md#class-int), len: [int](class_int.md#class-int) = -1) const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_ascii\_buffer](#class-string-method-to-ascii-buffer)() const |
| [String](#class-string) | [to\_camel\_case](#class-string-method-to-camel-case)() const |
| [float](class_float.md#class-float) | [to\_float](#class-string-method-to-float)() const |
| [int](class_int.md#class-int) | [to\_int](#class-string-method-to-int)() const |
| [String](#class-string) | [to\_kebab\_case](#class-string-method-to-kebab-case)() const |
| [String](#class-string) | [to\_lower](#class-string-method-to-lower)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_multibyte\_char\_buffer](#class-string-method-to-multibyte-char-buffer)(encoding: [String](#class-string) = "") const |
| [String](#class-string) | [to\_pascal\_case](#class-string-method-to-pascal-case)() const |
| [String](#class-string) | [to\_snake\_case](#class-string-method-to-snake-case)() const |
| [String](#class-string) | [to\_upper](#class-string-method-to-upper)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_utf8\_buffer](#class-string-method-to-utf8-buffer)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_utf16\_buffer](#class-string-method-to-utf16-buffer)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_utf32\_buffer](#class-string-method-to-utf32-buffer)() const |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [to\_wchar\_buffer](#class-string-method-to-wchar-buffer)() const |
| [String](#class-string) | [trim\_prefix](#class-string-method-trim-prefix)(prefix: [String](#class-string)) const |
| [String](#class-string) | [trim\_suffix](#class-string-method-trim-suffix)(suffix: [String](#class-string)) const |
| [int](class_int.md#class-int) | [unicode\_at](#class-string-method-unicode-at)(at: [int](class_int.md#class-int)) const |
| [String](#class-string) | [uri\_decode](#class-string-method-uri-decode)() const |
| [String](#class-string) | [uri\_encode](#class-string-method-uri-encode)() const |
| [String](#class-string) | [uri\_file\_decode](#class-string-method-uri-file-decode)() const |
| [String](#class-string) | [validate\_filename](#class-string-method-validate-filename)() const |
| [String](#class-string) | [validate\_node\_name](#class-string-method-validate-node-name)() const |
| [String](#class-string) | [xml\_escape](#class-string-method-xml-escape)(escape\_quotes: [bool](class_bool.md#class-bool) = false) const |
| [String](#class-string) | [xml\_unescape](#class-string-method-xml-unescape)() const |

## Operators

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [operator !=](#class-string-operator-neq-string)(right: [String](#class-string)) |
| [bool](class_bool.md#class-bool) | [operator !=](#class-string-operator-neq-stringname)(right: [StringName](class_stringname.md#class-stringname)) |
| [String](#class-string) | [operator %](#class-string-operator-mod-variant)(right: [Variant](class_variant.md#class-variant)) |
| [String](#class-string) | [operator +](#class-string-operator-sum-string)(right: [String](#class-string)) |
| [String](#class-string) | [operator +](#class-string-operator-sum-stringname)(right: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [operator <](#class-string-operator-lt-string)(right: [String](#class-string)) |
| [bool](class_bool.md#class-bool) | [operator <=](#class-string-operator-lte-string)(right: [String](#class-string)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-string-operator-eq-string)(right: [String](#class-string)) |
| [bool](class_bool.md#class-bool) | [operator ==](#class-string-operator-eq-stringname)(right: [StringName](class_stringname.md#class-stringname)) |
| [bool](class_bool.md#class-bool) | [operator >](#class-string-operator-gt-string)(right: [String](#class-string)) |
| [bool](class_bool.md#class-bool) | [operator >=](#class-string-operator-gte-string)(right: [String](#class-string)) |
| [String](#class-string) | [operator \[\]](#class-string-operator-idx-int)(index: [int](class_int.md#class-int)) |

* * *

## Constructor Descriptions

[String](#class-string) **String**() [🔗](#class-string-constructor-string)

Constructs an empty **String** ( `""`).

* * *

[String](#class-string) **String**(from: [String](#class-string))

Constructs a **String** as a copy of the given **String**.

* * *

[String](#class-string) **String**(from: [NodePath](class_nodepath.md#class-nodepath))

Constructs a new **String** from the given [NodePath](class_nodepath.md#class-nodepath).

* * *

[String](#class-string) **String**(from: [StringName](class_stringname.md#class-stringname))

Constructs a new **String** from the given [StringName](class_stringname.md#class-stringname).

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **begins\_with**(text: [String](#class-string)) const [🔗](#class-string-method-begins-with)

Returns `true` if the string begins with the given `text`. See also [ends\_with()](#class-string-method-ends-with).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **bigrams**() const [🔗](#class-string-method-bigrams)

Returns an array containing the bigrams (pairs of consecutive characters) of this string.

```
print("Get up!".bigrams()) # Prints ["Ge", "et", "t ", " u", "up", "p!"]

```

* * *

[int](class_int.md#class-int) **bin\_to\_int**() const [🔗](#class-string-method-bin-to-int)

Converts the string representing a binary number into an [int](class_int.md#class-int). The string may optionally be prefixed with `"0b"`, and an additional `-` prefix for negative numbers.

GDScriptC#

```
print("101".bin_to_int())   # Prints 5
print("0b101".bin_to_int()) # Prints 5
print("-0b10".bin_to_int()) # Prints -2

```

```
GD.Print("101".BinToInt());   // Prints 5
GD.Print("0b101".BinToInt()); // Prints 5
GD.Print("-0b10".BinToInt()); // Prints -2

```

* * *

[String](#class-string) **c\_escape**() const [🔗](#class-string-method-c-escape)

Returns a copy of the string with special characters escaped using the C language standard.

* * *

[String](#class-string) **c\_unescape**() const [🔗](#class-string-method-c-unescape)

Returns a copy of the string with escaped characters replaced by their meanings. Supported escape sequences are `\'`, `\"`, `\\`, `\a`, `\b`, `\f`, `\n`, `\r`, `\t`, `\v`.

**Note:** Unlike the GDScript parser, this method doesn't support the `\uXXXX` escape sequence.

* * *

[String](#class-string) **capitalize**() const [🔗](#class-string-method-capitalize)

Changes the appearance of the string: replaces underscores ( `_`) with spaces, adds spaces before uppercase letters in the middle of a word, converts all letters to lowercase, then converts the first one and each one following a space to uppercase.

GDScriptC#

```
"move_local_x".capitalize()   # Returns "Move Local X"
"sceneFile_path".capitalize() # Returns "Scene File Path"
"2D, FPS, PNG".capitalize()   # Returns "2d, Fps, Png"

```

```
"move_local_x".Capitalize();   // Returns "Move Local X"
"sceneFile_path".Capitalize(); // Returns "Scene File Path"
"2D, FPS, PNG".Capitalize();   // Returns "2d, Fps, Png"

```

* * *

[int](class_int.md#class-int) **casecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-casecmp-to)

Performs a case-sensitive comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" and "greater than" are determined by the [Unicode code points](https://en.wikipedia.org/wiki/List_of_Unicode_characters) of each string, which roughly matches the alphabetical order.

If the character comparison reaches the end of one string, but the other string contains more characters, then it will use length as the deciding factor: `1` will be returned if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is always `0`.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [nocasecmp\_to()](#class-string-method-nocasecmp-to), [filecasecmp\_to()](#class-string-method-filecasecmp-to), and [naturalcasecmp\_to()](#class-string-method-naturalcasecmp-to).

* * *

[String](#class-string) **chr**(code: [int](class_int.md#class-int)) static [🔗](#class-string-method-chr)

Returns a single Unicode character from the integer `code`. You may use [unicodelookup.com](https://unicodelookup.com/) or [unicode.org](https://www.unicode.org/charts/) as points of reference.

```
print(String.chr(65))     # Prints "A"
print(String.chr(129302)) # Prints "🤖" (robot face emoji)

```

See also [unicode\_at()](#class-string-method-unicode-at), [@GDScript.char()](class_@gdscript.md#class-gdscript-method-char), and [@GDScript.ord()](class_@gdscript.md#class-gdscript-method-ord).

* * *

[bool](class_bool.md#class-bool) **contains**(what: [String](#class-string)) const [🔗](#class-string-method-contains)

Returns `true` if the string contains `what`. In GDScript, this corresponds to the `in` operator.

GDScriptC#

```
print("Node".contains("de")) # Prints true
print("team".contains("I"))  # Prints false
print("I" in "team")         # Prints false

```

```
GD.Print("Node".Contains("de")); // Prints True
GD.Print("team".Contains("I"));  // Prints False

```

If you need to know where `what` is within the string, use [find()](#class-string-method-find). See also [containsn()](#class-string-method-containsn).

* * *

[bool](class_bool.md#class-bool) **containsn**(what: [String](#class-string)) const [🔗](#class-string-method-containsn)

Returns `true` if the string contains `what`, **ignoring case**.

If you need to know where `what` is within the string, use [findn()](#class-string-method-findn). See also [contains()](#class-string-method-contains).

* * *

[int](class_int.md#class-int) **count**(what: [String](#class-string), from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-count)

Returns the number of occurrences of the substring `what` between `from` and `to` positions. If `to` is 0, the search continues until the end of the string.

* * *

[int](class_int.md#class-int) **countn**(what: [String](#class-string), from: [int](class_int.md#class-int) = 0, to: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-countn)

Returns the number of occurrences of the substring `what` between `from` and `to` positions, **ignoring case**. If `to` is 0, the search continues until the end of the string.

* * *

[String](#class-string) **dedent**() const [🔗](#class-string-method-dedent)

Returns a copy of the string with indentation (leading tabs and spaces) removed. See also [indent()](#class-string-method-indent) to add indentation.

* * *

[bool](class_bool.md#class-bool) **ends\_with**(text: [String](#class-string)) const [🔗](#class-string-method-ends-with)

Returns `true` if the string ends with the given `text`. See also [begins\_with()](#class-string-method-begins-with).

* * *

[String](#class-string) **erase**(position: [int](class_int.md#class-int), chars: [int](class_int.md#class-int) = 1) const [🔗](#class-string-method-erase)

Returns a string with `chars` characters erased starting from `position`. If `chars` goes beyond the string's length given the specified `position`, fewer characters will be erased from the returned string. Returns an empty string if either `position` or `chars` is negative. Returns the original string unmodified if `chars` is `0`.

* * *

[int](class_int.md#class-int) **filecasecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-filecasecmp-to)

Like [naturalcasecmp\_to()](#class-string-method-naturalcasecmp-to) but prioritizes strings that begin with periods ( `.`) and underscores ( `_`) before any other character. Useful when sorting folders or file names.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [filenocasecmp\_to()](#class-string-method-filenocasecmp-to), [naturalcasecmp\_to()](#class-string-method-naturalcasecmp-to), and [casecmp\_to()](#class-string-method-casecmp-to).

* * *

[int](class_int.md#class-int) **filenocasecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-filenocasecmp-to)

Like [naturalnocasecmp\_to()](#class-string-method-naturalnocasecmp-to) but prioritizes strings that begin with periods ( `.`) and underscores ( `_`) before any other character. Useful when sorting folders or file names.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [filecasecmp\_to()](#class-string-method-filecasecmp-to), [naturalnocasecmp\_to()](#class-string-method-naturalnocasecmp-to), and [nocasecmp\_to()](#class-string-method-nocasecmp-to).

* * *

[int](class_int.md#class-int) **find**(what: [String](#class-string), from: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-find)

Returns the index of the **first** occurrence of `what` in this string, or `-1` if there are none. The search's start can be specified with `from`, continuing to the end of the string.

GDScriptC#

```
print("Team".find("I")) # Prints -1

print("Potato".find("t"))    # Prints 2
print("Potato".find("t", 3)) # Prints 4
print("Potato".find("t", 5)) # Prints -1

```

```
GD.Print("Team".Find("I")); // Prints -1

GD.Print("Potato".Find("t"));    // Prints 2
GD.Print("Potato".Find("t", 3)); // Prints 4
GD.Print("Potato".Find("t", 5)); // Prints -1

```

**Note:** If you just want to know whether the string contains `what`, use [contains()](#class-string-method-contains). In GDScript, you may also use the `in` operator.

* * *

[int](class_int.md#class-int) **findn**(what: [String](#class-string), from: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-findn)

Returns the index of the **first** **case-insensitive** occurrence of `what` in this string, or `-1` if there are none. The starting search index can be specified with `from`, continuing to the end of the string.

* * *

[String](#class-string) **format**(values: [Variant](class_variant.md#class-variant), placeholder: [String](#class-string) = "{\_}") const [🔗](#class-string-method-format)

Formats the string by replacing all occurrences of `placeholder` with the elements of `values`.

`values` can be a [Dictionary](class_dictionary.md#class-dictionary), an [Array](class_array.md#class-array), or an [Object](class_object.md#class-object). Any underscores in `placeholder` will be replaced with the corresponding keys in advance. Array elements use their index as keys.

```
# Prints "Waiting for Godot is a play by Samuel Beckett, and Godot Engine is named after it."
var use_array_values = "Waiting for {0} is a play by {1}, and {0} Engine is named after it."
print(use_array_values.format(["Godot", "Samuel Beckett"]))

# Prints "User 42 is Godot."
print("User {id} is {name}.".format({"id": 42, "name": "Godot"}))

```

Some additional handling is performed when `values` is an [Array](class_array.md#class-array). If `placeholder` does not contain an underscore, the elements of the `values` array will be used to replace one occurrence of the placeholder in order; If an element of `values` is another 2-element array, it'll be interpreted as a key-value pair.

```
# Prints "User 42 is Godot."
print("User {} is {}.".format([42, "Godot"], "{}"))
print("User {id} is {name}.".format([["id", 42], ["name", "Godot"]]))

```

When passing an [Object](class_object.md#class-object), the property names from [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list) are used as keys.

```
# Prints "Visible true, position (0, 0)"
var node = Node2D.new()
print("Visible {visible}, position {position}".format(node))

```

See also the [GDScript format string](../tutorials/scripting/gdscript/gdscript_format_string.md) tutorial.

**Note:** Each replacement is done sequentially for each element of `values`, **not** all at once. This means that if any element is inserted and it contains another placeholder, it may be changed by the next replacement. While this can be very useful, it often causes unexpected results. If not necessary, make sure `values`'s elements do not contain placeholders.

```
print("{0} {1}".format(["{1}", "x"]))           # Prints "x x"
print("{0} {1}".format(["x", "{0}"]))           # Prints "x {0}"
print("{a} {b}".format({"a": "{b}", "b": "c"})) # Prints "c c"
print("{a} {b}".format({"b": "c", "a": "{b}"})) # Prints "{b} c"

```

**Note:** In C#, it's recommended to [interpolate strings with "$"](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/tokens/interpolated), instead.

* * *

[String](#class-string) **get\_base\_dir**() const [🔗](#class-string-method-get-base-dir)

If the string is a valid file path, returns the base directory name.

```
var dir_path = "/path/to/file.txt".get_base_dir() # dir_path is "/path/to"

```

* * *

[String](#class-string) **get\_basename**() const [🔗](#class-string-method-get-basename)

If the string is a valid file path, returns the full file path, without the extension.

```
var base = "/path/to/file.txt".get_basename() # base is "/path/to/file"

```

* * *

[String](#class-string) **get\_extension**() const [🔗](#class-string-method-get-extension)

If the string is a valid file name or path, returns the file extension without the leading period ( `.`). Otherwise, returns an empty string.

```
var a = "/path/to/file.txt".get_extension() # a is "txt"
var b = "cool.txt".get_extension()          # b is "txt"
var c = "cool.font.tres".get_extension()    # c is "tres"
var d = ".pack1".get_extension()            # d is "pack1"

var e = "file.txt.".get_extension()  # e is ""
var f = "file.txt..".get_extension() # f is ""
var g = "txt".get_extension()        # g is ""
var h = "".get_extension()           # h is ""

```

* * *

[String](#class-string) **get\_file**() const [🔗](#class-string-method-get-file)

If the string is a valid file path, returns the file name, including the extension.

```
var file = "/path/to/icon.png".get_file() # file is "icon.png"

```

* * *

[String](#class-string) **get\_slice**(delimiter: [String](#class-string), slice: [int](class_int.md#class-int)) const [🔗](#class-string-method-get-slice)

Splits the string using a `delimiter` and returns the substring at index `slice`. Returns the original string if `delimiter` does not occur in the string. Returns an empty string if the `slice` does not exist.

This is faster than [split()](#class-string-method-split), if you only need one substring.

```
print("i/am/example/hi".get_slice("/", 2)) # Prints "example"

```

* * *

[int](class_int.md#class-int) **get\_slice\_count**(delimiter: [String](#class-string)) const [🔗](#class-string-method-get-slice-count)

Returns the total number of slices when the string is split with the given `delimiter` (see [split()](#class-string-method-split)).

* * *

[String](#class-string) **get\_slicec**(delimiter: [int](class_int.md#class-int), slice: [int](class_int.md#class-int)) const [🔗](#class-string-method-get-slicec)

Splits the string using a Unicode character with code `delimiter` and returns the substring at index `slice`. Returns an empty string if the `slice` does not exist.

This is faster than [split()](#class-string-method-split), if you only need one substring.

* * *

[int](class_int.md#class-int) **hash**() const [🔗](#class-string-method-hash)

Returns the 32-bit hash value representing the string's contents.

**Note:** Strings with equal hash values are _not_ guaranteed to be the same, as a result of hash collisions. On the contrary, strings with different hash values are guaranteed to be different.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **hex\_decode**() const [🔗](#class-string-method-hex-decode)

Decodes a hexadecimal string as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

GDScriptC#

```
var text = "hello world"
var encoded = text.to_utf8_buffer().hex_encode() # outputs "68656c6c6f20776f726c64"
print(encoded.hex_decode().get_string_from_utf8())

```

```
var text = "hello world";
var encoded = text.ToUtf8Buffer().HexEncode(); // outputs "68656c6c6f20776f726c64"
GD.Print(encoded.HexDecode().GetStringFromUtf8());

```

* * *

[int](class_int.md#class-int) **hex\_to\_int**() const [🔗](#class-string-method-hex-to-int)

Converts the string representing a hexadecimal number into an [int](class_int.md#class-int). The string may be optionally prefixed with `"0x"`, and an additional `-` prefix for negative numbers.

GDScriptC#

```
print("0xff".hex_to_int()) # Prints 255
print("ab".hex_to_int())   # Prints 171

```

```
GD.Print("0xff".HexToInt()); // Prints 255
GD.Print("ab".HexToInt());   // Prints 171

```

* * *

[String](#class-string) **humanize\_size**(size: [int](class_int.md#class-int)) static [🔗](#class-string-method-humanize-size)

Converts `size` which represents a number of bytes into a human-readable form.

The result is in [IEC prefix format](https://en.wikipedia.org/wiki/Binary_prefix#IEC_prefixes), which may end in either `"B"`, `"KiB"`, `"MiB"`, `"GiB"`, `"TiB"`, `"PiB"`, or `"EiB"`.

* * *

[String](#class-string) **indent**(prefix: [String](#class-string)) const [🔗](#class-string-method-indent)

Indents every line of the string with the given `prefix`. Empty lines are not indented. See also [dedent()](#class-string-method-dedent) to remove indentation.

For example, the string can be indented with two tabulations using `"\t\t"`, or four spaces using `"    "`.

* * *

[String](#class-string) **insert**(position: [int](class_int.md#class-int), what: [String](#class-string)) const [🔗](#class-string-method-insert)

Inserts `what` at the given `position` in the string.

* * *

[bool](class_bool.md#class-bool) **is\_absolute\_path**() const [🔗](#class-string-method-is-absolute-path)

Returns `true` if the string is a path to a file or directory, and its starting point is explicitly defined. This method is the opposite of [is\_relative\_path()](#class-string-method-is-relative-path).

This includes all paths starting with `"res://"`, `"user://"`, `"C:\"`, `"/"`, etc.

* * *

[bool](class_bool.md#class-bool) **is\_empty**() const [🔗](#class-string-method-is-empty)

Returns `true` if the string's length is `0` ( `""`). See also [length()](#class-string-method-length).

* * *

[bool](class_bool.md#class-bool) **is\_relative\_path**() const [🔗](#class-string-method-is-relative-path)

Returns `true` if the string is a path, and its starting point is dependent on context. The path could begin from the current directory, or the current [Node](class_node.md#class-node) (if the string is derived from a [NodePath](class_nodepath.md#class-nodepath)), and may sometimes be prefixed with `"./"`. This method is the opposite of [is\_absolute\_path()](#class-string-method-is-absolute-path).

* * *

[bool](class_bool.md#class-bool) **is\_subsequence\_of**(text: [String](#class-string)) const [🔗](#class-string-method-is-subsequence-of)

Returns `true` if all characters of this string can be found in `text` in their original order. This is not the same as [contains()](#class-string-method-contains).

```
var text = "Wow, incredible!"

print("inedible".is_subsequence_of(text)) # Prints true
print("Word!".is_subsequence_of(text))    # Prints true
print("Window".is_subsequence_of(text))   # Prints false
print("".is_subsequence_of(text))         # Prints true

```

* * *

[bool](class_bool.md#class-bool) **is\_subsequence\_ofn**(text: [String](#class-string)) const [🔗](#class-string-method-is-subsequence-ofn)

Returns `true` if all characters of this string can be found in `text` in their original order, **ignoring case**. This is not the same as [containsn()](#class-string-method-containsn).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_ascii\_identifier**() const [🔗](#class-string-method-is-valid-ascii-identifier)

Returns `true` if this string is a valid ASCII identifier. A valid ASCII identifier may contain only letters, digits, and underscores ( `_`), and the first character may not be a digit.

```
print("node_2d".is_valid_ascii_identifier())    # Prints true
print("TYPE_FLOAT".is_valid_ascii_identifier()) # Prints true
print("1st_method".is_valid_ascii_identifier()) # Prints false
print("MyMethod#2".is_valid_ascii_identifier()) # Prints false

```

See also [is\_valid\_unicode\_identifier()](#class-string-method-is-valid-unicode-identifier).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_filename**() const [🔗](#class-string-method-is-valid-filename)

Returns `true` if this string is a valid file name. A valid file name cannot be empty, begin or end with space characters, or contain characters that are not allowed ( `:` `/` `\` `?` `*` `"` `|` `%` `<` `>`).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_float**() const [🔗](#class-string-method-is-valid-float)

Returns `true` if this string represents a valid floating-point number. A valid float may contain only digits, one decimal point ( `.`), and the exponent letter ( `e`). It may also be prefixed with a positive ( `+`) or negative ( `-`) sign. Any valid integer is also a valid float (see [is\_valid\_int()](#class-string-method-is-valid-int)). See also [to\_float()](#class-string-method-to-float).

```
print("1.7".is_valid_float())   # Prints true
print("24".is_valid_float())    # Prints true
print("7e3".is_valid_float())   # Prints true
print("Hello".is_valid_float()) # Prints false

```

* * *

[bool](class_bool.md#class-bool) **is\_valid\_hex\_number**(with\_prefix: [bool](class_bool.md#class-bool) = false) const [🔗](#class-string-method-is-valid-hex-number)

Returns `true` if this string is a valid hexadecimal number. A valid hexadecimal number only contains digits or letters `A` to `F` (either uppercase or lowercase), and may be prefixed with a positive ( `+`) or negative ( `-`) sign.

If `with_prefix` is `true`, the hexadecimal number needs to prefixed by `"0x"` to be considered valid.

```
print("A08E".is_valid_hex_number())    # Prints true
print("-AbCdEf".is_valid_hex_number()) # Prints true
print("2.5".is_valid_hex_number())     # Prints false

print("0xDEADC0DE".is_valid_hex_number(true)) # Prints true

```

* * *

[bool](class_bool.md#class-bool) **is\_valid\_html\_color**() const [🔗](#class-string-method-is-valid-html-color)

Returns `true` if this string is a valid color in hexadecimal HTML notation. The string must be a hexadecimal value (see [is\_valid\_hex\_number()](#class-string-method-is-valid-hex-number)) of either 3, 4, 6 or 8 digits, and may be prefixed by a hash sign ( `#`). Other HTML notations for colors, such as names or `hsl()`, are not considered valid. See also [Color.html()](class_color.md#class-color-method-html).

* * *

[bool](class_bool.md#class-bool) **is\_valid\_identifier**() const [🔗](#class-string-method-is-valid-identifier)

**Deprecated:** Use [is\_valid\_ascii\_identifier()](#class-string-method-is-valid-ascii-identifier) instead.

Returns `true` if this string is a valid identifier. A valid identifier may contain only letters, digits and underscores ( `_`), and the first character may not be a digit.

```
print("node_2d".is_valid_identifier())    # Prints true
print("TYPE_FLOAT".is_valid_identifier()) # Prints true
print("1st_method".is_valid_identifier()) # Prints false
print("MyMethod#2".is_valid_identifier()) # Prints false

```

* * *

[bool](class_bool.md#class-bool) **is\_valid\_int**() const [🔗](#class-string-method-is-valid-int)

Returns `true` if this string represents a valid integer. A valid integer only contains digits, and may be prefixed with a positive ( `+`) or negative ( `-`) sign. See also [to\_int()](#class-string-method-to-int).

```
print("7".is_valid_int())    # Prints true
print("1.65".is_valid_int()) # Prints false
print("Hi".is_valid_int())   # Prints false
print("+3".is_valid_int())   # Prints true
print("-12".is_valid_int())  # Prints true

```

* * *

[bool](class_bool.md#class-bool) **is\_valid\_ip\_address**() const [🔗](#class-string-method-is-valid-ip-address)

Returns `true` if this string represents a well-formatted IPv4 or IPv6 address. This method considers [reserved IP addresses](https://en.wikipedia.org/wiki/Reserved_IP_addresses) such as `"0.0.0.0"` and `"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"` as valid.

* * *

[bool](class_bool.md#class-bool) **is\_valid\_unicode\_identifier**() const [🔗](#class-string-method-is-valid-unicode-identifier)

Returns `true` if this string is a valid Unicode identifier.

A valid Unicode identifier must begin with a Unicode character of class `XID_Start` or `"_"`, and may contain Unicode characters of class `XID_Continue` in the other positions.

```
print("node_2d".is_valid_unicode_identifier())      # Prints true
print("1st_method".is_valid_unicode_identifier())   # Prints false
print("MyMethod#2".is_valid_unicode_identifier())   # Prints false
print("állóképesség".is_valid_unicode_identifier()) # Prints true
print("выносливость".is_valid_unicode_identifier()) # Prints true
print("体力".is_valid_unicode_identifier())         # Prints true

```

See also [is\_valid\_ascii\_identifier()](#class-string-method-is-valid-ascii-identifier).

**Note:** This method checks identifiers the same way as GDScript. See [TextServer.is\_valid\_identifier()](class_textserver.md#class-textserver-method-is-valid-identifier) for more advanced checks.

* * *

[String](#class-string) **join**(parts: [PackedStringArray](class_packedstringarray.md#class-packedstringarray)) const [🔗](#class-string-method-join)

Returns the concatenation of `parts`' elements, with each element separated by the string calling this method. This method is the opposite of [split()](#class-string-method-split).

GDScriptC#

```
var fruits = ["Apple", "Orange", "Pear", "Kiwi"]

print(", ".join(fruits))  # Prints "Apple, Orange, Pear, Kiwi"
print("---".join(fruits)) # Prints "Apple---Orange---Pear---Kiwi"

```

```
string[] fruits = ["Apple", "Orange", "Pear", "Kiwi"];

// In C#, this method is static.
GD.Print(string.Join(", ", fruits));  // Prints "Apple, Orange, Pear, Kiwi"
GD.Print(string.Join("---", fruits)); // Prints "Apple---Orange---Pear---Kiwi"

```

* * *

[String](#class-string) **json\_escape**() const [🔗](#class-string-method-json-escape)

Returns a copy of the string with special characters escaped using the JSON standard. Because it closely matches the C standard, it is possible to use [c\_unescape()](#class-string-method-c-unescape) to unescape the string, if necessary.

* * *

[String](#class-string) **left**(length: [int](class_int.md#class-int)) const [🔗](#class-string-method-left)

Returns the first `length` characters from the beginning of the string. If `length` is negative, strips the last `length` characters from the string's end.

```
print("Hello World!".left(3))  # Prints "Hel"
print("Hello World!".left(-4)) # Prints "Hello Wo"

```

* * *

[int](class_int.md#class-int) **length**() const [🔗](#class-string-method-length)

Returns the number of characters in the string. Empty strings ( `""`) always return `0`. See also [is\_empty()](#class-string-method-is-empty).

* * *

[String](#class-string) **lpad**(min\_length: [int](class_int.md#class-int), character: [String](#class-string) = " ") const [🔗](#class-string-method-lpad)

Formats the string to be at least `min_length` long by adding `character` s to the left of the string, if necessary. See also [rpad()](#class-string-method-rpad).

* * *

[String](#class-string) **lstrip**(chars: [String](#class-string)) const [🔗](#class-string-method-lstrip)

Removes a set of characters defined in `chars` from the string's beginning. See also [rstrip()](#class-string-method-rstrip).

**Note:** `chars` is not a prefix. Use [trim\_prefix()](#class-string-method-trim-prefix) to remove a single prefix, rather than a set of characters.

* * *

[bool](class_bool.md#class-bool) **match**(expr: [String](#class-string)) const [🔗](#class-string-method-match)

Does a simple expression match (also called "glob" or "globbing"), where `*` matches zero or more arbitrary characters and `?` matches any single character except a period ( `.`). An empty string or empty expression always evaluates to `false`.

* * *

[bool](class_bool.md#class-bool) **matchn**(expr: [String](#class-string)) const [🔗](#class-string-method-matchn)

Does a simple **case-insensitive** expression match, where `*` matches zero or more arbitrary characters and `?` matches any single character except a period ( `.`). An empty string or empty expression always evaluates to `false`.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **md5\_buffer**() const [🔗](#class-string-method-md5-buffer)

Returns the [MD5 hash](https://en.wikipedia.org/wiki/MD5) of the string as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

* * *

[String](#class-string) **md5\_text**() const [🔗](#class-string-method-md5-text)

Returns the [MD5 hash](https://en.wikipedia.org/wiki/MD5) of the string as another **String**.

* * *

[int](class_int.md#class-int) **naturalcasecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-naturalcasecmp-to)

Performs a **case-sensitive**, _natural order_ comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the [Unicode code points](https://en.wikipedia.org/wiki/List_of_Unicode_characters) of each string, which roughly matches the alphabetical order.

When used for sorting, natural order comparison orders sequences of numbers by the combined value of each digit as is often expected, instead of the single digit's value. A sorted sequence of numbered strings will be `["1", "2", "3", ...]`, not `["1", "10", "2", "3", ...]`.

If the character comparison reaches the end of one string, but the other string contains more characters, then it will use length as the deciding factor: `1` will be returned if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is always `0`.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [naturalnocasecmp\_to()](#class-string-method-naturalnocasecmp-to), [filecasecmp\_to()](#class-string-method-filecasecmp-to), and [nocasecmp\_to()](#class-string-method-nocasecmp-to).

* * *

[int](class_int.md#class-int) **naturalnocasecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-naturalnocasecmp-to)

Performs a **case-insensitive**, _natural order_ comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the [Unicode code points](https://en.wikipedia.org/wiki/List_of_Unicode_characters) of each string, which roughly matches the alphabetical order. Internally, lowercase characters are converted to uppercase for the comparison.

When used for sorting, natural order comparison orders sequences of numbers by the combined value of each digit as is often expected, instead of the single digit's value. A sorted sequence of numbered strings will be `["1", "2", "3", ...]`, not `["1", "10", "2", "3", ...]`.

If the character comparison reaches the end of one string, but the other string contains more characters, then it will use length as the deciding factor: `1` will be returned if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is always `0`.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [naturalcasecmp\_to()](#class-string-method-naturalcasecmp-to), [filenocasecmp\_to()](#class-string-method-filenocasecmp-to), and [casecmp\_to()](#class-string-method-casecmp-to).

* * *

[int](class_int.md#class-int) **nocasecmp\_to**(to: [String](#class-string)) const [🔗](#class-string-method-nocasecmp-to)

Performs a **case-insensitive** comparison to another string. Returns `-1` if less than, `1` if greater than, or `0` if equal. "Less than" or "greater than" are determined by the [Unicode code points](https://en.wikipedia.org/wiki/List_of_Unicode_characters) of each string, which roughly matches the alphabetical order. Internally, lowercase characters are converted to uppercase for the comparison.

If the character comparison reaches the end of one string, but the other string contains more characters, then it will use length as the deciding factor: `1` will be returned if this string is longer than the `to` string, or `-1` if shorter. Note that the length of empty strings is always `0`.

To get a [bool](class_bool.md#class-bool) result from a string comparison, use the `==` operator instead. See also [casecmp\_to()](#class-string-method-casecmp-to), [filenocasecmp\_to()](#class-string-method-filenocasecmp-to), and [naturalnocasecmp\_to()](#class-string-method-naturalnocasecmp-to).

* * *

[String](#class-string) **num**(number: [float](class_float.md#class-float), decimals: [int](class_int.md#class-int) = -1) static [🔗](#class-string-method-num)

Converts a [float](class_float.md#class-float) to a string representation of a decimal number, with the number of decimal places specified in `decimals`.

If `decimals` is `-1` as by default, the string representation may only have up to 14 significant digits, with digits before the decimal point having priority over digits after.

Trailing zeros are not included in the string. The last digit is rounded, not truncated.

```
String.num(3.141593)     # Returns "3.141593"
String.num(3.141593, 3)  # Returns "3.142"
String.num(3.14159300)   # Returns "3.141593"

# Here, the last digit will be rounded up,
# which reduces the total digit count, since trailing zeros are removed:
String.num(42.129999, 5) # Returns "42.13"

# If `decimals` is not specified, the maximum number of significant digits is 14:
String.num(-0.0000012345432123454321)     # Returns "-0.00000123454321"
String.num(-10000.0000012345432123454321) # Returns "-10000.0000012345"

```

* * *

[String](#class-string) **num\_int64**(number: [int](class_int.md#class-int), base: [int](class_int.md#class-int) = 10, capitalize\_hex: [bool](class_bool.md#class-bool) = false) static [🔗](#class-string-method-num-int64)

Converts the given `number` to a string representation, with the given `base`.

By default, `base` is set to decimal ( `10`). Other common bases in programming include binary ( `2`), [octal](https://en.wikipedia.org/wiki/Octal) ( `8`), hexadecimal ( `16`).

If `capitalize_hex` is `true`, digits higher than 9 are represented in uppercase.

* * *

[String](#class-string) **num\_scientific**(number: [float](class_float.md#class-float)) static [🔗](#class-string-method-num-scientific)

Converts the given `number` to a string representation, in scientific notation.

GDScriptC#

```
var n = -5.2e8
print(n)                        # Prints -520000000
print(String.num_scientific(n)) # Prints -5.2e+08

```

```
// This method is not implemented in C#.
// Use `string.ToString()` with "e" to achieve similar results.
var n = -5.2e8f;
GD.Print(n);                // Prints -520000000
GD.Print(n.ToString("e1")); // Prints -5.2e+008

```

**Note:** In C#, this method is not implemented. To achieve similar results, see C#'s [Standard numeric format strings](https://learn.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings).

* * *

[String](#class-string) **num\_uint64**(number: [int](class_int.md#class-int), base: [int](class_int.md#class-int) = 10, capitalize\_hex: [bool](class_bool.md#class-bool) = false) static [🔗](#class-string-method-num-uint64)

Converts the given unsigned [int](class_int.md#class-int) to a string representation, with the given `base`.

By default, `base` is set to decimal ( `10`). Other common bases in programming include binary ( `2`), [octal](https://en.wikipedia.org/wiki/Octal) ( `8`), hexadecimal ( `16`).

If `capitalize_hex` is `true`, digits higher than 9 are represented in uppercase.

* * *

[String](#class-string) **pad\_decimals**(digits: [int](class_int.md#class-int)) const [🔗](#class-string-method-pad-decimals)

Formats the string representing a number to have an exact number of `digits` _after_ the decimal point.

* * *

[String](#class-string) **pad\_zeros**(digits: [int](class_int.md#class-int)) const [🔗](#class-string-method-pad-zeros)

Formats the string representing a number to have an exact number of `digits` _before_ the decimal point.

* * *

[String](#class-string) **path\_join**(path: [String](#class-string)) const [🔗](#class-string-method-path-join)

Concatenates `path` at the end of the string as a subpath, adding `/` if necessary.

**Example:** `"this/is".path_join("path") == "this/is/path"`.

* * *

[String](#class-string) **remove\_char**(what: [int](class_int.md#class-int)) const [🔗](#class-string-method-remove-char)

Removes all occurrences of the Unicode character with code `what`. Faster version of [replace()](#class-string-method-replace) when the key is only one character long and the replacement is `""`.

* * *

[String](#class-string) **remove\_chars**(chars: [String](#class-string)) const [🔗](#class-string-method-remove-chars)

Removes any occurrence of the characters in `chars`. See also [remove\_char()](#class-string-method-remove-char).

* * *

[String](#class-string) **repeat**(count: [int](class_int.md#class-int)) const [🔗](#class-string-method-repeat)

Repeats this string a number of times. `count` needs to be greater than `0`. Otherwise, returns an empty string.

* * *

[String](#class-string) **replace**(what: [String](#class-string), forwhat: [String](#class-string)) const [🔗](#class-string-method-replace)

Replaces all occurrences of `what` inside the string with the given `forwhat`.

* * *

[String](#class-string) **replace\_char**(key: [int](class_int.md#class-int), with: [int](class_int.md#class-int)) const [🔗](#class-string-method-replace-char)

Replaces all occurrences of the Unicode character with code `key` with the Unicode character with code `with`. Faster version of [replace()](#class-string-method-replace) when the key is only one character long. To get a single character use `"X".unicode_at(0)` (note that some strings, like compound letters and emoji, can be composed of multiple unicode codepoints, and will not work with this method, use [length()](#class-string-method-length) to make sure).

* * *

[String](#class-string) **replace\_chars**(keys: [String](#class-string), with: [int](class_int.md#class-int)) const [🔗](#class-string-method-replace-chars)

Replaces any occurrence of the characters in `keys` with the Unicode character with code `with`. See also [replace\_char()](#class-string-method-replace-char).

* * *

[String](#class-string) **replacen**(what: [String](#class-string), forwhat: [String](#class-string)) const [🔗](#class-string-method-replacen)

Replaces all **case-insensitive** occurrences of `what` inside the string with the given `forwhat`.

* * *

[String](#class-string) **reverse**() const [🔗](#class-string-method-reverse)

Returns the copy of this string in reverse order. This operation works on unicode codepoints, rather than sequences of codepoints, and may break things like compound letters or emojis.

* * *

[int](class_int.md#class-int) **rfind**(what: [String](#class-string), from: [int](class_int.md#class-int) = -1) const [🔗](#class-string-method-rfind)

Returns the index of the **last** occurrence of `what` in this string, or `-1` if there are none. The search's start can be specified with `from`, continuing to the beginning of the string. This method is the reverse of [find()](#class-string-method-find).

* * *

[int](class_int.md#class-int) **rfindn**(what: [String](#class-string), from: [int](class_int.md#class-int) = -1) const [🔗](#class-string-method-rfindn)

Returns the index of the **last** **case-insensitive** occurrence of `what` in this string, or `-1` if there are none. The starting search index can be specified with `from`, continuing to the beginning of the string. This method is the reverse of [findn()](#class-string-method-findn).

* * *

[String](#class-string) **right**(length: [int](class_int.md#class-int)) const [🔗](#class-string-method-right)

Returns the last `length` characters from the end of the string. If `length` is negative, strips the first `length` characters from the string's beginning.

```
print("Hello World!".right(3))  # Prints "ld!"
print("Hello World!".right(-4)) # Prints "o World!"

```

* * *

[String](#class-string) **rpad**(min\_length: [int](class_int.md#class-int), character: [String](#class-string) = " ") const [🔗](#class-string-method-rpad)

Formats the string to be at least `min_length` long, by adding `character` s to the right of the string, if necessary. See also [lpad()](#class-string-method-lpad).

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **rsplit**(delimiter: [String](#class-string) = "", allow\_empty: [bool](class_bool.md#class-bool) = true, maxsplit: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-rsplit)

Splits the string using a `delimiter` and returns an array of the substrings, starting from the end of the string. The splits in the returned array appear in the same order as the original string. If `delimiter` is an empty string, each substring will be a single character.

If `allow_empty` is `false`, empty strings between adjacent delimiters are excluded from the array.

If `maxsplit` is greater than `0`, the number of splits may not exceed `maxsplit`. By default, the entire string is split, which is mostly identical to [split()](#class-string-method-split).

GDScriptC#

```
var some_string = "One,Two,Three,Four"
var some_array = some_string.rsplit(",", true, 1)

print(some_array.size()) # Prints 2
print(some_array[0])     # Prints "One,Two,Three"
print(some_array[1])     # Prints "Four"

```

```
// In C#, there is no String.RSplit() method.

```

* * *

[String](#class-string) **rstrip**(chars: [String](#class-string)) const [🔗](#class-string-method-rstrip)

Removes a set of characters defined in `chars` from the string's end. See also [lstrip()](#class-string-method-lstrip).

**Note:** `chars` is not a suffix. Use [trim\_suffix()](#class-string-method-trim-suffix) to remove a single suffix, rather than a set of characters.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **sha1\_buffer**() const [🔗](#class-string-method-sha1-buffer)

Returns the [SHA-1](https://en.wikipedia.org/wiki/SHA-1) hash of the string as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

* * *

[String](#class-string) **sha1\_text**() const [🔗](#class-string-method-sha1-text)

Returns the [SHA-1](https://en.wikipedia.org/wiki/SHA-1) hash of the string as another **String**.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **sha256\_buffer**() const [🔗](#class-string-method-sha256-buffer)

Returns the [SHA-256](https://en.wikipedia.org/wiki/SHA-2) hash of the string as a [PackedByteArray](class_packedbytearray.md#class-packedbytearray).

* * *

[String](#class-string) **sha256\_text**() const [🔗](#class-string-method-sha256-text)

Returns the [SHA-256](https://en.wikipedia.org/wiki/SHA-2) hash of the string as another **String**.

* * *

[float](class_float.md#class-float) **similarity**(text: [String](#class-string)) const [🔗](#class-string-method-similarity)

Returns the similarity index ( [Sørensen-Dice coefficient](https://en.wikipedia.org/wiki/S%C3%B8rensen%E2%80%93Dice_coefficient)) of this string compared to another. A result of `1.0` means totally similar, while `0.0` means totally dissimilar.

```
print("ABC123".similarity("ABC123")) # Prints 1.0
print("ABC123".similarity("XYZ456")) # Prints 0.0
print("ABC123".similarity("123ABC")) # Prints 0.8
print("ABC123".similarity("abc123")) # Prints 0.4

```

* * *

[String](#class-string) **simplify\_path**() const [🔗](#class-string-method-simplify-path)

If the string is a valid file path, converts the string into a canonical path. This is the shortest possible path, without `"./"`, and all the unnecessary `".."` and `"/"`.

```
var simple_path = "./path/to///../file".simplify_path()
print(simple_path) # Prints "path/file"

```

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **split**(delimiter: [String](#class-string) = "", allow\_empty: [bool](class_bool.md#class-bool) = true, maxsplit: [int](class_int.md#class-int) = 0) const [🔗](#class-string-method-split)

Splits the string using a `delimiter` and returns an array of the substrings. If `delimiter` is an empty string, each substring will be a single character. This method is the opposite of [join()](#class-string-method-join).

If `allow_empty` is `false`, empty strings between adjacent delimiters are excluded from the array.

If `maxsplit` is greater than `0`, the number of splits may not exceed `maxsplit`. By default, the entire string is split.

GDScriptC#

```
var some_array = "One,Two,Three,Four".split(",", true, 2)

print(some_array.size()) # Prints 3
print(some_array[0])     # Prints "One"
print(some_array[1])     # Prints "Two"
print(some_array[2])     # Prints "Three,Four"

```

```
// C#'s `Split()` does not support the `maxsplit` parameter.
var someArray = "One,Two,Three".Split(",");

GD.Print(someArray[0]); // Prints "One"
GD.Print(someArray[1]); // Prints "Two"
GD.Print(someArray[2]); // Prints "Three"

```

**Note:** If you only need one substring from the array, consider using [get\_slice()](#class-string-method-get-slice) which is faster. If you need to split strings with more complex rules, use the [RegEx](class_regex.md#class-regex) class instead.

* * *

[PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array) **split\_floats**(delimiter: [String](#class-string), allow\_empty: [bool](class_bool.md#class-bool) = true) const [🔗](#class-string-method-split-floats)

Splits the string into floats by using a `delimiter` and returns a [PackedFloat64Array](class_packedfloat64array.md#class-packedfloat64array).

If `allow_empty` is `false`, empty or invalid [float](class_float.md#class-float) conversions between adjacent delimiters are excluded.

```
var a = "1,2,4.5".split_floats(",")         # a is [1.0, 2.0, 4.5]
var c = "1| ||4.5".split_floats("|")        # c is [1.0, 0.0, 0.0, 4.5]
var b = "1| ||4.5".split_floats("|", false) # b is [1.0, 4.5]

```

* * *

[String](#class-string) **strip\_edges**(left: [bool](class_bool.md#class-bool) = true, right: [bool](class_bool.md#class-bool) = true) const [🔗](#class-string-method-strip-edges)

Strips all non-printable characters from the beginning and the end of the string. These include spaces, tabulations ( `\t`), and newlines ( `\n` `\r`).

If `left` is `false`, ignores the string's beginning. Likewise, if `right` is `false`, ignores the string's end.

* * *

[String](#class-string) **strip\_escapes**() const [🔗](#class-string-method-strip-escapes)

Strips all escape characters from the string. These include all non-printable control characters of the first page of the ASCII table (values from 0 to 31), such as tabulation ( `\t`) and newline ( `\n`, `\r`) characters, but _not_ spaces.

* * *

[String](#class-string) **substr**(from: [int](class_int.md#class-int), len: [int](class_int.md#class-int) = -1) const [🔗](#class-string-method-substr)

Returns part of the string from the position `from` with length `len`. If `len` is `-1` (as by default), returns the rest of the string starting from the given position.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_ascii\_buffer**() const [🔗](#class-string-method-to-ascii-buffer)

Converts the string to an [ASCII](https://en.wikipedia.org/wiki/ASCII)/Latin-1 encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This method is slightly faster than [to\_utf8\_buffer()](#class-string-method-to-utf8-buffer), but replaces all unsupported characters with spaces. This is the inverse of [PackedByteArray.get\_string\_from\_ascii()](class_packedbytearray.md#class-packedbytearray-method-get-string-from-ascii).

* * *

[String](#class-string) **to\_camel\_case**() const [🔗](#class-string-method-to-camel-case)

Returns the string converted to `camelCase`.

* * *

[float](class_float.md#class-float) **to\_float**() const [🔗](#class-string-method-to-float)

Converts the string representing a decimal number into a [float](class_float.md#class-float). This method stops on the first non-number character, except the first decimal point ( `.`) and the exponent letter ( `e`). See also [is\_valid\_float()](#class-string-method-is-valid-float).

```
var a = "12.35".to_float()  # a is 12.35
var b = "1.2.3".to_float()  # b is 1.2
var c = "12xy3".to_float()  # c is 12.0
var d = "1e3".to_float()    # d is 1000.0
var e = "Hello!".to_float() # e is 0.0

```

* * *

[int](class_int.md#class-int) **to\_int**() const [🔗](#class-string-method-to-int)

Converts the string representing an integer number into an [int](class_int.md#class-int). This method removes any non-number character and stops at the first decimal point ( `.`). See also [is\_valid\_int()](#class-string-method-is-valid-int).

```
var a = "123".to_int()    # a is 123
var b = "x1y2z3".to_int() # b is 123
var c = "-1.2.3".to_int() # c is -1
var d = "Hello!".to_int() # d is 0

```

* * *

[String](#class-string) **to\_kebab\_case**() const [🔗](#class-string-method-to-kebab-case)

Returns the string converted to `kebab-case`.

**Note:** Numbers followed by a _single_ letter are not separated in the conversion to keep some words (such as "2D") together.

GDScriptC#

```
"Node2D".to_kebab_case()               # Returns "node-2d"
"2nd place".to_kebab_case()            # Returns "2-nd-place"
"Texture3DAssetFolder".to_kebab_case() # Returns "texture-3d-asset-folder"

```

```
"Node2D".ToKebabCase();               // Returns "node-2d"
"2nd place".ToKebabCase();            // Returns "2-nd-place"
"Texture3DAssetFolder".ToKebabCase(); // Returns "texture-3d-asset-folder"

```

* * *

[String](#class-string) **to\_lower**() const [🔗](#class-string-method-to-lower)

Returns the string converted to `lowercase`.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_multibyte\_char\_buffer**(encoding: [String](#class-string) = "") const [🔗](#class-string-method-to-multibyte-char-buffer)

Converts the string to system multibyte code page encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). If conversion fails, empty array is returned.

The values permitted for `encoding` are system dependent. If `encoding` is empty string, system default encoding is used.

- For Windows, see [Code Page Identifiers](https://learn.microsoft.com/en-us/windows/win32/Intl/code-page-identifiers) .NET names.

- For macOS and Linux/BSD, see `libiconv` library documentation and `iconv --list` for a list of supported encodings.


* * *

[String](#class-string) **to\_pascal\_case**() const [🔗](#class-string-method-to-pascal-case)

Returns the string converted to `PascalCase`.

* * *

[String](#class-string) **to\_snake\_case**() const [🔗](#class-string-method-to-snake-case)

Returns the string converted to `snake_case`.

**Note:** Numbers followed by a _single_ letter are not separated in the conversion to keep some words (such as "2D") together.

GDScriptC#

```
"Node2D".to_snake_case()               # Returns "node_2d"
"2nd place".to_snake_case()            # Returns "2_nd_place"
"Texture3DAssetFolder".to_snake_case() # Returns "texture_3d_asset_folder"

```

```
"Node2D".ToSnakeCase();               // Returns "node_2d"
"2nd place".ToSnakeCase();            // Returns "2_nd_place"
"Texture3DAssetFolder".ToSnakeCase(); // Returns "texture_3d_asset_folder"

```

* * *

[String](#class-string) **to\_upper**() const [🔗](#class-string-method-to-upper)

Returns the string converted to `UPPERCASE`.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_utf8\_buffer**() const [🔗](#class-string-method-to-utf8-buffer)

Converts the string to a [UTF-8](https://en.wikipedia.org/wiki/UTF-8) encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This method is slightly slower than [to\_ascii\_buffer()](#class-string-method-to-ascii-buffer), but supports all UTF-8 characters. For most cases, prefer using this method. This is the inverse of [PackedByteArray.get\_string\_from\_utf8()](class_packedbytearray.md#class-packedbytearray-method-get-string-from-utf8).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_utf16\_buffer**() const [🔗](#class-string-method-to-utf16-buffer)

Converts the string to a [UTF-16](https://en.wikipedia.org/wiki/UTF-16) encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This is the inverse of [PackedByteArray.get\_string\_from\_utf16()](class_packedbytearray.md#class-packedbytearray-method-get-string-from-utf16).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_utf32\_buffer**() const [🔗](#class-string-method-to-utf32-buffer)

Converts the string to a [UTF-32](https://en.wikipedia.org/wiki/UTF-32) encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This is the inverse of [PackedByteArray.get\_string\_from\_utf32()](class_packedbytearray.md#class-packedbytearray-method-get-string-from-utf32).

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **to\_wchar\_buffer**() const [🔗](#class-string-method-to-wchar-buffer)

Converts the string to a [wide character](https://en.wikipedia.org/wiki/Wide_character) ( `wchar_t`, UTF-16 on Windows, UTF-32 on other platforms) encoded [PackedByteArray](class_packedbytearray.md#class-packedbytearray). This is the inverse of [PackedByteArray.get\_string\_from\_wchar()](class_packedbytearray.md#class-packedbytearray-method-get-string-from-wchar).

* * *

[String](#class-string) **trim\_prefix**(prefix: [String](#class-string)) const [🔗](#class-string-method-trim-prefix)

Removes the given `prefix` from the start of the string, or returns the string unchanged.

* * *

[String](#class-string) **trim\_suffix**(suffix: [String](#class-string)) const [🔗](#class-string-method-trim-suffix)

Removes the given `suffix` from the end of the string, or returns the string unchanged.

* * *

[int](class_int.md#class-int) **unicode\_at**(at: [int](class_int.md#class-int)) const [🔗](#class-string-method-unicode-at)

Returns the character code at position `at`.

See also [chr()](#class-string-method-chr), [@GDScript.char()](class_@gdscript.md#class-gdscript-method-char), and [@GDScript.ord()](class_@gdscript.md#class-gdscript-method-ord).

* * *

[String](#class-string) **uri\_decode**() const [🔗](#class-string-method-uri-decode)

Decodes the string from its URL-encoded format. This method is meant to properly decode the parameters in a URL when receiving an HTTP request. See also [uri\_encode()](#class-string-method-uri-encode).

GDScriptC#

```
var url = "$DOCS_URL/?highlight=Godot%20Engine%3%docs"
print(url.uri_decode()) # Prints "$DOCS_URL/?highlight=Godot Engine:docs"

```

```
var url = "$DOCS_URL/?highlight=Godot%20Engine%3%docs"
GD.Print(url.URIDecode()) // Prints "$DOCS_URL/?highlight=Godot Engine:docs"

```

**Note:** This method decodes `+` as space.

* * *

[String](#class-string) **uri\_encode**() const [🔗](#class-string-method-uri-encode)

Encodes the string to URL-friendly format. This method is meant to properly encode the parameters in a URL when sending an HTTP request. See also [uri\_decode()](#class-string-method-uri-decode).

GDScriptC#

```
var prefix = "$DOCS_URL/?highlight="
var url = prefix + "Godot Engine:docs".uri_encode()

print(url) # Prints "$DOCS_URL/?highlight=Godot%20Engine%3%docs"

```

```
var prefix = "$DOCS_URL/?highlight=";
var url = prefix + "Godot Engine:docs".URIEncode();

GD.Print(url); // Prints "$DOCS_URL/?highlight=Godot%20Engine%3%docs"

```

* * *

[String](#class-string) **uri\_file\_decode**() const [🔗](#class-string-method-uri-file-decode)

Decodes the file path from its URL-encoded format. Unlike [uri\_decode()](#class-string-method-uri-decode) this method leaves `+` as is.

* * *

[String](#class-string) **validate\_filename**() const [🔗](#class-string-method-validate-filename)

Returns a copy of the string with all characters that are not allowed in [is\_valid\_filename()](#class-string-method-is-valid-filename) replaced with underscores.

* * *

[String](#class-string) **validate\_node\_name**() const [🔗](#class-string-method-validate-node-name)

Returns a copy of the string with all characters that are not allowed in [Node.name](class_node.md#class-node-property-name) ( `.` `:` `@` `/` `"` `%`) replaced with underscores.

* * *

[String](#class-string) **xml\_escape**(escape\_quotes: [bool](class_bool.md#class-bool) = false) const [🔗](#class-string-method-xml-escape)

Returns a copy of the string with special characters escaped using the XML standard. If `escape_quotes` is `true`, the single quote ( `'`) and double quote ( `"`) characters are also escaped.

* * *

[String](#class-string) **xml\_unescape**() const [🔗](#class-string-method-xml-unescape)

Returns a copy of the string with escaped characters replaced by their meanings according to the XML standard.

* * *

## Operator Descriptions

[bool](class_bool.md#class-bool) **operator !=**(right: [String](#class-string)) [🔗](#class-string-operator-neq-string)

Returns `true` if both strings do not contain the same sequence of characters.

* * *

[bool](class_bool.md#class-bool) **operator !=**(right: [StringName](class_stringname.md#class-stringname)) [🔗](#class-string-operator-neq-stringname)

Returns `true` if this **String** is not equivalent to the given [StringName](class_stringname.md#class-stringname).

* * *

[String](#class-string) **operator %**(right: [Variant](class_variant.md#class-variant)) [🔗](#class-string-operator-mod-variant)

Formats the **String**, replacing the placeholders with one or more parameters. To pass multiple parameters, `right` needs to be an [Array](class_array.md#class-array).

```
print("I caught %d fishes!" % 2) # Prints "I caught 2 fishes!"

var my_message = "Travelling to %s, at %2.2f km/h."
var location = "Deep Valley"
var speed = 40.3485
print(my_message % [location, speed]) # Prints "Travelling to Deep Valley, at 40.35 km/h."

```

For more information, see the [GDScript format strings](../tutorials/scripting/gdscript/gdscript_format_string.md) tutorial.

**Note:** In C#, this operator is not available. Instead, see [how to interpolate strings with "$"](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/tokens/interpolated).

* * *

[String](#class-string) **operator +**(right: [String](#class-string)) [🔗](#class-string-operator-sum-string)

Appends `right` at the end of this **String**, also known as a string concatenation.

* * *

[String](#class-string) **operator +**(right: [StringName](class_stringname.md#class-stringname)) [🔗](#class-string-operator-sum-stringname)

Appends `right` at the end of this **String**, returning a **String**. This is also known as a string concatenation.

* * *

[bool](class_bool.md#class-bool) **operator <**(right: [String](#class-string)) [🔗](#class-string-operator-lt-string)

Returns `true` if the left **String** comes before `right` in [Unicode order](https://en.wikipedia.org/wiki/List_of_Unicode_characters), which roughly matches the alphabetical order. Useful for sorting.

* * *

[bool](class_bool.md#class-bool) **operator <=**(right: [String](#class-string)) [🔗](#class-string-operator-lte-string)

Returns `true` if the left **String** comes before `right` in [Unicode order](https://en.wikipedia.org/wiki/List_of_Unicode_characters), which roughly matches the alphabetical order, or if both are equal.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [String](#class-string)) [🔗](#class-string-operator-eq-string)

Returns `true` if both strings contain the same sequence of characters.

* * *

[bool](class_bool.md#class-bool) **operator ==**(right: [StringName](class_stringname.md#class-stringname)) [🔗](#class-string-operator-eq-stringname)

Returns `true` if this **String** is equivalent to the given [StringName](class_stringname.md#class-stringname).

* * *

[bool](class_bool.md#class-bool) **operator >**(right: [String](#class-string)) [🔗](#class-string-operator-gt-string)

Returns `true` if the left **String** comes after `right` in [Unicode order](https://en.wikipedia.org/wiki/List_of_Unicode_characters), which roughly matches the alphabetical order. Useful for sorting.

* * *

[bool](class_bool.md#class-bool) **operator >=**(right: [String](#class-string)) [🔗](#class-string-operator-gte-string)

Returns `true` if the left **String** comes after `right` in [Unicode order](https://en.wikipedia.org/wiki/List_of_Unicode_characters), which roughly matches the alphabetical order, or if both are equal.

* * *

[String](#class-string) **operator \[\]**(index: [int](class_int.md#class-int)) [🔗](#class-string-operator-idx-int)

Returns a new **String** that only contains the character at `index`. Indices start from `0`. If `index` is greater or equal to `0`, the character is fetched starting from the beginning of the string. If `index` is a negative value, it is fetched starting from the end. Accessing a string out-of-bounds will cause a run-time error, pausing the project execution if run from the editor.

[Previous](class_signal.md "Signal") [Next](class_stringname.md "StringName")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_signal.md "Signal") [Next](class_stringname.md "StringName")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).