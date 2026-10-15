# D3 Analytic geometry, vectors and motion

[← Stage D](../README.md) · [Glossary](../../GLOSSARY.md)

**Stage:** D, upper-school advanced (*bovenbouw*), klas 3 gymnasium, school year 2029–30
**Length:** 10 weeks at about 4 hours a week (about 40 hours)
**Prerequisites:**

- [Stage B](../../B-onderbouw-compact/), module [B3](../../B-onderbouw-compact/B3-geometry-trigonometry/) on geometry: Pythagoras, similarity, trigonometry in triangles including the cosine rule (*cosinusregel*), and proof.
- [C1 Functions, graphs and equations](../../C-bovenbouw-core/C1-functions-graphs/): linear and quadratic equations, completing the square, systems of equations.
- [C4 Trigonometric functions](../../C-bovenbouw-core/C4-trigonometric-functions/): unit circle, radians, $\sin^2 + \cos^2 = 1$, double-angle formulas.
- [D1 Differential calculus II](../D1-differential-calculus-II/): chain rule and derivatives of trigonometric functions, needed for velocity vectors and tangents to parametric curves.
- Helpful but not required: [D2 Integral calculus](../D2-integral-calculus/), for arc length and area in the "going further" parts.

**Next:** [D4 Probability and statistics](../D4-probability-statistics/). The geometry continues in [stage E](../../E-wiskunde-d-and-exams/) (E1 differential equations, where velocity vectors return as direction fields, and E3 geometry, proof and conic sections).

## Objectives

By the end of this module you can:

1. Write a line in three forms, $y = mx + b$, $ax + by = c$ and the vector form (*vectorvoorstelling*), and move between them using the direction coefficient (*richtingscoëfficiënt*), direction vector (*richtingsvector*) and normal vector (*normaalvector*).
2. Calculate with vectors: addition, scalar multiplication, length (*lengte*), unit vectors (*eenheidsvector*), position vectors (*plaatsvector*).
3. Use both definitions of the dot product (*inproduct*), prove that they agree via the cosine rule, and use it for angles between vectors and lines (*hoek tussen lijnen*), perpendicularity (*loodrecht*) and projection (*loodrechte projectie*).
4. Calculate the distance from a point to a line (*afstand punt tot lijn*) with the formula $\dfrac{\lvert ax_0 + by_0 - c\rvert}{\sqrt{a^2 + b^2}}$, prove that formula, and find the distance between parallel lines.
5. Work with circles: the circle equation (*cirkelvergelijking*), completing the square (*kwadraatafsplitsen*) to find centre (*middelpunt*) and radius (*straal*), tangent lines (*raaklijnen*), and intersections of a line and a circle and of two circles.
6. Describe motion with equations of motion (*bewegingsvergelijkingen*) and parametric curves (*parameterkrommen*); eliminate the parameter to show that a path is a known curve.
7. Calculate the velocity vector (*snelheidsvector*), acceleration vector (*versnellingsvector*) and speed (*baansnelheid*) $\sqrt{x'(t)^2 + y'(t)^2}$; find tangent lines, horizontal and vertical tangents, double points (*dubbelpunten*) and the angle at which a curve crosses itself; analyse Lissajous figures (*lissajousfiguren*).
8. Solve CE-style motion problems: two moving points, closest approach, maximal speed, "show that the path is a circle".
9. (Going further) Calculate the arc length (*booglengte*) of a parametric curve, and carry the dot product and distance formula over to three dimensions.

## Exam programme mapping

