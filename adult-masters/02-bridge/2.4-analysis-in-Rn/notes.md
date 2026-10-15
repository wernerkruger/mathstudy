# 2.4 Analysis in $\mathbb R^n$: Study Notes

Notation: $|x|$ is the Euclidean norm on $\mathbb R^n$; for a linear map $T:\mathbb R^n\to\mathbb R^m$, $\|T\| = \sup_{|x|\le1}|Tx|$ is the operator norm. $K$ denotes a compact metric space and $C(K)$ the continuous real functions on $K$ with $\|f\|_\infty = \sup_K|f|$.

---

## 1. Sequences and series of functions

**Definitions.** $f_n\to f$ *pointwise* on $E$ if $f_n(x)\to f(x)$ for each $x\in E$. $f_n\to f$ *uniformly* if $\sup_{x\in E}|f_n(x) - f(x)|\to0$. Equivalently (Cauchy criterion), for every $\varepsilon$ there is $N$ with $|f_n(x) - f_m(x)|<\varepsilon$ for all $x$ and all $m,n\ge N$.

**Theorems.**

1. *Continuity.* A uniform limit of continuous functions is continuous. ($\varepsilon/3$: $|f(x) - f(y)|\le|f(x) - f_N(x)| + |f_N(x) - f_N(y)| + |f_N(y) - f(y)|$.)
2. *Completeness.* $(C(K),\|\cdot\|_\infty)$ is a complete normed space (a Banach space).
3. *Integrals.* If $f_n\to f$ uniformly on $[a,b]$ and the $f_n$ are Riemann integrable, then $f$ is Riemann integrable and $\int_a^bf_n\to\int_a^bf$.
4. *Derivatives.* If $f_n$ are differentiable on $[a,b]$, $(f_n(x_0))$ converges for some $x_0$, and $(f_n')$ converges **uniformly**, then $f_n$ converges uniformly to some $f$ and $f' = \lim f_n'$. (Uniform convergence of $f_n$ alone is not enough: $f_n(x) = \frac{\sin(nx)}{\sqrt n}\to0$ uniformly, but $f_n'(0) = \sqrt n\to\infty$.)
5. *Weierstrass M-test.* If $|g_k(x)|\le M_k$ on $E$ and $\sum M_k<\infty$, then $\sum g_k$ converges uniformly (and absolutely) on $E$.
6. *Dini's theorem.* If $f_n\in C(K)$ increase pointwise to a continuous $f$, the convergence is uniform.

**Standard counterexamples.**

- $x^n$ on $[0,1]$: continuous functions with a discontinuous pointwise limit.
- $nxe^{-nx^2}$ on $[0,1]$: pointwise limit $0$, but $\int_0^1 nxe^{-nx^2}dx\to\frac12$.
- Tent functions of height $n$ and width $2/n$: pointwise to $0$, integrals equal to $1$.
- $\sum\frac{\sin nx}{n^2}$ converges uniformly, but the differentiated series $\sum\frac{\cos nx}{n}$ diverges at $x = 0$.

**Power series.** $\sum a_nx^n$ with radius $R$ converges uniformly on $[-r,r]$ for every $r<R$ (M-test), can be integrated and differentiated term by term inside $(-R,R)$.

---

## 2. Arzelà–Ascoli

**Definition.** A family $\mathcal F\subseteq C(K)$ is *equicontinuous* if for every $\varepsilon>0$ there is $\delta>0$ such that $d(x,y)<\delta\Rightarrow|f(x) - f(y)|<\varepsilon$ for **all** $f\in\mathcal F$ (one $\delta$ for the whole family, and uniform in $x$). It is *uniformly bounded* if $\sup_{f\in\mathcal F}\|f\|_\infty<\infty$.

