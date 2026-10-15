# D2 Integral calculus: solutions

[← Module overview](README.md) · [Notes](notes.md) · [Problems](problems.md)

Try every problem seriously before you read its solution. For antiderivatives, many answers are possible (any constant may be added); we give one. All final answers were checked with the computer algebra system SymPy.

## Practice

**Problem 1.**

a. $F(x) = 2x^3 - 2x^2 + 3x$.
b. $\frac{1}{x^3} = x^{-3}$, so $F(x) = \frac{1}{-2}x^{-2} = -\dfrac{1}{2x^2}$.
c. $\sqrt x = x^{1/2}$, so $F(x) = \frac{1}{3/2}x^{3/2} = \tfrac23x\sqrt x$.
d. $F(x) = 3\ln\lvert x\rvert$.
e. Linear substitution with $a = 2$: $F(x) = \tfrac12e^{2x+1}$.
f. $F(x) = \dfrac{2^x}{\ln 2}$.
g. $F(x) = -\tfrac13\cos(3x)$.
h. Here $a = \tfrac12$, so dividing by $a$ means multiplying by $2$: $F(x) = 2\sin\left(\tfrac12x - 1\right)$.

**Problem 2.**

a. The outer function $u^4$ has antiderivative $\frac15u^5$, and $a = 2$: $F(x) = \tfrac{1}{10}(2x + 5)^5$.
b. $F(x) = \tfrac13\ln(3x - 2)$ (no absolute value needed since $3x - 2 > 0$).
c. $a = -\tfrac12$: $F(x) = -2e^{-x/2}$.
d. $\frac{1}{\sqrt{4x+1}} = (4x+1)^{-1/2}$. The outer function $u^{-1/2}$ has antiderivative $2u^{1/2}$, and $a = 4$: $F(x) = \tfrac14\cdot 2(4x+1)^{1/2} = \tfrac12\sqrt{4x+1}$.

Check d: $\frac{d}{dx}\tfrac12(4x+1)^{1/2} = \tfrac12\cdot\tfrac12(4x+1)^{-1/2}\cdot 4 = (4x+1)^{-1/2}$. Correct.

**Problem 3.** By the product rule, $F'(x) = 1\cdot\ln x + x\cdot\frac1x - 1 = \ln x + 1 - 1 = \ln x = f(x)$. So $F$ is an antiderivative of $f$.

All antiderivatives are $G(x) = x\ln x - x + c$. From $G(1) = 0 - 1 + c = 0$ we get $c = 1$, so $G(x) = x\ln x - x + 1$.

**Problem 4.**

a. Width $\Delta x = \tfrac12$, dividing points $0, \tfrac12, 1, \tfrac32, 2$. Since $f$ is increasing, the lower sum uses left endpoints and the upper sum right endpoints:

$$
L_4 = \tfrac12\left(0 + \tfrac12 + 1 + \tfrac32\right) = \tfrac32, \qquad U_4 = \tfrac12\left(\tfrac12 + 1 + \tfrac32 + 2\right) = \tfrac52.
$$

b. $\Delta x = \frac2n$ and $x_k = \frac{2k}{n}$.

$$
L_n = \sum_{k=0}^{n-1}\frac{2k}{n}\cdot\frac2n = \frac{4}{n^2}\cdot\frac{(n-1)n}{2} = \frac{2(n-1)}{n} = 2 - \frac2n,
$$

$$
U_n = \sum_{k=1}^{n}\frac{2k}{n}\cdot\frac2n = \frac{4}{n^2}\cdot\frac{n(n+1)}{2} = 2 + \frac2n.
$$

Check with $n = 4$: $2 - \frac12 = \frac32$ and $2 + \frac12 = \frac52$. Correct.

c. As $n \to \infty$, $\frac2n \to 0$, so both tend to $2$. The region under $y = x$ on $[0, 2]$ is a right triangle with legs $2$ and $2$, area $\frac12\cdot2\cdot2 = 2$. The method gives the answer we already knew, which is a good test of the method.

