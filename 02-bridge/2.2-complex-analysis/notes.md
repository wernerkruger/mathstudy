# 2.2 Complex Analysis: Study Notes

Notation: $\Omega$ is an open subset of $\mathbb{C}$; a *domain* (or *region*) is a non-empty open connected set. $D(a,r)$ is the open disc, $\mathbb{D} = D(0,1)$, $\mathbb{H} = \lbrace \operatorname{Im} z > 0\rbrace$.

---

## 1. Holomorphic functions and the Cauchy–Riemann equations

**Definition.** $f : \Omega \to \mathbb{C}$ is *complex differentiable* at $z_0$ if
$$
f'(z_0) = \lim_{h \to 0} \frac{f(z_0+h) - f(z_0)}{h}
$$
exists, where $h \to 0$ through complex values. $f$ is *holomorphic* on $\Omega$ if it is complex differentiable at every point of $\Omega$. An *entire* function is holomorphic on $\mathbb{C}$.

**Cauchy–Riemann.** Write $f = u + iv$ with $u,v$ real, $z = x+iy$. If $f$ is complex differentiable at $z_0$, taking $h$ real and then $h$ purely imaginary gives
$$
f'(z_0) = u_x + i v_x = \frac{1}{i}(u_y + i v_y),
$$
so
$$
u_x = v_y, \qquad u_y = -v_x.
$$
Conversely, if $u,v$ have *continuous* partial derivatives on $\Omega$ satisfying these equations, then $f$ is holomorphic. (Continuity of partials gives real differentiability; CR says the real derivative, a $2\times2$ matrix, has the form $\begin{pmatrix} a & -b \\ b & a\end{pmatrix}$, i.e. it is multiplication by $a+ib$.)

**Geometric meaning.** At a point where $f'(z_0) \ne 0$, $f$ acts infinitesimally as multiplication by $f'(z_0) = re^{i\theta}$: rotation by $\theta$ and scaling by $r$. So $f$ preserves angles between curves (it is *conformal*).

**Consequences.** If $f$ is holomorphic, $u$ and $v$ are harmonic ($\Delta u = 0$), granted that they are $C^2$ (which we will prove). With Wirtinger derivatives $\partial_z = \frac12(\partial_x - i\partial_y)$, $\partial_{\bar z} = \frac12(\partial_x + i\partial_y)$, CR is simply $\partial f/\partial \bar z = 0$.

**Examples.** Polynomials, $e^z = e^x(\cos y + i \sin y)$, $\sin z$, $\cos z$ are entire. $\bar z$ and $|z|^2$ are not holomorphic on any open set.

---

## 2. Power series

**Cauchy–Hadamard.** $\sum a_n (z-a)^n$ has radius of convergence $R$ given by $1/R = \limsup |a_n|^{1/n}$. It converges absolutely and locally uniformly in $D(a,R)$ and diverges for $|z - a| > R$.

**Theorem.** A power series is holomorphic inside its disc of convergence, and its derivative is the term-by-term derivative, which has the same radius of convergence. Hence power series are infinitely differentiable, and $a_n = f^{(n)}(a)/n!$.

**The exponential and logarithm.** $e^z = \sum z^n/n!$ is entire, $e^{z+w} = e^z e^w$, and $e^z$ is $2\pi i$-periodic. On a simply connected domain not containing $0$ there is a holomorphic *branch of the logarithm*: a holomorphic $\log$ with $e^{\log z} = z$. The *principal branch* on $\mathbb{C}\setminus(-\infty,0]$ is $\operatorname{Log} z = \ln|z| + i\operatorname{Arg} z$ with $\operatorname{Arg} z \in (-\pi,\pi)$. Then $z^\alpha := e^{\alpha \log z}$.

**Pitfall.** $\log(zw) = \log z + \log w$ holds only modulo $2\pi i$. There is no continuous logarithm on $\mathbb{C}\setminus\lbrace 0\rbrace$: going once around the origin changes $\arg$ by $2\pi$.

---

## 3. Contour integrals and Cauchy's theorem

**Definition.** For a piecewise $C^1$ curve $\gamma : [a,b] \to \Omega$ and continuous $f$,
$$
\int_\gamma f(z)\,dz = \int_a^b f(\gamma(t))\gamma'(t)\,dt.
$$
**ML-inequality:** $\left|\int_\gamma f\right| \le \operatorname{length}(\gamma) \cdot \sup_\gamma |f|$.

