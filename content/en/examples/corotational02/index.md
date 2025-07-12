---
title: Corotational02
description: This page develops 5 examples that demonstrate improvements of the Corotational02 transformation over the existing CrdTransf classes in OpenSees.
downloads:
  Download:
  - 01/main.py
  - 01/Test01-Force-Geom01.tcl
  - 01/Test01-Force-Geom02.tcl
  - 01/Test01-Prism-Geom01.tcl
  - 01/Test01-Prism-Geom02.tcl
---


To install the required dependencies create a virtual environment and run:

```shell
python -m pip install -Ur requirements.txt
```

All tests can be run in a Posix shell by sourcing the script `test.sh`.

## 1) Objectivity and Self-Stressing

<img src="01/Test01.gif">

This example demonstrates a severe bug in the existing corotational formulation.

#### Setup

A cantilever is discretized by 8 beam elements. No loading is applied. 
Two methods of static analysis are considered: load and displacement control.

#### Expectation

Because no loading is applied, both methods of analysis should not produce any displacement.

#### Outcome

The original corotational formulation gives rise to non-zero nodal displacements,
and therefore fails the experiment. The severity of the problem is particularly
clear in the case of displacement control, where after 200 steps a drift over 10% is produced.

When `Corotational02` is used, the displacements remain at exactly 0 at all nodes, in all DOFs.

## 2) Accuracy in pure flexure

<img src="02/image.png">

#### Setup

This problem furnishes one of the few known closed form solutions of a beam undergoing finite rotations.
A cantilever oriented along the $\mathbf{e}_1$ coordinate basis is subjected to a concentrated moment at its tip with magnitude $\lambda \pi 2 EI/L \mathbf{e}_3$.
A discretization of 5 finite elements is employed and the load factor $\lambda$ is scaled linearly from $0$ to $1$ in 5 increments.

#### Expectation


The analytic solution of the geometrically exact boundary value problem is given by: 

$$\left\{
  \begin{aligned}
  \boldsymbol{x}(\xi)&=\frac{EI}{M} \sin \vartheta(\xi) \, \mathbf{E}_1
                      + \frac{EI}{M}\left(\cos \vartheta(\xi)-1\right) \, \mathbf{E}_2 \\
    \vartheta(\xi)   &=  \xi \frac{M}{EI}
  \end{aligned}
\right.
$$
which furnishes a tip displacement $\mathbf{e}_1 \cdot \boldsymbol{x}(L) = -1$.

#### Outcome

|   |   |
|---|---|
| `Corotational`   | -1.05208167300369859198
| `Corotational02` | -1.000000000000076 |

## 3) Convergence with Bathe's Cantilever

This example demonstrates the convergence characteristics of the new corotational transformations.
The standard problem of a curved 45-degree cantilever is implemented.
The following variants are investigated:

<dl>
 <dt><code>Test02-Geom01</code></dt>
 <dd>
 This is the formulation that is currently available in OpenSees as the <code>Corotational</code> transformation.
 It can be executed with both the <code>OpenSees</code> executable, and the <code>xara</code> executable.
 </dd>
 <dt><code>Test02-Geom02</code></dt>
 <dd>
 </dd>
 </dl>

## 4) Reliability under large rotations

<img src="04/image.png">

## 5) Computational efficiency

## 6) Shear deformations

This example demonstrates the use of the Corotational02 transformation to represent a shear-deformable cantilever.
The setup is that of Section 4.2.2 from Perez and Filippou (2024).

<dl>
 <dt><code>Test06-Prism-Geom01</code></dt>
 <dd>This is the formulation that is currently available in OpenSees as the <code>Corotational</code> transformation. 
  It can be executed with both the <code>OpenSees</code> executable, and the <code>xara</code> executable.
 </dd>
 <dt><code>Test06-Prism-Geom02</code></dt>
 <dd>
 </dd>
</dl>

