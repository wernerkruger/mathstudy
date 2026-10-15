[← Back to the olympiad track](../README.md)

# O5 Algebra and inequalities (algebra en ongelijkheden)

Algebra is one of the four big olympiad areas, next to number theory, combinatorics and geometry. At the NWO final and the BxMO there is almost always at least one algebra problem: an inequality, a functional equation, a polynomial or a sequence. This module builds the standard toolbox for all four, with full proofs as the target.

## When

- **School year:** klas 4, 2030–31 (age 16).
- **Length:** about 30 weeks at roughly 1 hour per week.
- **Prepares for:**
  - NWO (Nederlandse Wiskunde Olympiade) first round and second round in early 2031: Level 2 problems.
  - The NWO final in September 2031, team selection and training camps: Level 3 problems.
  - BxMO (Benelux Mathematical Olympiad) and IMO (International Mathematical Olympiad) team selection tests, if he is selected after a final.
- The week numbers are approximate. Move the mock weeks so that each lands one or two weeks before a real competition or selection test.

## Prerequisites

- [O1 Problem-solving strategies](../O1-problem-solving/): small cases, working backwards, writing a complete argument.
- [O2 Number theory](../O2-number-theory/): divisibility, modular arithmetic, gcd. Needed for integer-root problems and Problem 22.
- [O3 Combinatorics](../O3-combinatorics/) and [O4 Olympiad geometry](../O4-olympiad-geometry/): not used directly, but the habits of proof-writing and timed mocks carry over.
- Main track: algebra and quadratic equations from [B-onderbouw-compact](../../B-onderbouw-compact/); functions, calculus (derivatives and tangent lines), exponentials and logarithms, trigonometry, and complex numbers (in progress) from [C-bovenbouw-core](../../C-bovenbouw-core/). Derivatives are needed for the tangent line trick; complex numbers help with Vieta when roots are not real.

## Objectives

By the end of this module he can:

- recognise and use the standard factoring identities (merkwaardige producten), including $a^3+b^3+c^3-3abc$ and Sophie Germain's identity, and rewrite symmetric expressions (symmetrische uitdrukkingen) in elementary symmetric polynomials;
- use division with remainder (deling met rest), the remainder theorem (reststelling) and the factor theorem (factorstelling) for polynomials (polynomen / veeltermen);
- find integer and rational roots (gehele en rationale nulpunten) and use Vieta's formulas (formules van Vieta) and simple Newton sums;
- work with arithmetic and geometric sequences (rekenkundige en meetkundige rijen), telescoping sums (telescoperende sommen), linear recurrences (lineaire recursies) and proofs by induction (volledige inductie);
- prove inequalities (ongelijkheden) with the trivial inequality, AM-GM (rekenkundig-meetkundig gemiddelde), the mean chain QM-AM-GM-HM, Cauchy–Schwarz and its Engel form, and, lightly, rearrangement (herschikking) and the tangent line trick (raaklijntruc);
- always find and state the equality case (gelijkheidsgeval) of an inequality;
- solve functional equations (functievergelijkingen) with substitutions, injectivity (injectiviteit), surjectivity (surjectiviteit) and Cauchy's equation over $\mathbb{Q}$, and always check (controleren) the answer;
- write a complete algebra proof of NWO-final standard in 60–90 minutes.

## Weekly plan