**Arzelà–Ascoli theorem.** Let $K$ be a compact metric space and $\mathcal F\subseteq C(K)$. Then $\mathcal F$ has compact closure in $C(K)$ (equivalently, every sequence in $\mathcal F$ has a uniformly convergent subsequence) iff $\mathcal F$ is uniformly bounded and equicontinuous. (Pointwise boundedness suffices in place of uniform boundedness, given equicontinuity and compactness of $K$.)

*Proof of "if".* Let $(f_n)$ be a sequence in $\mathcal F$.

1. A compact metric space has a countable dense subset $D = \lbrace x_1,x_2,\dots\rbrace$ (take centres of finite $1/k$-nets for each $k$).
2. *Diagonal argument.* $(f_n(x_1))$ is a bounded sequence of reals, so has a convergent subsequence. From it extract a subsequence converging at $x_2$, and so on. The diagonal sequence $g_k$ (the $k$-th term of the $k$-th subsequence) converges at every $x_j$.
3. *Upgrade to uniform convergence.* Given $\varepsilon$, take $\delta$ from equicontinuity. By compactness, finitely many points $x_{j_1},\dots,x_{j_r}$ of $D$ form a $\delta$-net. Choose $N$ such that $|g_k(x_{j_i}) - g_l(x_{j_i})|<\varepsilon$ for $k,l\ge N$ and all $i\le r$. For any $x$, pick $x_{j_i}$ within $\delta$; then
$$
|g_k(x) - g_l(x)|\le|g_k(x) - g_k(x_{j_i})| + |g_k(x_{j_i}) - g_l(x_{j_i})| + |g_l(x_{j_i}) - g_l(x)|<3\varepsilon.
$$
So $(g_k)$ is uniformly Cauchy, hence uniformly convergent by completeness of $C(K)$. $\square$

*"Only if"* is a total-boundedness argument: a compact set in $C(K)$ is covered by finitely many $\varepsilon$-balls, and finitely many continuous functions on a compact space are uniformly equicontinuous.

**Typical applications.**

- $\lbrace f\in C^1[0,1] : |f(0)|\le1, |f'|\le1\rbrace$ has compact closure in $C[0,1]$ (Lipschitz with constant 1 gives equicontinuity).
- Integral operators with continuous kernels map bounded sets to relatively compact sets (*compact operators*, module 3.2).
- *Peano's existence theorem* for $y' = F(t,y)$ with $F$ only continuous (Euler polygons, then Arzelà–Ascoli).
- *Montel's theorem* in complex analysis (module [2.2](../2.2-complex-analysis/)).

**Pitfall.** $\lbrace\sin(nx)\rbrace$ on $[0,\pi]$ is uniformly bounded but not equicontinuous, and has no uniformly convergent subsequence.

---

## 3. Stone–Weierstrass

**Weierstrass approximation theorem.** Polynomials are dense in $C[a,b]$. (One constructive proof uses Bernstein polynomials $B_nf(x) = \sum_{k=0}^n f(k/n)\binom nk x^k(1-x)^{n-k}$ on $[0,1]$; another convolves with polynomial kernels $c_n(1 - x^2)^n$.)

**Stone–Weierstrass theorem (real).** Let $K$ be compact Hausdorff (for us, compact metric) and $\mathcal A\subseteq C(K,\mathbb R)$ a subalgebra that contains the constants and *separates points* (for $x\ne y$ there is $f\in\mathcal A$ with $f(x)\ne f(y)$). Then $\mathcal A$ is dense in $C(K)$.

*Proof sketch.*

