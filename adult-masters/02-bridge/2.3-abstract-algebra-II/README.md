# 2.3 Abstract Algebra II: Rings, Modules, Fields and Galois Theory

**Phase:** 2 (Bridge)
**Estimated length:** 12 weeks at ~6 hours/week (about 72 hours)

## Prerequisites

- [1.4 Abstract algebra I](../../01-refresher/1.4-abstract-algebra-I/): groups, homomorphisms, quotient groups, Sylow theorems, group actions; basic rings, ideals and quotient rings.
- [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/): vector spaces, linear maps, eigenvalues, characteristic and minimal polynomials, diagonalisation.

This module does **not** depend on 2.1, so it can run in parallel with the analysis modules (see the [phase overview](../README.md)).

## Why this module

Masters-level algebra (module [3.3](../../03-masters-core/3.3-graduate-algebra/)) assumes that you know Galois theory and the structure of modules over a PID. These ideas also reappear in algebraic topology (homology groups are finitely generated abelian groups; covering spaces have a Galois correspondence) and in number theory and algebraic geometry.

## Learning objectives

By the end you should be able to:

1. Work with Euclidean domains, PIDs and UFDs, and know the implications Euclidean ⇒ PID ⇒ UFD and counterexamples to the converses.
2. Test polynomials for irreducibility (rational root test, Gauss's lemma, Eisenstein, reduction mod $p$).
3. Define modules, submodules, quotients, homomorphisms, free modules; prove that submodules of free modules of rank $n$ over a PID are free of rank at most $n$.
4. State and prove (via Smith normal form) the structure theorem for finitely generated modules over a PID, in invariant factor and elementary divisor forms.
5. Apply the structure theorem to classify finitely generated abelian groups and to derive the rational and Jordan canonical forms.
6. Work with field extensions: degree, tower law, algebraic elements, minimal polynomials, splitting fields, algebraic closure; prove the impossibility of classical constructions.
7. Classify finite fields and describe their subfields and Galois groups.
8. Understand separability and normality; state and prove the fundamental theorem of Galois theory; compute Galois groups of small polynomials and cyclotomic fields.
9. Prove that a polynomial solvable by radicals has a solvable Galois group (characteristic 0), and exhibit a quintic over $\mathbb Q$ that is not solvable by radicals.

## Texts

**Primary (free):** J.S. Milne, *Fields and Galois Theory* (course notes, v5.10, 2022; CC BY-NC-SA). Chapters 1–6 cover the field theory of this module. <https://www.jmilne.org/math/CourseNotes/ft.html> (verified). Milne's notes are concise; read them with pen in hand.

**Primary (standard, paid):** David S. Dummit and Richard M. Foote, *Abstract Algebra*, 3rd edition (Wiley, 2004). Chapters 7–9 (rings), 10 and 12 (modules, modules over a PID), 13–14 (fields and Galois theory). The exercises are the main source of practice.

**Supplementary:**

- Michael Artin, *Algebra*, 2nd edition (Pearson, 2011). Chapter 14 ("Linear Algebra in a Ring") gives the clearest Smith normal form proof of the structure theorem; Chapters 15–16 cover fields and Galois theory.
- Ian Stewart, *Galois Theory*, 4th edition (CRC Press, 2015). Historical and gentle; good for motivation.
- Emil Artin, *Galois Theory* (Dover reprint). Short and classic; the source of the "Artin approach" Milne uses.

## Video lectures and online courses

- MIT OpenCourseWare 18.702 *Algebra II* (Spring 2011, Michael Artin): problem sets keyed to Artin's *Algebra*, covering rings, modules, factorisation, fields and Galois theory. <https://ocw.mit.edu/courses/18-702-algebra-ii-spring-2011/> (verified). No videos.
- Benedict Gross, *Abstract Algebra* (Harvard Math 122, recorded through Harvard Extension; widely available on YouTube). Follows Artin's *Algebra*; the later lectures cover rings, modules and fields. Search YouTube for "Benedict Gross abstract algebra".
- Richard E. Borcherds, *Galois theory* lecture series on his YouTube channel. Short, idiosyncratic lectures by a Fields medallist; good for a second viewpoint on the fundamental theorem and solvability.

## Week-by-week schedule

DF = Dummit & Foote; M = Milne *Fields and Galois Theory*; A = Artin *Algebra* (2nd ed.). Problem numbers refer to [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|------|---------|--------|-----------|-------|
| 1 | DF Ch. 7 (rings, ideals, quotients, isomorphism theorems, prime and maximal ideals, Chinese remainder theorem) | Gross lectures on rings | Problem 2; DF 7.4 exercises | Mostly revision of 1.4. Zorn ⇒ maximal ideals exist. |
| 2 | DF Ch. 8 (Euclidean domains, PIDs, UFDs); DF 9.1–9.4 (polynomial rings, Gauss's lemma, irreducibility criteria) | — | Problems 1, 3, 7 | $\mathbb Z[i]$; $\mathbb Z[\sqrt{-5}]$ is not a UFD; $\mathbb Z[x]$ is a UFD but not a PID. |
| 3 | DF 10.1–10.3 (modules, homomorphisms, quotients, direct sums, free modules) | — | DF 10.3 exercises | Modules over $F[x]$ = vector spaces with an endomorphism. |
| 4 | DF 12.1; A Ch. 14 (Smith normal form, structure theorem) | — | Problems 8, 24 | Prove existence via Smith normal form. |
| 5 | DF 12.2–12.3 (rational and Jordan canonical forms) | — | Problems 5, 9, 10 | Classification of f.g. abelian groups; similarity of matrices. |
| 6 | DF 13.1–13.3; M Ch. 1 (extensions, degree, tower law, algebraic elements, constructions) | — | Problems 4, 21 | Ruler-and-compass impossibility proofs. |
| 7 | DF 13.4; M Ch. 2 and Ch. 6 (splitting fields; algebraic closure) | Borcherds Galois theory (first lectures) | Problem 11 (first half) | Existence and uniqueness of splitting fields; existence of algebraic closure (Zorn). |
| 8 | DF 13.5, 14.3; M Ch. 2 (separability; finite fields) | — | Problems 6, 12, 13, 14, 15 | Frobenius; $x^{p^n}-x$; perfect fields. |
| 9 | DF 14.1–14.2; M Ch. 3 (Galois groups, fundamental theorem) | Borcherds Galois theory (middle lectures) | Problems 11 (second half), 18, 19 | Artin's theorem $[K:K^G] = \lvert G\rvert$. |
| 10 | DF 13.6, 14.4–14.6; M Ch. 4 (cyclotomic fields, primitive element theorem, Galois groups of polynomials) | — | Problems 16, 17, 23 | Discriminant; Galois groups of cubics and quartics. |
| 11 | DF 14.7; M Ch. 5 (solvable groups, radical extensions, insolubility of the quintic) | Borcherds Galois theory (later lectures) | Problems 20, 22 | Kummer theory; $S_5$ is not solvable. |
| 12 | DF 14.8 (Galois groups over $\mathbb Q$, skim); review | — | Re-do all Challenge problems | Self-test against exit criteria. |

## Checklist of key definitions and theorems

- [ ] Ideal, quotient ring, prime and maximal ideals; $R/P$ domain ⇔ $P$ prime; $R/M$ field ⇔ $M$ maximal
- [ ] Chinese remainder theorem
- [ ] Euclidean domain, PID, UFD; Euclidean ⇒ PID ⇒ UFD; counterexamples ($\mathbb Z[(1+\sqrt{-19})/2]$, $\mathbb Z[x]$)
- [ ] Gauss's lemma; $R$ UFD ⇒ $R[x]$ UFD; Eisenstein's criterion; reduction mod $p$
- [ ] Module, submodule, quotient, homomorphism, isomorphism theorems, free module, rank, torsion
- [ ] Submodules of $R^n$ ($R$ a PID) are free of rank $\le n$
- [ ] Smith normal form
- [ ] Structure theorem for f.g. modules over a PID: invariant factor and elementary divisor forms; uniqueness
- [ ] Classification of finitely generated abelian groups
- [ ] Rational canonical form; Jordan canonical form; minimal polynomial = largest invariant factor; Cayley–Hamilton
- [ ] Field extension, degree, tower law; algebraic and transcendental elements; minimal polynomial; $F(\alpha) \cong F[x]/(m_\alpha)$
- [ ] Constructible numbers have degree a power of 2; impossibility of trisection, duplication, squaring the circle (statement)
- [ ] Splitting field: existence and uniqueness up to isomorphism
- [ ] Algebraic closure: existence and uniqueness (statement + idea)
- [ ] Separable polynomial; $\gcd(f,f') = 1$ test; perfect fields; characteristic 0 and finite fields are perfect
- [ ] Finite fields: $\mathbb F_{p^n}$ exists, is unique, is the splitting field of $x^{p^n}-x$; $\mathbb F_{p^n}^\times$ cyclic; subfields ↔ divisors of $n$; Galois group cyclic generated by Frobenius
- [ ] Normal, separable, Galois extensions; equivalent characterisations
- [ ] Artin's theorem; fundamental theorem of Galois theory
- [ ] Primitive element theorem
- [ ] Cyclotomic polynomials; $\mathrm{Gal}(\mathbb Q(\zeta_n)/\mathbb Q) \cong (\mathbb Z/n)^\times$
- [ ] Solvable groups; radical extensions; solvable by radicals ⇔ solvable Galois group (char 0)
- [ ] An irreducible quintic over $\mathbb Q$ with exactly 3 real roots has Galois group $S_5$

## Exit criteria

You are ready to move on when you can, without notes:

1. Compute the Smith normal form of a $3\times3$ integer matrix and read off the corresponding abelian group.
2. List all possible Jordan and rational canonical forms given a characteristic and minimal polynomial.
3. Prove the fundamental theorem of Galois theory, including Artin's theorem.
4. Compute the Galois group and full subfield lattice of the splitting field of $x^3-2$ and of $x^4-2$ over $\mathbb Q$.
5. Prove that $x^5 - 6x + 3$ is not solvable by radicals, citing exactly which theorems you use.
6. Solve at least 4 of the 5 Challenge problems in [problems.md](problems.md) on your own.
