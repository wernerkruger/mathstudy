# 2.4 Analysis in $\mathbb R^n$

**Phase:** 2 (Bridge)
**Estimated length:** 10 weeks at ~6 hours/week (about 60 hours)

## Prerequisites

- [2.1 Metric spaces and topology](../2.1-metric-spaces-topology/): completeness, compactness, contraction mapping theorem, uniform continuity.
- [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/): linear maps, determinants, operator norms (or be ready to learn them in week 5).
- [1.5 Multivariable calculus](../../01-refresher/1.5-multivariable-calculus/): partial derivatives, multiple integrals, line and surface integrals, Green's and Stokes' theorems at the computational level.

## Why this module

This is the rigorous version of multivariable calculus, plus the function-space ideas that measure theory and functional analysis are built on. Arzelà–Ascoli and Stone–Weierstrass are standard Masters tools; the inverse and implicit function theorems are the foundation of smooth manifolds (module [3.5](../../03-masters-core/3.5-smooth-manifolds/)); Riemann integration in $\mathbb R^n$ shows exactly what Lebesgue integration (module [3.1](../../03-masters-core/3.1-measure-integration/)) improves.

## Learning objectives

By the end you should be able to:

1. Distinguish pointwise and uniform convergence; know when limits, integrals and derivatives can be interchanged; use the Weierstrass M-test.
2. State and prove the Arzelà–Ascoli theorem and use it to show sets of functions are (relatively) compact.
3. State and prove the Stone–Weierstrass theorem (real version) and apply it.
4. Use the contraction mapping theorem, including to prove existence and uniqueness for ODEs (Picard–Lindelöf).
5. Treat the derivative of $f:\mathbb R^n\to\mathbb R^m$ as a linear map; prove the chain rule, the mean value inequality, and that continuous partial derivatives imply differentiability.
6. Prove the inverse function theorem and derive the implicit function theorem; use them (including Lagrange multipliers).
7. Define the Riemann integral on rectangles and Jordan-measurable sets in $\mathbb R^n$, state Lebesgue's criterion, prove and use Fubini's theorem for continuous functions.
8. State the change of variables formula, sketch its proof, and use it (polar, spherical, linear changes).
9. Work with differential forms: wedge product, exterior derivative, pullback, integration over chains, and the statement of the generalised Stokes theorem.

## Texts

**Primary (free):** Jiří Lebl, *Basic Analysis II: Introduction to Real Analysis, Volume II* (free online and PDF; CC BY-NC-SA). Chapters on several variables, the inverse and implicit function theorems, multivariable Riemann integration, change of variables, Arzelà–Ascoli and Stone–Weierstrass. Volume I covers uniform convergence and the fixed point theorem. Both volumes: <https://www.jirka.org/ra/> (verified).

**Primary (standard, paid):** Charles C. Pugh, *Real Mathematical Analysis*, 2nd edition (Springer UTM, 2015). Chapter 4 (function spaces: uniform convergence, Arzelà–Ascoli, Stone–Weierstrass, contractions and ODEs) and Chapter 5 (multivariable calculus: derivative, inverse and implicit functions, multiple integrals, differential forms and Stokes).

**Supplementary:**

- Walter Rudin, *Principles of Mathematical Analysis*, 3rd edition (McGraw-Hill, 1976). Chapter 7 (sequences and series of functions), Chapter 9 (functions of several variables), Chapter 10 (integration of differential forms). Terse and standard; many qualifying exams draw on its exercises.
- Michael Spivak, *Calculus on Manifolds* (Benjamin, 1965; reprinted by Westview/CRC). Chapters 2–4: differentiation, integration (Fubini, partitions of unity, change of variables), and integration on chains with Stokes' theorem. Short and elegant; the best preview of module 3.5.

## Video lectures and online courses

- MIT OpenCourseWare 18.100A *Real Analysis* (Fall 2020, Casey Rodriguez), with full video lectures; it uses Lebl's book, and its last few lectures cover sequences of functions and uniform convergence (week 1). <https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/> (verified).
- MIT OpenCourseWare 18.100B *Analysis I* (Fall 2010): uniform convergence, interchange of limits, with problem sets and solutions. <https://ocw.mit.edu/courses/18-100b-analysis-i-fall-2010/> (verified).
- MIT OpenCourseWare 18.101 *Analysis II* (Fall 2005, Victor Guillemin): lecture notes on multivariable calculus, the inverse function theorem, integration, and differential forms on $\mathbb R^n$ and manifolds. <https://ocw.mit.edu/courses/18-101-analysis-ii-fall-2005/> (verified). No videos.
- Francis Su, *Real Analysis* lectures (Harvey Mudd College, 2010), available on YouTube. Follows Rudin; the later lectures on sequences of functions, equicontinuity and Stone–Weierstrass suit weeks 1–3. Search YouTube for "Francis Su real analysis".

## Week-by-week schedule

