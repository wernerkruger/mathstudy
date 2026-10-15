# E2 Solutions: complex numbers

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All results were checked with SymPy.

## Practice

**1.** (a) $3 - 12i + 2i - 8i^2 = 11 - 10i$.
(b) $\dfrac{(2 - i)(1 - 3i)}{(1 + 3i)(1 - 3i)} = \dfrac{2 - 6i - i + 3i^2}{10} = -\dfrac1{10} - \dfrac{7}{10}i$.
(c) $2031 = 4\cdot507 + 3$, so $i^{2031} = i^3 = -i$.

**2.** $z = \dfrac{4 \pm\sqrt{16 - 52}}{2} = \dfrac{4 \pm 6i}{2} = 2 \pm 3i$. Check: $(2 + 3i)^2 - 4(2 + 3i) + 13 = (-5 + 12i) - 8 - 12i + 13 = 0$. ✓

**3.** (a) $\lvert z\rvert = \sqrt{1 + 3} = 2$. Second quadrant, $\tan\varphi = -\sqrt3$: $\arg z = \frac{2\pi}3$.
(b) $\lvert z\rvert = \sqrt{18} = 3\sqrt2$. Third quadrant, $\tan\varphi = 1$: $\arg z = -\frac{3\pi}4$.

**4.** $4(\cos\frac\pi6 + i\sin\frac\pi6) = 2\sqrt3 + 2i$. $2(\cos\frac{3\pi}{4} - i\sin\frac{3\pi}4) = -\sqrt2 - i\sqrt2$.

**5.** (a) Circle with centre $2i$ (the point $(0, 2)$) and radius 3.
(b) Points equidistant from $1$ and $-i$: the perpendicular bisector of the segment from $(1, 0)$ to $(0, -1)$. With $z = x + iy$: $(x - 1)^2 + y^2 = x^2 + (y + 1)^2 \iff -2x = 2y \iff y = -x$.
(c) The open half-line from $0$ through $1 + i$ (the origin itself excluded, since $\arg 0$ is undefined).
(d) Points at least as close to $1$ as to $-1$: the closed half-plane $\operatorname{Re} z \ge 0$.

**6.** $1 + i = \sqrt2e^{i\pi/4}$, so $(1 + i)^{10} = 2^5e^{10i\pi/4} = 32e^{5i\pi/2} = 32e^{i\pi/2} = 32i$.

**7.** $8i = 8e^{i\pi/2}$. $z = 2e^{i(\pi/6 + 2k\pi/3)}$, $k = 0, 1, 2$:
- $2e^{i\pi/6} = \sqrt3 + i$
- $2e^{5i\pi/6} = -\sqrt3 + i$
- $2e^{3i\pi/2} = -2i$

They form an equilateral triangle inscribed in the circle of radius 2.

**8.** Let $z = a + bi$, $w = c + di$.
(a) $z\bar z = (a + bi)(a - bi) = a^2 - (bi)^2 = a^2 + b^2 = \lvert z\rvert^2$.
(b) See notes §3: both sides equal $(ac - bd) - (ad + bc)i$.
(c) $z = \bar z \iff a + bi = a - bi \iff 2b = 0 \iff z$ is real.

**9.** $a^2 - b^2 = 5$ and $2ab = -12$. Also $\lvert a + bi\rvert^2 = \lvert 5 - 12i\rvert = 13$, so $a^2 + b^2 = 13$. Adding: $a^2 = 9$; subtracting: $b^2 = 4$. Since $ab = -6 < 0$: $(a, b) = (3, -2)$ or $(-3, 2)$.

**10.** Rotation about $c$ by $90°$: $z \mapsto c + i(z - c)$. Here $z - c = 3$, so the image is $1 + i + 3i = 1 + 4i$.

## Exam-level

**11.** (a) With $c = \cos\varphi$, $s = \sin\varphi$:

$$\cos3\varphi + i\sin3\varphi = (c + is)^3 = c^3 + 3c^2(is) + 3c(is)^2 + (is)^3 = (c^3 - 3cs^2) + i(3c^2s - s^3).$$

So $\cos3\varphi = c^3 - 3c(1 - c^2) = 4c^3 - 3c$ and $\sin3\varphi = 3(1 - s^2)s - s^3 = 3s - 4s^3$.
(b) A cubic has at most three roots. With $x = \cos\varphi$ the equation becomes $\cos3\varphi = \frac12$, so $3\varphi = \pm\frac\pi3 + 2k\pi$, $\varphi = \pm\frac\pi9 + \frac{2k\pi}{3}$. This gives three different values of $\cos\varphi$:

$$x = \cos\frac\pi9, \quad x = \cos\frac{5\pi}9, \quad x = \cos\frac{7\pi}9.$$

(Numerically $0.940$, $-0.174$, $-0.766$; all satisfy $4x^3 - 3x = 0.5$.) Since there are three distinct values and a cubic has at most three roots, these are all the solutions.

**12.** (a) $P(1) = 1 - 3 + 7 - 5 = 0$.
(b) Polynomial division: $P(z) = (z - 1)(z^2 - 2z + 5)$. Check: $z^3 - 2z^2 + 5z - z^2 + 2z - 5 = z^3 - 3z^2 + 7z - 5$. ✓ The quadratic gives $z = \frac{2 \pm\sqrt{-16}}2 = 1 \pm 2i$. Roots: $1$, $1 + 2i$, $1 - 2i$.
(c) $P$ has real coefficients, so by the conjugate root theorem $P(\bar z_0) = \overline{P(z_0)} = 0$ whenever $P(z_0) = 0$.

**13.** (a) $-4 = 4e^{i\pi}$, so $z = \sqrt2e^{i(\pi/4 + k\pi/2)}$: $1 + i$, $-1 + i$, $-1 - i$, $1 - i$.
(b) Pair conjugates: $(z - (1 + i))(z - (1 - i)) = z^2 - 2z + 2$ and $(z - (-1 + i))(z - (-1 - i)) = z^2 + 2z + 2$. So

$$z^4 + 4 = (z^2 - 2z + 2)(z^2 + 2z + 2).$$

(Check: $(z^2 + 2)^2 - (2z)^2 = z^4 + 4z^2 + 4 - 4z^2$. ✓ This is the Sophie Germain identity.)

**14.** (a) $\omega \ne 1$ and $\omega^5 = 1$, so the geometric sum equals $\dfrac{\omega^5 - 1}{\omega - 1} = 0$.
(b) Real parts: $1 + \cos\frac{2\pi}5 + \cos\frac{4\pi}5 + \cos\frac{6\pi}5 + \cos\frac{8\pi}5 = 0$. Since $\cos\frac{8\pi}5 = \cos\frac{2\pi}5$ and $\cos\frac{6\pi}5 = \cos\frac{4\pi}5$ (as $\cos(2\pi - x) = \cos x$): $1 + 2\cos\frac{2\pi}5 + 2\cos\frac{4\pi}5 = 0$, which gives the result.
(c) $c + 2c^2 - 1 = -\frac12$, so $4c^2 + 2c - 1 = 0$ and $c = \dfrac{-2 \pm\sqrt{20}}{8} = \dfrac{-1 \pm\sqrt5}4$. Since $0 < \frac{2\pi}{5} < \frac\pi2$, $c > 0$: $\cos\frac{2\pi}5 = \dfrac{\sqrt5 - 1}4 \approx 0.309$.

**15.** $p = 6$, $q = -20$. Put $x = u + v$ with $uv = -2$ and $u^3 + v^3 = 20$. Then $u^3v^3 = -8$, so $u^3, v^3$ are roots of $t^2 - 20t - 8 = 0$: $t = 10 \pm\sqrt{108} = 10 \pm 6\sqrt3$. Since $(1 + \sqrt3)^3 = 1 + 3\sqrt3 + 9 + 3\sqrt3 = 10 + 6\sqrt3$ and similarly $(1 - \sqrt3)^3 = 10 - 6\sqrt3$, take $u = 1 + \sqrt3$, $v = 1 - \sqrt3$ (check $uv = 1 - 3 = -2$ ✓). So $x = 2$.
Other roots: $x^3 + 6x - 20 = (x - 2)(x^2 + 2x + 10)$, giving $x = -1 \pm 3i$. (Or from Cardano: $u\omega + v\omega^2$ and $u\omega^2 + v\omega$ with $\omega = -\frac12 + \frac{\sqrt3}2i$; e.g. $u\omega + v\omega^2 = -\frac12(u + v) + \frac{\sqrt3}{2}i(u - v) = -1 + \frac{\sqrt3}2i\cdot 2\sqrt3 = -1 + 3i$.)