| Week | Topic | Notes section | Problems |
|---|---|---|---|
| 1 | Factoring identities; difference of powers | 1 | 1, 2 |
| 2 | The three-cube identity; Sophie Germain | 1 | 9 |
| 3 | Symmetric expressions and substitution | 1 | 10 (first part) |
| 4 | Division with remainder; remainder and factor theorem | 2 | 3, 12 |
| 5 | Rational and integer roots | 2 | 11 |
| 6 | Vieta's formulas (also with complex roots) | 2 | 4, 10 |
| 7 | Newton sums; a new polynomial from old roots | 2 | 23 |
| 8 | Review: algebra problems from past NWO second rounds (archive), 60 minutes, then corrections | 1–2 | Redo any of 1–12 you missed |
| 9 | Arithmetic and geometric sequences | 3 | 6 |
| 10 | Telescoping | 3 | 5, 14 |
| 11 | Recurrences and induction | 3 | 13 |
| 12 | Bounding a sequence | 3 | 27 |
| 13 | Timed mock 1: a past NWO second round (2.5 hours, may split over two sessions) | 1–3 | Archive paper |
| 14 | Trivial inequality; AM-GM for two variables | 4 | 7, 15 |
| 15 | AM-GM for $n$ variables; choosing terms to keep equality | 4 | 18 |
| 16 | The mean chain QM-AM-GM-HM; non-homogeneous conditions | 4 | 24 |
| 17 | Cauchy–Schwarz | 4 | 19 |
| 18 | Engel form (Titu) | 4 | 16, 17 |
| 19 | Substitution in inequalities | 1, 4 | 26 |
| 20 | Rearrangement (light) | 4 | 18 (second proof) |
| 21 | Tangent line trick and smoothing (light) | 4 | 25 |
| 22 | Timed mock 2: inequality problems from past NWO finals (archive), 90 minutes | 4 | Archive problems |
| 23 | Functional equations I: special values, systems | 5 | 8, 20 |
| 24 | Functional equations II: find $f(0)$, rule out cases, check | 5 | 21 |
| 25 | Cauchy's equation over $\mathbb{Q}$ | 5 | 29 |
| 26 | Injectivity and surjectivity | 5 | 30 |
| 27 | Polynomial equations: comparing coefficients | 2, 5 | 28 |
| 28 | The three-cube identity meets number theory | 1 | 22 |
| 29 | Timed mock 3: a complete past NWO final (3 hours, may split over two sessions) | All | Archive paper |
| 30 | Final review: toolbox, error log, redo the notes examples without looking | Toolbox | Any unsolved problem |

## How to use the files

- **[notes.md](notes.md)**: read the section for the week before the session. Cover each worked example and try it for 10 minutes before reading the solution.
- **[problems.md](problems.md)**: the problems for each week are listed in the plan. Level 1 problems are warm-ups (multiple choice, Kangoeroe wizPROF style); Level 2 matches the NWO first and second round; Level 3 matches the NWO final and the BxMO.
- **Hints**: one line per problem at the end of problems.md. Spend at least 20 minutes before opening a hint, and after the hint try again for 15 minutes.
- **[solutions.md](solutions.md)**: read only after a serious attempt. Compare not just the answer but the structure: equality case stated, every "find all" answer checked, no step that only works for some cases.
- **Write it out.** For Level 2 and 3, write the solution as if handing it in at the NWO final: full sentences, every step justified. Once a month, show one write-up to a trainer or teacher for feedback.
- **Error log (foutenlogboek)**: keep one page with every mistake, for example "forgot to check the function", "divided by something that could be zero", "equality case wrong". Read it before every mock.
- **Mocks**: use real past papers from the NWO archive, under exam conditions with a timer and no notes. Mark them with the official solutions and count points honestly.

## Resources

Books (no links needed):

- Richard Rusczyk and Mathew Crawford, *Intermediate Algebra* (AoPS). The main companion: polynomials, Vieta, sequences, inequalities and functional equations at exactly the right level.
- Arthur Engel, *Problem-Solving Strategies*. The chapters on inequalities, sequences and functional equations give many extra problems.
- Paul Zeitz, *The Art and Craft of Problem Solving*, chapter 5 (algebra): manipulation, polynomials and inequalities, with good explanations of strategy.
- Pham Kim Hung, *Secrets in Inequalities*, volume 1. For Level 3 and beyond: AM-GM, Cauchy–Schwarz and the tangent line trick in depth.
- Titu Andreescu, Bogdan Enescu and others, *Mathematical Olympiad Treasures*. Short sections with olympiad algebra problems and solutions.
- B. J. Venkatachala, *Functional Equations: A Problem Solving Approach*. The standard book for functional equations, once the basics here are solid.

Websites:

- AoPS Alcumus (free adaptive practice; choose the intermediate algebra topics): https://artofproblemsolving.com/alcumus
- AoPS curriculum books: https://artofproblemsolving.com/store/list/aops-curriculum
- NWO past papers with solutions (wedstrijdarchief): https://www.wiskundeolympiade.nl/wedstrijdarchief
- Pythagoras olympiad problems: https://www.pyth.eu/olympiade
- Evan Chen, *An Infinitely Large Napkin* (a look ahead to university algebra): https://web.evanchen.cc/napkin.html
