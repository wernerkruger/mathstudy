# 1.2 Solutions — Real analysis I

Solutions to [problems.md](problems.md). Where a proof is a standard theorem, the version here is the one you should be able to reproduce closed-book.

---

## Warm-up

### 1.

$1 - \frac1n < 1$ for every $n$, so $1$ is an upper bound. Let $\varepsilon > 0$. By the Archimedean property there is $n$ with $\frac1n < \varepsilon$, and then $1 - \frac1n > 1 - \varepsilon$. By the $\varepsilon$-characterisation of the supremum, $\sup = 1$. It is **not attained**, since $1 - \frac1n \ne 1$ for every $n$.

### 2.

*Scratch work.*

$$
\left|\frac{n^2+1}{2n^2-3} - \frac12\right| = \frac{|2n^2 + 2 - 2n^2 + 3|}{2(2n^2 - 3)} = \frac{5}{2(2n^2-3)}.
$$

For $n \ge 2$ we have $n^2 \ge 3$, so $2n^2 - 3 \ge n^2 > 0$, and the expression is at most $\frac{5}{2n^2} \le \frac{5}{2n}$.

*Proof.* Let $\varepsilon > 0$ and choose an integer $N \ge 2$ with $N > \frac{5}{2\varepsilon}$. For $n \ge N$,

$$
\left|\frac{n^2+1}{2n^2-3} - \frac12\right| \le \frac{5}{2n} \le \frac{5}{2N} < \varepsilon. \qquad\square
$$

### 3.

(a) Suppose $a_n \to a$ and $a_n \to b$ with $a \ne b$. Let $\varepsilon = |a - b|/2 > 0$. For $n$ beyond both thresholds, $|a - b| \le |a - a_n| + |a_n - b| < 2\varepsilon = |a - b|$, a contradiction.

(b) With $\varepsilon = 1$ there is $N$ with $|a_n - a| < 1$, and hence $|a_n| < |a| + 1$, for $n \ge N$. So $|a_n| \le \max\lbrace |a_1|, \dots, |a_{N-1}|, |a| + 1\rbrace$ for all $n$.

### 4.

(a) **Converges.** Ratio test:

$$
\frac{a_{n+1}}{a_n} = \frac{(n+1)!}{(n+1)^{n+1}}\cdot\frac{n^n}{n!} = \left(\frac{n}{n+1}\right)^n = \frac{1}{(1 + 1/n)^n} \to \frac1e < 1 .
$$

(b) **Diverges.** First, $n^{1/n} \to 1$: write $n^{1/n} = 1 + h_n$ with $h_n \ge 0$. By the binomial theorem, $n = (1+h_n)^n \ge \binom n2 h_n^2$, so $0 \le h_n \le \sqrt{2/(n-1)} \to 0$ for $n \ge 2$. Hence

$$
\frac{1/n^{1+1/n}}{1/n} = \frac{1}{n^{1/n}} \to 1,
$$

and by limit comparison with the divergent harmonic series, the series diverges.

(c) **Diverges.** $|a_n| = \frac{n}{n+1} \to 1$, so $a_n \not\to 0$, and the $n$th-term test applies.

(d) **Converges, with sum 1.** The series telescopes: the partial sum is $s_N = 1 - \frac{1}{\sqrt{N+1}} \to 1$.

### 5.

*Continuity at 0:* $|f(x) - f(0)| = |x|\,|\sin(1/x)| \le |x|$. Given $\varepsilon$, take $\delta = \varepsilon$.

*Not differentiable at 0:* the difference quotient is $\dfrac{f(h) - f(0)}{h} = \sin(1/h)$. Along $h_n = \frac{1}{2\pi n} \to 0$ it equals $0$. Along $k_n = \frac{1}{2\pi n + \pi/2} \to 0$ it equals $1$. By the sequential characterisation, the limit as $h \to 0$ does not exist.

### 6.

**Claim:** $|\sqrt x - \sqrt y| \le \sqrt{|x - y|}$ for $x, y \ge 0$.

