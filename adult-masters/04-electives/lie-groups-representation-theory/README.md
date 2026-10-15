# Elective: Lie Groups and Representation Theory

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Lie groups are groups that are also smooth manifolds; their infinitesimal versions, Lie algebras, linearize them. This elective starts with matrix Lie groups and the exponential map, proves the Lie group–Lie algebra correspondence, studies the representations of $SU(2)$ and $\mathfrak{sl}(2,\mathbb{C})$ and $\mathfrak{sl}(3,\mathbb{C})$, and then the structure theory of semisimple Lie algebras: root systems, Weyl groups, Dynkin diagrams, and the theorem of the highest weight. Finite group representations are covered briefly at the start as a model.

## Prerequisites

- [3.3 Graduate algebra](../../03-masters-core/3.3-graduate-algebra/) — **essential**: modules, tensor products, some representation theory of finite groups if covered.
- [3.5 Smooth manifolds](../../03-masters-core/3.5-smooth-manifolds/) — **essential** for the geometric side: vector fields, flows, Lie bracket, submanifolds.
- [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/) — Jordan form, inner products, spectral theorem.
- [3.4 Algebraic topology](../../03-masters-core/3.4-algebraic-topology/) — covering spaces and $\pi_1$ (for $SU(2)\to SO(3)$ and simply connected groups).

## Texts

**Primary (paid):** Brian C. Hall, *Lie Groups, Lie Algebras, and Representations: An Elementary Introduction*, 2nd ed. (Springer GTM 222, 2015). Matrix-group approach, very clear; the main text for this elective.

**Primary (paid):** William Fulton and Joe Harris, *Representation Theory: A First Course* (Springer GTM 129). Example-driven; use Lectures 1–3 for finite groups and Lectures 11–14 and 21 for $\mathfrak{sl}_2$, $\mathfrak{sl}_3$ and the general theory.

**Free notes:** Alexander Kirillov Jr., *Introduction to Lie Groups and Lie Algebras* (Stony Brook lecture notes; later published by Cambridge University Press), free PDF: <https://www.math.stonybrook.edu/~kirillov/mat552/liegroups.pdf>.

**Supplementary:**
- James E. Humphreys, *Introduction to Lie Algebras and Representation Theory* (Springer GTM 9) — the classic algebraic treatment.
- J. S. Milne, *Algebraic Groups; Lie Algebras; Lie Groups; Reductive Groups* course notes, <https://www.jmilne.org/math/CourseNotes/ala.html> — for the algebraic-group viewpoint (optional).

## Video lectures

- **Frederic Schuller, *Lectures on the Geometrical Anatomy of Theoretical Physics***, Lectures 13–18: Lie groups and their Lie algebras; classification of Lie algebras and Dynkin diagrams; $SL(2,\mathbb{C})$ and $\mathfrak{sl}(2,\mathbb{C})$; Dynkin diagrams from Lie algebras; representation theory; reconstruction of a Lie group from its algebra. Playlist: <https://www.youtube.com/playlist?list=PLPH7f_7ZlzxTi6kS4vCmv4ZKm9u8g5yic>.
- **Richard Borcherds' YouTube channel** — the channel lists Lie groups and representation theory among its topics; check the Playlists tab: <https://www.youtube.com/@richarde.borcherds7998>.

