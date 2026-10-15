# 3.1 Measure and integration

- **Phase:** 3 (Masters core), analysis track
- **Estimated length:** 14 weeks at ~6 hours/week (about 84 hours)
- **Prerequisites:**
  - [2.1 Metric spaces and topology](../../02-bridge/2.1-metric-spaces-topology/) (open/closed/compact sets, completeness, Baire category)
  - [2.4 Analysis in $\mathbb{R}^n$](../../02-bridge/2.4-analysis-in-Rn/) (Riemann integration in several variables, change of variables)
  - [1.2 Real analysis I](../../01-refresher/1.2-real-analysis-I/) (sequences and series of functions, uniform convergence, $\limsup$/$\liminf$)
- **Leads to:** [3.2 Functional analysis](../3.2-functional-analysis/), probability theory, harmonic analysis and PDE electives in [Phase 4](../../04-electives/).

## Why this module

The Riemann integral cannot handle limits well: a pointwise limit of Riemann integrable functions need not be Riemann integrable, and the space of Riemann integrable functions with the $L^1$ distance is not complete. Lebesgue's theory fixes both problems. Its convergence theorems are the most used tools in modern analysis, and $L^p$ spaces are the basic examples for functional analysis.

## Learning objectives

By the end of the module you can:

1. Define σ-algebras, measures and outer measures, and construct Lebesgue measure on $\mathbb{R}^n$ by Carathéodory's method.
2. Prove that a non-measurable set exists (Vitali) and explain where the axiom of choice enters.
3. Define the Lebesgue integral for non-negative and then integrable functions, and prove the monotone convergence theorem, Fatou's lemma and the dominated convergence theorem.
4. Compare modes of convergence (pointwise a.e., uniform, almost uniform, in measure, in $L^p$) with examples that separate them; prove Egorov's theorem.
5. Construct product measures and apply Tonelli's and Fubini's theorems, including checking their hypotheses.
6. Prove Hölder's and Minkowski's inequalities and the completeness of $L^p$ (Riesz–Fischer).
7. State and prove the Hahn and Jordan decompositions and the Lebesgue–Radon–Nikodym theorem.
8. Prove the Hardy–Littlewood maximal inequality and the Lebesgue differentiation theorem, and relate them to absolutely continuous functions and the fundamental theorem of calculus.

## Texts

**Primary (free, legal):** Sheldon Axler, *Measure, Integration & Real Analysis* (Springer GTM 282, 2020). Open Access: <https://measure.axler.net/>. Very clear, ideal for self-study. Axler does not use Carathéodory's theorem, so pair it with Folland §1.4 in week 2.

**Primary (standard, paid):** Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications* (2nd ed., Wiley, 1999). The standard first-year graduate text. Terse; read it with a pencil. Chapters 1–3 and 6 are this module.

**Supplementary:**

- Terence Tao, *An Introduction to Measure Theory* (AMS Graduate Studies in Mathematics 126, 2011). Free draft PDF from the author: <https://terrytao.wordpress.com/wp-content/uploads/2012/12/gsm-126-tao5-measure-book.pdf> (book page: <https://teorth.github.io/tao-web/an-introduction-to-measure-theory.html>). Builds Lebesgue measure concretely from Jordan measure; excellent intuition and exercises.
- Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces* (Princeton Lectures in Analysis III, 2005). Concrete, $\mathbb{R}^n$-first approach; strongest on differentiation.

## Video lectures

- MIT 18.102 *Introduction to Functional Analysis* (Casey Rodriguez, Spring 2021), MIT OpenCourseWare: <https://ocw.mit.edu/courses/18-102-introduction-to-functional-analysis-spring-2021/>. The middle third of the course builds Lebesgue measure, measurable functions, the Lebesgue integral and $L^p$ spaces. Use those lectures in weeks 2–7 and 11; the rest belongs to [3.2](../3.2-functional-analysis/).

There is no single standard video course that matches this module's full syllabus (product measures, Radon–Nikodym and differentiation are missing from 18.102), so the schedule leans on reading.

## Week-by-week schedule

