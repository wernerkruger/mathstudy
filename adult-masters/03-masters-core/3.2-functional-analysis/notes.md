# 3.2 Functional analysis: study notes

These notes condense the module. Scalars are $\mathbb{F}=\mathbb{R}$ or $\mathbb{C}$. $X,Y$ denote normed spaces, $H$ a Hilbert space, $B(X,Y)$ the bounded linear maps, $X^*=B(X,\mathbb{F})$ the dual space. Read the texts first; use these notes to consolidate and review.

---

## 1. Normed and Banach spaces

A *norm* satisfies $\lVert x\rVert=0\iff x=0$, $\lVert\lambda x\rVert=\lvert\lambda\rvert\lVert x\rVert$, and the triangle inequality. A *Banach space* is a complete normed space.

**Standard examples.**
- $\ell^p$ ($1\le p<\infty$), $\ell^\infty$, and $c_0=\lbrace x\in\ell^\infty:x_n\to0\rbrace$, a closed subspace of $\ell^\infty$.
- $C(K)$ with the sup norm, $K$ compact Hausdorff.
- $L^p(\mu)$, $1\le p\le\infty$ (Riesz–Fischer, from [3.1](../3.1-measure-integration/)).
- $C^k[a,b]$ with $\lVert f\rVert=\sum_{j\le k}\lVert f^{(j)}\rVert_\infty$.
- Non-example: $C[0,1]$ with the $L^1$ norm is not complete; its completion is $L^1[0,1]$.

**Completeness criterion.** $X$ is complete iff every absolutely convergent series $\sum x_n$ (meaning $\sum\lVert x_n\rVert<\infty$) converges.

**Quotients.** If $M\subseteq X$ is a closed subspace, $\lVert x+M\rVert=\inf_{m\in M}\lVert x+m\rVert$ is a norm on $X/M$, complete if $X$ is.

**Finite dimensions.** All norms on a finite-dimensional space are equivalent (compare with the $\ell^1$ norm in a basis, and use compactness of its unit sphere). Consequences: finite-dimensional normed spaces are complete; finite-dimensional subspaces are closed; every linear map out of a finite-dimensional normed space is bounded.

**Riesz's lemma.** If $M\subsetneq X$ is a closed proper subspace and $0<\theta<1$, there is $x$ with $\lVert x\rVert=1$ and $\mathrm{dist}(x,M)\ge\theta$.

*Proof.* Take $x_0\notin M$, $d=\mathrm{dist}(x_0,M)>0$ (closedness), $m_0\in M$ with $\lVert x_0-m_0\rVert<d/\theta$. Put $x=(x_0-m_0)/\lVert x_0-m_0\rVert$. For $m\in M$, $\lVert x-m\rVert=\lVert x_0-(m_0+\lVert x_0-m_0\rVert m)\rVert/\lVert x_0-m_0\rVert\ge d/\lVert x_0-m_0\rVert>\theta$. $\square$

