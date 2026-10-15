# D1 Differential calculus II: solutions

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All final answers were checked with the computer algebra system SymPy. Try each problem seriously before reading its solution. When your answer differs only in form (for example $\tfrac{1}{\cos^2 x}$ against $1 + \tan^2 x$), check whether the two are equal before deciding you are wrong.

## Practice

**1.**

(a) Outer $u^4$, inner $3x^2 - 5$ with derivative $6x$: $f'(x) = 4(3x^2 - 5)^3\cdot 6x = 24x(3x^2 - 5)^3$.

(b) $g(x) = (1 + x^2)^{1/2}$, so $g'(x) = \tfrac12(1 + x^2)^{-1/2}\cdot 2x = \dfrac{x}{\sqrt{1 + x^2}}$.

(c) $h(x) = (2x - 1)^{-3}$, so $h'(x) = -3(2x - 1)^{-4}\cdot 2 = \dfrac{-6}{(2x - 1)^4}$.

(d) $k'(x) = \cos(3x^2)\cdot 6x = 6x\cos(3x^2)$.

**2.**

(a) Product and chain rule: $f'(x) = 2x e^{-x} + x^2\cdot(-e^{-x}) = x(2 - x)e^{-x}$.

(b) $g'(x) = \dfrac{1}{x^2 + 1}\cdot 2x = \dfrac{2x}{x^2 + 1}$.

(c) $h'(x) = 2^x + x\cdot 2^x\ln 2 = 2^x(1 + x\ln 2)$.

(d) $k(x) = {}^{3}\!\log 5 + {}^{3}\!\log x$, and the first term is a constant, so $k'(x) = \dfrac{1}{x\ln 3}$.

(e) $m'(x) = \dfrac{1}{\cos^2(2x)}\cdot 2 = \dfrac{2}{\cos^2(2x)}$, or $2(1 + \tan^2(2x))$.

(f) $n'(x) = e^{\sin x}\cdot\cos x$.

**3.**

(a) Quotient rule: $f'(x) = \dfrac{x\cdot\frac1x - \ln x\cdot 1}{x^2} = \dfrac{1 - \ln x}{x^2}$.

(b) $f'(x) = 0 \iff \ln x = 1 \iff x = e$. Since $x^2 > 0$, the sign of $f'$ is the sign of $1 - \ln x$: positive for $x < e$, negative for $x > e$. So there is a maximum at $(e, \tfrac1e)$.

(c) Since $\pi > e$ and $f$ has its maximum at $e$, $f(\pi) < f(e)$: $\dfrac{\ln\pi}{\pi} < \dfrac{\ln e}{e}$. Multiply by $e\pi > 0$: $e\ln\pi < \pi\ln e$, so $\ln(\pi^e) < \ln(e^\pi)$, and since $\ln$ is increasing, $\pi^e < e^\pi$. (Numerically $22.46 < 23.14$.)

**4.** $f'(x) = 2\sin x\cos x + 2\cos x\cdot(-\sin x) = 0$. A function whose derivative is $0$ on an interval is constant there (this follows from the mean value theorem, which you will meet later; here accept it). So $f$ is constant on $\mathbb{R}$, and its value is $f(0) = 0 + 1 = 1$. We have re-proved $\sin^2 x + \cos^2 x = 1$ using calculus alone (although of course the derivatives of $\sin$ and $\cos$ were themselves derived using circle geometry).

**5.**

(a) By the change-of-base rule ${}^{g}\!\log x = \dfrac{\ln x}{\ln g}$, and $\ln g$ is a nonzero constant. So $\left({}^{g}\!\log x\right)' = \dfrac{1}{\ln g}\cdot\dfrac1x = \dfrac{1}{x\ln g}$.

(b) Chain rule: $f'(x) = \dfrac{1}{(x^2 - 4)\ln 2}\cdot 2x$. So $f'(3) = \dfrac{6}{5\ln 2}$.

**6.**

