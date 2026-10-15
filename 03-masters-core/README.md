# Phase 3: Masters core

## Goal

Phase 2 (the [bridge](../02-bridge/)) brought you to the starting line of a graduate programme. Phase 3 is the graduate programme itself: the five "core" courses that almost every Masters or first-year PhD student in pure mathematics takes, and that qualifying exams test. By the end you should be able to:

- read research-level expository papers in analysis, algebra and topology without stalling on standard background;
- pass a written qualifying exam in real analysis and algebra at a typical research university (the mock exam at the end of this page is the test);
- choose an elective direction in [Phase 4](../04-electives/) on the basis of what you enjoyed, not what you lack.

## Modules

| # | Module | Weeks (~6 h/week) | Prerequisites | Leads to |
|---|--------|-------------------|---------------|----------|
| 3.1 | [Measure and integration](3.1-measure-integration/) | 14 | 2.1, 2.4 | 3.2, probability, harmonic analysis, PDE |
| 3.2 | [Functional analysis](3.2-functional-analysis/) | 12 | 3.1, 2.1 | operator algebras, PDE, spectral theory electives |
| 3.3 | [Graduate algebra](3.3-graduate-algebra/) | 14 | 2.3 | 3.4, algebraic geometry, algebraic number theory |
| 3.4 | [Algebraic topology](3.4-algebraic-topology/) | 14 | 2.1, 2.3 (3.3 helpful) | 3.5, geometry and topology electives |
| 3.5 | [Smooth manifolds](3.5-smooth-manifolds/) | 14 | 2.4, 2.1 (3.4 helpful) | differential geometry, Lie groups electives |

Total: 68 module-weeks, about 16 months at ~6 hours a week, plus 3–4 weeks for the mock qualifying exam and any repairs it shows up.

## Order and scheduling

The modules form two tracks that hardly touch each other:

- **Analysis track:** 3.1 → 3.2. Functional analysis needs measure theory: $L^p$ spaces are the main examples of Banach spaces, and the Radon–Nikodym theorem is used to identify duals.
- **Algebra/geometry track:** 3.3 → 3.4 → 3.5. Algebraic topology uses exact sequences, Hom and tensor products from 3.3 (homology, the universal coefficient theorem, the Künneth formula). Smooth manifolds is easier after 3.4, because de Rham cohomology is best understood next to singular cohomology.

### Option A (recommended at 5–8 hours a week): one module at a time, in the order 3.1, 3.3, 3.2, 3.4, 3.5

| Order | Module | Calendar weeks |
|---|---|---|
| 1 | 3.1 Measure and integration | 1–14 |
| 2 | 3.3 Graduate algebra | 15–28 |
| 3 | 3.2 Functional analysis | 29–40 |
| 4 | 3.4 Algebraic topology | 41–54 |
| 5 | 3.5 Smooth manifolds | 55–68 |
| — | Mock qualifying exam and repairs | 69–72 |

Why this order:

1. **One subject at a time suits a 6-hour week.** Graduate texts build long chains of definitions. At 3 hours a week per subject (two tracks in parallel) you lose the thread between sessions and spend much of each session re-reading. At 6 hours on one subject you keep the context alive.
2. **Alternate analysis and algebra between modules.** Putting 3.3 between 3.1 and 3.2 gives measure theory 14 weeks to settle before you rely on it. Coming back to analysis for 3.2 is a built-in spaced review of 3.1: you will re-use $L^p$, Hölder, dominated convergence and Radon–Nikodym constantly.
3. **3.3 before 3.4 before 3.5** respects the real dependencies: exact sequences and tensor products are the language of homology, and homology is the context for de Rham cohomology.
4. **3.1 first** because it is the module most often examined and the one whose techniques (approximation arguments, "$\varepsilon/3$ with a dominating function") take longest to become automatic.

### Option B: two tracks in parallel

If you prefer variety, run the analysis track and the algebra/geometry track side by side at about 3 hours a week each. Each module then takes about twice its nominal weeks:

| Calendar block | Analysis track (~3 h/wk) | Algebra/geometry track (~3 h/wk) |
|---|---|---|
| Months 1–7 | 3.1 Measure and integration (28 wks) | 3.3 Graduate algebra (28 wks) |
| Months 7–13 | 3.2 Functional analysis (24 wks) | 3.4 Algebraic topology (28 wks, to month 14) |
| Months 13–18 | Track finished: move these hours to 3.5 | 3.5 Smooth manifolds (at the full 6 h/wk once 3.4 ends) |

