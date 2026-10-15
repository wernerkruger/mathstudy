# 3.5 Smooth Manifolds

**Phase:** 3 — Masters core
**Estimated length:** 14 weeks at ~6 hours/week (~84 hours)

Smooth manifolds are the spaces on which calculus works globally. This module is the standard first-year graduate course: smooth structures, tangent vectors, the rank theorem and submanifolds, vector fields and flows, tensors and differential forms, integration and Stokes' theorem, de Rham cohomology, and a first look at Riemannian metrics. It is the foundation for Riemannian geometry, Lie groups, gauge theory, and much of modern analysis and physics.

## Prerequisites

- [2.4 Analysis in $\mathbb{R}^n$](../../02-bridge/2.4-analysis-in-Rn/) — inverse and implicit function theorems, the derivative as a linear map, change of variables. **Essential.**
- [2.1 Metric spaces & topology](../../02-bridge/2.1-metric-spaces-topology/) — Hausdorff, second countable, compactness, quotients.
- [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/) — dual spaces, bilinear forms, determinants. Multilinear algebra is developed in the module.
- [3.4 Algebraic topology](../3.4-algebraic-topology/) — helpful for $\pi_1$, covering spaces and the idea of cohomology; Lee assumes some of it. You can run 3.4 and 3.5 in either order, or interleave them.
- ODE existence/uniqueness (Picard–Lindelöf) — reviewed in Week 7.

## Learning objectives

By the end of this module you should be able to:

1. Define smooth manifolds via atlases, verify examples (spheres, projective spaces, matrix groups, products, quotients), and construct smooth partitions of unity.
2. Define tangent vectors as derivations, compute differentials in coordinates, and work with the tangent and cotangent bundles.
3. Use the constant rank theorem and the regular value theorem to recognise embedded submanifolds; distinguish immersions, embeddings and submersions.
4. Integrate vector fields to flows, compute Lie brackets and Lie derivatives, and state the Frobenius theorem.
5. Work with tensors and differential forms: wedge product, pullback, interior product, exterior derivative, Cartan's formula.
6. Define orientation and integrate forms on oriented manifolds; prove and apply Stokes' theorem.
7. Compute de Rham cohomology of basic examples via the Poincaré lemma, homotopy invariance and Mayer–Vietoris.
8. Define Riemannian metrics, show they exist, and compute lengths, volumes and gradients.

## Texts

**Primary (paid, standard):** John M. Lee, *Introduction to Smooth Manifolds*, 2nd ed., Springer GTM 218, 2013. Author page with sample chapter, front matter and errata: <https://sites.math.washington.edu/~lee/Books/ISM/>. Many university libraries give free online access through SpringerLink.

**Second text (paid, gentler):** Loring W. Tu, *An Introduction to Manifolds*, 2nd ed., Springer Universitext, 2011. Shorter and more computational than Lee; very good for differential forms and Stokes. Use it when Lee feels heavy.

**Free notes:** Reyer Sjamaar, *Manifolds and Differential Forms* (Cornell lecture notes, 2017), free PDF from the author: <https://pi.math.cornell.edu/~sjamaar/manifolds/>. Undergraduate level, excellent for building fluency with forms in $\mathbb{R}^n$ before Lee's abstract treatment.

**Supplementary:**
- Michael Spivak, *Calculus on Manifolds* — compact classic for forms and Stokes in $\mathbb{R}^n$.
- Victor Guillemin and Alan Pollack, *Differential Topology* — transversality, degree and intersection theory, very geometric.
- Raoul Bott and Loring Tu, *Differential Forms in Algebraic Topology* — the next step after de Rham cohomology.
- John W. Milnor, *Topology from the Differentiable Viewpoint* — 60 beautiful pages on degree and Sard's theorem.

## Video lectures

- **Frederic Schuller, *Lectures on the Geometrical Anatomy of Theoretical Physics*** (FAU Erlangen–Nürnberg, 2013/14), 28 lectures, official playlist: <https://www.youtube.com/playlist?list=PLPH7f_7ZlzxTi6kS4vCmv4ZKm9u8g5yic>. Precise and very clear. Lectures 6–13 (topological manifolds; differentiable structures; tensor space theory over a field; tangent spaces; the tangent bundle; tensor space theory over a ring; Grassmann algebra and de Rham cohomology; Lie groups and their Lie algebras) map directly onto this module. Lectures 1–5 (logic, sets, topology) are optional review; Lectures 19–25 (bundles, connections, curvature) are forward reading for the Riemannian geometry elective.
- Schuller does not spend much time on flows, Stokes' theorem or integration; for those weeks the reading carries the load.

