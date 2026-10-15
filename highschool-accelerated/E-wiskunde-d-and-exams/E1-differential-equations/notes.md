# E1 Notes: differential equations and dynamical systems

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

A *dynamical system* is a rule that tells you how something changes. If time jumps in steps (once a day, once a generation) the rule is a **recurrence relation** or **difference equation**. If time flows continuously the rule is a **differential equation**. This module studies both, and shows how they are related: Euler's method at the end turns a differential equation back into a difference equation.

---

## 1. Sequences

A **sequence** (*rij*) is a list $u_0, u_1, u_2, \dots$ of numbers. Formally it is a function $u : \mathbb{N} \to \mathbb{R}$ with $u_n$ written for $u(n)$. Dutch textbooks usually start at $n = 0$; check whether a problem starts at $0$ or $1$.

There are two ways to describe a sequence:

- a **direct formula** (*directe formule*): $u_n = 3 \cdot 2^n$;
- a **recursive formula** (*recursieve formule*) plus a starting value: $u_{n+1} = 2 u_n$, $u_0 = 3$.

A recursive formula is a *local* rule (how to get the next term), a direct formula is a *global* description. Much of this module is about turning the first into the second.

**Arithmetic sequence** (*rekenkundige rij*): $u_{n+1} = u_n + v$, so $u_n = u_0 + n v$.

**Geometric sequence** (*meetkundige rij*): $u_{n+1} = r\, u_n$, so $u_n = u_0 r^n$.

**Sums.** For an arithmetic sequence, write the sum forwards and backwards and add:

$$S = u_0 + u_1 + \dots + u_{n-1} = \tfrac{n}{2}(u_0 + u_{n-1}).$$

For a geometric sequence with $r \ne 1$, multiply by $r$ and subtract:

$$S = u_0 + u_0 r + \dots + u_0 r^{n-1}, \qquad rS - S = u_0 r^n - u_0, \qquad S = u_0 \frac{r^n - 1}{r - 1}.$$

If $\lvert r \rvert < 1$ then $r^n \to 0$ and the infinite sum converges to $\dfrac{u_0}{1-r}$.

---

## 2. Linear difference equations

The most important recurrence in this module is

$$u_{n+1} = a\,u_n + b \qquad (a \ne 1).$$

Examples: a bank account with interest and a fixed monthly deposit; a medicine of which 30% is broken down each day and a fixed dose is added; a fish pond from which a fixed number of fish is taken each year.

**Equilibrium value.** A number $L$ is an **equilibrium value** or **fixed point** (*evenwichtswaarde*, *dekpunt*) if starting at $L$ you stay at $L$: $L = aL + b$, so

$$L = \frac{b}{1-a}.$$

**Theorem.** The solution of $u_{n+1} = a u_n + b$ with starting value $u_0$ is

$$u_n = L + a^n (u_0 - L).$$

*Proof.* Put $d_n = u_n - L$, the distance from equilibrium. Subtract $L = aL + b$ from $u_{n+1} = a u_n + b$:

$$u_{n+1} - L = a(u_n - L), \quad\text{that is}\quad d_{n+1} = a\, d_n.$$

So $(d_n)$ is geometric with ratio $a$: $d_n = a^n d_0$. Add $L$ back. $\blacksquare$

This proof contains the main idea of the whole module: **measure distance from the equilibrium**, and the problem becomes simpler.

**Behaviour.** From $u_n = L + a^n(u_0 - L)$ you can read everything:

| $a$ | Behaviour of $u_n$ (when $u_0 \ne L$) |
|---|---|
| $0 < a < 1$ | converges to $L$ monotonically (*monotoon*) |
| $-1 < a < 0$ | converges to $L$ oscillating (*slingerend*), alternately above and below |
| $a > 1$ | moves away from $L$ monotonically, to $\pm\infty$ |
| $a < -1$ | moves away from $L$ oscillating, with growing amplitude |
| $a = -1$ | jumps between two values forever (a 2-cycle) |

We call $L$ **stable** (*stabiel*, *aantrekkend*) if $\lvert a \rvert < 1$ and **unstable** (*instabiel*, *afstotend*) if $\lvert a \rvert > 1$.

**Worked example.** A patient takes 50 mg of a drug each morning; overnight 30% is broken down. Let $u_n$ be the amount just after the dose on day $n$, with $u_0 = 50$. Then $u_{n+1} = 0.7 u_n + 50$. Equilibrium: $L = 50/0.3 = 166\tfrac23$ mg. Direct formula:

$$u_n = 166\tfrac23 - 116\tfrac23 \cdot 0.7^n.$$

