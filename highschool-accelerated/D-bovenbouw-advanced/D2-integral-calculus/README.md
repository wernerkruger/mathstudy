# D2 Integral calculus

[← Stage D overview](../README.md) · [Glossary](../../GLOSSARY.md)

**Stage:** D, bovenbouw advanced (klas 3 gymnasium, school year 2029–30)
**Length:** 10 weeks at about 4 hours a week (about 40 hours)
**Prerequisites:**

- [D1 Differential calculus II](../D1-differential-calculus-II/): the chain rule (*kettingregel*), product and quotient rules, and the derivatives of $x^r$, $e^x$, $a^x$, $\ln x$, $\sin x$ and $\cos x$. You must be able to differentiate quickly and without errors, because every check in this module is a differentiation.
- [C2 Exponential and logarithmic functions](../../C-bovenbouw-core/C2-exponential-logarithmic/): the rules for $e^x$ and $\ln x$.
- [C4 Trigonometric functions](../../C-bovenbouw-core/C4-trigonometric-functions/): radians, the unit circle and the double-angle formulas, especially $\cos^2 x = \tfrac12(1+\cos 2x)$.
- [C3 Differential calculus I](../../C-bovenbouw-core/C3-differential-calculus-I/) for the meaning of the derivative as a rate of change.

**Next:** [D3 Analytic geometry, vectors and motion](../D3-analytic-geometry-vectors/). Integrals return in [stage E](../../E-wiskunde-d-and-exams/) (E1 differential equations) and throughout E4 exam practice.

## What this module covers

Differentiation answers "how fast does it change?". Integration answers the reverse question, "how much has built up?", and the same idea measures areas, volumes, lengths of curves, distances and averages. The surprise at the heart of the module is the fundamental theorem of calculus (*hoofdstelling van de integraalrekening*): finding an area is the same as undoing a derivative.

## Learning objectives

By the end of this module you can:

