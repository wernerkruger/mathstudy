# E2 Complex numbers

[← Stage E overview](../README.md) · [Notes](notes.md) · [Problems](problems.md) · [Solutions](solutions.md)

**Stage:** E, klas 4 (school year 2030–31)
**Length:** 8 weeks at about 4 hours a week
**Exam programmes:** current Wiskunde D domain E (*complexe getallen*). Not in wiskunde techniek; expected to stay in the successor of Wiskunde D (check the final programme, due September 2029).

## Prerequisites

- Trigonometry: unit circle, radians, addition formulas (*somformules*), exact values: [C4 Trigonometric functions](../../C-bovenbouw-core/C4-trigonometric-functions/)
- Vectors in the plane: [D3 Analytic geometry and vectors](../../D-bovenbouw-advanced/D3-analytic-geometry-vectors/)
- Polynomials, factor theorem, the quadratic formula (*abc-formule*)
- Exponential function and its derivative; for §7 also [D2 Integral calculus](../../D-bovenbouw-advanced/D2-integral-calculus/)
- Proof by induction (*volledige inductie*), met in stage D or in the [olympiad module O1](../../olympiad/O1-problem-solving/)

## Objectives

By the end of this module he can:

1. Explain how complex numbers (*complexe getallen*) can be built as pairs of real numbers, and why $i^2 = -1$ is then a theorem, not an assumption.
2. Add, subtract, multiply and divide complex numbers; use the complex conjugate (*geconjugeerde*), the real part (*reëel deel*) and imaginary part (*imaginair deel*).
3. Represent numbers in the complex plane (*complexe vlak*, Argand diagram) and interpret addition as vector addition.
4. Compute the modulus (*modulus*, *absolute waarde*) and argument (*argument*) and switch between Cartesian form $a + bi$ and polar form (*poolvorm*) $r(\cos\varphi + i\sin\varphi) = re^{i\varphi}$.
5. Prove and use that multiplication multiplies moduli and adds arguments; prove De Moivre's theorem (*stelling van De Moivre*) and use it for multiple-angle formulas.
6. Explain and use Euler's formula (*formule van Euler*) $e^{i\varphi} = \cos\varphi + i\sin\varphi$.
7. Solve $z^n = w$; describe the $n$-th roots of unity (*eenheidswortels*) and their geometry.
8. Solve polynomial equations with real and complex coefficients, use the conjugate root theorem, and solve cubics (*derdegraadsvergelijkingen*) with Cardano's formula.
9. Describe sets in the complex plane (*verzamelingen*, *meetkundige plaatsen*) and treat translations, rotations, scalings and reflections as complex functions.

## Exam domain mapping

| Topic | Current Wiskunde D (vwo) | Wiskunde techniek |
|---|---|---|
| Arithmetic, complex plane, modulus, argument | E Complexe getallen | not included |
| Polar form, De Moivre, Euler's formula | E | not included (Euler's formula useful for trig identities in A4) |
| Roots of unity, polynomial equations, cubics | E | not included |
| Geometric transformations | E (and D Meetkunde) | links to A6 meetkunde |
| Proofs (induction, conjugate root theorem) | A Vaardigheden | B3 redeneren en bewijzen |

## Resources

- This module's [notes](notes.md), [problems](problems.md) and [solutions](solutions.md).
- 3Blue1Brown on Euler's formula: <https://www.3blue1brown.com/?lesson=eulers-formula-old>
- GeoGebra: type complex numbers directly (e.g. `z = 1 + i`) and watch multiplication rotate points: <https://www.geogebra.org/calculator>
- Khan Academy, Complex numbers (Precalculus): <https://www.khanacademy.org/>
- Books (paid, optional): Paul J. Nahin, *An Imaginary Tale: The Story of √−1* (history, readable); Tristan Needham, *Visual Complex Analysis*, chapter 1 (geometric, beautiful, demanding).

## Week-by-week plan

| Week | Read | Practise | Challenge |
|---|---|---|---|
| 1 | Notes §1–3: history, construction, arithmetic | Problems 1, 2, 8, 9 | Prove that $\mathbb{C}$ cannot be ordered compatibly with multiplication (notes §2) |
| 2 | Notes §4: complex plane, modulus, triangle inequality | Problems 3, 5, 17 | Prove the triangle inequality without looking |
| 3 | Notes §5: polar form, multiplication as rotation | Problems 4, 10, 19 | Problem 18 (equilateral triangle) |
| 4 | Notes §6: De Moivre | Problems 6, 11 | Find $\cos 5\varphi$ in terms of $\cos\varphi$ |
| 5 | Notes §7: Euler's formula | Problem 20 | Problem 23 (sum of cosines) |
| 6 | Notes §8: roots, roots of unity | Problems 7, 14 | Problem 21 (product of $1 - \omega^k$) |
| 7 | Notes §9: polynomials, cubics, Cardano | Problems 12, 13, 15, 16 | Problem 22 |
| 8 | Notes §10–12: transformations; review | Redo mistakes | Problems 24, 25; timed test: 11, 12, 15, 17 in 75 minutes |

## "I can…" checklist

- [ ] I can multiply and divide complex numbers in the form $a + bi$ using the conjugate.
- [ ] I can draw $z$, $\bar z$, $-z$, $z + w$ and $iz$ in the complex plane.
- [ ] I can find modulus and argument of any nonzero complex number, using the correct quadrant.
- [ ] I can prove that $\lvert zw\rvert = \lvert z\rvert\lvert w\rvert$ and $\arg(zw) = \arg z + \arg w$ (mod $2\pi$).
- [ ] I can prove De Moivre's theorem by induction and use it to express $\cos 3\varphi$ in $\cos\varphi$.
- [ ] I can write $\cos\varphi$ and $\sin\varphi$ in terms of $e^{i\varphi}$ and $e^{-i\varphi}$.
- [ ] I can solve $z^n = w$ and draw the solutions as a regular polygon.
- [ ] I can factor a real polynomial using a known complex root and its conjugate.
- [ ] I can solve a depressed cubic with Cardano's method and explain Bombelli's example.
- [ ] I can describe a set like $\lvert z - a\rvert = 2\lvert z - b\rvert$ geometrically.
- [ ] I can write a rotation about any point as a complex function.

## Exit criteria

Move on to E3 when:

- He scores at least 75% on the timed test (problems 11, 12, 15, 17).
- He can explain, with a picture, why multiplying by $e^{i\theta}$ rotates by $\theta$.
- He can solve $z^3 = 8i$ and $x^3 + 6x - 20 = 0$ without notes.
