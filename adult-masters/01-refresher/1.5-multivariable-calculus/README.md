# 1.5 Multivariable Calculus

**Phase:** 1 — Refresher
**Estimated length:** 6 weeks at about 6 hours/week (about 36 hours)

This is a **computational refresher**. The aim is to get multivariable calculus working again in your hands: derivatives as linear maps, the chain rule, optimisation, multiple integrals and the classical integral theorems. You should take one conceptual point from it: **the derivative of $f:\mathbb{R}^n\to\mathbb{R}^m$ at a point is a linear map $\mathbb{R}^n\to\mathbb{R}^m$**, and the Jacobian matrix is just that map written in coordinates.

The rigorous theory comes later, in [2.4 Analysis in $\mathbb{R}^n$](../../02-bridge/2.4-analysis-in-Rn/README.md): the inverse and implicit function theorems, rigorous Riemann integration in $\mathbb{R}^n$, proofs of change of variables and Stokes. It returns again in [3.5 Smooth Manifolds](../../03-masters-core/3.5-smooth-manifolds/README.md), where all of Green, Stokes and the divergence theorem become the single statement $\int_M d\omega=\int_{\partial M}\omega$. Do not get bogged down in proofs here. Prove what is quick, and accept the rest for now.

## Prerequisites

- Single-variable calculus (differentiation, integration, Taylor's theorem). [1.2 Real Analysis I](../1.2-real-analysis-I/README.md) gives the rigorous version, but this module needs only computational fluency.
- [1.3 Linear Algebra](../1.3-linear-algebra/README.md): matrices, determinants, linear maps, and symmetric matrices with the spectral theorem (used for the second-derivative test). Ideally finish at least Weeks 1–6 of 1.3 first.

## Learning objectives

By the end of this module you should be able to:

1. Compute partial and directional derivatives, gradients, Jacobian and Hessian matrices.
2. Explain the total derivative $Df(a)$ as the best linear approximation, and distinguish "partial derivatives exist", "differentiable" and "$C^1$", with counterexamples.
3. Apply the chain rule in matrix form, $D(g\circ f)(a)=Dg(f(a))\,Df(a)$, including for changes of coordinates.
4. Find and classify critical points using the Hessian, and solve constrained problems with Lagrange multipliers (one or two constraints).
5. Set up and evaluate double and triple integrals in Cartesian, polar, cylindrical and spherical coordinates, and use a general change of variables with the Jacobian determinant.
6. Compute line integrals and surface integrals (scalar and flux). Recognise conservative fields and find potentials.
7. State and apply Green's, Stokes' and the divergence theorems, and understand the topological caveat (the field $(-y,x)/(x^2+y^2)$).

## Texts

**Free primary resource:** MIT OpenCourseWare **18.02SC Multivariable Calculus** (Fall 2010, Denis Auroux), <https://ocw.mit.edu/courses/18-02sc-multivariable-calculus-fall-2010/>. It is organised for independent study, with lecture videos, recitation videos, problems with solutions, and exams. The unit and part labels in the schedule below (for example "2B") refer to this course.

**Free textbook:** Matthew Boelkins, David Austin and Steven Schlicker, *Active Calculus — Multivariable* (open source), <https://activecalculus.org/multi/>. It is activity-based with many exercises. The chapters on derivatives of multivariable functions and multiple integrals fit Weeks 1–4. The book is lighter on vector calculus, so use 18.02SC Units 3–4 for Weeks 4–6.

**Standard paid text (choose one):**
- Theodore Shifrin, *Multivariable Mathematics: Linear Algebra, Multivariable Calculus, and Manifolds* (Wiley, 2005). It is rigorous, integrates linear algebra throughout, and is also an excellent text for 2.4.
- John H. Hubbard and Barbara Burke Hubbard, *Vector Calculus, Linear Algebra, and Differential Forms: A Unified Approach* (Matrix Editions, 5th edition). It has a similar philosophy to Shifrin and ends with differential forms and the generalised Stokes theorem.

Either one will carry you through 2.4 as well. That makes the purchase worthwhile.

**Supplementary:** Michael Spivak, *Calculus on Manifolds* (short and terse; this is really 2.4 material, but chapters 2 and 3 are worth a skim now).

## Video lectures

- **MIT 18.02SC** lecture and recitation videos (link above). They are embedded in each unit's session pages.
- **MIT 18.02 Fall 2007** (Auroux), full lecture video list: <https://ocw.mit.edu/courses/18-02-multivariable-calculus-fall-2007/>. This is the same lecturer and the same lectures in a single list, if you prefer that format.
- **Khan Academy, Multivariable Calculus** (many of the videos are by Grant Sanderson of 3Blue1Brown, with strong geometric intuition): <https://www.khanacademy.org/math/multivariable-calculus>.

## Week-by-week schedule

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | 18.02SC Unit 2A–2B (functions of several variables, partial derivatives, tangent planes, gradient, directional derivatives). Active Calculus Multivariable: derivatives chapter, first half. Shifrin Ch. 3, first sections on the derivative (or Hubbard §1.7). | 18.02SC lectures in Units 2A–2B | 18.02SC Problem Set for 2A–2B. Problems 1, 2, 3, 7. | Make the jump from "matrix of partials" to "linear map that best approximates $f$". |
| 2 | 18.02SC Unit 2B–2C (chain rule, Lagrange multipliers). Second-derivative test from Shifrin Ch. 5 (extremum problems) or Hubbard §§3.5–3.6. | 18.02SC lectures in Units 2B–2C | 18.02SC Exam 2 (practice). Problems 4, 8, 9, 10, 11. | The Hessian is a symmetric matrix. Its eigenvalue signs classify the critical point. |
| 3 | 18.02SC Unit 3A (double integrals, polar coordinates), Unit 4A (triple integrals, cylindrical and spherical). Active Calculus Multivariable: multiple integrals chapter. | 18.02SC lectures in Units 3A, 4A | Problem sets for 3A, 4A. Problems 5, 6, 12, 13. | Most of the work is in setting up the limits. Draw the region every time. |
| 4 | General change of variables (18.02SC Unit 3A, last sessions; Shifrin Ch. 7, change-of-variables section). Unit 3B (vector fields, line integrals, conservative fields). | 18.02SC lectures in Units 3A–3B | Problems 14, 15, 21. | $dA_{xy}=\left\lvert\det\frac{\partial(x,y)}{\partial(u,v)}\right\rvert dA_{uv}$. Watch the absolute value and which way the Jacobian goes. |
| 5 | 18.02SC Unit 3C (Green's theorem, flux in the plane). Unit 4B (surface integrals, flux, divergence theorem). | 18.02SC lectures in Units 3C, 4B | Problems 16, 17, 19, 23. | Check orientation conventions every time: counter-clockwise boundary, outward normal. |
| 6 | 18.02SC Unit 4C (line integrals in space, curl, Stokes). Shifrin Ch. 8 or Hubbard Ch. 6 (skim): the language of differential forms. | 18.02SC lectures in Unit 4C | 18.02SC Final Exam (practice). Problems 18, 20, 22. | Read [notes.md §8](notes.md#8-the-unifying-picture-preview) on the unifying picture. Exit check. |

## Checklist of key definitions and theorems

- [ ] Partial derivative; directional derivative; gradient; $D_uf=\nabla f\cdot u$
- [ ] Total derivative $Df(a)$ as a linear map; Jacobian matrix; differentiable ⇒ continuous
- [ ] $C^1$ ⇒ differentiable; partials existing ⇏ differentiable (counterexample)
- [ ] Chain rule $D(g\circ f)(a)=Dg(f(a))Df(a)$
- [ ] $\nabla f$ is orthogonal to level sets and points in the direction of steepest ascent
- [ ] Tangent plane / linear approximation
- [ ] Equality of mixed partials for $C^2$ functions (Schwarz/Clairaut), with counterexample
- [ ] Second-order Taylor expansion; Hessian; second-derivative test via eigenvalues
- [ ] Lagrange multipliers: $\nabla f=\lambda\nabla g$ (and $\nabla f=\lambda\nabla g+\mu\nabla h$)
- [ ] Fubini's theorem (iterated integrals); changing the order of integration
- [ ] Polar, cylindrical, spherical coordinates and their Jacobians $r$, $r$, $\rho^2\sin\varphi$
- [ ] General change of variables formula
- [ ] Line integrals of scalar functions and of vector fields; work
- [ ] Conservative fields: path independence ⇔ closed loops give 0 ⇔ $F=\nabla\varphi$; curl-free ⇒ conservative **on simply connected domains**
- [ ] Green's theorem; area formula
- [ ] Parametrised surfaces; $dS=\lvert r_u\times r_v\rvert\,du\,dv$; flux integrals
- [ ] div, curl, and the identities $\mathrm{curl}\,\nabla=0$, $\mathrm{div}\,\mathrm{curl}=0$
- [ ] Stokes' theorem; divergence (Gauss) theorem

## Exit criteria

Move on when you can do all of the following without notes:

1. Give an example of a function on $\mathbb{R}^2$ with all directional derivatives at $0$ that is not differentiable there, and explain why.
2. Find and classify all critical points of a polynomial in two variables, and solve a Lagrange multiplier problem with two constraints.
3. Compute the volume of a region bounded by a sphere and a cone in spherical coordinates, and evaluate an integral by a linear change of variables.
4. Decide whether a vector field is conservative, find a potential if it is, and explain why $(-y,x)/(x^2+y^2)$ is curl-free but not conservative.
5. Verify Stokes' theorem and the divergence theorem on a hemisphere or a sphere, by computing both sides.
6. Score at least 75% on [problems.md](problems.md).