P = Pugh; R = Rudin; S = Spivak; L1/L2 = Lebl *Basic Analysis* I/II. Problem numbers refer to [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|------|---------|--------|-----------|-------|
| 1 | P Ch. 4 (uniform convergence; series of functions); R Ch. 7 (first half); L1 Ch. 6 | Su lectures on uniform convergence; 18.100A final lectures | Problems 1, 2, 3 | Interchange of limits with integrals and derivatives; M-test; $C(K)$ complete. |
| 2 | P Ch. 4 (equicontinuity, Arzelà–Ascoli); R Ch. 7 (equicontinuous families); L2 Ch. 11 (equicontinuity) | Su lecture on Arzelà–Ascoli | Problems 7, 8 | Prove Arzelà–Ascoli by diagonal argument. |
| 3 | P Ch. 4 (Stone–Weierstrass); R Ch. 7 (end); L2 Ch. 11 (Stone–Weierstrass) | Su lecture on Stone–Weierstrass | Problems 9, 10, 22 | Prove $\lvert x\rvert$ is a uniform limit of polynomials on $[-1,1]$ first. |
| 4 | P Ch. 4 (contractions, ODEs); L1 (fixed point theorem; Picard's theorem) | — | Problems 11, 12 | Picard–Lindelöf; Picard iteration examples. |
| 5 | P Ch. 5 (linear algebra, derivatives); R Ch. 9 (first part); S Ch. 2; L2 Ch. 8 | 18.101 notes | Problems 4, 5, 6, 13 | Operator norm; chain rule; mean value inequality; $C^1$ ⇔ continuous partials. |
| 6 | P Ch. 5 (inverse function theorem); R Ch. 9 (contraction principle, inverse function theorem); S Ch. 2 | — | Problems 14, 21 | Write out the full proof of the inverse function theorem from memory. |
| 7 | P Ch. 5 (implicit function theorem, rank theorem, higher derivatives); R Ch. 9 (implicit function theorem, rank theorem) | — | Problems 15, 16 | Lagrange multipliers; symmetry of second derivatives; Taylor's theorem. |
| 8 | S Ch. 3 (integration, Fubini); L2 Ch. 10 (Riemann integral, iterated integrals, null sets, Lebesgue criterion); P Ch. 5 (multiple integrals) | — | Problem 17 | Lebesgue criterion (statement); Jordan content. |
| 9 | S Ch. 3 (partitions of unity, change of variables); L2 Ch. 10 (change of variables); R Ch. 10 (change of variables) | 18.101 notes | Problems 18, 19 | Read one complete proof of change of variables; know the sketch. |
| 10 | S Ch. 4 (forms, chains, Stokes); P Ch. 5 (forms, Stokes); R Ch. 10 (forms, Stokes, closed and exact forms) | 18.101 notes on forms | Problems 20, 23 | $d^2 = 0$; pullback commutes with $d$; Stokes on chains; closed vs exact. |

## Checklist of key definitions and theorems

- [ ] Pointwise vs uniform convergence; uniform limit of continuous functions is continuous; $C(K)$ with sup norm is a Banach space
- [ ] Interchange of limit and integral (uniform convergence on $[a,b]$); term-by-term differentiation theorem
- [ ] Weierstrass M-test
- [ ] Equicontinuity; Arzelà–Ascoli theorem
- [ ] Weierstrass approximation theorem; Stone–Weierstrass theorem (real; complex with conjugation)
- [ ] Contraction mapping theorem; Picard–Lindelöf theorem
- [ ] Operator norm; derivative as a linear map; chain rule; Jacobian matrix
- [ ] Continuous partial derivatives ⇒ differentiable ($C^1$)
- [ ] Mean value inequality $|f(b) - f(a)|\le\sup\|Df\|\,|b-a|$ on convex sets
- [ ] Inverse function theorem (with proof)
- [ ] Implicit function theorem (derived from inverse function theorem)
- [ ] Rank theorem (statement); Lagrange multipliers
- [ ] Second derivative as a bilinear map; symmetry (Clairaut/Schwarz); Taylor's theorem in several variables
- [ ] Riemann integral on a rectangle; Jordan measurable sets; Lebesgue criterion (statement)
- [ ] Fubini's theorem (Riemann version)
- [ ] Change of variables formula (statement and proof sketch)
- [ ] Differential forms on $\mathbb R^n$: wedge product, $d$, $d^2 = 0$, pullback
- [ ] Integration of forms over chains; generalised Stokes $\int_{\partial c}\omega = \int_c d\omega$
- [ ] Closed vs exact forms; Poincaré lemma (statement); $d\theta$ on $\mathbb R^2\setminus\lbrace0\rbrace$

## Exit criteria

You are ready to move on when you can, without notes:

1. Prove Arzelà–Ascoli and Stone–Weierstrass (real version, given that $\lvert x\rvert$ is a uniform limit of polynomials).
2. Prove the inverse function theorem from the contraction mapping theorem, and deduce the implicit function theorem.
3. Prove Fubini's theorem for continuous functions on a rectangle, and give an example where the iterated integrals of a function on a square differ.
4. Explain, with a sketch, why the change of variables formula has $|\det Dg|$ in it.
5. Compute $d\omega$ and $\int_\gamma\omega$ for simple 1- and 2-forms, and explain why $\frac{-y\,dx + x\,dy}{x^2+y^2}$ is closed but not exact.
6. Solve at least 3 of the 4 Challenge problems in [problems.md](problems.md) on your own.
