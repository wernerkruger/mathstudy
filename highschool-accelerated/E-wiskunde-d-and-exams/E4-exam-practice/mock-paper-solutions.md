# Mock central exam: solutions and point scheme

[← E4 README](README.md) · [Mock paper](mock-paper.md) · [Exam technique](exam-technique.md)

The point scheme follows the style of the official *correctievoorschrift*: each bullet earns the number of points shown at the right. A different correct method earns full points. All answers were checked with SymPy/Python.

**General rules** (adapted from the CvTE marking rules for mathematics):

- An answer without the required working (calculation, explanation or reasoning) earns **0 points** for that question, unless the scheme says otherwise.
- For an *exact* question, using a decimal approximation in an essential step costs at least the points for that step.
- Rounding too early or to the wrong precision: **1 point** deduction, at most once per question.
- With a graphing-calculator step, write down what you entered (function, equation, window). If missing: **1 point** deduction.
- A consequential error (*doorwerkende fout*) is penalised once; later steps that correctly use the wrong value can still earn points.

**Grade.** The CE grade is computed from the score $S$ (out of 75) as $\text{grade} = 9\cdot\frac{S}{75} + N$, where the *N-term* is set by the CvTE after each exam (between 0.0 and 2.0; $N = 1$ is neutral), with extra rules near the bottom and top of the scale. For practice use $N = 1$: a 5.5 then needs about 38 points and a 9 about 67.

---

## Part 1

### Question 1 (4p)

$f'(x) = e^{-\frac12x} + x\cdot(-\tfrac12)e^{-\frac12x} = e^{-\frac12x}\left(1 - \tfrac12x\right)$.
$f'(x) = 0 \iff 1 - \tfrac12x = 0$ (since $e^{-\frac12x} > 0$) $\iff x = 2$.
$f'$ changes from positive to negative at $x = 2$, so this is a maximum: top $(2, \frac2e)$.

- Product rule and chain rule correctly applied: **1**
- $f'(x) = e^{-\frac12x}(1 - \frac12x)$ or equivalent: **1**
- $x = 2$, with the reason that $e^{-\frac12x} \ne 0$: **1**
- $f(2) = 2e^{-1}$, coordinates $(2, \frac2e)$: **1**

### Question 2 (4p)

Integration by parts, or check the antiderivative $F(x) = -2xe^{-\frac12x} - 4e^{-\frac12x}$:
$F'(x) = -2e^{-\frac12x} + xe^{-\frac12x} + 2e^{-\frac12x} = xe^{-\frac12x}$. ✓
Since $f \ge 0$ on $[0, 2]$:

$$\text{area} = F(2) - F(0) = \left(-4e^{-1} - 4e^{-1}\right) - (-4) = 4 - \frac8e.$$

- Correct antiderivative (by parts, or guessed and checked by differentiating): **2**
- Setting up $\int_0^2 f(x)\,dx = F(2) - F(0)$: **1**
- Answer $4 - \frac8e$ (≈ 1.057): **1**

### Question 3 (5p)

$f''(x) = -\tfrac12e^{-\frac12x}(1 - \tfrac12x) + e^{-\frac12x}\cdot(-\tfrac12) = e^{-\frac12x}\left(\tfrac14x - 1\right)$.
$f''(x) = 0 \iff x = 4$, and $f''$ changes sign there: inflection point $(4, 4e^{-2})$.
Slope: $f'(4) = e^{-2}(1 - 2) = -e^{-2}$.
Tangent: $y = 4e^{-2} - e^{-2}(x - 4) = e^{-2}(8 - x)$. For $y = 0$: $x = 8$. ✓

- $f''(x)$ correct: **2**
- $x = 4$ and $f(4) = 4e^{-2}$: **1**
- $f'(4) = -e^{-2}$: **1**
- Equation of the tangent and $y = 0 \Rightarrow x = 8$: **1**

---

## Part 2

### Question 4 (5p)