**Primitives.** If $F' = f$ on $\Omega$ then $\int_\gamma f = F(\gamma(b)) - F(\gamma(a))$. In particular the integral of $f$ around any closed curve is $0$.

**Key example.** For the circle $C_r$ of radius $r$ around $a$, traversed once anticlockwise,
$$
\int_{C_r} (z-a)^n\,dz = \begin{cases} 2\pi i & n = -1, \\ 0 & n \ne -1. \end{cases}
$$
(For $n \ne -1$, $(z-a)^{n+1}/(n+1)$ is a primitive.) Hence $1/(z-a)$ has no primitive on $\mathbb{C}\setminus\lbrace a\rbrace$.

**Goursat's theorem.** If $f$ is holomorphic on $\Omega$ and $T \subseteq \Omega$ is a closed triangle (with interior), then $\int_{\partial T} f = 0$.

*Proof sketch.* Subdivide $T$ into 4 congruent triangles by joining the midpoints of the sides. The integral over $\partial T$ is the sum of the 4 integrals (interior edges cancel), so one of them, $T_1$, satisfies $|\int_{\partial T_1} f| \ge \frac14 |\int_{\partial T} f|$. Repeat to get nested triangles $T_n$ with $|\int_{\partial T_n} f| \ge 4^{-n}|\int_{\partial T}f|$, diameter $d_n = 2^{-n}d$ and perimeter $p_n = 2^{-n}p$. They shrink to a point $z_0$ (compactness). Near $z_0$, $f(z) = f(z_0) + f'(z_0)(z-z_0) + \psi(z)(z-z_0)$ with $\psi(z) \to 0$. The linear part has a primitive so integrates to $0$. Hence
$$
\Big|\int_{\partial T_n} f\Big| \le p_n d_n \sup_{T_n}|\psi| = 4^{-n} p d \sup_{T_n}|\psi|.
$$
Thus $|\int_{\partial T} f| \le pd \sup_{T_n} |\psi| \to 0$. $\square$

**Cauchy's theorem in a disc.** If $f$ is holomorphic in a disc $D$, then $f$ has a primitive in $D$ (define $F(z) = \int_{[c,z]} f$ along the segment from the centre $c$; Goursat shows $F(z+h) - F(z) = \int_{[z,z+h]} f$, so $F' = f$). Hence $\int_\gamma f = 0$ for every closed curve $\gamma$ in $D$.

**General versions.** The same conclusion holds for any closed curve in a *simply connected* domain, and more generally (*homology version*) for any closed curve $\gamma$ in $\Omega$ with winding number $n(\gamma,a) = 0$ for every $a \notin \Omega$. A useful practical form: if $f$ is holomorphic on an open set containing a closed region bounded by finitely many piecewise smooth curves, the integral over the (positively oriented) boundary is zero. "Keyhole" and "indented" contour arguments use this.

---

## 4. Cauchy's integral formula and its consequences

**Cauchy's integral formula.** Let $f$ be holomorphic on an open set containing the closed disc $\overline{D(a,r)}$, and $C$ its boundary circle (anticlockwise). Then for $|z - a| < r$,
$$
f(z) = \frac{1}{2\pi i}\int_C \frac{f(\zeta)}{\zeta - z}\,d\zeta.
$$
*Proof sketch.* Apply Cauchy's theorem to the region between $C$ and a small circle $C_\varepsilon$ around $z$ (a keyhole argument), so the integral over $C$ equals the integral over $C_\varepsilon$. Write $\frac{f(\zeta)}{\zeta - z} = \frac{f(\zeta) - f(z)}{\zeta - z} + \frac{f(z)}{\zeta - z}$. The first term is bounded near $z$, so its integral over $C_\varepsilon$ tends to $0$; the second gives $2\pi i f(z)$. $\square$

**Holomorphic ⇒ analytic.** Expand $\frac{1}{\zeta - z} = \sum_{n \ge 0} \frac{(z-a)^n}{(\zeta - a)^{n+1}}$ (uniformly for $\zeta \in C$, fixed $|z-a|<r$) and integrate term by term:
$$
f(z) = \sum_{n\ge0} a_n (z-a)^n, \qquad a_n = \frac{1}{2\pi i}\int_C \frac{f(\zeta)}{(\zeta - a)^{n+1}}\,d\zeta = \frac{f^{(n)}(a)}{n!}.
$$
So a holomorphic function is infinitely differentiable, and its Taylor series at $a$ converges on the largest disc around $a$ contained in $\Omega$.

**Cauchy estimates.** If $|f| \le M$ on $C$, then $|f^{(n)}(a)| \le n!\,M/r^n$.

