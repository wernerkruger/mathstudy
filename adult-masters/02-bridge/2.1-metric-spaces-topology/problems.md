# 2.1 Metric Spaces and Topology: Problems

Attempt each problem for at least 30 minutes before reading [solutions.md](solutions.md). Write full proofs.

## Warm-up

**1.** For $x,y \in \mathbb{R}$ let $d'(x,y) = \dfrac{|x-y|}{1+|x-y|}$.
(a) Show that $d'$ is a metric.
(b) Show that $d'$ and the usual metric $d(x,y) = |x-y|$ have the same open sets.
(c) Show that $(\mathbb{R}, d')$ is bounded and complete.

**2.** Let $X$ be any set with the discrete metric. Show that every subset of $X$ is both open and closed, describe exactly which sequences converge, show $X$ is complete, and show a subset of $X$ is compact iff it is finite.

**3.** Let $(X,d)$ be a metric space.
(a) Show that $\overline{B(x,r)} \subseteq \lbrace y : d(x,y) \le r \rbrace$.
(b) Give an example where the inclusion is strict.
(c) Show that equality holds in any normed vector space.

**4.** Let $X, Y$ be topological spaces. Show that $f : X \to Y$ is continuous iff $f(\overline{A}) \subseteq \overline{f(A)}$ for every $A \subseteq X$.

**5.** Let $(X,d)$ be a metric space and $A \subseteq X$.
(a) If $X$ is complete and $A$ is closed, show $A$ is complete.
(b) If $A$ (with the restricted metric) is complete, show $A$ is closed in $X$.

**6.** Let $X$ be an infinite set with the cofinite topology. Show that $X$ is $T_1$ but not Hausdorff, and that every subset of $X$ is compact.

## Core

**7.** Show that $C[0,1]$ with the metric $d_1(f,g) = \int_0^1 |f-g|$ is not complete.

**8.** Show that there is exactly one continuous function $f : [0,1] \to \mathbb{R}$ satisfying
$$
f(x) = e^x + \frac{1}{2}\int_0^1 \cos(xt)\, f(t)\, dt \quad \text{for all } x \in [0,1].
$$

**9.** Show that a non-empty complete metric space with no isolated points is uncountable.

**10.** (a) For $f : \mathbb{R} \to \mathbb{R}$, show that the set of points where $f$ is continuous is a $G_\delta$ set (a countable intersection of open sets).
(b) Deduce that there is no function $f : \mathbb{R} \to \mathbb{R}$ that is continuous at every rational point and discontinuous at every irrational point.

**11.** Let $(K,d)$ be a compact metric space and $f: K \to K$ satisfy $d(f(x),f(y)) < d(x,y)$ whenever $x \ne y$. Show that $f$ has a unique fixed point. Show by example that compactness cannot be replaced by completeness.

**12.** Work in $\ell^2$ (square-summable real sequences with $\|x\| = (\sum x_n^2)^{1/2}$), which you may assume is complete.
(a) Show that the closed unit ball is closed and bounded but not compact.
(b) Show that the "Hilbert cube" $H = \lbrace x \in \ell^2 : |x_n| \le 1/n \text{ for all } n \rbrace$ is compact.

**13.** Show that $[0,1]$ is not homeomorphic to the circle $S^1$, and that $\mathbb{R}$ is not homeomorphic to $\mathbb{R}^2$.

**14.** Let $S_+ = \lbrace (x, \sin(1/x)) : 0 < x \le 1 \rbrace$ and $S = S_+ \cup (\lbrace 0 \rbrace \times [-1,1]) \subseteq \mathbb{R}^2$. Show that $S$ is connected but not path connected.

**15.** Show that a connected metric space with at least two points is uncountable.

**16.** Let $\mathbb{R}^{\mathbb{N}}$ denote the set of real sequences.
(a) Show that $f : \mathbb{R} \to \mathbb{R}^{\mathbb{N}}$, $f(t) = (t,t,t,\dots)$ is continuous for the product topology but not for the box topology.
(b) Let $x^{(n)}$ be the sequence whose first $n$ terms are $0$ and whose remaining terms are $1$. Show that $x^{(n)} \to 0$ in the product topology but not in the box topology.

**17.** (a) Show that the quotient $[0,1]/(0 \sim 1)$ is homeomorphic to $S^1$.
(b) Show that $[0,1]^2/\!\sim$, where $(s,0) \sim (s,1)$ and $(0,t) \sim (1,t)$ (and the equivalence relation these generate), is homeomorphic to $S^1 \times S^1$.

**18.** Show that a compact subset of a Hausdorff space is closed. Give an example of a compact subset of some topological space that is not closed.

## Challenge

**19.** Let $f : (0,\infty) \to \mathbb{R}$ be continuous, and suppose that for every $x > 0$ the sequence $f(x), f(2x), f(3x), \dots$ tends to $0$. Prove that $f(x) \to 0$ as $x \to \infty$. (Hint: Baire.)

**20.** Let $(K,d)$ be a compact metric space and $f: K \to K$ an isometry: $d(f(x),f(y)) = d(x,y)$ for all $x,y$. Show that $f$ is surjective.

**21.** Prove that every compact Hausdorff space is normal.

**22.** Let $C = \lbrace \sum_{n \ge 1} a_n 3^{-n} : a_n \in \lbrace 0, 2 \rbrace \rbrace \subseteq [0,1]$ (the middle-thirds Cantor set). Show that $\varphi : \lbrace 0,1 \rbrace^{\mathbb{N}} \to C$, $\varphi(x) = \sum_n 2x_n 3^{-n}$ is a homeomorphism, where $\lbrace 0,1\rbrace^{\mathbb{N}}$ has the product of discrete topologies. You may use Tychonoff's theorem.

**23.** Let $(X,d)$ be a metric space. Show that $X$ is compact iff every continuous function $X \to \mathbb{R}$ is bounded. (You may use the Tietze extension theorem.)