## Week-by-week schedule

Each week: ~3 h reading, ~1–1.5 h video, ~2 h exercises. "Lee" means Lee 2nd ed.; chapter numbers are Lee's. Exercises: "Lee P$n$-$k$" is Problem $k$ at the end of Chapter $n$.

| Week | Reading | Videos (Schuller) | Exercises | Notes |
|---|---|---|---|---|
| 1 | Lee Ch. 1 (smooth manifolds, examples, manifolds with boundary). Tu §§1–5 as a gentle parallel. | L5–L6 (topological invariants; topological manifolds and bundles) | Lee P1-6, P1-7, P1-9; problems.md 1 | Atlases, transition maps, why second countable + Hausdorff. |
| 2 | Lee Ch. 2 (smooth maps, partitions of unity) | L7 (differentiable structures: definition and classification) | Lee P2-3, P2-7, P2-14 | Bump functions are the workhorse. |
| 3 | Lee Ch. 3 (tangent vectors as derivations, differential, tangent bundle, velocity of curves) | L9 (tangent vector spaces) | Lee P3-1, P3-4, P3-6 | Compute $dF$ in coordinates until it's automatic. |
| 4 | Lee Ch. 4 (submersions, immersions, embeddings, rank theorem) | L10 (construction of the tangent bundle) | Lee P4-1, P4-4, P4-6; problems.md 8 | Constant rank theorem: every constant-rank map looks linear locally. |
| 5 | Lee Ch. 5 (submanifolds, regular value theorem, tangent spaces of submanifolds) | L8 (tensor space theory I: over a field) — prepares Weeks 9–10 | Lee P5-1, P5-7, P5-11; problems.md 2, 6, 22 | $O(n)$, $SL(n)$, spheres as level sets. Sard's theorem (Ch. 6) — read statement. |
| 6 | Lee Ch. 6 (Sard, Whitney embedding, transversality) — statements and main ideas; Lee Ch. 7 skim (Lie groups) | L13 (Lie groups) | Lee P6-1, P7-2; problems.md 14 | Don't get stuck on proofs of Whitney; know the statements. |
| 7 | Lee Ch. 8 (vector fields, Lie bracket) and Ch. 9 first half (integral curves, flows, fundamental theorem on flows) | L18 (reconstruction of a Lie group from its algebra — uses flows; watch the first half) | Lee P8-17, P8-19, P9-1, P9-2; problems.md 4, 9 | Review ODE existence/uniqueness/smooth dependence. |
| 8 | Lee Ch. 9 second half (Lie derivative, commuting flows); Ch. 19 statement of Frobenius | — | Lee P9-12, P9-19; problems.md 20, 21 | $[X,Y]=\mathcal{L}_XY$. Brackets measure failure of flows to commute. |
| 9 | Lee Ch. 11 (covectors, cotangent bundle, line integrals) and Ch. 12 (tensors, symmetric tensors) | L11 (tensor space theory II: over a ring — tensor fields) | Lee P11-6, P11-9, P12-6 | Closed vs exact 1-forms on $\mathbb{R}^2\setminus 0$. |
| 10 | Lee Ch. 14 (differential forms, wedge, interior product, $d$, pullback, Cartan) | L12 (Grassmann algebra and de Rham cohomology) | Lee P14-3, P14-6, P14-7; problems.md 3, 5, 10 | Tu Ch. 4 is a good companion. |
| 11 | Lee Ch. 15 (orientations) and Ch. 16 (integration on manifolds, Stokes) | — | Lee P15-4, P15-5, P16-1, P16-4; problems.md 7, 11, 13 | Stokes is the climax: $\int_M d\omega=\int_{\partial M}\omega$. |
| 12 | Lee Ch. 17 (de Rham cohomology: homotopy invariance, Poincaré lemma, Mayer–Vietoris, degree) | L12 re-watch | Lee P17-1, P17-4; problems.md 12, 17, 18, 19 | Compute $H^*_{dR}(S^n)$ and $H^*_{dR}(T^2)$ yourself. |
| 13 | Lee Ch. 13 (Riemannian metrics: existence, lengths, gradient, volume form, isometries); Ch. 18 skim (de Rham theorem) | — | Lee P13-1, P13-8, P15-11 (Riemannian volume); problems.md 15, 16 | Metric gives $TM\cong T^*M$ and a volume form on oriented $M$. |
| 14 | Review and mock qualifying exam | Re-watch weak lecture | Timed: 6 problems from problems.md 17–22 plus two you haven't done, 3 hours | Then check the exit criteria. |

