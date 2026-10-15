# 3.2 Functional analysis

- **Phase:** 3 (Masters core), analysis track
- **Estimated length:** 12 weeks at ~6 hours/week (about 72 hours)
- **Prerequisites:**
  - [3.1 Measure and integration](../3.1-measure-integration/) (essential: $L^p$ spaces, Hölder, dominated convergence, Radon–Nikodym)
  - [2.1 Metric spaces and topology](../../02-bridge/2.1-metric-spaces-topology/) (completeness, compactness, Baire category theorem; product topology and Tychonoff's theorem for Banach–Alaoglu)
  - [1.3 Linear algebra](../../01-refresher/1.3-linear-algebra/) (inner products, adjoints, the finite-dimensional spectral theorem)
- **Recommended timing:** after [3.3 Graduate algebra](../3.3-graduate-algebra/), as explained in the [phase overview](../README.md).
- **Leads to:** PDE, operator algebras, spectral theory, harmonic analysis and probability electives in [Phase 4](../../04-electives/).

## Why this module

Functional analysis is linear algebra in infinite dimensions, made to work by adding topology. Three facts that are trivial in finite dimensions become theorems or fail outright: every linear map is continuous (false), the unit ball is compact (false), and every self-adjoint matrix is diagonalisable (true only for compact operators, in the form needed here). The module's main results (Hahn–Banach, the three Baire category theorems, Banach–Alaoglu, the spectral theorem for compact operators and the Fredholm alternative) are the standard toolkit of modern analysis.

## Learning objectives

By the end of the module you can:

1. Work with the standard Banach spaces ($\ell^p$, $c_0$, $C(K)$, $L^p$) and compute norms of operators between them.
2. Prove the projection theorem and the Riesz representation theorem for Hilbert spaces, and use orthonormal bases (Bessel, Parseval).
3. Prove the Hahn–Banach theorem (analytic and geometric forms) and use its corollaries.
4. Prove and apply the uniform boundedness principle, the open mapping theorem and the closed graph theorem.
5. Identify duals of standard spaces, decide reflexivity, and work with weak and weak* convergence; prove and use Banach–Alaoglu.
6. Prove that compact operators form a closed two-sided ideal, and prove the spectral theorem for compact self-adjoint operators.
7. State and prove the Fredholm alternative for $I-K$ with $K$ compact, and apply it to integral equations.

## Texts

**Primary (free, legal):** Sheldon Axler, *Measure, Integration & Real Analysis*, chapters 6 (Banach spaces), 8 (Hilbert spaces) and 10 (linear maps on Hilbert spaces). Open Access: <https://measure.axler.net/>. You already know the book from 3.1, which makes for a smooth start. It does not cover weak* topologies or Banach–Alaoglu; use Brezis for those.

**Primary (standard, paid):** Haïm Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations* (Springer Universitext, 2011). Chapters 1–6 are the core of this module: Hahn–Banach, Baire consequences, weak topologies and reflexivity, $L^p$, Hilbert spaces, compact operators. Excellent exercises.

**Gentle alternative (paid):** Erwin Kreyszig, *Introductory Functional Analysis with Applications* (Wiley, 1978; Wiley Classics reprint). Slow, very explicit, many worked examples. Avoids measure theory. Use it whenever Brezis is too terse.

**Supplementary:**

- Barbara D. MacCluer, *Elementary Functional Analysis* (Springer GTM 253, 2009). Short and readable, with a good treatment of operators on Hilbert space and weak topologies.
- Gerald B. Folland, *Real Analysis* (2nd ed.), chapter 5 (functional analysis) and §6.2 (duals of $L^p$), which continue directly from 3.1.

## Video lectures

- MIT 18.102 *Introduction to Functional Analysis* (Casey Rodriguez, Spring 2021), MIT OpenCourseWare: <https://ocw.mit.edu/courses/18-102-introduction-to-functional-analysis-spring-2021/>. Normed spaces, Hahn–Banach, Baire consequences, Hilbert spaces, compact and self-adjoint operators and the spectral theorem. You will already have watched the Lebesgue-measure lectures in 3.1; the first third and last third of the course belong here. Lecture notes and problem sets are on the same site.

## Week-by-week schedule

Abbreviations: **Ax** = Axler MIRA; **Br** = Brezis; **Kr** = Kreyszig; **Mc** = MacCluer; **N** = this module's [notes.md](notes.md); **P** = [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Normed and Banach spaces, examples, completeness via absolutely convergent series, finite-dimensional spaces, Riesz's lemma: Ax 6A–6C; Kr ch. 2 (2.1–2.5); N §1 | 18.102 opening lectures (normed spaces) | P1, P2, P7 | Review 2.1 compactness first if needed. |
| 2 | Bounded operators, $B(X,Y)$, dual spaces of $\ell^p$ and $c_0$: Ax 6C–6D; Kr 2.6–2.10; N §2 | 18.102 bounded linear operators | P3, P9 | |
| 3 | Inner product spaces, projection theorem, Riesz representation: Ax 8A–8B; Br 5.1–5.2; Kr 3.1–3.3, 3.8; N §3 | 18.102 Hilbert spaces | P4, P5 | |
| 4 | Orthonormal sets and bases, Bessel, Parseval, Gram–Schmidt, separability, Fourier series as an example: Ax 8C; Br 5.4; Kr 3.4–3.6; N §4 | 18.102 orthonormal bases, Fourier series | P21 | |
| 5 | Hahn–Banach, analytic and geometric forms: Br ch. 1; Ax 6D; Kr 4.1–4.3; N §5 | 18.102 Hahn–Banach | P8 | Zorn's lemma appears here; make sure you can apply it cleanly. |
| 6 | Baire category theorem, uniform boundedness, open mapping, closed graph: Br ch. 2; Ax 6E; Kr 4.7, 4.12–4.13; N §6 | 18.102 Baire and its consequences | P10, P11, P12 | Key week. Prove all three theorems without notes before moving on. |
| 7 | Duals and reflexivity; dual of $L^p$ (from 3.1): Br 3.5, 4.3; Folland 6.2; N §7 | — | P22 | Catch-up week if behind. |
| 8 | Weak and weak* topologies, Banach–Alaoglu, Mazur, weak compactness in reflexive spaces: Br 3.1–3.4; Mc (weak topologies chapter); N §8 | — | P6, P13, P14 | The hardest conceptual week. |
| 9 | Adjoints; self-adjoint, normal, unitary operators; spectrum of bounded operators, spectral radius: Ax 10A–10B; Kr 3.9–3.10, 7.1–7.5; N §9 | 18.102 adjoints, spectrum | P18, P20, P23 | |
| 10 | Compact operators: ideal property, limits of finite-rank operators, Hilbert–Schmidt integral operators: Ax 10C; Br 6.1; Kr 8.1–8.3; N §10 | 18.102 compact operators | P15, P16 | |
| 11 | Spectral theorem for compact self-adjoint operators: Ax 10D; Br 6.4; N §11 | 18.102 spectral theorem | P17 | |
| 12 | Fredholm alternative, Riesz–Schauder theory, application to integral equations: Br 6.2–6.3; Kr 8.5–8.7; N §12; review | 18.102 Fredholm theory / final lectures | P19; redo all Qualifying-exam level problems | Leave one session for a closed-book self-test. |

## Checklist of key definitions and theorems

- [ ] Normed space, Banach space; $\ell^p$, $c_0$, $C(K)$, $L^p$ are Banach
- [ ] Complete iff every absolutely convergent series converges
- [ ] All norms on a finite-dimensional space are equivalent; finite-dimensional subspaces are closed
- [ ] Riesz's lemma; closed unit ball compact iff finite-dimensional
- [ ] Bounded = continuous for linear maps; operator norm; $B(X,Y)$ is Banach when $Y$ is
- [ ] Inner product space, Cauchy–Schwarz, parallelogram law, polarisation
- [ ] Projection theorem (closest point in closed convex set); $H=M\oplus M^\perp$
- [ ] Riesz representation theorem for $H^*$
- [ ] Orthonormal basis; Bessel's inequality; Parseval's identity; every separable Hilbert space has a countable orthonormal basis
- [ ] Hahn–Banach (sublinear-functional version); norming functionals; separation of convex sets
- [ ] Baire category theorem
- [ ] Uniform boundedness principle (Banach–Steinhaus)
- [ ] Open mapping theorem; bounded inverse theorem
- [ ] Closed graph theorem
- [ ] Dual spaces: $(\ell^p)^*=\ell^q$, $c_0^*=\ell^1$, $(L^p)^*=L^q$ for $1\le p<\infty$ (σ-finite)
- [ ] Canonical embedding $X\to X^{**}$; reflexivity; $L^p$ reflexive for $1<p<\infty$
- [ ] Weak and weak* topologies; weakly convergent sequences are bounded
- [ ] Banach–Alaoglu theorem; sequential version for separable $X$
- [ ] Mazur's theorem: closed convex sets are weakly closed
- [ ] Adjoint operator; $\ker T^*=(\mathrm{ran}\,T)^\perp$
- [ ] Spectrum: non-empty and compact; spectral radius formula; point/continuous/residual spectrum; shift operators
- [ ] Compact operators: closed ideal; norm limits of finite-rank operators (in Hilbert space); Hilbert–Schmidt operators
- [ ] Spectrum of a compact operator: eigenvalues of finite multiplicity accumulating only at $0$
- [ ] Spectral theorem for compact self-adjoint operators
- [ ] Fredholm alternative

## Exit criteria

You are ready to move on when you can:

1. Prove without notes: the projection theorem, Riesz representation, Hahn–Banach (real case, with Zorn), the uniform boundedness principle, the open mapping theorem, Banach–Alaoglu (via Tychonoff), and the spectral theorem for compact self-adjoint operators.
2. Give from memory an example of: an unbounded linear functional on a normed space; a bounded sequence in a Hilbert space with no norm-convergent subsequence; a weakly but not strongly convergent sequence; a bounded operator with no eigenvalues; a compact operator with no non-zero eigenvalues; a non-reflexive Banach space.
3. Solve at least 3 of the 5 Qualifying-exam level problems in [problems.md](problems.md) in 45 minutes each, closed book.
4. Tick every item in the checklist above in [PROGRESS.md](../../PROGRESS.md).
