[← Back to the olympiad track](../README.md)

# O2 Number theory (getaltheorie)

Number theory is the study of the whole numbers: divisibility, primes, remainders and equations that need integer solutions. It is the most "learnable" olympiad topic, because a small toolbox solves a large share of the problems. This module builds that toolbox and the habit of writing complete proofs.

## When

- **School year:** klas 1 of gymnasium, 2027–28 (age 13).
- **Length:** about 30 weeks at about 1 hour per week, from September 2027 to June 2028.
- **Prepares for:**
  - NWO (Nederlandse Wiskunde Olympiade) first round, January 2028 — short-answer problems, where Level 1 and Level 2 skills pay off.
  - NWO second round, March 2028 — harder short-answer problems and full written proofs (Level 2 and Level 3).
  - Junior Wiskunde Olympiade, June 2028.

## Prerequisites

- [O1 Problem solving](../O1-problem-solving/): parity, pigeonhole principle, invariants, small cases, extremal principle.
- Main track A1 Numbers and divisibility, in [A-groep8-foundations](../../A-groep8-foundations/): prime factorisation, gcd and lcm by hand, fractions, powers.
- Comfort with simple algebra: expanding brackets, factoring $x^2 - y^2$, and solving linear equations.

## Objectives

By the end of the module he can:

- use divisibility (deelbaarheid) and the divisibility rules (deelbaarheidsregels) for 2, 3, 4, 5, 8, 9, 11 and composite numbers, and prove the rules for 9 and 11;
- explain why every integer has a unique prime factorisation (priemfactorontbinding) and prove there are infinitely many primes (priemgetallen);
- count divisors (delers) with $\tau(n) = \prod (e_i + 1)$ and find the smallest number with a given number of divisors;
- compute the greatest common divisor (grootste gemene deler, ggd) and least common multiple (kleinste gemene veelvoud, kgv) with Euclid's algorithm (algoritme van Euclides), including for expressions in $n$;
- state and use Bézout's identity (stelling van Bézout) and Euclid's lemma, and solve linear Diophantine equations (lineaire diophantische vergelijkingen);
- calculate with congruences (modulorekenen, restklassen), including remainders of large powers;
- use the possible remainders of squares and cubes (kwadraten en derde machten) modulo 3, 4, 5, 8, 9 to prove that an equation has no solutions;
- state and prove Fermat's little theorem (kleine stelling van Fermat) and use the order of a number modulo a prime;
- work with digits, digit sums (cijfersom) and number bases (talstelsels), especially base 2;
- solve Diophantine equations by factoring, Simon's favourite factoring trick, modular arguments and bounding;
- use infinite descent (oneindige afdaling) and Legendre's formula for the exponent of a prime in $n!$ and trailing zeros;
- write a complete, readable proof of a "find all" or "prove that" number theory problem.

## Weekly plan

Week 1 is the first week of September 2027. School holidays are not counted, so calendar dates are approximate; keep weeks 16–18 just before the NWO first round and week 24 just before the second round. "§" refers to the sections of [notes.md](notes.md); problem numbers refer to [problems.md](problems.md).