The level rises monotonically towards $166\tfrac23$ mg but never reaches it.

---

## 3. Web diagrams

A **web diagram** (*webgrafiek*, also called a cobweb plot) shows the recurrence $u_{n+1} = f(u_n)$ geometrically.

1. Draw the graph of $y = f(x)$ and the line $y = x$.
2. Start at $(u_0, 0)$ on the $x$-axis. Go vertically to the graph: you are at $(u_0, u_1)$.
3. Go horizontally to the line $y = x$: you are at $(u_1, u_1)$.
4. Vertically to the graph: $(u_1, u_2)$. Horizontally to the line: $(u_2, u_2)$. Repeat.

Fixed points are exactly the intersections of the graph with $y = x$, because there $f(L) = L$.

What you see near a fixed point depends on the slope of the graph there:

- slope between $0$ and $1$: a **staircase** moving towards $L$ (monotonic convergence);
- slope between $-1$ and $0$: a **spiral** (the "web") closing in on $L$ (oscillating convergence);
- slope greater than $1$ or less than $-1$: the staircase or spiral moves away.

Draw a few by hand. Then make one in GeoGebra or Python: a picture with 50 steps tells you more than a table of numbers.

---

## 4. Nonlinear recurrences and stability

Now let $u_{n+1} = f(u_n)$ with $f$ any differentiable function. A fixed point satisfies $f(L) = L$. Near $L$ the graph of $f$ looks like its tangent line $y = L + f'(L)(x - L)$, so near $L$ the recurrence behaves like a linear one with $a = f'(L)$. This suggests:

**Theorem (stability criterion).** Let $f$ be differentiable with continuous derivative, and $f(L) = L$.

- If $\lvert f'(L) \rvert < 1$ then $L$ is **attracting**: there is an interval around $L$ such that for every $u_0$ in it, $u_n \to L$.
- If $\lvert f'(L) \rvert > 1$ then $L$ is **repelling**: points close to $L$ (but not equal to it) are pushed further away.

*Proof of the first part.* Because $f'$ is continuous and $\lvert f'(L) \rvert < 1$, we can choose a number $k$ with $\lvert f'(L) \rvert < k < 1$ and an interval $I = [L - \delta, L + \delta]$ on which $\lvert f'(x) \rvert \le k$. Take $u_0 \in I$. By the mean value theorem (*middelwaardestelling*) there is a $\xi$ between $u_0$ and $L$ with

$$f(u_0) - f(L) = f'(\xi)(u_0 - L).$$

Since $f(L) = L$ and $f(u_0) = u_1$ this says $\lvert u_1 - L \rvert = \lvert f'(\xi) \rvert \cdot \lvert u_0 - L \rvert \le k \lvert u_0 - L \rvert$. In particular $u_1$ is again in $I$, so we can repeat: $\lvert u_n - L \rvert \le k^n \lvert u_0 - L \rvert$. Since $0 \le k < 1$, $k^n \to 0$, so $u_n \to L$. $\blacksquare$

The case $\lvert f'(L) \rvert = 1$ is undecided: anything can happen (see "going further").

**Worked example: the logistic map.** Let $f(x) = r x (1 - x)$ with $r > 0$ (a population model with generations). Fixed points: $r x(1-x) = x$ gives $x = 0$ or $1 - x = 1/r$, so $L = 1 - \frac{1}{r}$. Also $f'(x) = r - 2rx$, so

- $f'(0) = r$: the fixed point $0$ is stable for $r < 1$ (the population dies out) and unstable for $r > 1$;
- $f'(1 - \tfrac1r) = r - 2r + 2 = 2 - r$: stable when $\lvert 2 - r \rvert < 1$, that is $1 < r < 3$.

For $1 < r < 2$ the derivative is positive (monotonic convergence); for $2 < r < 3$ it is negative (oscillating convergence). At $r = 3$ the equilibrium loses its stability and a 2-cycle appears (problem 22). Increasing $r$ further gives cycles of length 4, 8, 16, … and from about $r \approx 3.57$ chaos. Run it in Python and see.

---

## 5. Second-order linear recurrences (extension)

The Fibonacci sequence $F_{n+2} = F_{n+1} + F_n$, $F_0 = 0$, $F_1 = 1$, needs *two* previous terms. Try a geometric solution $F_n = x^n$: then $x^{n+2} = x^{n+1} + x^n$, so $x^2 = x + 1$, the **characteristic equation**. Its roots are $\varphi = \frac{1 + \sqrt5}{2}$ and $\psi = \frac{1 - \sqrt5}{2}$. Because the recurrence is linear, every combination $A\varphi^n + B\psi^n$ is also a solution; choosing $A, B$ to fit $F_0, F_1$ gives **Binet's formula**