Assume $x \ge y$. Then $\left(\sqrt y + \sqrt{x - y}\right)^2 = x + 2\sqrt{y(x-y)} \ge x$, so $\sqrt x \le \sqrt y + \sqrt{x-y}$, which is the claim.

Given $\varepsilon > 0$, let $\delta = \varepsilon^2$. Then $|x - y| < \delta$ implies $|\sqrt x - \sqrt y| < \varepsilon$. So $\sqrt x$ is **uniformly continuous**.

**Not Lipschitz:** $\dfrac{|\sqrt x - \sqrt 0|}{|x - 0|} = \dfrac{1}{\sqrt x} \to \infty$ as $x \to 0^+$, so no constant $M$ works.

---

## Core

### 7.

(a) Let $(a_n)$ be increasing and bounded, and let $s = \sup\lbrace a_n\rbrace$, which exists by completeness. Given $\varepsilon > 0$, $s - \varepsilon$ is not an upper bound, so $a_N > s - \varepsilon$ for some $N$. For $n \ge N$, $s - \varepsilon < a_N \le a_n \le s$, so $|a_n - s| < \varepsilon$. The decreasing case is symmetric, with $\inf$.

(b) *Bounded above by 2* (induction): $a_1 = \sqrt2 < 2$, and if $a_n < 2$ then $a_{n+1} = \sqrt{2 + a_n} < \sqrt 4 = 2$. Also $a_n > 0$.

*Increasing:* $a_{n+1}^2 - a_n^2 = 2 + a_n - a_n^2 = (2 - a_n)(1 + a_n) > 0$. Since both terms are positive, $a_{n+1} > a_n$.

By MCT, $a_n \to L$ for some $L$ with $\sqrt2 \le L \le 2$. Squaring the recursion gives $a_{n+1}^2 = 2 + a_n$. Letting $n \to \infty$ (limit laws), $L^2 = 2 + L$, so $L = 2$ or $L = -1$. Since $L > 0$, **$L = 2$**.

### 8.

**Lemma.** Every sequence has a monotone subsequence.

Call $m$ a *peak* if $a_m \ge a_n$ for all $n > m$.

- If there are infinitely many peaks $m_1 < m_2 < \cdots$, then $a_{m_1} \ge a_{m_2} \ge \cdots$, a decreasing subsequence.
- If there are finitely many, let $n_1$ be larger than all of them. Since $n_1$ is not a peak, there is $n_2 > n_1$ with $a_{n_2} > a_{n_1}$. Since $n_2$ is not a peak, there is $n_3 > n_2$ with $a_{n_3} > a_{n_2}$. Continuing (by induction) gives an increasing subsequence.

**Bolzano–Weierstrass.** If $(a_n)$ is bounded, its monotone subsequence is bounded, so it converges by MCT. $\square$

### 9.

(a) Let $(a_n)$ be Cauchy.

*Bounded:* with $\varepsilon = 1$, choose $N$ with $|a_n - a_N| < 1$ for $n \ge N$. Then $|a_n| \le \max\lbrace|a_1|,\dots,|a_{N-1}|, |a_N| + 1\rbrace$.

*Subsequence:* by Bolzano–Weierstrass, $a_{n_k} \to a$ for some $a$.

*Whole sequence:* given $\varepsilon > 0$, choose $N$ with $|a_m - a_n| < \varepsilon/2$ for $m,n \ge N$, then $k$ with $n_k \ge N$ and $|a_{n_k} - a| < \varepsilon/2$. For $n \ge N$, $|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \varepsilon$.

(b) $H_{2n} - H_n = \sum_{k=n+1}^{2n}\frac1k \ge n\cdot\frac{1}{2n} = \frac12$, since each of the $n$ terms is at least $\frac{1}{2n}$. So with $\varepsilon = \frac12$, for every $N$ the indices $m = N$ and $n = 2N$ give $|H_n - H_m| \ge \frac12$. The sequence is not Cauchy, hence it diverges, so $\sum 1/k$ diverges.

### 10.

