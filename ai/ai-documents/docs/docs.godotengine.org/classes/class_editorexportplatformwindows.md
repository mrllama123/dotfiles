---
title: EditorExportPlatformWindows — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_editorexportplatformwindows.html
crawled_at: "2026-08-13T10:22:05+12:00"
content_hash: 709dc1b2c70118d7a89b8b18e561b6409d6a7229f63cb83983d7e99081c834bf
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - EditorExportPlatformWindows

* * *

# EditorExportPlatformWindows

**Inherits:** [EditorExportPlatformPC](class_editorexportplatformpc.md#class-editorexportplatformpc) **<** [EditorExportPlatform](class_editorexportplatform.md#class-editorexportplatform) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Exporter for Windows.

## Description

The Windows exporter customizes how a Windows build is handled. In the editor's "Export" window, it is created when adding a new "Windows" preset.

## Tutorials

- [Exporting for Windows](../tutorials/export/exporting_for_windows.md)


## Properties

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [application/company\_name](#class-editorexportplatformwindows-property-application-company-name) |
| [String](class_string.md#class-string) | [application/console\_wrapper\_icon](#class-editorexportplatformwindows-property-application-console-wrapper-icon) |
| [String](class_string.md#class-string) | [application/copyright](#class-editorexportplatformwindows-property-application-copyright) |
| [bool](class_bool.md#class-bool) | [application/d3d12\_agility\_sdk\_multiarch](#class-editorexportplatformwindows-property-application-d3d12-agility-sdk-multiarch) |
| [int](class_int.md#class-int) | [application/export\_angle](#class-editorexportplatformwindows-property-application-export-angle) |
| [int](class_int.md#class-int) | [application/export\_d3d12](#class-editorexportplatformwindows-property-application-export-d3d12) |
| [String](class_string.md#class-string) | [application/file\_description](#class-editorexportplatformwindows-property-application-file-description) |
| [String](class_string.md#class-string) | [application/file\_version](#class-editorexportplatformwindows-property-application-file-version) |
| [String](class_string.md#class-string) | [application/icon](#class-editorexportplatformwindows-property-application-icon) |
| [int](class_int.md#class-int) | [application/icon\_interpolation](#class-editorexportplatformwindows-property-application-icon-interpolation) |
| [bool](class_bool.md#class-bool) | [application/modify\_resources](#class-editorexportplatformwindows-property-application-modify-resources) |
| [String](class_string.md#class-string) | [application/product\_name](#class-editorexportplatformwindows-property-application-product-name) |
| [String](class_string.md#class-string) | [application/product\_version](#class-editorexportplatformwindows-property-application-product-version) |
| [String](class_string.md#class-string) | [application/trademarks](#class-editorexportplatformwindows-property-application-trademarks) |
| [String](class_string.md#class-string) | [binary\_format/architecture](#class-editorexportplatformwindows-property-binary-format-architecture) |
| [bool](class_bool.md#class-bool) | [binary\_format/embed\_pck](#class-editorexportplatformwindows-property-binary-format-embed-pck) |
| [PackedStringArray](class_packedstringarray.md#class-packedstringarray) | [codesign/custom\_options](#class-editorexportplatformwindows-property-codesign-custom-options) |
| [String](class_string.md#class-string) | [codesign/description](#class-editorexportplatformwindows-property-codesign-description) |
| [int](class_int.md#class-int) | [codesign/digest\_algorithm](#class-editorexportplatformwindows-property-codesign-digest-algorithm) |
| [bool](class_bool.md#class-bool) | [codesign/enable](#class-editorexportplatformwindows-property-codesign-enable) |
| [String](class_string.md#class-string) | [codesign/identity](#class-editorexportplatformwindows-property-codesign-identity) |
| [int](class_int.md#class-int) | [codesign/identity\_type](#class-editorexportplatformwindows-property-codesign-identity-type) |
| [String](class_string.md#class-string) | [codesign/password](#class-editorexportplatformwindows-property-codesign-password) |
| [bool](class_bool.md#class-bool) | [codesign/timestamp](#class-editorexportplatformwindows-property-codesign-timestamp) |
| [String](class_string.md#class-string) | [codesign/timestamp\_server\_url](#class-editorexportplatformwindows-property-codesign-timestamp-server-url) |
| [String](class_string.md#class-string) | [custom\_template/debug](#class-editorexportplatformwindows-property-custom-template-debug) |
| [String](class_string.md#class-string) | [custom\_template/release](#class-editorexportplatformwindows-property-custom-template-release) |
| [int](class_int.md#class-int) | [debug/export\_console\_wrapper](#class-editorexportplatformwindows-property-debug-export-console-wrapper) |
| [bool](class_bool.md#class-bool) | [shader\_baker/enabled](#class-editorexportplatformwindows-property-shader-baker-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/cleanup\_script](#class-editorexportplatformwindows-property-ssh-remote-deploy-cleanup-script) |
| [bool](class_bool.md#class-bool) | [ssh\_remote\_deploy/enabled](#class-editorexportplatformwindows-property-ssh-remote-deploy-enabled) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_scp](#class-editorexportplatformwindows-property-ssh-remote-deploy-extra-args-scp) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/extra\_args\_ssh](#class-editorexportplatformwindows-property-ssh-remote-deploy-extra-args-ssh) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/host](#class-editorexportplatformwindows-property-ssh-remote-deploy-host) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/port](#class-editorexportplatformwindows-property-ssh-remote-deploy-port) |
| [String](class_string.md#class-string) | [ssh\_remote\_deploy/run\_script](#class-editorexportplatformwindows-property-ssh-remote-deploy-run-script) |
| [bool](class_bool.md#class-bool) | [texture\_format/etc2\_astc](#class-editorexportplatformwindows-property-texture-format-etc2-astc) |
| [bool](class_bool.md#class-bool) | [texture\_format/s3tc\_bptc](#class-editorexportplatformwindows-property-texture-format-s3tc-bptc) |

* * *

## Property Descriptions

[String](class_string.md#class-string) **application/company\_name** [🔗](#class-editorexportplatformwindows-property-application-company-name)

Company that produced the application. Required. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **application/console\_wrapper\_icon** [🔗](#class-editorexportplatformwindows-property-application-console-wrapper-icon)

Console wrapper icon file. If left empty, it will fallback to [application/icon](#class-editorexportplatformwindows-property-application-icon), then to [ProjectSettings.application/config/windows\_native\_icon](class_projectsettings.md#class-projectsettings-property-application-config-windows-native-icon), and lastly, [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon).

* * *

[String](class_string.md#class-string) **application/copyright** [🔗](#class-editorexportplatformwindows-property-application-copyright)

Copyright notice for the bundle visible to the user. Optional. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[bool](class_bool.md#class-bool) **application/d3d12\_agility\_sdk\_multiarch** [🔗](#class-editorexportplatformwindows-property-application-d3d12-agility-sdk-multiarch)

If `true`, and [application/export\_d3d12](#class-editorexportplatformwindows-property-application-export-d3d12) is set, the Agility SDK DLLs will be stored in arch-specific subdirectories.

* * *

[int](class_int.md#class-int) **application/export\_angle** [🔗](#class-editorexportplatformwindows-property-application-export-angle)

If set to `1`, ANGLE libraries are exported with the exported application. If set to `0`, ANGLE libraries are exported only if [ProjectSettings.rendering/gl\_compatibility/driver](class_projectsettings.md#class-projectsettings-property-rendering-gl-compatibility-driver) is set to `"opengl3_angle"`.

* * *

[int](class_int.md#class-int) **application/export\_d3d12** [🔗](#class-editorexportplatformwindows-property-application-export-d3d12)

If set to `1`, the Direct3D 12 runtime libraries (Agility SDK, PIX) are exported with the exported application. If set to `0`, Direct3D 12 libraries are exported only if [ProjectSettings.rendering/rendering\_device/driver](class_projectsettings.md#class-projectsettings-property-rendering-rendering-device-driver) is set to `"d3d12"`.

* * *

[String](class_string.md#class-string) **application/file\_description** [🔗](#class-editorexportplatformwindows-property-application-file-description)

File description to be presented to users. Required. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **application/file\_version** [🔗](#class-editorexportplatformwindows-property-application-file-version)

Version number of the file. Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **application/icon** [🔗](#class-editorexportplatformwindows-property-application-icon)

Application icon file. If left empty, it will fallback to [ProjectSettings.application/config/windows\_native\_icon](class_projectsettings.md#class-projectsettings-property-application-config-windows-native-icon), and then to [ProjectSettings.application/config/icon](class_projectsettings.md#class-projectsettings-property-application-config-icon).

* * *

[int](class_int.md#class-int) **application/icon\_interpolation** [🔗](#class-editorexportplatformwindows-property-application-icon-interpolation)

Interpolation method used to resize application icon.

* * *

[bool](class_bool.md#class-bool) **application/modify\_resources** [🔗](#class-editorexportplatformwindows-property-application-modify-resources)

If enabled, icon and metadata of the exported executable is set according to the other `application/*` values.

* * *

[String](class_string.md#class-string) **application/product\_name** [🔗](#class-editorexportplatformwindows-property-application-product-name)

Name of the application. Required. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **application/product\_version** [🔗](#class-editorexportplatformwindows-property-application-product-version)

Application version visible to the user. Falls back to [ProjectSettings.application/config/version](class_projectsettings.md#class-projectsettings-property-application-config-version) if left empty. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **application/trademarks** [🔗](#class-editorexportplatformwindows-property-application-trademarks)

Trademarks and registered trademarks that apply to the file. Optional. See [StringFileInfo](https://learn.microsoft.com/en-us/windows/win32/menurc/stringfileinfo-block).

* * *

[String](class_string.md#class-string) **binary\_format/architecture** [🔗](#class-editorexportplatformwindows-property-binary-format-architecture)

Application executable architecture.

Supported architectures: `x86_32`, `x86_64`, and `arm64`.

* * *

[bool](class_bool.md#class-bool) **binary\_format/embed\_pck** [🔗](#class-editorexportplatformwindows-property-binary-format-embed-pck)

If `true`, project resources are embedded into the executable.

* * *

[PackedStringArray](class_packedstringarray.md#class-packedstringarray) **codesign/custom\_options** [🔗](#class-editorexportplatformwindows-property-codesign-custom-options)

Array of the additional command line arguments passed to the code signing tool. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedStringArray](class_packedstringarray.md#class-packedstringarray) for more details.

* * *

[String](class_string.md#class-string) **codesign/description** [🔗](#class-editorexportplatformwindows-property-codesign-description)

Description of the signed content. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

* * *

[int](class_int.md#class-int) **codesign/digest\_algorithm** [🔗](#class-editorexportplatformwindows-property-codesign-digest-algorithm)

Digest algorithm to use for creating signature. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

* * *

[bool](class_bool.md#class-bool) **codesign/enable** [🔗](#class-editorexportplatformwindows-property-codesign-enable)

If `true`, executable signing is enabled.

* * *

[String](class_string.md#class-string) **codesign/identity** [🔗](#class-editorexportplatformwindows-property-codesign-identity)

PKCS #12 certificate file used to sign executable or certificate SHA-1 hash (if [codesign/identity\_type](#class-editorexportplatformwindows-property-codesign-identity-type) is set to "Use certificate store"). See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

Can be overridden with the environment variable `GODOT_WINDOWS_CODESIGN_IDENTITY`.

* * *

[int](class_int.md#class-int) **codesign/identity\_type** [🔗](#class-editorexportplatformwindows-property-codesign-identity-type)

Type of identity to use. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

Can be overridden with the environment variable `GODOT_WINDOWS_CODESIGN_IDENTITY_TYPE`.

* * *

[String](class_string.md#class-string) **codesign/password** [🔗](#class-editorexportplatformwindows-property-codesign-password)

Password for the certificate file used to sign executable. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

Can be overridden with the environment variable `GODOT_WINDOWS_CODESIGN_PASSWORD`.

* * *

[bool](class_bool.md#class-bool) **codesign/timestamp** [🔗](#class-editorexportplatformwindows-property-codesign-timestamp)

If `true`, time-stamp is added to the signature. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

* * *

[String](class_string.md#class-string) **codesign/timestamp\_server\_url** [🔗](#class-editorexportplatformwindows-property-codesign-timestamp-server-url)

URL of the time stamp server. If left empty, the default server is used. See [Sign Tool](https://learn.microsoft.com/en-us/dotnet/framework/tools/signtool-exe).

* * *

[String](class_string.md#class-string) **custom\_template/debug** [🔗](#class-editorexportplatformwindows-property-custom-template-debug)

Path to the custom export template. If left empty, default template is used.

* * *

[String](class_string.md#class-string) **custom\_template/release** [🔗](#class-editorexportplatformwindows-property-custom-template-release)

Path to the custom export template. If left empty, default template is used.

* * *

[int](class_int.md#class-int) **debug/export\_console\_wrapper** [🔗](#class-editorexportplatformwindows-property-debug-export-console-wrapper)

If `true`, a console wrapper executable is exported alongside the main executable, which allows running the project with enabled console output.

* * *

[bool](class_bool.md#class-bool) **shader\_baker/enabled** [🔗](#class-editorexportplatformwindows-property-shader-baker-enabled)

If `true`, shaders will be compiled and embedded in the application. This option is only supported when using the Forward+ and Mobile renderers.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/cleanup\_script** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-cleanup-script)

Script code to execute on the remote host when app is finished.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[bool](class_bool.md#class-bool) **ssh\_remote\_deploy/enabled** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-enabled)

Enables remote deploy using SSH/SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_scp** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-extra-args-scp)

Array of the additional command line arguments passed to the SCP.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/extra\_args\_ssh** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-extra-args-ssh)

Array of the additional command line arguments passed to the SSH.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/host** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-host)

Remote host SSH user name and address, in `user@address` format.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/port** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-port)

Remote host SSH port number.

* * *

[String](class_string.md#class-string) **ssh\_remote\_deploy/run\_script** [🔗](#class-editorexportplatformwindows-property-ssh-remote-deploy-run-script)

Script code to execute on the remote host when running the app.

The following variables can be used in the script:

- `{temp_dir}` \- Path of temporary folder on the remote, used to upload app and scripts to.

- `{archive_name}` \- Name of the ZIP containing uploaded application.

- `{exe_name}` \- Name of application executable.

- `{cmd_args}` \- Array of the command line argument for the application.


* * *

[bool](class_bool.md#class-bool) **texture\_format/etc2\_astc** [🔗](#class-editorexportplatformwindows-property-texture-format-etc2-astc)

If `true`, project textures are exported in the ETC2/ASTC format.

* * *

[bool](class_bool.md#class-bool) **texture\_format/s3tc\_bptc** [🔗](#class-editorexportplatformwindows-property-texture-format-s3tc-bptc)

If `true`, project textures are exported in the S3TC/BPTC format.

[Previous](class_editorexportplatformweb.md "EditorExportPlatformWeb") [Next](class_editorexportplugin.md "EditorExportPlugin")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_editorexportplatformweb.md "EditorExportPlatformWeb") [Next](class_editorexportplugin.md "EditorExportPlugin")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).