# E2 Notes: complex numbers

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

---

## 1. Why complex numbers?

The usual story is "$x^2 = -1$ has no solution, so we invent one". That is not how it happened, and the real story is more convincing.

In the 1540s Cardano published a formula for cubic equations. For $x^3 = px + q$ it gives

$$x = \sqrt[3]{\frac q2 + \sqrt{\frac{q^2}{4} - \frac{p^3}{27}}} + \sqrt[3]{\frac q2 - \sqrt{\frac{q^2}{4} - \frac{p^3}{27}}}.$$

Around 1572 Bombelli applied it to $x^3 = 15x + 4$, which obviously has the solution $x = 4$. The formula gives

$$x = \sqrt[3]{2 + \sqrt{-121}} + \sqrt[3]{2 - \sqrt{-121}}.$$

Square roots of negative numbers appear in the middle of the calculation even though the answer is a perfectly good real number. Bombelli noticed that if you calculate with $\sqrt{-1}$ using the ordinary rules, then $(2 + \sqrt{-1})^3 = 2 + 11\sqrt{-1}$ (check it!), so the cube roots are $2 \pm \sqrt{-1}$ and their sum is $4$. Complex numbers were forced on mathematicians as a tool for finding *real* answers. Problem 16 asks you to redo Bombelli's calculation.

---

## 2. Construction

How do we know that "calculating with $\sqrt{-1}$" does not lead to a contradiction? We build a number system in which it is safe.

**Definition.** A complex number is an ordered pair $(a, b)$ of real numbers, with

$$(a, b) + (c, d) = (a + c,\ b + d), \qquad (a, b)\cdot(c, d) = (ac - bd,\ ad + bc).$$

The set of all such pairs is $\mathbb{C}$.

- Pairs $(a, 0)$ behave exactly like real numbers: $(a, 0) + (c, 0) = (a + c, 0)$ and $(a, 0)(c, 0) = (ac, 0)$. So we write $a$ for $(a, 0)$ and see $\mathbb{R}$ as part of $\mathbb{C}$.
- Put $i = (0, 1)$. Then $i\cdot i = (0\cdot 0 - 1\cdot 1,\ 0\cdot 1 + 1\cdot 0) = (-1, 0) = -1$. **So $i^2 = -1$ is a theorem.**
- Every pair can be written $(a, b) = (a, 0) + (b, 0)(0, 1) = a + bi$.

One can check (tedious but straightforward) that addition and multiplication are commutative and associative, that multiplication distributes over addition, that $0$ and $1$ are neutral elements, and that every nonzero element has an inverse (see §3). In the language of algebra: $\mathbb{C}$ is a **field** (*lichaam*), just like $\mathbb{Q}$ and $\mathbb{R}$. All the usual algebra (expanding brackets, the formula $(a + b)^2 = a^2 + 2ab + b^2$, the factor theorem) therefore works in $\mathbb{C}$.

**What we lose: order.** There is no way to define "$<$" on $\mathbb{C}$ with the usual rules (if $x > 0$ and $y > 0$ then $xy > 0$; for $x \ne 0$ either $x > 0$ or $-x > 0$). *Proof:* $i \ne 0$, so $i > 0$ or $-i > 0$. In both cases squaring gives $i^2 = (-i)^2 = -1 > 0$. Then $1 = (-1)^2 > 0$ too, so $0 = 1 + (-1) > 0$, a contradiction. So never write $z < w$ for non-real complex numbers.

---

## 3. Arithmetic

For $z = a + bi$ with $a, b \in \mathbb{R}$: the **real part** $\mathrm{Re}\, z = a$, the **imaginary part** $\mathrm{Im}\, z = b$ (a real number, without the $i$!), and the **conjugate** $\bar z = a - bi$.

**Rules for the conjugate.** For all $z, w$:

$$\overline{z + w} = \bar z + \bar w, \qquad \overline{zw} = \bar z\,\bar w, \qquad z + \bar z = 2\mathrm{Re}\, z, \qquad z\bar z = a^2 + b^2.$$

