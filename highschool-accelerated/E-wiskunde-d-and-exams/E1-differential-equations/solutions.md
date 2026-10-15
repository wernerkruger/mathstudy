# E1 Solutions: differential equations and dynamical systems

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

Numerical answers were checked with Python/SymPy.

## Practice

**1.** (a) $u_1 = 5$, $u_2 = 9$, $u_3 = 17$, $u_4 = 33$.
(b) $L = 2L - 1$ gives $L = 1$. With $a = 2$: $u_n = 1 + 2^n(3 - 1) = 1 + 2^{n+1}$. Check: $u_4 = 1 + 32 = 33$. ✓ The fixed point is unstable ($\lvert a \rvert = 2 > 1$), so the sequence runs away from it.

**2.** $u_{10} - u_3 = 7v = 21$, so $v = 3$ and $u_0 = u_3 - 3v = 2$. Then $u_{20} = 2 + 60 = 62$ and the sum of the 21 terms is

$$\tfrac{21}{2}(u_0 + u_{20}) = \tfrac{21}{2}\cdot 64 = 672.$$

**3.** (a) $L = 0.6L + 8 \Rightarrow 0.4L = 8 \Rightarrow L = 20$.
(b) $u_n = 20 + 0.6^n(5 - 20) = 20 - 15\cdot 0.6^n$. Check: $u_1 = 0.6\cdot5 + 8 = 11 = 20 - 9$. ✓
(c) Since $0 < 0.6 < 1$, $0.6^n \to 0$ monotonically: $u_n \to 20$ monotonically (increasing, always below 20).

**4.** (a) Overnight 30% is broken down, so $0.7u_n$ remains; then the new dose of 50 mg is added: $u_{n+1} = 0.7u_n + 50$.
(b) $L = 50/0.3 = 166\tfrac23$ mg; it is stable since $0 < 0.7 < 1$.
(c) $u_n = 166\tfrac23 + 0.7^n(50 - 166\tfrac23) = 166\tfrac23 - 116\tfrac23\cdot 0.7^n$. We need

$$116\tfrac23\cdot 0.7^n < 6\tfrac23 \iff 0.7^n < \tfrac{20}{350} = \tfrac{2}{35} \iff n > \frac{\ln(2/35)}{\ln 0.7} \approx 8.02.$$

(The inequality flips because $\ln 0.7 < 0$.) So from day $n = 9$ on. Check: $u_8 \approx 159.95$, $u_9 \approx 161.96$.

**5.** (a) $u_1 = 3$, $u_2 = 1.5$, $u_3 = 2.25$, $u_4 = 1.875$.
(b) The graph of $f(x) = -0.5x + 3$ is a line with slope $-0.5$; the web diagram is a rectangular spiral closing in on the intersection with $y = x$. Behaviour: oscillating convergence.
(c) $L = -0.5L + 3 \Rightarrow L = 2$. Indeed $u_n = 2 - 2(-0.5)^n \to 2$.

**6.** Left: $y' = 6e^{2t}$. Right: $2(3e^{2t} - 1) + 2 = 6e^{2t}$. Equal for all $t$, so it is a solution. $y(0) = 3 - 1 = 2$.

**7.** (a) Slope $c$ where $x - y = c$, i.e. on the line $y = x - c$. So the isoclines are lines of slope 1: slope 0 on $y = x$, slope 1 on $y = x - 1$, slope $-1$ on $y = x + 1$, slope 2 on $y = x - 2$, and so on. Above $y = x$ slopes are negative, below positive.
(b) $y = x - 1$: left $y' = 1$; right $x - (x - 1) = 1$. ✓
(c) $y = x - 1 + Ce^{-x}$: left $y' = 1 - Ce^{-x}$; right $x - (x - 1 + Ce^{-x}) = 1 - Ce^{-x}$. ✓ As $x \to \infty$, $Ce^{-x} \to 0$, so every solution approaches the line $y = x - 1$ (an oblique asymptote, *scheve asymptoot*).

**8.** Constant solution $y = 0$ does not satisfy $y(0) = 3$. For $y \ne 0$:

$$\int\frac{dy}{y} = \int 2x\,dx \Rightarrow \ln\lvert y\rvert = x^2 + C \Rightarrow y = Ae^{x^2}.$$