**Liouville's theorem.** A bounded entire function is constant. (Cauchy estimate with $n=1$ and $r\to\infty$ gives $f'(a) = 0$.)

**Fundamental theorem of algebra.** A non-constant polynomial $p$ has a root in $\mathbb{C}$. (If not, $1/p$ is entire and tends to $0$ at $\infty$, so it is bounded, hence constant.)

**Morera's theorem.** If $f$ is continuous on a disc and $\int_{\partial T} f = 0$ for every triangle $T$ in it, then $f$ is holomorphic. (The proof of Cauchy in a disc gives a primitive $F$, which is holomorphic, hence so is $F' = f$.)

**Uniform limits.** If $f_n$ are holomorphic on $\Omega$ and $f_n \to f$ uniformly on compact subsets, then $f$ is holomorphic and $f_n' \to f'$ uniformly on compact subsets. (Morera for the first part, Cauchy's formula for the derivative for the second.) This is false in real analysis: $\sqrt{x^2 + 1/n} \to |x|$ uniformly.

**Identity theorem.** Let $f$ be holomorphic on a domain $\Omega$. If the zero set of $f$ has a limit point in $\Omega$, then $f \equiv 0$.

*Proof sketch.* Let $U$ be the set of points where all derivatives of $f$ vanish. $U$ is closed (intersection of closed sets). $U$ is open (power series). If $z_0 \in \Omega$ is a limit point of zeros and $f \not\equiv 0$ near $z_0$, write $f(z) = (z-z_0)^m g(z)$ with $g(z_0) \ne 0$; then $f \ne 0$ in a punctured neighbourhood, contradiction. So $z_0 \in U$, and $U \ne \emptyset$; connectedness gives $U = \Omega$. $\square$

Consequence: two holomorphic functions on a domain that agree on a set with a limit point in the domain agree everywhere. Example: $\sin^2 z + \cos^2 z = 1$ on $\mathbb{C}$ because it holds on $\mathbb{R}$.

**Pitfall.** The limit point must lie *in* $\Omega$. $\sin(1/z)$ on $\mathbb{C}\setminus\lbrace 0\rbrace$ vanishes at $1/(k\pi)$, which accumulate only at $0 \notin \Omega$.

**Mean value property.** $f(a) = \frac{1}{2\pi}\int_0^{2\pi} f(a + re^{it})\,dt$.

**Maximum modulus principle.** If $f$ is holomorphic on a domain $\Omega$ and $|f|$ has a local maximum in $\Omega$, then $f$ is constant. Hence on a bounded domain, if $f$ is continuous on $\overline\Omega$, $\max_{\overline\Omega}|f|$ is attained on $\partial\Omega$.

*Proof sketch.* If $|f(a)| \ge |f|$ on $\overline{D(a,r)}$, the mean value property gives $|f(a)| \le \frac1{2\pi}\int |f(a+re^{it})| dt \le |f(a)|$, forcing $|f| = |f(a)|$ on each such circle, so $|f|$ is constant near $a$, so $f$ is constant near $a$ (CR, or open mapping), and then on $\Omega$ by the identity theorem. $\square$

**Open mapping theorem.** A non-constant holomorphic function on a domain maps open sets to open sets. (Proved with the argument principle, Section 7.)

**Schwarz lemma.** If $f : \mathbb{D} \to \mathbb{D}$ is holomorphic and $f(0) = 0$, then $|f(z)| \le |z|$ and $|f'(0)| \le 1$. If equality $|f(z)| = |z|$ holds for some $z \ne 0$, or $|f'(0)| = 1$, then $f(z) = e^{i\theta}z$.

*Proof.* $g(z) = f(z)/z$ (with $g(0) = f'(0)$) is holomorphic on $\mathbb{D}$. On $|z| = r < 1$, $|g| \le 1/r$; by maximum modulus $|g| \le 1/r$ on $D(0,r)$; let $r \to 1$. If $|g| = 1$ at an interior point, $g$ is a constant of modulus 1. $\square$

---

## 5. Laurent series and isolated singularities

**Laurent's theorem.** If $f$ is holomorphic on the annulus $A = \lbrace r < |z - a| < R\rbrace$ ($0 \le r < R \le \infty$), then
$$
f(z) = \sum_{n=-\infty}^{\infty} c_n (z-a)^n, \qquad c_n = \frac{1}{2\pi i}\int_{|\zeta - a| = \rho} \frac{f(\zeta)}{(\zeta - a)^{n+1}}\,d\zeta \quad (r<\rho<R),
$$
converging absolutely and locally uniformly on $A$. The expansion is unique, so any method of finding it (geometric series, known Taylor series) gives "the" Laurent series. **The series depends on the annulus:** $1/(z(z-1))$ has different expansions on $0<|z|<1$ and $|z|>1$.

**Isolated singularities.** Suppose $f$ is holomorphic on $D(a,R)\setminus\lbrace a\rbrace$ with Laurent series $\sum c_n (z-a)^n$.

| Type | Laurent series | Behaviour near $a$ |
|---|---|---|
| Removable | $c_n = 0$ for all $n<0$ | $f$ bounded near $a$ (Riemann's theorem: bounded ⇒ removable) |
| Pole of order $m$ | $c_{-m} \ne 0$, $c_n = 0$ for $n < -m$ | $\lvert f(z)\rvert \to \infty$; $f = g/(z-a)^m$ with $g(a)\ne0$ |
| Essential | $c_n \ne 0$ for infinitely many $n<0$ | **Casorati–Weierstrass:** $f(D(a,\varepsilon)\setminus\lbrace a\rbrace)$ is dense in $\mathbb{C}$ for every $\varepsilon$ |

(Great Picard theorem, statement only: near an essential singularity $f$ takes every complex value, with at most one exception, infinitely often.)

*Proof of Casorati–Weierstrass.* If $|f(z) - w| \ge \delta$ on a punctured disc, then $g = 1/(f - w)$ is bounded there, so has a removable singularity. Then $f = w + 1/g$ has a removable singularity or a pole at $a$. $\square$

A function is *meromorphic* on $\Omega$ if it is holomorphic except at isolated poles. Meromorphic functions on the Riemann sphere $\hat{\mathbb{C}} = \mathbb{C}\cup\lbrace\infty\rbrace$ are exactly rational functions. (Behaviour at $\infty$ is defined via $g(w) = f(1/w)$ at $w = 0$.)

---

## 6. Residues

**Definition.** The *residue* of $f$ at an isolated singularity $a$ is $\operatorname{Res}(f,a) = c_{-1}$, the coefficient of $(z-a)^{-1}$.

**Residue theorem.** Let $f$ be holomorphic on an open set containing a closed disc (or any closed region with a positively oriented piecewise smooth boundary $\gamma$), except at finitely many points $a_1,\dots,a_k$ inside. Then
$$
\int_\gamma f(z)\,dz = 2\pi i \sum_{j} \operatorname{Res}(f, a_j).
$$
(Subtract principal parts; only the $(z-a_j)^{-1}$ terms survive integration.)

**Computing residues.**

- Simple pole: $\operatorname{Res}(f,a) = \lim_{z\to a}(z-a)f(z)$. If $f = g/h$ with $g(a)\ne0$, $h(a)=0$, $h'(a)\ne0$: $\operatorname{Res} = g(a)/h'(a)$.
- Pole of order $m$: $\operatorname{Res}(f,a) = \dfrac{1}{(m-1)!}\lim_{z\to a}\dfrac{d^{m-1}}{dz^{m-1}}\big[(z-a)^m f(z)\big]$.
- Essential singularity: expand the Laurent series directly (for example $e^{1/z}$ has residue 1 at 0).

**Standard real integrals.**

1. *Rational functions:* $\int_{-\infty}^\infty P(x)/Q(x)\,dx$ with $\deg Q \ge \deg P + 2$ and no real zeros of $Q$: close in the upper half-plane with a semicircle of radius $R$; the arc contributes $O(1/R)$. Example: $\int_{-\infty}^\infty \frac{dx}{1+x^2} = 2\pi i \cdot \frac{1}{2i} = \pi$.
2. *Trigonometric integrals:* $\int_0^{2\pi} R(\cos\theta,\sin\theta)\,d\theta$: put $z = e^{i\theta}$, $\cos\theta = \frac{z+z^{-1}}{2}$, $\sin\theta = \frac{z - z^{-1}}{2i}$, $d\theta = \frac{dz}{iz}$, and integrate over $|z|=1$.
3. *Fourier-type integrals:* $\int_{-\infty}^\infty f(x)e^{ix}\,dx$ with $f \to 0$: use **Jordan's lemma**: on the upper semicircle $C_R$,
$$
\Big|\int_{C_R} g(z)e^{iz}\,dz\Big| \le \pi \max_{C_R}|g|,
$$
because $\int_0^\pi e^{-R\sin\theta}\,d\theta < \pi/R$.
4. *Indented contours:* for a simple pole on the real axis, go around it on a small semicircle of radius $\varepsilon$; as $\varepsilon \to 0$ the small semicircle contributes $-\pi i \operatorname{Res}$ (clockwise, half the full-circle value). Gives $\int_0^\infty \frac{\sin x}{x}\,dx = \frac\pi2$.
5. *Keyhole contours:* for $\int_0^\infty x^{a-1}R(x)\,dx$ or integrals with $\log x$: cut along $[0,\infty)$, use the branch with $\arg \in (0,2\pi)$; the two sides of the cut differ by the factor $e^{2\pi i(a-1)}$.

---

## 7. The argument principle and Rouché's theorem

**Argument principle.** Let $f$ be meromorphic on an open set containing a closed disc $\overline D$, with no zeros or poles on $\partial D$. Then
$$
\frac{1}{2\pi i}\int_{\partial D} \frac{f'(z)}{f(z)}\,dz = Z - P,
$$
where $Z$ and $P$ are the numbers of zeros and poles inside $D$, counted with multiplicity. (Near a zero of order $m$, $f'/f = \frac{m}{z-a} + \text{holomorphic}$; near a pole of order $m$, $f'/f = \frac{-m}{z-a} + \text{holomorphic}$.) Geometrically, $Z - P$ is the winding number of the curve $f(\partial D)$ around $0$.

**Rouché's theorem.** Let $f, g$ be holomorphic on an open set containing $\overline{D}$, and suppose $|g(z)| < |f(z)|$ for all $z \in \partial D$. Then $f$ and $f+g$ have the same number of zeros in $D$ (with multiplicity).

*Proof sketch.* For $t\in[0,1]$, $f_t = f + tg$ has no zeros on $\partial D$ (since $|f| > |g| \ge t|g|$). The number of zeros $\frac{1}{2\pi i}\int f_t'/f_t$ is integer-valued and continuous in $t$, hence constant. $\square$

"Dog on a leash": if the leash $|g|$ is shorter than the distance $|f|$ of the person from the lamppost, the dog and the person walk around the lamppost the same number of times.

**Consequences.**

- *Fundamental theorem of algebra* (again): $z^n$ dominates $a_{n-1}z^{n-1} + \dots + a_0$ on a large circle, so $p$ has $n$ zeros.
- *Open mapping theorem*: if $f(a) = w_0$, then for $w$ close to $w_0$, Rouché applied to $f - w_0$ and the constant $w_0 - w$ on a small circle around $a$ shows $f - w$ has a zero near $a$.
- *Hurwitz's theorem*: if $f_n \to f$ locally uniformly on a domain, $f_n$ have no zeros, then $f$ has no zeros or $f \equiv 0$. If the $f_n$ are injective, $f$ is injective or constant. (Used in the Riemann mapping theorem.)
- *Local behaviour*: if $f(a) = w_0$ with $f - w_0$ having a zero of order $m$ at $a$, then $f$ is exactly $m$-to-$1$ near $a$ (onto a punctured neighbourhood of $w_0$). In particular, injective holomorphic maps have non-vanishing derivative, and their inverses are holomorphic.

---

## 8. Conformal maps and Möbius transformations

**Conformal equivalence.** A *conformal map* (biholomorphism) between open sets $U, V$ is a holomorphic bijection $U \to V$; its inverse is automatically holomorphic.

**Möbius transformations.** $T(z) = \dfrac{az+b}{cz+d}$ with $ad - bc \ne 0$, viewed as a bijection of $\hat{\mathbb{C}}$ ($T(-d/c) = \infty$, $T(\infty) = a/c$).

- They form a group under composition, isomorphic to $\mathrm{PGL}_2(\mathbb{C}) = \mathrm{GL}_2(\mathbb{C})/\mathbb{C}^*$ (compose ↔ multiply matrices).
- Every Möbius map is a composition of translations, rotation-dilations $z\mapsto az$, and inversion $z\mapsto 1/z$.
- They map "circles" (circles and straight lines; a straight line is a circle on $\hat{\mathbb C}$ through $\infty$) to circles.
- There is exactly one Möbius map sending three given distinct points $z_1,z_2,z_3$ to $0,1,\infty$:
$$
T(z) = \frac{(z - z_1)(z_2 - z_3)}{(z - z_3)(z_2 - z_1)} \quad\text{(the cross-ratio)}.
$$
So a Möbius map is determined by the images of three points.

**Key examples.**

- *Cayley transform:* $z \mapsto \dfrac{z - i}{z+i}$ maps $\mathbb{H}$ conformally onto $\mathbb{D}$, with inverse $w \mapsto i\dfrac{1+w}{1-w}$.
- $\mathrm{Aut}(\mathbb{D}) = \left\lbrace z \mapsto e^{i\theta}\dfrac{z - a}{1 - \bar a z} : \theta\in\mathbb{R}, |a|<1 \right\rbrace$ (proof via Schwarz lemma; see Problem 22).
- $\mathrm{Aut}(\mathbb{H}) = \left\lbrace z\mapsto \dfrac{az+b}{cz+d} : a,b,c,d\in\mathbb{R}, ad-bc = 1\right\rbrace \cong \mathrm{PSL}_2(\mathbb{R})$.
- $\mathrm{Aut}(\mathbb{C}) = \lbrace az+b : a\ne0\rbrace$ (Problem 20).
- Other building blocks: $z \mapsto z^\alpha$ opens or closes sectors; $e^z$ maps the strip $\lbrace 0 < \operatorname{Im} z < \pi\rbrace$ onto $\mathbb{H}$; $\log$ maps $\mathbb{H}$ back onto the strip.

**Riemann mapping theorem (statement).** If $\Omega \subsetneq \mathbb{C}$ is a non-empty simply connected open set and $z_0 \in \Omega$, there is a unique conformal map $F : \Omega \to \mathbb{D}$ with $F(z_0) = 0$ and $F'(z_0) > 0$.

*Outline of proof (SS Ch. 8).* (1) Using a square root, conformally embed $\Omega$ into $\mathbb D$ with $z_0 \mapsto 0$. (2) Consider the family $\mathcal F$ of injective holomorphic maps $\Omega \to \mathbb{D}$ fixing $z_0 \mapsto 0$; it is non-empty and uniformly bounded. (3) **Montel's theorem** (a uniformly bounded family of holomorphic functions is normal; this is Arzelà–Ascoli plus Cauchy estimates) gives a limit $f$ maximising $|f'(z_0)|$; Hurwitz shows $f$ is injective. (4) If $f$ missed a point of $\mathbb{D}$, composing with disc automorphisms and a square root would produce an element of $\mathcal{F}$ with larger derivative at $z_0$, contradicting maximality. Uniqueness follows from the Schwarz lemma.

$\mathbb{C}$ itself is excluded: by Liouville, there is no non-constant holomorphic map $\mathbb C \to \mathbb D$.

---

## 9. Common pitfalls

1. Complex differentiability at a single point is weak (e.g. $|z|^2$ at $0$); holomorphy requires an open set.
2. Real-valued holomorphic functions on a domain are constant (CR gives $u_x = u_y = 0$; or open mapping).
3. Check that the contribution from large arcs really tends to zero; for $e^{iz}$ use Jordan's lemma, for $e^{-iz}$ close in the *lower* half-plane.
4. Orientation: the residue theorem uses positively oriented (anticlockwise) boundaries. Indentations traversed clockwise contribute with a minus sign.
5. Branch choices for $\log$ and $z^\alpha$ must be consistent along the whole contour; state the branch explicitly.
6. When counting with Rouché, the inequality must be strict on the *whole* boundary circle.
7. Residue at a pole of order $\ge 2$ is not $g(a)/h'(a)$; use the derivative formula or a Laurent expansion.

---

## 10. Connections forward

- **2.4 Analysis in $\mathbb{R}^n$:** Arzelà–Ascoli is the engine behind Montel's theorem; Green's theorem and differential forms give another proof of Cauchy's theorem ($f\,dz$ is closed iff $f$ is holomorphic).
- **3.1 Measure theory and 3.2 Functional analysis:** Fourier analysis and the Paley–Wiener theorems; Hardy spaces $H^p$; the spectrum of a bounded operator is non-empty because the resolvent is a bounded holomorphic function (Liouville); holomorphic functional calculus.
- **3.4 Algebraic topology:** winding numbers and the fundamental group of the circle; the argument principle is the degree of a map $S^1 \to S^1$; branches of $\log$ and covering spaces.
- **3.5 Smooth manifolds:** Riemann surfaces are complex 1-manifolds; the Riemann sphere $\hat{\mathbb{C}} \cong \mathbb{CP}^1$.
- **Electives:** analytic number theory (the zeta function and the prime number theorem: SS Ch. 6–7), Riemann surfaces, several complex variables.
