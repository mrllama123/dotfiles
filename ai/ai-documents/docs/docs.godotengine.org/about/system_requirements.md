---
title: System requirements — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/about/system_requirements.html
crawled_at: "2026-08-13T10:32:33+12:00"
content_hash: d3bce741df02534af87dddf8b619817ef45c118c337750eacfa0331835ffe09b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - System requirements
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/about/system_requirements.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# System requirements

This page contains system requirements for the editor and exported projects.
These specifications are given for informative purposes only, but they can be
referred to if you're looking to build or upgrade a system to use Godot on.

## Godot editor

These are the **minimum** specifications required to run the Godot editor and work
on a simple 2D or 3D project:

### Desktop or laptop PC - Minimum

|     |     |
| --- | --- |
| **CPU** | - **Windows:** x86\_32 CPU with SSE2 support, x86\_64 CPU with SSE4.2 support, ARMv8 CPU<br>  <br>  - _Example: Intel Core 2 Duo E8200, AMD FX-4100, Snapdragon X Elite_<br>- **macOS:** x86\_64 or ARM CPU (Apple Silicon)<br>  <br>  - _Example: Intel Core 2 Duo SU9400, Apple M1_<br>- **Linux:** x86\_32 CPU with SSE2 support, x86\_64 CPU with SSE4.2 support, ARMv7 or<br>  ARMv8 CPU<br>  <br>  - _Example: Intel Core 2 Duo E8200, AMD FX-4100, Raspberry Pi 4_ |
| **GPU** | - **Forward+ renderer:** Integrated graphics with full Vulkan 1.0 support<br>  <br>  - _Example: Intel HD Graphics 510 (Skylake), AMD Radeon R5 Graphics (Kaveri)_<br>- **Mobile renderer:** Integrated graphics with full Vulkan 1.0 support<br>  <br>  - _Example: Intel HD Graphics 510 (Skylake), AMD Radeon R5 Graphics (Kaveri)_<br>- **Compatibility renderer:** Integrated graphics with full OpenGL 3.3 support<br>  <br>  - _Example: Intel HD Graphics 2500 (Ivy Bridge), AMD Radeon R5 Graphics (Kaveri)_ |
| **RAM** | - **Native editor:** 4 GB<br>  <br>- **Web editor:** 8 GB |
| **Storage** | 200 MB (used for the executable, project files and cache).<br>Exporting projects requires downloading export templates separately<br>(1.3 GB after installation). |
| **Operating system** | - **Native editor:** Windows 10, macOS 10.13 (Compatibility) or<br>  macOS 10.15 (Forward+/Mobile), Linux distribution released after 2018<br>  <br>- **Web editor:** Recent versions of mainstream browsers: Firefox and derivatives<br>  (including ESR), Chrome and Chromium derivatives, Safari and WebKit derivatives. |

Note

If your x86\_64 CPU does not support SSE4.2, you can still run the 32-bit Godot
executable which only has a SSE2 requirement (all x86\_64 CPUs support SSE2).