**Problem 5.**

a. $\displaystyle\int_1^4x^{1/2}\,dx = \Big[\tfrac23x^{3/2}\Big]_1^4 = \tfrac23\cdot8 - \tfrac23 = \tfrac{14}{3}$.
b. $\Big[\sin x\Big]_0^{\pi/2} = 1 - 0 = 1$.
c. $\Big[\ln x\Big]_1^e = 1 - 0 = 1$.
d. $\Big[\tfrac12e^{2x}\Big]_0^1 = \tfrac12e^2 - \tfrac12 = \tfrac12\left(e^2 - 1\right)$.

**Problem 6.**

a. $\Big[-\cos x\Big]_0^{2\pi} = -1 - (-1) = 0$.
b. $\sin x \ge 0$ on $[0, \pi]$ and $\le 0$ on $[\pi, 2\pi]$.

$$
\int_0^\pi\sin x\,dx = \Big[-\cos x\Big]_0^\pi = 1 + 1 = 2, \qquad \int_\pi^{2\pi}\sin x\,dx = -1 - 1 = -2.
$$

The area is $2 + 2 = 4$.

c. The integral counts the part below the axis negatively, so the two halves cancel; the area counts both halves positively.

**Problem 7.** Intersection points: $x^2 = x + 2 \iff x^2 - x - 2 = 0 \iff (x - 2)(x + 1) = 0 \iff x = -1 \lor x = 2$. At $x = 0$: $g(0) = 2 > f(0) = 0$, so $g$ is on top.

$$
O = \int_{-1}^2\left(x + 2 - x^2\right)dx = \Big[\tfrac12x^2 + 2x - \tfrac13x^3\Big]_{-1}^2 = \left(2 + 4 - \tfrac83\right) - \left(\tfrac12 - 2 + \tfrac13\right) = \tfrac{10}{3} + \tfrac76 = \tfrac92.
$$

**Problem 8.**

$$
V = \pi\int_0^4\left(\sqrt x\right)^2dx = \pi\int_0^4x\,dx = \pi\Big[\tfrac12x^2\Big]_0^4 = 8\pi.
$$

The solid is a paraboloid: a bowl whose cross-sections through the axis are parabolas ($x = y^2$), like a satellite dish lying on its side.

**Problem 9.**

a. $e^{x^2} + c$. Check: $\frac{d}{dx}e^{x^2} = e^{x^2}\cdot 2x$.
b. $-\tfrac13\cos^3x + c$. Check: $-\tfrac13\cdot3\cos^2x\cdot(-\sin x) = \sin x\cos^2x$.
c. $\ln(x^2 + 1) + c$. This is $\int\frac{f'}{f}$ with $f = x^2 + 1 > 0$.
d. The inside is $x^2 + 3$ with derivative $2x$. Guess $(x^2 + 3)^5$: its derivative is $5(x^2+3)^4\cdot 2x = 10x(x^2+3)^4$. We want one tenth of that, so the answer is $\tfrac{1}{10}(x^2 + 3)^5 + c$.

**Problem 10.**

a. $\bar f = \dfrac13\displaystyle\int_0^3x^2\,dx = \dfrac13\cdot\Big[\tfrac13x^3\Big]_0^3 = \dfrac13\cdot9 = 3$.
b. $\bar g = \dfrac1\pi\displaystyle\int_0^\pi\sin x\,dx = \dfrac{2}{\pi}$ (using problem 6). That is about $0.64$: the rectangle of height $\frac2\pi$ on $[0, \pi]$ has the same area, $2$, as the arch of the sine.

**Problem 11.** An antiderivative of $v$ is $s(t) = t^3 - 6t^2 + 9t$.

a. Displacement $= s(4) - s(0) = (64 - 96 + 36) - 0 = 4$ metres.

b. $v(t) = 3(t^2 - 4t + 3) = 3(t-1)(t-3)$, so $v > 0$ on $(0,1)$, $v < 0$ on $(1,3)$, $v > 0$ on $(3,4)$. With $s(0) = 0$, $s(1) = 4$, $s(3) = 27 - 54 + 27 = 0$, $s(4) = 4$:

$$
\int_0^1v\,dt = 4, \qquad \int_1^3v\,dt = 0 - 4 = -4, \qquad \int_3^4v\,dt = 4 - 0 = 4.
$$

Distance $= 4 + 4 + 4 = 12$ metres. The particle goes forward 4 m, back 4 m, and forward 4 m again: displacement 4, distance 12.

**Problem 12.** $f'(x) = \tfrac23\cdot\tfrac32x^{1/2} = \sqrt x$, so $\sqrt{1 + f'(x)^2} = \sqrt{1 + x}$.