## Checklist of key definitions and theorems

- [ ] Topological manifold; smooth atlas; maximal atlas; smooth structure
- [ ] Smooth manifold with boundary; interior and boundary points
- [ ] Smooth maps; diffeomorphisms; smooth partitions of unity (existence)
- [ ] Tangent space as derivations; $dF_p$; coordinate basis $\partial/\partial x^i$
- [ ] Tangent bundle $TM$ as a smooth vector bundle; velocity of a curve
- [ ] Immersion, submersion, embedding; constant rank theorem; inverse function theorem on manifolds
- [ ] Embedded vs immersed submanifolds; slice charts
- [ ] Regular value theorem (preimage of a regular value is an embedded submanifold of codimension $k$)
- [ ] Sard's theorem (statement); Whitney embedding (statement)
- [ ] Lie groups: $GL(n)$, $O(n)$, $SL(n)$ as examples; Lie algebra of left-invariant fields (light)
- [ ] Vector fields; integral curves; flows; fundamental theorem on flows; completeness on compact manifolds
- [ ] Lie bracket; $[X,Y]=\mathcal{L}_XY$; naturality of brackets under $F$-related fields
- [ ] Commuting vector fields ⇔ commuting flows
- [ ] Distributions; involutivity; Frobenius theorem (statement)
- [ ] Cotangent bundle; differential of a function; line integrals; conservative vs closed 1-forms
- [ ] Tensor fields; Riemannian metrics (existence via partitions of unity)
- [ ] Alternating tensors; wedge product; $\Lambda^k(V^*)$ dimension and basis
- [ ] Exterior derivative: characterization, $d^2=0$, $F^*d=dF^*$
- [ ] Interior product; Lie derivative of forms; Cartan's magic formula $\mathcal{L}_X=d\,i_X+i_X\,d$
- [ ] Orientation (pointwise, via forms, via atlases); orientation of the boundary (outward normal first)
- [ ] Integration of $n$-forms; change of variables invariance
- [ ] Stokes' theorem
- [ ] Green, Gauss (divergence) and classical Stokes as special cases
- [ ] de Rham cohomology; homotopy invariance; Poincaré lemma
- [ ] Mayer–Vietoris for de Rham cohomology; $H^*_{dR}(S^n)$
- [ ] Top cohomology of a compact connected oriented manifold is $\mathbb{R}$ via integration (statement)
- [ ] de Rham theorem (statement)
- [ ] Riemannian volume form; gradient; divergence

## Exit criteria

You are ready to move on when you can, without notes:

1. Show that $S^n$, $\mathbb{RP}^n$ and $O(n)$ are smooth manifolds, with dimensions, and compute $T_IO(n)$.
2. State and use the regular value theorem, and give an injective immersion that is not an embedding.
3. Compute a Lie bracket in coordinates and explain geometrically what a nonzero bracket means.
4. Compute $d$, pullbacks and wedge products fluently; prove Cartan's formula on 1-forms.
5. State Stokes' theorem with correct orientation conventions and verify it on an example ($S^2=\partial B^3$).
6. Compute $H^*_{dR}(S^n)$ by Mayer–Vietoris, and show the angle form on $\mathbb{R}^2\setminus0$ is closed but not exact.
7. Solve at least 4 of the 6 qualifying-level problems in [problems.md](problems.md) in 3 hours.

Files in this module: [notes.md](notes.md) · [problems.md](problems.md) · [solutions.md](solutions.md)

**Next:** the [electives](../../04-electives/) — especially Riemannian geometry and Lie groups — build directly on this module.