**16.** (a) $(2 + i)^3 = 8 + 3\cdot4\cdot i + 3\cdot2\cdot i^2 + i^3 = 8 + 12i - 6 - i = 2 + 11i$.
(b) Taking conjugates, $(2 - i)^3 = 2 - 11i$. With $u = 2 + i$, $v = 2 - i$ we have $uv = 5 = \frac p3$ for $p = 15$ (Cardano for $x^3 = px + q$ needs $uv = \frac{p}{3}$), so $x = u + v = 4$. Check: $64 = 60 + 4$. ✓ Then $x^3 - 15x - 4 = (x - 4)(x^2 + 4x + 1)$, so the other solutions are $x = -2 \pm\sqrt3$, both real. All three roots are real, yet the formula needs non-real numbers: the irreducible case.

**17.** With $z = x + iy$: $(x - 3)^2 + y^2 = 4(x^2 + y^2) \iff 3x^2 + 3y^2 + 6x - 9 = 0 \iff x^2 + 2x + y^2 = 3 \iff (x + 1)^2 + y^2 = 4$. A circle with centre $-1$ and radius 2 (a circle of Apollonius for the points $3$ and $0$ with ratio 2). Check: $z = 1$ gives $\lvert 1 - 3\rvert = 2 = 2\lvert1\rvert$ ✓; $z = -3$ gives $6 = 2\cdot 3$ ✓.

**18.** (a) In an equilateral triangle $\lvert w\rvert = \lvert z\rvert$ and the angle from $z$ to $w$ at the vertex $0$ is $60°$; anticlockwise means $\arg w = \arg z + \frac\pi3$. So $w = e^{i\pi/3}z$.
(b) $\rho = e^{i\pi/3}$ satisfies $\rho^3 = e^{i\pi} = -1$, so $0 = \rho^3 + 1 = (\rho + 1)(\rho^2 - \rho + 1)$, and $\rho \ne -1$, so $\rho^2 - \rho + 1 = 0$. Then $z^2 + w^2 - zw = z^2(1 + \rho^2 - \rho) = 0$.

**19.** (a) $c = (1 + i)c + 2 \iff -ic = 2 \iff c = \frac{2}{-i} = 2i$.
(b) $f(z) - 2i = (1 + i)(z - 2i)$ and $1 + i = \sqrt2e^{i\pi/4}$: a rotation by $45°$ about $2i$ followed by scaling by factor $\sqrt2$ from $2i$ (a spiral similarity).
(c) Four times: rotation by $180°$ and scaling by $4$ about $2i$: $f^4(z) - 2i = (1 + i)^4(z - 2i) = -4(z - 2i)$. For $z = 0$: $f^4(0) = 2i + 8i = 10i$.
Check: $f(0) = 2$, $f(2) = 4 + 2i$, $f(4 + 2i) = (4 + 2i + 4i - 2) + 2 = 4 + 6i$, $f(4 + 6i) = (4 + 6i + 4i - 6) + 2 = 10i$. ✓

**20.** For real $x$: $e^{(1 + i)x} = e^x(\cos x + i\sin x)$, whose real part is $e^x\cos x$. An antiderivative of $e^{(1+i)x}$ is $\dfrac{e^{(1+i)x}}{1 + i} = \dfrac{1 - i}{2}e^x(\cos x + i\sin x)$. Its real part: $\frac12e^x(\cos x + \sin x)$. So

$$\int e^x\cos x\,dx = \tfrac12e^x(\cos x + \sin x) + C.$$

Check: $\frac{d}{dx}\left[\frac12e^x(\cos x + \sin x)\right] = \frac12e^x(\cos x + \sin x) + \frac12e^x(-\sin x + \cos x) = e^x\cos x$. ✓
(Taking real parts commutes with integrating because integrating a complex function means integrating real and imaginary parts separately.)

## Challenge

**21.** (a) $z^n - 1 = (z - 1)(z^{n-1} + \dots + 1)$, and $z^n - 1$ has the $n$ distinct roots $1, \omega, \dots, \omega^{n-1}$, so $z^n - 1 = (z - 1)(z - \omega)\cdots(z - \omega^{n-1})$. Cancel the factor $z - 1$ (as polynomials).
(b) Substitute $z = 1$: left side $1 + 1 + \dots + 1 = n$.
(c) $1 - e^{i\theta} = e^{i\theta/2}(e^{-i\theta/2} - e^{i\theta/2}) = e^{i\theta/2}\cdot(-2i\sin\frac\theta2)$, so $\lvert 1 - e^{i\theta}\rvert = 2\lvert\sin\frac\theta2\rvert = 2\sin\frac\theta2$ for $0 < \theta < 2\pi$. Taking moduli in (b) with $\theta = \frac{2k\pi}n$: $\prod_{k=1}^{n-1}2\sin\frac{k\pi}{n} = n$. (Numerical check for $n = 7$: product $= 7.000$.)