*Proof of the second:* with $z = a + bi$, $w = c + di$: $zw = (ac - bd) + (ad + bc)i$, so $\overline{zw} = (ac - bd) - (ad + bc)i$, and $\bar z\bar w = (a - bi)(c - di) = (ac - bd) + (-ad - bc)i$. Equal. $\blacksquare$

**Division.** Since $z\bar z = a^2 + b^2$ is a positive real number when $z \ne 0$, multiply numerator and denominator by the conjugate of the denominator:

$$\frac{2 - i}{1 + 3i} = \frac{(2 - i)(1 - 3i)}{(1 + 3i)(1 - 3i)} = \frac{2 - 6i - i + 3i^2}{10} = \frac{-1 - 7i}{10}.$$

In particular $\dfrac1z = \dfrac{\bar z}{a^2 + b^2}$.

**Powers of $i$.** $i^1 = i$, $i^2 = -1$, $i^3 = -i$, $i^4 = 1$, then it repeats with period 4. So $i^{2031} = i^{4\cdot 507 + 3} = -i$.

**Equality.** $a + bi = c + di$ (with $a, b, c, d$ real) iff $a = c$ and $b = d$. This is used to split one complex equation into two real ones. Example: find $\sqrt{5 - 12i}$. Put $(a + bi)^2 = 5 - 12i$: $a^2 - b^2 = 5$ and $2ab = -12$. Also $\lvert\cdot\rvert^2$ gives $a^2 + b^2 = 13$. So $a^2 = 9$, $b^2 = 4$, and $ab < 0$: $\pm(3 - 2i)$.

---

## 4. The complex plane

Draw $z = a + bi$ as the point $(a, b)$, or the vector from $0$ to $(a, b)$. The horizontal axis is the **real axis** (*reële as*), the vertical the **imaginary axis** (*imaginaire as*).

- Addition $z + w$ is vector addition (parallelogram rule).
- $\bar z$ is the reflection in the real axis; $-z$ is the point reflection in $0$.
- The **modulus** $\lvert z\rvert = \sqrt{a^2 + b^2} = \sqrt{z\bar z}$ is the distance from $0$ to $z$, and $\lvert z - w\rvert$ is the distance between $z$ and $w$.

**Properties of the modulus.**

1. $\lvert zw\rvert = \lvert z\rvert\,\lvert w\rvert$. *Proof:* $\lvert zw\rvert^2 = zw\overline{zw} = z\bar z\,w\bar w = \lvert z\rvert^2\lvert w\rvert^2$. $\blacksquare$
2. **Triangle inequality** $\lvert z + w\rvert \le \lvert z\rvert + \lvert w\rvert$. *Proof:*

$$\lvert z + w\rvert^2 = (z + w)(\bar z + \bar w) = \lvert z\rvert^2 + \lvert w\rvert^2 + z\bar w + \bar z w = \lvert z\rvert^2 + \lvert w\rvert^2 + 2\mathrm{Re}(z\bar w).$$

Since $\mathrm{Re}(u) \le \lvert u\rvert$ for every $u$, and $\lvert z\bar w\rvert = \lvert z\rvert\lvert w\rvert$, this is at most $(\lvert z\rvert + \lvert w\rvert)^2$. $\blacksquare$

**Sets in the plane.** Many conditions on $z$ describe familiar figures:

| Condition | Set |
|---|---|
| $\lvert z - c\rvert = r$ | circle with centre $c$, radius $r$ |
| $\lvert z - c\rvert < r$ | open disc |
| $\lvert z - a\rvert = \lvert z - b\rvert$ | perpendicular bisector (*middelloodlijn*) of $a$ and $b$ |
| $\arg(z - c) = \theta$ | half-line from $c$ (not including $c$) at angle $\theta$ |
| $\lvert z - a\rvert = k\lvert z - b\rvert$, $k \ne 1$ | a circle (circle of Apollonius) |

---

## 5. Polar form

A nonzero $z$ is determined by its modulus $r = \lvert z\rvert$ and the angle $\varphi$ from the positive real axis to the vector $z$, the **argument** $\arg z$. Then