| Week | Topic | Notes section | Problems |
|---|---|---|---|
| 1 | Divisibility, divisibility rules | §1 | 5, 10 |
| 2 | Primes, fundamental theorem, infinitely many primes | §2 | 9, 17 |
| 3 | Number of divisors, perfect squares | §3 | 1, 21 |
| 4 | gcd, lcm, Euclid's algorithm | §4 | 8, 15 |
| 5 | Bézout, extended Euclid, Euclid's lemma | §5 | 4 |
| 6 | Linear Diophantine equations | §5 | 13, 29(c) |
| 7 | Review: weeks 1–6; redo any problem you got wrong | §1–§5 | Alcumus number theory practice |
| 8 | Congruences, rules, inverses | §6 | 2, 3 |
| 9 | Remainders of large powers | §6 | notes examples 6.1–6.2; redo 2 and 3 |
| 10 | Squares and cubes modulo small numbers | §7 | 22 |
| 11 | "No solutions" proofs by a modulus | §7, §10 | notes examples 7.1–7.3, 10.2 |
| 12 | Fermat's little theorem and its proof | §8 | 14, 16 |
| 13 | Order of a number modulo $p$ | §8 | notes example 8.2; try 25 |
| 14 | Digits and digit sums | §9, §1 | 19 |
| 15 | Number bases, binary | §9 | 6, 18 |
| 16 | Review for the first round: Level 1 and 2 problems, mixed | §1–§9 | number theory problems from past NWO first rounds |
| 17 | Timed mock: one full past NWO first round paper | — | wedstrijdarchief (see Resources) |
| 18 | Mock debrief: rework every missed problem, add tricks to the toolbox | toolbox | — |
| 19 | Diophantine equations: factoring and SFFT | §10 | 11, 12 |
| 20 | Diophantine equations: difference of squares, powers of 2 and 3 | §10 | 20, 24 |
| 21 | Infinite descent | §11 | 23 |
| 22 | Legendre's formula, trailing zeros | §12 | 7, 28 |
| 23 | Proof-writing workshop: write clean solutions to 14, 22, 23 and compare with solutions.md | — | 14, 22, 23 |
| 24 | Timed mock: number theory and other problems from a past NWO second round | — | wedstrijdarchief |
| 25 | Euclid with exponents; powers of 2 | §4, §12 | 26, 27 |
| 26 | Frobenius coin problem (Bézout revisited) | §5 | 29 |
| 27 | Order and smallest prime divisor arguments | §8 | 25 |
| 28 | Mixed Level 3 review | all | redo 24–29 without notes |
| 29 | Past Junior Wiskunde Olympiade and BxMO number theory problems | all | wedstrijdarchief |
| 30 | Final review: rewrite the toolbox from memory; timed mixed set | toolbox | own selection |

## How to use the files

- **[notes.md](notes.md)** — one section per topic: the idea, key facts with short proofs, and worked examples. Read the section of the week, then cover the solutions of the examples and try them first.
- **[problems.md](problems.md)** — 29 problems in three levels. Level 1 matches the Kangoeroe (wizBRAIN) and easier NWO first-round problems; Level 2 matches the NWO first and second round; Level 3 matches the NWO final and the BxMO (Benelux Mathematical Olympiad). One-line hints are at the bottom; use a hint only after at least 15 minutes of honest effort.
- **[solutions.md](solutions.md)** — complete solutions; final answers in bold. After reading a solution, close the file and write the solution again in your own words. For proof problems, a parent or coach checks that every step is justified.
- Keep a notebook with a running "toolbox" page: each time a trick solves a problem, write it down with the problem number.

## Resources

Books (no links):

- Mathew Crawford, *Introduction to Number Theory* (Art of Problem Solving) — the main companion text; chapters on divisibility, modular arithmetic and number bases match §1–§9.
- Arthur Engel, *Problem-Solving Strategies* — chapter on number theory, for extra Level 2–3 problems.
- Titu Andreescu, Dorin Andrica and Zuming Feng, *104 Number Theory Problems* — Level 3 practice and further reading.
- Paul Zeitz, *The Art and Craft of Problem Solving* — chapter 7 (number theory), especially for proof style.

Websites:

- AoPS Alcumus (adaptive online practice; choose the number theory topics): https://artofproblemsolving.com/alcumus
- AoPS curriculum books: https://artofproblemsolving.com/store/list/aops-curriculum
- NWO past papers and solutions (wedstrijdarchief): https://www.wiskundeolympiade.nl/wedstrijdarchief
- Kangoeroe past papers (historie): https://www.w4kangoeroe.nl/kangoeroe/index.php/historie
- Pythagoras olympiad problems: https://www.pyth.eu/olympiade
- Evan Chen, *An Infinitely Large Napkin* (for much later; shows where number theory leads): https://web.evanchen.cc/napkin.html
