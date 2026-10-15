# B5 Data, probability and counting

[← Stage B](../README.md)

- **Stage and school year:** Stage B (onderbouw compact), klas 1, school year 2027–28
- **Length:** 7 weeks at about 4 hours a week
- **Files:** [notes](notes.md) · [problems](problems.md) · [solutions](solutions.md)

## Prerequisites

- [A2 Fractions, ratios, percentages and powers](../../A-groep8-foundations/A2-fractions-ratios-powers/): probabilities are fractions, and you will multiply, add and compare them all the time. Powers appear in counting ($26^4$ passwords, $2^n$ subsets).
- [A1 Numbers and divisibility](../../A-groep8-foundations/A1-numbers-divisibility/): factorials and cancelling fractions such as $\frac{10!}{7!\,3!}$ use the same skills as prime factorisation.

## Objectives

By the end of this module he can:

1. Recognise the level of measurement (*meetniveau*) of a variable: nominal, ordinal, interval or ratio, and say which summaries make sense for it.
2. Compute and interpret the mean (*gemiddelde*), median (*mediaan*), mode (*modus*) and range (*spreidingsbreedte*), and explain why the median is robust against outliers (*uitschieters*) while the mean is not.
3. Find the quartiles (*kwartielen*), the interquartile range (*kwartielafstand*) and the five-number summary (*vijfgetallensamenvatting*) using the Dutch school convention, and draw and read a boxplot (*boxplot*).
4. Organise data in a frequency table (*frequentietabel*) with class intervals (*klassen*), draw a histogram (*histogram*), use cumulative frequency (*cumulatieve frequentie*), and estimate a mean from grouped data.
5. Compare two distributions using centre and spread.
6. Describe bivariate data (*tweedimensionale gegevens*) with a scatter plot (*spreidingsdiagram*) and a trend line (*trendlijn*), describe correlation (*correlatie*) informally, and explain with examples why correlation does not prove a causal relation (*oorzakelijk verband*), including confounding variables.
7. Describe an experiment by its sample space (*uitkomstenruimte*), use the Laplace definition of probability (*kans*) for equally likely outcomes, and connect probability to relative frequency (*relatieve frequentie*) through the law of large numbers (*wet van de grote aantallen*), informally.
8. Use the complement rule (*complementregel*), the sum rule for mutually exclusive events (*somregel*) and the product rule for independent events (*productregel*), and explain why each is true.
9. Handle drawing with and without replacement (*met en zonder terugleggen*) using tree diagrams (*kansboom, boomdiagram*), grids (*rooster*) and two-way tables (*kruistabel*), and compute simple conditional probabilities (*voorwaardelijke kans*).
10. Count with the multiplication principle (*vermenigvuldigingsregel*), permutations (*permutaties*) and factorials (*faculteit*), ordered selections without repetition, and combinations (*combinaties*), using the notation $\binom{n}{k}$ and the calculator key nCr.
11. Explain why $\binom{n}{k}=\frac{n!}{k!\,(n-k)!}$ by dividing out the orderings.
12. Count routes in a grid (*roosterwegen*), build Pascal's triangle (*driehoek van Pascal*), and prove Pascal's rule, the symmetry $\binom{n}{k}=\binom{n}{n-k}$ and the row sum $2^n$ by combinatorial arguments.
13. Compute an expected value (*verwachtingswaarde*), decide whether a game is fair (*eerlijk spel*), and use linearity of expectation informally.

## How this maps to the Dutch programme

**Onderbouw kerndoelen (core objectives, lower secondary).** In the revised onderbouw kerndoelen:

- **Kerndoel 11, Data en kansen (data and probability):** levels of measurement, centre and spread including the interquartile range, boxplots and histograms, bivariate data and the difference between correlation and causation, probability rules (*kansregels*) and combinatorics (*combinatoriek*). This module covers all of it and goes further in counting.
- **Kerndoel 14 (reasoning and proof):** the combinatorial proofs of $\binom{n}{k}=\frac{n!}{k!(n-k)!}$, Pascal's rule and the row sum $2^n$ are proofs by counting the same set in two ways. These are real proofs, not illustrations.

**Upper-school exams.**

- **Wiskunde techniek, domain A3 Data en kans:** probability, including expected value, is now part of the central exam (*centraal examen*); statistics is tested in the school exam (*schoolexamen*). This module lays the full foundation.
- **Wiskunde D, domain B Kansrekening en statistiek:** combinatorics and random variables (*toevalsvariabelen*). The counting and expected value here are the first step.
- Continued in stage D module D4 Probability and statistics in [D-bovenbouw-advanced](../../D-bovenbouw-advanced/) (random variables, binomial and normal distributions, hypothesis testing) and in the competition track [olympiad](../../olympiad/) (module O3 Combinatorics).