(a) Let $s_n = \sum_{j=1}^n a_j$ and $t_k = \sum_{j=0}^k 2^j a_{2^j}$. Both sequences increase, so each converges iff it is bounded (MCT).

*Upper bound.* Group $s_{2^{k+1}-1}$ into blocks of length $1, 2, 4, \dots, 2^k$, and bound each term in a block by the block's first term (since $a_n$ is decreasing):

$$
s_{2^{k+1}-1} = a_1 + (a_2 + a_3) + (a_4 + \cdots + a_7) + \cdots + \left(a_{2^k} + \cdots + a_{2^{k+1}-1}\right) \le a_1 + 2a_2 + 4a_4 + \cdots + 2^k a_{2^k} = t_k.
$$

So if $(t_k)$ is bounded, so is $(s_n)$ (every $n$ is at most some $2^{k+1} - 1$).

*Lower bound.* Group $s_{2^k}$ as $a_1 + a_2 + (a_3 + a_4) + (a_5 + \cdots + a_8) + \cdots + \left(a_{2^{k-1}+1} + \cdots + a_{2^k}\right)$, and bound each term in a block below by the block's last term:

$$
s_{2^k} \ge a_1 + a_2 + 2a_4 + 4a_8 + \cdots + 2^{k-1}a_{2^k} \ge \frac12\left(a_1 + 2a_2 + 4a_4 + \cdots + 2^k a_{2^k}\right) = \frac{t_k}{2}.
$$

So if $(s_n)$ is bounded, so is $(t_k)$. Hence the two series converge or diverge together. $\square$

(b) If $p \le 0$, then $1/n^p \not\to 0$ and the series diverges. If $p > 0$, then $a_n = n^{-p}$ is decreasing and positive, and

$$
\sum_k 2^k a_{2^k} = \sum_k 2^{k}2^{-kp} = \sum_k \left(2^{1-p}\right)^k,
$$

a geometric series that converges iff $2^{1-p} < 1$, that is, iff $p > 1$.

### 11.

($\Leftarrow$) Let $K$ be closed and bounded and $(x_n)$ a sequence in $K$. By Bolzano–Weierstrass, $x_{n_k} \to x$ for some $x \in \mathbb{R}$. If $x_{n_k} = x$ for infinitely many $k$, then $x \in K$. Otherwise $x$ is a limit point of $K$, and since $K$ is closed, $x \in K$.

($\Rightarrow$) *Bounded:* if not, choose $x_n \in K$ with $|x_n| > n$. Every subsequence is unbounded, so none converges. This contradicts sequential compactness.

*Closed:* let $x$ be a limit point of $K$ and choose $x_n \in K$ with $x_n \to x$. By hypothesis some subsequence converges to a point of $K$. But every subsequence converges to $x$, so $x \in K$.

### 12.

(a) Let $K$ be compact, $f$ continuous on $K$, and $(y_n)$ a sequence in $f(K)$, say $y_n = f(x_n)$ with $x_n \in K$. By compactness, $x_{n_k} \to x \in K$. By (sequential) continuity, $y_{n_k} = f(x_{n_k}) \to f(x) \in f(K)$. So $f(K)$ is sequentially compact.

(b) $f([a,b])$ is compact, hence closed and bounded (problem 11), and non-empty. So $M = \sup f([a,b])$ exists. Since $f([a,b])$ is closed, it contains $M$: either $M$ is in the set, or $M$ is a limit point of it. Hence $M = f(c)$ for some $c$. The minimum is similar.

(c) On $(0,1)$, $f(x) = x$ is continuous with no maximum or minimum, and $f(x) = 1/x$ is unbounded. On $[0,1]$, the discontinuous function $f(x) = x$ for $x < 1$, $f(1) = 0$, has supremum $1$, which is not attained.

### 13.

Let $S = \lbrace x \in [a,b] : f(x) < L\rbrace$. $S$ is non-empty ($a \in S$) and bounded above by $b$. Let $c = \sup S$; then $a \le c \le b$.