1. Find antiderivatives (*primitieven*; the verb is *primitiveren*) of the standard functions, including $\tfrac1x \mapsto \ln\lvert x\rvert$, $e^x$, $a^x$, $\sin x$ and $\cos x$, and use the linear substitution rule $f(ax+b) \mapsto \tfrac1a F(ax+b)$.
2. Answer "show that $F$ is an antiderivative of $f$" (*toon aan dat $F$ een primitieve is van $f$*) by differentiating $F$.
3. Explain the area problem with Riemann sums (*Riemann-som*), lower and upper sums (*ondersom* and *bovensom*), and compute $\int_0^1 x^2\,dx$ exactly from the definition.
4. State and use the definite integral (*bepaalde integraal*), its properties, and the fundamental theorem of calculus, and explain why the theorem is true.
5. Distinguish signed area from area, and compute areas between graphs (*oppervlakte tussen grafieken*), first finding the intersection points (*snijpunten*).
6. Compute volumes of solids of revolution (*omwentelingslichamen*) about the $x$-axis and the $y$-axis with the disc method, and explain where the formula comes from.
7. Recognise and use the reverse chain rule (substitution) in the forms tested in the central exam (CE, *centraal examen*), such as $\int 2x\,e^{x^2}\,dx$, $\int \sin x\cos^2 x\,dx$ and $\int \tfrac{f'}{f}\,dx$.
8. Derive and use the arc length (*booglengte*) formula $\int_a^b\sqrt{1+(f'(x))^2}\,dx$, exactly when the integrand simplifies and numerically with the graphing calculator (GR, *grafische rekenmachine*) when it does not.
9. Apply integrals to average value (*gemiddelde waarde*), distance travelled from velocity, and accumulated quantities.
10. (Going further, not in the CE) Use integration by parts (*partieel integreren*) and evaluate simple improper integrals.

## Exam mapping

| Programme | Domain | What this module covers |
|---|---|---|
| Wiskunde B (current, CvTE syllabus 2028) | C3 *integraalrekening* | antiderivatives, definite integrals, the fundamental theorem, area, volumes of revolution, arc length, applications |
| Wiskunde B | C2 *technieken voor differentiëren* | the chain rule used in reverse; checking antiderivatives by differentiating |
| Wiskunde B | B2 *standaardfuncties*, D *goniometrische functies* | standard functions and trigonometric identities used inside integrals |
| Wiskunde techniek (successor of Wiskunde B) | A5 *veranderingen* | change and accumulation: integrals as the inverse of derivatives, accumulated quantities |
| Wiskunde techniek | B4 *digitaal gereedschap* | numerical integrals on the GR |

CvTE (College voor Toetsen en Examens) is the body that sets the central exams. The CvTE syllabus is at <https://static.alleexamens.nl/programma/vwo/2028/Wiskunde%20B.pdf> and the wiskunde techniek concept programme at <https://www.slo.nl/publish/pages/22945/definitief-conceptexamenprogramma-wiskunde-techniek-vwo.pdf>. Integration by parts and improper integrals are not in the Wiskunde B CE; they are here because they come up in Wiskunde D (school exam, SE = *schoolexamen*) and at university.

## Resources

- **Notes and problems in this folder:** [notes.md](notes.md), [problems.md](problems.md), [solutions.md](solutions.md).
- **WiskundeAcademie** (Dutch videos, vwo B chapters on *primitiveren*, *integralen*, *omwentelingslichamen*, *booglengte*): <https://www.wiskundeacademie.nl/> and <https://www.youtube.com/@WiskundeAcademie>.
- **Khan Academy:** the Integrals unit of AP Calculus AB/BC in English at <https://www.khanacademy.org/>, or the Dutch site <https://nl.khanacademy.org/math>.
- **Past central exams** with the official marking scheme (*correctievoorschrift*): <https://www.alleexamens.nl/examens/VWO/Wiskunde-B/>. Almost every Wiskunde B exam has two or three integral questions. From week 8 onwards, do one integral question from a past exam every week (search the exam for "primitieve", "oppervlakte", "inhoud" and "booglengte").
- **Book:** David Patrick, *Calculus* (Art of Problem Solving), chapters on integration. Harder and more problem-oriented than the Dutch textbooks; good for the challenge sections. Store page: <https://artofproblemsolving.com/store/list/aops-curriculum>.
- **School textbook:** the integral chapters of Getal & Ruimte vwo B or Moderne Wiskunde vwo B (whichever the school uses), for extra routine practice.

## Week-by-week plan

Each week is about 4 hours: roughly 1.5 hours reading and watching, 2 hours practice, 0.5 hour challenge.

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | [notes §1 Antiderivatives](notes.md#1-antiderivatives-primitieven) (1.1–1.3) | Problems 1, 2 | Why is $\ln\lvert x\rvert$ right for $x<0$? (notes §1.2) |
| 2 | [notes §1.4](notes.md#14-show-that-f-is-an-antiderivative-of-f), [§2 The area problem](notes.md#2-the-area-problem-and-riemann-sums) | Problems 3, 4 | Problem 23 |
| 3 | [notes §3 The definite integral](notes.md#3-the-definite-integral-and-its-properties), [§4 The fundamental theorem](notes.md#4-the-fundamental-theorem-of-calculus) | Problems 5, 6 | Problem 28 |
| 4 | [notes §5 Signed area and area between graphs](notes.md#5-signed-area-and-area-between-graphs) | Problems 7, 16, 21 | Problem 26 |
| 5 | [notes §6 The reverse chain rule](notes.md#6-the-reverse-chain-rule-substitution) | Problems 9, 22, 13 | Problem 15 |
| 6 | [notes §7 Volumes of revolution](notes.md#7-volumes-of-revolution) | Problems 8, 14, 17 | Problem 27 |
| 7 | [notes §8 Arc length](notes.md#8-arc-length) | Problems 12, 19, 20 | Problem 19 part d |
| 8 | [notes §9 Applications](notes.md#9-applications-average-value-distance-accumulation) | Problems 10, 11, 18 | One integral question from a past CE (alleexamens.nl) |
| 9 | [notes §10 Common mistakes](notes.md#10-common-mistakes), review | Redo any problem you got wrong; one past CE question | [notes §11 Going further](notes.md#11-going-further-integration-by-parts-and-improper-integrals), problems 24, 25 |
| 10 | Review and exit check | Problems 14, 15, 18 again under time pressure (about 1.5 minutes per point) | Two past-CE integral questions, marked with the *correctievoorschrift* |

## "I can…" checklist

- [ ] I can write down an antiderivative of every function in the table in notes §1.2 without looking.
- [ ] I can use the linear substitution rule and check my answer by differentiating.
- [ ] I can answer a "toon aan dat $F$ een primitieve is van $f$" question with a clean, complete derivation.
- [ ] I can compute a lower and an upper sum, and I can compute $\int_0^1 x^2\,dx$ as a limit of sums.
- [ ] I can state the fundamental theorem of calculus and explain the squeeze argument for $A'(x)=f(x)$.
- [ ] I can compute an exact area between two graphs, including finding the intersection points and checking which graph is on top.
- [ ] I know the difference between $\int_a^b f(x)\,dx$ and the area, and I split the interval at zeros when asked for an area.
- [ ] I can compute volumes of revolution about the $x$-axis and the $y$-axis and explain the disc method.
- [ ] I can spot the reverse chain rule in $\int g'(x)\,h(g(x))\,dx$ and in $\int \tfrac{f'}{f}\,dx$.
- [ ] I can derive the arc length formula and use it exactly or with the GR.
- [ ] I can compute an average value, a distance from a velocity, and a total accumulated quantity.

## Exit criteria

Move on to D3 when:

1. You score at least 80 % on the CE-level problems 13–22, written out in full as you would on an exam, without looking at the solutions.
2. You can do two integral questions from past Wiskunde B central exams (alleexamens.nl) and score at least 75 % of the points according to the *correctievoorschrift*.
3. You can explain the fundamental theorem of calculus aloud to a parent or teacher, including why $A'(x)=f(x)$, in under five minutes.
