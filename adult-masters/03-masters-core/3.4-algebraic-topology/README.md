# 3.4 Algebraic Topology

**Phase:** 3 — Masters core
**Estimated length:** 14 weeks at ~6 hours/week (~84 hours)

Algebraic topology turns geometric questions ("can this map be deformed to that one?", "are these spaces the same?") into algebraic ones about groups and homomorphisms. This module covers the standard first-year graduate course: the fundamental group and covering spaces, then homology (simplicial, singular, cellular), with a light introduction to cohomology and the cup product.

## Prerequisites

- [2.1 Metric spaces & topology](../../02-bridge/2.1-metric-spaces-topology/) — quotient topology, compactness, connectedness, path-connectedness. **Essential.**
- [2.3 Abstract algebra II](../../02-bridge/2.3-abstract-algebra-II/) — group presentations, free groups, finitely generated abelian groups, exact sequences of modules.
- [1.4 Abstract algebra I](../../01-refresher/1.4-abstract-algebra-I/) — quotient groups, isomorphism theorems, group actions.
- Helpful but not required: [3.3 Graduate algebra](../3.3-graduate-algebra/) (tensor products, Hom, for the cohomology weeks).

## Learning objectives

By the end of this module you should be able to:

1. Define homotopy, homotopy equivalence, deformation retraction, and CW complexes, and build standard spaces (spheres, projective spaces, surfaces) as CW complexes.
2. Compute fundamental groups using covering spaces and the Seifert–van Kampen theorem.
3. State and use the lifting criterion and the classification of covering spaces (Galois correspondence with subgroups of $\pi_1$).
4. Define simplicial and singular homology, prove homotopy invariance (sketch), and use long exact sequences, excision and Mayer–Vietoris.
5. Compute homology with cellular homology, including $\mathbb{RP}^n$, $\mathbb{CP}^n$, and surfaces.
6. Use degree to prove Brouwer's fixed point theorem, the hairy ball theorem and invariance of dimension.
7. Define Euler characteristic and relate it to cell counts and Betti numbers.
8. Define singular cohomology and the cup product, state the universal coefficient theorem, and use cup products to distinguish spaces with equal homology.

## Texts

**Primary (free, legal):** Allen Hatcher, *Algebraic Topology*, Cambridge University Press, 2002. The author hosts a free PDF with the publisher's permission: <https://pi.math.cornell.edu/~hatcher/AT/ATpage.html>. Chapter 0, Chapters 1–2, and §§3.1–3.2. Hatcher also hosts a set of [additional exercises](https://pi.math.cornell.edu/~hatcher/AT/AT-exercises.pdf).

**Standard paid text (pick one as a second view):**
- James R. Munkres, *Elements of Algebraic Topology* (Addison-Wesley / CRC). Very careful and slow; excellent on simplicial homology and on the algebra of chain complexes.
- William S. Massey, *A Basic Course in Algebraic Topology* (Springer GTM 127). Strong on surfaces, the fundamental group and covering spaces.

**Supplementary:**
- Glen E. Bredon, *Topology and Geometry* (Springer GTM 139) — for a more advanced, smooth-flavoured view.
- Tammo tom Dieck, *Algebraic Topology* (EMS) — categorical and thorough.
- J. P. May, *A Concise Course in Algebraic Topology* (University of Chicago Press) — for the forward look; terse.

## Video lectures

- **Pierre Albin (University of Illinois), Algebraic Topology** — 27 lectures that closely follow Hatcher. Playlist (uploaded by a third party): <https://www.youtube.com/playlist?list=PLpRLWqLFLVTCL15U6N3o35g4uhMSBVA2b>
- **Anthony Bosman (Andrews University), Algebraic Topology** — 23 lectures, also follows Hatcher, more pictures and a gentler pace: <https://www.youtube.com/playlist?list=PLOROtRhtegr7DmeMyFxfKxsljAVsAn_X4>
- **N. J. Wildberger, Algebraic Topology** (YouTube, channel "njwildberger") — very visual intro to surfaces and Euler characteristic; search the channel's playlists. Good for intuition in Weeks 1–4, not a substitute for Hatcher.