1. The closure $\overline{\mathcal A}$ is again an algebra.
2. If $f\in\overline{\mathcal A}$ then $|f|\in\overline{\mathcal A}$: by Weierstrass, $|t|$ is a uniform limit of polynomials $p_n(t)$ on $[-\|f\|,\|f\|]$, and $p_n\circ f\in\overline{\mathcal A}$. Hence $\max(f,g) = \frac{f+g+|f-g|}{2}$ and $\min(f,g)$ lie in $\overline{\mathcal A}$.
3. For $x\ne y$ and any reals $\alpha,\beta$ there is $h\in\mathcal A$ with $h(x) = \alpha$, $h(y) = \beta$ (take $h = \alpha + (\beta - \alpha)\frac{u - u(x)}{u(y) - u(x)}$ with $u$ separating $x,y$).
4. Fix $f\in C(K)$, $\varepsilon>0$. For fixed $x$ and each $y$ choose $h_{y}\in\mathcal A$ with $h_y(x) = f(x)$, $h_y(y) = f(y)$. The open sets $\lbrace h_y<f+\varepsilon\rbrace$ cover $K$; take finitely many and let $g_x = \min_i h_{y_i}\in\overline{\mathcal A}$. Then $g_x<f+\varepsilon$ everywhere and $g_x(x) = f(x)$.
5. The open sets $\lbrace g_x>f - \varepsilon\rbrace$ cover $K$; take finitely many and let $g = \max_j g_{x_j}\in\overline{\mathcal A}$. Then $f-\varepsilon<g<f+\varepsilon$. $\square$

**Complex version.** For $C(K,\mathbb C)$, also require $\mathcal A$ to be closed under complex conjugation. Without it the theorem fails: polynomials in $z$ are not dense in $C(\overline{\mathbb D},\mathbb C)$, since uniform limits are holomorphic inside the disc.

**Applications.**

- Trigonometric polynomials are dense in $C(S^1)$ (continuous $2\pi$-periodic functions): the algebra generated by $e^{\pm i\theta}$ is conjugation-closed and separates points of the circle.
- Functions $\sum g_i(x)h_i(y)$ are dense in $C([0,1]^2)$.
- *Moment problem:* if $f\in C[0,1]$ and $\int_0^1fx^n = 0$ for all $n$, then $f = 0$.
- Polynomials in $x^2$ are dense in $C[0,1]$ but not in $C[-1,1]$ (they do not separate $\pm x$).

---

## 4. Contraction mapping and ODEs

**Contraction mapping theorem** (see module [2.1](../2.1-metric-spaces-topology/notes.md)). A contraction of a non-empty complete metric space has a unique fixed point, the limit of the iterates from any starting point.

**Picard–Lindelöf.** Let $F:[t_0 - a,t_0+a]\times\mathbb R^n\to\mathbb R^n$ be continuous and Lipschitz in $y$: $|F(t,y) - F(t,z)|\le L|y - z|$. Then $y' = F(t,y)$, $y(t_0) = y_0$ has a unique solution on $[t_0 - h, t_0 + h]$ for any $h<\min(a, 1/L)$.

*Proof.* A $C^1$ solution is the same as a continuous solution of the integral equation $y(t) = y_0 + \int_{t_0}^tF(s,y(s))\,ds$ (fundamental theorem of calculus). The map $(Ty)(t) = y_0+\int_{t_0}^tF(s,y(s))\,ds$ sends $C([t_0-h,t_0+h],\mathbb R^n)$ to itself and $\|Ty - Tz\|_\infty\le hL\|y - z\|_\infty$, a contraction. (With only local Lipschitz bounds, restrict to a closed ball around the constant function $y_0$, which is still complete.) $\square$

The Lipschitz condition matters: $y' = 3y^{2/3}$, $y(0) = 0$ has the two solutions $y = 0$ and $y = t^3$.

---

## 5. The derivative as a linear map

**Definition.** $f:U\to\mathbb R^m$ ($U\subseteq\mathbb R^n$ open) is *differentiable* at $a$ if there is a linear $T = Df(a)$ with
$$
\lim_{h\to0}\frac{|f(a+h) - f(a) - Th|}{|h|} = 0.
$$
$T$ is unique; its matrix is the Jacobian $\left(\partial f_i/\partial x_j(a)\right)$.

**Facts.**

