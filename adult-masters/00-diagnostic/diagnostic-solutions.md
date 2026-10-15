# Diagnostic test — solutions and marking rubric

Mark each question out of 4 using the general rubric in the [README](README.md#how-to-score). Under each solution, **Marking** says what earns each level for that question. Then apply the [routing table](README.md#routing-table-what-to-skim-and-what-to-do-in-full).

---

## Section A — Proofs, logic and sets (module 1.1)

### A1

Negation: swap each quantifier and negate the innermost statement. The negation of $P \implies Q$ is $P \wedge \neg Q$.

$$
\exists \varepsilon > 0 \ \forall \delta > 0 \ \exists x \in \mathbb{R} : \ |x - a| < \delta \ \text{ and } \ |f(x) - f(a)| \ge \varepsilon .
$$

The original says $f$ is **continuous at $a$**. The negation says $f$ is **discontinuous at $a$**: there is a fixed tolerance $\varepsilon$ such that, however close you look to $a$, some point $x$ has $f(x)$ at least $\varepsilon$ away from $f(a)$.

**Marking.** 4: correct negation with $\ge$ and "and", plus both interpretations. 3: one slip (for example $>$ instead of $\ge$). 2: quantifiers swapped correctly but the implication negated wrongly. 1: knows it is about continuity only.

### A2

Let $P(n)$ be the statement $\sum_{k=1}^n k^3 = \left(\tfrac{n(n+1)}{2}\right)^2$.

*Base case.* $n=1$: left side $1$, right side $(1 \cdot 2/2)^2 = 1$.

*Inductive step.* Assume $P(n)$. Then

$$
\sum_{k=1}^{n+1} k^3 = \frac{n^2(n+1)^2}{4} + (n+1)^3 = \frac{(n+1)^2\left(n^2 + 4n + 4\right)}{4} = \frac{(n+1)^2 (n+2)^2}{4},
$$

which is $P(n+1)$. By induction $P(n)$ holds for all $n \in \mathbb{N}$.

**Marking.** 4: base case, explicit use of the hypothesis, correct algebra. 3: algebra slip. 2: structure right but hypothesis not visibly used. 1: knows the template only.

### A3

(a) Suppose $f(a) = f(a')$. Applying $g$ gives $g(f(a)) = g(f(a'))$, that is $(g\circ f)(a) = (g \circ f)(a')$. Since $g \circ f$ is injective, $a = a'$. So $f$ is injective.

(b) Let $A = \lbrace 1 \rbrace$, $B = \lbrace 1, 2 \rbrace$, $C = \lbrace 1 \rbrace$, $f(1) = 1$, and $g(1) = g(2) = 1$. Then $g \circ f$ has a one-point domain, so it is injective, but $g$ is not injective.

(c) If $y \in f(A_1 \cap A_2)$ then $y = f(a)$ for some $a$ in both $A_1$ and $A_2$, so $y \in f(A_1)$ and $y \in f(A_2)$. Strict example: $f : \mathbb{R} \to \mathbb{R}$, $f(x) = x^2$, $A_1 = \lbrace -1 \rbrace$, $A_2 = \lbrace 1 \rbrace$. Then $f(A_1 \cap A_2) = f(\varnothing) = \varnothing$, but $f(A_1) \cap f(A_2) = \lbrace 1 \rbrace$.

**Marking.** Roughly 4/3 of a point per part; round to the nearest whole number. Any valid counterexample earns full credit.

### A4

*Reflexive:* $u = 1 \cdot u$. *Symmetric:* if $v = \lambda u$ with $\lambda > 0$ then $u = \lambda^{-1} v$ and $\lambda^{-1} > 0$. *Transitive:* if $v = \lambda u$ and $w = \mu v$ then $w = (\mu\lambda) u$ with $\mu\lambda > 0$.

The class of $u$ is $\lbrace \lambda u : \lambda > 0 \rbrace$, the **open ray** from the origin through $u$ (the origin itself excluded). Each ray meets the unit circle $S^1$ in exactly one point, $u / \lVert u \rVert$. The map $[u] \mapsto u/\lVert u\rVert$ is well defined, because $\lambda u / \lVert \lambda u \rVert = u / \lVert u \rVert$ for $\lambda > 0$. It is injective, because $u/\lVert u\rVert = v/\lVert v \rVert$ gives $v = (\lVert v\rVert/\lVert u\rVert)\, u$. It is surjective, because a point $p \in S^1$ is the image of $[p]$.

**Marking.** 4: all three properties, rays, a bijection with well-definedness checked. 3: well-definedness not checked. 2: equivalence relation only. 1: partial.

### A5

(a) For $n \in \mathbb{N}$ let $F_n$ be the set of subsets of $\lbrace 1, \dots, n \rbrace$. It is finite, with $2^n$ elements. Every finite subset of $\mathbb{N}$ lies in some $F_n$ (take $n$ to be its largest element, or $n=1$ for $\varnothing$). So the set of finite subsets is $\bigcup_n F_n$, a countable union of finite sets, which is countable.

*Alternative:* $S \mapsto \sum_{k \in S} 2^{k-1}$ is a bijection from the finite subsets of $\mathbb{N}$ onto $\lbrace 0, 1, 2, \dots \rbrace$, by uniqueness of binary expansions.

(b) Cantor's argument. Let $f : \mathbb{N} \to \mathcal{P}(\mathbb{N})$ be any function and set $D = \lbrace n \in \mathbb{N} : n \notin f(n) \rbrace$. If $D = f(m)$ for some $m$, then $m \in D \iff m \notin f(m) = D$, a contradiction. So no $f$ is surjective, and $\mathcal{P}(\mathbb{N})$ is uncountable.

**Marking.** 2 points per part. In (a), give 1 point for "countable union of finite sets" without justification.

### A6

**Schröder–Bernstein.** If there are injections $A \to B$ and $B \to A$, then there is a bijection $A \to B$.

Inclusion $(0,1) \to [0,1]$ is injective. The map $[0,1] \to (0,1)$, $x \mapsto \tfrac14 + \tfrac{x}{2}$, is injective, with image $[\tfrac14, \tfrac34] \subset (0,1)$. By Schröder–Bernstein, $\lvert [0,1] \rvert = \lvert (0,1) \rvert$.

(An explicit bijection also earns full marks. One example: send $0 \mapsto \tfrac12$, $1 \mapsto \tfrac13$, $\tfrac1n \mapsto \tfrac1{n+2}$ for $n \ge 2$, and fix every other point.)

**Marking.** 4: correct statement and two injections checked. 3: one injection not checked. 2: statement only, or injections only. 1: vague.

---

## Section B — Real analysis (module 1.2)

### B1

**Completeness axiom.** Every non-empty subset of $\mathbb{R}$ that is bounded above has a least upper bound in $\mathbb{R}$.

($\Rightarrow$) Let $s = \sup S$ and $\varepsilon > 0$. Then $s - \varepsilon < s$, so $s - \varepsilon$ is not an upper bound. Hence some $x \in S$ has $x > s - \varepsilon$.

($\Leftarrow$) Let $s$ be an upper bound with the $\varepsilon$ property, and let $t$ be any upper bound. If $t < s$, put $\varepsilon = s - t > 0$. Then some $x \in S$ has $x > s - \varepsilon = t$, contradicting that $t$ is an upper bound. So $s \le t$ for every upper bound $t$, and $s = \sup S$.

**Marking.** 1 point for the axiom, 1.5 per direction.

### B2

$$
\left| \frac{3n+1}{n+2} - 3 \right| = \frac{5}{n+2} < \frac{5}{n}.
$$

Given $\varepsilon > 0$, choose $N \in \mathbb{N}$ with $N > 5/\varepsilon$ (possible by the Archimedean property). For $n \ge N$, $\left|\frac{3n+1}{n+2} - 3\right| < 5/n \le 5/N < \varepsilon$.

**Marking.** 4: correct estimate and an explicit $N$. 3: $N$ given but the final inequality not shown. 2: correct algebra only.

### B3

**Bolzano–Weierstrass.** Every bounded sequence in $\mathbb{R}$ has a convergent subsequence.

Let $(a_n)$ be Cauchy.

*Bounded:* with $\varepsilon = 1$ there is $N$ such that $|a_n - a_N| < 1$ for $n \ge N$. So $|a_n| \le \max(|a_1|, \dots, |a_{N-1}|, |a_N| + 1)$ for all $n$.

*Convergent subsequence:* by Bolzano–Weierstrass, $a_{n_k} \to a$ for some $a$.

*Whole sequence converges:* given $\varepsilon > 0$, choose $N$ with $|a_n - a_m| < \varepsilon/2$ for $m, n \ge N$, and choose $k$ with $n_k \ge N$ and $|a_{n_k} - a| < \varepsilon/2$. For $n \ge N$, $|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \varepsilon$.

**Marking.** 1 for the statement; 1 each for boundedness, applying Bolzano–Weierstrass, and the final $\varepsilon/2$ argument.

### B4

(a) **Converges absolutely.** Ratio test: $\dfrac{(n+1)^2/2^{n+1}}{n^2/2^n} = \dfrac{(1 + 1/n)^2}{2} \to \tfrac12 < 1$.

(b) **Converges conditionally.** $1/\sqrt n$ decreases to $0$, so the alternating series test gives convergence. But $\sum 1/\sqrt n$ is a $p$-series with $p = \tfrac12 \le 1$, so it diverges, and the convergence is not absolute.

(c) **Diverges.** The terms are positive and decreasing. By the integral test, $\int_2^X \frac{dx}{x \ln x} = \ln\ln X - \ln \ln 2 \to \infty$. (Or by Cauchy condensation: $\sum 2^k \cdot \frac{1}{2^k k \ln 2} = \frac{1}{\ln 2}\sum \frac1k$ diverges.)

(d) **Converges absolutely.** $|\sin n / n^2| \le 1/n^2$, and $\sum 1/n^2$ converges, so the comparison test applies.

**Marking.** 1 point per part, for the correct verdict *and* a valid reason.

### B5

**Definition.** $f$ is uniformly continuous on $E$ if for every $\varepsilon > 0$ there is $\delta > 0$ such that for all $x, y \in E$, $|x - y| < \delta$ implies $|f(x) - f(y)| < \varepsilon$. Here $\delta$ depends only on $\varepsilon$, not on $x$.

*On $[0,1]$:* $|x^2 - y^2| = |x+y|\,|x-y| \le 2|x-y|$. Take $\delta = \varepsilon/2$.

*Not on $\mathbb{R}$:* take $\varepsilon = 1$. Given any $\delta > 0$, let $x = 1/\delta$ and $y = x + \delta/2$. Then $|x - y| < \delta$, but

$$
|y^2 - x^2| = (y - x)(y + x) = \frac{\delta}{2}\left(\frac{2}{\delta} + \frac{\delta}{2}\right) = 1 + \frac{\delta^2}{4} > 1 .
$$

So no $\delta$ works for $\varepsilon = 1$.

**Marking.** 1 for the definition, 1 for $[0,1]$, 2 for $\mathbb{R}$ (1 if the idea "slopes become steep" is there without a correct quantifier argument).

### B6

**Mean Value Theorem.** If $f$ is continuous on $[a,b]$ and differentiable on $(a,b)$, there is $c \in (a,b)$ with $f(b) - f(a) = f'(c)(b-a)$.

For $x \ne y$, apply the theorem to $\sin$ on the interval between them: $\sin x - \sin y = \cos(c)(x - y)$ for some $c$, so $|\sin x - \sin y| \le |x - y|$. The case $x = y$ is trivial.

If $f' = 0$ on an interval $I$ and $x < y$ are in $I$, then $f(y) - f(x) = f'(c)(y-x) = 0$. So $f$ is constant on $I$.

**Marking.** 1 for the statement (hypotheses included), 1.5 for each application.

### B7

(a) $f(x) = 0$ for $0 \le x < 1$ and $f(1) = 1$.

(b) **No.** $\sup_{[0,1]} |f_n - f| \ge \sup_{0 \le x < 1} x^n = 1$ for every $n$, so the sup does not tend to $0$. (Alternatively: a uniform limit of continuous functions is continuous, and $f$ is not.)

(c) **Yes.** $\sup_{[0,1/2]} |f_n - 0| = 2^{-n} \to 0$.

**Marking.** 1 for (a), 2 for (b), 1 for (c).

### B8

(a) Let $f$ be Riemann integrable on $[a,b]$.

*FTC part 1:* if $F(x) = \int_a^x f$, then $F$ is continuous, and $F'(x) = f(x)$ at every point $x$ where $f$ is continuous.

*FTC part 2:* if $G$ is differentiable on $[a,b]$ with $G' = f$, then $\int_a^b f = G(b) - G(a)$.

(b) Let $F(u) = \int_0^u e^{t^2}\,dt$. Since $e^{t^2}$ is continuous, $F'(u) = e^{u^2}$. By the chain rule,

$$
\frac{d}{dx} F(x^2) = 2x\, e^{x^4}.
$$

(c) Every subinterval of a partition contains both rationals and irrationals, so on every subinterval $\sup D = 1$ and $\inf D = 0$. Every upper sum is therefore $1$ and every lower sum is $0$. The upper and lower integrals ($1$ and $0$) differ, so $D$ is not Riemann integrable.

**Marking.** 1.5 for (a), 1 for (b), 1.5 for (c).

---

## Section C — Linear algebra (module 1.3)

### C1

The characteristic polynomial is $(2-\lambda)^2 - 1 = (\lambda - 1)(\lambda - 3)$, so the eigenvalues are $3$ and $1$.

- $\lambda = 3$: eigenvector $(1,1)$, normalised to $\tfrac{1}{\sqrt2}(1,1)$.
- $\lambda = 1$: eigenvector $(1,-1)$, normalised to $\tfrac{1}{\sqrt2}(1,-1)$.

$$
Q = \frac{1}{\sqrt 2}\begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}, \quad D = \begin{pmatrix} 3 & 0 \\ 0 & 1 \end{pmatrix}, \quad A^n = Q D^n Q^T = \frac12 \begin{pmatrix} 3^n + 1 & 3^n - 1 \\ 3^n - 1 & 3^n + 1 \end{pmatrix}.
$$

