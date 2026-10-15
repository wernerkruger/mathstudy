# Elective: Riemannian Geometry

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Riemannian geometry studies smooth manifolds equipped with a metric, and how curvature controls geometry and topology. The course covers connections and the Levi-Civita connection, geodesics and the exponential map, completeness (Hopf–Rinow), curvature tensors, Jacobi fields, the second variation formula, and the first comparison and local-to-global theorems (Gauss–Bonnet, Bonnet–Myers, Cartan–Hadamard).

## Prerequisites

- [3.5 Smooth manifolds](../../03-masters-core/3.5-smooth-manifolds/) — **essential**: tangent bundles, vector fields and flows, tensors, Riemannian metrics, integration and Stokes.
- [3.4 Algebraic topology](../../03-masters-core/3.4-algebraic-topology/) — covering spaces, $\pi_1$, Euler characteristic (used in Cartan–Hadamard, Bonnet–Myers, Gauss–Bonnet).
- Classical differential geometry of curves and surfaces in $\mathbb{R}^3$ is helpful; do Carmo Chs. 0 and the first chapters of his *Differential Geometry of Curves and Surfaces* can fill gaps.

## Texts

**Primary (paid):** John M. Lee, *Introduction to Riemannian Manifolds*, 2nd ed. (Springer GTM 176, 2018). Author page with front matter and errata: <https://sites.math.washington.edu/~lee/Books/RM/>. Same author and conventions as the 3.5 text, so the transition is smooth.

**Primary (paid):** Manfredo P. do Carmo, *Riemannian Geometry* (Birkhäuser, 1992). Shorter, classic, many good exercises. Use as the second view and for exercises.

**Supplementary:**
- Peter Petersen, *Riemannian Geometry*, 3rd ed. (Springer GTM 171) — more advanced; good for comparison geometry.
- Sylvestre Gallot, Dominique Hulin and Jacques Lafontaine, *Riemannian Geometry* (Springer Universitext) — many worked examples.

## Video lectures

- **Frederic Schuller, *Lectures on the Geometrical Anatomy of Theoretical Physics***, Lectures 19–25 (principal and associated fibre bundles, connections and connection 1-forms, parallel transport, curvature and torsion, covariant derivatives). These give the bundle-theoretic view of connections and curvature. Playlist: <https://www.youtube.com/playlist?list=PLPH7f_7ZlzxTi6kS4vCmv4ZKm9u8g5yic>.
- I couldn't verify a full video course following Lee or do Carmo; the reading carries the load.

## 16-week schedule

| Week | Reading (Lee *RM* 2nd ed. unless noted) | Videos (Schuller) | Exercises | Notes |
|---|---|---|---|---|
| 1 | Ch. 1–2 (what curvature is; Riemannian metrics, examples, isometries) | — | Lee Ch. 2: 4 problems | Re-read [3.5 notes §8](../../03-masters-core/3.5-smooth-manifolds/notes.md). |
| 2 | Ch. 3 (model spaces: Euclidean, spheres, hyperbolic spaces; symmetries) | — | Ch. 3: 4 problems | Four models of hyperbolic space. |
| 3 | Ch. 4 (connections, covariant derivatives along curves, parallel transport) | L21, L23 | Ch. 4: 4 problems | Connections are not tensors; differences of connections are. |
| 4 | Ch. 5 (Levi-Civita connection; Christoffel symbols; Riemannian geodesics) | L25 | Ch. 5: 4 problems | Compute geodesics of $S^2$ and the hyperbolic plane. |
| 5 | Ch. 5 cont. (exponential map, normal coordinates, geodesic balls) | — | Ch. 5: 3 problems | Gauss lemma. |
| 6 | Ch. 6 (geodesics and distance: minimizing properties, Hopf–Rinow) | — | Ch. 6: 4 problems | Completeness: metric, geodesic, and Heine–Borel versions coincide. |
| 7 | Ch. 7 (curvature tensor, flatness, symmetries of $Rm$, Ricci and scalar curvature) | L24 | Ch. 7: 4 problems | Riemann tensor of the model spaces. |
| 8 | Ch. 8 (submanifolds: second fundamental form, Gauss equation, Gaussian curvature) | — | Ch. 8: 4 problems | Theorema Egregium. |
| 9 | Ch. 9 (Gauss–Bonnet theorem) | — | Ch. 9: 3 problems | Link to Euler characteristic from [3.4](../../03-masters-core/3.4-algebraic-topology/). |
| 10 | Ch. 10 (Jacobi fields, conjugate points) | — | Ch. 10: 4 problems | Jacobi fields in constant curvature. |
| 11 | Ch. 6 / Ch. 10 (first and second variation formulas) | — | 3 problems | Geodesics past conjugate points are not minimizing. |
| 12 | Ch. 11 (comparison theory: Rauch, Hessian comparison — main statements) | — | Ch. 11: 3 problems | Curvature bounds control growth of Jacobi fields. |
| 13 | Ch. 12 (Cartan–Hadamard; Bonnet–Myers; Synge) | — | Ch. 12: 4 problems | Nonpositive curvature ⇒ universal cover is $\mathbb{R}^n$. |
| 14 | Ch. 12 cont.; do Carmo Ch. 9 (Bonnet–Myers, Synge) as second view | — | do Carmo Ch. 9: 3 problems | Positive Ricci ⇒ compact with finite $\pi_1$. |
| 15 | Survey: constant curvature space forms (Lee Ch. 12) or Hodge theory intro; review | L19–L20 (bundles) | 2 problems | Killing–Hopf theorem (statement). |
| 16 | Review; mock exam; capstone scoping | — | — | — |

(Chapter numbers are for Lee's 2nd edition, 2018. Check the table of contents on the author page if your edition differs.)

## Key theorems checklist

- [ ] Existence and uniqueness of the Levi-Civita connection (fundamental lemma)
- [ ] Christoffel symbols in coordinates; geodesic equation
- [ ] Parallel transport is an isometry
- [ ] Exponential map; normal coordinates; Gauss lemma
- [ ] Geodesics are locally minimizing; minimizing curves are geodesics
- [ ] Hopf–Rinow theorem
- [ ] Symmetries of the Riemann curvature tensor; Bianchi identities
- [ ] Sectional curvature determines $Rm$; constant curvature spaces
- [ ] Gauss equation; Theorema Egregium
- [ ] Gauss–Bonnet theorem (local and global)
- [ ] Jacobi equation; conjugate points
- [ ] First and second variation formulas
- [ ] Rauch comparison theorem (statement)
- [ ] Cartan–Hadamard theorem
- [ ] Bonnet–Myers theorem
- [ ] Synge's theorem
- [ ] Killing–Hopf classification of space forms (statement)

## Exit criteria

1. Derive the Christoffel symbols and geodesics of the round sphere and the hyperbolic upper half-plane.
2. Prove the Gauss lemma and that geodesics are locally length-minimizing.
3. State Hopf–Rinow and prove one nontrivial implication.
4. Compute the curvature tensor of $S^n$ and $\mathbb{H}^n$.
5. Prove Bonnet–Myers from the second variation formula.
6. Solve 4 of 6 qualifying-style problems in 3 hours.
