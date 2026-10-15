# E2 Problems: complex numbers

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Give exact answers unless asked otherwise. Arguments in radians.

## Practice

**1.** Write in the form $a + bi$:
(a) $(3 + 2i)(1 - 4i)$  (b) $\dfrac{2 - i}{1 + 3i}$  (c) $i^{2031}$

**2.** Solve $z^2 - 4z + 13 = 0$.

**3.** Find the modulus and the principal argument of
(a) $-1 + i\sqrt3$  (b) $-3 - 3i$

**4.** Write $4e^{i\pi/6}$ and $2e^{-3i\pi/4}$ in the form $a + bi$.

**5.** Sketch in the complex plane:
(a) $\lvert z - 2i\rvert = 3$
(b) $\lvert z - 1\rvert = \lvert z + i\rvert$
(c) $\arg z = \frac\pi4$
(d) $\lvert z - 1\rvert \le \lvert z + 1\rvert$

**6.** Compute $(1 + i)^{10}$ using polar form.

**7.** Solve $z^3 = 8i$. Give the solutions in polar form and in the form $a + bi$, and draw them.

**8.** Prove for all $z, w \in \mathbb{C}$: (a) $z\bar z = \lvert z\rvert^2$; (b) $\overline{zw} = \bar z\,\bar w$; (c) $z$ is real iff $z = \bar z$.

**9.** Find all real $a, b$ with $(a + bi)^2 = 5 - 12i$.

**10.** The point $4 + i$ is rotated by $90°$ anticlockwise about $1 + i$. Find the image.

## Exam-level

**11.** (a) Use De Moivre's theorem to express $\cos 3\varphi$ and $\sin 3\varphi$ in terms of $\cos\varphi$ and $\sin\varphi$.
(b) Solve $4x^3 - 3x = \frac12$ exactly, by substituting $x = \cos\varphi$.

**12.** Given $P(z) = z^3 - 3z^2 + 7z - 5$.
(a) Show that $z = 1$ is a root.
(b) Find all roots of $P$.
(c) Explain without calculation why the non-real roots are each other's conjugates.

**13.** (a) Solve $z^4 = -4$.
(b) Hence factor $z^4 + 4$ into two quadratics with real coefficients.

**14.** Let $\omega = e^{2\pi i/5}$.
(a) Show that $1 + \omega + \omega^2 + \omega^3 + \omega^4 = 0$.
(b) Deduce that $\cos\frac{2\pi}5 + \cos\frac{4\pi}5 = -\frac12$.
(c) (harder) Put $c = \cos\frac{2\pi}{5}$. Use $\cos\frac{4\pi}5 = 2c^2 - 1$ to find $c$ exactly.

**15.** Solve $x^3 + 6x - 20 = 0$ with Cardano's method. Find all three (complex) solutions.

**16.** (Bombelli) Cardano's formula for $x^3 = 15x + 4$ gives $x = \sqrt[3]{2 + 11i} + \sqrt[3]{2 - 11i}$.
(a) Show that $(2 + i)^3 = 2 + 11i$.
(b) Explain how this gives the solution $x = 4$, and find the other two real solutions.

**17.** Describe and sketch the set of all $z$ with $\lvert z - 3\rvert = 2\lvert z\rvert$.

**18.** Points $0$, $z$ and $w$ (all distinct) form an equilateral triangle with vertices in anticlockwise order.
(a) Explain why $w = e^{i\pi/3}z$.
(b) Show that $z^2 + w^2 = zw$.

**19.** Given $f(z) = (1 + i)z + 2$.
(a) Find the fixed point of $f$.
(b) Describe $f$ geometrically.
(c) Find $f(f(f(f(0))))$ by thinking geometrically, then check by computation.

**20.** Use $e^x\cos x = \mathrm{Re}\,\left(e^{(1 + i)x}\right)$ to find $\displaystyle\int e^x\cos x\,dx$. Check by differentiating.

## Challenge

**21.** Let $n \ge 2$ and $\omega = e^{2\pi i/n}$.
(a) Explain why $z^{n-1} + z^{n-2} + \dots + z + 1 = (z - \omega)(z - \omega^2)\cdots(z - \omega^{n-1})$.
(b) Deduce $\displaystyle\prod_{k=1}^{n-1}(1 - \omega^k) = n$.
(c) Show $\lvert 1 - e^{i\theta}\rvert = 2\sin\frac\theta2$ for $0 < \theta < 2\pi$, and deduce $\displaystyle\prod_{k=1}^{n-1}2\sin\frac{k\pi}{n} = n$. (Geometric meaning: the product of the lengths of the diagonals and two sides from one vertex of a regular $n$-gon inscribed in the unit circle is $n$.)

**22.** Let $\omega = e^{2\pi i/3}$. Prove that the triangle with vertices $a, b, c$ is equilateral if and only if

$$a^2 + b^2 + c^2 = ab + bc + ca.$$

(Hint: show $(a + \omega b + \omega^2c)(a + \omega^2b + \omega c) = a^2 + b^2 + c^2 - ab - bc - ca$, and interpret $a + \omega b + \omega^2c = 0$.)

**23.** Prove for $\theta$ not a multiple of $2\pi$:

$$\cos\theta + \cos2\theta + \dots + \cos n\theta = \frac{\sin\frac{n\theta}2\,\cos\frac{(n + 1)\theta}2}{\sin\frac\theta2}.$$

(Hint: it is the real part of a geometric sum, and use $e^{ix} - 1 = e^{ix/2}\cdot 2i\sin\frac x2$.)

**24.** Prove that all solutions of $(z + 1)^5 = z^5$ lie on the line $\mathrm{Re}\, z = -\frac12$. Then find them exactly.

**25.** (a) Explain why "$i^i$" can be given the real value $e^{-\pi/2}$.
(b) Why does $i^i$ have infinitely many possible values? Are they all real?
