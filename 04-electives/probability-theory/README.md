# Elective: Probability Theory

**Phase:** 4 — Elective
**Length:** 16 weeks at ~6 hours/week

## Overview

Measure-theoretic probability: probability spaces as measure spaces, independence, the laws of large numbers, weak convergence and the central limit theorem, conditional expectation, martingales, Markov chains and an introduction to Brownian motion. This is the analyst's route into stochastic processes, mathematical finance, statistical mechanics and random structures.

## Prerequisites

- [3.1 Measure & integration](../../03-masters-core/3.1-measure-integration/) — **essential**: σ-algebras, Lebesgue integral, convergence theorems, product measures and Fubini, $L^p$ spaces, Radon–Nikodym.
- [3.2 Functional analysis](../../03-masters-core/3.2-functional-analysis/) — helpful for $L^2$ methods and weak convergence.
- [2.2 Complex analysis](../../02-bridge/2.2-complex-analysis/) — useful for characteristic functions.

## Texts

**Primary (free, legal):** Rick Durrett, *Probability: Theory and Examples*, 5th ed. (Cambridge University Press, 2019). The author hosts a PDF: <https://services.math.duke.edu/~rtd/PTE/pte.html>.

**Primary (paid):** David Williams, *Probability with Martingales* (Cambridge University Press, 1991). Short, lively, and the best first book on martingales. Read it alongside Durrett from Week 8.

**Free notes:** Sebastien Roch, *Lecture Notes on Measure-theoretic Probability Theory* (UW–Madison), roughly one set per week: <https://people.math.wisc.edu/~roch/grad-prob/index.html>.

**Supplementary:**
- Patrick Billingsley, *Probability and Measure* — thorough classical reference.
- Peter Mörters and Yuval Peres, *Brownian Motion* (Cambridge) — for Weeks 13–14 and beyond.
- MIT OpenCourseWare 18.175 *Theory of Probability* (Scott Sheffield, Spring 2014): lecture slides and problem sets, <https://ocw.mit.edu/courses/18-175-theory-of-probability-spring-2014/>.

## Video lectures

I couldn't verify a complete, stable video series for graduate measure-theoretic probability. Use the MIT 18.175 slides above as a lecture substitute, and search YouTube for recorded university courses titled "Probability Theory" or "Martingales" if you want video; check that any series you pick follows Durrett or Williams.

## 16-week schedule

| Week | Reading | Exercises | Notes |
|---|---|---|---|
| 1 | Durrett §§1.1–1.3 (probability spaces, distributions, random variables); Roch Notes 1 | Durrett 1.1.x, 1.2.x: 4 problems | Translate measure-theory vocabulary into probability. |
| 2 | Durrett §§1.4–1.7 (integration, expected value, Fubini); Roch Notes 2 | 4 problems | Jensen, Chebyshev, change of variables. |
| 3 | Durrett §2.1 (independence, π–λ theorem, Kolmogorov extension idea) | 4 problems | Independence of σ-algebras, constructing i.i.d. sequences. |
| 4 | Durrett §§2.2–2.3 (weak LLN, Borel–Cantelli); Roch Notes 3–4 | 5 problems | Modes of convergence: a.s., in probability, $L^p$, in distribution. |
| 5 | Durrett §§2.4–2.5 (strong LLN, Kolmogorov 0-1 law, three-series theorem) | 4 problems | Etemadi's proof of the SLLN. |
| 6 | Durrett §§3.1–3.3 (weak convergence, characteristic functions, Lévy continuity) | 4 problems | Helly selection; tightness. |
| 7 | Durrett §3.4 (CLT, Lindeberg–Feller), §3.6 (Poisson convergence) | 4 problems | Prove Lindeberg–Feller yourself. |
| 8 | Durrett §4.1 (conditional expectation); Williams Ch. 9 | 4 problems | Existence via Radon–Nikodym or $L^2$ projection. |
| 9 | Durrett §4.2 (martingales, a.s. convergence); Williams Chs. 10–11 | 4 problems | Upcrossing inequality. |
| 10 | Durrett §§4.4–4.6 (Doob's inequality, $L^p$ convergence, uniform integrability); Williams Chs. 12–14 | 4 problems | UI is exactly what upgrades a.s. to $L^1$. |
| 11 | Durrett §§4.7–4.8 (backwards martingales, optional stopping); Williams Ch. 10 applications | 4 problems | SLLN via backwards martingales; gambler's ruin. |
| 12 | Durrett §§5.1–5.3 (Markov chains, strong Markov property, recurrence/transience) | 4 problems | Pólya's theorem for random walks in $\mathbb{Z}^d$. |
| 13 | Durrett §§5.5–5.6 (stationary measures, convergence theorem) | 4 problems | Coupling proof of convergence. |
| 14 | Durrett §§7.1–7.2 (Brownian motion: construction, Markov property, 0-1 law) | 3 problems | Lévy or Kolmogorov construction; nowhere differentiability. |
| 15 | Durrett §§7.3–7.5 (strong Markov property, reflection principle, martingales); review | 3 problems | Reflection principle for the running maximum. |
| 16 | Review; mock exam (6 problems, 3 hours); capstone scoping | — | Shortlist capstone topics. |

## Key theorems checklist

- [ ] π–λ theorem; uniqueness of measures; Kolmogorov extension (statement)
- [ ] Borel–Cantelli lemmas (both)
- [ ] Kolmogorov 0-1 law
- [ ] Weak and strong laws of large numbers
- [ ] Kolmogorov's maximal inequality; three-series theorem
- [ ] Equivalent forms of weak convergence (portmanteau); Helly selection; tightness
- [ ] Lévy continuity theorem; inversion formula
- [ ] Central limit theorem; Lindeberg–Feller
- [ ] Poisson convergence (law of rare events)
- [ ] Conditional expectation: existence, uniqueness, properties (tower, taking out what is known)
- [ ] Martingale convergence theorem (upcrossings)
- [ ] Doob's maximal and $L^p$ inequalities
- [ ] Uniform integrability; $L^1$ convergence; Lévy's upward/downward theorems
- [ ] Optional stopping theorem
- [ ] Strong Markov property; recurrence and transience; Pólya's theorem
- [ ] Existence and uniqueness of stationary distributions; convergence theorem
- [ ] Construction of Brownian motion; Blumenthal 0-1 law; reflection principle

## Exit criteria

1. Prove the SLLN (finite fourth moment version quickly; Etemadi's version with notes allowed).
2. Prove the CLT for i.i.d. variables with finite variance via characteristic functions.
3. Prove the martingale convergence theorem from the upcrossing inequality.
4. State optional stopping with correct hypotheses and give a counterexample when they fail (simple random walk stopped at $1$).
5. Decide recurrence/transience of simple random walk in $\mathbb{Z}^d$ and justify.
6. Solve 4 of 6 problems from a past qualifying exam in probability in 3 hours.
