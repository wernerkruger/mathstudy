# Phase 5 — Capstone: Expository Dissertation

**Length:** ~16 weeks at ~6 hours/week (~96 hours)
**Output:** a 15–30 page expository dissertation in LaTeX, at the level of a taught-Masters dissertation.

## What it is

The capstone is an **expository** dissertation: a clear, careful, self-contained account of a substantial theorem or body of theory that you did not previously know, written for a reader at the level of a first-year graduate student. Original research is not expected. What is expected is what a Masters examiner looks for:

- correct mathematics with complete proofs of the main results (or clearly marked, cited omissions);
- a coherent narrative: why the result matters, how the pieces fit, what the key ideas are;
- worked examples and at least one non-trivial computation or example of your own;
- accurate citations to the literature you used.

Writing it is the final test of the whole course: it forces you to understand a topic well enough to teach it.

## Prerequisites

- All of Phase 3 ([03-masters-core](../03-masters-core/)).
- Your elective from [04-electives](../04-electives/), or at least the core module your topic depends on.
- Working LaTeX setup (e.g. TeX Live or MiKTeX locally, or Overleaf). Use `amsthm`, `amsmath`, `hyperref`, `biblatex` or BibTeX. Keep the source in this repository under `05-capstone/dissertation/`.

## Timeline (16 weeks)

| Week | Stage | Tasks | Deliverable |
|---|---|---|---|
| 1 | Choose topic | Read [topic-ideas.md](topic-ideas.md). Shortlist 3 topics. For each, skim the key reference (intro + main theorem statement) for ~1.5 h. | Shortlist with one paragraph per topic: main theorem, prerequisites, key reference. |
| 2 | Commit | Pick one. Check prerequisites honestly; write a one-page proposal: title, main theorem(s), intended reader, 2–4 references, rough chapter list. Send it to your reviewer (see below). | `proposal.md` (1 page). |
| 3–4 | Literature | Read the primary reference(s) carefully, with pen and paper. Keep a reading log with every definition, lemma and proof idea you'll need. Find 2–3 secondary sources (survey, other textbook treatment, original paper). | Reading log; annotated bibliography in `.bib`. |
| 5 | Outline | Write a detailed outline: sections, every definition, every lemma with a proof sketch, every example. Decide what you will prove fully and what you will cite. | `outline.md` (3–5 pages). Reviewer feedback requested. |
| 6–7 | Draft: background | Write the preliminaries/background section and the statement of the main result with motivation. | Draft Sections 1–2 (~6–10 pages). |
| 8–10 | Draft: core | Write the proofs of the main results. This is the hardest part; expect to go back to the literature. | Draft core sections (~8–15 pages). |
| 11 | Draft: examples & conclusion | Write the examples/applications section and a short conclusion ("further directions"). Write the abstract and introduction last. | Complete first draft. |
| 12 | Self-review | Put the draft away for 3 days. Then read it start to finish, checking every proof line by line. Use the rubric below on yourself. | Revised draft + list of known weak spots. |
| 13 | External review | Send the draft to your reviewer with specific questions (see "Asking for review"). | Draft sent. |
| 14–15 | Revision | Address all reviewer comments. Tighten exposition. Check notation consistency, cross-references, bibliography. | Final draft. |
| 16 | Finish | Final proofread; compile clean PDF; tag the commit (`git tag capstone-v1`). Optional: give a 30-minute talk on it (to a local seminar, a friend, or a recording). | Final PDF + optional talk slides. |

## Suggested structure of the dissertation

1. **Abstract** (≤200 words).
2. **Introduction** (2–3 pages): the problem, the main theorem stated informally and then precisely, history, outline of the document.
3. **Preliminaries** (3–6 pages): only what is needed; cite standard texts for routine facts.
4. **Main results** (8–15 pages): full proofs, organised into lemmas; highlight the key idea of each proof before giving it.
5. **Examples / applications** (2–5 pages): at least one worked example or computation you did yourself.
6. **Further directions** (1 page): what comes next, open problems, generalisations.
7. **References**: 5–15 entries, consistently formatted.

## Suggested topics

Choose a topic tied to the core module or elective you liked best. [topic-ideas.md](topic-ideas.md) lists about 20 concrete topics with key references. Examples by area:

| Area | Core module(s) | Example topics |
|---|---|---|
| Analysis | [3.1](../03-masters-core/3.1-measure-integration/), [3.2](../03-masters-core/3.2-functional-analysis/) | Spectral theorem for compact self-adjoint operators and Sturm–Liouville problems; Lebesgue differentiation and the maximal function; Riesz–Thorin interpolation |
| Algebra | [3.3](../03-masters-core/3.3-graduate-algebra/) | Wedderburn–Artin; Galois theory of finite fields and cyclotomic fields; Hilbert's Nullstellensatz |
| Topology | [3.4](../03-masters-core/3.4-algebraic-topology/) | Classification of surfaces; Borsuk–Ulam and applications; Lefschetz fixed point theorem; Poincaré duality |
| Geometry | [3.5](../03-masters-core/3.5-smooth-manifolds/) | Hodge decomposition on compact surfaces; Gauss–Bonnet; Morse theory basics; Frobenius theorem |
| Electives | [04-electives](../04-electives/) | Martingale proof of the Radon–Nikodym theorem; Dirichlet's unit theorem; Peter–Weyl theorem; Riemann–Roch for curves |

**Choosing well.** A good topic has (a) a single clearly stated main theorem, (b) a proof of 5–15 pages in the standard reference, (c) prerequisites you already have, and (d) at least one reference written at your level. Avoid topics where the main proof depends on a large black box you can't explain.

## Finding a reviewer

A reviewer reads your proposal (Week 2), outline (Week 5) and draft (Week 13) and tells you what's wrong. This is the single most valuable thing you can arrange. In rough order of usefulness:

1. **A local university mathematics department.** Email a lecturer or PhD student whose research area matches your topic. Keep it short: who you are, that you're doing a self-directed Masters-level course, your one-page proposal attached, and a specific, bounded request ("Would you be willing to read a 20-page draft in about 3 months and give written comments?"). Offer to pay a PhD student an hourly rate; many will accept. Some universities also have continuing-education or visiting-student options that include supervision.
2. **Former lecturers or classmates** from your BSc who stayed in mathematics.
3. **Online communities** for specific, focused questions (not for whole-draft review):
   - **Mathematics Stack Exchange** (math.stackexchange.com) — for questions about a specific step in a proof or a definition. Etiquette: one precise question per post; show what you've tried and exactly where you're stuck; write the mathematics in MathJax; search for duplicates first; accept answers and upvote helpful ones. Questions without context or effort ("prove this") are closed quickly.
   - **MathOverflow** (mathoverflow.net) — for **research-level** questions only: e.g. asking for the best reference for a result, or whether a known generalisation exists. Routine textbook questions are off-topic there and will be closed; when in doubt, ask on Math Stack Exchange.
   - Topic-specific forums and reading groups (e.g. online study groups for Hatcher or Vakil) can also give feedback on short sections.
4. **Self-review with a study partner.** Swap drafts with another self-learner; even a non-expert reader finds unclear writing.

Be explicit in every request about what you want: "Is the proof of Lemma 3.2 correct?", "Is the introduction pitched at the right level?", "Have I missed a standard reference?"

## Evaluation rubric

Score your final draft (and ask your reviewer to score it) on each criterion from 1 to 5. A Masters-level pass needs at least 3 on every criterion; a distinction-level dissertation averages 4 or more.

| Criterion | Weight | 5 — Excellent | 3 — Adequate | 1 — Weak |
|---|---|---|---|---|
| **Mathematical correctness** | 30% | All proofs complete and correct; omissions explicitly cited | Minor gaps or errors that are easily fixed | Significant errors in main proofs |
| **Understanding and insight** | 20% | Key ideas identified and explained; author clearly sees why the proof works | Proofs reproduced correctly but with little explanation | Proofs copied without evident understanding |
| **Structure and exposition** | 20% | Clear narrative; good motivation; definitions before use; consistent notation | Readable but uneven; some unmotivated sections | Hard to follow; disorganised |
| **Examples and own work** | 15% | Several well-chosen examples, at least one non-trivial computation or proof variation by the author | One or two standard examples | No examples |
| **Scholarship** | 10% | Accurate, appropriate references; history and context; correct attribution | References present but thin | Missing or inaccurate references |
| **Presentation** | 5% | Clean LaTeX; numbered and cross-referenced results; good typography; no typos | Minor formatting issues | Poor formatting impedes reading |

## Exit criteria

1. A compiled PDF of 15–30 pages, committed and tagged in this repository.
2. Rubric self-assessment and (ideally) reviewer assessment of at least 3 on every criterion.
3. You can give a 30-minute talk on the main theorem and answer questions about any step of the proof.
4. Update [PROGRESS.md](../PROGRESS.md) and write a short reflection: what you'd study next.
