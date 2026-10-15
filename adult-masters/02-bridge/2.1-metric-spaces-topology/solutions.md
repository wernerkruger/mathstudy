# 2.1 Metric Spaces and Topology: Solutions

## Warm-up

### 1.

(a) Let $\varphi(t) = t/(1+t)$ for $t \ge 0$. Then $\varphi(t) = 0 \iff t = 0$, and $\varphi$ is increasing since $\varphi(t) = 1 - 1/(1+t)$. It is also subadditive: for $a,b \ge 0$,
$$
\varphi(a+b) = \frac{a}{1+a+b} + \frac{b}{1+a+b} \le \frac{a}{1+a} + \frac{b}{1+b} = \varphi(a)+\varphi(b).
$$
Since $d' = \varphi \circ d$, positivity and symmetry are immediate. For the triangle inequality, $d(x,z) \le d(x,y) + d(y,z)$, and since $\varphi$ is increasing and subadditive,
$$
d'(x,z) \le \varphi(d(x,y)+d(y,z)) \le d'(x,y) + d'(y,z).
$$

(b) Always $d' \le d$, so $B_d(x,r) \subseteq B_{d'}(x,r)$. Conversely, if $d'(x,y) = s < 1$ then $d(x,y) = s/(1-s)$. So if $s < 1/2$ then $d(x,y) \le 2s$, which gives $B_{d'}(x, r/2) \subseteq B_d(x,r)$ for $r \le 1$. Hence every $d$-ball around $x$ contains a $d'$-ball around $x$ and vice versa, so the open sets agree.

(c) $d' < 1$, so $\mathbb{R}$ is bounded under $d'$. If $(x_n)$ is $d'$-Cauchy, then for $\varepsilon < 1/2$ there is $N$ with $d'(x_m,x_n) < \varepsilon/2$ for $m,n \ge N$, so $d(x_m,x_n) \le \varepsilon$. So $(x_n)$ is $d$-Cauchy, converges in $d$, and hence in $d'$ (same topology). So $(\mathbb{R},d')$ is complete.

