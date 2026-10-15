# E1 Problems: differential equations and dynamical systems

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

"Exact" (*exact*) means: no decimal approximations, leave $\ln$, $e$ and roots in the answer. Where a problem says "use technology", a graphing calculator, GeoGebra or Python is allowed.

## Practice

**1.** A sequence is given by $u_0 = 3$ and $u_{n+1} = 2u_n - 1$.
(a) Compute $u_1, \dots, u_4$.
(b) Find the equilibrium value and a direct formula for $u_n$.

**2.** An arithmetic sequence has $u_3 = 11$ and $u_{10} = 32$. Find $u_0$ and the sum $u_0 + u_1 + \dots + u_{20}$.

**3.** Given $u_{n+1} = 0.6u_n + 8$ with $u_0 = 5$.
(a) Find the equilibrium value $L$.
(b) Give a direct formula for $u_n$.
(c) Does the sequence converge? Monotonically or oscillating?

**4.** A patient takes 50 mg of a drug every morning. Overnight 30% of the drug in the body is broken down. Let $u_n$ be the amount (mg) just after the dose on day $n$, with $u_0 = 50$.
(a) Explain why $u_{n+1} = 0.7u_n + 50$.
(b) Find the long-term amount just after a dose.
(c) From which day $n$ on is $u_n$ more than 160 mg? Solve with the direct formula, not by computing terms.

**5.** Given $u_{n+1} = -0.5u_n + 3$ with $u_0 = 0$.
(a) Compute $u_1, \dots, u_4$.
(b) Sketch the web diagram and describe the behaviour.
(c) Find the limit.

**6.** Show that $y = 3e^{2t} - 1$ is a solution of $y' = 2y + 2$, and find the initial value $y(0)$.

**7.** Consider $y' = x - y$.
(a) Describe the isoclines and sketch the slope field for $-2 \le x \le 3$, $-2 \le y \le 3$.
(b) Show that $y = x - 1$ is a solution.
(c) Show that $y = x - 1 + Ce^{-x}$ is a solution for every $C$, and describe what all solutions do as $x \to \infty$.

**8.** Solve $\dfrac{dy}{dx} = 2xy$ with $y(0) = 3$ by separation of variables.

**9.** Solve $\dfrac{dy}{dx} = \dfrac{x}{y}$ with $y(0) = 2$. What kind of curve is the solution curve?

**10.** Use Euler's method with step size $h = 0.5$ to approximate $y(1)$ for $y' = t + y$, $y(0) = 1$. Compare with the exact solution $y = 2e^t - t - 1$ (verify that it is the solution).

## Exam-level

**11.** A cup of coffee at 90 °C is placed in a room at 20 °C. After 5 minutes it is 70 °C. Newton's law of cooling says $\dfrac{dT}{dt} = -k(T - 20)$.
(a) Solve the differential equation with the initial condition.
(b) Calculate $k$ exactly.
(c) After how many minutes is the coffee 40 °C? Round to one decimal.

**12.** A population of fish in a lake follows $\dfrac{dN}{dt} = 0.4N\left(1 - \dfrac{N}{1000}\right)$, $t$ in years, $N(0) = 50$.
(a) Solve the differential equation by separation of variables.
(b) When is $N = 500$? Give the exact value and a decimal approximation.
(c) What is the largest growth rate and at what population size does it occur?

**13.** Given $u_{n+1} = f(u_n)$ with $f(x) = \dfrac{x^2 + 2}{3}$.
(a) Find the fixed points.
(b) Determine the stability of each.
(c) Describe (with a web diagram) what happens for $u_0 = 0$, $u_0 = 1.5$ and $u_0 = 2.5$.
(d) For which starting values $u_0$ does the sequence converge to $1$?

**14.** The logistic map with $r = 2.5$: $u_{n+1} = 2.5u_n(1 - u_n)$.
(a) Find the fixed points and their stability.
(b) Is the convergence to the stable fixed point monotonic or oscillating? Explain with $f'$.

**15.** Consider the autonomous equation $\dfrac{dy}{dt} = y(y - 1)(y - 3)$.
(a) Find the equilibrium solutions and determine their stability.
(b) Sketch some solution curves.
(c) Describe the long-term behaviour for $y(0) = 0.5$, $y(0) = 2$ and $y(0) = 4$.

**16.** Solve $y' = y^2$ with $y(0) = 1$. On which interval does the solution exist? What happens with $y(0) = -1$?

**17.** Given $y' = -2y + t$, $y(0) = 1$.
(a) Use Euler's method with $h = 0.1$ to approximate $y(0.3)$.
(b) Show that $y = \tfrac12 t - \tfrac14 + \tfrac54 e^{-2t}$ is the exact solution and compute the error of your approximation.
(c) Write a program (pseudocode or Python) for Euler's method with $n$ steps, and use it to find the error at $t = 0.3$ for $h = 0.01$. By roughly what factor did the error shrink?

**18.** (Torricelli) Water flows out of a hole in the bottom of a tank. The water height $h$ (metres) satisfies $\dfrac{dh}{dt} = -0.1\sqrt h$, $t$ in minutes, $h(0) = 4$.
(a) Solve by separation of variables.
(b) When is the tank empty?
(c) Suppose you only know that $h(50) = 0$. Show that this initial value problem has infinitely many solutions. (Hint: $h \equiv 0$ is also a solution; glue.)

## Challenge

**19.** Prove: if $f$ has a continuous derivative, $f(L) = L$ and $\lvert f'(L) \rvert < 1$, then there is a $\delta > 0$ such that $u_n \to L$ for every $u_0$ with $\lvert u_0 - L \rvert \le \delta$. Then prove that if $\lvert f'(L) \rvert > 1$, no sequence with $u_0$ close to (but not equal to) $L$ stays close to $L$ forever.

**20.** (Fibonacci) $F_0 = 0$, $F_1 = 1$, $F_{n+2} = F_{n+1} + F_n$.
(a) Prove Binet's formula $F_n = \dfrac{\varphi^n - \psi^n}{\sqrt 5}$ with $\varphi = \frac{1+\sqrt5}{2}$, $\psi = \frac{1-\sqrt5}{2}$, by induction.
(b) Show that $q_n = F_{n+1}/F_n$ satisfies $q_{n+1} = 1 + \dfrac{1}{q_n}$, and use a stability argument to show $q_n \to \varphi$.

**21.** Euler's method for $y' = y$, $y(0) = 1$ with $n$ steps gives $a_n = (1 + 1/n)^n$ as the approximation of $y(1) = e$. Prove that $a_n$ is increasing. (Hint: apply the AM–GM inequality to the $n + 1$ numbers $1 + \frac1n, \dots, 1 + \frac1n, 1$.)

**22.** For the logistic map $f(x) = rx(1 - x)$:
(a) Show that the points of a 2-cycle (solutions of $f(f(x)) = x$ that are not fixed points) satisfy $r^2x^2 - r(r+1)x + (r + 1) = 0$.
(b) For which $r$ does a 2-cycle exist?
(c) Compute the 2-cycle for $r = 3.2$ and check it numerically.

**23.** Solve $y' + 2y = e^t$ using the integrating factor $e^{2t}$: show that $(ye^{2t})' = e^{3t}$ and find the general solution.

**24.** Using only the differential equation $N' = rN(1 - N/K)$ (not its solution), prove that for $0 < N(0) < K/2$ the solution curve has exactly one inflection point, at height $N = K/2$, and that the slope there is $rK/4$.