$$
L = \int_0^3(1 + x)^{1/2}\,dx = \Big[\tfrac23(1 + x)^{3/2}\Big]_0^3 = \tfrac23\left(4^{3/2} - 1\right) = \tfrac23\cdot7 = \tfrac{14}{3}.
$$

## CE-level

**Problem 13.**

a. Product rule:

$$
F'(x) = -1\cdot e^{-x} - (x + 1)\cdot\left(-e^{-x}\right) = -e^{-x} + (x + 1)e^{-x} = x\,e^{-x} = f(x).
$$

So $F$ is an antiderivative of $f$.

b. $f(x) = 0 \iff x = 0$, and $f(x) > 0$ for $x > 0$. So the region lies between $x = 0$ and $x = 2$, above the axis.

$$
O = \int_0^2x\,e^{-x}\,dx = \Big[-(x+1)e^{-x}\Big]_0^2 = -3e^{-2} - (-1) = 1 - 3e^{-2}.
$$

c. In the same way, the area of $W_p$ is $F(p) - F(0) = 1 - (p + 1)e^{-p}$. Since $(p + 1)e^{-p} > 0$, the area is less than $1$. As $p \to \infty$, $(p + 1)e^{-p} = p\,e^{-p} + e^{-p} \to 0 + 0$, so the area tends to $1$. (This is an improper integral: $\int_0^\infty x\,e^{-x}\,dx = 1$.)

**Problem 14.**

a. Zeros of $f$: $x = \pm2$.

$$
O(V) = \int_{-2}^2\left(4 - x^2\right)dx = \Big[4x - \tfrac13x^3\Big]_{-2}^2 = \left(8 - \tfrac83\right) - \left(-8 + \tfrac83\right) = \tfrac{32}{3}.
$$

b. The part of $V$ above the line $y = a$ (with $0 < a < 4$) lies between the intersection points $4 - x^2 = a$, that is $x = \pm\sqrt{4 - a}$. Write $w = \sqrt{4 - a}$, so $4 - a = w^2$. Its area is

$$
\int_{-w}^{w}\left(4 - x^2 - a\right)dx = \int_{-w}^{w}\left(w^2 - x^2\right)dx = \Big[w^2x - \tfrac13x^3\Big]_{-w}^{w} = 2\left(w^3 - \tfrac13w^3\right) = \tfrac43w^3.
$$

This must be half of $\frac{32}{3}$, so $\frac43w^3 = \frac{16}{3}$, $w^3 = 4$, $w = \sqrt[3]{4}$. Then $4 - a = w^2 = \sqrt[3]{16} = 2\sqrt[3]{2}$, so

$$
a = 4 - 2\sqrt[3]{2} \;(\approx 1.48).
$$

(Sanity check: $a$ is well below $2$, which makes sense because $V$ is wider at the bottom.)

c.

$$
I = \pi\int_{-2}^2\left(4 - x^2\right)^2dx = \pi\int_{-2}^2\left(16 - 8x^2 + x^4\right)dx = 2\pi\Big[16x - \tfrac83x^3 + \tfrac15x^5\Big]_0^2 = 2\pi\left(32 - \tfrac{64}{3} + \tfrac{32}{5}\right) = \tfrac{512}{15}\pi.
$$