Check with $n = 1$: this gives $\tfrac12\begin{pmatrix}4&2\\2&4\end{pmatrix} = A$.

**Marking.** 1 for the eigenvalues, 1 for orthonormal eigenvectors, 1 for the factorisation, 1 for $A^n$.

### C2

(a) If $T : V \to W$ is linear and $V$ is finite-dimensional, then $\dim V = \dim \ker T + \dim \mathrm{im}\, T$.

(b) $\dim \mathrm{im}\, T = 3$, so $\dim \ker T = 5 - 3 = 2$.

(c) Let $n = \dim V$. $T$ is injective $\iff \ker T = \lbrace 0 \rbrace \iff \dim \ker T = 0 \iff \dim \mathrm{im}\, T = n$ (by rank–nullity) $\iff \mathrm{im}\, T = V$ (a subspace of full dimension is the whole space) $\iff T$ is surjective.

**Marking.** 1 for (a), 1 for (b), 2 for (c).

### C3

Suppose not. Among all linearly dependent sets of eigenvectors with distinct eigenvalues, choose one, $v_1, \dots, v_k$ with eigenvalues $\lambda_1, \dots, \lambda_k$, with $k$ as small as possible. Then $\sum c_i v_i = 0$ with every $c_i \ne 0$ (otherwise a smaller set would be dependent), and $k \ge 2$ because $v_1 \ne 0$. Apply $T - \lambda_k I$:

$$
\sum_{i=1}^{k-1} c_i (\lambda_i - \lambda_k) v_i = 0 .
$$

Every coefficient $c_i(\lambda_i - \lambda_k)$ is non-zero, so $v_1, \dots, v_{k-1}$ is a smaller dependent set. This contradicts the minimality of $k$.

(An induction on $k$ is equally good.)

**Marking.** 4: complete. 3: the key step (apply $T - \lambda_k I$) is present but the minimality or induction is not set up cleanly. 2: the case $k = 2$ only.

### C4

$T(1) = 0$, $T(x) = 1$, $T(x^2) = 2x$. Writing the images as columns:

$$
[T] = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 2 \\ 0 & 0 & 0 \end{pmatrix}.
$$

The matrix is upper triangular with zero diagonal, so the characteristic polynomial is $\lambda^3$ and the only eigenvalue is $0$. The eigenvectors are the non-zero solutions of $p' = 0$, which are the non-zero constants. The eigenspace has dimension $1 < 3$, so **$T$ is not diagonalisable**. Since $T^2 \ne 0$ ($T^2(x^2) = 2$) and $T^3 = 0$, the minimal polynomial is $\lambda^3$, and the Jordan form is a **single $3 \times 3$ Jordan block** with eigenvalue $0$.

**Marking.** 1 for the matrix, 1 for the eigen-data, 1 for "not diagonalisable" with a reason, 1 for the Jordan form.