$y(0) = A = 3$, so $y = 3e^{x^2}$. Check: $y' = 6xe^{x^2} = 2x\cdot 3e^{x^2}$. ✓

**9.** $\int y\,dy = \int x\,dx \Rightarrow \tfrac12y^2 = \tfrac12x^2 + C$. With $y(0) = 2$: $C = 2$, so $y^2 - x^2 = 4$. Since $y(0) > 0$ we take $y = \sqrt{x^2 + 4}$, defined for all $x$. The solution curve is the upper branch of the hyperbola $y^2 - x^2 = 4$ (you will meet hyperbolas in E3).

**10.** Euler: $y_{k+1} = y_k + 0.5(t_k + y_k)$.
- $t_0 = 0$, $y_0 = 1$: slope $1$, $y_1 = 1.5$.
- $t_1 = 0.5$, $y_1 = 1.5$: slope $2$, $y_2 = 2.5$.

So $y(1) \approx 2.5$. Check the exact solution: $y = 2e^t - t - 1$ gives $y' = 2e^t - 1$ and $t + y = 2e^t - 1$ ✓, and $y(0) = 2 - 0 - 1 = 1$ ✓. Exact $y(1) = 2e - 2 \approx 3.437$. The error, $0.94$, is large because $h$ is large and the solution is convex (Euler follows tangent lines, which lie below a convex curve).

## Exam-level

**11.** (a) Put $D = T - 20$. Then $D' = T' = -kD$, so $D = D_0e^{-kt}$ with $D_0 = 70$: $T(t) = 20 + 70e^{-kt}$.
(b) $T(5) = 70$: $70e^{-5k} = 50 \Rightarrow e^{-5k} = \tfrac57 \Rightarrow k = \tfrac15\ln\tfrac75$.
(c) $20 + 70e^{-kt} = 40 \Rightarrow e^{-kt} = \tfrac27 \Rightarrow t = \dfrac{\ln 3.5}{k} = \dfrac{5\ln 3.5}{\ln 1.4} \approx 18.6$ minutes.

**12.** (a) $N = 0$ and $N = 1000$ are constant solutions (not ours). Otherwise, with partial fractions $\dfrac{1000}{N(1000 - N)} = \dfrac1N + \dfrac{1}{1000 - N}$:

$$\int\left(\frac1N + \frac{1}{1000 - N}\right)dN = \int 0.4\,dt \Rightarrow \ln N - \ln(1000 - N) = 0.4t + C.$$

(For $0 < N < 1000$ the absolute values can be dropped.) So $\dfrac{N}{1000 - N} = Be^{0.4t}$ with $B = \dfrac{50}{950} = \dfrac{1}{19}$. Solving: $N = (1000 - N)\tfrac{1}{19}e^{0.4t}$, so

$$N(t) = \frac{1000}{1 + 19e^{-0.4t}}.$$

Check: $N(0) = 1000/20 = 50$. ✓
(b) $N = 500 \iff 19e^{-0.4t} = 1 \iff t = \dfrac{\ln 19}{0.4} = 2.5\ln 19 \approx 7.36$ years.
(c) $N' = 0.4N - 0.0004N^2$ is a downward parabola in $N$ with top at $N = 500$. Largest growth rate: $0.4\cdot 500\cdot 0.5 = 100$ fish per year, at $N = 500$ (so at $t \approx 7.36$).

**13.** (a) $\dfrac{x^2 + 2}{3} = x \iff x^2 - 3x + 2 = 0 \iff x = 1$ or $x = 2$.
(b) $f'(x) = \tfrac23x$. $f'(1) = \tfrac23$: $\lvert f'(1)\rvert < 1$, stable (monotonic). $f'(2) = \tfrac43 > 1$: unstable.
(c) $u_0 = 0$: $u_1 = \tfrac23, u_2 \approx 0.815, \dots$ increasing to $1$ (staircase from below). $u_0 = 1.5$: $u_1 \approx 1.417$, decreasing to $1$ (staircase between $1$ and $2$). $u_0 = 2.5$: $u_1 = 2.75, u_2 \approx 3.19, \dots$ increasing to $\infty$.
(d) Note $f(x) - x = \tfrac13(x - 1)(x - 2)$ and $f$ is even.
- If $\lvert u_0\rvert < 2$ then $u_1 = f(u_0) \in [\tfrac23, 2)$. On $[0, 1)$: $f(x) > x$ and $f(x) < f(1) = 1$ (as $f$ is increasing on $[0, \infty)$), so the sequence increases and is bounded by 1; on $(1, 2)$: $1 < f(x) < x$, so it decreases and is bounded below by 1. A monotonic bounded sequence converges, and the limit must be a fixed point (by continuity of $f$), so it is $1$.
- If $\lvert u_0\rvert = 2$ then $u_1 = 2$ and the sequence stays at 2.
- If $\lvert u_0\rvert > 2$ then $u_1 > 2$ and $f(x) > x$ for $x > 2$, so the sequence increases; if it were bounded it would converge to a fixed point greater than 2, which does not exist. So $u_n \to \infty$.

