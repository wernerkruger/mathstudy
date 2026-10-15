[← Back to the olympiad track](../README.md)

# O3 Combinatorics (combinatoriek)

Counting, clever bijections, graphs and games: the part of olympiad maths where a good idea often replaces a page of calculation.

## When

- **School year:** klas 2, 2028–29 (age 14).
- **Length:** about 30 weeks at roughly 1 hour per week.
- **Competition targets:** NWO (Nederlandse Wiskunde Olympiade) first round in January 2029, second round in March 2029, and the final in September 2029. The weekly plan below puts timed mock papers just before each round. The week numbers are approximate; move the mock weeks so they land one or two weeks before the actual competition dates.

## Prerequisites

- [O1 Problem-solving strategies](../O1-problem-solving/): parity (pariteit), the pigeonhole principle (ladenprincipe), invariants (invarianten) and the extremal principle. These come back constantly, especially in the graph and game sections.
- [O2 Number theory](../O2-number-theory/): divisibility, prime factorisation and remainders. Used in counting divisors, in inclusion–exclusion problems about multiples, and in game positions that repeat modulo some number.
- Main track: B5 Data, probability and counting in [B onderbouw compact](../../B-onderbouw-compact/). Factorials and simple probability should already be familiar from there.

## Objectives

By the end of this module he can:

- Apply the sum rule (somregel) and product rule (productregel), and use complementary counting (tellen via het complement) when "at least one" appears.
- Count permutations (permutaties), combinations (combinaties) and arrangements with repeated objects, and divide out symmetry correctly.
- Use stars and bars (sterretjes en streepjes) for distributing identical objects, with lower and upper bounds.
- Work with binomial coefficients (binomiaalcoëfficiënten) and Pascal's triangle (driehoek van Pascal), and prove identities by double counting (dubbeltellen) instead of algebra.
- Use the binomial theorem (binomium van Newton) to find coefficients and to evaluate sums.
- Apply inclusion–exclusion (inclusie-exclusie), including the derangement (dérangement) formula.
- Build bijections (bijecties) between sets, especially lattice paths (roosterpaden) and Catalan numbers (Catalan-getallen).
- Set up and solve recursions (recursies / recurrente betrekkingen) for Fibonacci-type counts and tilings (betegelingen).
- Use basic graph theory (grafentheorie): degree (graad), the handshake lemma (handdrukstelling), paths (paden), cycles (cykels), trees (bomen) and Euler paths (Eulerpaden).
- Analyse games (spellen): winning and losing positions (winnende en verliezende posities), symmetry strategies (symmetriestrategie) and Nim.
- Compute probabilities (kansen) by counting equally likely outcomes.
- Write a complete, readable proof of a counting claim, as required in the NWO second round and final.

## Weekly plan

| Week | Topic | Notes section | Problems |
|---|---|---|---|
| 1 | Sum and product rules, complementary counting | 1 | 1, 2 |
| 2 | Permutations, arrangements with repeated letters, round tables | 2 | 3 |
| 3 | Combinations, committees, "at least one" | 2 | 4 |
| 4 | Stars and bars | 3 | 5 |
| 5 | Stars and bars with bounds (first look) | 3 | 14 (first attempt) |
| 6 | Review: a past Kangoeroe wizPROF paper, 50 minutes, then corrections | 1–3 | Redo any of 1–5 you missed |
| 7 | Binomial coefficients and Pascal's triangle | 4 | 16 |
| 8 | Double counting proofs | 4 | 15, 22 |
| 9 | Binomial theorem | 5 | Notes examples; Alcumus on binomial theorem |
| 10 | Inclusion–exclusion | 6 | 12, 14 |
| 11 | Derangements | 6 | 13 |
| 12 | Lattice paths and bijections | 7 | 6, 17 |
| 13 | Catalan numbers (light) | 7 | 18 |
| 14 | Probability via counting | 11 | 9, 20 |
| 15 | Timed mock 1: past NWO first round (2 hours), then review | All so far | Archive paper |
| 16 | Timed mock 2: another past NWO first round; update the error log | All so far | Archive paper |
| 17 | Recursion I: Fibonacci-type counts (NWO first round around now) | 8 | 10, 11 |
| 18 | Recursion II: tilings | 8 | 30 |
| 19 | Graphs I: degree and the handshake lemma, trees | 9 | 8, 25 |
| 20 | Graphs II: paths, connectivity, a first Ramsey argument | 9 | 23, 24 |
| 21 | Graphs III: Euler paths and circuits | 9 | 21 |
| 22 | Timed mock 3: past NWO second round (2.5 to 3 hours, may split over two sessions) | All so far | Archive paper |
| 23 | Games I: winning and losing positions (NWO second round around now) | 10 | 7, 19 |
| 24 | Games II: symmetry strategies | 10 | 26 |
| 25 | Games III: Nim | 10 | 27 |
| 26 | Inclusion–exclusion, harder applications | 6 | 28 |
| 27 | Pigeonhole meets counting: monotone subsequences | 1, 9 | 29 |
| 28 | Review: rewrite two Level 3 solutions as full proofs, get feedback | All | Any of 24–30 |
| 29 | Timed mock 4: past NWO final, split into two 90-minute sessions | All | Archive paper |
| 30 | Final review: toolbox, error log, plan for the summer before the final | Toolbox | Revisit marked problems |

## How to use the files

- **[notes.md](notes.md)**: read one section before each week's session. Try every worked example yourself before reading the solution.
- **[problems.md](problems.md)**: the problems for the week are listed in the plan above. Spend at least 15 minutes on a problem before opening a hint, and write the answer down before checking.
- **Hints**: one line per problem at the end of problems.md. Use one hint, then try again for 10 minutes.
- **[solutions.md](solutions.md)**: read the solution only after a serious attempt. For proof problems, compare the structure of your proof with the one given: is every case covered, is every step justified?
- **Error log**: keep a single page listing every mistake (double counting, forgotten case, off-by-one, wrong game position). Read it before each mock.
- **Mocks**: use real past papers from the NWO archive, under exam conditions with a timer and no notes. Mark them using the official solutions.

## Resources

Books (no links needed):

- David Patrick, *Introduction to Counting & Probability* (AoPS). The main companion for weeks 1–14.
- David Patrick, *Intermediate Counting & Probability* (AoPS). For inclusion–exclusion, recursion, Catalan numbers and harder bijections.
- Arthur Engel, *Problem-Solving Strategies*. Chapters on games, combinatorics and graphs.
- Paul Zeitz, *The Art and Craft of Problem Solving*, chapter 6 (combinatorics).
- Titu Andreescu and Zuming Feng, *102 Combinatorial Problems*. Hard; good for the final.
- Elwyn Berlekamp, John Conway and Richard Guy, *Winning Ways for Your Mathematical Plays*. The classic on games; dip into it for Nim and symmetry strategies.

Websites:

- AoPS Alcumus (free adaptive practice; choose the counting and probability topics): https://artofproblemsolving.com/alcumus
- AoPS curriculum books: https://artofproblemsolving.com/store/list/aops-curriculum
- NWO past papers with solutions (wedstrijdarchief): https://www.wiskundeolympiade.nl/wedstrijdarchief
- Kangoeroe past papers (historie): https://www.w4kangoeroe.nl/kangoeroe/index.php/historie
- Pythagoras olympiad problems: https://www.pyth.eu/olympiade
- Evan Chen, *An Infinitely Large Napkin* (for later, as a look ahead): https://web.evanchen.cc/napkin.html