### C5

$u_1 = \tfrac{1}{\sqrt2}(1,1,0)$.

$w_2 = v_2 - \langle v_2, u_1\rangle u_1 = (1,0,1) - \tfrac12(1,1,0) = (\tfrac12, -\tfrac12, 1)$. Its norm is $\sqrt{3/2}$, so $u_2 = \tfrac{1}{\sqrt6}(1,-1,2)$.

The projection is $\langle e_3,u_1\rangle u_1 + \langle e_3,u_2\rangle u_2 = 0 + \tfrac{2}{\sqrt6}\cdot\tfrac{1}{\sqrt 6}(1,-1,2) = \left(\tfrac13, -\tfrac13, \tfrac23\right)$.

Check: the residual $e_3 - \text{proj} = (-\tfrac13, \tfrac13, \tfrac13)$ is orthogonal to both $v_1$ and $v_2$.

**Marking.** 2 for Gram–Schmidt, 2 for the projection.

### C6

Let $A$ be real symmetric, $Av = \lambda v$ with $v \in \mathbb{C}^n \setminus \lbrace 0 \rbrace$ and $\lambda \in \mathbb{C}$. Write $v^{\ast} = \bar v^{T}$. Then $v^{\ast} A v = \lambda\, v^{\ast} v = \lambda \lVert v \rVert^2$.