Answer: exactly for $-2 < u_0 < 2$.

**14.** (a) $f(x) = 2.5x(1 - x)$; fixed points $0$ and $1 - \frac1{2.5} = 0.6$. $f'(x) = 2.5 - 5x$: $f'(0) = 2.5$, unstable; $f'(0.6) = -0.5$, stable.
(b) $f'(0.6) = -0.5 < 0$, so near $0.6$ the map behaves like $u_{n+1} - 0.6 \approx -0.5(u_n - 0.6)$: the sign of $u_n - 0.6$ alternates. Oscillating convergence (a spiral in the web diagram).

**15.** (a) $g(y) = y(y - 1)(y - 3)$, equilibria $y = 0, 1, 3$. $g'(y) = 3y^2 - 8y + 3$: $g'(0) = 3 > 0$ (unstable), $g'(1) = -2 < 0$ (stable), $g'(3) = 6 > 0$ (unstable). Sign check: $g < 0$ for $y < 0$, $g > 0$ on $(0, 1)$, $g < 0$ on $(1, 3)$, $g > 0$ for $y > 3$, consistent.
(b) Horizontal lines at $y = 0, 1, 3$; between $0$ and $3$ curves flow towards $y = 1$; above $3$ they rise steeply; below $0$ they fall.
(c) $y(0) = 0.5$: increases to $1$. $y(0) = 2$: decreases to $1$. $y(0) = 4$: increases without bound (in fact it blows up in finite time, since $g(y) \ge cy^3$ for large $y$; compare problem 16).

**16.** $\int y^{-2}\,dy = \int dx \Rightarrow -\frac1y = x + C$; $y(0) = 1$ gives $C = -1$, so $y = \dfrac{1}{1 - x}$. This is a solution on $(-\infty, 1)$: the interval containing $x = 0$ on which the formula is defined. As $x \uparrow 1$, $y \to \infty$.
With $y(0) = -1$: $C = 1$, $y = -\dfrac{1}{1 + x}$, which exists on $(-1, \infty)$ and tends to $0$ as $x \to \infty$.

**17.** (a) $y_{k+1} = y_k + 0.1(-2y_k + t_k) = 0.8y_k + 0.1t_k$.
- $y_1 = 0.8\cdot 1 + 0 = 0.8$ ($t = 0.1$)
- $y_2 = 0.64 + 0.01 = 0.65$ ($t = 0.2$)
- $y_3 = 0.52 + 0.02 = 0.54$ ($t = 0.3$)

(b) $y = \tfrac12t - \tfrac14 + \tfrac54e^{-2t}$: $y' = \tfrac12 - \tfrac52e^{-2t}$; $-2y + t = -t + \tfrac12 - \tfrac52e^{-2t} + t = \tfrac12 - \tfrac52e^{-2t}$ ✓; $y(0) = -\tfrac14 + \tfrac54 = 1$ ✓. $y(0.3) = 0.15 - 0.25 + 1.25e^{-0.6} \approx 0.58601$. Error $\approx 0.0460$.
(c) For example

```python
def euler(f, t0, y0, h, n):
    t, y = t0, y0
    for _ in range(n):
        y = y + h * f(t, y)
        t = t + h
    return y

approx = euler(lambda t, y: -2*y + t, 0, 1, 0.01, 30)   # 0.58186
```

Error $\approx 0.58601 - 0.58186 = 0.0042$. The error shrank by a factor of about 11 when $h$ became 10 times smaller, consistent with the error being roughly proportional to $h$.

