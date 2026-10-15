# E1 Differential equations and dynamical systems

[← Stage E overview](../README.md) · [Notes](notes.md) · [Problems](problems.md) · [Solutions](solutions.md)

**Stage:** E, klas 4 (school year 2030–31)
**Length:** 8 weeks at about 4 hours a week
**Exam programmes:** current Wiskunde D domain C (*dynamische systemen*); wiskunde techniek A4/A5 (*verbanden*, *veranderingen*: differential equations as continuous dynamic models) and B4 (*digitaal gereedschap*: algorithms)

## Prerequisites

- Derivatives of all standard functions, chain rule: [D1 Differential calculus II](../../D-bovenbouw-advanced/D1-differential-calculus-II/)
- Antiderivatives (*primitieven*) and the integral, including substitution: [D2 Integral calculus](../../D-bovenbouw-advanced/D2-integral-calculus/)
- Exponential and logarithmic functions: [C2 Exponential and logarithmic functions](../../C-bovenbouw-core/C2-exponential-logarithmic/)
- Sequences met in stage B/C (*rijen*, arithmetic and geometric)

## Objectives

By the end of this module he can:

1. Work with sequences given by a direct formula (*directe formule*) or a recursive formula (*recursieve formule*), and with arithmetic and geometric sequences and their sums.
2. Solve first-order linear difference equations (*differentievergelijkingen*) $u_{n+1} = a u_n + b$ exactly, find the equilibrium value (*evenwichtswaarde*, *dekpunt*) and decide its stability.
3. Draw and read web diagrams (*webgrafieken*) and describe convergence as monotonic or oscillating (*monotoon* or *slingerend*).
4. Find fixed points of a nonlinear recurrence $u_{n+1} = f(u_n)$ and test stability using $\lvert f'(L) \rvert < 1$, with a proof.
5. Set up a differential equation (*differentiaalvergelijking*) from a verbal model, and check that a given function is a solution (*oplossing*) satisfying an initial condition (*beginvoorwaarde*).
6. Sketch and read a slope field (*lijnelementenveld*), find equilibrium solutions and judge their stability.
7. Solve separable equations by separation of variables (*scheiden van variabelen*), including the logistic equation, and explain why the method is valid.
8. Model and analyse exponential growth and decay and logistic growth (*logistische groei*), including the inflection point at half the carrying capacity.
9. Carry out Euler's method (*methode van Euler*) by hand and as an algorithm in Python or on the graphing calculator, and explain how the error depends on the step size.

## Exam domain mapping

| Topic | Current Wiskunde D (vwo) | Wiskunde techniek (vwo, concept Sept 2026) |
|---|---|---|
| Sequences, recursion, difference equations | C Dynamische systemen | A4 verbanden, A5 veranderingen (discrete change) |
| Web diagrams, fixed points, stability | C | A5, B2 onderzoeken met modellen |
| Differential equations, slope fields | C | A5 (new compared with Wiskunde B) |
| Separation of variables | C | A5 (check the final syllabus: may be SE only) |
| Euler's method as an algorithm | C | B4 digitaal gereedschap, A1 (algorithms) |
| Proof of the stability criterion | A Vaardigheden | B3 redeneren en bewijzen |

## Resources

- This module's [notes](notes.md), [problems](problems.md) and [solutions](solutions.md).
- 3Blue1Brown, the *Differential equations* lessons: <https://www.3blue1brown.com/?topic=differential-equations>
- GeoGebra (slope fields with the `SlopeField` command, web diagrams with sliders): <https://www.geogebra.org/calculator>
- Khan Academy, Differential equations unit (search "slope fields", "separable equations", "logistic"): <https://www.khanacademy.org/>
- Wiskunde D syllabus description (DUO): <https://duo.nl/images/wiskunde-d-(vwo-2026).pdf>
- Book (paid, optional): Steven Strogatz, *Nonlinear Dynamics and Chaos*, chapters 1–2 and 10 (one-dimensional flows and maps). University level but the first chapters are readable for him.

## Week-by-week plan

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | Notes §1–2: sequences, linear difference equations | Problems 1–4 | Derive the sum formula of a geometric sequence in two different ways |
| 2 | Notes §3–4: web diagrams, nonlinear recurrences, stability | Problems 5, 13, 14 | Problem 19 (proof of the stability criterion) |
| 3 | Notes §5: second-order recurrences; review | Problem 20 | Problem 22 (2-cycle of the logistic map); explore $r$ from 2.8 to 4 in Python |
| 4 | Notes §6–7: differential equations as models, slope fields | Problems 6, 7, 15 | Draw a slope field for $y' = y^2 - x$ in GeoGebra and describe what you see |
| 5 | Notes §8: separation of variables | Problems 8, 9, 16 | Problem 18 (Torricelli) |
| 6 | Notes §9: exponential and logistic growth | Problems 11, 12 | Problem 24 (inflection of the logistic curve) |
| 7 | Notes §10: Euler's method; write the Python program | Problems 10, 17 | Problem 21 ($(1+1/n)^n$ is increasing) |
| 8 | Review the whole module; notes §11 going further | Problem 23; redo every problem you got wrong | Timed test: problems 11, 12, 15, 17 in 75 minutes |

## "I can…" checklist

- [ ] I can switch between a recursive and a direct formula for arithmetic, geometric and linear-recurrence sequences.
- [ ] I can find the equilibrium value of $u_{n+1} = a u_n + b$ and write $u_n = L + a^n (u_0 - L)$.
- [ ] I can draw a web diagram and say from it whether the sequence converges, and whether it does so monotonically or oscillating.
- [ ] I can prove that a fixed point $L$ with $\lvert f'(L) \rvert < 1$ attracts nearby starting values.
- [ ] I can check by substitution that a function solves a differential equation with a given initial condition.
- [ ] I can sketch a slope field by hand using isoclines and read equilibrium solutions from it.
- [ ] I can solve a separable differential equation and explain where the "+C" goes and which solutions get lost when dividing.
- [ ] I can derive the solution of the logistic equation and show that the growth is fastest at $N = K/2$.
- [ ] I can carry out Euler's method by hand for two or three steps and write a short program for many steps.
- [ ] I can explain why halving the step size in Euler's method roughly halves the error.

## Exit criteria

Move on to E2 when:

- He scores at least 75% on the timed test in week 8 (problems 11, 12, 15, 17), marked with the solutions.
- He has written a working Euler program (Python or graphing calculator) and compared its output with an exact solution.
- He can explain the stability criterion and the separation-of-variables method out loud without notes.