*Remark:* so "bounded" is not a topological property, and "closed and bounded ⇒ compact" fails for $(\mathbb{R}, d')$.

### 2.

For any $x$, $B(x,1/2) = \lbrace x \rbrace$, so every singleton is open, so every subset (a union of singletons) is open. Complements of open sets are then all closed, so every subset is closed.

$x_n \to x$ iff for $\varepsilon = 1/2$ there is $N$ with $d(x_n,x) < 1/2$, i.e. $x_n = x$, for $n \ge N$. So the convergent sequences are exactly the eventually constant ones. A Cauchy sequence is, by the same argument with $d(x_m,x_n) < 1/2$, eventually constant, hence convergent: $X$ is complete.

A finite set is always compact. If $A$ is infinite, the cover $\lbrace \lbrace a \rbrace : a \in A \rbrace$ by open sets has no finite subcover. So $A$ is compact iff finite.

### 3.

(a) The function $y \mapsto d(x,y)$ is continuous (it is 1-Lipschitz by the triangle inequality), so the closed ball $\bar B = \lbrace y : d(x,y) \le r\rbrace$ is closed. It contains $B(x,r)$, so it contains the closure.

(b) Take $X$ with at least two points and the discrete metric, $r = 1$. $B(x,1) = \lbrace x \rbrace$ is closed (Problem 2), so its closure is $\lbrace x \rbrace$, while the closed ball of radius 1 is all of $X$.

(c) Let $\|y - x\| = r$ (with $r > 0$). For $0 < t < 1$ put $y_t = x + t(y-x)$. Then $\|y_t - x\| = tr < r$, so $y_t \in B(x,r)$, and $\|y_t - y\| = (1-t) r \to 0$ as $t \to 1$. So $y \in \overline{B(x,r)}$. With (a), equality holds.

### 4.

(⇒) $\overline{f(A)}$ is closed, so $f^{-1}(\overline{f(A)})$ is closed and contains $A$. Hence it contains $\overline{A}$, i.e. $f(\overline A) \subseteq \overline{f(A)}$.

(⇐) Let $F \subseteq Y$ be closed and $A = f^{-1}(F)$. Then $f(\overline{A}) \subseteq \overline{f(A)} \subseteq \overline{F} = F$, so $\overline A \subseteq f^{-1}(F) = A$. So $A$ is closed. Preimages of closed sets are closed, so $f$ is continuous.

### 5.

(a) A Cauchy sequence in $A$ is Cauchy in $X$, so converges to some $x \in X$. Since $A$ is closed and contains the sequence, $x \in A$.

(b) Let $x \in \overline{A}$ and choose $a_n \in A$ with $a_n \to x$. Then $(a_n)$ is Cauchy, so it converges in $A$ to some $a \in A$. Limits in a metric space are unique, so $x = a \in A$. Hence $\overline A = A$.

### 6.

Finite sets are closed, so points are closed: $X$ is $T_1$. If $U,V$ are non-empty open sets, $X \setminus U$ and $X \setminus V$ are finite, so $X \setminus (U \cap V)$ is finite; since $X$ is infinite, $U \cap V \ne \emptyset$. So no two points have disjoint neighbourhoods: $X$ is not Hausdorff.

Let $A \subseteq X$ and let $\mathcal{U}$ be an open cover of $A$. If $A = \emptyset$ there is nothing to do. Otherwise pick $U_0 \in \mathcal{U}$ with $U_0 \cap A \ne \emptyset$; then $U_0 \ne \emptyset$ so $A \setminus U_0 \subseteq X \setminus U_0$ is finite, say $\lbrace a_1,\dots,a_k\rbrace$. Choose $U_i \in \mathcal U$ containing $a_i$. Then $U_0, \dots, U_k$ cover $A$.

## Core

### 7.

For $n \ge 2$ define $f_n$ to be $0$ on $[0,1/2]$, linear from $0$ to $1$ on $[1/2, 1/2 + 1/n]$, and $1$ on $[1/2+1/n, 1]$. For $m \ge n$, $f_m$ and $f_n$ agree outside $[1/2,1/2+1/n]$ and $|f_m - f_n| \le 1$, so $d_1(f_m,f_n) \le 1/n$. Hence $(f_n)$ is $d_1$-Cauchy.

Suppose $f_n \to f$ in $d_1$ with $f \in C[0,1]$. Then $\int_0^{1/2}|f| \le d_1(f_n,f) \to 0$, so $\int_0^{1/2}|f| = 0$, and since $|f|$ is continuous and non-negative, $f = 0$ on $[0,1/2]$. For any $a \in (1/2, 1)$, once $1/n < a - 1/2$ we have $f_n = 1$ on $[a,1]$, so $\int_a^1 |f - 1| \le d_1(f_n,f) \to 0$; hence $f = 1$ on $[a,1]$. As $a$ was arbitrary, $f = 1$ on $(1/2,1]$. Then $f$ is not continuous at $1/2$, a contradiction. So $(C[0,1],d_1)$ is not complete.

### 8.

Work in $X = C[0,1]$ with $d_\infty$, which is complete. Define
$$
(Tf)(x) = e^x + \frac12 \int_0^1 \cos(xt) f(t)\, dt.
$$
*$Tf$ is continuous.* The function $(x,t) \mapsto \cos(xt)f(t)$ is continuous on the compact square $[0,1]^2$, hence uniformly continuous. So given $\varepsilon > 0$ there is $\delta>0$ with $|\cos(xt)f(t) - \cos(x't)f(t)| < \varepsilon$ whenever $|x - x'| < \delta$, for all $t$. Integrating, the integral term changes by at most $\varepsilon/2$. So $Tf \in C[0,1]$.

*$T$ is a contraction.* For $f,g \in X$ and any $x$,
$$
|(Tf)(x) - (Tg)(x)| \le \frac12 \int_0^1 |\cos(xt)|\,|f(t)-g(t)|\,dt \le \frac12 d_\infty(f,g).
$$
So $d_\infty(Tf,Tg) \le \frac12 d_\infty(f,g)$. By the contraction mapping theorem $T$ has exactly one fixed point in $C[0,1]$, which is exactly the statement.

### 9.

Let $X$ be such a space and suppose $X$ is countable: $X = \lbrace x_1, x_2, \dots \rbrace$ (finite or infinite list). Each $\lbrace x_n \rbrace$ is closed. If $\lbrace x_n\rbrace$ had non-empty interior, it would be open, so $x_n$ would be isolated. So each $\lbrace x_n\rbrace$ is closed and nowhere dense, and $X$ is a countable union of nowhere dense sets. This contradicts the Baire category theorem since $X$ is non-empty and complete.

### 10.

(a) For $x \in \mathbb{R}$ define the *oscillation*
$$
\omega(x) = \inf_{\delta > 0} \sup \lbrace |f(y) - f(z)| : y,z \in (x-\delta,x+\delta) \rbrace \in [0,\infty].
$$
$f$ is continuous at $x$ iff $\omega(x) = 0$. (If continuous, for $\varepsilon>0$ choose $\delta$ with $|f(y)-f(x)|<\varepsilon/2$ on the interval; then $|f(y)-f(z)|<\varepsilon$. Conversely, $|f(y) - f(x)| \le \sup$ over the interval.)

Let $U_n = \lbrace x : \omega(x) < 1/n \rbrace$. $U_n$ is open: if $\omega(x) < 1/n$, choose $\delta$ with the sup over $(x-\delta,x+\delta)$ less than $1/n$. For $x'$ in that interval, $(x' - \delta', x'+\delta') \subseteq (x-\delta,x+\delta)$ with $\delta' = \delta - |x-x'|$, so $\omega(x') < 1/n$. Thus the set of continuity points is $\bigcap_n U_n$, a $G_\delta$.

(b) If such $f$ existed, $\mathbb{Q} = \bigcap_n U_n$ would be $G_\delta$. Each $U_n \supseteq \mathbb{Q}$ is open and dense. For each $q \in \mathbb{Q}$, $\mathbb{R}\setminus\lbrace q\rbrace$ is open and dense. These are countably many dense open sets in the complete space $\mathbb{R}$, and their intersection is $\mathbb{Q} \cap (\mathbb{R}\setminus \mathbb{Q}) = \emptyset$, contradicting Baire.

*Remark:* Thomae's function ($f(p/q) = 1/q$ in lowest terms, $f = 0$ on irrationals) is continuous exactly at the irrationals, so the reverse situation is possible.

### 11.

*Existence.* $f$ is continuous (indeed $d(f(x),f(y)) \le d(x,y)$). So $g(x) = d(x, f(x))$ is continuous on the compact space $K$ and attains its minimum at some $x_0$. If $f(x_0) \ne x_0$ then
$$
g(f(x_0)) = d(f(x_0), f(f(x_0))) < d(x_0, f(x_0)) = g(x_0),
$$
contradicting minimality. So $f(x_0) = x_0$.

*Uniqueness.* If $x \ne y$ are both fixed, $d(x,y) = d(f(x),f(y)) < d(x,y)$, which is impossible.

*Counterexample.* $X = [1,\infty)$ is complete, and $f(x) = x + 1/x$ maps $X$ to $X$. For $x \ne y$ in $X$,
$$
|f(x) - f(y)| = |x - y|\cdot\left|1 - \frac{1}{xy}\right| < |x-y|,
$$
since $xy > 1$ when $x \ne y$ and both are at least $1$. But $f(x) = x$ has no solution.

### 12.

(a) The closed unit ball $\bar B = \lbrace x : \|x\| \le 1\rbrace$ is closed (the norm is continuous) and bounded. Let $e_n$ be the sequence with $1$ in place $n$ and $0$ elsewhere. Then $e_n \in \bar B$ and $\|e_m - e_n\| = \sqrt 2$ for $m \ne n$. No subsequence is Cauchy, so none converges: $\bar B$ is not sequentially compact, hence not compact.

(b) Since $\sum 1/n^2 < \infty$, $H \subseteq \ell^2$. Each coordinate map $x \mapsto x_n$ is continuous ($|x_n - y_n| \le \|x-y\|$), so $H = \bigcap_n \lbrace x : |x_n| \le 1/n \rbrace$ is closed in the complete space $\ell^2$, hence complete (Problem 5). It remains to show $H$ is totally bounded.

Let $\varepsilon > 0$. Choose $N$ with $\sum_{n > N} 1/n^2 < \varepsilon^2/4$. Let $P$ be the truncation map $P(x) = (x_1, \dots, x_N, 0, 0, \dots)$. $P(H) = \prod_{n \le N} [-1/n, 1/n]$ (padded with zeros) is a closed bounded subset of a copy of $\mathbb{R}^N$, hence compact by Heine–Borel, hence covered by finitely many balls $B(c_j, \varepsilon/2)$. For $x \in H$, pick $j$ with $\|Px - c_j\| < \varepsilon/2$. Then
$$
\|x - c_j\| \le \|Px - c_j\| + \|x - Px\| < \frac{\varepsilon}{2} + \Big(\sum_{n>N} \frac1{n^2}\Big)^{1/2} < \varepsilon.
$$
So $H$ is covered by finitely many $\varepsilon$-balls. Complete and totally bounded, $H$ is compact.

### 13.

Suppose $h : [0,1] \to S^1$ is a homeomorphism. Then $h$ restricts to a homeomorphism $[0,1]\setminus\lbrace 1/2\rbrace \to S^1 \setminus \lbrace h(1/2) \rbrace$. The left side is not connected: it is the disjoint union of the relatively open sets $[0,1/2)$ and $(1/2,1]$. The right side is connected: if $h(1/2) = (\cos\theta,\sin\theta)$, then $S^1 \setminus \lbrace h(1/2)\rbrace$ is the image of the connected interval $(\theta, \theta + 2\pi)$ under the continuous map $t \mapsto (\cos t, \sin t)$. Homeomorphisms preserve connectedness, so this is a contradiction.

Similarly, if $h : \mathbb{R} \to \mathbb{R}^2$ were a homeomorphism, $\mathbb{R}\setminus\lbrace 0\rbrace$ (disconnected) would be homeomorphic to $\mathbb{R}^2 \setminus \lbrace h(0)\rbrace$, which is path connected (any two points can be joined by at most two line segments avoiding $h(0)$), hence connected. Contradiction.

### 14.

*Connected.* $S_+$ is the image of the connected interval $(0,1]$ under the continuous map $x \mapsto (x, \sin(1/x))$, so it is connected. Every point $(0,y)$ with $y \in [-1,1]$ lies in $\overline{S_+}$: choose $\theta \in [-\pi/2,\pi/2]$ with $\sin\theta = y$ and $x_k = 1/(\theta + 2\pi k)$; then $(x_k, \sin(1/x_k)) = (x_k, y) \to (0,y)$. So $S_+ \subseteq S \subseteq \overline{S_+}$. If $A$ is connected and $A \subseteq B \subseteq \overline A$, then $B$ is connected. (If $B = U \cup V$ is a separation, $A$ lies in one part, say $U$; then $V \cap \overline A = \emptyset$ because $V$ is relatively open in $B$ and misses $A$, but $V \subseteq B \subseteq \overline{A}$, so $V = \emptyset$.) So $S$ is connected.

*Not path connected.* Suppose $\gamma = (x,y) : [0,1] \to S$ is continuous with $\gamma(0) = (0,0)$ and $\gamma(1) = (1,\sin 1)$. The set $Z = \lbrace t : x(t) = 0\rbrace$ is closed and contains $0$; let $T = \max Z$. Then $T < 1$ and $x(t) > 0$ for $t > T$. By continuity of $y$ at $T$, choose $\delta \in (0, 1-T]$ with $|y(t) - y(T)| < 1/2$ for $t \in [T,T+\delta]$. Let $a = x(T+\delta) > 0$. Choose a positive integer $k$ with $u = 1/(\pi/2 + 2\pi k) < a$ and put $v = 1/(3\pi/2 + 2\pi k) < u$. By the intermediate value theorem applied to $x$ on $[T, T+\delta]$, there are $t_1, t_2 \in (T, T+\delta)$ with $x(t_1) = u$ and $x(t_2) = v$. Since $\gamma(t_i) \in S_+$, $y(t_1) = \sin(1/u) = 1$ and $y(t_2) = \sin(1/v) = -1$. But both must be within $1/2$ of $y(T)$, so $2 = |y(t_1) - y(t_2)| < 1$. Contradiction.

### 15.

Pick $x_0 \ne x_1$ in $X$ and let $r = d(x_0,x_1) > 0$. The map $g(x) = d(x_0,x)$ is continuous, so $g(X)$ is a connected subset of $\mathbb{R}$, i.e. an interval. It contains $0$ and $r$, so it contains $[0,r]$, which is uncountable. Since $g$ maps $X$ onto a set containing $[0,r]$, $X$ is uncountable.

### 16.

(a) Each coordinate $\pi_n \circ f$ is the identity $\mathbb{R} \to \mathbb{R}$, which is continuous. By the universal property of the product topology, $f$ is continuous. In the box topology $U = \prod_n (-1/n, 1/n)$ is open, but $f^{-1}(U) = \lbrace t : |t| < 1/n \text{ for all } n\rbrace = \lbrace 0 \rbrace$, which is not open in $\mathbb{R}$.

(b) A basic open neighbourhood of $0$ in the product topology is $W = \prod_k U_k$ with each $U_k$ open, $0 \in U_k$, and $U_k = \mathbb{R}$ for $k > K$. For $n \ge K$, the first $n$ (hence first $K$) coordinates of $x^{(n)}$ are $0 \in U_k$, and the others lie in $U_k = \mathbb{R}$. So $x^{(n)} \in W$ for $n \ge K$; thus $x^{(n)} \to 0$. In the box topology, $\prod_k (-1/2, 1/2)$ is a neighbourhood of $0$ containing no $x^{(n)}$ (each $x^{(n)}$ has some coordinate equal to $1$), so $x^{(n)} \not\to 0$.

### 17.

(a) Let $p : [0,1] \to S^1$, $p(t) = (\cos 2\pi t, \sin 2\pi t)$. It is a continuous surjection, and $p(s) = p(t)$ iff $s = t$ or $\lbrace s,t\rbrace = \lbrace 0, 1\rbrace$. So $p$ is constant on equivalence classes and, by the universal property of the quotient, induces a continuous bijection $\bar p : [0,1]/\!\sim\ \to S^1$. The quotient is compact (a continuous image of $[0,1]$ under the quotient map), $S^1$ is Hausdorff, so $\bar p$ is a homeomorphism.

(b) Let $P: [0,1]^2 \to S^1 \times S^1$, $P(s,t) = (p(s),p(t))$. It is continuous and surjective. $P(s,t) = P(s',t')$ iff $p(s) = p(s')$ and $p(t) = p(t')$, i.e. iff ($s=s'$ or $\lbrace s,s'\rbrace = \lbrace 0,1\rbrace$) and ($t = t'$ or $\lbrace t,t'\rbrace = \lbrace 0,1\rbrace$). This is exactly the equivalence relation generated by the given identifications (the four corners form one class). As in (a), $P$ induces a continuous bijection from the compact quotient to the Hausdorff space $S^1 \times S^1$, hence a homeomorphism.

### 18.

Let $K$ be compact in the Hausdorff space $X$ and $x \notin K$. For each $k \in K$ choose disjoint open $U_k \ni k$ and $V_k \ni x$. The $U_k$ cover $K$; choose $k_1,\dots,k_n$ with $K \subseteq U = \bigcup_i U_{k_i}$. Then $V = \bigcap_i V_{k_i}$ is an open neighbourhood of $x$ disjoint from $U$, hence from $K$. So $X \setminus K$ is open.

Example: $\mathbb{R}$ with the cofinite topology. By Problem 6, $[0,1]$ is compact, but it is not closed since the closed sets are $\mathbb{R}$ and finite sets. (Even simpler: any proper non-empty subset of a space with the indiscrete topology.)

## Challenge

### 19.

Fix $\varepsilon > 0$. For $N \ge 1$ let
$$
F_N = \lbrace x \in [1,2] : |f(nx)| \le \varepsilon \text{ for all } n \ge N \rbrace = \bigcap_{n \ge N} \lbrace x \in [1,2] : |f(nx)| \le \varepsilon \rbrace.
$$
Each set in the intersection is closed because $x \mapsto f(nx)$ is continuous, so $F_N$ is closed. By hypothesis, for every $x$ we have $f(nx) \to 0$, so $x \in F_N$ for some $N$: $[1,2] = \bigcup_N F_N$. Since $[1,2]$ is a complete metric space, Baire gives an $N$ for which $F_N$ has non-empty interior in $[1,2]$, so it contains an open interval $(a,b)$ with $1 \le a < b \le 2$.

If $n \ge N$ and $x \in (na, nb)$, then $x/n \in (a,b) \subseteq F_N$, so $|f(x)| = |f(n \cdot x/n)| \le \varepsilon$. Now choose an integer $M \ge N$ with $M > a/(b-a)$. For $n \ge M$, $n(b-a) > a$, i.e. $(n+1)a < nb$, so consecutive intervals $(na,nb)$ and $((n+1)a,(n+1)b)$ overlap. Since $nb \to \infty$, $\bigcup_{n \ge M}(na,nb) = (Ma, \infty)$. Hence $|f(x)| \le \varepsilon$ for all $x > Ma$. As $\varepsilon$ was arbitrary, $f(x) \to 0$.

### 20.

$f$ is continuous, so $f(K)$ is compact, hence closed. Suppose $y \notin f(K)$. Then $\varepsilon = \inf\lbrace d(y,z) : z \in f(K)\rbrace > 0$ (a point outside a closed set has positive distance from it). Put $y_n = f^n(y)$ (with $y_0 = y$). For $n \ge 0$ and $k \ge 1$, since $f^n$ is an isometry,
$$
d(y_n, y_{n+k}) = d(y, f^k(y)) \ge \varepsilon,
$$
because $f^k(y) \in f(K)$. So any two terms of $(y_n)$ are at distance at least $\varepsilon$, and no subsequence is Cauchy. This contradicts sequential compactness of $K$. So $f$ is surjective.

### 21.

Let $X$ be compact Hausdorff. It is $T_1$ since Hausdorff spaces are.

*Step 1 (point vs compact set).* By the proof of Problem 18, if $K$ is compact and $x \notin K$, there are disjoint open sets $U \supseteq K$ and $V \ni x$.

*Step 2 (closed vs closed).* Let $A, B$ be disjoint closed subsets. They are compact (closed subsets of a compact space). For each $a \in A$, Step 1 (with $K = B$, $x = a$) gives disjoint open $U_a \ni a$ and $V_a \supseteq B$. The $U_a$ cover $A$, so finitely many do: $A \subseteq U = U_{a_1} \cup \dots \cup U_{a_n}$. Let $V = V_{a_1} \cap \dots \cap V_{a_n} \supseteq B$, open. If $z \in U \cap V$ then $z \in U_{a_i} \cap V_{a_i}$ for some $i$, impossible. So $U$ and $V$ separate $A$ and $B$, and $X$ is normal.

### 22.

*Well defined and surjective:* by definition of $C$, every element is $\varphi(x)$ for some $x$.

*Injective.* Let $x \ne y$, and let $m$ be the first index with $x_m \ne y_m$; say $x_m = 1$, $y_m = 0$. Then
$$
\varphi(x) - \varphi(y) = 2\cdot 3^{-m} + \sum_{n > m} 2(x_n - y_n)3^{-n} \ge 2\cdot 3^{-m} - \sum_{n>m} 2 \cdot 3^{-n} = 2 \cdot 3^{-m} - 3^{-m} > 0.
$$

*Continuous.* Let $\varepsilon > 0$ and choose $N$ with $3^{-N} < \varepsilon$. Given $x$, the set $W = \lbrace y : y_n = x_n \text{ for } n \le N\rbrace$ is a basic open set of the product topology containing $x$. For $y \in W$,
$$
|\varphi(x) - \varphi(y)| \le \sum_{n>N} 2\cdot 3^{-n} = 3^{-N} < \varepsilon.
$$
So $\varphi$ is continuous at every $x$ (a function between a topological space and a metric space is continuous at $x$ iff each $\varepsilon$-ball around $\varphi(x)$ has a preimage containing a neighbourhood of $x$).

*Homeomorphism.* $\lbrace 0,1\rbrace^{\mathbb N}$ is compact by Tychonoff (each factor is finite, hence compact), and $C \subseteq \mathbb{R}$ is Hausdorff. A continuous bijection from a compact space to a Hausdorff space is a homeomorphism.

*Remark:* this also shows $C$ is compact, uncountable (it is in bijection with $\lbrace 0,1\rbrace^{\mathbb N}$), and totally disconnected.

### 23.

(⇒) If $X$ is compact and $f$ continuous, $f(X)$ is a compact subset of $\mathbb{R}$, hence bounded.

(⇐) Suppose $X$ is not compact. Then $X$ is not sequentially compact, so there is a sequence $(x_n)$ with no convergent subsequence. Infinitely many of the $x_n$ are distinct (otherwise some value repeats infinitely often, giving a constant, convergent subsequence), so after passing to a subsequence we may assume the $x_n$ are pairwise distinct. Let $A = \lbrace x_n : n \ge 1\rbrace$.

*$A$ has no limit points in $X$.* If $p$ were a limit point of $A$, every ball $B(p, 1/k)$ would contain infinitely many points of $A$ (in a metric space, a neighbourhood of a limit point meets the set in infinitely many points), so we could choose $n_1 < n_2 < \dots$ with $x_{n_k} \in B(p,1/k)$, a subsequence converging to $p$. Contradiction.

Hence $A$ is closed, and so is every subset of $A$. So in the subspace topology every subset of $A$ is closed, i.e. $A$ is discrete, and any function on $A$ is continuous. Define $g : A \to \mathbb{R}$ by $g(x_n) = n$. Metric spaces are normal, so by the Tietze extension theorem $g$ extends to a continuous $G : X \to \mathbb{R}$, which is unbounded. This contradicts the hypothesis, so $X$ is compact.