The scalar $v^{\ast} A v$ is real: its complex conjugate is $v^T A \bar v$, which is a $1\times1$ matrix and so equals its transpose $\bar v^T A^T v = v^{\ast} A v$, using $A^T = A$. Since $\lVert v \rVert^2 > 0$ is real, $\lambda = v^{\ast} A v / \lVert v\rVert^2$ is real.

**Marking.** 4: complete. 3: uses $A^{\ast} = A$ correctly but skips why $v^{\ast}Av$ is real. 2: works with real $v$ only (circular).

---

## Section D — Abstract algebra (module 1.4)

### D1

**Lagrange.** If $H$ is a subgroup of a finite group $G$, then $|H|$ divides $|G|$.

*Proof.* The left cosets $gH$ partition $G$: each $g$ lies in $gH$, and if $gH \cap g'H \ne \varnothing$ then $gH = g'H$. Each coset has $|H|$ elements, because $h \mapsto gh$ is a bijection $H \to gH$. So $|G| = [G:H]\,|H|$.

*Prime order.* Let $|G| = p$, prime. Take $g \ne e$. Then $|\langle g \rangle|$ divides $p$ and is greater than $1$, so it equals $p$. Hence $G = \langle g\rangle$.

**Marking.** 1 for the statement, 2 for the proof (the partition and equal sizes), 1 for the corollary.

### D2

$\mathbb{Z}/12$ is cyclic, so it has exactly one subgroup of each order $d$ dividing $12$, namely $\langle 12/d \rangle$:

| Order | Subgroup |
|---|---|
| 1 | $\lbrace 0 \rbrace$ |
| 2 | $\langle 6 \rangle = \lbrace 0, 6\rbrace$ |
| 3 | $\langle 4 \rangle = \lbrace 0,4,8 \rbrace$ |
| 4 | $\langle 3 \rangle = \lbrace 0,3,6,9\rbrace$ |
| 6 | $\langle 2 \rangle = \lbrace 0,2,4,6,8,10\rbrace$ |
| 12 | the whole group |

The generators are the residues coprime to $12$: $1, 5, 7, 11$, which is $\varphi(12) = 4$ elements.

**Marking.** 3 for the subgroups (deduct 1 per missing one), 1 for the generators.

### D3

(a) $\ker\varphi$ is a subgroup: $\varphi(e) = e$; if $\varphi(a) = \varphi(b) = e$ then $\varphi(ab^{-1}) = e$. It is normal: for $k \in \ker\varphi$ and $g \in G$, $\varphi(gkg^{-1}) = \varphi(g)\,e\,\varphi(g)^{-1} = e$.