While supported on Linux, we have no official minimum requirements for running on
rv64 (RISC-V), ppc64 & ppc32 (PowerPC), and loongarch64. In addition you must
compile the editor for that platform (as well as export templates) yourself,
no official downloads are currently provided. RISC-V compiling instructions can
be found on the [Compiling for Linux, \*BSD](../engine_details/development/compiling/compiling_for_linuxbsd.md#doc-compiling-for-linuxbsd) page.

### Mobile device (smartphone/tablet) - Minimum

|     |     |
| --- | --- |
| **CPU** | - **Android:** SoC with any 32-bit or 64-bit ARM or x86 CPU<br>  <br>  - _Example: Qualcomm Snapdragon 430, Samsung Exynos 5 Octa 5430_<br>- **iOS:** _Cannot run the editor_ |
| **GPU** | - **Forward+ renderer:** SoC featuring GPU with full Vulkan 1.0 support<br>  <br>  - _Example: Qualcomm Adreno 505, Mali-G71 MP2_<br>- **Mobile renderer:** SoC featuring GPU with full Vulkan 1.0 support<br>  <br>  - _Example: Qualcomm Adreno 505, Mali-G71 MP2_<br>- **Compatibility renderer:** SoC featuring GPU with full OpenGL ES 3.0 support<br>  <br>  - _Example: Qualcomm Adreno 306, Mali-T628 MP6_ |
| **RAM** | - **Native editor:** 3 GB<br>  <br>- **Web editor:** 6 GB |
| **Storage** | 200 MB (used for the executable, project files and cache)<br>Exporting projects requires downloading export templates separately<br>(1.3 GB after installation) |
| **Operating system** | - **Native editor:** Android 6.0 (Compatibility) or Android 9.0 (Forward+/Mobile)<br>  <br>- **Web editor:** Recent versions of mainstream browsers: Firefox and derivatives<br>  (including ESR), Chrome and Chromium derivatives, Safari and WebKit derivatives. |

These are the **recommended** specifications to get a smooth experience with the
Godot editor on a simple 2D or 3D project:

### Desktop or laptop PC - Recommended

|     |     |
| --- | --- |
| **CPU** | - **Windows:** x86\_64 CPU with SSE4.2 support, with 4 physical cores or more, ARMv8 CPU<br>  <br>  - _Example: Intel Core i5-6600K, AMD Ryzen 5 1600, Snapdragon X Elite_<br>- **macOS:** x86\_64 or ARM CPU (Apple Silicon)<br>  <br>  - _Example: Intel Core i5-8500, Apple M1_<br>- **Linux:** x86\_64 CPU with SSE4.2 support, ARMv7 or ARMv8 CPU<br>  <br>  - _Example: Intel Core i5-6600K, AMD Ryzen 5 1600, Raspberry Pi 5 with overclocking_ |
| **GPU** | - **Forward+ renderer:** Dedicated graphics with full Vulkan 1.2 support<br>  <br>  - _Example: NVIDIA GeForce GTX 1050 (Pascal), AMD Radeon RX 460 (GCN 4.0)_<br>- **Mobile renderer:** Dedicated graphics with full Vulkan 1.2 support<br>  <br>  - _Example: NVIDIA GeForce GTX 1050 (Pascal), AMD Radeon RX 460 (GCN 4.0)_<br>- **Compatibility renderer:** Dedicated graphics with full OpenGL 4.6 support<br>  <br>  - _Example: NVIDIA GeForce GTX 650 (Kepler), AMD Radeon HD 7750 (GCN 1.0)_ |
| **RAM** | - **Native editor:** 8 GB<br>  <br>- **Web editor:** 12 GB |
| **Storage** | 1.5 GB (used for the executable, project files, all export templates and cache) |
| **Operating system** | - **Native editor:** Windows 10, macOS 10.15,<br>  Linux distribution released after 2020<br>  <br>- **Web editor:** Latest version of Firefox, Chrome, Edge, Safari, Opera |

### Mobile device (smartphone/tablet) - Recommended

|     |     |
| --- | --- |
| **CPU** | - **Android:** SoC with 64-bit ARM or x86 CPU, with 3 "performance" cores or more<br>  <br>  - _Example: Qualcomm Snapdragon 845, Samsung Exynos 9810_<br>- **iOS:** _Cannot run the editor_ |
| **GPU** | - **Forward+ renderer:** SoC featuring GPU with full Vulkan 1.2 support<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18_<br>- **Mobile renderer:** SoC featuring GPU with full Vulkan 1.2 support<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18_<br>- **Compatibility renderer:** SoC featuring GPU with full OpenGL ES 3.2 support<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18_ |
| **RAM** | - **Native editor:** 6 GB<br>  <br>- **Web editor:** 8 GB |
| **Storage** | 1.5 GB (used for the executable, project files, all export templates and cache) |
| **Operating system** | - **Native editor:** Android 9.0<br>  <br>- **Web editor:** Latest version of Firefox, Chrome, Edge, Safari, Opera,<br>  Samsung Internet |

## Exported Godot project

Warning

The requirements below are a baseline for a **simple** 2D or 3D project,
with basic scripting and few visual flourishes. CPU, GPU, RAM and
storage requirements will heavily vary depending on your project's scope,
its renderer, viewport resolution and graphics settings chosen.
Other programs running on the system while the project is running
will also compete for resources, including RAM and video RAM.

It is strongly recommended to do your own testing on low-end hardware to
make sure your project runs at the desired speed. To provide scalability for
low-end hardware, you will also need to introduce a
[graphics options menu](https://github.com/godotengine/godot-demo-projects/tree/master/3d/graphics_settings)
to your project.

These are the **minimum** specifications required to run a simple 2D or 3D
project exported with Godot:

### Desktop or laptop PC - Minimum

|     |     |
| --- | --- |
| **CPU** | - **Windows:** x86\_32 CPU with SSE2 support, x86\_64 CPU with SSE4.2 support,<br>  ARMv8 CPU<br>  <br>  - _Example: Intel Core 2 Duo E8200, AMD FX-4100, Snapdragon X Elite_<br>- **macOS:** x86\_64 or ARM CPU (Apple Silicon)<br>  <br>  - _Example: Intel Core 2 Duo SU9400, Apple M1_<br>- **Linux:** x86\_32 CPU with SSE2 support, x86\_64 CPU with SSE4.2 support,<br>  ARMv7 or ARMv8 CPU<br>  <br>  - _Example: Intel Core 2 Duo E8200, AMD FX-4100, Raspberry Pi 4_ |
| **GPU** | - **Forward+ renderer:** Integrated graphics with full Vulkan 1.0 support,<br>  Metal 3 support (macOS) or Direct3D 12 (12\_0 feature level) support (Windows)<br>  <br>  - _Example: Intel HD Graphics 510 (Skylake), AMD Radeon R5 Graphics (Kaveri)_<br>- **Mobile renderer:** Integrated graphics with full Vulkan 1.0 support,<br>  Metal 3 support (macOS) or Direct3D 12 (12\_0 feature level) support (Windows)<br>  <br>  - _Example: Intel HD Graphics 510 (Skylake), AMD Radeon R5 Graphics (Kaveri)_<br>- **Compatibility renderer:** Integrated graphics with full OpenGL 3.3 support<br>  or Direct3D 11 support (Windows).<br>  <br>  - _Example: Intel HD Graphics 2500 (Ivy Bridge), AMD Radeon R5 Graphics (Kaveri)_ |
| **RAM** | - **For native exports:** 2 GB<br>  <br>- **For web exports:** 4 GB |
| **Storage** | 150 MB (used for the executable, project files and cache) |
| **Operating system** | - **For native exports:** Windows 10, macOS 10.13 (Compatibility), macOS 10.15<br>  (Forward+/Mobile, Vulkan), macOS 13.0 (Forward+/Mobile, Metal), Linux distribution<br>  released after 2018<br>  <br>- **Web editor:** Recent versions of mainstream browsers: Firefox and derivatives<br>  (including ESR), Chrome and Chromium derivatives, Safari and WebKit derivatives. |

### Mobile device (smartphone/tablet) - Minimum

|     |     |
| --- | --- |
| **CPU** | - **Android:** SoC with any 32-bit or 64-bit ARM or x86 CPU<br>  <br>  - _Example: Qualcomm Snapdragon 430, Samsung Exynos 5 Octa 5430_<br>- **iOS:** SoC with any 64-bit ARM CPU<br>  <br>  - _Example: Apple A7 (iPhone 5S)_ |
| **GPU** | - **Forward+ renderer:** SoC featuring GPU with full Vulkan 1.0 support, or<br>  Metal 3 support (iOS/iPadOS)<br>  <br>  - _Example (Vulkan): Qualcomm Adreno 505, Mali-G71 MP2, Apple A12 (iPhone XR/XS)_<br>    <br>  - _Example (Metal): Apple A11 (iPhone 8/X)_<br>- **Mobile renderer:** SoC featuring GPU with full Vulkan 1.0 support, or<br>  Metal 3 support (iOS/iPadOS)<br>  <br>  - _Example (Vulkan): Qualcomm Adreno 505, Mali-G71 MP2, Apple A12 (iPhone XR/XS)_<br>    <br>  - _Example (Metal): Apple A11 (iPhone 8/X)_<br>- **Compatibility renderer:** SoC featuring GPU with full OpenGL ES 3.0 support<br>  <br>  - _Example: Qualcomm Adreno 306, Mali-T628 MP6, Apple A7 (iPhone 5S)_ |
| **RAM** | - **For native exports:** 1 GB<br>  <br>- **For web exports:** 2 GB |
| **Storage** | 150 MB (used for the executable, project files and cache) |
| **Operating system** | - **For native exports:** Android 6.0 (Compatibility), Android 9.0 (Forward+/Mobile),<br>  iOS 12.0 (Forward+/Mobile, Vulkan), iOS 16.0 (Forward+/Mobile, Metal)<br>  <br>- **Web editor:** Recent versions of mainstream browsers: Firefox and derivatives<br>  (including ESR), Chrome and Chromium derivatives, Safari and WebKit derivatives. |

These are the **recommended** specifications to get a smooth experience with a
simple 2D or 3D project exported with Godot:

### Desktop or laptop PC - Recommended

|     |     |
| --- | --- |
| **CPU** | - **Windows:** x86\_64 CPU with SSE4.2 support, with 4 physical cores or more, ARMv8 CPU<br>  <br>  - _Example: Intel Core i5-6600K, AMD Ryzen 5 1600, Snapdragon X Elite_<br>- **macOS:** x86\_64 or ARM CPU (Apple Silicon)<br>  <br>  - _Example: Intel Core i5-8500, Apple M1_<br>- **Linux:** x86\_64 CPU with SSE4.2 support, with 4 physical cores or more,<br>  ARMv7 or ARMv8 CPU<br>  <br>  - _Example: Intel Core i5-6600K, AMD Ryzen 5 1600, Raspberry Pi 5 with overclocking_ |
| **GPU** | - **Forward+ renderer:** Dedicated graphics with full Vulkan 1.2 support,<br>  Metal 3 support (macOS), or Direct3D 12 (12\_0 feature level) support (Windows)<br>  <br>  - _Example: NVIDIA GeForce GTX 1050 (Pascal), AMD Radeon RX 460 (GCN 4.0)_<br>- **Mobile renderer:** Dedicated graphics with full Vulkan 1.2 support,<br>  Metal 3 support (macOS), or Direct3D 12 (12\_0 feature level) support (Windows)<br>  <br>  - _Example: NVIDIA GeForce GTX 1050 (Pascal), AMD Radeon RX 460 (GCN 4.0)_<br>- **Compatibility renderer:** Dedicated graphics with full OpenGL 4.6 support<br>  <br>  - _Example: NVIDIA GeForce GTX 650 (Kepler), AMD Radeon HD 7750 (GCN 1.0)_ |
| **RAM** | - **For native exports:** 4 GB<br>  <br>- **For web exports:** 8 GB |
| **Storage** | 150 MB (used for the executable, project files and cache) |
| **Operating system** | - **For native exports:** Windows 10, macOS 10.15 (Forward+/Mobile, Vulkan), macOS 13.0<br>  (Forward+/Mobile, Metal), Linux distribution released after 2020<br>  <br>- **For web exports:** Latest version of Firefox, Chrome, Edge, Safari, Opera |

### Mobile device (smartphone/tablet) - Recommended

|     |     |
| --- | --- |
| **CPU** | - **Android:** SoC with 64-bit ARM or x86 CPU, with 3 "performance" cores or more<br>  <br>  - _Example: Qualcomm Snapdragon 845, Samsung Exynos 9810_<br>- **iOS:** SoC with 64-bit ARM CPU<br>  <br>  - _Example: Apple A14 (iPhone 12)_ |
| **GPU** | - **Forward+ renderer:** SoC featuring GPU with full Vulkan 1.2 support, or<br>  Metal 3 support (iOS/iPadOS)<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18, Apple A14 (iPhone 12)_<br>- **Mobile renderer:** SoC featuring GPU with full Vulkan 1.2 support, or<br>  Metal 3 support (iOS/iPadOS)<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18, Apple A14 (iPhone 12)_<br>- **Compatibility renderer:** SoC featuring GPU with full OpenGL ES 3.2 support<br>  <br>  - _Example: Qualcomm Adreno 630, Mali-G72 MP18, Apple A14 (iPhone 12)_ |
| **RAM** | - **For native exports:** 2 GB<br>  <br>- **For web exports:** 4 GB |
| **Storage** | 150 MB (used for the executable, project files and cache) |
| **Operating system** | - **For native exports:** Android 9.0, iOS 14.1 (Forward+/Mobile, Vulkan), iOS 16.0<br>  (Forward+/Mobile, Metal)<br>  <br>- **For web exports:** Latest version of Firefox, Chrome, Edge, Safari, Opera,<br>  Samsung Internet |

Note

Godot doesn't use OpenGL/OpenGL ES extensions introduced after OpenGL
3.3/OpenGL ES 3.0, but GPUs supporting newer OpenGL/OpenGL ES versions
generally have fewer driver issues.

[Previous](list_of_features.md "List of features") [Next](faq.md "Frequently asked questions")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).