Lecture numbers below refer to the Albin playlist; they drift slightly from the reading, so match by topic.

## Week-by-week schedule

Each week: ~3 h reading and note-taking, ~1–1.5 h video, ~2 h exercises.

| Week | Reading (Hatcher) | Videos (Albin) | Exercises | Notes |
|---|---|---|---|---|
| 1 | Ch. 0: homotopy, homotopy equivalence, cell complexes, operations on spaces (pp. 1–15) | L1–L2 | Ch. 0: 2, 3, 5, 9, 10 | Draw everything. Learn to "see" deformation retractions. |
| 2 | §1.1: paths, $\pi_1$, $\pi_1(S^1)\cong\mathbb{Z}$, applications (FTA, Brouwer in dim 2, Borsuk–Ulam in dim 2) | L3–L4 | §1.1: 3, 5, 6, 10, 12, 16; problems.md 1–2 | Learn the lifting proof of $\pi_1(S^1)$ cold; it is the template for covering theory. |
| 3 | §1.1 end (induced maps, $\pi_1$ of products) and §1.2: free products, van Kampen | L5–L6 | §1.1: 17, 18; §1.2: 1, 4, 8; problems.md 3 | Read the proof of van Kampen once carefully, then focus on using it. |
| 4 | §1.2: applications to cell complexes, $\pi_1$ of surfaces, presentations | L7–L8 | §1.2: 9, 10, 14, 16, 22; problems.md 8 | Attaching a 2-cell kills the attaching word. Every group is a $\pi_1$. |
| 5 | §1.3: covering spaces, lifting properties, lifting criterion | L9–L10 | §1.3: 1, 2, 4, 9; problems.md 7 | Path lifting + homotopy lifting are the engine. |
| 6 | §1.3: classification, universal cover, deck transformations, normal covers; (optional §1.A graphs) | L11–L12 | §1.3: 10, 12, 14, 17, 19; problems.md 12, 13, 19 | Galois correspondence. Do the covers of $S^1\vee S^1$ by hand. |
| 7 | Consolidation week; start §2.1: $\Delta$-complexes, simplicial homology | L13 | Re-do two hard exercises from Weeks 2–6; §2.1: 1, 4, 5 | Good time for a self-made mini-exam on Chapter 1. |
| 8 | §2.1: singular homology, homotopy invariance, exact sequences, relative groups | L14–L15 | §2.1: 11, 12, 16, 17; problems.md 6 | Do the snake lemma / zig-zag lemma yourself. |
| 9 | §2.1: excision, equivalence of simplicial and singular homology (skim proofs) | L16–L17 | §2.1: 18, 20, 22, 27; problems.md 16 | Excision is the hard technical theorem; understand the statement and use. |
| 10 | §2.2: degree, Mayer–Vietoris, applications | L18–L19 | §2.2: 1, 2, 3, 7, 8; problems.md 4, 10, 11, 14 | Brouwer, hairy ball, $\mathbb{R}^m\not\cong\mathbb{R}^n$. |
| 11 | §2.2: cellular homology, Euler characteristic | L20–L21 | §2.2: 9, 12, 15, 20; problems.md 5, 9, 15 | Cellular boundary formula: degrees of attaching maps. |
| 12 | §2.2 end (homology with coefficients); §3.1: cohomology, universal coefficient theorem | L22–L23 | §2.2: 26, 28; §3.1: 1, 5, 9 | Ext and Hom; see how torsion shifts up one degree. |
| 13 | §3.2: cup product, cohomology rings of $\mathbb{RP}^n$, $\mathbb{CP}^n$, surfaces (statements) | L24–L25 | §3.2: 1, 2, 3, 7; problems.md 17, 18 | Light treatment: compute, don't prove every ring structure. |
| 14 | Review and mock qualifying exam | Re-watch any weak lecture | problems.md 20–21; timed: pick 6 problems, 3 hours | Then check the exit criteria below. |