**Theorem.** The closed unit ball of $X$ is compact iff $\dim X<\infty$. (If infinite-dimensional, Riesz's lemma builds unit vectors $x_1,x_2,\dots$ with $\lVert x_n-x_m\rVert\ge\frac12$, using $M=\mathrm{span}\,\lbrace x_1,\dots,x_{n-1}\rbrace$.) This single fact is behind most differences between finite and infinite dimensions.

---

## 2. Bounded linear operators

For linear $T:X\to Y$ the following are equivalent: $T$ is continuous; continuous at $0$; bounded, i.e. $\lVert T\rVert=\sup_{\lVert x\rVert\le1}\lVert Tx\rVert<\infty$. $B(X,Y)$ with the operator norm is a normed space, complete when $Y$ is. In particular $X^*$ is always a Banach space. $\lVert ST\rVert\le\lVert S\rVert\lVert T\rVert$, so $B(X)$ is a Banach algebra.

**Unbounded examples.** Differentiation $f\mapsto f'$ from $(C^1[0,1],\lVert\cdot\rVert_\infty)$ to $C[0,1]$ ($\lVert x^n\rVert_\infty=1$, $\lVert nx^{n-1}\rVert_\infty=n$). Every infinite-dimensional normed space has unbounded linear functionals (extend a Hamel basis with unbounded values; this uses choice).

**Neumann series.** If $X$ is Banach and $\lVert T\rVert<1$, then $I-T$ is invertible with $(I-T)^{-1}=\sum_{n\ge0}T^n$. Hence the invertible operators form an open set, and inversion is continuous.

**Duals of sequence spaces.** For $1\le p<\infty$ and $1/p+1/q=1$, the map $b\mapsto(a\mapsto\sum a_nb_n)$ is an isometric isomorphism $\ell^q\to(\ell^p)^*$; also $c_0^*\cong\ell^1$. But $(\ell^\infty)^*\supsetneq\ell^1$: a Banach limit (constructed with Hahn–Banach) is not given by any $\ell^1$ sequence.

---

## 3. Hilbert spaces

An inner product space satisfies **Cauchy–Schwarz** $\lvert\langle x,y\rangle\rvert\le\lVert x\rVert\lVert y\rVert$ and the **parallelogram law**
$$
\lVert x+y\rVert^2+\lVert x-y\rVert^2=2\lVert x\rVert^2+2\lVert y\rVert^2 .
$$
A norm comes from an inner product iff it satisfies the parallelogram law (Jordan–von Neumann); the inner product is then recovered by **polarisation**, e.g. over $\mathbb{C}$, $\langle x,y\rangle=\frac14\sum_{k=0}^3i^k\lVert x+i^ky\rVert^2$ (inner product linear in the first slot). A complete inner product space is a *Hilbert space*. Examples: $\ell^2$, $L^2(\mu)$, Sobolev spaces $H^k$.

**Projection theorem.** Let $C\subseteq H$ be non-empty, closed and convex. Each $x\in H$ has a unique closest point $P_Cx\in C$, characterised by $\mathrm{Re}\,\langle x-P_Cx,\,c-P_Cx\rangle\le0$ for all $c\in C$.

*Proof.* Let $d=\inf_{c\in C}\lVert x-c\rVert$ and $c_n\in C$ with $\lVert x-c_n\rVert\to d$. By the parallelogram law applied to $x-c_n$ and $x-c_m$,
$$
\lVert c_n-c_m\rVert^2=2\lVert x-c_n\rVert^2+2\lVert x-c_m\rVert^2-4\left\lVert x-\tfrac{c_n+c_m}{2}\right\rVert^2\le2\lVert x-c_n\rVert^2+2\lVert x-c_m\rVert^2-4d^2\to0,
$$
using convexity ($\frac{c_n+c_m}2\in C$). So $(c_n)$ is Cauchy; its limit is a minimiser (closedness). Uniqueness follows from the same identity. $\square$

**Orthogonal decomposition.** If $M$ is a closed subspace, $P_M$ is linear, $x-P_Mx\in M^\perp$, and $H=M\oplus M^\perp$. Also $M^{\perp\perp}=M$; for any subspace $S$, $S^{\perp\perp}=\overline{S}$. A subspace is dense iff its orthogonal complement is $\lbrace0\rbrace$.

**Riesz representation theorem.** For every $\varphi\in H^*$ there is a unique $y\in H$ with $\varphi(x)=\langle x,y\rangle$ for all $x$, and $\lVert\varphi\rVert=\lVert y\rVert$.

*Proof.* If $\varphi=0$ take $y=0$. Otherwise $N=\ker\varphi$ is a closed proper subspace; pick $z\in N^\perp$ with $\varphi(z)=1$. For any $x$, $x-\varphi(x)z\in N$, so $\langle x-\varphi(x)z,z\rangle=0$, i.e. $\varphi(x)=\langle x,z\rangle/\lVert z\rVert^2$. Take $y=z/\lVert z\rVert^2$. $\square$

So $H^*\cong H$ (conjugate-linearly over $\mathbb{C}$), and every Hilbert space is reflexive. This theorem gave the slick proof of Radon–Nikodym in 3.1.

---

## 4. Orthonormal bases

An orthonormal set $\lbrace e_\alpha\rbrace$ satisfies **Bessel's inequality** $\sum_\alpha\lvert\langle x,e_\alpha\rangle\rvert^2\le\lVert x\rVert^2$ (only countably many terms are non-zero). It is an *orthonormal basis* (maximal orthonormal set) iff any of the following equivalent conditions holds:
1. $\langle x,e_\alpha\rangle=0$ for all $\alpha$ implies $x=0$;
2. $x=\sum_\alpha\langle x,e_\alpha\rangle e_\alpha$ for all $x$ (unconditionally convergent in norm);
3. **Parseval:** $\lVert x\rVert^2=\sum_\alpha\lvert\langle x,e_\alpha\rangle\rvert^2$ for all $x$;
4. the linear span is dense.

Every Hilbert space has an orthonormal basis (Zorn), and all have the same cardinality (the *Hilbert dimension*). $H$ is separable iff it has a countable orthonormal basis (Gram–Schmidt on a countable dense set). Hence **every infinite-dimensional separable Hilbert space is isometrically isomorphic to $\ell^2$**, via $x\mapsto(\langle x,e_n\rangle)_n$ (the Riesz–Fischer theorem in its original form).

**Examples.** $\lbrace e^{inx}/\sqrt{2\pi}\rbrace_{n\in\mathbb{Z}}$ in $L^2[0,2\pi]$ (completeness via Fejér or Stone–Weierstrass and density of $C$ in $L^2$); normalised Legendre polynomials in $L^2[-1,1]$; Haar wavelets in $L^2[0,1]$.

*Pitfall:* an orthonormal basis is not a Hamel (algebraic) basis. An infinite-dimensional Banach space has no countable Hamel basis (Baire).

---

## 5. The Hahn–Banach theorem

**Analytic form (real).** Let $p:X\to\mathbb{R}$ be sublinear ($p(x+y)\le p(x)+p(y)$, $p(tx)=tp(x)$ for $t\ge0$), $M\subseteq X$ a subspace, and $f:M\to\mathbb{R}$ linear with $f\le p$ on $M$. Then $f$ extends to a linear $F:X\to\mathbb{R}$ with $F\le p$ on $X$.

*Proof sketch.* *One-dimensional step:* to extend to $M+\mathbb{R}x_0$ we need a value $c=F(x_0)$ with $f(m)+tc\le p(m+tx_0)$ for all $m\in M$, $t\in\mathbb{R}$. Dividing by $\lvert t\rvert$, this is equivalent to
$$
\sup_{m\in M}\left(f(m)-p(m-x_0)\right)\le c\le\inf_{m\in M}\left(p(m+x_0)-f(m)\right),
$$
and the sup is at most the inf because $f(m)+f(m')=f(m+m')\le p(m+m')\le p(m-x_0)+p(m'+x_0)$. *Transfinite step:* apply Zorn's lemma to the poset of dominated extensions; a maximal one must be defined on all of $X$ by the one-dimensional step. $\square$

**Complex form.** If $p$ is a seminorm and $\lvert f\rvert\le p$ on $M$, extend the real-linear functional $\mathrm{Re}\,f$ to a real-linear $G\le p$ on $X$, and set $F(x)=G(x)-iG(ix)$. Then $F$ is complex-linear, extends $f$, and $\lvert F\rvert\le p$.

**Normed-space corollaries.**
1. Every $f\in M^*$ extends to $F\in X^*$ with $\lVert F\rVert=\lVert f\rVert$ (take $p=\lVert f\rVert\lVert\cdot\rVert$).
2. For every $x\ne0$ there is $f\in X^*$, $\lVert f\rVert=1$, $f(x)=\lVert x\rVert$. Hence $X^*$ separates points and $\lVert x\rVert=\max_{\lVert f\rVert\le1}\lvert f(x)\rvert$.
3. If $M$ is a closed subspace and $x\notin M$, there is $f\in X^*$ with $f|_M=0$ and $f(x)\neq0$. Hence a subspace is dense iff the only functional vanishing on it is $0$.
4. If $X^*$ is separable, so is $X$.

**Geometric form (separation).** If $A,B\subseteq X$ are disjoint convex sets with $A$ open, there are $f\in X^*$ and $\gamma\in\mathbb{R}$ with $\mathrm{Re}\,f(a)<\gamma\le\mathrm{Re}\,f(b)$ for all $a\in A$, $b\in B$. If $A$ is closed and $B$ is compact (both convex, disjoint), they can be strictly separated. The proof applies the analytic form to the Minkowski functional of an open convex set.

---

## 6. Baire category and its three consequences

**Baire category theorem.** In a complete metric space, a countable intersection of dense open sets is dense. Equivalently, a complete metric space is not a countable union of nowhere dense sets.

**Uniform boundedness principle (Banach–Steinhaus).** Let $X$ be Banach and $\mathcal{F}\subseteq B(X,Y)$. If $\sup_{T\in\mathcal{F}}\lVert Tx\rVert<\infty$ for each $x\in X$, then $\sup_{T\in\mathcal{F}}\lVert T\rVert<\infty$.

*Proof.* The sets $E_n=\lbrace x:\sup_T\lVert Tx\rVert\le n\rbrace$ are closed and cover $X$; by Baire, some $E_n$ contains a ball $B(x_0,r)$. For $\lVert z\rVert<r$, $\lVert Tz\rVert\le\lVert T(x_0+z)\rVert+\lVert Tx_0\rVert\le2n$, so $\lVert T\rVert\le2n/r$ for all $T\in\mathcal{F}$. $\square$

*Consequences:* weakly convergent sequences are bounded; a pointwise limit of bounded operators on a Banach space is bounded; there is a continuous function whose Fourier series diverges at a point (the Dirichlet kernels have $L^1$ norms $\to\infty$).

**Open mapping theorem.** If $X,Y$ are Banach and $T\in B(X,Y)$ is surjective, then $T$ is open (maps open sets to open sets).

*Proof sketch.* $Y=\bigcup_n\overline{T(B_X(0,n))}$, so by Baire some $\overline{T(B_X(0,n))}$ has interior, and by symmetry and convexity $\overline{T(B_X(0,1))}\supseteq B_Y(0,\delta)$. A successive-approximation argument using completeness of $X$ removes the closure: $T(B_X(0,2))\supseteq B_Y(0,\delta)$. $\square$

**Bounded inverse theorem.** A bijective bounded operator between Banach spaces has bounded inverse. Corollary: if a vector space is complete under two norms with $\lVert\cdot\rVert_1\le C\lVert\cdot\rVert_2$, the norms are equivalent.

**Closed graph theorem.** If $X,Y$ are Banach and $T:X\to Y$ is linear with closed graph $\lbrace(x,Tx)\rbrace\subseteq X\times Y$, then $T$ is bounded. (Apply the bounded inverse theorem to the projection from the graph onto $X$.) In practice: to show $T$ bounded, it suffices to show that $x_n\to x$ and $Tx_n\to y$ imply $y=Tx$.

*Pitfall:* all three theorems need completeness. On non-complete spaces each can fail.

---

## 7. Duals and reflexivity

The canonical map $J:X\to X^{**}$, $J(x)(f)=f(x)$, is an isometry (Hahn–Banach, corollary 2). $X$ is *reflexive* if $J$ is onto.

- Hilbert spaces are reflexive (Riesz representation twice).
- $L^p$ for $1<p<\infty$ is reflexive, since $(L^p)^*=L^q$ and $(L^q)^*=L^p$ through the same pairing.
- $c_0$, $\ell^1$, $\ell^\infty$, $L^1[0,1]$, $L^\infty[0,1]$ and $C[0,1]$ are not reflexive.
- Closed subspaces of reflexive spaces are reflexive. $X$ is reflexive iff $X^*$ is.
- If $X$ is separable and reflexive then $X^*$ is separable; so a separable space with non-separable dual (like $\ell^1$, with dual $\ell^\infty$) is not reflexive.

**Dual of $L^p$.** For σ-finite $\mu$ and $1\le p<\infty$, $(L^p)^*\cong L^q$. Sketch for finite $\mu$: given $\varphi\in(L^p)^*$, $\nu(E)=\varphi(\chi_E)$ is a (complex) measure, absolutely continuous with respect to $\mu$; its Radon–Nikodym derivative $g$ represents $\varphi$ on simple functions; then show $g\in L^q$ by testing against truncations of $\lvert g\rvert^{q-1}\mathrm{sgn}\,\bar g$.

**Adjoint (Banach-space version).** For $T\in B(X,Y)$, $T':Y^*\to X^*$, $T'f=f\circ T$, with $\lVert T'\rVert=\lVert T\rVert$.

---

## 8. Weak and weak* topologies

The **weak topology** on $X$ is the coarsest making every $f\in X^*$ continuous: $x_n\rightharpoonup x$ iff $f(x_n)\to f(x)$ for all $f\in X^*$. The **weak\* topology** on $X^*$ is the coarsest making every evaluation $f\mapsto f(x)$ continuous: $f_n\overset{*}{\rightharpoonup}f$ iff $f_n(x)\to f(x)$ for all $x$.

Facts:
- In infinite dimensions, the weak topology is strictly coarser than the norm topology; every weak neighbourhood of $0$ contains a non-trivial subspace, so is unbounded. The weak topology is not metrisable (on infinite-dimensional $X$).
- Weakly convergent sequences are bounded (UBP) and $\lVert x\rVert\le\liminf\lVert x_n\rVert$.
- In Hilbert space, $x_n\to x$ in norm iff $x_n\rightharpoonup x$ and $\lVert x_n\rVert\to\lVert x\rVert$. Any orthonormal sequence satisfies $e_n\rightharpoonup0$ (Bessel), but $\lVert e_n\rVert=1$.
- **Mazur's theorem:** a convex set is weakly closed iff it is norm closed (Hahn–Banach separation). Corollary: if $x_n\rightharpoonup x$, some sequence of convex combinations of the $x_n$ converges to $x$ in norm.
- **Schur's theorem:** in $\ell^1$, weakly convergent sequences converge in norm (even though the topologies differ!).

**Banach–Alaoglu theorem.** The closed unit ball of $X^*$ is weak\* compact.

*Proof.* Map $B_{X^*}$ into $P=\prod_{x\in X}\lbrace z\in\mathbb{F}:\lvert z\rvert\le\lVert x\rVert\rbrace$ by $f\mapsto(f(x))_x$. This is a homeomorphism onto its image when $B_{X^*}$ has the weak* topology and $P$ the product topology. $P$ is compact by Tychonoff. The image consists of the points of $P$ satisfying the linearity relations $z_{x+y}=z_x+z_y$, $z_{\lambda x}=\lambda z_x$, each a closed condition, so the image is closed in $P$, hence compact. $\square$

**Sequential versions.**
- If $X$ is separable, the weak* topology on $B_{X^*}$ is metrisable, so every bounded sequence in $X^*$ has a weak* convergent subsequence. (Direct diagonal argument along a countable dense set.)
- If $X$ is reflexive, every bounded sequence in $X$ has a weakly convergent subsequence (Eberlein–Šmulian; for separable reflexive $X$ apply the previous point to $X^*$, which is separable). In particular this holds in every Hilbert space and in $L^p$, $1<p<\infty$.

**Why this matters.** The direct method in the calculus of variations: a bounded minimising sequence has a weakly convergent subsequence, and a convex, lower semicontinuous functional is weakly lower semicontinuous (Mazur), so the weak limit is a minimiser. This is the existence proof for weak solutions of many PDEs.

---

## 9. Adjoints and spectrum

**Hilbert adjoint.** For $T\in B(H_1,H_2)$, $T^*\in B(H_2,H_1)$ is defined by $\langle Tx,y\rangle=\langle x,T^*y\rangle$ (exists by Riesz). Properties: $T^{**}=T$, $\lVert T^*\rVert=\lVert T\rVert$, and the **C\*-identity** $\lVert T^*T\rVert=\lVert T\rVert^2$. Also
$$
\ker T^*=(\mathrm{ran}\,T)^\perp,\qquad\overline{\mathrm{ran}\,T}=(\ker T^*)^\perp .
$$
$T$ is *self-adjoint* if $T=T^*$; *normal* if $TT^*=T^*T$; *unitary* if $T^*T=TT^*=I$; an *orthogonal projection* if $T=T^2=T^*$.

For self-adjoint $T$: $\langle Tx,x\rangle\in\mathbb{R}$ and
$$
\lVert T\rVert=\sup_{\lVert x\rVert=1}\lvert\langle Tx,x\rangle\rvert .
$$
(Proof of $\le$: with $M$ the right side, polarisation gives $4\mathrm{Re}\,\langle Tx,y\rangle=\langle T(x+y),x+y\rangle-\langle T(x-y),x-y\rangle\le M(\lVert x+y\rVert^2+\lVert x-y\rVert^2)=2M(\lVert x\rVert^2+\lVert y\rVert^2)$; take $\lVert x\rVert=1$, $y=Tx/\lVert Tx\rVert$.)

**Spectrum.** For $T\in B(X)$, $X$ a complex Banach space, $\sigma(T)=\lbrace\lambda\in\mathbb{C}:T-\lambda I\text{ not invertible in }B(X)\rbrace$. (By the bounded inverse theorem, "invertible" just means bijective.)
- $\sigma(T)$ is compact and contained in $\lbrace\lvert\lambda\rvert\le\lVert T\rVert\rbrace$ (Neumann series), and **non-empty** (otherwise $\lambda\mapsto f((T-\lambda)^{-1})$ is a bounded entire function tending to $0$, so zero for every $f\in B(X)^*$ — Liouville plus Hahn–Banach).
- **Spectral radius formula (Gelfand):** $r(T)=\max_{\lambda\in\sigma(T)}\lvert\lambda\rvert=\lim_n\lVert T^n\rVert^{1/n}$.
- $\sigma(T)$ splits into the **point spectrum** (eigenvalues: $T-\lambda$ not injective), **continuous spectrum** (injective, dense non-closed range) and **residual spectrum** (injective, range not dense).
- If $T$ is self-adjoint, $\sigma(T)\subseteq[m,M]\subseteq\mathbb{R}$ with $m=\inf_{\lVert x\rVert=1}\langle Tx,x\rangle$, $M=\sup_{\lVert x\rVert=1}\langle Tx,x\rangle$, and $m,M\in\sigma(T)$. Eigenvectors for distinct eigenvalues are orthogonal. Normal operators have $r(T)=\lVert T\rVert$.

**Key examples on $\ell^2$.**
- Right shift $S(x_1,x_2,\dots)=(0,x_1,x_2,\dots)$: an isometry, not onto; no eigenvalues; $\sigma(S)=\overline{\mathbb{D}}$.
- Left shift $S^*$: every $\lvert\lambda\rvert<1$ is an eigenvalue (eigenvector $(1,\lambda,\lambda^2,\dots)$); $\sigma(S^*)=\overline{\mathbb{D}}$.
- Multiplication $M_\varphi f=\varphi f$ on $L^2[0,1]$, $\varphi$ continuous: $\sigma(M_\varphi)=\varphi([0,1])$; eigenvalues only where $\varphi$ is constant on a set of positive measure. For $\varphi(x)=x$ there are no eigenvalues and $\sigma=[0,1]$. This is the model for the spectral theorem for general self-adjoint operators.

---

## 10. Compact operators

$T\in B(X,Y)$ is **compact** if $T(B_X)$ is relatively compact; equivalently (for Banach $Y$) every bounded sequence $(x_n)$ has a subsequence with $(Tx_{n_k})$ convergent.

- Finite-rank bounded operators are compact. Compact operators form a closed two-sided ideal $K(X)$ in $B(X)$: closed under sums, under composition with bounded operators on either side, and under norm limits (diagonal argument / total boundedness).
- **In Hilbert space,** compact = norm limit of finite-rank operators (approximate by $P_nT$ with $P_n$ the projection onto the span of the first $n$ basis vectors). This approximation property fails in some Banach spaces (Enflo).
- $T$ compact $\iff$ $T^*$ compact (Schauder).
- In Hilbert space, $T$ is compact iff $x_n\rightharpoonup0\Rightarrow Tx_n\to0$ in norm. Compact operators turn weak convergence into norm convergence.
- The identity on an infinite-dimensional space is not compact (Riesz). Hence a compact operator on an infinite-dimensional space is never invertible and $0\in\sigma(T)$.

**Examples.**
- Diagonal operator $De_n=\lambda_ne_n$ on $\ell^2$ is compact iff $\lambda_n\to0$.
- **Hilbert–Schmidt integral operators:** if $k\in L^2([0,1]^2)$, then $(Kf)(x)=\int_0^1k(x,y)f(y)\,dy$ is compact on $L^2[0,1]$ with $\lVert K\rVert\le\lVert k\rVert_{L^2}$. (Expand $k$ in the orthonormal basis $e_i(x)\overline{e_j(y)}$ and truncate.) $K^*$ has kernel $\overline{k(y,x)}$; $K$ is self-adjoint iff $k(x,y)=\overline{k(y,x)}$.
- **Volterra operator** $(Vf)(x)=\int_0^xf$: compact, with no eigenvalues and $\sigma(V)=\lbrace0\rbrace$ ($\lVert V^n\rVert\le1/n!$).

**Riesz–Schauder theory.** If $K\in B(X)$ is compact and $\lambda\neq0$: $\ker(K-\lambda)$ is finite-dimensional, $\mathrm{ran}(K-\lambda)$ is closed, and every non-zero $\lambda\in\sigma(K)$ is an eigenvalue. The non-zero spectrum is at most countable, with $0$ the only possible accumulation point.

---

## 11. The spectral theorem for compact self-adjoint operators

**Theorem.** Let $T$ be a compact self-adjoint operator on a Hilbert space $H$. Then there is an orthonormal sequence $(e_n)$ (finite or countable) of eigenvectors with non-zero real eigenvalues $\lambda_n$, $\lvert\lambda_1\rvert\ge\lvert\lambda_2\rvert\ge\cdots$, $\lambda_n\to0$ if infinitely many, such that
$$
Tx=\sum_n\lambda_n\langle x,e_n\rangle e_n\qquad\text{for all }x\in H,
$$
and $H=\ker T\oplus\overline{\mathrm{span}}\lbrace e_n\rbrace$. Adding an orthonormal basis of $\ker T$ gives an orthonormal basis of $H$ consisting of eigenvectors.

*Proof.*
1. **Key lemma:** $\lVert T\rVert$ or $-\lVert T\rVert$ is an eigenvalue. Assume $T\neq0$. By §9, pick unit $x_n$ with $\langle Tx_n,x_n\rangle\to\lambda$ where $\lvert\lambda\rvert=\lVert T\rVert$. Then
$$
\lVert Tx_n-\lambda x_n\rVert^2=\lVert Tx_n\rVert^2-2\lambda\langle Tx_n,x_n\rangle+\lambda^2\le2\lambda^2-2\lambda\langle Tx_n,x_n\rangle\to0 .
$$
By compactness, a subsequence $Tx_{n_k}\to y$. Then $\lambda x_{n_k}\to y$, so $\lVert y\rVert=\lvert\lambda\rvert\neq0$ and, by continuity, $Ty=\lim T(\lambda x_{n_k})=\lambda y$.
2. **Induction:** let $e_1$ be a unit eigenvector for $\lambda_1=\pm\lVert T\rVert$. $H_1=\lbrace e_1\rbrace^\perp$ is $T$-invariant (self-adjointness), and $T|_{H_1}$ is compact self-adjoint. Repeat, getting $\lvert\lambda_1\rvert\ge\lvert\lambda_2\rvert\ge\cdots$. Stop if $T|_{H_n}=0$.
3. **$\lambda_n\to0$:** otherwise $\lvert\lambda_n\rvert\ge\varepsilon$ and $\lVert Te_n-Te_m\rVert^2=\lambda_n^2+\lambda_m^2\ge2\varepsilon^2$, so $(Te_n)$ has no convergent subsequence, contradicting compactness.
4. **Expansion:** let $M=\overline{\mathrm{span}}\lbrace e_n\rbrace$. $T$ restricted to $M^\perp$ has norm at most $\lvert\lambda_n\rvert$ for every $n$ (since $M^\perp\subseteq H_n$), so it is $0$: $M^\perp\subseteq\ker T$. The expansion follows by writing $x=P_Mx+(x-P_Mx)$. $\square$

**Variational characterisation.** $\lambda_1^+=\max_{\lVert x\rVert=1}\langle Tx,x\rangle$, and the Courant–Fischer min-max formula gives the others. This is the infinite-dimensional Rayleigh quotient.

**Functional calculus.** For bounded $f$ on $\sigma(T)$, define $f(T)x=\sum f(\lambda_n)\langle x,e_n\rangle e_n+f(0)P_{\ker T}x$. For example, a positive compact operator has a unique positive square root.

**Application (Sturm–Liouville / Fourier series).** The operator $-u''=f$, $u(0)=u(1)=0$ is inverted by the integral operator with Green's kernel $G(x,y)=\min(x,y)-xy$, which is Hilbert–Schmidt and self-adjoint. The spectral theorem for $G$ yields the orthonormal basis $\sqrt2\sin(n\pi x)$ of $L^2[0,1]$: that is, completeness of the Fourier sine series.

**Beyond compact operators.** Every bounded self-adjoint (or normal) operator is unitarily equivalent to a multiplication operator $M_\varphi$ on some $L^2(\mu)$; equivalently there is a projection-valued measure $E$ with $T=\int\lambda\,dE(\lambda)$. This is the full spectral theorem (an elective topic).

---

## 12. The Fredholm alternative

**Theorem.** Let $K$ be compact on a Hilbert space $H$ (the statement also holds on Banach spaces with $K'$ in place of $K^*$) and $\lambda\in\mathbb{C}\setminus\lbrace0\rbrace$. Then:
1. $\ker(K-\lambda)$ and $\ker(K^*-\bar\lambda)$ are finite-dimensional and have the same dimension;
2. $\mathrm{ran}(K-\lambda)$ is closed and equals $\ker(K^*-\bar\lambda)^\perp$;
3. **Alternative:** either $(K-\lambda)u=f$ has a unique solution for every $f\in H$, or the homogeneous equation $(K-\lambda)u=0$ has a non-zero solution. In the second case, $(K-\lambda)u=f$ is solvable iff $f\perp\ker(K^*-\bar\lambda)$.

Equivalently: $I-K$ is injective iff surjective, and it is a Fredholm operator of index $0$.

*Proof ideas.* (1) The unit ball of $\ker(K-\lambda)$ is mapped by $K$ to $\lambda$ times itself, so it is compact, so the kernel is finite-dimensional (Riesz). (2) If $(K-\lambda)u_n\to f$, choose $u_n\perp\ker(K-\lambda)$. If $(u_n)$ were unbounded, normalise and use compactness to produce a unit vector in the kernel orthogonal to the kernel. So $(u_n)$ is bounded, a subsequence of $Ku_n$ converges, hence $u_n=\lambda^{-1}(Ku_n-(K-\lambda)u_n)$ converges to some $u$ with $(K-\lambda)u=f$. The closed range equals $\ker(K^*-\bar\lambda)^\perp$ by §9. (3) Injective $\Rightarrow$ surjective: if not, $H_n=(K-\lambda)^nH$ is a strictly decreasing chain of closed subspaces; Riesz's lemma gives unit $x_n\in H_n\ominus H_{n+1}$, and $\lVert Kx_n-Kx_m\rVert\ge\lvert\lambda\rvert$ for $n<m$, contradicting compactness. Equality of dimensions in (1) follows with a finite-rank perturbation argument. $\square$

**Application: integral equations.** For a Hilbert–Schmidt kernel $k$, the Fredholm equation of the second kind
$$
u(x)-\int_0^1k(x,y)u(y)\,dy=f(x)
$$
has a unique solution in $L^2$ for every $f$ provided the homogeneous equation has only the zero solution. This is the historical origin of the whole subject (Fredholm 1903, Hilbert 1904–1910).

---

## 13. Common pitfalls

1. **Assuming linear maps are continuous.** They are in finite dimensions only. Always check boundedness.
2. **Using Baire-category theorems without completeness.** UBP, open mapping and closed graph all fail on incomplete spaces.
3. **Confusing weak, weak\* and norm convergence.** In $\ell^1=c_0^*$, the sequence $e_n$ converges weak\* to $0$ but not weakly (test against $(1,1,1,\dots)\in\ell^\infty$).
4. **Thinking Banach–Alaoglu gives sequential compactness in general.** It does for separable $X$. For $X=\ell^\infty$, the sequence of coordinate functionals in $(\ell^\infty)^*$ has no weak\* convergent subsequence.
5. **Assuming every bounded operator has an eigenvalue** (the shift does not) or that a self-adjoint operator has an orthonormal basis of eigenvectors (multiplication by $x$ does not). Both are true for compact self-adjoint operators.
6. **Forgetting conjugate-linearity** of the Riesz map $H\to H^*$ over $\mathbb{C}$.
7. **"Orthonormal basis" vs "Hamel basis."** In infinite dimensions they are different notions.
8. **Applying the spectral theorem to compact operators that are not self-adjoint (or normal).** The Volterra operator is compact with spectrum $\lbrace0\rbrace$ and no eigenvectors at all.

---

## 14. Connections forward

- **PDE:** Lax–Milgram (a coercive bounded bilinear form on a Hilbert space is represented by an invertible operator; a direct consequence of Riesz representation) gives weak solutions of elliptic equations on Sobolev spaces. Rellich's compact embedding $H^1_0\hookrightarrow L^2$ plus the spectral theorem gives eigenfunction expansions for the Laplacian on bounded domains.
- **Operator algebras and quantum mechanics:** $B(H)$ is a C\*-algebra. Observables are self-adjoint (often unbounded) operators; the full spectral theorem and Stone's theorem on one-parameter unitary groups are the next steps.
- **Harmonic analysis:** Fourier series and transforms are unitary maps ($L^2$ theory, Plancherel); Riesz–Thorin interpolation gives $L^p$ bounds.
- **Probability:** $L^2$ martingales, conditional expectation as an orthogonal projection, weak convergence of measures (weak\* convergence in $C(K)^*$).
- **Algebra and topology:** Fredholm index is a homotopy invariant, which leads to K-theory and the Atiyah–Singer index theorem, connecting to [3.4](../3.4-algebraic-topology/) and [3.5](../3.5-smooth-manifolds/). The representation theory of compact groups (Peter–Weyl) generalises the finite-group theory of [3.3](../3.3-graduate-algebra/) using compact self-adjoint operators on $L^2(G)$.
