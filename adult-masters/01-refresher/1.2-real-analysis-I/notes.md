# 1.2 Notes — Real analysis I

Condensed notes following the order of Abbott's *Understanding Analysis*. Proofs are given in full where the argument is a standard technique you must own, and sketched where the idea is what matters. After each section, close the notes and reproduce the boxed-in theorems from memory.

Convention: $\mathbb{N} = \lbrace 1, 2, 3, \dots\rbrace$.

---

## 1. The real numbers

### 1.1 Why we need completeness

$\mathbb{Q}$ is an ordered field, but it has "holes": the set $\lbrace q \in \mathbb{Q} : q^2 < 2\rbrace$ is bounded above in $\mathbb{Q}$ but has no least upper bound in $\mathbb{Q}$, because $\sqrt2 \notin \mathbb{Q}$. Analysis needs limits to exist, so we need a field without holes.

**Definition.** Let $S \subseteq \mathbb{R}$. A number $u$ is an *upper bound* of $S$ if $s \le u$ for all $s \in S$. The number $s^\ast$ is the *supremum* (least upper bound) of $S$, written $\sup S$, if it is an upper bound and $s^\ast \le u$ for every upper bound $u$. The infimum is defined dually.

**Axiom of completeness.** Every non-empty subset of $\mathbb{R}$ that is bounded above has a supremum in $\mathbb{R}$.

