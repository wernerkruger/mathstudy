# Elective: Algebraic Geometry

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Algebraic geometry studies solution sets of polynomial equations using commutative algebra. This elective runs in two halves: **classical varieties** (affine and projective varieties, morphisms, dimension, smoothness, plane curves) through Reid and Shafarevich, then a **first look at sheaves and schemes** through Vakil's *The Rising Sea*. The aim is fluency with varieties and an honest start on the modern language, not completion of Hartshorne.

## Prerequisites

- [3.3 Graduate algebra](../../03-masters-core/3.3-graduate-algebra/) — **essential**: Noetherian rings, Hilbert basis theorem, localization, prime and maximal ideals, integral extensions; Nullstellensatz if covered.
- [3.4 Algebraic topology](../../03-masters-core/3.4-algebraic-topology/) — helpful for sheaf cohomology intuition and for complex curves as surfaces.
- [2.2 Complex analysis](../../02-bridge/2.2-complex-analysis/) — Riemann surfaces viewpoint on curves.
- Basic category theory (functors, natural transformations, limits) — Vakil Ch. 1 covers what you need.

## Texts

**Starter (paid, short):** Miles Reid, *Undergraduate Algebraic Geometry* (LMS Student Texts 12, Cambridge). About 130 pages; read in Weeks 1–4 for intuition.

**Primary (free, legal):** Ravi Vakil, *The Rising Sea: Foundations of Algebraic Geometry* (Princeton University Press, 2025). The author keeps a free version of the notes online: <https://math.stanford.edu/~vakil/216blog/>.

**Primary (paid):** Igor R. Shafarevich, *Basic Algebraic Geometry 1: Varieties in Projective Space* (Springer). Classical, geometric, many examples; used for Weeks 4–8.

**Reference (paid):** Robin Hartshorne, *Algebraic Geometry* (Springer GTM 52). The standard graduate reference; use Chapter I as a check on the classical half and Chapter II as a reference in the scheme half. Not recommended as a first read.

**Free supplement:** J. S. Milne, *Algebraic Geometry* (course notes, v6.10), free PDF: <https://www.jmilne.org/math/CourseNotes/ag.html>. A clear course on varieties with solutions to exercises.

## Video lectures

- **Richard Borcherds' YouTube channel** — full graduate courses on algebraic geometry and commutative algebra, recorded at Berkeley; see the channel's Playlists tab: <https://www.youtube.com/@richarde.borcherds7998>. The channel description lists algebraic geometry and commutative algebra as its main courses. Use the varieties course for Weeks 1–8 and the schemes course for Weeks 9–15.

## 16-week schedule

| Week | Reading | Exercises | Notes |
|---|---|---|---|
| 1 | Reid Ch. 1 (plane conics, cubics) | Reid Ch. 1: 4 problems | Parametrize conics; the group law on a cubic (informally). |
| 2 | Reid Ch. 2–3 (affine varieties, Nullstellensatz) | Reid Ch. 3: 4 problems | $V$ and $I$ are inverse bijections between radical ideals and closed sets. |
| 3 | Reid Ch. 4 (functions on varieties, morphisms, rational maps); Milne AG Ch. 2–3 | 4 problems | Coordinate ring ↔ affine variety equivalence of categories. |
| 4 | Reid Ch. 5 (projective varieties, tangent spaces, dimension); Shafarevich Ch. I §§4–5 | 4 problems | Homogeneous coordinates; Zariski topology on $\mathbb{P}^n$. |
| 5 | Shafarevich Ch. I §§5–6 (products, finite maps, dimension) | 4 problems | Images of projective varieties are closed. |
| 6 | Shafarevich Ch. II §§1–2 (local properties, tangent space, smoothness) | 4 problems | Jacobian criterion; singular points of curves. |
| 7 | Shafarevich Ch. II §§3–4 (local parameters, blowups); Hartshorne I.4–I.5 | 4 problems | Blow up the node and the cusp. |
| 8 | Plane curves: Bézout's theorem (statement and examples); Shafarevich Ch. III §1 (divisors on curves, light) | 4 problems | Count intersections with multiplicity. |
| 9 | Vakil Ch. 1 (category theory) skim; Ch. 2 (sheaves: presheaves, stalks, sheafification) | Vakil Ch. 2: 5 exercises | Sheaf of continuous/smooth functions; skyscraper sheaves. |
| 10 | Vakil Ch. 2 cont. (sheaves of abelian groups, exactness via stalks) | 5 exercises | Exactness is a stalk-local condition. |
| 11 | Vakil Ch. 3 (the spectrum of a ring: points, Zariski topology, functions) | 5 exercises | Draw $\mathrm{Spec}\,\mathbb{Z}[x]$. |
| 12 | Vakil Ch. 4 (structure sheaf; schemes; first examples) | 5 exercises | Gluing affine schemes; the line with a doubled origin. |
| 13 | Vakil Ch. 5 (properties: reduced, integral, irreducible, Noetherian) | 4 exercises | Varieties as schemes. |
| 14 | Vakil Ch. 4.5 / Ch. 6 (Proj; morphisms of schemes) | 4 exercises | $\mathbb{P}^n_A$ via Proj. |
| 15 | Vakil Ch. 7 skim (properties of morphisms); review | 3 exercises | Connect back to Shafarevich's varieties. |
| 16 | Review; mock exam; capstone scoping | — | — |

Chapter numbers for Vakil refer to recent versions of the notes; they shift slightly between versions, so match by title ("Sheaves", "Toward affine schemes: the underlying set and topology", "The structure sheaf, and the definition of schemes in general", "Some properties of schemes").

## Key theorems checklist

- [ ] Hilbert basis theorem; Noetherian topological spaces; irreducible decomposition
- [ ] Hilbert's Nullstellensatz (weak and strong)
- [ ] Equivalence between affine varieties and finitely generated reduced $k$-algebras (domains for irreducible)
- [ ] Projective varieties; homogeneous ideals; projective Nullstellensatz
- [ ] Morphisms and rational maps; birational equivalence
- [ ] Images of projective varieties under morphisms are closed (completeness)
- [ ] Dimension: Krull dimension = transcendence degree for affine varieties
- [ ] Tangent space; Jacobian criterion; smooth points form a dense open set
- [ ] Blowups; resolution of plane curve singularities by blowing up (examples)
- [ ] Bézout's theorem (statement)
- [ ] Presheaves, sheaves, stalks, sheafification; exactness via stalks
- [ ] $\mathrm{Spec}\,A$: Zariski topology, distinguished opens, structure sheaf $\mathcal{O}(D(f))=A_f$
- [ ] Schemes; gluing; $\mathbb{P}^n_A$ via gluing and via Proj
- [ ] Reduced, integral, irreducible, (locally) Noetherian schemes
- [ ] Morphisms of affine schemes ↔ ring homomorphisms (contravariant equivalence)

## Exit criteria

1. State and prove the weak Nullstellensatz (via Zariski's lemma) and deduce the strong form.
2. Compute the singular points of a given plane curve and its tangent cones; blow up a node.
3. Show that $\mathbb{P}^n$ is complete (or that a morphism from a projective variety has closed image), with notes allowed.
4. Define a sheaf, sheafification and $\mathrm{Spec}\,A$; compute $\mathcal{O}(D(f))=A_f$.
5. Describe the points of $\mathrm{Spec}\,\mathbb{Z}[x]$ and $\mathrm{Spec}\,\mathbb{C}[x,y]$.
6. Solve 4 of 6 qualifying-style problems in 3 hours.
