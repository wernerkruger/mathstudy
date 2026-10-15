# D1 Differential calculus II

[← Stage D](../README.md) · [Notes](notes.md) · [Problems](problems.md) · [Solutions](solutions.md) · [Glossary](../../GLOSSARY.md)

**Stage:** D, upper-school advanced (*bovenbouw*), klas 3 gymnasium, school year 2029–30.  
**Length:** 9 weeks at about 4 hours a week (about 36 hours).  
**Next:** [D2 Integral calculus](../D2-integral-calculus/).

## Prerequisites

- [C3 Differential calculus I](../../C-bovenbouw-core/C3-differential-calculus-I/): the derivative as a limit of difference quotients, the power and sum rules, tangent lines, extremes of polynomials.
- [C2 Exponential and logarithmic functions](../../C-bovenbouw-core/C2-exponential-logarithmic/): $e$, $\ln$, the rules for logarithms, the notation ${}^{g}\!\log x$.
- [C4 Trigonometric functions](../../C-bovenbouw-core/C4-trigonometric-functions/): radians, the unit circle, the addition formulas, exact values.
- [C1 Functions, graphs and equations](../../C-bovenbouw-core/C1-functions-graphs/): domain, range, asymptotes, transformations, inverse functions.

If the addition formula $\sin(a + b) = \sin a\cos b + \cos a\sin b$ or the rule ${}^{g}\!\log x = \dfrac{\ln x}{\ln g}$ is not fresh, revise it in week 1.

## Objectives

By the end of this module he can:

1. Use the product rule (*productregel*), quotient rule (*quotiëntregel*) and chain rule (*kettingregel*), and explain why each is true.
2. Derive and use the derivatives (*afgeleiden*) of $\sin x$, $\cos x$, $\tan x$, $e^x$, $a^x$, $\ln x$ and ${}^{g}\!\log x$, starting from the limits $\dfrac{\sin x}{x} \to 1$ and $\dfrac{e^h - 1}{h} \to 1$.
3. Find the derivative of an inverse function (*inverse functie*) at a point, and (going further) derive the derivatives of $\arcsin$ and $\arctan$.
4. Differentiate implicitly (*impliciet differentiëren*) to find tangent lines, horizontal tangents and vertical tangents to curves such as $x^2 + xy + y^2 = 7$.
5. Solve related-rates problems (*samenhangende veranderingen*) such as "how fast does the water level rise".
6. Carry out a full investigation of a function (*functieonderzoek*): domain, asymptotes (*asymptoten*), extremes (*extremen*), inflection points (*buigpunten*) with the second derivative (*tweede afgeleide*), sign charts (*tekenschema's*) and range.
7. Solve optimisation problems (*optimaliseren*) and justify that the answer is a maximum or minimum.
8. Work with functions with a parameter (*functies met parameter*): decide for which values a property holds, and find the locus of extremes (*kromme van toppen*).
9. Prove that a line touches (*raakt*) a graph, and find tangent lines with a given property, in the style of "toon aan" (show that) and "bereken exact" (calculate exactly) exam questions.

## Exam domains

| Programme | Domain or subdomain | What this module covers |
|---|---|---|
| Wiskunde B vwo (CvTE syllabus 2028; CvTE = College voor Toetsen en Examens) | C1 afgeleide functies; C2 technieken voor differentiëren | All differentiation rules, standard derivatives, tangent lines, second derivative |
| Wiskunde B vwo | B3 functies en grafieken; B4 inverse functies; B6 asymptoten en limietgedrag | Curve sketching, inverse functions, asymptotes |
| Wiskunde techniek vwo (concept by SLO, the national curriculum institute, September 2026) | A5 veranderingen (including the implicit derivative, *impliciete afgeleide*); A4 verbanden; B1 probleemaanpakken | Everything in this module; the implicit derivative is named in the SLO overview as new compared with Wiskunde B |
| Wiskunde D vwo | None directly | Differential equations in [E1](../../E-wiskunde-d-and-exams/) build on this module |

All of this is central exam material (CE = *centraal examen*), not only school exam (SE = *schoolexamen*) material. Sources: [CvTE Wiskunde B syllabus 2028](https://static.alleexamens.nl/programma/vwo/2028/Wiskunde%20B.pdf) and [SLO concept programme wiskunde techniek vwo](https://www.slo.nl/publish/pages/22945/definitief-conceptexamenprogramma-wiskunde-techniek-vwo.pdf). The new programmes are still being finalised: re-check them each year.

## Resources

- **Notes:** [notes.md](notes.md) is the main text. Read it with pen and paper.
- **WiskundeAcademie** (Dutch videos, vwo Wiskunde B): <https://www.wiskundeacademie.nl/> and <https://www.youtube.com/@WiskundeAcademie>. Search for "kettingregel", "impliciet differentiëren", "afgeleide goniometrische functies", "functies met parameter". Useful to hear the Dutch exam vocabulary.
- **Khan Academy, Differential calculus** (English): <https://www.khanacademy.org/math/differential-calculus>. The units on the chain rule, implicit differentiation, related rates and analysing functions give unlimited extra practice with instant feedback. Dutch version: <https://nl.khanacademy.org/math>.
- **3Blue1Brown, Essence of calculus** (English videos): <https://www.3blue1brown.com/?topic=calculus>. The chapters on the chain and product rules, on $e^x$, and on implicit differentiation give the geometric pictures behind the rules. Watch them before or after the matching notes section.
- **Book:** David Patrick, *Calculus* (Art of Problem Solving). Chapters on differentiation rules, implicit differentiation, related rates and optimisation are at exactly the right level, with harder problems than the CE. See the [AoPS curriculum store](https://artofproblemsolving.com/store/list/aops-curriculum).
- **Past exams:** VWO Wiskunde B central exams since 1999, with marking schemes (*correctievoorschrift*): <https://www.alleexamens.nl/examens/VWO/Wiskunde-B/>. Almost every paper has two or three questions on functieonderzoek, functions with a parameter and tangent lines. Use papers from 2018 onwards, and skip questions on integrals (D2) and vectors (D3) for now.

## Week-by-week plan

About 4 hours a week: roughly 1.5 h reading and working through the examples, 2 h problems, 0.5 h checking against [solutions.md](solutions.md).

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | [§1 Toolkit](notes.md#1-the-toolkit-so-far), [§2 Product and quotient rule](notes.md#2-product-and-quotient-rule), [§3 Chain rule](notes.md#3-the-chain-rule) | Problems 1, 2(a); Khan Academy chain rule unit | Read the "proof that always works" box in §3 and explain it aloud |
| 2 | [§4 Sine, cosine, tangent](notes.md#4-derivatives-of-sine-cosine-and-tangent) | Problems 2(e)(f), 4, 22(a) | 29(a)(b) |
| 3 | [§5 The number e](notes.md#5-the-number-e-and-the-derivative-of-ex), [§6 Logarithms and other bases](notes.md#6-logarithms-ax-and-other-bases) | Problems 2(b)(c)(d), 3, 5 | 25 |
| 4 | [§7 Inverse functions](notes.md#7-inverse-functions-and-their-derivatives), [§8 Implicit differentiation](notes.md#8-implicit-differentiation) (to worked example 8.1) | Problems 11, 6, 7 | 24, 23 |
| 5 | [§8](notes.md#8-implicit-differentiation) (rest), [§9 Related rates](notes.md#9-related-rates) | Problems 21, 8, 9, 19 | 27 |
| 6 | [§10 Tangent lines](notes.md#10-tangent-lines-and-toon-aan-dat-de-lijn-raakt) | Problems 14, 22(b), 12 | 26 |
| 7 | [§11 Curve sketching](notes.md#11-curve-sketching-functieonderzoek) | Problems 10, 20, 13 | 29(c)(d) |
| 8 | [§12 Optimisation](notes.md#12-optimisation), [§13 Functions with a parameter](notes.md#13-functions-with-a-parameter) | Problems 17, 18, 15, 16 | 28 |
| 9 | [§14 Common mistakes](notes.md#14-common-mistakes); review | Differentiation questions from two recent VWO Wiskunde B CEs on alleexamens.nl, marked strictly with the *correctievoorschrift*; redo any problem from this module that went wrong | Any challenge problem not yet solved |

## "I can…" checklist

- [ ] I can state and use the product, quotient and chain rules, and explain the idea behind each.
- [ ] I can explain why the simple proof of the chain rule breaks when $g(x + h) = g(x)$, and how to repair it.
- [ ] I can prove that $\dfrac{\sin x}{x} \to 1$ and use it to derive $(\sin x)' = \cos x$.
- [ ] I can explain what makes $e$ special and derive $(\ln x)' = \dfrac1x$, $(a^x)' = a^x\ln a$ and $\left({}^{g}\!\log x\right)' = \dfrac{1}{x\ln g}$.
- [ ] I can compute the derivative of an inverse function at a point without a formula for the inverse.
- [ ] I can differentiate a curve implicitly and find its tangent line, horizontal tangents and vertical tangents.
- [ ] I can set up and solve a related-rates problem without substituting numbers too early.
- [ ] I can do a complete functieonderzoek, including oblique asymptotes and inflection points, and justify each extreme with a sign chart.
- [ ] I can solve an optimisation problem and justify that I found a maximum or minimum.
- [ ] I can find for which values of a parameter a function has a given number of extremes, and find the locus of extremes.
- [ ] I can prove that a line touches a graph by checking both height and slope.
- [ ] I give exact answers when the question says "bereken exact".

## Exit criteria

Move on to [D2 Integral calculus](../D2-integral-calculus/) when:

1. Every item in the checklist is ticked, honestly.
2. He scores at least 80% on the CE-level problems (12–22) without looking at the solutions, with every answer fully justified.
3. He can do the differentiation questions of a recent VWO Wiskunde B CE in the time the exam allows for those points (the exam's total time divided by its total points, times the points) and loses few points against the correctievoorschrift.
4. He has solved at least three of the challenge problems (23–29) and can explain one of them to an adult.

If week 9 shows gaps, take a tenth week rather than moving on: D2 relies on fluent differentiation in both directions.