$\mathbb{R}$ is (up to isomorphism) the unique complete ordered field. The construction, by Dedekind cuts or by Cauchy sequences of rationals, is worth seeing once (Abbott 8.6 or Rudin's appendix to chapter 1), but everything below uses only the axiom.

**Lemma ($\varepsilon$-characterisation of sup).** If $s$ is an upper bound of $S$, then $s = \sup S$ iff for every $\varepsilon > 0$ there is $x \in S$ with $x > s - \varepsilon$.

This is how sup is *used* in proofs. (Proof: diagnostic question B1.)

### 1.2 First consequences

**Archimedean property.** (i) For every $x \in \mathbb{R}$ there is $n \in \mathbb{N}$ with $n > x$. (ii) For every $y > 0$ there is $n$ with $1/n < y$.

*Proof of (i).* If not, $\mathbb{N}$ is bounded above; let $\alpha = \sup\mathbb{N}$. Then $\alpha - 1$ is not an upper bound, so some $n > \alpha - 1$. But then $n + 1 > \alpha$ and $n+1 \in \mathbb{N}$, a contradiction. (ii) follows from (i) with $x = 1/y$. $\square$

**Density of $\mathbb{Q}$.** For $a < b$ there is $q \in \mathbb{Q}$ with $a < q < b$.

*Proof.* Choose $n$ with $1/n < b - a$, and let $m$ be the least integer with $m > na$. Then $m - 1 \le na$, so $na < m \le na + 1 < nb$, and $a < m/n < b$. $\square$

**Existence of $\sqrt 2$.** Let $\alpha = \sup\lbrace x \in \mathbb{R} : x^2 < 2\rbrace$. If $\alpha^2 < 2$, then $(\alpha + 1/n)^2 \le \alpha^2 + (2\alpha + 1)/n < 2$ for large $n$, contradicting that $\alpha$ is an upper bound. If $\alpha^2 > 2$, then $(\alpha - 1/n)^2 > \alpha^2 - 2\alpha/n > 2$ for large $n$, so $\alpha - 1/n$ is a smaller upper bound, a contradiction. So $\alpha^2 = 2$.

This "$\pm 1/n$" argument is a template: to show $\sup$ has a property, rule out both strict inequalities.

**Nested interval property.** If $I_1 \supseteq I_2 \supseteq \cdots$ are closed bounded intervals $I_n = [a_n, b_n]$, then $\bigcap I_n \ne \varnothing$.

*Proof.* $x = \sup\lbrace a_n \rbrace$ exists since every $b_m$ is an upper bound. Then $a_n \le x \le b_n$ for all $n$. $\square$

It fails for open intervals: $\bigcap (0, 1/n) = \varnothing$. It also fails in $\mathbb{Q}$: nest rational intervals around $\sqrt2$.

---

## 2. Sequences

### 2.1 Convergence

**Definition.** $a_n \to a$ if

$$
\forall \varepsilon > 0\ \exists N \in \mathbb{N}\ \forall n \ge N : |a_n - a| < \varepsilon .
$$

*Template for an $\varepsilon$–$N$ proof.* (1) Do scratch work: simplify $|a_n - a|$ and bound it above by something simple, such as $C/n$, valid for $n$ beyond some point. (2) Write the proof: "Let $\varepsilon > 0$. Choose $N > \dots$. Then for $n \ge N$, $|a_n - a| \le \dots < \varepsilon$."

*Example.* $\dfrac{n^2+1}{2n^2-3} \to \dfrac12$; see [problems.md](problems.md) 2.

**Basic facts:** limits are unique; convergent sequences are bounded. (Problem 3.)

### 2.2 Limit theorems

If $a_n \to a$ and $b_n \to b$, then $a_n + b_n \to a + b$, $a_nb_n \to ab$, and $a_n/b_n \to a/b$ if $b \ne 0$. If $a_n \le b_n$ for all large $n$, then $a \le b$. **Squeeze:** if $a_n \le x_n \le b_n$ and $a_n, b_n \to \ell$, then $x_n \to \ell$.

*Product proof idea.* $|a_nb_n - ab| \le |a_n|\,|b_n - b| + |b|\,|a_n - a|$. Bound $|a_n| \le M$ using boundedness, then make each term less than $\varepsilon/2$.

**Pitfall.** Order limits are not strict: $a_n < b_n$ gives only $a \le b$ ($1/n > 0$, but the limit is $0$).

### 2.3 Monotone convergence

**Monotone Convergence Theorem (MCT).** A bounded monotone sequence converges. If increasing, its limit is $\sup_n a_n$.

*Proof.* Let $s = \sup\lbrace a_n\rbrace$ and $\varepsilon > 0$. Some $a_N > s - \varepsilon$, and for $n \ge N$, $s - \varepsilon < a_N \le a_n \le s$. $\square$

*Example.* $a_1 = \sqrt2$, $a_{n+1} = \sqrt{2 + a_n}$ increases to $2$ (problem 7). Recursive sequences are the main application: show bounded and monotone by induction, then pass to the limit in the recursion.

**Example: $e$.** $(1 + 1/n)^n$ is increasing and bounded by $3$; its limit is defined to be $e$.

### 2.4 Subsequences, limsup and Bolzano–Weierstrass

A *subsequence* is $(a_{n_k})$ with $n_1 < n_2 < \cdots$. If $a_n \to a$, every subsequence converges to $a$. Contrapositive: two subsequences with different limits prove divergence (for example $(-1)^n$).

**Lemma (monotone subsequence).** Every real sequence has a monotone subsequence.

*Proof.* Call $m$ a *peak* if $a_m \ge a_n$ for all $n > m$. If there are infinitely many peaks $m_1 < m_2 < \cdots$, then $a_{m_1} \ge a_{m_2} \ge \cdots$ is decreasing. If there are finitely many, start beyond the last one at $n_1$. Since $n_1$ is not a peak, there is $n_2 > n_1$ with $a_{n_2} > a_{n_1}$. Since $n_2$ is not a peak, there is $n_3 > n_2$ with $a_{n_3} > a_{n_2}$, and so on. This gives an increasing subsequence. $\square$

**Bolzano–Weierstrass theorem.** Every bounded sequence in $\mathbb{R}$ has a convergent subsequence.

*Proof.* Take a monotone subsequence (lemma); it is bounded, so it converges by MCT. $\square$

(Abbott proves this by repeated bisection and nested intervals instead. That proof generalises better to $\mathbb{R}^n$ and is worth knowing too.)

**limsup and liminf.** For bounded $(a_n)$, let $s_n = \sup_{k \ge n} a_k$. This sequence decreases, so by MCT it converges. Define

$$
\limsup_{n\to\infty} a_n = \lim_{n\to\infty} \sup_{k\ge n} a_k = \inf_n \sup_{k \ge n} a_k,
$$

and $\liminf$ similarly. Facts: $\liminf a_n \le \limsup a_n$, with equality iff $(a_n)$ converges. $\limsup a_n$ is the largest limit of a convergent subsequence. These always exist (in $[-\infty, \infty]$, allowing unbounded sequences), which makes them the right tool when you do not yet know whether a limit exists. You will use them constantly in 3.1 (Fatou's lemma).

### 2.5 Cauchy sequences

**Definition.** $(a_n)$ is *Cauchy* if

$$
\forall \varepsilon > 0\ \exists N\ \forall m, n \ge N : |a_m - a_n| < \varepsilon .
$$

**Theorem.** In $\mathbb{R}$, a sequence converges iff it is Cauchy.

*Proof.* ($\Rightarrow$) $|a_m - a_n| \le |a_m - a| + |a - a_n|$. ($\Leftarrow$) Cauchy implies bounded; by Bolzano–Weierstrass a subsequence converges to some $a$; and a Cauchy sequence with a convergent subsequence converges to the same limit (an $\varepsilon/2$ argument; diagnostic B3). $\square$

The Cauchy criterion lets you prove convergence without knowing the limit. It is the definition of completeness that generalises to metric spaces (2.1) and Banach spaces (3.2).

**The completeness ladder.** In an ordered field, the following are equivalent (given the Archimedean property, for the last two):

$$
\text{Least upper bound property} \iff \text{MCT} \iff \text{Bolzano–Weierstrass} \iff \text{Nested intervals} \iff \text{Cauchy completeness}.
$$

We proved them in the order LUB $\Rightarrow$ MCT $\Rightarrow$ BW $\Rightarrow$ Cauchy. Each can be taken as the axiom.

---

## 3. Series

### 3.1 Basics

$\sum_{n=1}^\infty a_n$ converges if the partial sums $s_N = \sum_{n=1}^N a_n$ converge.

- **Cauchy criterion:** $\sum a_n$ converges iff for every $\varepsilon > 0$ there is $N$ with $\left|\sum_{k=m+1}^n a_k\right| < \varepsilon$ for all $n > m \ge N$.
- **$n$th-term test:** if $\sum a_n$ converges, then $a_n \to 0$. The converse fails: $\sum 1/n$ diverges.
- **Geometric series:** $\sum_{n\ge0} r^n = 1/(1-r)$ for $|r| < 1$, and it diverges for $|r| \ge 1$.
- **Harmonic series diverges:** group the terms as $1 + \tfrac12 + (\tfrac13 + \tfrac14) + (\tfrac15 + \cdots + \tfrac18) + \cdots$, with each group at least $\tfrac12$.

### 3.2 Tests for non-negative series

For $a_n \ge 0$ the partial sums increase, so the series converges iff the partial sums are bounded (MCT). All of the following tests rest on this.

- **Comparison:** $0 \le a_n \le b_n$ and $\sum b_n$ converges $\Rightarrow$ $\sum a_n$ converges.
- **Limit comparison:** $a_n, b_n > 0$ and $a_n/b_n \to L \in (0,\infty)$ $\Rightarrow$ both converge or both diverge.
- **Cauchy condensation:** for decreasing $a_n \ge 0$, $\sum a_n$ converges iff $\sum 2^k a_{2^k}$ converges. Proof by grouping in dyadic blocks (problem 10). Consequence: **$\sum 1/n^p$ converges iff $p > 1$.**
- **Integral test:** for decreasing positive continuous $f$, $\sum f(n)$ converges iff $\int_1^\infty f$ converges.
- **Ratio test:** if $|a_{n+1}/a_n| \to L$, the series converges absolutely when $L < 1$ and diverges when $L > 1$. $L = 1$ tells you nothing (compare $1/n$ and $1/n^2$).
- **Root test:** with $L = \limsup |a_n|^{1/n}$, the same conclusions. The root test is stronger than the ratio test.

*Ratio test proof idea.* If $L < r < 1$, then $|a_{n+1}| \le r|a_n|$ for $n \ge N$, so $|a_n| \le |a_N| r^{n-N}$; compare with a geometric series.

### 3.3 Absolute and conditional convergence

**Theorem.** If $\sum |a_n|$ converges, then $\sum a_n$ converges.

*Proof.* Cauchy criterion and the triangle inequality: $\left|\sum_{m+1}^n a_k\right| \le \sum_{m+1}^n |a_k|$. $\square$

**Alternating series test.** If $a_n \downarrow 0$ (decreasing to $0$), then $\sum (-1)^{n+1}a_n$ converges, and the tail after $N$ terms is at most $a_{N+1}$ in absolute value.

*Proof idea.* The even partial sums increase, the odd ones decrease, they are interleaved, and their difference $a_{2n+1} \to 0$.

**Conditional convergence:** convergent but not absolutely convergent, for example $\sum (-1)^{n+1}/n = \ln 2$.

**Rearrangements.**

- If $\sum a_n$ converges absolutely, every rearrangement converges to the same sum (problem 25).
- **Riemann's rearrangement theorem:** if $\sum a_n$ converges conditionally, then for every $L \in [-\infty, \infty]$ some rearrangement converges to $L$.

*Idea.* The positive terms and the negative terms each sum to infinity separately, but the terms tend to $0$. Add positive terms until you pass $L$, then negative terms until you drop below $L$, and repeat. The overshoots shrink to $0$.

Moral: infinite sums of signed terms are not "sums" in the finite sense unless they converge absolutely. This is why the Lebesgue integral (3.1) is built on absolute integrability.

---

## 4. Topology of the real line

### 4.1 Open and closed sets

$O \subseteq \mathbb{R}$ is **open** if for every $x \in O$ there is $\varepsilon > 0$ with $(x - \varepsilon, x+\varepsilon) \subseteq O$. A point $x$ is a **limit point** of $A$ if every neighbourhood of $x$ contains a point of $A$ other than $x$. Equivalently, $x = \lim a_n$ for some sequence $a_n \in A$ with $a_n \ne x$. $F$ is **closed** if it contains all its limit points. The **closure** is $\bar A = A \cup \lbrace\text{limit points of } A\rbrace$, the smallest closed set containing $A$.

**Theorem.** $F$ is closed iff $F^c$ is open. Arbitrary unions and finite intersections of open sets are open. Dually, arbitrary intersections and finite unions of closed sets are closed.

Warnings: "closed" is not the opposite of "open". $\mathbb{R}$ and $\varnothing$ are both open and closed; $[0,1)$ is neither. Infinite intersections of open sets need not be open: $\bigcap (-1/n, 1/n) = \lbrace 0\rbrace$.

Every open subset of $\mathbb{R}$ is a countable disjoint union of open intervals. (Each component is an interval, and each contains a rational.)

### 4.2 Compactness

**Definition (sequential).** $K$ is *compact* if every sequence in $K$ has a subsequence converging to a point of $K$.

**Definition (open cover).** $K$ is *compact* if every open cover of $K$ has a finite subcover.

**Theorem (Heine–Borel).** For $K \subseteq \mathbb{R}$, the following are equivalent:

1. $K$ is sequentially compact.
2. $K$ is closed and bounded.
3. Every open cover of $K$ has a finite subcover.

*Proof sketch.*

- (2 $\Rightarrow$ 1): Bolzano–Weierstrass gives a convergent subsequence, and closedness keeps its limit in $K$.
- (1 $\Rightarrow$ 2): if $K$ is unbounded, pick $|x_n| > n$; no subsequence converges. If $x$ is a limit point not in $K$, a sequence in $K$ converging to $x$ has all its subsequences converging to $x \notin K$.
- (2 $\Rightarrow$ 3): suppose an open cover of $K \subseteq [a,b]$ has no finite subcover. Bisect $[a,b]$. At least one half meets $K$ in a set with no finite subcover. Repeat to get nested intervals $I_n$ with lengths tending to $0$. Their intersection is a point $x$, which lies in $K$ because $K$ is closed. Some open set $O$ in the cover contains $x$, and then $O$ contains $I_n$ for large $n$, contradicting "no finite subcover".
- (3 $\Rightarrow$ 2): the cover by $(-n, n)$ gives boundedness. For closedness, if $x \notin K$ were a limit point, the sets $\lbrace y : |y - x| > 1/n\rbrace$ would cover $K$ with no finite subcover. $\square$

In general metric spaces (2.1), sequential compactness is equivalent to open-cover compactness, but "closed and bounded" is *not* enough. The closed unit ball of an infinite-dimensional Banach space is closed and bounded but not compact (3.2).

### 4.3 Connectedness and the Cantor set

$E \subseteq \mathbb{R}$ is **connected** iff it is an interval: whenever $a < c < b$ and $a, b \in E$, then $c \in E$. This is the topological content of the Intermediate Value Theorem.

**The Cantor set** $C = \bigcap_n C_n$, where $C_0 = [0,1]$ and $C_{n+1}$ removes the open middle third of each interval of $C_n$.

- $C$ is compact (an intersection of closed subsets of $[0,1]$).
- $C$ has total length $0$, since $C_n$ has length $(2/3)^n$.
- $C$ is uncountable: $C$ is the set of $x \in [0,1]$ with a ternary expansion using only the digits $0$ and $2$, which is in bijection with $\lbrace0,1\rbrace^\mathbb{N}$.
- $C$ contains no interval, and every point of $C$ is a limit point of $C$ (it is *perfect*).

The Cantor set is the universal counterexample: uncountable but of measure zero, compact but nowhere dense. You will meet it again in 3.1 (the Cantor function).

---

## 5. Limits and continuity

### 5.1 Functional limits

For $f : A \to \mathbb{R}$ and $c$ a limit point of $A$: $\lim_{x \to c} f(x) = L$ if

$$
\forall\varepsilon > 0\ \exists \delta > 0\ \forall x \in A : 0 < |x - c| < \delta \implies |f(x) - L| < \varepsilon .
$$

**Sequential characterisation.** $\lim_{x\to c} f(x) = L$ iff $f(x_n) \to L$ for *every* sequence $x_n \in A \setminus\lbrace c\rbrace$ with $x_n \to c$.

This turns the sequence theorems into function theorems, and gives the standard way to prove that a limit does *not* exist: find two sequences with different limits of $f(x_n)$. For example, $\sin(1/x)$ at $0$ along $x_n = 1/(2\pi n)$ and along $y_n = 1/(2\pi n + \pi/2)$.

### 5.2 Continuity

$f$ is **continuous at $c \in A$** if

$$
\forall \varepsilon > 0\ \exists\delta > 0\ \forall x \in A : |x - c| < \delta \implies |f(x) - f(c)| < \varepsilon .
$$

Equivalently, $x_n \to c$ implies $f(x_n) \to f(c)$. Sums, products, quotients (with non-zero denominators) and compositions of continuous functions are continuous.

**Topological characterisation.** $f : \mathbb{R} \to \mathbb{R}$ is continuous iff $f^{-1}(O)$ is open for every open $O$. This becomes the definition in 2.1.

**Examples to know.**

- **Dirichlet's function** ($1$ on $\mathbb{Q}$, $0$ elsewhere) is discontinuous everywhere.
- **Thomae's function** ($1/q$ at $p/q$ in lowest terms, $0$ at irrationals) is continuous exactly at the irrationals (problem 22).
- $x\sin(1/x)$ (extended by $0$) is continuous at $0$; $\sin(1/x)$ cannot be extended continuously to $0$.

### 5.3 Continuous functions on compact sets

**Theorem.** If $f$ is continuous on a compact set $K$, then $f(K)$ is compact.

*Proof.* Let $(y_n) = (f(x_n))$ be a sequence in $f(K)$. Some subsequence $x_{n_k} \to x \in K$, and by continuity $f(x_{n_k}) \to f(x) \in f(K)$. $\square$

**Extreme Value Theorem (EVT).** A continuous $f$ on a compact $K \neq \varnothing$ is bounded and attains its maximum and minimum.

*Proof.* $f(K)$ is compact, hence closed and bounded, so it contains its sup and inf. $\square$

### 5.4 Uniform continuity

$f$ is **uniformly continuous** on $A$ if

$$
\forall\varepsilon > 0\ \exists \delta > 0\ \forall x, y \in A : |x - y| < \delta \implies |f(x) - f(y)| < \varepsilon .
$$

The difference from continuity is the order of the quantifiers: here $\delta$ cannot depend on the point.

*Non-examples.* $x^2$ on $\mathbb{R}$ (diagnostic B5) and $1/x$ on $(0,1)$: points close together near $0$ have far-apart values.

**Sequential criterion for failure.** $f$ is not uniformly continuous on $A$ iff there are $\varepsilon_0 > 0$ and sequences $x_n, y_n \in A$ with $|x_n - y_n| \to 0$ but $|f(x_n) - f(y_n)| \ge \varepsilon_0$.

**Theorem (Heine–Cantor).** A function continuous on a compact set is uniformly continuous there.

*Proof.* If not, take $x_n, y_n$ as in the criterion. By compactness, $x_{n_k} \to x \in K$, and then $y_{n_k} \to x$ too. Continuity at $x$ gives $|f(x_{n_k}) - f(y_{n_k})| \to 0$, a contradiction. $\square$

Lipschitz functions ($|f(x) - f(y)| \le M|x - y|$) are uniformly continuous with $\delta = \varepsilon/M$. $\sqrt x$ on $[0,\infty)$ is uniformly continuous but not Lipschitz (problem 6).

### 5.5 The Intermediate Value Theorem

**Theorem (IVT).** If $f$ is continuous on $[a,b]$ and $L$ lies between $f(a)$ and $f(b)$, then $f(c) = L$ for some $c \in [a,b]$.

*Proof (via sup).* Assume $f(a) < L < f(b)$. Let $c = \sup\lbrace x \in [a,b] : f(x) < L\rbrace$. If $f(c) < L$, continuity keeps $f < L$ a bit to the right of $c$ (and $c < b$), contradicting the definition of $c$. If $f(c) > L$, continuity keeps $f > L$ on an interval $(c - \delta, c]$; then $c - \delta$ is a smaller upper bound, again a contradiction. So $f(c) = L$. $\square$

Topologically, the continuous image of a connected set is connected, and connected subsets of $\mathbb{R}$ are intervals.

**Monotone and continuous inverse.** A continuous injective function on an interval is strictly monotone, and its inverse is continuous. (Problem 24 uses this.)

---

## 6. Differentiation

### 6.1 The derivative

$$
f'(c) = \lim_{x \to c}\frac{f(x) - f(c)}{x - c}.
$$

Differentiable implies continuous: $f(x) - f(c) = \frac{f(x) - f(c)}{x - c}(x - c) \to f'(c)\cdot 0$. The converse fails: $|x|$ at $0$. Worse, there are continuous functions that are differentiable nowhere. Abbott 5.4 uses $g(x) = \sum_{n \ge 0} 2^{-n} h(2^n x)$, where $h$ is a periodic "sawtooth"; Weierstrass's original example was a series of the form $\sum a^n \cos(b^n \pi x)$.

Product, quotient and chain rules. For the chain rule, the careful proof avoids dividing by $g(x) - g(c)$, which may be $0$. (Abbott 5.2.)

### 6.2 Mean value theorems

**Interior extremum theorem.** If $f$ is differentiable at an interior maximum or minimum $c$, then $f'(c) = 0$.

**Rolle's theorem.** If $f$ is continuous on $[a,b]$, differentiable on $(a,b)$, and $f(a) = f(b)$, then $f'(c) = 0$ for some $c \in (a,b)$.

*Proof.* By EVT, $f$ attains a max and a min on $[a,b]$. If both are at endpoints, $f$ is constant. Otherwise one is interior, and the interior extremum theorem applies. $\square$

**Mean Value Theorem (MVT).** Under the same continuity and differentiability hypotheses (without $f(a) = f(b)$), there is $c \in (a,b)$ with $f'(c) = \dfrac{f(b) - f(a)}{b-a}$.

*Proof.* Apply Rolle to $g(x) = f(x) - \frac{f(b)-f(a)}{b-a}(x - a)$. $\square$

**Cauchy MVT.** $\left(f(b) - f(a)\right)g'(c) = \left(g(b) - g(a)\right)f'(c)$ for some $c$. Apply Rolle to $h = (f(b)-f(a))g - (g(b)-g(a))f$.

**Consequences:** $f' = 0$ on an interval $\Rightarrow$ $f$ is constant; $f' > 0$ $\Rightarrow$ strictly increasing; $|f'| \le M$ $\Rightarrow$ $M$-Lipschitz.

**L'Hôpital's rule ($0/0$).** If $f(x), g(x) \to 0$ as $x \to a$ and $f'(x)/g'(x) \to L$, then $f(x)/g(x) \to L$. Proof from Cauchy MVT.

### 6.3 Darboux's theorem

**Theorem.** If $f$ is differentiable on $[a,b]$ and $f'(a) < \alpha < f'(b)$, then $f'(c) = \alpha$ for some $c \in (a,b)$.

So derivatives have the intermediate value property even when they are not continuous. A derivative cannot have a jump discontinuity.

*Proof idea.* $g(x) = f(x) - \alpha x$ has $g'(a) < 0 < g'(b)$, so its minimum on $[a,b]$ is not at an endpoint; then $g'(c) = 0$ at the interior minimum.

*Example.* $f(x) = x^2\sin(1/x)$, $f(0) = 0$, is differentiable everywhere with $f'(0) = 0$, but $f'$ is discontinuous at $0$.

### 6.4 Taylor's theorem

**Theorem (Taylor, Lagrange remainder).** Let $f$ be $(n+1)$ times differentiable on an open interval containing $x_0$ and $x$. Then

$$
f(x) = \sum_{k=0}^{n} \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k + \frac{f^{(n+1)}(c)}{(n+1)!}(x - x_0)^{n+1}
$$

for some $c$ strictly between $x_0$ and $x$.

*Proof.* Let $P_n$ be the Taylor polynomial and choose $M$ with $f(x) - P_n(x) = M(x - x_0)^{n+1}$. Put $g(t) = f(t) - P_n(t) - M(t - x_0)^{n+1}$. Then $g(x_0) = g'(x_0) = \cdots = g^{(n)}(x_0) = 0$ and $g(x) = 0$. Rolle gives $x_1$ between $x_0$ and $x$ with $g'(x_1) = 0$. Rolle again, on $[x_0, x_1]$, gives $x_2$ with $g''(x_2) = 0$. Continuing, we get $x_{n+1}$ with $g^{(n+1)}(x_{n+1}) = 0$, that is, $f^{(n+1)}(x_{n+1}) - (n+1)!\,M = 0$. Take $c = x_{n+1}$. $\square$

**Uses:** error estimates (problem 16); proving inequalities such as $e^x \ge 1 + x$ and $\cos x \ge 1 - x^2/2$; the second-derivative test.

**Warning.** A smooth function need not equal its Taylor series. $f(x) = e^{-1/x^2}$ (with $f(0) = 0$) has all derivatives $0$ at $0$, so its Taylor series is identically $0$, but $f \ne 0$. Functions that *do* equal their Taylor series locally are called *real-analytic*. In complex analysis (2.2), every complex-differentiable function is analytic, which is a striking contrast.

---

## 7. The Riemann integral

### 7.1 Darboux sums

Let $f$ be bounded on $[a,b]$. A **partition** is $P = \lbrace a = x_0 < x_1 < \cdots < x_n = b \rbrace$. Let $M_k = \sup_{[x_{k-1},x_k]} f$, $m_k = \inf_{[x_{k-1},x_k]} f$ and $\Delta x_k = x_k - x_{k-1}$. Then

$$
U(f,P) = \sum_{k=1}^n M_k \Delta x_k, \qquad L(f,P) = \sum_{k=1}^n m_k \Delta x_k .
$$

**Refinement lemma.** If $P \subseteq Q$, then $L(f,P) \le L(f,Q) \le U(f,Q) \le U(f,P)$. Hence $L(f,P_1) \le U(f,P_2)$ for *any* two partitions (compare both with $P_1 \cup P_2$).

**Definition.** The upper integral is $U(f) = \inf_P U(f,P)$ and the lower integral is $L(f) = \sup_P L(f,P)$. Always $L(f) \le U(f)$. $f$ is **Riemann integrable** if $L(f) = U(f)$, and the common value is $\int_a^b f$.

### 7.2 Integrability

**Criterion.** A bounded $f$ is integrable iff for every $\varepsilon > 0$ there is a partition $P$ with $U(f,P) - L(f,P) < \varepsilon$.

**Theorem.** Continuous functions on $[a,b]$ are integrable.

*Proof.* By Heine–Cantor, $f$ is uniformly continuous. Given $\varepsilon > 0$, choose $\delta$ with $|x - y| < \delta \Rightarrow |f(x) - f(y)| < \varepsilon/(b-a)$. Take $P$ with all $\Delta x_k < \delta$. By EVT, $M_k$ and $m_k$ are attained at points less than $\delta$ apart, so $M_k - m_k < \varepsilon/(b-a)$. Then $U - L < \varepsilon$. $\square$

**Theorem.** Monotone functions on $[a,b]$ are integrable. (With $n$ equal subintervals, $U - L = (f(b) - f(a))(b-a)/n$, a telescoping sum.)

Also: a bounded function with finitely many discontinuities is integrable. More generally:

**Lebesgue's criterion** (statement; Abbott 7.6). A bounded $f$ is Riemann integrable iff its set of discontinuities has measure zero (can be covered by intervals of arbitrarily small total length).

So Thomae's function is integrable (its discontinuities are the countable set $\mathbb{Q}$), and Dirichlet's is not (discontinuous everywhere).

### 7.3 Properties

Linearity, monotonicity ($f \le g \Rightarrow \int f \le \int g$), additivity $\int_a^b = \int_a^c + \int_c^b$, and $\left|\int f\right| \le \int |f|$. If $f$ is integrable, so are $|f|$, $f^2$ and $fg$ (for integrable $g$).

### 7.4 The Fundamental Theorem of Calculus

**FTC part 2 (evaluation).** If $f$ is integrable on $[a,b]$ and $F$ is differentiable on $[a,b]$ with $F' = f$, then $\int_a^b f = F(b) - F(a)$.

*Proof.* For any partition $P$, apply the MVT on each $[x_{k-1}, x_k]$: $F(x_k) - F(x_{k-1}) = f(c_k)\Delta x_k$ for some $c_k$. Summing, $F(b) - F(a) = \sum f(c_k)\Delta x_k$, which lies between $L(f,P)$ and $U(f,P)$. Since this holds for every $P$, $F(b) - F(a)$ lies between $L(f)$ and $U(f)$, which are both equal to $\int_a^b f$. $\square$

**FTC part 1 (differentiation).** If $f$ is integrable on $[a,b]$ and $G(x) = \int_a^x f$, then $G$ is (Lipschitz) continuous, and if $f$ is continuous at $c$ then $G'(c) = f(c)$.

*Proof.* $|G(y) - G(x)| \le M|y - x|$ where $M = \sup|f|$. For differentiability at $c$:

$$
\left|\frac{G(c+h) - G(c)}{h} - f(c)\right| = \left|\frac1h\int_c^{c+h}\left(f(t) - f(c)\right)dt\right| \le \sup_{|t - c| \le |h|}|f(t) - f(c)|,
$$

which tends to $0$ as $h \to 0$ by continuity at $c$. $\square$

Consequences: integration by parts and substitution (from the product and chain rules plus FTC 2).

**Limitation.** The Riemann integral does not handle limits well: a pointwise limit of integrable functions need not be integrable (enumerate the rationals $q_1, q_2, \ldots$ and let $f_n$ be the indicator of $\lbrace q_1,\dots,q_n\rbrace$; the limit is Dirichlet's function). Fixing this is the motivation for the Lebesgue integral in [3.1](../../03-masters-core/3.1-measure-integration/).

---

## 8. Sequences and series of functions

### 8.1 Pointwise versus uniform convergence

$f_n \to f$ **pointwise** on $A$ if $f_n(x) \to f(x)$ for each $x \in A$. Here $N$ may depend on $x$.

$f_n \to f$ **uniformly** on $A$ if

$$
\forall\varepsilon > 0\ \exists N\ \forall n \ge N\ \forall x \in A : |f_n(x) - f(x)| < \varepsilon,
$$

equivalently $\lVert f_n - f\rVert_\infty := \sup_{x \in A}|f_n(x) - f(x)| \to 0$.

To test for uniform convergence, compute (or bound) $\sup_x |f_n(x) - f(x)|$, usually by calculus: find the maximum of $|f_n - f|$.

**Cauchy criterion.** $(f_n)$ converges uniformly iff $\forall\varepsilon\ \exists N\ \forall m,n \ge N : \lVert f_m - f_n\rVert_\infty < \varepsilon$. In other words, the bounded functions on $A$ with the sup norm form a complete space (3.2).

### 8.2 Uniform convergence and continuity and integrals

**Theorem.** A uniform limit of continuous functions is continuous.

*Proof ($\varepsilon/3$ argument).*

$$
|f(x) - f(c)| \le |f(x) - f_N(x)| + |f_N(x) - f_N(c)| + |f_N(c) - f(c)|.
$$

Choose $N$ to make the outer two terms less than $\varepsilon/3$ for *all* $x$ (uniformity), then $\delta$ to make the middle term less than $\varepsilon/3$ (continuity of $f_N$). $\square$

**Theorem.** If $f_n \to f$ uniformly on $[a,b]$ and each $f_n$ is integrable, then $f$ is integrable and $\int_a^b f_n \to \int_a^b f$.

*Proof idea.* $\left|\int f_n - \int f\right| \le (b-a)\lVert f_n - f\rVert_\infty$. Integrability of $f$ follows because $U(f,P) - L(f,P) \le U(f_n,P) - L(f_n,P) + 2(b-a)\lVert f_n - f\rVert_\infty$.

**Counterexamples (pointwise is not enough):**

- $x^n$ on $[0,1]$: continuous functions with a discontinuous pointwise limit.
- $f_n = n\,\mathbf{1}_{(0,1/n)}$, or a continuous "tent" of height $n$ on the base $[0, 2/n]$: $f_n \to 0$ pointwise on $[0,1]$, but $\int_0^1 f_n = 1$ for every $n \ge 2$.
- $nx/(1 + n^2x^2)$: pointwise limit $0$, not uniform (problem 20).

### 8.3 Uniform convergence and derivatives

Uniform convergence of $f_n$ does **not** control derivatives. $f_n(x) = \sin(nx)/\sqrt n \to 0$ uniformly, but $f_n'(0) = \sqrt n \to \infty$ (problem 21).

**Differentiation theorem.** Let $f_n$ be differentiable on $[a,b]$, with $f_n' \to g$ uniformly and $(f_n(x_0))$ convergent for some $x_0$. Then $f_n$ converges uniformly to some $f$, $f$ is differentiable, and $f' = g$.

*Proof under the extra assumption that each $f_n'$ is continuous.* By FTC, $f_n(x) = f_n(x_0) + \int_{x_0}^x f_n'$. The right side converges uniformly to $f(x) := L + \int_{x_0}^x g$, where $L = \lim f_n(x_0)$. Here $g$ is continuous (a uniform limit of continuous functions), so FTC 1 gives $f' = g$. $\square$

The general proof (Abbott 6.3) uses the MVT instead of the FTC.

### 8.4 Series of functions and the M-test

$\sum f_n$ converges uniformly if its partial sums do. Each of the theorems above transfers to series: a uniformly convergent series of continuous functions is continuous and can be integrated term by term; if $\sum f_n'$ converges uniformly (and $\sum f_n$ converges at one point), then it can be differentiated term by term.

**Weierstrass M-test.** If $|f_n(x)| \le M_n$ for all $x \in A$ and $\sum M_n < \infty$, then $\sum f_n$ converges uniformly (and absolutely) on $A$.

*Proof.* Cauchy criterion: $\left|\sum_{m+1}^n f_k(x)\right| \le \sum_{m+1}^n M_k$, uniformly in $x$. $\square$

### 8.5 Power series

$\sum_{n\ge0} a_n x^n$ has **radius of convergence**

$$
R = \frac{1}{\limsup_{n\to\infty}|a_n|^{1/n}} \in [0,\infty] \quad \text{(Cauchy–Hadamard)}.
$$

The series converges absolutely for $|x| < R$ and diverges for $|x| > R$ (root test). At $|x| = R$ anything can happen: $\sum x^n/n$ converges at $-1$ and diverges at $1$.

- **Uniform on compact subintervals:** for $0 < r < R$, the M-test with $M_n = |a_n| r^n$ gives uniform convergence on $[-r, r]$. Hence the sum is continuous on $(-R, R)$. Convergence need not be uniform on all of $(-R,R)$: $\sum x^n$ on $(-1,1)$.
- **Termwise differentiation:** $\sum n a_n x^{n-1}$ has the same radius ($n^{1/n} \to 1$), so the sum is differentiable on $(-R,R)$ with the termwise derivative. By induction it is $C^\infty$, and $a_n = f^{(n)}(0)/n!$, so a power series is its own Taylor series.
- **Abel's theorem** (statement): if $\sum a_nR^n$ converges, then the series converges uniformly on $[0,R]$, and the sum is continuous from the left at $R$. This justifies $\ln 2 = 1 - \frac12 + \frac13 - \cdots$.

**Weierstrass approximation theorem** (statement; Abbott 6.7). Every continuous function on $[a,b]$ is a uniform limit of polynomials. It generalises to the Stone–Weierstrass theorem (2.1), which is a key density result in functional analysis.

---

## 9. Common pitfalls

1. **Letting $N$ or $\delta$ depend on the wrong things.** In uniform statements, $\delta$ depends on $\varepsilon$ only. Always write $N(\varepsilon)$ or $\delta(\varepsilon, c)$ explicitly to keep track.
2. **Dividing by something that can be zero** (the chain rule; $a_n/b_n$ when $b_n$ might be $0$ for small $n$).
3. **"$a_n < b_n$, so $\lim a_n < \lim b_n$."** False; only $\le$ follows.
4. **Interchanging limits without justification:** $\lim_n \int f_n$ versus $\int \lim_n f_n$, $\frac{d}{dx}\sum$ versus $\sum \frac{d}{dx}$, $\lim_m\lim_n$ versus $\lim_n\lim_m$. Each needs a theorem, usually uniform convergence. (In 3.1, the monotone and dominated convergence theorems give much more convenient conditions.)
5. **The ratio test with limit 1** gives no information.
6. **Assuming a sequence converges before proving it** ("let $L = \lim a_n$; then $L = \sqrt{2 + L}$…"). First prove convergence (MCT), then compute the limit.
7. **"Closed and bounded implies compact"** is a theorem about $\mathbb{R}^n$, not a definition. It fails in infinite dimensions.
8. **Confusing $\sup$ with $\max$.** $\sup(0,1) = 1$ is not attained.
9. **Thinking "differentiable" means "$C^1$".** $x^2\sin(1/x)$ is differentiable with a discontinuous derivative.
10. **Forgetting boundedness** in the Riemann integral: $1/\sqrt x$ on $(0,1]$ is not Riemann integrable in the proper sense, only as an improper integral.

---

## 10. Connections forward

| Topic here | Where it goes |
|---|---|
| Completeness of $\mathbb{R}$, Cauchy sequences | Complete metric spaces, Banach fixed-point theorem, completion ([2.1](../../02-bridge/2.1-metric-spaces-topology/)); Banach and Hilbert spaces ([3.2](../../03-masters-core/3.2-functional-analysis/)) |
| Open, closed, compact sets; Heine–Borel | Metric and topological spaces (2.1); compactness in $\mathbb{R}^n$ ([2.4](../../02-bridge/2.4-analysis-in-Rn/)); failure of Heine–Borel in infinite dimensions (3.2) |
| Uniform continuity, uniform convergence | Arzelà–Ascoli and Stone–Weierstrass (2.1); the sup-norm space $C[a,b]$ (3.2) |
| MVT, Taylor | Multivariable Taylor and the second-derivative test ([1.5](../1.5-multivariable-calculus/)); inverse and implicit function theorems (2.4); smooth manifolds ([3.5](../../03-masters-core/3.5-smooth-manifolds/)) |
| Power series, radius of convergence | Holomorphic functions are given locally by power series ([2.2](../../02-bridge/2.2-complex-analysis/)) |
| Riemann integral and its limitations; limsup and liminf | Lebesgue measure and integral; monotone and dominated convergence; Fatou's lemma ([3.1](../../03-masters-core/3.1-measure-integration/)) |
| Cantor set, measure zero, Lebesgue's criterion | Null sets, the Cantor function, "almost everywhere" (3.1) |
| Rearrangements and absolute convergence | Unconditional convergence in Banach spaces; why $L^1$ is the natural space (3.1, 3.2) |