(a) $2x + 2y\dfrac{dy}{dx} = 0$, so $\dfrac{dy}{dx} = -\dfrac{x}{y}$. At $P(3, -4)$: slope $-\dfrac{3}{-4} = \dfrac34$.

(b) The radius $OP$ has slope $\dfrac{-4}{3}$. The product of the slopes is $\tfrac34\cdot(-\tfrac43) = -1$, so the lines are perpendicular. (In general the slope $-\tfrac xy$ is always $-1$ divided by the slope $\tfrac yx$ of the radius: the familiar fact that a tangent to a circle is perpendicular to the radius.)

**7.**

(a) $27 + 27 = 54 = 6\cdot 3\cdot 3$. By (b), the slope at $(3,3)$ is $\dfrac{9 - 6}{6 - 9} = -1$, so the tangent is $y - 3 = -(x - 3)$, that is $y = -x + 6$.

(b) Differentiate: $3x^2 + 3y^2 y' = 6y + 6x y'$. Collect $y'$: $y'(3y^2 - 6x) = 6y - 3x^2$, so $y' = \dfrac{6y - 3x^2}{3y^2 - 6x} = \dfrac{2y - x^2}{y^2 - 2x} = \dfrac{x^2 - 2y}{2x - y^2}$.

(c) Horizontal: numerator zero, $y = \tfrac12 x^2$. Substitute: $x^3 + \tfrac18 x^6 = 3x^3$, so $\tfrac18 x^6 = 2x^3$, so $x^3 = 0$ or $x^3 = 16$. With $x > 0$: $x = \sqrt[3]{16} = 2\sqrt[3]{2}$, and $y = \tfrac12 x^2 = 2\sqrt[3]{4}$. The denominator there is $2x - y^2 = 4\sqrt[3]2 - 4\sqrt[3]{16} = 4\sqrt[3]2 - 8\sqrt[3]2 \neq 0$, so the tangent really is horizontal. The point is $(2\sqrt[3]2, 2\sqrt[3]4)$. (The solution $x = 0$ gives the origin, where numerator and denominator are both zero: the curve crosses itself there.)

**8.** $\dfrac{dV}{dt} = 4\pi r^2\dfrac{dr}{dt}$. With $\dfrac{dV}{dt} = 100$ and $r = 10$: $100 = 400\pi\dfrac{dr}{dt}$, so $\dfrac{dr}{dt} = \dfrac{1}{4\pi}$ cm/s (about $0.080$ cm/s).

**9.** Let $x$ be the distance from the foot to the wall and $y$ the height of the top. Then $x^2 + y^2 = 25$ at every moment, so $2x\dfrac{dx}{dt} + 2y\dfrac{dy}{dt} = 0$. When $x = 3$, $y = 4$, and $\dfrac{dx}{dt} = 0.5$: $3\cdot 0.5 + 4\dfrac{dy}{dt} = 0$, so $\dfrac{dy}{dt} = -\dfrac38 = -0.375$. The top slides down at $0.375$ m/s.

**10.**

(a) $f'(x) = 4x^3 - 12x$, $f''(x) = 12x^2 - 12 = 12(x - 1)(x + 1)$. $f''$ changes sign at $x = \pm1$, so the inflection points are $(-1, -4)$ and $(1, -4)$.

(b) $g'(x) = (1 - x)e^{-x}$, $g''(x) = -e^{-x} - (1 - x)e^{-x} = (x - 2)e^{-x}$. Sign change at $x = 2$: inflection point $(2, 2e^{-2}) = \left(2, \dfrac{2}{e^2}\right)$.

**11.**

(a) $f'(x) = 3x^2 + 1 > 0$ for all $x$, so $f$ is strictly increasing, hence one-to-one, and has an inverse.

