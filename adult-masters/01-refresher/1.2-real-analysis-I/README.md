# 1.2 — Real analysis I

**Phase:** 1 (Refresher)
**Estimated length:** 12 weeks at about 6 hours a week (about 72 hours). If you interleave with [1.3](../1.3-linear-algebra/), about 20 weeks at 3.5 h/week.
**Prerequisites:** [1.1 Proofs, logic and sets](../1.1-proofs-logic-sets/), especially quantifier negation, induction and countability.
**Next:** [1.5 Multivariable calculus](../1.5-multivariable-calculus/) (with 1.3), then [2.1 Metric spaces and topology](../../02-bridge/2.1-metric-spaces-topology/) and [2.4 Analysis in Rⁿ](../../02-bridge/2.4-analysis-in-Rn/).

## Learning objectives

By the end of this module you should be able to:

1. Explain what completeness of $\mathbb{R}$ means, why $\mathbb{Q}$ lacks it, and derive its main consequences: the Archimedean property, density of $\mathbb{Q}$, nested intervals, monotone convergence, Bolzano–Weierstrass and Cauchy completeness.
2. Prove limits of sequences and functions from the $\varepsilon$–$N$ and $\varepsilon$–$\delta$ definitions, and prove the standard limit laws.
3. Test series for convergence, and distinguish absolute from conditional convergence, including what rearrangement does to each.
4. Work with open, closed and compact subsets of $\mathbb{R}$, and prove that "compact", "closed and bounded" and "sequentially compact" are the same thing in $\mathbb{R}$.
5. Prove and apply the Extreme Value Theorem, Intermediate Value Theorem, uniform continuity on compact sets, Rolle's theorem, the Mean Value Theorem and Taylor's theorem.
6. Define the Riemann integral via Darboux sums, prove integrability of continuous and monotone functions, and prove both parts of the Fundamental Theorem of Calculus.
7. Distinguish pointwise from uniform convergence of functions, and know exactly when limits can be interchanged with continuity, integrals and derivatives.

## Texts

**Primary (free):** Jiří Lebl, *Basic Analysis I: Introduction to Real Analysis*, free PDF and web version under a Creative Commons licence: <https://www.jirka.org/ra/>. Concise and rigorous, and it is the text used by the MIT 18.100A course below. (Lebl deliberately provides no solutions manual; use this module's [solutions.md](solutions.md) and Abbott for worked arguments.)

**Primary (paid, standard):** Stephen Abbott, *Understanding Analysis*, 2nd edition, Springer Undergraduate Texts in Mathematics, 2015. The best book for *re*-learning analysis: every chapter opens with a motivating question, and the exercises are excellent. The schedule below follows Abbott's order, with Lebl as the parallel reading.

**Supplementary:**

