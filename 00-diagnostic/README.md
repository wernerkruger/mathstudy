# 00 — Diagnostic

**Purpose:** find out what is still in your head from the BSc, so you spend your 5–8 hours a week on what you have actually forgotten rather than on what you already know.

**Time:** about 3 hours, split across three sittings. Do it once before starting Phase 1. You can retake it at the end of Phase 1 as part of the [phase exit test](../01-refresher/README.md#phase-exit-test).

## Files

| File | What it is |
|---|---|
| [diagnostic-test.md](diagnostic-test.md) | 33 questions in six sections (A–F), each tagged with the module it tests |
| [diagnostic-solutions.md](diagnostic-solutions.md) | Full solutions and a marking rubric for every question |

## How to take the test

1. **Closed book.** No notes, no textbook, no internet, no computer algebra. Paper and pen only. The point is to measure what you can produce, not what you can look up.
2. **Timed, in three sittings** (roughly 60 minutes each). Use a timer and stop when it rings.

   | Sitting | Sections | Questions | Suggested time |
   |---|---|---|---|
   | 1 | A (proofs, logic, sets) and B (real analysis) | A1–A6, B1–B8 | 80 min |
   | 2 | C (linear algebra) and D (abstract algebra) | C1–C6, D1–D5 | 60 min |
   | 3 | E (multivariable calculus) and F (complex numbers and topology basics) | E1–E5, F1–F3 | 40 min |

3. **Do not look at the solutions until all three sittings are done.** Looking ahead contaminates the later sections.
4. **Write proofs in full sentences**, as if someone else had to mark them. A correct idea written as a scribble scores lower than the same idea written out.
5. **If you are stuck for more than 5 minutes, move on.** A blank is useful information. Do not guess wildly to fill space.
6. Mark each question that you *recognised but could not finish* with a "?" in the margin. These are the cheapest wins in the refresher.

## How to score

Each question is marked out of **4** using this rubric (details per question are in the solutions file):

| Score | Meaning |
|---|---|
| 4 | Complete and correct; written as a proof someone else would accept |
| 3 | Correct approach, a small gap or slip (e.g. a missing case, an unjustified but true step) |
| 2 | Right idea, substantial gap, or only part of a multi-part question done |
| 1 | Recognised the relevant definition or theorem but could not use it |
| 0 | Blank, or wrong approach |

Be honest and slightly strict. If you are not sure whether a step is justified, it is not.

Record your section totals in [PROGRESS.md](../PROGRESS.md):

| Section | Module tested | Questions | Max |
|---|---|---|---|
| A | [1.1 Proofs, logic, sets](../01-refresher/1.1-proofs-logic-sets/) | A1–A6 | 24 |
| B | [1.2 Real analysis I](../01-refresher/1.2-real-analysis-I/) | B1–B8 | 32 |
| C | [1.3 Linear algebra](../01-refresher/1.3-linear-algebra/) | C1–C6 | 24 |
| D | [1.4 Abstract algebra I](../01-refresher/1.4-abstract-algebra-I/) | D1–D5 | 20 |
| E | [1.5 Multivariable calculus](../01-refresher/1.5-multivariable-calculus/) | E1–E5 | 20 |
| F | Preview of [2.1 Metric spaces](../02-bridge/2.1-metric-spaces-topology/) and [2.2 Complex analysis](../02-bridge/2.2-complex-analysis/) | F1–F3 | 12 |
| | **Total** | 33 | **132** |

Convert each section to a percentage: section score ÷ section max × 100.

## Routing table: what to skim and what to do in full

| Section score | Route | What that means in practice |
|---|---|---|
| **80% or more** | **Skim** | Read the module's `notes.md`, do the *Challenge* problems in `problems.md`, and check yourself against the *Exit criteria* in the module README. Budget 1–2 weeks instead of the full schedule. If you fail an exit criterion, drop back to the week of the schedule that covers it. |
| **50–79%** | **Accelerated** | Follow the module schedule, but skip the reading for any topic where you scored 4 on the matching question. Do all *Core* and *Challenge* problems. Expect to need about half to two-thirds of the scheduled weeks. |
| **Below 50%** | **Full** | Do the module as written, every week. This is normal after 20 years and is not a bad sign. |

### Module-specific overrides

The section score is a blunt instrument. Apply these overrides on top of the table above.

| If… | Then… |
|---|---|
| Section A is 80%+ but you scored 2 or less on A5 or A6 (countability, Schröder–Bernstein) | Do week 6 of [1.1](../01-refresher/1.1-proofs-logic-sets/) in full. Cardinality arguments recur in measure theory. |
| Section B is 80%+ but you scored 2 or less on B7 (uniform convergence) | Do weeks 11–12 of [1.2](../01-refresher/1.2-real-analysis-I/) in full. Uniform convergence is assumed everywhere from Phase 2 on. |
| Section B is 80%+ but B3 or B5 scored 2 or less (Bolzano–Weierstrass, Cauchy, uniform continuity) | Do weeks 3 and 7 of 1.2 in full. These are the compactness arguments that 2.1 generalises. |
| Section B is under 80%, whatever else | Do not skim 1.2. Real analysis is the backbone of Phases 2 and 3 (metric spaces, measure theory, functional analysis). |
| Section C is 80%+ but C4 (Jordan form, diagonalisability) scored 2 or less | Do the Jordan form and minimal polynomial weeks of [1.3](../01-refresher/1.3-linear-algebra/) in full. |
| Section D is 80%+ but D4 (rings, ideals, quotient rings) scored 2 or less | Do the rings and ideals weeks of [1.4](../01-refresher/1.4-abstract-algebra-I/) in full. |
| Section F is below 50% | No change to Phase 1. Section F does not let you skip anything. It tells you to expect to use the full schedule in 2.1 and 2.2. |
| Section F is 80%+ | Still do 2.1 and 2.2 in full. They go well beyond what F tests. |

### Ordering

Whatever your routing, work through the refresher in order: 1.1, then 1.2 (optionally interleaved with 1.3), then 1.4, then 1.5. See the [Phase 1 overview](../01-refresher/README.md). Skimmed modules still need their exit criteria ticked before you move on.

## After the test

1. Enter section scores and routes in [PROGRESS.md](../PROGRESS.md).
2. For every question scored 0–2, write one line in your notebook: *which definition or theorem was missing*. This list is your personal index into the refresher.
3. Retake the test (cold, without looking at your old answers) at the end of Phase 1. Aim for 80%+ in sections A–E.
