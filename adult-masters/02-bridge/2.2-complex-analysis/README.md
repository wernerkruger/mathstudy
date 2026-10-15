# 2.2 Complex Analysis

**Phase:** 2 (Bridge)
**Estimated length:** 10 weeks at ~6 hours/week (about 60 hours)

## Prerequisites

- [2.1 Metric spaces and topology](../2.1-metric-spaces-topology/): open and connected sets, compactness, uniform convergence, completeness.
- [1.5 Multivariable calculus](../../01-refresher/1.5-multivariable-calculus/): partial derivatives, line integrals, Green's theorem.
- [1.2 Real analysis I](../../01-refresher/1.2-real-analysis-I/): series, uniform convergence, Weierstrass M-test.

## Why this module

Complex analysis is the first place where a mild-looking hypothesis (one complex derivative) produces enormous rigidity: infinite differentiability, power series, the maximum principle, the identity theorem. It is a standard Masters qualifying subject, and it feeds functional analysis (holomorphic functional calculus, Hardy spaces), number theory (the zeta function), Riemann surfaces and algebraic geometry.

## Learning objectives

By the end you should be able to:

1. Define holomorphic functions, derive and use the Cauchy–Riemann equations, and work with power series (radius of convergence, term-by-term differentiation).
2. Compute contour integrals and prove Cauchy's theorem (Goursat's version on triangles, then for discs and simply connected domains).
3. Prove Cauchy's integral formula and derive from it: analyticity of holomorphic functions, Cauchy's estimates, Liouville's theorem, the fundamental theorem of algebra, Morera's theorem, the identity theorem and the maximum modulus principle.
4. Expand functions in Laurent series, classify isolated singularities (removable, pole, essential) and state Casorati–Weierstrass.
5. Use the residue theorem to evaluate real integrals (rational functions, trigonometric integrals, Fourier-type integrals with Jordan's lemma, keyhole contours).
6. Use the argument principle and Rouché's theorem to count zeros.
7. Work with conformal maps and Möbius transformations, prove the Schwarz lemma, find all automorphisms of the disc and upper half-plane, and state the Riemann mapping theorem.

## Texts

**Primary (free):** Matthias Beck, Gerald Marchesi, Dennis Pixton, Lucas Sabalka, *A First Course in Complex Analysis* (open textbook, CC BY). Book page with free PDF and online version: <https://matthbeck.github.io/complex.html> (verified). It is gentle and complete up to the residue theorem; use Stein–Shakarchi for conformal mapping and the Riemann mapping theorem.

**Primary (standard, paid):** Elias M. Stein and Rami Shakarchi, *Complex Analysis* (Princeton Lectures in Analysis II, Princeton University Press, 2003). Chapters 1–3 and 8 are the core of this module.

**Supplementary:**

- Tristan Needham, *Visual Complex Analysis* (Oxford, 1997; 25th anniversary edition 2023). Read alongside for geometric intuition, especially on Möbius transformations, the argument principle and conformality.
- Lars Ahlfors, *Complex Analysis*, 3rd edition (McGraw-Hill, 1979). The classic graduate text; useful for a second pass.
- Jeremy Orloff's lecture notes for MIT 18.04 (below) contain many worked residue computations.

## Video lectures and online courses

- Petra Bonfert-Taylor, *Introduction to Complex Analysis* (Wesleyan University, Coursera; free to audit). Covers complex numbers through the residue theorem, including Möbius transformations and a statement of the Riemann mapping theorem. <https://www.coursera.org/learn/complex-analysis> (verified).
- MIT OpenCourseWare 18.04 *Complex Variables with Applications* (Spring 2018, Jeremy Orloff): lecture notes, problem sets with solutions and exams. <https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/> (verified).

## Week-by-week schedule

SS = Stein–Shakarchi; BMPS = Beck, Marchesi, Pixton, Sabalka; N = Needham; BT = Bonfert-Taylor Coursera module. Problem numbers refer to [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|------|---------|--------|-----------|-------|
| 1 | SS 1.1–1.2; BMPS Ch. 1–2 | BT Modules 1–3 | Problems 1, 2 | Complex differentiability; Cauchy–Riemann; holomorphic ⇒ CR, and CR + continuous partials ⇒ holomorphic. |
| 2 | SS 1.3 (power series); BMPS Ch. 3 and Ch. 7; N Ch. 2–3 | BT Module 6 (power series) | Problems 3, 6 | Radius of convergence (Cauchy–Hadamard); $e^z$, $\log z$ and branches; first look at Möbius maps. |
| 3 | SS 2.1–2.3 (Goursat, primitives, Cauchy in a disc, evaluating integrals); BMPS Ch. 4 | BT Module 5 (videos 1–3) | Problem 4 | Prove Goursat's theorem in full. |
| 4 | SS 2.4 (Cauchy integral formulas); BMPS Ch. 5 | BT Module 5 (videos 4–5) | Problems 7, 8 | Cauchy estimates, Liouville, fundamental theorem of algebra, Morera. |
| 5 | SS 2.5 (sequences of holomorphic functions, Morera); SS 3.4 (open mapping, maximum modulus); BMPS Ch. 8 (Taylor series) | — | Problems 17, 18, 23 | Identity theorem, maximum modulus, uniform limits of holomorphic functions. |
| 6 | SS 3.1, 3.3 (zeros, poles, singularities); BMPS Ch. 8 (Laurent series), Ch. 9 | BT Module 7 (videos 1–2) | Problems 5, 13 | Laurent series on annuli; Riemann's removable singularity theorem; Casorati–Weierstrass. |
| 7 | SS 3.2 (residue formula) and examples in SS 2.3; BMPS Ch. 9 | BT Module 7 (videos 3–6) | Problems 9, 10, 11, 12 | Standard contour families: semicircle, unit circle, indented contour, keyhole. |
| 8 | SS 3.4–3.6 (argument principle, Rouché, homotopy and simply connected domains, logarithm); N Ch. 7 | — | Problems 14, 15, 19, 21 | Counting zeros; general Cauchy theorem via homotopy. |
| 9 | SS 8.1–8.2 (conformal equivalence, Schwarz lemma, automorphisms of disc and half-plane); N Ch. 3 (Möbius) | BT Module 4 | Problems 16, 20, 22 | Cross-ratio; Möbius maps send circles/lines to circles/lines. |
| 10 | SS 8.3 (Riemann mapping theorem: read statement and the outline via Montel's theorem) | BT Module 4 (Riemann mapping video) | Review all Challenge problems | Self-test against exit criteria. |

## Checklist of key definitions and theorems

- [ ] Complex derivative; holomorphic on an open set; Cauchy–Riemann equations
- [ ] Power series, radius of convergence (Cauchy–Hadamard), term-by-term differentiation
- [ ] $e^z$, trigonometric functions, branches of $\log z$ and $z^\alpha$
- [ ] Contour integral; fundamental theorem for contour integrals (primitives)
- [ ] Goursat's theorem; Cauchy's theorem in a disc and in simply connected domains
- [ ] Cauchy integral formula (and for derivatives); Cauchy estimates
- [ ] Holomorphic ⇒ analytic (power series locally)
- [ ] Liouville's theorem; fundamental theorem of algebra
- [ ] Morera's theorem; uniform limits of holomorphic functions are holomorphic
- [ ] Identity theorem (zeros are isolated); analytic continuation (idea)
- [ ] Maximum modulus principle; open mapping theorem; Schwarz lemma
- [ ] Laurent series; classification of isolated singularities; Riemann's removable singularity theorem; Casorati–Weierstrass
- [ ] Residue theorem; computing residues at poles
- [ ] Jordan's lemma; evaluation of real integrals by residues
- [ ] Argument principle; Rouché's theorem
- [ ] Conformal maps; Möbius transformations; cross-ratio
- [ ] Automorphisms of the disc and the upper half-plane
- [ ] Riemann mapping theorem (statement; outline via Montel)

## Exit criteria

You are ready to move on when you can, without notes:

1. Prove Cauchy's integral formula for a disc from Goursat's theorem, and derive Liouville's theorem and the fundamental theorem of algebra.
2. Evaluate, in under 20 minutes each, an integral of each standard type: rational function on $\mathbb{R}$, trigonometric integral over $[0,2\pi]$, Fourier-type integral with Jordan's lemma, and a keyhole integral.
3. Count the zeros of a given polynomial in a disc or annulus with Rouché's theorem.
4. Prove the Schwarz lemma and use it to determine $\mathrm{Aut}(\mathbb{D})$.
5. Solve at least 3 of the 4 Challenge problems in [problems.md](problems.md) on your own.