$g'(x) = 2\cos 2x - 2\sin x = 2(1 - 2\sin^2x) - 2\sin x = -2(2\sin^2x + \sin x - 1) = -2(2\sin x - 1)(\sin x + 1)$.
$g'(x) = 0 \iff \sin x = \frac12$ or $\sin x = -1 \iff x = \frac\pi6, \frac{5\pi}6, \frac{3\pi}2$.
Values: $g(\frac\pi6) = \frac12\sqrt3 + \sqrt3 = \frac32\sqrt3$; $g(\frac{5\pi}6) = -\frac32\sqrt3$; $g(\frac{3\pi}2) = 0$; endpoints $g(0) = g(2\pi) = 2$.
Since $\frac32\sqrt3 \approx 2.60 > 2$, the maximum is $\frac32\sqrt3$. (At $x = \frac{3\pi}2$, $g'$ does not change sign: a horizontal inflection point, not an extremum.)

- $g'(x) = 2\cos2x - 2\sin x$: **1**
- Using $\cos2x = 1 - 2\sin^2x$ to get a quadratic in $\sin x$: **1**
- $\sin x = \frac12$ or $\sin x = -1$, with the $x$-values: **1**
- $g(\frac\pi6) = \frac32\sqrt3$ computed exactly: **1**
- Comparing with the other candidates, including the endpoints: **1**

### Question 5 (3p)

$g(x) = 2\sin x\cos x + 2\cos x = 2\cos x(\sin x + 1) = 0 \iff \cos x = 0$ or $\sin x = -1$.
$\cos x = 0$: $x = \frac\pi2$ or $x = \frac{3\pi}2$. $\sin x = -1$: $x = \frac{3\pi}2$.
Zeros: $x = \frac\pi2$ and $x = \frac{3\pi}2$.

- Factorising $2\cos x(\sin x + 1)$: **1**
- Both cases solved: **1**
- Answer $\frac\pi2, \frac{3\pi}2$ (and nothing else): **1**

### Question 6 (4p)

$$I = \pi\int_0^\pi 4\sin^2x\,dx = \pi\int_0^\pi(2 - 2\cos2x)\,dx = \pi\left[2x - \sin2x\right]_0^\pi = 2\pi^2.$$

- Setting up $\pi\int_0^\pi(2\sin x)^2\,dx$: **1**
- Rewriting $\sin^2x = \frac12 - \frac12\cos 2x$: **1**
- Antiderivative $2x - \sin 2x$: **1**
- Answer $2\pi^2$: **1**

---

## Part 3

### Question 7 (4p)

$c$: $(x - 3)^2 + (y - 2)^2 = 5$, centre $M(3, 2)$, radius $\sqrt5$.
$\ell_k$: $2x - y + k = 0$. Tangent iff $d(M, \ell_k) = \sqrt5$:

$$\frac{\lvert 6 - 2 + k\rvert}{\sqrt5} = \sqrt5 \iff \lvert 4 + k\rvert = 5 \iff k = 1 \text{ or } k = -9.$$

(Alternative: substitute $y = 2x + k$, get $5x^2 + (4k - 14)x + (k^2 - 4k + 8) = 0$, and set the discriminant $-4(k^2 + 8k - 9) = 0$.)

- Centre and radius: **1**
- Distance formula (or substitution) set up: **1**
- $\lvert 4 + k\rvert = 5$ (or the discriminant equation): **1**
- $k = 1$ or $k = -9$: **1**

### Question 8 (4p)

$\overrightarrow{MP} = (-2, -1)$, $\overrightarrow{MQ} = (1, 2)$.
$\cos\angle PMQ = \dfrac{-2 - 2}{\sqrt5\cdot\sqrt5} = -\dfrac45$, so $\angle PMQ \approx 143.13°$.
The tangents are perpendicular to the radii, so in quadrilateral $MPTQ$: $\angle MPT = \angle MQT = 90°$ and
$\angle PTQ = 360° - 90° - 90° - 143.13° \approx 36.87°$. Answer: $37°$.

- Using the radius vectors (or the tangent directions $(1, -2)$ and $(2, -1)$): **1**
- Inner product and $\cos = -\frac45$ (or $\frac45$ for the tangent directions): **1**
- Argument that the angle at $T$ is $180°$ minus the angle at $M$ (or correctly choosing the acute angle between the tangents): **1**
- $37°$: **1**

---

## Part 4

### Question 9 (4p)

Horizontal tangent: $y'(t) = 0$ and $x'(t) \ne 0$.
$y'(t) = 2\cos2t = 0 \iff 2t = \frac\pi2 + k\pi \iff t = \frac\pi4, \frac{3\pi}4, \frac{5\pi}4, \frac{7\pi}4$.
$x'(t) = -\sin t \ne 0$ at these values. ✓
Points: $t = \frac\pi4$: $(\frac12\sqrt2, 1)$; $t = \frac{3\pi}4$: $(-\frac12\sqrt2, -1)$; $t = \frac{5\pi}4$: $(-\frac12\sqrt2, 1)$; $t = \frac{7\pi}4$: $(\frac12\sqrt2, -1)$.

- Condition $y'(t) = 0$ (and checking $x'(t) \ne 0$): **1**
- $y'(t) = 2\cos 2t$: **1**
- Four values of $t$: **1**
- Four points exactly: **1**