(b) **First Isomorphism Theorem.** $\ker \varphi \trianglelefteq G$, and $G/\ker\varphi \cong \mathrm{im}\,\varphi$ via $g\ker\varphi \mapsto \varphi(g)$.

(c) $\varphi : \mathbb{R}^\times \to \mathbb{R}_{>0}$, $\varphi(x) = |x|$, is a homomorphism ($|xy| = |x||y|$). It is surjective ($\varphi(r) = r$ for $r > 0$), and its kernel is $\lbrace \pm 1 \rbrace$. Apply (b).

**Marking.** 1.5 for (a), 1 for (b), 1.5 for (c).

### D4

(a) **Yes.** A cubic over a field is reducible only if it has a linear factor, that is, a root. By the rational root test the only possible rational roots of $x^3 - 2$ are $\pm1, \pm2$, and none is a root ($1-2$, $-1-2$, $8-2$, $-8-2$ are all non-zero).

(b) $\mathbb{R}[x]$ is a principal ideal domain, and there a non-zero ideal $(p)$ is maximal if and only if $p$ is irreducible. $x^2 + 1$ has degree 2 and no real root, so it is irreducible over $\mathbb{R}$. Hence $(x^2+1)$ is maximal and the quotient is a field.

Evaluation $\mathrm{ev}_i : \mathbb{R}[x] \to \mathbb{C}$, $p \mapsto p(i)$, is a ring homomorphism. It is surjective, since $a + bx \mapsto a + bi$. Its kernel contains $x^2+1$, and since the kernel is a proper ideal containing the maximal ideal $(x^2+1)$, it equals $(x^2+1)$. So $\mathbb{R}[x]/(x^2+1) \cong \mathbb{C}$.

**Marking.** 1 for (a), 3 for (b): 1 for maximality, 2 for the identification with $\mathbb{C}$.

### D5

(a) $7 \cdot 3 = 21 \equiv 1 \pmod{20}$, so $7^{-1} \equiv 3$, and $x \equiv 3 \cdot 3 = 9 \pmod{20}$. Check: $63 = 60 + 3$.

(b) Powers of $3$ modulo $7$: $3, 2, 6, 4, 5, 1$. The order is $6 = |(\mathbb{Z}/7)^\times|$, so $3$ generates the group, which is therefore cyclic.

**Marking.** 2 per part.

---

## Section E — Multivariable calculus (module 1.5)

### E1

$f(x,0) = 0$ for all $x$, so $f_x(0,0) = 0$. Likewise $f_y(0,0) = 0$. Both partial derivatives exist.

Along the line $y = x$, $f(t,t) = \tfrac12$ for $t \ne 0$, which does not tend to $f(0,0) = 0$. So **$f$ is not continuous** at the origin, and therefore **not differentiable** there (differentiability implies continuity).

Lesson: the existence of partial derivatives does not imply differentiability, or even continuity.

**Marking.** 1 for the partials, 2 for discontinuity, 1 for non-differentiability with its reason.

### E2

$f_x = 3x^2 - 3$ and $f_y = 2y$, so the critical points are $(1,0)$ and $(-1,0)$. The Hessian is $\begin{pmatrix} 6x & 0 \\ 0 & 2 \end{pmatrix}$.

- At $(1,0)$: $\mathrm{diag}(6,2)$ is positive definite, so this is a **local minimum**, with $f = -2$.
- At $(-1,0)$: $\mathrm{diag}(-6, 2)$ is indefinite, so this is a **saddle point**.

**Marking.** 2 for the critical points, 1 per classification.

### E3

With $g(x,y) = x^2 + 4y^2$, the condition $\nabla f = \lambda \nabla g$ gives $y = 2\lambda x$ and $x = 8\lambda y$. Hence $y = 16\lambda^2 y$.

If $y = 0$ then $x = 0$, which is not on the ellipse. So $\lambda^2 = 1/16$, and $x = 8\lambda y = \pm 2y$. The constraint gives $4y^2 + 4y^2 = 8$, so $y = \pm1$.

The candidate points are $(2,1)$ and $(-2,-1)$, where $f = 2$, and $(2,-1)$ and $(-2,1)$, where $f = -2$. The ellipse is compact and $f$ is continuous, so the extremes are attained, and they must be among these candidates. **The maximum is 2 and the minimum is −2.**