*Suppose $f(c) < L$.* Then $c \ne b$ (since $f(b) > L$). By continuity with $\varepsilon = L - f(c)$, there is $\delta > 0$ such that $f(x) < L$ for $x \in [a,b]$ with $|x - c| < \delta$. Shrinking $\delta$, we may assume $c + \delta/2 \le b$. Then $c + \delta/2 \in S$, contradicting that $c$ is an upper bound.

*Suppose $f(c) > L$.* Then $c \ne a$. By continuity there is $\delta \in (0, c - a)$ with $f(x) > L$ for $x \in (c - \delta, c]$. No point of $S$ lies in $(c - \delta, c]$, and no point of $S$ exceeds $c$, so $c - \delta$ is an upper bound for $S$ smaller than $c$. This is a contradiction.

Hence $f(c) = L$, and $c \ne a, b$ since $f(a) < L < f(b)$. $\square$

### 14.

Suppose $f$ is continuous on $[a,b]$ but not uniformly continuous. Then there are $\varepsilon_0 > 0$ and points $x_n, y_n \in [a,b]$ with $|x_n - y_n| < 1/n$ but $|f(x_n) - f(y_n)| \ge \varepsilon_0$ (negate the definition with $\delta = 1/n$). By Bolzano–Weierstrass, $x_{n_k} \to x$, and $x \in [a,b]$ since the interval is closed. Then $y_{n_k} \to x$ too, because $|y_{n_k} - x| \le |y_{n_k} - x_{n_k}| + |x_{n_k} - x|$. By continuity at $x$, $f(x_{n_k}) - f(y_{n_k}) \to f(x) - f(x) = 0$, contradicting $|f(x_{n_k}) - f(y_{n_k})| \ge \varepsilon_0$. $\square$

*$1/x$ on $(0,1)$:* it is continuous as a quotient of continuous functions with a non-zero denominator. Take $x_n = \frac1n$ and $y_n = \frac{1}{n+1}$ (for $n \ge 2$, both in $(0,1)$). Then $|x_n - y_n| \to 0$, but $|f(x_n) - f(y_n)| = 1$. By the sequential criterion, $1/x$ is not uniformly continuous.

### 15.

(a) **Rolle.** If $f$ is continuous on $[a,b]$, differentiable on $(a,b)$, and $f(a) = f(b)$, then $f'(c) = 0$ for some $c \in (a,b)$.

*Proof.* By EVT, $f$ attains a maximum $M$ and a minimum $m$ on $[a,b]$. If both are attained only at endpoints, then $M = m = f(a)$ and $f$ is constant, so $f' = 0$ everywhere. Otherwise an extremum is attained at an interior point $c$.

At an interior maximum $c$, for $h > 0$ we have $\frac{f(c+h) - f(c)}{h} \le 0$, and for $h < 0$ we have $\frac{f(c+h) - f(c)}{h} \ge 0$. Taking limits, $f'(c) \le 0$ and $f'(c) \ge 0$, so $f'(c) = 0$. The minimum is similar. $\square$

**MVT.** Let $g(x) = f(x) - \frac{f(b) - f(a)}{b - a}(x - a)$. Then $g(a) = g(b) = f(a)$, and Rolle gives $c$ with $0 = g'(c) = f'(c) - \frac{f(b)-f(a)}{b-a}$.

(b) For $a < x < y < b$, the MVT gives $f(y) - f(x) = f'(c)(y - x) > 0$.

(c) Let $g(x) = x - \ln(1+x)$ for $x \ge 0$. Then $g(0) = 0$ and $g'(x) = 1 - \frac{1}{1+x} = \frac{x}{1+x} > 0$ for $x > 0$. For $x > 0$, the MVT on $[0,x]$ gives $g(x) = g(x) - g(0) = g'(c)\,x > 0$ for some $c \in (0,x)$.

### 16.

(a) Taylor's theorem for $e^x$ at $x_0 = 0$, evaluated at $x = 1$:

$$
e = \sum_{k=0}^n \frac1{k!} + \frac{e^c}{(n+1)!}, \quad 0 < c < 1 .
$$