(We used that the integrand is even, see problem 26.)

d. Rotating about the $y$-axis, the left and right halves of $V$ sweep out the same solid, so use only $x \ge 0$. From $y = 4 - x^2$ we get $x^2 = 4 - y$, with $y$ from $0$ to $4$:

$$
I = \pi\int_0^4(4 - y)\,dy = \pi\Big[4y - \tfrac12y^2\Big]_0^4 = \pi(16 - 8) = 8\pi.
$$

**Problem 15.**

a. $\ln x = 0 \iff x = 1$, and $\ln x > 0$ for $x > 1$. So the region lies over $[1, e]$:

$$
O = \int_1^e\ln x\,dx = \Big[x\ln x - x\Big]_1^e = (e - e) - (0 - 1) = 1.
$$

b. On the curve $y = \ln x$ we have $x = e^y$. The region is bounded by the $y$-axis ($x = 0$) and the curve, for $0 \le y \le 1$. Each horizontal slice is a disc of radius $x = e^y$:

$$
I = \pi\int_0^1\left(e^y\right)^2dy = \pi\int_0^1e^{2y}\,dy = \pi\Big[\tfrac12e^{2y}\Big]_0^1 = \tfrac12\pi\left(e^2 - 1\right).
$$

c. Product rule on each term:

$$
G'(x) = (\ln x)^2 + x\cdot2\ln x\cdot\tfrac1x - \left(2\ln x + 2x\cdot\tfrac1x\right) + 2 = (\ln x)^2 + 2\ln x - 2\ln x - 2 + 2 = (\ln x)^2.
$$

d.

$$
I = \pi\int_1^e(\ln x)^2\,dx = \pi\Big[G(x)\Big]_1^e = \pi\big((e - 2e + 2e) - (0 - 0 + 2)\big) = \pi(e - 2).
$$

**Problem 16.**

a. $\sin2x = \sin x \iff 2\sin x\cos x - \sin x = 0 \iff \sin x\,(2\cos x - 1) = 0$. So $\sin x = 0$ or $\cos x = \tfrac12$. On $[0, \pi]$: $x = 0$, $x = \pi$, or $x = \tfrac13\pi$.

b. At $x = \tfrac16\pi$: $f = \tfrac12\sqrt3 > g = \tfrac12$, so $f$ is on top on $(0, \tfrac13\pi)$. At $x = \tfrac12\pi$: $f = 0 < g = 1$, so $g$ is on top on $(\tfrac13\pi, \pi)$. An antiderivative of $\sin 2x - \sin x$ is $H(x) = -\tfrac12\cos2x + \cos x$.

$$
\int_0^{\pi/3}(\sin2x - \sin x)\,dx = H\left(\tfrac\pi3\right) - H(0) = \left(\tfrac14 + \tfrac12\right) - \left(-\tfrac12 + 1\right) = \tfrac14.
$$

$$
\int_{\pi/3}^{\pi}(\sin x - \sin2x)\,dx = -\big(H(\pi) - H(\tfrac\pi3)\big) = -\left(\left(-\tfrac12 - 1\right) - \tfrac34\right) = \tfrac94.
$$

Total area $= \tfrac14 + \tfrac94 = \tfrac52$.

**Problem 17.**

a.

$$
I = \pi\int_0^{\pi/2}\cos^2x\,dx = \pi\int_0^{\pi/2}\tfrac12(1 + \cos2x)\,dx = \tfrac12\pi\Big[x + \tfrac12\sin2x\Big]_0^{\pi/2} = \tfrac12\pi\cdot\tfrac12\pi = \tfrac14\pi^2.
$$

b. On $[0, \tfrac14\pi]$, $\cos x \ge \sin x \ge 0$, so the slices are washers with outer radius $\cos x$ and inner radius $\sin x$:

$$
I = \pi\int_0^{\pi/4}\left(\cos^2x - \sin^2x\right)dx = \pi\int_0^{\pi/4}\cos2x\,dx = \pi\Big[\tfrac12\sin2x\Big]_0^{\pi/4} = \tfrac12\pi.
$$

**Problem 18.**

a. Chain rule: $Q'(t) = -100\,e^{-0.1t^2}\cdot(-0.2t) = 20t\,e^{-0.1t^2} = q(t)$.

b. Amount $= Q(5) - Q(0) = -100e^{-2.5} + 100 = 100\left(1 - e^{-2.5}\right) \approx 91.8$ litres.

c. Average rate $= \dfrac{91.79\ldots}{5} \approx 18.4$ litres per minute.

d. The amount in the tank at time $T$ is $Q(T) - Q(0) = 100\left(1 - e^{-0.1T^2}\right)$. Since $e^{-0.1T^2} > 0$, this is less than $100$ for every $T$, so less than $120$. The tank never overflows. (In the long run the amount approaches $100$ litres.)

**Problem 19.**

a. $f'(x) = \tfrac12\left(e^x - e^{-x}\right)$. Using $e^x\cdot e^{-x} = 1$:

$$
1 + f'(x)^2 = 1 + \tfrac14\left(e^{2x} - 2 + e^{-2x}\right) = \tfrac14\left(e^{2x} + 2 + e^{-2x}\right) = \left(\tfrac12\left(e^x + e^{-x}\right)\right)^2 = f(x)^2.
$$

