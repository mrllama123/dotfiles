---
title: EditorExportPlatformLinuxBSD — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformlinuxbsd.html
crawled_at: "2026-08-13T10:24:07+12:00"
content_hash: d6769f080ca400bfc424bc9c25e1b9bf5870b10e43879f8abbac3ff9b9234d2e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformLinuxBSD

* * *

# EditorExportPlatformLinuxBSD

**Inherits:** [EditorExportPlatformPC](class_editorexportplatformpc.md#class-editorexportplatformpc) **<** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for Linux/BSD.

## Tutorials

- [Exporting for Linux](../tutorials/export/exporting_for_linux.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [binary\_format/architecture](#class-editorexportplatformlinuxbsd-property-binary-format-architecture) |
| [bool](class_bool.md#class-bool) | [binary\_format/embed\_pck](#class-editorexportplatformlinuxbsd-property-binary-format-embed-pck) |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformlinuxbsd-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformlinuxbsd-property-custom-template-release) |
| [int](class_int.md#class-int) | [debug/export\_console\_wrapper](#class-editorexportplatformlinuxbsd-property-debug-export-console-wrapper) |
| [bool](class_bool.md#class-bool) | [shader\_baker/enabled](#class-editorexportplatformlinuxbsd-property-shader-baker-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/cleanup\_script](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-cleanup-script) |
| [bool](class_bool.md#class-bool) | [ssh\_remote\_deploy/enabled](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_scp](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-extra-args-scp) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_ssh](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-extra-args-ssh) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/host](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-host) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/port](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-port) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/run\_script](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-run-script) |
| [bool](class_bool.md#class-bool) | [texture\_format/etc2\_astc](#class-editorexportplatformlinuxbsd-property-texture-format-etc2-astc) |
| [bool](class_bool.md#class-bool) | [texture\_format/s3tc\_bptc](#class-editorexportplatformlinuxbsd-property-texture-format-s3tc-bptc) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **binary\_format/architecture** [🔗](#class-editorexportplatformlinuxbsd-property-binary-format-architecture)

Application executable architecture.

Supported architectures: `x86_32`, `x86_64`, `arm64`, `arm32`, `rv64`, `ppc64`, and `loongarch64`.

Official export templates include `x86_32`, `x86_64`, `arm32`, and `arm64` binaries only.

* * *

[bool](class_bool.md#class-bool) **binary\_format/embed\_pck** [🔗](#class-editorexportplatformlinuxbsd-property-binary-format-embed-pck)

If `true`, project resources are embedded into the executable.

* * *

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformlinuxbsd-property-custom-template-debug)

Path to the custom export template. If left empty, default template is used.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformlinuxbsd-property-custom-template-release)

Path to the custom export template. If left empty, default template is used.

* * *

[int](class_int.md#class-int) **debug/export\_console\_wrapper** [🔗](#class-editorexportplatformlinuxbsd-property-debug-export-console-wrapper)

If `true`, a console wrapper is exported alongside the main executable, which allows running the project with enabled console output.

* * *

[bool](class_bool.md#class-bool) **shader\_baker/enabled** [🔗](#class-editorexportplatformlinuxbsd-property-shader-baker-enabled)

If `true`, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ or Mobile renderers.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/cleanup\_script** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-cleanup-script)

Script code to execute on the remote host when app is finished.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[bool](class_bool.md#class-bool) **ssh\_remote\_deploy/enabled** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-enabled)

Enables remote deploy using SSH/SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_scp** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-extra-args-scp)

Array of the additional command line arguments passed to the SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_ssh** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-extra-args-ssh)

Array of the additional command line arguments passed to the SSH.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/host** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-host)

Remote host SSH user name and address, in `user@address` format.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/port** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-port)

Remote host SSH port number.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/run\_script** [🔗](#class-editorexportplatformlinuxbsd-property-ssh-remote-deploy-run-script)

Script code to execute on the remote host when running the app.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[bool](class_bool.md#class-bool) **texture\_format/etc2\_astc** [🔗](#class-editorexportplatformlinuxbsd-property-texture-format-etc2-astc)

If `true`, project textures are exported in the ETC2/ASTC format.

* * *

[bool](class_bool.md#class-bool) **texture\_format/s3tc\_bptc** [🔗](#class-editorexportplatformlinuxbsd-property-texture-format-s3tc-bptc)

If `true`, project textures are exported in the S3TC/BPTC format.

[Previous](class_editorexportplatformios.md "EditorExportPlatformIOS") [Next](class_editorexportplatformmacos.md "EditorExportPlatformMacOS")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformios.md "EditorExportPlatformIOS") [Next](class_editorexportplatformmacos.md "EditorExportPlatformMacOS")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).