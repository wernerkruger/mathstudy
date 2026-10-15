# 1.4 Abstract Algebra I

**Phase:** 1 — Refresher
**Estimated length:** 10 weeks at about 6 hours/week (about 60 hours)

This module rebuilds the standard first course in abstract algebra: groups up to the Sylow theorems, then rings up to polynomial rings over a field. It is the foundation for [2.3 Abstract Algebra II](../../02-bridge/2.3-abstract-algebra-II/README.md) (fields and Galois theory, modules) and [3.3 Graduate Algebra](../../03-masters-core/3.3-graduate-algebra/README.md). Group theory also comes back in [3.4 Algebraic Topology](../../03-masters-core/3.4-algebraic-topology/README.md), through fundamental groups and covering-space actions.

## Prerequisites

- [1.1 Proofs, Logic and Sets](../1.1-proofs-logic-sets/README.md): equivalence relations and partitions, functions, induction, and basic number theory (divisibility, gcd, the division algorithm, modular arithmetic).
- [1.3 Linear Algebra](../1.3-linear-algebra/README.md) is helpful but not required. Matrix groups such as $GL_n$ and $SL_n$ are used as examples, and quotient vector spaces are a gentle preview of quotient groups. You can study 1.3 and 1.4 in parallel.

## Learning objectives

By the end of this module you should be able to:

1. Work fluently with the standard examples: $\mathbb{Z}_n$, $U(n)$, $D_n$, $S_n$, $A_n$, $GL_n(\mathbb{F})$, $Q_8$ and direct products.
2. Prove and apply Lagrange's theorem and its corollaries, including Fermat and Euler.
3. Use homomorphisms, normal subgroups and quotient groups, and state and prove the three isomorphism theorems and the correspondence theorem.
4. Use group actions: orbit–stabiliser, the class equation, Cayley's theorem, and conjugacy in $S_n$.
5. State the Sylow theorems and use them to classify small groups and to prove that groups of given orders are not simple.
6. State the structure theorem for finite abelian groups and list all abelian groups of a given order.
7. Work with rings, ideals, quotient rings and ring homomorphisms. Characterise prime and maximal ideals by their quotients.
8. Know the hierarchy fields ⊂ Euclidean domains ⊂ PIDs ⊂ UFDs ⊂ integral domains, with examples showing each inclusion is strict.
9. Work with polynomial rings: the division algorithm, irreducibility tests (rational root, Eisenstein, reduction mod $p$, Gauss's lemma), and the construction of fields as $F[x]/(f)$.

## Texts

**Primary (free, legal):** Thomas W. Judson, *Abstract Algebra: Theory and Applications* (annual editions; GNU Free Documentation License). Free online at <https://judsonbooks.org/aata/>. It is readable and has many exercises, plus optional Sage sections.

**Standard paid text:** David S. Dummit and Richard M. Foote, *Abstract Algebra*, 3rd edition (Wiley, 2004). This is the standard reference. It is denser than Judson, and you will keep using it in 2.3 and 3.3.

**Gentle supplement:** Charles C. Pinter, *A Book of Abstract Algebra*, 2nd edition (Dover). Short chapters and well-designed exercise sequences. Use it whenever Judson or Dummit & Foote feels too fast.

**Other options:** Michael Artin, *Algebra* (2nd edition, Pearson). This is the text behind the Gross lectures and MIT 18.701/18.702.

## Video lectures

- **Benedict Gross, Abstract Algebra (Harvard Math E-222, 38 lectures).** The full course is on YouTube: <https://www.youtube.com/playlist?list=PLelIK3uylPMGzHBuR3hLMHrYfMqWWsmx5>. It follows Artin and covers groups, group actions, symmetry, Sylow, rings and fields. Pick lectures by topic from the titles in the playlist. Some lectures on linear algebra and bilinear forms are optional for this module.
- **MIT 18.701 Algebra I (Michael Artin, Fall 2010):** <https://ocw.mit.edu/courses/18-701-algebra-i-fall-2010/>. This OCW version has problem sets and readings but **no lecture videos**. Use it for extra problems keyed to Artin.

## Week-by-week schedule

"J" = Judson chapter. "D&F" = Dummit & Foote section. "Gross" = lectures on that topic in the playlist.

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | J3 (Groups). D&F 1.1–1.7, 2.1. Pinter Ch. 3–5 if rusty. | Gross: opening lectures (groups, examples) | J3: 1–20, 30–40. Problems 1, 4. | Learn $D_n$ and $S_3$ concretely. They are your first non-abelian examples. |
| 2 | J4 (Cyclic groups), J5 (Permutation groups). D&F 2.2–2.5, 3.5. | Gross: cyclic groups, permutations | J4: 1–30. J5: 1–25. Problems 2, 3, 6. | Cycle notation, cycle type, and the sign homomorphism $S_n\to\lbrace\pm1\rbrace$. |
| 3 | J6 (Cosets, Lagrange), J9 (Isomorphisms, direct products). D&F 3.2. | Gross: cosets, Lagrange | J6: 1–20. J9: 1–30. Problems 5, 7. | Fermat and Euler follow from Lagrange applied to $U(n)$. |
| 4 | J10 (Normal subgroups, factor groups), J11 (Homomorphisms). D&F 3.1, 3.3. | Gross: homomorphisms, quotient groups | J10: 1–15. J11: 1–20. Problems 8, 9, 10, 11. | The first isomorphism theorem is the main tool for identifying quotients. Use it every time. |
| 5 | J14 (Group actions). D&F 4.1–4.3. | Gross: group actions, orbit–stabiliser, class equation | J14: 1–20. Problems 12, 13, 14. | Counting arguments: $\lvert G\rvert=\lvert\mathcal{O}_x\rvert\,\lvert G_x\rvert$. |
| 6 | J15 (Sylow), J13 (Structure of groups: finite abelian groups, statement only). D&F 4.5, 4.6 (simplicity of $A_5$), 5.2. | Gross: Sylow theorems | J15: 1–20. Problems 15, 16, 23, 24. | Practise the routine for "no simple group of order $n$". |
| 7 | J16 (Rings: definitions, ideals, homomorphisms, quotients). D&F 7.1–7.3. | Gross: rings | J16: 1–25. | Treat a ring as "a group with extra structure". Ideals play the role of normal subgroups. |
| 8 | J16 (prime and maximal ideals), J18 (Integral domains, field of fractions). D&F 7.4–7.6 (including the Chinese Remainder Theorem). | Gross: ideals, quotient rings | J16: 26–40. J18: 1–10. Problem 17. | $R/I$ is a field ⇔ $I$ maximal; $R/I$ is a domain ⇔ $I$ prime. |
| 9 | J18 (UFDs, PIDs, Euclidean domains). D&F 8.1–8.3. | Gross: factorisation in rings | J18: 11–25. D&F 8.1: 1–6, 8.3: 1–8. Problems 18, 19, 22, 25. | Know the counterexamples: $\mathbb{Z}[x]$ is a UFD but not a PID; $\mathbb{Z}[\sqrt{-5}]$ is not a UFD. |
| 10 | J17 (Polynomials). J21.1 and J22 (skim: finite fields). D&F 9.1–9.5. | Gross: polynomial rings, fields | J17: 1–25. D&F 9.4: 1–10. Problems 20, 21. Review. | Exit check: do problems 15, 16, 22–25 without notes. |

## Checklist of key definitions and theorems

**Groups**
- [ ] Group, subgroup, subgroup test, order of an element, order of a group
- [ ] Cyclic groups: every subgroup is cyclic; $\mathbb{Z}_n$ has exactly one subgroup of each order $d\mid n$
- [ ] $S_n$: cycle decomposition, cycle type, sign; $A_n$; conjugacy classes in $S_n$ = cycle types
- [ ] Cosets; Lagrange's theorem; index; Fermat's little theorem and Euler's theorem
- [ ] Homomorphism, kernel, image, isomorphism
- [ ] Normal subgroup (equivalent conditions); quotient group
- [ ] First, second and third isomorphism theorems; correspondence theorem
- [ ] Direct products; $\mathbb{Z}_m\times\mathbb{Z}_n\cong\mathbb{Z}_{mn}$ iff $\gcd(m,n)=1$
- [ ] Group action; orbit; stabiliser; orbit–stabiliser theorem; Burnside's counting lemma
- [ ] Cayley's theorem
- [ ] Conjugation action; centre; centraliser; class equation; $p$-groups have nontrivial centre
- [ ] Cauchy's theorem
- [ ] Sylow theorems I, II, III (statements); $n_p\equiv1\pmod p$, $n_p\mid m$
- [ ] Simplicity of $A_5$ (and $A_n$, $n\ge5$, statement)
- [ ] Structure theorem for finite abelian groups (statement)

**Rings**
- [ ] Ring, commutative ring, unit, zero divisor, integral domain, field, characteristic
- [ ] Subring, ideal, quotient ring, ring homomorphism; first isomorphism theorem for rings
- [ ] Prime and maximal ideals; quotient characterisations; maximal ⇒ prime
- [ ] Field of fractions of an integral domain
- [ ] Chinese Remainder Theorem
- [ ] Euclidean domain ⇒ PID ⇒ UFD; irreducible vs prime; in a PID nonzero prime ideals are maximal
- [ ] $\mathbb{Z}[i]$ is Euclidean; $\mathbb{Z}[\sqrt{-5}]$ is not a UFD
- [ ] $F[x]$ is a Euclidean domain; division algorithm; roots and linear factors
- [ ] Gauss's lemma; Eisenstein's criterion; reduction mod $p$
- [ ] $F[x]/(f)$ is a field iff $f$ is irreducible; constructing $\mathbb{F}_{p^n}$

## Exit criteria

Move on when you can do all of the following without notes:

1. Prove Lagrange's theorem, the first isomorphism theorem and the orbit–stabiliser theorem.
2. Given $n\le 60$, use Sylow theory and counting to decide whether a group of order $n$ must have a normal Sylow subgroup, and in easy cases classify the groups of order $n$.
3. List the conjugacy classes of $S_4$ and $A_4$ with their sizes, and explain why $A_4$ has no subgroup of order 6.
4. Prove that $R/I$ is a field iff $I$ is maximal, and use this to show $\mathbb{Q}[x]/(x^3-2)$ is a field.
5. Show that $\mathbb{Z}[x]$ is not a PID and that $\mathbb{Z}[\sqrt{-5}]$ is not a UFD.
6. Construct $\mathbb{F}_4$ and $\mathbb{F}_8$ explicitly as quotients of $\mathbb{F}_2[x]$.
7. Score at least 75% on [problems.md](problems.md) and complete at least two of the Challenge problems.