**Marking.** 1 for the equations, 2 for solving them, 1 for the conclusion (compactness remark optional).

### E4

In polar coordinates, with $dA = r\,dr\,d\theta$:

$$
\int_0^{2\pi}\!\!\int_0^R e^{-r^2} r\,dr\,d\theta = 2\pi \cdot \frac{1 - e^{-R^2}}{2} = \pi\left(1 - e^{-R^2}\right).
$$

Let $I = \int_{-\infty}^\infty e^{-x^2}dx$. It converges, by comparison with $e^{-|x|}$ for $|x| \ge 1$. By Fubini, $I^2 = \lim_{R\to\infty} \iint_{[-R,R]^2} e^{-(x^2+y^2)}\,dA$. The square $[-R,R]^2$ lies between the disks of radius $R$ and $R\sqrt 2$, and the integrand is positive, so

$$
\pi\left(1 - e^{-R^2}\right) \le \iint_{[-R,R]^2} e^{-(x^2+y^2)}\,dA \le \pi\left(1 - e^{-2R^2}\right).
$$

Let $R \to \infty$: $I^2 = \pi$. Since $I > 0$, $I = \sqrt\pi$.

**Marking.** 2 for the disk integral (including the Jacobian $r$), 2 for the deduction. Give 1 for the deduction if the squeeze between disk and square is omitted.

### E5

*Directly:* with $x = a\cos t$, $y = b\sin t$, $0 \le t \le 2\pi$,

$$
-y\,dx + x\,dy = \left(ab\sin^2 t + ab\cos^2 t\right)dt = ab\,dt, \quad \text{so the integral is } 2\pi ab.
$$

*Green's theorem:* with $P = -y$ and $Q = x$, $\oint_C P\,dx + Q\,dy = \iint_{\text{inside}} (Q_x - P_y)\,dA = 2\cdot \text{Area} = 2\pi ab$.

**Marking.** 2 per method.

---

## Section F — Complex numbers and topology basics

### F1

$-16 = 16 e^{i\pi}$. So $z = 2 e^{i(\pi/4 + k\pi/2)}$ for $k = 0,1,2,3$. These are the angles $\pi/4, 3\pi/4, 5\pi/4, 7\pi/4$. In Cartesian form: $\pm\sqrt2 \pm i\sqrt2$ (all four sign combinations).

**Marking.** 2 for the polar form, 2 for the Cartesian form. Deduct 1 for each missing root.

### F2

(a) $\bar z = x - iy$, so $u = x$ and $v = -y$. The Cauchy–Riemann equation $u_x = v_y$ would need $1 = -1$, which never holds. So **$\bar z$ is complex differentiable nowhere**.

(b) With $z = e^{it}$, $dz = ie^{it}dt$, the integral is $\int_0^{2\pi} \frac{ie^{it}}{e^{it}}\,dt = 2\pi i$.

**Marking.** 2 per part.

### F3

(a) $\bigcap_{n \ge 1} (-\tfrac1n, \tfrac1n) = \lbrace 0 \rbrace$, which is not open: no interval around $0$ is contained in it.

(b) **Heine–Borel.** A subset of $\mathbb{R}^n$ is compact if and only if it is closed and bounded.

(c) The open sets $U_n = (\tfrac1n, 2)$ for $n \in \mathbb{N}$ cover $(0,1]$, because every $x > 0$ has $x > 1/n$ for some $n$. Any finite subfamily has a largest index $N$, and its union is $(\tfrac1N, 2)$, which misses $\tfrac{1}{2N} \in (0,1]$. So there is no finite subcover.

**Marking.** 1 for (a), 1 for (b), 2 for (c).

---

## Score sheet

Copy this into [PROGRESS.md](../PROGRESS.md).

| Section | Score | Max | % | Route (see README) |
|---|---|---|---|---|
| A (1.1) | | 24 | | |
| B (1.2) | | 32 | | |
| C (1.3) | | 24 | | |
| D (1.4) | | 20 | | |
| E (1.5) | | 20 | | |
| F (2.1 and 2.2 preview) | | 12 | | informational only |
| **Total** | | **132** | | |
