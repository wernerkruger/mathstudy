# 1.2 Problems — Real analysis I

Attempt each problem before opening [solutions.md](solutions.md). Use only results proved earlier in the module (or in [notes.md](notes.md)) unless told otherwise. $\mathbb{N} = \lbrace 1,2,3,\dots\rbrace$.

---

## Warm-up

**1.** Prove that $\sup\lbrace 1 - \tfrac1n : n \in \mathbb{N}\rbrace = 1$. Is the supremum attained?

**2.** Using only the definition, prove that

$$
\lim_{n\to\infty}\frac{n^2 + 1}{2n^2 - 3} = \frac12 .
$$

**3.** Prove that (a) the limit of a convergent sequence is unique, and (b) every convergent sequence is bounded.

**4.** Decide whether each series converges or diverges. Justify each answer.
(a) $\displaystyle\sum_{n=1}^\infty \frac{n!}{n^n}$  (b) $\displaystyle\sum_{n=1}^\infty \frac{1}{n^{1 + 1/n}}$  (c) $\displaystyle\sum_{n=1}^\infty (-1)^n\frac{n}{n+1}$  (d) $\displaystyle\sum_{n=1}^\infty \left(\frac{1}{\sqrt n} - \frac{1}{\sqrt{n+1}}\right)$ (find its sum)

**5.** Let $f(x) = x\sin(1/x)$ for $x \ne 0$ and $f(0) = 0$. Prove that $f$ is continuous at $0$ but not differentiable at $0$.

**6.** Prove that $f(x) = \sqrt x$ is uniformly continuous on $[0,\infty)$. Is it Lipschitz on $[0, \infty)$?

---

## Core

**7.** (a) Prove the Monotone Convergence Theorem from the axiom of completeness.
(b) Let $a_1 = \sqrt 2$ and $a_{n+1} = \sqrt{2 + a_n}$. Prove that $(a_n)$ converges and find its limit.

**8.** Prove the Bolzano–Weierstrass theorem. (You may first prove that every sequence has a monotone subsequence.)

**9.** (a) Prove that every Cauchy sequence in $\mathbb{R}$ converges.
(b) Let $H_n = \sum_{k=1}^n \frac1k$. Show directly that $(H_n)$ is not Cauchy, by showing $H_{2n} - H_n \ge \frac12$.

**10.** (a) Prove the Cauchy condensation test: if $a_n \ge 0$ is decreasing, then $\sum_{n\ge1} a_n$ converges iff $\sum_{k\ge0} 2^k a_{2^k}$ converges.
(b) Deduce that $\sum 1/n^p$ converges iff $p > 1$.

**11.** Prove that $K \subseteq \mathbb{R}$ is sequentially compact (every sequence in $K$ has a subsequence converging to a point of $K$) if and only if $K$ is closed and bounded.

**12.** (a) Prove that the continuous image of a compact set is compact.
(b) Deduce the Extreme Value Theorem.
(c) Give examples showing that the conclusion of the EVT can fail if $[a,b]$ is replaced by $(a,b)$, or if continuity is dropped.

**13.** Prove the Intermediate Value Theorem: if $f$ is continuous on $[a,b]$ and $f(a) < L < f(b)$, then $f(c) = L$ for some $c \in (a,b)$.

**14.** Prove that a continuous function on $[a,b]$ is uniformly continuous. Then show that $f(x) = 1/x$ is continuous but not uniformly continuous on $(0,1)$.

**15.** (a) State and prove Rolle's theorem, and deduce the Mean Value Theorem.
(b) Prove that if $f'(x) > 0$ for all $x \in (a,b)$, then $f$ is strictly increasing on $(a,b)$.
(c) Prove that $\ln(1 + x) < x$ for all $x > 0$.

**16.** (a) Using Taylor's theorem with the Lagrange remainder, find $n$ such that $\sum_{k=0}^n \frac{1}{k!}$ approximates $e$ with error less than $10^{-3}$. You may use $e < 3$.
(b) Prove that $\cos x \ge 1 - \dfrac{x^2}{2}$ for all real $x$.

**17.** Using upper and lower Darboux sums for the partition of $[0,1]$ into $n$ equal pieces, prove that $f(x) = x^2$ is integrable on $[0,1]$ and that $\int_0^1 x^2\,dx = \frac13$. (Use $\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}$.)

**18.** (a) Prove that if $f_n \to f$ uniformly on $A$ and each $f_n$ is continuous at $c \in A$, then $f$ is continuous at $c$.
(b) Prove that if $f_n \to f$ uniformly on $[a,b]$ and each $f_n$ and $f$ are integrable, then $\int_a^b f_n \to \int_a^b f$.

**19.** Let $f$ be integrable on $[a,b]$ and $G(x) = \int_a^x f(t)\,dt$. Prove that $G$ is continuous on $[a,b]$, and that $G'(c) = f(c)$ at every $c \in (a,b)$ where $f$ is continuous.

**20.** Let $f_n(x) = \dfrac{nx}{1 + n^2x^2}$.
(a) Find the pointwise limit on $[0,1]$.
(b) Show that the convergence is not uniform on $[0,1]$.
(c) Show that it is uniform on $[\delta, 1]$ for every $\delta \in (0,1)$.

**21.** Let $f_n(x) = \dfrac{\sin(nx)}{\sqrt n}$ on $\mathbb{R}$. Show that $f_n \to 0$ uniformly, but that $(f_n')$ does not converge pointwise to the derivative of the limit. What does this say about interchanging limits and derivatives?

---

## Challenge

**22.** *Thomae's function.* Define $t : [0,1] \to \mathbb{R}$ by $t(x) = 1/q$ if $x = p/q$ in lowest terms with $q \ge 1$ (so $t(0) = t(1) = 1$), and $t(x) = 0$ if $x$ is irrational.
(a) Prove that $t$ is continuous at every irrational and discontinuous at every rational.
(b) Prove that $t$ is Riemann integrable with $\int_0^1 t = 0$.

**23.** (a) State and prove the Weierstrass M-test.
(b) Let $g(x) = \sum_{n=1}^\infty \dfrac{\sin(nx)}{n^3}$. Prove that $g$ is defined and continuous on $\mathbb{R}$, that it is differentiable, and that $g'(x) = \sum_{n=1}^\infty \dfrac{\cos(nx)}{n^2}$.

**24.** Prove that there is no continuous function $f : \mathbb{R} \to \mathbb{R}$ with $f(f(x)) = -x$ for all $x$.

**25.** Prove that if $\sum a_n$ converges absolutely, then every rearrangement $\sum a_{\sigma(n)}$ (where $\sigma : \mathbb{N} \to \mathbb{N}$ is a bijection) converges, and has the same sum.