$$F_n = \frac{\varphi^n - \psi^n}{\sqrt5}.$$

This is not required for the exam but is a beautiful use of the same idea, and you will meet it again in linear algebra (eigenvalues). Problem 20 works it out.

---

## 6. Differential equations as models

A **differential equation** (*differentiaalvergelijking*, often abbreviated *dv*) is an equation that links an unknown function with its derivative(s). A **solution** (*oplossing*) is a function that makes the equation true for every $t$ in an interval.

| Model | Differential equation | In words |
|---|---|---|
| Exponential growth/decay | $\dfrac{dN}{dt} = kN$ | rate of change proportional to the amount |
| Newton's law of cooling | $\dfrac{dT}{dt} = -k(T - T_{\text{room}})$ | cooling rate proportional to the temperature difference |
| Limited growth (*begrensde groei*) | $\dfrac{dN}{dt} = k(G - N)$ | rate proportional to the room left |
| Logistic growth | $\dfrac{dN}{dt} = rN\left(1 - \dfrac{N}{K}\right)$ | like exponential when small, slows down near the carrying capacity $K$ |

**Checking a solution.** To check that $y = 3e^{2t} - 1$ solves $y' = 2y + 2$: compute the left side, $y' = 6e^{2t}$; compute the right side, $2(3e^{2t} - 1) + 2 = 6e^{2t}$. Equal for all $t$, so yes. Always compute both sides separately and compare: do not "manipulate the equation until it looks true".

**Initial conditions.** $y' = 2y + 2$ has infinitely many solutions $y = Ce^{2t} - 1$. An **initial condition** (*beginvoorwaarde*) such as $y(0) = 2$ picks one: $C - 1 = 2$, so $C = 3$. A first-order equation needs one initial condition; a second-order equation (with $y''$) needs two.

**Why exponential growth has exactly the solutions $Ce^{kt}$.** Suppose $N' = kN$. Look at $g(t) = N(t) e^{-kt}$. By the product rule,