1. Differentiable ⇒ continuous; differentiable ⇒ all directional derivatives exist, with $D_vf(a) = Df(a)v$.
2. The converse fails: $f(x,y) = \frac{xy}{x^2+y^2}$ ($f(0) = 0$) has both partial derivatives at $0$ but is not continuous there. $f(x,y) = \frac{x^2y}{x^4+y^2}$ has all directional derivatives at $0$ but is not continuous there.
3. **If all partial derivatives exist near $a$ and are continuous at $a$, then $f$ is differentiable at $a$.** (Move one coordinate at a time and apply the 1-variable mean value theorem.) $f$ is $C^1$ iff its partials exist and are continuous iff $x\mapsto Df(x)$ is continuous into the space of linear maps.
4. **Chain rule:** $D(g\circ f)(a) = Dg(f(a))\circ Df(a)$.
5. **Mean value inequality:** if $U$ is convex and $\|Df(x)\|\le M$ on $U$, then $|f(x) - f(y)|\le M|x - y|$. (Apply the 1-variable MVT to $t\mapsto\langle f(x + t(y - x)) - f(x), u\rangle$ for a suitable unit vector $u$.) There is no mean value *equality* for vector-valued $f$: $t\mapsto(\cos t,\sin t)$ on $[0,2\pi]$.

**Examples worth knowing.**

- $D(A\mapsto A^2)(A)H = AH + HA$.
- $D(A\mapsto A^{-1})(A)H = -A^{-1}HA^{-1}$ on the open set $GL_n(\mathbb R)$.
- $D(\det)(I)H = \mathrm{tr}\,H$, and $D(\det)(A)H = \det(A)\mathrm{tr}(A^{-1}H)$ for invertible $A$.
- A bilinear map $B$ has $DB(x,y)(h,k) = B(h,y) + B(x,k)$ (product rule).

**Higher derivatives.** $D^2f(a)$ is a bilinear map, with matrix the Hessian. If $f$ is $C^2$, it is symmetric ($\partial_i\partial_jf = \partial_j\partial_if$). Without continuity of second partials this can fail: $f(x,y) = \frac{xy(x^2 - y^2)}{x^2+y^2}$, $f(0) = 0$, has $\partial_x\partial_yf(0)\ne\partial_y\partial_xf(0)$. **Taylor's theorem:** $f(a+h) = f(a) + Df(a)h + \frac12D^2f(a)(h,h) + o(|h|^2)$ for $C^2$ $f$. At a critical point, positive definite Hessian ⇒ strict local minimum.

---

## 6. The inverse function theorem

**Theorem.** Let $U\subseteq\mathbb R^n$ be open, $f:U\to\mathbb R^n$ of class $C^1$, $a\in U$, and $Df(a)$ invertible. Then there are open sets $V\ni a$ and $W\ni f(a)$ such that $f:V\to W$ is a bijection, and its inverse $g:W\to V$ is $C^1$ with $Dg(y) = Df(g(y))^{-1}$. If $f$ is $C^k$, so is $g$.

*Proof.* Let $A = Df(a)$ and choose $\lambda$ with $2\lambda\|A^{-1}\| = 1$. By continuity of $Df$, choose an open ball $V$ around $a$ with $\|Df(x) - A\|<\lambda$ for $x\in V$.

*Step 1 (injectivity).* For $y\in\mathbb R^n$ define $\varphi_y(x) = x + A^{-1}(y - f(x))$. Then $f(x) = y$ iff $x$ is a fixed point of $\varphi_y$. Since $D\varphi_y(x) = A^{-1}(A - Df(x))$ has norm $<\|A^{-1}\|\lambda = \frac12$ on the convex set $V$, the mean value inequality gives $|\varphi_y(x_1) - \varphi_y(x_2)|\le\frac12|x_1 - x_2|$. A map that shrinks distances has at most one fixed point, so $f$ is injective on $V$.