**18.** (a) $h = 0$ is a constant solution. For $h > 0$: $\int h^{-1/2}\,dh = \int -0.1\,dt \Rightarrow 2\sqrt h = -0.1t + C$. $h(0) = 4$: $C = 4$. So $\sqrt h = 2 - 0.05t$ and $h(t) = (2 - 0.05t)^2$ for $0 \le t \le 40$.
(b) $h = 0$ when $t = 40$ minutes.
(c) After $t = 40$ the physical solution is $h \equiv 0$: gluing $h = (2 - 0.05t)^2$ on $[0, 40]$ to $h = 0$ for $t \ge 40$ gives a differentiable solution (both pieces have derivative $0$ at $t = 40$). Now suppose all you know is that the tank is empty at $t = 50$, i.e. $h(50) = 0$. For every $t_1 \le 50$ the function

$$h(t) = \begin{cases} \left(0.05(t_1 - t)\right)^2 & t \le t_1 \\ 0 & t \ge t_1\end{cases}$$

solves the equation (check: for $t < t_1$, $h' = -0.005(t_1 - t) = -0.1\sqrt h$) and has $h(50) = 0$. So the initial value problem $h(50) = 0$ has infinitely many solutions, one for each emptying time $t_1$, plus $h \equiv 0$. The usual uniqueness theorem does not apply because $\sqrt h$ is not differentiable at $h = 0$. Physically: an empty tank does not tell you when it emptied.

## Challenge

**19.** *Attracting case.* $f'$ is continuous and $\lvert f'(L)\rvert < 1$. Choose $k$ with $\lvert f'(L)\rvert < k < 1$. By continuity there is $\delta > 0$ with $\lvert f'(x)\rvert \le k$ for all $x \in I = [L - \delta, L + \delta]$. If $u_n \in I$, the mean value theorem gives $\xi$ between $u_n$ and $L$ (so $\xi \in I$) with

$$\lvert u_{n+1} - L\rvert = \lvert f(u_n) - f(L)\rvert = \lvert f'(\xi)\rvert\,\lvert u_n - L\rvert \le k\lvert u_n - L\rvert.$$

So $u_{n+1} \in I$ too. By induction all $u_n \in I$ and $\lvert u_n - L\rvert \le k^n\lvert u_0 - L\rvert \le k^n\delta \to 0$.

*Repelling case.* Now $\lvert f'(L)\rvert > 1$; choose $1 < k < \lvert f'(L)\rvert$ and $\delta$ with $\lvert f'(x)\rvert \ge k$ on $I$. Suppose $u_0 \ne L$ and all $u_n$ stay in $I$. The same argument gives $\lvert u_n - L\rvert \ge k^n\lvert u_0 - L\rvert$, which tends to infinity, contradicting $\lvert u_n - L\rvert \le \delta$. So the sequence must leave $I$.

**20.** (a) $\varphi$ and $\psi$ are the roots of $x^2 = x + 1$. Let $G_n = (\varphi^n - \psi^n)/\sqrt5$. Then $G_0 = 0$ and $G_1 = (\varphi - \psi)/\sqrt5 = \sqrt5/\sqrt5 = 1$. Strong induction: if $F_n = G_n$ and $F_{n+1} = G_{n+1}$, then

$$G_{n+1} + G_n = \frac{\varphi^n(\varphi + 1) - \psi^n(\psi + 1)}{\sqrt5} = \frac{\varphi^{n+2} - \psi^{n+2}}{\sqrt5} = G_{n+2},$$

using $\varphi + 1 = \varphi^2$ and $\psi + 1 = \psi^2$. So $F_{n+2} = F_{n+1} + F_n = G_{n+1} + G_n = G_{n+2}$.
(b) For $n \ge 1$: $q_{n+1} = \dfrac{F_{n+2}}{F_{n+1}} = \dfrac{F_{n+1} + F_n}{F_{n+1}} = 1 + \dfrac{1}{q_n}$. The fixed point of $f(x) = 1 + 1/x$ with $x > 0$ satisfies $x^2 = x + 1$, so it is $\varphi$; $f'(\varphi) = -1/\varphi^2 \approx -0.38$, so $\varphi$ is attracting (oscillating). To get convergence for our actual starting value: all $q_n \ge 1$ (since $F_{n+1} \ge F_n$ for $n \ge 1$), and for $x \ge 1$

$$\lvert f(x) - \varphi\rvert = \left\lvert \frac1x - \frac1\varphi\right\rvert = \frac{\lvert x - \varphi\rvert}{x\varphi} \le \frac{\lvert x - \varphi\rvert}{\varphi}.$$

(We used $f(\varphi) = \varphi$, i.e. $1 + 1/\varphi = \varphi$.) Hence $\lvert q_n - \varphi\rvert \le \varphi^{-(n-1)}\lvert q_1 - \varphi\rvert \to 0$. Alternatively from (a): $q_n = \dfrac{\varphi^{n+1} - \psi^{n+1}}{\varphi^n - \psi^n} \to \varphi$ since $\lvert\psi/\varphi\rvert < 1$.

**21.** AM–GM for the $n + 1$ positive numbers $n$ times $1 + \frac1n$ and once $1$:

$$\sqrt[n+1]{\left(1 + \tfrac1n\right)^n\cdot 1} \le \frac{n\left(1 + \frac1n\right) + 1}{n + 1} = \frac{n + 2}{n + 1} = 1 + \frac{1}{n+1}.$$

Raise to the power $n + 1$: $a_n \le a_{n+1}$. Equality in AM–GM holds only if all numbers are equal, which they are not, so $a_n < a_{n+1}$.

**22.** (a) Write $f(f(x)) - x$. It vanishes at the fixed points $x = 0$ and $x = 1 - 1/r$, so $x(rx - r + 1)$ divides it. Expanding and dividing (or using SymPy) gives

$$f(f(x)) - x = -x\,(rx - r + 1)\,\left(r^2x^2 - r(r + 1)x + (r + 1)\right).$$

So the points of a genuine 2-cycle satisfy $r^2x^2 - r(r+1)x + (r + 1) = 0$.
(b) Discriminant: $r^2(r + 1)^2 - 4r^2(r + 1) = r^2(r + 1)(r - 3)$. For $r > 0$ this is positive iff $r > 3$. (At $r = 3$ the double root is $x = \tfrac23$, the fixed point itself.) So a 2-cycle exists exactly for $r > 3$, which is exactly where the fixed point $1 - \frac1r$ became unstable: a *period-doubling bifurcation*.
(c) $x = \dfrac{(r + 1) \pm \sqrt{(r + 1)(r - 3)}}{2r} = \dfrac{4.2 \pm\sqrt{0.84}}{6.4}$, so $x_1 \approx 0.7995$, $x_2 \approx 0.5130$. Check: $3.2\cdot 0.7995\cdot 0.2005 \approx 0.5130$ and $3.2\cdot 0.5130\cdot 0.4870 \approx 0.7995$. ✓

**23.** $(ye^{2t})' = y'e^{2t} + 2ye^{2t} = (y' + 2y)e^{2t} = e^te^{2t} = e^{3t}$. Integrate: $ye^{2t} = \tfrac13e^{3t} + C$, so

$$y = \tfrac13e^t + Ce^{-2t}.$$

Check: $y' + 2y = \tfrac13e^t - 2Ce^{-2t} + \tfrac23e^t + 2Ce^{-2t} = e^t$. ✓

**24.** Write $g(N) = rN(1 - N/K)$. Since $0 < N(0) < K$ and $N = 0$, $N = K$ are solutions, the solution stays strictly between $0$ and $K$ (two solution curves of this equation cannot cross, by uniqueness), so $N' = g(N) > 0$ for all $t$: $N$ is increasing. By the chain rule

$$N'' = g'(N)\,N' = r\left(1 - \frac{2N}{K}\right)N'.$$

Because $N' > 0$, the sign of $N''$ is the sign of $1 - 2N/K$: positive while $N < K/2$, negative when $N > K/2$. Since $N$ starts below $K/2$, increases, and tends to $K$ (stable equilibrium), it passes $K/2$ exactly once (it is strictly increasing). So the graph is convex then concave with exactly one inflection point, at height $K/2$. The slope there is $g(K/2) = r\cdot\frac K2\cdot\frac12 = \frac{rK}{4}$.
