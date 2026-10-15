# Elective: Partial Differential Equations

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

A first graduate course in PDE following Evans: the four classical linear equations (transport, Laplace, heat, wave) with explicit solution formulas and qualitative properties, then Sobolev spaces and the modern theory of second-order elliptic equations (weak solutions, Lax–Milgram, regularity, maximum principles, eigenvalues). This is where measure theory and functional analysis pay off most directly.

## Prerequisites

- [3.1 Measure & integration](../../03-masters-core/3.1-measure-integration/) — **essential**: $L^p$ spaces, dominated convergence, convolution and mollifiers.
- [3.2 Functional analysis](../../03-masters-core/3.2-functional-analysis/) — **essential** for Weeks 9–15: Hilbert spaces, Riesz representation, weak convergence, compact operators and the Fredholm alternative.
- [2.4 Analysis in $\mathbb{R}^n$](../../02-bridge/2.4-analysis-in-Rn/) — divergence theorem, change of variables.
- [3.5 Smooth manifolds](../../03-masters-core/3.5-smooth-manifolds/) — helpful (Stokes, divergence theorem) but not required.

## Texts

**Primary (paid):** Lawrence C. Evans, *Partial Differential Equations*, 2nd ed., AMS Graduate Studies in Mathematics 19 (2010). The standard text; this schedule follows Chapters 2, 5 and 6.

**Free supplement:** MIT OpenCourseWare 18.152 *Introduction to Partial Differential Equations* (Jared Speck, Fall 2011): lecture notes, problem sets and exams with solutions for the classical equations (Weeks 1–8), <https://ocw.mit.edu/courses/18-152-introduction-to-partial-differential-equations-fall-2011/>.

**Supplementary:**
- Fritz John, *Partial Differential Equations* (Springer) — classical, strong on characteristics and the wave equation.
- Haïm Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations* (Springer Universitext) — excellent for Weeks 9–15; links directly to 3.2.
- Gerald B. Folland, *Introduction to Partial Differential Equations* (Princeton) — distributions and Fourier methods.

## Video lectures

I couldn't verify a complete video lecture series that follows Evans. MIT 18.152 above provides written lecture notes in place of video. If you want video, search for recorded graduate PDE courses that follow Evans and check that the topic list matches before committing time.

## 16-week schedule

| Week | Reading (Evans unless noted) | Exercises | Notes |
|---|---|---|---|
| 1 | Ch. 1 (overview); §2.1 transport equation | Evans Ch. 2: 1, 2 | Classify PDE: linear/nonlinear, order, type. |
| 2 | §2.2.1–2.2.2 Laplace: fundamental solution, mean value property | Ch. 2: 3, 4 | Derive $\Phi(x)$ and solve Poisson's equation. |
| 3 | §2.2.3–2.2.5 Laplace: maximum principle, regularity, Liouville, Harnack | Ch. 2: 5, 6, 8 | Harmonic functions are analytic. |
| 4 | §2.2.4 Green's functions, Poisson's formula for the ball; energy methods | Ch. 2: 9, 10 | Green's function for half-space and ball. |
| 5 | §2.3 heat equation: fundamental solution, mean value, maximum principle, uniqueness | Ch. 2: 11, 12, 14 | Infinite speed of propagation; Tychonoff's non-uniqueness example. |
| 6 | §2.4 wave equation: d'Alembert, spherical means, Kirchhoff, Poisson, Duhamel | Ch. 2: 17, 19 | Huygens' principle in odd dimensions. |
| 7 | §2.4.3 energy methods, finite propagation speed; MIT 18.152 notes on wave equation | Ch. 2: 20, 21 | Domain of dependence via energy. |
| 8 | Consolidation: MIT 18.152 midterm-style problems; Evans §4.3 (Fourier transform, light) | Two 18.152 exams | Fourier transform solution of heat equation. |
| 9 | §5.1–5.3 Hölder spaces, Sobolev spaces, weak derivatives, approximation by smooth functions | Ch. 5: 1, 2, 4 | Meyers–Serrin. |
| 10 | §5.4–5.5 extensions, traces | Ch. 5: 6, 8 | Why boundary values make sense in $H^1$. |
| 11 | §5.6 Sobolev inequalities (Gagliardo–Nirenberg–Sobolev, Morrey) | Ch. 5: 11, 13, 15 | Scaling determines exponents. |
| 12 | §5.7–5.8 compactness (Rellich–Kondrachov), Poincaré, difference quotients | Ch. 5: 16, 18 | Compactness drives existence theory. |
| 13 | §6.1–6.2 weak solutions, Lax–Milgram, energy estimates, Fredholm alternative | Ch. 6: 1, 2, 4 | The Hilbert-space approach to $-\Delta u=f$. |
| 14 | §6.3 interior and boundary regularity | Ch. 6: 5, 6 | Difference quotient technique. |
| 15 | §6.4–6.5 maximum principles (weak, strong), Harnack; eigenvalues of symmetric elliptic operators | Ch. 6: 9, 12, 13 | Rayleigh quotient; principal eigenvalue is simple. |
| 16 | Review; mock exam; capstone scoping | — | — |

(Exercise numbers refer to the 2nd edition's end-of-chapter problems; if your edition differs, choose problems on the same topics.)

## Key theorems checklist

- [ ] Fundamental solution of Laplace's equation; solution of Poisson's equation
- [ ] Mean value property and its converse
- [ ] Strong maximum principle; uniqueness for Dirichlet problem
- [ ] Regularity of harmonic functions; Liouville; Harnack inequality
- [ ] Green's function; Poisson's formula for the ball
- [ ] Heat kernel; solution of the Cauchy problem; maximum principle for the heat equation
- [ ] d'Alembert, Kirchhoff and Poisson formulas; Duhamel's principle
- [ ] Energy methods: uniqueness, finite propagation speed
- [ ] Weak derivatives; $W^{k,p}$ as Banach spaces; Meyers–Serrin
- [ ] Extension and trace theorems
- [ ] Gagliardo–Nirenberg–Sobolev; Morrey; general Sobolev embedding
- [ ] Rellich–Kondrachov compactness; Poincaré inequality
- [ ] Lax–Milgram; energy estimates; Fredholm alternative for elliptic operators
- [ ] Interior and boundary $H^2$ regularity; smoothness of weak solutions
- [ ] Weak and strong maximum principles for elliptic operators
- [ ] Spectral theorem for symmetric elliptic operators; principal eigenvalue

## Exit criteria

1. Derive the fundamental solutions of the Laplace and heat equations, and prove the mean value property.
2. Solve the 1D and 3D wave equations explicitly and explain Huygens' principle.
3. Prove the Poincaré inequality on a bounded domain using Rellich–Kondrachov.
4. Prove existence and uniqueness of a weak solution to $-\Delta u+cu=f$ in $H^1_0(U)$ via Lax–Milgram.
5. Explain, with the key estimate, why weak solutions with smooth data are smooth in the interior.
6. Solve 4 of 6 qualifying-style PDE problems in 3 hours.
