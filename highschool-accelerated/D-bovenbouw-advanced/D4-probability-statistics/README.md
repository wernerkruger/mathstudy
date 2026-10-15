# D4 Probability and statistics

[← Stage D](../README.md) · [Glossary](../../GLOSSARY.md)

**Stage:** D, upper-school advanced (*bovenbouw*), klas 3 gymnasium, school year 2029–30
**Length:** 9 weeks at about 4 hours a week (about 36 hours)
**Prerequisites:**
- [Stage B](../../B-onderbouw-compact/), especially [B5](../../B-onderbouw-compact/B5-data-probability-counting/) (data, probability and counting): simple probability, tree diagrams, mean and spread.
- [C3 Differential calculus I](../../C-bovenbouw-core/C3-differential-calculus-I/): finding a minimum with the derivative (used to derive the regression line).
- [C2 Exponential and logarithmic functions](../../C-bovenbouw-core/C2-exponential-logarithmic/): $e^x$ and $\ln x$ (the normal density, problem 24).
- Helpful but not required: [D2 Integral calculus](../D2-integral-calculus/), because a normal probability is an area under a curve.

**Next:** [Stage E: Wiskunde D and exams](../../E-wiskunde-d-and-exams/), starting with E1 Differential equations and dynamical systems. The counting in this module continues at competition level in the [olympiad track](../../olympiad/) (O3 Combinatorics).

## Objectives

By the end of this module you can:

1. Count with permutations and combinations (*combinatoriek*, *permutaties*, *combinaties*, $\binom nk$ "*n boven k*") and use them to compute probabilities.
2. Apply the probability rules (*kansregels*: complement rule, sum rule, product rule) and tree diagrams (*kansboom*), for drawing with and without replacement (*trekken met en zonder terugleggen*), including hypergeometric situations.
3. Compute conditional probabilities (*voorwaardelijke kans*) from two-way tables (*kruistabel*) and with Bayes' rule, and decide whether events are independent (*onafhankelijk*).
4. Work with random variables (*toevalsvariabelen*, *stochasten*) and their probability distribution (*kansverdeling*): expected value (*verwachtingswaarde*), variance and standard deviation (*standaardafwijking*).
5. Prove and use the rules for sums of random variables and the square-root law (*wortel-n-wet*).
6. Recognise and use the binomial distribution (*binomiale verdeling*), state its conditions, and prove its formula, expected value and standard deviation.
7. Use the normal distribution (*normale verdeling*): z-scores, normalcdf, invNorm, finding an unknown $\mu$ or $\sigma$, and approximating a binomial distribution with continuity correction (*continuïteitscorrectie*).
8. Carry out hypothesis tests (*hypothesetoetsen*) with binomial and normal distributions: hypotheses, significance level (*significantieniveau*), left-, right- and two-sided tests (*linkszijdig, rechtszijdig, tweezijdig*), p-value (*overschrijdingskans*), critical region (*kritieke gebied*), and type I and II errors.
9. Describe paired data with a scatter plot, the correlation coefficient $r$ and the least-squares regression line (*correlatie en regressie*), derive that line with calculus, and explain why correlation does not prove causation.

## Where this fits in the exams

- **Wiskunde techniek (vwo), the successor of Wiskunde B**, domain **A3 Data en kans**. Probability (*kansrekening*: probabilities, expected value, standard deviation) is examined in the central exam (*centraal examen*, CE). Statistics (exploring data, conclusions from samples, correlation) is in the school exam (*schoolexamen*, SE). Sections 1–8 of the notes are CE material; sections 9–10 are SE material.
- **Wiskunde D (vwo)**, domain **B Kansrekening en statistiek**: combinatorics, random variables, binomial and normal distribution, square-root law, hypothesis tests, correlation and regression. Wiskunde D is SE only. It is being rewritten under a new name, with final programmes due in September 2029, so check the new programme when it appears.
- **Current Wiskunde B has no probability at all.** That is why the old Wiskunde B central exams contain nothing for this module. The closest past CE questions are in **Wiskunde A**, whose exams have always contained probability and the normal and binomial distributions.

Source: SLO (*Stichting Leerplanontwikkeling*) concept exam programme wiskunde techniek vwo (September 2026) and the DUO description of Wiskunde D. Re-check both each year.

## Resources

