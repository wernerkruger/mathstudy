# Elective: Algebraic Number Theory

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Number fields and their rings of integers: unique factorization of ideals in Dedekind domains, the splitting of primes, finiteness of the class number and Dirichlet's unit theorem via geometry of numbers, cyclotomic fields, and an introduction to valuations and local fields ($p$-adic numbers). This is the natural continuation of Galois theory and the gateway to class field theory, modular forms and arithmetic geometry.

## Prerequisites

- [3.3 Graduate algebra](../../03-masters-core/3.3-graduate-algebra/) — **essential**: Galois theory, modules over PIDs, localization, Noetherian rings, tensor products.
- [2.3 Abstract algebra II](../../02-bridge/2.3-abstract-algebra-II/) — rings, ideals, field extensions.
- Some elementary number theory (congruences, quadratic reciprocity) helps; refresh as needed.

## Texts

**Primary (free, legal):** J. S. Milne, *Algebraic Number Theory* (course notes, v3.08), free PDF from the author: <https://www.jmilne.org/math/CourseNotes/ant.html>.

**Primary (paid, gentle):** Daniel A. Marcus, *Number Fields*, 2nd ed. (Springer Universitext, 2018). Concrete and exercise-rich; the best book to *do* number theory from. Use it for exercises throughout.

**Primary (paid, advanced):** Jürgen Neukirch, *Algebraic Number Theory* (Springer Grundlehren 322). The standard graduate reference; use Chapter I as a second view and Chapter II for local fields.

**Free supplement:** MIT OpenCourseWare 18.785 *Number Theory I* (Andrew Sutherland, Fall 2021), with full lecture notes as an open textbook and problem sets: <https://ocw.mit.edu/courses/18-785-number-theory-i-fall-2021/>.

**Supplementary:** Kenneth Ireland and Michael Rosen, *A Classical Introduction to Modern Number Theory* (Springer GTM 84) — for motivation and Gauss/Jacobi sums.

## Video lectures

- **Richard Borcherds' YouTube channel** — graduate lecture courses recorded by Borcherds (Berkeley), including number theory topics; see the channel's Playlists tab: <https://www.youtube.com/@richarde.borcherds7998>. Choose the playlist that matches the week's topic; the channel's own description lists "theory of numbers" among its short courses.
- The MIT 18.785 notes are detailed enough to serve as written lectures.

## 16-week schedule

| Week | Reading | Exercises | Notes |
|---|---|---|---|
| 1 | Milne Ch. 1 (commutative algebra preliminaries); Marcus Ch. 1 (motivation: Fermat, $\mathbb{Z}[i]$) | Marcus Ch. 1: 4 problems | Why unique factorization fails in $\mathbb{Z}[\sqrt{-5}]$. |
| 2 | Milne Ch. 2 (rings of integers, integral closure, trace, norm, discriminant); Marcus Ch. 2 | Marcus Ch. 2: 5 problems | Compute $\mathcal{O}_K$ for quadratic fields. |
| 3 | Milne Ch. 2 cont. (integral bases, discriminants); Marcus Ch. 2 | 4 problems | Integral basis of $\mathbb{Q}(\zeta_p)$ (statement); of $\mathbb{Q}(\sqrt[3]{2})$. |
| 4 | Milne Ch. 3 (Dedekind domains, unique factorization of ideals); Marcus Ch. 3 | 4 problems | Fractional ideals form a group. |
| 5 | Milne Ch. 3 cont. (splitting of primes, ramification, $\sum e_if_i=n$); Marcus Ch. 3 | 5 problems | Dedekind–Kummer theorem: factor $p$ by factoring a polynomial mod $p$. |
| 6 | Galois case: decomposition and inertia groups, Frobenius; Marcus Ch. 4 | 4 problems | Quadratic reciprocity via cyclotomic fields. |
| 7 | Milne Ch. 4 (Minkowski's theorem, finiteness of the class number); Marcus Ch. 5 | 4 problems | Minkowski bound. |
| 8 | Class group computations for quadratic fields; Marcus Ch. 5 exercises | 5 problems | Compute $\mathrm{Cl}(\mathbb{Q}(\sqrt{-5}))$, $\mathrm{Cl}(\mathbb{Q}(\sqrt{-23}))$. |
| 9 | Milne Ch. 5 (Dirichlet's unit theorem); Marcus Ch. 5 | 4 problems | Log embedding and lattices. |
| 10 | Units in real quadratic fields; Pell's equation; regulator | 4 problems | Fundamental units via continued fractions. |
| 11 | Milne Ch. 6 (cyclotomic fields; Fermat's Last Theorem for regular primes) | 4 problems | Kummer's argument, first case. |
| 12 | Milne Ch. 7 (valuations, absolute values, Ostrowski, completions); Neukirch Ch. II §§1–3 | 4 problems | $p$-adic numbers via $\varprojlim\mathbb{Z}/p^n$ and via completion. |
| 13 | Milne Ch. 7 cont. (Hensel's lemma, local fields, extensions of valuations) | 4 problems | Solve equations in $\mathbb{Z}_p$ with Hensel. |
| 14 | Milne Ch. 8 (global fields, product formula, ideles/adeles light) | 3 problems | Local–global viewpoint. |
| 15 | Survey: statements of class field theory (Milne CFT notes intro or MIT 18.785 final lectures); review | 3 problems | Know what the theory says; not the proofs. |
| 16 | Review; mock exam; capstone scoping | — | — |

## Key theorems checklist

- [ ] Integral closure is a ring; $\mathcal{O}_K$ is a free $\mathbb{Z}$-module of rank $[K:\mathbb{Q}]$
- [ ] Discriminant; $\mathrm{disc}$ and integral bases; $\mathcal{O}_K$ for quadratic fields
- [ ] Dedekind domains: equivalent characterizations; unique factorization of ideals
- [ ] Norm of ideals; $\sum_{i}e_if_i=[K:\mathbb{Q}]$
- [ ] Dedekind–Kummer factorization theorem
- [ ] A prime ramifies iff it divides the discriminant
- [ ] Decomposition and inertia groups; Frobenius element
- [ ] Minkowski's lattice point theorem; Minkowski bound; finiteness of the class number
- [ ] Dirichlet's unit theorem
- [ ] Ring of integers of $\mathbb{Q}(\zeta_n)$; ramification in cyclotomic fields
- [ ] Quadratic reciprocity via cyclotomic fields
- [ ] Ostrowski's theorem; completions; $\mathbb{Q}_p$, $\mathbb{Z}_p$
- [ ] Hensel's lemma
- [ ] Extensions of valuations; $\sum e_if_i=n$ locally
- [ ] Product formula
- [ ] Statements of the main theorems of class field theory (Artin reciprocity, existence)

## Exit criteria

1. Compute $\mathcal{O}_K$, the discriminant and the factorization of small primes for any quadratic field and for $\mathbb{Q}(\sqrt[3]{2})$.
2. Prove unique factorization of ideals in a Dedekind domain.
3. Compute the class group of $\mathbb{Q}(\sqrt{-d})$ for small $d$ using the Minkowski bound.
4. State and sketch the proof of Dirichlet's unit theorem; find a fundamental unit of $\mathbb{Q}(\sqrt{d})$ for small $d$.
5. Use Hensel's lemma to decide whether a polynomial has roots in $\mathbb{Z}_p$.
6. Solve 4 of 6 qualifying-style problems in 3 hours.