## Checklist of key definitions and theorems

- [ ] Homotopy, homotopy rel $A$, homotopy equivalence, contractible space
- [ ] Retraction, deformation retraction
- [ ] CW complex, cellular map, subcomplex; quotient $X/A$, suspension, wedge sum
- [ ] Homotopy extension property for CW pairs
- [ ] Fundamental group, induced homomorphism, change of basepoint
- [ ] $\pi_1(S^1)\cong\mathbb{Z}$ (with proof)
- [ ] $\pi_1(X\times Y)\cong\pi_1(X)\times\pi_1(Y)$
- [ ] Brouwer fixed point theorem (dimension 2 via $\pi_1$; all dimensions via $H_n$)
- [ ] Free product, group presentation, Seifert–van Kampen theorem
- [ ] Effect of attaching 2-cells on $\pi_1$; $\pi_1$ of closed surfaces
- [ ] Covering space, path lifting, homotopy lifting
- [ ] Lifting criterion
- [ ] Universal cover existence (semi-locally simply connected)
- [ ] Classification of connected covers ↔ conjugacy classes of subgroups of $\pi_1$
- [ ] Deck transformations; normal covers; $G(\tilde X)\cong N(H)/H$
- [ ] Covering space actions; $\pi_1(Y/G)\cong G$ for $Y$ simply connected
- [ ] Chain complex, chain map, chain homotopy
- [ ] Simplicial ($\Delta$-complex) and singular homology; reduced homology
- [ ] Homotopy invariance of singular homology
- [ ] Long exact sequence of a pair; snake/zig-zag lemma
- [ ] Excision; good pairs; $H_n(X,A)\cong\tilde H_n(X/A)$
- [ ] Mayer–Vietoris sequence
- [ ] $\tilde H_k(S^n)$
- [ ] Degree of a map $S^n\to S^n$; degree of reflections and antipodal map
- [ ] Hairy ball theorem
- [ ] Invariance of dimension
- [ ] Cellular homology and the cellular boundary formula
- [ ] Euler characteristic $=\sum(-1)^n c_n=\sum(-1)^n\mathrm{rank}\,H_n$
- [ ] Homology of $\mathbb{RP}^n$, $\mathbb{CP}^n$, closed surfaces
- [ ] Hurewicz in degree 1: $H_1\cong\pi_1^{ab}$ (path-connected)
- [ ] Singular cohomology; universal coefficient theorem
- [ ] Cup product; graded commutativity; $H^*(\mathbb{RP}^\infty;\mathbb{Z}/2)$, $H^*(\mathbb{CP}^n)$ (statements)

## Exit criteria

You are ready to move on when you can, without notes:

1. Prove $\pi_1(S^1)\cong\mathbb{Z}$ and deduce the 2-dimensional Brouwer theorem.
2. Compute $\pi_1$ of any surface or 2-dimensional CW complex from a cell structure.
3. List all connected 2- and 3-sheeted covers of $S^1\vee S^1$ up to isomorphism and say which are normal.
4. Derive the Mayer–Vietoris sequence from the long exact sequence of a short exact sequence of chain complexes, and use it to compute $H_*(S^n)$ and $H_*$ of the Klein bottle.
5. Compute $H_*(\mathbb{RP}^n;\mathbb{Z})$ by cellular homology.
6. Solve at least 4 of the 6 qualifying-level problems in [problems.md](problems.md) within 3 hours, with solutions you'd be willing to hand in.
7. Explain in one paragraph why $\mathbb{CP}^2$ and $S^2\vee S^4$ are not homotopy equivalent.

Files in this module: [notes.md](notes.md) · [problems.md](problems.md) · [solutions.md](solutions.md)

**Next:** [3.5 Smooth manifolds](../3.5-smooth-manifolds/) uses covering spaces, $\pi_1$ and the idea of (co)homology; de Rham cohomology there is the smooth counterpart of §3.1 here.