### Question 10 (4p)

$(x, y) = (0, 0)$: $\cos t = 0 \Rightarrow t = \frac\pi2$ or $t = \frac{3\pi}2$ (and then $\sin 2t = 0$ ✓).
Velocity vector $(x'(t), y'(t)) = (-\sin t, 2\cos 2t)$: at $t = \frac\pi2$: $(-1, -2)$; at $t = \frac{3\pi}2$: $(1, -2)$.
$\cos\varphi = \dfrac{(-1)(1) + (-2)(-2)}{\sqrt5\sqrt5} = \dfrac35$, $\varphi \approx 53.13°$. Answer: $53°$.

- Both values of $t$: **1**
- Both velocity vectors: **1**
- Inner product formula: **1**
- $53°$: **1**

### Question 11 (3p)

$y = \sin 2t = 2\sin t\cos t$, so $y^2 = 4\sin^2t\cos^2t = 4\cos^2t(1 - \cos^2t) = 4x^2(1 - x^2)$.

- Using $\sin 2t = 2\sin t\cos t$: **1**
- Using $\sin^2t = 1 - \cos^2t$: **1**
- Substituting $x = \cos t$ to reach the required form: **1**

---

## Part 5

### Question 12 (3p)

$V'(t) = 30\cdot0.1e^{-0.1t} = 3e^{-0.1t}$.
$3 - 0.1V = 3 - 3(1 - e^{-0.1t}) = 3e^{-0.1t}$. Equal for all $t$. ✓
$V(0) = 30(1 - 1) = 0$. ✓

- $V'(t)$ correct: **1**
- Right-hand side simplified and compared: **1**
- Initial condition checked: **1**

### Question 13 (4p)

$V_{n+1} = V_n + 2(3 - 0.1V_n)$.
$t = 0$: $V_0 = 0$. $t = 2$: $V_1 = 0 + 2\cdot3 = 6$. $t = 4$: $V_2 = 6 + 2(3 - 0.6) = 10.8$.
Exact: $V(4) = 30(1 - e^{-0.4}) \approx 9.890$.
Difference: $10.8 - 9.890 \approx 0.91$ litres.

- Euler recurrence correctly set up: **1**
- $V_1 = 6$: **1**
- $V_2 = 10.8$: **1**
- Difference $0.91$: **1**

---

## Part 6

### Question 14 (3p)

$P(D < 9.90) = P(D > 10.10)$ by symmetry; normalcdf$(-10^{99}, 9.90, 10, 0.05) \approx 0.02275$.
$P(\text{rejected}) = 2\cdot0.02275 \approx 0.046$.

- Recognising both tails (or $1 - P(9.90 < D < 10.10)$): **1**
- Correct calculator command with parameters written down: **1**
- $0.046$: **1**

### Question 15 (4p)

$X$ = number of rejected bolts in the box, binomial with $n = 50$, $p = 0.0455$ (unrounded from question 14).
$P(X \ge 3) = 1 - P(X \le 2) = 1 - \text{binomcdf}(50, 0.0455, 2) \approx 0.399$.

- Binomial distribution with $n = 50$ and $p$ from question 14: **1**
- $P(X \ge 3) = 1 - P(X \le 2)$: **1**
- Calculator command written down: **1**
- $0.399$: **1** (using $p = 0.046$ gives $0.406$; accept with no deduction if the rounded value was carried forward consciously, but advise using the unrounded value)

## Part 7

### Question 16 (4p)

$P(\text{double}) = \frac{6}{36} = \frac16$; $P(\text{sum } 7) = \frac{6}{36} = \frac16$; these do not overlap (a double has an even sum).

| $g$ | $3$ | $0$ | $-1$ |
|---|---|---|---|
| $P(G = g)$ | $\frac16$ | $\frac16$ | $\frac46$ |