The error is $\frac{e^c}{(n+1)!} < \frac{3}{(n+1)!}$. We need $(n+1)! > 3000$. Since $6! = 720$ and $7! = 5040$, take **$n = 6$**: $\sum_{k=0}^6 \frac1{k!} = 2.71805\ldots$, with error less than $3/5040 < 6\times10^{-4}$. (The true error is about $2.3\times10^{-4}$.)

(b) Taylor's theorem for $\cos$ at $0$ with $n = 1$:

$$
\cos x = \cos 0 - (\sin 0)\,x + \frac{-\cos c}{2}x^2 = 1 - \frac{\cos c}{2}x^2
$$

for some $c$ between $0$ and $x$ (for $x = 0$ the claim is trivial). Since $\cos c \le 1$, $\cos x \ge 1 - \frac{x^2}{2}$.

### 17.

Let $P_n = \lbrace 0, \frac1n, \frac2n, \dots, 1\rbrace$. Since $x^2$ is increasing on $[0,1]$, on $[\frac{k-1}{n}, \frac kn]$ the sup is $\frac{k^2}{n^2}$ and the inf is $\frac{(k-1)^2}{n^2}$. So

$$
U(f, P_n) = \sum_{k=1}^n \frac{k^2}{n^3} = \frac{(n+1)(2n+1)}{6n^2}, \qquad L(f, P_n) = \sum_{k=1}^{n} \frac{(k-1)^2}{n^3} = \sum_{j=0}^{n-1}\frac{j^2}{n^3} = \frac{(n-1)(2n-1)}{6n^2}.
$$

Then

$$
U(f,P_n) - L(f,P_n) = \frac{(2n^2 + 3n + 1) - (2n^2 - 3n + 1)}{6n^2} = \frac{1}{n} \to 0,
$$

so $f$ is integrable by the criterion. Both $U(f,P_n)$ and $L(f,P_n)$ tend to $\frac{2}{6} = \frac13$. Since $L(f,P_n) \le \int_0^1 f \le U(f,P_n)$ for every $n$, $\int_0^1 x^2\,dx = \frac13$.

### 18.

(a) Let $\varepsilon > 0$. By uniform convergence choose $N$ with $|f_N(x) - f(x)| < \varepsilon/3$ for **all** $x \in A$. By continuity of $f_N$ at $c$ choose $\delta$ with $|f_N(x) - f_N(c)| < \varepsilon/3$ when $|x - c| < \delta$. Then for such $x$,

$$
|f(x) - f(c)| \le |f(x) - f_N(x)| + |f_N(x) - f_N(c)| + |f_N(c) - f(c)| < \varepsilon .
$$

(b) $\left|\int_a^b f_n - \int_a^b f\right| \le \int_a^b |f_n - f| \le (b-a)\sup_{[a,b]}|f_n - f| \to 0$.

