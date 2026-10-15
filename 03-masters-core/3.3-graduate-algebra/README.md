# 3.3 Graduate algebra

- **Phase:** 3 (Masters core), algebra/geometry track
- **Estimated length:** 14 weeks at ~6 hours/week (about 84 hours)
- **Prerequisites:**
  - [2.3 Abstract algebra II](../../02-bridge/2.3-abstract-algebra-II/) (rings, ideals, PIDs and UFDs, modules over a PID, field extensions and Galois theory)
  - [1.4 Abstract algebra I](../../01-refresher/1.4-abstract-algebra-I/) (groups, group actions, conjugacy classes, Sylow theorems)
  - [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/) (dual spaces, inner products, diagonalisation)
- **Recommended timing:** after [3.1](../3.1-measure-integration/) and before [3.2](../3.2-functional-analysis/), as explained in the [phase overview](../README.md).
- **Leads to:** [3.4 Algebraic topology](../3.4-algebraic-topology/) (exact sequences, Hom, tensor products, the universal coefficient theorem), algebraic geometry and algebraic number theory electives in [Phase 4](../../04-electives/).

## Why this module

This module has three strands that every graduate algebraist uses daily:

1. **Module theory and a little homological algebra:** exact sequences, Hom, tensor products, projective/injective/flat modules. This is the language of algebraic topology and algebraic geometry.
2. **Commutative algebra:** Noetherian rings, localisation, the prime spectrum, integral extensions, the Nullstellensatz and Dedekind domains. This is the algebra behind algebraic geometry and algebraic number theory.
3. **Representation theory of finite groups:** Maschke's theorem, characters and orthogonality. This is the first place where linear algebra, group theory and (later) analysis meet.

Categories and functors appear lightly, as an organising language, not as a subject in their own right.

## Learning objectives

By the end of the module you can:

1. Use universal properties to define and compare constructions (products, coproducts, tensor products, localisations), and recognise functors and natural transformations.
2. Work with exact sequences: the splitting lemma, left exactness of Hom, right exactness of tensor products.
3. Compute tensor products and Hom groups of abelian groups and modules over a PID, and decide whether modules are projective, injective or flat.
4. Prove Nakayama's lemma, the Hilbert basis theorem and basic facts about localisation, and describe $\operatorname{Spec}A$ for simple rings.
5. Prove lying over and going up for integral extensions, and the weak and strong Nullstellensatz.
6. Define Dedekind domains, factor ideals in simple quadratic rings, and explain why unique factorisation of ideals replaces unique factorisation of elements.
7. Prove Maschke's and Schur's theorems and the orthogonality relations, and compute character tables of small groups.

## Texts

**Primary (free, legal):**

- Allen Altman and Steven Kleiman, *A Term of Commutative Algebra* (Worldwide Center of Mathematics, 2013; CC BY-NC-SA). PDF: <https://web.mit.edu/18.705/www/13Ed.pdf>. Written to accompany MIT 18.705; includes full solutions to all exercises.
- Pavel Etingof et al., *Introduction to Representation Theory* (AMS Student Mathematical Library 59, 2011). Free PDF from the author: <https://math.mit.edu/~etingof/reprbook.pdf>. Chapters 4–5 are the finite-group part.

**Primary (standard, paid):**

- David S. Dummit and Richard M. Foote, *Abstract Algebra* (3rd ed., Wiley, 2004). Chapters 10 (modules, tensor products, exact sequences), 15 (commutative rings and algebraic geometry), 16 (Dedekind domains), 18–19 (representation theory). You probably already own it from Phase 2.
- M. F. Atiyah and I. G. Macdonald, *Introduction to Commutative Algebra* (Addison-Wesley, 1969). The classic: 128 pages, very concise, with superb exercises. Chapters 1–3, 5, 7 and 9 are this module.

**Supplementary:**