Abbreviations: **Ax** = Axler MIRA (section numbers like 2B); **Fo** = Folland; **Tao** = Tao, *Introduction to Measure Theory*; **SS** = Stein–Shakarchi III; **N** = this module's [notes.md](notes.md); **P** = [problems.md](problems.md).

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Ax 2A–2C (outer measure on $\mathbb{R}$, σ-algebras, measures); Fo 1.1–1.3; N §1 | — | P1, P2, P19; three exercises each from Ax 2B and 2C | Read Ax 1A–1B first if the Riemann integral is rusty. |
| 2 | Fo 1.4 (outer measures, Carathéodory); Tao 1.7.1; N §2 | 18.102 lectures on Lebesgue outer measure | Three exercises from the end of Fo §1.4 | The proof that measurable sets form a σ-algebra is the key argument; write it out twice. |
| 3 | Fo 1.5 (Lebesgue–Stieltjes, regularity); Ax 2D; Tao 1.2; N §3 | 18.102 lecture on Lebesgue measurable sets | P8; three exercises from Fo §1.5 | Regularity: inner by compact, outer by open sets. |
| 4 | Vitali set, Cantor set and function: Ax 2D; Tao 1.2.3; SS 1.3; N §3 | — | P4, P7, P25 | Note exactly where the axiom of choice is used. |
| 5 | Measurable functions, simple approximation, Egorov, Lusin: Ax 2B, 2E; Fo 2.1, 2.4 (Egorov); N §4 | 18.102 lecture on measurable functions | P9; three exercises from Ax 2E | |
| 6 | Integral of non-negative functions, MCT: Ax 3A; Fo 2.2; N §5 | 18.102 lectures on the Lebesgue integral | P3, P5, P6 | Prove MCT yourself before reading the proof. |
| 7 | Fatou, DCT, integrable functions, Riemann vs Lebesgue: Ax 3B; Fo 2.3; N §5 | 18.102 lecture on Fatou and DCT | P10, P11, P14 | DCT is the most-used theorem in the module. |
| 8 | Modes of convergence: Fo 2.4; Tao 1.5; N §6 | — | P12, P15 | Build a table of implications with counterexamples. |
| 9 | Product measures, monotone class lemma, Tonelli, Fubini: Ax 5A–5B; Fo 2.5; N §7 | — | P13, P20 | Always check hypotheses: σ-finiteness, integrability. |
| 10 | Lebesgue measure on $\mathbb{R}^n$, linear change of variables, polar coordinates: Ax 5C; Fo 2.6–2.7 | — | Compute $\int_{\mathbb{R}^n} e^{-\lvert x\rvert^2}\,dx$ two ways; two exercises from Fo §2.6 | Catch-up week if behind. |
| 11 | $L^p$: Hölder, Minkowski, completeness, density of simple/continuous functions: Ax 7A–7B; Fo 6.1; N §8 | 18.102 lectures on $L^p$ | P16, P21, P22 | |
| 12 | Signed and complex measures, Hahn and Jordan decompositions: Ax 9A–9B; Fo 3.1, 3.3; N §9 | — | P17, P23 | P23 revisits Egorov and $L^2$. |
| 13 | Lebesgue decomposition and Radon–Nikodym: Fo 3.2; Ax 9B; N §9. Optional: dual of $L^p$, Fo 6.2 | — | P18; three exercises from Fo §3.2 | Learn the von Neumann proof via the Riesz representation theorem as well. |
| 14 | Maximal function, Vitali covering, Lebesgue differentiation, BV and AC functions: Ax 4A–4B; Fo 3.4–3.5; SS ch. 3; N §10 | — | P24; redo all Qualifying-exam level problems | Leave one session for a closed-book self-test. |

## Checklist of key definitions and theorems

- [ ] σ-algebra, generated σ-algebra, Borel σ-algebra
- [ ] Measure; continuity from below and above; Borel–Cantelli lemma
- [ ] Outer measure; Carathéodory measurability; Carathéodory's theorem
- [ ] Premeasure on an algebra and its extension (Carathéodory–Hahn)
- [ ] Lebesgue measure on $\mathbb{R}^n$: translation invariance, regularity, completeness
- [ ] Lebesgue–Stieltjes measures from increasing right-continuous functions
- [ ] Vitali's non-measurable set; Cantor set and Cantor function
- [ ] Measurable function; simple functions approximating measurable functions
- [ ] Integral of non-negative functions; monotone convergence theorem
- [ ] Fatou's lemma; dominated convergence theorem
- [ ] Riemann integrable implies Lebesgue integrable with the same value; Lebesgue's criterion
- [ ] Convergence in measure; Egorov's theorem; Riesz's subsequence theorem
- [ ] Monotone class lemma (or π-λ theorem); product σ-algebra
- [ ] Tonelli's theorem; Fubini's theorem; counterexamples when hypotheses fail
- [ ] Hölder's and Minkowski's inequalities; $L^\infty$
- [ ] Riesz–Fischer: $L^p$ is complete; a.e.-convergent subsequence
- [ ] Density of simple functions and of $C_c(\mathbb{R}^n)$ in $L^p$, $1 \le p < \infty$; continuity of translation
- [ ] Signed measures; Hahn and Jordan decompositions; total variation
- [ ] Absolute continuity and mutual singularity; Lebesgue–Radon–Nikodym theorem
- [ ] Hardy–Littlewood maximal function and weak (1,1) inequality; Vitali covering lemma
- [ ] Lebesgue differentiation theorem; Lebesgue points
- [ ] Absolutely continuous functions; fundamental theorem of calculus for Lebesgue integrals

## Exit criteria

You are ready to move on when you can:

1. Prove without notes: Carathéodory's theorem (measurable sets form a σ-algebra on which the outer measure is countably additive), MCT, Fatou, DCT, completeness of $L^p$, and the Radon–Nikodym theorem (either proof).
2. For each of the following, give a counterexample from memory: a.e. convergence without $L^1$ convergence; $L^1$ convergence without a.e. convergence; Fubini failing without integrability; Radon–Nikodym failing without σ-finiteness; a continuous increasing function with $F' = 0$ a.e. that is not constant.
3. Solve at least 4 of the 6 Qualifying-exam level problems in [problems.md](problems.md) in 45 minutes each, closed book.
4. Tick every item in the checklist above in [PROGRESS.md](../../PROGRESS.md).