(The hypothesis that $f$ is integrable is in fact automatic; see [notes.md §8.2](notes.md#82-uniform-convergence-and-continuity-and-integrals).)

### 19.

Let $M = \sup_{[a,b]}|f|$, which is finite because integrable functions are bounded. For $x < y$ in $[a,b]$,

$$
|G(y) - G(x)| = \left|\int_x^y f\right| \le M(y - x),
$$

so $G$ is Lipschitz, hence continuous.

Let $f$ be continuous at $c \in (a,b)$, and let $\varepsilon > 0$. Choose $\delta$ such that $|f(t) - f(c)| < \varepsilon$ for $|t - c| < \delta$. For $0 < |h| < \delta$ (with $c + h \in [a,b]$), using $\int_c^{c+h} f(c)\,dt = h f(c)$,

$$
\left|\frac{G(c+h) - G(c)}{h} - f(c)\right| = \frac{1}{|h|}\left|\int_c^{c+h} \left(f(t) - f(c)\right) dt\right| \le \frac{1}{|h|}\cdot|h|\,\varepsilon = \varepsilon .
$$

Hence $G'(c) = f(c)$. $\square$

### 20.

(a) $f_n(0) = 0$. For $x > 0$, $0 \le f_n(x) \le \frac{nx}{n^2x^2} = \frac{1}{nx} \to 0$. So the pointwise limit is $f = 0$.

(b) $f_n(1/n) = \frac{1}{1 + 1} = \frac12$, so $\sup_{[0,1]}|f_n - 0| \ge \frac12$ for all $n$, which does not tend to $0$. The convergence is not uniform. (The "bump" moves towards $0$ without shrinking.)

(c) On $[\delta, 1]$, $|f_n(x)| \le \frac{1}{nx} \le \frac{1}{n\delta} \to 0$, uniformly in $x$.

### 21.

$|f_n(x)| \le \frac{1}{\sqrt n}$ for all $x$, so $\sup|f_n| \to 0$ and $f_n \to 0$ uniformly. The limit $0$ has derivative $0$.

But $f_n'(x) = \sqrt n\cos(nx)$, and at $x = 0$, $f_n'(0) = \sqrt n \to \infty$. So $f_n'(0) \not\to 0$.

*Moral:* uniform convergence of $f_n$ does not let you differentiate the limit term by term. You need uniform convergence of the *derivatives* $f_n'$ (plus convergence of $f_n$ at one point). This is the differentiation theorem in [notes.md §8.3](notes.md#83-uniform-convergence-and-derivatives).

---

## Challenge

### 22.

(a) *At a rational $r = p/q$:* $t(r) = 1/q > 0$. Irrationals $x_n \to r$ exist (for example $r + \sqrt2/n$, intersected with $[0,1]$ by choosing the sign suitably), and $t(x_n) = 0 \not\to t(r)$. So $t$ is discontinuous at $r$.

*At an irrational $x$:* let $\varepsilon > 0$. The set $F_\varepsilon = \lbrace y \in [0,1]\cap\mathbb{Q} : t(y) \ge \varepsilon\rbrace$ consists of the fractions $p/q$ with $q \le 1/\varepsilon$ and $0 \le p \le q$. It is finite, and it does not contain $x$. Let $\delta = \min_{y \in F_\varepsilon}|y - x| > 0$. If $|y - x| < \delta$, then $y \notin F_\varepsilon$, so $t(y) < \varepsilon$, that is, $|t(y) - t(x)| < \varepsilon$. So $t$ is continuous at $x$.

(b) *Lower sums.* Every subinterval contains an irrational, where $t = 0$, and $t \ge 0$, so $L(t,P) = 0$ for every $P$.

*Upper sums.* Let $\varepsilon > 0$ and let $F = F_{\varepsilon/2} = \lbrace r_1 < \cdots < r_m\rbrace$, finite by (a). Choose $\eta > 0$ with $\eta < \frac{\varepsilon}{4m}$ and small enough that the intervals $[r_i - \eta, r_i + \eta]$ are pairwise disjoint. Let $P$ consist of $0$, $1$ and the points $r_i \pm \eta$ that lie in $(0,1)$. The subintervals of $P$ are of two kinds:

- those that contain a point of $F$: these are contained in the intervals $[r_i - \eta, r_i + \eta]$, so their total length is at most $2\eta m < \varepsilon/2$, and $\sup t \le 1$ on each;
- the rest, on which $\sup t \le \varepsilon/2$, and whose total length is at most $1$.

So $U(t,P) < \frac\varepsilon2\cdot 1 + 1\cdot\frac\varepsilon2 = \varepsilon$. Hence $U(t) = 0 = L(t)$, so $t$ is integrable with $\int_0^1 t = 0$.

(This agrees with Lebesgue's criterion: the discontinuity set $\mathbb{Q}\cap[0,1]$ is countable, so it has measure zero.)

### 23.

(a) **M-test.** If $|f_n(x)| \le M_n$ on $A$ and $\sum M_n < \infty$, then $\sum f_n$ converges uniformly on $A$.

*Proof.* Let $S_n = \sum_{k=1}^n f_k$. For $n > m$ and all $x \in A$,

$$
|S_n(x) - S_m(x)| \le \sum_{k=m+1}^n M_k,
$$

which is less than $\varepsilon$ for $m \ge N$ by the Cauchy criterion for $\sum M_k$. So $(S_n)$ is uniformly Cauchy. For each $x$, $S_n(x)$ converges to some $S(x)$ (Cauchy in $\mathbb{R}$). Letting $n \to \infty$ in the inequality gives $|S(x) - S_m(x)| \le \varepsilon$ for all $x$ and $m \ge N$. So the convergence is uniform. $\square$

(b) $\left|\frac{\sin(nx)}{n^3}\right| \le \frac{1}{n^3}$, and $\sum \frac1{n^3} < \infty$. So the series converges uniformly on $\mathbb{R}$. Its partial sums are continuous, so $g$ is continuous (problem 18a).

The termwise derivatives are $\frac{\cos(nx)}{n^2}$. They are continuous, and $\left|\frac{\cos(nx)}{n^2}\right| \le \frac1{n^2}$, so $\sum \frac{\cos(nx)}{n^2}$ converges uniformly on $\mathbb{R}$. The original series converges at $x = 0$ (indeed everywhere). By the differentiation theorem for series (applied on each interval $[-A, A]$), $g$ is differentiable and $g'(x) = \sum \frac{\cos(nx)}{n^2}$. Since this is again a uniform limit of continuous functions, $g$ is in fact $C^1$.

(Differentiating once more would give $-\sum \frac{\sin(nx)}{n}$, for which the M-test fails. The argument stops here.)

### 24.

Suppose $f$ is continuous with $f(f(x)) = -x$ for all $x$.

*$f$ is injective:* if $f(x) = f(y)$ then $-x = f(f(x)) = f(f(y)) = -y$.

*A continuous injective $f : \mathbb{R}\to\mathbb{R}$ is strictly monotone.* Let $T = \lbrace (x,y) \in \mathbb{R}^2 : x < y\rbrace$ and $D(x,y) = f(y) - f(x)$. By injectivity, $D \ne 0$ on $T$. Suppose $D(p) > 0$ and $D(q) < 0$ for some $p, q \in T$. $T$ is convex, so the segment $s \mapsto (1-s)p + sq$, $s \in [0,1]$, stays in $T$. The function $s \mapsto D((1-s)p + sq)$ is continuous on $[0,1]$ and changes sign, so by the IVT it vanishes somewhere, a contradiction. Hence $D$ has constant sign on $T$, so $f$ is strictly increasing or strictly decreasing.

*Conclusion.* If $f$ is strictly increasing, so is $f \circ f$. If $f$ is strictly decreasing, then $f\circ f$ is strictly increasing (a composition of two decreasing functions). Either way $f \circ f$ is strictly increasing, but $x \mapsto -x$ is strictly decreasing. This is a contradiction, so no such $f$ exists.

(Discontinuous solutions do exist. Continuity is essential.)

### 25.

Let $S = \sum_{n=1}^\infty a_n$, and let $t_m = \sum_{k=1}^m a_{\sigma(k)}$ be the partial sums of the rearrangement. Let $\varepsilon > 0$. Since $\sum|a_n|$ converges, choose $N$ with $\sum_{n > N}|a_n| < \varepsilon/2$. Then also

$$
\left|S - \sum_{n=1}^N a_n\right| = \left|\sum_{n > N} a_n\right| \le \sum_{n>N}|a_n| < \frac\varepsilon2 .
$$

Let $M = \max\lbrace \sigma^{-1}(1), \dots, \sigma^{-1}(N)\rbrace$. Then for $m \ge M$, the indices $\sigma(1), \dots, \sigma(m)$ include all of $1, \dots, N$. So $t_m - \sum_{n=1}^N a_n$ is a sum of terms $a_j$ with distinct indices $j > N$, and

$$
\left|t_m - \sum_{n=1}^N a_n\right| \le \sum_{j > N}|a_j| < \frac\varepsilon2 .
$$

By the triangle inequality, $|t_m - S| < \varepsilon$ for all $m \ge M$. So the rearrangement converges to $S$. $\square$

(The rearranged series also converges absolutely: apply the same argument to $\sum |a_n|$.)
