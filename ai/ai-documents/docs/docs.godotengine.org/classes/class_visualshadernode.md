---
title: VisualShaderNode — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernode.html
crawled_at: "2026-08-13T10:39:25+12:00"
content_hash: 91e3d9e3292457250dcc5740948f6aab4c3dcdeb2dcce7f192221b045d6c4ae4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNode

* * *

# VisualShaderNode

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeBillboard](class_visualshadernodebillboard.md#class-visualshadernodebillboard), [VisualShaderNodeClamp](class_visualshadernodeclamp.md#class-visualshadernodeclamp), [VisualShaderNodeColorFunc](class_visualshadernodecolorfunc.md#class-visualshadernodecolorfunc), [VisualShaderNodeColorOp](class_visualshadernodecolorop.md#class-visualshadernodecolorop), [VisualShaderNodeCompare](class_visualshadernodecompare.md#class-visualshadernodecompare), [VisualShaderNodeConstant](class_visualshadernodeconstant.md#class-visualshadernodeconstant), [VisualShaderNodeCubemap](class_visualshadernodecubemap.md#class-visualshadernodecubemap), [VisualShaderNodeCustom](class_visualshadernodecustom.md#class-visualshadernodecustom), [VisualShaderNodeDerivativeFunc](class_visualshadernodederivativefunc.md#class-visualshadernodederivativefunc), [VisualShaderNodeDeterminant](class_visualshadernodedeterminant.md#class-visualshadernodedeterminant), [VisualShaderNodeDistanceFade](class_visualshadernodedistancefade.md#class-visualshadernodedistancefade), [VisualShaderNodeDotProduct](class_visualshadernodedotproduct.md#class-visualshadernodedotproduct), [VisualShaderNodeFloatFunc](class_visualshadernodefloatfunc.md#class-visualshadernodefloatfunc), [VisualShaderNodeFloatOp](class_visualshadernodefloatop.md#class-visualshadernodefloatop), [VisualShaderNodeFresnel](class_visualshadernodefresnel.md#class-visualshadernodefresnel), [VisualShaderNodeIf](class_visualshadernodeif.md#class-visualshadernodeif), [VisualShaderNodeInput](class_visualshadernodeinput.md#class-visualshadernodeinput), [VisualShaderNodeIntFunc](class_visualshadernodeintfunc.md#class-visualshadernodeintfunc), [VisualShaderNodeIntOp](class_visualshadernodeintop.md#class-visualshadernodeintop), [VisualShaderNodeIs](class_visualshadernodeis.md#class-visualshadernodeis), [VisualShaderNodeLinearSceneDepth](class_visualshadernodelinearscenedepth.md#class-visualshadernodelinearscenedepth), [VisualShaderNodeMix](class_visualshadernodemix.md#class-visualshadernodemix), [VisualShaderNodeMultiplyAdd](class_visualshadernodemultiplyadd.md#class-visualshadernodemultiplyadd), [VisualShaderNodeOuterProduct](class_visualshadernodeouterproduct.md#class-visualshadernodeouterproduct), [VisualShaderNodeOutput](class_visualshadernodeoutput.md#class-visualshadernodeoutput), [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter), [VisualShaderNodeParameterRef](class_visualshadernodeparameterref.md#class-visualshadernodeparameterref), [VisualShaderNodeParticleAccelerator](class_visualshadernodeparticleaccelerator.md#class-visualshadernodeparticleaccelerator), [VisualShaderNodeParticleConeVelocity](class_visualshadernodeparticleconevelocity.md#class-visualshadernodeparticleconevelocity), [VisualShaderNodeParticleEmit](class_visualshadernodeparticleemit.md#class-visualshadernodeparticleemit), [VisualShaderNodeParticleEmitter](class_visualshadernodeparticleemitter.md#class-visualshadernodeparticleemitter), [VisualShaderNodeParticleMultiplyByAxisAngle](class_visualshadernodeparticlemultiplybyaxisangle.md#class-visualshadernodeparticlemultiplybyaxisangle), [VisualShaderNodeParticleRandomness](class_visualshadernodeparticlerandomness.md#class-visualshadernodeparticlerandomness), [VisualShaderNodeProximityFade](class_visualshadernodeproximityfade.md#class-visualshadernodeproximityfade), [VisualShaderNodeRandomRange](class_visualshadernoderandomrange.md#class-visualshadernoderandomrange), [VisualShaderNodeRemap](class_visualshadernoderemap.md#class-visualshadernoderemap), [VisualShaderNodeReroute](class_visualshadernodereroute.md#class-visualshadernodereroute), [VisualShaderNodeResizableBase](class_visualshadernoderesizablebase.md#class-visualshadernoderesizablebase), [VisualShaderNodeRotationByAxis](class_visualshadernoderotationbyaxis.md#class-visualshadernoderotationbyaxis), [VisualShaderNodeSample3D](class_visualshadernodesample3d.md#class-visualshadernodesample3d), [VisualShaderNodeScreenNormalWorldSpace](class_visualshadernodescreennormalworldspace.md#class-visualshadernodescreennormalworldspace), [VisualShaderNodeScreenUVToSDF](class_visualshadernodescreenuvtosdf.md#class-visualshadernodescreenuvtosdf), [VisualShaderNodeSDFRaymarch](class_visualshadernodesdfraymarch.md#class-visualshadernodesdfraymarch), [VisualShaderNodeSDFToScreenUV](class_visualshadernodesdftoscreenuv.md#class-visualshadernodesdftoscreenuv), [VisualShaderNodeSmoothStep](class_visualshadernodesmoothstep.md#class-visualshadernodesmoothstep), [VisualShaderNodeStep](class_visualshadernodestep.md#class-visualshadernodestep), [VisualShaderNodeSwitch](class_visualshadernodeswitch.md#class-visualshadernodeswitch), [VisualShaderNodeTexture](class_visualshadernodetexture.md#class-visualshadernodetexture), [VisualShaderNodeTextureSDF](class_visualshadernodetexturesdf.md#class-visualshadernodetexturesdf), [VisualShaderNodeTextureSDFNormal](class_visualshadernodetexturesdfnormal.md#class-visualshadernodetexturesdfnormal), [VisualShaderNodeTransformCompose](class_visualshadernodetransformcompose.md#class-visualshadernodetransformcompose), [VisualShaderNodeTransformDecompose](class_visualshadernodetransformdecompose.md#class-visualshadernodetransformdecompose), [VisualShaderNodeTransformFunc](class_visualshadernodetransformfunc.md#class-visualshadernodetransformfunc), [VisualShaderNodeTransformOp](class_visualshadernodetransformop.md#class-visualshadernodetransformop), [VisualShaderNodeTransformVecMult](class_visualshadernodetransformvecmult.md#class-visualshadernodetransformvecmult), [VisualShaderNodeUIntFunc](class_visualshadernodeuintfunc.md#class-visualshadernodeuintfunc), [VisualShaderNodeUIntOp](class_visualshadernodeuintop.md#class-visualshadernodeuintop), [VisualShaderNodeUVFunc](class_visualshadernodeuvfunc.md#class-visualshadernodeuvfunc), [VisualShaderNodeUVPolarCoord](class_visualshadernodeuvpolarcoord.md#class-visualshadernodeuvpolarcoord), [VisualShaderNodeVarying](class_visualshadernodevarying.md#class-visualshadernodevarying), [VisualShaderNodeVectorBase](class_visualshadernodevectorbase.md#class-visualshadernodevectorbase), [VisualShaderNodeWorldPositionFromDepth](class_visualshadernodeworldpositionfromdepth.md#class-visualshadernodeworldpositionfromdepth)

Base class for [VisualShader](class_visualshader.md#class-visualshader) nodes. Not related to scene nodes.

## Description

Visual shader graphs consist of various nodes. Each node in the graph is a separate object and they are represented as a rectangular boxes with title and a set of properties. Each node also has connection ports that allow to connect it to another nodes and control the flow of the shader.

## Tutorials

- [Using VisualShaders](../tutorials/shaders/visual_shaders.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [linked\_parent\_graph\_frame](#class-visualshadernode-property-linked-parent-graph-frame) | `-1` |
| [int](class_int.md#class-int) | [output\_port\_for\_preview](#class-visualshadernode-property-output-port-for-preview) | `-1` |

## Methods

|     |     |
| --- | --- |
| void | [clear\_default\_input\_values](#class-visualshadernode-method-clear-default-input-values)() |
| [int](class_int.md#class-int) | [get\_default\_input\_port](#class-visualshadernode-method-get-default-input-port)(type: [PortType](#enum-visualshadernode-porttype)) const |
| [Array](class_array.md#class-array) | [get\_default\_input\_values](#class-visualshadernode-method-get-default-input-values)() const |
| [Variant](class_variant.md#class-variant) | [get\_input\_port\_default\_value](#class-visualshadernode-method-get-input-port-default-value)(port: [int](class_int.md#class-int)) const |
| void | [remove\_input\_port\_default\_value](#class-visualshadernode-method-remove-input-port-default-value)(port: [int](class_int.md#class-int)) |
| void | [set\_default\_input\_values](#class-visualshadernode-method-set-default-input-values)(values: [Array](class_array.md#class-array)) |
| void | [set\_input\_port\_default\_value](#class-visualshadernode-method-set-input-port-default-value)(port: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), prev\_value: [Variant](class_variant.md#class-variant) = null) |

* * *

## Enumerations

enum **PortType**: [🔗](#enum-visualshadernode-porttype)

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_SCALAR** = `0`

Floating-point scalar. Translated to `float` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_SCALAR\_INT** = `1`

Integer scalar. Translated to `int` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_SCALAR\_UINT** = `2`

Unsigned integer scalar. Translated to `uint` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_VECTOR\_2D** = `3`

2D vector of floating-point values. Translated to `vec2` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_VECTOR\_3D** = `4`

3D vector of floating-point values. Translated to `vec3` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_VECTOR\_4D** = `5`

4D vector of floating-point values. Translated to `vec4` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_BOOLEAN** = `6`

Boolean type. Translated to `bool` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_TRANSFORM** = `7`

Transform type. Translated to `mat4` type in shader code.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_SAMPLER** = `8`

Sampler type. Translated to reference of sampler uniform in shader code. Can only be used for input ports in non-uniform nodes.

[PortType](#enum-visualshadernode-porttype) **PORT\_TYPE\_MAX** = `9`

Represents the size of the [PortType](#enum-visualshadernode-porttype) enum.

* * *

## Property Descriptions

[int](class_int.md#class-int) **linked\_parent\_graph\_frame** = `-1` [🔗](#class-visualshadernode-property-linked-parent-graph-frame)

- void **set\_frame**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_frame**()


Represents the index of the frame this node is linked to. If set to `-1` the node is not linked to any frame.

* * *

[int](class_int.md#class-int) **output\_port\_for\_preview** = `-1` [🔗](#class-visualshadernode-property-output-port-for-preview)

- void **set\_output\_port\_for\_preview**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_output\_port\_for\_preview**()


Sets the output port index which will be showed for preview. If set to `-1` no port will be open for preview.

* * *

## Method Descriptions

void **clear\_default\_input\_values**() [🔗](#class-visualshadernode-method-clear-default-input-values)

Clears the default input ports value.

* * *

[int](class_int.md#class-int) **get\_default\_input\_port**(type: [PortType](#enum-visualshadernode-porttype)) const [🔗](#class-visualshadernode-method-get-default-input-port)

Returns the input port which should be connected by default when this node is created as a result of dragging a connection from an existing node to the empty space on the graph.

* * *

[Array](class_array.md#class-array) **get\_default\_input\_values**() const [🔗](#class-visualshadernode-method-get-default-input-values)

Returns an [Array](class_array.md#class-array) containing default values for all of the input ports of the node in the form `[index0, value0, index1, value1, ...]`.

* * *

[Variant](class_variant.md#class-variant) **get\_input\_port\_default\_value**(port: [int](class_int.md#class-int)) const [🔗](#class-visualshadernode-method-get-input-port-default-value)

Returns the default value of the input `port`.

* * *

void **remove\_input\_port\_default\_value**(port: [int](class_int.md#class-int)) [🔗](#class-visualshadernode-method-remove-input-port-default-value)

Removes the default value of the input `port`.

* * *

void **set\_default\_input\_values**(values: [Array](class_array.md#class-array)) [🔗](#class-visualshadernode-method-set-default-input-values)

Sets the default input ports values using an [Array](class_array.md#class-array) of the form `[index0, value0, index1, value1, ...]`. For example: `[0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0)]`.

* * *

void **set\_input\_port\_default\_value**(port: [int](class_int.md#class-int), value: [Variant](class_variant.md#class-variant), prev\_value: [Variant](class_variant.md#class-variant) = null) [🔗](#class-visualshadernode-method-set-input-port-default-value)

Sets the default `value` for the selected input `port`.

[Previous](class_visualshader.md "VisualShader") [Next](class_visualshadernodebillboard.md "VisualShaderNodeBillboard")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshader.md "VisualShader") [Next](class_visualshadernodebillboard.md "VisualShaderNodeBillboard")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).