$$z = r(\cos\varphi + i\sin\varphi).$$

The argument is defined only up to multiples of $2\pi$. The **principal argument** (*hoofdwaarde*) is the one in $(-\pi, \pi]$.

**Finding the argument.** $\tan\varphi = b/a$, but $\arctan$ only gives angles in $(-\frac\pi2, \frac\pi2)$. Always draw $z$ and choose the angle in the right quadrant. Example: $z = -3 - 3i$ lies in the third quadrant; $\tan\varphi = 1$ and the right angle is $\varphi = -\frac{3\pi}{4}$ (not $\frac\pi4$). And $\lvert z\rvert = 3\sqrt2$.

**Theorem (multiplication).** If $z = r(\cos\alpha + i\sin\alpha)$ and $w = s(\cos\beta + i\sin\beta)$, then

$$zw = rs\left(\cos(\alpha + \beta) + i\sin(\alpha + \beta)\right).$$

*Proof.* Expand:

$$(\cos\alpha + i\sin\alpha)(\cos\beta + i\sin\beta) = (\cos\alpha\cos\beta - \sin\alpha\sin\beta) + i(\sin\alpha\cos\beta + \cos\alpha\sin\beta),$$

and by the addition formulas this is $\cos(\alpha + \beta) + i\sin(\alpha + \beta)$. $\blacksquare$

**Multiply the moduli, add the arguments.** So multiplying by $w$ is a **rotation** by $\arg w$ combined with a **scaling** by $\lvert w\rvert$. Multiplying by $i$ rotates by $90°$. Similarly $\dfrac zw$ has modulus $r/s$ and argument $\alpha - \beta$.

This theorem is the real reason complex numbers matter: they turn rotations into multiplications.

---

## 6. De Moivre's theorem

**Theorem (De Moivre).** For every integer $n$,

$$(\cos\varphi + i\sin\varphi)^n = \cos n\varphi + i\sin n\varphi.$$

*Proof for $n \ge 0$ by induction.* For $n = 0$ both sides are $1$. If it holds for $n$, then by the multiplication theorem

$$(\cos\varphi + i\sin\varphi)^{n+1} = (\cos n\varphi + i\sin n\varphi)(\cos\varphi + i\sin\varphi) = \cos(n + 1)\varphi + i\sin(n + 1)\varphi.$$

For negative $n = -m$: $(\cos\varphi + i\sin\varphi)^{-1} = \cos\varphi - i\sin\varphi = \cos(-\varphi) + i\sin(-\varphi)$, then apply the case $m \ge 0$. $\blacksquare$

**Application 1: powers.** $(1 + i)^{10}$: $1 + i = \sqrt2(\cos\frac\pi4 + i\sin\frac\pi4)$, so $(1 + i)^{10} = 32(\cos\frac{10\pi}{4} + i\sin\frac{10\pi}4) = 32(\cos\frac\pi2 + i\sin\frac\pi2) = 32i$.

**Application 2: multiple-angle formulas.** Write $c = \cos\varphi$, $s = \sin\varphi$. By De Moivre and the binomial theorem,

$$\cos 3\varphi + i\sin 3\varphi = (c + is)^3 = c^3 + 3ic^2s - 3cs^2 - is^3.$$

Comparing real and imaginary parts:

$$\cos 3\varphi = c^3 - 3cs^2 = 4c^3 - 3c, \qquad \sin 3\varphi = 3c^2s - s^3 = 3s - 4s^3.$$

No need to memorise these: derive them in a minute when needed.

---

## 7. Euler's formula

Define, for real $\varphi$,

$$e^{i\varphi} = \cos\varphi + i\sin\varphi.$$

Why use the letter $e$? Because this function behaves exactly like an exponential:

1. **Exponent rule.** $e^{i\alpha}e^{i\beta} = e^{i(\alpha + \beta)}$: that is the multiplication theorem of §5. And De Moivre becomes $(e^{i\varphi})^n = e^{in\varphi}$.
2. **Derivative.** Differentiating real and imaginary parts separately, $\dfrac{d}{d\varphi}(\cos\varphi + i\sin\varphi) = -\sin\varphi + i\cos\varphi = i(\cos\varphi + i\sin\varphi)$. So $f(\varphi) = e^{i\varphi}$ satisfies $f' = if$ with $f(0) = 1$, just as $e^{k\varphi}$ satisfies $f' = kf$, $f(0) = 1$ (compare E1 §6).
3. **Power series** (going further). Substituting $x = i\varphi$ in $e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$ and splitting into even and odd powers gives exactly the series of $\cos\varphi$ plus $i$ times that of $\sin\varphi$.

For $z = a + bi$ we then define $e^z = e^ae^{ib}$, and $e^{z + w} = e^ze^w$ holds for all complex $z, w$.

**Consequences.**

- **Euler's identity:** $e^{i\pi} = -1$, i.e. $e^{i\pi} + 1 = 0$.
- **Polar form, short:** $z = re^{i\varphi}$.
- **Cosine and sine as exponentials:** adding and subtracting $e^{i\varphi}$ and $e^{-i\varphi} = \cos\varphi - i\sin\varphi$:

$$\cos\varphi = \frac{e^{i\varphi} + e^{-i\varphi}}{2}, \qquad \sin\varphi = \frac{e^{i\varphi} - e^{-i\varphi}}{2i}.$$

These turn trigonometry into algebra. Example: $\cos^2\varphi = \frac14(e^{2i\varphi} + 2 + e^{-2i\varphi}) = \frac12 + \frac12\cos 2\varphi$.

- **Integrals.** $\int e^x\cos x\,dx = \mathrm{Re}\,\int e^{(1 + i)x}\,dx = \mathrm{Re}\,\dfrac{e^{(1+i)x}}{1 + i} + C = \tfrac12e^x(\cos x + \sin x) + C$ (problem 20). No integration by parts twice.

---

## 8. Roots

**Solving $z^n = w$.** Write $w = Re^{i\theta}$ ($R > 0$) and look for $z = re^{i\varphi}$. Then $z^n = r^ne^{in\varphi}$, so we need $r^n = R$ and $n\varphi = \theta + 2k\pi$:

$$z_k = \sqrt[n]{R}\;e^{i(\theta + 2k\pi)/n}, \qquad k = 0, 1, \dots, n - 1.$$

These are $n$ different numbers (for $k = n$ you get $z_0$ again). They lie on a circle of radius $\sqrt[n]R$ and form a **regular $n$-gon**.

**Example.** $z^3 = 8i = 8e^{i\pi/2}$: $z = 2e^{i(\pi/6 + 2k\pi/3)}$, i.e. $2e^{i\pi/6} = \sqrt3 + i$, $2e^{5i\pi/6} = -\sqrt3 + i$ and $2e^{3i\pi/2} = -2i$.

**Roots of unity.** The solutions of $z^n = 1$ are $1, \omega, \omega^2, \dots, \omega^{n-1}$ with $\omega = e^{2\pi i/n}$. For $n \ge 2$ their sum is $0$:

$$1 + \omega + \dots + \omega^{n-1} = \frac{\omega^n - 1}{\omega - 1} = 0,$$

(geometric sum, $\omega \ne 1$). Geometrically: the vectors to the vertices of a regular polygon centred at $0$ add up to zero, by symmetry. Taking real parts with $n = 5$ gives $1 + 2\cos\frac{2\pi}5 + 2\cos\frac{4\pi}5 = 0$ (problem 14).

**Careful with $\sqrt{\ }$.** For complex numbers $\sqrt{zw} = \sqrt z\sqrt w$ fails. The classic false "proof" $-1 = i\cdot i = \sqrt{-1}\sqrt{-1} = \sqrt{(-1)(-1)} = \sqrt1 = 1$ breaks at the third step. Write "the solutions of $z^2 = w$" instead of $\sqrt w$ unless $w$ is a positive real number.

---

## 9. Polynomial equations

**Quadratics.** The quadratic formula works for complex coefficients too, with "$\sqrt D$" meaning either solution of $z^2 = D$. For real coefficients and $D < 0$: $z^2 - 4z + 13 = 0$ gives $z = \frac{4 \pm\sqrt{-36}}{2} = 2 \pm 3i$.