- Paolo Aluffi, *Algebra: Chapter 0* (AMS Graduate Studies in Mathematics 104, 2009). The best source for categorical language: chapter I (categories, universal properties) and chapter VIII (tensor products, Hom, exactness, projective and injective modules).
- James S. Milne, course notes (free): <https://www.jmilne.org/math/CourseNotes/index.html>. *Group Theory* (GT) has a concise chapter on representations of finite groups; *Algebraic Number Theory* (ANT) treats Dedekind domains in full; *Algebraic Geometry* (AG) starts with the commutative algebra used here.
- MIT 18.705 *Commutative Algebra* (Steven Kleiman, Fall 2008), MIT OpenCourseWare: <https://ocw.mit.edu/courses/18-705-commutative-algebra-fall-2008/>. Problem sets keyed to Altman–Kleiman (no videos).

## Video lectures

- Richard E. Borcherds' YouTube channel: <https://www.youtube.com/@richarde.borcherds7998/playlists>. Complete lecture courses on **commutative algebra** (matching weeks 5–11) and shorter courses on **category theory** and **representation theory** (weeks 1 and 12–14). Each lecture is 20–40 minutes and very clear. Open the playlists page and pick the course by name.

## Week-by-week schedule

Abbreviations: **DF** = Dummit–Foote; **AM** = Atiyah–Macdonald; **AK** = Altman–Kleiman; **Al** = Aluffi; **Et** = Etingof et al.; **N** = this module's [notes.md](notes.md); **P** = [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Categories, functors, natural transformations, universal properties, products and coproducts: Al I.3–I.5; N §1 | Borcherds, category theory course (first lectures) | P6 | Keep it light: the aim is fluency with universal properties. |
| 2 | Modules, free modules, direct sums and products, exact sequences, splitting lemma, five and snake lemmas: DF 10.1–10.3, 10.5 (first part); AM ch. 2 (to 2.10); AK §4–5; N §2 | — | P7, P8 | Review modules over a PID from 2.3 if needed. |
| 3 | Tensor products: construction, universal property, examples, Hom–tensor adjunction, right exactness, extension of scalars: DF 10.4; AM ch. 2 (2.7 onward); AK §8; N §3 | — | P1, P2, P9, P23 | Compute many small examples. |
| 4 | Projective, injective and flat modules; Baer's criterion; divisible groups: DF 10.5; AK §9; Al ch. VIII; N §4 | — | P3, P4, P10 | |
| 5 | Prime and maximal ideals, nilradical, Jacobson radical, Nakayama's lemma: AM ch. 1, 2.5–2.8; AK §1–3, §10; N §5 | Borcherds, commutative algebra (early lectures) | P12, P13 | |
| 6 | Localisation of rings and modules, exactness, local properties: AM ch. 3; AK §11–12; DF 15.4; N §6 | Borcherds, commutative algebra (localisation) | P11 | |
| 7 | Prime spectrum and the Zariski topology: AM ch. 1 exercises 15–21; DF 15.1–15.2; N §7 | Borcherds, commutative algebra (Spec) | P14, P22 | Draw pictures of $\operatorname{Spec}\mathbb{Z}$ and $\operatorname{Spec}\mathbb{C}[x]$. |
| 8 | Noetherian rings and modules, Hilbert basis theorem: AM ch. 6–7; AK §16; DF 15.1; N §8 | Borcherds, commutative algebra (Noetherian rings) | P15, P21 | Catch-up week if behind. |
| 9 | Integral extensions, integral closure, lying over, going up: AM ch. 5 (to 5.11); AK §10, §14; DF 15.3; N §9 | Borcherds, commutative algebra (integral extensions) | P17 | |
| 10 | Noether normalisation, Zariski's lemma, Nullstellensatz, varieties and radical ideals: AM 5.23–5.24, 7.9; AK §15; DF 15.2–15.3; N §10 | Borcherds, commutative algebra (Nullstellensatz) | P18 | |
| 11 | Dedekind domains, DVRs, factorisation of ideals, class group: AM ch. 9; AK §23–25; DF 16.2–16.3; Milne ANT ch. 3; N §11 | Borcherds, commutative algebra (Dedekind domains) | P16 | |
| 12 | Representations, group algebra, Maschke, Schur: Et 4.1, 2.3; DF 18.1–18.2; N §12 | Borcherds, representation theory (early lectures) | P19 | |
| 13 | Characters, orthogonality relations, character tables: Et 4.2–4.8; DF 18.3; N §12 | Borcherds, representation theory (characters) | P5, P20 | |
| 14 | Induced representations, Frobenius reciprocity, Burnside's $p^aq^b$ theorem (statement): Et 5.8–5.10, 5.4; DF 19.1–19.2; N §12; review | — | P24, P25; redo all Qualifying-exam level problems | Leave one session for a closed-book self-test. |

