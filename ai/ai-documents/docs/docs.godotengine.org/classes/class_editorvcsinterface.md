---
title: EditorVCSInterface — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorvcsinterface.html
crawled_at: "2026-08-13T10:32:36+12:00"
content_hash: 0345b49d3a94b459d7bfe917f32db6193f44fbf08f2f47d2370944ac8400642d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorVCSInterface

* * *

# EditorVCSInterface

**Inherits:** [Object](class_object.md#class-object)

Version Control System (VCS) interface, which reads and writes to the local VCS in use.

## Description

Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are GDExtension plugins that inherit **EditorVCSInterface** and are attached (on demand) to the singleton instance of **EditorVCSInterface**. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from **EditorVCSInterface** and override each of these virtual functions.

## Tutorials

- [Version control systems](../tutorials/best_practices/version_control_systems.md)


## Methods

|     |     |
| --- | --- |
| [bool](class_bool.md#class-bool) | [\_checkout\_branch](#class-editorvcsinterface-private-method-checkout-branch)(branch\_name: [String](class_string.md#class-string)) virtualrequired |
| void | [\_commit](#class-editorvcsinterface-private-method-commit)(msg: [String](class_string.md#class-string)) virtualrequired |
| void | [\_create\_branch](#class-editorvcsinterface-private-method-create-branch)(branch\_name: [String](class_string.md#class-string)) virtualrequired |
| void | [\_create\_remote](#class-editorvcsinterface-private-method-create-remote)(remote\_name: [String](class_string.md#class-string), remote\_url: [String](class_string.md#class-string)) virtualrequired |
| void | [\_discard\_file](#class-editorvcsinterface-private-method-discard-file)(file\_path: [String](class_string.md#class-string)) virtualrequired |
| void | [\_fetch](#class-editorvcsinterface-private-method-fetch)(remote: [String](class_string.md#class-string)) virtualrequired |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [\_get\_branch\_list](#class-editorvcsinterface-private-method-get-branch-list)() virtualrequired |
| [String](class_string.md#class-string) | [\_get\_current\_branch\_name](#class-editorvcsinterface-private-method-get-current-branch-name)() virtualrequired |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_diff](#class-editorvcsinterface-private-method-get-diff)(identifier: [String](class_string.md#class-string), area: [int](class_int.md#class-int)) virtualrequired |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_line\_diff](#class-editorvcsinterface-private-method-get-line-diff)(file\_path: [String](class_string.md#class-string), text: [String](class_string.md#class-string)) virtualrequired |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_modified\_files\_data](#class-editorvcsinterface-private-method-get-modified-files-data)() virtualrequired |
| [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] | [\_get\_previous\_commits](#class-editorvcsinterface-private-method-get-previous-commits)(max\_commits: [int](class_int.md#class-int)) virtualrequired |
| [Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] | [\_get\_remotes](#class-editorvcsinterface-private-method-get-remotes)() virtualrequired |
| [String](class_string.md#class-string) | [\_get\_vcs\_name](#class-editorvcsinterface-private-method-get-vcs-name)() virtualrequired |
| [bool](class_bool.md#class-bool) | [\_initialize](#class-editorvcsinterface-private-method-initialize)(project\_path: [String](class_string.md#class-string)) virtualrequired |
| void | [\_pull](#class-editorvcsinterface-private-method-pull)(remote: [String](class_string.md#class-string)) virtualrequired |
| void | [\_push](#class-editorvcsinterface-private-method-push)(remote: [String](class_string.md#class-string), force: [bool](class_bool.md#class-bool)) virtualrequired |
| void | [\_remove\_branch](#class-editorvcsinterface-private-method-remove-branch)(branch\_name: [String](class_string.md#class-string)) virtualrequired |
| void | [\_remove\_remote](#class-editorvcsinterface-private-method-remove-remote)(remote\_name: [String](class_string.md#class-string)) virtualrequired |
| void | [\_set\_credentials](#class-editorvcsinterface-private-method-set-credentials)(username: [String](class_string.md#class-string), password: [String](class_string.md#class-string), ssh\_public\_key\_path: [String](class_string.md#class-string), ssh\_private\_key\_path: [String](class_string.md#class-string), ssh\_passphrase: [String](class_string.md#class-string)) virtualrequired |
| [bool](class_bool.md#class-bool) | [\_shut\_down](#class-editorvcsinterface-private-method-shut-down)() virtualrequired |
| void | [\_stage\_file](#class-editorvcsinterface-private-method-stage-file)(file\_path: [String](class_string.md#class-string)) virtualrequired |
| void | [\_unstage\_file](#class-editorvcsinterface-private-method-unstage-file)(file\_path: [String](class_string.md#class-string)) virtualrequired |
| [Dictionary](class_dictionary.md#class-dictionary) | [add\_diff\_hunks\_into\_diff\_file](#class-editorvcsinterface-method-add-diff-hunks-into-diff-file)(diff\_file: [Dictionary](class_dictionary.md#class-dictionary), diff\_hunks: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) |
| [Dictionary](class_dictionary.md#class-dictionary) | [add\_line\_diffs\_into\_diff\_hunk](#class-editorvcsinterface-method-add-line-diffs-into-diff-hunk)(diff\_hunk: [Dictionary](class_dictionary.md#class-dictionary), line\_diffs: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) |
| [Dictionary](class_dictionary.md#class-dictionary) | [create\_commit](#class-editorvcsinterface-method-create-commit)(msg: [String](class_string.md#class-string), author: [String](class_string.md#class-string), id: [String](class_string.md#class-string), unix\_timestamp: [int](class_int.md#class-int), offset\_minutes: [int](class_int.md#class-int)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [create\_diff\_file](#class-editorvcsinterface-method-create-diff-file)(new\_file: [String](class_string.md#class-string), old\_file: [String](class_string.md#class-string)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [create\_diff\_hunk](#class-editorvcsinterface-method-create-diff-hunk)(old\_start: [int](class_int.md#class-int), new\_start: [int](class_int.md#class-int), old\_lines: [int](class_int.md#class-int), new\_lines: [int](class_int.md#class-int)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [create\_diff\_line](#class-editorvcsinterface-method-create-diff-line)(new\_line\_no: [int](class_int.md#class-int), old\_line\_no: [int](class_int.md#class-int), content: [String](class_string.md#class-string), status: [String](class_string.md#class-string)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [create\_status\_file](#class-editorvcsinterface-method-create-status-file)(file\_path: [String](class_string.md#class-string), change\_type: [ChangeType](#enum-editorvcsinterface-changetype), area: [TreeArea](#enum-editorvcsinterface-treearea)) |
| void | [popup\_error](#class-editorvcsinterface-method-popup-error)(msg: [String](class_string.md#class-string)) |

* * *

## Enumerations

enum **ChangeType**: [🔗](#enum-editorvcsinterface-changetype)

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_NEW** = `0`

A new file has been added.

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_MODIFIED** = `1`

An earlier added file has been modified.

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_RENAMED** = `2`

An earlier added file has been renamed.

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_DELETED** = `3`

An earlier added file has been deleted.

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_TYPECHANGE** = `4`

An earlier added file has been typechanged.

[ChangeType](#enum-editorvcsinterface-changetype) **CHANGE\_TYPE\_UNMERGED** = `5`

A file is left unmerged.

* * *

enum **TreeArea**: [🔗](#enum-editorvcsinterface-treearea)

[TreeArea](#enum-editorvcsinterface-treearea) **TREE\_AREA\_COMMIT** = `0`

A commit is encountered from the commit area.

[TreeArea](#enum-editorvcsinterface-treearea) **TREE\_AREA\_STAGED** = `1`

A file is encountered from the staged area.

[TreeArea](#enum-editorvcsinterface-treearea) **TREE\_AREA\_UNSTAGED** = `2`

A file is encountered from the unstaged area.

* * *

## Method Descriptions

[bool](class_bool.md#class-bool) **\_checkout\_branch**(branch\_name: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-checkout-branch)

Checks out a `branch_name` in the VCS.

* * *

void **\_commit**(msg: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-commit)

Commits the currently staged changes and applies the commit `msg` to the resulting commit.

* * *

void **\_create\_branch**(branch\_name: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-create-branch)

Creates a new branch named `branch_name` in the VCS.

* * *

void **\_create\_remote**(remote\_name: [String](class_string.md#class-string), remote\_url: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-create-remote)

Creates a new remote destination with name `remote_name` and points it to `remote_url`. This can be an HTTPS remote or an SSH remote.

* * *

void **\_discard\_file**(file\_path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-discard-file)

Discards the changes made in a file present at `file_path`.

* * *

void **\_fetch**(remote: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-fetch)

Fetches new changes from the `remote`, but doesn't write changes to the current working directory. Equivalent to `git fetch`.

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **\_get\_branch\_list**() virtualrequired [🔗](#class-editorvcsinterface-private-method-get-branch-list)

Gets an instance of an [Array](class_array.md#class-array) of [String](class_string.md#class-string) s containing available branch names in the VCS.

* * *

[String](class_string.md#class-string) **\_get\_current\_branch\_name**() virtualrequired [🔗](#class-editorvcsinterface-private-method-get-current-branch-name)

Gets the current branch name defined in the VCS.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_diff**(identifier: [String](class_string.md#class-string), area: [int](class_int.md#class-int)) virtualrequired [🔗](#class-editorvcsinterface-private-method-get-diff)

Returns an array of [Dictionary](class_dictionary.md#class-dictionary) items (see [create\_diff\_file()](#class-editorvcsinterface-method-create-diff-file), [create\_diff\_hunk()](#class-editorvcsinterface-method-create-diff-hunk), [create\_diff\_line()](#class-editorvcsinterface-method-create-diff-line), [add\_line\_diffs\_into\_diff\_hunk()](#class-editorvcsinterface-method-add-line-diffs-into-diff-hunk) and [add\_diff\_hunks\_into\_diff\_file()](#class-editorvcsinterface-method-add-diff-hunks-into-diff-file)), each containing information about a diff. If `identifier` is a file path, returns a file diff, and if it is a commit identifier, then returns a commit diff.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_line\_diff**(file\_path: [String](class_string.md#class-string), text: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-get-line-diff)

Returns an [Array](class_array.md#class-array) of [Dictionary](class_dictionary.md#class-dictionary) items (see [create\_diff\_hunk()](#class-editorvcsinterface-method-create-diff-hunk)), each containing a line diff between a file at `file_path` and the `text` which is passed in.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_modified\_files\_data**() virtualrequired [🔗](#class-editorvcsinterface-private-method-get-modified-files-data)

Returns an [Array](class_array.md#class-array) of [Dictionary](class_dictionary.md#class-dictionary) items (see [create\_status\_file()](#class-editorvcsinterface-method-create-status-file)), each containing the status data of every modified file in the project folder.

* * *

[Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\] **\_get\_previous\_commits**(max\_commits: [int](class_int.md#class-int)) virtualrequired [🔗](#class-editorvcsinterface-private-method-get-previous-commits)

Returns an [Array](class_array.md#class-array) of [Dictionary](class_dictionary.md#class-dictionary) items (see [create\_commit()](#class-editorvcsinterface-method-create-commit)), each containing the data for a past commit.

* * *

[Array](class_array.md#class-array)\[ [String](class_string.md#class-string)\] **\_get\_remotes**() virtualrequired [🔗](#class-editorvcsinterface-private-method-get-remotes)

Returns an [Array](class_array.md#class-array) of [String](class_string.md#class-string) s, each containing the name of a remote configured in the VCS.

* * *

[String](class_string.md#class-string) **\_get\_vcs\_name**() virtualrequired [🔗](#class-editorvcsinterface-private-method-get-vcs-name)

Returns the name of the underlying VCS provider.

* * *

[bool](class_bool.md#class-bool) **\_initialize**(project\_path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-initialize)

Initializes the VCS plugin when called from the editor. Returns whether or not the plugin was successfully initialized. A VCS project is initialized at `project_path`.

* * *

void **\_pull**(remote: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-pull)

Pulls changes from the remote. This can give rise to merge conflicts.

* * *

void **\_push**(remote: [String](class_string.md#class-string), force: [bool](class_bool.md#class-bool)) virtualrequired [🔗](#class-editorvcsinterface-private-method-push)

Pushes changes to the `remote`. If `force` is `true`, a force push will override the change history already present on the remote.

* * *

void **\_remove\_branch**(branch\_name: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-remove-branch)

Remove a branch from the local VCS.

* * *

void **\_remove\_remote**(remote\_name: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-remove-remote)

Remove a remote from the local VCS.

* * *

void **\_set\_credentials**(username: [String](class_string.md#class-string), password: [String](class_string.md#class-string), ssh\_public\_key\_path: [String](class_string.md#class-string), ssh\_private\_key\_path: [String](class_string.md#class-string), ssh\_passphrase: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-set-credentials)

Set user credentials in the underlying VCS. `username` and `password` are used only during HTTPS authentication unless not already mentioned in the remote URL. `ssh_public_key_path`, `ssh_private_key_path`, and `ssh_passphrase` are only used during SSH authentication.

* * *

[bool](class_bool.md#class-bool) **\_shut\_down**() virtualrequired [🔗](#class-editorvcsinterface-private-method-shut-down)

Shuts down VCS plugin instance. Called when the user either closes the editor or shuts down the VCS plugin through the editor UI.

* * *

void **\_stage\_file**(file\_path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-stage-file)

Stages the file present at `file_path` to the staged area.

* * *

void **\_unstage\_file**(file\_path: [String](class_string.md#class-string)) virtualrequired [🔗](#class-editorvcsinterface-private-method-unstage-file)

Unstages the file present at `file_path` from the staged area to the unstaged area.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **add\_diff\_hunks\_into\_diff\_file**(diff\_file: [Dictionary](class_dictionary.md#class-dictionary), diff\_hunks: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) [🔗](#class-editorvcsinterface-method-add-diff-hunks-into-diff-file)

Helper function to add an array of `diff_hunks` into a `diff_file`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **add\_line\_diffs\_into\_diff\_hunk**(diff\_hunk: [Dictionary](class_dictionary.md#class-dictionary), line\_diffs: [Array](class_array.md#class-array)\[ [Dictionary](class_dictionary.md#class-dictionary)\]) [🔗](#class-editorvcsinterface-method-add-line-diffs-into-diff-hunk)

Helper function to add an array of `line_diffs` into a `diff_hunk`.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **create\_commit**(msg: [String](class_string.md#class-string), author: [String](class_string.md#class-string), id: [String](class_string.md#class-string), unix\_timestamp: [int](class_int.md#class-int), offset\_minutes: [int](class_int.md#class-int)) [🔗](#class-editorvcsinterface-method-create-commit)

Helper function to create a commit [Dictionary](class_dictionary.md#class-dictionary) item. `msg` is the commit message of the commit. `author` is a single human-readable string containing all the author's details, e.g. the email and name configured in the VCS. `id` is the identifier of the commit, in whichever format your VCS may provide an identifier to commits. `unix_timestamp` is the UTC Unix timestamp of when the commit was created. `offset_minutes` is the timezone offset in minutes, recorded from the system timezone where the commit was created.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **create\_diff\_file**(new\_file: [String](class_string.md#class-string), old\_file: [String](class_string.md#class-string)) [🔗](#class-editorvcsinterface-method-create-diff-file)

Helper function to create a [Dictionary](class_dictionary.md#class-dictionary) for storing old and new diff file paths.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **create\_diff\_hunk**(old\_start: [int](class_int.md#class-int), new\_start: [int](class_int.md#class-int), old\_lines: [int](class_int.md#class-int), new\_lines: [int](class_int.md#class-int)) [🔗](#class-editorvcsinterface-method-create-diff-hunk)

Helper function to create a [Dictionary](class_dictionary.md#class-dictionary) for storing diff hunk data. `old_start` is the starting line number in old file. `new_start` is the starting line number in new file. `old_lines` is the number of lines in the old file. `new_lines` is the number of lines in the new file.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **create\_diff\_line**(new\_line\_no: [int](class_int.md#class-int), old\_line\_no: [int](class_int.md#class-int), content: [String](class_string.md#class-string), status: [String](class_string.md#class-string)) [🔗](#class-editorvcsinterface-method-create-diff-line)

Helper function to create a [Dictionary](class_dictionary.md#class-dictionary) for storing a line diff. `new_line_no` is the line number in the new file (can be `-1` if the line is deleted). `old_line_no` is the line number in the old file (can be `-1` if the line is added). `content` is the diff text. `status` is a single character string which stores the line origin.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **create\_status\_file**(file\_path: [String](class_string.md#class-string), change\_type: [ChangeType](#enum-editorvcsinterface-changetype), area: [TreeArea](#enum-editorvcsinterface-treearea)) [🔗](#class-editorvcsinterface-method-create-status-file)

Helper function to create a [Dictionary](class_dictionary.md#class-dictionary) used by editor to read the status of a file.

* * *

void **popup\_error**(msg: [String](class_string.md#class-string)) [🔗](#class-editorvcsinterface-method-popup-error)

Pops up an error message in the editor which is shown as coming from the underlying VCS. Use this to show VCS specific error messages.

[Previous](class_editorundoredomanager.md "EditorUndoRedoManager") [Next](class_encodedobjectasid.md "EncodedObjectAsID")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorundoredomanager.md "EditorUndoRedoManager") [Next](class_encodedobjectasid.md "EncodedObjectAsID")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).