**22.** Expand, using $\omega^3 = 1$ and $1 + \omega + \omega^2 = 0$:

$$(a + \omega b + \omega^2c)(a + \omega^2b + \omega c) = a^2 + b^2 + c^2 + (\omega + \omega^2)(ab + bc + ca) = a^2 + b^2 + c^2 - ab - bc - ca.$$

(The $ab$ terms: $\omega^2ab + \omega ab$; $bc$: $\omega\cdot\omega\,bc + \omega^2\omega^2\,bc = (\omega^2 + \omega^4)bc = (\omega^2 + \omega)bc$; $ca$: $\omega ca + \omega^2ca$.)
So the condition holds iff $a + \omega b + \omega^2c = 0$ or $a + \omega^2b + \omega c = 0$. Now $a + \omega b + \omega^2c = 0$ with $\omega^2 = -1 - \omega$ becomes $a - c = \omega(c - b)$, i.e. $a - c = -\omega(b - c)$, and $-\omega = e^{i\pi}e^{2i\pi/3} = e^{-i\pi/3}$. So $a - c$ is $b - c$ rotated by $-60°$ about $c$: then $\lvert a - c\rvert = \lvert b - c\rvert$ and the angle at $c$ is $60°$, so the triangle is equilateral. (Example: $c = 0$, $b = 1$, $a = e^{-i\pi/3}$; then $a, b, c$ is traversed anticlockwise.) The second factor gives, in the same way, $a - c = e^{i\pi/3}(b - c)$: the equilateral triangles with the opposite orientation. Conversely every equilateral triangle is clockwise or anticlockwise, so it makes one factor zero. (Degenerate case $a = b = c$ satisfies both.)

**23.** Let $S = \sum_{k=1}^n e^{ik\theta}$. Since $e^{i\theta} \ne 1$:

$$S = e^{i\theta}\frac{e^{in\theta} - 1}{e^{i\theta} - 1} = e^{i\theta}\frac{e^{in\theta/2}\cdot2i\sin\frac{n\theta}2}{e^{i\theta/2}\cdot2i\sin\frac\theta2} = e^{i(n + 1)\theta/2}\,\frac{\sin\frac{n\theta}{2}}{\sin\frac\theta2}.$$

The real part is $\dfrac{\sin\frac{n\theta}2\cos\frac{(n + 1)\theta}2}{\sin\frac\theta2}$, and the real part of $S$ is the cosine sum. (Numerical check $n = 5$, $\theta = 0.7$: both sides $-1.4487$.) The imaginary part gives the sine sum for free.

**24.** If $(z + 1)^5 = z^5$, take moduli: $\lvert z + 1\rvert^5 = \lvert z\rvert^5$, so $\lvert z - (-1)\rvert = \lvert z - 0\rvert$: $z$ is equidistant from $-1$ and $0$, so it is on the perpendicular bisector $\operatorname{Re}z = -\frac12$.
Exact solutions: $z = 0$ is not a solution, so we may write $\left(\frac{z + 1}z\right)^5 = 1$, i.e. $1 + \frac1z = \omega^k$ with $\omega = e^{2\pi i/5}$, $k = 1, 2, 3, 4$ ($k = 0$ would need $\frac1z = 0$). So $z = \dfrac{1}{\omega^k - 1}$. With $\omega^k - 1 = e^{i\theta/2}\cdot 2i\sin\frac\theta2$, $\theta = \frac{2k\pi}5$:

$$z = \frac{e^{-i\theta/2}}{2i\sin\frac\theta2} = \frac{-i\cos\frac\theta2 - \sin\frac\theta2}{2\sin\frac\theta2} = -\frac12 - \frac i2\cot\frac{k\pi}{5}, \quad k = 1, 2, 3, 4.$$

Four solutions (the equation has degree 4 since the $z^5$ terms cancel), all with real part $-\frac12$. ✓

**25.** (a) For a positive real base, $a^b = e^{b\ln a}$. Copy this: $i = e^{i\pi/2}$, so a "logarithm" of $i$ is $i\frac\pi2$, and $i^i = e^{i\cdot i\pi/2} = e^{-\pi/2} \approx 0.2079$.
(b) Also $i = e^{i(\pi/2 + 2k\pi)}$ for every integer $k$, so every $i(\frac\pi2 + 2k\pi)$ is "a logarithm" of $i$, giving $i^i = e^{-\pi/2 - 2k\pi}$. Infinitely many values, all real and positive. Choosing the principal argument ($k = 0$) gives the principal value $e^{-\pi/2}$.