## 16-week schedule

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Fulton–Harris Lectures 1–2 (finite group representations, characters) | — | F–H 1.x, 2.x: 4 problems | Maschke, Schur, orthogonality of characters. |
| 2 | Fulton–Harris Lecture 3 ($S_3$, $S_4$, $A_4$ examples) | — | 4 problems | Build a character table yourself. |
| 3 | Hall Ch. 1 (matrix Lie groups: $GL$, $SL$, $O$, $SO$, $U$, $SU$, $Sp$; compactness, connectedness) | Schuller L13 | Hall Ch. 1: 4 problems | Relate to [3.5](../../03-masters-core/3.5-smooth-manifolds/): these are embedded submanifolds. |
| 4 | Hall Ch. 2 (matrix exponential, logarithm) | — | Hall Ch. 2: 4 problems | $\det e^X=e^{\mathrm{tr}\,X}$; Lie product formula. |
| 5 | Hall Ch. 3 (Lie algebras; the Lie algebra of a matrix Lie group; adjoint map) | Schuller L18 | Hall Ch. 3: 4 problems | Compute $\mathfrak{su}(2)$, $\mathfrak{so}(3)$; they are isomorphic. |
| 6 | Hall Ch. 3 cont. (homomorphisms, closed subgroup theorem statement); $SU(2)\to SO(3)$ double cover | — | 4 problems | $\pi_1(SO(3))=\mathbb{Z}/2$ from the cover. |
| 7 | Hall Ch. 4 (basic representation theory; $\mathfrak{sl}(2,\mathbb{C})$ and $SU(2)$ irreps) | Schuller L15, L17 | Hall Ch. 4: 5 problems | Classify irreps of $\mathfrak{sl}_2$ by highest weight. |
| 8 | Hall Ch. 5 (Baker–Campbell–Hausdorff; Lie group–Lie algebra correspondence; simply connected groups) | — | Hall Ch. 5: 3 problems | Homomorphisms of algebras lift on simply connected groups. |
| 9 | Hall Ch. 6 / Fulton–Harris Lectures 12–13 (representations of $\mathfrak{sl}(3,\mathbb{C})$) | — | 4 problems | Weights, weight diagrams, highest weights. |
| 10 | Hall Ch. 7 (semisimple Lie algebras, Cartan subalgebras, roots) | Schuller L14 | Hall Ch. 7: 4 problems | Root space decomposition. |
| 11 | Hall Ch. 8 (root systems, Weyl group, bases, positive roots) | Schuller L16 | Hall Ch. 8: 4 problems | Rank-2 root systems: $A_2$, $B_2$, $G_2$. |
| 12 | Hall Ch. 8 cont. (Dynkin diagrams, classification statement); Humphreys §11 | — | 4 problems | Draw all connected Dynkin diagrams. |
| 13 | Hall Ch. 9 (theorem of the highest weight; Verma modules) | — | Hall Ch. 9: 3 problems | Existence via Verma modules. |
| 14 | Hall Ch. 10 (Weyl character formula, dimension formula — statements and examples) | — | 3 problems | Dimensions of $\mathfrak{sl}_3$ irreps. |
| 15 | Hall Ch. 11–12 skim (compact Lie groups, maximal tori); review | — | 3 problems | Weyl integration formula (statement). |
| 16 | Review; mock exam; capstone scoping | — | — | — |

## Key theorems checklist

- [ ] Maschke's theorem; Schur's lemma; character orthogonality
- [ ] Matrix Lie groups as closed subgroups of $GL(n,\mathbb{C})$; examples and their dimensions
- [ ] Matrix exponential: properties, $\det e^X=e^{\mathrm{tr}\,X}$, Lie product formula
- [ ] Lie algebra of a matrix Lie group; adjoint representation; $\mathrm{Ad}$ and $\mathrm{ad}$
- [ ] Closed subgroup theorem (statement)
- [ ] $SU(2)\to SO(3)$ is a 2-to-1 cover; $\pi_1(SO(3))=\mathbb{Z}/2$
- [ ] Baker–Campbell–Hausdorff formula (statement and use)
- [ ] Lie group–Lie algebra correspondence; lifting homomorphisms to simply connected groups
- [ ] Classification of irreps of $\mathfrak{sl}(2,\mathbb{C})$ and $SU(2)$
- [ ] Complete reducibility for compact groups (Weyl's unitarian trick)
- [ ] Cartan subalgebras; root space decomposition
- [ ] Root systems; Weyl group; simple roots; Dynkin diagrams; classification (statement)
- [ ] Theorem of the highest weight
- [ ] Weyl character and dimension formulas (statement)

## Exit criteria

1. Compute the Lie algebra and dimension of $SO(n)$, $SU(n)$, $Sp(n)$.
2. Classify the finite-dimensional irreducible representations of $\mathfrak{sl}(2,\mathbb{C})$ from scratch.
3. Construct the double cover $SU(2)\to SO(3)$ and deduce $\pi_1(SO(3))$.
4. Find the root system, Weyl group and Dynkin diagram of $\mathfrak{sl}(3,\mathbb{C})$ and $\mathfrak{so}(5,\mathbb{C})$.
5. Decompose $V\otimes V$ for the standard representation $V$ of $\mathfrak{sl}(3,\mathbb{C})$.
6. Solve 4 of 6 qualifying-style problems in 3 hours.