b. Since $f(x) > 0$, $\sqrt{1 + f'(x)^2} = f(x)$, so

$$
L = \int_{-1}^1\tfrac12\left(e^x + e^{-x}\right)dx = \Big[\tfrac12\left(e^x - e^{-x}\right)\Big]_{-1}^1 = \tfrac12\left(e - e^{-1}\right) - \tfrac12\left(e^{-1} - e\right) = e - \frac1e \;(\approx 2.350).
$$

c. The area under the graph on $[-1, 1]$ is $\int_{-1}^1f(x)\,dx$, the same integral, so it is also $e - \frac1e$. For the catenary, length and area over any interval are numerically equal, because $\sqrt{1 + f'^2} = f$.

d. Arc length from $0$ to $x$ $= \int_0^xf(t)\,dt = \Big[\tfrac12(e^t - e^{-t})\Big]_0^x = \tfrac12(e^x - e^{-x}) - 0 = f'(x)$.

**Problem 20.**

a. $f'(x) = 2x$, so $L = \displaystyle\int_0^1\sqrt{1 + 4x^2}\,dx \approx 1.479$ (GR).

b. The shortest path between the endpoints $(0,0)$ and $(1,1)$ is the straight segment, of length $\sqrt2$, so $L \ge \sqrt2$. For the upper bound: $\sqrt{1 + 4x^2} \le \sqrt{1 + 4x + 4x^2} = 1 + 2x$ for $x \ge 0$, so $L \le \int_0^1(1 + 2x)\,dx = 2$. (Geometrically: the curve is never longer than walking 1 to the right and then 1 up.)

**Problem 21.**

a. $f_p(x) = x(p - x) = 0 \iff x = 0 \lor x = p$, and $f_p > 0$ between them (for example at $x = \frac p2$, $f_p = \frac{p^2}{4} > 0$).

$$
O = \int_0^p\left(px - x^2\right)dx = \Big[\tfrac12px^2 - \tfrac13x^3\Big]_0^p = \tfrac12p^3 - \tfrac13p^3 = \tfrac16p^3.
$$

b. $\tfrac16p^3 = 36 \iff p^3 = 216 \iff p = 6$.

**Problem 22.**

a. On $\left(-\tfrac12\pi, \tfrac12\pi\right)$, $\cos x > 0$, so $F$ is defined. Chain rule:

$$
F'(x) = -\frac{1}{\cos x}\cdot(-\sin x) = \frac{\sin x}{\cos x} = \tan x.
$$

b.

$$
\int_0^{\pi/4}\tan x\,dx = \Big[-\ln(\cos x)\Big]_0^{\pi/4} = -\ln\left(\tfrac12\sqrt2\right) + \ln1 = -\ln\left(2^{-1/2}\right) = \tfrac12\ln2.
$$

So $a = \tfrac12$.

## Challenge

**Problem 23.** First the formula, by induction. For $n = 1$: $1 = \left(\tfrac12\cdot1\cdot2\right)^2$. Suppose $\sum_{k=1}^nk^3 = \tfrac14n^2(n+1)^2$. Then

$$
\sum_{k=1}^{n+1}k^3 = \tfrac14n^2(n+1)^2 + (n+1)^3 = \tfrac14(n+1)^2\left(n^2 + 4n + 4\right) = \tfrac14(n+1)^2(n+2)^2,
$$

which is the formula for $n + 1$.

Now the sums, with $\Delta x = \frac1n$ and $f(x) = x^3$ increasing:

$$
U_n = \sum_{k=1}^n\frac{k^3}{n^3}\cdot\frac1n = \frac{1}{n^4}\cdot\frac{n^2(n+1)^2}{4} = \frac{(n+1)^2}{4n^2} = \frac14\left(1 + \frac1n\right)^2,
$$

$$
L_n = \frac{1}{n^4}\sum_{k=0}^{n-1}k^3 = \frac{1}{n^4}\cdot\frac{(n-1)^2n^2}{4} = \frac14\left(1 - \frac1n\right)^2.
$$

Both tend to $\frac14$, so $\int_0^1x^3\,dx = \frac14$, agreeing with $\Big[\tfrac14x^4\Big]_0^1$. Again $U_n - L_n = \frac1n$.

**Problem 24.**

a. Take $u = x$, $v' = e^x$, so $u' = 1$, $v = e^x$: $\int x\,e^x\,dx = x\,e^x - \int e^x\,dx = (x - 1)e^x + c$. Then $\int_0^1x\,e^x\,dx = \Big[(x - 1)e^x\Big]_0^1 = 0 - (-1) = 1$.

b. Take $u = x$, $v' = \sin x$, so $v = -\cos x$:

$$
\int x\sin x\,dx = -x\cos x + \int\cos x\,dx = -x\cos x + \sin x + c,
$$

$$
\int_0^\pi x\sin x\,dx = \Big[-x\cos x + \sin x\Big]_0^\pi = (\pi + 0) - 0 = \pi.
$$

c. Take $u = x^2$, $v' = e^x$: $\int x^2e^x\,dx = x^2e^x - \int 2x\,e^x\,dx = x^2e^x - 2(x - 1)e^x + c = (x^2 - 2x + 2)e^x + c$, using part a. This is exactly the $F$ from worked example 2: there we were *given* $F$ and only had to check it; here we *found* it.

**Problem 25.**

a. $\displaystyle\int_1^p x^{-2}\,dx = \Big[-\tfrac1x\Big]_1^p = 1 - \frac1p \to 1$ as $p \to \infty$. So $\int_1^\infty\frac{1}{x^2}\,dx = 1$.

b. $V = \pi\displaystyle\int_1^\infty\frac{1}{x^2}\,dx = \pi$ by part a.

c. With $f(x) = \frac1x$, the surface area up to $x = p$ is

$$
S_p = 2\pi\int_1^p\frac1x\sqrt{1 + \frac{1}{x^4}}\,dx \ge 2\pi\int_1^p\frac1x\,dx = 2\pi\ln p,
$$

and $\ln p \to \infty$, so the surface area is infinite. It is not a real paradox: a "layer of paint" of fixed thickness cannot fit inside the horn once the horn is narrower than that thickness, so "painting the inside" with real paint would not need infinite paint either. The mathematics just says that area and volume behave differently under the limit: the cross-sections shrink like $\frac{1}{x^2}$ in area (summable) but like $\frac1x$ in circumference (not summable).

**Problem 26.**

a. *Odd case.* Let $F$ be an antiderivative of $f$ and set $G(x) = F(-x)$. Then $G'(x) = -f(-x) = f(x)$, so $G$ is also an antiderivative, and $F(-x) = F(x) + c$ for some constant $c$. Putting $x = 0$ gives $c = 0$, so $F$ is even. Then $\int_{-a}^af(x)\,dx = F(a) - F(-a) = 0$.

*Even case.* By splitting, $\int_{-a}^af = \int_{-a}^0f + \int_0^af$. In the first, the Riemann sums over $[-a, 0]$ use the values $f(-\xi) = f(\xi)$, which are the same as the sums over $[0, a]$ (mirror each rectangle in the $y$-axis). So $\int_{-a}^0f = \int_0^af$, and the total is $2\int_0^af$. (Antiderivative version: now $G(x) = -F(-x)$ is an antiderivative, so $F(-x) = -F(x) + c$ and $c = 2F(0)$; then $F(a) - F(-a) = 2F(a) - 2F(0) = 2\int_0^af$.)

b. $x^3\cos x$ is odd (odd times even), so its integral over $[-1, 1]$ is $0$. $x^2$ is even, so

$$
\int_{-1}^1\left(x^3\cos x + x^2\right)dx = 0 + 2\int_0^1x^2\,dx = \tfrac23.
$$

**Problem 27.**

a. The upper half circle is $y = \sqrt{r^2 - x^2}$ on $[-r, r]$, so $y^2 = r^2 - x^2$:

$$
V = \pi\int_{-r}^r\left(r^2 - x^2\right)dx = 2\pi\Big[r^2x - \tfrac13x^3\Big]_0^r = 2\pi\cdot\tfrac23r^3 = \tfrac43\pi r^3.
$$

b. Cut the cap off at $x = r - h$; the cap is the part with $r - h \le x \le r$:

$$
V_{\text{cap}} = \pi\int_{r-h}^r\left(r^2 - x^2\right)dx = \pi\Big[r^2x - \tfrac13x^3\Big]_{r-h}^r = \pi h^2\left(r - \tfrac13h\right).
$$

(The algebra: $r^2h - \tfrac13\left(r^3 - (r - h)^3\right) = r^2h - \tfrac13\left(3r^2h - 3rh^2 + h^3\right) = rh^2 - \tfrac13h^3$.)

Check: $h = r$ gives $\pi r^2\cdot\tfrac23r = \tfrac23\pi r^3$, half a sphere. $h = 2r$ gives $4\pi r^2\cdot\tfrac13r = \tfrac43\pi r^3$, the whole sphere.

**Problem 28.**

a. $\frac1t$ is continuous on $(0, \infty)$, so by part 1 of the fundamental theorem $L'(x) = \frac1x$. And $L(1) = \int_1^1\frac1t\,dt = 0$.

b. By the chain rule, $\frac{d}{dx}L(ax) = L'(ax)\cdot a = \frac{a}{ax} = \frac1x$. So $h'(x) = \frac1x - \frac1x = 0$ on the interval $(0, \infty)$, and $h$ is constant. Its value at $x = 1$ is $h(1) = L(a) - L(1) = L(a)$. So $L(ax) - L(x) = L(a)$ for all $x > 0$, that is, $L(ax) = L(a) + L(x)$.

This is the logarithm rule $\ln(ab) = \ln a + \ln b$, proved from the integral alone. Some university courses *define* $\ln$ this way and then define $e^x$ as its inverse.

c. Let $\Phi(u) = \int_0^ue^{t^2}\,dt$, so $\Phi'(u) = e^{u^2}$. The expression is $\Phi(x^2)$, and by the chain rule

$$
\frac{d}{dx}\Phi(x^2) = e^{(x^2)^2}\cdot2x = 2x\,e^{x^4}.
$$