## Resources

- **Getal & Ruimte vwo 1–3:** the chapters on statistics, probability and counting. Use them for extra routine practice and to see the Dutch notation and wording used at school. Skip what is already secure.
- **WiskundeAcademie:** short Dutch video explanations of boxplots, kwartielen, kansbomen, permutaties and combinaties. [wiskundeacademie.nl](https://www.wiskundeacademie.nl/) and [YouTube channel](https://www.youtube.com/@WiskundeAcademie).
- **Khan Academy:** the statistics and probability units, including counting, permutations and combinations. [khanacademy.org](https://www.khanacademy.org/) and the Dutch version [nl.khanacademy.org/math](https://nl.khanacademy.org/math).
- **AoPS, *Introduction to Counting & Probability* by David Patrick:** the main stretch book for this module. Use the chapters on counting, permutations, combinations, Pascal's triangle, probability and expected value, by topic, alongside the matching weeks below.
- **AoPS Alcumus:** adaptive online problems; select the Counting & Probability topics. [artofproblemsolving.com/alcumus](https://artofproblemsolving.com/alcumus)
- Terms: [GLOSSARY.md](../../GLOSSARY.md). All resources: [RESOURCES.md](../../RESOURCES.md).

## Week-by-week plan

Practise and Challenge refer to the numbers in [problems.md](problems.md). Problems 1–14 are practice, 15–23 are at school-exam level, 24–30 are challenge problems.

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | §1 Data and levels of measurement; §2 Centre and spread, quartiles and boxplots | 1, 2, 3, 5 | 15 |
| 2 | §3 Frequency tables, histograms and comparing distributions | 4, 22 | 22(e) |
| 3 | §4 Bivariate data and correlation; §5 Probability: the basic rules | 6, 7, 8 | 29 |
| 4 | §6 Several steps: trees, grids, replacement and conditional probability | 9, 16, 21 | 30 |
| 5 | §7 Counting: the multiplication principle and permutations; §8 Combinations (start) | 10, 11, 12, 17 | 25 |
| 6 | §8 Combinations (finish); §9 Grid routes and Pascal's triangle | 13, 18, 19, 23 | 24, 26, 27 |
| 7 | §10 Expected value; §11 Common mistakes (review) | 14, 20 | 28 |

## I can…

- [ ] say whether a variable is nominal, ordinal, interval or ratio, and which averages make sense for it
- [ ] compute mean, median, mode and range, and explain which one an outlier affects most
- [ ] find quartiles and the interquartile range with the Dutch school convention, for both odd and even $n$
- [ ] draw a boxplot from a five-number summary and read percentages off it
- [ ] estimate a mean from a frequency table with class intervals, and use cumulative frequencies
- [ ] compare two groups using a measure of centre and a measure of spread, in full sentences
- [ ] describe a scatter plot (direction, strength, outliers) and give a confounding variable for a correlation
- [ ] write down a sample space and use $P(A)=\frac{\text{number of favourable outcomes}}{\text{number of outcomes}}$ only when outcomes are equally likely
- [ ] use the complement rule for "at least one" questions
- [ ] explain why the product rule needs independence and why probabilities change without replacement
- [ ] draw a tree diagram or grid and read a conditional probability from a two-way table
- [ ] decide whether order matters and choose between $n^k$, $\frac{n!}{(n-k)!}$ and $\binom{n}{k}$
- [ ] prove $\binom{n}{k}=\frac{n!}{k!(n-k)!}$, Pascal's rule and the row sum $2^n$ by counting
- [ ] count routes in a grid, including routes through or avoiding a point
- [ ] compute an expected value and decide whether a game is fair

## Exit criteria

He is ready to move on when he can:

1. Score at least 80% on problems 15–23 (school-exam level) without looking at the notes, with every answer explained in sentences, not only numbers.
2. Solve at least four of the challenge problems 24–30 completely, including the written combinatorial proof in problem 27.
3. Explain out loud, without notes: why the median resists outliers, why $\binom{n}{k}=\frac{n!}{k!(n-k)!}$, why Pascal's rule holds, and why expected value is a long-run average.
4. Give an example of a correlation that is not causal and name the confounding variable.
