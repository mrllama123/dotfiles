---
title: CodeEdit — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_codeedit.html
crawled_at: "2026-08-13T10:27:29+12:00"
content_hash: 57723338742188633bf37252256bd406c49a9ba30d090d1d890e3bf91226fb9c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CodeEdit

* * *

# CodeEdit

**Inherits:** [TextEdit](class_textedit.md#class-textedit) **<** [Control](class_control.md#class-control) **<** [CanvasItem](class_canvasitem.md#class-canvasitem) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A multiline text editor designed for editing code.

## Description

CodeEdit is a specialized [TextEdit](class_textedit.md#class-textedit) designed for editing plain text code files. It has many features commonly found in code editors such as line numbers, line folding, code completion, indent management, and string/comment management.

**Note:** Regardless of locale, **CodeEdit** will by default always use left-to-right text direction to correctly display source code.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [auto\_brace\_completion\_enabled](#class-codeedit-property-auto-brace-completion-enabled) | `false` |
| [bool](class_bool.md#class-bool) | [auto\_brace\_completion\_highlight\_matching](#class-codeedit-property-auto-brace-completion-highlight-matching) | `false` |
| [Dictionary](class_dictionary.md#class-dictionary) | [auto\_brace\_completion\_pairs](#class-codeedit-property-auto-brace-completion-pairs) | `{ "\"": "\"", "'": "'", "(": ")", "[": "]", "{": "}" }` |
| [bool](class_bool.md#class-bool) | [code\_completion\_enabled](#class-codeedit-property-code-completion-enabled) | `false` |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [code\_completion\_prefixes](#class-codeedit-property-code-completion-prefixes) | `[]` |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [delimiter\_comments](#class-codeedit-property-delimiter-comments) | `[]` |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [delimiter\_strings](#class-codeedit-property-delimiter-strings) | `["' '", "\" \""]` |
| [bool](class_bool.md#class-bool) | [gutters\_draw\_bookmarks](#class-codeedit-property-gutters-draw-bookmarks) | `false` |
| [bool](class_bool.md#class-bool) | [gutters\_draw\_breakpoints\_gutter](#class-codeedit-property-gutters-draw-breakpoints-gutter) | `false` |
| [bool](class_bool.md#class-bool) | [gutters\_draw\_executing\_lines](#class-codeedit-property-gutters-draw-executing-lines) | `false` |
| [bool](class_bool.md#class-bool) | [gutters\_draw\_fold\_gutter](#class-codeedit-property-gutters-draw-fold-gutter) | `false` |
| [bool](class_bool.md#class-bool) | [gutters\_draw\_line\_numbers](#class-codeedit-property-gutters-draw-line-numbers) | `false` |
| [bool](class_bool.md#class-bool) | [gutters\_zero\_pad\_line\_numbers](#class-codeedit-property-gutters-zero-pad-line-numbers) | `false` |
| [bool](class_bool.md#class-bool) | [indent\_automatic](#class-codeedit-property-indent-automatic) | `false` |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [indent\_automatic\_prefixes](#class-codeedit-property-indent-automatic-prefixes) | `[":", "{", "[", "("]` |
| [int](class_int.md#class-int) | [indent\_size](#class-codeedit-property-indent-size) | `4` |
| [bool](class_bool.md#class-bool) | [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces) | `false` |
| [LayoutDirection](class_control.md#enum-control-layoutdirection) | layout\_direction | `2` (overrides [Control](class_control.md#class-control-property-layout-direction)) |
| [bool](class_bool.md#class-bool) | [line\_folding](#class-codeedit-property-line-folding) | `false` |
| [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] | [line\_length\_guidelines](#class-codeedit-property-line-length-guidelines) | `[]` |
| [bool](class_bool.md#class-bool) | [symbol\_lookup\_on\_click](#class-codeedit-property-symbol-lookup-on-click) | `false` |
| [bool](class_bool.md#class-bool) | [symbol\_tooltip\_on\_hover](#class-codeedit-property-symbol-tooltip-on-hover) | `false` |
| [TextDirection](class_control.md#enum-control-textdirection) | text\_direction | `1` (overrides [TextEdit](class_textedit.md#class-textedit-property-text-direction)) |

## Methods

|     |     |
| --- | --- |
| void | [\_confirm\_code\_completion](#class-codeedit-private-method-confirm-code-completion)(replace: [bool](class_bool.md#class-bool)) virtual |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_filter\_code\_completion\_candidates](#class-codeedit-private-method-filter-code-completion-candidates)(candidates: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) virtualconst |
| void | [\_request\_code\_completion](#class-codeedit-private-method-request-code-completion)(force: [bool](class_bool.md#class-bool)) virtual |
| void | [add\_auto\_brace\_completion\_pair](#class-codeedit-method-add-auto-brace-completion-pair)(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string)) |
| void | [add\_code\_completion\_option](#class-codeedit-method-add-code-completion-option)(type: [CodeCompletionKind](#enum-codeedit-codecompletionkind), display\_text: [String](class_string.md#class-string), insert\_text: [String](class_string.md#class-string), text\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), icon: [Resource](class_resource.md#class-resource) = null, value: [Variant](class_variant.md#class-variant) = null, location: [int](class_int.md#class-int) = 1024) |
| void | [add\_comment\_delimiter](#class-codeedit-method-add-comment-delimiter)(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), line\_only: [bool](class_bool.md#class-bool) = false) |
| void | [add\_string\_delimiter](#class-codeedit-method-add-string-delimiter)(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), line\_only: [bool](class_bool.md#class-bool) = false) |
| [bool](class_bool.md#class-bool) | [can\_fold\_line](#class-codeedit-method-can-fold-line)(line: [int](class_int.md#class-int)) const |
| void | [cancel\_code\_completion](#class-codeedit-method-cancel-code-completion)() |
| void | [clear\_bookmarked\_lines](#class-codeedit-method-clear-bookmarked-lines)() |
| void | [clear\_breakpointed\_lines](#class-codeedit-method-clear-breakpointed-lines)() |
| void | [clear\_comment\_delimiters](#class-codeedit-method-clear-comment-delimiters)() |
| void | [clear\_executing\_lines](#class-codeedit-method-clear-executing-lines)() |
| void | [clear\_string\_delimiters](#class-codeedit-method-clear-string-delimiters)() |
| void | [confirm\_code\_completion](#class-codeedit-method-confirm-code-completion)(replace: [bool](class_bool.md#class-bool) = false) |
| void | [convert\_indent](#class-codeedit-method-convert-indent)(from\_line: [int](class_int.md#class-int) = -1, to\_line: [int](class_int.md#class-int) = -1) |
| void | [create\_code\_region](#class-codeedit-method-create-code-region)() |
| void | [delete\_lines](#class-codeedit-method-delete-lines)() |
| void | [do\_indent](#class-codeedit-method-do-indent)() |
| void | [duplicate\_lines](#class-codeedit-method-duplicate-lines)() |
| void | [duplicate\_selection](#class-codeedit-method-duplicate-selection)() |
| void | [fold\_all\_lines](#class-codeedit-method-fold-all-lines)() |
| void | [fold\_line](#class-codeedit-method-fold-line)(line: [int](class_int.md#class-int)) |
| [String](class_string.md#class-string) | [get\_auto\_brace\_completion\_close\_key](#class-codeedit-method-get-auto-brace-completion-close-key)(open\_key: [String](class_string.md#class-string)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_bookmarked\_lines](#class-codeedit-method-get-bookmarked-lines)() const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_breakpointed\_lines](#class-codeedit-method-get-breakpointed-lines)() const |
| [Dictionary](class_dictionary.md#class-dictionary) | [get\_code\_completion\_option](#class-codeedit-method-get-code-completion-option)(index: [int](class_int.md#class-int)) const |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [get\_code\_completion\_options](#class-codeedit-method-get-code-completion-options)() const |
| [int](class_int.md#class-int) | [get\_code\_completion\_selected\_index](#class-codeedit-method-get-code-completion-selected-index)() const |
| [String](class_string.md#class-string) | [get\_code\_region\_end\_tag](#class-codeedit-method-get-code-region-end-tag)() const |
| [String](class_string.md#class-string) | [get\_code\_region\_start\_tag](#class-codeedit-method-get-code-region-start-tag)() const |
| [String](class_string.md#class-string) | [get\_delimiter\_end\_key](#class-codeedit-method-get-delimiter-end-key)(delimiter\_index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_delimiter\_end\_position](#class-codeedit-method-get-delimiter-end-position)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [String](class_string.md#class-string) | [get\_delimiter\_start\_key](#class-codeedit-method-get-delimiter-start-key)(delimiter\_index: [int](class_int.md#class-int)) const |
| [Vector2](class_vector2.md#class-vector2) | [get\_delimiter\_start\_position](#class-codeedit-method-get-delimiter-start-position)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [PackedInt32Array](class_packedint32array.md#class-packedint32array) | [get\_executing\_lines](#class-codeedit-method-get-executing-lines)() const |
| [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] | [get\_folded\_lines](#class-codeedit-method-get-folded-lines)() const |
| [String](class_string.md#class-string) | [get\_text\_for\_code\_completion](#class-codeedit-method-get-text-for-code-completion)() const |
| [String](class_string.md#class-string) | [get\_text\_for\_symbol\_lookup](#class-codeedit-method-get-text-for-symbol-lookup)() const |
| [String](class_string.md#class-string) | [get\_text\_with\_cursor\_char](#class-codeedit-method-get-text-with-cursor-char)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [has\_auto\_brace\_completion\_close\_key](#class-codeedit-method-has-auto-brace-completion-close-key)(close\_key: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_auto\_brace\_completion\_open\_key](#class-codeedit-method-has-auto-brace-completion-open-key)(open\_key: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_comment\_delimiter](#class-codeedit-method-has-comment-delimiter)(start\_key: [String](class_string.md#class-string)) const |
| [bool](class_bool.md#class-bool) | [has\_string\_delimiter](#class-codeedit-method-has-string-delimiter)(start\_key: [String](class_string.md#class-string)) const |
| void | [indent\_lines](#class-codeedit-method-indent-lines)() |
| [int](class_int.md#class-int) | [is\_in\_comment](#class-codeedit-method-is-in-comment)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int) = -1) const |
| [int](class_int.md#class-int) | [is\_in\_string](#class-codeedit-method-is-in-string)(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int) = -1) const |
| [bool](class_bool.md#class-bool) | [is\_line\_bookmarked](#class-codeedit-method-is-line-bookmarked)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_breakpointed](#class-codeedit-method-is-line-breakpointed)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_code\_region\_end](#class-codeedit-method-is-line-code-region-end)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_code\_region\_start](#class-codeedit-method-is-line-code-region-start)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_executing](#class-codeedit-method-is-line-executing)(line: [int](class_int.md#class-int)) const |
| [bool](class_bool.md#class-bool) | [is\_line\_folded](#class-codeedit-method-is-line-folded)(line: [int](class_int.md#class-int)) const |
| void | [move\_lines\_down](#class-codeedit-method-move-lines-down)() |
| void | [move\_lines\_up](#class-codeedit-method-move-lines-up)() |
| void | [remove\_comment\_delimiter](#class-codeedit-method-remove-comment-delimiter)(start\_key: [String](class_string.md#class-string)) |
| void | [remove\_string\_delimiter](#class-codeedit-method-remove-string-delimiter)(start\_key: [String](class_string.md#class-string)) |
| void | [request\_code\_completion](#class-codeedit-method-request-code-completion)(force: [bool](class_bool.md#class-bool) = false) |
| void | [set\_code\_completion\_selected\_index](#class-codeedit-method-set-code-completion-selected-index)(index: [int](class_int.md#class-int)) |
| void | [set\_code\_hint](#class-codeedit-method-set-code-hint)(code\_hint: [String](class_string.md#class-string)) |
| void | [set\_code\_hint\_draw\_below](#class-codeedit-method-set-code-hint-draw-below)(draw\_below: [bool](class_bool.md#class-bool)) |
| void | [set\_code\_region\_tags](#class-codeedit-method-set-code-region-tags)(start: [String](class_string.md#class-string) = "region", end: [String](class_string.md#class-string) = "endregion") |
| void | [set\_line\_as\_bookmarked](#class-codeedit-method-set-line-as-bookmarked)(line: [int](class_int.md#class-int), bookmarked: [bool](class_bool.md#class-bool)) |
| void | [set\_line\_as\_breakpoint](#class-codeedit-method-set-line-as-breakpoint)(line: [int](class_int.md#class-int), breakpointed: [bool](class_bool.md#class-bool)) |
| void | [set\_line\_as\_executing](#class-codeedit-method-set-line-as-executing)(line: [int](class_int.md#class-int), executing: [bool](class_bool.md#class-bool)) |
| void | [set\_symbol\_lookup\_word\_as\_valid](#class-codeedit-method-set-symbol-lookup-word-as-valid)(valid: [bool](class_bool.md#class-bool)) |
| void | [toggle\_foldable\_line](#class-codeedit-method-toggle-foldable-line)(line: [int](class_int.md#class-int)) |
| void | [toggle\_foldable\_lines\_at\_carets](#class-codeedit-method-toggle-foldable-lines-at-carets)() |
| void | [unfold\_all\_lines](#class-codeedit-method-unfold-all-lines)() |
| void | [unfold\_line](#class-codeedit-method-unfold-line)(line: [int](class_int.md#class-int)) |
| void | [unindent\_lines](#class-codeedit-method-unindent-lines)() |
| void | [update\_code\_completion\_options](#class-codeedit-method-update-code-completion-options)(force: [bool](class_bool.md#class-bool)) |

## Theme Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [bookmark\_color](#class-codeedit-theme-color-bookmark-color) | `Color(0.5, 0.64, 1, 0.8)` |
| [Color](class_color.md#class-color) | [brace\_mismatch\_color](#class-codeedit-theme-color-brace-mismatch-color) | `Color(1, 0.2, 0.2, 1)` |
| [Color](class_color.md#class-color) | [breakpoint\_color](#class-codeedit-theme-color-breakpoint-color) | `Color(0.9, 0.29, 0.3, 1)` |
| [Color](class_color.md#class-color) | [code\_folding\_color](#class-codeedit-theme-color-code-folding-color) | `Color(0.8, 0.8, 0.8, 0.8)` |
| [Color](class_color.md#class-color) | [completion\_background\_color](#class-codeedit-theme-color-completion-background-color) | `Color(0.17, 0.16, 0.2, 1)` |
| [Color](class_color.md#class-color) | [completion\_existing\_color](#class-codeedit-theme-color-completion-existing-color) | `Color(0.87, 0.87, 0.87, 0.13)` |
| [Color](class_color.md#class-color) | [completion\_scroll\_color](#class-codeedit-theme-color-completion-scroll-color) | `Color(1, 1, 1, 0.29)` |
| [Color](class_color.md#class-color) | [completion\_scroll\_hovered\_color](#class-codeedit-theme-color-completion-scroll-hovered-color) | `Color(1, 1, 1, 0.4)` |
| [Color](class_color.md#class-color) | [completion\_selected\_color](#class-codeedit-theme-color-completion-selected-color) | `Color(0.26, 0.26, 0.27, 1)` |
| [Color](class_color.md#class-color) | [executing\_line\_color](#class-codeedit-theme-color-executing-line-color) | `Color(0.98, 0.89, 0.27, 1)` |
| [Color](class_color.md#class-color) | [folded\_code\_region\_color](#class-codeedit-theme-color-folded-code-region-color) | `Color(0.68, 0.46, 0.77, 0.2)` |
| [Color](class_color.md#class-color) | [line\_length\_guideline\_color](#class-codeedit-theme-color-line-length-guideline-color) | `Color(0.3, 0.5, 0.8, 0.1)` |
| [Color](class_color.md#class-color) | [line\_number\_color](#class-codeedit-theme-color-line-number-color) | `Color(0.67, 0.67, 0.67, 0.4)` |
| [int](class_int.md#class-int) | [completion\_lines](#class-codeedit-theme-constant-completion-lines) | `7` |
| [int](class_int.md#class-int) | [completion\_max\_width](#class-codeedit-theme-constant-completion-max-width) | `50` |
| [int](class_int.md#class-int) | [completion\_scroll\_width](#class-codeedit-theme-constant-completion-scroll-width) | `6` |
| [Texture2D](class_texture2d.md#class-texture2d) | [bookmark](#class-codeedit-theme-icon-bookmark) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [breakpoint](#class-codeedit-theme-icon-breakpoint) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [can\_fold](#class-codeedit-theme-icon-can-fold) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [can\_fold\_code\_region](#class-codeedit-theme-icon-can-fold-code-region) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [completion\_color\_bg](#class-codeedit-theme-icon-completion-color-bg) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [executing\_line](#class-codeedit-theme-icon-executing-line) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded](#class-codeedit-theme-icon-folded) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded\_code\_region](#class-codeedit-theme-icon-folded-code-region) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [folded\_eol\_icon](#class-codeedit-theme-icon-folded-eol-icon) |  |
| [StyleBox](class_stylebox.md#class-stylebox) | [completion](#class-codeedit-theme-style-completion) |  |

* * *

## Signals

**breakpoint\_toggled**(line: [int](class_int.md#class-int)) [🔗](#class-codeedit-signal-breakpoint-toggled)

Emitted when a breakpoint is added or removed from a line. If the line is removed via backspace, a signal is emitted at the old line.

* * *

**code\_completion\_requested**() [🔗](#class-codeedit-signal-code-completion-requested)

Emitted when the user requests code completion. This signal will not be sent if [\_request\_code\_completion()](#class-codeedit-private-method-request-code-completion) is overridden or [code\_completion\_enabled](#class-codeedit-property-code-completion-enabled) is `false`.

* * *

**symbol\_hovered**(symbol: [String](class_string.md#class-string), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) [🔗](#class-codeedit-signal-symbol-hovered)

Emitted when the user hovers over a symbol. Unlike [Control.mouse\_entered](class_control.md#class-control-signal-mouse-entered), this signal is not emitted immediately, but when the cursor is over the symbol for [ProjectSettings.gui/timers/tooltip\_delay\_sec](class_projectsettings.md#class-projectsettings-property-gui-timers-tooltip-delay-sec) seconds.

**Note:** [symbol\_tooltip\_on\_hover](#class-codeedit-property-symbol-tooltip-on-hover) must be `true` for this signal to be emitted.

* * *

**symbol\_lookup**(symbol: [String](class_string.md#class-string), line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) [🔗](#class-codeedit-signal-symbol-lookup)

Emitted when the user has clicked on a valid symbol.

* * *

**symbol\_validate**(symbol: [String](class_string.md#class-string)) [🔗](#class-codeedit-signal-symbol-validate)

Emitted when the user hovers over a symbol. The symbol should be validated and responded to, by calling [set\_symbol\_lookup\_word\_as\_valid()](#class-codeedit-method-set-symbol-lookup-word-as-valid).

**Note:** [symbol\_lookup\_on\_click](#class-codeedit-property-symbol-lookup-on-click) must be `true` for this signal to be emitted.

* * *

## Enumerations

enum **CodeCompletionKind**: [🔗](#enum-codeedit-codecompletionkind)

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_CLASS** = `0`

Marks the option as a class.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_FUNCTION** = `1`

Marks the option as a function.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_SIGNAL** = `2`

Marks the option as a Godot signal.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_VARIABLE** = `3`

Marks the option as a variable.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_MEMBER** = `4`

Marks the option as a member.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_ENUM** = `5`

Marks the option as an enum entry.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_CONSTANT** = `6`

Marks the option as a constant.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_NODE\_PATH** = `7`

Marks the option as a Godot node path.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_FILE\_PATH** = `8`

Marks the option as a file path.

[CodeCompletionKind](#enum-codeedit-codecompletionkind) **KIND\_PLAIN\_TEXT** = `9`

Marks the option as unclassified or plain text.

* * *

enum **CodeCompletionLocation**: [🔗](#enum-codeedit-codecompletionlocation)

[CodeCompletionLocation](#enum-codeedit-codecompletionlocation) **LOCATION\_LOCAL** = `0`

The option is local to the location of the code completion query - e.g. a local variable. Subsequent value of location represent options from the outer class, the exact value represent how far they are (in terms of inner classes).

[CodeCompletionLocation](#enum-codeedit-codecompletionlocation) **LOCATION\_PARENT\_MASK** = `256`

The option is from the containing class or a parent class, relative to the location of the code completion query. Perform a bitwise OR with the class depth (e.g. `0` for the local class, `1` for the parent, `2` for the grandparent, etc.) to store the depth of an option in the class or a parent class.

[CodeCompletionLocation](#enum-codeedit-codecompletionlocation) **LOCATION\_OTHER\_USER\_CODE** = `512`

The option is from user code which is not local and not in a derived class (e.g. Autoload Singletons).

[CodeCompletionLocation](#enum-codeedit-codecompletionlocation) **LOCATION\_OTHER** = `1024`

The option is from other engine code, not covered by the other enum constants - e.g. built-in classes.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **auto\_brace\_completion\_enabled** = `false` [🔗](#class-codeedit-property-auto-brace-completion-enabled)

- void **set\_auto\_brace\_completion\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_brace\_completion\_enabled**()


If `true`, uses [auto\_brace\_completion\_pairs](#class-codeedit-property-auto-brace-completion-pairs) to automatically insert the closing brace when the opening brace is inserted by typing or autocompletion. Also automatically removes the closing brace when using backspace on the opening brace.

* * *

[bool](class_bool.md#class-bool) **auto\_brace\_completion\_highlight\_matching** = `false` [🔗](#class-codeedit-property-auto-brace-completion-highlight-matching)

- void **set\_highlight\_matching\_braces\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_highlight\_matching\_braces\_enabled**()


If `true`, highlights brace pairs when the caret is on either one, using [auto\_brace\_completion\_pairs](#class-codeedit-property-auto-brace-completion-pairs). If matching, the pairs will be underlined. If a brace is unmatched, it is colored with [brace\_mismatch\_color](#class-codeedit-theme-color-brace-mismatch-color).

* * *

[Dictionary](class_dictionary.md#class-dictionary) **auto\_brace\_completion\_pairs** = `{ "\"": "\"", "'": "'", "(": ")", "[": "]", "{": "}" }` [🔗](#class-codeedit-property-auto-brace-completion-pairs)

- void **set\_auto\_brace\_completion\_pairs**(value: [Dictionary](class_dictionary.md#class-dictionary))

- [Dictionary](class_dictionary.md#class-dictionary) **get\_auto\_brace\_completion\_pairs**()


Sets the brace pairs to be autocompleted. For each entry in the dictionary, the key is the opening brace and the value is the closing brace that matches it. A brace is a [String](class_string.md#class-string) made of symbols. See [auto\_brace\_completion\_enabled](#class-codeedit-property-auto-brace-completion-enabled) and [auto\_brace\_completion\_highlight\_matching](#class-codeedit-property-auto-brace-completion-highlight-matching).

* * *

[bool](class_bool.md#class-bool) **code\_completion\_enabled** = `false` [🔗](#class-codeedit-property-code-completion-enabled)

- void **set\_code\_completion\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_code\_completion\_enabled**()


If `true`, the [ProjectSettings.input/ui\_text\_completion\_query](class_projectsettings.md#class-projectsettings-property-input-ui-text-completion-query) action requests code completion. To handle it, see [\_request\_code\_completion()](#class-codeedit-private-method-request-code-completion) or [code\_completion\_requested](#class-codeedit-signal-code-completion-requested).

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **code\_completion\_prefixes** = `[]` [🔗](#class-codeedit-property-code-completion-prefixes)

- void **set\_code\_completion\_prefixes**(value: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\])

- [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_code\_completion\_prefixes**()


Sets prefixes that will trigger code completion.

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **delimiter\_comments** = `[]` [🔗](#class-codeedit-property-delimiter-comments)

- void **set\_comment\_delimiters**(value: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\])

- [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_comment\_delimiters**()


Sets the comment delimiters. All existing comment delimiters will be removed.

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **delimiter\_strings** = `["' '", "\" \""]` [🔗](#class-codeedit-property-delimiter-strings)

- void **set\_string\_delimiters**(value: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\])

- [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_string\_delimiters**()


Sets the string delimiters. All existing string delimiters will be removed.

* * *

[bool](class_bool.md#class-bool) **gutters\_draw\_bookmarks** = `false` [🔗](#class-codeedit-property-gutters-draw-bookmarks)

- void **set\_draw\_bookmarks\_gutter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_bookmarks\_gutter**()


If `true`, bookmarks are drawn in the gutter. This gutter is shared with breakpoints and executing lines. See [set\_line\_as\_bookmarked()](#class-codeedit-method-set-line-as-bookmarked).

* * *

[bool](class_bool.md#class-bool) **gutters\_draw\_breakpoints\_gutter** = `false` [🔗](#class-codeedit-property-gutters-draw-breakpoints-gutter)

- void **set\_draw\_breakpoints\_gutter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_breakpoints\_gutter**()


If `true`, breakpoints are drawn in the gutter. This gutter is shared with bookmarks and executing lines. Clicking the gutter will toggle the breakpoint for the line, see [set\_line\_as\_breakpoint()](#class-codeedit-method-set-line-as-breakpoint).

* * *

[bool](class_bool.md#class-bool) **gutters\_draw\_executing\_lines** = `false` [🔗](#class-codeedit-property-gutters-draw-executing-lines)

- void **set\_draw\_executing\_lines\_gutter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_executing\_lines\_gutter**()


If `true`, executing lines are marked in the gutter. This gutter is shared with breakpoints and bookmarks. See [set\_line\_as\_executing()](#class-codeedit-method-set-line-as-executing).

* * *

[bool](class_bool.md#class-bool) **gutters\_draw\_fold\_gutter** = `false` [🔗](#class-codeedit-property-gutters-draw-fold-gutter)

- void **set\_draw\_fold\_gutter**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_drawing\_fold\_gutter**()


If `true`, the fold gutter is drawn. In this gutter, the [can\_fold\_code\_region](#class-codeedit-theme-icon-can-fold-code-region) icon is drawn for each foldable line (see [can\_fold\_line()](#class-codeedit-method-can-fold-line)) and the [folded\_code\_region](#class-codeedit-theme-icon-folded-code-region) icon is drawn for each folded line (see [is\_line\_folded()](#class-codeedit-method-is-line-folded)). These icons can be clicked to toggle the fold state, see [toggle\_foldable\_line()](#class-codeedit-method-toggle-foldable-line). [line\_folding](#class-codeedit-property-line-folding) must be `true` to show icons.

* * *

[bool](class_bool.md#class-bool) **gutters\_draw\_line\_numbers** = `false` [🔗](#class-codeedit-property-gutters-draw-line-numbers)

- void **set\_draw\_line\_numbers**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_draw\_line\_numbers\_enabled**()


If `true`, the line number gutter is drawn. Line numbers start at `1` and are incremented for each line of text. Clicking and dragging in the line number gutter will select entire lines of text.

* * *

[bool](class_bool.md#class-bool) **gutters\_zero\_pad\_line\_numbers** = `false` [🔗](#class-codeedit-property-gutters-zero-pad-line-numbers)

- void **set\_line\_numbers\_zero\_padded**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_line\_numbers\_zero\_padded**()


If `true`, line numbers drawn in the gutter are zero padded based on the total line count. Requires [gutters\_draw\_line\_numbers](#class-codeedit-property-gutters-draw-line-numbers) to be set to `true`.

* * *

[bool](class_bool.md#class-bool) **indent\_automatic** = `false` [🔗](#class-codeedit-property-indent-automatic)

- void **set\_auto\_indent\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_indent\_enabled**()


If `true`, an extra indent is automatically inserted when a new line is added and a prefix in [indent\_automatic\_prefixes](#class-codeedit-property-indent-automatic-prefixes) is found. If a brace pair opening key is found, the matching closing brace will be moved to another new line (see [auto\_brace\_completion\_pairs](#class-codeedit-property-auto-brace-completion-pairs)).

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **indent\_automatic\_prefixes** = `[":", "{", "[", "("]` [🔗](#class-codeedit-property-indent-automatic-prefixes)

- void **set\_auto\_indent\_prefixes**(value: [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\])

- [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **get\_auto\_indent\_prefixes**()


Prefixes to trigger an automatic indent. Used when [indent\_automatic](#class-codeedit-property-indent-automatic) is set to `true`.

* * *

[int](class_int.md#class-int) **indent\_size** = `4` [🔗](#class-codeedit-property-indent-size)

- void **set\_indent\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_indent\_size**()


Size of the tabulation indent (one `Tab` press) in characters. If [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces) is enabled the number of spaces to use.

* * *

[bool](class_bool.md#class-bool) **indent\_use\_spaces** = `false` [🔗](#class-codeedit-property-indent-use-spaces)

- void **set\_indent\_using\_spaces**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_indent\_using\_spaces**()


Use spaces instead of tabs for indentation.

* * *

[bool](class_bool.md#class-bool) **line\_folding** = `false` [🔗](#class-codeedit-property-line-folding)

- void **set\_line\_folding\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_line\_folding\_enabled**()


If `true`, lines can be folded. Otherwise, line folding methods like [fold\_line()](#class-codeedit-method-fold-line) will not work and [can\_fold\_line()](#class-codeedit-method-can-fold-line) will always return `false`. See [gutters\_draw\_fold\_gutter](#class-codeedit-property-gutters-draw-fold-gutter).

* * *

[Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **line\_length\_guidelines** = `[]` [🔗](#class-codeedit-property-line-length-guidelines)

- void **set\_line\_length\_guidelines**(value: [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\])

- [Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **get\_line\_length\_guidelines**()


Draws vertical lines at the provided columns. The first entry is considered a main hard guideline and is drawn more prominently.

* * *

[bool](class_bool.md#class-bool) **symbol\_lookup\_on\_click** = `false` [🔗](#class-codeedit-property-symbol-lookup-on-click)

- void **set\_symbol\_lookup\_on\_click\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_symbol\_lookup\_on\_click\_enabled**()


Set when a validated word from [symbol\_validate](#class-codeedit-signal-symbol-validate) is clicked, the [symbol\_lookup](#class-codeedit-signal-symbol-lookup) should be emitted.

* * *

[bool](class_bool.md#class-bool) **symbol\_tooltip\_on\_hover** = `false` [🔗](#class-codeedit-property-symbol-tooltip-on-hover)

- void **set\_symbol\_tooltip\_on\_hover\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_symbol\_tooltip\_on\_hover\_enabled**()


If `true`, the [symbol\_hovered](#class-codeedit-signal-symbol-hovered) signal is emitted when hovering over a word.

* * *

## Method Descriptions

void **\_confirm\_code\_completion**(replace: [bool](class_bool.md#class-bool)) virtual [🔗](#class-codeedit-private-method-confirm-code-completion)

Override this method to define how the selected entry should be inserted. If `replace` is `true`, any existing text should be replaced.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_filter\_code\_completion\_candidates**(candidates: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) virtualconst [🔗](#class-codeedit-private-method-filter-code-completion-candidates)

Override this method to define what items in `candidates` should be displayed.

Both `candidates` and the return is an [Array](class_array.md#class-array) of [Dictionary](class_dictionary.md#class-dictionary), see [get\_code\_completion\_option()](#class-codeedit-method-get-code-completion-option) for [Dictionary](class_dictionary.md#class-dictionary) content.

* * *

void **\_request\_code\_completion**(force: [bool](class_bool.md#class-bool)) virtual [🔗](#class-codeedit-private-method-request-code-completion)

Override this method to define what happens when the user requests code completion. If `force` is `true`, any checks should be bypassed.

* * *

void **add\_auto\_brace\_completion\_pair**(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string)) [🔗](#class-codeedit-method-add-auto-brace-completion-pair)

Adds a brace pair.

Both the start and end keys must be symbols. Only the start key has to be unique.

* * *

void **add\_code\_completion\_option**(type: [CodeCompletionKind](#enum-codeedit-codecompletionkind), display\_text: [String](class_string.md#class-string), insert\_text: [String](class_string.md#class-string), text\_color: [Color](class_color.md#class-color) = Color(1, 1, 1, 1), icon: [Resource](class_resource.md#class-resource) = null, value: [Variant](class_variant.md#class-variant) = null, location: [int](class_int.md#class-int) = 1024) [🔗](#class-codeedit-method-add-code-completion-option)

Submits an item to the queue of potential candidates for the autocomplete menu. Call [update\_code\_completion\_options()](#class-codeedit-method-update-code-completion-options) to update the list.

`location` indicates location of the option relative to the location of the code completion query. See [CodeCompletionLocation](#enum-codeedit-codecompletionlocation) for how to set this value.

**Note:** This list will replace all current candidates.

* * *

void **add\_comment\_delimiter**(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), line\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-codeedit-method-add-comment-delimiter)

Adds a comment delimiter from `start_key` to `end_key`. Both keys should be symbols, and `start_key` must not be shared with other delimiters.

If `line_only` is `true` or `end_key` is an empty [String](class_string.md#class-string), the region does not carry over to the next line.

* * *

void **add\_string\_delimiter**(start\_key: [String](class_string.md#class-string), end\_key: [String](class_string.md#class-string), line\_only: [bool](class_bool.md#class-bool) = false) [🔗](#class-codeedit-method-add-string-delimiter)

Defines a string delimiter from `start_key` to `end_key`. Both keys should be symbols, and `start_key` must not be shared with other delimiters.

If `line_only` is `true` or `end_key` is an empty [String](class_string.md#class-string), the region does not carry over to the next line.

* * *

[bool](class_bool.md#class-bool) **can\_fold\_line**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-can-fold-line)

Returns `true` if the given line is foldable. A line is foldable if it is the start of a valid code region (see [get\_code\_region\_start\_tag()](#class-codeedit-method-get-code-region-start-tag)), if it is the start of a comment or string block, or if the next non-empty line is more indented (see [TextEdit.get\_indent\_level()](class_textedit.md#class-textedit-method-get-indent-level)).

* * *

void **cancel\_code\_completion**() [🔗](#class-codeedit-method-cancel-code-completion)

Cancels the autocomplete menu.

* * *

void **clear\_bookmarked\_lines**() [🔗](#class-codeedit-method-clear-bookmarked-lines)

Clears all bookmarked lines.

* * *

void **clear\_breakpointed\_lines**() [🔗](#class-codeedit-method-clear-breakpointed-lines)

Clears all breakpointed lines.

* * *

void **clear\_comment\_delimiters**() [🔗](#class-codeedit-method-clear-comment-delimiters)

Removes all comment delimiters.

* * *

void **clear\_executing\_lines**() [🔗](#class-codeedit-method-clear-executing-lines)

Clears all executed lines.

* * *

void **clear\_string\_delimiters**() [🔗](#class-codeedit-method-clear-string-delimiters)

Removes all string delimiters.

* * *

void **confirm\_code\_completion**(replace: [bool](class_bool.md#class-bool) = false) [🔗](#class-codeedit-method-confirm-code-completion)

Inserts the selected entry into the text. If `replace` is `true`, any existing text is replaced rather than merged.

* * *

void **convert\_indent**(from\_line: [int](class_int.md#class-int) = -1, to\_line: [int](class_int.md#class-int) = -1) [🔗](#class-codeedit-method-convert-indent)

Converts the indents of lines between `from_line` and `to_line` to tabs or spaces as set by [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces).

Values of `-1` convert the entire text.

* * *

void **create\_code\_region**() [🔗](#class-codeedit-method-create-code-region)

Creates a new code region with the selection. At least one single line comment delimiter have to be defined (see [add\_comment\_delimiter()](#class-codeedit-method-add-comment-delimiter)).

A code region is a part of code that is highlighted when folded and can help organize your script.

Code region start and end tags can be customized (see [set\_code\_region\_tags()](#class-codeedit-method-set-code-region-tags)).

Code regions are delimited using start and end tags (respectively `region` and `endregion` by default) preceded by one line comment delimiter. (eg. `#region` and `#endregion`)

* * *

void **delete\_lines**() [🔗](#class-codeedit-method-delete-lines)

Deletes all lines that are selected or have a caret on them.

* * *

void **do\_indent**() [🔗](#class-codeedit-method-do-indent)

If there is no selection, indentation is inserted at the caret. Otherwise, the selected lines are indented like [indent\_lines()](#class-codeedit-method-indent-lines). Equivalent to the [ProjectSettings.input/ui\_text\_indent](class_projectsettings.md#class-projectsettings-property-input-ui-text-indent) action. The indentation characters used depend on [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces) and [indent\_size](#class-codeedit-property-indent-size).

* * *

void **duplicate\_lines**() [🔗](#class-codeedit-method-duplicate-lines)

Duplicates all lines currently selected with any caret. Duplicates the entire line beneath the current one no matter where the caret is within the line.

* * *

void **duplicate\_selection**() [🔗](#class-codeedit-method-duplicate-selection)

Duplicates all selected text and duplicates all lines with a caret on them.

* * *

void **fold\_all\_lines**() [🔗](#class-codeedit-method-fold-all-lines)

Folds all lines that are possible to be folded (see [can\_fold\_line()](#class-codeedit-method-can-fold-line)).

* * *

void **fold\_line**(line: [int](class_int.md#class-int)) [🔗](#class-codeedit-method-fold-line)

Folds the given line, if possible (see [can\_fold\_line()](#class-codeedit-method-can-fold-line)).

* * *

[String](class_string.md#class-string) **get\_auto\_brace\_completion\_close\_key**(open\_key: [String](class_string.md#class-string)) const [🔗](#class-codeedit-method-get-auto-brace-completion-close-key)

Gets the matching auto brace close key for `open_key`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_bookmarked\_lines**() const [🔗](#class-codeedit-method-get-bookmarked-lines)

Gets all bookmarked lines.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_breakpointed\_lines**() const [🔗](#class-codeedit-method-get-breakpointed-lines)

Gets all breakpointed lines.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **get\_code\_completion\_option**(index: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-code-completion-option)

Gets the completion option at `index`. The return [Dictionary](class_dictionary.md#class-dictionary) has the following key-values:

`kind`: [CodeCompletionKind](#enum-codeedit-codecompletionkind)

`display_text`: Text that is shown on the autocomplete menu.

`insert_text`: Text that is to be inserted when this item is selected.

`font_color`: Color of the text on the autocomplete menu.

`icon`: Icon to draw on the autocomplete menu.

`default_value`: Value of the symbol.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **get\_code\_completion\_options**() const [🔗](#class-codeedit-method-get-code-completion-options)

Gets all completion options, see [get\_code\_completion\_option()](#class-codeedit-method-get-code-completion-option) for return content.

* * *

[int](class_int.md#class-int) **get\_code\_completion\_selected\_index**() const [🔗](#class-codeedit-method-get-code-completion-selected-index)

Gets the index of the current selected completion option.

* * *

[String](class_string.md#class-string) **get\_code\_region\_end\_tag**() const [🔗](#class-codeedit-method-get-code-region-end-tag)

Returns the code region end tag (without comment delimiter).

* * *

[String](class_string.md#class-string) **get\_code\_region\_start\_tag**() const [🔗](#class-codeedit-method-get-code-region-start-tag)

Returns the code region start tag (without comment delimiter).

* * *

[String](class_string.md#class-string) **get\_delimiter\_end\_key**(delimiter\_index: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-delimiter-end-key)

Gets the end key for a string or comment region index.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_delimiter\_end\_position**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-delimiter-end-position)

If `line` `column` is in a string or comment, returns the end position of the region. If not or no end could be found, both [Vector2](class_vector2.md#class-vector2) values will be `-1`.

* * *

[String](class_string.md#class-string) **get\_delimiter\_start\_key**(delimiter\_index: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-delimiter-start-key)

Gets the start key for a string or comment region index.

* * *

[Vector2](class_vector2.md#class-vector2) **get\_delimiter\_start\_position**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-delimiter-start-position)

If `line` `column` is in a string or comment, returns the start position of the region. If not or no start could be found, both [Vector2](class_vector2.md#class-vector2) values will be `-1`.

* * *

[PackedInt32Array](class_packedint32array.md#class-packedint32array) **get\_executing\_lines**() const [🔗](#class-codeedit-method-get-executing-lines)

Gets all executing lines.

* * *

[Array](class_array.md#class-array)\[ [int](class_int.md#class-int)\] **get\_folded\_lines**() const [🔗](#class-codeedit-method-get-folded-lines)

Returns all lines that are currently folded.

* * *

[String](class_string.md#class-string) **get\_text\_for\_code\_completion**() const [🔗](#class-codeedit-method-get-text-for-code-completion)

Returns the full text with char `0xFFFF` at the caret location.

* * *

[String](class_string.md#class-string) **get\_text\_for\_symbol\_lookup**() const [🔗](#class-codeedit-method-get-text-for-symbol-lookup)

Returns the full text with char `0xFFFF` at the cursor location.

* * *

[String](class_string.md#class-string) **get\_text\_with\_cursor\_char**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-get-text-with-cursor-char)

Returns the full text with char `0xFFFF` at the specified location.

* * *

[bool](class_bool.md#class-bool) **has\_auto\_brace\_completion\_close\_key**(close\_key: [String](class_string.md#class-string)) const [🔗](#class-codeedit-method-has-auto-brace-completion-close-key)

Returns `true` if close key `close_key` exists.

* * *

[bool](class_bool.md#class-bool) **has\_auto\_brace\_completion\_open\_key**(open\_key: [String](class_string.md#class-string)) const [🔗](#class-codeedit-method-has-auto-brace-completion-open-key)

Returns `true` if open key `open_key` exists.

* * *

[bool](class_bool.md#class-bool) **has\_comment\_delimiter**(start\_key: [String](class_string.md#class-string)) const [🔗](#class-codeedit-method-has-comment-delimiter)

Returns `true` if comment `start_key` exists.

* * *

[bool](class_bool.md#class-bool) **has\_string\_delimiter**(start\_key: [String](class_string.md#class-string)) const [🔗](#class-codeedit-method-has-string-delimiter)

Returns `true` if string `start_key` exists.

* * *

void **indent\_lines**() [🔗](#class-codeedit-method-indent-lines)

Indents all lines that are selected or have a caret on them. Uses spaces or a tab depending on [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces). See [unindent\_lines()](#class-codeedit-method-unindent-lines).

* * *

[int](class_int.md#class-int) **is\_in\_comment**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int) = -1) const [🔗](#class-codeedit-method-is-in-comment)

Returns delimiter index if `line` `column` is in a comment. If `column` is not provided, will return delimiter index if the entire `line` is a comment. Otherwise `-1`.

* * *

[int](class_int.md#class-int) **is\_in\_string**(line: [int](class_int.md#class-int), column: [int](class_int.md#class-int) = -1) const [🔗](#class-codeedit-method-is-in-string)

Returns the delimiter index if `line` `column` is in a string. If `column` is not provided, will return the delimiter index if the entire `line` is a string. Otherwise `-1`.

* * *

[bool](class_bool.md#class-bool) **is\_line\_bookmarked**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-bookmarked)

Returns `true` if the given line is bookmarked. See [set\_line\_as\_bookmarked()](#class-codeedit-method-set-line-as-bookmarked).

* * *

[bool](class_bool.md#class-bool) **is\_line\_breakpointed**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-breakpointed)

Returns `true` if the given line is breakpointed. See [set\_line\_as\_breakpoint()](#class-codeedit-method-set-line-as-breakpoint).

* * *

[bool](class_bool.md#class-bool) **is\_line\_code\_region\_end**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-code-region-end)

Returns `true` if the given line is a code region end. See [set\_code\_region\_tags()](#class-codeedit-method-set-code-region-tags).

* * *

[bool](class_bool.md#class-bool) **is\_line\_code\_region\_start**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-code-region-start)

Returns `true` if the given line is a code region start. See [set\_code\_region\_tags()](#class-codeedit-method-set-code-region-tags).

* * *

[bool](class_bool.md#class-bool) **is\_line\_executing**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-executing)

Returns `true` if the given line is marked as executing. See [set\_line\_as\_executing()](#class-codeedit-method-set-line-as-executing).

* * *

[bool](class_bool.md#class-bool) **is\_line\_folded**(line: [int](class_int.md#class-int)) const [🔗](#class-codeedit-method-is-line-folded)

Returns `true` if the given line is folded. See [fold\_line()](#class-codeedit-method-fold-line).

* * *

void **move\_lines\_down**() [🔗](#class-codeedit-method-move-lines-down)

Moves all lines down that are selected or have a caret on them.

* * *

void **move\_lines\_up**() [🔗](#class-codeedit-method-move-lines-up)

Moves all lines up that are selected or have a caret on them.

* * *

void **remove\_comment\_delimiter**(start\_key: [String](class_string.md#class-string)) [🔗](#class-codeedit-method-remove-comment-delimiter)

Removes the comment delimiter with `start_key`.

* * *

void **remove\_string\_delimiter**(start\_key: [String](class_string.md#class-string)) [🔗](#class-codeedit-method-remove-string-delimiter)

Removes the string delimiter with `start_key`.

* * *

void **request\_code\_completion**(force: [bool](class_bool.md#class-bool) = false) [🔗](#class-codeedit-method-request-code-completion)

Emits [code\_completion\_requested](#class-codeedit-signal-code-completion-requested), if `force` is `true` will bypass all checks. Otherwise will check that the caret is in a word or in front of a prefix. Will ignore the request if all current options are of type file path, node path, or signal.

* * *

void **set\_code\_completion\_selected\_index**(index: [int](class_int.md#class-int)) [🔗](#class-codeedit-method-set-code-completion-selected-index)

Sets the current selected completion option.

* * *

void **set\_code\_hint**(code\_hint: [String](class_string.md#class-string)) [🔗](#class-codeedit-method-set-code-hint)

Sets the code hint text. Pass an empty string to clear.

* * *

void **set\_code\_hint\_draw\_below**(draw\_below: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-set-code-hint-draw-below)

If `true`, the code hint will draw below the main caret. If `false`, the code hint will draw above the main caret. See [set\_code\_hint()](#class-codeedit-method-set-code-hint).

* * *

void **set\_code\_region\_tags**(start: [String](class_string.md#class-string) = "region", end: [String](class_string.md#class-string) = "endregion") [🔗](#class-codeedit-method-set-code-region-tags)

Sets the code region start and end tags (without comment delimiter).

* * *

void **set\_line\_as\_bookmarked**(line: [int](class_int.md#class-int), bookmarked: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-set-line-as-bookmarked)

Sets the given line as bookmarked. If `true` and [gutters\_draw\_bookmarks](#class-codeedit-property-gutters-draw-bookmarks) is `true`, draws the [bookmark](#class-codeedit-theme-icon-bookmark) icon in the gutter for this line. See [get\_bookmarked\_lines()](#class-codeedit-method-get-bookmarked-lines) and [is\_line\_bookmarked()](#class-codeedit-method-is-line-bookmarked).

* * *

void **set\_line\_as\_breakpoint**(line: [int](class_int.md#class-int), breakpointed: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-set-line-as-breakpoint)

Sets the given line as a breakpoint. If `true` and [gutters\_draw\_breakpoints\_gutter](#class-codeedit-property-gutters-draw-breakpoints-gutter) is `true`, draws the [breakpoint](#class-codeedit-theme-icon-breakpoint) icon in the gutter for this line. See [get\_breakpointed\_lines()](#class-codeedit-method-get-breakpointed-lines) and [is\_line\_breakpointed()](#class-codeedit-method-is-line-breakpointed).

* * *

void **set\_line\_as\_executing**(line: [int](class_int.md#class-int), executing: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-set-line-as-executing)

Sets the given line as executing. If `true` and [gutters\_draw\_executing\_lines](#class-codeedit-property-gutters-draw-executing-lines) is `true`, draws the [executing\_line](#class-codeedit-theme-icon-executing-line) icon in the gutter for this line. See [get\_executing\_lines()](#class-codeedit-method-get-executing-lines) and [is\_line\_executing()](#class-codeedit-method-is-line-executing).

* * *

void **set\_symbol\_lookup\_word\_as\_valid**(valid: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-set-symbol-lookup-word-as-valid)

Sets the symbol emitted by [symbol\_validate](#class-codeedit-signal-symbol-validate) as a valid lookup.

* * *

void **toggle\_foldable\_line**(line: [int](class_int.md#class-int)) [🔗](#class-codeedit-method-toggle-foldable-line)

Toggle the folding of the code block at the given line.

* * *

void **toggle\_foldable\_lines\_at\_carets**() [🔗](#class-codeedit-method-toggle-foldable-lines-at-carets)

Toggle the folding of the code block on all lines with a caret on them.

* * *

void **unfold\_all\_lines**() [🔗](#class-codeedit-method-unfold-all-lines)

Unfolds all lines that are folded.

* * *

void **unfold\_line**(line: [int](class_int.md#class-int)) [🔗](#class-codeedit-method-unfold-line)

Unfolds the given line if it is folded or if it is hidden under a folded line.

* * *

void **unindent\_lines**() [🔗](#class-codeedit-method-unindent-lines)

Unindents all lines that are selected or have a caret on them. Uses spaces or a tab depending on [indent\_use\_spaces](#class-codeedit-property-indent-use-spaces). Equivalent to the [ProjectSettings.input/ui\_text\_dedent](class_projectsettings.md#class-projectsettings-property-input-ui-text-dedent) action. See [indent\_lines()](#class-codeedit-method-indent-lines).

* * *

void **update\_code\_completion\_options**(force: [bool](class_bool.md#class-bool)) [🔗](#class-codeedit-method-update-code-completion-options)

Submits all completion options added with [add\_code\_completion\_option()](#class-codeedit-method-add-code-completion-option). Will try to force the autocomplete menu to popup, if `force` is `true`.

**Note:** This will replace all current candidates.

* * *

## Theme Property Descriptions

[Color](class_color.md#class-color) **bookmark\_color** = `Color(0.5, 0.64, 1, 0.8)` [🔗](#class-codeedit-theme-color-bookmark-color)

[Color](class_color.md#class-color) of the bookmark icon for bookmarked lines.

* * *

[Color](class_color.md#class-color) **brace\_mismatch\_color** = `Color(1, 0.2, 0.2, 1)` [🔗](#class-codeedit-theme-color-brace-mismatch-color)

[Color](class_color.md#class-color) of the text to highlight mismatched braces.

* * *

[Color](class_color.md#class-color) **breakpoint\_color** = `Color(0.9, 0.29, 0.3, 1)` [🔗](#class-codeedit-theme-color-breakpoint-color)

[Color](class_color.md#class-color) of the breakpoint icon for bookmarked lines.

* * *

[Color](class_color.md#class-color) **code\_folding\_color** = `Color(0.8, 0.8, 0.8, 0.8)` [🔗](#class-codeedit-theme-color-code-folding-color)

[Color](class_color.md#class-color) for all icons related to line folding.

* * *

[Color](class_color.md#class-color) **completion\_background\_color** = `Color(0.17, 0.16, 0.2, 1)` [🔗](#class-codeedit-theme-color-completion-background-color)

Sets the background [Color](class_color.md#class-color) for the code completion popup.

* * *

[Color](class_color.md#class-color) **completion\_existing\_color** = `Color(0.87, 0.87, 0.87, 0.13)` [🔗](#class-codeedit-theme-color-completion-existing-color)

Background highlight [Color](class_color.md#class-color) for matching text in code completion options.

* * *

[Color](class_color.md#class-color) **completion\_scroll\_color** = `Color(1, 1, 1, 0.29)` [🔗](#class-codeedit-theme-color-completion-scroll-color)

[Color](class_color.md#class-color) of the scrollbar in the code completion popup.

* * *

[Color](class_color.md#class-color) **completion\_scroll\_hovered\_color** = `Color(1, 1, 1, 0.4)` [🔗](#class-codeedit-theme-color-completion-scroll-hovered-color)

[Color](class_color.md#class-color) of the scrollbar in the code completion popup when hovered.

* * *

[Color](class_color.md#class-color) **completion\_selected\_color** = `Color(0.26, 0.26, 0.27, 1)` [🔗](#class-codeedit-theme-color-completion-selected-color)

Background highlight [Color](class_color.md#class-color) for the current selected option item in the code completion popup.

* * *

[Color](class_color.md#class-color) **executing\_line\_color** = `Color(0.98, 0.89, 0.27, 1)` [🔗](#class-codeedit-theme-color-executing-line-color)

[Color](class_color.md#class-color) of the executing icon for executing lines.

* * *

[Color](class_color.md#class-color) **folded\_code\_region\_color** = `Color(0.68, 0.46, 0.77, 0.2)` [🔗](#class-codeedit-theme-color-folded-code-region-color)

[Color](class_color.md#class-color) of background line highlight for folded code region.

* * *

[Color](class_color.md#class-color) **line\_length\_guideline\_color** = `Color(0.3, 0.5, 0.8, 0.1)` [🔗](#class-codeedit-theme-color-line-length-guideline-color)

[Color](class_color.md#class-color) of the main line length guideline, secondary guidelines will have 50% alpha applied.

* * *

[Color](class_color.md#class-color) **line\_number\_color** = `Color(0.67, 0.67, 0.67, 0.4)` [🔗](#class-codeedit-theme-color-line-number-color)

Sets the [Color](class_color.md#class-color) of line numbers.

* * *

[int](class_int.md#class-int) **completion\_lines** = `7` [🔗](#class-codeedit-theme-constant-completion-lines)

Max number of options to display in the code completion popup at any one time.

* * *

[int](class_int.md#class-int) **completion\_max\_width** = `50` [🔗](#class-codeedit-theme-constant-completion-max-width)

Max width of options in the code completion popup. Options longer than this will be cut off.

* * *

[int](class_int.md#class-int) **completion\_scroll\_width** = `6` [🔗](#class-codeedit-theme-constant-completion-scroll-width)

Width of the scrollbar in the code completion popup.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **bookmark** [🔗](#class-codeedit-theme-icon-bookmark)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the bookmark gutter for bookmarked lines.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **breakpoint** [🔗](#class-codeedit-theme-icon-breakpoint)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the breakpoint gutter for breakpointed lines.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **can\_fold** [🔗](#class-codeedit-theme-icon-can-fold)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the line folding gutter when a line can be folded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **can\_fold\_code\_region** [🔗](#class-codeedit-theme-icon-can-fold-code-region)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the line folding gutter when a code region can be folded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **completion\_color\_bg** [🔗](#class-codeedit-theme-icon-completion-color-bg)

Background panel for the color preview box in autocompletion (visible when the color is translucent).

* * *

[Texture2D](class_texture2d.md#class-texture2d) **executing\_line** [🔗](#class-codeedit-theme-icon-executing-line)

Icon to draw in the executing gutter for executing lines.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded** [🔗](#class-codeedit-theme-icon-folded)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the line folding gutter when a line is folded and can be unfolded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded\_code\_region** [🔗](#class-codeedit-theme-icon-folded-code-region)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw in the line folding gutter when a code region is folded and can be unfolded.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **folded\_eol\_icon** [🔗](#class-codeedit-theme-icon-folded-eol-icon)

Sets a custom [Texture2D](class_texture2d.md#class-texture2d) to draw at the end of a folded line.

* * *

[StyleBox](class_stylebox.md#class-stylebox) **completion** [🔗](#class-codeedit-theme-style-completion)

[StyleBox](class_stylebox.md#class-stylebox) for the code completion popup.

[Previous](class_checkbutton.md "CheckButton") [Next](class_collisionobject2d.md "CollisionObject2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_checkbutton.md "CheckButton") [Next](class_collisionobject2d.md "CollisionObject2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).