## Checklist of key definitions and theorems

- [ ] Category, functor (covariant, contravariant), natural transformation; universal property; product and coproduct
- [ ] Adjoint functors (example: Hom–tensor adjunction; free ⊣ forgetful)
- [ ] Exact sequence; short exact sequence; splitting lemma
- [ ] Five lemma; snake lemma (statement and use)
- [ ] $\operatorname{Hom}_A(M,-)$ and $\operatorname{Hom}_A(-,N)$ are left exact
- [ ] Tensor product: universal property, existence, $A\otimes_AM\cong M$, associativity, base change
- [ ] $M\otimes_A-$ is right exact; Hom–tensor adjunction
- [ ] Projective modules: lifting property; direct summands of free modules
- [ ] Injective modules: Baer's criterion; divisible = injective over a PID
- [ ] Flat modules; free ⇒ projective ⇒ flat; over a PID flat = torsion-free
- [ ] Nilradical = intersection of primes; Jacobson radical = intersection of maximal ideals
- [ ] Nakayama's lemma and minimal generators over a local ring
- [ ] Localisation $S^{-1}A$, $S^{-1}M$: universal property, exactness, primes of $S^{-1}A$; local properties
- [ ] $\operatorname{Spec}A$ with the Zariski topology; $V(I)$, $D(f)$; quasi-compactness; functoriality
- [ ] Noetherian rings and modules (ACC, maximal condition, finitely generated submodules)
- [ ] Hilbert basis theorem; finitely generated algebras over Noetherian rings are Noetherian
- [ ] Integral elements; finite ⇔ integral + finitely generated; integral closure; lying over; going up
- [ ] Noether normalisation; Zariski's lemma; weak and strong Nullstellensatz
- [ ] DVR; Dedekind domain; unique factorisation of ideals; ideal class group
- [ ] Ring of integers of $\mathbb{Q}(\sqrt d)$
- [ ] Representation of a finite group; $\mathbb{C}[G]$-modules; Maschke's theorem
- [ ] Schur's lemma
- [ ] Characters; inner product of class functions; first and second orthogonality relations
- [ ] Number of irreducible representations = number of conjugacy classes; $\sum(\dim V_i)^2=\lvert G\rvert$
- [ ] Induced representations; Frobenius reciprocity

## Exit criteria

You are ready to move on when you can:

1. Prove without notes: the splitting lemma, right exactness of $\otimes$ (via adjunction), Nakayama's lemma, the Hilbert basis theorem, lying over, the weak Nullstellensatz (for $\mathbb{C}$ by the uncountability argument, and in general from Zariski's lemma), Maschke's theorem and the first orthogonality relation.
2. Compute quickly: $\mathbb{Z}/m\otimes\mathbb{Z}/n$, $\operatorname{Hom}(\mathbb{Z}/m,\mathbb{Z}/n)$, $\mathbb{Q}\otimes\mathbb{Q}/\mathbb{Z}$, $\operatorname{Spec}\mathbb{Z}$, the ring of integers of $\mathbb{Q}(\sqrt d)$, the factorisation of $(6)$ in $\mathbb{Z}[\sqrt{-5}]$, and the character tables of $S_3$, $D_4$, $Q_8$ and $A_4$.
3. Solve at least 3 of the 5 Qualifying-exam level problems in [problems.md](problems.md) in 45 minutes each, closed book.
4. Tick every item in the checklist above in [PROGRESS.md](../../PROGRESS.md).