**Fundamental theorem of algebra** (*hoofdstelling van de algebra*). Every polynomial of degree $n \ge 1$ with complex coefficients has a complex root, and hence (by repeatedly splitting off factors $z - z_1$) factors completely as $a(z - z_1)\cdots(z - z_n)$. The proof needs analysis and is beyond this module (it is in the parent's [complex analysis module](../../../adult-masters/02-bridge/2.2-complex-analysis/) and is a great goal for later). Accept it for now.

**Conjugate root theorem.** If $P$ has *real* coefficients and $P(z_0) = 0$, then $P(\bar z_0) = 0$.

*Proof.* $P(z) = a_nz^n + \dots + a_0$ with all $a_k$ real, so $\bar a_k = a_k$. Using the conjugate rules,

$$P(\bar z_0) = \sum a_k\bar z_0^{\,k} = \sum\overline{a_kz_0^k} = \overline{P(z_0)} = \bar0 = 0. \qquad\blacksquare$$

So non-real roots of real polynomials come in conjugate pairs, and $(z - z_0)(z - \bar z_0) = z^2 - 2\mathrm{Re}(z_0)z + \lvert z_0\rvert^2$ is a real quadratic. Consequence: **every real polynomial factors into real linear and real quadratic factors**, and a real polynomial of odd degree has a real root.

**Example.** $P(z) = z^3 - 3z^2 + 7z - 5$. Try $z = 1$: $1 - 3 + 7 - 5 = 0$. Divide: $P(z) = (z - 1)(z^2 - 2z + 5)$, so the roots are $1$ and $1 \pm 2i$.

**Cubics: Cardano's method.** Every cubic $ax^3 + bx^2 + cx + d$ can be reduced, by dividing by $a$ and substituting $x = y - \frac{b}{3a}$, to a **depressed cubic** $y^3 + py + q = 0$ (no square term). Now put $y = u + v$:

$$(u + v)^3 = u^3 + v^3 + 3uv(u + v), \quad\text{so}\quad y^3 - 3uv\,y - (u^3 + v^3) = 0.$$

This matches $y^3 + py + q = 0$ if $uv = -\frac p3$ and $u^3 + v^3 = -q$. Then $u^3$ and $v^3$ have sum $-q$ and product $-\frac{p^3}{27}$, so they are the roots of the quadratic

$$t^2 + qt - \frac{p^3}{27} = 0.$$

**Example.** $x^3 + 6x - 20 = 0$: $p = 6$, $q = -20$. The quadratic $t^2 - 20t - 8 = 0$ has roots $t = 10 \pm 6\sqrt3$. So $x = \sqrt[3]{10 + 6\sqrt3} + \sqrt[3]{10 - 6\sqrt3}$. In fact $(1 + \sqrt3)^3 = 10 + 6\sqrt3$, so $x = (1 + \sqrt3) + (1 - \sqrt3) = 2$. Dividing by $x - 2$ leaves $x^2 + 2x + 10$ with roots $-1 \pm 3i$.

To get all three roots directly from Cardano: if $u$ is one cube root of $u^3$, the others are $u\omega$ and $u\omega^2$ with $\omega = e^{2\pi i/3}$, and $v$ must be chosen so that $uv = -\frac p3$. This gives $y = u + v$, $u\omega + v\omega^2$, $u\omega^2 + v\omega$.

**The "irreducible case".** When the cubic has three distinct real roots, $\frac{q^2}4 + \frac{p^3}{27} < 0$ and Cardano's formula *necessarily* passes through non-real numbers (Bombelli's situation). In that case the trigonometric method is faster: use $\cos 3\varphi = 4\cos^3\varphi - 3\cos\varphi$ (problem 11).

---

## 10. Geometric transformations as complex functions