$$g'(t) = N'(t) e^{-kt} - k N(t) e^{-kt} = (N' - kN) e^{-kt} = 0.$$

A function with derivative zero on an interval is constant, so $N(t) e^{-kt} = C$, that is $N(t) = C e^{kt}$. This proves there are *no other* solutions, something that "guess and check" cannot do.

---

## 7. Slope fields

For an equation $y' = f(x, y)$, the right-hand side tells you, at every point $(x, y)$, the slope that a solution curve through that point must have. Draw at many points a short line segment with that slope: this is the **slope field** (*lijnelementenveld*, direction field). Solution curves (*oplossingskrommen*) follow the segments, like iron filings show magnetic field lines.

**Isoclines.** The set of points where the slope has a fixed value $c$ is the curve $f(x, y) = c$ (an *isocline*). For $y' = x - y$ the isoclines are the lines $y = x - c$. On $y = x - 1$ the slope is $1$, the same as the slope of the line itself, so the line $y = x - 1$ *is* a solution curve.

**Autonomous equations and equilibria.** If the right-hand side does not depend on $t$, $y' = g(y)$, the equation is **autonomous**. Then:

- every zero $y^*$ of $g$ gives a constant solution $y(t) = y^*$, an **equilibrium solution** (*evenwichtsoplossing*);
- between two equilibria, $y$ is monotonic (the sign of $g$ is fixed there);
- $y^*$ is **stable** if solutions nearby move towards it: $g > 0$ just below $y^*$ and $g < 0$ just above. A sufficient test: $g'(y^*) < 0$ means stable, $g'(y^*) > 0$ means unstable.

Compare: for recurrences the test was $\lvert f'(L) \rvert < 1$, for differential equations it is $g'(y^*) < 0$. They agree once you look at Euler's method (§10): one Euler step is the map $y \mapsto y + h g(y)$, with derivative $1 + h g'(y^*)$, which has absolute value less than $1$ for small $h > 0$ exactly when $g'(y^*) < 0$.

For the logistic equation $g(N) = rN(1 - N/K)$ the equilibria are $N = 0$ (unstable, $g'(0) = r > 0$) and $N = K$ (stable, $g'(K) = -r < 0$).

---

## 8. Separation of variables

An equation is **separable** if it can be written as

$$\frac{dy}{dx} = g(x)\, h(y).$$

**Method** (*scheiden van variabelen*):

1. Find all constant solutions: every $y^*$ with $h(y^*) = 0$ gives $y = y^*$. Write them down now; step 2 loses them.
2. Where $h(y) \ne 0$, divide: $\dfrac{1}{h(y)} \dfrac{dy}{dx} = g(x)$.
3. Integrate both sides: $\displaystyle \int \frac{1}{h(y)}\, dy = \int g(x)\, dx + C$.
4. Solve for $y$ if possible, and use the initial condition to find $C$.

**Why it works.** Let $H$ be an antiderivative of $1/h$ and $G$ one of $g$. If $y(x)$ solves the equation, then by the chain rule

$$\frac{d}{dx} H(y(x)) = H'(y(x))\, y'(x) = \frac{y'(x)}{h(y(x))} = g(x) = G'(x).$$

So $H(y(x)) - G(x)$ has derivative zero and is constant: $H(y) = G(x) + C$. That is exactly step 3. The "multiply by $dx$" trick in textbooks is shorthand for this chain-rule argument.

**Worked example 1.** $y' = 2xy$, $y(0) = 3$. Constant solution: $y = 0$ (does not fit $y(0) = 3$). Otherwise

$$\int \frac{dy}{y} = \int 2x\, dx \;\Rightarrow\; \ln\lvert y\rvert = x^2 + C \;\Rightarrow\; \lvert y \rvert = e^C e^{x^2} \;\Rightarrow\; y = A e^{x^2}.$$

Here $A = \pm e^C$ can be any nonzero number, and $A = 0$ gives back the constant solution. With $y(0) = 3$: $y = 3e^{x^2}$.

**Worked example 2: Newton's law of cooling.** $T' = -k(T - 20)$, $T(0) = 90$. Put $D = T - 20$; then $D' = -kD$, so $D = 70 e^{-kt}$ and $T = 20 + 70 e^{-kt}$. If after 5 minutes $T = 70$: $70 e^{-5k} = 50$, so $k = \frac15 \ln\frac75 \approx 0.0673$ per minute.

**Worked example 3: the logistic equation.** $N' = rN(1 - N/K)$ with $0 < N_0 < K$. Separate:

$$\int \frac{K}{N(K - N)}\, dN = \int r\, dt.$$

Use partial fractions: $\dfrac{K}{N(K-N)} = \dfrac{1}{N} + \dfrac{1}{K - N}$ (check by adding). So

$$\ln N - \ln(K - N) = rt + C \;\Rightarrow\; \frac{N}{K - N} = B e^{rt}, \quad B = \frac{N_0}{K - N_0}.$$

Solve for $N$:

$$N(t) = \frac{K}{1 + A e^{-rt}}, \qquad A = \frac{K - N_0}{N_0}.$$

**Worked example 4: a warning.** $y' = y^2$, $y(0) = 1$. Separating gives $-1/y = x + C$, $C = -1$, so $y = \dfrac{1}{1 - x}$. This solution exists only for $x < 1$: it **blows up** at $x = 1$ although the equation looks harmless. A solution of a differential equation lives on an interval, and the interval matters.

---

## 9. Exponential and logistic growth compared

| | Exponential $N' = rN$ | Logistic $N' = rN(1 - N/K)$ |
|---|---|---|
| Solution | $N_0 e^{rt}$ | $\dfrac{K}{1 + A e^{-rt}}$ |
| Long term | $\to \infty$ | $\to K$ |
| Growth rate $N'$ | grows with $N$ | largest at $N = K/2$ |
| Graph | convex | S-shaped, inflection point at $N = K/2$ |

**Why the inflection point is at $K/2$.** You do not need the solution. The growth rate $N' = g(N) = rN - \frac{r}{K}N^2$ is a downward parabola in $N$ with top at $N = K/2$, so the growth is fastest when $N = K/2$. Differentiating, $N'' = g'(N) N'$, and since $N' > 0$ for $0 < N < K$, $N''$ changes sign exactly where $g'(N) = r - 2rN/K$ does, at $N = K/2$. The maximal growth rate is $g(K/2) = rK/4$.

**Doubling time and half-life.** For $N = N_0 e^{rt}$ the doubling time (*verdubbelingstijd*) is $\ln 2 / r$; for decay $N_0 e^{-kt}$ the half-life (*halveringstijd*) is $\ln 2 / k$.

---

## 10. Euler's method

Most differential equations cannot be solved with a formula. **Euler's method** (*methode van Euler*) approximates the solution of $y' = f(t, y)$, $y(t_0) = y_0$, by walking along the slope field in small steps of size $h$:

$$t_{k+1} = t_k + h, \qquad y_{k+1} = y_k + h\, f(t_k, y_k).$$

In words: at the current point, read off the slope, follow the tangent line for a time $h$. This turns the differential equation into a **difference equation**: the two halves of this module meet.

**As an algorithm** (wiskunde techniek, *digitaal gereedschap*):

```python
def euler(f, t0, y0, h, n):
    t, y = t0, y0
    for _ in range(n):
        y = y + h * f(t, y)
        t = t + h
    return y

# example: y' = t + y, y(0) = 1, approximate y(1)
for n in (2, 10, 100, 1000):
    print(n, euler(lambda t, y: t + y, 0, 1, 1/n, n))
```

The exact solution is $y = 2e^t - t - 1$, so $y(1) = 2e - 2 \approx 3.4366$. With $n = 2$ steps Euler gives $2.5$; with $n = 1000$ it gives about $3.4338$.

On a graphing calculator use the sequence mode (*rijen-modus*) or a short program: the Euler recurrence is just a recursive sequence.

**How large is the error?** For $y' = y$, $y(0) = 1$, one step multiplies by $1 + h$, so $n$ steps of size $h = 1/n$ give $y(1) \approx (1 + 1/n)^n$:

| $n$ | $(1 + 1/n)^n$ | error $e - (1+1/n)^n$ |
|---|---|---|
| 10 | 2.59374 | 0.1245 |
| 100 | 2.70481 | 0.0135 |
| 1000 | 2.71692 | 0.0014 |

Ten times more steps gives about ten times smaller error: the global error of Euler's method is roughly proportional to $h$. We say Euler's method is **first-order**. (The reason: each step makes an error of about $\tfrac12 h^2 y''$, from the Taylor expansion, and there are $1/h$ steps.)

Euler's method also explains the definition $e = \lim_{n\to\infty}(1 + 1/n)^n$ that you met in stage C.

---

## 11. Common mistakes

1. **Forgetting the constant, or putting it in the wrong place.** $\ln y = x^2 + C$ gives $y = Ae^{x^2}$, not $y = e^{x^2} + C$.
2. **Losing solutions when dividing.** Dividing by $y$ throws away $y = 0$. List constant solutions first.
3. **Mixing up $u_n$ and $u_{n+1}$** in a web diagram: horizontal moves go to the line $y = x$, vertical moves to the graph.
4. **Calling an unstable fixed point "the limit".** A sequence converges to $L$ only if $L$ is stable *and* $u_0$ is in its basin of attraction. Starting exactly at an unstable fixed point you stay there, but any rounding error moves you away.
5. **Using $f'(L)$ for a differential equation the way you use it for a recurrence.** For $y' = g(y)$ the test is the sign of $g'(y^*)$, not whether $\lvert g'(y^*) \rvert < 1$.
6. **Euler with the wrong slope.** Use the slope at the *start* of the step, $f(t_k, y_k)$, not at the end.
7. **Checking a solution by rearranging.** Compute left side and right side separately.
8. **Ignoring the interval.** $y = 1/(1 - x)$ solves $y' = y^2$ only on $x < 1$ (for the initial condition $y(0) = 1$).

---

## 12. Going further

- **Better numerical methods.** Heun's method uses the average of the slopes at the start and at the Euler-predicted end; its error is proportional to $h^2$. The classical Runge–Kutta method (RK4) has error proportional to $h^4$ and is what computers usually use. Implement both and compare errors as $h$ halves.
- **Linear first-order equations.** $y' + p(t)y = q(t)$ is solved by multiplying by the *integrating factor* $e^{\int p\,dt}$; the left side becomes $(y e^{\int p\, dt})'$. Problem 23.
- **Systems.** Predator–prey (Lotka–Volterra): $x' = ax - bxy$, $y' = -cy + dxy$. Two populations, solution curves are closed loops in the $(x, y)$-plane. Euler's method works the same way with vectors.
- **Chaos.** The logistic map at $r = 4$ is chaotic: two starting values differing by $10^{-10}$ give completely different sequences after about 35 steps. Read about Feigenbaum's constant $\delta \approx 4.669$ in the period-doubling cascade.
- **The undecided case $\lvert f'(L) \rvert = 1$.** For $f(x) = \sin x$, $L = 0$ and $f'(0) = 1$, yet $u_n \to 0$ (very slowly, roughly like $\sqrt{3/n}$). For $f(x) = x + x^3$, also $f'(0) = 1$, but $0$ repels. The first-derivative test cannot tell these apart.
- **University connection.** This material is the start of the first-year course *Analyse* / *Differentiaalvergelijkingen*. Strogatz's *Nonlinear Dynamics and Chaos* is the standard next step.