$E(G) = 3\cdot\frac16 + 0 - 1\cdot\frac46 = -\frac16 \approx -€0.17$.
$E(G^2) = 9\cdot\frac16 + 1\cdot\frac46 = \frac{13}6$; $\mathrm{Var}(G) = \frac{13}6 - \frac1{36} = \frac{77}{36}$; $\sigma(G) = \frac{\sqrt{77}}6 \approx 1.46$.

- Probability distribution of $G$ (net gain, so $3$, $0$, $-1$): **1**
- $E(G) = -\frac16$: **1**
- Variance formula applied: **1**
- $\sigma(G) \approx 1.46$: **1**

---

## Part 8

### Question 17 (5p)

$f_p'(x) = \dfrac{2x}{x^2 + p}$.
$f_p''(x) = \dfrac{2(x^2 + p) - 2x\cdot2x}{(x^2 + p)^2} = \dfrac{2p - 2x^2}{(x^2 + p)^2}$.
$f_p''(x) = 0 \iff x^2 = p \iff x = \pm\sqrt p$, and $f_p''$ changes sign there.
$f_p(\pm\sqrt p) = \ln(p + p) = \ln(2p)$, and $\ln(2x^2) = \ln(2p)$ for $x = \pm\sqrt p$. So both points of inflection lie on $y = \ln(2x^2)$.

- $f_p'$ correct (chain rule): **1**
- $f_p''$ correct (quotient rule): **1**
- $x = \pm\sqrt p$: **1**
- $y$-coordinate $\ln(2p)$: **1**
- Conclusion by substituting $x^2 = p$ in $\ln(2x^2)$ (or by eliminating $p$): **1**

### Question 18 (4p)

$k_a(1) = 1 - a$, $k_a'(x) = 3x^2 - a$, $k_a'(1) = 3 - a$.
Tangent: $y = (1 - a) + (3 - a)(x - 1) = (3 - a)x - 2$.
For $x = 0$: $y = -2$ for every $a$. So all tangent lines pass through $(0, -2)$.

- $k_a(1)$ and $k_a'(1)$: **1**
- Equation of the tangent: **1**
- Simplified to $y = (3 - a)x - 2$: **1**
- Conclusion: the point $(0, -2)$, independent of $a$: **1**

### Question 19 (4p)

*Gegeven:* $ABCD$ cyclic; $S = AB\cap DC$ with $B$ between $A$ and $S$ and $C$ between $D$ and $S$.
*Te bewijzen:* $\triangle SBC \sim \triangle SDA$ and $SB\cdot SA = SC\cdot SD$.

1. $\angle SBC = 180° - \angle ABC$ (angles on the straight line $ASB$).
2. $\angle ABC + \angle ADC = 180°$ (opposite angles of a cyclic quadrilateral).
3. So $\angle SBC = \angle ADC = \angle ADS$ (as $C$ lies on segment $DS$).
4. $\angle BSC = \angle DSA$ (same angle at $S$).
5. Two equal angles: $\triangle SBC \sim \triangle SDA$ (hh), with $S \leftrightarrow S$, $B \leftrightarrow D$, $C \leftrightarrow A$.
6. Corresponding sides: $\dfrac{SB}{SD} = \dfrac{SC}{SA}$, so $SB\cdot SA = SC\cdot SD$.

- $\angle SBC = 180° - \angle ABC$ with reason: **1**
- Cyclic quadrilateral theorem used correctly with reason: **1**
- Common angle at $S$ and conclusion of similarity (correct correspondence): **1**
- Ratio of corresponding sides leading to $SB\cdot SA = SC\cdot SD$: **1**

(This is the *power of a point* theorem, E3 notes §5.)

---

## Score table

| Question | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | Total |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Max | 4 | 4 | 5 | 5 | 3 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | 4 | 3 | 4 | 4 | 5 | 4 | 4 | 75 |
| Score | | | | | | | | | | | | | | | | | | | | |

| Domain | Questions | Points |
|---|---|---|
| Functions and calculus | 1, 2, 3, 6, 17, 18 | 26 |
| Trigonometry | 4, 5 | 8 |
| Analytic geometry and vectors | 7, 8 | 8 |
| Parametric curves | 9, 10, 11 | 11 |
| Differential equations and algorithms | 12, 13 | 7 |
| Probability | 14, 15, 16 | 11 |
| Geometric proof | 19 | 4 |