- **Notes, problems and solutions in this folder:** [notes.md](notes.md), [problems.md](problems.md), [solutions.md](solutions.md).
- **WiskundeAcademie** (Dutch explanation videos for havo/vwo; search the site or channel for the topic you are on, for example "binomiale verdeling" or "normale verdeling"): <https://www.wiskundeacademie.nl/> and <https://www.youtube.com/@WiskundeAcademie>.
- **Khan Academy**, Statistics and probability (English): <https://www.khanacademy.org/math/statistics-probability>. Dutch version of the maths site: <https://nl.khanacademy.org/math>. Good for extra practice on random variables, the normal distribution and significance tests.
- **Past exams.** Probability questions in Dutch exam style are in the past VWO Wiskunde A central exams, with marking schemes (*correctievoorschrift*): <https://www.alleexamens.nl/examens/VWO/Wiskunde-A/>. Pick the questions on binomial and normal distributions and on tests; skip the rest. The Wiskunde B exams (<https://www.alleexamens.nl/examens/VWO/Wiskunde-B/>) are useful for the other stage D modules, not this one.
- **Book (paid):** David Patrick, *Introduction to Counting & Probability* (Art of Problem Solving). Excellent for the counting and probability in sections 1–5, with harder problems than school. AoPS store: <https://artofproblemsolving.com/store/list/aops-curriculum>. Free practice with AoPS Alcumus: <https://artofproblemsolving.com/alcumus>.
- **GR (*grafische rekenmachine*, graphing calculator).** Use the one the school prescribes. The notes write commands neutrally: binompdf, binomcdf, normalcdf, invNorm.

## Week-by-week plan

About 4 hours a week: roughly 1.5 h reading and working through the examples, 2 h practice, 0.5 h challenge.

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | [§1 Counting and probability rules](notes.md#1-counting-and-the-basic-probability-rules), [§2 Tree diagrams, with and without replacement](notes.md#2-tree-diagrams-and-drawing-with-or-without-replacement) | [Problems](problems.md) 1, 2, 3, 13 | 24 (birthdays) |
| 2 | [§3 Conditional probability, Bayes, independence](notes.md#3-conditional-probability-bayes-and-independence) | 4, 5, 12 | 26 (Monty Hall) |
| 3 | [§4 Random variables, expected value, standard deviation](notes.md#4-random-variables-expected-value-and-standard-deviation) | 6, 7, 21 | 22 |
| 4 | [§5 Sums and the square-root law](notes.md#5-sums-of-random-variables-and-the-square-root-law) | 8, 15a | 25 (letters and envelopes) |
| 5 | [§6 The binomial distribution](notes.md#6-the-binomial-distribution-binomiale-verdeling) | 9, 14 | 28a–b |
| 6 | [§7 The normal distribution](notes.md#7-the-normal-distribution-normale-verdeling), [§8 Normal approximation and continuity correction](notes.md#8-approximating-the-binomial-by-the-normal) | 10, 11, 15b, 16 | 28c |
| 7 | [§9 Hypothesis testing](notes.md#9-hypothesis-testing-hypothesetoetsen) | 17, 18, 19 | 27 (type II errors) |
| 8 | [§10 Correlation and regression](notes.md#10-correlation-and-regression-correlatie-en-regressie) | 20 | 23 (least squares in detail) |
| 9 | Review with [§11 Checklist of formulas](notes.md#11-checklist-of-formulas) | Redo any problem you got wrong; then probability questions from two past VWO Wiskunde A CEs (see Resources), timed | Check the exit criteria below |

## "I can…" checklist

- [ ] I can choose between permutations and combinations and explain the formula for $\binom nk$.
- [ ] I can use the complement rule for "at least one" questions.
- [ ] I can draw a probability tree and know when to multiply and when to add.
- [ ] I can compute probabilities for drawing without replacement with combinations (hypergeometric).
- [ ] I can compute $P(A \mid B)$ from a two-way table and with Bayes' rule, and explain the medical-test paradox.
- [ ] I can show whether two events are independent, and explain why disjoint is not the same as independent.
- [ ] I can compute $E(X)$, $\operatorname{Var}(X)$ and $\sigma(X)$ from a probability distribution, by hand and on the GR.
- [ ] I can prove $E(X + Y) = E(X) + E(Y)$ and, for independent $X$ and $Y$, $\operatorname{Var}(X + Y) = \operatorname{Var}(X) + \operatorname{Var}(Y)$.
- [ ] I can apply the square-root law to sums and means.
- [ ] I can state the four conditions of the binomial distribution and prove its formula, $E(X) = np$ and $\sigma(X) = \sqrt{np(1-p)}$.
- [ ] I can use binompdf and binomcdf correctly for "exactly", "at most", "at least" and "between".
- [ ] I can use normalcdf and invNorm, and find an unknown $\mu$ or $\sigma$ by standardising.
- [ ] I can approximate a binomial probability with the normal distribution and the continuity correction.
- [ ] I can carry out a left-, right- or two-sided test with a p-value and with a critical region, and write the conclusion in words.
- [ ] I can explain type I and type II errors and compute a type II probability.
- [ ] I can compute $r$ and the regression line, derive the regression line by minimising the sum of squares, and explain why correlation does not imply causation.

## Exit criteria

Move on to stage E when:

1. Every item on the checklist is ticked, honestly.
2. You have solved at least 22 of the 28 problems on your own, including all exam-level problems 12–21, with answers matching [solutions.md](solutions.md) to 3 decimals.
3. You have done the probability questions of two past VWO Wiskunde A central exams under time pressure, marked them with the *correctievoorschrift*, and scored at least 75% of the points.
4. You can give, without notes, the proofs of $\operatorname{Var}(X + Y) = \operatorname{Var}(X) + \operatorname{Var}(Y)$ for independent variables, of the binomial formula, and of the regression line formula.