(b) $f(1) = 3$, so $f^{-1}(3) = 1$. $f'(1) = 4$, so $(f^{-1})'(3) = \dfrac{1}{f'(1)} = \dfrac14$.

## CE-level

**12.**

(a) $f'(x) = 2x\ln x + x^2\cdot\dfrac1x = x(2\ln x + 1)$. For $x > 0$: $f'(x) = 0 \iff \ln x = -\tfrac12 \iff x = e^{-1/2}$. Then $f(e^{-1/2}) = e^{-1}\cdot(-\tfrac12) = -\dfrac{1}{2e}$. The sign of $f'$ is that of $2\ln x + 1$: negative before, positive after, so this is a minimum: $\left(e^{-1/2}, -\dfrac{1}{2e}\right)$, or $\left(\dfrac{1}{\sqrt e}, -\dfrac1{2e}\right)$.

(b) $f''(x) = 2\ln x + 1 + x\cdot\dfrac2x = 2\ln x + 3$. Zero at $\ln x = -\tfrac32$, $x = e^{-3/2}$, with a sign change (from $-$ to $+$). $f(e^{-3/2}) = e^{-3}\cdot(-\tfrac32) = -\dfrac{3}{2e^3}$. Inflection point $\left(e^{-3/2}, -\dfrac{3}{2e^3}\right)$.

(c) Slope: $f'(e^{-3/2}) = e^{-3/2}(2\cdot(-\tfrac32) + 1) = -2e^{-3/2}$. Tangent line $y = -2e^{-3/2}x + b$ through the inflection point:

$$
-\frac{3}{2e^3} = -2e^{-3/2}\cdot e^{-3/2} + b = -\frac{2}{e^3} + b \quad\Longrightarrow\quad b = \frac{2}{e^3} - \frac{3}{2e^3} = \frac{1}{2e^3}.
$$

So the tangent meets the $y$-axis at $\left(0, \dfrac{1}{2e^3}\right)$.

**13.**

(a) $f'(x) = \cos x + \tfrac12\cdot 2\cos(2x) = \cos x + \cos 2x = \cos x + 2\cos^2 x - 1 = 2\cos^2 x + \cos x - 1 = (2\cos x - 1)(\cos x + 1)$.

(b) $f'(x) = 0$ gives $\cos x = \tfrac12$ or $\cos x = -1$: $x = \tfrac\pi3$, $x = \pi$, $x = \tfrac{5\pi}{3}$. Since $\cos x + 1 \ge 0$, the sign of $f'$ is the sign of $2\cos x - 1$ (except at $\pi$): positive on $[0, \tfrac\pi3)$, negative on $(\tfrac\pi3, \tfrac{5\pi}3)$, positive after. Candidates for the maximum: $f(\tfrac\pi3) = \tfrac12\sqrt3 + \tfrac12\cdot\tfrac12\sqrt3 = \tfrac34\sqrt3$ and the endpoint $f(2\pi) = 0$. The maximum value is $\dfrac{3\sqrt3}{4}$.

(c) $f'(\pi) = (2\cdot(-1) - 1)(-1 + 1) = 0$. Near $\pi$ (on both sides), $2\cos x - 1 < 0$ and $\cos x + 1 > 0$, so $f'(x) < 0$ on both sides: $f$ is decreasing through $x = \pi$ and there is no extreme. (It is a horizontal inflection point: $f''(\pi) = -\sin\pi - 2\sin 2\pi = 0$.)

**14.**

(a) Point of contact at $x = 1$: $f(1) = e = e\cdot 1$ (same height) and $f'(1) = e^1 = e$, the slope of the line (same slope). So the line touches the graph at $(1, e)$.

(b) Tangent at $x = a$: $y = \dfrac1a(x - a) + \ln a$. It passes through $O$: $0 = -1 + \ln a$, so $a = e$. The point of contact is $(e, 1)$ and $k$: $y = \dfrac1e x$.

**15.**

(a) $f_p'(x) = 4x^3 + 2px = 2x(2x^2 + p)$. For $p \ge 0$, $2x^2 + p \ge 0$ with equality only at $x = 0$ (when $p = 0$). So $f'_p$ has the sign of $x$ (zero only at $0$): negative for $x < 0$, positive for $x > 0$. Exactly one extreme, a minimum at $(0, 0)$.

(b) For $p < 0$: $2x^2 + p = 0$ gives $x = \pm\sqrt{-\tfrac p2}$. Then $x^2 = -\tfrac p2$ and $f_p(x) = x^4 + px^2 = \tfrac{p^2}{4} - \tfrac{p^2}{2} = -\tfrac{p^2}{4}$. The minima are $\left(\pm\sqrt{-\tfrac p2}, -\tfrac{p^2}4\right)$. (The third extreme is a maximum at $(0,0)$.)

(c) At the minima $p = -2x^2$. Then $y = x^4 + px^2 = x^4 - 2x^4 = -x^4$.

**16.**

(a) $f'_p(x) = e^{-px} - px e^{-px} = (1 - px)e^{-px}$. Zero at $x = \tfrac1p$ with a sign change (the factor $1 - px$ changes sign, $e^{-px} > 0$). $f_p(\tfrac1p) = \tfrac1p e^{-1} = \dfrac{1}{pe}$. Extreme $\left(\dfrac1p, \dfrac{1}{pe}\right)$ (a maximum for $p > 0$, a minimum for $p < 0$).

(b) At the extreme $y = \dfrac1e\cdot\dfrac1p = \dfrac1e x$. All extremes lie on the line $y = \dfrac{x}{e}$.

(c) $f''_p(x) = -pe^{-px} - p(1 - px)e^{-px} = p(px - 2)e^{-px}$. It changes sign at $x = \tfrac2p$. So $\tfrac2p = 4$, $p = \tfrac12$.

**17.**

(a) Volume: $\pi r^2 h = 330$, so $h = \dfrac{330}{\pi r^2}$. Surface: $S = 2\pi r^2 + 2\pi r h = 2\pi r^2 + 2\pi r\cdot\dfrac{330}{\pi r^2} = 2\pi r^2 + \dfrac{660}{r}$.

(b) $S'(r) = 4\pi r - \dfrac{660}{r^2} = 0 \iff r^3 = \dfrac{165}{\pi} \iff r = \sqrt[3]{165/\pi} \approx 3.74$ cm. $S'$ changes from $-$ to $+$ there, so it is a minimum. Then $h = \dfrac{330}{\pi r^2} = \dfrac{2\pi r^3}{\pi r^2} = 2r$ (using $330 = 2\pi r^3$ from $r^3 = 165/\pi$). So the height equals the diameter, about $7.49$ cm. (Real cans are taller because the top and bottom are made of thicker metal.)

**18.** $P = (x, x^2)$. Minimise $d^2 = x^2 + (x^2 - 3)^2$. Derivative: $2x + 2(x^2 - 3)\cdot 2x = 2x(2x^2 - 5)$. Zeros: $x = 0$ ($d^2 = 9$) and $x = \pm\sqrt{\tfrac52}$, where $d^2 = \tfrac52 + \tfrac14 = \tfrac{11}{4}$. The sign chart of $2x(2x^2 - 5)$ is $-, +, -, +$, so $x = \pm\sqrt{5/2}$ are minima and $x = 0$ is a local maximum. The smallest distance is $\sqrt{\tfrac{11}4} = \tfrac12\sqrt{11}$, at $P = \left(\pm\tfrac12\sqrt{10}, \tfrac52\right)$.

**19.**

(a) By similar triangles the water surface has radius $r = \tfrac24 h = \tfrac12 h$. So $V = \tfrac13\pi r^2 h = \tfrac13\pi\cdot\tfrac14 h^2\cdot h = \dfrac{\pi h^3}{12}$.

(b) $\dfrac{dV}{dt} = \dfrac{\pi h^2}{4}\dfrac{dh}{dt}$. With $\dfrac{dV}{dt} = 0.5$ and $h = 1$: $\dfrac{dh}{dt} = \dfrac{0.5\cdot 4}{\pi} = \dfrac2\pi$ m/min (about $0.64$ m/min).

**20.**

(a) Long division: $f(x) = x + 1 + \dfrac{4}{x - 1}$. Vertical asymptote $x = 1$ (the denominator is zero and the numerator is $4 \neq 0$). As $x \to \pm\infty$, $\dfrac4{x-1} \to 0$, so the oblique asymptote is $y = x + 1$. No horizontal asymptote.

(b) $f'(x) = 1 - \dfrac{4}{(x - 1)^2} = \dfrac{(x-1)^2 - 4}{(x - 1)^2} = \dfrac{(x - 3)(x + 1)}{(x - 1)^2}$. Sign chart: $+$ for $x < -1$, $-$ on $(-1, 1)$ and $(1, 3)$, $+$ for $x > 3$. Maximum $f(-1) = \dfrac{4}{-2} = -2$; minimum $f(3) = \dfrac{12}{2} = 6$.

(c) $f''(x) = \dfrac{8}{(x - 1)^3}$, which is never zero. (It changes sign at $x = 1$, but $1$ is not in the domain, so that is not an inflection point.)

(d) On $(-\infty, 1)$, $f$ rises to $-2$ and then falls to $-\infty$; on $(1, \infty)$, $f$ falls from $+\infty$ to $6$ and then rises to $+\infty$. Range: $(-\infty, -2] \cup [6, \infty)$.

**21.**

(a) $2x - (y + x y') + 2y y' = 0$, so $y'(2y - x) = y - 2x$ and $y' = \dfrac{y - 2x}{2y - x}$.

(b) $(2, 1)$ is on $K$: $4 - 2 + 1 = 3$. There the denominator is $2 - 2 = 0$ and the numerator $1 - 4 = -3 \neq 0$, so the slope is infinite: the tangent line is vertical (it is $x = 2$). A cleaner way to say this: treat $x$ as a function of $y$; then $\dfrac{dx}{dy} = \dfrac{2y - x}{y - 2x} = 0$ at $(2, 1)$.

(c) At the highest point the tangent is horizontal: $y - 2x = 0$, $y = 2x$. Substitute: $x^2 - 2x^2 + 4x^2 = 3x^2 = 3$, so $x = \pm1$, giving $(1, 2)$ and $(-1, -2)$. The denominator $2y - x$ is $3$ and $-3$ there, not zero. $K$ is a closed bounded curve (an ellipse), so it has a highest point, and it must be one of these: $(1, 2)$.

**22.**

(a) $f'(x) = 1 - 2\sin x = 0 \iff \sin x = \tfrac12 \iff x = \tfrac\pi6$ or $x = \tfrac{5\pi}6$. $f'$ goes from $+$ to $-$ at $\tfrac\pi6$ (maximum) and from $-$ to $+$ at $\tfrac{5\pi}6$ (minimum). Maximum $\left(\tfrac\pi6, \tfrac\pi6 + \sqrt3\right)$, minimum $\left(\tfrac{5\pi}6, \tfrac{5\pi}6 - \sqrt3\right)$.

(b) $f''(x) = -2\cos x$, which changes sign at $x = \tfrac\pi2$, so there is an inflection point at $\left(\tfrac\pi2, \tfrac\pi2\right)$ (since $\cos\tfrac\pi2 = 0$). Slope there: $f'(\tfrac\pi2) = 1 - 2 = -1$. Tangent: $y = -(x - \tfrac\pi2) + \tfrac\pi2 = -x + \pi$. At $x = \pi$: $y = 0$. So the line passes through $(\pi, 0)$.

## Challenge

**23.** Differentiate $y^q = x^p$ with respect to $x$: $q y^{q-1}y' = p x^{p-1}$. So

$$
y' = \frac pq\cdot\frac{x^{p-1}}{y^{q-1}} = \frac pq\cdot\frac{x^{p-1}}{x^{(p/q)(q-1)}} = \frac pq x^{p - 1 - p + p/q} = \frac pq x^{p/q - 1}.
$$

(Note $y > 0$ for $x > 0$, so we never divide by zero. This argument assumes $y$ is differentiable. That is justified: $y = \sqrt[q]{x^p}$, and the $q$-th root is the inverse of $t \mapsto t^q$, whose derivative $qt^{q-1}$ is not zero for $t > 0$; by notes section 7 the root is differentiable, and then so is $y$ by the chain rule.)

**24.**

(a) $\tan$ is increasing on $(-\tfrac\pi2, \tfrac\pi2)$ with inverse $\arctan$. If $y = \arctan x$ then $\tan y = x$, and by the inverse-function rule $(\arctan x)' = \dfrac{1}{(\tan)'(y)} = \dfrac{1}{1 + \tan^2 y} = \dfrac{1}{1 + x^2}$.

(b) $h'(x) = \dfrac{1}{1 + x^2} + \dfrac{1}{1 + x^{-2}}\cdot\left(-\dfrac{1}{x^2}\right) = \dfrac{1}{1 + x^2} - \dfrac{1}{x^2 + 1} = 0$. So $h$ is constant on $(0, \infty)$: $h(x) = h(1) = \tfrac\pi4 + \tfrac\pi4 = \tfrac\pi2$. (Geometrically: in a right triangle with legs $1$ and $x$, the two acute angles add up to $\tfrac\pi2$.)

(c) The derivative is still $0$ on $(-\infty, 0)$, but that is a separate interval, so the constant may differ. $h(-1) = -\tfrac\pi4 - \tfrac\pi4 = -\tfrac\pi2$. So $h(x) = -\tfrac\pi2$ for $x < 0$. Lesson: "derivative zero implies constant" only holds on an interval.

**25.**

(a) $x^x = e^{x\ln x}$, so $f'(x) = e^{x\ln x}(\ln x + 1) = x^x(\ln x + 1)$.

(b) $f'(x) = 0 \iff \ln x = -1 \iff x = \tfrac1e$, with sign change $-$ to $+$. Minimum value $f(\tfrac1e) = \left(\tfrac1e\right)^{1/e} = e^{-1/e} \approx 0.692$.

(c) $x\ln x \to 0$ as $x \to 0^+$ (the logarithm goes to $-\infty$ much more slowly than $x$ goes to $0$; one way to see it: put $x = e^{-t}$, then $x\ln x = -te^{-t} \to 0$ as $t \to \infty$). So $f(x) = e^{x\ln x} \to e^0 = 1$.

**26.** Touching at $x = c$ requires $a^c = c$ and $a^c\ln a = 1$. Substituting the first in the second: $c\ln a = 1$. But $a^c = e^{c\ln a} = e^1 = e$, so $c = e$ and $\ln a = \tfrac1e$, so $a = e^{1/e} \approx 1.4447$. Point of contact $(e, e)$.

Counting: let $g(x) = a^x - x$. Then $g'(x) = a^x\ln a - 1$ is increasing, so $g$ is convex with one minimum, at $x_0$ where $a^{x_0}\ln a = 1$. $g \to \infty$ at both ends (as $x \to -\infty$ because of $-x$, as $x \to \infty$ because the exponential beats $x$). So the number of zeros is $2$, $1$ or $0$ as the minimum value is negative, zero or positive.

- If $1 < a < e^{1/e}$: $g(e) = a^e - e < \left(e^{1/e}\right)^e - e = 0$, so the minimum is negative: two solutions.
- If $a = e^{1/e}$: the touching case, one solution $x = e$.
- If $a > e^{1/e}$: $a^x > e^{x/e}$ for $x > 0$, and $e^{x/e} \ge x$ for all $x$ (the graph of $e^{x/e}$ lies above its tangent line $y = x$ at $x = e$, because it is convex). So $a^x > x$ for $x > 0$, and for $x \le 0$ trivially $a^x > 0 \ge x$: no solutions.

Conclusion: two solutions for $1 < a < e^{1/e}$, one solution for $a = e^{1/e}$, none for $a > e^{1/e}$. (A numerical check: $a = 1.2$ gives two solutions, $a = 1.5$ none.)

**27.**

(a) $\tfrac23 x^{-1/3} + \tfrac23 y^{-1/3}y' = 0$, so $y' = -\dfrac{x^{-1/3}}{y^{-1/3}} = -\left(\dfrac{y}{x}\right)^{1/3}$. At $(x_0, y_0)$ this is $-\left(\dfrac{y_0}{x_0}\right)^{1/3}$.

(b) Tangent: $y - y_0 = m(x - x_0)$ with $m = -y_0^{1/3}x_0^{-1/3}$. Setting $y = 0$: $x = x_0 - \dfrac{y_0}{m} = x_0 + y_0^{2/3}x_0^{1/3} = x_0^{1/3}\left(x_0^{2/3} + y_0^{2/3}\right) = x_0^{1/3}$. Setting $x = 0$: $y = y_0 - m x_0 = y_0 + y_0^{1/3}x_0^{2/3} = y_0^{1/3}\left(y_0^{2/3} + x_0^{2/3}\right) = y_0^{1/3}$.

(c) The length is $\sqrt{x_0^{2/3} + y_0^{2/3}} = \sqrt1 = 1$.

**28.** $x = 0$ is never a solution ($e^0 = 1 \neq 0$). Look at the line $y = px$ against the graph of $y = e^x$.

- $p < 0$: $g(x) = e^x - px$ has $g'(x) = e^x - p > 0$, so $g$ is increasing; $g \to -\infty$ as $x \to -\infty$ and $g \to \infty$ as $x \to \infty$. Exactly **one** solution (a negative one).
- $p = 0$: $e^x = 0$ has **no** solution.
- $p > 0$: solutions have $x > 0$, and $e^x = px \iff p = \dfrac{e^x}{x}$. The function $k(x) = \dfrac{e^x}{x}$ on $(0, \infty)$ has $k'(x) = \dfrac{(x - 1)e^x}{x^2}$, minimum $k(1) = e$, and $k \to \infty$ at both ends. So: **no** solution for $0 < p < e$, **one** for $p = e$ (the touching line from notes example 10.2), **two** for $p > e$.

**29.**

(a) $\dfrac{f(h) - f(0)}{h} = h\sin\dfrac1h$. Since $\left\lvert\sin\tfrac1h\right\rvert \le 1$, this lies between $-\lvert h\rvert$ and $\lvert h\rvert$, so it tends to $0$. Thus $f'(0) = 0$.

(b) For $x \neq 0$: $f'(x) = 2x\sin\dfrac1x + x^2\cos\dfrac1x\cdot\left(-\dfrac1{x^2}\right) = 2x\sin\dfrac1x - \cos\dfrac1x$.

(c) The first term tends to $0$. The second, $\cos\tfrac1x$, keeps taking the values $1$ (at $x = \tfrac{1}{2k\pi}$) and $-1$ (at $x = \tfrac{1}{(2k+1)\pi}$) arbitrarily close to $0$. So $f'(x)$ takes values near $-1$ and near $1$ arbitrarily close to $0$ and has no limit. $f'$ exists everywhere but is not continuous at $0$.

(d) $f(x) = 0$ at every $x = \tfrac{1}{k\pi}$, and these points pile up at $0$. If $f$ is the inner function and we look at $x = 0$, then $\Delta u = f(h) - f(0) = 0$ for $h = \tfrac1{k\pi}$, however small $h$ is. The naive proof divides by $\Delta u$ and fails for these $h$. The proof with the helper function $Q$ in notes section 3 handles it without trouble.