- Walter Rudin, *Principles of Mathematical Analysis*, 3rd edition (McGraw-Hill, 1976), chapters 1–7. Terse and classic, and the text Francis Su's lectures follow. Good for a second pass; not recommended as a first re-read.
- William F. Trench, *Introduction to Real Analysis* (free PDF: <http://ramanujan.math.trinity.edu/wtrench/texts/TRENCH_REAL_ANALYSIS.PDF>). Very detailed, with many worked examples. Useful when a step in Lebl feels too quick.
- Kenneth A. Ross, *Elementary Analysis: The Theory of Calculus*, 2nd edition (Springer UTM). Gentler than Abbott, if you want more routine practice.

## Video lectures

- **MIT 18.100A Real Analysis, Fall 2020, Dr. Casey Rodriguez** (MIT OpenCourseWare). Course page: <https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/>; lecture videos: <https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/video_galleries/video-lectures/>; YouTube playlist: <https://www.youtube.com/playlist?list=PLUl4u3cNGP61O7HkcF7UImpM0cR_L2gSw>. 25 lectures, about 80 minutes each, following Lebl. Lecture numbers in the schedule (L1–L25) refer to this course.
- **Francis Su, Real Analysis (Harvey Mudd Math 131, Spring 2010)**: <https://www.youtube.com/playlist?list=PL0E754696F72137EC>. 26 lectures following Rudin. Su is an exceptionally clear and humane lecturer, and especially good on the topology of $\mathbb{R}$ and compactness. Use them as an alternative or second view for a topic, chosen by topic, since the order is Rudin's rather than Abbott's.

You do not need to watch every lecture. A reasonable budget is one lecture per week (about 1.5 h) out of the 6 hours, more in weeks where the reading is hard.

## Week-by-week schedule

Abbott section numbers refer to the 2nd edition; Lebl section numbers to *Basic Analysis I*.

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Abbott 1.1–1.4 (irrationality of $\sqrt2$, axiom of completeness, consequences). Lebl 1.1–1.4 | MIT L3–L5 | Abbott 1.3, 1.4 exercises (selection). [problems.md](problems.md) 1 | [notes.md §1](notes.md#1-the-real-numbers). Completeness is the axiom everything else rests on. |
| 2 | Abbott 1.5–1.6 (cardinality; skim if 1.1 is fresh), 2.1–2.3 (limits, algebraic and order limit theorems). Lebl 2.1–2.2 | MIT L6–L8 | [problems.md](problems.md) 2, 3 | [notes.md §2.1–2.2](notes.md#2-sequences). Write out at least five $\varepsilon$–$N$ proofs in full. |
| 3 | Abbott 2.4–2.6 (monotone convergence, Bolzano–Weierstrass, Cauchy criterion). Lebl 2.3–2.4 (limsup and liminf, Bolzano–Weierstrass, Cauchy sequences) | MIT L9–L10 | [problems.md](problems.md) 7, 8, 9 | [notes.md §2.3–2.5](notes.md#23-monotone-convergence). The "completeness ladder". |
| 4 | Abbott 2.7 (properties of series); 2.8 optional. Lebl 2.5–2.6 | MIT L10–L12 | [problems.md](problems.md) 4, 10, 25 | [notes.md §3](notes.md#3-series). Absolute versus conditional convergence; rearrangements. |
| 5 | Abbott 3.1–3.4 (Cantor set, open and closed sets, compact sets, perfect and connected sets) | Su, the lectures on open and closed sets and compactness | [problems.md](problems.md) 11 | [notes.md §4](notes.md#4-topology-of-the-real-line). This is the preview of 2.1. Lebl treats this in ch. 7 (metric spaces); optional extra reading. |
| 6 | Abbott 4.1–4.3 (functional limits, continuity). Lebl 3.1–3.2 | MIT L13–L15 | [problems.md](problems.md) 5 | [notes.md §5.1–5.2](notes.md#5-limits-and-continuity). Sequential characterisation of limits. |
| 7 | Abbott 4.4–4.5 (continuity on compact sets, IVT). Lebl 3.3–3.4 (3.5–3.6 optional) | MIT L16–L17 | [problems.md](problems.md) 6, 12, 13, 14, 24 | [notes.md §5.3–5.5](notes.md#53-continuous-functions-on-compact-sets). Uniform continuity. |
| 8 | Abbott 5.1–5.3 (derivatives, Darboux's theorem, MVT). Lebl 4.1–4.2 | MIT L17, L19 | [problems.md](problems.md) 15 | [notes.md §6.1–6.3](notes.md#6-differentiation). |
| 9 | Taylor's theorem: Lebl 4.3; Abbott 6.6 (Taylor series; read the Lagrange remainder part now). Riemann integral definition: Abbott 7.1–7.2; Lebl 5.1. Optional: Abbott 5.4 (a continuous nowhere-differentiable function) | MIT L18 (optional), L20 | [problems.md](problems.md) 16, 17 | [notes.md §6.4](notes.md#64-taylors-theorem) and [§7.1](notes.md#7-the-riemann-integral). |
| 10 | Abbott 7.3–7.5 (integrability with discontinuities, properties, FTC). Lebl 5.2–5.3 (5.4–5.5 optional). Optional: Abbott 7.6 (Lebesgue's criterion) | MIT L21–L22 | [problems.md](problems.md) 19, 22 | [notes.md §7.2–7.4](notes.md#72-integrability). |
| 11 | Abbott 6.1–6.3 (uniform convergence; uniform convergence and differentiation). Lebl 6.1–6.2 | MIT L23–L24 | [problems.md](problems.md) 18, 20, 21 | [notes.md §8.1–8.3](notes.md#8-sequences-and-series-of-functions). |
| 12 | Abbott 6.4–6.5 (series of functions, power series); 6.7 (Weierstrass approximation) optional. Review | MIT L24–L25 | [problems.md](problems.md) 23. Then check the exit criteria | [notes.md §8.4–8.5](notes.md#84-series-of-functions-and-the-m-test) and [§9](notes.md#9-common-pitfalls). |

**Time split per week (guide):** about 2 h reading, about 1.5 h video, about 2.5 h exercises. In heavy weeks (3, 7, 10, 11) drop the video in favour of exercises.

## Checklist of key definitions and theorems

The real numbers

- [ ] Ordered field; supremum and infimum; the axiom of completeness (least upper bound property)
- [ ] $\mathbb{Q}$ is not complete ($\sup\lbrace q \in \mathbb{Q}: q^2 < 2\rbrace$ does not exist in $\mathbb{Q}$)
- [ ] Archimedean property; density of $\mathbb{Q}$ in $\mathbb{R}$
- [ ] Nested interval property
- [ ] Existence of $\sqrt 2$ in $\mathbb{R}$ (via sup)

Sequences and series

- [ ] Convergence of a sequence; uniqueness of limits; convergent implies bounded
- [ ] Algebraic and order limit theorems; squeeze theorem
- [ ] Monotone Convergence Theorem
- [ ] limsup and liminf
- [ ] Bolzano–Weierstrass theorem
- [ ] Cauchy sequences; Cauchy $\iff$ convergent in $\mathbb{R}$
- [ ] Series: Cauchy criterion; $n$th-term test; comparison, ratio, root, alternating series and integral tests; Cauchy condensation
- [ ] $p$-series $\sum 1/n^p$ converges iff $p > 1$; the geometric series
- [ ] Absolute convergence implies convergence; rearrangements of absolutely convergent series; Riemann's rearrangement theorem (statement)

Topology of $\mathbb{R}$

- [ ] Open and closed sets; limit points; closure
- [ ] Compactness (sequential and open-cover); Heine–Borel
- [ ] Connected subsets of $\mathbb{R}$ are intervals
- [ ] The Cantor set: compact, uncountable, measure zero, no interior

Continuity

- [ ] $\varepsilon$–$\delta$ limits; sequential characterisation
- [ ] Continuity; continuity of compositions
- [ ] Continuous image of a compact set is compact; Extreme Value Theorem
- [ ] Intermediate Value Theorem
- [ ] Uniform continuity; continuous on compact $\Rightarrow$ uniformly continuous

Differentiation

- [ ] Derivative; differentiable $\Rightarrow$ continuous; chain rule
- [ ] Interior extremum theorem; Rolle; Mean Value Theorem; Cauchy MVT
- [ ] Darboux's theorem (derivatives have the intermediate value property)
- [ ] L'Hôpital's rule (the $0/0$ case)
- [ ] Taylor's theorem with Lagrange remainder

Integration

- [ ] Partitions, upper and lower Darboux sums, refinement
- [ ] Riemann integrability criterion: $U(f,P) - L(f,P) < \varepsilon$ for some $P$
- [ ] Continuous and monotone functions are integrable
- [ ] Linearity, monotonicity, additivity over intervals
- [ ] FTC parts 1 and 2; integration by parts; substitution
- [ ] Lebesgue's criterion (statement): integrable iff bounded and continuous almost everywhere

Sequences of functions

- [ ] Pointwise versus uniform convergence; the sup-norm formulation
- [ ] Uniform limit of continuous functions is continuous
- [ ] Uniform convergence allows exchange of limit and integral
- [ ] Differentiation theorem (uniform convergence of the derivatives plus convergence at one point)
- [ ] Weierstrass M-test
- [ ] Power series: radius of convergence; uniform convergence on compact subsets of the interval; termwise differentiation
- [ ] Weierstrass approximation theorem (statement)

## Exit criteria

You are ready to move on when you can do all of the following **closed-book**:

1. Write $\varepsilon$–$N$ and $\varepsilon$–$\delta$ proofs for concrete limits quickly and cleanly, and prove the limit laws.
2. Prove from the axiom of completeness: Monotone Convergence, Bolzano–Weierstrass, and "Cauchy implies convergent".
3. Prove: continuous functions on $[a,b]$ are bounded, attain their extrema, have the intermediate value property, and are uniformly continuous.
4. Prove Rolle's theorem and the MVT, and state Taylor's theorem with remainder and use it for error estimates.
5. Prove that continuous functions are Riemann integrable, and prove both parts of the FTC.
6. Give, from memory, counterexamples showing that: pointwise limits of continuous functions need not be continuous; uniform convergence of $f_n$ does not imply convergence of $f_n'$; a conditionally convergent series can be rearranged to converge to a different sum; continuity on an open interval does not give uniform continuity.
7. Score at least 70% on the Core problems in [problems.md](problems.md) without the solutions, and solve at least three Challenge problems.
8. Score 80% or more on section B of the [diagnostic](../../00-diagnostic/diagnostic-test.md) on a cold retake.
