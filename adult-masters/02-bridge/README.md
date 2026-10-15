# Phase 2: Bridge (advanced undergraduate)

## Goal

Phase 1 (the [refresher](../01-refresher/)) rebuilt your BSc foundations. Phase 2 takes you to the level at which a Masters course *starts*: the material a first-year graduate course assumes without comment. By the end you should be able to read the first chapter of Folland, Rudin's *Real and Complex Analysis*, Lang's *Algebra*, Hatcher or Lee without stalling on prerequisites.

The four modules here correspond, roughly, to final-year undergraduate courses in the UK/European system, or to the "honours" courses at a strong US department.

## Modules

| # | Module | Weeks (~6 h/week) | Prerequisites | Leads to |
|---|--------|-------------------|---------------|----------|
| 2.1 | [Metric spaces and topology](2.1-metric-spaces-topology/) | 8 | 1.1, 1.2 | 2.2, 2.4, 3.1, 3.2, 3.4, 3.5 |
| 2.2 | [Complex analysis](2.2-complex-analysis/) | 10 | 2.1, 1.5 | 3.2, electives (Riemann surfaces, analytic number theory) |
| 2.3 | [Abstract algebra II: rings, modules, fields, Galois theory](2.3-abstract-algebra-II/) | 12 | 1.3, 1.4 | 3.3, 3.4 |
| 2.4 | [Analysis in $\mathbb{R}^n$](2.4-analysis-in-Rn/) | 10 | 2.1, 1.3, 1.5 | 3.1, 3.2, 3.5 |

Total: 40 module-weeks.

## Order and scheduling

- **2.1 must come first** among the analysis modules: 2.2 and 2.4 use compactness, completeness and connectedness constantly.
- **2.3 is independent** of the analysis strand. You can run it in parallel.

Two reasonable plans:

**Sequential (about 40 weeks, ~6 h/week):**
2.1 (wk 1–8) → 2.2 (wk 9–18) → 2.4 (wk 19–28) → 2.3 (wk 29–40).

**Two tracks in parallel (also about 40–42 weeks, because the total hours are the same):** each module takes longer in calendar time, but algebra and analysis both stay "warm". The analysis modules are about 70% of the phase's hours, so split each week roughly 4 h analysis / 2 h algebra:

| Calendar weeks | Analysis track (~4 h/wk) | Algebra track (~2 h/wk) |
|---|---|---|
| 1–12 | 2.1 Metric spaces and topology | 2.3 weeks 1–4 (rings, PIDs, modules) |
| 13–27 | 2.2 Complex analysis | 2.3 weeks 5–8 (structure theorem, field extensions) |
| 28–42 | 2.4 Analysis in $\mathbb{R}^n$ | 2.3 weeks 9–12 (Galois theory) |

If you have only 5 hours in a week, cut videos before you cut problems.

## How each module is organised

Each module folder contains:

- `README.md`: objectives, texts, videos, a week-by-week schedule, a checklist and exit criteria.
- `notes.md`: condensed notes with definitions, main theorems and proof sketches. Read the textbook first; use the notes for review and as a map.
- `problems.md`: 18–25 problems (Warm-up, Core, Challenge).
- `solutions.md`: full solutions. Attempt each problem for at least 30 minutes before looking.

## Phase exit

You have finished Phase 2 when you can do the following:

1. **Qualifying-exam-style test.** Under timed conditions (3 hours, closed book), attempt a mixed paper of 8 problems: 2 from each module, chosen from the Challenge sections or from a past qualifying exam. Many US departments publish past qualifying exams (search for "qualifying exam" with Berkeley, UCLA, Wisconsin or Indiana; Berkeley's prelim archive is a good start). Aim for complete, correct solutions to at least 5 of the 8.
2. **Explain without notes**, on paper, the proofs of: the Baire category theorem; Cauchy's integral formula from Goursat's theorem; the structure theorem for finitely generated modules over a PID (at least existence via Smith normal form); the fundamental theorem of Galois theory; the inverse function theorem.
3. **Recognise the tool.** Given a problem, name which major theorem is likely to apply (Arzelà–Ascoli, Rouché, Stone–Weierstrass, Sylow + Galois correspondence, contraction mapping, and so on) and why.

If items 1–3 are solid, move to [Phase 3: Masters core](../03-masters-core/). If one module is weak, repeat its Challenge problems before moving on; you do not need to repeat the whole phase.