| Programme | Domain | What this module covers |
|---|---|---|
| Wiskunde B vwo (CvTE syllabus 2028, current programme) | E Meetkunde met coördinaten: E1 meetkundige vaardigheden, E2 algebraïsche methoden in de vlakke meetkunde, E3 vectoren en inproduct, E4 toepassingen | Lines, circles, distances, angles, dot product, motion problems. E is in the CE (*centraal examen*, central exam); E1 is also tested in the SE (*schoolexamen*, school exam). |
| Wiskunde B vwo | C Differentiaal- en integraalrekening (applied) | Velocity and acceleration as derivatives, maximum speed, bewegingsvergelijkingen as they appear in Wiskunde B CE questions. |
| Wiskunde techniek vwo (successor of Wiskunde B, new programme from 2029) | A6 meetkunde; A5 veranderingen; B3 redeneren en bewijzen | Analytic geometry with lines, circles, vectors and inproduct; parameterkrommen with snelheids- and versnellingsvector (named explicitly as new content); analytic proofs. |
| Wiskunde D vwo (current, SE only) | D Meetkunde (space with inproduct, uitproduct, normaalvector) | Preview only, in [notes §13](notes.md#13-going-further) and problem 28. |

Sources: the CvTE Wiskunde B syllabus 2028 and the SLO final concept programme for wiskunde techniek (September 2026). Both are listed in the track's research notes and [RESOURCES.md](../../RESOURCES.md).

## Resources

- **Notes, problems and solutions in this folder:** [notes.md](notes.md), [problems.md](problems.md), [solutions.md](solutions.md).
- **WiskundeAcademie** (Dutch videos, vwo Wiskunde B, chapters on *meetkunde met coördinaten*, *vectoren* and *bewegingsvergelijkingen*): <https://www.wiskundeacademie.nl/> and <https://www.youtube.com/@WiskundeAcademie>. Useful to hear the Dutch terms and the CE way of writing solutions.
- **Khan Academy** (English): the precalculus unit on vectors, <https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:vectors>, and the AP Calculus BC unit on parametric equations and vector-valued functions, <https://www.khanacademy.org/math/ap-calculus-bc/bc-advanced-functions-new>. Dutch interface: <https://nl.khanacademy.org/math>.
- **Past central exams:** VWO Wiskunde B exams with correction schemes (*correctievoorschrift*) since 1999 on <https://www.alleexamens.nl/examens/VWO/Wiskunde-B/>. Many recent exams include questions on bewegingsvergelijkingen and on circles or distances; search the exams by topic. Use them in weeks 9 and 10.
- **Book:** Richard Rusczyk, *Precalculus* (Art of Problem Solving), the chapters on vectors, the dot product and parametric equations. Harder and more proof-based than school books. Available from the AoPS store: <https://artofproblemsolving.com/store/list/aops-curriculum>.
- **Tool:** GeoGebra or Desmos (free) for plotting parametric curves. Always sketch the curve before you calculate.

## Week-by-week plan

About 4 hours a week: roughly 1.5 h reading and working through the examples in the notes, 2 h practice, 0.5 h challenge.

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | [§1 Lines](notes.md#1-lines-in-the-plane), [§2 Vectors](notes.md#2-vectors) | 1, 3a | 22a |
| 2 | [§3 The dot product](notes.md#3-the-dot-product): learn the proof of 3.2 until you can write it from memory | 3b–c, 12a, 12d | 23 |
| 3 | [§4 Intersections and angles](notes.md#4-intersections-and-angles-between-lines), [§5 Distance point–line](notes.md#5-distance-from-a-point-to-a-line) | 2, 4, 5, 12b, 13 | 21 |
| 4 | [§6 Circles](notes.md#6-circles), [§7.1–7.2](notes.md#7-tangent-lines-and-intersections-with-circles) | 6, 7, 8, 12c | 24 |
| 5 | [§7.3 Circle and circle](notes.md#7-tangent-lines-and-intersections-with-circles); review §1–7 | 14, 15, 16 | 22b–c |
| 6 | [§8 Parametric curves](notes.md#8-parametric-curves) | 9b, 10a, 11 | 25 |
| 7 | [§9 Velocity, acceleration and speed](notes.md#9-velocity-acceleration-and-speed) | 9a, 10b–c, 19, 20 | Prove: speed is constant if and only if $\vec v\cdot\vec a = 0$ for all $t$ (notes §9.4) |
| 8 | [§10 Tangents and self-intersections](notes.md#10-horizontal-and-vertical-tangents-self-intersections), [§11 Lissajous figures](notes.md#11-lissajous-figures) | 9c–d, 18 | 26 |
| 9 | [§12 Motion problems in CE style](notes.md#12-motion-problems-in-ce-style), [§14 Common mistakes](notes.md#14-summary-of-common-mistakes) | 17; two CE questions on bewegingsvergelijkingen from alleexamens.nl | 27 |
| 10 | [§13 Going further](notes.md#13-going-further); review | Timed test: 12, 15, 17, 18 in 90 minutes, then mark yourself with [solutions.md](solutions.md); two more past CE questions on circles or distances | 28 |

## "I can..." checklist

- [ ] I can convert a line between $y = mx + b$, $ax + by = c$ and vector form, and read off a normal and a direction vector.
- [ ] I can prove that $u_1v_1 + u_2v_2 = \lVert\vec u\rVert\lVert\vec v\rVert\cos\varphi$ using the cosine rule.
- [ ] I can calculate the angle between two vectors and between two lines, and I know why the second needs an absolute value.
- [ ] I can test perpendicularity with the dot product and with $m_1m_2 = -1$.
- [ ] I can prove the point–line distance formula and use it, also for parallel lines.
- [ ] I can find the foot of a perpendicular and the mirror image of a point in a line.
- [ ] I can find centre and radius of a circle by completing the square, and the circle through three points.
- [ ] I can find the tangent at a point of a circle, and the tangents from an outside point.
- [ ] I can intersect a line with a circle and two circles with each other, and decide the number of intersection points without solving.
- [ ] I can eliminate the parameter to show that a path is a circle, parabola or other known curve.
- [ ] I can calculate velocity, acceleration and speed, and find the maximum speed.
- [ ] I can find horizontal and vertical tangents and handle points where the velocity is zero.
- [ ] I can find a double point and the angle at which the curve crosses itself.
- [ ] I can distinguish "the paths cross" from "the points collide", and find the moment of closest approach.
- [ ] I can write a complete "toon aan" argument and an exact answer for "bereken exact".

## Exit criteria

Move on to D4 when all of the following hold:

1. Every box in the checklist is ticked, honestly.
2. You scored at least 75% on the week-10 timed test (problems 12, 15, 17, 18; 60 points in total), marked strictly with the solutions.
3. You can write the proofs of the dot-product theorem (notes §3.2) and the distance formula (notes §5.1) without looking.
4. You have done at least four past CE questions from alleexamens.nl on this domain and marked them with the official correction scheme, scoring at least two thirds of the points.
5. You have solved at least four of the eight challenge problems (21–28).