*Step 2 ($W = f(V)$ is open).* Let $y_0 = f(x_0)$, $x_0\in V$, and choose $r>0$ with $\overline B(x_0,r)\subseteq V$. If $|y - y_0|<\lambda r$ then for $x\in\overline B(x_0,r)$,
$$
|\varphi_y(x) - x_0|\le|\varphi_y(x) - \varphi_y(x_0)| + |\varphi_y(x_0) - x_0|\le\tfrac12 r + \|A^{-1}\|\,|y - y_0|<\tfrac r2+\tfrac r2 = r.
$$
So $\varphi_y$ maps the complete space $\overline B(x_0,r)$ into itself and is a contraction; its fixed point $x$ satisfies $f(x) = y$. Hence $B(y_0,\lambda r)\subseteq W$.

*Step 3 ($g$ is differentiable).* Note that $\|Df(x) - A\| < \lambda$ and $\|A^{-1}\|\lambda = \frac12$ imply $Df(x)$ is invertible on $V$. Let $y, y+k\in W$, $x = g(y)$, $h = g(y+k) - x$. From Step 1, $|h - A^{-1}k| = |\varphi_y(x+h) - \varphi_y(x)|\le\frac12|h|$, so $|h|\le2\|A^{-1}\|\,|k| = |k|/\lambda$. With $T = Df(x)^{-1}$,
$$
g(y+k) - g(y) - Tk = h - Tk = -T\big(f(x+h) - f(x) - Df(x)h\big),
$$
and dividing by $|k|\ge\lambda|h|$ shows this is $o(|k|)$. So $Dg(y) = Df(g(y))^{-1}$. Since $g$ is continuous, $Df$ is continuous, and matrix inversion is continuous (indeed smooth: Cramer's rule), $Dg$ is continuous. Bootstrapping gives $C^k$. $\square$

**Pitfalls.**
- The theorem is local. $f(x,y) = (e^x\cos y, e^x\sin y)$ has invertible derivative everywhere but is not injective on $\mathbb R^2$.
- $C^1$ matters: $f(x) = x + 2x^2\sin(1/x)$ ($f(0) = 0$) has $f'(0) = 1$ but is not injective on any neighbourhood of $0$.
- $Df(a)$ invertible is sufficient, not necessary, for a continuous inverse ($x\mapsto x^3$), but it is necessary for a *differentiable* inverse.

---

## 7. The implicit function theorem and consequences

**Implicit function theorem.** Let $F:U\to\mathbb R^m$ be $C^1$ on an open $U\subseteq\mathbb R^n\times\mathbb R^m$, with $F(a,b) = 0$ and $D_yF(a,b)$ (the $m\times m$ block of partials in $y$) invertible. Then there are open $V\ni a$, $W\ni b$ and a unique $C^1$ map $g:V\to W$ such that, for $(x,y)\in V\times W$, $F(x,y) = 0\iff y = g(x)$. Its derivative is
$$
Dg(x) = -D_yF(x,g(x))^{-1}\,D_xF(x,g(x)).
$$
*Proof.* Apply the inverse function theorem to $\Phi(x,y) = (x,F(x,y))$, whose derivative $\begin{pmatrix}I&0\\D_xF&D_yF\end{pmatrix}$ is invertible at $(a,b)$. Then $g(x)$ is the $y$-component of $\Phi^{-1}(x,0)$. The derivative formula follows by differentiating $F(x,g(x)) = 0$ with the chain rule. $\square$

**Rank theorem (statement).** If $f$ is $C^1$ and $Df$ has constant rank $r$ near $a$, then in suitable local $C^1$ coordinates around $a$ and $f(a)$, $f(x_1,\dots,x_n) = (x_1,\dots,x_r,0,\dots,0)$. Special cases: submersions (rank $m$) look like projections; immersions (rank $n$) look like inclusions.

**Regular level sets.** If $F:\mathbb R^n\to\mathbb R^m$ is $C^1$ and $DF(p)$ is surjective at every $p$ with $F(p) = c$, then $F^{-1}(c)$ is locally the graph of a $C^1$ function of $n-m$ variables: an $(n-m)$-dimensional submanifold (module 3.5). Example: $S^{n-1} = \lbrace|x|^2 = 1\rbrace$.

**Lagrange multipliers.** If $f, g_1,\dots,g_m$ are $C^1$, $p$ is a local extremum of $f$ on $M = \lbrace g = 0\rbrace$, and $Dg(p)$ is surjective, then $\nabla f(p) = \sum\lambda_i\nabla g_i(p)$. (The tangent space $\ker Dg(p)$ consists of velocities of curves in $M$ through $p$, by the implicit function theorem, and $Df(p)$ must vanish on it.)

---

## 8. Riemann integration in $\mathbb R^n$

**Definition.** For a closed rectangle $R = \prod[a_i,b_i]$ and bounded $f:R\to\mathbb R$, partitions of $R$ into subrectangles give upper and lower sums $U(f,P)$, $L(f,P)$. $f$ is *Riemann integrable* if $\sup_PL(f,P) = \inf_PU(f,P)$, the common value being $\int_Rf$.

**Lebesgue's criterion (statement).** A bounded $f$ on $R$ is Riemann integrable iff its set of discontinuities has (Lebesgue) measure zero, i.e. can be covered by countably many rectangles of arbitrarily small total volume.

**Jordan measurable sets.** A bounded set $E$ is *Jordan measurable* if $\partial E$ has measure zero (equivalently, the indicator function $\chi_E$ is Riemann integrable). For such $E$ and bounded $f$ continuous except on a null set, $\int_Ef := \int_Rf\chi_E$ for any rectangle $R\supseteq E$. Balls, polytopes and regions bounded by finitely many $C^1$ graphs are Jordan measurable. $\mathbb Q\cap[0,1]$ is not (its boundary is $[0,1]$).

**Fubini's theorem (Riemann version).** Let $f$ be integrable on $A\times B$ ($A\subseteq\mathbb R^n$, $B\subseteq\mathbb R^m$ rectangles). Then the lower and upper integrals $\underline\int_Bf(x,\cdot)$ and $\overline\int_Bf(x,\cdot)$ are integrable functions of $x$ on $A$, and
$$
\int_{A\times B}f = \int_A\Big(\underline{\int_B}f(x,y)\,dy\Big)dx = \int_A\Big(\overline{\int_B}f(x,y)\,dy\Big)dx.
$$
In particular, for continuous $f$, $\int_{A\times B}f = \int_A\int_Bf\,dy\,dx = \int_B\int_Af\,dx\,dy$.

*Proof idea.* For a partition $P = P_A\times P_B$, $L(f,P)\le L\big(\underline\int_Bf(x,\cdot),P_A\big)\le U\big(\overline\int_Bf(x,\cdot),P_A\big)\le U(f,P)$, and the outer two converge to $\int f$.

**Pitfalls.**
- Iterated integrals can exist and differ when $f$ is not integrable on the product: $f(x,y) = \frac{x^2 - y^2}{(x^2+y^2)^2}$ on $(0,1]^2$ (Problem 17).
- Iterated integrals can exist and agree while $f$ is not Riemann integrable on the square (e.g. the indicator of a dense set with sparse sections).
- Riemann integration handles unbounded functions and unbounded domains only through improper limits; Lebesgue's theory (module 3.1) removes this awkwardness and gives much stronger Fubini–Tonelli and convergence theorems.

---

## 9. Change of variables

**Theorem.** Let $U, V\subseteq\mathbb R^n$ be open, $g:U\to V$ a $C^1$ bijection with $\det Dg\ne0$ everywhere (a $C^1$ diffeomorphism), and $f$ integrable on $V$ (e.g. continuous with compact support, or on a Jordan measurable compact subset). Then
$$
\int_Vf(y)\,dy = \int_Uf(g(x))\,|\det Dg(x)|\,dx.
$$
*Proof sketch.*
1. *Linear maps:* a linear map $T$ multiplies volumes of rectangles (and hence of Jordan measurable sets) by $|\det T|$. Check it for elementary matrices (row swaps, scaling a coordinate, shears; shears preserve volume by Fubini/Cavalieri) and use multiplicativity of $\det$.
2. *Locally, $g$ is nearly linear:* on a small cube $Q$ around $x$, $g(Q)$ is squeezed between $Dg(x)\big((1\pm\varepsilon)Q\big)$ shifted to $g(x)$, so $\mathrm{vol}\,g(Q)\approx|\det Dg(x)|\mathrm{vol}\,Q$.
3. *Sum over a fine grid* (or, as in Rudin and Spivak, factor $g$ locally into maps that change one coordinate at a time, use a partition of unity, and induct on $n$ using Fubini and 1-variable substitution).

**Standard changes.**
- Polar: $(r,\theta)\mapsto(r\cos\theta,r\sin\theta)$, $|\det| = r$.
- Spherical: $(\rho,\varphi,\theta)\mapsto(\rho\sin\varphi\cos\theta,\rho\sin\varphi\sin\theta,\rho\cos\varphi)$, $|\det| = \rho^2\sin\varphi$.
- Gaussian integral: $\left(\int_{-\infty}^\infty e^{-x^2}dx\right)^2 = \int_{\mathbb R^2}e^{-|x|^2} = \int_0^{2\pi}\int_0^\infty e^{-r^2}r\,dr\,d\theta = \pi$ (Problem 18 does this carefully).

Polar coordinates fail to be a diffeomorphism on the set $r = 0$ or $\theta\in\lbrace0,2\pi\rbrace$, but that set has measure zero, so it does not affect integrals.

---

## 10. Differential forms and Stokes' theorem (preview)

**Forms on $\mathbb R^n$.** A *$k$-form* on an open $U\subseteq\mathbb R^n$ is an expression
$$
\omega = \sum_{i_1<\dots<i_k}a_{i_1\cdots i_k}(x)\,dx_{i_1}\wedge\cdots\wedge dx_{i_k}
$$
with smooth coefficients. Pointwise, it is an alternating $k$-linear function of tangent vectors. The wedge product is associative, bilinear, and *graded commutative*: $\alpha\wedge\beta = (-1)^{kl}\beta\wedge\alpha$ for a $k$-form $\alpha$ and $l$-form $\beta$. In particular $dx_i\wedge dx_i = 0$, and $dx_1\wedge\dots\wedge dx_n$ is the volume form.

**Exterior derivative.** $df = \sum_i\partial_if\,dx_i$ for functions, and $d(a\,dx_I) = da\wedge dx_I$. Properties:
- $d(\alpha\wedge\beta) = d\alpha\wedge\beta + (-1)^k\alpha\wedge d\beta$;
- $d\circ d = 0$ (equality of mixed partials).

In $\mathbb R^3$, under the dictionary 0-forms ↔ functions, 1-forms ↔ vector fields, 2-forms ↔ vector fields, 3-forms ↔ functions, $d$ becomes grad, curl, div, and $d^2 = 0$ becomes $\mathrm{curl}\,\mathrm{grad} = 0$, $\mathrm{div}\,\mathrm{curl} = 0$.

**Pullback.** For a smooth $\phi:V\to U$, $\phi^*$ substitutes: $\phi^*(a\,dx_{i_1}\wedge\cdots) = (a\circ\phi)\,d\phi_{i_1}\wedge\cdots$. It respects wedge products and commutes with $d$: $\phi^*d\omega = d\phi^*\omega$. For $n$-forms, $\phi^*(f\,dy_1\wedge\cdots\wedge dy_n) = (f\circ\phi)\det(D\phi)\,dx_1\wedge\cdots\wedge dx_n$: the change of variables formula without absolute values, which is why integrals of forms depend on orientation.

**Integration over chains.** A *singular $k$-cube* in $U$ is a smooth map $c:[0,1]^k\to U$, and $\int_c\omega = \int_{[0,1]^k}c^*\omega$. A *$k$-chain* is a formal integer combination of $k$-cubes. The boundary of the identity cube $I^k$ is
$$
\partial I^k = \sum_{i=1}^k\sum_{\alpha=0,1}(-1)^{i+\alpha}I^k_{(i,\alpha)},
$$
where $I^k_{(i,\alpha)}$ is the face $x_i = \alpha$; for general $c$, $\partial c = \sum(-1)^{i+\alpha}c\circ I^k_{(i,\alpha)}$. One checks $\partial\circ\partial = 0$.

**Stokes' theorem (on chains).** For a $(k-1)$-form $\omega$ on $U$ and a $k$-chain $c$ in $U$,
$$
\int_c d\omega = \int_{\partial c}\omega.
$$
*Proof idea.* By pulling back, it suffices to treat $c = I^k$ and $\omega = a\,dx_1\wedge\cdots\widehat{dx_i}\cdots\wedge dx_k$; then both sides reduce, via Fubini, to the one-variable fundamental theorem of calculus in the $x_i$ direction.

Special cases: the fundamental theorem of calculus ($k = 1$), Green's theorem, Stokes' theorem for surfaces in $\mathbb R^3$, and the divergence theorem. The version for compact oriented manifolds with boundary is proved in module [3.5](../../03-masters-core/3.5-smooth-manifolds/).

**Closed and exact forms.** $\omega$ is *closed* if $d\omega = 0$ and *exact* if $\omega = d\eta$. Exact ⇒ closed since $d^2 = 0$. **Poincaré lemma:** on a star-shaped open set, every closed form is exact. On $\mathbb R^2\setminus\lbrace0\rbrace$, the form $\omega = \frac{-y\,dx + x\,dy}{x^2+y^2}$ ("$d\theta$") is closed, but $\int_{S^1}\omega = 2\pi\ne0$, so it is not exact (if $\omega = df$, Stokes would give $\int_{S^1}df = 0$). The failure of "closed ⇒ exact" measures the topology of the domain: this is de Rham cohomology.

---

## 11. Common pitfalls

1. Interchanging limits (sums, integrals, derivatives) without uniform convergence or a dominating hypothesis.
2. Equicontinuity is about the whole family at once; each function being uniformly continuous is not enough.
3. Stone–Weierstrass needs the constants (or at least non-vanishing at every point) and point separation; the complex version needs conjugation.
4. Existence of partial derivatives does not imply differentiability, or even continuity.
5. The inverse function theorem is local; global injectivity needs extra arguments.
6. Fubini needs integrability on the product.
7. Change of variables uses $|\det Dg|$; integration of forms uses $\det D\phi$ with sign, so orientation matters.

---

## 12. Connections forward

- **3.1 Measure and integration:** Lebesgue integral, dominated convergence (the right interchange theorem), Fubini–Tonelli, change of variables for Lebesgue measure; Riemann integrable ⇔ continuous a.e.
- **3.2 Functional analysis:** $C(K)$ as a Banach space; compact operators via Arzelà–Ascoli; Stone–Weierstrass gives density and separability results; contraction principles in Banach spaces; Riesz representation of $C(K)^*$.
- **3.5 Smooth manifolds:** charts and transition maps are $C^\infty$ diffeomorphisms; regular value theorem from the implicit function theorem; tangent spaces; forms, pullback and Stokes on manifolds; de Rham cohomology.
- **3.4 Algebraic topology:** chains and boundaries ($\partial^2 = 0$) are the start of singular homology; de Rham's theorem relates closed/exact forms to homology.
