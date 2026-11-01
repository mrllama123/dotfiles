---
title: Getting the source — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/engine_details/development/compiling/getting_source.html
crawled_at: "2026-08-13T10:26:00+12:00"
content_hash: 529975f6091ba96f5e772fa2925038e843680fd129c17325b94563e3d9e4f4b0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../../index.md)
  - [Engine development](../index.md)
  - [Building from source](index.md)
  - Getting the source
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/engine_details/development/compiling/getting_source.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Getting the source

## Downloading the Godot source code

Before [getting into the SCons build system](introduction_to_the_buildsystem.md#doc-introduction-to-the-buildsystem)
and compiling Godot, you need to actually download the Godot source code.

The source code is available on [GitHub](https://github.com/godotengine/godot)
and while you can manually download it via the website, in general you want to
do it via the `git` version control system.

If you are compiling in order to make contributions or pull requests, you should
follow the instructions from the [Pull Request workflow](https://contributing.godotengine.org/en/latest/organization/pull_requests/creating_pull_requests.html).

If you don't know much about `git` yet, there are a great number of
[tutorials](https://git-scm.com/book) available on various websites.

In general, you need to install `git` and/or one of the various GUI clients.

Afterwards, to get the latest development version of the Godot source code
(the unstable `master` branch), you can use `git clone`.

If you are using the `git` command line client, this is done by entering
the following in a terminal:

```
git clone https://github.com/godotengine/godot.git
# You can add the --depth 1 argument to omit the commit history (shallow clone).
# A shallow clone is faster, but not all Git operations (like blame) will work.

```

For any stable release, visit the [release page](https://github.com/godotengine/godot/releases)
and click on the link for the release you want.
You can then download and extract the source from the download link on the page.

With `git`, you can also clone a stable release by specifying its branch or tag
after the `--branch` (or just `-b`) argument:

```
# Clone the continuously maintained stable branch (`4.5` as of writing).
git clone https://github.com/godotengine/godot.git -b 4.5

# Clone the `4.5-stable` tag. This is a fixed revision that will never change.
git clone https://github.com/godotengine/godot.git -b 4.5-stable

# After cloning, optionally go to a specific commit.
# This can be used to access the source code at a specific point in time,
# e.g. for development snapshots, betas and release candidates.
cd godot
git checkout f4af8201bac157b9d47e336203d3e8a8ef729de2

```

The [maintenance branches](https://github.com/godotengine/godot/branches/all)
are used to release further patches on each minor version.

You can get the source code for each release and pre-release in `.tar.xz` format from
[godotengine/godot-builds on GitHub](https://github.com/godotengine/godot-builds/releases).
This lacks version control information but has a slightly smaller download size.

After downloading the Godot source code,
you can [continue to compiling Godot](introduction_to_the_buildsystem.md#doc-introduction-to-the-buildsystem).

[Previous](index.md "Building from source") [Next](introduction_to_the_buildsystem.md "Introduction to the buildsystem")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](index.md "Building from source") [Next](introduction_to_the_buildsystem.md "Introduction to the buildsystem")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).