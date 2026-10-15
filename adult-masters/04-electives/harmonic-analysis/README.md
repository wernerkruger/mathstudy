# Elective: Harmonic Analysis

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Fourier analysis from the classical to the modern: convergence and summability of Fourier series, the Fourier transform on $\mathbb{R}^n$ and $L^2$ theory, then real-variable methods — interpolation, the Hardy–Littlewood maximal function, and the Hilbert transform and Calderón–Zygmund singular integrals. The emphasis moves from formulas to estimates, which is how the subject is used in PDE, number theory and probability.

## Prerequisites

- [3.1 Measure & integration](../../03-masters-core/3.1-measure-integration/) — **essential**: Lebesgue integral, $L^p$ spaces, Fubini, convolution, density of smooth functions.
- [3.2 Functional analysis](../../03-masters-core/3.2-functional-analysis/) — **essential**: Hilbert spaces, Hahn–Banach, duality of $L^p$, Banach–Steinhaus, distributions if covered.
- [2.2 Complex analysis](../../02-bridge/2.2-complex-analysis/) — for the Poisson kernel, Hardy spaces and Riesz–Thorin.

## Texts

**Primary (paid):** Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction* (Princeton Lectures in Analysis I). Weeks 1–5: concrete and gentle, good for re-entry.

**Primary (paid):** Yitzhak Katznelson, *An Introduction to Harmonic Analysis*, 3rd ed. (Cambridge). The classic graduate text; Weeks 3–10.

**Free notes:** Terence Tao, Math 247A *Fourier Analysis* lecture notes (UCLA, Fall 2006), with exercises: <https://www.math.ucla.edu/~tao/247a.1.06f/>. Notes 1–4 cover $L^p$ theory and interpolation, maximal functions and Calderón–Zygmund theory (Weeks 9–15).

**Supplementary:**
- Javier Duoandikoetxea, *Fourier Analysis* (AMS Graduate Studies in Mathematics 29) — the clearest text for maximal functions and singular integrals.
- Loukas Grafakos, *Classical Fourier Analysis* (Springer GTM 249) — encyclopaedic reference.
- Elias M. Stein and Rami Shakarchi, *Real Analysis* (Princeton Lectures III) — for the maximal function and differentiation theorems.

## Video lectures

I couldn't verify a complete video lecture series at this level. Tao's notes above are the closest free equivalent to lectures. If you want video, search for recorded courses on "harmonic analysis" or "Fourier analysis" at the graduate level and check that the syllabus covers maximal functions and singular integrals.

## 16-week schedule

| Week | Reading | Exercises | Notes |
|---|---|---|---|
| 1 | Stein–Shakarchi Ch. 2 (basic properties of Fourier series, convolution, good kernels) | S–S Ch. 2: 5 exercises | Dirichlet vs Fejér vs Poisson kernels. |
| 2 | Stein–Shakarchi Ch. 3 (convergence: mean-square convergence, Parseval, a continuous function with divergent Fourier series) | S–S Ch. 3: 5 exercises | Uniform boundedness behind divergence. |
| 3 | Katznelson Ch. I §§1–4 (Fourier coefficients, summability in homogeneous Banach spaces) | Katznelson I: 4 exercises | Fejér's theorem in general function spaces. |
| 4 | Katznelson Ch. I §§5–8 (pointwise convergence, Fourier coefficients of $L^1$, Riemann–Lebesgue) | 4 exercises | Decay of coefficients vs smoothness. |
| 5 | Katznelson Ch. II (convergence of Fourier series in norm and pointwise; conjugate function intro) | 4 exercises | $L^p$ convergence is equivalent to boundedness of the conjugate function. |
| 6 | Stein–Shakarchi Ch. 5 / Katznelson Ch. VI §§1–3 (Fourier transform on $\mathbb{R}$: $L^1$ theory, Schwartz space, inversion) | 4 exercises | Gaussian is its own transform. |
| 7 | Katznelson Ch. VI §§3–5 (Plancherel, $L^2$ theory); Stein–Shakarchi Ch. 6 ($\mathbb{R}^d$) | 4 exercises | Heisenberg uncertainty principle. |
| 8 | Poisson summation formula, theta function, applications (Stein–Shakarchi Ch. 5 §3, Ch. 4 equidistribution) | 4 exercises | Weyl equidistribution theorem. |
| 9 | Tao Notes 1 (estimates, $L^p$ theory, layer-cake, weak $L^p$) | Tao Notes 1: 3 exercises | The language of estimates. |
| 10 | Tao Notes 2 (Riesz–Thorin and Marcinkiewicz interpolation; Hausdorff–Young; Young's inequality) | Tao Notes 2: 3 exercises | Hausdorff–Young from Riesz–Thorin. |
| 11 | Tao Notes 3 / Duoandikoetxea Ch. 2 (Hardy–Littlewood maximal function, Vitali covering, Lebesgue differentiation) | 3 exercises | Weak (1,1) bound. |
| 12 | Duoandikoetxea Ch. 3 / Katznelson Ch. III (Hilbert transform; $L^p$ boundedness; M. Riesz theorem) | 3 exercises | Conjugate function on the circle ↔ Hilbert transform on the line. |
| 13 | Tao Notes 4 / Duoandikoetxea Ch. 5 (Calderón–Zygmund decomposition; singular integrals) | 3 exercises | CZ decomposition proves weak (1,1). |
| 14 | Duoandikoetxea Ch. 5 cont. (Riesz transforms; applications to PDE estimates $\|\partial_i\partial_ju\|_p\lesssim\|\Delta u\|_p$) | 3 exercises | Links to the PDE elective. |
| 15 | Survey: Littlewood–Paley theory (Duoandikoetxea Ch. 8 or Tao Notes 5 intro); review | 2 exercises | What square functions measure. |
| 16 | Review; mock exam; capstone scoping | — | — |

## Key theorems checklist

- [ ] Good kernels and approximate identities; Fejér's theorem
- [ ] Parseval/Plancherel on the circle; Riesz–Fischer
- [ ] Riemann–Lebesgue lemma; Dini's criterion
- [ ] Existence of a continuous function whose Fourier series diverges at a point (uniform boundedness)
- [ ] Fourier inversion on $\mathcal{S}(\mathbb{R}^d)$ and $L^1$; Plancherel on $L^2(\mathbb{R}^d)$
- [ ] Poisson summation formula; Heisenberg uncertainty principle
- [ ] Weyl equidistribution theorem
- [ ] Riesz–Thorin and Marcinkiewicz interpolation theorems
- [ ] Hausdorff–Young and Young's convolution inequality
- [ ] Hardy–Littlewood maximal theorem (weak (1,1), strong $(p,p)$); Lebesgue differentiation
- [ ] $L^p$ boundedness of the Hilbert transform / conjugate function (M. Riesz), $1<p<\infty$; failure at $p=1,\infty$
- [ ] Norm convergence of Fourier series in $L^p$, $1<p<\infty$
- [ ] Calderón–Zygmund decomposition; boundedness of CZ singular integrals
- [ ] Littlewood–Paley inequality (statement)

## Exit criteria

1. Prove Fejér's theorem and Plancherel's theorem on the circle.
2. Prove Fourier inversion on the Schwartz space and Plancherel on $\mathbb{R}^d$.
3. Prove the Hardy–Littlewood maximal theorem via the Vitali covering lemma and Marcinkiewicz interpolation.
4. Prove $L^2$ boundedness of the Hilbert transform and explain how $L^p$ boundedness follows.
5. Carry out a Calderón–Zygmund decomposition and explain its role.
6. Solve 4 of 6 qualifying-style problems in 3 hours.