| Transformation | Complex function |
|---|---|
| translation over $b$ | $z \mapsto z + b$ |
| rotation about $0$ by $\theta$ | $z \mapsto e^{i\theta}z$ |
| scaling (*vermenigvuldiging*) from $0$ with factor $k > 0$ | $z \mapsto kz$ |
| rotation about $c$ by $\theta$ | $z \mapsto c + e^{i\theta}(z - c)$ |
| reflection in the real axis | $z \mapsto \bar z$ |
| reflection in the line through $0$ at angle $\alpha$ | $z \mapsto e^{2i\alpha}\bar z$ |

**Theorem.** Every map $f(z) = az + b$ with $a \ne 0, 1$ is a *spiral similarity* (rotation plus scaling) about its unique fixed point $c = \frac{b}{1 - a}$: indeed $f(z) - c = a(z - c)$. (Compare E1: $u_{n+1} = au_n + b$ has fixed point $\frac{b}{1-a}$. Same algebra!)

**Example.** $f(z) = (1 + i)z + 2$. Fixed point $c = \frac{2}{1 - (1 + i)} = \frac{2}{-i} = 2i$. Since $1 + i = \sqrt2e^{i\pi/4}$, $f$ is a rotation by $45°$ about $2i$ combined with scaling by $\sqrt2$ from $2i$.

**Proving geometry with complex numbers.** Points $0, z, w$ form an equilateral triangle (counter-clockwise) iff $w = e^{i\pi/3}z$. With $\rho = e^{i\pi/3}$ we have $\rho^2 - \rho + 1 = 0$ (because $\rho^3 = -1$ and $\rho \ne -1$), so $w^2 - zw + z^2 = z^2(\rho^2 - \rho + 1) = 0$. Problem 22 turns this into a symmetric criterion for any triangle.

---

## 11. Common mistakes

1. **Wrong quadrant for the argument.** $\arg(-1 - i) \ne \frac\pi4$. Draw the point first.
2. **$\mathrm{Im}(a + bi) = bi$.** No: it is $b$, a real number.
3. **Dividing without the conjugate**, or multiplying only the numerator by it.
4. **Forgetting roots.** $z^n = w$ has $n$ solutions; listing one is not "solving".
5. **Using $\sqrt{zw} = \sqrt z\sqrt w$** for complex (or negative) numbers.
6. **Assuming the conjugate root theorem for non-real coefficients.** $z^2 - iz = 0$ has roots $0$ and $i$, but not $-i$.
7. **Writing inequalities between complex numbers.** Only moduli, real parts, etc. can be compared.
8. **De Moivre with non-integer powers.** $(e^{i\varphi})^{1/2} = e^{i\varphi/2}$ is one choice of square root, not "the" one; that is exactly why roots are multi-valued.

---

## 12. Going further

- **$i^i$ is real.** $i = e^{i\pi/2}$, so "$i^i = e^{i\cdot i\pi/2} = e^{-\pi/2} \approx 0.208$". But $i = e^{i(\pi/2 + 2k\pi)}$ for every integer $k$, so $i^i$ has infinitely many values $e^{-\pi/2 - 2k\pi}$. Complex powers and logarithms are multi-valued: the start of complex analysis.
- **Möbius transformations** $z \mapsto \frac{az + b}{cz + d}$ map circles and lines to circles and lines. Needham, *Visual Complex Analysis*, chapter 3.
- **The Mandelbrot set**: the $c$ for which $z_{n+1} = z_n^2 + c$, $z_0 = 0$ stays bounded. A complex version of E1's recurrences; program it.
- **Quaternions**: Hamilton (1843) found a 4-dimensional number system $a + bi + cj + dk$ with $i^2 = j^2 = k^2 = ijk = -1$, used today for 3D rotations in computer games and spacecraft. Multiplication is no longer commutative.
- **Constructibility.** The regular 17-gon can be constructed with ruler and compass (Gauss, aged 19) because $\cos\frac{2\pi}{17}$ can be written with square roots only; this comes from studying the 17th roots of unity. A good *profielwerkstuk* topic (see [stage F](../../F-beyond-school/)).
- **University connection.** The parent's track has a full [complex analysis module](../../../adult-masters/02-bridge/2.2-complex-analysis/).
