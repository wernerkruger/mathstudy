# Mock central exam: VWO wiskunde (B / techniek style)

[← E4 README](README.md) · [Exam technique](exam-technique.md) · [Solutions and point scheme](mock-paper-solutions.md)

An original practice paper written in the style of the Dutch central exam (*centraal examen*, CE) for VWO Wiskunde B, with the additions of wiskunde techniek (parametric curves, a differential equation, an algorithm, probability, a geometric proof). It is not an official exam.

**Time:** 3 hours (180 minutes)
**Total:** 75 points, 19 questions in 8 parts
**Allowed:** graphing calculator (*grafische rekenmachine*) in exam mode, ruler, compass, protractor. No formula sheet other than the one on the last page.

**Instructions** (as on the real exam):

- Write down your working (*berekeningen, toelichting, redenering*). An answer without working usually earns no points.
- *Bereken exact* / *exact*: no decimal approximations; the calculator may only be used to check.
- *Toon aan* / *bewijs*: the result is given; you must show every step that leads to it.
- *Benader* / *bereken* (without "exact"): a calculator result is allowed, but write down what you entered (the function, the equation and the window or interval).
- Round only at the end, to the precision asked.

Do this paper in one sitting under exam conditions. Mark it with the [solutions](mock-paper-solutions.md) and record every lost point in your error log.

---

## Part 1: A function with an exponential

The function $f$ is given by $f(x) = x\,e^{-\frac12x}$.

**1** (4p) The graph of $f$ has a maximum. *Bereken exact* the coordinates of the top (*top*) of the graph.

**2** (4p) $V$ is the region bounded by the graph of $f$, the $x$-axis and the line $x = 2$. *Bereken exact* the area of $V$.

**3** (5p) The graph of $f$ has exactly one point of inflection (*buigpunt*). *Toon aan* that the tangent line at this point of inflection meets the $x$-axis at $(8, 0)$.

---

## Part 2: A trigonometric function

On the domain $[0, 2\pi]$ the function $g$ is given by $g(x) = \sin 2x + 2\cos x$.

**4** (5p) *Toon aan* that the maximum value of $g$ is $\frac32\sqrt3$.

**5** (3p) *Bereken exact* the zeros of $g$ (*nulpunten*).

**6** (4p) The function $h(x) = 2\sin x$ on $[0, \pi]$ together with the $x$-axis bounds a region $W$. $W$ is rotated about the $x$-axis. *Bereken exact* the volume of the solid of revolution (*omwentelingslichaam*).

---

## Part 3: A circle and two tangent lines

The circle $c$ is given by $x^2 + y^2 - 6x - 4y + 8 = 0$. The lines $\ell_k$ are given by $y = 2x + k$.

**7** (4p) *Bereken exact* the values of $k$ for which $\ell_k$ is tangent to $c$.

The points $P(1, 1)$ and $Q(4, 4)$ lie on $c$. The tangent lines to $c$ at $P$ and at $Q$ intersect in a point $T$.

**8** (4p) Calculate (*bereken*) the angle $\angle PTQ$ in degrees, rounded to a whole number.

---

## Part 4: A Lissajous curve

A point moves along a curve $K$ given by

$$x(t) = \cos t, \qquad y(t) = \sin 2t, \qquad 0 \le t \le 2\pi.$$

**9** (4p) *Bereken exact* the coordinates of all points of $K$ where the tangent line is horizontal.

**10** (4p) The curve passes through the origin twice and crosses itself there. Calculate the angle between the two tangent directions at the origin, in degrees, rounded to a whole number.

**11** (3p) *Toon aan* that every point of $K$ satisfies $y^2 = 4x^2(1 - x^2)$.

---

## Part 5: Filling a tank

A tank is filled with water at a constant 3 litres per minute while it leaks at a rate of $0.1V$ litres per minute, where $V$ is the volume (litres) at time $t$ (minutes). At $t = 0$ the tank is empty. So

$$\frac{dV}{dt} = 3 - 0.1V, \qquad V(0) = 0.$$

**12** (3p) *Toon aan* that $V(t) = 30\left(1 - e^{-0.1t}\right)$ is the solution of this differential equation with this initial condition.

**13** (4p) Use Euler's method with step size $\Delta t = 2$ to approximate $V(4)$. Then calculate the difference between your approximation and the exact value $V(4)$, rounded to two decimals.

---

## Part 6: Bolts

A machine produces bolts. The diameter $D$ (mm) is normally distributed with mean $\mu = 10.00$ and standard deviation $\sigma = 0.05$. A bolt is rejected (*afgekeurd*) if its diameter is less than $9.90$ or more than $10.10$ mm.

**14** (3p) Calculate the probability that a randomly chosen bolt is rejected. Round to three decimals.

**15** (4p) A box contains 50 bolts. Assume the bolts are independent. Calculate the probability that at least 3 bolts in the box would be rejected. Round to three decimals.

---

## Part 7: A dice game

At a fair you pay €1 to throw two fair dice once. If you throw a double you receive €4; if the sum of the eyes is 7 you receive €1; otherwise you receive nothing. Let $G$ be your net gain (*winst*) in euros for one game, taking the €1 stake into account.

**16** (4p) Calculate the expected value $E(G)$ and the standard deviation $\sigma(G)$. Round $\sigma(G)$ to two decimals.

---

## Part 8: Families and proofs

For $p > 0$ the functions $f_p$ are given by $f_p(x) = \ln(x^2 + p)$.

**17** (5p) Each graph of $f_p$ has two points of inflection. *Toon aan* that, for every $p > 0$, these points of inflection lie on the graph of $y = \ln(2x^2)$.

For every real $a$ the function $k_a$ is given by $k_a(x) = x^3 - ax$.

**18** (4p) *Toon aan* that the tangent lines to the graphs of $k_a$ at $x = 1$ all pass through one point, and give that point.

$ABCD$ is a cyclic quadrilateral (*koordenvierhoek*). The lines $AB$ and $DC$ intersect in a point $S$ outside the circle, with $B$ between $A$ and $S$ and $C$ between $D$ and $S$.

**19** (4p) *Bewijs* that triangle $SBC$ is similar to triangle $SDA$, and deduce that $SB\cdot SA = SC\cdot SD$.

---

## Formula sheet

| | |
|---|---|
| Product rule | $(fg)' = f'g + fg'$ |
| Quotient rule | $\left(\dfrac fg\right)' = \dfrac{f'g - fg'}{g^2}$ |
| Chain rule | $(f(g(x)))' = f'(g(x))\,g'(x)$ |
| Volume of revolution about the $x$-axis | $\displaystyle\pi\int_a^b f(x)^2\,dx$ |
| Distance from $(p, q)$ to $ax + by = c$ | $\dfrac{\lvert ap + bq - c\rvert}{\sqrt{a^2 + b^2}}$ |
| Angle between vectors | $\cos\varphi = \dfrac{\vec u\cdot\vec v}{\lvert\vec u\rvert\,\lvert\vec v\rvert}$ |
| Trigonometry | $\sin 2x = 2\sin x\cos x$, $\cos 2x = 1 - 2\sin^2x = 2\cos^2x - 1$ |
| Expected value, variance | $E(X) = \sum x\,P(X = x)$, $\mathrm{Var}(X) = E(X^2) - E(X)^2$ |
| Euler's method | $V_{n+1} = V_n + \Delta t\cdot V'(t_n)$ |
