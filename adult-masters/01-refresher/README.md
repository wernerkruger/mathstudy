# Phase 1 — Refresher

## Goal

Rebuild a full undergraduate pure-maths core to the point where you can **write rigorous proofs fluently** in analysis, linear algebra and algebra, without notes. Phase 1 is about *fluency*, not new material. Most of it you have seen before. The aim is for the definitions and standard arguments to become automatic again, so that Phase 2 ([bridge](../02-bridge/)) and Phase 3 ([Masters core](../03-masters-core/)) can build on them.

Before starting, take the [diagnostic](../00-diagnostic/README.md). Its routing table tells you which modules below you can skim.

## Modules, in order

All estimates assume about 6 hours a week.

| # | Module | Weeks | Depends on | What it is for |
|---|---|---|---|---|
| 1.1 | [Proofs, logic and sets](1.1-proofs-logic-sets/) | 6 | — | The language and proof techniques that everything else is written in |
| 1.2 | [Real analysis I](1.2-real-analysis-I/) | 12 | 1.1 | $\varepsilon$–$\delta$ fluency; the foundation for metric spaces, measure theory and functional analysis |
| 1.3 | [Linear algebra](1.3-linear-algebra/) | 10 | 1.1 | Abstract vector spaces, linear maps, spectral theory, Jordan form; used everywhere |
| 1.4 | [Abstract algebra I](1.4-abstract-algebra-I/) | 10 | 1.1 (1.3 helps) | Groups, rings, fields; leads into 2.3 and 3.3 |
| 1.5 | [Multivariable calculus](1.5-multivariable-calculus/) | 6 | 1.2, 1.3 | The computational side of $\mathbb{R}^n$; made rigorous in 2.4 and generalised in 3.5 |
| | **Total (sequential)** | **44** | | about 10 months at 6 h/week |

### Suggested ordering

**Default (sequential):** 1.1 → 1.2 → 1.3 → 1.4 → 1.5.

**Interleaved (recommended if analysis starts to feel like a grind):** after 1.1, run 1.2 and 1.3 side by side for about 22 weeks. For example, spend about 3.5 hours a week on analysis and about 2.5 hours on linear algebra, or alternate weeks. The total hours are the same. The benefits:

- Analysis and linear algebra exercise different muscles: estimates and limits on one side, structure and computation on the other. Switching keeps both fresh and makes plateaus less discouraging.
- 1.5 needs both, so finishing them together leads straight into it.
- Spaced repetition: returning to a subject after a few days off improves retention.

Keep 1.1 first (it is the toolkit) and 1.5 last (it uses 1.2 and 1.3). 1.4 can go either before or after 1.5. Doing 1.4 before 1.5 is slightly better if you plan to start 2.3 (abstract algebra II) early.

### Timeline sketch (interleaved)

| Weeks | Work |
|---|---|
| 1–6 | 1.1 Proofs, logic and sets |
| 7–28 | 1.2 Real analysis I and 1.3 Linear algebra in parallel |
| 29–38 | 1.4 Abstract algebra I |
| 39–44 | 1.5 Multivariable calculus |
| 45 | Phase exit test |

If the diagnostic lets you skim some modules, shorten the matching rows. Record the actual dates in [PROGRESS.md](../PROGRESS.md).

## How each module is organised

Every module folder has the same four files:

- `README.md`: objectives, texts, videos, week-by-week schedule, checklist of definitions and theorems, and exit criteria.
- `notes.md`: condensed study notes (definitions, main theorems with proofs or sketches, examples, pitfalls, connections forward).
- `problems.md`: Warm-up, Core and Challenge problems.
- `solutions.md`: full solutions. Attempt each problem seriously (at least 20–30 minutes on a Core problem) before looking.

See [HOW_TO_STUDY.md](../HOW_TO_STUDY.md) for the study routine and [RESOURCES.md](../RESOURCES.md) for the full book and video list.

## Phase exit test

Before starting Phase 2, sit a closed-book phase exit test. It checks that the refresher has produced fluency rather than familiarity.

**Format:**

- **Part 1 (about 2 hours):** retake the [diagnostic test](../00-diagnostic/diagnostic-test.md) cold, sections A–E only. Do not look at your first attempt beforehand.
- **Part 2 (about 3 hours, two sittings):** choose **two Challenge problems from each module** (1.1–1.5), ten problems in total, that you have *not* already solved. If you have solved them all, use unseen end-of-chapter exercises from the primary texts at a similar level.
- Write every answer as a complete proof, as you would for an examiner.

**Pass standard:**

| Requirement | Threshold |
|---|---|
| Diagnostic sections A–E | 80% or more overall, and at least 70% in each section |
| Part 2 | At least 7 of the 10 problems fully correct (4/4 on the diagnostic rubric) |
| Module exit criteria | Every exit criterion in every Phase 1 module README ticked |

**If you do not pass:** identify the weak module or modules from the section scores, go back to the relevant weeks, and retest that section after 2–3 weeks. Do not move on to Phase 2 with a section under 70%. Phase 2 assumes Phase 1 is solid, and gaps show up later as confusion that is harder to diagnose.

Record the result in [PROGRESS.md](../PROGRESS.md).

## What comes next

[Phase 2 — Bridge](../02-bridge/): metric spaces and topology (2.1), complex analysis (2.2), abstract algebra II (2.3), and analysis in $\mathbb{R}^n$ (2.4).