The analysis track (52 weeks of work at 3 h/week) finishes well before the algebra/geometry track (84 weeks at 3 h/week), so the whole phase takes about 18 months instead of 16, and only if you move the freed-up hours to 3.5. Use Option B only if a single subject for 6 hours a week makes you stale.

## How each module is organised

Each module folder contains:

- `README.md`: objectives, texts, videos, a week-by-week schedule, a checklist and exit criteria.
- `notes.md`: condensed notes at graduate level: definitions, main theorems with proofs or sketches, examples, counterexamples, pitfalls and connections forward. Read the textbook first; use the notes to consolidate and to review before the mock exam.
- `problems.md`: 18–25 problems in three groups: Warm-up, Core and Qualifying-exam level.
- `solutions.md`: complete solutions. Spend at least 30 minutes on a problem (45 for qualifying-exam level) before reading the solution, and write out your own solution in full afterwards.

Weekly rhythm at 6 hours: about 2.5 hours reading with pen and paper, 1 hour of video (optional, cut first when short of time), 2.5 hours of problems. Log each week in [PROGRESS.md](../PROGRESS.md).

## Phase-end mock qualifying exam

US PhD programmes test the core with written "qualifying" or "preliminary" exams. Sitting a mock version under exam conditions is the best evidence that you have reached Masters level.

### Format

Two papers, each 3 hours, closed book, on different days in the same week:

| Paper | Content | Problems |
|---|---|---|
| I. Analysis | 3.1 Measure and integration (5 problems), 3.2 Functional analysis (3 problems) | Attempt all 8 |
| II. Algebra and geometry | 3.3 Graduate algebra (4), 3.4 Algebraic topology (2), 3.5 Smooth manifolds (2) | Attempt all 8 |

**Pass standard:** complete, correct solutions to at least 5 of 8 problems on each paper, with no module scoring zero. That is roughly the standard for a pass at a strong US department.

### Where to get the problems

Draw problems you have **not** seen, from these sources:

- **Paulo Ney de Souza and Jorge-Nuno Silva, *Berkeley Problems in Mathematics* (Springer, Problem Books in Mathematics).** Over a thousand problems from the Berkeley preliminary exam, with solutions. The preliminary exam is at advanced-undergraduate level, so use its harder real analysis, linear algebra and abstract algebra problems as warm-ups and for Paper I's measure-theory section. Buy or borrow it; it is not free.
- **UCLA past qualifying exams:** <https://ww3.math.ucla.edu/past-qualifying-exams/>. UCLA publishes many years of its Analysis, Algebra and Geometry/Topology qualifying exams. The Analysis exams map closely onto 3.1 and 3.2; the Algebra exams onto 3.3; Geometry/Topology onto 3.4 and 3.5. This is the single best free source for the mock.
- **Princeton "Graduate Students' Guide to Generals":** <https://web.math.princeton.edu/generals/>. Write-ups by Princeton students of their oral general exams, sorted by examiner and topic. The exam is oral, so there are no papers to sit, but the questions show what examiners expect you to explain without notes. Use them for item 2 of the exit criteria below.
- Many other universities post past quals (for example Wisconsin, Indiana and Berkeley's own graduate qualifying exam pages). Search for "[university] math qualifying exam archive". Check that the syllabus matches before using a paper.

### How to run it

1. Four weeks before the mock, pick 16 problems (plus 4 reserves) and do not look at them again.
2. In the weeks before, review each module's `notes.md` and redo its Qualifying-exam level problems without the solutions.
3. Sit each paper in one sitting, timed, with no books, notes or internet.
4. Mark your own work strictly against published or textbook solutions. A proof with a real gap scores zero for that problem.
5. For each failed problem, find the module and topic, redo that module's related problems, and then try one reserve problem on the same topic.

## Phase exit criteria

You have finished Phase 3 when:

1. You have passed both mock papers at the standard above.
2. You can give, without notes and in at most 10 minutes each, the proofs of: the dominated convergence theorem (from the monotone convergence theorem); the Radon–Nikodym theorem (von Neumann's Hilbert space proof); the uniform boundedness principle; the spectral theorem for compact self-adjoint operators; Maschke's theorem and the first orthogonality relation; the Hilbert basis theorem; plus the theorems listed in the exit criteria of [3.4](3.4-algebraic-topology/) and [3.5](3.5-smooth-manifolds/).
3. Each module's checklist is fully ticked in [PROGRESS.md](../PROGRESS.md).

Then move on to [Phase 4: Electives](../04-electives/).
